#ifndef LOWER_REMOTE_MEM_PASSDETAIL_H
#define LOWER_REMOTE_MEM_PASSDETAIL_H

#include "mlir/Pass/Pass.h"

namespace mlir {

namespace func {
class FuncDialect;  
}

namespace rmem {
class RemoteMemDialect;
}

namespace scf {
class SCFDialect;
} // namespace scf

namespace memref {
class MemRefDialect;
} // namespace memref

namespace LLVM {
class LLVMDialect;
} // namespace LLVM

#define GEN_PASS_CLASSES
#include "Lowering/Passes.h.inc"
}

#endif