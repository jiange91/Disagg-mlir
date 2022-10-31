#ifndef PL_REMOTEMEMREF_H
#define PL_REMOTEMEMREF_H

#include "mlir/IR/Dialect.h"
#include "Dialect/RemoteMemTypes.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/DataLayoutInterfaces.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "llvm/Support/PointerLikeTypeTraits.h"

namespace mlir {
class Type;
namespace rmem {
class RemoteMemDialect;
class RemoteMemRefType;

}
}

#include "Dialect/RemoteMemOpsEnums.h.inc"
#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.h.inc"

#include "Dialect/RemoteMemOpsDialect.h.inc"


#endif
