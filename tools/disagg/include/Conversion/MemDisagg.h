#ifndef REMOTE_TARGET_TO_REMOTE_MEM_H
#define REMOTE_TARGET_TO_REMOTE_MEM_H

#include <memory>
#include "llvm/ADT/StringSet.h"

namespace mlir {
class Pass;
class Value;
class Location;
class RewritePatternSet;
class ConversionPatternRewriter;

#define GEN_PASS_DECL
#include "Conversion/Passes.h.inc"

namespace rmem {
class RemoteMemTypeConverter;
}

namespace disagg {

void populateMemDisaggPatterns(MLIRContext *ctx, RewritePatternSet &patterns);

std::unique_ptr<Pass> createMemDisaggregationPass();
}
}

#endif