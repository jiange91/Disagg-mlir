module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  rmem.llvm.global {global_type = !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, linkage = 10 : i64, sym_name = "arc", unnamed_addr = 0 : i64} : {
  }
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
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
    call @visit() : () -> ()
    %4 = call @microtime() : () -> i64
    %5 = llvm.mlir.addressof @str1 : !llvm.ptr<array<18 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %7 = arith.subi %4, %3 : i64
    %8 = arith.sitofp %7 : i64 to f64
    %9 = arith.divf %8, %cst : f64
    %10 = llvm.call @printf(%6, %9) : (!llvm.ptr<i8>, f64) -> i32
    %11 = llvm.mlir.addressof @str2 : !llvm.ptr<array<18 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %13 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %15 = llvm.getelementptr %14[5] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %16 = llvm.load %15 : !llvm.ptr<i32>
    %17 = llvm.call @printf(%12, %16) : (!llvm.ptr<i8>, i32) -> i32
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
  func.func @visit() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c67108864 = arith.constant 67108864 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = rmem.llvm.addressof @arc : <!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>>
    scf.for %arg0 = %c0 to %c67108864 step %c1 {
      %1 = arith.index_cast %arg0 : index to i32
      %2 = rmem.llvm.load %0 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>>) -> !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
      %3 = rmem.llvm.getelementptr %2[%1 []] : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32) -> !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>
      %mat0 = rmem.materialize %3 : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
      // %4 = rmem.llvm.getelementptr %3[ [0, 0]] : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> !rmem.rmref<1, !llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>>>
      %4 = rmem.llvm.getelementptr %mat0[ [0, 0]] : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
      %5 = rmem.llvm.load %4 : (!llvm.ptr<ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>) -> !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      %6 = rmem.materialize %3 : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>
      // %7 = rmem.materialize %5 : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>>) -> !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      func.call @computation(%6, %5, %1) : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) -> ()
    }
    return
  }
  func.func private @computation(!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (ptr<struct<"struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"struct.node", (ptr<struct<"struct.arc", (ptr<struct<"struct.node">>, ptr<struct<"struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) attributes {llvm.linkage = #llvm.linkage<external>}
}

