get_property(dialect_libs GLOBAL PROPERTY MLIR_DIALECT_LIBS)
get_property(conversion_libs GLOBAL PROPERTY MLIR_CONVERSION_LIBS)
set(LIBS
  ${dialect_libs}
  ${conversion_libs}
  MLIRArithDialect
  MLIROptLib
  MLIRDialect
  MLIRIR
  # MLIRRemoteMem
)

add_llvm_executable(standalone-pg driver.cpp)

llvm_update_compile_flags(standalone-pg)
target_link_libraries(standalone-pg PRIVATE ${LIBS})
