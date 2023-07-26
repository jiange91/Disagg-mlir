#include "llvm/Support/ScopedPrinter.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"

#include "Utils/Passes.h"

#include <string>
#include <map>

using namespace mlir;

void AllocationAnnotationPass::runOnOperation() {
    int allocationId = 0;
    auto intType = IntegerType::get(getOperation()->getContext(), 32);

    getOperation()->walk([&intType, &allocationId](mlir::Operation *op) {
      // llvm::outs() << "[Op] ";
      // op->print(llvm::outs());
      // llvm::outs() << " [Loc] " <<  op->getLoc() << "\n";

      if (isa<memref::AllocOp>(op)) {
        op->setAttr("remote_target", BoolAttr::get(op->getContext(), 1));
        op->setAttr("allocation_id", IntegerAttr::get(intType, allocationId++));
      } else if (isa<LLVM::CallOp>(op)) {
        auto callOp = cast<LLVM::CallOp>(op);
        callOp.getCallee();
      }
    });
}

void AllocationAnnotationPass::parseProfilingResults() {
    // profilingResultsOption.getArgStr();
    // llvm::yaml::Input input;

    // filter for non-alloc types
    // construct dict
}

std::unique_ptr<Pass> mlir::createAllocationAnnotationPass() {
    return std::make_unique<AllocationAnnotationPass>();
}
