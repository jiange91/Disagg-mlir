#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemOps.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/RemoteMemToLLVM/RemoteMemToLLVM.h"
#include "../PassDetail.h"

namespace mlir {
using namespace mlir::rmem;
namespace {
// =================================================================
// Patterns

class RemoteMemUndefLowering : public RemoteMemOpLoweringPattern<rmem::UndefOp> {
  using RemoteMemOpLoweringPattern<rmem::UndefOp>::RemoteMemOpLoweringPattern;

  LogicalResult matchAndRewrite(rmem::UndefOp op, rmem::UndefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type ptr = getTypeConverter()->convertType(op.getUndef().getType());
    auto newUndef = rewriter.create<LLVM::UndefOp>(op.getLoc(), ptr);
    rewriter.replaceOp(op, {newUndef});
    return mlir::success();
  }
};

class RemoteMemLLVMGlobalLowering : public RemoteMemOpLoweringPattern<rmem::LLVMGlobalOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMGlobalOp>::RemoteMemOpLoweringPattern;
  
  LogicalResult matchAndRewrite(rmem::LLVMGlobalOp op, rmem::LLVMGlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto linkage = LLVM::linkage::symbolizeLinkage(static_cast<uint64_t>(op.getLinkage()));
    if (!linkage.hasValue()) {
      llvm::errs() << "Cannot convert linkage info\n"; 
      return mlir::failure();
    }

    LLVM::UnnamedAddrAttr nattr = {};
    if (auto rnattr = op.getUnnamedAddrAttr()) {
      if (auto naddr = LLVM::symbolizeUnnamedAddr(static_cast<uint64_t>(rnattr.getValue()))) {
        nattr = LLVM::UnnamedAddrAttr::get(rnattr.getContext(), *naddr);
      }
    }

    Type convertedGlobTy = getTypeConverter()->convertType(op.getGlobalType());
    auto newGlob = rewriter.create<LLVM::GlobalOp>(
      op.getLoc(),
      convertedGlobTy,
      op.getConstant(),
      op.getSymName(),
      linkage.getValue(),
      op.getDsoLocal(),
      op.getThreadLocal_(),
      op.getValueAttr(),
      op.getAlignmentAttr(),
      op.getAddrSpace(),
      nattr,
      op.getSectionAttr()
    );

    rewriter.inlineRegionBefore(op.getInitializer(), newGlob.getInitializer(), newGlob.getInitializer().end());
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class RemoteMemReturnLowering : public RemoteMemOpLoweringPattern<rmem::ReturnOp> {
  using RemoteMemOpLoweringPattern<rmem::ReturnOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::ReturnOp op, rmem::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(op, adaptor.getOperands());
    return mlir::success();
  }
};

class RemoteMemLLVMAddressOfLowering : public RemoteMemOpLoweringPattern<rmem::LLVMAddressOfOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMAddressOfOp>::RemoteMemOpLoweringPattern;

  LogicalResult matchAndRewrite(rmem::LLVMAddressOfOp op, rmem::LLVMAddressOfOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type ptrType = getTypeConverter()->convertType(op.getRes().getType());
    auto newAddr = rewriter.create<LLVM::AddressOfOp>(op.getLoc(), ptrType, op.getGlobalName());
    rewriter.replaceOp(op, {newAddr});
    return mlir::success();
  }
};

class RemoteMemMallocPtrLowering : public RemoteMemOpLoweringPattern<rmem::LLVMMallocOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMMallocOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LLVMMallocOp op, rmem::LLVMMallocOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto rallocOp = rmem::lookupOrCreateAllocFn(op->getParentOfType<ModuleOp>());
    Type resultType = getTypeConverter()->convertType(op.getResult().getType());

    auto newPtr = rmem::createLLVMCall(rewriter, op.getLoc(), rallocOp,
     {rmem::createIntConstant(rewriter, op.getLoc(), adaptor.getPoolId(), rmem::getIntBitType(op.getContext(), 32)),
     adaptor.getMemSize()},
     resultType);
    rewriter.replaceOp(op, newPtr);
    return mlir::success();
  }
};

class RemoteMemBitCastLowering : public RemoteMemOpLoweringPattern<rmem::BitCastOp> {
  using RemoteMemOpLoweringPattern<rmem::BitCastOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::BitCastOp op, rmem::BitCastOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type ptrType = getTypeConverter()->convertType(op.getResult().getType());
    auto newPtr = rewriter.create<LLVM::BitcastOp>(
      op.getLoc(),
      ptrType,
      adaptor.getOperands()
    );
    rewriter.replaceOp(op, {newPtr});
    return mlir::success();
  }
};

