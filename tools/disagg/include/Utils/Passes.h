#ifndef MLIR_DISAGG_UTIL_PROFILE_READER_H
#define MLIR_DISAGG_UTIL_PROFILE_READER_H

#include "llvm/ObjectYAML/YAML.h"

#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"

#include <set>

using llvm::yaml::MappingTraits;
using llvm::yaml::IO;

struct ProfilingResult {
    std::string type;
    int objectId;
    uint64_t value;
};

template <>
struct MappingTraits<ProfilingResult> {
  static void mapping(IO &io, ProfilingResult &info) {
    io.mapRequired("type",         info.type);
    io.mapRequired("objectId",     info.objectId);
    io.mapOptional("value",        info.value);
  }
};

namespace mlir {

// namespace disagg {

struct AllocationAnnotationPass
    : public PassWrapper<AllocationAnnotationPass,
                         OperationPass<>> {
    AllocationAnnotationPass() = default;
    AllocationAnnotationPass(const AllocationAnnotationPass &pass) {}
    void runOnOperation() override;

    // requires a input yaml list
    StringRef getArgument() const final { return "disagg-annotate-allocations"; }
    StringRef getDescription() const final { return "Allocate annotations"; }
    Option<std::string> memoryPorfOption{
        *this, "memory-profiling",
        llvm::cl::desc("Heap Obejct Profiling Results")};
    Option<std::string> cpuProfOption{
        *this, "cpu-profiling",
        llvm::cl::desc("Heap Obejct Profiling Results")};
    Option<std::string> runtimeProfOption{
        *this, "runtime-profiling",
        llvm::cl::desc("Heap Obejct Profiling Results")};

    std::vector<std::vector<ProfilingResult>> results{};
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