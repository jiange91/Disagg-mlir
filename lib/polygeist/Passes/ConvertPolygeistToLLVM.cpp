//===- TrivialUse.cpp - Remove trivial use instruction ---------------- -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements a pass to lower gpu kernels in NVVM/gpu dialects into
// a generic parallel for representation
//===----------------------------------------------------------------------===//
#include "PassDetails.h"

#include "mlir/../../lib/Conversion/MemRefToLLVM/MemRefToLLVM.cpp"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "mlir/Conversion/ArithToLLVM/ArithToLLVM.h"
#include "mlir/Conversion/ControlFlowToLLVM/ControlFlowToLLVM.h"
#include "mlir/Conversion/FuncToLLVM/ConvertFuncToLLVM.h"
#include "mlir/Conversion/GPUCommon/GPUCommonPass.h"
#include "mlir/Conversion/GPUToNVVM/GPUToNVVMPass.h"
#include "mlir/Conversion/GPUToROCDL/GPUToROCDLPass.h"
#include "mlir/Conversion/LLVMCommon/ConversionTarget.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Conversion/LLVMCommon/TypeConverter.h"
#include "mlir/Conversion/MathToLLVM/MathToLLVM.h"
#include "mlir/Conversion/MemRefToLLVM/MemRefToLLVM.h"
#include "mlir/Conversion/OpenMPToLLVM/ConvertOpenMPToLLVM.h"
#include "mlir/Conversion/SCFToControlFlow/SCFToControlFlow.h"
#include "mlir/Dialect/Async/IR/Async.h"
#include "mlir/Dialect/DLTI/DLTI.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/Func/Transforms/Passes.h"
#include "mlir/Dialect/GPU/IR/GPUDialect.h"
#include "mlir/Dialect/GPU/Transforms/Passes.h"
#include "mlir/Dialect/LLVMIR/FunctionCallUtils.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/LLVMIR/NVVMDialect.h"
#include "mlir/Dialect/LLVMIR/ROCDLDialect.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/OpenMP/OpenMPDialect.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/IR/BlockAndValueMapping.h"
#include "mlir/IR/ImplicitLocOpBuilder.h"
#include "mlir/Target/LLVMIR/Import.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Transforms/RegionUtils.h"
#include "polygeist/Passes/Passes.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/Debug.h"
#include "llvm/Support/FormatVariadic.h"
#include "llvm/Support/raw_ostream.h"

#include <fstream>
#include <limits>
#include <map>
#include <numeric>

#include "RuntimeWrapperUtils.h"

extern llvm::cl::opt<bool> EmitROCM;

#define DEBUG_TYPE "convert-polygeist-to-llvm"
#define DBGS() ::llvm::dbgs() << "[" DEBUG_TYPE ":" << PATTERN << "] "

#if POLYGEIST_ENABLE_ROCM
#include <hip/hip_runtime_api.h>

static void emitHipError(const llvm::Twine &expr, const char *buffer,
                         hipError_t result, Location loc) {
  const char *error;
  error = hipGetErrorString(result);
  emitError(loc, expr.concat(" failed with error code ")
                     .concat(llvm::Twine{error})
                     .concat("[")
                     .concat(buffer)
                     .concat("]"));
}

