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
#include "Conversion/MemRefDisagg/MemRefDisagg.h"
#include "../PassDetail.h"

namespace mlir {
namespace {
class MemRefAllocDisagg : public ConvertOpToRemoteMemPattern<memref::AllocOp> {
  using ConvertOpToRemoteMemPattern<memref::AllocOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(memref::AllocOp op, memref::AllocOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Value rmemAlloc = allocateBuffer(rewriter, op.getLoc(), op);
    rewriter.replaceOp(op, {rmemAlloc});
    return mlir::success();
  }
};
}

namespace disagg{
class MemRefDisaggregationPass : public MemRefDisaggregationBase<MemRefDisaggregationPass> {
public:
  MemRefDisaggregationPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    rmem::RemoteMemTypeConverter typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateMemRefDisaggPatterns(typeConverter, patterns);
    RemoteMemConversionTarget target(getContext());

    target.addIllegalOp<memref::AllocOp>();
    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateMemRefDisaggPatterns(rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns) {
  patterns.add<
  MemRefAllocDisagg
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createMemRefDisaggPass() {
  return std::make_unique<MemRefDisaggregationPass>();
}
}
}