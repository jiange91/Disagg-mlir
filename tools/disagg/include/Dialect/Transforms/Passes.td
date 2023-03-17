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

def RMEMSearchRemote : Pass<"search-rmem", "ModuleOp"> {
  let summary = "Mark operation as remote target if hit remote type";
  let constructor = "mlir::createRemoteMemSearchRemotePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect"];
}

def RMEMPropRemote : Pass<"prop-rmem", "func::FuncOp"> {
  let summary = "Propagete remotability within function";
  let constructor = "mlir::createRemoteMemPropRemotePass()";
  let dependentDialects = ["func::FuncDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect"];
}

def RMEMLoopRingCache : Pass<"rmem-loop-ring-cache", "mlir::ModuleOp"> {
  let summary = "Create ring cache access code for for-loops";
  let constructor = "mlir::createRemoteMemLoopRingCachePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "scf::SCFDialect"];
}

def RMEMAffineRingCache : Pass<"rmem-affine-ring-cache", "mlir::ModuleOp"> {
  let summary = "Create ring cache access code for affine-loops";
  let constructor = "mlir::createRemoteMemAffineRingCachePass()";
  let dependentDialects = ["LLVM::LLVMDialect", "rmem::RemoteMemDialect", "memref::MemRefDialect"];
}

#endif
