#include "llvm/Support/ScopedPrinter.h"
#include "llvm/Support/MemoryBuffer.h"
#include "mlir/Pass/Pass.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"

#include "Dialect/RemoteMem.h"
#include "Utils/Passes.h"

#include <algorithm>
#include <numeric>
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
    float memoryFactor = memoryFactorOption.hasValue() ? annotateOption.getValue() : 1;
    uint64_t memoryLimit = 4096;

    moduleOp->walk([isAnnotation, memoryFactor, memoryLimit,
                    &allocationId,
                    &allocationMap = allocationMap](mlir::Operation *op) {
      OpBuilder builder(op);
      if (isa<memref::AllocOp>(op)) {
        int curAllocation = allocationId++;
        // annotate if necessary
        if (isAnnotation)
          op->setAttr("allocation_id",
                      builder.getI32IntegerAttr(curAllocation));

        if (allocationMap.find(curAllocation) != allocationMap.end()) {
          if (objectLimitFilter(curAllocation, op->getResult(0).getType(), memoryLimit) && objectDependencyFilter(op))
            op->setAttr("remote_target", builder.getI64IntegerAttr(1));
        }

	for (auto user : op->getUsers()) {
		if (user->getName().getStringRef() == func::ReturnOp::getOperationName())
			op->setAttr("remote_target", builder.getI64IntegerAttr(1));
	}

      } else if (isa<func::FuncOp>(op)) {
        auto funcOp = cast<func::FuncOp>(op);
        auto funcType = funcOp.getFunctionType();

        // annotate on non-allocation part
        if (memoryFactor != 1 && funcType.getNumResults() > 0) {
          op->setAttr("remote_target", builder.getI64IntegerAttr(1));

          auto operandTypes = funcType.getInputs();
          std::vector<Type> newOperandTypes;
          std::transform(operandTypes.begin(), operandTypes.end(),
                         std::back_inserter(newOperandTypes), [memoryLimit](const Type &t) -> Type {
                          return objectLimitFilter(1, t, memoryLimit) ?  rmem::RemoteMemRefType::get(t, 1) : t;
                         });
          op->setAttr("operand_types", builder.getTypeArrayAttr(newOperandTypes));

          auto retType = rmem::RemoteMemRefType::get(funcType.getResult(0), 1);
          op->setAttr("rel_types", builder.getTypeArrayAttr(retType));
        }
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

bool objectDependencyFilter(Operation *op) {
  for (auto user : op->getUsers()) {
      if (user->getName().getStringRef() == func::CallOp::getOperationName()) {
          return false;
      } else if (user->getName().getStringRef() == memref::CastOp::getOperationName()) {
          return objectDependencyFilter(user);
      }
  }
  return true;
}

bool objectLimitFilter(uint64_t number, Type type, uint64_t memoryLimit) {
  if (isa<MemRefType>(type)) {
    auto memrefType = cast<MemRefType>(type);
    auto shape = memrefType.getShape();
    auto bytes = std::reduce(shape.begin(), shape.end(),  1ULL, std::multiplies<uint64_t>());
    if (bytes < memoryLimit)
      return false;
  }

  return number > 0;
}

std::unique_ptr<Pass> mlir::createAllocationAnnotationPass() {
    return std::make_unique<AllocationAnnotationPass>();
}