class RemoteMemStoreLowering : public RemoteMemOpLoweringPattern<rmem::StoreOp> {
  using RemoteMemOpLoweringPattern<rmem::StoreOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::StoreOp op, rmem::StoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // If the remote addr is remote memref
    //   - if true remote 
    //     need to first materialize to local addr before store
    // Else the addr is a local addr, just store
    Value newAddr = adaptor.getAddr();
    if (auto rmrefType = op.getAddr().getType().dyn_cast<RemoteMemRefType>()) {
      if (rmrefType.getCanRemote()) {
        // call request 
        auto cacheReqOp = rmem::lookupOrCreateCacheRequestFn(op->getParentOfType<ModuleOp>());
        Value tk = rmem::cacheRequestCallWrapper(
          rewriter, op.getLoc(),
          cacheReqOp,
          adaptor.getAddr()
        );
        // allocate token pointer on stack and store
        auto tkPtr = rewriter.create<LLVM::AllocaOp>(
          op.getLoc(),
          LLVM::LLVMPointerType::get(rmem::getIntBitType(op.getContext(), 128)),
          rmem::createIntConstant(rewriter, op.getLoc(), 1, rmem::getIntBitType(op.getContext(), 64)),
          0
        );
        rewriter.create<LLVM::StoreOp>(op.getLoc(), tk, tkPtr);
        // call _cache_access_mut
        auto cacheAccMutOp = rmem::lookupOrCreateCacheAccessMutFn(op->getParentOfType<ModuleOp>());
        newAddr = rmem::cacheAccessCallWrapper(
          rewriter, op.getLoc(),
          cacheAccMutOp,
          tkPtr,
          adaptor.getAddr().getType()
        );
      }
    }
    rewriter.replaceOpWithNewOp<LLVM::StoreOp>(op, 
      adaptor.getValue(),
      newAddr,
      adaptor.getAccessGroupsAttr(),
      adaptor.getAliasScopesAttr(),
      adaptor.getNoaliasScopesAttr(),
      adaptor.getAlignmentAttr(),
      adaptor.getVolatile_Attr(),
      adaptor.getNontemporalAttr()
    );
    return mlir::success();
  }
};

class RemoteMemLoadLowering : public RemoteMemOpLoweringPattern<rmem::LoadOp> {
  using RemoteMemOpLoweringPattern<rmem::LoadOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LoadOp op, rmem::LoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // If the remote addr is remote memref
    //   - if true remote 
    //     need to first materialize to local addr 
    // Else the addr is a local addr, just load
    Value newAddr = adaptor.getAddr();
    if (auto rmrefType = op.getAddr().getType().dyn_cast<RemoteMemRefType>()) {
      if (rmrefType.getCanRemote()) {
        // call request 
        auto cacheReqOp = rmem::lookupOrCreateCacheRequestFn(op->getParentOfType<ModuleOp>());
        Value tk = rmem::cacheRequestCallWrapper(
          rewriter, op.getLoc(),
          cacheReqOp,
          adaptor.getAddr()
        );
        // allocate token pointer on stack and store
        auto tkPtr = rewriter.create<LLVM::AllocaOp>(
          op.getLoc(),
          LLVM::LLVMPointerType::get(rmem::getIntBitType(op.getContext(), 128)),
          rmem::createIntConstant(rewriter, op.getLoc(), 1, rmem::getIntBitType(op.getContext(), 64)),
          0
        );
        rewriter.create<LLVM::StoreOp>(op.getLoc(), tk, tkPtr);
        // call _cache_access
        auto cacheAccMutOp = rmem::lookupOrCreateCacheAccessFn(op->getParentOfType<ModuleOp>());
        newAddr = rmem::cacheAccessCallWrapper(
          rewriter, op.getLoc(),
          cacheAccMutOp,
          tkPtr,
          adaptor.getAddr().getType()
        );
      }
    }
    Value newLoad = rewriter.create<LLVM::LoadOp>(
      op.getLoc(),
      getTypeConverter()->convertType(op.getRes().getType()),
      newAddr,
      adaptor.getAccessGroupsAttr(),
      adaptor.getAliasScopesAttr(),
      adaptor.getNoaliasScopesAttr(),
      adaptor.getAlignmentAttr(),
      adaptor.getVolatile_Attr(),
      adaptor.getNontemporalAttr()
    );
    rewriter.replaceOp(op, newLoad);
    return mlir::success();
  }
};

