add_mlir_conversion_library(MLIRRFuncToLLVM
  RFuncToLLVM.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  DEPENDS
  RemoteMemLoweringPassIncGen 

  LINK_COMPONENTS
  Core

  LINK_LIBS PUBLIC
  MLIRAnalysis
  MLIRDataLayoutInterfaces
  MLIRMemRef
  MLIRLLVMIR
  MLIRRemoteMem
  MLIRRemoteMemLowerCommonConversion
  MLIRTransforms
)