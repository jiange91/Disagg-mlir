module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid2(i32, i16)
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.func @clock_gettime(i32, !llvm.ptr<struct<"struct.timespec", (i64, i64)>>) -> i32
  llvm.mlir.global external @g_payload() {addr_space = 0 : i32} : !llvm.array<23 x i32>
  llvm.mlir.global internal constant @str2("Dont opt this %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @arc() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
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
    %4 = llvm.mlir.addressof @arc : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>>
    %6 = builtin.unrealized_conversion_cast %5 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>> {lower_src_mat = true}
    call @visit(%6) : (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) -> ()
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
  func.func @visit(%arg0: !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>) attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = builtin.unrealized_conversion_cast %arg0 : !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> {lower_arg_mat = true}
    %c67108864 = arith.constant 67108864 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
    %2 = builtin.unrealized_conversion_cast %1 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>> {lower_src_mat = true}
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)> : (i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
    %4 = builtin.unrealized_conversion_cast %3 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>> {lower_src_mat = true}
    %5 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) -> !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
    scf.for %arg1 = %c0 to %c67108864 step %c1 {
      %6 = arith.index_cast %arg1 : index to i32
      %7 = arith.index_cast %arg1 : index to i64
      %8 = llvm.getelementptr %0[%7] : (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i64) -> !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      %9 = llvm.ptrtoint %8 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
      %c-6144_i64 = arith.constant -6144 : i64
      %10 = arith.andi %9, %c-6144_i64 : i64
      %c6144_i64 = arith.constant 6144 : i64
      %11 = arith.divui %10, %c6144_i64 : i64
      %c4096_i64 = arith.constant 4096 : i64
      %12 = arith.remsi %11, %c4096_i64 : i64
      %13 = arith.trunci %12 : i64 to i32
      %c2097152_i32 = arith.constant 2097152 : i32
      %14 = arith.addi %13, %c2097152_i32 : i32
      %15 = arith.extsi %14 : i32 to i64
      %16 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %18 = llvm.getelementptr %17[%15] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %19 = llvm.ptrtoint %8 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>> to i64
      %c1073741824_i64 = arith.constant 1073741824 : i64
      %20 = arith.extsi %13 : i32 to i64
      %c6144_i64_0 = arith.constant 6144 : i64
      %21 = arith.muli %20, %c6144_i64_0 : i64
      %c6144_i64_1 = arith.constant 6144 : i64
      %22 = arith.remsi %19, %c6144_i64_1 : i64
      %23 = arith.addi %21, %22 : i64
      %24 = arith.addi %c1073741824_i64, %23 : i64
      %25 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
      %26 = llvm.load %25 : !llvm.ptr<ptr<i8>>
      %27 = llvm.getelementptr %26[%24] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %28 = llvm.bitcast %27 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      %29 = llvm.getelementptr %18[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %30 = llvm.load %29 : !llvm.ptr<i8>
      %31 = arith.extsi %30 : i8 to i32
      %c1_i32 = arith.constant 1 : i32
      %32 = arith.andi %31, %c1_i32 : i32
      %33 = arith.trunci %32 : i32 to i8
      %34 = arith.extsi %33 : i8 to i32
      %c0_i32 = arith.constant 0 : i32
      %35 = arith.cmpi ne, %34, %c0_i32 : i32
      %36 = scf.if %35 -> (i1) {
        %70 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
        %71 = llvm.load %70 : !llvm.ptr<i64>
        %72 = arith.cmpi ne, %71, %10 : i64
        scf.yield %72 : i1
      } else {
        %true = arith.constant true
        scf.yield %true : i1
      }
      %37 = scf.if %36 -> (!llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>) {
        %c2_i32 = arith.constant 2 : i32
        %c1_i8 = arith.constant 1 : i8
        %70 = llvm.call @cache_request_impl_1(%c2_i32, %10, %13, %c1_i8) : (i32, i64, i32, i8) -> i32
        %c1_i32_7 = arith.constant 1 : i32
        %c2097152_i32_8 = arith.constant 2097152 : i32
        %71 = arith.addi %13, %c2097152_i32_8 : i32
        %72 = arith.extsi %71 : i32 to i64
        %73 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
        %74 = llvm.getelementptr %73[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
        %75 = llvm.getelementptr %74[%72] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
        %c0_i64_9 = arith.constant 0 : i64
        %76 = llvm.getelementptr %75[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
        %77 = llvm.load %76 : !llvm.ptr<i16>
        llvm.call @poll_qid1(%c1_i32_7, %77) : (i32, i16) -> ()
        scf.yield %28 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      } else {
        scf.yield %28 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      }
      %38 = llvm.load %37 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      llvm.store %38, %3 : !llvm.ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc">>, i32, array<23 x i32>)>>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>
      %39 = llvm.load %5 : !llvm.ptr<ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>>
      %40 = llvm.ptrtoint %39 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
      %c-512_i64 = arith.constant -512 : i64
      %41 = arith.andi %40, %c-512_i64 : i64
      %c512_i64 = arith.constant 512 : i64
      %42 = arith.divui %41, %c512_i64 : i64
      %c2097152_i64 = arith.constant 2097152 : i64
      %43 = arith.remsi %42, %c2097152_i64 : i64
      %44 = arith.trunci %43 : i64 to i32
      %c0_i32_2 = arith.constant 0 : i32
      %45 = arith.addi %44, %c0_i32_2 : i32
      %46 = arith.extsi %45 : i32 to i64
      %47 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %48 = llvm.getelementptr %47[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %49 = llvm.getelementptr %48[%46] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %50 = llvm.ptrtoint %39 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>> to i64
      %c0_i64 = arith.constant 0 : i64
      %51 = arith.extsi %44 : i32 to i64
      %c512_i64_3 = arith.constant 512 : i64
      %52 = arith.muli %51, %c512_i64_3 : i64
      %c512_i64_4 = arith.constant 512 : i64
      %53 = arith.remsi %50, %c512_i64_4 : i64
      %54 = arith.addi %52, %53 : i64
      %55 = arith.addi %c0_i64, %54 : i64
      %56 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
      %57 = llvm.load %56 : !llvm.ptr<ptr<i8>>
      %58 = llvm.getelementptr %57[%55] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      %59 = llvm.bitcast %58 : !llvm.ptr<i8> to !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      %60 = llvm.getelementptr %49[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %61 = llvm.load %60 : !llvm.ptr<i8>
      %62 = arith.extsi %61 : i8 to i32
      %c1_i32_5 = arith.constant 1 : i32
      %63 = arith.andi %62, %c1_i32_5 : i32
      %64 = arith.trunci %63 : i32 to i8
      %65 = arith.extsi %64 : i8 to i32
      %c0_i32_6 = arith.constant 0 : i32
      %66 = arith.cmpi ne, %65, %c0_i32_6 : i32
      %67 = scf.if %66 -> (i1) {
        %70 = llvm.getelementptr %49[0, 0] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i64>
        %71 = llvm.load %70 : !llvm.ptr<i64>
        %72 = arith.cmpi ne, %71, %41 : i64
        scf.yield %72 : i1
      } else {
        %true = arith.constant true
        scf.yield %true : i1
      }
      %68 = scf.if %67 -> (!llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>) {
        %c0_i32_7 = arith.constant 0 : i32
        %c1_i8 = arith.constant 1 : i8
        %70 = llvm.call @cache_request_impl_2(%c0_i32_7, %41, %44, %c1_i8) : (i32, i64, i32, i8) -> i32
        %c0_i32_8 = arith.constant 0 : i32
        %c0_i32_9 = arith.constant 0 : i32
        %71 = arith.addi %44, %c0_i32_9 : i32
        %72 = arith.extsi %71 : i32 to i64
        %73 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
        %74 = llvm.getelementptr %73[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
        %75 = llvm.getelementptr %74[%72] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
        %c0_i64_10 = arith.constant 0 : i64
        %76 = llvm.getelementptr %75[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
        %77 = llvm.load %76 : !llvm.ptr<i16>
        llvm.call @poll_qid2(%c0_i32_8, %77) : (i32, i16) -> ()
        scf.yield %59 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      } else {
        scf.yield %59 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      }
      %69 = llvm.load %68 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      llvm.store %69, %1 : !llvm.ptr<struct<"_Lowered_disagg@struct.node", (ptr<struct<"_Lowered_disagg@struct.arc", (ptr<struct<"_Lowered_disagg@struct.node">>, ptr<struct<"_Lowered_disagg@struct.arc">>, array<8 x i32>)>>, i32, array<23 x i32>)>>
      func.call @computation(%4, %2, %6) : (!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>, i32) -> ()
    }
    return
  }
  func.func private @computation(!llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, i32, array<23 x i32>)>>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>, !llvm.ptr<!llvm.struct<"disagg@struct.node", (!rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc", (!rmem.rmref<2, !llvm.ptr<!llvm.struct<"disagg@struct.node">>>, !rmem.rmref<1, !llvm.ptr<!llvm.struct<"disagg@struct.arc">>>, array<8 x i32>)>>>, i32, array<23 x i32>)>>, i32) attributes {llvm.linkage = #llvm.linkage<external>}
}

