#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "Conversion/Common/PatternBase.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMemOps.h"

#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

static bool isRemotableTypeImpl(Type type, SetVector<Type> &callStack) {
  if (callStack.contains(type)) return true;
  callStack.insert(type);
  auto stackGurard = llvm::make_scope_exit([&] { callStack.pop_back(); });

  auto isRemotableHandler = [&](Type type) {
    return isRemotableTypeImpl(type, callStack);
  };

  return llvm::TypeSwitch<Type, bool>(type)
  .Case<LLVM::LLVMStructType>([&](auto structType) {
    return llvm::any_of(structType.getBody(), isRemotableHandler);
  })
  .Case<LLVM::LLVMPointerType>([](Type){ return true; })
  .Case<
    VectorType,
    LLVM::LLVMFixedVectorType,
    LLVM::LLVMScalableVectorType,
    LLVM::LLVMArrayType
    >([&](auto containerType) {
      return isRemotableHandler(containerType.getElementType());
    })
  .Case<MemRefType>([](Type){ return true; })
  .Default([](Type){ return false; });
}

bool mlir::rmem::isRemotableType(Type t) {
  SetVector<Type> callStack;
  return isRemotableTypeImpl(t, callStack);
}

// check if a function type contains remotable type in their signature
bool mlir::rmem::hasRemotableSignature(Operation *op) {
  if (auto funcOp = dyn_cast<FunctionOpInterface>(op)) {
    bool hasRemotableArgs = any_of(funcOp.getArgumentTypes(), isRemotableType);
    bool hasRemotableResults = any_of(funcOp.getResultTypes(), isRemotableType);
    return hasRemotableArgs || hasRemotableResults;
  }
  if (auto callOp = dyn_cast<LLVM::CallOp>(op)) {
    bool hasRemotableOperands = any_of(callOp.getOperandTypes(), isRemotableType);
    bool hasRemotableResults = any_of(callOp.getResultTypes(), isRemotableType);
    return hasRemotableOperands || hasRemotableResults;
  }
  if (auto callOp = dyn_cast<func::CallOp>(op)) {
    bool hasRemotableOperands = any_of(callOp.getOperandTypes(), isRemotableType);
    bool hasRemotableResults = any_of(callOp.getResultTypes(), isRemotableType);
    return hasRemotableOperands || hasRemotableResults;
  }
  if (auto returnOp = dyn_cast<func::ReturnOp>(op)) {
    return op->getNumOperands() && any_of(op->getOperandTypes(), isRemotableType);
  }
  if (auto returnOp = dyn_cast<LLVM::ReturnOp>(op)) {
    return op->getNumOperands() && any_of(op->getOperandTypes(), isRemotableType);
  }
  return false;
}

ConvertToRemoteMemPattern::ConvertToRemoteMemPattern(StringRef rootOpName, MLIRContext *ctx, RemoteMemTypeConverter &typeConverter, PatternBenefit benefit): ConversionPattern(typeConverter, rootOpName, benefit, ctx) {}

Value ConvertToRemoteMemPattern::createIndexConstant(ConversionPatternRewriter &rewriter, Location loc, uint64_t value) const {
  IntegerAttr iAttr = rewriter.getIntegerAttr(rewriter.getIndexType(), value);
  return rewriter.create<LLVM::ConstantOp>(loc, getLLVMTypeConverter()->getIndexType(), iAttr);
}

bool ConvertToRemoteMemPattern::isLLVMConvertibleAndHasIdentityMaps(MemRefType type) const {
  if (!getLLVMTypeConverter()->convertType(type.getElementType()))
    return false;
  return type.getLayout().isIdentity();
}

Type ConvertToRemoteMemPattern::getElementLLVMPtrType(MemRefType type) const {
  auto elementType = type.getElementType();
  auto structElementType = getLLVMTypeConverter()->convertType(elementType);
  return LLVM::LLVMPointerType::get(structElementType,
                                    type.getMemorySpaceAsInt());
}

