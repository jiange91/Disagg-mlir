#ifndef PL_REMOTEMEMREF_H
#define PL_REMOTEMEMREF_H

#include "mlir/IR/Dialect.h"
#include "Dialect/RemoteMemTypes.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/DataLayoutInterfaces.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "llvm/Support/PointerLikeTypeTraits.h"
#include "llvm/ADT/StringRef.h"

namespace mlir {
class Value;
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

enum class CacheType {
  Ring_Cache = 0,
  Ring_Direct,
  Normal,
  UFltd
};

class LocalCache {
public:
  LocalCache() = default;
  LocalCache(CacheType type, int64_t lbase, Value rbase, StringRef baseSym, Type eleType, size_t rOfst, int64_t rSize, size_t blockSize, size_t nBlocks): 
    type(type), lbase(lbase), rbase(rbase), baseSym(baseSym), eleType(eleType), rOfst(rOfst), rSize(rSize), blockSize(blockSize), nBlocks(nBlocks) {}

  LocalCache(ArrayAttr attr, 
    DenseMap<StringRef, Value> &access_mem_base_pool);
  ArrayAttr toAttr(OpBuilder &builder);

  CacheType type;
  int64_t lbase;
  mlir::Value rbase;
  StringRef baseSym;
  mlir::Type eleType;

  size_t rOfst;
  int64_t rSize; // memory represented by this cache
  size_t blockSize; // or cache line size
  size_t nBlocks;
};

}
}

#include "Dialect/RemoteMemOpsEnums.h.inc"
#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.h.inc"

#include "Dialect/RemoteMemOpsDialect.h.inc"


#endif
