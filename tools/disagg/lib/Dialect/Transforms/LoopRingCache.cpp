#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
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
#define GEN_PASS_DEF_RMEMLOOPRINGCACHE
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;
using namespace mlir::scf;

namespace {
class ForLoopPrefetchInternal {
  struct LoopMeta {
  public:
    LoopMeta(): maxDistance(0), perBlock(0) {}

    void inspectPrefetches() {
      for (auto & [target, addr_dfs] : prefetches) {
        llvm::errs() << "load/store: \n";
        target->dump();
        llvm::errs() << "dfs: \n";
        for (const auto &instr : addr_dfs.second) {
          instr->dump();
        }
        llvm::errs() << "distance: " << distances[target] << "\n";
      }
    }

    // prefetches map {load/store: (addr, set{ dfs } )}
    DenseMap<Operation*, std::pair<Value, std::set<Operation*>>> prefetches;
    DenseMap<Operation*, unsigned> distances;
    DenseMap<Operation*, unsigned> _h;
    DenseMap<Operation*, Value> _oh;
    DenseMap<Operation*, Value> innerBase;
    DenseMap<Operation*, RingCache> caches;
    unsigned maxDistance;
    unsigned perBlock;
    Value lim; // upper - lower
    Value tlim; // (lim + pb - 1) / pb
  };
  
public:
  ForLoopPrefetchInternal(scf::ForOp loop, OpBuilder &rewriter, WorkloadComplexityAnalyzer &analyzer, RemoteMemTypeLowerer &typeConverter): 
  loop(loop), rewriter(rewriter), loopInternal(0), analyzer(analyzer), typeConverter(typeConverter) {}

  static bool is_prefetch_target(const Operation& op) {
    return isa<rmem::StoreOp, rmem::LoadOp>(op);
  }

