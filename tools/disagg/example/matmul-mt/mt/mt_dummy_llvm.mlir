module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(5 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : i32) : i32
    %4 = llvm.mlir.constant(1 : i64) : i64
    %5 = llvm.alloca %4 x !llvm.array<5 x i64> : (i64) -> !llvm.ptr<array<5 x i64>>
    %6 = llvm.alloca %4 x !llvm.array<5 x struct<"struct.Pack", (ptr<i32>, ptr<i32>)>> : (i64) -> !llvm.ptr<array<5 x struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>>
    %7 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<5 x i64>>) -> !llvm.ptr<i64>
    %8 = llvm.mlir.null : !llvm.ptr<struct<"union.pthread_attr_t", (i64, array<48 x i8>)>>
    %9 = llvm.mlir.addressof @_Z4taskPv : !llvm.ptr<func<ptr<i8> (ptr<i8>)>>
    %10 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<5 x struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>>) -> !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb2
    %12 = llvm.icmp "slt" %11, %0 : i64
    llvm.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %13 = llvm.trunc %11 : i64 to i32
    %14 = llvm.getelementptr %7[%13] : (!llvm.ptr<i64>, i32) -> !llvm.ptr<i64>
    %15 = llvm.getelementptr %10[%13] : (!llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>, i32) -> !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>
    %16 = llvm.bitcast %15 : !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>> to !llvm.ptr<i8>
    %17 = llvm.call @pthread_create(%14, %8, %9, %16) : (!llvm.ptr<i64>, !llvm.ptr<struct<"union.pthread_attr_t", (i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32
    %18 = llvm.add %11, %2  : i64
    llvm.br ^bb1(%18 : i64)
  ^bb3:  // pred: ^bb1
    %19 = llvm.mlir.null : !llvm.ptr<ptr<i8>>
    llvm.br ^bb4(%1 : i64)
  ^bb4(%20: i64):  // 2 preds: ^bb3, ^bb5
    %21 = llvm.icmp "slt" %20, %0 : i64
    llvm.cond_br %21, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %22 = llvm.getelementptr %7[%20] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %23 = llvm.load %22 : !llvm.ptr<i64>
    %24 = llvm.call @pthread_join(%23, %19) : (i64, !llvm.ptr<ptr<i8>>) -> i32
    %25 = llvm.add %20, %2  : i64
    llvm.br ^bb4(%25 : i64)
  ^bb6:  // pred: ^bb4
    llvm.return %3 : i32
  }
  llvm.func @pthread_create(!llvm.ptr<i64>, !llvm.ptr<struct<"union.pthread_attr_t", (i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32 attributes {sym_visibility = "private"}
  llvm.func @_Z4taskPv(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<i8> to !llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<"struct.Pack", (ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    llvm.call @_Z3fooPiS_(%2, %4) : (!llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %5 = llvm.mlir.null : !llvm.ptr<i8>
    llvm.return %5 : !llvm.ptr<i8>
  }
  llvm.func @pthread_join(i64, !llvm.ptr<ptr<i8>>) -> i32 attributes {sym_visibility = "private"}
  llvm.func @_Z3fooPiS_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.mlir.addressof @str0 : !llvm.ptr<array<4 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.load %arg0 : !llvm.ptr<i32>
    %3 = llvm.load %arg1 : !llvm.ptr<i32>
    %4 = llvm.add %2, %3  : i32
    %5 = llvm.call @printf(%1, %4) : (!llvm.ptr<i8>, i32) -> i32
    llvm.return
  }
}
