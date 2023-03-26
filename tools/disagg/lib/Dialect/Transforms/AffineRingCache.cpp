#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
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
  NO_EFFECT = 0,
  READ_ONLY,
  WRITE_ONLY,
  READ_AND_WRITE
};

inline access_type operator | (access_type a, access_type b) {
  return access_type(static_cast<int>(a) | static_cast<int>(b));
}

namespace mlir {
#define GEN_PASS_DEF_RMEMAFFINERINGCACHE
#include "Dialect/Transforms/Passes.h.inc"
}


using namespace mlir;
using namespace mlir::rmem;


namespace {

struct MemoryRegion {
public:
  MemoryRegion(): sizeInEle(0), only_oneD(false), t(access_type::NO_EFFECT) {}
  MemoryRegion(Value base, StringRef baseSym, AffineMap map, uint64_t s, bool only_oneD,
    const std::vector<Value> dep_inductions, 
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange
  );

  void inspectRegion() {
    llvm::errs() << "-- region --\n";
    llvm::errs() << "base: ";
    baseAddr.dump();
    llvm::errs() << "sizeInEle: " << sizeInEle << "\n";
    llvm::errs() << "not depending on the last induction: " << only_oneD << "\n";
    llvm::errs() << "map: ";
    map.dump();
    llvm::errs() << "ind ranges: \n";
    for (size_t i = 0; i < low_indvars.size(); ++ i)
      llvm::errs() << i << "[" << low_indvars[i] << ", " << high_indvars[i] << "]\n";
    llvm::errs() << "use pool: " << fromPool << "\n";
    llvm::errs() << "type: " << t << "\n";
  }

  bool canUsePoolForThis(const LocalCache &cache, uint64_t batch);
  void createNewCache(uint64_t batch, DenseMap<StringRef, LocalCache> &localPools, RemoteMemTypeLowerer &typeConverter);

  Value baseAddr;
  AffineMap map;
  uint64_t sizeInEle;
  bool only_oneD;

  std::vector<Value> dep_inductions; 
  SmallVector<Attribute> low_indvars;
  SmallVector<Attribute> high_indvars;

  size_t index_in_iterargs;
  StringRef baseSym;
  std::string fromPool;

  access_type t;
};

struct RmemAccess {
public:
  RmemAccess() = default;
  RmemAccess(Operation *access, Value base, 
      const std::vector<Value> &available_inductions,
      DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange, 
      DenseMap<Value, AffineExpr> &v2Expr);

  void inspectAccess() {
    llvm::errs() << "-- access --\n";
    access->dump();
    llvm::errs() << "type: " << t << "\n";
    llvm::errs() << "access range: \n";
    access_offset.dump();
    llvm::errs() << " + " << size << "\n";
    llvm::errs() << "ind ranges: \n";
    for (size_t i = 0; i < low_indvars.size(); ++ i)
      llvm::errs() << i << "[" << low_indvars[i] << ", " << high_indvars[i] << "]\n";
  }

  std::pair<int64_t, AffineMap> getAccessRange(
    const DenseMap<Value, int64_t> &inductions,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<Value, AffineExpr> &v2Expr);

  // TODO: access indution apply map
  // 0 - low, 1 - high
  // get indice variable low, high range
  std::pair<bool, AffineMap> canUseRegionForThis(
    MemoryRegion mem);

  void replaceWithNewMem(
    Value newMem, Value newIndVar, Value oldIndVar, 
    AffineMap newOffset, bool only_oneD_offset);

  Operation *access;
  access_type t;
  Value base;
  AffineMap access_offset;
  int64_t size;

  // induction variables of all enclosing loops, in order and inclusive
  std::vector<Value> dep_inductions; 
  SmallVector<Attribute> low_indvars;
  SmallVector<Attribute> high_indvars;
};

class AffineForPrefetchInternal {
public:
  AffineForPrefetchInternal(
    AffineForOp loop, 
    RemoteMemTypeLowerer &typeConverter, 
    DenseMap<AffineForOp, std::vector<Value>> &indVars,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<StringRef, Value> &access_mem_base_pool, 
    DenseMap<StringRef, LocalCache> &localPools,
    AffineForOp outmost);
  void inspectPrefetchDetails();
  Type getBatchedMemType(MemoryRegion mem);
  void emitOperatorKernel();
  void emitRuntimeKernel();

  AffineForOp loop;
  OpBuilder b;
  RemoteMemTypeLowerer &typeConverter;

  // access mem
  uint64_t batch;
  uint64_t nahead;
  std::vector<MemoryRegion> staticAccessMem;
  std::vector<MemoryRegion> nonStaticAccessMem;

  // loop -> all enclosing loops' induction vars
  DenseMap<AffineForOp, std::vector<Value>> &indVars;
  // all induction -> range
  DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange;
  // remote mem access ops
  DenseMap<Operation *, RmemAccess> raccess;
  // remote mem access -> available access mem
  DenseMap<Operation *, std::tuple<bool, size_t, AffineMap>> raccess_2_mem;

  // All existing local cache templates
  DenseMap<StringRef, LocalCache> localPools;

