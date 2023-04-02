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
#include "Dialect/Transforms/AffineCommon.h"
#include <set>
#include <vector>
#include <tuple>

namespace mlir {
#define GEN_PASS_DEF_RMEMAFFINEACCESSMEM
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

namespace {
class AffineAccessMemInternal {
public:
  AffineAccessMemInternal(
    RemoteMemTypeLowerer &typeConverter,
    DenseMap<AffineForOp, AffineForOp> &loopNest,
    DenseMap<Operation *, Value> &remoteOps,
    DenseMap<AffineForOp, std::vector<Value>> &indVars,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<StringRef, Value> &access_mem_base_pool, 
    DenseMap<StringRef, LocalCache> &localPools
  );

  void inspectAccessMemDetails();

  // level = 1 means the immediate parent loop
  std::pair<int64_t, AffineMap> getAccessRangeAtLevel(RmemAccess &access, int level);

  RemoteMemTypeLowerer &typeConverter;
  // Encolsing relationship <v `is closest parent of` k>
  DenseMap<AffineForOp, AffineForOp> &loopNest;
  // loop -> all enclosing loops' induction vars
  DenseMap<AffineForOp, std::vector<Value>> &indVars;
  // all induction -> range
  DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange;
  // remote mem access ops
  DenseMap<Operation *, RmemAccess> raccess;
  // All existing local cache templates
  DenseMap<StringRef, LocalCache> localPools;
};

}

namespace {
class RMEMAffineAccessMemPass : public impl::RMEMAffineAccessMemBase<RMEMAffineAccessMemPass> {
  void runOnOperation() override {
    ModuleOp mop = getOperation();
    MLIRContext *ctx = mop.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);

    // populate access_mem base address catcher
    DenseMap<StringRef, Value> access_mem_base_pool;
    mop.walk([&](mlir::Operation *op) {
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
    if (auto ts = mop->getAttrOfType<DictionaryAttr>("rmem.templates")) {
      for (auto p : ts) {
        pools[p.getName().getValue()] = LocalCache(p.getValue().cast<ArrayAttr>(), access_mem_base_pool);
      }
    }

    // Get loops that involves remote memory access
    DenseMap<Operation *, Value> rAccess;
    // Encolsing relationship <v `is closest parent of` k>
    DenseMap<AffineForOp, AffineForOp> nest;
    DenseMap<Value, std::tuple<int64_t, int64_t>> indVarRange;

    // Populate relationship graph and constant induction range
    mop.walk([&](mlir::AffineForOp loop) {
      if (auto ploop = loop->getParentOfType<AffineForOp>())
        nest[loop] = ploop;
      else
        nest[loop] = nullptr;
      
      // get remote access
      std::vector<std::pair<Operation *, Value>> rOpAddr;
      loopGetRemoteAccess(loop, rOpAddr);
      if (!rOpAddr.empty()) {
        for (auto [op, v] : rOpAddr) {
          if (rAccess.find(op) == rAccess.end())
            rAccess[op] = v;
        }
      }
      if (loop.hasConstantBounds()) {
        int64_t lower = loop.getConstantLowerBound();
        int64_t upper = loop.getConstantUpperBound();
        int64_t s = loop.getStep();
        upper = (((upper - lower + s - 1) / s) - 1) * s + lower;
        indVarRange[loop.getInductionVar()] = {lower, upper};
      }
    });

    // Populate affine induction range
    OpBuilder builder(mop);
    mop.walk([&](mlir::AffineForOp loop) {
      if (loop.hasConstantBounds())
        return WalkResult::advance();

      int64_t lower = -1, upper = -1;

      // get lower bound
      if (loop.hasConstantLowerBound())
        lower = loop.getConstantLowerBound();
      else {
        AffineMap minMap = loop.getLowerBoundMap();
        SmallVector<Attribute, 1> lowInput;
        for (auto opd : loop.getLowerBoundOperands()) {
          if (indVarRange.find(opd) != indVarRange.end())
            lowInput.push_back(builder.getIndexAttr(std::get<0>(indVarRange[opd])));
        }
        if (lowInput.size() == minMap.getNumInputs()) {
          SmallVector<Attribute, 1> lowRel;
          if (minMap.constantFold(lowInput, lowRel).succeeded())
            lower = lowRel[0].cast<IntegerAttr>().getValue().getSExtValue();
        }
      }

      // get upper bound
      if (loop.hasConstantUpperBound())
        upper = loop.getConstantUpperBound();
      else {
        AffineMap maxMap = loop.getUpperBoundMap();
        SmallVector<Attribute, 1> highInput;
        for (auto opd : loop.getUpperBoundOperands()) {
          if (indVarRange.find(opd) != indVarRange.end())
            highInput.push_back(builder.getIndexAttr(std::get<1>(indVarRange[opd])));
        }
        if (highInput.size() == maxMap.getNumInputs()) {
          SmallVector<Attribute, 1> highRel;
          if (maxMap.constantFold(highInput, highRel).succeeded())
            upper = highRel[0].cast<IntegerAttr>().getValue().getSExtValue();
        }
      }

      int64_t s = loop.getStep();
      upper = (((upper - lower + s - 1) / s) - 1) * s + lower;
      indVarRange[loop.getInductionVar()] = {lower, upper}; 
      return WalkResult::advance();
    });

    // Populate enclosing induction var map
    DenseMap<AffineForOp, std::vector<Value>> indVars;
    mop.walk([&](mlir::AffineForOp loop) {
      ind_dfs(loop, indVars, nest);
    });

    // Populate worklist
    AffineAccessMemInternal accessInternal(
      typeConverter,
      nest,
      rAccess, indVars, indVarRange,
      access_mem_base_pool,
      pools
    );
    accessInternal.inspectAccessMemDetails();
  }
};
}

namespace {
  AffineAccessMemInternal::AffineAccessMemInternal(
    RemoteMemTypeLowerer &typeConverter,
    DenseMap<AffineForOp, AffineForOp> &loopNest,
    DenseMap<Operation *, Value> &rAccess,
    DenseMap<AffineForOp, std::vector<Value>> &indVars,
    DenseMap<Value, std::tuple<int64_t, int64_t>> &indVarRange,
    DenseMap<StringRef, Value> &access_mem_base_pool, 
    DenseMap<StringRef, LocalCache> &localPools
  ): 
  typeConverter(typeConverter), 
  loopNest(loopNest),
  indVars(indVars), indVarRange(indVarRange), 
  localPools(localPools)  {
    // Populate remote accesses within current loop
    DenseMap<Value, AffineExpr> v2Expr; // SSA value to affine expresion with induction inputs
    for (auto [op, addr] : rAccess) {
      AffineForOp l = op->getParentOfType<AffineForOp>();
      raccess[op] = RmemAccess(op, addr, indVars[l], indVarRange, v2Expr);
    }
  }

  void AffineAccessMemInternal::inspectAccessMemDetails() {
    llvm::errs() << "--- Details of access mem --- \n";
    for (auto [op, detail] : raccess)
      detail.inspectAccess();
    llvm::errs() << "--- end ---\n";
  }
}

std::unique_ptr<Pass> mlir::createRemoteMemAffineAccessMemPass() {
  return std::make_unique<RMEMAffineAccessMemPass>();
}