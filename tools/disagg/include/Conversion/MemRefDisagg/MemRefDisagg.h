#ifndef MEMREF_DISAGGREGATION_H
#define MEMREF_DISAGGREGATION_H

#include <memory>

namespace mlir {
class Pass;
class RewritePatternSet;
namespace rmem {
class RemoteMemTypeConverter;
}

namespace disagg{
void populateMemRefDisaggPatterns(rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns);
std::unique_ptr<Pass> createMemRefDisaggPass();
}
}

#endif