  AffineForOp outerLoop;
  AffineForOp innterLoop;
};
}

namespace {
/* helpers */

// TODO: finish this
// return <if is accessing true remote, base address>
std::pair<bool, Value> isRemoteAccess(Operation *op) {
  if (auto affineStore = dyn_cast<rmem::RAffineStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(affineStore.getMemref().getType()), affineStore.getMemref()};
  }
  if (auto affineLoad = dyn_cast<rmem::RAffineLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(affineLoad.getMemref().getType()), affineLoad.getMemref()};
  }
  if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(vecLoad.getBase().getType()), vecLoad.getBase()};
  }
  if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(vecStore.getBase().getType()), vecStore.getBase()};
  }
  if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(memrefLoad.getMemref().getType()), memrefLoad.getMemRef()};
  }
  if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(memrefStore.getMemref().getType()), memrefStore.getMemRef()};
  }
  return {false, Value()};
}

// Get induction variable above current loop, inclusive
void ind_dfs(AffineForOp op, 
              DenseMap<AffineForOp, std::vector<Value>> &indVars, 
              DenseMap<AffineForOp, AffineForOp> &nest) {
  if (indVars.find(op) != indVars.end())
    return;

  if (auto ploop = nest[op]) {
    ind_dfs(ploop, indVars, nest);
    std::vector<Value> curIndVars(indVars[ploop]);
    curIndVars.push_back(op.getInductionVar());
    indVars[op] = curIndVars;
  } else {
    indVars[op] = {op.getInductionVar()};
  }
}

// obtain the outermost loop of the current loop
// if it's already outmost, return itself
AffineForOp getOutMost(AffineForOp op, DenseMap<AffineForOp, AffineForOp> &m, DenseMap<AffineForOp, AffineForOp> &nest) {
  if (m.find(op) == m.end()) {
    if (auto ploop = nest[op]) {
      getOutMost(ploop, m, nest);
      m[op] = m[ploop];
    } else
      m[op] = op;
  }
  return m[op];
}

class RMEMAffineRingCache : public impl::RMEMAffineRingCacheBase <RMEMAffineRingCache> {

  void runOnOperation() override {
    unsigned olevel = outputLevel;
    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);

    // populate access_mem base address catcher
    // now assume the baseaddress is the 
    DenseMap<StringRef, Value> access_mem_base_pool;
    op.walk([&](mlir::Operation *op) {
      if (auto catchers = op->getAttrOfType<ArrayAttr>("access_mem_catcher")) {
        for (auto attr : catchers) {
          auto catcher = attr.cast<ArrayAttr>();
          StringRef name = catcher[0].cast<StringAttr>().getValue();
          uint64_t i = catcher[1].cast<IntegerAttr>().getValue().getZExtValue();
          if (auto fop = dyn_cast<func::FuncOp>(op))
            access_mem_base_pool[name] = fop.getArgument(i);
          else
            access_mem_base_pool[name] = op->getResult(i);
        }
      }
    });

    // populate existing local caches
    DenseMap<StringRef, LocalCache> pools;
    if (auto ts = op->getAttrOfType<DictionaryAttr>("rmem.templates")) {
      for (auto p : ts) {
        pools[p.getName().getValue()] = LocalCache(p.getValue().cast<ArrayAttr>(), access_mem_base_pool);
      }
    }

    // Populate target loops
    std::vector<AffineForOp> loops;
    // Encolsing relationship <v `is closest parent of` k>
    DenseMap<AffineForOp, AffineForOp> nest;
    DenseMap<Value, std::tuple<int64_t, int64_t>> indVarRange;

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
      // upper bound
      ino64_t lower = loop.getConstantLowerBound();
      int64_t upper = loop.getConstantUpperBound();
      int64_t s = loop.getStep();
      upper = (((upper - lower + s - 1) / s) - 1) * s + lower;
      indVarRange[loop.getInductionVar()] = {lower, upper};
    });

    // Populate enclosing induction var map
    DenseMap<AffineForOp, std::vector<Value>> indVars;
    op.walk([&](mlir::AffineForOp loop) {
      ind_dfs(loop, indVars, nest);
    });

    // Populate worklist
    DenseMap<AffineForOp, AffineForOp> outmosts;
    std::vector<AffineForPrefetchInternal> workList;
    for (auto loop : loops) {
      // Get all depending induction variables
      AffineForOp outmost = getOutMost(loop, outmosts, nest);
      workList.emplace_back(
        loop, typeConverter, 
        indVars, indVarRange, 
        access_mem_base_pool, 
        pools,
        outmost);
    }

    for (auto w : workList) {
      // w.inspectPrefetchDetails();
      w.emitOperatorKernel();
    }

    if (olevel > 0) {
      for (auto w : workList) {
        // w.inspectPrefetchDetails();
        w.emitRuntimeKernel();
      }
    }
  }
};
}

