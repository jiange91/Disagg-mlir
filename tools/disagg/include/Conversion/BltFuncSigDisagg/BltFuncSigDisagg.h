#ifndef BLT_FUNCSIG_DISAGGREGATION_H
#define BLT_FUNCSIG_DISAGGREGATION_H

#include <memory>

namespace mlir {
  class Pass;
  class RewritePatternSet;
namespace rmem {
  class RemoteMemTypeConverter;
}

namespace disagg {
  void populateBltFuncSigDisaggPatterns(rmem::RemoteMemTypeConverter &converter, RewritePatternSet &patterns);
  std::unique_ptr<Pass> createBltFuncSigDisaggregationPass();
}

}

#endif