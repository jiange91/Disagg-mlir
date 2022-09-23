#include "Dialect/RemoteMemTypes.h"
#include "TypeDetail.h"
#include "Dialect/RemoteMem.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"

using namespace mlir;
using namespace mlir::rmem;

#define GET_TYPEDEF_CLASSES
#include "Dialect/RemoteMemOpsTypes.cpp.inc"

bool RemoteMemRefType::isValidElementType(Type elementType) {
  if (!elementType) return false;
  if (!elementType.isa<mlir::MemRefType, mlir::LLVM::LLVMPointerType>()) return false;
  return true;
}

LogicalResult RemoteMemRefType::verify(function_ref<InFlightDiagnostic()> emitError, Type elementType) { 
  if (!RemoteMemRefType::isValidElementType(elementType)) 
    return emitError() << "invalid pointer elementType: " << elementType;
  return success();
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
//   printer << "rmref<";
//   printer.printStrippedAttrOrType(getElementType());
//   printer << ">";
// }

void RemoteMemDialect::registerTypes() {
  addTypes<
#define GET_TYPEDEF_LIST
#include "Dialect/RemoteMemOpsTypes.cpp.inc"
  >();
}