#define RETURN_ON_HIP_ERROR(expr)                                              \
  do {                                                                         \
    if (auto status = (expr)) {                                                \
      emitHipError(#expr, hipErrorBuffer, status, loc);                        \
      return failure();                                                        \
    }                                                                          \
  } while (false)

#endif

#if POLYGEIST_ENABLE_CUDA
#include <cuda.h>

static void emitCudaError(const llvm::Twine &expr, const char *buffer,
                          CUresult result, Location loc) {
  const char *error;
  cuGetErrorString(result, &error);
  emitError(loc, expr.concat(" failed with error code ")
                     .concat(llvm::Twine{error})
                     .concat("[")
                     .concat(buffer)
                     .concat("]"));
}

#define RETURN_ON_CUDA_ERROR(expr)                                             \
  do {                                                                         \
    if (auto status = (expr)) {                                                \
      emitCudaError(#expr, cuErrorBuffer, status, loc);                        \
      return failure();                                                        \
    }                                                                          \
  } while (false)

#endif

using namespace mlir;
using namespace polygeist;

static llvm::cl::opt<PolygeistAlternativesMode> PolygeistAlternativesMode(
    "polygeist-alternatives-mode", llvm::cl::init(PAM_Static),
    llvm::cl::desc("Polygeist alternatives op mode"),
    llvm::cl::values(
        clEnumValN(PAM_Static, "static", "Pick at compile time"),
        clEnumValN(PAM_PGO_Profile, "pgo_prof",
                   "Profile Guided Optimization - profiling mode"),
        clEnumValN(PAM_PGO_Opt, "pgo_opt",
                   "Profile Guided Optimization - optimization mode")));

mlir::LLVM::LLVMFuncOp GetOrCreateFreeFunction(ModuleOp module);

/// Conversion pattern that transforms a subview op into:
///   1. An `llvm.mlir.undef` operation to create a memref descriptor
///   2. Updates to the descriptor to introduce the data ptr, offset, size
///      and stride.
/// The subview op is replaced by the descriptor.
struct SubIndexOpLowering : public ConvertOpToLLVMPattern<SubIndexOp> {
  using ConvertOpToLLVMPattern<SubIndexOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(SubIndexOp subViewOp, OpAdaptor transformed,
                  ConversionPatternRewriter &rewriter) const override {
    auto loc = subViewOp.getLoc();

    if (!subViewOp.getSource().getType().isa<MemRefType>()) {
      llvm::errs() << " func: " << subViewOp->getParentOfType<func::FuncOp>()
                   << "\n";
      llvm::errs() << " sub: " << subViewOp << " - " << subViewOp.getSource()
                   << "\n";
    }
    auto sourceMemRefType = subViewOp.getSource().getType().cast<MemRefType>();

    auto viewMemRefType = subViewOp.getType().cast<MemRefType>();

    if (transformed.getSource().getType().isa<LLVM::LLVMPointerType>()) {
      SmallVector<Value, 2> indices = {transformed.getIndex()};
      auto t = transformed.getSource().getType().cast<LLVM::LLVMPointerType>();
      if (viewMemRefType.getShape().size() !=
          sourceMemRefType.getShape().size()) {
        auto zero = rewriter.create<arith::ConstantIntOp>(loc, 0, 64);
        indices.push_back(zero);
        t = LLVM::LLVMPointerType::get(
            t.getElementType().cast<LLVM::LLVMArrayType>().getElementType(),
            t.getAddressSpace());
      }
      auto ptr = rewriter.create<LLVM::GEPOp>(loc, t, transformed.getSource(),
                                              indices);
      std::vector ptrs = {ptr.getResult()};
      rewriter.replaceOpWithNewOp<LLVM::BitcastOp>(
          subViewOp, getTypeConverter()->convertType(subViewOp.getType()),
          ptrs);
      return success();
    }

    MemRefDescriptor targetMemRef(transformed.getSource());
    Value prev = targetMemRef.alignedPtr(rewriter, loc);
    Value idxs[] = {transformed.getIndex()};

    SmallVector<Value, 4> sizes;
    SmallVector<Value, 4> strides;

    if (sourceMemRefType.getShape().size() !=
        viewMemRefType.getShape().size()) {
      if (sourceMemRefType.getShape().size() !=
          viewMemRefType.getShape().size() + 1) {
        return failure();
      }
      size_t sz = 1;
      for (size_t i = 1; i < sourceMemRefType.getShape().size(); i++) {
        if (sourceMemRefType.getShape()[i] == ShapedType::kDynamicSize)
          return failure();
        sz *= sourceMemRefType.getShape()[i];
      }
      Value cop = rewriter.create<LLVM::ConstantOp>(
          loc, idxs[0].getType(),
          rewriter.getIntegerAttr(idxs[0].getType(), sz));
      idxs[0] = rewriter.create<LLVM::MulOp>(loc, idxs[0], cop);
      for (size_t i = 1; i < sourceMemRefType.getShape().size(); i++) {
        sizes.push_back(targetMemRef.size(rewriter, loc, i));
        strides.push_back(targetMemRef.stride(rewriter, loc, i));
      }
    } else {
      for (size_t i = 0; i < sourceMemRefType.getShape().size(); i++) {
        sizes.push_back(targetMemRef.size(rewriter, loc, i));
        strides.push_back(targetMemRef.stride(rewriter, loc, i));
      }
    }

    // nexRef.setOffset(targetMemRef.offset());
    // nexRef.setSize(targetMemRef.size());
    // nexRef.setStride(targetMemRef.stride());

    if (false) {
      Value baseOffset = targetMemRef.offset(rewriter, loc);
      Value stride = targetMemRef.stride(rewriter, loc, 0);
      Value offset = transformed.getIndex();
      Value mul = rewriter.create<LLVM::MulOp>(loc, offset, stride);
      baseOffset = rewriter.create<LLVM::AddOp>(loc, baseOffset, mul);
      targetMemRef.setOffset(rewriter, loc, baseOffset);
    }

    MemRefDescriptor nexRef = createMemRefDescriptor(
        loc, subViewOp.getType(), targetMemRef.allocatedPtr(rewriter, loc),
        rewriter.create<LLVM::GEPOp>(loc, prev.getType(), prev, idxs), sizes,
        strides, rewriter);

    rewriter.replaceOp(subViewOp, {nexRef});
    return success();
  }
};

struct Memref2PointerOpLowering
    : public ConvertOpToLLVMPattern<Memref2PointerOp> {
  using ConvertOpToLLVMPattern<Memref2PointerOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(Memref2PointerOp op, OpAdaptor transformed,
                  ConversionPatternRewriter &rewriter) const override {
    auto loc = op.getLoc();

    auto LPT = op.getType().cast<LLVM::LLVMPointerType>();
    auto space0 = op.getSource().getType().getMemorySpaceAsInt();
    if (transformed.getSource().getType().isa<LLVM::LLVMPointerType>()) {
      mlir::Value ptr = rewriter.create<LLVM::BitcastOp>(
          loc, LLVM::LLVMPointerType::get(LPT.getElementType(), space0),
          transformed.getSource());
      if (space0 != LPT.getAddressSpace())
        ptr = rewriter.create<LLVM::AddrSpaceCastOp>(loc, LPT, ptr);
      rewriter.replaceOp(op, {ptr});
      return success();
    }

    // MemRefDescriptor sourceMemRef(operands.front());
    MemRefDescriptor targetMemRef(
        transformed.getSource()); // MemRefDescriptor::undef(rewriter, loc,
                                  // targetDescTy);

    // Offset.
    Value baseOffset = targetMemRef.offset(rewriter, loc);
    Value ptr = targetMemRef.alignedPtr(rewriter, loc);
    Value idxs[] = {baseOffset};
    ptr = rewriter.create<LLVM::GEPOp>(loc, ptr.getType(), ptr, idxs);
    ptr = rewriter.create<LLVM::BitcastOp>(
        loc, LLVM::LLVMPointerType::get(LPT.getElementType(), space0), ptr);
    if (space0 != LPT.getAddressSpace())
      ptr = rewriter.create<LLVM::AddrSpaceCastOp>(loc, LPT, ptr);

    rewriter.replaceOp(op, {ptr});
    return success();
  }
};

struct Pointer2MemrefOpLowering
    : public ConvertOpToLLVMPattern<Pointer2MemrefOp> {
  using ConvertOpToLLVMPattern<Pointer2MemrefOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(Pointer2MemrefOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto loc = op.getLoc();

    // MemRefDescriptor sourceMemRef(operands.front());
    auto convertedType = getTypeConverter()->convertType(op.getType());
    assert(convertedType && "unexpected failure in memref type conversion");
    if (auto PT = convertedType.dyn_cast<LLVM::LLVMPointerType>()) {
      rewriter.replaceOpWithNewOp<LLVM::BitcastOp>(op, PT, adaptor.getSource());
      return success();
    }

    auto descr = MemRefDescriptor::undef(rewriter, loc, convertedType);
    auto ptr = rewriter.create<LLVM::BitcastOp>(
        op.getLoc(), descr.getElementPtrType(), adaptor.getSource());

    // Extract all strides and offsets and verify they are static.
    int64_t offset;
    SmallVector<int64_t, 4> strides;
    auto result = getStridesAndOffset(op.getType(), strides, offset);
    (void)result;
    assert(succeeded(result) && "unexpected failure in stride computation");
    assert(offset != ShapedType::kDynamicStrideOrOffset &&
           "expected static offset");

    bool first = true;
    assert(!llvm::any_of(strides, [&](int64_t stride) {
      if (first) {
        first = false;
        return false;
      }
      return stride == ShapedType::kDynamicStrideOrOffset;
    }) && "expected static strides except first element");

    descr.setAllocatedPtr(rewriter, loc, ptr);
    descr.setAlignedPtr(rewriter, loc, ptr);
    descr.setConstantOffset(rewriter, loc, offset);

    // Fill in sizes and strides
    for (unsigned i = 0, e = op.getType().getRank(); i != e; ++i) {
      descr.setConstantSize(rewriter, loc, i, op.getType().getDimSize(i));
      descr.setConstantStride(rewriter, loc, i, strides[i]);
    }

    rewriter.replaceOp(op, {descr});
    return success();
  }
};

struct StreamToTokenOpLowering
    : public ConvertOpToLLVMPattern<StreamToTokenOp> {
  using ConvertOpToLLVMPattern<StreamToTokenOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(StreamToTokenOp op, OpAdaptor transformed,
                  ConversionPatternRewriter &rewriter) const override {

    Value v[] = {transformed.getSource()};
    rewriter.replaceOp(op, v);
    return success();
  }
};

struct TypeSizeOpLowering : public ConvertOpToLLVMPattern<TypeSizeOp> {
  using ConvertOpToLLVMPattern<TypeSizeOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(TypeSizeOp op, OpAdaptor transformed,
                  ConversionPatternRewriter &rewriter) const override {

    Type NT = op.getSourceAttr().getValue();
    if (auto T = getTypeConverter()->convertType(NT)) {
      NT = T;
    }
    assert(NT);

    auto type = getTypeConverter()->convertType(op.getType());

    if (NT.isa<IntegerType, FloatType>() || LLVM::isCompatibleType(NT)) {
      DataLayout DLI(op->getParentOfType<ModuleOp>());
      rewriter.replaceOpWithNewOp<LLVM::ConstantOp>(
          op, type, rewriter.getIntegerAttr(type, DLI.getTypeSize(NT)));
      return success();
    }

    if (NT != op.getSourceAttr().getValue() || type != op.getType()) {
      rewriter.replaceOpWithNewOp<TypeSizeOp>(op, type, NT);
      return success();
    }
    return failure();
  }
};

struct TypeAlignOpLowering : public ConvertOpToLLVMPattern<TypeAlignOp> {
  using ConvertOpToLLVMPattern<TypeAlignOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(TypeAlignOp op, OpAdaptor transformed,
                  ConversionPatternRewriter &rewriter) const override {

    Type NT = op.getSourceAttr().getValue();
    if (auto T = getTypeConverter()->convertType(NT)) {
      NT = T;
    }
    assert(NT);

    auto type = getTypeConverter()->convertType(op.getType());

    if (NT.isa<IntegerType, FloatType>() || LLVM::isCompatibleType(NT)) {
      DataLayout DLI(op->getParentOfType<ModuleOp>());
      rewriter.replaceOpWithNewOp<LLVM::ConstantOp>(
          op, type, rewriter.getIntegerAttr(type, DLI.getTypeABIAlignment(NT)));
      return success();
    }

    if (NT != op.getSourceAttr().getValue() || type != op.getType()) {
      rewriter.replaceOpWithNewOp<TypeAlignOp>(op, type, NT);
      return success();
    }
    return failure();
  }
};

void populatePolygeistToLLVMConversionPatterns(LLVMTypeConverter &converter,
                                               RewritePatternSet &patterns) {
  // clang-format off
  patterns.add<TypeSizeOpLowering>(converter);
  patterns.add<TypeAlignOpLowering>(converter);
  patterns.add<SubIndexOpLowering>(converter);
  patterns.add<Memref2PointerOpLowering>(converter);
  patterns.add<Pointer2MemrefOpLowering>(converter);
  // clang-format on
}

namespace {

// Change the gpu module globals' addr space accordingly (4 for constant mem, 1
// for global, ?? for shared?) and other attrs TODO LLVM version
//
// set "dso_local addrspace(1|4) externally_initialized zeroinitialized"
struct GPUGlobalConversion : public OpRewritePattern<memref::GlobalOp> {
  using OpRewritePattern<memref::GlobalOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(memref::GlobalOp globalOp,
                                PatternRewriter &rewriter) const override {
    if (!isa<gpu::GPUModuleOp>(globalOp->getParentOp())) {
      return failure();
    }
    auto mt = globalOp.getType();
    auto memSpace = mt.getMemorySpaceAsInt();
    if (memSpace != 0) {
      return failure();
    }
    int newMemspace = 0;
    if (globalOp->getAttr("polygeist.cuda_device")) {
      newMemspace = 1;
    } else if (globalOp->getAttr("polygeist.cuda_constant")) {
      newMemspace = 4;
    } else {
      // TODO what else is there? managed?
      globalOp.emitError("Unsupported global type in gpu module");
      assert(0);
    }
    auto type =
        MemRefType::get(mt.getShape(), mt.getElementType(), {}, newMemspace);

    // TODO add zeroinitializer
    mlir::Attribute initial_value = rewriter.getUnitAttr();
    if (globalOp.getInitialValue())
      initial_value = globalOp.getInitialValue().value();
    rewriter.setInsertionPoint(globalOp);
    auto newGlobalOp = rewriter.create<memref::GlobalOp>(
        globalOp->getLoc(), rewriter.getStringAttr(globalOp.getSymName()),
        /* sym_visibility */ mlir::StringAttr(), mlir::TypeAttr::get(type),
        initial_value, mlir::UnitAttr(), /* alignment */ nullptr);
    if (globalOp->getAttr("polygeist.cuda_device")) {
      newGlobalOp->setAttr("polygeist.cuda_device", rewriter.getUnitAttr());
    } else if (globalOp->getAttr("polygeist.cuda_constant")) {
      newGlobalOp->setAttr("polygeist.cuda_constant", rewriter.getUnitAttr());
    }
    rewriter.eraseOp(globalOp);
    return success();
  }
};

// Change the gpu module get globals' addr space as well
struct GPUGetGlobalConversion : public OpRewritePattern<memref::GetGlobalOp> {
  using OpRewritePattern<memref::GetGlobalOp>::OpRewritePattern;

  LogicalResult matchAndRewrite(memref::GetGlobalOp ggo,
                                PatternRewriter &rewriter) const override {
    auto gpuModule = ggo->getParentOfType<gpu::GPUModuleOp>();
    if (!gpuModule) {
      return failure();
    }
    auto loc = ggo->getLoc();
    auto mt = ggo.getType();
    if (mt.getMemorySpaceAsInt() != 0) {
      return failure();
    }
    auto globalOp =
        cast<memref::GlobalOp>(gpuModule.lookupSymbol(ggo.getNameAttr()));
    int newMemspace = 0;
    int globalMemspace = globalOp.getType().getMemorySpaceAsInt();
    if (globalOp->getAttr("polygeist.cuda_device") || globalMemspace == 1) {
      newMemspace = 1;
    } else if (globalOp->getAttr("polygeist.cuda_constant") ||
               globalMemspace == 4) {
      newMemspace = 4;
    } else {
      // TODO what else is there? managed?
      ggo.emitError("Unsupported global type in gpu module");
      ggo->dump();
      globalOp->dump();
      assert(0);
    }
    auto newMT =
        MemRefType::get(mt.getShape(), mt.getElementType(), {}, newMemspace);
    auto newGetGlobalOp =
        rewriter.create<memref::GetGlobalOp>(loc, newMT, ggo.getName());
    auto castOp =
        rewriter.create<memref::CastOp>(loc, mt, newGetGlobalOp.getResult());
    rewriter.replaceOp(ggo, castOp->getResults());
    return success();
  }
};

struct LLVMOpLowering : public ConversionPattern {
  explicit LLVMOpLowering(LLVMTypeConverter &converter)
      : ConversionPattern(converter, Pattern::MatchAnyOpTypeTag(), 1,
                          &converter.getContext()) {}

  LogicalResult
  matchAndRewrite(Operation *op, ArrayRef<Value> operands,
                  ConversionPatternRewriter &rewriter) const override {
    TypeConverter *converter = getTypeConverter();
    SmallVector<Type> convertedResultTypes;
    if (failed(converter->convertTypes(op->getResultTypes(),
                                       convertedResultTypes))) {
      return failure();
    }
    SmallVector<Type> convertedOperandTypes;
    if (failed(converter->convertTypes(op->getOperandTypes(),
                                       convertedOperandTypes))) {
      return failure();
    }
    if (convertedResultTypes == op->getResultTypes() &&
        convertedOperandTypes == op->getOperandTypes()) {
      return failure();
    }
    if (isa<UnrealizedConversionCastOp>(op))
      return failure();

    OperationState state(op->getLoc(), op->getName());
    state.addOperands(operands);
    state.addTypes(convertedResultTypes);
    state.addAttributes(op->getAttrs());
    state.addSuccessors(op->getSuccessors());
    for (unsigned i = 0, e = op->getNumRegions(); i < e; ++i)
      state.addRegion();

    Operation *rewritten = rewriter.create(state);

    for (unsigned i = 0, e = op->getNumRegions(); i < e; ++i)
      rewriter.inlineRegionBefore(op->getRegion(i), rewritten->getRegion(i),
                                  rewritten->getRegion(i).begin());

    rewriter.replaceOp(op, rewritten->getResults());

    return success();
  }
};

struct URLLVMOpLowering
    : public ConvertOpToLLVMPattern<UnrealizedConversionCastOp> {
  using ConvertOpToLLVMPattern<
      UnrealizedConversionCastOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(UnrealizedConversionCastOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    if (op.use_empty()) {
      rewriter.eraseOp(op);
      return success();
    }
    if (op->getResult(0).getType() != op->getOperand(0).getType())
      return failure();

    rewriter.replaceOp(op, op->getOperands());
    return success();
  }
};

// TODO lock this wrt module
static LLVM::LLVMFuncOp addMocCUDAFunction(ModuleOp module, Type streamTy) {
  const char fname[] = "fake_cuda_dispatch";

  MLIRContext *ctx = module.getContext();
  auto loc = module.getLoc();
  auto moduleBuilder = ImplicitLocOpBuilder::atBlockEnd(loc, module.getBody());

  for (auto fn : module.getBody()->getOps<LLVM::LLVMFuncOp>()) {
    if (fn.getName() == fname)
      return fn;
  }

  auto voidTy = LLVM::LLVMVoidType::get(ctx);
  auto i8Ptr = LLVM::LLVMPointerType::get(IntegerType::get(ctx, 8));

  auto resumeOp = moduleBuilder.create<LLVM::LLVMFuncOp>(
      fname, LLVM::LLVMFunctionType::get(
                 voidTy, {i8Ptr,
                          LLVM::LLVMPointerType::get(
                              LLVM::LLVMFunctionType::get(voidTy, {i8Ptr})),
                          streamTy}));
  resumeOp.setPrivate();

  return resumeOp;
}

/// In some cases such as scf.for, the blocks generated when it gets lowered
/// depend on the parent region having already been lowered and having a
/// converter assigned to it - this pattern assures that execute ops have a
/// converter becaus they will actually be lowered only after everything else
/// has been converted to llvm
class ConvertExecuteOpTypes : public ConvertOpToLLVMPattern<async::ExecuteOp> {
public:
  using ConvertOpToLLVMPattern<async::ExecuteOp>::ConvertOpToLLVMPattern;
  LogicalResult
  matchAndRewrite(async::ExecuteOp op, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    async::ExecuteOp newOp = cast<async::ExecuteOp>(
        rewriter.cloneWithoutRegions(*op.getOperation()));
    rewriter.inlineRegionBefore(op.getRegion(), newOp.getRegion(),
                                newOp.getRegion().end());

    // Set operands and update block argument and result types.
    newOp->setOperands(adaptor.getOperands());
    if (failed(rewriter.convertRegionTypes(&newOp.getRegion(), *typeConverter)))
      return failure();
    for (auto result : newOp.getResults())
      result.setType(typeConverter->convertType(result.getType()));

    newOp->setAttr("polygeist.handled", rewriter.getUnitAttr());
    rewriter.replaceOp(op, newOp.getResults());
    return success();
  }
};

struct AsyncOpLowering : public ConvertOpToLLVMPattern<async::ExecuteOp> {
  using ConvertOpToLLVMPattern<async::ExecuteOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(async::ExecuteOp execute, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    ModuleOp module = execute->getParentOfType<ModuleOp>();

    MLIRContext *ctx = module.getContext();
    Location loc = execute.getLoc();

    auto voidTy = LLVM::LLVMVoidType::get(ctx);
    Type voidPtr = LLVM::LLVMPointerType::get(IntegerType::get(ctx, 8));

    // Make sure that all constants will be inside the outlined async function
    // to reduce the number of function arguments.
    Region &execReg = execute.getBodyRegion();

    // Collect all outlined function inputs.
    SetVector<mlir::Value> functionInputs;

    getUsedValuesDefinedAbove(execute.getBodyRegion(), execReg, functionInputs);
    SmallVector<Value> toErase;
    for (auto a : functionInputs) {
      Operation *op = a.getDefiningOp();
      if (op && op->hasTrait<OpTrait::ConstantLike>())
        toErase.push_back(a);
    }
    for (auto a : toErase) {
      functionInputs.remove(a);
    }

    // Collect types for the outlined function inputs and outputs.
    TypeConverter *converter = getTypeConverter();
    auto typesRange = llvm::map_range(functionInputs, [&](Value value) {
      return converter->convertType(value.getType());
    });
    SmallVector<Type, 4> inputTypes(typesRange.begin(), typesRange.end());

    Type ftypes[] = {voidPtr};
    auto funcType = LLVM::LLVMFunctionType::get(voidTy, ftypes);

    // TODO: Derive outlined function name from the parent FuncOp (support
    // multiple nested async.execute operations).
    LLVM::LLVMFuncOp func;
    {
      OpBuilder::InsertionGuard guard(rewriter);
      rewriter.setInsertionPointToEnd(module.getBody());
      static int off = 0;
      off++;
      func = rewriter.create<LLVM::LLVMFuncOp>(
          execute.getLoc(),
          "kernelbody." + std::to_string((long long int)&execute) + "." +
              std::to_string(off),
          funcType);
    }

    rewriter.setInsertionPointToStart(func.addEntryBlock());
    BlockAndValueMapping valueMapping;
    for (Value capture : toErase) {
      Operation *op = capture.getDefiningOp();
      for (auto r :
           llvm::zip(op->getResults(),
                     rewriter.clone(*op, valueMapping)->getResults())) {
        valueMapping.map(rewriter.getRemappedValue(std::get<0>(r)),
                         std::get<1>(r));
      }
    }
    // Prepare for coroutine conversion by creating the body of the function.
    {
      // Map from function inputs defined above the execute op to the function
      // arguments.
      auto arg = func.getArgument(0);

      if (functionInputs.size() == 0) {
      } else if (functionInputs.size() == 1 &&
                 converter->convertType(functionInputs[0].getType())
                     .isa<LLVM::LLVMPointerType>()) {
        valueMapping.map(
            functionInputs[0],
            rewriter.create<LLVM::BitcastOp>(
                execute.getLoc(),
                converter->convertType(functionInputs[0].getType()), arg));
      } else if (functionInputs.size() == 1 &&
                 converter->convertType(functionInputs[0].getType())
                     .isa<IntegerType>()) {
        valueMapping.map(
            functionInputs[0],
            rewriter.create<LLVM::PtrToIntOp>(
                execute.getLoc(),
                converter->convertType(functionInputs[0].getType()), arg));
      } else {
        SmallVector<Type> types;
        for (auto v : functionInputs)
          types.push_back(converter->convertType(v.getType()));
        auto ST = LLVM::LLVMStructType::getLiteral(ctx, types);
        auto alloc = rewriter.create<LLVM::BitcastOp>(
            execute.getLoc(), LLVM::LLVMPointerType::get(ST), arg);
        for (auto idx : llvm::enumerate(functionInputs)) {

          mlir::Value idxs[] = {
              rewriter.create<arith::ConstantIntOp>(loc, 0, 32),
              rewriter.create<arith::ConstantIntOp>(loc, idx.index(), 32),
          };
          Value next = rewriter.create<LLVM::GEPOp>(
              loc, LLVM::LLVMPointerType::get(idx.value().getType()), alloc,
              idxs);
          valueMapping.map(idx.value(),
                           rewriter.create<LLVM::LoadOp>(loc, next));
        }
        auto freef = GetOrCreateFreeFunction(module);
        Value args[] = {arg};
        rewriter.create<LLVM::CallOp>(loc, freef, args);
      }

      // Clone all operations from the execute operation body into the outlined
      // function body.
      rewriter.cloneRegionBefore(execute.getBodyRegion(), func.getRegion(),
                                 func.getRegion().end(), valueMapping);
      rewriter.create<LLVM::BrOp>(execute.getLoc(), ValueRange(),
                                  &*std::next(func.getRegion().begin()));
      for (Block &b : func.getRegion()) {
        auto term = b.getTerminator();
        if (isa<async::YieldOp>(term)) {
          rewriter.setInsertionPointToEnd(&b);
          rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(term, ValueRange());
        }
      }
    }

    // Replace the original `async.execute` with a call to outlined function.
    {
      rewriter.setInsertionPoint(execute);
      SmallVector<Value> crossing;
      for (auto tup : llvm::zip(functionInputs, inputTypes)) {
        Value val = std::get<0>(tup);
        crossing.push_back(val);
      }

      SmallVector<Value> vals;
      if (crossing.size() == 0) {
        vals.push_back(
            rewriter.create<LLVM::NullOp>(execute.getLoc(), voidPtr));
      } else if (crossing.size() == 1 &&
                 converter->convertType(crossing[0].getType())
                     .isa<LLVM::LLVMPointerType>()) {
        vals.push_back(rewriter.create<LLVM::BitcastOp>(execute.getLoc(),
                                                        voidPtr, crossing[0]));
      } else if (crossing.size() == 1 &&
                 converter->convertType(crossing[0].getType())
                     .isa<IntegerType>()) {
        vals.push_back(rewriter.create<LLVM::IntToPtrOp>(execute.getLoc(),
                                                         voidPtr, crossing[0]));
      } else {
        SmallVector<Type> types;
        for (auto v : crossing)
          types.push_back(v.getType());
        auto ST = LLVM::LLVMStructType::getLiteral(ctx, types);

        Value arg = rewriter.create<arith::IndexCastOp>(
            loc, rewriter.getI64Type(),
            rewriter.create<polygeist::TypeSizeOp>(loc, rewriter.getIndexType(),
                                                   ST));
        auto mallocFunc = LLVM::lookupOrCreateMallocFn(module, getIndexType());
        mlir::Value alloc =
            rewriter.create<LLVM::CallOp>(loc, mallocFunc, arg).getResult();
        alloc = rewriter.create<LLVM::BitcastOp>(
            loc, LLVM::LLVMPointerType::get(ST), alloc);
        rewriter.setInsertionPoint(execute);
        for (auto idx : llvm::enumerate(crossing)) {

          mlir::Value idxs[] = {
              rewriter.create<arith::ConstantIntOp>(loc, 0, 32),
              rewriter.create<arith::ConstantIntOp>(loc, idx.index(), 32),
          };
          Value next = rewriter.create<LLVM::GEPOp>(
              loc, LLVM::LLVMPointerType::get(idx.value().getType()), alloc,
              idxs);
          rewriter.create<LLVM::StoreOp>(loc, idx.value(), next);
        }
        vals.push_back(
            rewriter.create<LLVM::BitcastOp>(execute.getLoc(), voidPtr, alloc));
      }
      vals.push_back(
          rewriter.create<LLVM::AddressOfOp>(execute.getLoc(), func));
      for (auto dep : execute.getDependencies()) {
        auto src = dep.getDefiningOp<polygeist::StreamToTokenOp>().getSource();
        if (auto MT = src.getType().dyn_cast<MemRefType>())
          src = rewriter.create<polygeist::Memref2PointerOp>(
              dep.getDefiningOp()->getLoc(),
              LLVM::LLVMPointerType::get(MT.getElementType(),
                                         MT.getMemorySpaceAsInt()),
              src);
        vals.push_back(src);
      }
      assert(vals.size() == 3);

      auto f = addMocCUDAFunction(execute->getParentOfType<ModuleOp>(),
                                  vals.back().getType());

      rewriter.create<LLVM::CallOp>(execute.getLoc(), f, vals);
      rewriter.eraseOp(execute);
    }

    return success();
  }
};

struct GlobalOpTypeConversion : public OpConversionPattern<LLVM::GlobalOp> {
  explicit GlobalOpTypeConversion(LLVMTypeConverter &converter)
      : OpConversionPattern<LLVM::GlobalOp>(converter,
                                            &converter.getContext()) {}

  LogicalResult
  matchAndRewrite(LLVM::GlobalOp op, LLVM::GlobalOp::Adaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    TypeConverter *converter = getTypeConverter();
    Type globalType = adaptor.getGlobalType();
    Type convertedType = converter->convertType(globalType);
    if (!convertedType)
      return failure();
    if (convertedType == globalType)
      return failure();

    rewriter.updateRootInPlace(
        op, [&]() { op.setGlobalTypeAttr(TypeAttr::get(convertedType)); });
    return success();
  }
};

struct GetFuncOpConversion : public OpConversionPattern<polygeist::GetFuncOp> {
  explicit GetFuncOpConversion(LLVMTypeConverter &converter)
      : OpConversionPattern<polygeist::GetFuncOp>(converter,
                                                  &converter.getContext()) {}

  LogicalResult
  matchAndRewrite(polygeist::GetFuncOp op,
                  polygeist::GetFuncOp::Adaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    TypeConverter *converter = getTypeConverter();
    Type retType = op.getType();

    Type convertedType = converter->convertType(retType);
    if (!convertedType)
      return failure();

    rewriter.replaceOpWithNewOp<LLVM::AddressOfOp>(op, convertedType,
                                                   op.getName());

    return success();
  }
};

struct ReturnOpTypeConversion : public ConvertOpToLLVMPattern<LLVM::ReturnOp> {
  using ConvertOpToLLVMPattern<LLVM::ReturnOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(LLVM::ReturnOp op, LLVM::ReturnOp::Adaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto replacement =
        rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(op, adaptor.getArg());
    replacement->setAttrs(adaptor.getAttributes());
    return success();
  }
};
} // namespace

//===-----------------------------------------------------------------------===/
// Patterns for C-compatible MemRef lowering.
//===-----------------------------------------------------------------------===/
// Additional patterns for converting MLIR ops from MemRef and Func dialects
// to the LLVM dialect using the C-compatible type conversion for memrefs.
// Specifically, a memref such as memref<A x B x C x type> is converted into
// a pointer to an array of arrays such as !llvm.ptr<array<B x array<C x type>>
// with additional conversion of the element type. This approach is only
// applicable to memrefs with static shapes in all dimensions but the outermost,
// which coincides with the nested array constructs allowed in C (except VLA).
// This also matches the type produced by Clang for such array constructs,
// removing the need for ABI compatibility layers.
//===-----------------------------------------------------------------------===/

namespace {
/// Pattern for allocation-like operations.
template <typename OpTy>
struct AllocLikeOpLowering : public ConvertOpToLLVMPattern<OpTy> {
public:
  using ConvertOpToLLVMPattern<OpTy>::ConvertOpToLLVMPattern;

protected:
  /// Returns the value containing the outermost dimension of the memref to be
  /// allocated, or 1 if the memref has rank zero.
  Value getOuterSize(OpTy original,
                     typename ConvertOpToLLVMPattern<OpTy>::OpAdaptor adaptor,
                     ConversionPatternRewriter &rewriter) const {
    if (!adaptor.getDynamicSizes().empty())
      return adaptor.getDynamicSizes().front();

    return this->createIndexConstant(rewriter, original->getLoc(),
                                     original.getType().getRank() == 0
                                         ? 1
                                         : original.getType().getDimSize(0));
  }
};

/// Pattern for lowering automatic stack allocations.
struct CAllocaOpLowering : public AllocLikeOpLowering<memref::AllocaOp> {
public:
  using AllocLikeOpLowering<memref::AllocaOp>::AllocLikeOpLowering;

  LogicalResult
  matchAndRewrite(memref::AllocaOp allocaOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    Location loc = allocaOp.getLoc();
    MemRefType originalType = allocaOp.getType();
    auto convertedType = getTypeConverter()
                             ->convertType(originalType)
                             .dyn_cast_or_null<LLVM::LLVMPointerType>();
    if (!convertedType)
      return rewriter.notifyMatchFailure(loc, "unsupported memref type");

    assert(adaptor.getDynamicSizes().size() <= 1 &&
           "expected at most one dynamic size");

    Value outerSize = getOuterSize(allocaOp, adaptor, rewriter);
    rewriter.replaceOpWithNewOp<LLVM::AllocaOp>(
        allocaOp, convertedType, outerSize, adaptor.getAlignment().value_or(0));
    return success();
  }
};

/// Pattern for lowering heap allocations via malloc.
struct CAllocOpLowering : public AllocLikeOpLowering<memref::AllocOp> {
public:
  using AllocLikeOpLowering<memref::AllocOp>::AllocLikeOpLowering;

  LogicalResult
  matchAndRewrite(memref::AllocOp allocOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto module = allocOp->getParentOfType<ModuleOp>();
    Location loc = allocOp.getLoc();
    MemRefType originalType = allocOp.getType();
    auto convertedType = getTypeConverter()
                             ->convertType(originalType)
                             .dyn_cast_or_null<LLVM::LLVMPointerType>();
    if (!convertedType)
      return rewriter.notifyMatchFailure(loc, "unsupported memref type");
    if (adaptor.getAlignment() && adaptor.getAlignment().value() != 0)
      return rewriter.notifyMatchFailure(loc, "unsupported alignment");

    Value outerSize = getOuterSize(allocOp, adaptor, rewriter);
    Value totalSize = outerSize;
    if (originalType.getRank() > 1) {
      int64_t innerSizes = 1;
      for (int64_t size : originalType.getShape().drop_front())
        innerSizes *= size;
      totalSize = rewriter.createOrFold<LLVM::MulOp>(
          loc, outerSize, createIndexConstant(rewriter, loc, innerSizes));
    }
    Value null = rewriter.create<LLVM::NullOp>(loc, convertedType);
    auto next =
        rewriter.create<LLVM::GEPOp>(loc, convertedType, null, LLVM::GEPArg(1));
    Value elementSize =
        rewriter.create<LLVM::PtrToIntOp>(loc, getIndexType(), next);
    Value size = rewriter.create<LLVM::MulOp>(loc, totalSize, elementSize);

    if (auto F = module.lookupSymbol<mlir::func::FuncOp>("malloc")) {
      Value allocated =
          rewriter.create<func::CallOp>(loc, F, size).getResult(0);
      rewriter.replaceOpWithNewOp<polygeist::Memref2PointerOp>(
          allocOp, convertedType, allocated);
    } else {
      LLVM::LLVMFuncOp mallocFunc =
          getTypeConverter()->getOptions().useGenericFunctions
              ? LLVM::lookupOrCreateGenericAllocFn(module, getIndexType())
              : LLVM::lookupOrCreateMallocFn(module, getIndexType());
      Value allocated =
          rewriter.create<LLVM::CallOp>(loc, mallocFunc, size).getResult();
      rewriter.replaceOpWithNewOp<LLVM::BitcastOp>(allocOp, convertedType,
                                                   allocated);
    }
    return success();
  }
};

/// Pattern for lowering heap deallocations via free.
struct CDeallocOpLowering : public ConvertOpToLLVMPattern<memref::DeallocOp> {
public:
  using ConvertOpToLLVMPattern<memref::DeallocOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(memref::DeallocOp deallocOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto module = deallocOp->getParentOfType<ModuleOp>();
    if (auto F = module.lookupSymbol<mlir::func::FuncOp>("free")) {
      Value casted = rewriter.create<polygeist::Pointer2MemrefOp>(
          deallocOp->getLoc(), MemRefType::get({-1}, rewriter.getI8Type()),
          adaptor.getMemref());
      rewriter.replaceOpWithNewOp<func::CallOp>(deallocOp, F, casted);
    } else {
      LLVM::LLVMFuncOp freeFunc =
          getTypeConverter()->getOptions().useGenericFunctions
              ? LLVM::lookupOrCreateGenericFreeFn(module)
              : LLVM::lookupOrCreateFreeFn(module);
      Value casted = rewriter.create<LLVM::BitcastOp>(
          deallocOp->getLoc(), getVoidPtrType(), adaptor.getMemref());
      rewriter.replaceOpWithNewOp<LLVM::CallOp>(deallocOp, freeFunc, casted);
    }
    return success();
  }
};

/// Converts the given memref type into the LLVM type that can be used for a
/// global. The memref type must have all dimensions statically known. The
/// provided type converter is used to convert the elemental type.
static Type convertGlobalMemRefTypeToLLVM(MemRefType type,
                                          TypeConverter &typeConverter) {
  if (!type.hasStaticShape() || !type.getLayout().isIdentity())
    return nullptr;

  Type convertedType = typeConverter.convertType(type.getElementType());
  if (!convertedType)
    return nullptr;

  for (int64_t size : llvm::reverse(type.getShape()))
    convertedType = LLVM::LLVMArrayType::get(convertedType, size);
  return convertedType;
}

/// Pattern for lowering global memref declarations.
struct GlobalOpLowering : public ConvertOpToLLVMPattern<memref::GlobalOp> {
public:
  using ConvertOpToLLVMPattern<memref::GlobalOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(memref::GlobalOp globalOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    MemRefType originalType = globalOp.getType();
    if (!originalType.hasStaticShape() ||
        !originalType.getLayout().isIdentity()) {
      return rewriter.notifyMatchFailure(globalOp->getLoc(),
                                         "unsupported type");
    }

    Type convertedType =
        convertGlobalMemRefTypeToLLVM(originalType, *typeConverter);
    LLVM::Linkage linkage =
        globalOp.isPublic() ? LLVM::Linkage::External : LLVM::Linkage::Private;
    if (!convertedType) {
      return rewriter.notifyMatchFailure(globalOp->getLoc(),
                                         "failed to convert memref type");
    }

    Attribute initialValue = nullptr;
    if (!globalOp.isExternal() && !globalOp.isUninitialized()) {
      auto elementsAttr = globalOp.getInitialValue()->cast<ElementsAttr>();
      initialValue = elementsAttr;

      // For scalar memrefs, the global variable created is of the element type,
      // so unpack the elements attribute to extract the value.
      if (originalType.getRank() == 0)
        initialValue = elementsAttr.getSplatValue<Attribute>();
    }

    IntegerAttr alignment = globalOp.getAlignmentAttr();
    bool dso_local = globalOp->getAttr("polygeist.cuda_device") ||
                     globalOp->getAttr("polygeist.cuda_constant");
    bool thread_local_ = false;
    LLVM::UnnamedAddrAttr unnamed_addr = nullptr;
    StringAttr section = nullptr;
    auto newGlobal = rewriter.replaceOpWithNewOp<LLVM::GlobalOp>(
        globalOp, convertedType, globalOp.getConstant(), globalOp.getSymName(),
        linkage, dso_local, thread_local_, initialValue, alignment,
        originalType.getMemorySpaceAsInt(), unnamed_addr, section);
    if (!globalOp.isExternal() && globalOp.isUninitialized()) {
      Block *block =
          rewriter.createBlock(&newGlobal.getInitializerRegion(),
                               newGlobal.getInitializerRegion().begin());
      rewriter.setInsertionPointToStart(block);
      Value undef =
          rewriter.create<LLVM::UndefOp>(globalOp->getLoc(), convertedType);
      rewriter.create<LLVM::ReturnOp>(globalOp->getLoc(), undef);
    }
    return success();
  }
};

/// Pattern for lowering operations taking the address of a global memref.
struct GetGlobalOpLowering
    : public ConvertOpToLLVMPattern<memref::GetGlobalOp> {
public:
  using ConvertOpToLLVMPattern<memref::GetGlobalOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(memref::GetGlobalOp getGlobalOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    MemRefType originalType = getGlobalOp.getType();
    Type convertedType =
        convertGlobalMemRefTypeToLLVM(originalType, *typeConverter);
    Value wholeAddress = rewriter.create<LLVM::AddressOfOp>(
        getGlobalOp->getLoc(),
        LLVM::LLVMPointerType::get(convertedType,
                                   originalType.getMemorySpaceAsInt()),
        getGlobalOp.getName());

    if (originalType.getRank() == 0) {
      rewriter.replaceOp(getGlobalOp, wholeAddress);
      return success();
    }

    rewriter.replaceOpWithNewOp<LLVM::GEPOp>(
        getGlobalOp,
        LLVM::LLVMPointerType::get(
            convertedType.cast<LLVM::LLVMArrayType>().getElementType(),
            originalType.getMemorySpaceAsInt()),
        wholeAddress, SmallVector<LLVM::GEPArg>(/*Size=*/2, /*Value=*/0));
    return success();
  }
};

/// Base class for patterns lowering memory access operations.
template <typename OpTy>
struct CLoadStoreOpLowering : public ConvertOpToLLVMPattern<OpTy> {
protected:
  using ConvertOpToLLVMPattern<OpTy>::ConvertOpToLLVMPattern;

  /// Emits the IR that computes the address of the memory being accessed.
  Value getAddress(OpTy op,
                   typename ConvertOpToLLVMPattern<OpTy>::OpAdaptor adaptor,
                   ConversionPatternRewriter &rewriter) const {
    Location loc = op.getLoc();
    MemRefType originalType = op.getMemRefType();
    auto convertedType =
        this->getTypeConverter()
            ->convertType(originalType)
            .template dyn_cast_or_null<LLVM::LLVMPointerType>();
    if (!convertedType) {
      (void)rewriter.notifyMatchFailure(loc, "unsupported memref type");
      return nullptr;
    }

    SmallVector<LLVM::GEPArg> args = llvm::to_vector(llvm::map_range(
        adaptor.getIndices(), [](Value v) { return LLVM::GEPArg(v); }));
    return rewriter.create<LLVM::GEPOp>(
        loc, this->getElementPtrType(originalType), adaptor.getMemref(), args);
  }
};

/// Pattern for lowering a memory load.
struct CLoadOpLowering : public CLoadStoreOpLowering<memref::LoadOp> {
public:
  using CLoadStoreOpLowering<memref::LoadOp>::CLoadStoreOpLowering;

  LogicalResult
  matchAndRewrite(memref::LoadOp loadOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    Value address = getAddress(loadOp, adaptor, rewriter);
    if (!address)
      return failure();

    rewriter.replaceOpWithNewOp<LLVM::LoadOp>(loadOp, address);
    return success();
  }
};

struct CAtomicRMWOpLowering : public CLoadStoreOpLowering<memref::AtomicRMWOp> {
  using CLoadStoreOpLowering<memref::AtomicRMWOp>::CLoadStoreOpLowering;

  LogicalResult
  matchAndRewrite(memref::AtomicRMWOp atomicOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto maybeKind = matchSimpleAtomicOp(atomicOp);
    if (!maybeKind)
      return failure();
    auto dataPtr = getAddress(atomicOp, adaptor, rewriter);
    if (!dataPtr)
      return failure();
    rewriter.replaceOpWithNewOp<LLVM::AtomicRMWOp>(
        atomicOp, atomicOp.getType(), *maybeKind, dataPtr, adaptor.getValue(),
        LLVM::AtomicOrdering::acq_rel);
    return success();
  }
};

/// Pattern for lowering a memory store.
struct CStoreOpLowering : public CLoadStoreOpLowering<memref::StoreOp> {
public:
  using CLoadStoreOpLowering<memref::StoreOp>::CLoadStoreOpLowering;

  LogicalResult
  matchAndRewrite(memref::StoreOp storeOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    Value address = getAddress(storeOp, adaptor, rewriter);
    if (!address)
      return failure();

    rewriter.replaceOpWithNewOp<LLVM::StoreOp>(storeOp, adaptor.getValue(),
                                               address);
    return success();
  }
};
} // namespace

/// Only retain those attributes that are not constructed by
/// `LLVMFuncOp::build`. If `filterArgAttrs` is set, also filter out argument
/// attributes.
static void filterFuncAttributes(ArrayRef<NamedAttribute> attrs,
                                 bool filterArgAndResAttrs,
                                 SmallVectorImpl<NamedAttribute> &result) {
  for (const auto &attr : attrs) {
    if (attr.getName() == SymbolTable::getSymbolAttrName() ||
        attr.getName() == FunctionOpInterface::getTypeAttrName() ||
        attr.getName() == "func.varargs" ||
        (filterArgAndResAttrs &&
         (attr.getName() == FunctionOpInterface::getArgDictAttrName() ||
          attr.getName() == FunctionOpInterface::getResultDictAttrName())))
      continue;
    result.push_back(attr);
  }
}

/// Helper function for wrapping all attributes into a single DictionaryAttr
static auto wrapAsStructAttrs(OpBuilder &b, ArrayAttr attrs) {
  return DictionaryAttr::get(
      b.getContext(),
      b.getNamedAttr(LLVM::LLVMDialect::getStructAttrsAttrName(), attrs));
}

static constexpr llvm::StringLiteral kLLVMLinkageAttrName = "llvm.linkage";

/// Convert function argument, operation and result attributes to the LLVM
/// dialect. This identifies attributes known to contain types and converts
/// those types using the converter provided. This also accounts for the calling
/// convention of packing multiple values returned from a function into an
/// anonymous struct. Adapted from upstream MLIR.
static SmallVector<NamedAttribute> convertFuncAttributes(
    func::FuncOp funcOp, TypeConverter &typeConverter,
    const TypeConverter::SignatureConversion &signatureConversion,
    OpBuilder &rewriter) {
  // Propagate argument/result attributes to all converted arguments/result
  // obtained after converting a given original argument/result.
  SmallVector<NamedAttribute> attributes;
  filterFuncAttributes(funcOp->getAttrs(), /*filterArgAndResAttrs=*/true,
                       attributes);
  if (ArrayAttr resAttrDicts = funcOp.getAllResultAttrs()) {
    assert(!resAttrDicts.empty() && "expected array to be non-empty");
    auto newResAttrDicts =
        (funcOp.getNumResults() == 1)
            ? resAttrDicts
            : rewriter.getArrayAttr(
                  {wrapAsStructAttrs(rewriter, resAttrDicts)});
    attributes.push_back(rewriter.getNamedAttr(
        FunctionOpInterface::getResultDictAttrName(), newResAttrDicts));
  }
  if (ArrayAttr argAttrDicts = funcOp.getAllArgAttrs()) {
    SmallVector<Attribute> newArgAttrs(funcOp.getNumArguments());
    for (unsigned i = 0, e = funcOp.getNumArguments(); i < e; ++i) {
      // Some LLVM IR attribute have a type attached to them. During FuncOp ->
      // LLVMFuncOp conversion these types may have changed. Account for that
      // change by converting attributes' types as well.
      SmallVector<NamedAttribute, 4> convertedAttrs;
      auto attrsDict = argAttrDicts[i].cast<DictionaryAttr>();
      convertedAttrs.reserve(attrsDict.size());
      for (const NamedAttribute &attr : attrsDict) {
        const auto convert = [&](const NamedAttribute &attr) {
          return TypeAttr::get(typeConverter.convertType(
              attr.getValue().cast<TypeAttr>().getValue()));
        };
        if (attr.getName().getValue() ==
            LLVM::LLVMDialect::getByValAttrName()) {
          convertedAttrs.push_back(rewriter.getNamedAttr(
              LLVM::LLVMDialect::getByValAttrName(), convert(attr)));
        } else if (attr.getName().getValue() ==
                   LLVM::LLVMDialect::getByRefAttrName()) {
          convertedAttrs.push_back(rewriter.getNamedAttr(
              LLVM::LLVMDialect::getByRefAttrName(), convert(attr)));
        } else if (attr.getName().getValue() ==
                   LLVM::LLVMDialect::getStructRetAttrName()) {
          convertedAttrs.push_back(rewriter.getNamedAttr(
              LLVM::LLVMDialect::getStructRetAttrName(), convert(attr)));
        } else if (attr.getName().getValue() ==
                   LLVM::LLVMDialect::getInAllocaAttrName()) {
          convertedAttrs.push_back(rewriter.getNamedAttr(
              LLVM::LLVMDialect::getInAllocaAttrName(), convert(attr)));
        } else {
          convertedAttrs.push_back(attr);
        }
      }
      auto mapping = signatureConversion.getInputMapping(i);
      assert(mapping && "unexpected deletion of function argument");
      for (size_t j = 0; j < mapping->size; ++j)
        newArgAttrs[mapping->inputNo + j] =
            DictionaryAttr::get(rewriter.getContext(), convertedAttrs);
    }
    attributes.push_back(
        rewriter.getNamedAttr(FunctionOpInterface::getArgDictAttrName(),
                              rewriter.getArrayAttr(newArgAttrs)));
  }
  for (const auto &pair : llvm::enumerate(attributes)) {
    if (pair.value().getName() == kLLVMLinkageAttrName) {
      attributes.erase(attributes.begin() + pair.index());
      break;
    }
  }

  return attributes;
}

/// Returns the LLVM dialect type suitable for constructing the LLVM function
/// type that has the same results as the given type. If multiple results are to
/// be returned, packs them into an anonymous LLVM dialect structure type.
static Type convertAndPackFunctionResultType(FunctionType type,
                                             TypeConverter &typeConverter) {
  SmallVector<Type> convertedResultTypes;
  if (failed(
          typeConverter.convertTypes(type.getResults(), convertedResultTypes)))
    return nullptr;

  if (convertedResultTypes.empty())
    return LLVM::LLVMVoidType::get(type.getContext());
  if (convertedResultTypes.size() == 1)
    return convertedResultTypes[0];
  return LLVM::LLVMStructType::getLiteral(type.getContext(),
                                          convertedResultTypes);
}

/// Attempts to convert the function type representing the signature of the
/// given function to the LLVM dialect equivalent type. On success, returns the
/// converted type and the signature conversion object that can be used to
/// update the arguments of the function's entry block.
template <typename FuncOpType>
static Optional<
    std::pair<LLVM::LLVMFunctionType, TypeConverter::SignatureConversion>>
convertFunctionType(FuncOpType funcOp, TypeConverter &typeConverter) {
  TypeConverter::SignatureConversion signatureConversion(
      funcOp.getNumArguments());
  for (const auto &[index, type] : llvm::enumerate(funcOp.getArgumentTypes())) {
    Type converted = typeConverter.convertType(type);
    if (!converted)
      return llvm::None;

    signatureConversion.addInputs(index, converted);
  }

  Type resultType =
      convertAndPackFunctionResultType(funcOp.getFunctionType(), typeConverter);
  if (!resultType)
    return llvm::None;

  auto varargsAttr = funcOp->template getAttrOfType<BoolAttr>("func.varargs");
  auto convertedType = LLVM::LLVMFunctionType::get(
      resultType, signatureConversion.getConvertedTypes(),
      varargsAttr && varargsAttr.getValue());

  return std::make_pair(convertedType, signatureConversion);
}

namespace {

static constexpr const char *kGpuBinaryStorageSuffix = "_gpubin_cst";
static constexpr const char *kGpuModuleCtorSuffix = "_gpubin_ctor";
static constexpr const char *kGpuModuleDtorSuffix = "_gpubin_dtor";

class ConvertLaunchFuncOpToGpuRuntimeCallPattern
    : public ConvertOpToGpuRuntimeCallPattern<gpu::LaunchFuncOp> {
public:
  ConvertLaunchFuncOpToGpuRuntimeCallPattern(LLVMTypeConverter &typeConverter,
                                             StringRef gpuBinaryAnnotation,
                                             std::string gpuTarget)
      : ConvertOpToGpuRuntimeCallPattern<gpu::LaunchFuncOp>(typeConverter),
        gpuBinaryAnnotation(gpuBinaryAnnotation), gpuTarget(gpuTarget) {}

private:
  Value generateParamsArray(gpu::LaunchFuncOp launchOp, OpAdaptor adaptor,
                            OpBuilder &builder) const;
  Value generateKernelNameConstant(StringRef moduleName, StringRef name,
                                   Location loc, OpBuilder &builder) const;

  LogicalResult
  matchAndRewrite(gpu::LaunchFuncOp launchOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override;

  llvm::SmallString<32> gpuBinaryAnnotation;
  std::string gpuTarget;
};

// tuple helpers
template <typename Tuple> constexpr auto pop_front(Tuple tuple) {
  static_assert(std::tuple_size<Tuple>::value > 0,
                "Cannot pop from an empty tuple");
  return std::apply([](auto, auto... rest) { return std::make_tuple(rest...); },
                    tuple);
}
template <typename Stream, class Tuple, std::size_t N> struct TuplePrinter {
  static void print(Stream &stream, const Tuple &t) {
    TuplePrinter<Stream, Tuple, N - 1>::print(stream, t);
    stream << ", " << std::get<N - 1>(t);
  }
};
template <typename Stream, class Tuple> struct TuplePrinter<Stream, Tuple, 1> {
  static void print(Stream &stream, const Tuple &t) {
    stream << std::get<0>(t);
  }
};
template <typename Stream, typename... Args,
          std::enable_if_t<sizeof...(Args) != 0, int> = 0>
void print(Stream &stream, const std::tuple<Args...> &t) {
  TuplePrinter<Stream, decltype(t), sizeof...(Args)>::print(stream, t);
}

struct LowerGPUAlternativesOp
    : public OpRewritePattern<polygeist::AlternativesOp>,
      public GpuRuntimeCallBuilders {
  using OpRewritePattern<polygeist::AlternativesOp>::OpRewritePattern;
  const char *PATTERN = "lower-gpu-alternatives";

  LogicalResult matchAndRewrite(polygeist::AlternativesOp gao,
                                PatternRewriter &rewriter) const override {

    if (gao->getAttrOfType<StringAttr>("alternatives.type").getValue() !=
        "gpu_kernel")
      return failure();

    Location loc = gao->getLoc();
    std::string locStr = [&loc]() {
      std::string str;
      llvm::raw_string_ostream stream(str);
      loc.print(stream);
      stream.flush();
      return stream.str();
    }();
    locStr += gao->getAttrOfType<StringAttr>("polygeist.altop.id").data();
    for (char &c : locStr)
      if (c == '/')
        c = '+';

    // TODO each region in the alternatives op should containt only a single
    // block - write a verifier for that

    typedef std::tuple<Region *, int, int, int, int, int, int, int, int, int,
                       int, int, int>
        kernelInfoTy;
    std::vector<kernelInfoTy> infos;

    auto printInfos = [&](auto &strm, std::vector<kernelInfoTy> infos) {
      int i = 0;
      for (auto tup : infos) {
        strm << "polygeistKernelInfo: " << locStr << "," << i++ << ",";
        auto _tup = pop_front(tup);
        print(strm, _tup);
        strm << "\n";
      }
    };

    auto gatherInfos = [&]() {
      typedef std::tuple<int, int, int, int, int, int> kernelLLVMInfoTy;
      auto gatherLLVMInfos = [&](Operation *gpuFunc) -> kernelLLVMInfoTy {
        int ops = 0, floatOps = 0, intOps = 0, loads = 0, stores = 0,
            branches = 0;

        // TODO This should use the GPU data layout and not the Host one
        DataLayout DLI(gao->getParentOfType<ModuleOp>());
        gpuFunc->walk([&](Operation *op) {
          ops++;
          if (isa<LLVM::BrOp>(op)) {
            branches++;
          } else if (isa<LLVM::FAddOp>(op) || isa<LLVM::FMulOp>(op) ||
                     isa<LLVM::FDivOp>(op) || isa<LLVM::FSubOp>(op) ||
                     isa<LLVM::FRemOp>(op)) {
            int width =
                op->getOperand(0).getType().dyn_cast<FloatType>().getWidth();
            // TODO these are pretty random atm
            if (width == 16) {
              floatOps++;
            } else if (width == 32) {
              floatOps += 2;
            } else if (width == 64) {
              floatOps += 4;
            }
          } else if (isa<LLVM::AddOp>(op) || isa<LLVM::SubOp>(op) ||
                     isa<LLVM::MulOp>(op) || isa<LLVM::UDivOp>(op) ||
                     isa<LLVM::SDivOp>(op)) {
            intOps++;
          } else if (auto load = dyn_cast<LLVM::LoadOp>(op)) {
            int bytes = DLI.getTypeSize(load.getRes().getType());
            loads += bytes;
          } else if (auto store = dyn_cast<LLVM::StoreOp>(op)) {
            int bytes = DLI.getTypeSize(store->getOperand(0).getType());
            stores += bytes;
          }
        });
        return {
            ops, floatOps, intOps, loads, stores, branches,
        };
      };

#if POLYGEIST_ENABLE_CUDA
      if (gpuTarget == "cuda") {
        char cuErrorBuffer[4096] = {0};

        // TODO implement a version that does this at runtime for when we dont
        // have block sizes or shared mem

        RETURN_ON_CUDA_ERROR(cuInit(0));
        // For whatever reason we need a device context
        CUdevice device;
        RETURN_ON_CUDA_ERROR(cuDeviceGet(&device, 0));
        CUcontext context;
        RETURN_ON_CUDA_ERROR(cuCtxCreate(&context, 0, device));

        for (auto &region : gao->getRegions()) {
          gpu::LaunchFuncOp launchOp = nullptr;
          region.walk([&](gpu::LaunchFuncOp l) {
            launchOp = l;
            return WalkResult::interrupt();
          });
          assert(launchOp);

          auto gpuFunc = launchOp->getParentOfType<ModuleOp>().lookupSymbol(
              launchOp.getKernel());
          assert(gpuFunc);
          auto gpuModule = gpuFunc->getParentOfType<gpu::GPUModuleOp>();
          assert(gpuModule);
          const char *blob =
              gpuModule->getAttrOfType<StringAttr>(gpuBinaryAnnotation).data();

          CUmodule cuModule;
          CUfunction cuFunction;
          RETURN_ON_CUDA_ERROR(cuModuleLoadData(&cuModule, blob));
          RETURN_ON_CUDA_ERROR(cuModuleGetFunction(
              &cuFunction, cuModule, launchOp.getKernelName().data()));

          int maxThreadsPerBlock, sharedMemSize, constMemSize,
              /* stack frame size */ localMemSize, numRegs;
          // TODO we dont seem to be able to get spilled stores/loads count from
          // here but ptxas outputs it? should we parse the ptxas output and add
          // an attribute for those values
          RETURN_ON_CUDA_ERROR(cuFuncGetAttribute(
              &maxThreadsPerBlock, CU_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK,
              cuFunction));
          RETURN_ON_CUDA_ERROR(cuFuncGetAttribute(
              &sharedMemSize, CU_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES, cuFunction));
          RETURN_ON_CUDA_ERROR(cuFuncGetAttribute(
              &constMemSize, CU_FUNC_ATTRIBUTE_CONST_SIZE_BYTES, cuFunction));
          RETURN_ON_CUDA_ERROR(cuFuncGetAttribute(
              &localMemSize, CU_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES, cuFunction));
          RETURN_ON_CUDA_ERROR(cuFuncGetAttribute(
              &numRegs, CU_FUNC_ATTRIBUTE_NUM_REGS, cuFunction));

          int blockSize = 1;
          gpu::KernelDim3 blockDims = launchOp.getBlockSizeOperandValues();
          for (auto dim : {blockDims.x, blockDims.y, blockDims.z}) {
            if (auto cstint = dyn_cast_or_null<arith::ConstantIntOp>(
                    dim.getDefiningOp())) {
              blockSize *= cstint.value();
            } else if (auto cstindex = dyn_cast_or_null<arith::ConstantIndexOp>(
                           dim.getDefiningOp())) {
              blockSize *= cstindex.value();
            } else {
              blockSize = 0;
              break;
            }
          }

          // in the current state, only kernels with no shared memory should use
          // the alternatives op, thus assume 0 TODO check it
          size_t dynamicSharedMemSize = 0;

          int occupancyNumBlocks;
          if (blockSize > 0) {
            RETURN_ON_CUDA_ERROR(cuOccupancyMaxActiveBlocksPerMultiprocessor(
                &occupancyNumBlocks, cuFunction, blockSize,
                dynamicSharedMemSize));
          } else {
            occupancyNumBlocks = 0;
          }

          RETURN_ON_CUDA_ERROR(cuModuleUnload(cuModule));

          auto kernelLLVMInfo = gatherLLVMInfos(gpuFunc);

          assert(maxThreadsPerBlock >= blockSize);
          // int activeThreads = occupancyNumBlocks * blockSize;
          infos.push_back(std::tuple_cat(
              std::make_tuple(&region),
              std::make_tuple(localMemSize, occupancyNumBlocks, numRegs,
                              blockSize, sharedMemSize, constMemSize),
              kernelLLVMInfo));
        }
      }
#endif
#if POLYGEIST_ENABLE_ROCM
      if (gpuTarget == "rocm") {
        char hipErrorBuffer[4096] = {0};

        // TODO implement a version that does this at runtime for when we dont
        // have block sizes or shared mem

        RETURN_ON_HIP_ERROR(hipInit(0));
        // For whatever reason we need a device context
        hipDevice_t device;
        RETURN_ON_HIP_ERROR(hipDeviceGet(&device, 0));

        for (auto &region : gao->getRegions()) {
          gpu::LaunchFuncOp launchOp = nullptr;
          region.walk([&](gpu::LaunchFuncOp l) {
            launchOp = l;
            return WalkResult::interrupt();
          });
          assert(launchOp);

          auto gpuFunc = launchOp->getParentOfType<ModuleOp>().lookupSymbol(
              launchOp.getKernel());
          assert(gpuFunc);
          auto gpuModule = gpuFunc->getParentOfType<gpu::GPUModuleOp>();
          assert(gpuModule);
          const char *blob =
              gpuModule->getAttrOfType<StringAttr>(gpuBinaryAnnotation).data();

          hipModule_t hipModule;
          hipFunction_t hipFunction;
          RETURN_ON_HIP_ERROR(hipModuleLoadData(&hipModule, blob));
          RETURN_ON_HIP_ERROR(hipModuleGetFunction(
              &hipFunction, hipModule, launchOp.getKernelName().data()));

          int maxThreadsPerBlock, sharedMemSize, constMemSize,
              /* stack frame size */ localMemSize, numRegs;
          // TODO we dont seem to be able to get spilled stores/loads count from
          // here but ptxas outputs it? should we parse the ptxas output and add
          // an attribute for those values
          RETURN_ON_HIP_ERROR(hipFuncGetAttribute(
              &maxThreadsPerBlock, HIP_FUNC_ATTRIBUTE_MAX_THREADS_PER_BLOCK,
              hipFunction));
          RETURN_ON_HIP_ERROR(hipFuncGetAttribute(
              &sharedMemSize, HIP_FUNC_ATTRIBUTE_SHARED_SIZE_BYTES,
              hipFunction));
          RETURN_ON_HIP_ERROR(hipFuncGetAttribute(
              &constMemSize, HIP_FUNC_ATTRIBUTE_CONST_SIZE_BYTES, hipFunction));
          RETURN_ON_HIP_ERROR(hipFuncGetAttribute(
              &localMemSize, HIP_FUNC_ATTRIBUTE_LOCAL_SIZE_BYTES, hipFunction));
          RETURN_ON_HIP_ERROR(hipFuncGetAttribute(
              &numRegs, HIP_FUNC_ATTRIBUTE_NUM_REGS, hipFunction));

          int blockSize = 1;
          gpu::KernelDim3 blockDims = launchOp.getBlockSizeOperandValues();
          for (auto dim : {blockDims.x, blockDims.y, blockDims.z}) {
            if (auto cstint = dyn_cast_or_null<arith::ConstantIntOp>(
                    dim.getDefiningOp())) {
              blockSize *= cstint.value();
            } else if (auto cstindex = dyn_cast_or_null<arith::ConstantIndexOp>(
                           dim.getDefiningOp())) {
              blockSize *= cstindex.value();
            } else {
              blockSize = 0;
              break;
            }
          }

          // in the current state, only kernels with no shared memory should use
          // the alternatives op, thus assume 0 TODO check it
          size_t dynamicSharedMemSize = 0;

          int occupancyNumBlocks;
          if (blockSize > 0) {
            auto succeeded =
                [&]() {
                  RETURN_ON_HIP_ERROR(
                      hipOccupancyMaxActiveBlocksPerMultiprocessor(
                          &occupancyNumBlocks, hipFunction, blockSize,
                          dynamicSharedMemSize));
                  return success();
                }()
                    .succeeded();

            if (!succeeded) {
              llvm::errs() << "Why does this fail with block size " << blockSize
                           << " and dynamic shared mem size "
                           << dynamicSharedMemSize << " \n";
              occupancyNumBlocks = 0;
            }
          } else {
            occupancyNumBlocks = 0;
          }

          RETURN_ON_HIP_ERROR(hipModuleUnload(hipModule));

          auto kernelLLVMInfo = gatherLLVMInfos(gpuFunc);

          assert(maxThreadsPerBlock >= blockSize);
          // int activeThreads = occupancyNumBlocks * blockSize;
          infos.push_back(std::tuple_cat(
              std::make_tuple(&region),
              std::make_tuple(localMemSize, occupancyNumBlocks, numRegs,
                              blockSize, sharedMemSize, constMemSize),
              kernelLLVMInfo));
        }
      }
#endif
      return success();
    };

    auto sortInfos = [&]() {
      auto getCost = [](auto a) -> double {
        std::vector<float> coefficients = {4, -2, -0.1, -0.01};
        return coefficients[0] * std::get<0>(a) +
               coefficients[1] * std::get<1>(a) +
               coefficients[2] * std::get<2>(a) +
               coefficients[3] * std::get<3>(a) + 0 * std::get<4>(a) +
               0 * std::get<5>(a);
      };
      std::stable_sort(infos.begin(), infos.end(), [&](auto a, auto b) {
        auto _a = pop_front(a);
        auto _b = pop_front(b);
        return getCost(_a) < getCost(_b);
      });
    };

    bool shouldPrintInfo = getenv("POLYGEIST_GPU_ALTERNATIVES_PRINT_INFO");
    if (shouldPrintInfo || PolygeistAlternativesMode == PAM_Static) {
      if (gatherInfos().failed())
        return failure();
      LLVM_DEBUG(DBGS() << "GPU Alternatives theoretical infos unsorted:\n");
      LLVM_DEBUG(printInfos(DBGS(), infos));
    }
    if (shouldPrintInfo)
      printInfos(llvm::errs(), infos);

    if (PolygeistAlternativesMode == PAM_Static) {
      Block *block = nullptr;
      sortInfos();
      LLVM_DEBUG(DBGS() << "GPU Alternatives theoretical infos sorted:\n");
      LLVM_DEBUG(printInfos(DBGS(), infos));
      LLVM_DEBUG(DBGS() << "Choosing top option\n");

      block = &*gao->getRegions()[0].begin();
      if (!infos.empty())
        block = &*std::get<0>(infos[0])->begin();

      rewriter.eraseOp(block->getTerminator());
      rewriter.mergeBlockBefore(block, gao);
      rewriter.eraseOp(gao);

      return success();

    } else if (PolygeistAlternativesMode == PAM_PGO_Profile) {
      rewriter.setInsertionPoint(gao);
      static int num = 0;
      auto kernelId = LLVM::createGlobalString(
          loc, rewriter, std::string("kernelId.") + std::to_string(num++),
          locStr, LLVM::Linkage::Internal);
      auto totalAlternatives = rewriter.create<LLVM::ConstantOp>(
          loc, llvmInt32Type, gao->getNumRegions());
      auto alternative =
          rtPGOGetAlternativeCallBuilder
              .create(loc, rewriter, {kernelId, totalAlternatives})
              ->getResult(0);

      int i = 0;
      for (auto &region : gao->getRegions()) {
        auto cmpOp = rewriter.create<arith::CmpIOp>(
            loc, arith::CmpIPredicate::eq, alternative,
            rewriter.create<arith::ConstantIntOp>(loc, i, 32));
        auto ifOp = rewriter.create<scf::IfOp>(loc, cmpOp, /* hasElse */ true);
        auto block = &region.front();
        rewriter.eraseOp(block->getTerminator());
        rewriter.mergeBlockBefore(block,
                                  ifOp.getThenRegion().front().getTerminator());

        // Timing
        rewriter.setInsertionPointToStart(&ifOp.getThenRegion().front());
        rtPGOStartCallBuilder.create(loc, rewriter,
                                     {kernelId, totalAlternatives});
        rewriter.setInsertionPoint(
            ifOp.getThenRegion().front().getTerminator());
        rtPGOEndCallBuilder.create(loc, rewriter,
                                   {kernelId, totalAlternatives});

        rewriter.setInsertionPointToStart(&ifOp.getElseRegion().front());
        i++;
      }

      rewriter.eraseOp(gao);
      return success();
    } else if (PolygeistAlternativesMode == PAM_PGO_Opt) {
      std::string dirname = []() {
        if (char *d = getenv(POLYGEIST_PGO_DATA_DIR_ENV_VAR)) {
          return std::string(d);
        } else {
          return std::string(POLYGEIST_PGO_DEFAULT_DATA_DIR);
        }
      }();
      // TODO error handling
      std::ifstream ifile;
      int numAlternatives = gao->getNumRegions();
      std::vector<std::vector<double>> timings;
      for (int i = 0; i < numAlternatives; i++) {
        timings.push_back({});
      }
      ifile.open(std::string(dirname) + "/" + locStr, std::ios::in);
      while (ifile) {
        int alt;
        double time;
        ifile >> alt >> time;
        if (alt >= 0 && alt < numAlternatives) {
          timings[alt].push_back(time);
        } else {
          llvm::errs() << "Invalid alternative data";
          assert(0);
        }
      }
      std::vector<double> avgs;
      for (int i = 0; i < numAlternatives; i++) {
        if (timings[i].size() == 0) {
          llvm::errs() << "No data for alternative " << i << " of " << locStr
                       << "\n";
          assert(0);
          avgs.push_back(std::numeric_limits<double>::infinity());
        } else {
          // TODO might get some round off errors here, maybe use a better alg
          // or median
          avgs.push_back(
              std::accumulate(timings[i].begin(), timings[i].end(), 0.0f) /
              timings[i].size());
          llvm::errs() << "Alternative " << i << " is " << avgs[i] << "\n";
        }
      }

      int bestAlt = std::distance(avgs.begin(),
                                  std::min_element(avgs.begin(), avgs.end()));
      llvm::errs() << "Picking " << bestAlt << "\n";

      auto block = &*gao->getRegions()[bestAlt].begin();

      rewriter.eraseOp(block->getTerminator());
      rewriter.mergeBlockBefore(block, gao);
      rewriter.eraseOp(gao);

      return success();
    } else {
      llvm_unreachable("Invalid enum");
    }
  }

  LowerGPUAlternativesOp(MLIRContext *context, LLVMTypeConverter &typeConverter,
                         StringRef gpuBinaryAnnotation, StringRef gpuTarget)
      : OpRewritePattern<polygeist::AlternativesOp>(context),
        GpuRuntimeCallBuilders(context, typeConverter),
        gpuBinaryAnnotation(gpuBinaryAnnotation), gpuTarget(gpuTarget) {}

  llvm::SmallString<32> gpuBinaryAnnotation;
  llvm::SmallString<4> gpuTarget;
};

// Creates a struct containing all kernel parameters on the stack and returns
// an array of type-erased pointers to the fields of the struct. The array can
// then be passed to the CUDA / ROCm (HIP) kernel launch calls.
// The generated code is essentially as follows:
//
// %struct = alloca(sizeof(struct { Parameters... }))
// %array = alloca(NumParameters * sizeof(void *))
// for (i : [0, NumParameters))
//   %fieldPtr = llvm.getelementptr %struct[0, i]
//   llvm.store parameters[i], %fieldPtr
//   %elementPtr = llvm.getelementptr %array[i]
//   llvm.store %fieldPtr, %elementPtr
// return %array
Value ConvertLaunchFuncOpToGpuRuntimeCallPattern::generateParamsArray(
    gpu::LaunchFuncOp launchOp, OpAdaptor adaptor, OpBuilder &builder) const {
  auto loc = launchOp.getLoc();
  auto numKernelOperands = launchOp.getNumKernelOperands();
  SmallVector<Value, 4> arguments =
      adaptor.getOperands().take_back(numKernelOperands);
  auto numArguments = arguments.size();
  SmallVector<Type, 4> argumentTypes;
  argumentTypes.reserve(numArguments);
  for (auto argument : arguments)
    argumentTypes.push_back(argument.getType());
  auto structType = LLVM::LLVMStructType::getNewIdentified(context, StringRef(),
                                                           argumentTypes);
  auto one = builder.create<LLVM::ConstantOp>(loc, llvmInt32Type, 1);
  auto structPtr = builder.create<LLVM::AllocaOp>(
      loc, LLVM::LLVMPointerType::get(structType), one, /*alignment=*/0);
  auto arraySize =
      builder.create<LLVM::ConstantOp>(loc, llvmInt32Type, numArguments);
  auto arrayPtr = builder.create<LLVM::AllocaOp>(loc, llvmPointerPointerType,
                                                 arraySize, /*alignment=*/0);
  for (const auto &en : llvm::enumerate(arguments)) {
    auto fieldPtr = builder.create<LLVM::GEPOp>(
        loc, LLVM::LLVMPointerType::get(argumentTypes[en.index()]), structPtr,
        ArrayRef<LLVM::GEPArg>{0, en.index()});
    builder.create<LLVM::StoreOp>(loc, en.value(), fieldPtr);
    auto elementPtr =
        builder.create<LLVM::GEPOp>(loc, llvmPointerPointerType, arrayPtr,
                                    ArrayRef<LLVM::GEPArg>{en.index()});
    auto casted =
        builder.create<LLVM::BitcastOp>(loc, llvmPointerType, fieldPtr);
    builder.create<LLVM::StoreOp>(loc, casted, elementPtr);
  }
  return arrayPtr;
}

// Generates an LLVM IR dialect global that contains the name of the given
// kernel function as a C string, and returns a pointer to its beginning.
// The code is essentially:
//
// llvm.global constant @kernel_name("function_name\00")
// func(...) {
//   %0 = llvm.addressof @kernel_name
//   %1 = llvm.constant (0 : index)
//   %2 = llvm.getelementptr %0[%1, %1] : !llvm<"i8*">
// }
Value ConvertLaunchFuncOpToGpuRuntimeCallPattern::generateKernelNameConstant(
    StringRef moduleName, StringRef name, Location loc,
    OpBuilder &builder) const {
  // Make sure the trailing zero is included in the constant.
  std::vector<char> kernelName(name.begin(), name.end());
  kernelName.push_back('\0');

  std::string globalName =
      std::string(llvm::formatv("{0}_{1}_kernel_name", moduleName, name));
  return LLVM::createGlobalString(
      loc, builder, globalName, StringRef(kernelName.data(), kernelName.size()),
      LLVM::Linkage::Internal);
}

// Returns whether all operands are of LLVM type.
static LogicalResult areAllLLVMTypes(Operation *op, ValueRange operands,
                                     ConversionPatternRewriter &rewriter) {
  if (!llvm::all_of(operands, [](Value value) {
        return LLVM::isCompatibleType(value.getType());
      }))
    return rewriter.notifyMatchFailure(
        op, "Cannot convert if operands aren't of LLVM type.");
  return success();
}

// Emits LLVM IR to launch a kernel function. Expects the module that contains
// the compiled kernel function as a cubin in the 'nvvm.cubin' attribute, or a
// hsaco in the 'rocdl.hsaco' attribute of the kernel function in the IR.
//
// %0 = call %binarygetter
// %1 = call %moduleLoad(%0)
// %2 = <see generateKernelNameConstant>
// %3 = call %moduleGetFunction(%1, %2)
// %4 = call %streamCreate()
// %5 = <see generateParamsArray>
// call %launchKernel(%3, <launchOp operands 0..5>, 0, %4, %5, nullptr)
// call %streamSynchronize(%4)
// call %streamDestroy(%4)
// call %moduleUnload(%1)
//
// If the op is async, the stream corresponds to the (single) async dependency
// as well as the async token the op produces.
LogicalResult ConvertLaunchFuncOpToGpuRuntimeCallPattern::matchAndRewrite(
    gpu::LaunchFuncOp launchOp, OpAdaptor adaptor,
    ConversionPatternRewriter &rewriter) const {
  if (failed(areAllLLVMTypes(launchOp, adaptor.getOperands(), rewriter)))
    return failure();

  if (launchOp.getAsyncDependencies().size() > 1)
    return rewriter.notifyMatchFailure(
        launchOp, "Cannot convert with more than one async dependency.");

  // Fail when the synchronous version of the op has async dependencies. The
  // lowering destroys the stream, and we do not want to check that there is no
  // use of the stream after this op.
  if (!launchOp.getAsyncToken() && !launchOp.getAsyncDependencies().empty())
    return rewriter.notifyMatchFailure(
        launchOp, "Cannot convert non-async op with async dependencies.");

  Location loc = launchOp.getLoc();

  polygeist::GPUErrorOp errOp = nullptr;
  if ((errOp = dyn_cast<polygeist::GPUErrorOp>(launchOp->getParentOp()))) {
    rewriter.setInsertionPoint(errOp);
    rewriter.eraseOp(errOp.getBody()->getTerminator());
    rewriter.mergeBlockBefore(errOp.getBody(), errOp);
  }

  // Create an LLVM global with CUBIN extracted from the kernel annotation and
  // obtain a pointer to the first byte in it.
  auto kernelModule = SymbolTable::lookupNearestSymbolFrom<gpu::GPUModuleOp>(
      launchOp, launchOp.getKernelModuleName());
  assert(kernelModule && "expected a kernel module");

  auto getFuncStubName = [](StringRef moduleName, StringRef name) {
    return std::string(
        llvm::formatv("__polygeist_{0}_{1}_device_stub", moduleName, name));
  };
  auto getFuncGlobalName = [](StringRef moduleName, StringRef name) {
    return std::string(
        llvm::formatv("__polygeist_{0}_{1}_fun_ptr", moduleName, name));
  };

  // Build module constructor and destructor
  ModuleOp moduleOp = launchOp->getParentOfType<ModuleOp>();
  {
    auto loc = moduleOp.getLoc();
    // TODO is it okay to be using OpBuilder's in op rewriter?
    OpBuilder moduleBuilder(moduleOp.getBodyRegion());
    SmallString<128> ctorNameBuffer(kernelModule.getName());
    ctorNameBuffer.append(kGpuModuleCtorSuffix);
    LLVM::LLVMFuncOp ctor = dyn_cast_or_null<LLVM::LLVMFuncOp>(
        SymbolTable::lookupSymbolIn(moduleOp, ctorNameBuffer));
    SmallString<128> dtorNameBuffer(kernelModule.getName());
    dtorNameBuffer.append(kGpuModuleDtorSuffix);
    LLVM::LLVMFuncOp dtor = dyn_cast_or_null<LLVM::LLVMFuncOp>(
        SymbolTable::lookupSymbolIn(moduleOp, dtorNameBuffer));
    if (!ctor) {
      assert(!dtor &&
             "gpu module constructor does not exist but destructor does");
      ctor = moduleBuilder.create<LLVM::LLVMFuncOp>(
          loc, ctorNameBuffer,
          LLVM::LLVMFunctionType::get(
              LLVM::LLVMVoidType::get(moduleOp.getContext()), {}),
          LLVM::Linkage::Private);
      dtor = moduleBuilder.create<LLVM::LLVMFuncOp>(
          loc, dtorNameBuffer,
          LLVM::LLVMFunctionType::get(
              LLVM::LLVMVoidType::get(moduleOp.getContext()), {}),
          LLVM::Linkage::Private);

      auto binaryAttr =
          kernelModule->getAttrOfType<StringAttr>(gpuBinaryAnnotation);
      if (!binaryAttr) {
        kernelModule.emitOpError()
            << "missing " << gpuBinaryAnnotation << " attribute";
        return failure();
      }

      auto moduleName = launchOp.getKernelModuleName().getValue();

      OpBuilder ctorBuilder(moduleOp->getContext());
      ctorBuilder.setInsertionPointToStart(ctor.addEntryBlock());
      SmallString<128> nameBuffer(kernelModule.getName());
      nameBuffer.append(kGpuBinaryStorageSuffix);

      const char *fatbinConstantName;
      const char *fatbinSectionName;
      const char *moduleIDSectionName;
      StringRef moduleIDPrefix;
      unsigned fatMagic;
      constexpr unsigned CudaFatMagic = 0x466243b1;
      constexpr unsigned HIPFatMagic = 0x48495046; // "HIPF"
      if (gpuTarget == "cuda") {
        fatbinConstantName = // CGM.getTriple().isMacOSX() ?
                             // "__NV_CUDA,__nv_fatbin" :
            ".nv_fatbin";
        // NVIDIA's cuobjdump looks for fatbins in this section.
        fatbinSectionName = // CGM.getTriple().isMacOSX() ? "__NV_CUDA,__fatbin"
                            // :
            ".nvFatBinSegment";
        moduleIDSectionName = // CGM.getTriple().isMacOSX() ?
                              // "__NV_CUDA,__nv_module_id" :
            "__nv_module_id";
        moduleIDPrefix = "__nv_";
        fatMagic = CudaFatMagic;
      } else {
        fatbinConstantName = ".hip_fatbin";
        fatbinSectionName = ".hipFatBinSegment";
        moduleIDSectionName = "__hip_module_id";
        moduleIDPrefix = "__hip_";
        fatMagic = HIPFatMagic;
      }

      // Register modules and functions like clang (clang/CodeGen/CGCUDANV.cpp)

      // Create and initialize the fatbin wrapper struct
      auto fatBinWrapperType = mlir::LLVM::LLVMStructType::getLiteral(
          moduleOp->getContext(),
          {llvmInt32Type, llvmInt32Type, llvmPointerType, llvmPointerType});
      auto fatBinWrapper = moduleBuilder.create<LLVM::GlobalOp>(
          loc, fatBinWrapperType, /*constant*/ true, LLVM::Linkage::Internal,
          std::string(
              llvm::formatv("__polygeist_{0}_fatbin_wrapper", moduleName)),
          /* initValue */ mlir::Attribute(),
          /* alignment */ 8, /* addrSpace */ 0);
      fatBinWrapper.setSectionAttr(
          moduleBuilder.getStringAttr(fatbinSectionName));

      OpBuilder globalBuilder(moduleOp->getContext());
      fatBinWrapper.getRegion().push_back(new Block);
      globalBuilder.setInsertionPointToStart(fatBinWrapper.getBody());
      auto fatbinMagicVal =
          globalBuilder.create<LLVM::ConstantOp>(loc, llvmInt32Type, fatMagic);
      auto fatbinVersionVal =
          globalBuilder.create<LLVM::ConstantOp>(loc, llvmInt32Type, 1);
      auto nullPtr = globalBuilder.create<LLVM::NullOp>(loc, llvmPointerType);
      Value constructedStruct =
          globalBuilder.create<LLVM::UndefOp>(loc, fatBinWrapperType);
      {
        int i = 0;
        constructedStruct = globalBuilder.create<LLVM::InsertValueOp>(
            loc, fatBinWrapperType, constructedStruct, fatbinMagicVal,
            globalBuilder.getDenseI64ArrayAttr(i++));
        constructedStruct = globalBuilder.create<LLVM::InsertValueOp>(
            loc, fatBinWrapperType, constructedStruct, fatbinVersionVal,
            globalBuilder.getDenseI64ArrayAttr(i++));
        // TODO do we need to specify the section name here...?
        // data.setSectionAttr(moduleBuilder.getStringAttr(fatbinSectionName));
        Value data = LLVM::createGlobalString(
            loc, globalBuilder, nameBuffer.str(), binaryAttr.getValue(),
            LLVM::Linkage::Internal);
        constructedStruct = globalBuilder.create<LLVM::InsertValueOp>(
            loc, fatBinWrapperType, constructedStruct, data,
            globalBuilder.getDenseI64ArrayAttr(i++));
        constructedStruct = globalBuilder.create<LLVM::InsertValueOp>(
            loc, fatBinWrapperType, constructedStruct, nullPtr,
            globalBuilder.getDenseI64ArrayAttr(i++));
      }
      globalBuilder.create<LLVM::ReturnOp>(loc, constructedStruct);

      auto addressOfWrapper =
          ctorBuilder.create<LLVM::AddressOfOp>(loc, fatBinWrapper);
      auto bitcastOfWrapper = ctorBuilder.create<LLVM::BitcastOp>(
          loc, llvmPointerType, addressOfWrapper);
      auto module = rtRegisterFatBinaryCallBuilder.create(loc, ctorBuilder,
                                                          {bitcastOfWrapper});
      auto moduleGlobalName =
          std::string(llvm::formatv("polygeist_{0}_module_ptr", moduleName));
      auto moduleGlobal = moduleBuilder.create<LLVM::GlobalOp>(
          loc, llvmPointerPointerType, /* isConstant */ false,
          LLVM::Linkage::Internal, moduleGlobalName,
          /* initValue */ mlir::Attribute(),
          /* alignment */ 8, /* addrSpace */ 0);
      auto aoo = ctorBuilder.create<LLVM::AddressOfOp>(loc, moduleGlobal);
      ctorBuilder.create<LLVM::StoreOp>(loc, module->getResult(0),
                                        aoo->getResult(0));
      for (Operation &op : kernelModule->getRegion(0).front()) {
        if (LLVM::LLVMFuncOp f = dyn_cast<LLVM::LLVMFuncOp>(op)) {
          if (!f->getAttr("gpu.kernel"))
            continue;
          auto kernelName = generateKernelNameConstant(
              launchOp.getKernelModuleName().getValue(), f.getName(), loc,
              ctorBuilder);

          auto nullPtr = ctorBuilder.create<LLVM::NullOp>(loc, llvmPointerType);
          // TODO second param should be ptr to the the original function stub
          // here like clang does it: e.g. kernel_name_device_stub
          //
          // TODO We should probably always generate the original kernel as well
          // and register it too (in addition to the lowered to parallel and
          // re-outlined version that we generate) in case the pointer to the
          // stub is captured somewhere and it is called through
          // cudaLaunchKernel
          auto stub = moduleBuilder.create<LLVM::LLVMFuncOp>(
              loc, getFuncStubName(moduleName, f.getName()),
              LLVM::LLVMFunctionType::get(llvmVoidType, {}));
          {
            OpBuilder::InsertionGuard guard(rewriter);
            rewriter.setInsertionPointToStart(stub.addEntryBlock());
            rewriter.create<LLVM::ReturnOp>(loc, ValueRange());
          }
          auto aoo = ctorBuilder.create<LLVM::AddressOfOp>(loc, stub);
          auto bitcast =
              ctorBuilder.create<LLVM::BitcastOp>(loc, llvmPointerType, aoo);
          auto ret = rtRegisterFunctionCallBuilder.create(
              loc, ctorBuilder,
              {module.getResult(), bitcast, kernelName, kernelName,
               /* TODO I have no idea what the following params are */
               ctorBuilder.create<LLVM::ConstantOp>(loc, llvmInt32Type, -1),
               nullPtr, nullPtr, nullPtr, nullPtr, nullPtr});
        } else if (LLVM::GlobalOp g = dyn_cast<LLVM::GlobalOp>(op)) {
          int addrSpace = g.getAddrSpace();
          if (addrSpace != 1 /* device */ && addrSpace != 4 /* constant */)
            continue;
          auto symbolName = [&]() {
            auto name = g.getName();
            std::vector<char> sname(name.begin(), name.end());
            sname.push_back('\0');

            std::string globalName = std::string(llvm::formatv(
                "__polygeist_{0}_{1}_global_name", moduleName, name));

            return LLVM::createGlobalString(
                loc, ctorBuilder, globalName,
                StringRef(sname.data(), sname.size()), LLVM::Linkage::Internal);
          }();
          // TODO could this be a memref global op?
          auto stub = moduleOp.lookupSymbol<LLVM::GlobalOp>(g.getName());
          assert(stub);
          auto aoo = ctorBuilder.create<LLVM::AddressOfOp>(loc, stub);
          auto bitcast =
              ctorBuilder.create<LLVM::BitcastOp>(loc, llvmPointerType, aoo);
          auto globalTy =
              aoo.getType().dyn_cast<LLVM::LLVMPointerType>().getElementType();
          // TODO This should actually be the GPUModuleOp's data layout I
          // believe, there were problems with assigning the data layout to the
          // gpumodule because MLIR didnt like the nested data layout, and
          // that's why it doesnt have its own, try to fix that or find a way to
          // pass the GPU DL in here
          DataLayout DLI(moduleOp);
          auto size = DLI.getTypeSize(globalTy);
          auto ret = rtRegisterVarCallBuilder.create(
              loc, ctorBuilder,
              {module.getResult(), bitcast, symbolName, symbolName,
               /*isExtern*/
               ctorBuilder.create<LLVM::ConstantOp>(loc, llvmInt32Type,
                                                    /* TODO */ 0),
               /*varSize*/
               ctorBuilder.create<LLVM::ConstantOp>(loc, llvmIntPtrType, size),
               /*isConstant*/
               ctorBuilder.create<LLVM::ConstantOp>(loc, llvmInt32Type,
                                                    /* TODO */ 0),
               /* just a 0? */
               ctorBuilder.create<LLVM::ConstantOp>(loc, llvmInt32Type, 0)});
        }
      }
      // TODO this has to happen only for some CUDA versions
      if (gpuTarget == "cuda")
        rtRegisterFatBinaryEndCallBuilder.create(loc, ctorBuilder,
                                                 {module.getResult()});
      ctorBuilder.create<LLVM::ReturnOp>(loc, ValueRange());
      auto ctorSymbol = FlatSymbolRefAttr::get(ctor);
      moduleBuilder.create<LLVM::GlobalCtorsOp>(
          loc, moduleBuilder.getArrayAttr({std::move(ctorSymbol)}),
          moduleBuilder.getI32ArrayAttr({65535}));
      {
        OpBuilder dtorBuilder(moduleOp->getContext());
        dtorBuilder.setInsertionPointToStart(dtor.addEntryBlock());
        auto aoo = dtorBuilder.create<LLVM::AddressOfOp>(loc, moduleGlobal);
        auto module = dtorBuilder.create<LLVM::LoadOp>(loc, aoo->getResult(0));
        rtUnregisterFatBinaryCallBuilder.create(loc, dtorBuilder,
                                                module.getResult());
        dtorBuilder.create<LLVM::ReturnOp>(loc, ValueRange());
        auto dtorSymbol = FlatSymbolRefAttr::get(dtor);
        moduleBuilder.create<LLVM::GlobalDtorsOp>(
            loc, moduleBuilder.getArrayAttr({std::move(dtorSymbol)}),
            moduleBuilder.getI32ArrayAttr({65535}));
      }
    }
  }

  std::string funcStubName =
      getFuncStubName(launchOp.getKernelModuleName().getValue(),
                      launchOp.getKernelName().getValue());

  auto stub = dyn_cast_or_null<LLVM::LLVMFuncOp>(
      SymbolTable::lookupSymbolIn(moduleOp, funcStubName));
  assert(!!stub);
  auto aoo = rewriter.create<LLVM::AddressOfOp>(loc, stub);
  auto bitcast = rewriter.create<LLVM::BitcastOp>(loc, llvmPointerType, aoo);

  Value zero = rewriter.create<LLVM::ConstantOp>(loc, llvmInt32Type, 0);
  auto nullpointer = rewriter.create<LLVM::NullOp>(loc, llvmPointerType);
  Value stream = adaptor.getAsyncDependencies().empty()
                     ? nullpointer
                     : adaptor.getAsyncDependencies().front();
  // Create array of pointers to kernel arguments.
  auto kernelParams = generateParamsArray(launchOp, adaptor, rewriter);
  auto nullpointerpointer =
      rewriter.create<LLVM::NullOp>(loc, llvmPointerPointerType);
  Value dynamicSharedMemorySize = launchOp.getDynamicSharedMemorySize()
                                      ? launchOp.getDynamicSharedMemorySize()
                                      : zero;
  auto launchCall = rtLaunchKernelErrCallBuilder.create(
      loc, rewriter,
      {bitcast.getResult(), adaptor.getGridSizeX(), adaptor.getGridSizeY(),
       adaptor.getGridSizeZ(), adaptor.getBlockSizeX(), adaptor.getBlockSizeY(),
       adaptor.getBlockSizeZ(), dynamicSharedMemorySize, stream, kernelParams});

  if (launchOp.getAsyncToken()) {
    // Async launch: make dependent ops use the same stream.
    rewriter.replaceOp(launchOp, {stream});
  } else {
    rewriter.eraseOp(launchOp);
  }

  if (errOp) {
    auto cast = rewriter.create<arith::IndexCastOp>(
        loc, rewriter.getIndexType(), launchCall->getResult(0));
    rewriter.replaceOp(errOp, cast->getResults());
  }

  return success();
}

struct ReplaceErrOpWithSuccess
    : public OpRewritePattern<polygeist::GPUErrorOp> {
  using OpRewritePattern<polygeist::GPUErrorOp>::OpRewritePattern;
  const char *PATTERN = "lower-gpu-alternatives";

  LogicalResult matchAndRewrite(polygeist::GPUErrorOp errOp,
                                PatternRewriter &rewriter) const override {
    rewriter.setInsertionPoint(errOp);
    rewriter.eraseOp(errOp.getBody()->getTerminator());
    rewriter.mergeBlockBefore(errOp.getBody(), errOp);
    rewriter.setInsertionPoint(errOp);
    auto zero = rewriter.create<arith::ConstantIndexOp>(errOp->getLoc(), 0);
    rewriter.replaceOp(errOp, zero->getResults());
    return success();
  }
};

/// Pattern for gpu function declarations and definitions.
struct GPUFuncOpLowering : public ConvertOpToLLVMPattern<gpu::GPUFuncOp> {
private:
  /// The address spcae to use for `alloca`s in private memory.
  unsigned allocaAddrSpace;

  /// The attribute name to use instead of `gpu.kernel`.
  StringAttr kernelAttributeName;

public:
  using ConvertOpToLLVMPattern<gpu::GPUFuncOp>::ConvertOpToLLVMPattern;

  GPUFuncOpLowering(LLVMTypeConverter &converter, unsigned allocaAddrSpace,
                    StringAttr kernelAttributeName)
      : ConvertOpToLLVMPattern<gpu::GPUFuncOp>(converter),
        allocaAddrSpace(allocaAddrSpace),
        kernelAttributeName(kernelAttributeName) {}

  LogicalResult
  matchAndRewrite(gpu::GPUFuncOp gpuFuncOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    Location loc = gpuFuncOp.getLoc();

    SmallVector<LLVM::GlobalOp, 3> workgroupBuffers;
    workgroupBuffers.reserve(gpuFuncOp.getNumWorkgroupAttributions());
    for (const auto &en :
         llvm::enumerate(gpuFuncOp.getWorkgroupAttributions())) {
      Value attribution = en.value();

      auto type = attribution.getType().dyn_cast<MemRefType>();
      assert(type && type.hasStaticShape() && "unexpected type in attribution");

      uint64_t numElements = type.getNumElements();

      auto elementType = typeConverter->convertType(type.getElementType())
                             .template cast<Type>();
      auto arrayType = LLVM::LLVMArrayType::get(elementType, numElements);
      std::string name = std::string(
          llvm::formatv("__wg_{0}_{1}", gpuFuncOp.getName(), en.index()));
      auto globalOp = rewriter.create<LLVM::GlobalOp>(
          gpuFuncOp.getLoc(), arrayType, /*isConstant=*/false,
          LLVM::Linkage::Internal, name, /*value=*/Attribute(),
          /*alignment=*/0, gpu::GPUDialect::getWorkgroupAddressSpace());
      workgroupBuffers.push_back(globalOp);
    }

    auto typePair = convertFunctionType(gpuFuncOp, *typeConverter);
    if (!typePair)
      return rewriter.notifyMatchFailure(gpuFuncOp->getLoc(),
                                         "failed to convert signature");

    auto [funcType, signatureConversion] = *typePair;

    // Create the new function operation. Only copy those attributes that are
    // not specific to function modeling.
    SmallVector<NamedAttribute> attributes;
    for (const auto &attr : gpuFuncOp->getAttrs()) {
      if (attr.getName() == SymbolTable::getSymbolAttrName() ||
          attr.getName() == FunctionOpInterface::getTypeAttrName() ||
          attr.getName() ==
              gpu::GPUFuncOp::getNumWorkgroupAttributionsAttrName())
        continue;
      attributes.push_back(attr);
    }
    // Add a dialect specific kernel attribute in addition to GPU kernel
    // attribute. The former is necessary for further translation while the
    // latter is expected by gpu.launch_func.
    if (gpuFuncOp.isKernel())
      attributes.emplace_back(kernelAttributeName, rewriter.getUnitAttr());
    auto llvmFuncOp = rewriter.create<LLVM::LLVMFuncOp>(
        gpuFuncOp.getLoc(), gpuFuncOp.getName(), funcType,
        LLVM::Linkage::External, /*dsoLocal*/ false, /*cconv*/ LLVM::CConv::C,
        attributes);

    {
      // Insert operations that correspond to converted workgroup and private
      // memory attributions to the body of the function. This must operate on
      // the original function, before the body region is inlined in the new
      // function to maintain the relation between block arguments and the
      // parent operation that assigns their semantics.
      OpBuilder::InsertionGuard guard(rewriter);

      // Rewrite workgroup memory attributions to addresses of global buffers.
      rewriter.setInsertionPointToStart(&gpuFuncOp.front());
      unsigned numProperArguments = gpuFuncOp.getNumArguments();

      for (const auto &en : llvm::enumerate(workgroupBuffers)) {
        LLVM::GlobalOp global = en.value();
        Value address = rewriter.create<LLVM::AddressOfOp>(loc, global);
        auto elementType =
            global.getType().cast<LLVM::LLVMArrayType>().getElementType();
        Value memory = rewriter.create<LLVM::GEPOp>(
            loc, LLVM::LLVMPointerType::get(elementType, global.getAddrSpace()),
            address, ArrayRef<LLVM::GEPArg>{0, 0});

        // Build a memref descriptor pointing to the buffer to plug with the
        // existing memref infrastructure. This may use more registers than
        // otherwise necessary given that memref sizes are fixed, but we can try
        // and canonicalize that away later.
        Value attribution = gpuFuncOp.getWorkgroupAttributions()[en.index()];
        auto type = attribution.getType().cast<MemRefType>();
        auto descr = MemRefDescriptor::fromStaticShape(
            rewriter, loc, *getTypeConverter(), type, memory);
        signatureConversion.remapInput(numProperArguments + en.index(), descr);
      }

      // Rewrite private memory attributions to alloca'ed buffers.
      unsigned numWorkgroupAttributions =
          gpuFuncOp.getNumWorkgroupAttributions();
      auto int64Ty = IntegerType::get(rewriter.getContext(), 64);
      for (const auto &en :
           llvm::enumerate(gpuFuncOp.getPrivateAttributions())) {
        Value attribution = en.value();
        auto type = attribution.getType().cast<MemRefType>();
        assert(type && type.hasStaticShape() &&
               "unexpected type in attribution");

        // Explicitly drop memory space when lowering private memory
        // attributions since NVVM models it as `alloca`s in the default
        // memory space and does not support `alloca`s with addrspace(5).
        auto ptrType = LLVM::LLVMPointerType::get(
            typeConverter->convertType(type.getElementType())
                .template cast<Type>(),
            allocaAddrSpace);
        Value numElements = rewriter.create<LLVM::ConstantOp>(
            gpuFuncOp.getLoc(), int64Ty, type.getNumElements());
        Value allocated = rewriter.create<LLVM::AllocaOp>(
            gpuFuncOp.getLoc(), ptrType, numElements, /*alignment=*/0);
        auto descr = MemRefDescriptor::fromStaticShape(
            rewriter, loc, *getTypeConverter(), type, allocated);
        signatureConversion.remapInput(
            numProperArguments + numWorkgroupAttributions + en.index(), descr);
      }
    }

    // Move the region to the new function, update the entry block signature.
    rewriter.inlineRegionBefore(gpuFuncOp.getBody(), llvmFuncOp.getBody(),
                                llvmFuncOp.end());
    if (failed(rewriter.convertRegionTypes(
            &llvmFuncOp.getBody(), *typeConverter, &signatureConversion)))
      return rewriter.notifyMatchFailure(
          gpuFuncOp->getLoc(), "failed to apply signature conversion");
    rewriter.eraseOp(gpuFuncOp);
    return success();
  }
};

static LogicalResult
isAsyncWithZeroDependencies(ConversionPatternRewriter &rewriter,
                            gpu::AsyncOpInterface op) {
  if (op.getAsyncDependencies().size() != 0)
    return rewriter.notifyMatchFailure(
        op, "Can only convert with exactly one async dependency.");

  if (!op.getAsyncToken())
    return rewriter.notifyMatchFailure(op, "Can convert only async version.");

  return success();
}
static LogicalResult
isAsyncWithOneDependency(ConversionPatternRewriter &rewriter,
                         gpu::AsyncOpInterface op) {
  if (op.getAsyncDependencies().size() != 1)
    return rewriter.notifyMatchFailure(
        op, "Can only convert with exactly one async dependency.");

  if (!op.getAsyncToken())
    return rewriter.notifyMatchFailure(op, "Can convert only async version.");

  return success();
}

class ConvertAllocOpToGpuRuntimeCallPattern
    : public ConvertOpToGpuRuntimeCallPattern<gpu::AllocOp> {
public:
  ConvertAllocOpToGpuRuntimeCallPattern(LLVMTypeConverter &typeConverter)
      : ConvertOpToGpuRuntimeCallPattern<gpu::AllocOp>(typeConverter) {}

private:
  LogicalResult
  matchAndRewrite(gpu::AllocOp allocOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    if (adaptor.getHostShared())
      return rewriter.notifyMatchFailure(
          allocOp, "host_shared allocation is not supported");

    MemRefType memRefType = allocOp.getType();

    if (failed(areAllLLVMTypes(allocOp, adaptor.getOperands(), rewriter)) ||
        !isConvertibleAndHasIdentityMaps(memRefType))
      return failure();

    // TODO handle async

    auto loc = allocOp.getLoc();

    // Get shape of the memref as values: static sizes are constant
    // values and dynamic sizes are passed to 'alloc' as operands.
    SmallVector<Value, 4> shape;
    SmallVector<Value, 4> strides;
    Value sizeBytes;
    getMemRefDescriptorSizes(loc, memRefType, adaptor.getDynamicSizes(),
                             rewriter, shape, strides, sizeBytes);

    // Allocate the underlying buffer and store a pointer to it in the MemRef
    // descriptor.
    Type elementPtrType = this->getElementPtrType(memRefType);

    // CUDA and ROCM both dont take stream as arguments for alloc
    // auto stream = adaptor.getAsyncDependencies().front();
    auto stream = rewriter.create<LLVM::UndefOp>(loc, llvmPointerType);
    Value allocatedPtr =
        rtMemAllocCallBuilder.create(loc, rewriter, {sizeBytes, stream})
            .getResult();
    allocatedPtr =
        rewriter.create<LLVM::BitcastOp>(loc, elementPtrType, allocatedPtr);

    rewriter.replaceOp(allocOp, {allocatedPtr});

    return success();
  }
};

/// Pattern for function declarations and definitions.
struct FuncOpLowering : public ConvertOpToLLVMPattern<func::FuncOp> {
public:
  using ConvertOpToLLVMPattern<func::FuncOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(func::FuncOp funcOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    auto typePair = convertFunctionType(funcOp, *typeConverter);
    if (!typePair)
      return rewriter.notifyMatchFailure(funcOp->getLoc(),
                                         "failed to convert signature");

    auto [convertedType, conversionSignature] = *typePair;
    SmallVector<NamedAttribute> attributes = convertFuncAttributes(
        funcOp, *typeConverter, conversionSignature, rewriter);

    LLVM::Linkage linkage = LLVM::Linkage::External;
    if (funcOp->hasAttr(kLLVMLinkageAttrName)) {
      auto attr =
          funcOp->getAttr(kLLVMLinkageAttrName).cast<mlir::LLVM::LinkageAttr>();
      linkage = attr.getLinkage();
    }
    auto newFuncOp = rewriter.create<LLVM::LLVMFuncOp>(
        funcOp.getLoc(), funcOp.getName(), convertedType, linkage,
        /*dsoLocal=*/false, /*cconv=*/LLVM::CConv::C, attributes);
    rewriter.inlineRegionBefore(funcOp.getBody(), newFuncOp.getBody(),
                                newFuncOp.end());
    if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *typeConverter,
                                           &conversionSignature))) {
      return rewriter.notifyMatchFailure(
          funcOp->getLoc(), "failed to apply signature conversion");
    }

    rewriter.eraseOp(funcOp);
    return success();
  }
};

/// Pattern for function calls, unpacks the results from the struct.
struct CallOpLowering : public ConvertOpToLLVMPattern<func::CallOp> {
public:
  using ConvertOpToLLVMPattern<func::CallOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(func::CallOp callOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    unsigned numResults = callOp.getNumResults();
    SmallVector<Type, 1> callResultTypes;
    if (!callOp.getResults().empty()) {
      callResultTypes.push_back(convertAndPackFunctionResultType(
          callOp.getCalleeType(), *typeConverter));
      if (!callResultTypes.back()) {
        return rewriter.notifyMatchFailure(
            callOp.getLoc(), "failed to convert callee signature");
      }
    }

    auto newCallOp = rewriter.create<LLVM::CallOp>(
        callOp->getLoc(), callResultTypes, adaptor.getOperands(),
        callOp->getAttrs());

    if (numResults <= 1) {
      rewriter.replaceOp(callOp, newCallOp->getResults());
      return success();
    }

    SmallVector<Value> results;
    results.reserve(numResults);
    for (auto index : llvm::seq<unsigned>(0, numResults)) {
      results.push_back(rewriter.create<LLVM::ExtractValueOp>(
          callOp->getLoc(), newCallOp->getResult(0), index));
    }
    rewriter.replaceOp(callOp, results);
    return success();
  }
};

/// Pattern for returning from a function, packs the results into a struct.
struct ReturnOpLowering : public ConvertOpToLLVMPattern<func::ReturnOp> {
public:
  using ConvertOpToLLVMPattern<func::ReturnOp>::ConvertOpToLLVMPattern;

  LogicalResult
  matchAndRewrite(func::ReturnOp returnOp, OpAdaptor adaptor,
                  ConversionPatternRewriter &rewriter) const override {
    if (returnOp->getNumOperands() <= 1) {
      rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(returnOp,
                                                  adaptor.getOperands());
      return success();
    }

    auto returnedType = LLVM::LLVMStructType::getLiteral(
        returnOp->getContext(),
        llvm::to_vector(adaptor.getOperands().getTypes()));
    Value packed =
        rewriter.create<LLVM::UndefOp>(returnOp->getLoc(), returnedType);
    for (const auto &[index, value] : llvm::enumerate(adaptor.getOperands())) {
      packed = rewriter.create<LLVM::InsertValueOp>(returnOp->getLoc(), packed,
                                                    value, index);
    }
    rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(returnOp, packed);
    return success();
  }
};

/// Appends the patterns lowering operations from the Memref dialect to the LLVM
/// dialect using the C-style type conversion, i.e. converting memrefs to
/// pointer to arrays of arrays.
static void
populateCStyleMemRefLoweringPatterns(RewritePatternSet &patterns,
                                     LLVMTypeConverter &typeConverter) {
  patterns.add<CAllocaOpLowering, CAllocOpLowering, CDeallocOpLowering,
               GetGlobalOpLowering, GlobalOpLowering, CLoadOpLowering,
               CStoreOpLowering, AllocaScopeOpLowering, CAtomicRMWOpLowering>(
      typeConverter);
}

/// Appends the patterns lowering operations from the Func dialect to the LLVM
/// dialect using the C-style type conversion, i.e. converting memrefs to
/// pointer to arrays of arrays.
static void
populateCStyleGPUFuncLoweringPatterns(RewritePatternSet &patterns,
                                      LLVMTypeConverter &typeConverter,
                                      std::string gpuTarget) {
  patterns.add<GPUFuncOpLowering>(
      typeConverter,
      /*allocaAddrSpace=*/0,
      StringAttr::get(&typeConverter.getContext(),
                      gpuTarget == "cuda"
                          ? NVVM::NVVMDialect::getKernelFuncAttrName()
                          : ROCDL::ROCDLDialect::getKernelFuncAttrName()));
}

/// Appends the patterns lowering operations from the Func dialect to the LLVM
/// dialect using the C-style type conversion, i.e. converting memrefs to
/// pointer to arrays of arrays.
static void
populateCStyleFuncLoweringPatterns(RewritePatternSet &patterns,
                                   LLVMTypeConverter &typeConverter) {
  patterns.add<CallOpLowering, FuncOpLowering, ReturnOpLowering>(typeConverter);
}
} // namespace

