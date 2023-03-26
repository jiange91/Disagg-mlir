#ifndef REMOTE_MEMREF_OPS
#define REMOTE_MEMREF_OPS

include "RemoteMemBase.td"
include "RemoteMemTypes.td"
include "mlir/IR/SymbolInterfaces.td"
include "mlir/Interfaces/SideEffectInterfaces.td"

/// A TypeAttr for memref types.
def MemRefTypeAttr
    : TypeAttrBase<"::mlir::MemRefType", "memref type attribute"> {
  let constBuilderCall = "::mlir::TypeAttr::get($0)";
}

def RemoteMem_MemRefAllocOp: RemoteMem_Op<
  "alloc_memref", [AttrSizedOperandSegments]> {
  let summary = "remote memory allocation for memref";
  let arguments = (ins
    Variadic<Index>: $dynamicSizes,
    Variadic<Index>: $symbolOperands,
    ConfinedAttr<OptionalAttr<I64Attr>, [IntMinValue<0>]>: $alignment,
    DefaultValuedAttr<ConfinedAttr<I32Attr, [IntNonNegative]>, "0">:$poolId
  );
  let results = (outs
    Res<RemoteMemRefOf<[AnyMemRef]>,"",[MemAlloc]>: $rmemref
  );

  let assemblyFormat = [{
    `(`$poolId`,` $dynamicSizes`)` (`` `[` $symbolOperands^ `]`)? attr-dict `:` type($rmemref)
  }];
}


def RemoteMem_MemRefLoadOp : RemoteMem_Op<"memref.load"> {
  let arguments = (ins 
    Arg<AnyTypeOf<[RemoteMemRefOf<[AnyMemRef]>, AnyMemRef]>, "", [MemRead]>:$memref, 
    Variadic<Index>:$indices);
  let results = (outs AnyType:$result);
  let extraClassDeclaration = [{
    Value getMemRef() { return getOperand(0); }
    void setMemRef(Value value) { setOperand(0, value); }
    Type getMemRefType() {
      return getMemRef().getType();
    }
  }];
  let assemblyFormat = "$memref `[` $indices `]` attr-dict `:` functional-type(operands, results)";
}

def RemoteMem_MemRefStoreOp : RemoteMem_Op<"memref.store"> {
  let arguments = (ins
    AnyType:$value,
    Arg<AnyTypeOf<[RemoteMemRefOf<[AnyMemRef]>, AnyMemRef]>, "", [MemWrite]>:$memref, 
    Variadic<Index>:$indices
  );
  let extraClassDeclaration = [{
    Value getValueToStore() { return getOperand(0); }

    Value getMemRef() { return getOperand(1); }
    void setMemRef(Value value) { setOperand(1, value); }
    Type getMemRefType() {
      // Need further rawing and cast
      return getMemRef().getType();
    }
  }];
  let assemblyFormat = [{
    $value `->` $memref `[` $indices `]` attr-dict `:` functional-type(operands, results)
  }]; 
}

def RemoteMem_MemRefGetGlobalOp : RemoteMem_Op<"memref.get_global",
    [Pure, DeclareOpInterfaceMethods<SymbolUserOpInterface>]> {
  let summary = "get the rmemref pointing to a global variable";
  let arguments = (ins FlatSymbolRefAttr:$name);
  let results = (outs RemoteMemRefOf<[AnyMemRef]>:$result);
  let assemblyFormat = "attr-dict `:` functional-type(operands, results)";
}

def RemoteMem_MemRefGlobalOp: RemoteMem_Op<"memref.global", [Symbol]> {
  let summary = "Remote Memref global rountine for memref";
  let arguments = (ins SymbolNameAttr:$sym_name,
                       OptionalAttr<StrAttr>:$sym_visibility,
                       MemRefTypeAttr:$type,
                       OptionalAttr<AnyAttr>:$initial_value,
                       UnitAttr:$constant,
                       OptionalAttr<I64Attr>:$alignment);
  let extraClassDeclaration = [{
    bool isExternal() { return !getInitialValue(); }
    bool isUninitialized() {
      return !isExternal() && getInitialValue()->isa<UnitAttr>();
    }
    /// Returns the constant initial value if the rmem.memref.global is a constant,
    /// or null otherwise.
    ElementsAttr getConstantInitValue() {
      auto initVal = getInitialValue();
      if (getConstant() && initVal.has_value())
        return initVal.value().cast<ElementsAttr>();
      return {};
    }
  }];
  let assemblyFormat = [{
    ($sym_visibility^)?
    (`constant` $constant^)?
    $sym_name `:`
    attr-dict
    functional-type(operands, results)
  }];
}

def RemoteMem_NullRefOp: RemoteMem_Op<"nullref"> {
  let summary = "Create a Null remote memref: its virtual address is 0";
  let results = (outs AnyTypeOf<[AnyMemRef, LLVM_AnyPointer, RemoteMemRef]>: $nullRef);
  let assemblyFormat = [{
    attr-dict `:` type($nullRef)
  }];
}


#endif
