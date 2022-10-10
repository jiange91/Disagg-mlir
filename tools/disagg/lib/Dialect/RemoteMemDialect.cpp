#include "Dialect/RemoteMem.h"
#include "Dialect/RemoteMemOps.h"
#include "Dialect/RemoteMemTypes.h"
#include "mlir/IR/BuiltinTypes.h"
#include "mlir/IR/DialectImplementation.h"
#include "mlir/IR/FunctionImplementation.h"
#include "mlir/IR/OpImplementation.h"
#include "mlir/IR/Matchers.h"
#include "mlir/IR/PatternMatch.h"
#include "llvm/ADT/ScopeExit.h"
#include "llvm/ADT/TypeSwitch.h"
#include "llvm/Support/TypeSize.h"

using namespace mlir;
using namespace mlir::rmem;

#include "Dialect/RemoteMemOpsEnums.cpp.inc"
#include "Dialect/RemoteMemOpsDialect.cpp.inc"

//================================================================
// Common Utility Canonicalization Functions
//================================================================

// Recursively convert a container type, including its embedding types, to the original type
Type mlir::rmem::getRawTypeFromRemotedType(Type type) {
  // If is given remote memref, extract nesting llvm.ptr or memref and convert to raw type
  if (auto rmref = type.dyn_cast<RemoteMemRefType>()) {
    Type rawRef = rmref.getElementType();
    return getRawTypeFromRemotedType(rawRef);
  }

  /* Routines below convert container types that may have rmemref type as the embedded type to raw type */
  if (auto memref = type.dyn_cast<MemRefType>()) {
    Type rawElemType = getRawTypeFromRemotedType(memref.getElementType());
    return MemRefType::get(memref.getShape(), rawElemType, memref.getLayout(), memref.getMemorySpace());
  }

  if (auto llvmPtr = type.dyn_cast<LLVM::LLVMPointerType>()) {
    Type rawPointeeType = getRawTypeFromRemotedType(llvmPtr.getElementType());
    return LLVM::LLVMPointerType::get(rawPointeeType, llvmPtr.getAddressSpace());
  }

  if (auto structType = type.dyn_cast<LLVM::LLVMStructType>()) {
    if (structType.isIdentified()) {
      // get original structType using raw name
      StringRef sName = structType.getName();
      if (!sName.contains("_Remoted_") /* not remoted, raw type */)
        return structType;
      size_t rawStartIdx = 9;
      if (sName.contains("_Remoted_Counter#"))
        rawStartIdx = sName.find('_', 17);

      auto rawStructType = LLVM::LLVMStructType::getIdentified(structType.getContext(), sName.drop_front(rawStartIdx));
      if (rawStructType.isInitialized()) {
        return rawStructType;
      } else {
        llvm::errs() << "Cannot find raw structType for " << sName << "\n";
        return nullptr;
      }
    }
    
    // Unamed Struct Type, get new literal
    SmallVector<Type> rawElemTypes;
    rawElemTypes.reserve(structType.getBody().size());
    for (auto &en : structType.getBody()) {
      rawElemTypes.push_back(getRawTypeFromRemotedType(en));
    }
    return LLVM::LLVMStructType::getLiteral(structType.getContext(), rawElemTypes, structType.isPacked());
  }

  if (auto aryType = type.dyn_cast<LLVM::LLVMArrayType>()) {
    Type rawEleTy = getRawTypeFromRemotedType(aryType.getElementType());
    return LLVM::LLVMArrayType::get(rawEleTy, aryType.getNumElements());
  }

  if (auto fVecType = type.dyn_cast<LLVM::LLVMFixedVectorType>()) {
    Type rawEleTy = getRawTypeFromRemotedType(fVecType.getElementType());
    return LLVM::LLVMFixedVectorType::get(rawEleTy, fVecType.getNumElements());
  }


  if (auto fVecType = type.dyn_cast<LLVM::LLVMScalableVectorType>()) {
    Type rawEleTy = getRawTypeFromRemotedType(fVecType.getElementType());
    return LLVM::LLVMScalableVectorType::get(rawEleTy, fVecType.getMinNumElements());
  }

  // TODO: tensor, vector, func, llvm.func
  return type;
}


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
//==============================================================================
// RemoteMem LLVMAllocaOp
//==============================================================================
// void LLVMAllocaOp::build(OpBuilder &b, OperationState &s, Type resultType, Value arraySize, unsigned alignment){
//   LLVM::LLVMPointerType ptrTy = resultType.cast<RemoteMemRefType>().getElementType().cast<LLVM::LLVMPointerType>();

//   assert(!ptrTy.isOpaque() && "If result is opaque, pass element type explicitly");
//   if (alignment == 0)
//     return build(b, s, resultType, arraySize, IntegerAttr(), TypeAttr::get(ptrTy.getElementType()));
//   build(b, s, resultType, arraySize, b.getI64IntegerAttr(alignment), TypeAttr::get(ptrTy.getElementType()));
// }

// void LLVMAllocaOp::build(OpBuilder &b, OperationState &s, Type resultType, Type elementType, Value arraySize, unsigned alignment = 0) {
//   LLVM::LLVMPointerType ptrTy = resultType.cast<RemoteMemRefType>().getElementType().cast<LLVM::LLVMPointerType>(); 
//   TypeAttr eleTyAttr = ptrTy.isOpaque() ? TypeAttr::get(elementType) : TypeAttr::get(ptrTy.getElementType());
//   build(b, s, resultType, arraySize, 
//     alignment == 0 ? IntegerAttr() : b.getI64IntegerAttr(alignment), eleTyAttr);
// }
//================================================================
// RemoteMem Dialect
//================================================================

void RemoteMemDialect::initialize() {
  registerTypes();
  addOperations<
#define GET_OP_LIST
#include "Dialect/RemoteMemOps.cpp.inc"
  >();
}

#define GET_OP_CLASSES
#include "Dialect/RemoteMemOps.cpp.inc"