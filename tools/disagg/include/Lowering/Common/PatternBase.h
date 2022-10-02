#ifndef LOWER_REMOTE_MEM_LLVMCOMMON_PATTERN_H
#define LOWER_REMOTE_MEM_LLVMCOMMON_PATTERN_H

#include "Lowering/Common/RMemTypeLowerer.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/IR/OperationSupport.h"

namespace mlir {
namespace rmem {

}

class RemoteMemLoweringPattern : public ConversionPattern {
public:
  RemoteMemLoweringPattern(StringRef rootOpName, MLIRContext* context, rmem::RemoteMemTypeLowerer &typeConverter, PatternBenefit benefit = 1);

protected:
  rmem::RemoteMemDialect &getDialect() const;
  rmem::RemoteMemTypeLowerer *getTypeConverter() const;
};

template<typename SourceOp>
class RemoteMemOpLoweringPattern : public RemoteMemLoweringPattern {
public:
  using OpAdaptor = typename SourceOp::Adaptor;
  explicit RemoteMemOpLoweringPattern(rmem::RemoteMemTypeLowerer &typeConverter, 
                                      MLIRContext *ctx,
                                      PatternBenefit bft = 1) :
            RemoteMemLoweringPattern(SourceOp::getOperationName(),
                                     ctx,
                                     typeConverter,
                                     bft) {}
  void rewrite(Operation *op, ArrayRef<Value> operands, ConversionPatternRewriter &rewriter) const final {
    rewrite(cast<SourceOp>(op), OpAdaptor(operands, op->getAttrDictionary()),
            rewriter);
  }

  LogicalResult match(Operation *op) const final {
    return match(cast<SourceOp>(op));
  }

  LogicalResult
  matchAndRewrite(Operation *op, ArrayRef<Value> operands,
                  ConversionPatternRewriter &rewriter) const final {
    return matchAndRewrite(cast<SourceOp>(op),
                           OpAdaptor(operands, op->getAttrDictionary()),
                           rewriter);
  }

  // match and rewrite on the concrete source op, must be override by the derived class
  virtual void rewrite(SourceOp op, OpAdaptor adaptor, ConversionPatternRewriter &rewriter) const {
    llvm_unreachable("must overwrite rewrite or matchAndRewirte");
  }

  virtual LogicalResult match(SourceOp op) const {
    llvm_unreachable("must overwrite match or matchAndRewrite");
  }

  virtual LogicalResult matchAndRewrite(SourceOp op, OpAdaptor adaptor, ConversionPatternRewriter &rewriter) const {
    if (failed(match(op)))
      return mlir::failure();
    rewrite(op, adaptor, rewriter);
    return success();
  }
private:
  using RemoteMemLoweringPattern::matchAndRewrite;
};
}


#endif