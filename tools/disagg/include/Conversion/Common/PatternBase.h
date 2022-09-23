#ifndef REMOTE_MEM_CONVERSION_PATTERN_H
#define REMOTE_MEM_CONVERSION_PATTERN_H

#include "mlir/Transforms/DialectConversion.h"
#include "Conversion/Common/TypeConverter.h"
#include "mlir/IR/OperationSupport.h"

using namespace mlir;
using namespace mlir::rmem;

namespace mlir {
namespace rmem {
bool isRemotableType(Type t);
bool hasRemotableSignature(Operation *op);
}
}

class ConvertToRemoteMemPattern : public ConversionPattern {
public:
  ConvertToRemoteMemPattern(StringRef rootOpName, 
                     MLIRContext *ctx, 
                     RemoteMemTypeConverter &typeConverter,
                     PatternBenefit benefit = 1);
  
protected:
  RemoteMemDialect &getDialect() const;
  RemoteMemTypeConverter *getTypeConverter() const;
  LLVMTypeConverter *getLLVMTypeConverter() const;

  Value createIndexConstant(ConversionPatternRewriter &rewriter, Location loc, uint64_t value) const;
  bool isLLVMConvertibleAndHasIdentityMaps(MemRefType type) const;
  Type getElementLLVMPtrType(MemRefType type) const;

  Value getMemRefSizeBytesByLLVM(Location loc, MemRefType memRefType, ValueRange dynSizes, ConversionPatternRewriter &rewriter) const;

  Value allocateBuffer(ConversionPatternRewriter &rewriter, Location loc, Operation *op) const;
};

template<typename SourceOp>
class ConvertOpToRemoteMemPattern : public ConvertToRemoteMemPattern {
public:
  using OpAdaptor = typename SourceOp::Adaptor;

  explicit ConvertOpToRemoteMemPattern(RemoteMemTypeConverter &typeConverter, MLIRContext *context, PatternBenefit benefit = 1) : 
    ConvertToRemoteMemPattern(SourceOp::getOperationName(),
                              context,
                              typeConverter,
                              benefit) {}
  
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
  using ConvertToRemoteMemPattern::matchAndRewrite;
};

#endif