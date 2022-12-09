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
#include "mlir/Dialect/Arith/IR/Arith.h"
#include "mlir/Conversion/LLVMCommon/Pattern.h"
#include "mlir/Transforms/DialectConversion.h"
#include "mlir/Analysis/DataLayoutAnalysis.h"
#include "Lowering/Common/PatternBase.h"
#include "Lowering/Common/RMemTypeLowerer.h"
#include "Lowering/RemoteMemToLLVM/RemoteMemToLLVM.h"
#include "Lowering/FuncRemote/FuncRemote.h"
#include "Lowering/SCFRemote/SCFRemote.h"
#include "Lowering/MemRefRemote/MemRefRemote.h"
#include "Lowering/Trivial/Trivial.h"

namespace mlir {
#define GEN_PASS_DEF_CONVERTREMOTEMEMTOLLVM
#include "Lowering/Passes.h.inc"
using namespace mlir::rmem;
namespace {
// =================================================================
// Patterns

class RemoteMemUndefLowering : public RemoteMemOpLoweringPattern<rmem::UndefOp> {
  using RemoteMemOpLoweringPattern<rmem::UndefOp>::RemoteMemOpLoweringPattern;

  LogicalResult matchAndRewrite(rmem::UndefOp op, rmem::UndefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type ptr = getTypeConverter()->convertType(op.getUndef().getType());
    auto newUndef = rewriter.create<LLVM::UndefOp>(op.getLoc(), ptr);
    rewriter.replaceOp(op, {newUndef});
    return mlir::success();
  }
};

class RemoteMemNullOpLowering : public RemoteMemOpLoweringPattern<rmem::NullRefOp> {
  using RemoteMemOpLoweringPattern<rmem::NullRefOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::NullRefOp op, rmem::NullRefOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type newPtr = getTypeConverter()->convertType(op.getNullRef().getType());
    Value newNull = rewriter.create<LLVM::NullOp>(op.getLoc(), newPtr);
    rewriter.replaceOp(op, newNull);
    return mlir::success();
  }
};

class RemoteMemLLVMGlobalLowering : public RemoteMemOpLoweringPattern<rmem::LLVMGlobalOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMGlobalOp>::RemoteMemOpLoweringPattern;
  
  LogicalResult matchAndRewrite(rmem::LLVMGlobalOp op, rmem::LLVMGlobalOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto linkage = LLVM::linkage::symbolizeLinkage(static_cast<uint64_t>(op.getLinkage()));
    if (!linkage.has_value()) {
      llvm::errs() << "Cannot convert linkage info\n"; 
      return mlir::failure();
    }

    LLVM::UnnamedAddrAttr nattr = {};
    if (auto rnattr = op.getUnnamedAddrAttr()) {
      if (auto naddr = LLVM::symbolizeUnnamedAddr(static_cast<uint64_t>(rnattr.getValue()))) {
        nattr = LLVM::UnnamedAddrAttr::get(rnattr.getContext(), *naddr);
      }
    }

    Type convertedGlobTy = getTypeConverter()->convertType(op.getGlobalType());
    auto newGlob = rewriter.create<LLVM::GlobalOp>(
      op.getLoc(),
      convertedGlobTy,
      op.getConstant(),
      op.getSymName(),
      *linkage,
      op.getDsoLocal(),
      op.getThreadLocal_(),
      op.getValueAttr(),
      op.getAlignmentAttr(),
      op.getAddrSpace(),
      nattr,
      op.getSectionAttr()
    );

    rewriter.inlineRegionBefore(op.getInitializer(), newGlob.getInitializer(), newGlob.getInitializer().end());
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class RemoteMemReturnLowering : public RemoteMemOpLoweringPattern<rmem::ReturnOp> {
  using RemoteMemOpLoweringPattern<rmem::ReturnOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::ReturnOp op, rmem::ReturnOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<LLVM::ReturnOp>(op, adaptor.getOperands());
    return mlir::success();
  }
};


class RemoteMemSizeOfOpLowering : public RemoteMemOpLoweringPattern<rmem::SizeOfOp> {
  using RemoteMemOpLoweringPattern<rmem::SizeOfOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::SizeOfOp op, rmem::SizeOfOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type srcType = getTypeConverter()->convertType(adaptor.getSrc());
    Type relType = op.getResult().getType();
    if (srcType.isa<IntegerType, FloatType>() || LLVM::isCompatibleType(srcType)) {
      DataLayout DLI(op->getParentOfType<ModuleOp>());
      rewriter.replaceOpWithNewOp<arith::ConstantOp>(
        op, relType, rewriter.getIntegerAttr(relType, DLI.getTypeSize(srcType)));
      return success();
    }
    // if is both i64, leave to folder to remove this case
    Value size = rewriter.create<arith::TruncIOp>(op.getLoc(), 
      op.getResult().getType(), getSizeInBytes(op.getLoc(), srcType, rewriter)
    );

