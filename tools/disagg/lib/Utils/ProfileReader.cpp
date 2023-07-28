#include "llvm/Support/ScopedPrinter.h"
#include "llvm/Support/MemoryBuffer.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"

#include "Utils/Passes.h"

#include <string>
#include <map>
#include <fstream>

using namespace mlir;

static void loadProfilingFromFile(std::string fileName, std::vector<ProfilingResult> &docs) {
  auto reader = llvm::MemoryBuffer::getFile(fileName);

  llvm::yaml::Input yin(**reader);
  yin >> docs;

  if (yin.error())
    return;
}

void AllocationAnnotationPass::runOnOperation() {
    parseProfilingResults();

    int allocationId = 0;
    auto moduleOp = getOperation();
    bool isAnnotation = annotateOption.hasValue();

    moduleOp->walk([isAnnotation, &allocationId,
                    &allocationMap = allocationMap](mlir::Operation *op) {
      if (isa<memref::AllocOp>(op)) {
        OpBuilder builder(op);
        int curAllocation = allocationId++;


        // annotate if necessary
        if (isAnnotation)
          op->setAttr("allocation_id",
                      builder.getI32IntegerAttr(curAllocation));

        if (allocationMap.find(curAllocation) != allocationMap.end()) {
          op->setAttr("remote_target", builder.getI64IntegerAttr(1));
        }

      } else if (isa<func::FuncOp>(op)) {
        // modify parameter list
      } else if (isa<func::CallOp>(op)) {

      }
    });
}

void AllocationAnnotationPass::parseProfilingResults() {
  if (!memoryProfOption.hasValue() && !cpuProfOption.hasValue() &&
      !runtimeProfOption.hasValue()) {
    // there's no input file. maybe just annotating
    return;
  }

  {
    std::vector<ProfilingResult> docs;
    loadProfilingFromFile(memoryProfOption.getValue(), docs);

    for (auto &profilingResult : docs) {
      allocationMap[profilingResult.value] = profilingResult;
    }
  }

  return;
}

std::unique_ptr<Pass> mlir::createAllocationAnnotationPass() {
    return std::make_unique<AllocationAnnotationPass>();
}
