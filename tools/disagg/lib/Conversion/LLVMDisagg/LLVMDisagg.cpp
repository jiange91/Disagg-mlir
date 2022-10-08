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
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/LLVMDisagg/LLVMDisagg.h"
#include "../PassDetail.h"

namespace mlir {
namespace {
static llvm::StringSet<> allowedFuncSyms = {
/*"malloc", */ 
"fclose",
"fopen",
"__isoc99_fscanf", 
"printf",
"atoi"
};

class LLVMCallMallocDisagg : public OpConversionPattern<LLVM::CallOp> {
  using OpConversionPattern<LLVM::CallOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::CallOp op, LLVM::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto calleeName = op.getCallee();
    if (!calleeName.has_value() || !((*calleeName).equals(llvm::StringRef("malloc"))))
      return mlir::failure();

    if (auto rType = op->getAttrOfType<TypeAttr>("rel_type")) {
      auto poolId = rmem::createIntConstant(rewriter, op.getLoc(), 0, rmem::getIntBitType(op.getContext(), 32));
      auto newPtr = rewriter.create<rmem::LLVMMallocOp>(
        op.getLoc(), rType.getValue(), poolId, adaptor.getOperands()[0]
      );
      rewriter.replaceOp(op, {newPtr});
      return mlir::success();
    } 
    return mlir::failure();
  }
};

class LLVMBitCastDisagg : public OpConversionPattern<LLVM::BitcastOp> {
  using OpConversionPattern<LLVM::BitcastOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::BitcastOp op, LLVM::BitcastOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rType = op->getAttrOfType<TypeAttr>("rel_type")) {
      auto newPtr = rewriter.create<rmem::BitCastOp>(
        op.getLoc(), rType.getValue(), adaptor.getOperands()[0]
      );
      rewriter.replaceOp(op, {newPtr});
      return mlir::success();
    } 
    return mlir::failure(); 
  }
};

class LLVMReturnOpDisagg : public OpConversionPattern<LLVM::ReturnOp> {
  using OpConversionPattern<LLVM::ReturnOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::ReturnOp op, LLVM::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<rmem::ReturnOp>(op, adaptor.getOperands()[0]);
    return mlir::success();
  }
};

class LLVMStoreDisagg : public OpConversionPattern<LLVM::StoreOp> {
  using OpConversionPattern<LLVM::StoreOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::StoreOp op, LLVM::StoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<rmem::StoreOp>(op, 
      adaptor.getOperands()[0],
      adaptor.getOperands()[1],
      op.getAccessGroupsAttr(),
      op.getAliasScopesAttr(),
      op.getNoaliasScopesAttr(),
      op.getAlignmentAttr(),
      op.getVolatile_Attr(),
      op.getNontemporalAttr()
    );
    return mlir::success();
  }
};

class LLVMLoadDisagg : public OpConversionPattern<LLVM::LoadOp> {
  using OpConversionPattern<LLVM::LoadOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::LoadOp op, LLVM::LoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type relType = op.getRes().getType(); 
    if (auto rType = op->getAttrOfType<TypeAttr>("rel_type"))
      relType = rType.getValue();
    auto newLoad = rewriter.create<rmem::LoadOp>(
      op.getLoc(),
      relType,
      adaptor.getOperands()[0],
      op.getAccessGroupsAttr(),
      op.getAliasScopesAttr(),
      op.getNoaliasScopesAttr(),
      op.getAlignmentAttr(),
      op.getVolatile_Attr(),
      op.getNontemporalAttr()
    );
    rewriter.replaceOp(op, {newLoad});
    return mlir::success();
  }
};

class LLVMGEPOpDisagg : public OpConversionPattern<LLVM::GEPOp> {
  using OpConversionPattern<LLVM::GEPOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::GEPOp op, LLVM::GEPOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {

    SmallVector<int32_t> filteredStructIndices;
    for (auto i : adaptor.getRawConstantIndices()) {
      if (i == LLVM::GEPOp::kDynamicIndex) continue;
      filteredStructIndices.push_back(i);
    }

    Type resultType = op.getResult().getType();
    if (auto rType = op->getAttrOfType<TypeAttr>("rel_type")) {
      resultType = rType.getValue();
    }

    // If the bast pointer is remote memref and the result type is raw pointer
    // Update the result type to anotehr address space

    auto newGEPOp = rewriter.create<rmem::GEPOp>(
      op.getLoc(),
      resultType,
      adaptor.getBase(),
      adaptor.getDynamicIndices(),
      filteredStructIndices,
      adaptor.getElemTypeAttr()
    );


    rewriter.replaceOp(op, newGEPOp.getResult());
    return mlir::success();
  }
};

