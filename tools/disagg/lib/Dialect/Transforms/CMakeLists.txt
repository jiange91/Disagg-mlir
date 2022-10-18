add_mlir_dialect_library(MLIRRMEMTransforms
  DeterminePoolSource.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  DEPENDS
  RemoteMemPassIncGen

  LINK_LIBS PUBLIC
  MLIRAnalysis
  MLIRDataLayoutInterfaces
  MLIRMemRefDialect
  MLIRLLVMDialect
  MLIRSCFDialect
  MLIRRemoteMem
  MLIRRSCFToLLVM
  MLIRRFuncToLLVM
  MLIRTransforms 
)