    rewriter.replaceOp(op, size);
    return mlir::success();
  }
};

class RemoteMemLLVMAddressOfLowering : public RemoteMemOpLoweringPattern<rmem::LLVMAddressOfOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMAddressOfOp>::RemoteMemOpLoweringPattern;

  LogicalResult matchAndRewrite(rmem::LLVMAddressOfOp op, rmem::LLVMAddressOfOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type ptrType = getTypeConverter()->convertType(op.getRes().getType());
    auto newAddr = rewriter.create<LLVM::AddressOfOp>(op.getLoc(), ptrType, op.getGlobalName());
    rewriter.replaceOp(op, {newAddr});
    return mlir::success();
  }
};

class RemoteMemMallocPtrLowering : public RemoteMemOpLoweringPattern<rmem::LLVMMallocOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMMallocOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LLVMMallocOp op, rmem::LLVMMallocOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto rallocOp = rmem::lookupOrCreateAllocFn(op->getParentOfType<ModuleOp>());
    // Type resultType = getTypeConverter()->convertType(op.getResult().getType());

    auto newPtr = rmem::createLLVMCall(rewriter, op.getLoc(), rallocOp,
     {rmem::createIntConstant(rewriter, op.getLoc(), adaptor.getPoolId(), rmem::getIntBitType(op.getContext(), 32)),
     adaptor.getMemSize()});
    rewriter.replaceOp(op, newPtr);
    return mlir::success();
  }
};

class RemoteMemBitCastLowering : public RemoteMemOpLoweringPattern<rmem::BitCastOp> {
  using RemoteMemOpLoweringPattern<rmem::BitCastOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::BitCastOp op, rmem::BitCastOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type ptrType = getTypeConverter()->convertType(op.getResult().getType());
    auto newPtr = rewriter.create<LLVM::BitcastOp>(
      op.getLoc(),
      ptrType,
      adaptor.getOperands()
    );
    rewriter.replaceOp(op, {newPtr});
    return mlir::success();
  }
};

class RemoteMemOffloadLowering : public RemoteMemOpLoweringPattern<rmem::OffloadOp> {
  using RemoteMemOpLoweringPattern<rmem::OffloadOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::OffloadOp op, rmem::OffloadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Location loc = op.getLoc();
    Value argSize = rewriter.create<arith::ConstantIntOp>(loc, 0, 64);
    Value retSize = rewriter.create<arith::ConstantIntOp>(loc, 0, 64);

