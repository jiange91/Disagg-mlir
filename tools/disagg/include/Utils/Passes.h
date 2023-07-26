#ifndef MLIR_DISAGG_UTIL_PROFILE_READER_H
#define MLIR_DISAGG_UTIL_PROFILE_READER_H

#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"

namespace mlir {

// namespace disagg {

struct ProfilingResult {
    std::string type;
    std::string identifier;
    uint64_t name;
    uint64_t hotness;
};

struct AllocationAnnotationPass
    : public PassWrapper<AllocationAnnotationPass,
                         OperationPass<>> {
    AllocationAnnotationPass() = default;
    AllocationAnnotationPass(const AllocationAnnotationPass &pass)
        : profilingResults(pass.profilingResults) {}
    void runOnOperation() override;

    // requires a input yaml list
    StringRef getArgument() const final { return "disagg-annotate-allocations"; }
    StringRef getDescription() const final { return "Allocate annotations"; }
    Option<std::string> profilingResultsOption{
        *this, "profiling-results",
        llvm::cl::desc("The input filename of yaml profiling results")};

  private:
    std::map<std::string, ProfilingResult> profilingResults{};
    void parseProfilingResults();
};

std::unique_ptr<Pass> createAllocationAnnotationPass();

inline void registerAllocationAnnotationPass() {
    registerPass([]() -> std::unique_ptr<Pass> {
        return createAllocationAnnotationPass();
    });
}

}

#endif // MLIR_DISAGG_UTIL_PROFILE_READER_H