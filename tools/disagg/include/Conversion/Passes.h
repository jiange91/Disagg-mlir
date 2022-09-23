#ifndef MLIR_REMOTE_MEM_CONVERSION_PASSES_H
#define MLIR_REMOTE_MEM_CONVERSION_PASSES_H

#include "mlir/Pass/Pass.h"
#include "Conversion/LLVMDisagg/LLVMDisagg.h"
#include "Conversion/MemRefDisagg/MemRefDisagg.h"
#include "Conversion/BltFuncSigDisagg/BltFuncSigDisagg.h"
namespace mlir {
namespace disagg {
// class DisaggregationPass;

} // namespace disagg

#define GEN_PASS_REGISTRATION
#include "Conversion/Passes.h.inc"
}

#endif