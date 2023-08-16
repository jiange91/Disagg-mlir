#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/IR/BlockAndValueMapping.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "Dialect/WorkloadAnalysis.h"
#include "llvm/Support/TypeName.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include "mlir/Support/MathExtras.h"
#include <set>

namespace mlir {
#define GEN_PASS_DEF_RMEMLOOPFUSION
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;
using namespace mlir::scf;

namespace {

// class LoopFusionPattern : public OpRewritePattern<scf::ForOp> {
// public:
//   using OpRewritePattern<ForOp>::OpRewritePattern;
//   LogicalResult matchAndRewrite(ForOp loop, PatternRewriter &rewriter) const override {
//     return mlir::success();  
//   }
// };

/// Verify there are no nested ParallelOps.
static bool hasNestedParallelOp(ParallelOp loop) {
  auto walkResult =
      loop.getBody()->walk([](ParallelOp) { return WalkResult::interrupt(); });
  return walkResult.wasInterrupted();
}

/// Verify equal iteration spaces.
static bool equalIterationSpaces(ForOp firstLoop,
                                 ForOp secondLoop) {
  auto matchOperands = [&](const TypedValue<IndexType> &lhs,
                           const TypedValue<IndexType> &rhs) -> bool {
    // TODO: Extend this to support aliases and equal constants.
    if (auto constLOp = lhs.getDefiningOp<arith::ConstantIndexOp>())
      if (auto constROp = rhs.getDefiningOp<arith::ConstantIndexOp>())
        return constLOp.value() == constROp.value();
    return lhs == rhs;
  };
  return matchOperands(firstLoop.getLowerBound(),
                       secondLoop.getLowerBound()) &&
         matchOperands(firstLoop.getUpperBound(),
                       secondLoop.getUpperBound()) &&
         matchOperands(firstLoop.getStep(), secondLoop.getStep());
}

/// Checks if the loops have mixed access to the same buffers. Returns
/// `true` if the first loop writes to the same indices that the second
/// loop reads.
static bool haveNoReadsAfterWriteExceptSameIndex(
    ForOp firstLoop, ForOp secondLoop,
    const BlockAndValueMapping &firstToSecondLoopIndices) {
  DenseMap<Value, SmallVector<ValueRange, 1>> bufferStores;
  // TODO: check function ?
  firstLoop.getBody()->walk([&](memref::StoreOp store) {
    bufferStores[store.getMemRef()].push_back(store.getIndices());
  });
  auto walkResult = secondLoop.getBody()->walk([&](memref::LoadOp load) {
    // Stop if the memref is defined in secondLoop body. Careful alias analysis
    // is needed.
    auto *memrefDef = load.getMemRef().getDefiningOp();
    if (memrefDef && memrefDef->getBlock() == load->getBlock())
      return WalkResult::interrupt();

    auto write = bufferStores.find(load.getMemRef());
    if (write == bufferStores.end())
      return WalkResult::advance();

    // Allow only single write access per buffer.
    if (write->second.size() != 1)
      return WalkResult::interrupt();

    // Check that the load indices of secondLoop coincide with store indices of
    // firstPloop for the same memrefs.
    auto storeIndices = write->second.front();
    auto loadIndices = load.getIndices();
    if (storeIndices.size() != loadIndices.size())
      return WalkResult::interrupt();
    for (int i = 0, e = storeIndices.size(); i < e; ++i) {
      if (firstToSecondLoopIndices.lookupOrDefault(storeIndices[i]) !=
          loadIndices[i])
        return WalkResult::interrupt();
    }
    return WalkResult::advance();
  });
  return !walkResult.wasInterrupted();
}

/// Analyzes dependencies in the most primitive way by checking simple read and
/// write patterns.
static LogicalResult
verifyDependencies(ForOp firstLoop, ForOp secondLoop,
                   const BlockAndValueMapping &firstToSecondLoopIndices) {
  if (!haveNoReadsAfterWriteExceptSameIndex(firstLoop, secondLoop,
                                            firstToSecondLoopIndices))
    return failure();

  BlockAndValueMapping secondToFirstPloopIndices;
  secondToFirstPloopIndices.map(secondLoop.getBody()->getArguments(),
                                firstLoop.getBody()->getArguments());
  return success(haveNoReadsAfterWriteExceptSameIndex(
      secondLoop, firstLoop, secondToFirstPloopIndices));
}

// TODO: add some real dependency checking
static bool
isFusionLegal(ForOp firstLoop, ForOp secondLoop,
              const BlockAndValueMapping &firstToSecondLoopIndices) {
  if (auto fuseL = firstLoop->getAttrOfType<BoolAttr>("fuse_cand")) {
    if (auto fuseR = secondLoop->getAttrOfType<BoolAttr>("fuse_cand")) {
      if (!fuseL.getValue() || !fuseR.getValue()) {
        return false;
      }
    }
  }
  return equalIterationSpaces(firstLoop, secondLoop) &&
    (true || succeeded(verifyDependencies(firstLoop, secondLoop,
                                firstToSecondLoopIndices)));
}

static void fuseIfLegalAndTarget(ForOp firstLoop, ForOp secondLoop, OpBuilder b) {
  BlockAndValueMapping firstToSecondLoopIndices;
  firstToSecondLoopIndices.map(firstLoop.getBody()->getArguments(),
                                secondLoop.getBody()->getArguments());

  if (!isFusionLegal(firstLoop, secondLoop, firstToSecondLoopIndices)) {
    firstLoop->setAttr("fuse_cand", b.getBoolAttr(false));
    return;
  }

  b.setInsertionPointToStart(secondLoop.getBody());
  for (auto &op : firstLoop.getBody()->without_terminator())
    b.clone(op, firstToSecondLoopIndices);
  firstLoop.erase();
}

void loopFuseLogic(Region &region) {
  OpBuilder b(region);
  // Consider every single block and attempt to fuse adjacent loops.
  for (auto &block : region) {
    SmallVector<SmallVector<scf::ForOp, 8>, 1> loopChains{{}};
    // Traverse only top-level parallel loops and also
    // make sure that there are no side-effecting ops between the loops.
    bool noSideEffects = true;
    for (auto &op : block) {
      if (auto loop = dyn_cast<scf::ForOp>(op)) {
        if (noSideEffects) {
          loopChains.back().push_back(loop);
        } else {
          loopChains.push_back({loop});
          noSideEffects = true;
        }
        continue;
      }
      // TODO: Handle region side effects properly.
      // Relax the condition a bit
      noSideEffects &=
          MemoryEffectOpInterface::hasNoEffect(&op) && op.getNumRegions() == 0;
    }
    for (ArrayRef<ForOp> loops : loopChains) {
      for (int i = 0, e = loops.size(); i + 1 < e; ++i)
        fuseIfLegalAndTarget(loops[i], loops[i + 1], b);
    }
  }
}

}

namespace {
class RMEMLoopFusion : public impl::RMEMLoopFusionBase<RMEMLoopFusion> {
  void runOnOperation() override {
    getOperation()->walk([&](Operation *op){
      for (Region &r : op->getRegions())
        loopFuseLogic(r);
    }); 
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemLoopFusionPass() {
  return std::make_unique<RMEMLoopFusion>();
}