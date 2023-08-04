module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @poll_qid2(i32, i16)
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @node() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @arc() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("after setup\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %1 = llvm.mlir.constant(0 : i32) : i32
    llvm.call @setup() : () -> ()
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr<array<13 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    %4 = llvm.call @printf(%3) : (!llvm.ptr<i8>) -> i32
    %5 = llvm.call @microtime() : () -> i64
    %6 = llvm.mlir.addressof @arc : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    llvm.call @visit(%7) : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> ()
    %8 = llvm.call @microtime() : () -> i64
    %9 = llvm.mlir.addressof @str1 : !llvm.ptr<array<18 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %11 = llvm.sub %8, %5  : i64
    %12 = llvm.sitofp %11 : i64 to f64
    %13 = llvm.fdiv %12, %0  : f64
    %14 = llvm.call @printf(%10, %13) : (!llvm.ptr<i8>, f64) -> i32
    %15 = llvm.mlir.addressof @str2 : !llvm.ptr<array<18 x i8>>
    %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %19 = llvm.getelementptr %18[5] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %20 = llvm.load %19 : !llvm.ptr<i32>
    %21 = llvm.call @printf(%16, %20) : (!llvm.ptr<i8>, i32) -> i32
    llvm.return %1 : i32
  }
  llvm.func @setup() attributes {sym_visibility = "private"}
  llvm.func internal @microtime() -> i64 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1000 : i64) : i64
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"struct.timespec", (i64, i64)> : (i64) -> !llvm.ptr<struct<"struct.timespec", (i64, i64)>>
    %4 = llvm.call @clock_gettime(%1, %3) : (i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
    %5 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> !llvm.ptr<i64>
    %6 = llvm.load %5 : !llvm.ptr<i64>
    %7 = llvm.mul %6, %0  : i64
    %8 = llvm.mul %7, %0  : i64
    %9 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> !llvm.ptr<i64>
    %10 = llvm.load %9 : !llvm.ptr<i64>
    %11 = llvm.sdiv %10, %0  : i64
    %12 = llvm.add %8, %11  : i64
    llvm.return %12 : i64
  }
  llvm.func @visit(%arg0: !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) {
    %0 = llvm.mlir.constant(1073741824 : i64) : i64
    %1 = llvm.mlir.constant(2 : i8) : i8
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(65536 : i32) : i32
    %4 = llvm.mlir.constant(1 : i8) : i8
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(2097152 : i64) : i64
    %7 = llvm.mlir.constant(-2097152 : i64) : i64
    %8 = llvm.mlir.constant(2048 : index) : i64
    %9 = llvm.mlir.constant(0 : index) : i64
    %10 = llvm.mlir.constant(2048 : i64) : i64
    %11 = llvm.mlir.constant(67108864 : i64) : i64
    %12 = llvm.mlir.constant(2 : i64) : i64
    %13 = llvm.mlir.constant(32768 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(2 : i32) : i32
    %16 = llvm.mlir.constant(32768 : i64) : i64
    %17 = llvm.mlir.constant(128 : i64) : i64
    %18 = llvm.mlir.constant(23 : i32) : i32
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.alloca %19 x !llvm.struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %21 = llvm.getelementptr %20[0, 1] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %22 = llvm.mlir.addressof @node : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %23 = llvm.mlir.addressof @g_payload : !llvm.ptr<array<23 x i32>>
    %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr<array<23 x i32>>) -> !llvm.ptr<i32>
    %25 = llvm.load %22 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %26 = llvm.ptrtoint %25 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
    %27 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    %28 = llvm.ptrtoint %arg0 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %29 = llvm.and %28, %7  : i64
    %30 = llvm.udiv %29, %6  : i64
    %31 = llvm.srem %30, %10  : i64
    %32 = llvm.trunc %31 : i64 to i32
    %33 = llvm.call @cache_request_impl_2(%5, %29, %32, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %32, %27 : !llvm.ptr<i32>
    llvm.br ^bb1(%9 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb11
    %35 = llvm.icmp "slt" %34, %8 : i64
    llvm.cond_br %35, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %36 = llvm.add %34, %19  : i64
    %37 = llvm.icmp "slt" %36, %10 : i64
    llvm.cond_br %37, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %38 = llvm.srem %36, %12  : i64
    %39 = llvm.trunc %38 : i64 to i32
    %40 = llvm.mul %36, %13  : i64
    %41 = llvm.getelementptr %arg0[%40] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %43 = llvm.and %42, %7  : i64
    %44 = llvm.udiv %43, %6  : i64
    %45 = llvm.srem %44, %10  : i64
    %46 = llvm.trunc %45 : i64 to i32
    %47 = llvm.call @cache_request_impl_2(%5, %43, %46, %4) : (i32, i64, i32, i8) -> i32
    %48 = llvm.sext %39 : i32 to i64
    %49 = llvm.getelementptr %27[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %46, %49 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %50 = llvm.mul %34, %13  : i64
    %51 = llvm.getelementptr %arg0[%50] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %52 = llvm.srem %34, %12  : i64
    %53 = llvm.getelementptr %27[%52] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %54 = llvm.load %53 : !llvm.ptr<i32>
    %55 = llvm.add %54, %3  : i32
    %56 = llvm.sext %55 : i32 to i64
    %57 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %59 = llvm.getelementptr %58[%56] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %60 = llvm.getelementptr %59[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %61 = llvm.load %60 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%2, %61) : (i32, i16) -> ()
    %62 = llvm.getelementptr %59[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %63 = llvm.load %62 : !llvm.ptr<i8>
    %64 = llvm.or %63, %1  : i8
    llvm.store %64, %62 : !llvm.ptr<i8>
    %65 = llvm.ptrtoint %51 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %66 = llvm.sext %54 : i32 to i64
    %67 = llvm.mul %66, %6  : i64
    %68 = llvm.srem %65, %6  : i64
    %69 = llvm.add %67, %68  : i64
    %70 = llvm.add %69, %0  : i64
    %71 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %72 = llvm.load %71 : !llvm.ptr<ptr<i8>>
    %73 = llvm.getelementptr %72[%70] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %75 = llvm.mul %36, %16  : i64
    %76 = llvm.icmp "slt" %75, %11 : i64
    llvm.cond_br %76, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%16 : i64)
  ^bb6:  // pred: ^bb4
    %77 = llvm.mul %34, %16  : i64
    %78 = llvm.sub %11, %77  : i64
    llvm.br ^bb7(%78 : i64)
  ^bb7(%79: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    llvm.br ^bb9(%9 : i64)
  ^bb9(%80: i64):  // 2 preds: ^bb8, ^bb10
    %81 = llvm.icmp "slt" %80, %79 : i64
    llvm.cond_br %81, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %82 = llvm.getelementptr %74[%80] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %83 = llvm.load %82 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    llvm.store %83, %20 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %84 = llvm.load %21 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %85 = llvm.ptrtoint %84 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
    %86 = llvm.sub %85, %26  : i64
    %87 = llvm.sdiv %86, %17  : i64
    %88 = llvm.trunc %87 : i64 to i32
    %89 = llvm.and %88, %18  : i32
    %90 = llvm.sext %89 : i32 to i64
    %91 = llvm.getelementptr %24[%90] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %88, %91 : !llvm.ptr<i32>
    %92 = llvm.add %80, %14  : i64
    llvm.br ^bb9(%92 : i64)
  ^bb11:  // pred: ^bb9
    %93 = llvm.add %34, %14  : i64
    llvm.br ^bb1(%93 : i64)
  ^bb12:  // pred: ^bb1
    llvm.return
  }
}

