#ifndef PL_REMOTEMEMREF_H
#define PL_REMOTEMEMREF_H

#include "mlir/IR/Dialect.h"
#include "Dialect/RemoteMemTypes.h"
#include "mlir/Interfaces/CastInterfaces.h"
#include "mlir/Interfaces/DataLayoutInterfaces.h"
#include "mlir/Interfaces/SideEffectInterfaces.h"
#include "mlir/Interfaces/ViewLikeInterface.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "llvm/Support/PointerLikeTypeTraits.h"
#include "llvm/ADT/StringRef.h"

namespace mlir {
class Value;
class Type;
namespace rmem {
class RemoteMemDialect;
class RemoteMemRefType;

enum ibv_wr_opcode {
	IBV_WR_RDMA_WRITE,
	IBV_WR_RDMA_WRITE_WITH_IMM,
	IBV_WR_SEND,
	IBV_WR_SEND_WITH_IMM,
	IBV_WR_RDMA_READ,
	IBV_WR_ATOMIC_CMP_AND_SWP,
	IBV_WR_ATOMIC_FETCH_AND_ADD,
	IBV_WR_LOCAL_INV,
	IBV_WR_BIND_MW,
	IBV_WR_SEND_WITH_INV,
	IBV_WR_TSO,
	IBV_WR_DRIVER1,
};

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
  LocalCache(CacheType type, size_t lOfst, Value rbase, StringRef baseSym, Type eleType, size_t rOfst, int64_t rSize, size_t blockSize, size_t nBlocks): 
    type(type), lOfst(lOfst), rbase(rbase), baseSym(baseSym), eleType(eleType), rOfst(rOfst), rSize(rSize), blockSize(blockSize), nBlocks(nBlocks) {}

  // without initializing rbase
  LocalCache(ArrayAttr attr);

  // initialize rbase
  LocalCache(ArrayAttr attr, 
    DenseMap<StringRef, Value> &access_mem_base_pool);
    
  ArrayAttr toAttr(OpBuilder &builder);

  CacheType type;
  size_t lOfst;
  mlir::Value rbase;
  StringRef baseSym;
  mlir::Type eleType;

  size_t rOfst;
  int64_t rSize; // memory represented by this cache
  size_t blockSize; // in number of eles 
  size_t nBlocks;
};

}
}

#include "Dialect/RemoteMemOpsEnums.h.inc"
#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.h.inc"

#include "Dialect/RemoteMemOpsDialect.h.inc"


#endif
