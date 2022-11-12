#include "mlir/Dialect/LLVMIR/LLVMDialect.h"
#include "mlir/IR/Builders.h"
#include "mlir/IR/OpDefinition.h"
#include "mlir/Support/LLVM.h"
#include "Dialect/RemoteMem.h"
#include "Dialect/FunctionUtils.h"

using namespace mlir;
using namespace mlir::rmem;

static constexpr llvm::StringRef kAlloc = "_disagg_alloc";
static constexpr llvm::StringRef kStackAlloca = "_disagg_stack_alloc";
static constexpr llvm::StringRef kFree = "_disagg_free";
static constexpr llvm::StringRef kCacheRequest = "cache_request";
static constexpr llvm::StringRef kCacheAccessMut = "cache_access_mut";
static constexpr llvm::StringRef kCacheAccess = "cache_access";
static constexpr llvm::StringRef kCacheAccessNRTCMut = "cache_access_nrtc_mut";
static constexpr llvm::StringRef kCacheAccessNRTC = "cache_access_nrtc";
static constexpr llvm::StringRef kCacheInit = "cache_init";
static constexpr llvm::StringRef kInitClient= "init_client";
static constexpr llvm::StringRef kAccSnapshot = "n_access_snapshot";
static constexpr llvm::StringRef kInstrProfInc = "llvm.instrprof.increment";
static constexpr llvm::StringRef kInstrProfIncStep = "llvm.instrprof.increment.step";
static constexpr llvm::StringRef kDumpProfile = "__llvm_profile_write_file";


//==============================================================================
// Utility functions
//==============================================================================

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateFn(ModuleOp moduleOp, 
                                              StringRef name,
                                              ArrayRef<Type> inputTypes,
                                              Type resultType) {
  auto func = moduleOp.lookupSymbol<LLVM::LLVMFuncOp>(name);
  if (func)
    return func;
  OpBuilder b(moduleOp.getBodyRegion());
  return b.create<LLVM::LLVMFuncOp>(
    moduleOp->getLoc(), name,
    LLVM::LLVMFunctionType::get(resultType ? resultType : getVoidType(moduleOp.getContext()), inputTypes)
  );
}

Operation::result_range mlir::rmem::createLLVMCall(OpBuilder &builder,
                                       Location loc,
                                       LLVM::LLVMFuncOp fn,
                                       ValueRange inputs) {
                                       
  return builder.create<LLVM::CallOp>(
    loc,
    fn,
    inputs
  )->getResults();
}

Type mlir::rmem::getIntBitType(MLIRContext *ctx, unsigned bitwidth) {
  return IntegerType::get(ctx, bitwidth);
}

Value mlir::rmem::createIntConstant(OpBuilder &builder, Location loc, int64_t value, Type resultType) {
  return builder.create<LLVM::ConstantOp>(
    loc, resultType, builder.getIntegerAttr(resultType, value)
  );
}

LLVM::LLVMStructType mlir::rmem::getCacheTokenType(MLIRContext *ctx) {
  llvm_unreachable("Should use int128_t for abi compatibility");
  /*
  typedef struct cache_token_t {
    // key for pointer
    struct {
        uint64_t tag; // addr = tag + line_ofst
        uint16_t line_ofst;
    };

    struct {
        uint64_t head_addr;
        uint16_t cache;
    };
  } cache_token_t;
  */
  auto virtPart = LLVM::LLVMStructType::getLiteral(ctx,
    {getIntBitType(ctx, 64), getIntBitType(ctx, 16)}
  );
  auto localPart = LLVM::LLVMStructType::getLiteral(ctx,
    {getIntBitType(ctx, 64), getIntBitType(ctx, 16)}
  );
  return LLVM::LLVMStructType::getLiteral(ctx,
    {virtPart, localPart}
  );
}

LLVM::LLVMVoidType mlir::rmem::getVoidType(MLIRContext *ctx) {
  return LLVM::LLVMVoidType::get(ctx);
}

