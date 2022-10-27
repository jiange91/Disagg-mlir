#ifndef MLIR_REMOTE_MEM_OPS_H
#define MLIR_REMOTE_MEM_OPS_H

#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/OwningOpRef.h"
#include "mlir/IR/RegionKindInterface.h"
#include "mlir/IR/SymbolTable.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/DataLayoutInterfaces.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "llvm/Support/PointerLikeTypeTraits.h"

#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMemOpsEnums.h.inc"
#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.h.inc"

#endif