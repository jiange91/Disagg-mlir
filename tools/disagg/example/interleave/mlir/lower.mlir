module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @arc() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("after setup\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+06 : f64
    %c0_i32 = arith.constant 0 : i32
    call @setup() : () -> ()
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1) : (!llvm.ptr<i8>) -> i32
    %3 = call @microtime() : () -> i64
    %4 = llvm.mlir.addressof @arc : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    %6 = builtin.unrealized_conversion_cast %5 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>> {lower_src_mat = true}
    call @visit(%6) : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> ()
    %7 = call @microtime() : () -> i64
    %8 = llvm.mlir.addressof @str1 : !llvm.ptr<array<18 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %10 = arith.subi %7, %3 : i64
    %11 = arith.sitofp %10 : i64 to f64
    %12 = arith.divf %11, %cst : f64
    %13 = llvm.call @printf(%9, %12) : (!llvm.ptr<i8>, f64) -> i32
    %14 = llvm.mlir.addressof @str2 : !llvm.ptr<array<18 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %16 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %18 = llvm.getelementptr %17[5] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %19 = llvm.load %18 : !llvm.ptr<i32>
    %20 = llvm.call @printf(%15, %19) : (!llvm.ptr<i8>, i32) -> i32
    return %c0_i32 : i32
  }
  func.func private @setup() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @microtime() -> i64 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c1000_i64 = arith.constant 1000 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.timespec", (i64, i64)> : (i64) -> !llvm.ptr<struct<"struct.timespec", (i64, i64)>>
    %1 = llvm.call @clock_gettime(%c0_i32, %0) : (i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
    %2 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    %4 = arith.muli %3, %c1000_i64 : i64
    %5 = arith.muli %4, %c1000_i64 : i64
    %6 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> !llvm.ptr<i64>
    %7 = llvm.load %6 : !llvm.ptr<i64>
    %8 = arith.divsi %7, %c1000_i64 : i64
    %9 = arith.addi %5, %8 : i64
    return %9 : i64
  }
  func.func @visit(%arg0: !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = builtin.unrealized_conversion_cast %arg0 : !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> {lower_arg_mat = true}
    %c2048 = arith.constant 2048 : index
    %c2048_i64 = arith.constant 2048 : i64
    %c67108864_i64 = arith.constant 67108864 : i64
    %c9_i64 = arith.constant 9 : i64
    %c8_i64 = arith.constant 8 : i64
    %c32768 = arith.constant 32768 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c9_i32 = arith.constant 9 : i32
    %c32768_i64 = arith.constant 32768 : i64
    %c0 = arith.constant 0 : index
    %c1_i64 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %2 = builtin.unrealized_conversion_cast %1 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>> {lower_src_mat = true}
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %4 = builtin.unrealized_conversion_cast %3 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>> {lower_src_mat = true}
    %5 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %6 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg1 = %c0 to %c8 step %c1 {
      %7 = arith.muli %arg1, %c32768 : index
      %8 = arith.index_cast %arg1 : index to i32
      %9 = arith.index_cast %7 : index to i64
      %10 = llvm.getelementptr %0[%9] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      %11 = llvm.ptrtoint %10 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
      %c-2097152_i64 = arith.constant -2097152 : i64
      %12 = arith.andi %11, %c-2097152_i64 : i64
      %c2097152_i64 = arith.constant 2097152 : i64
      %13 = arith.divui %12, %c2097152_i64 : i64
      %c12_i64 = arith.constant 12 : i64
      %14 = arith.remsi %13, %c12_i64 : i64
      %15 = arith.trunci %14 : i64 to i32
      %c0_i32 = arith.constant 0 : i32
      %c1_i8 = arith.constant 1 : i8
      %16 = llvm.call @cache_request_impl_2(%c0_i32, %12, %15, %c1_i8) : (i32, i64, i32, i8) -> i32
      %17 = arith.extsi %8 : i32 to i64
      %18 = llvm.getelementptr %6[%17] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %15, %18 : !llvm.ptr<i32>
    }
    scf.for %arg1 = %c0 to %c2048 step %c1 {
      %7 = arith.index_cast %arg1 : index to i64
      %8 = arith.addi %7, %c8_i64 : i64
      %9 = arith.cmpi slt, %8, %c2048_i64 : i64
      scf.if %9 {
        %32 = arith.remsi %8, %c9_i64 : i64
        %33 = arith.trunci %32 : i64 to i32
        %34 = arith.index_cast %8 : i64 to index
        %35 = arith.muli %34, %c32768 : index
        %36 = arith.index_cast %35 : index to i64
        %37 = llvm.getelementptr %0[%36] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
        %38 = llvm.ptrtoint %37 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
        %c-2097152_i64 = arith.constant -2097152 : i64
        %39 = arith.andi %38, %c-2097152_i64 : i64
        %c2097152_i64_1 = arith.constant 2097152 : i64
        %40 = arith.divui %39, %c2097152_i64_1 : i64
        %c12_i64 = arith.constant 12 : i64
        %41 = arith.remsi %40, %c12_i64 : i64
        %42 = arith.trunci %41 : i64 to i32
        %c0_i32 = arith.constant 0 : i32
        %c1_i8 = arith.constant 1 : i8
        %43 = llvm.call @cache_request_impl_2(%c0_i32, %39, %42, %c1_i8) : (i32, i64, i32, i8) -> i32
        %44 = arith.extsi %33 : i32 to i64
        %45 = llvm.getelementptr %6[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %42, %45 : !llvm.ptr<i32>
      }
      %10 = arith.muli %arg1, %c32768 : index
      %11 = arith.index_cast %10 : index to i64
      %12 = llvm.getelementptr %0[%11] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      %13 = arith.remsi %7, %c9_i64 : i64
      %14 = llvm.getelementptr %6[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %15 = llvm.load %14 : !llvm.ptr<i32>
      rmem.poll 2, %15, 0 : (i32) -> ()
      %16 = llvm.ptrtoint %12 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
      %c1073741824_i64 = arith.constant 1073741824 : i64
      %17 = arith.extsi %15 : i32 to i64
      %c2097152_i64 = arith.constant 2097152 : i64
      %18 = arith.muli %17, %c2097152_i64 : i64
      %c2097152_i64_0 = arith.constant 2097152 : i64
      %19 = arith.remsi %16, %c2097152_i64_0 : i64
      %20 = arith.addi %18, %19 : i64
      %21 = arith.addi %c1073741824_i64, %20 : i64
      %22 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
      %23 = llvm.load %22 : !llvm.ptr<ptr<i8>>
      %24 = llvm.getelementptr %23[%21] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %25 = llvm.bitcast %24 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      %26 = arith.addi %7, %c1_i64 : i64
      %27 = arith.muli %26, %c32768_i64 : i64
      %28 = arith.cmpi slt, %27, %c67108864_i64 : i64
      %29 = scf.if %28 -> (i64) {
        scf.yield %c32768_i64 : i64
      } else {
        %32 = arith.muli %7, %c32768_i64 : i64
        %33 = arith.subi %c67108864_i64, %32 : i64
        scf.yield %33 : i64
      }
      %30 = arith.muli %7, %c32768_i64 : i64
      %31 = arith.index_cast %29 : i64 to index
      scf.for %arg2 = %c0 to %31 step %c1 {
        %32 = arith.index_cast %30 : i64 to index
        %33 = arith.addi %arg2, %32 : index
        %34 = arith.index_cast %arg2 : index to i64
        %35 = llvm.getelementptr %25[%34] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
        %36 = arith.index_cast %33 : index to i32
        %37 = llvm.load %35 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
        llvm.store %37, %3 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
        %38 = llvm.load %5 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
        %39 = llvm.ptrtoint %38 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
        %c-1024_i64 = arith.constant -1024 : i64
        %40 = arith.andi %39, %c-1024_i64 : i64
        %c1024_i64 = arith.constant 1024 : i64
        %41 = arith.divui %40, %c1024_i64 : i64
        %c1024000_i64 = arith.constant 1024000 : i64
        %42 = arith.remsi %41, %c1024000_i64 : i64
        %43 = arith.trunci %42 : i64 to i32
        %c0_i32 = arith.constant 0 : i32
        %44 = arith.addi %43, %c0_i32 : i32
        %45 = arith.extsi %44 : i32 to i64
        %46 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
        %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
        %48 = llvm.getelementptr %47[%45] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
        %49 = llvm.ptrtoint %38 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
        %c0_i64 = arith.constant 0 : i64
        %50 = arith.extsi %43 : i32 to i64
        %c1024_i64_1 = arith.constant 1024 : i64
        %51 = arith.muli %50, %c1024_i64_1 : i64
        %c1024_i64_2 = arith.constant 1024 : i64
        %52 = arith.remsi %49, %c1024_i64_2 : i64
        %53 = arith.addi %51, %52 : i64
        %54 = arith.addi %c0_i64, %53 : i64
        %55 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
        %56 = llvm.load %55 : !llvm.ptr<ptr<i8>>
        %57 = llvm.getelementptr %56[%54] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
        %58 = llvm.bitcast %57 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
        %59 = llvm.getelementptr %48[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
        %60 = llvm.load %59 : !llvm.ptr<i8>
        %61 = arith.extsi %60 : i8 to i32
        %c1_i32 = arith.constant 1 : i32
        %62 = arith.andi %61, %c1_i32 : i32
        %63 = arith.trunci %62 : i32 to i8
        %64 = arith.extsi %63 : i8 to i32
        %c0_i32_3 = arith.constant 0 : i32
        %65 = arith.cmpi ne, %64, %c0_i32_3 : i32
        %66 = scf.if %65 -> (i1) {
          %69 = llvm.getelementptr %48[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
          %70 = llvm.load %69 : !llvm.ptr<i64>
          %71 = arith.cmpi ne, %70, %40 : i64
          scf.yield %71 : i1
        } else {
          %true = arith.constant true
          scf.yield %true : i1
        }
        %67 = scf.if %66 -> (!llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>) {
          %c0_i32_4 = arith.constant 0 : i32
          %c1_i8 = arith.constant 1 : i8
          %69 = llvm.call @cache_request_impl_1(%c0_i32_4, %40, %43, %c1_i8) : (i32, i64, i32, i8) -> i32
          %c0_i32_5 = arith.constant 0 : i32
          %c0_i32_6 = arith.constant 0 : i32
          %70 = arith.addi %43, %c0_i32_6 : i32
          %71 = arith.extsi %70 : i32 to i64
          %72 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
          %73 = llvm.getelementptr %72[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
          %74 = llvm.getelementptr %73[%71] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
          %c0_i64_7 = arith.constant 0 : i64
          %75 = llvm.getelementptr %74[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
          %76 = llvm.load %75 : !llvm.ptr<i16>
          llvm.call @poll_qid1(%c0_i32_5, %76) : (i32, i16) -> ()
          scf.yield %58 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
        } else {
          scf.yield %58 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
        }
        %68 = llvm.load %67 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
        llvm.store %68, %1 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
        func.call @computation(%4, %2, %36) : (!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>, i32) -> ()
      }
    }
    return
  }
  func.func private @computation(!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>, i32) attributes {llvm.linkage = #llvm.linkage<external>}
}

