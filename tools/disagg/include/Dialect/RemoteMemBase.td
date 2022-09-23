#ifndef REMOTEMEMREF_BASE
#define REMOTEMEMREF_BASE

include "mlir/IR/OpBase.td"
include "mlir/IR/DialectBase.td"

/* Dialect Definitions */

def RemoteMem_Dialect : Dialect {
  let name = "rmem";
  let cppNamespace = "::mlir::rmem";
  let description = [{The `rmem` dialect provides a unified interface to the remote memory access. The dialect will be converted to raw pointer or remotable-cache access eventually}];
  let extraClassDeclaration = [{
  private:
    void registerTypes();

  public:
  }];
  let emitAccessorPrefix = kEmitAccessorPrefix_Prefixed;
}

#endif
