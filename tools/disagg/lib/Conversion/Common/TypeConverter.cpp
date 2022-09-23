#include "Conversion/Common/TypeConverter.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMemOps.h"

using namespace mlir;
using namespace mlir::rmem;

RemoteMemTypeConverter::RemoteMemTypeConverter(MLIRContext *ctx): rmemDialect(ctx->getOrLoadDialect<rmem::RemoteMemDialect>()),
  llvmTypeConverter(ctx) {
  assert(rmemDialect && "RemoteMem Dialect is not registered");

  /* Register conversions for both types */
  addConversion(
    // Base case, add before the following conversion
    [](Type type) { return type; }
  );
  addConversion(
    [&](LLVM::LLVMPointerType type) { return convertLLVMPointerType(type); });
  addConversion(
    [&](LLVM::LLVMStructType type, SmallVectorImpl<Type> &results, ArrayRef<Type> callStack) { return convertLLVMStructType(type, results, callStack); });
  addConversion(
    [&](LLVM::LLVMArrayType type) { return convertLLVMArrayType(type); });
  addConversion(
    [&](LLVM::LLVMFunctionType type) { return convertLLVMFunctionType(type); });
  addConversion(
    [&](FunctionType type) { return convertFunctionType(type); });
  addConversion(
    [&](MemRefType type) { return convertMemRefType(type); });
  
  // convert block argument from remotememref to raw pointer / memref
  addArgumentMaterialization(
    [&](OpBuilder &builder, Type type, ValueRange inputs, Location loc) -> llvm::Optional<Value> {
      if (inputs.size() != 1)
        return llvm::None;

      llvm::outs() << "-- Arg mat -- \n";
      llvm::outs() << "-vals:"; 
      for (auto v: inputs) {
        v.print(llvm::outs() << "\n");
      }
      llvm::outs() << "\n-type: ";
      type.print(llvm::outs());
      llvm::outs() << "\n";

      // return builder.create<UnrealizedConversionCastOp>(loc, type, inputs).getResult(0);

      Value unpacked = inputs[0];
      if (auto t = unpacked.getType().dyn_cast<LLVM::LLVMStructType>()) {
        return builder.create<UnpackFromLLVMStruct>(loc, t.getBody()[0], inputs[0]).getResult();
      }
      return llvm::None;
      // return builder.create<MaterializeOp>(loc, type, unpacked).getResult();
    }
  );
  addSourceMaterialization([&](OpBuilder &builder, Type resultType,
                               ValueRange inputs,
                               Location loc) -> Optional<Value> {
    if (inputs.size() != 1) return llvm::None;

    llvm::outs() << "-- Src mat -- \n";
    llvm::outs() << "-vals:"; 
    for (auto v: inputs) {
      v.print(llvm::outs() << "\n");
    }
    llvm::outs() << "\n-type: ";
    resultType.print(llvm::outs());
    llvm::outs() << "\n";

    Value unpacked = inputs[0];
      if (auto t = inputs[0].getType().dyn_cast<LLVM::LLVMStructType>()) {
        unpacked = builder.create<UnpackFromLLVMStruct>(loc, t.getBody()[0], inputs[0]);
      }
      return builder.create<MaterializeOp>(loc, resultType, unpacked).getResult();
  });
  addTargetMaterialization([&](OpBuilder &builder, Type resultType,
                               ValueRange inputs,
                               Location loc) -> Optional<Value> {
    if (inputs.size() != 1) return llvm::None;

    llvm::outs() << "-- Target mat -- \n";
    llvm::outs() << "-vals:"; 
    for (auto v: inputs) {
      v.print(llvm::outs() << "\n");
    }
    llvm::outs() << "\n-type: ";
    resultType.print(llvm::outs());
    llvm::outs() << "\n";

    return builder.create<UnrealizedConversionCastOp>(loc, resultType, inputs)
        .getResult(0);
    // Value unpacked = inputs[0];
    // if (auto t = inputs[0].getType().dyn_cast<LLVM::LLVMStructType>()) {
    //     unpacked = builder.create<UnpackFromLLVMStruct>(loc, t.getBody()[0], inputs[0]);
    //   } 
    // return builder.create<VirtualizeOp>(loc, resultType, unpacked).getResult();
    });
}

// Function Signature (inputs, results) are converted to remote memref
FunctionType RemoteMemTypeConverter::convertFunctionSignature(FunctionType funcTy, SignatureConversion &result) {
  // convert function types one-by-one
  for (auto &en : llvm::enumerate(funcTy.getInputs())) {
    Type type = en.value();
    SmallVector<Type, 4> convertedTy;
    if (failed(funcArgTypeConverter(type, convertedTy))) {
      llvm::errs() << "Unable to builtin function signature\n";
      return {};
    }
    result.addInputs(en.index(), convertedTy);
  }

  SmallVector<Type, 4> resultTypes;
  for (auto &on : llvm::enumerate(funcTy.getResults())) {
    auto converted = convertFunctionResult(on.value());
    resultTypes.push_back(converted);
  }
  return FunctionType::get(&getContext(), result.getConvertedTypes(), resultTypes);
}


