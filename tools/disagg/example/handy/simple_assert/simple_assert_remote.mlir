module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @__assert_fail(!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @str2("int main(int, char **)\00")
  llvm.mlir.global internal constant @str1("simple.c\00")
  llvm.mlir.global internal constant @str0("as[i].y == as[i].x * as[i].x\00")
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  rmem.llvm.global {addr_space = 0 : i32, global_type = !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, linkage = 10 : i64, sym_name = "as", unnamed_addr = 0 : i64} : {
    %0 = rmem.ptr.undef : !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
    rmem.return %0 : !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
  }
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c8_i64 = arith.constant 8 : i64
    %c22_i32 = arith.constant 22 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.getelementptr %arg1[%c1_i64] : (!llvm.ptr<ptr<i8>>, i64) -> !llvm.ptr<ptr<i8>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i8>>
    %2 = llvm.call @atoi(%1) : (!llvm.ptr<i8>) -> i32
    %3 = rmem.llvm.addressof @as : !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>
    %4 = arith.extsi %2 : i32 to i64
    %5 = arith.muli %4, %c8_i64 : i64
    %6 = rmem.malloc_ptr 0, %5 : (i64) -> !rmem.rmref<1, !llvm.ptr<i8>>
    %7 = rmem.bitcast %6 : (!rmem.rmref<1, !llvm.ptr<i8>>) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
    rmem.llvm.store %7 -> %3 : !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>
    %8 = arith.index_cast %2 : i32 to index
    scf.for %arg2 = %c0 to %8 step %c1 {
      %10 = arith.index_cast %arg2 : index to i32
      %11 = rmem.llvm.addressof @as : !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>
      %12 = rmem.llvm.load %11 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
      %13 = arith.index_cast %arg2 : index to i64
      %14 = rmem.llvm.getelementptr %12[%13 dense<> : tensor<0xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i64) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
      %15 = rmem.llvm.getelementptr %14[%c0_i32 dense<0> : tensor<1xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i32) -> !rmem.rmref<1, !llvm.ptr<i32>>
      rmem.llvm.store %10 -> %15 : i32, !rmem.rmref<1, !llvm.ptr<i32>>
      %16 = rmem.llvm.addressof @as : !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>
      %17 = rmem.llvm.load %16 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
      %18 = arith.index_cast %arg2 : index to i64
      %19 = rmem.llvm.getelementptr %17[%18 dense<> : tensor<0xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i64) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
      %20 = rmem.llvm.getelementptr %19[%c0_i32 dense<1> : tensor<1xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i32) -> !rmem.rmref<1, !llvm.ptr<i32>>
      %21 = arith.muli %10, %10 : i32
      rmem.llvm.store %21 -> %20 : i32, !rmem.rmref<1, !llvm.ptr<i32>>
    }
    %9 = arith.index_cast %2 : i32 to index
    scf.for %arg2 = %c0 to %9 step %c1 {
      %10 = rmem.llvm.addressof @as : !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>
      %11 = rmem.llvm.load %10 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>>) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
      %12 = arith.index_cast %arg2 : index to i64
      %13 = rmem.llvm.getelementptr %11[%12 dense<> : tensor<0xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i64) -> !rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>
      %14 = rmem.llvm.getelementptr %13[%c0_i32 dense<1> : tensor<1xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i32) -> !rmem.rmref<1, !llvm.ptr<i32>>
      %15 = rmem.llvm.load %14 : (!rmem.rmref<1, !llvm.ptr<i32>>) -> i32
      %16 = rmem.llvm.getelementptr %13[%c0_i32 dense<0> : tensor<1xi32>] : (!rmem.rmref<1, !llvm.ptr<struct<(i32, i32)>>>, i32) -> !rmem.rmref<1, !llvm.ptr<i32>>
      %17 = rmem.llvm.load %16 : (!rmem.rmref<1, !llvm.ptr<i32>>) -> i32
      %18 = arith.muli %17, %17 : i32
      %19 = arith.cmpi eq, %15, %18 : i32
      scf.if %19 {
      } else {
        %20 = llvm.mlir.addressof @str0 : !llvm.ptr<array<29 x i8>>
        %21 = llvm.getelementptr %20[%c0_i32, %c0_i32] : (!llvm.ptr<array<29 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %22 = llvm.mlir.addressof @str1 : !llvm.ptr<array<9 x i8>>
        %23 = llvm.getelementptr %22[%c0_i32, %c0_i32] : (!llvm.ptr<array<9 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %24 = llvm.mlir.addressof @str2 : !llvm.ptr<array<23 x i8>>
        %25 = llvm.getelementptr %24[%c0_i32, %c0_i32] : (!llvm.ptr<array<23 x i8>>, i32, i32) -> !llvm.ptr<i8>
        llvm.call @__assert_fail(%21, %23, %c22_i32, %25) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
      }
    }
    return %c0_i32 : i32
  }
}

