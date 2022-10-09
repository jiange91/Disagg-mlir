module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d: %d = %d * %d\0A\00")
  llvm.mlir.global external @as() : !llvm.ptr<struct<(i32, i32)>> {
    %0 = llvm.mlir.undef : !llvm.ptr<struct<(i32, i32)>>
    llvm.return %0 : !llvm.ptr<struct<(i32, i32)>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c0_i32 = arith.constant 0 : i32
    %c16_i32 = arith.constant 16 : i32
    %c64_i32 = arith.constant 64 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i128 : (i64) -> !llvm.ptr<i128>
    %1 = llvm.mlir.undef : i128
    llvm.store %1, %0 : !llvm.ptr<i128>
    %2 = llvm.alloca %c1_i64 x i128 : (i64) -> !llvm.ptr<i128>
    llvm.store %1, %2 : !llvm.ptr<i128>
    call @init_device() : () -> ()
    call @init_bufs() : () -> ()
    call @cache_init() : () -> ()
    %3 = call @cache_create(%c64_i32, %c16_i32) : (i32, i32) -> i32
    %4 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.call @atoi(%5) : (!llvm.ptr<i8>) -> i32
    %7 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
    %8 = arith.extsi %6 : i32 to i64
    %9 = arith.muli %8, %c8_i64 : i64
    %10 = call @_disagg_alloc(%c0_i32, %9) : (i32, i64) -> !llvm.ptr<i8>
    %11 = llvm.bitcast %10 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, i32)>>
    llvm.store %11, %7 : !llvm.ptr<ptr<struct<(i32, i32)>>>
    %12 = arith.index_cast %6 : i32 to index
    scf.for %arg2 = %c0 to %12 step %c1 {
      %14 = arith.index_cast %arg2 : index to i32
      %15 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %17 = llvm.getelementptr %16[%14] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %18 = llvm.ptrtoint %17 : !llvm.ptr<struct<(i32, i32)>> to i64
      %19 = func.call @cache_request(%18) : (i64) -> i128
      llvm.store %19, %2 : !llvm.ptr<i128>
      %20 = func.call @cache_access_mut(%2) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %21 = llvm.bitcast %20 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, i32)>>
      %22 = llvm.getelementptr %21[%c0_i32, 0] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      llvm.store %14, %22 : !llvm.ptr<i32>
      %23 = llvm.getelementptr %21[%c0_i32, 1] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %24 = arith.muli %14, %14 : i32
      llvm.store %24, %23 : !llvm.ptr<i32>
    }
    %13 = arith.index_cast %6 : i32 to index
    scf.for %arg2 = %c0 to %13 step %c1 {
      %14 = arith.index_cast %arg2 : index to i32
      %15 = llvm.mlir.addressof @as : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<struct<(i32, i32)>>>
      %17 = llvm.getelementptr %16[%14] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<struct<(i32, i32)>>
      %18 = llvm.ptrtoint %17 : !llvm.ptr<struct<(i32, i32)>> to i64
      %19 = func.call @cache_request(%18) : (i64) -> i128
      llvm.store %19, %0 : !llvm.ptr<i128>
      %20 = func.call @cache_access(%0) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
      %21 = llvm.bitcast %20 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32, i32)>>
      %22 = llvm.mlir.addressof @str0 : !llvm.ptr<array<18 x i8>>
      %23 = llvm.getelementptr %22[%c0_i32, %c0_i32] : (!llvm.ptr<array<18 x i8>>, i32, i32) -> !llvm.ptr<i8>
      %24 = llvm.getelementptr %21[%c0_i32, 1] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %25 = llvm.load %24 : !llvm.ptr<i32>
      %26 = llvm.getelementptr %21[%c0_i32, 0] : (!llvm.ptr<struct<(i32, i32)>>, i32) -> !llvm.ptr<i32>
      %27 = llvm.load %26 : !llvm.ptr<i32>
      %28 = llvm.call @printf(%23, %14, %25, %27, %27) : (!llvm.ptr<i8>, i32, i32, i32, i32) -> i32
    }
    call @shutdown_device() : () -> ()
    return %c0_i32 : i32
  }
  func.func private @init_device() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @init_bufs() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_init() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_create(i32, i32) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_disagg_alloc(i32, i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_request(i64) -> i128 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_access_mut(!llvm.ptr<i128>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @cache_access(!llvm.ptr<i128>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @shutdown_device() attributes {llvm.linkage = #llvm.linkage<external>}
}
