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

class RingCache {
public:
  RingCache() = default;
  RingCache(size_t blockSize, size_t nBlocks, size_t totalSize, mlir::Type eleType, size_t eleTypeSize); 
  size_t blockSize;
  size_t nBlocks;
  size_t totalSize;
  size_t perBlock;

  mlir::Value lbase;
  mlir::Value rbase;
  mlir::Value tags;
  mlir::Type eleType;

  mlir::Value readID;
  mlir::Value writeID;
};

}
}

#include "Dialect/RemoteMemOpsEnums.h.inc"
#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.h.inc"

#include "Dialect/RemoteMemOpsDialect.h.inc"


#endif
