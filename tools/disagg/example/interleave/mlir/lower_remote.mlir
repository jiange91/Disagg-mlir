module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @poll_qid2(i32, i16)
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
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
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.mlir.constant(4096000 : i64) : i64
    %3 = llvm.mlir.constant(128 : i64) : i64
    %4 = llvm.mlir.constant(-128 : i64) : i64
    %5 = llvm.mlir.constant(1073741824 : i64) : i64
    %6 = llvm.mlir.constant(1 : i32) : i32
    %7 = llvm.mlir.constant(4096000 : i32) : i32
    %8 = llvm.mlir.constant(1 : i8) : i8
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.mlir.constant(1048576 : i64) : i64
    %11 = llvm.mlir.constant(-1048576 : i64) : i64
    %12 = llvm.mlir.constant(4096 : index) : i64
    %13 = llvm.mlir.constant(4096 : i64) : i64
    %14 = llvm.mlir.constant(67108864 : i64) : i64
    %15 = llvm.mlir.constant(12 : i64) : i64
    %16 = llvm.mlir.constant(11 : i64) : i64
    %17 = llvm.mlir.constant(16384 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(11 : index) : i64
    %20 = llvm.mlir.constant(12 : i32) : i32
    %21 = llvm.mlir.constant(16384 : i64) : i64
    %22 = llvm.mlir.constant(0 : index) : i64
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.alloca %23 x !llvm.struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %25 = llvm.alloca %23 x !llvm.struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %26 = llvm.getelementptr %25[0, 1] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %27 = llvm.alloca %20 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%22 : i64)
  ^bb1(%28: i64):  // 2 preds: ^bb0, ^bb2
    %29 = llvm.icmp "slt" %28, %19 : i64
    llvm.cond_br %29, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %30 = llvm.mul %28, %17  : i64
    %31 = llvm.trunc %28 : i64 to i32
    %32 = llvm.getelementptr %arg0[%30] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %33 = llvm.ptrtoint %32 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %34 = llvm.and %33, %11  : i64
    %35 = llvm.udiv %34, %10  : i64
    %36 = llvm.srem %35, %15  : i64
    %37 = llvm.trunc %36 : i64 to i32
    %38 = llvm.call @cache_request_impl_2(%9, %34, %37, %8) : (i32, i64, i32, i8) -> i32
    %39 = llvm.sext %31 : i32 to i64
    %40 = llvm.getelementptr %27[%39] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %37, %40 : !llvm.ptr<i32>
    %41 = llvm.add %28, %18  : i64
    llvm.br ^bb1(%41 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%22 : i64)
  ^bb4(%42: i64):  // 2 preds: ^bb3, ^bb22
    %43 = llvm.icmp "slt" %42, %12 : i64
    llvm.cond_br %43, ^bb5, ^bb23
  ^bb5:  // pred: ^bb4
    %44 = llvm.add %42, %16  : i64
    %45 = llvm.icmp "slt" %44, %13 : i64
    llvm.cond_br %45, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %46 = llvm.srem %44, %15  : i64
    %47 = llvm.trunc %46 : i64 to i32
    %48 = llvm.mul %44, %17  : i64
    %49 = llvm.getelementptr %arg0[%48] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %50 = llvm.ptrtoint %49 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %51 = llvm.and %50, %11  : i64
    %52 = llvm.udiv %51, %10  : i64
    %53 = llvm.srem %52, %15  : i64
    %54 = llvm.trunc %53 : i64 to i32
    %55 = llvm.call @cache_request_impl_2(%9, %51, %54, %8) : (i32, i64, i32, i8) -> i32
    %56 = llvm.sext %47 : i32 to i64
    %57 = llvm.getelementptr %27[%56] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %54, %57 : !llvm.ptr<i32>
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    %58 = llvm.mul %42, %17  : i64
    %59 = llvm.getelementptr %arg0[%58] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %60 = llvm.srem %42, %15  : i64
    %61 = llvm.getelementptr %27[%60] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %62 = llvm.load %61 : !llvm.ptr<i32>
    %63 = llvm.add %62, %7  : i32
    %64 = llvm.sext %63 : i32 to i64
    %65 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %67 = llvm.getelementptr %66[%64] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %68 = llvm.getelementptr %67[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %69 = llvm.load %68 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%6, %69) : (i32, i16) -> ()
    %70 = llvm.ptrtoint %59 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %71 = llvm.sext %62 : i32 to i64
    %72 = llvm.mul %71, %10  : i64
    %73 = llvm.srem %70, %10  : i64
    %74 = llvm.add %72, %73  : i64
    %75 = llvm.add %74, %5  : i64
    %76 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %77 = llvm.load %76 : !llvm.ptr<ptr<i8>>
    %78 = llvm.getelementptr %77[%75] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %79 = llvm.bitcast %78 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %80 = llvm.add %42, %23  : i64
    %81 = llvm.mul %80, %21  : i64
    %82 = llvm.icmp "slt" %81, %14 : i64
    llvm.cond_br %82, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    llvm.br ^bb10(%21 : i64)
  ^bb9:  // pred: ^bb7
    %83 = llvm.mul %42, %21  : i64
    %84 = llvm.sub %14, %83  : i64
    llvm.br ^bb10(%84 : i64)
  ^bb10(%85: i64):  // 2 preds: ^bb8, ^bb9
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %86 = llvm.mul %42, %21  : i64
    llvm.br ^bb12(%22 : i64)
  ^bb12(%87: i64):  // 2 preds: ^bb11, ^bb21
    %88 = llvm.icmp "slt" %87, %85 : i64
    llvm.cond_br %88, ^bb13, ^bb22
  ^bb13:  // pred: ^bb12
    %89 = llvm.add %87, %86  : i64
    %90 = llvm.getelementptr %79[%87] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %91 = llvm.trunc %89 : i64 to i32
    %92 = llvm.load %90 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    llvm.store %92, %25 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %93 = llvm.load %26 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
    %95 = llvm.and %94, %4  : i64
    %96 = llvm.udiv %95, %3  : i64
    %97 = llvm.srem %96, %2  : i64
    %98 = llvm.trunc %97 : i64 to i32
    %99 = llvm.sext %98 : i32 to i64
    %100 = llvm.getelementptr %66[%99] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %101 = llvm.mul %99, %3  : i64
    %102 = llvm.srem %94, %3  : i64
    %103 = llvm.add %101, %102  : i64
    %104 = llvm.add %103, %1  : i64
    %105 = llvm.load %76 : !llvm.ptr<ptr<i8>>
    %106 = llvm.getelementptr %105[%104] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %107 = llvm.bitcast %106 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %108 = llvm.getelementptr %100[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %109 = llvm.load %108 : !llvm.ptr<i8>
    %110 = llvm.sext %109 : i8 to i32
    %111 = llvm.and %110, %6  : i32
    %112 = llvm.trunc %111 : i32 to i8
    %113 = llvm.sext %112 : i8 to i32
    %114 = llvm.icmp "ne" %113, %9 : i32
    llvm.cond_br %114, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %115 = llvm.getelementptr %100[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
    %116 = llvm.load %115 : !llvm.ptr<i64>
    %117 = llvm.icmp "ne" %116, %95 : i64
    llvm.br ^bb16(%117 : i1)
  ^bb15:  // pred: ^bb13
    llvm.br ^bb16(%0 : i1)
  ^bb16(%118: i1):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    llvm.cond_br %118, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %119 = llvm.call @cache_request_impl_1(%9, %95, %98, %8) : (i32, i64, i32, i8) -> i32
    %120 = llvm.getelementptr %100[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %121 = llvm.load %120 : !llvm.ptr<i16>
    llvm.call @poll_qid1(%9, %121) : (i32, i16) -> ()
    llvm.br ^bb20(%107 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>)
  ^bb19:  // pred: ^bb17
    llvm.br ^bb20(%107 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>)
  ^bb20(%122: !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>):  // 2 preds: ^bb18, ^bb19
    llvm.br ^bb21
  ^bb21:  // pred: ^bb20
    %123 = llvm.load %122 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.store %123, %24 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.call @computation(%25, %24, %91) : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) -> ()
    %124 = llvm.add %87, %18  : i64
    llvm.br ^bb12(%124 : i64)
  ^bb22:  // pred: ^bb12
    %125 = llvm.add %42, %18  : i64
    llvm.br ^bb4(%125 : i64)
  ^bb23:  // pred: ^bb4
    llvm.return
  }
  llvm.func @computation(!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) attributes {sym_visibility = "private"}
}

