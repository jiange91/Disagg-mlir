#ifndef REM_DIALECT_TRANSFORMS_PASSES_H
#define REM_DIALECT_TRANSFORMS_PASSES_H

#include "mlir/Pass/Pass.h"

namespace mlir {
#define GEN_PASS_DECL
#include "Dialect/Transforms/Passes.h.inc"

std::unique_ptr<Pass> createRemoteMemDPSPass();
std::unique_ptr<Pass> createRemoteMemInstrBWProf();
std::unique_ptr<Pass> createRemoteMemPrefetchForloopPass();
std::unique_ptr<Pass> createRemoteMemLoopFusionPass();
std::unique_ptr<Pass> createRemoteMemSearchRemotePass();
std::unique_ptr<Pass> createRemoteMemLoopRingCachePass();
std::unique_ptr<Pass> createRemoteMemAffineRingCachePass();
std::unique_ptr<Pass> createRemoteMemPropRemotePass();

#define GEN_PASS_REGISTRATION
#include "Dialect/Transforms/Passes.h.inc"
}

#endif
