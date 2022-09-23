#ifndef REMOTE_MEM_PASSES
#define REMOTE_MEM_PASSES

include "mlir/Pass/PassBase.td"

def MemRefDisaggregation: Pass<"convert-memrefmem-to-remote", "ModuleOp"> {
  let summary = "Convert memref operations that involve memory side effects to remotemem ops";
  let constructor = "mlir::disagg::createMemRefDisaggPass()";
}

def LLVMDisaggregation : Pass<"convert-llvm-to-remote", "ModuleOp"> {
  let summary = "Currently only convert llvm function call to malloc";
  let constructor = "mlir::disagg::createLLVMDisaggregationPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

def BltFuncSigDisaggregation : Pass<"convert-builtin-func-to-remote", "ModuleOp"> {
  let summary = "Convert builtin function op, call, return op that involve pointer/memref types to remote memref type";
  let constructor = "mlir::disagg::createBltFuncSigDisaggregationPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

#endif
