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
#include "Conversion/MemDisagg.h"
#include "./PassDetail.h"

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

//============================================================================
// LLVM operation conversion
//============================================================================

class LLVMCallMallocDisagg : public OpConversionPattern<LLVM::CallOp> {
  using OpConversionPattern<LLVM::CallOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::CallOp op, LLVM::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto calleeName = op.getCallee();
    if (!calleeName.hasValue() || !(calleeName.getValue().equals("malloc")))
      return mlir::failure();
    
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      // auto poolId = rmem::createIntConstant(rewriter, op.getLoc(), 0, rmem::getIntBitType(op.getContext(), 32));
      if (rts.empty() || rts.size() != 1) {
        llvm::errs() << "Malloc remote target expects one `rel_types` annotation"; 
        return mlir::failure();
      }
      TypeAttr rType = rts[0].dyn_cast<mlir::TypeAttr>();
      auto newPtr = rewriter.create<rmem::LLVMMallocOp>(
        op.getLoc(), rType.getValue(), rewriter.getI32IntegerAttr(0), adaptor.getOperands()[0]
      );
      rewriter.replaceOp(op, {newPtr});
      return mlir::success();
    } 
    llvm::errs() << "Malloc remote target expects one `rel_types` annotation"; 
    return mlir::failure();
  }
};

class LLVMBitCastDisagg : public OpConversionPattern<LLVM::BitcastOp> {
  using OpConversionPattern<LLVM::BitcastOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::BitcastOp op, LLVM::BitcastOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (rts.empty() || rts.size()!= 1) {
        llvm::errs() << "Bitcast remote target expects one `rel_types` annotation";
        return mlir::failure();
      }
      TypeAttr rType = rts[0].dyn_cast<mlir::TypeAttr>();
      auto newPtr = rewriter.create<rmem::BitCastOp>(
        op.getLoc(), rType.getValue(), adaptor.getOperands()[0]
      );
      rewriter.replaceOp(op, {newPtr});
      return mlir::success();
    } 
    llvm::errs() << "Bitcast remote target expects one `rel_types` annotation";
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
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types"))
      relType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();
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
    for (auto i : adaptor.getStructIndices().getValues<int32_t>()) {
      if (i == LLVM::GEPOp::kDynamicIndex) continue;
      filteredStructIndices.push_back(i);
    }

    Type resultType = op.getResult().getType();
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types"))
      resultType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();

    // If the bast pointer is remote memref and the result type is raw pointer
    // Update the result type to anotehr address space

    auto newGEPOp = rewriter.create<rmem::GEPOp>(
      op.getLoc(),
      resultType,
      adaptor.getBase(),
      adaptor.getIndices(),
      rewriter.getI32TensorAttr(filteredStructIndices),
      adaptor.getElemTypeAttr()
    );


    rewriter.replaceOp(op, {newGEPOp});
    return mlir::success();
  }
};

class LLVMUndefDisagg : public OpConversionPattern<LLVM::UndefOp> {
  using OpConversionPattern<LLVM::UndefOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::UndefOp op, LLVM::UndefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (rts.empty() || rts.size() != 1) {
        llvm::errs() << "Undef remote target expects exactly one `rel_types` attribute\n";
        return mlir::failure();
      }
      TypeAttr rType = rts[0].dyn_cast<mlir::TypeAttr>();
      auto newUndef = rewriter.create<rmem::UndefOp>(
        op.getLoc(), rType.getValue()
      );
      rewriter.replaceOp(op, {newUndef});
      return mlir::success();
    }
    llvm::errs() << "Undef remote target expects exactly one `rel_types` attribute\n";
    return mlir::failure();
  }
};

class LLVMGlobalDisagg : public OpConversionPattern<LLVM::GlobalOp> {
  using OpConversionPattern<LLVM::GlobalOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::GlobalOp op, LLVM::GlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto optLinkage = symbolizeRLinkageType(static_cast<uint64_t>(op.getLinkage()));
    if (!optLinkage.hasValue()) {
      llvm::errs() << "Cannot convert linkage info\n"; 
      return mlir::failure();
    }
    