/* Class Definitions */
namespace {
// get access range of a remote access

// helper
// get indices variables
void getIndices(Operation *op, SmallVector<Value> &opds) {
  if (auto affineLoad = dyn_cast<RAffineLoadOp>(op))
    opds.append(affineLoad.getIndices().begin(), affineLoad.getIndices().end());
  else if (auto affineStore = dyn_cast<RAffineStoreOp>(op)) 
    opds.append(affineStore.getIndices().begin(), affineStore.getIndices().end());
  else if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(op))
    opds.append(vecLoad.getIndices().begin(), vecLoad.getIndices().end());
  else if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(op))
    opds.append(vecStore.getIndices().begin(), vecStore.getIndices().end());
  else if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(op))
    opds.append(memrefLoad.getIndices().begin(), memrefLoad.getIndices().end());
  else if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(op))
    opds.append(memrefStore.getIndices().begin(), memrefStore.getIndices().end());
  else {
    llvm::errs() << "cannot get indice of \n";
    op->dump();
    llvm_unreachable("update getIndices function");
  }
}


// TODO: infer affine from remote access operation
AffineExpr offset_dfs(Value v, 
    const DenseMap<Value, int64_t> &inductions,
    DenseMap<Value, AffineExpr> &v2Expr) {
  if (v2Expr.find(v) != v2Expr.end())
    return v2Expr[v];

  AffineExpr expr = nullptr;

  Operation *op = v.getDefiningOp();
  if (!op) {
    // if is loop induction variable
    if (inductions.find(v) != inductions.end()) {
      expr = getAffineDimExpr(inductions.lookup(v), v.getContext());
    } else {
      v.dump();
      return AffineExpr();
    }
  } else {
    // if constant index
    if (auto cst = dyn_cast<arith::ConstantIndexOp>(op)) {
      expr = getAffineConstantExpr(cst.value(), op->getContext());
    }

    // if arith & affinable
    if (auto add = dyn_cast<arith::AddIOp>(op)) {
      AffineExpr lhs = offset_dfs(add.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(add.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::Add, lhs, rhs);
    }

    if (auto sub = dyn_cast<arith::MulIOp>(op)) {
      AffineExpr lhs = offset_dfs(sub.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(sub.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::Mul, lhs, rhs);
    }

    if (auto fdiv = dyn_cast<arith::FloorDivSIOp>(op)) {
      AffineExpr lhs = offset_dfs(fdiv.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(fdiv.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::FloorDiv, lhs, rhs);
    }

    if (auto csdiv = dyn_cast<arith::CeilDivSIOp>(op)) {
      AffineExpr lhs = offset_dfs(csdiv.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(csdiv.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::CeilDiv, lhs, rhs);
    }

    if (auto cudiv = dyn_cast<arith::CeilDivUIOp>(op)) {
      AffineExpr lhs = offset_dfs(cudiv.getLhs(), inductions, v2Expr);
      AffineExpr rhs = offset_dfs(cudiv.getRhs(), inductions, v2Expr);
      expr = getAffineBinaryOpExpr(AffineExprKind::CeilDiv, lhs, rhs);
    }

    if (auto apply = dyn_cast<AffineApplyOp>(op)) {
      SmallVector<AffineExpr> input;
      for (Value v : apply.getMapOperands())
        input.push_back(offset_dfs(v, inductions, v2Expr));
      AffineMap min = AffineMap::get(inductions.size(), 0, input, apply->getContext());
      expr = apply.getMap().compose(min).getResult(0);
    }

    if (!expr) {
      op->dump();
      llvm_unreachable("Operation not supported");
    }
  }

  v2Expr[v] = expr;
  return expr;
}

MemoryRegion::MemoryRegion(Value base, StringRef baseSym, AffineMap map, uint64_t s, bool only_oneD,
    const std::vector<Value> dep_inductions, 
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange):
    baseAddr(base), map(map), sizeInEle(s), only_oneD(only_oneD), dep_inductions(dep_inductions), index_in_iterargs(0), baseSym(baseSym) {
  OpBuilder b(base.getContext());
  for (auto v : dep_inductions) {
    int64_t l = -1, h = -1;
    if (indVarRange.find(v) != indVarRange.end()) {
      l = std::get<0>(indVarRange[v]);
      h = std::get<1>(indVarRange[v]);
    }
    low_indvars.push_back(b.getIndexAttr(l));
    high_indvars.push_back(b.getIndexAttr(h));
  }
  t = access_type::NO_EFFECT;
}

// not used now
bool MemoryRegion::canUsePoolForThis(const LocalCache &cache, uint64_t batch) {
  return false;
  if (cache.rbase != baseAddr)
    return false;
  size_t blockSize = only_oneD ? sizeInEle : sizeInEle * batch;
  if (cache.blockSize != blockSize)
    return false;

  // 0 <=
  //   mem.offset(base) - cache.roffset(base)
  // <= cache.rsize - mem.size
  AffineExpr trace = map.getResult(0) - getAffineConstantExpr(cache.rOfst, baseAddr.getContext());
  AffineMap m = AffineMap::get(map.getNumDims(), 0, trace);
  AffineMap sm = simplifyAffineMap(m);

  // compute lower bound
  SmallVector<Attribute, 1> lowRel;
  if (sm.constantFold(low_indvars, lowRel).failed()) 
    return false;
  auto lowc = lowRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << lowc.getSExtValue() << "\n";
  if (lowc.slt(0))
    return false;

  // compute upper bound
  // if cache represents the whole continuous memory start from base
  // return usable
  if (cache.rSize == -1)
    return true;

  SmallVector<Attribute, 1> highRel;
  if (sm.constantFold(high_indvars, highRel).failed()) 
    return false;
  auto highc = highRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << highc.getSExtValue() << "\n";
  if (highc.sgt(cache.rSize - sizeInEle))
    return false;
  return true;
}

void MemoryRegion::createNewCache(uint64_t batch, DenseMap<StringRef, LocalCache> &localPools, RemoteMemTypeLowerer &typeConverter) {
  // get lower bound and upper bound
  int64_t low = 0, high = -1;
  SmallVector<Attribute, 1> lowRel;
  if (map.constantFold(low_indvars, lowRel).succeeded()) 
    low = std::max(lowRel[0].cast<IntegerAttr>().getValue().getSExtValue(), low);
  SmallVector<Attribute, 1> highRel;
  if (map.constantFold(high_indvars, highRel).succeeded()) 
    high = std::max(highRel[0].cast<IntegerAttr>().getValue().getSExtValue(), high);

  unsigned t = 0;
  for (; t < INT_MAX; ++ t) {
    std::string cacheRef("t" + std::to_string(t));
    if (localPools.find(cacheRef) != localPools.end())
      continue;

    Type eleType = rmem::getEleTypeFromRemoteMemRef(baseAddr.getType().cast<RemoteMemRefType>());
    Type rawEleType = typeConverter.convertType(eleType);
    int64_t blockSize = sizeInEle;
    if (!only_oneD)
      blockSize *= batch;
    int64_t rSize = high == -1 ? -1 : high - low + sizeInEle;
    auto cache = LocalCache(CacheType::Ring_Direct, 0, baseAddr, baseSym, rawEleType, low, rSize, blockSize, 0);
    fromPool = cacheRef;
    localPools[fromPool] = cache;
    break;
  }
  if (t == INT_MAX)
    llvm_unreachable("Cannot name a new local cache anymore");
}

std::pair<int64_t, AffineMap> RmemAccess::getAccessRange(
    const DenseMap<Value, int64_t> &inductions,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<Value, AffineExpr> &v2Expr) {
  // get access size
  // not considering memref strides
  int64_t size = -1;
  
  if (isa<rmem::RAffineLoadOp, rmem::RAffineStoreOp, 
          rmem::MemRefLoadOp, rmem::MemRefStoreOp,
          rmem::LoadOp, rmem::StoreOp>(access))
    size = 1;
  else if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(access)) {
    auto shape = vecLoad.getVectorType().getShape();
    size = 1;
    for (auto s : shape)
      size *= s;
  }
  else if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(access)) {
    auto shape = vecStore.getVectorType().getShape();
    size = 1;
    for (auto s : shape)
      size *= s;
  }
  else {
    llvm::errs() << "Cannot analyze access range of op: \n" << access << "\n";
    return {-1, AffineMap()};
  }

  // base affine map

  MemRefType memType = rmem::getRawTypeFromRemotedType(base.getType()).cast<MemRefType>();
  if (!memType.hasStaticShape()) {
    llvm::errs() << "Cannot analyze access range of op: \n" << access << "\n";
    return {-1, AffineMap()};
  }
  AffineExpr baseExpr = makeCanonicalStridedLayoutExpr(memType.getShape(), access->getContext());
  AffineMap baseMap = AffineMap::get(memType.getRank(), 0, baseExpr);


  // get num indices
  SmallVector<Value> indices;
  getIndices(access, indices);
  SmallVector<AffineExpr> exprs;
  for (auto indc : indices) {
    exprs.push_back(offset_dfs(indc, inductions, v2Expr));
  }

  AffineMap input = AffineMap::get(inductions.size(), 0, exprs, access->getContext());
  AffineMap output = baseMap.compose(input);

  return {size, output};
}

RmemAccess::RmemAccess(Operation *op, Value base, 
    const std::vector<Value> &available_inductions,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<Value, AffineExpr> &v2Expr):
  access(op), base(base), dep_inductions(available_inductions) {
  if (isa<rmem::RAffineLoadOp, rmem::VectorLoadOp, rmem::MemRefLoadOp, rmem::LoadOp>(op))
    t = READ_ONLY;
  else if (isa<rmem::RAffineStoreOp, rmem::VectorStoreOp, rmem::MemRefStoreOp, rmem::StoreOp>(op))
    t = WRITE_ONLY;
  else
    t = READ_AND_WRITE;

  DenseMap<Value, int64_t> inductions;
  for (size_t i = 0; i < available_inductions.size(); ++ i)
    inductions[available_inductions[i]] = (int64_t)i;

  auto [s, m] = getAccessRange(inductions, indVarRange, v2Expr);
  access_offset = m;
  size = s;

  // populate induction var ranges
  OpBuilder b(access);
  for (auto v : dep_inductions) {
    int64_t l = -1, h = -1;
    if (indVarRange.find(v) != indVarRange.end()) {
      l = std::get<0>(indVarRange[v]);
      h = std::get<1>(indVarRange[v]);
    }
    low_indvars.push_back(b.getIndexAttr(l));
    high_indvars.push_back(b.getIndexAttr(h));
  }
}

std::pair<bool, AffineMap> RmemAccess::canUseRegionForThis(
    MemoryRegion mem) {
  if (mem.baseAddr != base || size == -1)
    return {false, AffineMap()};
  // 0 <= 
  //  access.offset(base) - mem.offset(base) 
  // <= mem.size - access.size
  AffineExpr trace = access_offset.getResult(0) - mem.map.getResult(0);
  AffineMap m = AffineMap::get(access_offset.getNumDims(), 0, trace);
  AffineMap sm = simplifyAffineMap(m);
  // access->dump();
  // sm.dump();
  
  // compute lower bound
  SmallVector<Attribute, 1> lowRel;
  if (sm.constantFold(low_indvars, lowRel).failed()) 
    return {false, m};
  auto lowc = lowRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << lowc.getSExtValue() << "\n";
  if (lowc.slt(0))
    return {false, m};

  // compute upper bound
  SmallVector<Attribute, 1> highRel;
  if (sm.constantFold(high_indvars, highRel).failed()) 
    return {false, m};
  auto highc = highRel[0].cast<IntegerAttr>().getValue();
  // llvm::errs() << highc.getSExtValue() << "\n";
  if (highc.sgt(mem.sizeInEle - size))
    return {false, m};

  // Checked, generate new affine map to indent access_mem
  // the generated affinemap will not contain batch-indent
  // meaning an explict induction variable need to be inserted to
  // offset into num-batch before rest of inductions

  return {true, sm};
}

void RmemAccess::replaceWithNewMem(
    Value newMem, Value newIndVar, Value oldIndVar, 
    AffineMap newOffset, bool only_oneD_offset) {
  std::vector<Value> offsetInput;
  for (auto v : dep_inductions) {
    if (v == oldIndVar)
      offsetInput.push_back(newIndVar);
    else
      offsetInput.push_back(v);
  }

  IRRewriter rewriter(access->getContext());
  Location loc = access->getLoc();

  rewriter.setInsertionPoint(access);
  Value oneD_offset = rewriter.create<AffineApplyOp>(loc, 
    newOffset, offsetInput
  );

  SmallVector<Value> indForOp;
  if (!only_oneD_offset)
    indForOp.push_back(newIndVar);
  indForOp.push_back(oneD_offset);

  if (auto affineLoad = dyn_cast<RAffineLoadOp>(access)) {
    rewriter.replaceOpWithNewOp<AffineLoadOp>(access, 
      newMem, indForOp
    );
  }
  else if (auto affineStore = dyn_cast<RAffineStoreOp>(access)) {
    rewriter.replaceOpWithNewOp<AffineStoreOp>(access, 
      affineStore.getValueToStore(),
      newMem, indForOp
    );
  }
  else if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(access))
    rewriter.replaceOpWithNewOp<vector::LoadOp>(access,
      vecLoad.getResult().getType(),
      newMem, indForOp
    );
  else if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(access))
    rewriter.replaceOpWithNewOp<vector::StoreOp>(access, 
      vecStore.getValueToStore(), newMem, indForOp
    );
  else if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(access))
    rewriter.replaceOpWithNewOp<memref::LoadOp>(access, 
      newMem, indForOp
    );
  else if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(access))
    rewriter.replaceOpWithNewOp<memref::StoreOp>(access, 
      memrefStore.getValueToStore(), newMem, indForOp
    );
  else {
    llvm::errs() << "Cannot replace operation: \n";
    access->dump();
    llvm_unreachable("Update replaceWithNewMem func");
  }
}

