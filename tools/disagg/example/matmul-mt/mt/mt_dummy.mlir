module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr<array<2 x i64>>
    %1 = llvm.alloca %c1_i64 x !llvm.array<2 x struct<"struct.Pack", (ptr<i32>, ptr<i32>)>> : (i64) -> !llvm.ptr<array<2 x struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>>
    %2 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<2 x i64>>) -> !llvm.ptr<i64>
    %3 = llvm.mlir.null : !llvm.ptr<struct<"union.pthread_attr_t", (i64, array<48 x i8>)>>
    %4 = polygeist.get_func @task : <func<ptr<i8> (ptr<i8>)>>
    %5 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<array<2 x struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>>) -> !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      %8 = arith.index_cast %arg0 : index to i32
      %9 = llvm.getelementptr %2[%8] : (!llvm.ptr<i64>, i32) -> !llvm.ptr<i64>
      %10 = llvm.getelementptr %5[%8] : (!llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>, i32) -> !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>
      %11 = llvm.bitcast %10 : !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>> to !llvm.ptr<i8>
      %12 = func.call @pthread_create(%9, %3, %4, %11) : (!llvm.ptr<i64>, !llvm.ptr<struct<"union.pthread_attr_t", (i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32
    }
    %6 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<2 x i64>>) -> !llvm.ptr<i64>
    %7 = llvm.mlir.null : !llvm.ptr<ptr<i8>>
    scf.for %arg0 = %c0 to %c2 step %c1 {
      %8 = arith.index_cast %arg0 : index to i64
      %9 = llvm.getelementptr %6[%8] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
      %10 = llvm.load %9 : !llvm.ptr<i64>
      %11 = func.call @pthread_join(%10, %7) : (i64, !llvm.ptr<ptr<i8>>) -> i32
    }
    return %c0_i32 : i32
  }
  func.func private @pthread_create(!llvm.ptr<i64>, !llvm.ptr<struct<"union.pthread_attr_t", (i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @task(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<i8> to !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    call @foo(%2, %4) : (!llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    return %5 : !llvm.ptr<i8>
  }
  func.func private @pthread_join(i64, !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @foo(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr<array<4 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.load %arg0 : !llvm.ptr<i32>
    %3 = llvm.load %arg1 : !llvm.ptr<i32>
    %4 = arith.addi %2, %3 : i32
    %5 = llvm.call @printf(%1, %4) : (!llvm.ptr<i8>, i32) -> i32
    return
  }
}
