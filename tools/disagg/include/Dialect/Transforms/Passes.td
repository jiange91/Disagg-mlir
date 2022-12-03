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

def RMEMForloopPrefetch : Pass<"rmem-for-prefetch", "mlir::ModuleOp"> {
  let summary = "Add prefetch instructions for rmem access within for-loops";
  let constructor = "mlir::createRemoteMemPrefetchForloopPass()";
  let dependentDialects = ["scf::SCFDialect", "rmem::RemoteMemDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
}

def RMEMLoopFusion : Pass<"rmem-loop-fusion", "mlir::ModuleOp"> {
  let summary = "Fuse neighbour loops when possible to hide data movement";
  let constructor = "mlir::createRemoteMemLoopFusionPass()";
  let dependentDialects = ["scf::SCFDialect", "rmem::RemoteMemDialect", "func::FuncDialect", "LLVM::LLVMDialect", "arith::ArithDialect"];
}

#endif
