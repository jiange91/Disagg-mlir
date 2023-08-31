module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid2(i32, i16)
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
    %2 = llvm.mlir.constant(8388608 : i64) : i64
    %3 = llvm.mlir.constant(128 : i64) : i64
    %4 = llvm.mlir.constant(-128 : i64) : i64
    %5 = llvm.mlir.constant(1 : i32) : i32
    %6 = llvm.mlir.constant(8388608 : i32) : i32
    %7 = llvm.mlir.constant(1073741824 : i64) : i64
    %8 = llvm.mlir.constant(1 : i8) : i8
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.mlir.constant(24 : i64) : i64
    %11 = llvm.mlir.constant(2097152 : i64) : i64
    %12 = llvm.mlir.constant(-2097152 : i64) : i64
    %13 = llvm.mlir.constant(2048 : index) : i64
    %14 = llvm.mlir.constant(2048 : i64) : i64
    %15 = llvm.mlir.constant(67108864 : i64) : i64
    %16 = llvm.mlir.constant(12 : i64) : i64
    %17 = llvm.mlir.constant(11 : i64) : i64
    %18 = llvm.mlir.constant(32768 : index) : i64
    %19 = llvm.mlir.constant(1 : index) : i64
    %20 = llvm.mlir.constant(11 : index) : i64
    %21 = llvm.mlir.constant(12 : i32) : i32
    %22 = llvm.mlir.constant(32768 : i64) : i64
    %23 = llvm.mlir.constant(0 : index) : i64
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.alloca %24 x !llvm.struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %26 = llvm.alloca %24 x !llvm.struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %27 = llvm.getelementptr %26[0, 1] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %28 = llvm.alloca %21 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%23 : i64)
  ^bb1(%29: i64):  // 2 preds: ^bb0, ^bb2
    %30 = llvm.icmp "slt" %29, %20 : i64
    llvm.cond_br %30, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %31 = llvm.mul %29, %18  : i64
    %32 = llvm.trunc %29 : i64 to i32
    %33 = llvm.getelementptr %arg0[%31] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %34 = llvm.ptrtoint %33 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %35 = llvm.and %34, %12  : i64
    %36 = llvm.udiv %35, %11  : i64
    %37 = llvm.srem %36, %10  : i64
    %38 = llvm.trunc %37 : i64 to i32
    %39 = llvm.call @cache_request_impl_2(%9, %35, %38, %8) : (i32, i64, i32, i8) -> i32
    %40 = llvm.sext %32 : i32 to i64
    %41 = llvm.getelementptr %28[%40] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %38, %41 : !llvm.ptr<i32>
    %42 = llvm.add %29, %19  : i64
    llvm.br ^bb1(%42 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%23 : i64)
  ^bb4(%43: i64):  // 2 preds: ^bb3, ^bb22
    %44 = llvm.icmp "slt" %43, %13 : i64
    llvm.cond_br %44, ^bb5, ^bb23
  ^bb5:  // pred: ^bb4
    %45 = llvm.add %43, %17  : i64
    %46 = llvm.icmp "slt" %45, %14 : i64
    llvm.cond_br %46, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %47 = llvm.srem %45, %16  : i64
    %48 = llvm.trunc %47 : i64 to i32
    %49 = llvm.mul %45, %18  : i64
    %50 = llvm.getelementptr %arg0[%49] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %52 = llvm.and %51, %12  : i64
    %53 = llvm.udiv %52, %11  : i64
    %54 = llvm.srem %53, %10  : i64
    %55 = llvm.trunc %54 : i64 to i32
    %56 = llvm.call @cache_request_impl_2(%9, %52, %55, %8) : (i32, i64, i32, i8) -> i32
    %57 = llvm.sext %48 : i32 to i64
    %58 = llvm.getelementptr %28[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %55, %58 : !llvm.ptr<i32>
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    %59 = llvm.mul %43, %18  : i64
    %60 = llvm.getelementptr %arg0[%59] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %61 = llvm.srem %43, %16  : i64
    %62 = llvm.getelementptr %28[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %63 = llvm.load %62 : !llvm.ptr<i32>
    %64 = llvm.ptrtoint %60 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %65 = llvm.sext %63 : i32 to i64
    %66 = llvm.mul %65, %11  : i64
    %67 = llvm.srem %64, %11  : i64
    %68 = llvm.add %66, %67  : i64
    %69 = llvm.add %68, %7  : i64
    %70 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %71 = llvm.load %70 : !llvm.ptr<ptr<i8>>
    %72 = llvm.getelementptr %71[%69] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %73 = llvm.bitcast %72 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %74 = llvm.add %63, %6  : i32
    %75 = llvm.sext %74 : i32 to i64
    %76 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %77 = llvm.getelementptr %76[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %78 = llvm.getelementptr %77[%75] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %79 = llvm.getelementptr %78[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %80 = llvm.load %79 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%5, %80) : (i32, i16) -> ()
    %81 = llvm.add %43, %24  : i64
    %82 = llvm.mul %81, %22  : i64
    %83 = llvm.icmp "slt" %82, %15 : i64
    llvm.cond_br %83, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    llvm.br ^bb10(%22 : i64)
  ^bb9:  // pred: ^bb7
    %84 = llvm.mul %43, %22  : i64
    %85 = llvm.sub %15, %84  : i64
    llvm.br ^bb10(%85 : i64)
  ^bb10(%86: i64):  // 2 preds: ^bb8, ^bb9
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %87 = llvm.mul %43, %22  : i64
    llvm.br ^bb12(%23 : i64)
  ^bb12(%88: i64):  // 2 preds: ^bb11, ^bb21
    %89 = llvm.icmp "slt" %88, %86 : i64
    llvm.cond_br %89, ^bb13, ^bb22
  ^bb13:  // pred: ^bb12
    %90 = llvm.add %88, %87  : i64
    %91 = llvm.getelementptr %73[%88] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %92 = llvm.trunc %90 : i64 to i32
    %93 = llvm.load %91 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    llvm.store %93, %26 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %94 = llvm.load %27 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
    %96 = llvm.and %95, %4  : i64
    %97 = llvm.udiv %96, %3  : i64
    %98 = llvm.srem %97, %2  : i64
    %99 = llvm.trunc %98 : i64 to i32
    %100 = llvm.sext %99 : i32 to i64
    %101 = llvm.getelementptr %77[%100] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %102 = llvm.mul %100, %3  : i64
    %103 = llvm.srem %95, %3  : i64
    %104 = llvm.add %102, %103  : i64
    %105 = llvm.add %104, %1  : i64
    %106 = llvm.load %70 : !llvm.ptr<ptr<i8>>
    %107 = llvm.getelementptr %106[%105] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %108 = llvm.bitcast %107 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %109 = llvm.getelementptr %101[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %110 = llvm.load %109 : !llvm.ptr<i8>
    %111 = llvm.sext %110 : i8 to i32
    %112 = llvm.and %111, %5  : i32
    %113 = llvm.trunc %112 : i32 to i8
    %114 = llvm.sext %113 : i8 to i32
    %115 = llvm.icmp "ne" %114, %9 : i32
    llvm.cond_br %115, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %116 = llvm.getelementptr %101[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
    %117 = llvm.load %116 : !llvm.ptr<i64>
    %118 = llvm.icmp "ne" %117, %96 : i64
    llvm.br ^bb16(%118 : i1)
  ^bb15:  // pred: ^bb13
    llvm.br ^bb16(%0 : i1)
  ^bb16(%119: i1):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    llvm.cond_br %119, ^bb18, ^bb19
  ^bb18:  // pred: ^bb17
    %120 = llvm.call @cache_request_impl_1(%9, %96, %99, %8) : (i32, i64, i32, i8) -> i32
    %121 = llvm.getelementptr %101[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %122 = llvm.load %121 : !llvm.ptr<i16>
    llvm.call @poll_qid1(%9, %122) : (i32, i16) -> ()
    llvm.br ^bb20(%108 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>)
  ^bb19:  // pred: ^bb17
    llvm.br ^bb20(%108 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>)
  ^bb20(%123: !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>):  // 2 preds: ^bb18, ^bb19
    llvm.br ^bb21
  ^bb21:  // pred: ^bb20
    %124 = llvm.load %123 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.store %124, %25 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.call @computation(%26, %25, %92) : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) -> ()
    %125 = llvm.add %88, %19  : i64
    llvm.br ^bb12(%125 : i64)
  ^bb22:  // pred: ^bb12
    %126 = llvm.add %43, %19  : i64
    llvm.br ^bb4(%126 : i64)
  ^bb23:  // pred: ^bb4
    llvm.return
  }
  llvm.func @computation(!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) attributes {sym_visibility = "private"}
}

