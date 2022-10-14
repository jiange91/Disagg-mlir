#ifndef REMOTE_MEM_API_CALL_UTILS_H
#define REMOTE_MEM_API_CALL_UTILS_H

#include "mlir/IR/Operation.h"
#include "mlir/Support/LLVM.h"

namespace mlir {
class Location;
class ModuleOp;
class OpBuilder;
class Operation;
class Type;
class Value;
class ValueRange;

namespace LLVM {
class LLVMFuncOp;
}

namespace rmem {
Type getIntBitType(MLIRContext *ctx, unsigned bitwidth);
Value createIntConstant(OpBuilder &builder, Location loc, int64_t value, Type resultType);
LLVM::LLVMStructType getCacheTokenType(MLIRContext *ctx);
LLVM::LLVMPointerType getVoidPtrType(MLIRContext *ctx);

// calcualte sizeof(elemType) * arraySize in bytes
// not considering 
Value calculateBufferSize(OpBuilder &builder, Location loc, Type elemType, Value arraySize);

// virt_ptr = _disagg_alloc(cid = 1, size);
LLVM::LLVMFuncOp lookupOrCreateAllocFn(ModuleOp moduleOp);
// ptr = _disagg_stack_alloc(size);
LLVM::LLVMFuncOp lookupOrCreateStackAllocaFn(ModuleOp moduleOp);
// void _disagg_free(virt_ptr);
LLVM::LLVMFuncOp lookupOrCreateFreeFn(ModuleOp moduleOp);
// cache_token_t = _cache_request(virt_ptr);
LLVM::LLVMFuncOp lookupOrCreateCacheRequestFn(ModuleOp moduleOp);
// void local_ptr = _cache_access_mut(*cache_token_t); 
LLVM::LLVMFuncOp lookupOrCreateCacheAccessMutFn(ModuleOp moduleOp);
// void local_ptr = _cache_access(*cache_token_t);
LLVM::LLVMFuncOp lookupOrCreateCacheAccessFn(ModuleOp moduleOp);
// void init_device();
LLVM::LLVMFuncOp lookupOrCreateInitDeviceFn(ModuleOp moduleOp);
// void init_bufs(); /* init sbuf and rbuf */
LLVM::LLVMFuncOp lookupOrCreateInitBuffersFn(ModuleOp moduleOp);
// void cache_init(); /* config linebase to use sbuf */
LLVM::LLVMFuncOp lookupOrCreateCacheInitFn(ModuleOp moduleOp);
// unsigned cache_create(unsigned cache_size, unsigned cache_line_size);
LLVM::LLVMFuncOp lookupOrCreateCacheCreateFn(ModuleOp moduleOp);
// void shutdown_device();
LLVM::LLVMFuncOp lookupOrCreateShutdownDeviceFn(ModuleOp moduleOp);
// global cacehs[n]
LLVM::GlobalOp lookupOrCreateGlobalCaches(ModuleOp moduleOp, unsigned n);

Value cacheRequestCallWrapper(OpBuilder &builder, Location loc, LLVM::LLVMFuncOp reqFn, Value ptr);

Value cacheAccessCallWrapper(OpBuilder &builder, Location loc, 
  LLVM::LLVMFuncOp accFn, 
  Value token_ptr /* int128_t* */, 
  Type castPtrType);

LLVM::LLVMFuncOp lookupOrCreateFn(ModuleOp moduleOp, 
                                  StringRef name, 
                                  ArrayRef<Type> inputTypes = {}, 
                                  Type resultType = {});
Operation::result_range createLLVMCall(OpBuilder &builder,
                                       Location loc,
                                       LLVM::LLVMFuncOp fn,
                                       ValueRange inputs = {},
                                       ArrayRef<Type> resultTypes = {});
}
}

#endif