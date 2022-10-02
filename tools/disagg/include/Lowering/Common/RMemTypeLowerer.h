#ifndef LOWER_REMOTE_MEM_TYPE_CONVERTER_H
#define LOWER_REMOTE_MEM_TYPE_CONVERTER_H

#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Conversion/LLVMCommon/TypeConverter.h"

namespace mlir {
namespace rmem {
class RemoteMemDialect;
class RemoteMemRefType;
class RemoteMemTypeLowerer : public TypeConverter {
public:
  using TypeConverter::convertType;
  RemoteMemTypeLowerer(MLIRContext *ctx);

  MLIRContext &getContext();
  RemoteMemDialect *getDialect() {
    return rmemDialect;
  }

  Type convertFunctionSignature(FunctionType funcTy, SignatureConversion &result);
  Type convertCallingConventionType(Type type);
protected:
  RemoteMemDialect *rmemDialect;
private:
  llvm::Optional<Type> convertRemoteMemRefToPtr(RemoteMemRefType type);

  // TODO: impl
  llvm::Optional<Type> convertRemoteMemRefToMemRef(RemoteMemRefType type);

  llvm::Optional<LogicalResult> convertStructType(LLVM::LLVMStructType type, SmallVectorImpl<Type> &results, ArrayRef<Type> callStack);

  Type convertFunctionType(FunctionType funcTy);
};
}
}

#endif