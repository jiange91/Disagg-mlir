#ifndef LLVM_FUNCSIG_TO_REMOTE_MEM_H
#define LLVM_FUNCSIG_TO_REMOTE_MEM_H

#include <memory>
#include "llvm/ADT/StringSet.h"

namespace mlir {
class Pass;
class Value;
class Location;
class RewritePatternSet;
class ConversionPatternRewriter;

namespace rmem {
class RemoteMemTypeConverter;
}

namespace disagg {

void populateLLVMDisaggPatterns(rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns);

std::unique_ptr<Pass> createLLVMDisaggregationPass();
}
}

#endif