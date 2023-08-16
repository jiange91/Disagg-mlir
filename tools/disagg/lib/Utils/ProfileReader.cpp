#include "llvm/Support/ScopedPrinter.h"
#include "llvm/Support/MemoryBuffer.h"
#include "mlir/Pass/Pass.h"
#include "mlir/IR/IntegerSet.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"

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

Type typeAttrArrayToType(Attribute attr) {
  auto typeAttr = attr.dyn_cast<ArrayAttr>()[0];
  return typeAttr.dyn_cast<TypeAttr>().getValue();
}

Type transformStruct(MLIRContext *context, Type type, int cacheId = 0) {
  if (isa<LLVM::LLVMPointerType>(type)) {
    auto ptrType = cast<LLVM::LLVMPointerType>(type);
    auto innerType = transformStruct(context, ptrType.getElementType(), cacheId);
    auto newPtrType = LLVM::LLVMPointerType::get(innerType);
    if (isa<LLVM::LLVMPointerType>(innerType) || isa<LLVM::LLVMStructType>(innerType))
      return newPtrType;
    else
      return rmem::RemoteMemRefType::get(newPtrType, cacheId);
  } else if (isa<LLVM::LLVMStructType>(type)) {
    auto structType = cast<LLVM::LLVMStructType>(type);
    std::vector<Type> newElementTypes;
    for (auto elementType : structType.getBody()) {
      newElementTypes.push_back(transformStruct(context, elementType, cacheId));
    }
    return LLVM::LLVMStructType::getLiteral(context, newElementTypes);
  } else
    return type;
}

unsigned walkRemoteType(Type type) {
  if (auto ptrType = dyn_cast<LLVM::LLVMPointerType>(type))
    return walkRemoteType(ptrType.getElementType());
  else if (auto structType = dyn_cast<LLVM::LLVMStructType>(type)) {
    for (auto elementType : structType.getBody())
      return walkRemoteType(elementType);
  } else if (auto rmrefType = dyn_cast<rmem::RemoteMemRefType>(type)) {
    return rmrefType.getCanRemote();
  }
  return 0;
}

func::FuncOp
AllocationAnnotationPass::propogateRemotableFunction(func::FuncOp funcOp,
                                                     int index, Type type) {
  OpBuilder builder(funcOp);

  auto &typeFuncs = funcOverrideMap[{funcOp.getName().str(), index}];
  if (auto typeIt = typeFuncs.find(hash_value(type)); typeIt != typeFuncs.end())
    return typeIt->second;

  auto newFuncOp = dyn_cast<func::FuncOp>(funcOp->clone());
  newFuncOp.setName(funcOp.getName().str() + "__" + std::to_string(typeFuncs.size()));

  auto types = newFuncOp->hasAttr("operand_types")
                  ? llvm::to_vector(llvm::map_range(
                      newFuncOp->getAttrOfType<ArrayAttr>("operand_types").getValue(),
                      [](Attribute attr){ return attr.dyn_cast<TypeAttr>().getValue(); }))
                  : llvm::to_vector(newFuncOp.getArgumentTypes());
  types[index] = type;

  newFuncOp->setAttr("operand_types", builder.getTypeArrayAttr(types));
  newFuncOp->setAttr("remote_target",  builder.getI64IntegerAttr(1));

  auto id = walkRemoteType(type);

  auto _retType = newFuncOp.getResultTypes()[0];
  if (isa<LLVM::LLVMPointerType>(_retType))
    newFuncOp->setAttr("rel_types", builder.getTypeArrayAttr(rmem::RemoteMemRefType::get(_retType, id)));
  llvm::errs() << "propogate remotable function: " << newFuncOp.getName() << "\n";
  llvm::errs() << "propogate remotable function: " << newFuncOp << "\n\n\n";

  builder.setInsertionPointAfter(funcOp);
  builder.insert(newFuncOp);

  typeFuncs[hash_value(type)] = newFuncOp;
  return newFuncOp;
}

