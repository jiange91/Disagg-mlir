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
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::rmem;

//====================================================================================
// Affine dialect conversion
class AffineStoreDisagg : public OpConversionPattern<AffineStoreOp> {
  using OpConversionPattern<AffineStoreOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(AffineStoreOp op, mlir::AffineStoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<rmem::RAffineStoreOp>(op,
      adaptor.getValue(),
      adaptor.getMemref(),
      adaptor.getIndices()
    );
    return mlir::success();
  }
};

class AffineLoadDisagg : public OpConversionPattern<AffineLoadOp> {
  using OpConversionPattern<AffineLoadOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(AffineLoadOp op, AffineLoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type relType = op.getResult().getType();
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (!rts.empty() && rts.size() == 1) {
        relType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();
      }
    }
    Value loadRef = rewriter.create<rmem::RAffineLoadOp>(
      op.getLoc(), 
      relType,
      adaptor.getMemref(),
      adaptor.getIndices()
    );
    rewriter.replaceOp(op, loadRef);
    return mlir::success();
  }
};


void mlir::disagg::populateAffineDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
    AffineStoreDisagg,
    AffineLoadDisagg
  >(ctx);
}