    if (adaptor.getInputs().size()) {
      
      auto ofldArgBuf = getOrCreateOffloadArgBuf(op->getParentOfType<ModuleOp>());
      Value ptrArg = rewriter.create<LLVM::AddressOfOp>(loc, ofldArgBuf);
      Value argBuf = rewriter.create<LLVM::LoadOp>(loc, ptrArg);
      
      // awayls point to the last byte being stored
      Value curMem = argBuf;

      // move cursor and store to offload arg buf
      for (auto const &[old, adp] : llvm::zip(op.getInputs(), adaptor.getInputs())) {
        Type currentType = adp.getType();
        Value toStore = adp;
        if (old.getType().isa<LLVM::LLVMPointerType>()) {
          currentType = adp.getType().cast<LLVM::LLVMPointerType>().getElementType();
          toStore = rewriter.create<LLVM::LoadOp>(loc, adp);
        }

        curMem = rewriter.create<LLVM::BitcastOp>(loc, LLVM::LLVMPointerType::get(currentType), curMem);
        rewriter.create<LLVM::StoreOp>(loc, toStore, curMem);
        curMem = rewriter.create<LLVM::GEPOp>(loc, curMem.getType(), curMem, ArrayRef<LLVM::GEPArg>(1));
      }

      Value startP = rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), argBuf);
      Value endP = rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), curMem);
      argSize = rewriter.create<arith::SubIOp>(loc, rewriter.getI64Type(), endP, startP);
    }

    // currently we only permit 0/1 return
    Type relType;
    if (op.getRet().size()) {
      relType = getTypeConverter()->convertType(op.getResult(0).getType());
      retSize = getSizeInBytes(loc, relType, rewriter);
    }

    auto callRoutine = lookupOrCreateCallOffloadService(op->getParentOfType<ModuleOp>());
    Value retPtr = createLLVMCall(rewriter, loc, callRoutine, {adaptor.getFid(), argSize, retSize}).front();

    if (op.getRet().size()) {
      Value castRet = rewriter.create<LLVM::BitcastOp>(loc, LLVM::LLVMPointerType::get(relType), retPtr);
      Value retValue = rewriter.create<LLVM::LoadOp>(loc, castRet);
      rewriter.replaceOp(op, retValue);
    } else {
      rewriter.eraseOp(op);
    }

    return mlir::success();
  }
};

class RemoteMemStoreLowering : public RemoteMemOpLoweringPattern<rmem::StoreOp> {
  using RemoteMemOpLoweringPattern<rmem::StoreOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::StoreOp op, rmem::StoreOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // If the remote addr is remote memref
    //   - if true remote 
    //     need to first materialize to local addr before store
    // Else the addr is a local addr, just store
    Value newAddr = adaptor.getAddr();
    if (auto rmrefType = op.getAddr().getType().dyn_cast<RemoteMemRefType>()) {
      if (rmrefType.getCanRemote()) 
        newAddr = materializeDisaggVirtualAddress(rewriter, op, newAddr, newAddr.getType(), ACCESS_MUT);
    }
    rewriter.replaceOpWithNewOp<LLVM::StoreOp>(op, 
      adaptor.getValue(),
      newAddr,
      adaptor.getAccessGroupsAttr(),
      adaptor.getAliasScopesAttr(),
      adaptor.getNoaliasScopesAttr(),
      adaptor.getAlignmentAttr(),
      adaptor.getVolatile_Attr(),
      adaptor.getNontemporalAttr()
    );
    return mlir::success();
  }
};

class RemoteMemMemsetLowering : public RemoteMemOpLoweringPattern<rmem::LLVMMemsetOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMMemsetOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LLVMMemsetOp op, rmem::LLVMMemsetOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    if (auto rtype = op.getDst().getType().dyn_cast<rmem::RemoteMemRefType>()) {
      if (rtype.getCanRemote() != 0) {
        llvm::errs() << "Lowering of Memset of remote memref not supported yet\n";
        return mlir::failure();
      }
    }

    rewriter.replaceOpWithNewOp<LLVM::MemsetOp>(op, 
      adaptor.getDst(),
      adaptor.getVal(),
      adaptor.getLen(),
      adaptor.getIsVolatile()
    );
    return mlir::success();
  }
};

class RemoteMemChannelCreateLowering : public RemoteMemOpLoweringPattern<rmem::ChannelCreateOp> {
  using RemoteMemOpLoweringPattern<rmem::ChannelCreateOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::ChannelCreateOp op, rmem::ChannelCreateOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto channelCreateFn = lookupOrCreateChannelCreateFn(op->getParentOfType<ModuleOp>());
    mlir::Location loc = op.getLoc();
    Value ptrInt = rewriter.create<LLVM::PtrToIntOp>(loc, rewriter.getI64Type(), adaptor.getBaseVaddr());
    Value channel = createLLVMCall(rewriter, loc, channelCreateFn, 
      {
        ptrInt,
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), op.getUpperBound()),
        op.getOriUnitSize(),
        adaptor.getSizeEach(),
        adaptor.getNumSlots(),
        adaptor.getBatch(),
        adaptor.getDist(),
        adaptor.getAssemId(),
        adaptor.getKind()
      }
    ).front();
    rewriter.replaceOp(op, channel);
    return mlir::success();
  }
};

