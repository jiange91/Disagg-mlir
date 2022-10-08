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

// virt_ptr = _disagg_alloc(cid = 0, size);
LLVM::LLVMFuncOp lookupOrCreateAllocFn(ModuleOp moduleOp);
// void _disagg_free(virt_ptr);
LLVM::LLVMFuncOp lookupOrCreateFreeFn(ModuleOp moduleOp);
// cache_token_t = _cache_request(virt_ptr);
LLVM::LLVMFuncOp lookupOrCreateCacheRequestFn(ModuleOp moduleOp);
// void local_ptr = _cache_access_mut(cache_token_t); 
LLVM::LLVMFuncOp lookupOrCreateCacheAccessMutFn(ModuleOp moduleOp);
// void local_ptr = _cache_access(cache_token_t);
LLVM::LLVMFuncOp lookupOrCreateCacheAccessFn(ModuleOp moduleOp);

Value cacheRequestCallWrapper(OpBuilder &builder, Location loc, LLVM::LLVMFuncOp reqFn, Value ptr);

Value cacheAccessCallWrapper(OpBuilder &builder, Location loc, 
  LLVM::LLVMFuncOp accFn, 
  Value token, 
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