module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @rbuf() : !llvm.ptr<i8>
  llvm.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(16 : i32) : i32
    %2 = llvm.mlir.constant(64 : i32) : i32
    %3 = llvm.mlir.constant(1 : i64) : i64
    llvm.call @init_device() : () -> ()
    llvm.call @init_bufs() : () -> ()
    llvm.call @cache_init() : () -> ()
    %4 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.call @cache_create(%2, %1, %5) : (i32, i32, !llvm.ptr<i8>) -> i32
    %7 = llvm.call @_disagg_alloc(%6, %3) : (i32, i64) -> !llvm.ptr<i8>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i8> to i64
    %9 = llvm.call @cache_request(%8) : (i64) -> !llvm.struct<(i64, i64)>
    llvm.call @shutdown_device() : () -> ()
    llvm.return %0 : i32
  }
  llvm.func @init_device() attributes {sym_visibility = "private"}
  llvm.func @init_bufs() attributes {sym_visibility = "private"}
  llvm.func @cache_init() attributes {sym_visibility = "private"}
  llvm.func @cache_create(i32, i32, !llvm.ptr<i8>) -> i32 attributes {sym_visibility = "private"}
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8> attributes {sym_visibility = "private"}
  llvm.func @cache_request(i64) -> !llvm.struct<(i64, i64)> attributes {sym_visibility = "private"}
  llvm.func @shutdown_device() attributes {sym_visibility = "private"}
}