void AllocationAnnotationPass::propogateRemotableOperator(Operation* op, Type remoteType, Operation* parentOp) {
  auto moduleOp = getOperation();
  SymbolTableCollection symbolTable;
  OpBuilder builder(op);

  llvm::errs() << "With remote type: " << remoteType << "\n";

  if (auto globalOp = dyn_cast<LLVM::GlobalOp>(op)) {
    llvm::errs() << "propogate global op\n" << globalOp << "\n";
    auto uses = globalOp.getSymbolUses(moduleOp);
    if (uses.has_value()) {
      for (auto &use : uses.value())
        propogateRemotableOperator(use.getUser(), remoteType, op);
    }
  } else if (auto addressOfOp = dyn_cast<LLVM::AddressOfOp>(op)) {
    llvm::errs() << "propogate addressof op\n" << addressOfOp << "\n";
    if (!isa<LLVM::GlobalOp>(parentOp))
      return;
    addressOfOp->setAttr("remote_target", builder.getI64IntegerAttr(1));
    remoteType = LLVM::LLVMPointerType::get(remoteType);
    addressOfOp->setAttr("rel_types", builder.getTypeArrayAttr(remoteType));
    for (auto use: addressOfOp->getUsers())
      propogateRemotableOperator(use, remoteType, addressOfOp);
  } else if (auto loadOp = dyn_cast<LLVM::LoadOp>(op)) {
    llvm::errs() << "propogate load op\n" << loadOp << "\n";
    if (auto ptrType = dyn_cast<LLVM::LLVMPointerType>(remoteType))
      for (auto use: loadOp->getUsers())
        propogateRemotableOperator(use, ptrType.getElementType(), loadOp);
  } else if (auto callOp = dyn_cast<func::CallOp>(op)) {
    llvm::errs() << "propogate call op\n" << callOp << "\n";
    auto callee = callOp.getCallee();
    symbolTable.getSymbolTable(moduleOp);
    auto funcOp = symbolTable.lookupNearestSymbolFrom(callOp, builder.getStringAttr(callee));
    llvm::errs() << "trace to function: " << callee << ", result: " << funcOp << "\n";

    auto operands = callOp.getArgOperands();
    auto index = std::distance(operands.begin(), std::find(operands.begin(), operands.end(), parentOp->getResult(0)));
    auto targetCallee = propogateRemotableFunction(dyn_cast<func::FuncOp>(funcOp), index, remoteType);

    callOp->setAttr("remote_target", builder.getI64IntegerAttr(1));
    if (targetCallee->hasAttr("rel_types"))
      callOp->setAttr("rel_types", targetCallee->getAttr("rel_types"));
    if (targetCallee.getName() != dyn_cast<func::FuncOp>(funcOp).getName())
      callOp->setAttr("remote_callee", builder.getStringAttr(targetCallee.getName()));
  } 
}

void AllocationAnnotationPass::propogateRemotable() {
  auto op = getOperation();
  OpBuilder builder(op);
  unsigned remote_id = 1;
  op->walk([this, op, &remote_id, &builder](LLVM::GlobalOp globalOp) {
    if (!globalOp->hasAttr("remote_target"))
      return;
    if (!globalOp->hasAttr("rel_types"))
      globalOp->setAttr(
          "rel_types", builder.getTypeArrayAttr(transformStruct(
                           op->getContext(), globalOp.getType(), remote_id++)));

    auto remoteType = globalOp->getAttrOfType<ArrayAttr>("rel_types")[0].dyn_cast<TypeAttr>().getValue();
    propogateRemotableOperator(globalOp, remoteType, op);
  });
}

void AllocationAnnotationPass::duplicateFunctions() {
  std::vector<Operation*> functions;
  auto moduleOp = getOperation();
  OpBuilder builder(moduleOp);

  moduleOp->walk([moduleOp, &builder](func::FuncOp funcOp) {
    if (!funcOp->hasAttr("remote_target"))
      return WalkResult::advance();
    
    std::vector<CallOpInterface> localCalls{}, remoteCalls{};
    auto uses = funcOp.getSymbolUses(moduleOp);
    if (!uses.has_value())
      return WalkResult::advance();

    for (auto use : uses.value())
      if (Operation *callOp = dyn_cast<CallOpInterface>(use.getUser())) {
        if (callOp->hasAttr("remote_target"))
          remoteCalls.push_back(callOp);
        else
          localCalls.push_back(callOp);
      }

    llvm::errs() << "Function: " << funcOp.getName() << ", local calls: " << localCalls.size() << "\n";

    if (localCalls.empty())
      return WalkResult::advance();

    auto newFuncOp = dyn_cast<func::FuncOp>(funcOp->clone());
    newFuncOp.setName("_remote__" + funcOp.getName().str());
    builder.setInsertionPointAfter(funcOp);
    builder.insert(newFuncOp);

    funcOp->removeAttr("remote_target");
    funcOp->removeAttr("rel_type");

    llvm::errs() << "Duplicate Function: " << funcOp.getName() << ", to function: " << newFuncOp.getName() << "\n";

    // Annotate funcop callers
    for (auto &callOp : remoteCalls)
      callOp->setAttr("remote_callee",
                      builder.getStringAttr(newFuncOp.getName()));
    return WalkResult::advance();
  });
}