class RemoteMemChannelAccessLowering : public RemoteMemOpLoweringPattern<rmem::ChannelAccessOp> {
  using RemoteMemOpLoweringPattern<rmem::ChannelAccessOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::ChannelAccessOp op, rmem::ChannelAccessOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto channelAccessFn = lookupOrCreateChannelAccessFn(op->getParentOfType<ModuleOp>());
    mlir::Location loc = op.getLoc();
    Value access = createLLVMCall(rewriter, loc, channelAccessFn,
      {
        adaptor.getChannel(), 
        rewriter.create<arith::IndexCastOp>(loc, rewriter.getI64Type(), op.getPhi())
      }
    ).front();
    Type ptrType = getTypeConverter()->convertType(op.getAddr().getType());
    if (access.getType() != ptrType) {
       access = rewriter.create<LLVM::BitcastOp>(loc, ptrType, access);
    }
    rewriter.replaceOp(op, access);
    return mlir::success();
  }
};

class RemoteMemPrefetchLowering : public RemoteMemOpLoweringPattern<rmem::PrefetchOp> {
  using RemoteMemOpLoweringPattern<rmem::PrefetchOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::PrefetchOp op, rmem::PrefetchOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // only prefetch if is true remote memref
    if (auto rmrefType = op.getAddr().getType().dyn_cast<RemoteMemRefType>()) {
      if (rmrefType.getCanRemote()) {
        auto cachePrefetchOp = rmem::lookupOrCreateCachePrefetchFn(op->getParentOfType<ModuleOp>());
        rmem::cacheRequestCallWrapper(rewriter, op.getLoc(), cachePrefetchOp, adaptor.getAddr());
      }
    } 
    rewriter.eraseOp(op);
    return mlir::success();
  }
};

class RemoteMemLoadLowering : public RemoteMemOpLoweringPattern<rmem::LoadOp> {
  using RemoteMemOpLoweringPattern<rmem::LoadOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LoadOp op, rmem::LoadOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    // If the remote addr is remote memref
    //   - if true remote 
    //     need to first materialize to local addr 
    // Else the addr is a local addr, just load
    Value newAddr = adaptor.getAddr();
    if (auto rmrefType = op.getAddr().getType().dyn_cast<RemoteMemRefType>()) {
      if (rmrefType.getCanRemote())
        newAddr = materializeDisaggVirtualAddress(rewriter, op, newAddr, newAddr.getType(), ACCESS);
    }
    Value newLoad = rewriter.create<LLVM::LoadOp>(
      op.getLoc(),
      getTypeConverter()->convertType(op.getRes().getType()),
      newAddr,
      adaptor.getAccessGroupsAttr(),
      adaptor.getAliasScopesAttr(),
      adaptor.getNoaliasScopesAttr(),
      adaptor.getAlignmentAttr(),
      adaptor.getVolatile_Attr(),
      adaptor.getNontemporalAttr()
    );
    rewriter.replaceOp(op, newLoad);
    return mlir::success();
  }
};

class RemoteMemGEPOpLowering : public RemoteMemOpLoweringPattern<rmem::GEPOp> {
  using RemoteMemOpLoweringPattern<rmem::GEPOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::GEPOp op, rmem::GEPOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {

    SmallVector<LLVM::GEPArg, 2> indices;
    for (Value i : adaptor.getIndices()) {
      indices.push_back(i);
    } 
    for (int32_t i : adaptor.getStructIndices()) {
      indices.push_back(i);
    }

    SmallVector<NamedAttribute, 2> newAttr;
    for (auto &attr : adaptor.getAttributes().getValue()) {
      if (attr.getName() == "structIndices") continue;
      newAttr.push_back(attr);
    }

    Type resPtrType = getTypeConverter()->convertType(op.getRes().getType());
    Value newGEPRel = rewriter.create<LLVM::GEPOp>(
      op.getLoc(),
      resPtrType,
      adaptor.getBase(),
      indices,
      newAttr
    );

    rewriter.replaceOp(op, newGEPRel);
    return success();
  }
};

