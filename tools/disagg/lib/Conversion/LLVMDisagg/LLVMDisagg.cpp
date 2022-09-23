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

class LLVMFuncOpDisagg : public ConvertOpToRemoteMemPattern<LLVM::LLVMFuncOp> {
  using ConvertOpToRemoteMemPattern<LLVM::LLVMFuncOp>::ConvertOpToRemoteMemPattern;

  LLVM::LLVMFuncOp disaggLLVMFuncSignature(LLVM::LLVMFuncOp funcOp, LLVM::LLVMFuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const {

    TypeConverter::SignatureConversion result(funcOp.getNumArguments());
    auto newFuncType = getTypeConverter()->convertLLVMFunctionSignature(funcOp.getFunctionType(), funcOp.isVarArg(), result);
    if (!newFuncType)
      return nullptr;
    
    SmallVector<NamedAttribute, 4> attributes;
    // for (const auto &attr : funcOp->getAttrs()) {
    //   if (attr.getName() == SymbolTable::getSymbolAttrName() ||
    //     attr.getName() == FunctionOpInterface::getTypeAttrName())
    //   continue;
    //   attributes.push_back(attr);
    // }
    // auto isVarArg = rewriter.getNamedAttr("func.varargs", rewriter.getBoolAttr(funcOp.isVarArg()));
    // attributes.push_back(isVarArg);
    auto newFuncOp = rewriter.create<LLVM::LLVMFuncOp>(
      funcOp.getLoc(), funcOp.getName(), newFuncType, funcOp.getLinkage(), funcOp.getDsoLocal(), attributes 
    );

    // move func body to new funcop
    rewriter.inlineRegionBefore(funcOp.getBody(), newFuncOp.getBody(), newFuncOp.end());
    // if (failed(rewriter.convertRegionTypes(&newFuncOp.getBody(), *getTypeConverter(), &result)))
      // return nullptr;
    rewriter.applySignatureConversion(&newFuncOp.getBody(), result, getTypeConverter());
    return newFuncOp;
  }

  LogicalResult matchAndRewrite(LLVM::LLVMFuncOp op, LLVM::LLVMFuncOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto newFuncOp = disaggLLVMFuncSignature(op, adaptor, rewriter);
    // newFuncOp.dump();
    if (!newFuncOp)
      return mlir::failure();
    rewriter.eraseOp(op);
    return mlir::success();  
  }
};

class LLVMCallOpDisagg : public ConvertOpToRemoteMemPattern<LLVM::CallOp> {
  using ConvertOpToRemoteMemPattern<LLVM::CallOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(LLVM::CallOp op, typename LLVM::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // Pack raw remote memref to llvm.struct
    SmallVector<Value, 4> newOperandTypes;
    newOperandTypes.reserve(op.getNumOperands());
    for (auto v : adaptor.getOperands()) {
      if (v.getType().isa<RemoteMemRefType>()) {
        auto packedTy = LLVM::LLVMStructType::getLiteral(getContext(), {v.getType()});
        Value llvmTyValue = rewriter.create<PackToLLVMStruct>(op.getLoc(), packedTy, v);
        newOperandTypes.push_back(llvmTyValue);
      } else {
        newOperandTypes.push_back(v);
      }
    }

    // Pack result if is remote memref
    Type newResultType = nullptr;
    if (op.getNumResults() > 0) {
      newResultType = getTypeConverter()->convertFunctionResult(op.getResultTypes().front(), true);
    }
    auto newCallOp = rewriter.create<LLVM::CallOp>(
      op.getLoc(), newResultType ? TypeRange(newResultType) : TypeRange(), newOperandTypes, op->getAttrs()
    );
    rewriter.replaceOp(op, newCallOp.getResults());
    return mlir::success();
  }
};

class LLVMReturnOpDisagg : public ConvertOpToRemoteMemPattern<LLVM::ReturnOp> {
  using ConvertOpToRemoteMemPattern<LLVM::ReturnOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(LLVM::ReturnOp op, LLVM::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Value returnValue = adaptor.getOperands().front();
    if (returnValue.getType().isa<RemoteMemRefType>()) {
      auto packedTy = LLVM::LLVMStructType::getLiteral(getContext(), {returnValue.getType()});
      returnValue = rewriter.create<PackToLLVMStruct>(op.getLoc(), packedTy, returnValue);
    }
    rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(
      op,
      TypeRange(),
      returnValue,
      op->getAttrs()
    );
    return mlir::success();
  }
};

class LLVMCallMallocDisagg : public ConvertOpToRemoteMemPattern<LLVM::CallOp> {
  using ConvertOpToRemoteMemPattern<LLVM::CallOp>::ConvertOpToRemoteMemPattern;

  LogicalResult matchAndRewrite(LLVM::CallOp op, LLVM::CallOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto calleeName = adaptor.getCallee();
    if (calleeName && !(calleeName.getValue().equals("malloc")))
      return mlir::failure();
    // Value memSpace = rewriter.create<LLVM::ConstantOp>(op.getLoc(), IntegerType::get(op.getContext(), 64), rewriter.getUI32IntegerAttr(0));
    Type resultType = typeConverter->convertType(op.getResult(0).getType());
    Value rmemAlloc = rewriter.create<LLVMMallocOp>(op.getLoc(), resultType, adaptor.getOperands().front());

    // type conflict can be handled by source materialzation
    rewriter.replaceOp(op, {rmemAlloc});
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

    // add illegal function op

    // Illegal llvm.func with ptr/memref signature
    target.addDynamicallyLegalOp<LLVM::LLVMFuncOp>([](LLVM::LLVMFuncOp op) {
      llvm::StringRef name = op.getName();
      if (!rmem::hasRemotableSignature(op) || 
          name.equals("malloc") || 
          allowedFuncSyms.find(name) != allowedFuncSyms.end())
        return true;
      return false;
    });
    target.addDynamicallyLegalOp<LLVM::CallOp>([](LLVM::CallOp op){
      // only checks direct call now
      // TODO:: handle indirect call
      if (!rmem::hasRemotableSignature(op)) return true;
      if (auto calleeSym = op.getCallee()) {
        if (allowedFuncSyms.find(*calleeSym) != allowedFuncSyms.end()) {
          // llvm::errs() << *calleeSym << "\n"; 
          return true;
        } 
      }
      return false;
    });
    target.addDynamicallyLegalOp<LLVM::ReturnOp>([](LLVM::ReturnOp op) { 
      return !rmem::hasRemotableSignature(op);
    });

    if (failed(applyPartialConversion(op, target, std::move(patterns)))) {
      signalPassFailure();
    }
  }
};

void populateLLVMDisaggPatterns (rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns) {
  patterns.add<
  LLVMFuncOpDisagg,
  LLVMCallOpDisagg,
  LLVMReturnOpDisagg,
  LLVMCallMallocDisagg
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createLLVMDisaggregationPass() {
  return std::make_unique<LLVMDisaggregationPass>();
}

}
}