class LLVMUndefDisagg : public OpConversionPattern<LLVM::UndefOp> {
  using OpConversionPattern<LLVM::UndefOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::UndefOp op, LLVM::UndefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rType = op->getAttrOfType<TypeAttr>("rel_type")) {
      auto newUndef = rewriter.create<rmem::UndefOp>(
        op.getLoc(), rType.getValue()
      );
      rewriter.replaceOp(op, {newUndef});
      return mlir::success();
    } 
    return mlir::failure();
  }
};

class LLVMGlobalDisagg : public OpConversionPattern<LLVM::GlobalOp> {
  using OpConversionPattern<LLVM::GlobalOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::GlobalOp op, LLVM::GlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto optLinkage = symbolizeRLinkageType(static_cast<uint64_t>(op.getLinkage()));
    if (!optLinkage.has_value()) {
      llvm::errs() << "Cannot convert linkage info\n"; 
      return mlir::failure();
    }
    
    RUnnamedAddrAttr nattr = {};
    if (auto onattr = op.getUnnamedAddrAttr()) {
      if (auto optnattr = symbolizeRUnnamedAddr(static_cast<uint64_t>(onattr.getValue()))) {
        nattr = RUnnamedAddrAttr::get(onattr.getContext(), *optnattr);
      }
    }
    Type newGlobType = {};
    if (auto rGlobType = op->getAttrOfType<TypeAttr>("remote_global_type")) {
      newGlobType = rGlobType.getValue();
    } else {
      llvm::errs() << "Need to specify remote_global_type\n";
      return mlir::failure();
    }
    auto newGlob = rewriter.create<LLVMGlobalOp>(
      op.getLoc(), 
      newGlobType,
      op.getConstant(),
      op.getSymName(),
      *optLinkage,
      op.getDsoLocal(),
      op.getThreadLocal_(),
      op.getValueAttr(),
      op.getAlignmentAttr(),
      op.getAddrSpace(),
      nattr,
      op.getSectionAttr()
    );
    // GlobalOp only has one block
    rewriter.inlineRegionBefore(op.getInitializer(), newGlob.getInitializer(), newGlob.getInitializer().end());
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class LLVMAddressOfDisagg : public OpConversionPattern<LLVM::AddressOfOp> {
  using OpConversionPattern<LLVM::AddressOfOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::AddressOfOp op, LLVM::AddressOfOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rType = op->getAttrOfType<TypeAttr>("rel_type")) {
      auto newAddrOf = rewriter.create<rmem::LLVMAddressOfOp>(op.getLoc(), rType.getValue(), op.getGlobalNameAttr());
      rewriter.replaceOp(op, {newAddrOf});
      return mlir::success();
    }
    return mlir::failure();
  }
};
}

namespace disagg {
class LLVMDisaggregationPass: public LLVMDisaggregationBase<LLVMDisaggregationPass> {
public:
  LLVMDisaggregationPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    RewritePatternSet patterns(&getContext());
    populateLLVMDisaggPatterns(&getContext(), patterns);
    RemoteMemConversionTarget target(getContext());

    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateLLVMDisaggPatterns (MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
  LLVMCallMallocDisagg,
  LLVMBitCastDisagg,
  LLVMGlobalDisagg,
  LLVMStoreDisagg,
  LLVMLoadDisagg,
  LLVMGEPOpDisagg,
  LLVMUndefDisagg,
  LLVMReturnOpDisagg,
  LLVMAddressOfDisagg
  >(ctx);
}

std::unique_ptr<Pass> createLLVMDisaggregationPass() {
  return std::make_unique<LLVMDisaggregationPass>();
}

}
}