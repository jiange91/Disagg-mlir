#ifndef LOWER_RSCF_TO_LLVM_H
#define LOWER_RSCF_TO_LLVM_H

#include <memory>

namespace mlir {
class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateRemoteSCFToLLVM(rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createRSCFToLLVMPass();
}

#endif