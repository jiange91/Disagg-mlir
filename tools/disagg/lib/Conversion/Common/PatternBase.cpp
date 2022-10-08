#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "Conversion/Common/PatternBase.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMemOps.h"
#include "Dialect/FunctionUtils.h"

#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

static bool isRemotableTypeImpl(Type type, SetVector<Type> &callStack) {
  if (callStack.contains(type)) return true;
  callStack.insert(type);
  auto stackGurard = llvm::make_scope_exit([&] { callStack.pop_back(); });

  auto isRemotableHandler = [&](Type type) {
    return isRemotableTypeImpl(type, callStack);
  };

  return llvm::TypeSwitch<Type, bool>(type)
  .Case<LLVM::LLVMStructType>([&](auto structType) {
    return llvm::any_of(structType.getBody(), isRemotableHandler);
  })
  .Case<LLVM::LLVMPointerType>([](Type){ return true; })
  .Case<
    VectorType,
    LLVM::LLVMFixedVectorType,
    LLVM::LLVMScalableVectorType,
    LLVM::LLVMArrayType
    >([&](auto containerType) {
      return isRemotableHandler(containerType.getElementType());
    })
  .Case<MemRefType>([](Type){ return true; })
  .Default([](Type){ return false; });
}

bool mlir::rmem::isRemotableType(Type t) {
  SetVector<Type> callStack;
  return isRemotableTypeImpl(t, callStack);
}

// check if a function type contains remotable type in their signature
bool mlir::rmem::hasRemotableSignature(Operation *op) {
  if (auto funcOp = dyn_cast<FunctionOpInterface>(op)) {
    bool hasRemotableArgs = any_of(funcOp.getArgumentTypes(), isRemotableType);
    bool hasRemotableResults = any_of(funcOp.getResultTypes(), isRemotableType);
    return hasRemotableArgs || hasRemotableResults;
  }
  if (auto callOp = dyn_cast<LLVM::CallOp>(op)) {
    bool hasRemotableOperands = any_of(callOp.getOperandTypes(), isRemotableType);
    bool hasRemotableResults = any_of(callOp.getResultTypes(), isRemotableType);
    return hasRemotableOperands || hasRemotableResults;
  }
  if (auto callOp = dyn_cast<func::CallOp>(op)) {
    bool hasRemotableOperands = any_of(callOp.getOperandTypes(), isRemotableType);
    bool hasRemotableResults = any_of(callOp.getResultTypes(), isRemotableType);
    return hasRemotableOperands || hasRemotableResults;
  }
  if (auto returnOp = dyn_cast<func::ReturnOp>(op)) {
    return op->getNumOperands() && any_of(op->getOperandTypes(), isRemotableType);
  }
  if (auto returnOp = dyn_cast<LLVM::ReturnOp>(op)) {
    return op->getNumOperands() && any_of(op->getOperandTypes(), isRemotableType);
  }
  return false;
}

ConvertToRemoteMemPattern::ConvertToRemoteMemPattern(StringRef rootOpName, MLIRContext *ctx, RemoteMemTypeConverter &typeConverter, PatternBenefit benefit): ConversionPattern(typeConverter, rootOpName, benefit, ctx) {}

rmem::RemoteMemDialect &ConvertToRemoteMemPattern::getDialect() const {
  return *getTypeConverter()->getDialect();
}

RemoteMemTypeConverter *ConvertToRemoteMemPattern::getTypeConverter() const {
  return ConversionPattern::getTypeConverter<RemoteMemTypeConverter>();
}
