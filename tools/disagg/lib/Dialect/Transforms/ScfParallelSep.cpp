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
#include <unordered_map>
#include <set>

namespace mlir {
#define GEN_PASS_DEF_RMEMSCFPARALLELSEP
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;
using namespace mlir::scf;

namespace {

Type transformType(Type type, int id, int factor) {
  if (auto rmrefType = type.dyn_cast<rmem::RemoteMemRefType>()) {
    return rmem::RemoteMemRefType::get(rmrefType.getElementType(), rmrefType.getCanRemote() + id * factor);
  } else
    return type;
}

void parallelAssign(func::FuncOp funcOp, int id, int factor) {
  auto operands = funcOp.getArguments();
  std::vector<Type> newArgTypes;
  for (auto op : operands) {
    auto newType = transformType(op.getType(), id, factor);
    op.setType(newType);
    newArgTypes.push_back(newType);
  }
  funcOp.setFunctionType(mlir::FunctionType::get(funcOp.getContext(), newArgTypes, funcOp.getFunctionType().getResults()));
}

void parallelSeperation(scf::ParallelOp para, ModuleOp mop, std::map<func::CallOp, func::FuncOp> &oldCalls) {
  OpBuilder b(para);
  MLIRContext *ctx = mop->getContext();
  mlir::Location loc = para.getLoc();
  uint64_t plevel = para->getAttrOfType<IntegerAttr>("N_thread").getValue().getZExtValue();

  scf::ForOp newLoop = b.create<scf::ForOp>(loc, para.getLowerBound().front(), para.getUpperBound().front(), para.getStep().front(), para.getInitVals());
  newLoop.getBodyRegion().takeBody(para.getBodyRegion());
  para.erase();

  // for every call op in this new for loop, duplicate the callee
  for (func::CallOp callOp : newLoop.getBodyRegion().getOps<func::CallOp>()) {
    StringRef callee = callOp.getCallee();
    auto func = mop.lookupSymbol<func::FuncOp>(callee);

    // create a swtich-like pattern
    for (uint64_t i = 0; i < plevel; ++ i) {
      // create new function
      auto newFunc = dyn_cast<func::FuncOp>(func->clone(Operation::CloneOptions::all()));
      newFunc.setName(callee.str() + "__" + std::to_string(i));
      b.setInsertionPointAfter(func);
      b.insert(newFunc);
      parallelAssign(newFunc, i, 2);

      auto funcType = mlir::FunctionType::get(ctx,
        newFunc.getArgumentTypes(), newFunc.getResultTypes());
      auto fakeFunc = b.create<func::FuncOp>(loc, "run_task_" + std::to_string(i), funcType);
      fakeFunc.setPrivate();
      fakeFunc->setAttr("llvm.linkage", mlir::LLVM::LinkageAttr::get(ctx, LLVM::Linkage::External));
      fakeFunc->setAttr("llvm.emit_c_interface", b.getUnitAttr());

      b.setInsertionPoint(callOp);
      Value match = b.create<arith::CmpIOp>(loc, arith::CmpIPredicate::eq, 
        b.create<arith::ConstantIndexOp>(loc, i),
        newLoop.getInductionVar()
      );
      // NOTE: assume callop does not have result
      scf::IfOp cond = b.create<scf::IfOp>(loc, match, false);
      b.setInsertionPointToStart(cond.thenBlock());
      // process operands
      auto newOperands = llvm::to_vector<4>(
          llvm::map_range(callOp.getOperands(), [&](Value operand) -> Value {
            auto newType = transformType(operand.getType(), i, 2);
            if (newType != operand.getType()) {
              auto newValue = b.create<rmem::BitCastOp>(loc, newType, operand);
              return newValue;
            } else
              return operand;
          }));
      b.create<func::CallOp>(loc, fakeFunc.getNameAttr(), callOp.getResultTypes(), newOperands);
    }
    oldCalls[callOp] = func;
  }
}
}

namespace {
class RMEMScfParallelSep : public impl::RMEMScfParallelSepBase<RMEMScfParallelSep> {
  void runOnOperation() override {
    ModuleOp mop = getOperation();
    std::map<func::CallOp, func::FuncOp> oldCalls;
    mop->walk([&](scf::ParallelOp para) {
      parallelSeperation(para, mop, oldCalls);
    });
    // to prevent excessive local buffer
    for (auto [call, func] : oldCalls) {
      call->erase();
      func->erase();
    }
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemSCFParallelSepPass() {
  return std::make_unique<RMEMScfParallelSep>();
}