LLVM::LLVMFunctionType RemoteMemTypeConverter::convertLLVMFunctionSignature(LLVM::LLVMFunctionType funcTy, bool isVariadic, SignatureConversion &result) {
  for (auto &en : llvm::enumerate(funcTy.getParams())) {
    Type type = en.value();
    SmallVector<Type, 4> convertedTy;
    if (failed(funcArgTypeConverter(type, convertedTy, true/* need llvm compatible */))) {
      llvm::errs() << "Unable to convert llvm function signature\n";
      return {};
    }
    result.addInputs(en.index(), convertedTy);
  }
  auto convertedResult = convertFunctionResult(funcTy.getReturnType(), true);
  if (!convertedResult) return {};

  return LLVM::LLVMFunctionType::get(convertedResult, result.getConvertedTypes(), isVariadic);
}

llvm::Optional<Type> RemoteMemTypeConverter::convertLLVMPointerType(LLVM::LLVMPointerType type) {
  if (type.isOpaque()) 
    return rmem::RemoteMemRefType::get(type);
  if (auto pointee = convertType(type.getElementType())) {
    LLVM::LLVMPointerType convertedPointer = LLVM::LLVMPointerType::get(pointee, type.getAddressSpace());
    return rmem::RemoteMemRefType::get(convertedPointer);
  }
  return llvm::None;
}

  llvm::Optional<LogicalResult> RemoteMemTypeConverter::convertLLVMStructType(LLVM::LLVMStructType type, SmallVectorImpl<Type> &results, ArrayRef<Type> callStack) {
  if (type.isIdentified()) {
    auto convertedType = LLVM::LLVMStructType::getIdentified(type.getContext(), ("_Remoted_" + type.getName()).str());
    unsigned counter = 1;
    while (convertedType.isInitialized()) {
      assert(counter != UINT_MAX && "about to overflow struct naming counter in conversion");
      convertedType = LLVM::LLVMStructType::getIdentified(type.getContext(), ("_Remoted_Counter#" + std::to_string(counter) + "_" + type.getName()).str());
    }
    if (llvm::count(callStack, type) > 1) {
      // recursive type
      results.push_back(convertedType);
      return mlir::success();
    }

    // Convert body
    SmallVector<Type> convertedElemTypes;
    convertedElemTypes.reserve(type.getBody().size());
    if (failed(convertTypes(type.getBody(), convertedElemTypes))) 
      return llvm::None;
    if (failed(convertedType.setBody(convertedElemTypes, type.isPacked())))
      return mlir::failure();
    results.push_back(convertedType);
    return mlir::success();
  }

  // Unamed Type, Get new literal
  SmallVector<Type> convertedElemTypes;
  convertedElemTypes.reserve(type.getBody().size());
  if (failed(convertTypes(type.getBody(), convertedElemTypes))) 
    return llvm::None;
  results.push_back(LLVM::LLVMStructType::getLiteral(type.getContext(), convertedElemTypes, type.isPacked()));
  return mlir::success();
}

llvm::Optional<Type> RemoteMemTypeConverter::convertLLVMArrayType(LLVM::LLVMArrayType type) {
  if (auto element = convertType(type.getElementType()))
    return LLVM::LLVMArrayType::get(element, type.getNumElements());
  return llvm::None;
}

llvm::Optional<Type> RemoteMemTypeConverter::convertFunctionType(FunctionType type) {
  SignatureConversion conversion(type.getNumInputs());
  if (auto converted = convertFunctionSignature(type, conversion))
    return converted;
  return llvm::None;
}

llvm::Optional<Type> RemoteMemTypeConverter::convertLLVMFunctionType(LLVM::LLVMFunctionType type) {
  SignatureConversion conversion(type.getNumParams());
  if (auto converted = convertLLVMFunctionSignature(type, type.isVarArg(), conversion))
    return converted;
  return llvm::None;
}

llvm::Optional<Type> RemoteMemTypeConverter::convertMemRefType(MemRefType type) {
  if (Type elemType = convertType(type.getElementType())) {
    MemRefType convertedMemRef = MemRefType::get(type.getShape(), elemType, type.getLayout(), type.getMemorySpace());
    return rmem::RemoteMemRefType::get(convertedMemRef);
  }
  return llvm::None;
}

LogicalResult RemoteMemTypeConverter::funcArgTypeConverter(Type type, SmallVectorImpl<Type> &result, bool needLLVMComp) {
  auto rmemTy = convertCallingConventionType(type, needLLVMComp);
  if (!rmemTy)
    return failure();
  result.push_back(rmemTy);
  return success();
}

Type RemoteMemTypeConverter::convertCallingConventionType(Type type, bool needLLVMComp) {
  Type remotedType = convertType(type);
  if (needLLVMComp && remotedType.isa<RemoteMemRefType>()) {
    remotedType = LLVM::LLVMStructType::getLiteral(type.getContext(), {remotedType});
  }
  return remotedType;
}

Type RemoteMemTypeConverter::convertFunctionResult(Type type, bool needLLVMComp) {
  return convertCallingConventionType(type, needLLVMComp);
}

MLIRContext &RemoteMemTypeConverter::getContext() {
  return *getDialect()->getContext();
}