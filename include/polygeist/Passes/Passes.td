#ifndef POlYGEIST_PASSES
#define POLYGEIST_PASSES

include "mlir/Pass/PassBase.td"

def AffineCFG : Pass<"affine-cfg"> {
  let summary = "Replace scf.if and similar with affine.if";
  let constructor = "mlir::polygeist::replaceAffineCFGPass()";
}

def Mem2Reg : Pass<"mem2reg"> {
  let summary = "Replace scf.if and similar with affine.if";
  let constructor = "mlir::polygeist::createMem2RegPass()";
}

def SCFParallelLoopUnroll : Pass<"scf-parallel-loop-unroll"> {
  let summary = "Unroll and interleave scf parallel loops";
  let dependentDialects =
      ["::mlir::scf::SCFDialect"];
  let constructor = "mlir::polygeist::createSCFParallelLoopUnrollPass()";
  let options = [
  Option<"unrollFactor", "unrollFactor", "int", /*default=*/"2", "Unroll factor">
  ];
}

def ConvertCudaRTtoCPU : Pass<"convert-cudart-to-cpu", "mlir::ModuleOp"> {
  let summary = "Lower cudart functions to cpu versions";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
  let constructor = "mlir::polygeist::createConvertCudaRTtoCPUPass()";
}

def ConvertCudaRTtoGPU : Pass<"convert-cudart-to-gpu", "mlir::ModuleOp"> {
  let summary = "Lower cudart functions to generic gpu versions";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect", "gpu::GPUDialect"];
  let constructor = "mlir::polygeist::createConvertCudaRTtoGPUPass()";
}

def ConvertCudaRTtoHipRT : Pass<"convert-cudart-to-gpu", "mlir::ModuleOp"> {
  let summary = "Lower cudart functions to generic gpu versions";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect", "gpu::GPUDialect"];
  let constructor = "mlir::polygeist::createConvertCudaRTtoGPUPass()";
}

def ParallelLower : Pass<"parallel-lower", "mlir::ModuleOp"> {
  let summary = "Lower gpu launch op to parallel ops";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
  let constructor = "mlir::polygeist::createParallelLowerPass()";
}

def AffineReduction : Pass<"detect-reduction"> {
  let summary = "Detect reductions in affine.for";
  let constructor = "mlir::polygeist::detectReductionPass()";
}

def SCFCPUify : Pass<"cpuify"> {
  let summary = "remove scf.barrier";
  let constructor = "mlir::polygeist::createCPUifyPass()";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
  let options = [
  Option<"method", "method", "std::string", /*default=*/"\"distribute\"", "Method of doing distribution">
  ];
}

def ConvertParallelToGPU1 : Pass<"convert-parallel-to-gpu1"> {
  let summary = "Convert parallel loops to gpu";
  let constructor = "mlir::polygeist::createConvertParallelToGPUPass1()";
  let dependentDialects = ["func::FuncDialect", "LLVM::LLVMDialect", "memref::MemRefDialect"];
  let options = [
  Option<"arch", "arch", "std::string", /*default=*/"\"sm_60\"", "Target GPU architecture">
  ];
}

def ConvertParallelToGPU2 : Pass<"convert-parallel-to-gpu2"> {
  let summary = "Convert parallel loops to gpu";
  let constructor = "mlir::polygeist::createConvertParallelToGPUPass2()";
  let dependentDialects = ["func::FuncDialect", "LLVM::LLVMDialect", "memref::MemRefDialect"];
}

def MergeGPUModulesPass : Pass<"merge-gpu-modules", "mlir::ModuleOp"> {
  let summary = "Merge all gpu modules into one";
  let constructor = "mlir::polygeist::createMergeGPUModulesPass()";
  let dependentDialects = ["func::FuncDialect", "LLVM::LLVMDialect", "gpu::GPUDialect"];
}

def InnerSerialization : Pass<"inner-serialize"> {
  let summary = "remove scf.barrier";
  let constructor = "mlir::polygeist::createInnerSerializationPass()";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
}
def Serialization : Pass<"serialize"> {
  let summary = "remove scf.barrier";
  let constructor = "mlir::polygeist::createSerializationPass()";
  let dependentDialects =
      ["memref::MemRefDialect", "func::FuncDialect", "LLVM::LLVMDialect"];
}

