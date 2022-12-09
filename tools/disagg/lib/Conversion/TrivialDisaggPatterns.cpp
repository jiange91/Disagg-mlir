#include "mlir/IR/BuiltinOps.h"
#include "mlir/IR/Operation.h"
#include "mlir/Pass/Pass.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"
#include "llvm/ADT/SmallBitVector.h"
#include "llvm/IR/DataLayout.h"
#include "mlir/Dialect/MemRef/IR/MemRef.h"
#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/Dialect/Func/IR/FuncOps.h"
#include "mlir/Dialect/SCF/IR/SCF.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Conversion/Common/TypeConverter.h"
#include "Conversion/Common/PatternBase.h"
#include "Conversion/Common/ConversionTarget.h"
#include "Conversion/MemDisagg.h"

using namespace mlir;
using namespace mlir::disagg;

using TrivialArithCmpIConversion = TrivialMappingToRemotePattern<arith::CmpIOp, arith::CmpIOp>;
using TrivialArithSubIConversion = TrivialMappingToRemotePattern<arith::SubIOp, arith::SubIOp>;
using TrivialArithAddIConversion = TrivialMappingToRemotePattern<arith::AddIOp, arith::AddIOp>;
using TrivialArithAndIConversion = TrivialMappingToRemotePattern<arith::AndIOp, arith::AndIOp>;
using TrivialArithXorIConversion = TrivialMappingToRemotePattern<arith::XOrIOp, arith::XOrIOp>;
using TrivialArithSI2FPConversion = TrivialMappingToRemotePattern<arith::SIToFPOp, arith::SIToFPOp>;
using TrivialArithExtUIConversion = TrivialMappingToRemotePattern<arith::ExtUIOp, arith::ExtUIOp>;
using TrivialArithIndexCastConversion = TrivialMappingToRemotePattern<arith::IndexCastOp, arith::IndexCastOp>;

using TrivialLLVMCallConversion = TrivialMappingToRemotePattern<LLVM::CallOp, LLVM::CallOp>;

void mlir::disagg::populateTrivialDisaggPatterns(MLIRContext *ctx, RewritePatternSet &patterns) {
  patterns.add<
    TrivialArithAddIConversion,
    TrivialArithCmpIConversion,
    TrivialArithSubIConversion,
    TrivialArithAndIConversion,
    TrivialArithXorIConversion,
    TrivialArithSI2FPConversion,
    TrivialArithExtUIConversion,
    TrivialArithIndexCastConversion,
    TrivialLLVMCallConversion
  >(ctx);

}