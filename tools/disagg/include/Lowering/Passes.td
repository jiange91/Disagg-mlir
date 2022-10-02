#ifndef LOWER_REMOTE_MEM
#define LOWER_REMOTE_MEM

include "mlir/Pass/PassBase.td"

def ConvertRemoteMemToLLVM : Pass<"lower-rmem-to-llvm", "ModuleOp"> {
  let summary = "Convert Remote Mem dialect to llvm dialect";
  let constructor = "mlir::createRemoteMemToLLVMPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

#endif
