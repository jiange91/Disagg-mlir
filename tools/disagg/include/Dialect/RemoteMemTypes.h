#ifndef REMOTE_MEM_REF_TYPES
#define REMOTE_MEM_REF_TYPES

#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/Interfaces/CallInterfaces.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "llvm/ADT/TypeSwitch.h"

namespace mlir {
namespace rmem {
// find if the type contains remote memref type
// this function is used to detect if need type conversion during the lowering process
bool hasRemoteTarget(Type type);
}
}

#define GET_TYPEDEF_CLASSES
#include "Dialect/RemoteMemOpsTypes.h.inc"

#endif