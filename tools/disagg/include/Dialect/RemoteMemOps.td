#ifndef REMOTE_MEM_OPS
#define REMOTE_MEM_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/IR/SymbolInterfaces.td"
include "ROps/RAffineOps.td"
include "ROps/RMemRefOps.td"
include "ROps/RLLVMOps.td"


def RemoteMem_ToAddressOp: RemoteMem_Op<"to_addr"> {
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


def RemoteMem_PIndexOp : RemoteMem_Op<"ptrindex", [Pure]> {
  let arguments = (ins 
    RemoteMemRef:$base,
    Variadic<LLVM_ScalarOrVectorOf<AnyInteger>>:$indices);
  let results = (outs RemoteMemRef: $addr);
  let builders = [
    OpBuilder<(ins "Value":$basePtr, "ValueRange":$indices, 
      CArg<"ArrayRef<NamedAttribute>", "{}">:$attributes)>,
  ];

  // let extraClassDeclaration = [{
  //   constexpr static int kDynamicIndex = std::numeric_limits<int32_t>::min();

  //   /// Returns the type pointed to by the pointer argument of this GEP.
  //   Type getSourceElementType();
  // }];

  let assemblyFormat = [{
    $base `[` $indices `]` attr-dict `:` functional-type(operands, results)
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

def RemoteMem_ReturnOp : RemoteMem_Op<"return", [
  Terminator,
  Pure]> {
    let summary = "general terminator for remote mem op";
    let description = "currently only used in llvm.global";
    let arguments = (ins Variadic<AnyType>:$result);
    let assemblyFormat = [{
      attr-dict ($result^ `:` type($result))?
    }];
}



#endif
