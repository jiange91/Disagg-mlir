#ifndef LOWER_REMOTE_MEM_TO_LLVM_H
#define LOWER_REMOTE_MEM_TO_LLVM_H

#include <memory>

namespace mlir {
class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateRemoteMemToLLVMPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createRemoteMemToLLVMPass();
}

#endif