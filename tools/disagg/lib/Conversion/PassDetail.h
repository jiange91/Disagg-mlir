#ifndef REMOTE_MEM_PASSDETAIL_H
#define REMOTE_MEM_PASSDETAIL_H

#include "mlir/Pass/Pass.h"

namespace mlir {
#define GEN_PASS_CLASSES
#include "Conversion/Passes.h.inc"
}

#endif
