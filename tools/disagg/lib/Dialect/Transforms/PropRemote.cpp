#include "Dialect/Transforms/Passes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "Dialect/RemoteMem.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Dialect/Affine/IR/AffineOps.h"
#include "mlir/Dialect/Vector/IR/VectorOps.h"
#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "llvm/Support/TypeName.h"
#include "mlir/Transforms/GreedyPatternRewriteDriver.h"
#include <set>
#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

namespace mlir {
#define GEN_PASS_DEF_RMEMPROPREMOTE
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;

namespace {

static inline std::pair<bool, Type> hasTargetTypeImpl(Type t, SetVector<Type> &callStack, DictionaryAttr &rule) {
  if (callStack.contains(t)) 
    return {false, t};
  callStack.insert(t);
  auto stackGurard = llvm::make_scope_exit([&] { callStack.pop_back(); });
  auto hasTargetTypeHandler = [&](Type type) {
    return hasTargetTypeImpl(type, callStack, rule);
  };
  return llvm::TypeSwitch<Type, std::pair<bool, Type>>(t)
    .Case<LLVM::LLVMStructType>([&](LLVM::LLVMStructType ST) -> std::pair<bool, Type> {
      if (ST.isIdentified()) {
        if (auto find = rule.get(ST.getName())) 
          return { ST.getName() == "struct.arc", find.cast<TypeAttr>().getValue()};
        // TODO: nested struct
      }
      return {false, ST};
    })
    .Case<LLVM::LLVMArrayType>([&](LLVM::LLVMArrayType aryType) -> std::pair<bool, Type> {
      auto ET = hasTargetTypeHandler(aryType.getElementType());
      if (ET.first) {
        llvm::errs() << "Cannot handle array of rmem target type\n";
      }
      return { false, LLVM::LLVMArrayType::get(ET.second, aryType.getNumElements()) };
    })
    .Case<LLVM::LLVMPointerType>([&](LLVM::LLVMPointerType PT) -> std::pair<bool, Type> {
      if (PT.isOpaque())
        return { false, PT };
      auto ET = hasTargetTypeHandler(PT.getElementType());
      auto LET = LLVM::LLVMPointerType::get(ET.second, PT.getAddressSpace());
      if (ET.first)
        return { false, rmem::RemoteMemRefType::get(LET, 1) };
      return { false, LET };
    })
    .Default([](Type t) -> std::pair<bool, Type> { return {false, t} ; });
}

static inline Type hasTarget(Type t, DictionaryAttr &rule) {
  SetVector<Type> callStack;
  return hasTargetTypeImpl(t, callStack, rule).second;
}

class RMEMPropRemotePass: public impl::RMEMPropRemoteBase<RMEMPropRemotePass> {
  void runOnOperation() override {
    func::FuncOp funcOp = getOperation();
    OpBuilder b(funcOp);

    // Get funcOp signature inputs
    if (auto its = funcOp->getAttrOfType<mlir::ArrayAttr>("operand_types")) {
      for (auto &en : llvm::enumerate(its.getAsValueRange<mlir::TypeAttr>())) {
        en.value().dump();
        // result.addInputs(en.index(), en.value());
      }
    } else {
      for (auto &en : llvm::enumerate(funcOp.getArgumentTypes())) {
        // result.addInputs(en.index(), en.value());
        en.value().dump();
      }
    }

    // Create resultTypes for new funcOp
    SmallVector<Type, 4> resultTypes;
    if (auto rts = funcOp->getAttrOfType<mlir::ArrayAttr>("rel_types")) {
      for (Type en : rts.getAsValueRange<mlir::TypeAttr>())
        resultTypes.push_back(en);
    } else {
      for (Type en : funcOp.getResultTypes())
        resultTypes.push_back(en);
    }
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemPropRemotePass() {
  return std::make_unique<RMEMPropRemotePass>();
}