Value ConvertToRemoteMemPattern::getMemRefSizeBytesByLLVM(Location loc, MemRefType memRefType, ValueRange dynSizes, ConversionPatternRewriter &rewriter) const {
  assert(isLLVMConvertibleAndHasIdentityMaps(memRefType) && "layout maps must have been normalized away");
  assert(count(memRefType.getShape(), ShapedType::kDynamicSize) == static_cast<ssize_t>(dynSizes.size()) && "dynSizes operand size does not match dynamic sizes count in memref type");

  SmallVector<Value, 4> sizes;
  sizes.reserve(memRefType.getRank());
  unsigned dynamicIndex = 0;
  for (int64_t size : memRefType.getShape()) {
    sizes.push_back(size == ShapedType::kDynamicSize
                        ? dynSizes[dynamicIndex++]
                        : createIndexConstant(rewriter, loc, size));
  }

  SmallVector<Value, 4> strides;
  sizes.reserve(memRefType.getRank());
  int64_t stride = 1;
  Value runningStride = createIndexConstant(rewriter, loc, 1);
  strides.resize(memRefType.getRank());
  for (auto i = memRefType.getRank(); i-- > 0;) {
    strides[i] = runningStride;

    int64_t size = memRefType.getShape()[i];
    if (size == 0)
      continue;
    bool useSizeAsStride = stride == 1;
    if (size == ShapedType::kDynamicSize)
      stride = ShapedType::kDynamicSize;
    if (stride != ShapedType::kDynamicSize)
      stride *= size;

    if (useSizeAsStride)
      runningStride = sizes[i];
    else if (stride == ShapedType::kDynamicSize)
      runningStride =
          rewriter.create<LLVM::MulOp>(loc, runningStride, sizes[i]);
    else
      runningStride = createIndexConstant(rewriter, loc, stride);
  }

    // Buffer size in bytes.
  Value sizeBytes;
  Type elementPtrType = getElementLLVMPtrType(memRefType);
  Value nullPtr = rewriter.create<LLVM::NullOp>(loc, elementPtrType);
  Value gepPtr = rewriter.create<LLVM::GEPOp>(loc, elementPtrType, nullPtr, ArrayRef<Value>{runningStride});
  sizeBytes = rewriter.create<LLVM::PtrToIntOp>(loc, getLLVMTypeConverter()->getIndexType(), gepPtr);
  return sizeBytes;
}

rmem::RemoteMemDialect &ConvertToRemoteMemPattern::getDialect() const {
  return *getTypeConverter()->getDialect();
}

RemoteMemTypeConverter *ConvertToRemoteMemPattern::getTypeConverter() const {
  return ConversionPattern::getTypeConverter<RemoteMemTypeConverter>();
}

LLVMTypeConverter *ConvertToRemoteMemPattern::getLLVMTypeConverter() const {
  return ConvertToRemoteMemPattern::getTypeConverter()->getllvmTypeConverter();
}


Value ConvertToRemoteMemPattern::allocateBuffer(ConversionPatternRewriter &rewriter, Location loc, Operation *op) const {
  if (auto memrefAlloc = dyn_cast<memref::AllocOp>(op)) {
    RemoteMemRefType resultType = RemoteMemRefType::get(memrefAlloc.memref().getType());
    return rewriter.create<MemRefAllocOp>(loc, resultType, memrefAlloc.getDynamicSizes(), memrefAlloc.symbolOperands(), memrefAlloc.alignmentAttr());
  }
  if (auto llvmCall = dyn_cast<LLVM::CallOp>(op)) {
    if (auto calleeName = llvmCall.getCalleeAttrName()) {
      assert(calleeName == "malloc" && "expect malloc call to be remoted");
    }
    RemoteMemRefType resultType = RemoteMemRefType::get(llvmCall.getResult(0).getType());
    return rewriter.create<LLVMMallocOp>(loc, resultType, op->getOperand(0));
  }
  llvm::errs() << "alloc for " << op->getName() << " is not supported\n";
  return nullptr;
}