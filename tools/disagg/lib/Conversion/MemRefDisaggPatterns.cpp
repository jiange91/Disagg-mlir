#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
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
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::rmem;

//====================================================================================
// Memref dialect conversion

class MemRefLoadOpDisagg : public OpConversionPattern<memref::LoadOp> {
  using OpConversionPattern<memref::LoadOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(memref::LoadOp op, memref::LoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type relType = op.getResult().getType();
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (!rts.empty() && rts.size() == 1) {
        relType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();
      }
    }

    Value newLoad = rewriter.create<rmem::MemRefLoadOp>(
      op.getLoc(),
      relType,
      adaptor.getMemref(),
      adaptor.getIndices()
    );
    rewriter.replaceOp(op, newLoad);
    return mlir::success();
  }
};


class MemRefStoreOpDisagg : public OpConversionPattern<memref::StoreOp> {
  using OpConversionPattern<memref::StoreOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(memref::StoreOp op, memref::StoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<rmem::MemRefStoreOp>(op,
      adaptor.getValue(),
      adaptor.getMemref(),
      adaptor.getIndices()
    );
    return mlir::success();
  }
};

class MemRefGlobalOpDisagg : public OpConversionPattern<memref::GlobalOp> {
  using OpConversionPattern<memref::GlobalOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(memref::GlobalOp op, memref::GlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rGlobTypeAttr = op->getAttrOfType<TypeAttr>("remote_global_type")) {
      rewriter.replaceOpWithNewOp<rmem::MemRefGlobalOp>(
        op,
        adaptor.getSymNameAttr(),
        adaptor.getSymVisibilityAttr(),
        rGlobTypeAttr,
        adaptor.getInitialValueAttr(),
        adaptor.getConstantAttr(),
        adaptor.getAlignmentAttr()
      );
      return mlir::success();
    } else {
      llvm::errs() << "Need to specify `remote_global_type`\n";
      return mlir::failure();
    }
  }

};

class MemRefGetGlobalOpDisagg : public OpConversionPattern<memref::GetGlobalOp> {
  using OpConversionPattern<memref::GetGlobalOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(memref::GetGlobalOp op, memref::GetGlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto tAttrs = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (!tAttrs.empty() && tAttrs.size() == 1) {
        TypeAttr rType = tAttrs[0].dyn_cast<mlir::TypeAttr>();
        Value newGlob = rewriter.create<rmem::MemRefGetGlobalOp>(op.getLoc(), 
          rType.getValue(),
          adaptor.getNameAttr()
        );
        rewriter.replaceOp(op, newGlob);
        return mlir::success();
      } 
    }
    llvm::errs() << "memref.get_global remote target expects exactly one `rel_types` attribute\n";
    return mlir::failure();
  }
};

class MemRefAllocOpDisagg : public OpConversionPattern<memref::AllocOp> {
  using OpConversionPattern<memref::AllocOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(memref::AllocOp op, memref::AllocOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto tAttrs = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (!tAttrs.empty() && tAttrs.size() == 1) {
        Type rType = tAttrs[0].dyn_cast<mlir::TypeAttr>().getValue();
        mlir::Value newRmemref = rewriter.create<rmem::MemRefAllocOp>(op.getLoc(), 
          rType,
          adaptor.getDynamicSizes(),
          adaptor.getSymbolOperands(),
          adaptor.getAlignmentAttr(),
          rewriter.getI32IntegerAttr(2)
        );
        rewriter.replaceOp(op, newRmemref);
        return mlir::success();
      } 
    }
    llvm::errs() << "rmem.alloc remote target expects exactly one `rel_types` attribute\n";
    return mlir::failure();
  }
};


void mlir::disagg::populateMemRefDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
    MemRefGetGlobalOpDisagg,
    MemRefGlobalOpDisagg,
    MemRefAllocOpDisagg,
    MemRefLoadOpDisagg,
    MemRefStoreOpDisagg 
  >(ctx);
}