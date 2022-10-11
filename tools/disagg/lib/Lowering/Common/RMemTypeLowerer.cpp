#include "Lowering/Common/RMemTypeLowerer.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Transforms/DialectConversion.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMemOps.h"

using namespace mlir;
using namespace mlir::rmem;

RemoteMemTypeLowerer::RemoteMemTypeLowerer(MLIRContext *ctx):
  rmemDialect(ctx->getOrLoadDialect<RemoteMemDialect>()) {
  assert(rmemDialect && "Remote Mem Dialect is not loaded");

  addConversion([&](RemoteMemRefType type) { 
    return convertRemoteMemRefToPtr(type);
  });
  addConversion([&](RemoteMemRefType type) { 
    return convertRemoteMemRefToMemRef(type);
  });
  addConversion([&](LLVM::LLVMPointerType type) -> llvm::Optional<Type> {
    if (auto pointee = convertType(type.getElementType())) {
      return LLVM::LLVMPointerType::get(pointee, type.getAddressSpace());
    }
    return llvm::None;
  });
  addConversion([&](MemRefType type) -> llvm::Optional<Type> {
    if (auto elemType = convertType(type.getElementType())) {
      return MemRefType::get(type.getShape(), elemType, type.getLayout(), type.getMemorySpace());
    }
    return llvm::None;
  });
  addConversion([&](LLVM::LLVMStructType type, 
                  SmallVectorImpl<Type> &results,
                  ArrayRef<Type> callStack) ->
  llvm::Optional<LogicalResult> {
    return convertStructType(type, results, callStack);
  });
  addConversion([&](LLVM::LLVMArrayType type) -> llvm::Optional<Type> {
    if (auto element = convertType(type.getElementType()))
      return LLVM::LLVMArrayType::get(element, type.getNumElements());
    return llvm::None;
  });
  addConversion([&](FunctionType type) {
    return convertFunctionType(type);
  });


  addArgumentMaterialization(
    [&](OpBuilder &builder, Type type, ValueRange inputs, Location loc) -> llvm::Optional<Value> {
      auto convOp = builder.create<UnrealizedConversionCastOp>(loc, type, inputs);
      convOp->setAttr("lower_arg_mat", builder.getBoolAttr(true));
      return convOp.getResult(0);
    }
  );
  addSourceMaterialization([&](OpBuilder &builder, Type resultType,
                               ValueRange inputs,
                               Location loc) -> Optional<Value> {
    auto convOp = builder.create<UnrealizedConversionCastOp>(loc, resultType, inputs);
    convOp->setAttr("lower_src_mat", builder.getBoolAttr(true));
    return convOp.getResult(0);
  });
  addTargetMaterialization([&](OpBuilder &builder, Type resultType,
                               ValueRange inputs,
                               Location loc) -> Optional<Value> {
  auto convOp = builder.create<UnrealizedConversionCastOp>(loc, resultType, inputs);
  convOp->setAttr("lower_tgt_mat", builder.getBoolAttr(true));
  return convOp.getResult(0);
  });

  // default rountine 
  addConversion([&](Type type) {
    return rmem::hasRemoteTarget(type) ? llvm::None : llvm::Optional<Type>(type);
  });
}

MLIRContext &RemoteMemTypeLowerer::getContext() {
  return *getDialect()->getContext();
}

llvm::Optional<Type> RemoteMemTypeLowerer::convertRemoteMemRefToPtr(RemoteMemRefType type) {
  // if is memref remote, try other conversion
  Type eleTy = type.getElementType();
  if (eleTy.isa<MemRefType>()) {
    return llvm::None;
  }
  auto ptrType = eleTy.cast<LLVM::LLVMPointerType>();
  if (ptrType.isOpaque()) {
    return LLVM::LLVMPointerType::get(ptrType.getContext(), 0);
  }
  if (auto pointee = convertType(ptrType.getElementType())) {
    return LLVM::LLVMPointerType::get(pointee, 0);
  }
  return llvm::None;
}

llvm::Optional<Type> RemoteMemTypeLowerer::convertRemoteMemRefToMemRef(RemoteMemRefType type) {
  if (type.getElementType().isa<LLVM::LLVMPointerType>()) 
    return llvm::None;
  return type;
}

llvm::Optional<LogicalResult> RemoteMemTypeLowerer::convertStructType(LLVM::LLVMStructType type, SmallVectorImpl<Type> &results, ArrayRef<Type> callStack) {
  if (!hasRemoteTarget(type)) {
    results.push_back(type);
    return mlir::success();
  }

  if (type.isIdentified()) {
    auto convertedType = LLVM::LLVMStructType::getIdentified(
      type.getContext(), ("_Lowered_" + type.getName()).str());
    unsigned counter = 1;
    while (convertedType.isInitialized()) {
      assert(counter != UINT_MAX && "about to overflow struct naming counter");
      convertedType = LLVM::LLVMStructType::getIdentified(
        type.getContext(), ("_Lowered_" + std::to_string(counter) + type.getName()).str());
    }
    // recursive type, the given type has been converted
    if (llvm::count(callStack, type) > 1) {
      results.push_back(convertedType);
      return mlir::success();
    }

    // first encounter
    SmallVector<Type> convertedElementTypes;
    convertedElementTypes.reserve(type.getBody().size());
    if (failed(convertTypes(type.getBody(), convertedElementTypes)))
      return llvm::None;
    if (failed(convertedType.setBody(convertedElementTypes, type.isPacked())))
      return mlir::failure();
    results.push_back(convertedType);
    return mlir::success();
  } else {
    SmallVector<Type> convertedElementTypes; 
    convertedElementTypes.reserve(type.getBody().size());
    if (failed(convertTypes(type.getBody(), convertedElementTypes))) 
      return llvm::None;
    auto convertedType = LLVM::LLVMStructType::getLiteral(type.getContext(), convertedElementTypes, type.isPacked());
    results.push_back(convertedType);
    return success();
  }
  return llvm::None;
}

Type RemoteMemTypeLowerer::convertFunctionType(FunctionType functionType) {
  SignatureConversion conversion(functionType.getNumInputs());
  Type converted = convertFunctionSignature(functionType, conversion);
  return converted;
}

Type RemoteMemTypeLowerer::convertFunctionSignature(FunctionType funcTy, SignatureConversion &result) {
  for (auto &en : llvm::enumerate(funcTy.getInputs())) {
    Type type = en.value();
    SmallVector<Type, 4> converted;
    if (Type tt = convertCallingConventionType(type)) {
      converted.push_back(tt);
      result.addInputs(en.index(), converted);
    } else {
      return {};
    }
  }

  SmallVector<Type, 4> resultTypes;
  for (Type t : funcTy.getResults()) {
    if (Type tt = convertCallingConventionType(t))
      resultTypes.push_back(tt);
    else
      return {}; 
  }
  return FunctionType::get(&getContext(), result.getConvertedTypes(), resultTypes);
}

Type RemoteMemTypeLowerer::convertCallingConventionType(Type type) {
  return convertType(type);
}