AffineForPrefetchInternal::AffineForPrefetchInternal(
  AffineForOp loop, 
  RemoteMemTypeLowerer &typeConverter, 
  DenseMap<AffineForOp, std::vector<Value>> &indVars,
  DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
  DenseMap<StringRef, Value> &access_mem_base_pool, 
  DenseMap<StringRef, LocalCache> &localPools,
  AffineForOp outmost):
  loop(loop), b(loop), typeConverter(typeConverter), 
  indVars(indVars), indVarRange(indVarRange), localPools(localPools) {
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
      StringRef poolRef = attrs[3].cast<mlir::StringAttr>().getValue();

      assert(access_mem_base_pool.find(name) != access_mem_base_pool.end() && "Cannot find name in the pool created by the access_mem_catcher");
      Value base_addr = access_mem_base_pool[name];

      // search existing local pools, add one if cannot accomodate current access mem
      MemoryRegion mem(base_addr, name, map, msize, !map.isFunctionOfDim(indVars[loop].size()-1), indVars[loop], indVarRange);
      mem.fromPool = poolRef;
      if (mem.only_oneD)
        staticAccessMem.push_back(mem);
      else
        nonStaticAccessMem.push_back(mem);
    }

    // set relative positon of access_mem in loop iter args
    // Ord:
    // [h, t, oneD1, oneDN, ..., non-oneD1, non-oneDN]
    {
      size_t ord = 2;
      for (auto &mem : staticAccessMem) {
        if (mem.only_oneD)
          mem.index_in_iterargs = (ord ++);
      }
      for (auto &mem : nonStaticAccessMem) {
        if (!mem.only_oneD)
          mem.index_in_iterargs = (ord ++);
      }
    }

    // TODO have a transform to assign local pools
    // now manual assign