class RemoteMemAllocaOpLowering : public RemoteMemOpLoweringPattern<rmem::LLVMAllocaOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMAllocaOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LLVMAllocaOp op, rmem::LLVMAllocaOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {

    Type resultType = getTypeConverter()->convertType(op.getResult().getType());

    // if result type is originally ptr<...>
    // decay to llvm.alloca
    if (op.getMem().getType().isa<LLVM::LLVMPointerType>()) {
      unsigned align = 0;
      if (adaptor.getAlignment().has_value())
        align = *adaptor.getAlignment();
      auto laddr = rewriter.create<LLVM::AllocaOp>(op.getLoc(), 
        resultType, adaptor.getArraySize(),
        align
      ).getRes();
      rewriter.replaceOp(op, laddr);
      return mlir::success();
    }
    
    // otherwise, it's a fake cache stack pointer
    auto stkAllocaOp = rmem::lookupOrCreateStackAllocaFn(op->getParentOfType<ModuleOp>());

    // calculate alloca size using gepop
    Value sizeInBytes = rmem::calculateBufferSize(rewriter, op.getLoc(), *adaptor.getElemType(), adaptor.getArraySize());
    
    if (adaptor.getAlignment().has_value() && *adaptor.getAlignment() != 0) {
      llvm::errs() << "current alloca does not take alignment into account, check\n";
      op.dump();
      return mlir::failure();
    } 

    auto vaddr = rmem::createLLVMCall(rewriter, op.getLoc(), stkAllocaOp,
      sizeInBytes);
    Value newPtr = rewriter.create<LLVM::BitcastOp>(op.getLoc(), resultType, vaddr);

    rewriter.replaceOp(op, newPtr);
    return mlir::success();
  }
};

class RemoteMemCallocOpLowering : public RemoteMemOpLoweringPattern<rmem::LLVMCallocOp> {
  using RemoteMemOpLoweringPattern<rmem::LLVMCallocOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::LLVMCallocOp op, rmem::LLVMCallocOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {

    auto rallocOp = rmem::lookupOrCreateAllocFn(op->getParentOfType<ModuleOp>());

    // calculate calloc size using mult
    Value sizeInBytes = rewriter.create<arith::MulIOp>(op.getLoc(), 
      rewriter.getI64Type(), adaptor.getNum(), adaptor.getUnitSize()
    );

    auto newPtr = rmem::createLLVMCall(rewriter, op.getLoc(), rallocOp,
     {
      rmem::createIntConstant(rewriter, op.getLoc(), adaptor.getPoolId(), 
        rmem::getIntBitType(op.getContext(), 32)), 
      sizeInBytes
     }
    );

    rewriter.replaceOp(op, newPtr);
    return mlir::success();
  }
};

class RemoteMemAddrCmpLowering : public RemoteMemOpLoweringPattern<rmem::AddrCmpOp> {
  using RemoteMemOpLoweringPattern<rmem::AddrCmpOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::AddrCmpOp op, rmem::AddrCmpOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    auto pred = *LLVM::symbolizeICmpPredicate(static_cast<uint64_t>(adaptor.getPredicate()));
    Value newCmp = rewriter.create<LLVM::ICmpOp>(op.getLoc(),
      pred, adaptor.getLhs(), adaptor.getRhs());
    rewriter.replaceOp(op, newCmp);
    return mlir::success();
  }
};

class RemoteMemPtrToIntLowering : public RemoteMemOpLoweringPattern<rmem::PtrToIntOp> {
  using RemoteMemOpLoweringPattern<rmem::PtrToIntOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::PtrToIntOp op, rmem::PtrToIntOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    rewriter.replaceOpWithNewOp<LLVM::PtrToIntOp>(op, 
      op.getRes().getType(),
      adaptor.getPtr()
    );
    return mlir::success();
  }
};