  // TODO: filter with predicates
  // calculate prefetch distance
  bool preparePrefetches() {
    // estimate loop workload
    // unsigned loopInterval = analyzer.visitBlock(loop.getBody());
    unsigned loopInterval = 100;

    // incase we want to handle call or other complex ops
    // in address computation
    auto dfsComplexity = [&](const std::set<Operation *> &dfs) {
      unsigned c = 0;
      for (auto const &op : dfs) {
        c += analyzer.visitOperation(op);
        if (c >= WorkloadComplexityAnalyzer::uncertain)
          return WorkloadComplexityAnalyzer::uncertain;
      }
      return c;
    };
    // get addr instructions
    // only dfs that involve induction var and within the current loop
    // will be valid
    for (auto &op : loop.getBody()->getOperations()) {
      if (is_prefetch_target(op)) {
        auto dfs = addrPathDFS(&op);
        if (dfs.size()) {
          // leave addr computation only
          dfs.erase(&op);
          unsigned DC = dfsComplexity(dfs);
          Value addr;
          if (auto load = dyn_cast<rmem::LoadOp>(op)) {
            addr = load.getAddr();
          }
          if (auto store = dyn_cast<rmem::StoreOp>(op)) {
            addr = store.getAddr();
          }
          // TODO: if DC > Data movement, cancel prefetch
          // Not likely
          pattern.prefetches[&op] = std::pair(addr, dfs);
          // distances[&op] = ceilDiv(2000, DC + loopInterval);
          pattern.distances[&op] = 8;
          pattern.maxDistance = std::max(pattern.maxDistance, pattern.distances[&op]);
        }
      }
    }

    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPoint(loop);

    pattern.perBlock = 128;
    rewriter.setInsertionPoint(loop);
    Value limIdx = rewriter.create<arith::SubIOp>(loc, 
      loop.getUpperBound(),
      loop.getLowerBound()
    ); 
    pattern.lim = rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), limIdx);
    pattern.tlim = rewriter.create<arith::DivSIOp>(loc, 
      rewriter.create<arith::AddIOp>(loc, 
        pattern.lim,
        rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock - 1, 64)
      ),
      rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock, 64)
    );

    if (pattern.prefetches.empty())
      return false;

    return true;
  }

  void emitRingInit(Operation *op) {
    rewriter.setInsertionPoint(loop);
    Value disaggAddr = getAddrByInduction(op, loop.getLowerBound());

    Type eleType = rmem::getEleTypeFromRemoteMemRef(disaggAddr.getType().cast<RemoteMemRefType>());
    Type rawEleType = typeConverter.convertType(eleType);
    size_t eleSize = 0;
    if (rawEleType.isa<IntegerType, FloatType>() || LLVM::isCompatibleType(rawEleType)) {
      DataLayout DLI(op->getParentOfType<ModuleOp>());
      eleSize = DLI.getTypeSize(rawEleType);
    }
    if (eleSize == 0) {
      llvm::errs() << "cannot determine element size statically\n" ;
    }

    mlir::Location loc = loop.getLoc();
    mlir::Value rbase = rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<rmem::ToIntOp>(loc, rewriter.getI64Type(), disaggAddr),
      rewriter.create<arith::ConstantIntOp>(loc, 4096, rewriter.getI64Type())
    );
    mlir::Value lbase = rewriter.create<arith::ConstantIntOp>(loc, 0, 64);

    size_t blockSize = pattern.perBlock * eleSize;
    RingCache ring(blockSize, 128, blockSize * 128, eleType, eleSize);
    ring.lbase = lbase;
    ring.rbase = rbase;

    // initialize r & s
    Value r = rewriter.create<LLVM::AllocaOp>(loc, 
      LLVM::LLVMPointerType::get(loop.getContext(), rewriter.getI64Type(), 0),
      rewriter.create<arith::ConstantIntOp>(loc, 1, 64), 0
    );
    rewriter.create<LLVM::StoreOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 0, 64), r);
    Value s = rewriter.create<LLVM::AllocaOp>(loc, 
      LLVM::LLVMPointerType::get(loop.getContext(), rewriter.getI64Type(), 0),
      rewriter.create<arith::ConstantIntOp>(loc, 1, 64), 0
    );
    rewriter.create<LLVM::StoreOp>(loc, rewriter.create<arith::ConstantIntOp>(loc, 0, 64), s);
    ring.readID = r;
    ring.writeID = s;
    pattern.caches[op] = ring;
  }

  // Init args of the outer loop:
  // [ori_initarg, _h] _h is prefetch index
  void emitOuterLoop() {
    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPoint(loop);
    // add _h as iter vars
    SmallVector<Value, 3> iterArgs;
    iterArgs.reserve(loop.getNumIterOperands() + pattern.prefetches.size());
    for (auto opd : loop.getInitArgs())
      iterArgs.emplace_back(opd);
    
    unsigned idx = 0;
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      Value h = rewriter.create<arith::ConstantIntOp>(loc, 0, 64);
      pattern._h[target] = idx ++;
      iterArgs.emplace_back(h);
    }
    outerLoop = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantOp>(loc, rewriter.getIndexType(), rewriter.getIndexAttr(0)),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), pattern.tlim),
      rewriter.create<arith::ConstantOp>(loc, rewriter.getIndexType(), rewriter.getIndexAttr(1)),
      iterArgs
    );

    // yield place holder
    rewriter.setInsertionPointToStart(outerLoop.getBody());
    rewriter.create<scf::YieldOp>(loc, outerLoop.getRegionIterArgs());
  }

  void emitPrefetches(Operation *op) {
    mlir::Location loc = loop.getLoc();
    rewriter.setInsertionPointToStart(outerLoop.getBody());
    Value tPre = rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
      rewriter.create<arith::ConstantIntOp>(loc, pattern.distances[op], 64)
    );
    
    scf::WhileOp pfLoop = rewriter.create<scf::WhileOp>(loc, 
      rewriter.getI64Type(), outerLoop.getRegionIterArg(pattern._h[op])
    );

    // construct before region
    Block &before = pfLoop.getBefore().emplaceBlock();
    before.addArgument(rewriter.getI64Type(), loc);
    rewriter.setInsertionPointToStart(&before);

    Value sltTPre = rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::slt, before.getArgument(0), tPre);
    Value sltTLim = rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::slt, before.getArgument(0), pattern.tlim);
    Value cond = rewriter.create<arith::AndIOp>(loc, sltTPre, sltTLim);
    rewriter.create<scf::ConditionOp>(loc, cond, before.getArgument(0));

    // construct after: loop
    Block &after = pfLoop.getAfter().emplaceBlock();
    after.addArgument(rewriter.getI64Type(), loc);
    rewriter.setInsertionPointToStart(&after);

    Value blockIdx = rewriter.create<arith::RemSIOp>(loc, 
      after.getArgument(0), rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].nBlocks, 64)
    );
    Value blockSize = rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].blockSize,64);
    Value laddr = rewriter.create<arith::AddIOp>(loc, 
      pattern.caches[op].lbase,
      rewriter.create<arith::MulIOp>(loc, blockIdx, blockSize)
    );
    Value raddr = rewriter.create<arith::AddIOp>(loc,
      pattern.caches[op].rbase,
      rewriter.create<arith::MulIOp>(loc, after.getArgument(0), blockSize)
    );
    Value opCode = rewriter.create<arith::ConstantIntOp>(loc, IBV_WR_RDMA_READ, 32);

    // call rdma post work request
    ModuleOp m = loop->getParentOfType<ModuleOp>();
    LLVM::LLVMFuncOp rdma = rmem::lookupOrCreateRDMAFn(m);
    rmem::createLLVMCall(rewriter, loc, rdma, {laddr, blockSize, raddr, after.getArgument(0), opCode});

    Value newh = rewriter.create<arith::AddIOp>(loc, after.getArgument(0), rewriter.create<arith::ConstantIntOp>(loc, 1, 64));
    rewriter.create<scf::YieldOp>(loc, newh);

    // record op -> _oh
    pattern._oh[op] = pfLoop.getResult(0);
  }

  // set rewriter to the right position before calling this
  void emitInnerPreLoop(Operation *op) {
    mlir::Location loc = loop.getLoc();
    Value innerAddr = rewriter.create<LLVM::IntToPtrOp>(loc, 
      LLVM::LLVMPointerType::get(outerLoop.getContext(), pattern.caches[op].eleType, 0),
      rewriter.create<arith::AddIOp>(loc, 
        pattern.caches[op].lbase,
        rewriter.create<arith::MulIOp>(loc, 
          rewriter.create<arith::RemSIOp>(loc, 
            rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
            rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].nBlocks, 64)
          ),
          rewriter.create<arith::ConstantIntOp>(loc, pattern.caches[op].blockSize, 64)
        )
      )
    );
    pattern.innerBase[op] = innerAddr;
  }

  void emitInnerLoop() {
    // calculate inner limit
    mlir::Location loc = loop.getLoc();
    Value PB = rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock, 64);
    Value outOfBound = rewriter.create<arith::CmpIOp>(loc, arith::CmpIPredicate::sgt, 
      pattern.lim,
      rewriter.create<arith::MulIOp>(loc, 
        rewriter.create<arith::AddIOp>(loc, 
          rewriter.create<arith::ConstantIntOp>(loc, 1, 64), 
            rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar())), 
      PB)
    );

    scf::IfOp limCond = rewriter.create<scf::IfOp>(loc, rewriter.getI64Type(), outOfBound, true);
    rewriter.setInsertionPointToStart(limCond.thenBlock());
    rewriter.create<scf::YieldOp>(loc, PB);

    rewriter.setInsertionPointToStart(limCond.elseBlock());
    Value within = rewriter.create<arith::SubIOp>(loc, 
      pattern.lim,
      rewriter.create<arith::MulIOp>(loc, 
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()), 
        rewriter.create<arith::ConstantIntOp>(loc, pattern.perBlock, 64))
    );
    rewriter.create<scf::YieldOp>(loc, within);

    rewriter.setInsertionPointAfter(limCond);
    Value ofst = rewriter.create<arith::MulIOp>(loc, 
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar()),
      PB
    );

    // forward iter args to inner loop
    SmallVector<Value, 1> innerIter;
    innerIter.reserve(loop.getNumRegionIterArgs());
    auto outerArgs = outerLoop.getRegionIterArgs();
    for (unsigned i = 0; i < loop.getNumRegionIterArgs(); ++ i) {
      innerIter.emplace_back(outerArgs[i]);
    }

    innerLoop = rewriter.create<scf::ForOp>(loc, 
      rewriter.create<arith::ConstantOp>(loc, rewriter.getIndexType(), rewriter.getIndexAttr(0)),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), limCond.getResult(0)),
      rewriter.create<arith::ConstantIndexOp>(loc, 1),
      innerIter
    );

    innerLoop.getBodyRegion().takeBody(loop.getBodyRegion());
    rewriter.setInsertionPointToStart(innerLoop.getBody());
    auto innerInduction = rewriter.create<arith::AddIOp>(loc, 
      innerLoop.getInductionVar(),
      rewriter.create<arith::IndexCastOp>(loc, rewriter.getIndexType(), ofst)
    );
    innerLoop.getInductionVar().replaceAllUsesExcept(innerInduction, innerInduction);

    for (auto &[target, addr_dfs] : pattern.prefetches) {
      Type ptrTy = LLVM::LLVMPointerType::get(innerLoop.getContext(), pattern.caches[target].eleType, 0);
      Value newAddr = rewriter.create<LLVM::GEPOp>(loc, 
        ptrTy, ptrTy, pattern.innerBase[target], rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), innerLoop.getInductionVar()).getResult()
      );
      Type castTo = addr_dfs.first.getType();
      // if is true remote, make it a fake one
      if (auto rmrefType = castTo.dyn_cast<RemoteMemRefType>())
        castTo = RemoteMemRefType::get(rmrefType.getElementType(), 0);
      newAddr = rewriter.create<rmem::FromAddressOp>(loc, castTo, newAddr);
      addr_dfs.first.replaceAllUsesWith(newAddr);
    }
  }

  void emitKernel() {
    ModuleOp m = loop->getParentOfType<ModuleOp>();
    mlir::Location loc = loop.getLoc();
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitRingInit(target);
    }
    emitOuterLoop();
    Operation *lastPref = nullptr;
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitPrefetches(target);
      lastPref = target;
    }
    if (lastPref)
      rewriter.setInsertionPointAfterValue(pattern._oh[lastPref]);
    for (auto &[target, addr_dfs] : pattern.prefetches) {
      emitInnerPreLoop(target);
    }

    // add ring sync
    if (lastPref) {
      auto rrSync = rmem::lookupOrCreateRRingSync(m);
      rmem::createLLVMCall(rewriter, loc, rrSync, 
        {pattern.caches[lastPref].readID, 
         rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), outerLoop.getInductionVar())});
    }

    emitInnerLoop();

    loop.erase();
    // m.dump();

  }

