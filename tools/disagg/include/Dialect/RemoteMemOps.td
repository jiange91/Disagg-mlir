#ifndef REMOTE_MEM_OPS
#define REMOTE_MEM_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

class RemoteMem_Op<string mnemonic, list<Trait> traits = []>:
  Op<RemoteMem_Dialect, mnemonic, traits>;

def RemoteMem_MaterializeOp: RemoteMem_Op<"materialize"> {
  let summary = "Convert a remote memory ref to raw pointer/memref at the local site";
  let arguments = (ins RemoteMemRef: $rmemref);
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $localRef);

  let assemblyFormat = [{
    $rmemref attr-dict `:` functional-type(operands, results)
  }];

  let builders = [
    OpBuilder<(ins "Value":$rmemref)>
  ];
  let hasVerifier = 1;
  let hasCanonicalizer = 1;
}

def RemoteMem_VirtualizeOp: RemoteMem_Op<"virtualize"> {
  let summary = "Convert a raw pointer/memref to remote memref version";
  let description = [{
    The main purpose of this operation is to resolve type conflict (source materialize) when the function signature requires remote memref. 
    
    There should be two virtualization types: Dummy / Real, where the first type is used when converting a pointer from stack: materialization of remote memrefs stemming from this type should not use any remote handler. The second type is used for conversions of refs from heap allocation, representing returning the memory back to remote controller.
  }];

  let arguments = (ins 
    AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $localRef);
  let results = (outs RemoteMemRef: $rmemRef);
  let assemblyFormat = [{
    `(` $localRef `)` attr-dict `:` functional-type(operands, results)
  }];

  // let hasVerifier = 1;
  let hasCanonicalizer = 1;
}

def RemoteMem_LLVMMallocOp: RemoteMem_Op<"malloc_ptr"> {
  let summary = "remote memory allocation counterpart for llvm malloc";
  let arguments = (ins
    I64: $memSize
    // I64: $memSpace
  );
  let results = (outs 
    Res<RemoteMemRef,"",[MemAlloc]>: $rmemref);
  
  // let hasVerifier = 1;
  // let hasCustomAssemblyFormat = 1;
  let assemblyFormat = [{
    $memSize attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_MemRefAllocOp: RemoteMem_Op<
  "alloc_memref", [AttrSizedOperandSegments]> {
  let summary = "remote memory allocation counter for memref alloc op";
  let arguments = (ins
    Variadic<Index>: $dynamicSizes,
    Variadic<Index>: $symbolOperands,
    Confined<OptionalAttr<I64Attr>, [IntMinValue<0>]>: $alignment
  );
  let results = (outs
    Res<RemoteMemRef,"",[MemAlloc]>: $rmemref
  );
  // let builders = [
  //   OpBuilder<(ins "MemRefType":$memref, CArg<"IntegerAttr", "IntegerAttr()">:$alignment), [{
  //     return build($_builder, $_state, )
  //   }]>
  // ]

  let assemblyFormat = [{
    `(`$dynamicSizes`)` (`` `[` $symbolOperands^ `]`)? attr-dict `:` type(results)
  }];
}

def RemoteMem_PackToLLVMStruct: RemoteMem_Op<
  "pack"> {
  let summary = "Pack a remote memref to llvm struct type contains its elementType. This is mainly for llvm.func type constraints";
  let arguments = (ins RemoteMemRef: $source);
  let results = (outs LLVM_AnyStruct: $target);
  let assemblyFormat = [{
    `(` $source `)` attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_UnpackFromLLVMStruct: RemoteMem_Op<
  "unpack"> {
  let summary = "Unpack a remote memref from llvm struct type";
  let arguments = (ins LLVM_AnyStruct: $source);
  let results = (outs RemoteMemRef: $target);
  let assemblyFormat = [{
    `(` $source `)` attr-dict `:` functional-type(operands, results)
  }];
}

#endif
