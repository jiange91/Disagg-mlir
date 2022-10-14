module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @rbuf() : !llvm.ptr<i8>
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i32 = arith.constant 0 : i32
    %c16_i32 = arith.constant 16 : i32
    %c64_i32 = arith.constant 64 : i32
    %c1_i64 = arith.constant 1 : i64
    call @init_device() : () -> ()
    call @init_bufs() : () -> ()
    call @cache_init() : () -> ()
    %0 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %2 = call @cache_create(%c64_i32, %c16_i32, %1) : (i32, i32, !llvm.ptr<i8>) -> i32
    %3 = call @_disagg_alloc(%2, %c1_i64) : (i32, i64) -> !llvm.ptr<i8>
    %4 = llvm.ptrtoint %3 : !llvm.ptr<i8> to i64
    %5 = call @cache_request(%4) : (i64) -> !llvm.struct<(i64, i64)>
    call @shutdown_device() : () -> ()
    return %c0_i32 : i32
  }
  func.func private @init_device() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @init_bufs() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_init() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_create(i32, i32, !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_disagg_alloc(i32, i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_request(i64) -> !llvm.struct<(i64, i64)> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @shutdown_device() attributes {llvm.linkage = #llvm.linkage<external>}
}
