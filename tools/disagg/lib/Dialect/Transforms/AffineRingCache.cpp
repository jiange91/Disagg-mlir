#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/BlockAndValueMapping.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "Dialect/WorkloadAnalysis.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "llvm/Support/TypeName.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Support/MathExtras.h"
#include <set>
#include <vector>
#include <tuple>

enum access_type {
  READ_ONLY = 0,
  WRITE_ONLY,
  READ_AND_WRITE
};

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

namespace mlir {
#define GEN_PASS_DEF_RMEMAFFINERINGCACHE
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

namespace {
struct MemoryRegion {
public:
  MemoryRegion(): sizeInEle(0) {}
  MemoryRegion(Value base, AffineMap map, uint64_t s):
    baseAddr(base), map(map), sizeInEle(s) {}
  void inspectRegion() {
    llvm::errs() << "-- region --\n";
    llvm::errs() << "base: ";
    baseAddr.dump();
    llvm::errs() << "map: ";
    map.dump();
    llvm::errs() << "sizeInEle: " << sizeInEle << "\n";
  }
  Value baseAddr;
  AffineMap map;
  uint64_t sizeInEle;
};

struct RmemAccess {
public:
  RmemAccess(Operation *access, AffineForOp outmost);
  Operation *access;
  access_type t;
  std::set<Operation *> addr_dfs;
};

class AffineForPrefetchInternal {
public:
  AffineForPrefetchInternal(AffineForOp loop, RemoteMemTypeLowerer &typeConverter, std::vector<Value> indVars, DenseMap<StringRef, Value> &access_mem_base_pool);
  void inspectPrefetchDetails();
  void emitOperatorKernel();

  AffineForOp loop;
  OpBuilder b;
  RemoteMemTypeLowerer &typeConverter;

  uint64_t batch;
  uint64_t nahead;
  std::vector<MemoryRegion> access_mem;
  std::vector<Value> indVars; // all enclosing induction variables excluding current loop indvar

  AffineForOp outerLoop;
  AffineForOp innterLoop;
};
}

namespace {

void ind_dfs(AffineForOp op, DenseMap<AffineForOp, std::vector<Value>> &indVars, DenseMap<AffineForOp, AffineForOp> &nest) {
  if (indVars.find(op) != indVars.end())
    return;
  if (auto ploop = nest[op]) {
    ind_dfs(ploop, indVars, nest);
    std::vector<Value> curIndVars = indVars[ploop];
    curIndVars.push_back(ploop.getInductionVar());
    indVars[op] = curIndVars;
  } else 
    indVars[op] = {};
  return;
}

class RMEMAffineRingCache : public impl::RMEMAffineRingCacheBase <RMEMAffineRingCache> {

  void runOnOperation() override {
    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);

    // Populate target loops
    std::vector<AffineForOp> loops;
    // Encolsing relationship <b `is closest parent of` a>
    DenseMap<AffineForOp, AffineForOp> nest;
    // Populate relationship graph
    op.walk([&](mlir::AffineForOp loop) {
      if (auto ploop = loop->getParentOfType<AffineForOp>())
        nest[loop] = ploop;
      else
        nest[loop] = nullptr;
      if (auto attr = loop->getAttrOfType<IntegerAttr>("pf_target")) {
        uint64_t num_targets = attr.getValue().getZExtValue();
        // llvm::errs() << num_targets << "\n";
        if (num_targets != 0)
          loops.push_back(loop);
      }
    });

    // populate access_mem base address catcher
    // now assume the baseaddress is the 
    DenseMap<StringRef, Value> access_mem_base_pool;
    op.walk([&](mlir::Operation *op) {
      if (auto catcher = op->getAttrOfType<ArrayAttr>("access_mem_catcher")) {
        StringRef name = catcher[0].cast<StringAttr>().getValue();
        uint64_t i = catcher[1].cast<IntegerAttr>().getValue().getZExtValue();
        access_mem_base_pool[name] = op->getResult(i);
      }
    });

    // Populate worklist
    DenseMap<AffineForOp, std::vector<Value>> indVars;
    std::vector<AffineForPrefetchInternal> workList;
    for (auto loop : loops) {
      // Get all depending induction variables
      ind_dfs(loop, indVars, nest);
      workList.emplace_back(loop, typeConverter, indVars[loop], access_mem_base_pool);
    }
    for (auto w : workList) {
      w.inspectPrefetchDetails();
      w.emitOperatorKernel();
    }
  }
};

}

