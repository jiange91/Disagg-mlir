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

class LLVMCallMallocDisagg : public ConvertOpToRemoteMemPattern<LLVM::CallOp> {
  using ConvertOpToRemoteMemPattern<LLVM::CallOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(LLVM::CallOp op, LLVM::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto calleeName = adaptor.getCallee();
    if (!calleeName.hasValue() || !(calleeName.getValue().equals("malloc")))
      return mlir::failure();
    auto rawptrTy = op.getResult(0).getType().cast<LLVM::LLVMPointerType>();
    RemoteMemRefType t = RemoteMemRefType::get(rawptrTy);
    Value rmemAlloc = rewriter.create<LLVMMallocOp>(op.getLoc(), t, adaptor.getOperands().front());
    Value virtAddr = rewriter.create<ToAddressOp>(op.getLoc(), LLVM::LLVMPointerType::get(rawptrTy.getElementType(), 1), rmemAlloc);

    // type conflict can be handled by source materialzation
    rewriter.replaceOp(op, {virtAddr});
    return mlir::success();
  }
};

class LLVMGlobalReturnOpDisagg : public ConvertOpToRemoteMemPattern<LLVM::ReturnOp> {
  using ConvertOpToRemoteMemPattern<LLVM::ReturnOp>::ConvertOpToRemoteMemPattern;
  LogicalResult matchAndRewrite(LLVM::ReturnOp op, LLVM::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rTypes = op->getAttrOfType<ArrayAttr>("remote_arg_types")) {
      rewriter.replaceOpWithNewOp<GlobalReturnOp>(op, adaptor.getOperands());
      return mlir::success();
    } 
    return mlir::failure();
  }
};

class LLVMUndefDisagg : public ConvertOpToRemoteMemPattern<LLVM::UndefOp> {
  using ConvertOpToRemoteMemPattern<LLVM::UndefOp>::ConvertOpToRemoteMemPattern;
  LogicalResult matchAndRewrite(LLVM::UndefOp op, LLVM::UndefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rTypes = op->getAttrOfType<ArrayAttr>("remote_result_types")) {
      auto newUndef = rewriter.create<UndefOp>(
        op.getLoc(), rTypes[0].dyn_cast<TypeAttr>().getValue()
      );
      rewriter.replaceOp(op, {newUndef});
      return mlir::success();
    } 
    return mlir::failure();
  }
};

class LLVMGlobalDisagg : public ConvertOpToRemoteMemPattern<LLVM::GlobalOp> {
  using ConvertOpToRemoteMemPattern<LLVM::GlobalOp>::ConvertOpToRemoteMemPattern;
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
      llvm::errs() << "Need to specify remote_global_type\n";
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

}

namespace disagg {
class LLVMDisaggregationPass: public LLVMDisaggregationBase<LLVMDisaggregationPass> {
public:
  LLVMDisaggregationPass() = default;
  void runOnOperation() override {
    Operation *op = getOperation();
    rmem::RemoteMemTypeConverter typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateLLVMDisaggPatterns(typeConverter, patterns);
    RemoteMemConversionTarget target(getContext());

    target.addDynamicallyLegalOp<LLVM::LoadOp>([](LLVM::LoadOp op){
      // check if the base ptr is not at address space 0
      if (auto ptrType = op.getAddr().getType().dyn_cast<LLVM::LLVMPointerType>()) {
        if (ptrType.getAddressSpace() != 0) {
          return false;
        }
      }
      return true;
    });

    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateLLVMDisaggPatterns (rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns) {
  patterns.add<
  // LLVMFuncOpDisagg,
  // LLVMCallOpDisagg,
  // LLVMReturnOpDisagg,
  LLVMCallMallocDisagg,
  LLVMGlobalDisagg,
  LLVMUndefDisagg,
  LLVMGlobalReturnOpDisagg
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createLLVMDisaggregationPass() {
  return std::make_unique<LLVMDisaggregationPass>();
}

}
}