#if 0
    for (auto &mem : access_mem) {
      bool ok = false;
      for (auto &[name, cache] : localPools) {
        if (mem.canUsePoolForThis(cache, batch)) {
          mem.fromPool = name;
          ok = true;
          break;
        }
      }
      if (!ok) {
        mem.createNewCache(batch, localPools, typeConverter);
      }
    }

    // set to module attribute 
    {
      ModuleOp mop = loop->getParentOfType<ModuleOp>();
      SmallVector<NamedAttribute, 4> pools;
      for (auto &[name, cache] : localPools ) {
        pools.emplace_back(b.getStringAttr(name), cache.toAttr(b));
      }
      mop->setAttr("rmem.templates", b.getDictionaryAttr(pools));
    }
#endif

    // Populate remote accesses within current loop
    //
    DenseMap<Value, AffineExpr> v2Expr;
    loop.walk([&](mlir::Operation *op) {
      auto [isRemote, addr] = isRemoteAccess(op);
      if (isRemote) {
        AffineForOp l = op->getParentOfType<AffineForOp>();
        raccess[op] = RmemAccess(op, addr, indVars[l], indVarRange, v2Expr);
        for (size_t mi = 0; mi < staticAccessMem.size(); ++ mi) {
          auto [use, map] = raccess[op].canUseRegionForThis(staticAccessMem[mi]);
          if (use) {
            raccess_2_mem[op] = {true, mi, map};
            staticAccessMem[mi].t = staticAccessMem[mi].t | raccess[op].t;
            break;
          }
        }
        for (size_t mi = 0; mi < nonStaticAccessMem.size(); ++ mi) {
          auto [use, map] = raccess[op].canUseRegionForThis(nonStaticAccessMem[mi]);
          if (use) {
            raccess_2_mem[op] = {false, mi, map};
            nonStaticAccessMem[mi].t = nonStaticAccessMem[mi].t | raccess[op].t;
            break;
          }
        }
      }
    }); 
  }

