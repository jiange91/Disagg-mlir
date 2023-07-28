#ifndef MLIR_DISAGG_UTIL_PROFILE_READER_H
#define MLIR_DISAGG_UTIL_PROFILE_READER_H

#include "llvm/ObjectYAML/YAML.h"

#include "mlir/Pass/Pass.h"
#include "mlir/Pass/PassManager.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"

#include <set>
#include <vector>

using llvm::yaml::MappingTraits;
using llvm::yaml::IO;

struct ProfilingResult {
    std::string type;
    float size;
    uint64_t value;
};

template <>
struct MappingTraits<ProfilingResult> {
    static void mapping(IO &io, ProfilingResult &info) {
    io.mapRequired("type", info.type);
    io.mapRequired("size", info.size);
    io.mapOptional("value", info.value, 0);
    }
};
LLVM_YAML_IS_SEQUENCE_VECTOR(ProfilingResult);

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
    Option<std::string> memoryProfOption{
        *this, "memory-profiling",
        llvm::cl::desc("Heap Obejct Profiling Results")};
    Option<std::string> cpuProfOption{
        *this, "cpu-profiling",
        llvm::cl::desc("Heap Obejct Profiling Results")};
    Option<std::string> runtimeProfOption{
        *this, "runtime-profiling",
        llvm::cl::desc("Heap Obejct Profiling Results")};
    Option<float> memoryFactorOption{
        *this, "memory-factor",
        llvm::cl::desc("Memory factor comapred to full requirements")};

    std::vector<std::vector<ProfilingResult>> results{};
    std::map<uint64_t,ProfilingResult> allocationMap{};
    bool parseProfilingResults();
};

std::unique_ptr<Pass> createAllocationAnnotationPass();

inline void registerAllocationAnnotationPass() {
    registerPass([]() -> std::unique_ptr<Pass> {
        return createAllocationAnnotationPass();
    });
}

}

#endif // MLIR_DISAGG_UTIL_PROFILE_READER_H