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
    Type ptr = getTypeConverter()->convertType(op.getRmemref().getType());
    auto newUndef = rewriter.create<LLVM::UndefOp>(op.getLoc(), ptr);
    rewriter.replaceOp(op, {newUndef});
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
     adaptor.getOperands(),
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
        // call _cache_access_mut
        auto cacheAccMutOp = rmem::lookupOrCreateCacheAccessMutFn(op->getParentOfType<ModuleOp>());
        newAddr = rmem::cacheAccessCallWrapper(
          rewriter, op.getLoc(),
          cacheAccMutOp,
          tk,
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
        // call _cache_access
        auto cacheAccMutOp = rmem::lookupOrCreateCacheAccessFn(op->getParentOfType<ModuleOp>());
        newAddr = rmem::cacheAccessCallWrapper(
          rewriter, op.getLoc(),
          cacheAccMutOp,
          tk,
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
// =================================================================
}

namespace {
class ConvertRemoteMemToLLVMPass : public ConvertRemoteMemToLLVMBase<ConvertRemoteMemToLLVMPass> {
public:
  ConvertRemoteMemToLLVMPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateRemoteMemToLLVMPatterns(typeConverter, patterns);
    
    ConversionTarget target(getContext());
    target.addLegalDialect<LLVM::LLVMDialect>();
    target.addLegalOp<UnrealizedConversionCastOp>();

    if (failed(applyPartialConversion(op, target, std::move(patterns))))
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