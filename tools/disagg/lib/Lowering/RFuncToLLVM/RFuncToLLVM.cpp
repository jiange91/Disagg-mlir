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
#include "Lowering/RFuncToLLVM/RFuncToLLVM.h"

namespace mlir {
#define GEN_PASS_DEF_CONVERTREMOTEFUNCTOLLVM
#include "Lowering/Passes.h.inc"
using namespace mlir::rmem;

namespace {
/* Patterns */
class RemoteFuncFuncOpLowering : public RemoteMemOpLoweringPattern<func::FuncOp> {
  using RemoteMemOpLoweringPattern<func::FuncOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(func::FuncOp op, func::FuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    TypeConverter::SignatureConversion result(op.getFunctionType().getNumInputs());
    mlir::FunctionType newFuncType = getTypeConverter()->convertFunctionSignature(op.getFunctionType(), result).cast<FunctionType>();
    if (!newFuncType) {
      llvm::errs() << "Failed to convert function signature\n";
      return mlir::failure();
    }
    auto newFuncOp = rewriter.create<func::FuncOp>(
      op.getLoc(), op.getSymName(), newFuncType
    );
    rewriter.inlineRegionBefore(op.getBody(), newFuncOp.getBody(), newFuncOp.getBody().end());
    if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *getTypeConverter(), &result))) {
      llvm::errs() << "Failed to convert Region types\n";
      return mlir::failure();
    }
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class RemoteFuncCallOpLowering : public RemoteMemOpLoweringPattern<func::CallOp> {
  using RemoteMemOpLoweringPattern<func::CallOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(func::CallOp op, func::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    SmallVector<Type, 1> resultTypes;
    resultTypes.reserve(op.getNumResults());
    if (failed(getTypeConverter()->convertTypes(op.getResultTypes(), resultTypes))) {
      llvm::errs() << "Failed to convert result types\n";
      return mlir::failure();
    }

    auto newCallOp = rewriter.create<func::CallOp>(
      op.getLoc(), adaptor.getCalleeAttr(), resultTypes, adaptor.getOperands()
    );
    rewriter.replaceOp(op, newCallOp.getResults());
    return mlir::success();
  }
};

class RemoteFuncReturnOpLowering : public RemoteMemOpLoweringPattern<func::ReturnOp> {
  using RemoteMemOpLoweringPattern<func::ReturnOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(func::ReturnOp op, func::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<func::ReturnOp>(op, adaptor.getOperands());
    return mlir::success();
  }
};
}

class ConvertRemoteFuncToLLVMPass : public impl::ConvertRemoteFuncToLLVMBase<ConvertRemoteFuncToLLVMPass> {
public:
  ConvertRemoteFuncToLLVMPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    
    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateRemoteFuncToLLVM(typeConverter, patterns);

    ConversionTarget target(getContext());
    target.addLegalDialect<LLVM::LLVMDialect>();
    target.addDynamicallyLegalOp<func::FuncOp>([](func::FuncOp op) {
      return (!llvm::any_of(op.getArgumentTypes(), rmem::hasRemoteTarget)) && (!llvm::any_of(op.getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addDynamicallyLegalOp<func::CallOp>([](func::CallOp op) {
      return (!llvm::any_of(op.getOperandTypes(), rmem::hasRemoteTarget)) && (!llvm::any_of(op.getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addDynamicallyLegalOp<func::ReturnOp>([](func::ReturnOp op) {
      return (!llvm::any_of(op.getOperandTypes(), rmem::hasRemoteTarget));
    });
    target.addLegalOp<UnrealizedConversionCastOp>();

    if (failed(applyPartialConversion(op, target, std::move(patterns))))
      signalPassFailure();
  }
};

void populateRemoteFuncToLLVM (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns) {
  patterns.add<
  RemoteFuncFuncOpLowering,
  RemoteFuncCallOpLowering,
  RemoteFuncReturnOpLowering
  >(converter, &converter.getContext());
}
std::unique_ptr<Pass> createRFuncToLLVMPass() {
  return std::make_unique<ConvertRemoteFuncToLLVMPass>();
}
}