LLVM::LLVMPointerType mlir::rmem::getVoidPtrType(MLIRContext *ctx) {
  return LLVM::LLVMPointerType::get(getIntBitType(ctx, 8));
}

Value mlir::rmem::calculateBufferSize(OpBuilder &builder, Location loc, Type elemType, Value arraySize) {
  auto elePtrType = LLVM::LLVMPointerType::get(elemType, 0);
  Value nullPtr = builder.create<LLVM::NullOp>(loc, elePtrType);
  Value gepPtr = builder.create<LLVM::GEPOp>(loc, 
    elePtrType, nullPtr, arraySize);
  return builder.create<LLVM::PtrToIntOp>(loc, rmem::getIntBitType(loc.getContext(), 64), gepPtr);
}

bool mlir::rmem::isCacheAccessOp(const StringRef callee) {
  return (callee.equals(kCacheAccess) ||
          callee.equals(kCacheAccessMut) ||
          callee.equals(kCacheAccessNRTC) || 
          callee.equals(kCacheAccessNRTCMut));
}


//===----------------------------------------------------------------------===
// Func creation
//===----------------------------------------------------------------------===

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateAllocFn(ModuleOp moduleOp) {
  MLIRContext *ctx = moduleOp.getContext();
  return rmem::lookupOrCreateFn(
    moduleOp,
    kAlloc,
    {getIntBitType(ctx, 32), getIntBitType(ctx, 64)},
    rmem::getVoidPtrType(ctx)
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateStackAllocaFn(ModuleOp moduleOp) {
  MLIRContext *ctx = moduleOp.getContext();
  return rmem::lookupOrCreateFn(
    moduleOp,
    kStackAlloca,
    getIntBitType(ctx, 64),
    rmem::getVoidPtrType(ctx)
  );
} 

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateFreeFn(ModuleOp moduleOp) {
  return rmem::lookupOrCreateFn(
    moduleOp,
    kFree,
    rmem::getVoidPtrType(moduleOp->getContext()),
    LLVM::LLVMVoidType::get(moduleOp->getContext())
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateCacheRequestFn(ModuleOp moduleOp) {
  auto func = moduleOp.lookupSymbol<LLVM::LLVMFuncOp>(kCacheRequest);
  if (func)
    return func;

  return rmem::lookupOrCreateFn(
    moduleOp,
    kCacheRequest,
    getIntBitType(moduleOp->getContext(), 64),
    getIntBitType(moduleOp->getContext(), 128)
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateCacheAccessMutFn(ModuleOp moduleOp) {
  return rmem::lookupOrCreateFn(
    moduleOp,
    kCacheAccessMut,
    LLVM::LLVMPointerType::get(getIntBitType(moduleOp->getContext(), 128)),
    getVoidPtrType(moduleOp->getContext())
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateCacheAccessFn(ModuleOp moduleOp) {
  return rmem::lookupOrCreateFn(
    moduleOp,
    kCacheAccess,
    LLVM::LLVMPointerType::get(getIntBitType(moduleOp->getContext(), 128)),
    getVoidPtrType(moduleOp->getContext())
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateCacheInitFn(ModuleOp moduleOp) {
  return rmem::lookupOrCreateFn(
    moduleOp,
    kCacheInit,
    {},
    LLVM::LLVMVoidType::get(moduleOp->getContext())
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateInitClientFn(ModuleOp moduleOp) {
  return rmem::lookupOrCreateFn(
    moduleOp,
    kInitClient,
    {},
    LLVM::LLVMVoidType::get(moduleOp->getContext())
  );
}

LLVM::LLVMFuncOp lookupOrCreateAccSnapshotFn(ModuleOp moduleOp) {
  return rmem::lookupOrCreateFn(
    moduleOp,
    kAccSnapshot,
    {},
    getIntBitType(moduleOp->getContext(), 64)
  );
}

LLVM::GlobalOp mlir::rmem::lookupOrCreateGlobalCaches(ModuleOp moduleOp, unsigned n) {
  llvm_unreachable("now using static cache id");
  auto globalCaches = moduleOp.lookupSymbol<LLVM::GlobalOp>("caches");
  if (globalCaches) return globalCaches;
  OpBuilder b(moduleOp.getBodyRegion());
  globalCaches = b.create<LLVM::GlobalOp>(
    moduleOp->getLoc(),
    LLVM::LLVMArrayType::get(getIntBitType(moduleOp.getContext(), 32), n),
    false,
    LLVM::Linkage::External,
    "caches",
    nullptr
  ); 
  
  b.setInsertionPointToStart(&globalCaches.getInitializerRegion().emplaceBlock());
  Value ary = b.create<LLVM::UndefOp>(
    globalCaches.getLoc(),
    LLVM::LLVMArrayType::get(getIntBitType(moduleOp.getContext(), 32), n)
  );
  b.create<LLVM::ReturnOp>(
    globalCaches.getLoc(),
    ary
  );
  return globalCaches;
}

LLVM::GlobalOp mlir::rmem::lookupOrCreateGlobalCtrName(ModuleOp moduleOp, StringRef ctrName, StringRef fname) {
  auto globalCtrName = moduleOp.lookupSymbol<LLVM::GlobalOp>(ctrName);
  if (globalCtrName) return globalCtrName;
  OpBuilder b(moduleOp.getBodyRegion());
  return b.create<LLVM::GlobalOp>(moduleOp.getLoc(),
    LLVM::LLVMArrayType::get(
      getIntBitType(moduleOp.getContext(), 8),
      fname.size()
      ),
    true, /* is constant */
    LLVM::Linkage::Private,
    ctrName,
    b.getStringAttr(fname)
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateInstrInc(ModuleOp moduleOp) {
  auto ctx = moduleOp.getContext();
  return rmem::lookupOrCreateFn(
    moduleOp,
    kInstrProfInc,
    {getVoidPtrType(ctx), getIntBitType(ctx, 64), getIntBitType(ctx, 32), getIntBitType(ctx, 32)},
    {}
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateInstrIncStep(ModuleOp moduleOp) {
  auto ctx = moduleOp.getContext();
  return rmem::lookupOrCreateFn(
    moduleOp,
    kInstrProfIncStep,
    {getVoidPtrType(ctx), getIntBitType(ctx, 64), getIntBitType(ctx, 32), getIntBitType(ctx, 32)},
    {}
  );
}

LLVM::LLVMFuncOp mlir::rmem::lookupOrCreateProfileWriteFn(ModuleOp moduleOp) {
  auto ctx = moduleOp.getContext();
  return rmem::lookupOrCreateFn(
    moduleOp,
    kDumpProfile,
    {},
    {getIntBitType(ctx, 32)}
  ); 
}

// ==============================================================
// Helper Wrapper for type casting
// ==============================================================

Value mlir::rmem::cacheRequestCallWrapper(OpBuilder &builder, Location loc, LLVM::LLVMFuncOp reqFn, Value ptr) {
  /*
  The wrapper provides a preprocess rountine for calls to cache_req
  1. addr = llvm.ptrtoint ptr
  2. token = reqFn (addr)
  */

  auto addr = builder.create<LLVM::PtrToIntOp>(
    loc, getIntBitType(loc.getContext(), 64), ptr
  );
  auto result = createLLVMCall(builder, loc, reqFn, {addr});
  return result.front();
}

Value mlir::rmem::cacheAccessCallWrapper(OpBuilder &builder, Location loc, LLVM::LLVMFuncOp accFn, Value token_ptr, Type castPtrType) {
  /*
  The wrapper provide a postprocess routine for calls to cache_access
  access a token T with expected pointer type P:
  1. voidPtr = accFn (T)
  2. result = llvm.bitcast voidPtr to P
  */

  auto voidPtr = createLLVMCall(builder, loc, accFn, token_ptr);
  auto result = builder.create<LLVM::BitcastOp>(
    loc, castPtrType, voidPtr
  );
  return result;
}