//===-----------------------------------------------------------------------===/

namespace {

struct ConvertPolygeistToLLVMPass
    : public ConvertPolygeistToLLVMBase<ConvertPolygeistToLLVMPass> {
  bool onlyGpuModules;
  std::string gpuTarget;
  ConvertPolygeistToLLVMPass() = default;
  ConvertPolygeistToLLVMPass(bool useBarePtrCallConv, unsigned indexBitwidth,
                             bool useAlignedAlloc,
                             const llvm::DataLayout &dataLayout,
                             bool useCStyleMemRef, bool onlyGpuModules,
                             std::string gpuTarget) {
    this->useBarePtrCallConv = useBarePtrCallConv;
    this->indexBitwidth = indexBitwidth;
    this->dataLayout = dataLayout.getStringRepresentation();
    this->useCStyleMemRef = useCStyleMemRef;
    this->onlyGpuModules = onlyGpuModules;
    this->gpuTarget = gpuTarget;
  }

  void convertModule(ModuleOp m, bool gpuModule) {
    const auto &dataLayoutAnalysis = getAnalysis<DataLayoutAnalysis>();

    if (useCStyleMemRef && useBarePtrCallConv) {
      emitError(m.getLoc()) << "C-style memref lowering is not compatible with "
                               "bare-pointer calling convention";
      signalPassFailure();
      return;
    }
    if (gpuModule) {
      // Request C wrapper emission.
      for (auto func : m.getOps<func::FuncOp>()) {
        func->setAttr(LLVM::LLVMDialect::getEmitCWrapperAttrName(),
                      UnitAttr::get(&getContext()));
      }
    }

    LowerToLLVMOptions options(&getContext(),
                               dataLayoutAnalysis.getAtOrAbove(m));
    // TODO need to tweak options.indexBitwidth in some cases? consult
    // LowerGpuOpsToNVVMOpsPass
    options.useBarePtrCallConv = useBarePtrCallConv;
    if (indexBitwidth != kDeriveIndexBitwidthFromDataLayout)
      options.overrideIndexBitwidth(indexBitwidth);

    options.dataLayout = llvm::DataLayout(this->dataLayout);

    // Define the type converter. Override the default behavior for memrefs if
    // requested.
    LLVMTypeConverter converter(&getContext(), options, &dataLayoutAnalysis);
    if (useCStyleMemRef) {
      converter.addConversion([&](MemRefType type) -> Optional<Type> {
        Type converted = converter.convertType(type.getElementType());
        if (!converted)
          return Type();

        if (type.getRank() == 0) {
          return LLVM::LLVMPointerType::get(converted,
                                            type.getMemorySpaceAsInt());
        }

        // Only the leading dimension can be dynamic.
        if (llvm::any_of(type.getShape().drop_front(), ShapedType::isDynamic))
          return Type();

        // Only identity layout is supported.
        // TODO: detect the strided layout that is equivalent to identity
        // given the static part of the shape.
        if (!type.getLayout().isIdentity())
          return Type();

        if (type.getRank() > 0) {
          for (int64_t size : llvm::reverse(type.getShape().drop_front()))
            converted = LLVM::LLVMArrayType::get(converted, size);
        }
        return LLVM::LLVMPointerType::get(converted,
                                          type.getMemorySpaceAsInt());
      });
    }

    converter.addConversion([&](async::TokenType type) { return type; });

    {
      // TODO I am assuming this will walk in the same order every time, might
      // not be the case
      std::map<std::string, int> num;
      m->walk([&](polygeist::AlternativesOp altOp) {
        std::string funcName;
        if (auto funcOp = altOp->getParentOfType<LLVM::LLVMFuncOp>()) {
          funcName = funcOp.getName();
          funcName += ".llvm";
        } else if (auto funcOp = altOp->getParentOfType<func::FuncOp>()) {
          funcName = funcOp.getName();
          funcName += ".func";
        } else {
          assert(0 && "How?");
        }
        if (num.count(funcName) == 0)
          num[funcName] = 0;
        std::string id = funcName + "." + std::to_string(num[funcName]++);
        altOp->setAttr("polygeist.altop.id",
                       StringAttr::get(&getContext(), id));
      });

      // This op must be lowered before converting to LLVM but it still needs
      // information about LLVM types thus it needs the converter
      RewritePatternSet patterns(&getContext());
      patterns.add<LowerGPUAlternativesOp>(&getContext(), converter,
                                           gpu::getDefaultGpuBinaryAnnotation(),
                                           gpuTarget);
      patterns.add<ReplaceErrOpWithSuccess>(&getContext());
      (void)applyPatternsAndFoldGreedily(m, std::move(patterns));
    }

    for (int i = 0; i < 2; i++) {

      // MemRef conversion for GPU to NVVM lowering. The GPU dialect uses memory
      // space 5 for private memory attributions, but NVVM represents private
      // memory allocations as local `alloca`s in the default address space.
      // This converter drops the private memory space to support the use case
      // above.
      if (gpuModule) {
        converter.addConversion([&](MemRefType type) -> Optional<Type> {
          if (type.getMemorySpaceAsInt() !=
              gpu::GPUDialect::getPrivateAddressSpace())
            return llvm::None;
          return converter.convertType(MemRefType::Builder(type).setMemorySpace(
              IntegerAttr::get(IntegerType::get(m.getContext(), 64), 0)));
        });
      }

      RewritePatternSet patterns(&getContext());

      if (gpuModule) {
        // Apply in-dialect lowering first. In-dialect lowering will replace ops
        // which need to be lowered further, which is not supported by a single
        // conversion pass.
        RewritePatternSet gpuPatterns(&getContext());
        populateGpuRewritePatterns(gpuPatterns);
        gpuPatterns.insert<GPUGlobalConversion>(&getContext());
        gpuPatterns.insert<GPUGetGlobalConversion>(&getContext());

        (void)applyPatternsAndFoldGreedily(m, std::move(gpuPatterns));
      }

      if (gpuModule) {
        // Insert our custom version of GPUFuncLowering
        if (useCStyleMemRef) {
          populateCStyleGPUFuncLoweringPatterns(patterns, converter, gpuTarget);
        }
      }

      populatePolygeistToLLVMConversionPatterns(converter, patterns);
      populateSCFToControlFlowConversionPatterns(patterns);
      populateForBreakToWhilePatterns(patterns);
      cf::populateControlFlowToLLVMConversionPatterns(converter, patterns);
      if (useCStyleMemRef) {
        populateCStyleMemRefLoweringPatterns(patterns, converter);
        populateCStyleFuncLoweringPatterns(patterns, converter);
      } else {
        populateMemRefToLLVMConversionPatterns(converter, patterns);
        populateFuncToLLVMConversionPatterns(converter, patterns);
      }
      if (gpuModule) {
        if (gpuTarget == "cuda") {
          populateGpuToNVVMConversionPatterns(converter, patterns);
        } else if (gpuTarget == "rocm") {
          populateGpuToROCDLConversionPatterns(converter, patterns,
                                               gpu::amd::Runtime::HIP);
        }
      }
      populateMathToLLVMConversionPatterns(converter, patterns);
      populateOpenMPToLLVMConversionPatterns(converter, patterns);
      arith::populateArithToLLVMConversionPatterns(converter, patterns);

      bool kernelBarePtrCallConv = false;
      // Our custom versions of the gpu patterns
      if (useCStyleMemRef) {
        patterns.add<ConvertLaunchFuncOpToGpuRuntimeCallPattern>(
            converter, gpu::getDefaultGpuBinaryAnnotation(), gpuTarget);
        patterns.add<ConvertAllocOpToGpuRuntimeCallPattern>(converter);
      }

      patterns.add<LLVMOpLowering, GlobalOpTypeConversion,
                   ReturnOpTypeConversion, GetFuncOpConversion>(converter);
      patterns.add<URLLVMOpLowering>(converter);

      // The default impls
      populateGpuToLLVMConversionPatterns(converter, patterns,
                                          gpu::getDefaultGpuBinaryAnnotation(),
                                          kernelBarePtrCallConv);

      // Legality callback for operations that checks whether their operand and
      // results types are converted.
      auto areAllTypesConverted = [&](Operation *op) -> Optional<bool> {
        SmallVector<Type> convertedResultTypes;
        if (failed(converter.convertTypes(op->getResultTypes(),
                                          convertedResultTypes)))
          return llvm::None;
        SmallVector<Type> convertedOperandTypes;
        if (failed(converter.convertTypes(op->getOperandTypes(),
                                          convertedOperandTypes)))
          return llvm::None;
        return convertedResultTypes == op->getResultTypes() &&
               convertedOperandTypes == op->getOperandTypes();
      };

      LLVMConversionTarget target(getContext());
      if (gpuModule) {
        target.addIllegalOp<func::FuncOp>();
        target.addLegalDialect<::mlir::LLVM::LLVMDialect>();
        if (gpuTarget == "cuda")
          target.addLegalDialect<::mlir::NVVM::NVVMDialect>();
        else if (gpuTarget == "rocm")
          target.addLegalDialect<::mlir::ROCDL::ROCDLDialect>();
        target.addIllegalDialect<gpu::GPUDialect>();
        target.addIllegalOp<LLVM::CosOp, LLVM::ExpOp, LLVM::Exp2Op,
                            LLVM::FAbsOp, LLVM::FCeilOp, LLVM::FFloorOp,
                            LLVM::LogOp, LLVM::Log10Op, LLVM::Log2Op,
                            LLVM::PowOp, LLVM::SinOp, LLVM::SqrtOp>();
        target.addLegalOp<gpu::YieldOp, gpu::GPUModuleOp, gpu::ModuleEndOp>();
      }
      target.addDynamicallyLegalOp<omp::ParallelOp, omp::WsLoopOp>(
          [&](Operation *op) { return converter.isLegal(&op->getRegion(0)); });
      target.addIllegalOp<scf::ForOp, scf::IfOp, scf::ParallelOp, scf::WhileOp,
                          scf::ExecuteRegionOp, func::FuncOp>();
      target.addLegalOp<omp::TerminatorOp, omp::TaskyieldOp, omp::FlushOp,
                        omp::YieldOp, omp::BarrierOp, omp::TaskwaitOp>();
      target.addDynamicallyLegalDialect<LLVM::LLVMDialect>(
          areAllTypesConverted);
      target.addDynamicallyLegalOp<LLVM::GlobalOp>(
          [&](LLVM::GlobalOp op) -> Optional<bool> {
            if (converter.convertType(op.getGlobalType()) == op.getGlobalType())
              return true;
            return llvm::None;
          });
      target.addDynamicallyLegalOp<LLVM::ReturnOp>(
          [&](LLVM::ReturnOp op) -> Optional<bool> {
            // Outside global ops, defer to the normal type-based check. Note
            // that the infrastructure will not do it automatically because
            // per-op checks override dialect-level checks unconditionally.
            if (!isa<LLVM::GlobalOp>(op->getParentOp()))
              return areAllTypesConverted(op);

            SmallVector<Type> convertedOperandTypes;
            if (failed(converter.convertTypes(op->getOperandTypes(),
                                              convertedOperandTypes)))
              return llvm::None;
            return convertedOperandTypes == op->getOperandTypes();
          });
      /*
      target.addDynamicallyLegalOp<UnrealizedConversionCastOp>(
          [&](Operation *op) { return op->getOperand(0).getType() !=
      op->getResult(0).getType(); });
          */

      if (i == 0) {
        patterns.add<ConvertExecuteOpTypes>(converter);
        target.addDynamicallyLegalOp<async::ExecuteOp>(
            [&](async::ExecuteOp eo) {
              return eo->hasAttr("polygeist.handled");
            });
      } else if (i == 1) {
        // target.addIllegalOp<UnrealizedConversionCastOp>();
        patterns.add<StreamToTokenOpLowering>(converter);
        patterns.add<AsyncOpLowering>(converter);
      }
      if (failed(applyPartialConversion(m, target, std::move(patterns))))
        signalPassFailure();
    }
  }

  void runOnOperation() override {
    ModuleOp m = getOperation();
    std::vector<mlir::gpu::GPUModuleOp> gpuModules;
    m->walk([&](mlir::gpu::GPUModuleOp gpum) { gpuModules.push_back(gpum); });
    for (auto gpum : gpuModules) {
      mlir::ModuleOp tmpModule(mlir::ModuleOp::create(
          mlir::OpBuilder(m->getContext()).getUnknownLoc()));
      // Prepare DL, triple attributes
      auto triple = m->getAttr(
          StringRef("polygeist.gpu_module." +
                    LLVM::LLVMDialect::getTargetTripleAttrName().str()));
      auto DL =
          m->getAttrOfType<mlir::StringAttr>(
               StringRef("polygeist.gpu_module." +
                         LLVM::LLVMDialect::getDataLayoutAttrName().str()))
              .getValue();
      tmpModule->setAttr(LLVM::LLVMDialect::getTargetTripleAttrName(), triple);
      tmpModule->setAttr(LLVM::LLVMDialect::getDataLayoutAttrName(),
                         StringAttr::get(tmpModule->getContext(), DL));
      tmpModule->setAttr(
          ("dlti." + DataLayoutSpecAttr::kAttrKeyword).str(),
          translateDataLayout(llvm::DataLayout(DL), tmpModule->getContext()));

      Block *block = &tmpModule->getRegion(0).front();
      gpum->moveBefore(block, block->end());
      convertModule(tmpModule, /* gpuModule */ true);
      block = &m->getRegion(0).front();
      gpum->moveBefore(block, block->end());
      tmpModule->erase();
    }
    if (!onlyGpuModules) {
      if (PolygeistAlternativesMode == PAM_PGO_Profile) {
        unsigned maxAlternatives = 0;
        m->walk([&](polygeist::AlternativesOp aop) {
          auto alts = aop->getNumRegions();
          if (maxAlternatives < alts)
            maxAlternatives = alts;
        });
        if (maxAlternatives > 0)
          llvm::errs() << "Generated " << maxAlternatives << " alternatives\n";
      }
      convertModule(m, /* gpuModule */ false);
    }
  }
};
} // namespace

