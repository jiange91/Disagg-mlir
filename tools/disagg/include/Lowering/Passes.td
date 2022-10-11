#ifndef LOWER_REMOTE_MEM
#define LOWER_REMOTE_MEM

include "mlir/Pass/PassBase.td"

def ConvertRemoteMemToLLVM : Pass<"lower-rmem-to-llvm", "ModuleOp"> {
  let summary = "Convert Remote Mem dialect to llvm dialect";
  let constructor = "mlir::createRemoteMemToLLVMPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

def ConvertRemoteFuncToLLVM : Pass<"lower-rfunc-to-llvm", "ModuleOp"> {
  let summary = "Convert function with remote signature to llvm dialect";
  let description = "Func will remain in func dialect, the lowering will be handled by normal func->llvm transformation";
  let constructor = "mlir::createRFuncToLLVMPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

def ConvertRemoteSCFToLLVM : Pass<"lower-rscf-to-llvm", "ModuleOp"> {
  let summary = "Convert scf with remote signature to llvm dialect";
  let constructor = "mlir::createRSCFToLLVMPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "scf::SCFDialect"];
}

#endif