namespace {
// TODO: finish this
// return <if is accessing true remote, base address>
std::pair<bool, Value> isRemoteAccess(Operation *op) {
  if (auto affineStore = dyn_cast<rmem::RAffineStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(affineStore.getMemref().getType()), affineStore.getMemref()};
  }
  if (auto affineLoad = dyn_cast<rmem::RAffineLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(affineLoad.getMemref().getType()), affineLoad.getMemref()};
  }
  return {false, Value()};
}

std::set<Operation *> addr_op_dfs(Operation *op, AffineForOp outmost) {
  std::set<Operation *> search;
  for (OpOperand &opd : op->getOpOperands()) {
    if (opd.get() == outmost.getInductionVar())
      search.insert(op);
    else {
      Operation *def = opd.get().getDefiningOp();
      if (def && outmost->isAncestor(def)) {
        auto dfs = addr_op_dfs(def, outmost);
        if (dfs.size()) {
          dfs.insert(op);
          search.merge(dfs);
        }
      }
    }
  }
  return search;
}

RmemAccess::RmemAccess(Operation *op, AffineForOp outmost):
  access(op) {
  if (isa<rmem::RAffineLoadOp, rmem::VectorLoadOp, rmem::MemRefLoadOp, rmem::LoadOp>(op))
    t = READ_ONLY;
  else if (isa<rmem::RAffineStoreOp, rmem::VectorStoreOp, rmem::MemRefStoreOp, rmem::StoreOp>(op))
    t = WRITE_ONLY;
  else
    t = READ_AND_WRITE;
  addr_dfs = addr_op_dfs(op, outmost);
}

AffineForPrefetchInternal::AffineForPrefetchInternal(AffineForOp loop, RemoteMemTypeLowerer &typeConverter, std::vector<Value> indVars, DenseMap<StringRef, Value> &access_mem_base_pool):  loop(loop), b(loop), typeConverter(typeConverter), indVars(indVars) {
    // Extract batch for all remote mem access
    batch = loop->getAttrOfType<mlir::IntegerAttr>("batch").getValue().getZExtValue();

    // Extract prefetch batch size
    nahead = loop->getAttrOfType<mlir::IntegerAttr>("nahead").getValue().getZExtValue();

    // Initialize memory regions
    for (auto accm_attrs : loop->getAttrOfType<mlir::ArrayAttr>("access_mem")) {
      auto attrs = accm_attrs.cast<mlir::ArrayAttr>();
      StringRef name = attrs[0].cast<mlir::StringAttr>().getValue();
      AffineMap map = attrs[1].cast<mlir::AffineMapAttr>().getValue();
      uint64_t msize = attrs[2].cast<mlir::IntegerAttr>().getValue().getZExtValue();

      assert(access_mem_base_pool.find(name) != access_mem_base_pool.end() && "Cannot find name in the pool created by the access_mem_catcher");
      Value base_addr = access_mem_base_pool[name];
      access_mem.emplace_back(base_addr, map, msize);
    }
  }

void AffineForPrefetchInternal::inspectPrefetchDetails() {
  llvm::errs() << "--- Details of loop prefetch --- \n";
  loop->dump();
  llvm::errs() << "batch: " << batch << "\n";
  llvm::errs() << "nahead: " << nahead << "\n";
  for (auto m : access_mem)
    m.inspectRegion();
  llvm::errs() << "--- end ---\n";
}

