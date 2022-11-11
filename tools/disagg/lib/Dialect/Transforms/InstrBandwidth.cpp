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
#include "llvm/ADT/SetVector.h"
#include "llvm/Support/TypeName.h"

namespace mlir {
#define GEN_PASS_DEF_RMEMINSTRBANDWIDTHPROF
#include "Dialect/Transforms/Passes.h.inc"
}

using namespace mlir;
using namespace mlir::rmem;

constexpr auto pfx = "_PL_DISAGG_rmem_instr_bandwidth_dag_";

namespace {
class RMEMInstrBandwidthProf : public impl::RMEMInstrBandwidthProfBase<RMEMInstrBandwidthProf> {
  void runOnOperation() override {
    LLVM::LLVMFuncOp funcOp = getOperation();
    mlir::ModuleOp m = funcOp->getParentOfType<ModuleOp>();

    unsigned nobj = 0;
    funcOp->walk([&](LLVM::CallOp access) {
      auto callee = access.getCallee();
      if (callee.has_value() && isCacheAccessOp(*callee)) {
        nobj ++;
      }
    }); 
    if (!nobj) 
      return;

    // get function name and encode it  
    // using as the name for the counter set
    LLVM::GlobalOp gCtr = lookupOrCreateGlobalCtrName(m, (pfx + funcOp.getName()).str(), funcOp.getName());
    // add counter 
    OpBuilder eb(funcOp.getFunctionBody());
    mlir::Value ptrCtr = eb.create<LLVM::GEPOp>(funcOp.getLoc(),
      getVoidPtrType(funcOp.getContext()),
      eb.create<LLVM::AddressOfOp>(funcOp.getLoc(), gCtr).getRes(),
      ArrayRef<LLVM::GEPArg>{0, 0}
    );
    auto hash = createIntConstant(eb, funcOp.getLoc(), 0, getIntBitType(funcOp.getContext(), 64));
    auto nctrs = createIntConstant(eb, funcOp.getLoc(), nobj, getIntBitType(funcOp.getContext(), 32)); 

    unsigned objI = 0;

    funcOp->walk([&](LLVM::CallOp access) {
      auto callee = access.getCallee();
      if (!callee.has_value() || !isCacheAccessOp(*callee)) {
        return WalkResult::advance();
      }

      // found an access
      // the name of this counter will be pfx + funcname
      // the index is the visit order (function wise)
      OpBuilder b(access);
      auto instrInc = lookupOrCreateInstrInc(m);
      (void) createLLVMCall(b, access.getLoc(), instrInc,
        {
          ptrCtr, 
          hash,
          nctrs,
          createIntConstant(b, access.getLoc(), objI, getIntBitType(access.getContext(), 32)) /* num ctrs */, 
        }
      );
      objI ++;
      return WalkResult::advance();
    });
  }
};
}

std::unique_ptr<Pass> mlir::createRemoteMemInstrBWProf() {
  return std::make_unique<RMEMInstrBandwidthProf>();
}