    RUnnamedAddrAttr nattr = {};
    if (auto onattr = op.getUnnamedAddrAttr()) {
      if (auto optnattr = symbolizeRUnnamedAddr(static_cast<uint64_t>(onattr.getValue()))) {
        nattr = RUnnamedAddrAttr::get(onattr.getContext(), optnattr.getValue());
      }
    }
    Type newGlobType = {};
    if (auto rGlobType = op->getAttrOfType<TypeAttr>("remote_global_type")) {
      newGlobType = rGlobType.getValue();
    } else {
      llvm::errs() << "Need to specify `remote_global_type`\n";
      return mlir::failure();
    }
    auto newGlob = rewriter.create<LLVMGlobalOp>(
      op.getLoc(), 
      newGlobType,
      op.getConstant(),
      op.getSymName(),
      optLinkage.getValue(),
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
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (rts.empty() || rts.size()!= 1) {
        llvm::errs() << "AddressOf remote target expects exactly one `rel_types` attribute\n";
        return mlir::failure();
      }
      TypeAttr rType = rts[0].dyn_cast<mlir::TypeAttr>();
      auto newAddrOf = rewriter.create<rmem::LLVMAddressOfOp>(op.getLoc(), rType.getValue(), op.getGlobalNameAttr());
      rewriter.replaceOp(op, {newAddrOf});
      return mlir::success();
    }
    llvm::errs() << "AddressOf remote target expects exactly one `rel_types` attribute\n";
    return mlir::failure();
  }
};

class LLVMNullOpDisagg : public OpConversionPattern<LLVM::NullOp> {
  using OpConversionPattern<LLVM::NullOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::NullOp op, LLVM::NullOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (rts.empty() || rts.size()!= 1) {
        llvm::errs() << "Null remote target expects exactly one `rel_types` attribute\n";
        return mlir::failure();
      }
      TypeAttr rType = rts[0].dyn_cast<mlir::TypeAttr>();
      auto newNullRef = rewriter.create<rmem::NullRefOp>(op.getLoc(), rType.getValue());
      rewriter.replaceOp(op, {newNullRef});
      return mlir::success();
    }
    llvm::errs() << "Null remote target expects exactly one `rel_types` attribute\n";
    return mlir::failure();
  }
};

class LLVMICmpOpDisagg : public OpConversionPattern<LLVM::ICmpOp> {
  using OpConversionPattern<LLVM::ICmpOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::ICmpOp op, LLVM::ICmpOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<rmem::AddrCmpOp>(
      op, 
      rmem::getIntBitType(op.getContext(), 1),
      adaptor.getLhs(), adaptor.getRhs(),
      *rmem::symbolizeRAddrCmpPredicate(static_cast<uint64_t>(adaptor.getPredicate()))
    );
    return mlir::success();
  }
};

//====================================================================================
// Func dialect conversion

class FuncFuncOpDisagg : public OpConversionPattern<func::FuncOp> {
  using OpConversionPattern<func::FuncOp>::OpConversionPattern;

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

  LogicalResult matchAndRewrite(func::FuncOp op, func::FuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto newFuncOp = disaggBltFuncSignature(op, rewriter);
    if (!newFuncOp)
      return mlir::failure();
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class FuncReturnOpDisagg : public OpConversionPattern<func::ReturnOp> {
  using OpConversionPattern<func::ReturnOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(func::ReturnOp op, func::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<rmem::ReturnOp>(op, adaptor.getOperands());
    return mlir::success(); 
  }
};

// ============================================================================
// SCF disaggregation
//==============================================================================
// class SCFWhileDisagg : public OpConversionPattern<>

};
// =================================================================================================================

namespace disagg {
class MemDisaggregationPass: public MemDisaggregationBase<MemDisaggregationPass> {
public:
  MemDisaggregationPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    RewritePatternSet patterns(&getContext());
    populateMemDisaggPatterns(&getContext(), patterns);
    RemoteMemConversionTarget target(getContext());

    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateMemDisaggPatterns (MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
  /* llvm patterns */
  LLVMCallMallocDisagg,
  LLVMBitCastDisagg,
  LLVMGlobalDisagg,
  LLVMStoreDisagg,
  LLVMLoadDisagg,
  LLVMGEPOpDisagg,
  LLVMUndefDisagg,
  LLVMReturnOpDisagg,
  LLVMAddressOfDisagg,
  LLVMCallMallocDisagg,
  LLVMNullOpDisagg,
  LLVMICmpOpDisagg,
  /* builtin func patterns */
  FuncFuncOpDisagg,
  FuncReturnOpDisagg
  >(ctx);
}

std::unique_ptr<Pass> createMemDisaggregationPass() {
  return std::make_unique<MemDisaggregationPass>();
}

}
}