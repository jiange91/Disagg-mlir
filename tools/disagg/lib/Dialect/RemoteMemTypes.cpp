#include "Dialect/RemoteMemTypes.h"
#include "TypeDetail.h"
#include "Dialect/RemoteMem.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

#define GET_TYPEDEF_CLASSES
#include "Dialect/RemoteMemOpsTypes.cpp.inc"

bool RemoteMemRefType::isValidElementType(Type elementType) {
  if (!elementType) return false;
  if (!elementType.isa<mlir::MemRefType, mlir::LLVM::LLVMPointerType>()) return false;
  return true;
}

LogicalResult RemoteMemRefType::verify(function_ref<InFlightDiagnostic()> emitError, Type elementType, unsigned canRemote) { 
  if (!RemoteMemRefType::isValidElementType(elementType)) 
    return emitError() << "invalid pointer elementType: " << elementType;
  return success();
}

// Recursively find if a type contains remote memref
static inline bool hasRemoteTargetImpl(Type type, SetVector<Type> &callStack) {
  if (callStack.contains(type)) return false;
  callStack.insert(type);
  auto stackGurard = llvm::make_scope_exit([&] { callStack.pop_back(); });
  auto hasRemoteTargetHandler = [&](Type type) {
    return hasRemoteTargetImpl(type, callStack);
  };

  return llvm::TypeSwitch<Type, bool>(type)
  .Case<RemoteMemRefType>([](RemoteMemRefType) { return true; })
  .Case<LLVM::LLVMStructType>([&](auto structType) {
    return llvm::any_of(structType.getBody(), hasRemoteTargetHandler);
  })
  .Case<LLVM::LLVMPointerType>([&](LLVM::LLVMPointerType ptrType) {
    if (ptrType.isOpaque()) return false;
    return hasRemoteTargetHandler(ptrType.getElementType());
  })
  .Case<FunctionType>([&](FunctionType funcType) {
    return llvm::any_of(funcType.getResults(), hasRemoteTargetHandler) ||
           llvm::any_of(funcType.getInputs(), hasRemoteTargetHandler);
  })
  .Case<
        VectorType,
        LLVM::LLVMFixedVectorType,
        LLVM::LLVMScalableVectorType,
        LLVM::LLVMArrayType
      >([&](auto containerType) {
      return hasRemoteTargetHandler(containerType.getElementType());
  })
  .Case<MemRefType>([&](MemRefType memrefType) {
    return hasRemoteTargetHandler(memrefType.getElementType());
  })
  .Default([](Type) { return false; });
}

bool mlir::rmem::hasRemoteTarget(Type type) {
  SetVector<Type> callStack;
  return hasRemoteTargetImpl(type, callStack);
}

// Type RemoteMemRefType::parse(AsmParser &parser) {
//   FailureOr<Type> elemType;
//   SMLoc loc = parser.getCurrentLocation();
//   // parse '<'
//   if (parser.parseLess()) return {};
//   elemType = mlir::FieldParser<Type>::parse(parser);
//   if (failed(elemType)) {
//     parser.emitError(parser.getCurrentLocation(), "failed to parse element type of this remote memref type");
//     return {};
//   } 
//   // parse '>'
//   if (parser.parseGreater()) return {};
//   assert(succeeded(elemType));
//   return parser.getChecked<RemoteMemRefType>(loc, parser.getContext(), *elemType);
// }

// void RemoteMemRefType::print(AsmPrinter &printer) const {
//   printer << "<";
//   printer.printStrippedAttrOrType(getElementType());
//   printer << ">";
// }



void RemoteMemDialect::registerTypes() {
  addTypes<
#define GET_TYPEDEF_LIST
#include "Dialect/RemoteMemOpsTypes.cpp.inc"
  >();
}