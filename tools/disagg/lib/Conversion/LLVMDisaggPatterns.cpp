#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::rmem;
//============================================================================
// LLVM operation conversion
//============================================================================

// Default cache id is 1
class LLVMCallMallocDisagg : public OpConversionPattern<LLVM::CallOp> {
  using OpConversionPattern<LLVM::CallOp>::OpConversionPattern;

  LogicalResult matchAndRewrite(LLVM::CallOp op, LLVM::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto calleeName = op.getCallee();
    if (!calleeName.has_value() || !(calleeName.value().equals("malloc")))
      return mlir::failure();
    
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (rts.empty() || rts.size() != 1) {
        llvm::errs() << "Malloc remote target expects one `rel_types` annotation"; 
        return mlir::failure();
      }
      TypeAttr rType = rts[0].dyn_cast<mlir::TypeAttr>();
      auto newPtr = rewriter.create<rmem::LLVMMallocOp>(
        op.getLoc(), rType.getValue(), rewriter.getI32IntegerAttr(2), adaptor.getOperands()[0]
      );
      rewriter.replaceOp(op, {newPtr});
      return mlir::success();
    } 
    llvm::errs() << "Malloc remote target expects one `rel_types` annotation"; 
    return mlir::failure();
  }
};

class LLVMAllocaOpDisagg : public OpConversionPattern<LLVM::AllocaOp> {
  using OpConversionPattern<LLVM::AllocaOp>::OpConversionPattern;
  LogicalResult matchAndRewrite(LLVM::AllocaOp op, LLVM::AllocaOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type resultType = op.getRes().getType();
    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      if (rts.empty() || rts.size() != 1) {
        llvm::errs() << "Alloca remote target expects one `rel_types` annotation"; 
        return mlir::failure();
      }
      resultType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();
    }

    TypeAttr eleTyAttr = TypeAttr();
    if (op.getResult().getType().cast<LLVM::LLVMPointerType>().isOpaque()) {
      eleTyAttr = adaptor.getElemTypeAttr();
    } else {
      eleTyAttr = TypeAttr::get(op.getResult().getType().cast<LLVM::LLVMPointerType>().getElementType());
    }
    Value newPtr = rewriter.create<rmem::LLVMAllocaOp>(
      op.getLoc(), resultType, adaptor.getArraySize(), adaptor.getAlignmentAttr(), eleTyAttr
    );
    rewriter.replaceOp(op, {newPtr});
    return mlir::success();
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
    Type addrType = adaptor.getAddr().getType();
    Type relType = op.getRes().getType();
    if (auto ptrType = addrType.dyn_cast<LLVM::LLVMPointerType>()) {
      relType = ptrType.getElementType();
    } 
    else if (auto rmemType = addrType.dyn_cast<rmem::RemoteMemRefType>()) {
      relType = rmemType.getInnerElementType();
    }
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
    SmallVector<int32_t> filteredConstIndices;
    for (auto i : adaptor.getRawConstantIndices()) {
      if (i == LLVM::GEPOp::kDynamicIndex) continue;
      filteredConstIndices.push_back(i);
    }

    Type resultType = op.getResult().getType();
    Type baseAddr = adaptor.getBase().getType();
    Type idxType = getAggrIndexType(baseAddr, adaptor.getRawConstantIndices());
    if (idxType) {
      auto addressSpace = resultType.cast<LLVM::LLVMPointerType>().getAddressSpace();
      auto ptrEle = LLVM::LLVMPointerType::get(idxType, addressSpace);
      if (auto ptrType = baseAddr.dyn_cast<LLVM::LLVMPointerType>())
        resultType = ptrEle;
      else if (auto mrefType = baseAddr.dyn_cast<RemoteMemRefType>())
        resultType = RemoteMemRefType::get(ptrEle, mrefType.getCanRemote());
      else {
        llvm::errs() << "gepop unsupported type: ";
        baseAddr.dump();
        return mlir::failure();
      }
    }

    if (auto rts = op->getAttrOfType<mlir::ArrayAttr>("rel_types"))
      resultType = rts[0].dyn_cast<mlir::TypeAttr>().getValue();

    // If the bast pointer is remote memref and the result type is raw pointer
    // Update the result type to anotehr address space

    auto newGEPOp = rewriter.create<rmem::GEPOp>(
      op.getLoc(),
      resultType,
      adaptor.getBase(),
      adaptor.getDynamicIndices(),
      rewriter.getDenseI32ArrayAttr(filteredConstIndices),
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
    if (!optLinkage.has_value()) {
      llvm::errs() << "Cannot convert linkage info\n"; 
      return mlir::failure();
    }
    
    RUnnamedAddrAttr nattr = {};
    if (auto onattr = op.getUnnamedAddrAttr()) {
      if (auto optnattr = symbolizeRUnnamedAddr(static_cast<uint64_t>(onattr.getValue()))) {
        nattr = RUnnamedAddrAttr::get(onattr.getContext(), optnattr.value());
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
      optLinkage.value(),
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

void mlir::disagg::populateLLVMDisaggregationPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
    /* llvm patterns */
    LLVMBitCastDisagg,
    LLVMGlobalDisagg,
    LLVMStoreDisagg,
    LLVMLoadDisagg,
    LLVMGEPOpDisagg,
    LLVMUndefDisagg,
    LLVMReturnOpDisagg,
    LLVMAddressOfDisagg,
    LLVMCallMallocDisagg,
    LLVMAllocaOpDisagg,
    LLVMNullOpDisagg,
    LLVMICmpOpDisagg
  >(ctx);
}
