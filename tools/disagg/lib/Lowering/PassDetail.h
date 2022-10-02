#ifndef LOWER_REMOTE_MEM_PASSDETAIL_H
#define LOWER_REMOTE_MEM_PASSDETAIL_H

#include "mlir/Pass/Pass.h"

namespace mlir {
#define GEN_PASS_CLASSES
#include "Lowering/Passes.h.inc"
}

#endif