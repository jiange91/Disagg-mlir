add_mlir_dialect_library(MLIRRemoteMem
RemoteMemDialect.cpp
RemoteMemTypes.cpp

ADDITIONAL_HEADER_DIRS
${PROJECT_SOURCE_DIR}/include

DEPENDS
MLIRRemoteMemOpsIncGen

LINK_LIBS PUBLIC
MLIRIR
MLIRMemRef
MLIRInferTypeOpInterface
)