#include "mlir/Dialect/LLVMIR/LLVMTypes.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "Lowering/Common/PatternBase.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/RemoteMemOps.h"

#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

RemoteMemLoweringPattern::RemoteMemLoweringPattern(StringRef rootOpName, MLIRContext* context, RemoteMemTypeLowerer &typeConverter, PatternBenefit benefit): ConversionPattern(typeConverter, rootOpName, benefit, context)  {}

RemoteMemDialect &RemoteMemLoweringPattern::getDialect() const {
  return *getTypeConverter()->getDialect();
}

RemoteMemTypeLowerer *RemoteMemLoweringPattern::getTypeConverter() const {
  return static_cast<RemoteMemTypeLowerer *> (
    ConversionPattern::getTypeConverter());
}