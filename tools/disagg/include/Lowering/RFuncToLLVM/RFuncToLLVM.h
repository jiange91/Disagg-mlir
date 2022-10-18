#ifndef LOWER_RFUNC_TO_LLVM_H
#define LOWER_RFUNC_TO_LLVM_H

#include <memory>

namespace mlir {
#define GEN_PASS_DECL_CONVERTREMOTEFUNCTOLLVM
#include "Lowering/Passes.h.inc"

class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateRemoteFuncToLLVM (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createRFuncToLLVMPass();
}

#endif