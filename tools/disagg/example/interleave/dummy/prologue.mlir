module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<"struct.Token", (i64, i8, i8, i16, i32)>>
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %2 = call @get(%1) : (!llvm.ptr<i8>) -> !llvm.ptr<i32>
    %3 = llvm.load %2 : !llvm.ptr<i32>
    return %3 : i32
  }
  func.func private @get(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c1234_i64 = arith.constant 1234 : i64
    %c4567_i64 = arith.constant 4567 : i64
    %c-1234_i64 = arith.constant -1234 : i64
    %true = arith.constant true
    %c0_i32 = arith.constant 0 : i32
    %alloca = memref.alloca() : memref<!llvm.ptr<i32>>
    %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i8> to i64
    %1 = arith.andi %0, %c-1234_i64 : i64
    %2 = arith.divsi %1, %c1234_i64 : i64
    %3 = arith.remsi %2, %c4567_i64 : i64
    %4 = arith.trunci %3 : i64 to i32
    %5 = call @token(%4) : (i32) -> !llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>
    %6 = call @paddr(%4, %0) : (i32, i64) -> !llvm.ptr<i32>
    %7 = call @token_valid(%5) : (!llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>) -> i8
    %8 = arith.extsi %7 : i8 to i32
    %9 = arith.cmpi ne, %8, %c0_i32 : i32
    %10 = scf.if %9 -> (i1) {
      %12 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
      %13 = llvm.load %12 : !llvm.ptr<i64>
      %14 = arith.cmpi eq, %13, %1 : i64
      %15 = arith.cmpi ne, %13, %1 : i64
      scf.if %14 {
        affine.store %6, %alloca[] : memref<!llvm.ptr<i32>>
      }
      scf.yield %15 : i1
    } else {
      scf.yield %true : i1
    }
    scf.if %10 {
      func.call @request_poll(%4, %1) : (i32, i64) -> ()
      affine.store %6, %alloca[] : memref<!llvm.ptr<i32>>
    }
    %11 = affine.load %alloca[] : memref<!llvm.ptr<i32>>
    return %11 : !llvm.ptr<i32>
  }
  func.func private @token(%arg0: i32) -> !llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>> attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c1999_i32 = arith.constant 1999 : i32
    %0 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<"struct.Token", (i64, i8, i8, i16, i32)>>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<33554432 x struct<"struct.Token", (i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>
    %2 = arith.addi %arg0, %c1999_i32 : i32
    %3 = arith.index_cast %2 : i32 to index
    %4 = arith.index_cast %3 : index to i64
    %5 = llvm.getelementptr %1[%4] : (!llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>
    return %5 : !llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>
  }
  func.func @paddr(%arg0: i32, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1234_i64 = arith.constant 1234 : i64
    %c1234_i32 = arith.constant 1234 : i32
    %0 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %2 = llvm.getelementptr %1[2333] : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    %3 = arith.muli %arg0, %c1234_i32 : i32
    %4 = llvm.getelementptr %2[%3] : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
    %5 = arith.remsi %arg1, %c1234_i64 : i64
    %6 = llvm.getelementptr %4[%5] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %7 = llvm.bitcast %6 : !llvm.ptr<i8> to !llvm.ptr<i32>
    return %7 : !llvm.ptr<i32>
  }
  func.func @token_valid(%arg0: !llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>) -> i8 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.Token", (i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %1 = llvm.load %0 : !llvm.ptr<i8>
    %2 = arith.extsi %1 : i8 to i32
    %3 = arith.andi %2, %c1_i32 : i32
    %4 = arith.trunci %3 : i32 to i8
    return %4 : i8
  }
  func.func private @request_poll(i32, i64) attributes {llvm.linkage = #llvm.linkage<external>}
}