void AffineForPrefetchInternal::inspectPrefetchDetails() {
  llvm::errs() << "--- Details of loop prefetch --- \n";
  loop->dump();
  llvm::errs() << "batch: " << batch << "\n";
  llvm::errs() << "nahead: " << nahead << "\n";
  llvm::errs() << "num indvars: " << indVars[loop].size() << "\n";
  llvm::errs() << "static access mems: \n";
  for (auto m : staticAccessMem)
    m.inspectRegion();
  llvm::errs() << "non-static access mems: \n";
  for (auto m : nonStaticAccessMem)
    m.inspectRegion();
  for (auto [op, detail] : raccess)
    detail.inspectAccess();
  llvm::errs() << "--- end ---\n";
}

Type AffineForPrefetchInternal::getBatchedMemType(MemoryRegion mem) {
  Type eleType = rmem::getEleTypeFromRemoteMemRef(mem.baseAddr.getType().cast<RemoteMemRefType>());
  Type rawEleType = typeConverter.convertType(eleType);
  Type relType;
  if (mem.only_oneD) {
    relType = MemRefType::get({(int64_t)mem.sizeInEle}, rawEleType);
  }
  else {
    relType = MemRefType::get({(int64_t)batch, (int64_t)mem.sizeInEle}, rawEleType);
  }
  return relType;
}