class RemoteMemIntToPtrLowering : public RemoteMemOpLoweringPattern<rmem::IntToPtrOp> {
  using RemoteMemOpLoweringPattern<rmem::IntToPtrOp>::RemoteMemOpLoweringPattern;
  LogicalResult matchAndRewrite(rmem::IntToPtrOp op, rmem::IntToPtrOpAdaptor adaptor, ConversionPatternRewriter &rewriter) const override {
    Type relType = getTypeConverter()->convertType(op.getPtr().getType());
    rewriter.replaceOpWithNewOp<LLVM::IntToPtrOp>(op, 
      relType,
      adaptor.getArg()
    );
    return mlir::success();
  }
};

// =================================================================
}

namespace {
class ConvertRemoteMemToLLVMPass : public impl::ConvertRemoteMemToLLVMBase<ConvertRemoteMemToLLVMPass> {
public:
  ConvertRemoteMemToLLVMPass() = default;
  void runOnOperation() override {
    ModuleOp m = getOperation();

    // clear mapping rules
    m->removeAttr("rmem.type_rule");

    RemoteMemTypeLowerer typeConverter(&getContext());
    RewritePatternSet patterns(&getContext());
    populateRemoteMemToLLVMPatterns(typeConverter, patterns);
    
    ConversionTarget target(getContext());
    target.addIllegalDialect<rmem::RemoteMemDialect>();
    // Generic target that fileter out most of operations
    target.markUnknownOpDynamicallyLegal([](Operation *op) {
      return !(llvm::any_of(op->getOperandTypes(), rmem::hasRemoteTarget) || llvm::any_of(op->getResultTypes(), rmem::hasRemoteTarget));
    });
    target.addDynamicallyLegalOp<func::FuncOp>([](func::FuncOp op) {
      return (!llvm::any_of(op.getArgumentTypes(), rmem::hasRemoteTarget)) && (!llvm::any_of(op.getResultTypes(), rmem::hasRemoteTarget));
    });

    if (failed(applyPartialConversion(m, target, std::move(patterns))))
      signalPassFailure();

    /* add disagg env init */
    auto mainFunc = m.lookupSymbol<func::FuncOp>("main");
    if (mainFunc) {
      /* call inits and shutdown */
      auto initClientOp = rmem::lookupOrCreateInitClientFn(m);
      auto initCacheOp = rmem::lookupOrCreateCacheInitFn(m);
      auto initChannelOp = rmem::lookupOrCreateChannelInitFn(m);

      OpBuilder b(mainFunc.getBody());
      rmem::createLLVMCall(b, mainFunc.getLoc(), initClientOp);
      rmem::createLLVMCall(b, mainFunc.getLoc(), initCacheOp);
      rmem::createLLVMCall(b, mainFunc.getLoc(), initChannelOp);
    }
  }
};

} // namespace

void populateRemoteMemToLLVMPatterns(RemoteMemTypeLowerer &converter, RewritePatternSet &patterns) {
  populateLowerFuncRMemPatterns(converter, patterns);
  populateLowerSCFRMemPatterns(converter, patterns);
  populateLowerMemRefRMemPatterns(converter, patterns);
  populateLowerArithRMemPatterns(converter, patterns);
  patterns.add<
  RemoteMemUndefLowering,
  RemoteMemNullOpLowering,
  RemoteMemLLVMGlobalLowering,
  RemoteMemReturnLowering,
  RemoteMemLLVMAddressOfLowering,
  RemoteMemMallocPtrLowering,
  RemoteMemBitCastLowering,
  RemoteMemStoreLowering,
  RemoteMemPrefetchLowering,
  RemoteMemLoadLowering,
  RemoteMemGEPOpLowering,
  RemoteMemAllocaOpLowering,
  RemoteMemCallocOpLowering,
  RemoteMemAddrCmpLowering,
  RemoteMemSizeOfOpLowering,
  RemoteMemChannelCreateLowering,
  RemoteMemChannelAccessLowering,
  RemoteMemOffloadLowering,
  RemoteMemMemsetLowering,
  RemoteMemPtrToIntLowering,
  RemoteMemIntToPtrLowering
  >(converter, &converter.getContext());
}

std::unique_ptr<Pass> createRemoteMemToLLVMPass() {
  return std::make_unique<ConvertRemoteMemToLLVMPass>();
}
}