protected:
  unsigned rbufOfst = 4096;
  scf::ForOp loop;
  OpBuilder &rewriter;
  unsigned loopInternal;
  WorkloadComplexityAnalyzer &analyzer;
  RemoteMemTypeLowerer &typeConverter;

  LoopMeta pattern;
  scf::ForOp outerLoop;
  scf::ForOp innerLoop;

  std::set<Operation *> addrPathDFS(Operation *op) {
    std::set<Operation *> search;
    // rewriter.cloneRegionBefore(loop.getBodyRegion(), loop.getBodyRegion(), loop.getBodyRegion().);
    // rewriter.setInsertionPoint(&loop.getBody()->back());
    for (OpOperand &opd : op->getOpOperands()) {
      if (opd.get() == loop.getInductionVar())
        search.insert(op);
      else {
        Operation *def = opd.get().getDefiningOp();
        if (def && def->getBlock() == loop.getBody()) {
          auto dfs = addrPathDFS(def);
          if (dfs.size()) {
            dfs.insert(op);
            search.merge(dfs);
          }
        }
      }
    }
    return search;
  }

  Operation *cloneAndMapOperands(Operation* op, DenseMap<Value, Value> &valueMapping) {
    std::function<void(OpOperand *)> mapping = [&](OpOperand *newOpd) {
      auto it = valueMapping.find(newOpd->get());
      if (it != valueMapping.end()) {
        newOpd->set(it->second);
      }
    };
    Operation *clone = rewriter.clone(*op);
    for (OpOperand &opd : clone->getOpOperands())
      mapping(&opd);

    clone->walk([&](Operation *within) {
      for (OpOperand &opd : within->getOpOperands()) {
        Operation *def = opd.get().getDefiningOp();
        if (def && !clone->isAncestor(def))
          mapping(&opd);
      }
    });
    return clone;
  }

  // set rewriter to the correct position before calling this
  // calculate the access address for "target" given the induction variable "phi"
  Value getAddrByInduction(Operation* target, Value phi) {
    DenseMap<Value, Value> valueMapping;
    // initialize induction variable mapping
    valueMapping[loop.getInductionVar()] = phi;
    const auto &[addr, dfs] = pattern.prefetches[target];
    for (Operation *op : dfs) {
      Operation *newOp = cloneAndMapOperands(op, valueMapping);
      for (unsigned i : llvm::seq(unsigned(0), op->getNumResults())) {
        valueMapping[op->getResult(i)] = newOp->getResult(i);
      }
    }
    return valueMapping[addr];
  }

};

}