def SCFBarrierRemovalContinuation : InterfacePass<"barrier-removal-continuation", "FunctionOpInterface"> {
  let summary = "Remove scf.barrier using continuations";
  let constructor = "mlir::polygeist::createBarrierRemovalContinuation()";
  let dependentDialects = ["memref::MemRefDialect", "func::FuncDialect"];
}

def SCFRaiseToAffine : Pass<"raise-scf-to-affine"> {
  let summary = "Raise SCF to affine";
  let constructor = "mlir::polygeist::createRaiseSCFToAffinePass()";
  let dependentDialects = ["AffineDialect"];
}

def SCFCanonicalizeFor : Pass<"canonicalize-scf-for"> {
  let summary = "Run some additional canonicalization for scf::for";
  let constructor = "mlir::polygeist::createCanonicalizeForPass()";
}

def ForBreakToWhile : Pass<"for-break-to-while"> {
  let summary = "Rewrite scf.for(scf.if) to scf.while";
  let constructor = "mlir::polygeist::createForBreakToWhilePass()";
  let dependentDialects = ["arith::ArithDialect"];
}

def ParallelLICM : Pass<"parallel-licm"> {
  let summary = "Perform LICM on known parallel (and serial) loops";
  let constructor = "mlir::polygeist::createParallelLICMPass()";
}

def OpenMPOptPass : Pass<"openmp-opt"> {
  let summary = "Optimize OpenMP";
  let constructor = "mlir::polygeist::createOpenMPOptPass()";
}

def LoopRestructure : Pass<"loop-restructure"> {
  let constructor = "mlir::polygeist::createLoopRestructurePass()";
  let dependentDialects = ["::mlir::scf::SCFDialect"];
}

def RemoveTrivialUse : Pass<"trivialuse"> {
  let constructor = "mlir::polygeist::createRemoveTrivialUsePass()";
}

def ConvertPolygeistToLLVM : Pass<"convert-polygeist-to-llvm", "mlir::ModuleOp"> {
  let summary = "Convert scalar and vector operations from the Standard to the "
                "LLVM dialect";
  let description = [{
    Convert standard operations into the LLVM IR dialect operations.

    #### Input invariant

    -   operations including: arithmetic on integers and floats, constants,
        direct calls, returns and branches;
    -   no `tensor` types;
    -   all `vector` are one-dimensional;
    -   all blocks are reachable by following the successors of the first basic
        block;

    If other operations are present and their results are required by the LLVM
    IR dialect operations, the pass will fail.  Any LLVM IR operations or types
    already present in the IR will be kept as is.

    #### Output IR

    Functions converted to LLVM IR. Function arguments types are converted
    one-to-one. Function results are converted one-to-one and, in case more than
    1 value is returned, packed into an LLVM IR struct type. Function calls and
    returns are updated accordingly. Block argument types are updated to use
    LLVM IR types.
  }];
  let constructor = "mlir::polygeist::createConvertPolygeistToLLVMPass()";
  let dependentDialects = ["LLVM::LLVMDialect"];
  let options = [
    Option<"useBarePtrCallConv", "use-bare-ptr-memref-call-conv", "bool",
           /*default=*/"false",
           "Replace FuncOp's MemRef arguments with bare pointers to the MemRef "
           "element types">,
    Option<"indexBitwidth", "index-bitwidth", "unsigned",
           /*default=kDeriveIndexBitwidthFromDataLayout*/"0",
           "Bitwidth of the index type, 0 to use size of machine word">,
    Option<"dataLayout", "data-layout", "std::string",
           /*default=*/"\"\"",
           "String description (LLVM format) of the data layout that is "
           "expected on the produced module">,
    Option<"useCStyleMemRef", "use-c-style-memref", "bool",
           /*default=*/"true",
           "Use C-style nested-array lowering of memref instead of "
           "the default MLIR descriptor structure">
  ];
}

#endif // POLYGEIST_PASSES
