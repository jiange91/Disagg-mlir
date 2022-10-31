#ifndef LOWER_RMEM_IN_MEMREF_H
#define LOWER_RMEM_IN_MEMREF_H

#include <memory>

namespace mlir {
#define GEN_PASS_DECL_LOWERRMEMINMEMREF 
#include "Lowering/Passes.h.inc"

class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeLowerer;
}

void populateLowerMemRefRMemPatterns (rmem::RemoteMemTypeLowerer &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createConvertMemRefRemotePass();
}

#endif