void AffineForPrefetchInternal::emitOperatorKernel() {
  // generated loop in high level:
  // alloca h, t
// prologue:
  // static_mem = current-loop-independent access mem prefetch
  // for n_prefetch:
    // non_stat_mem += current-loop-dependent access mem prefetch
  // sync-static-mem
  // iter_args = [h, t, static_mem, non_static_mem]
// 
// outerloop (iter_args):
  // new-non-static-mem = prefetch
  // innerloop:
    // sync-non-static-prefetch
    // original inner loops
  // innerloop-end
  // non-static-write-back
  // sync-non-static-write-back
  // new-iter-args = [h+1, t+1, static_mem, new-non-static-mem]
  // outer-yield new-iter-args
// outerloop-end
// 
  // sync-static-write-back

  Location loc = loop.getLoc();
  // Emit prologues
  int64_t low = loop.getConstantLowerBound();
  b.setInsertionPoint(loop);
  Value cst0_64 = b.create<arith::ConstantIntOp>(loc, 0, 64);
  Value cst0_index = b.create<arith::ConstantIndexOp>(loc, 0);
  Value cst1_index = b.create<arith::ConstantIndexOp>(loc, 1);

  // helper to make rdma with indent curInd and base mem
  auto rdmaWithCurInd = [&](MemoryRegion mem, Value localIndex, Value curInd, ibv_wr_opcode t, Value wrid) -> rmem::AsyncRDMAOp {
    // prepare prefetch operands
    AffineMap map = mem.map;
    const auto &inductions = indVars[loop];
    assert(map.getNumInputs() == inductions.size() && "access_mem affine map input size does not match with current depending induction vars");

    std::vector<Value> affineInputs(
      inductions.begin(), inductions.begin() + inductions.size() - 1);
    affineInputs.push_back(curInd);

    Type relType = getBatchedMemType(mem);
    Value fetchSize;
    if (mem.only_oneD) {
      fetchSize = b.create<arith::ConstantIndexOp>(loc, mem.sizeInEle);
    }
    else {
      fetchSize = b.create<arith::ConstantIndexOp>(loc, mem.sizeInEle * batch);
    }

    // issue prefetch
    auto pf = b.create<rmem::AsyncRDMAOp>(loc, 
      relType,
      b.getStringAttr(mem.fromPool),
      localIndex,
      mem.baseAddr,
      affineInputs,
      AffineMapAttr::get(map),
      fetchSize,
      b.getI32IntegerAttr(static_cast<int>(t)),
      wrid
    );
    // pf->setAttr("from_pool", b.getStringAttr(mem.fromPool));
    return pf;
  };

  // helper to prefetch mem and return wrids
  // use cst0_index for the rest wrid
  // The returned wrids will be empty if
  // all mem access is write only
  auto prefetchMem = [&](
    std::vector<MemoryRegion> &access_mem, 
    Value localIndex, 
    Value curInduction, 
    std::vector<Value> &localMem) -> SmallVector<Value> {
    SmallVector<Value> wrids;
    for (size_t mi = 0; mi < access_mem.size(); ++mi) {
      auto &mem = access_mem[mi];
      if (mem.t == READ_ONLY || mem.t == READ_AND_WRITE) {
        Value wrid;
        if (mi == access_mem.size() - 1)
          wrid = b.create<rmem::GetWRIDOp>(loc, b.getIndexType());
        else
          wrid = cst0_index;
        Value lm = rdmaWithCurInd(mem, cst0_index, curInduction, IBV_WR_RDMA_READ, wrid).getResult();
        localMem.push_back(lm); 
        wrids.push_back(wrid);
      } else {
        localMem.push_back(b.create<rmem::GetSlotOp>(loc, getBatchedMemType(mem), b.getStringAttr(mem.fromPool), localIndex));
      }
    }
    return wrids;
  };

  auto writeBack = [&](
    std::vector<MemoryRegion> &access_mem, 
    Value localIndex, 
    Value curInduction, 
    SmallVector<Value> &wrids) -> void {
    for (size_t mi = 0; mi < access_mem.size(); ++mi) {
      auto &mem = access_mem[mi];
      if (mem.t == WRITE_ONLY || mem.t == READ_AND_WRITE) {
        Value wrid;
        if (mi == access_mem.size() - 1)
          wrid = b.create<rmem::GetWRIDOp>(loc, b.getIndexType());
        else
          wrid = cst0_index;
        rdmaWithCurInd(mem, localIndex, curInduction, IBV_WR_RDMA_WRITE, wrid).getResult();
        wrids.push_back(wrid);
      }
    }
  };

  // Prepare wrid waiter r
  Value rPtr = b.create<LLVM::AllocaOp>(loc, 
    LLVM::LLVMPointerType::get(b.getI64Type()),
    b.create<arith::ConstantIntOp>(loc, 1, 64),
    0
  );
  b.create<LLVM::StoreOp>(loc, 
    cst0_64, rPtr
  );

  // Prepare wrid waiter s
  Value sPtr = b.create<LLVM::AllocaOp>(loc, 
    LLVM::LLVMPointerType::get(b.getI64Type()),
    b.create<arith::ConstantIntOp>(loc, 1, 64),
    0
  );
  b.create<LLVM::StoreOp>(loc, 
    cst0_64, sPtr
  );

  /*
  make prologue prefetches
  result values: [
    h, t,
    static non-induction depending access memory
    head 1: [access_mem1, access_mem2, ...,] + Optional wrid1
    ...
    head n: [access_mem1, access_mem2, ...,] + Optional wridn
  ]
  the order will be organized so that memory access not depend on
  the target loop will come first
  */
  Operation *afterPrologue;
  std::vector<Value> prologues; 
  // insert ht
  prologues.push_back(b.create<arith::ConstantIndexOp>(loc, nahead));
  prologues.push_back(cst0_index);

  // static
  Value ind_static = b.create<arith::ConstantIndexOp>(loc, low);
  SmallVector<Value> staticSyncID = prefetchMem(staticAccessMem, cst0_index, ind_static, prologues);
  afterPrologue = prologues.back().getDefiningOp();

  // non-static
  bool nonStaticOnlyWrite = true;
  if (!nonStaticAccessMem.empty()) {
    for (uint64_t h = 0; h < nahead; ++ h) {
      mlir::Value curInd = b.create<arith::ConstantIndexOp>(loc, low + h * batch * loop.getStep());
      Value prefIndex = b.create<arith::ConstantIndexOp>(loc, h);
      SmallVector<Value> nStaticSyncID = prefetchMem(nonStaticAccessMem, prefIndex, curInd, prologues);
      afterPrologue = prologues.back().getDefiningOp();
      if (!nStaticSyncID.empty()) {
        nonStaticOnlyWrite = false;
        prologues.push_back(nStaticSyncID.back());
      }
    }
  }

  // sync static mem
  if (!staticSyncID.empty()) {
    auto statcSync = b.create<rmem::WaitReqOp>(loc, 
      rPtr,
      staticSyncID.back()
    );
    afterPrologue = statcSync;
  }

  {
    // wb static mem if any
    SmallVector<Value> staticWBIDs;
    writeBack(staticAccessMem, cst0_index, ind_static, staticWBIDs);
    if (!staticWBIDs.empty())
      b.create<rmem::WaitReqOp>(loc, sPtr, staticWBIDs.back());
  }

  // Emit outer loop
  b.setInsertionPointAfter(afterPrologue);
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
  size_t num_access_mem = staticAccessMem.size() + nonStaticAccessMem.size();

  // get h, t, static local mem and non static local mem
  // for the current iter
  std::vector<Value> currentIter(pfs.begin(), pfs.begin() + 2 + num_access_mem);
  // next iter prefetched ht
  std::vector<Value> nextIter;
  Value nexth = b.create<arith::AddIOp>(loc, cst1_index, currentIter[0]);
  Value nextt = b.create<arith::AddIOp>(loc, cst1_index, currentIter[1]);
  nextIter.push_back(nexth);
  nextIter.push_back(nextt);

  // next iter [h, t, static mems]
  Operation *afterPrefetch = nullptr;
  nextIter.insert(nextIter.end(), pfs.begin() + 2, pfs.begin() + 2 + staticAccessMem.size());
  if (nonStaticAccessMem.size()) {
    // next iter [h, t, static mems, non-static mems prefethed]
    if (nonStaticOnlyWrite)
      nextIter.insert(nextIter.end(), pfs.begin() + 2 + num_access_mem, pfs.end());
    else
      nextIter.insert(nextIter.end(), pfs.begin() + 2 + num_access_mem + 1, pfs.end());

    // prefetch in loop body
    // next iter [h, t, static mems, non-static mems prefethed, newly prefethed]
    int64_t step = outerLoop.getStep();
    mlir::Value prefInd = b.create<arith::AddIOp>(loc, 
      b.create<arith::ConstantIndexOp>(loc, nahead * step),
      outerLoop.getInductionVar()
    );
    SmallVector<Value> prefSyncId = prefetchMem(nonStaticAccessMem, currentIter[0], prefInd, nextIter);
    afterPrefetch = nextIter.back().getDefiningOp();
    if (!prefSyncId.empty()) {
      nextIter.push_back(prefSyncId.back());
      // also indicate that prologues also has prefetches
      // sync previous fetch
      auto inLoopSync = b.create<rmem::WaitReqOp>(loc, 
        rPtr,
        *(pfs.begin() + 2 + num_access_mem)
      );
      afterPrefetch = inLoopSync;
    }
  }

  // writeback non-static if any
  {
    SmallVector<Value> nStaticWBIDs;
    writeBack(nonStaticAccessMem, currentIter[1], outerLoop.getInductionVar(), nStaticWBIDs);
    if (!nStaticWBIDs.empty())
      b.create<rmem::WaitReqOp>(loc, sPtr, nStaticWBIDs.back());

    // yield next iter
    b.create<AffineYieldOp>(loc, nextIter);
    // insertion point will be set before 
    // 1. Yield op 
    // 2. the first write back op
  }

  // Emit inner loop
  if (afterPrefetch)
    b.setInsertionPointAfter(afterPrefetch);
  innterLoop = b.create<AffineForOp>(loc, 
    0, batch, 1
  );

  // Save before takebody
  Value oldInd = loop.getInductionVar();
  innterLoop.getBodyRegion().takeBody(loop.getBodyRegion());
  // innterLoop.dump();

  // transform all old inuction (now new inner loop induction) to reconstructed induction 
  b.setInsertionPointToStart(innterLoop.getBody());
  auto excp = b.create<arith::MulIOp>(loc, 
    innterLoop.getInductionVar(), 
    b.create<arith::ConstantIndexOp>(loc, loop.getStep())
  );
  Value recInd = b.create<arith::AddIOp>(loc, 
    outerLoop.getInductionVar(), 
    excp.getResult()
  );
  innterLoop.getInductionVar().replaceAllUsesExcept(recInd, excp);

  // regenerate access operations
  for (auto [op, access] : raccess) {
    if (raccess_2_mem.find(op) != raccess_2_mem.end()) {
      // check if within any access_mem
      auto [s, mi, new_map] = raccess_2_mem[op];
      MemoryRegion &mem = s ? staticAccessMem[mi] : nonStaticAccessMem[mi];
      access.replaceWithNewMem(
        currentIter[mem.index_in_iterargs], 
        innterLoop.getInductionVar(), 
        oldInd, 
        new_map, 
        mem.only_oneD);
    }
  }

  loop.erase();
}

void AffineForPrefetchInternal::emitRuntimeKernel() {
  // convert rmem template to runtime function calls

}

}


std::unique_ptr<Pass> mlir::createRemoteMemAffineRingCachePass() {
  return std::make_unique<RMEMAffineRingCache>();
}