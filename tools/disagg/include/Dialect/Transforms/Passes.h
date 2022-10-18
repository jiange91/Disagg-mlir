#ifndef REM_DIALECT_TRANSFORMS_PASSES_H
#define REM_DIALECT_TRANSFORMS_PASSES_H

#include "mlir/Pass/Pass.h"

namespace mlir {
#define GEN_PASS_DECL
#include "Dialect/Transforms/Passes.h.inc"

std::unique_ptr<Pass> createRemoteMemDPSPass();

#define GEN_PASS_REGISTRATION
#include "Dialect/Transforms/Passes.h.inc"
}

#endif
