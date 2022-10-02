#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemOps.h"
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
    op.getGlobalType().dump();
    convertedGlobTy.dump();
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
  RemoteMemLLVMAddressOfLowering
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createRemoteMemToLLVMPass() {
  return std::make_unique<ConvertRemoteMemToLLVMPass>();
}
}