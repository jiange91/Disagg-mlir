#include "llvm/Support/ScopedPrinter.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"

#include "Utils/Passes.h"

#include <string>
#include <map>

using namespace mlir;

void AllocationAnnotationPass::runOnOperation() {
    int allocationId = 0;
    auto moduleOp = getOperation();

    moduleOp->walk([
      &allocationId
      ](mlir::Operation *op) {
      if (isa<memref::AllocOp>(op)) {
        OpBuilder builder(op);
        int curAllocation = allocationId++;
        op->setAttr("allocation_id", builder.getI32IntegerAttr(curAllocation));
        // if (objects.contains(allocationId))
        //   op->setAttr("remote", builder.getI32IntegerAttr(curAllocation));
      } else if (isa<func::FuncOp>(op)) {
        // modify parameter list
      } else if (isa<func::CallOp>(op)) {

      }
    });
}

void AllocationAnnotationPass::parseProfilingResults() {
  std::vector<std::vector<ProfilingResult>> docs{};

  // llvm::yaml::Input yin();
  // yin >> docs;

  // if (yin.error())
  //   return;

}

std::unique_ptr<Pass> mlir::createAllocationAnnotationPass() {
    return std::make_unique<AllocationAnnotationPass>();
}
