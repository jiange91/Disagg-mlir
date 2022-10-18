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
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/RemoteMemToLLVM/RemoteMemToLLVM.h"
#include "Lowering/RFuncToLLVM/RFuncToLLVM.h"
#include "Lowering/RSCFToLLVM/RSCFToLLVM.h"

namespace mlir {
#define GEN_PASS_DEF_CONVERTREMOTEMEMTOLLVM
#include "Lowering/Passes.h.inc"
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

class RemoteMemNullOpLowering : public RemoteMemOpLoweringPattern<rmem::NullRefOp> {
  using RemoteMemOpLoweringPattern<rmem::NullRefOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::NullRefOp op, rmem::NullRefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type newPtr = getTypeConverter()->convertType(op.getNullRef().getType());
    Value newNull = rewriter.create<LLVM::NullOp>(op.getLoc(), newPtr);
    rewriter.replaceOp(op, newNull);
    return mlir::success();
  }
};

class RemoteMemLLVMGlobalLowering : public RemoteMemOpLoweringPattern<rmem::LLVMGlobalOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMGlobalOp>::RemoteMemOpLoweringPattern;
  
  LogicalResult matchAndRewrite(rmem::LLVMGlobalOp op, rmem::LLVMGlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto linkage = LLVM::linkage::symbolizeLinkage(static_cast<uint64_t>(op.getLinkage()));
    if (!linkage.has_value()) {
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
      *linkage,
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

    SmallVector<LLVM::GEPArg, 2> indices;
    for (Value i : adaptor.getIndices()) {
      indices.push_back(i);
    } 
    for (int32_t i : adaptor.getStructIndices()) {
      indices.push_back(i);
    }

    SmallVector<NamedAttribute, 2> newAttr;
    for (auto &attr : adaptor.getAttributes().getValue()) {
      if (attr.getName() == "structIndices") continue;
      newAttr.push_back(attr);
    }

    Type resPtrType = getTypeConverter()->convertType(op.getRes().getType());
    Value newGEPRel = rewriter.create<LLVM::GEPOp>(
      op.getLoc(),
      resPtrType,
      adaptor.getBase(),
      indices,
      newAttr
    );

    rewriter.replaceOp(op, newGEPRel);
    return success();
  }
};

class RemoteMemAllocaOpLowering : public RemoteMemOpLoweringPattern<rmem::LLVMAllocaOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMAllocaOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LLVMAllocaOp op, rmem::LLVMAllocaOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto stkAllocaOp = rmem::lookupOrCreateStackAllocaFn(op->getParentOfType<ModuleOp>());
    Type resultType = getTypeConverter()->convertType(op.getResult().getType());

    // calculate alloca size using gepop
    Value sizeInBytes = rmem::calculateBufferSize(rewriter, op.getLoc(), *adaptor.getElemType(), adaptor.getArraySize());
    
    if (adaptor.getAlignment().has_value() && *adaptor.getAlignment() != 0) {
      llvm::errs() << "current alloca does not take alignment into account, check\n";
      op.dump();
      return mlir::failure();
    } 

    auto vaddr = rmem::createLLVMCall(rewriter, op.getLoc(), stkAllocaOp,
      sizeInBytes,
      rmem::getVoidPtrType(op.getContext())
    );
    Value newPtr = rewriter.create<LLVM::BitcastOp>(op.getLoc(), resultType, vaddr);

    rewriter.replaceOp(op, newPtr);
    return mlir::success();
  }
};

class RemoteMemAddrCmpLowering : public RemoteMemOpLoweringPattern<rmem::AddrCmpOp> {
  using RemoteMemOpLoweringPattern<rmem::AddrCmpOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::AddrCmpOp op, rmem::AddrCmpOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto pred = *LLVM::symbolizeICmpPredicate(static_cast<uint64_t>(adaptor.getPredicate()));
    Value newCmp = rewriter.create<LLVM::ICmpOp>(op.getLoc(),
      pred, adaptor.getLhs(), adaptor.getRhs());
    rewriter.replaceOp(op, newCmp);
    return mlir::success();
  }
};

// =================================================================
}

namespace {
class ConvertRemoteMemToLLVMPass : public impl::ConvertRemoteMemToLLVMBase<ConvertRemoteMemToLLVMPass> {
public:
  ConvertRemoteMemToLLVMPass() = default;
  void runOnOperation() override {
    ModuleOp m = getOperation();
    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateRemoteMemToLLVMPatterns(typeConverter, patterns);
    
    ConversionTarget target(getContext());
    target.addIllegalDialect<rmem::RemoteMemDialect>();
    // Generic target that fileter out most of operations
    target.markUnknownOpDynamicallyLegal([](Operation *op) {
      return !(llvm::any_of(op->getOperandTypes(), rmem::hasRemoteTarget) || llvm::any_of(op->getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addDynamicallyLegalOp<func::FuncOp>([](func::FuncOp op) {
      return (!llvm::any_of(op.getArgumentTypes(), rmem::hasRemoteTarget)) && (!llvm::any_of(op.getResultTypes(), rmem::hasRemoteTarget));
    });

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
  populateRemoteFuncToLLVM(converter, patterns);
  populateRemoteSCFToLLVM(converter, patterns);
  patterns.add<
  RemoteMemUndefLowering,
  RemoteMemNullOpLowering,
  RemoteMemLLVMGlobalLowering,
  RemoteMemReturnLowering,
  RemoteMemLLVMAddressOfLowering,
  RemoteMemMallocPtrLowering,
  RemoteMemBitCastLowering,
  RemoteMemStoreLowering,
  RemoteMemLoadLowering,
  RemoteMemGEPOpLowering,
  RemoteMemAllocaOpLowering,
  RemoteMemAddrCmpLowering
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createRemoteMemToLLVMPass() {
  return std::make_unique<ConvertRemoteMemToLLVMPass>();
}
}