std::unique_ptr<Pass> mlir::polygeist::createConvertPolygeistToLLVMPass(
    const LowerToLLVMOptions &options, bool useCStyleMemRef,
    bool onlyGpuModules, std::string gpuTarget) {
  auto allocLowering = options.allocLowering;
  // There is no way to provide additional patterns for pass, so
  // AllocLowering::None will always fail.
  assert(allocLowering != LowerToLLVMOptions::AllocLowering::None &&
         "LLVMLoweringPass doesn't support AllocLowering::None");
  bool useAlignedAlloc =
      (allocLowering == LowerToLLVMOptions::AllocLowering::AlignedAlloc);
  return std::make_unique<ConvertPolygeistToLLVMPass>(
      options.useBarePtrCallConv, options.getIndexBitwidth(), useAlignedAlloc,
      options.dataLayout, useCStyleMemRef, onlyGpuModules, gpuTarget);
}

std::unique_ptr<Pass> mlir::polygeist::createConvertPolygeistToLLVMPass() {
  // TODO: meaningful arguments to this pass should be specified as
  // Option<...>'s to the pass in Passes.td. For now, we'll provide some dummy
  // default values to allow for pass creation.
  auto dl = llvm::DataLayout("");
  return std::make_unique<ConvertPolygeistToLLVMPass>(
      false, 64u, false, dl,
      /*usecstylememref*/ true, /* onlyGpuModules */ false,
      /* gpuTarget */ "cuda");
}
