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
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/BltFuncSigDisagg/BltFuncSigDisagg.h"
#include "../PassDetail.h"

namespace mlir {
namespace {
class FuncOpDisagg : public ConvertOpToRemoteMemPattern<func::FuncOp> {
  using ConvertOpToRemoteMemPattern<func::FuncOp>::ConvertOpToRemoteMemPattern;

  func::FuncOp disaggBltFuncSignature(func::FuncOp funcOp, ConversionPatternRewriter &rewriter) const {
    // Convert funcOp using typeconverter
    TypeConverter::SignatureConversion result(funcOp.getNumArguments());
    auto newFuncOpType = getTypeConverter()->convertFunctionSignature(funcOp.getFunctionType(), result);
    if (!newFuncOpType) return nullptr;

    // propagate attributes ?
    // newFuncOpType.dump();

    auto newFuncOp = rewriter.create<func::FuncOp>(funcOp.getLoc(), funcOp.getName(), newFuncOpType);
    rewriter.inlineRegionBefore(funcOp.getBody(), newFuncOp.getBody(), newFuncOp.end());
    if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *getTypeConverter(), &result)))
      return nullptr;
    return newFuncOp;
  }

  LogicalResult matchAndRewrite(func::FuncOp funcOp, func::FuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto newFuncOp = disaggBltFuncSignature(funcOp, rewriter);
    if (!newFuncOp)
      return mlir::failure();
    rewriter.eraseOp(funcOp);
    return mlir::success();
  }

};

class FuncCallOpDisagg : public ConvertOpToRemoteMemPattern<func::CallOp> {
  using ConvertOpToRemoteMemPattern<func::CallOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(func::CallOp op, func::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // convert result types
    SmallVector<Type, 4> newResultTypes;
    newResultTypes.reserve(op.getNumResults());
    if (failed(getTypeConverter()->convertTypes(op.getResultTypes(), newResultTypes)))
      return mlir::failure();

    auto newCallOp = rewriter.create<func::CallOp>(
      op.getLoc(), newResultTypes, adaptor.getOperands(), op->getAttrs()
    );
    rewriter.replaceOp(op, newCallOp.getResults());
    return mlir::success();
  }
};

class FuncReturnOpDisagg : public ConvertOpToRemoteMemPattern<func::ReturnOp> {
  using ConvertOpToRemoteMemPattern<func::ReturnOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(func::ReturnOp op, func::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<func::ReturnOp>(op, TypeRange(), adaptor.getOperands(), op->getAttrs());
    return mlir::success();
  }
};
}

namespace disagg {
class BltFuncSigDisaggregationPass : public BltFuncSigDisaggregationBase<BltFuncSigDisaggregationPass> {
public:
  BltFuncSigDisaggregationPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    rmem::RemoteMemTypeConverter typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateBltFuncSigDisaggPatterns(typeConverter, patterns);
    RemoteMemConversionTarget target(getContext());

    target.addDynamicallyLegalOp<func::FuncOp>([](func::FuncOp op) {
      return !rmem::hasRemotableSignature(op);
    });
    target.addDynamicallyLegalOp<func::CallOp>([](func::CallOp op) {
      return !rmem::hasRemotableSignature(op);
    });
    target.addDynamicallyLegalOp<func::ReturnOp>([](func::ReturnOp op) { 
      return !rmem::hasRemotableSignature(op);
    });

    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateBltFuncSigDisaggPatterns(rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns) {
  patterns.add<
  FuncOpDisagg,
  FuncCallOpDisagg,
  FuncReturnOpDisagg
  >(converter, &converter.getContext());
}
std::unique_ptr<Pass> createBltFuncSigDisaggregationPass() {
  return std::make_unique<BltFuncSigDisaggregationPass>();
}
}
}