add_mlir_dialect_library(MLIRRMEMTransforms
  AffineCommon.cpp
  DeterminePoolSource.cpp
  InstrBandwidth.cpp
  PrefetchForloop.cpp
  LoopFusion.cpp
  SearchRemote.cpp
  LoopRingCache.cpp
  AffineRingCache.cpp
  AffineAccessMem.cpp
  PropRemote.cpp
  MemPooling.cpp

  ADDITIONAL_HEADER_DIRS
  ${PROJECT_SOURCE_DIR}/include

  DEPENDS
  RemoteMemPassIncGen

  LINK_LIBS PUBLIC
  MLIRAnalysis
  MLIRDataLayoutInterfaces
  MLIRMemRefDialect
  MLIRLLVMDialect
  MLIRVectorDialect
  MLIRAffineDialect
  MLIRSCFDialect
  MLIRRemoteMem
  MLIRTransforms 
)