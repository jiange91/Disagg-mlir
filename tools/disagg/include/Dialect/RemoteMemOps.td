#ifndef REMOTE_MEM_OPS
#define REMOTE_MEM_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/Interfaces/SideEffectInterfaces.td"
include "mlir/IR/SymbolInterfaces.td"

class RemoteMem_Op<string mnemonic, list<Trait> traits = []>:
  Op<RemoteMem_Dialect, mnemonic, traits>;

def RemoteMem_UndefOp: RemoteMem_Op<"ptr.undef", [NoSideEffect]> {
  let summary = "Create an undefined value of remote memref wrapping llvm ptr";
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer, RemoteMemRef]>: $undef);
  let assemblyFormat = [{
    attr-dict `:` type(results)
  }];
}

def RemoteMem_NullRefOp: RemoteMem_Op<"nullref"> {
  let summary = "Create a Null remote memref: its virtual address is 0";
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer, RemoteMemRef]>: $nullRef);
  let assemblyFormat = [{
    attr-dict `:` functional-type(operands, results)
  }];
}

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

def RemoteMem_LoadOp: RemoteMem_Op<"llvm.load"> {
  let summary = "Load from memory";
  let description = [{
    The orignal operands of load operation may be converted to remote memref, use this operation to maintain correctness symbolically.

    Will be lowered according to the input:
      1. If the mapped operand is !llvm.ptr<(!rmem.rmref)+>
         No special operation needed, just convert the rmref type to pointer type
      2. If the mapped operand is !rmref.rmref
         Need to convert the type as well as materialize
  }];
  let arguments = (ins 
    Arg<AnyTypeOf<
      [LLVM_PointerTo<LLVM_LoadableType>, 
      RemoteMemRef]>,"",[MemRead]>:$addr,
      OptionalAttr<SymbolRefArrayAttr>:$access_groups,
      OptionalAttr<SymbolRefArrayAttr>:$alias_scopes,
      OptionalAttr<SymbolRefArrayAttr>:$noalias_scopes,
      OptionalAttr<I64Attr>:$alignment, UnitAttr:$volatile_,
      UnitAttr:$nontemporal
    );
  let results = (outs LLVM_LoadableType:$res);
  let assemblyFormat = [{
    $addr attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_StoreOp : RemoteMem_Op<"llvm.store"> {
  let arguments = (ins LLVM_LoadableType:$value,
      Arg<AnyTypeOf<
        [LLVM_PointerTo<LLVM_LoadableType>, 
        RemoteMemRef]>,"",[MemWrite]>:$addr,
      OptionalAttr<SymbolRefArrayAttr>:$access_groups,
      OptionalAttr<SymbolRefArrayAttr>:$alias_scopes,
      OptionalAttr<SymbolRefArrayAttr>:$noalias_scopes,
      OptionalAttr<I64Attr>:$alignment, UnitAttr:$volatile_,
      UnitAttr:$nontemporal);
  
  let assemblyFormat = [{
    $value `->` $addr attr-dict `:` type(operands)
  }];
}

def RemoteMem_PIndexOp : RemoteMem_Op<"ptrindex", [NoSideEffect]> {
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

def RemoteMem_AddrCmpOp: RemoteMem_Op<"addrcmp"> {
  let summary = "Compare the address of two remote mem refs";
  let arguments = (ins RemoteMemRef: $lhs,
                       RemoteMemRef: $rhs,
                       RemoteMem_AddrCmpPredicate:$predicate
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
    DefaultValuedAttr<Confined<I32Attr, [IntNonNegative]>, "0">:$poolId,
    I64: $memSize
  );
  let results = (outs 
    Res<RemoteMemRef,"",[MemAlloc]>: $rmemref);
  
  // let hasVerifier = 1;
  // let hasCustomAssemblyFormat = 1;
  let assemblyFormat = [{
    $poolId`,` $memSize attr-dict `:` functional-type(operands, results)
  }];
}

def RemoteMem_BitCastOp : RemoteMem_Op<"bitcast", [NoSideEffect]> {
  let summary = "Dummy bitcast, only for type unification";
  let arguments = (ins RemoteMemRef:$arg);
  let results = (outs RemoteMemRef:$res);
  let assemblyFormat = "$arg attr-dict `:` functional-type(operands, results)";
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

def RemoteMem_ReturnOp : RemoteMem_Op<"return", [
  Terminator,
  NoSideEffect]> {
    let summary = "general terminator for remote mem op";
    let description = "currently only used in llvm.global";
    let arguments = (ins Variadic<AnyType>:$result);
    let assemblyFormat = [{
      attr-dict ($result^ `:` type($result))?
    }];
}

def RemoteMem_LLVMGlobalOp : RemoteMem_Op<"llvm.global", [IsolatedFromAbove,
SingleBlock,
// SingleBlockImplicitTerminator<"ReturnOp">, 
Symbol]> {
  let arguments = (ins
    TypeAttr:$global_type,
    UnitAttr:$constant,
    StrAttr:$sym_name,
    RemoteMem_Linkage:$linkage,
    UnitAttr:$dso_local,
    UnitAttr:$thread_local_,
    OptionalAttr<AnyAttr>:$value,
    OptionalAttr<I64Attr>:$alignment,
    DefaultValuedAttr<Confined<I32Attr, [IntNonNegative]>, "0">:$addr_space,
    OptionalAttr<RemoteMem_RUnnamedAddr>:$unnamed_addr,
    OptionalAttr<StrAttr>:$section
  );
  let summary = "Remote mem version of llvm global";
  let regions = (region AnyRegion:$initializer);
  // let builders = [
  //   OpBuilder<(ins "Type":$type, "bool":$isConstant, "RLinkageType":$linkage,
  //     "StringRef":$name, "Attribute":$value,
  //     CArg<"uint64_t", "0">:$alignment,
  //     CArg<"unsigned", "0">:$addrSpace,
  //     CArg<"bool", "false">:$dsoLocal,
  //     CArg<"bool", "false">:$thread_local_,
  //     CArg<"ArrayRef<NamedAttribute>", "{}">:$attrs)>
  // ];
  let assemblyFormat = [{
    attr-dict `:` regions
  }];
}

def RemoteMem_LLVMAddressOfOp : RemoteMem_Op<"llvm.addressof", [NoSideEffect]> {
  let arguments = (ins FlatSymbolRefAttr:$global_name);
  let results = (outs LLVM_AnyPointer:$res);
  let summary = "Creates a pointer pointing to a remote mem global or a remote mem function";
  let builders = [
    // TODO: support llvm function, memref global (potentially)
    OpBuilder<(ins "LLVMGlobalOp":$global,
      CArg<"ArrayRef<NamedAttribute>", "{}">:$attrs),
      [{
        build($_builder, $_state, 
          LLVM::LLVMPointerType::get(
            global.getGlobalType(), 
            global.getAddrSpace()),
          global.getSymName());
        $_state.addAttributes(attrs);
      }]>
  ];
  let extraClassDeclaration = [{
    /// Return the rmem.llvm.global operation that defined the value referenced
    /// here.
    LLVMGlobalOp getGlobal();
  }];
  let assemblyFormat = [{
    $global_name attr-dict `:` type($res)
  }];
}

def RemoteMem_GEPOp : RemoteMem_Op<"llvm.getelementptr", [NoSideEffect]> {
  let summary = "LLVM getelementptr on remote memref";
  let description = "Not supporting vector GEPop now, llvmvcector not compatible with remote memref";
  let arguments = (ins 
    AnyTypeOf<[LLVM_AnyPointer, RemoteMemRef]>:$base,
    Variadic<AnyInteger>:$indices,
    I32ElementsAttr:$structIndices,
    OptionalAttr<TypeAttr>:$elem_type);
  let results = (outs 
    AnyTypeOf<[LLVM_AnyPointer, RemoteMemRef]>:$res);
  let assemblyFormat = [{
    $base `[`$indices $structIndices`]` attr-dict
    `:` functional-type(operands, results) (`,` $elem_type^)?
  }];
  let extraClassDeclaration = [{
    /// Returns the type pointed to by the pointer argument of this GEP.
    Type getSourceElementType();
  }];
}

#endif
