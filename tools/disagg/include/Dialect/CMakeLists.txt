add_mlir_dialect(RemoteMemOps rmem)

# set(LLVM_TARGET_DEFINITIONS RemoteMemOps.td)
# mlir_tablegen(RemoteMemOps.h.inc -gen-op-decls)
# mlir_tablegen(RemoteMemOps.cpp.inc -gen-op-defs)
# mlir_tablegen(RemoteMemOpsDialect.h.inc -gen-dialect-decls)
# mlir_tablegen(RemoteMemOpsDialect.cpp.inc -gen-dialect-defs)
# add_public_tablegen_target(MLIRRemoteMemDialectIncGen)