#ifndef REMOTE_MEM_OPS
#define REMOTE_MEM_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/IR/EnumAttr.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

class RemoteMem_Op<string mnemonic, list<Trait> traits = []>:
  Op<RemoteMem_Dialect, mnemonic, traits>;

def RemoteMem_ConstantOp: RemoteMem_Op<"constant"> {
  let summary = "Create a remote memref on stack";
  let arguments = (ins TypeAttr: $eleTy);
  let results = (outs RemoteMemRef: $rmemref);
  let assemblyFormat = [{
    attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_NullRefOp: RemoteMem_Op<"nullref"> {
  let summary = "Create a Null remote memref: its virtual address is 0";
  let results = (outs RemoteMemRef: $rmemref);
  let assemblyFormat = [{
    attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_AddressOfOp: RemoteMem_Op<"to_addr"> {
  let summary = "Get the virtual pointer from a remote memref that can be used for `getelemptr` operations";
  let description = "This operation does not materialize a remote memref at the local side, the return pointer will be used for address calculation `getelementptr`. If the remote memref is dummy, i.e. created from stack/non-remote heap alloc, the returned address is the original pointer, else is the virtual cache address";
  let arguments = (ins RemoteMemRef: $rmemref);
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $addr);
  // TODO: verify that the virtual address is at space 1
  let assemblyFormat = [{
    $rmemref attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_FromAddressOp: RemoteMem_Op<"from_addr"> {
  let summary = "Create remote memref handler with the given address";
  let description = [{
    The main purpose of this operation is to resolve type conflict (source materialize) when the function signature requires remote memref. 
    
    There should be two type resolving types: Dummy / Real, where:
    - The first type is used when converting a pointer from stack/local heap: materialization of remote memrefs stemming from this type should be very straightforward without remote memory involement. 
    - The second type is used for conversions of refs from virtual address, representing returning the memory back to remote controller.
  }];
  let arguments = (ins AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $addr);
  let results = (outs RemoteMemRef: $rmemref);
  // TODO: verify that the virtual address is at space 1
  let assemblyFormat = [{
    $addr attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_LoadOp: RemoteMem_Op<"load"> {
  let summary = "Load from a virtual address";
  let arguments = (ins Arg<LLVM_PointerTo<LLVM_LoadableType>, "", [MemRead]>:$addr);
  let results = (outs LLVM_LoadableType:$res);
  let assemblyFormat = [{
    $addr attr-dict `:` functional-type(operands, results)
  }];
}

// Address compare predicates
def AddrCmpPredicateEQ  : I64EnumAttrCase<"eq", 0>;
def AddrCmpPredicateNE  : I64EnumAttrCase<"ne", 1>;
def AddrCmpPredicateSLT : I64EnumAttrCase<"slt", 2>;
def AddrCmpPredicateSLE : I64EnumAttrCase<"sle", 3>;
def AddrCmpPredicateSGT : I64EnumAttrCase<"sgt", 4>;
def AddrCmpPredicateSGE : I64EnumAttrCase<"sge", 5>;
def AddrCmpPredicateULT : I64EnumAttrCase<"ult", 6>;
def AddrCmpPredicateULE : I64EnumAttrCase<"ule", 7>;
def AddrCmpPredicateUGT : I64EnumAttrCase<"ugt", 8>;
def AddrCmpPredicateUGE : I64EnumAttrCase<"uge", 9>;
def AddrCmpPredicate : I64EnumAttr<
    "AddrCmpPredicate",
    "rmem.addrcmp comparison predicate",
    [AddrCmpPredicateEQ, AddrCmpPredicateNE, AddrCmpPredicateSLT, AddrCmpPredicateSLE,
     AddrCmpPredicateSGT, AddrCmpPredicateSGE, AddrCmpPredicateULT, AddrCmpPredicateULE,
     AddrCmpPredicateUGT, AddrCmpPredicateUGE]> {
  let cppNamespace = "::mlir::rmem";
}

def RemoteMem_AddrCmpOp: RemoteMem_Op<"addrcmp"> {
  let summary = "Compare the address of two remote mem refs";
  let arguments = (ins RemoteMemRef: $lhs,
                       RemoteMemRef: $rhs,
                       AddrCmpPredicate:$predicate
  );
  let results = (outs I1: $rel);
  let assemblyFormat = [{
    $predicate $lhs`,` $rhs attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_MaterializeOp: RemoteMem_Op<"materialize"> {
  let summary = "Convert a remote memory ref to raw pointer/memref at the local site";
  let description = "Now use load operation for reading memory with a given virtual address";
  let arguments = (ins RemoteMemRef: $rmemref);
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer]>: $localRef);

  let assemblyFormat = [{
    $rmemref attr-dict `:` functional-type(operands, results)
  }];

  let builders = [
    OpBuilder<(ins "Value":$rmemref)>
  ];
  let hasVerifier = 1;
  // let hasCanonicalizer = 1;
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

#endif
