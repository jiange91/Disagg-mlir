#include "Dialect/RemoteMem.h"
#include "Conversion/Common/ConversionTarget.h"
#include "mlir/IR/BuiltinDialect.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"

using namespace mlir;

mlir::RemoteMemConversionTarget::RemoteMemConversionTarget(MLIRContext &ctx) : ConversionTarget(ctx) {
  addLegalDialect<rmem::RemoteMemDialect, BuiltinDialect, LLVM::LLVMDialect, memref::MemRefDialect, func::FuncDialect>();
  addLegalOp<UnrealizedConversionCastOp>();
}