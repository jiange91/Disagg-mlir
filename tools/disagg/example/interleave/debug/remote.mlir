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
    %c67108864 = arith.constant 67108864 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
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
    scf.for %arg1 = %c0 to %c67108864 step %c1 {
      %7 = arith.index_cast %arg1 : index to i64
      %8 = rmem.llvm.getelementptr %arg0[%7 []] : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i64) -> !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
      %9 = rmem.llvm.load %8 : (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> !llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>
      rmem.llvm.store %9 -> %0 : !llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>
      %10 = rmem.llvm.load %1 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>>) -> !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>
      %11 = rmem.llvm.ptr2int %10 : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, !rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>) -> i64
      %12 = arith.subi %11, %6 : i64
      %13 = arith.divsi %12, %c128_i64 : i64
      %14 = arith.trunci %13 : i64 to i32
      %15 = arith.andi %14, %c23_i32 : i32
      %16 = arith.index_cast %15 : i32 to index
      %17 = arith.index_cast %16 : index to i64
      %18 = rmem.llvm.getelementptr %4[%17 []] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      rmem.llvm.store %14 -> %18 : i32, !llvm.ptr<i32>
    }
    return
  }
}

