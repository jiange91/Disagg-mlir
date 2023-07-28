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
#include <unordered_map>

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

struct Cache {
  // Cache(OpBuilder &_rewriter) : rewriter(_rewriter) {}
  Cache() = default;
  Cache(int cache_id, int slots, int qid, uint64_t token_off, uint64_t raddr_off, uint64_t laddr_off, uint64_t line_size): 
    cache_id(cache_id), slots(slots), qid(qid),
    token_off(token_off), raddr_off(raddr_off), laddr_off(laddr_off), line_size(line_size) {}
  virtual ~Cache() = default;

  // configs
  int cache_id;
  int slots;
  int qid;

  uint64_t token_off, raddr_off, laddr_off;
  uint64_t line_size;

  // Global Symbols
  Value token_base, remote_base;

  // cache config
  std::optional<int> nprefetch;
  Value base;

  // c++ APIs
  std::set<std::string> api_names;
  StringRef getAPIRef(std::string t) {
    auto [it, ok] = api_names.insert(t);
    return *it;
  }

  // virtual function
  virtual Value select(OpBuilder &rewriter, Value tag, mlir::Location loc) = 0;

  // addr: llvm.ptr
  Value tag(OpBuilder &rewriter, Value addr, mlir::Location loc) {
    return rewriter.create<arith::AndIOp>(
        loc, rewriter.getI64Type(), 
        rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), addr),
        rewriter.create<arith::ConstantIntOp>(loc, ~(line_size - 1), 64));
  }

  void request(OpBuilder &rewriter, ModuleOp mop, Value offset, Value tag, mlir::Location loc);

  Value paddr(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value offset, Value vaddr, mlir::Location loc);

  Value token(OpBuilder &rewriter, ModuleOp mop, Value offset, mlir::Location loc);

  Value get(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value vaddr, mlir::Location loc);

  Value get_mut(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value vaddr, mlir::Location loc);

  #if 0
  // Token Functions. instead of require tokens, we get token pointers and GEP the token

  Value get(Type type, Value addr,
           std::optional<int> miss_counter = std::nullopt,
           std::optional<int> hit_counter = std::nullopt) {
    Value _tag = tag(addr);
    Value _offset = select(_tag);
    Value _token = token(_offset);

    Value ret = paddr(type, _offset, addr);
    auto ifOp = rewriter.create<scf::IfOp>(loc, rewriter.getI64Type(), token_valid(), true);

    rewriter.setInsertionPointToStart(ifOp.thenBlock());
    if (hit_counter.has_value()) {
      // TODO: place counter
    }
    rewriter.create<scf::YieldOp>(loc, ret);

    rewriter.setInsertionPointToStart(ifOp.elseBlock());
    if (miss_counter.has_value()) {
      // TODO: place counter
    }
    // TODO: call request poll

    rewriter.setInsertionPointAfter(ifOp);
    return ifOp.getResult(0);
  }

  #endif
};

struct DirectMappedCache : public Cache {
  using Cache::Cache;
  Value select(OpBuilder &rewriter, Value tag, mlir::Location loc) override {
    return rewriter.create<arith::RemSIOp>(
        loc, rewriter.getI32Type(),
          rewriter.create<arith::DivUIOp>(loc, tag,         rewriter.create<arith::ConstantIntOp>(loc, line_size, 64)), 
          rewriter.create<arith::ConstantIntOp>(loc, slots, 64));
  }
};

void readCachesFromFile(std::unordered_map<int, mlir::rmem::Cache*> &caches, std::string &path);

// TODO: finish this
// return <if is accessing true remote, base address>
std::pair<bool, Value> isRemoteAccess(Operation *op);

}
}

#include "Dialect/RemoteMemOpsEnums.h.inc"
#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.h.inc"

#include "Dialect/RemoteMemOpsDialect.h.inc"


#endif