void AllocationAnnotationPass::runOnOperation() {
    parseProfilingResults();

    int allocationId = 0;
    auto moduleOp = getOperation();
    bool isAnnotation = annotateOption.hasValue();
    float memoryFactor = memoryFactorOption.hasValue() ? annotateOption.getValue() : 1;
    uint64_t memoryLimit = 4096;

    moduleOp->walk([&memoryFactor, &memoryLimit](func::FuncOp op) {
      OpBuilder builder(op);
      auto funcOp = cast<func::FuncOp>(op);
      auto funcType = funcOp.getFunctionType();

      // annotate on non-allocation part
      if (memoryFactor != 1 && funcType.getNumResults() > 0) {
        op->setAttr("remote_target", builder.getI64IntegerAttr(1));

        auto operandTypes = funcType.getInputs();
        std::vector<Type> newOperandTypes;
        std::transform(operandTypes.begin(), operandTypes.end(),
                       std::back_inserter(newOperandTypes),
                       [memoryLimit](const Type &t) -> Type {
                         return objectLimitFilter(1, t, memoryLimit)
                                    ? rmem::RemoteMemRefType::get(t, 1)
                                    : t;
                       });
        op->setAttr("operand_types", builder.getTypeArrayAttr(newOperandTypes));

        auto retType = rmem::RemoteMemRefType::get(funcType.getResult(0), 1);
        op->setAttr("rel_types", builder.getTypeArrayAttr(retType));
      }
    });

    moduleOp->walk([](func::CallOp op) {
      OpBuilder builder(op);
      auto callOp = cast<func::CallOp>(op);
      auto func = callOp.getCallableForCallee();
    });

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
          if (objectLimitFilter(curAllocation, op->getResult(0).getType(), memoryLimit))
            op->setAttr("remote_target", builder.getI64IntegerAttr(1));
        }

      }
    });

    propogateRemotable();
    // duplicateFunctions();

    // mark remotable functions
    moduleOp->walk([](func::FuncOp funcOp) {
      if (!funcOp->hasAttr("remote_target")) {
        auto result = funcOp->walk([](Operation *op) {
          if (op->hasAttr("remote_target"))
            return WalkResult::interrupt();
          return WalkResult::advance();
        });
        OpBuilder builder(funcOp);
        if (result.wasInterrupted())
          funcOp->setAttr("remote_target", builder.getI64IntegerAttr(1));
      }
    });

    // For parallelsim
    // if (auto parallelOp = dyn_cast<scf::ParallelOp>(getOperation())) {
    //   auto step = parallelOp.getStep();
    //   auto lowerBound = parallelOp.getLowerBound();
    //   auto upperBound = parallelOp.getUpperBound();

    //   if (lowerBound.size() != 1 || upperBound.size() != 1 || step.size() != 1)
    //     return;
    //   auto stepValue = step[0];
    //   if (!isConstantIntValue(step[0], 1) || !isConstantIntValue(lowerBound[0], 0))
    //     return;

    //   int numThreads = 4;

    //   OpBuilder builder(parallelOp);
    //   auto funcOp = dyn_cast<func::FuncOp>(getOperation());
    //   auto callOp = dyn_cast<func::CallOp>(getOperation());

    //   // build a pid_t array
    //   // build new functions for threads
    //   for (int i = 0; i < numThreads; i++) {
    //     auto newFuncOp = dyn_cast<func::FuncOp>(funcOp->clone());
    //     newFuncOp.setName(funcOp.getName().str() + "__" + std::to_string(i));
    //     builder.setInsertionPointAfter(funcOp);
    //     builder.insert(newFuncOp);

    //     // do this at generation time.
    //     auto loc = funcOp->getLoc();
    //     scf::IfOp ifOp = builder.create<scf::IfOp>(loc,
    //       builder.getI1Type(),
    //       builder.create<arith::CmpIOp>(loc, arith::CmpIPredicate::eq, 
    //         inductionVar,
    //         builder.create<arith::ConstantIntOp>(loc, 0, i)),
    //       false
    //     );
    //     builder.setInsertionPointToStart(ifOp.thenBlock());
        
    //     auto newCallOp = dyn_cast<func::CallOp>(callOp->clone());
    //     newCallOp.setCallee(newFuncOp.getName());
    //     builder.insert(newCallOp);
    //   }
      // dispatch to different funcion at thread time. use a if-else tree
    // }

    // another pass for parallel call
    // parallel -> normal llvm loop
    // call -> thread call

    // add a wait after calls
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
    if (isa<func::CallOp>(user)) {
      if (!user->hasAttr("remote_target"))
        return false;
    } else if (isa<memref::CastOp>(user) || isa<memref::ReinterpretCastOp>(user)) {
      // Follow the casting Ops
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
