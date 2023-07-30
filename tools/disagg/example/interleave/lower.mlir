module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid2(i32, i16)
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @arc() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
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
    %6 = llvm.mlir.addressof @arc : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    llvm.call @visit(%7) : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> ()
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
  llvm.func @visit(%arg0: !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(2097152 : i64) : i64
    %2 = llvm.mlir.constant(512 : i64) : i64
    %3 = llvm.mlir.constant(-512 : i64) : i64
    %4 = llvm.mlir.constant(1 : i32) : i32
    %5 = llvm.mlir.constant(2 : i32) : i32
    %6 = llvm.mlir.constant(0 : i64) : i64
    %7 = llvm.mlir.constant(0 : i8) : i8
    %8 = llvm.mlir.constant(1 : i8) : i8
    %9 = llvm.mlir.constant(1073741824 : i64) : i64
    %10 = llvm.mlir.constant(2097152 : i32) : i32
    %11 = llvm.mlir.constant(4096 : i64) : i64
    %12 = llvm.mlir.constant(6144 : i64) : i64
    %13 = llvm.mlir.constant(-6144 : i64) : i64
    %14 = llvm.mlir.constant(67108864 : index) : i64
    %15 = llvm.mlir.constant(0 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(1 : i64) : i64
    %18 = llvm.alloca %17 x !llvm.struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %19 = llvm.alloca %17 x !llvm.struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    llvm.br ^bb1(%15 : i64)
  ^bb1(%21: i64):  // 2 preds: ^bb0, ^bb10
    %22 = llvm.icmp "slt" %21, %14 : i64
    llvm.cond_br %22, ^bb2, ^bb11
  ^bb2:  // pred: ^bb1
    %23 = llvm.trunc %21 : i64 to i32
    %24 = llvm.getelementptr %arg0[%21] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
    %26 = llvm.and %25, %13  : i64
    %27 = llvm.udiv %26, %12  : i64
    %28 = llvm.srem %27, %11  : i64
    %29 = llvm.trunc %28 : i64 to i32
    %30 = llvm.add %29, %10  : i32
    %31 = llvm.sext %30 : i32 to i64
    %32 = llvm.mlir.addressof @tokens : !llvm.ptr<ptr<struct<(i64, i8, i8, i16, i32)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(i64, i8, i8, i16, i32)>>>
    %34 = llvm.getelementptr %33[%31] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %35 = llvm.sext %29 : i32 to i64
    %36 = llvm.mul %35, %12  : i64
    %37 = llvm.srem %25, %12  : i64
    %38 = llvm.add %36, %37  : i64
    %39 = llvm.add %38, %9  : i64
    %40 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %41 = llvm.load %40 : !llvm.ptr<ptr<i8>>
    %42 = llvm.getelementptr %41[%39] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %43 = llvm.bitcast %42 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %44 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %45 = llvm.load %44 : !llvm.ptr<i8>
    %46 = llvm.and %45, %8  : i8
    %47 = llvm.icmp "ne" %46, %7 : i8
    %48 = llvm.zext %47 : i1 to i8
    %49 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
    %50 = llvm.load %49 : !llvm.ptr<i64>
    %51 = llvm.icmp "eq" %50, %6 : i64
    %52 = llvm.zext %51 : i1 to i8
    %53 = llvm.and %48, %52  : i8
    %54 = llvm.icmp "ne" %53, %8 : i8
    llvm.cond_br %54, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %55 = llvm.call @cache_request_impl_1(%5, %26, %29, %8) : (i32, i64, i32, i8) -> i32
    %56 = llvm.load %32 : !llvm.ptr<ptr<struct<(i64, i8, i8, i16, i32)>>>
    %57 = llvm.getelementptr %56[%31] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %59 = llvm.load %58 : !llvm.ptr<i16>
    llvm.call @poll_qid1(%4, %59) : (i32, i16) -> ()
    llvm.br ^bb5(%43 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>)
  ^bb4:  // pred: ^bb2
    llvm.br ^bb5(%43 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>)
  ^bb5(%60: !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    %61 = llvm.load %60 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    llvm.store %61, %19 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %62 = llvm.load %20 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
    %64 = llvm.and %63, %3  : i64
    %65 = llvm.udiv %64, %2  : i64
    %66 = llvm.srem %65, %1  : i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.sext %67 : i32 to i64
    %69 = llvm.load %32 : !llvm.ptr<ptr<struct<(i64, i8, i8, i16, i32)>>>
    %70 = llvm.getelementptr %69[%68] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %71 = llvm.mul %68, %2  : i64
    %72 = llvm.srem %63, %2  : i64
    %73 = llvm.add %71, %72  : i64
    %74 = llvm.add %73, %6  : i64
    %75 = llvm.load %40 : !llvm.ptr<ptr<i8>>
    %76 = llvm.getelementptr %75[%74] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %77 = llvm.bitcast %76 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %78 = llvm.getelementptr %70[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %79 = llvm.load %78 : !llvm.ptr<i8>
    %80 = llvm.and %79, %8  : i8
    %81 = llvm.icmp "ne" %80, %7 : i8
    %82 = llvm.zext %81 : i1 to i8
    %83 = llvm.getelementptr %70[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
    %84 = llvm.load %83 : !llvm.ptr<i64>
    %85 = llvm.icmp "eq" %84, %6 : i64
    %86 = llvm.zext %85 : i1 to i8
    %87 = llvm.and %82, %86  : i8
    %88 = llvm.icmp "ne" %87, %8 : i8
    llvm.cond_br %88, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %89 = llvm.call @cache_request_impl_2(%0, %64, %67, %8) : (i32, i64, i32, i8) -> i32
    %90 = llvm.load %32 : !llvm.ptr<ptr<struct<(i64, i8, i8, i16, i32)>>>
    %91 = llvm.getelementptr %90[%68] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %92 = llvm.getelementptr %91[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %93 = llvm.load %92 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%0, %93) : (i32, i16) -> ()
    llvm.br ^bb9(%77 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%77 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>)
  ^bb9(%94: !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    %95 = llvm.load %94 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.store %95, %18 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    llvm.call @computation(%19, %18, %23) : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) -> ()
    %96 = llvm.add %21, %16  : i64
    llvm.br ^bb1(%96 : i64)
  ^bb11:  // pred: ^bb1
    llvm.return
  }
  llvm.func @computation(!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>, i32) attributes {sym_visibility = "private"}
}

