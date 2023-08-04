module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  rmem.llvm.global {global_type = !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>, linkage = 10 : i64, sym_name = "node", unnamed_addr = 0 : i64} : {
  }
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  rmem.llvm.global {global_type = !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, linkage = 10 : i64, sym_name = "arc", unnamed_addr = 0 : i64} : {
  }
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
    %4 = rmem.llvm.addressof @arc : <!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>>
    %5 = rmem.llvm.load %4 : (!llvm.ptr<!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>>) -> !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
    call @visit(%5) : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> ()
    %6 = call @microtime() : () -> i64
    %7 = llvm.mlir.addressof @str1 : !llvm.ptr<array<18 x i8>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %9 = arith.subi %6, %3 : i64
    %10 = arith.sitofp %9 : i64 to f64
    %11 = arith.divf %10, %cst : f64
    %12 = llvm.call @printf(%8, %11) : (!llvm.ptr<i8>, f64) -> i32
    %13 = llvm.mlir.addressof @str2 : !llvm.ptr<array<18 x i8>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %15 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %17 = llvm.getelementptr %16[5] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %18 = llvm.load %17 : !llvm.ptr<i32>
    %19 = llvm.call @printf(%14, %18) : (!llvm.ptr<i8>, i32) -> i32
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
    %c2048 = arith.constant 2048 : index
    %c0_i64 = arith.constant 0 : i64
    %c0 = arith.constant 0 : index
    %c2048_i64 = arith.constant 2048 : i64
    %c67108864_i64 = arith.constant 67108864 : i64
    %c2_i64 = arith.constant 2 : i64
    %c32768 = arith.constant 32768 : index
    %c1 = arith.constant 1 : index
    %c2_i32 = arith.constant 2 : i32
    %c32768_i64 = arith.constant 32768 : i64
    %c128_i64 = arith.constant 128 : i64
    %c23_i32 = arith.constant 23 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = rmem.alloca_ptr %c1_i64 x !llvm.struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.node">>, ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.node", (ptr<struct<"struct.node">>, ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, ptr<struct<"struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 1]] : (!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>) -> !llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>>
    %2 = rmem.llvm.addressof @node : <!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>>
    %3 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %5 = rmem.llvm.load %2 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>>) -> !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>
    %6 = rmem.llvm.ptr2int %5 : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>) -> i64
    %7 = llvm.alloca %c2_i32 x i32 : (i32) -> !llvm.ptr<i32>
    %8 = rmem.llvm.getelementptr %arg0[%c0_i64 []] : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i64) -> !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
    %9 = rmem.request 2, %8 : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> i32
    llvm.store %9, %7 : !llvm.ptr<i32>
    scf.for %arg1 = %c0 to %c2048 step %c1 {
      %10 = arith.index_cast %arg1 : index to i64
      %11 = arith.addi %10, %c1_i64 : i64
      %12 = arith.cmpi slt, %11, %c2048_i64 : i64
      scf.if %12 {
        %24 = arith.remsi %11, %c2_i64 : i64
        %25 = arith.trunci %24 : i64 to i32
        %26 = arith.index_cast %11 : i64 to index
        %27 = arith.muli %26, %c32768 : index
        %28 = arith.index_cast %27 : index to i64
        %29 = rmem.llvm.getelementptr %arg0[%28 []] : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i64) -> !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
        %30 = rmem.request 2, %29 : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> i32
        %31 = arith.extsi %25 : i32 to i64
        %32 = llvm.getelementptr %7[%31] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %30, %32 : !llvm.ptr<i32>
      }
      %13 = arith.muli %arg1, %c32768 : index
      %14 = arith.index_cast %13 : index to i64
      %15 = rmem.llvm.getelementptr %arg0[%14 []] : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i64) -> !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
      %16 = arith.remsi %10, %c2_i64 : i64
      %17 = llvm.getelementptr %7[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %18 = llvm.load %17 : !llvm.ptr<i32>
      rmem.poll 2, %18, 0 : (i32) -> ()
      %19 = rmem.paddr 2, %18, %15 : (i32, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>
      %20 = arith.muli %11, %c32768_i64 : i64
      %21 = arith.cmpi slt, %20, %c67108864_i64 : i64
      %22 = scf.if %21 -> (i64) {
        scf.yield %c32768_i64 : i64
      } else {
        %24 = arith.muli %10, %c32768_i64 : i64
        %25 = arith.subi %c67108864_i64, %24 : i64
        scf.yield %25 : i64
      }
      %23 = arith.index_cast %22 : i64 to index
      scf.for %arg2 = %c0 to %23 step %c1 {
        %24 = arith.index_cast %arg2 : index to i64
        %25 = rmem.llvm.getelementptr %19[%24 []] : (!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>, i64) -> !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>, !llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>
        %26 = rmem.from_addr %25 : (!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>) -> !rmem.rmref<0, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
        %27 = rmem.llvm.load %26 : (!rmem.rmref<0, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> !llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>
        rmem.llvm.store %27 -> %0 : !llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>
        %28 = rmem.llvm.load %1 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>>) -> !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>
        %29 = rmem.llvm.ptr2int %28 : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>) -> i64
        %30 = arith.subi %29, %6 : i64
        %31 = arith.divsi %30, %c128_i64 : i64
        %32 = arith.trunci %31 : i64 to i32
        %33 = arith.andi %32, %c23_i32 : i32
        %34 = arith.index_cast %33 : i32 to index
        %35 = arith.index_cast %34 : index to i64
        %36 = rmem.llvm.getelementptr %4[%35 []] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        rmem.llvm.store %32 -> %36 : i32, !llvm.ptr<i32>
      }
    }
    return
  }
}