namespace {

class RMEMLoopRingCache : public impl::RMEMLoopRingCacheBase <RMEMLoopRingCache> {

  void runOnOperation() override {
    ModuleOp op = getOperation();
    MLIRContext *ctx = op.getContext();
    RemoteMemTypeLowerer typeConverter(ctx);

    OpBuilder ob(op);
    WorkloadComplexityAnalyzer internalAnalyzer;

    // Populate worklist
    std::vector<ForLoopPrefetchInternal> workList;
    op.walk([&](scf::ForOp loop) {
      bool hasStore = llvm::any_of(loop.getBody()->getOperations(), [](Operation &op) {
        return isa<rmem::StoreOp>(&op);
      });
      bool hasLoad = llvm::any_of(loop.getBody()->getOperations(), [](Operation &op) {
        return isa<rmem::LoadOp>(&op);
      });
      if (!hasStore ^ hasLoad)
        return WalkResult::advance();
      workList.push_back(ForLoopPrefetchInternal(loop, ob, internalAnalyzer, typeConverter));
      return WalkResult::advance();
    });

    for (auto PI : workList) {
      if (PI.preparePrefetches())
        PI.emitKernel();
    }
  }
};

}

std::unique_ptr<Pass> mlir::createRemoteMemLoopRingCachePass() {
  return std::make_unique<RMEMLoopRingCache>();
}