void AffineForPrefetchInternal::emitOperatorKernel() {
  Location loc = loop.getLoc();
  // Emit prologues
  int64_t low = loop.getConstantLowerBound();
  b.setInsertionPoint(loop);
  std::vector<Value> prologues; // [n_ahead x (n_access_mem + wrid)]
  prologues.reserve(nahead * (access_mem.size() + 1));

  // helper to make rdma with indent curInd and base mem
  auto prefetchWithCurInd = [&](MemoryRegion mem, Value curInd) -> Value {
    // prepare prefetch operands
    AffineMap map = mem.map;
    assert(map.getNumInputs() == indVars.size() + 1 && "access_mem affine map input size does not match with current depending induction vars");
    SmallVector<Value, 2> affineInputs;
    for (auto v : indVars)
      affineInputs.push_back(v);
    affineInputs.push_back(curInd);

    // issue prefetch
    Type eleType = rmem::getEleTypeFromRemoteMemRef(mem.baseAddr.getType().cast<RemoteMemRefType>());
    Type rawEleType = typeConverter.convertType(eleType);
    Type relType = MemRefType::get({(int64_t)batch, (int64_t)mem.sizeInEle}, rawEleType);
    Value pf = b.create<rmem::AsyncRDMAOp>(loc, 
      relType,
      mem.baseAddr,
      affineInputs,
      AffineMapAttr::get(map),
      b.create<arith::ConstantIndexOp>(loc, mem.sizeInEle * batch),
      curInd
    );
    return pf;
  };

  /*
  make prologue prefetches
  result values: [
    head 1: [access_mem1, access_mem2, ...,] + wrid1
    ...
    head n: [access_mem1, access_mem2, ...,] + wridn
  ]
  */
  for (uint64_t h = 0; h < nahead; ++ h) {
    // sync on the last rdma req
    for (size_t i = 0; i < access_mem.size(); ++i) {
      mlir::Value curInd = b.create<arith::ConstantIndexOp>(loc, low + h * batch);
      prologues.push_back({prefetchWithCurInd(access_mem[i], curInd)});
      if (i == access_mem.size() - 1)
        prologues.push_back(curInd);
    }
  }

  // Emit outer loop
  outerLoop = b.create<AffineForOp>(loc, 
    loop.getLowerBoundOperands(),
    loop.getLowerBoundMap(),
    loop.getUpperBoundOperands(),
    loop.getUpperBoundMap(),
    loop.getStep() * batch,
    prologues
  );

  b.setInsertionPointToStart(outerLoop.getBody());
  auto pfs = outerLoop.getRegionIterArgs();

  // prefetched access_mem to sync on and use in current iter
  std::vector<Value> currentIter(pfs.begin(), pfs.begin() + access_mem.size() + 1);
  // next iter prefetched access_mem
  std::vector<Value> nextIter(pfs.begin() + access_mem.size() + 1, pfs.end());

  int64_t step = outerLoop.getStep();
  for (size_t i = 0; i < access_mem.size(); ++i) {
    MemoryRegion mem = access_mem[i];
    // prepare prefetch operands
    mlir::Value curInd = b.create<arith::AddIOp>(loc, 
      b.create<arith::ConstantIndexOp>(loc, nahead * step),
      outerLoop.getInductionVar()
    );
    // create stable stage prefetch
    nextIter.push_back(prefetchWithCurInd(mem, curInd));
    if (i == access_mem.size() - 1)
      nextIter.push_back(curInd);
  }

  // yield next iter
  auto yield = b.create<AffineYieldOp>(loc, nextIter);
  
  b.setInsertionPoint(yield);
  // sync first
  b.create<rmem::WaitReqOp>(loc, 
    currentIter.back()
  );

  // Emit inner loop
  innterLoop = b.create<AffineForOp>(loc, 
    0, batch, 1
  );
  innterLoop.getBodyRegion().takeBody(loop.getBodyRegion());
  b.setInsertionPointToStart(innterLoop.getBody());


  loop.erase();

  // b.setInsertionPointToStart(innterLoop.getBody());
  // innterLoop.getInductionVar().replace

  // std::vector<Value> innerView;
  // innerView.reserve(access_mem.size());
  // for (size_t i = 0; i < access_mem.size(); ++ i) {
  //   MemoryRegion mem = access_mem[i];
  //   AffineExpr calOfst = getAffineDimExpr(0, loop.getContext()) * mem.sizeInEle;
  //   AffineMap map = AffineMap::get(1, 0, calOfst);

  //   // calculate offset
  //   Value ofst = b.create<AffineApplyOp>(loc, 
  //     map,
  //     innterLoop.getInductionVar()
  //   );
  //   SmallVector<OpFoldResult> offsets(1);
  //   offsets[0] = ofst;
  //   SmallVector<OpFoldResult> sizes(1);
  //   sizes[0] = b.getIndexAttr(mem.sizeInEle);
  //   SmallVector<OpFoldResult> strides(1);
  //   strides[0] = b.getIndexAttr(1);
  //   Type eleType = rmem::getEleTypeFromRemoteMemRef(mem.baseAddr.getType().cast<RemoteMemRefType>());
  //   Type rawEleType = typeConverter.convertType(eleType);
  //   AffineMap memrefMap = AffineMap::get(1, 1, 
  //     getAffineDimExpr(0, loop.getContext()) + getAffineSymbolExpr(0, loop.getContext())
  //   );
  //   MemRefType relType = MemRefType::get(mem.sizeInEle, rawEleType, memrefMap);
  //   Value subview = b.create<memref::SubViewOp>(loc,
  //     relType, currentIter[i],
  //     offsets, sizes, strides 
  //   );
  //   innerView.push_back(subview);
  // }


}

}


std::unique_ptr<Pass> mlir::createRemoteMemAffineRingCachePass() {
  return std::make_unique<RMEMAffineRingCache>();
}