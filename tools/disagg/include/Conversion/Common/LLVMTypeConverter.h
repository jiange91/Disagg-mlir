#ifndef CONVERSION_LLVMTYPE_REMOTEMEM_CONVERTER_H
#define CONVERSION_LLVMTYPE_REMOTEMEM_CONVERTER_H

#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Conversion/LLVMCommon/TypeConverter.h"


namespace mlir {
namespace rmem {
class RemoteMemDialect;
// special converter that converts llvm.ptr to llvm.struct<llvm.ptr>
class LLVMTypeConverter : public TypeConverter {
public:
  using TypeConverter::convertType;
  RemoteMemTypeConverter(MLIRContext *ctx);
  FunctionType convertFunctionSignature(FunctionType funcTy, SignatureConversion &result);
  FunctionType convertLLVMFunctionSignature(LLVM::LLVMFunctionType funcTy, SignatureConversion &result);

  // Specialized conversion routine for function inputs
  Type convertCallingConventionType(Type type, bool needLLVMComp = false);

  // Specialized conversion routine for function results
  Type convertFunctionResult(Type type, bool needLLVMComp = false);
  MLIRContext &getContext();
  rmem::RemoteMemDialect *getDialect() { return rmemDialect; };

  LogicalResult funcArgTypeConverter(Type type, SmallVectorImpl<Type> &result, bool needLLVMComp = false);

  LLVMTypeConverter *getllvmTypeConverter() { return &llvmTypeConverter; };

protected:
  rmem::RemoteMemDialect *rmemDialect;

private:
  // Routine that recursively convert llvm.ptr to rmref
  llvm::Optional<Type> convertLLVMPointerType(LLVM::LLVMPointerType type);
  
  // Convert struct type
  llvm::Optional<LogicalResult> convertLLVMStructType(LLVM::LLVMStructType type, SmallVectorImpl<Type> &results, ArrayRef<Type> callStack);

  // Convert LLVM array
  llvm::Optional<Type> convertLLVMArrayType(LLVM::LLVMArrayType type);

  // Convert FunctionType
  llvm::Optional<Type> convertFunctionType(FunctionType type);

  // Convert LLVM FunctionType
  llvm::Optional<Type> convertLLVMFunctionType(LLVM::LLVMFunctionType type);

  // Convert MemRefType (recursive convert contained elementType if has nested llvm.ptr |struct | memref)
  llvm::Optional<Type> convertMemRefType(MemRefType type);

  // For memref lowering logic reuse 
  LLVMTypeConverter llvmTypeConverter;
};
}
}



#endif