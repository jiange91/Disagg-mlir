#ifndef RMEM_DIALECT_TRANSFORM_PASSES
#define RMEM_DIALECT_TRANSFORM_PASSES

include "mlir/Pass/PassBase.td"

def RMEMDeterminePoolSource : Pass<"rmem-decide-pool", "mlir::ModuleOp"> {
  let summary = "Choose a cache pool for each remote allocation";
  let constructor = "mlir::createRemoteMemDPSPass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "func::FuncDialect"];
}

def RMEMInstrBandwidthProf : Pass<"rmem-instr-bw", "LLVM::LLVMFuncOp"> {
  let summary = "Instrument counter at each remote memory access site in each function";
  let description = "Current impl can only apply this pass to the IR after lowering";
  let constructor = "mlir::createRemoteMemInstrBWProf()";
  let dependentDialects = ["LLVM::LLVMDialect"];
} 

#endif
