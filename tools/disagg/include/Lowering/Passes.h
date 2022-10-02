#ifndef MLIR_REMOTE_MEM_CONVERSION_PASSES_H
#define MLIR_REMOTE_MEM_CONVERSION_PASSES_H

#include "mlir/Pass/Pass.h"
#include "Lowering/RemoteMemToLLVM/RemoteMemToLLVM.h"
namespace mlir {

#define GEN_PASS_REGISTRATION
#include "Lowering/Passes.h.inc"
}

#endif