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
#include <iostream>
#include <fstream>
#include <string>

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
// Memref reinterpret cast op
//================================================================


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
  SmallVector<Attribute, 8> attrs;
  attrs.push_back(builder.getStringAttr(baseSym));
  attrs.push_back(builder.getI64IntegerAttr(lOfst));
  attrs.push_back(builder.getI64IntegerAttr(rOfst));
  attrs.push_back(builder.getI64IntegerAttr(rSize));
  attrs.push_back(TypeAttr::get(eleType));
  attrs.push_back(builder.getI64IntegerAttr(blockSize));
  attrs.push_back(builder.getI64IntegerAttr(nBlocks));
  attrs.push_back(builder.getI32IntegerAttr(static_cast<int>(type)));
  auto rel = builder.getArrayAttr(attrs);
  return rel;
}

// should use opInterface instead
std::pair<bool, Value> mlir::rmem::isRemoteAccess(Operation *op) {
  if (auto affineStore = dyn_cast<rmem::RAffineStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(affineStore.getMemref().getType()), affineStore.getMemref()};
  }
  if (auto affineLoad = dyn_cast<rmem::RAffineLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(affineLoad.getMemref().getType()), affineLoad.getMemref()};
  }
  if (auto vecLoad = dyn_cast<rmem::VectorLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(vecLoad.getBase().getType()), vecLoad.getBase()};
  }
  if (auto vecStore = dyn_cast<rmem::VectorStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(vecStore.getBase().getType()), vecStore.getBase()};
  }
  if (auto memrefLoad = dyn_cast<rmem::MemRefLoadOp>(op)) {
    return {rmem::isTrueRemoteRef(memrefLoad.getMemref().getType()), memrefLoad.getMemRef()};
  }
  if (auto memrefStore = dyn_cast<rmem::MemRefStoreOp>(op)) {
    return {rmem::isTrueRemoteRef(memrefStore.getMemref().getType()), memrefStore.getMemRef()};
  }
  if (auto llvmLoad = dyn_cast<rmem::LoadOp>(op)) {
    return {rmem::isTrueRemoteRef(llvmLoad.getAddr().getType()), llvmLoad.getAddr()};
  }
  if (auto llvmStore = dyn_cast<rmem::StoreOp>(op)) {
    return {rmem::isTrueRemoteRef(llvmStore.getAddr().getType()), llvmStore.getAddr()};
  }
  return {false, Value()};
}

void mlir::rmem::readCachesFromFile(std::unordered_map<int, mlir::rmem::Cache*> &caches, std::string &path) {
  std::ifstream cfg(path);
  if (!cfg.is_open()) {
    llvm::errs() << "cannot open cache config file: " << path << "\n";
  }
  // format: cache id, type, token offset, raddr offset, laddr offset, slots, line size bytes, qid 
  int cache_id, type, slots, qid;
  uint64_t token_off, raddr_off, laddr_off, line_size;
  while (cfg >> cache_id >> type >> token_off >> raddr_off >> laddr_off >> slots >> line_size >> qid) {
    if (type == 0) {
      caches.insert(std::make_pair(cache_id, new DirectMappedCache(cache_id, slots, qid, token_off, raddr_off, laddr_off, line_size))); 
    }
  }
}

void Cache::request(OpBuilder &rewriter, ModuleOp mop, Value offset, Value tag, mlir::Location loc) {
  std::string fid = "_cache_" + std::to_string(cache_id) + "_request";
  StringRef reqRef = getAPIRef(fid);
  LLVM::LLVMFuncOp reqFn = rmem::lookupOrCreateFn(
    mop, reqRef, {rewriter.getI64Type(), rewriter.getI64Type()}, nullptr
  );
  rmem::createLLVMCall(rewriter, loc, reqFn,
    {offset, tag}
  );
}

// static inline T * paddr(int off, uint64_t vaddr) {
//     return (T*)(_rbuf + lbuf + off * linesize + vaddr % linesize);
// }
Value Cache::paddr(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value offset, Value vaddr, mlir::Location loc) {
  Value indent = rewriter.create<arith::AddIOp>(loc, 
    rewriter.create<arith::ConstantIntOp>(loc, laddr_off, 64),
    rewriter.create<arith::AddIOp>(loc, 
      rewriter.create<arith::MulIOp>(loc, 
        offset, rewriter.create<arith::ConstantIntOp>(loc, line_size, 64)),
      rewriter.create<arith::RemSIOp>(loc, 
        vaddr, rewriter.create<arith::ConstantIntOp>(loc, line_size, 64))
    )
  ).getResult();

  auto rbufGlob = rmem::getOrCreateRbuf(mop);
  Value rbuf = rewriter.create<LLVM::LoadOp>(loc, 
    rewriter.create<LLVM::AddressOfOp>(loc, rbufGlob)
  );

  SmallVector<LLVM::GEPArg, 1> inds{indent};
  Value buf = rewriter.create<LLVM::GEPOp>(
    loc, rmem::getVoidPtrType(mop.getContext()), rbuf, inds
  );
  Value tbuf = rewriter.create<LLVM::BitcastOp>(loc, outputType, buf);
  return tbuf;
}

Value Cache::token(OpBuilder &rewriter, ModuleOp mop, Value offset, mlir::Location loc) {
  Value tbase = rewriter.create<LLVM::LoadOp>(loc, 
    rewriter.create<LLVM::AddressOfOp>(loc, rmem::getOrCreateTokens(mop))
  );
  SmallVector<LLVM::GEPArg, 1> inds{offset};
  Value toff = rewriter.create<LLVM::GEPOp>(loc, 
    LLVM::LLVMPointerType::get(rmem::getIntBitType(mop.getContext(), 128)),
    tbase, inds
  );
  return toff;
}

Value Cache::get(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value vaddr, mlir::Location loc) {
  // std::string fid = "_cache_" + std::to_string(cache_id) + "_get";
  std::string getRef = "_cache_get";
  // StringRef getRef = getAPIRef(fid);
  Type voidPtr = rmem::getVoidPtrType(mop.getContext());
  LLVM::LLVMFuncOp getFn = rmem::lookupOrCreateFn(
    mop, getRef, {voidPtr}, outputType
  );
  Value input = vaddr;
  if (vaddr.getType() != voidPtr)
    input = rewriter.create<LLVM::BitcastOp>(loc, voidPtr, vaddr);
  auto rels = rmem::createLLVMCall(rewriter, loc, getFn, {input});
  return rels.front();
}

Value Cache::get_mut(OpBuilder &rewriter, ModuleOp mop, Type outputType, Value vaddr, mlir::Location loc) {
  // std::string fid = "_cache_" + std::to_string(cache_id) + "_get_mut";
  std::string getMutRef = "_cache_get_mut";
  // StringRef getMutRef = getAPIRef(fid);
  Type voidPtr = rmem::getVoidPtrType(mop.getContext());
  LLVM::LLVMFuncOp getFn = rmem::lookupOrCreateFn(
    mop, getMutRef, {voidPtr}, outputType
  );
  Value input = vaddr;
  if (vaddr.getType() != voidPtr)
    input = rewriter.create<LLVM::BitcastOp>(loc, voidPtr, vaddr);
  auto rels = rmem::createLLVMCall(rewriter, loc, getFn, {input});
  return rels.front();
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