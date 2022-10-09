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

    // Remap funcOp signature inputs
    if (auto its = funcOp->getAttrOfType<mlir::ArrayAttr>("operand_types")) {
      for (auto &en : llvm::enumerate(its.getAsValueRange<mlir::TypeAttr>())) {
        result.addInputs(en.index(), en.value());
      }
    } else {
      for (auto &en : llvm::enumerate(funcOp.getArgumentTypes())) {
        result.addInputs(en.index(), en.value());
      }
    }

    // Create resultTypes for new funcOp
    SmallVector<Type, 4> resultTypes;
    if (auto its = funcOp->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      for (Type en : its.getAsValueRange<mlir::TypeAttr>())
        resultTypes.push_back(en);
    } else {
      for (Type en : funcOp.getResultTypes())
        resultTypes.push_back(en);
    }

    auto newFuncOpType = mlir::FunctionType::get(funcOp.getContext(), result.getConvertedTypes(), resultTypes);
    if (!newFuncOpType) return nullptr;

    // propagate attributes ?
    newFuncOpType.dump();

    auto newFuncOp = rewriter.create<func::FuncOp>(funcOp.getLoc(), funcOp.getName(), newFuncOpType);
    rewriter.inlineRegionBefore(funcOp.getBody(), newFuncOp.getBody(), newFuncOp.end());
    rewriter.applySignatureConversion(&newFuncOp.getBody(), result);
    // if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *getTypeConverter(), &result)))
    //   return nullptr;
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
    rewriter.replaceOpWithNewOp<rmem::ReturnOp>(op, adaptor.getOperands());
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

    target.addDynamicallyLegalDialect<mlir::func::FuncDialect>([](Operation *op) { 
      if (auto remoteAttr = op->getAttrOfType<IntegerAttr>("remote_target")) {
        if (!remoteAttr.getValue().isZero()) return false;
      }
      return true;
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