class RemoteMemGEPOpLowering : public RemoteMemOpLoweringPattern<rmem::GEPOp> {
  using RemoteMemOpLoweringPattern<rmem::GEPOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::GEPOp op, rmem::GEPOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // LLVM GEPOP
    // basePtr Indices = op.indices
    // struct Indices = kDynamicIndex + op.structIndices
    SmallVector<int32_t, 2> structIndices(1, LLVM::GEPOp::kDynamicIndex);
    for (int32_t i : adaptor.getStructIndices().getValues<int32_t>()) {
      structIndices.push_back(i);
    }

    SmallVector<NamedAttribute, 2> newAttr;
    for (auto &attr : adaptor.getAttributes().getValue()) {
      if (attr.getName() == "structIndices") continue;
      newAttr.push_back(attr);
    }

    Type basePtrType = getTypeConverter()->convertType(op.getRes().getType());
    Value newGEPRel = rewriter.create<LLVM::GEPOp>(
      op.getLoc(),
      basePtrType,
      adaptor.getBase(),
      adaptor.getIndices(),
      structIndices,
      newAttr
    );

    rewriter.replaceOp(op, newGEPRel);
    return success();
  }
};
// =================================================================
}

namespace {
class ConvertRemoteMemToLLVMPass : public ConvertRemoteMemToLLVMBase<ConvertRemoteMemToLLVMPass> {
public:
  ConvertRemoteMemToLLVMPass() = default;
  void runOnOperation() override {
    ModuleOp m = getOperation();
    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateRemoteMemToLLVMPatterns(typeConverter, patterns);
    
    ConversionTarget target(getContext());
    target.addLegalDialect<LLVM::LLVMDialect>();
    target.addLegalOp<UnrealizedConversionCastOp>();

    /* add disagg env init */
    auto mainFunc = m.lookupSymbol<func::FuncOp>("main");
    if (mainFunc) {
      /* call inits and shutdown */
      auto initDeviceOp = rmem::lookupOrCreateInitDeviceFn(m);
      auto initBufsOp = rmem::lookupOrCreateInitBuffersFn(m);
      auto initCacheOp = rmem::lookupOrCreateCacheInitFn(m);
      auto cacheCreateOp = rmem::lookupOrCreateCacheCreateFn(m);
      auto shutdown_device = rmem::lookupOrCreateShutdownDeviceFn(m);
      OpBuilder b(mainFunc.getBody());
      rmem::createLLVMCall(b, mainFunc.getLoc(), initDeviceOp);
      rmem::createLLVMCall(b, mainFunc.getLoc(), initBufsOp);
      rmem::createLLVMCall(b, mainFunc.getLoc(), initCacheOp);
      rmem::createLLVMCall(b, mainFunc.getLoc(), cacheCreateOp, 
        {rmem::createIntConstant(b, mainFunc.getLoc(), 64, rmem::getIntBitType(mainFunc.getContext(), 32)),
        rmem::createIntConstant(b, mainFunc.getLoc(), 16, rmem::getIntBitType(mainFunc.getContext(), 32))},
        rmem::getIntBitType(mainFunc.getContext(), 32)
      );
      b.setInsertionPoint(&mainFunc.getBody().back().back());
      rmem::createLLVMCall(b, mainFunc.getLoc(), shutdown_device);
    }

    if (failed(applyPartialConversion(m, target, std::move(patterns))))
      signalPassFailure();
  }
};

} // namespace

void populateRemoteMemToLLVMPatterns(RemoteMemTypeLowerer &converter, RewritePatternSet &patterns) {
  patterns.add<
  RemoteMemUndefLowering,
  RemoteMemLLVMGlobalLowering,
  RemoteMemReturnLowering,
  RemoteMemLLVMAddressOfLowering,
  RemoteMemMallocPtrLowering,
  RemoteMemBitCastLowering,
  RemoteMemStoreLowering,
  RemoteMemLoadLowering,
  RemoteMemGEPOpLowering
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createRemoteMemToLLVMPass() {
  return std::make_unique<ConvertRemoteMemToLLVMPass>();
}
}