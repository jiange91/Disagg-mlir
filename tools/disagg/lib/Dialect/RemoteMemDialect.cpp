#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/IR/FunctionImplementation.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/Matchers.h"
#include "mlir/IR/PatternMatch.h"
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "llvm/ADT/APFloat.h"
#include "llvm/ADT/MapVector.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/Support/FormatVariadic.h"
#include "llvm/Support/raw_ostream.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemTypes.h"
#include "Dialect/FunctionUtils.h"

using namespace mlir;
using namespace mlir::rmem;

#include "Dialect/RemoteMemOpsEnums.cpp.inc"
#include "Dialect/RemoteMemOpsDialect.cpp.inc"

//================================================================
// Common Utility Canonicalization Functions
//================================================================


// Look up operation with given type and symbol
template <typename OpTy>
static OpTy lookupSymbolInModule(Operation *parent, StringRef name) {
  Operation *module = parent;
  while (module && !LLVM::satisfiesLLVMModule(module))
    module = module->getParentOp();
  assert(module && "unexpected operation outside of a module");
  return dyn_cast_or_null<OpTy>(
      mlir::SymbolTable::lookupSymbolIn(module, name));
}

//================================================================
// Memref global op
//================================================================

LogicalResult rmem::MemRefGetGlobalOp::verifySymbolUses(mlir::SymbolTableCollection&) {
  return mlir::success();
}

//================================================================
// LLVM Mlloc Operation
//================================================================

//================================================================
// Memref Alloc Operation
// ==============================================================

// =================================================================
// Materialzation Operation
// =================================================================

void MaterializeOp::build(mlir::OpBuilder &builder, mlir::OperationState &state, Value rmemref) {
  RemoteMemRefType rmrefType = rmemref.getType().dyn_cast<RemoteMemRefType>();
  Type rawSource = getRawTypeFromRemotedType(rmrefType);
  MaterializeOp::build(builder, state, rawSource, rmemref);
}

LogicalResult MaterializeOp::verify() {
  Type rawSource = getRawTypeFromRemotedType(getRmemref().getType());
  if (rawSource != getLocalRef().getType()) {
    return emitOpError("Missmatch target type for materialization operation\n-- remote-type: ") << getRmemref().getType() << "\n-- expected raw type: " << rawSource << "\n-- given raw type:" << getLocalRef().getType();
  }
  return mlir::success();
}

// struct MaterializationFoldPattern : public OpRewritePattern<MaterializeOp> {
//   using OpRewritePattern<MaterializeOp>::OpRewritePattern;

//   /* Fold x.virtualize().materialize()
//     current virtualize and materialze will keep the result type consistent, might need castOp in the future
//   */
//   LogicalResult matchAndRewrite(MaterializeOp op, PatternRewriter &rewriter) const override {
//     Value matInput = op.getOperand();
//     VirtualizeOp virtOp = matInput.getDefiningOp<VirtualizeOp>();
//     if (!virtOp) return mlir::failure();

//     // Replace materialize op with virtualize input
//     // DCE will take care of redundant virt op
//     rewriter.replaceOp(op, virtOp.getOperand());
//     return mlir::success();
//   }
// };

// void MaterializeOp::getCanonicalizationPatterns(RewritePatternSet &results, MLIRContext *context) {
//   results.add<
//   MaterializationFoldPattern
//   >(context);
// }


// ==============================================================
// RemoteMem LLVMAddressOfOP
// ==============================================================
LLVMGlobalOp LLVMAddressOfOp::getGlobal() {
  return lookupSymbolInModule<LLVMGlobalOp>((*this)->getParentOp(), getGlobalName());
}
//================================================================
// RemoteMem Dialect
//================================================================

RingCache::RingCache(size_t blockSize, size_t nBlocks, size_t totalSize, mlir::Type T, size_t eleTypeSize): blockSize(blockSize), nBlocks(nBlocks), totalSize(totalSize), lbase(nullptr), rbase(nullptr), eleType(T) {
  perBlock = blockSize / eleTypeSize;
};

LocalCache::LocalCache(ArrayAttr attrs) {
  baseSym = attrs[0].cast<StringAttr>().getValue();
  rbase = nullptr;
  lOfst = attrs[1].cast<IntegerAttr>().getValue().getZExtValue();
  rOfst = attrs[2].cast<IntegerAttr>().getValue().getZExtValue();
  rSize = attrs[3].cast<IntegerAttr>().getValue().getSExtValue();
  eleType = attrs[4].cast<TypeAttr>().getValue();
  blockSize = attrs[5].cast<IntegerAttr>().getValue().getZExtValue();
  nBlocks = attrs[6].cast<IntegerAttr>().getValue().getZExtValue();
  type = static_cast<CacheType>(attrs[7].cast<IntegerAttr>().getValue().getZExtValue());
}

LocalCache::LocalCache(ArrayAttr attrs, DenseMap<StringRef, Value> &access_mem_base_pool) : LocalCache(attrs) {
  rbase = access_mem_base_pool[baseSym];
}

ArrayAttr LocalCache::toAttr(OpBuilder &builder) {
  SmallVector<Attribute, 7> attrs;
  attrs.push_back(builder.getStringAttr(baseSym));
  attrs.push_back(builder.getI64IntegerAttr(rOfst));
  attrs.push_back(builder.getI64IntegerAttr(rSize));
  attrs.push_back(TypeAttr::get(eleType));
  attrs.push_back(builder.getI64IntegerAttr(blockSize));
  attrs.push_back(builder.getI64IntegerAttr(nBlocks));
  attrs.push_back(builder.getI32IntegerAttr(static_cast<int>(type)));
  auto rel = builder.getArrayAttr(attrs);
  return rel;
}


void RemoteMemDialect::initialize() {
  registerTypes();
  addOperations<
#define GET_OP_LIST
#include "Dialect/RemoteMemOps.cpp.inc"
  >();
}

#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.cpp.inc"