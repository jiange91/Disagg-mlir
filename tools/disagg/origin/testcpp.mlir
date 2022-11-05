module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str7("aaa = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("saa = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("aa = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("a = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("a2d = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("tt = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("ts = %d\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("t = %d\0A\00") {addr_space = 0 : i32}
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @atoi(!llvm.ptr<i8>) -> i32
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c5 = arith.constant 5 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c8_i64 = arith.constant 8 : i64
    %c4_i64 = arith.constant 4 : i64
    %c4 = arith.constant 4 : index
    %c12 = arith.constant 12 : index
    %c80_i64 = arith.constant 80 : i64
    %cst = arith.constant 0.000000e+00 : f64
    %c72_i64 = arith.constant 72 : i64
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c3_i32 = arith.constant 3 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i32, i32)>, struct<(array<10 x f64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(i32, i32)>, struct<(array<10 x f64>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.array<2 x struct<(i32)>> : (i64) -> !llvm.ptr<array<2 x struct<(i32)>>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<(i32)> : (i64) -> !llvm.ptr<struct<(i32)>>
    %3 = llvm.alloca %c1_i64 x !llvm.array<2 x array<2 x i32>> : (i64) -> !llvm.ptr<array<2 x array<2 x i32>>>
    %4 = llvm.getelementptr %arg1[1] : (!llvm.ptr<ptr<i8>>) -> !llvm.ptr<ptr<i8>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i8>>
    %6 = llvm.call @atoi(%5) : (!llvm.ptr<i8>) -> i32
    %7 = llvm.call @malloc(%c4_i64) : (i64) -> !llvm.ptr<i8>
    %8 = llvm.bitcast %7 : !llvm.ptr<i8> to !llvm.ptr<i32>
    llvm.store %c2_i32, %8 : !llvm.ptr<i32>
    %9 = llvm.mlir.addressof @str0 : !llvm.ptr<array<8 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<8 x i8>>) -> !llvm.ptr<i8>
    %11 = llvm.load %8 : !llvm.ptr<i32>
    %12 = llvm.call @printf(%10, %11) : (!llvm.ptr<i8>, i32) -> i32
    %13 = arith.index_cast %6 : i32 to index
    %14 = arith.muli %13, %c4 : index
    %15 = arith.index_cast %14 : index to i64
    %16 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr<i8>
    %17 = llvm.bitcast %16 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %18 = llvm.bitcast %17 : !llvm.ptr<i32> to !llvm.ptr<array<0 x i32>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<0 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %19 : !llvm.ptr<i32>
    %20 = llvm.getelementptr %18[0, 1] : (!llvm.ptr<array<0 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c2_i32, %20 : !llvm.ptr<i32>
    %21 = llvm.getelementptr %18[0, 2] : (!llvm.ptr<array<0 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c3_i32, %21 : !llvm.ptr<i32>
    %22 = llvm.getelementptr %18[0, 3] : (!llvm.ptr<array<0 x i32>>) -> !llvm.ptr<i32>
    %23 = arith.subi %14, %c12 : index
    %24 = arith.index_cast %23 : index to i64
    "llvm.intr.memset"(%22, %c0_i8, %24, %false) : (!llvm.ptr<i32>, i8, i64, i1) -> ()
    %25 = llvm.mlir.addressof @str1 : !llvm.ptr<array<9 x i8>>
    %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
    scf.for %arg2 = %c0 to %c5 step %c1 {
      %74 = arith.index_cast %arg2 : index to i64
      %75 = llvm.getelementptr %17[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %76 = llvm.load %75 : !llvm.ptr<i32>
      %77 = llvm.call @printf(%26, %76) : (!llvm.ptr<i8>, i32) -> i32
    }
    %27 = llvm.mlir.addressof @str2 : !llvm.ptr<array<9 x i8>>
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
    %29 = llvm.call @printf(%28, %6) : (!llvm.ptr<i8>, i32) -> i32
    %30 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<2 x array<2 x i32>>>) -> !llvm.ptr<array<2 x i32>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<2 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %31 : !llvm.ptr<i32>
    %32 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<array<2 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c2_i32, %32 : !llvm.ptr<i32>
    %33 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<array<2 x array<2 x i32>>>) -> !llvm.ptr<array<2 x i32>>
    "llvm.intr.memset"(%33, %c0_i8, %c8_i64, %false) : (!llvm.ptr<array<2 x i32>>, i8, i64, i1) -> ()
    %34 = llvm.mlir.addressof @str3 : !llvm.ptr<array<10 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<10 x i8>>) -> !llvm.ptr<i8>
    scf.for %arg2 = %c0 to %c2 step %c1 {
      %74 = arith.index_cast %arg2 : index to i64
      %75 = llvm.getelementptr %30[%74] : (!llvm.ptr<array<2 x i32>>, i64) -> !llvm.ptr<array<2 x i32>>
      %76 = llvm.getelementptr %75[0, 0] : (!llvm.ptr<array<2 x i32>>) -> !llvm.ptr<i32>
      scf.for %arg3 = %c0 to %c2 step %c1 {
        %77 = arith.index_cast %arg3 : index to i64
        %78 = llvm.getelementptr %76[%77] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        %79 = llvm.load %78 : !llvm.ptr<i32>
        %80 = llvm.call @printf(%35, %79) : (!llvm.ptr<i8>, i32) -> i32
      }
    }
    call @_ZN1AC1Ei(%2, %c1_i32) : (!llvm.ptr<struct<(i32)>>, i32) -> ()
    %36 = llvm.mlir.addressof @str4 : !llvm.ptr<array<8 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<8 x i8>>) -> !llvm.ptr<i8>
    %38 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(i32)>>) -> !llvm.ptr<i32>
    %39 = llvm.load %38 : !llvm.ptr<i32>
    %40 = llvm.call @printf(%37, %39) : (!llvm.ptr<i8>, i32) -> i32
    %41 = llvm.call @malloc(%c4_i64) : (i64) -> !llvm.ptr<i8>
    %42 = llvm.bitcast %41 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32)>>
    call @_ZN1AC1Ei(%42, %c2_i32) : (!llvm.ptr<struct<(i32)>>, i32) -> ()
    %43 = llvm.mlir.addressof @str5 : !llvm.ptr<array<9 x i8>>
    %44 = llvm.getelementptr %43[0, 0] : (!llvm.ptr<array<9 x i8>>) -> !llvm.ptr<i8>
    %45 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<(i32)>>) -> !llvm.ptr<i32>
    %46 = llvm.load %45 : !llvm.ptr<i32>
    %47 = llvm.call @printf(%44, %46) : (!llvm.ptr<i8>, i32) -> i32
    %48 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<array<2 x struct<(i32)>>>) -> !llvm.ptr<struct<(i32)>>
    call @_ZN1AC1Ei(%48, %c1_i32) : (!llvm.ptr<struct<(i32)>>, i32) -> ()
    %49 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<array<2 x struct<(i32)>>>) -> !llvm.ptr<struct<(i32)>>
    "llvm.intr.memset"(%49, %c0_i8, %c4_i64, %false) : (!llvm.ptr<struct<(i32)>>, i8, i64, i1) -> ()
    %50 = llvm.mlir.addressof @str6 : !llvm.ptr<array<10 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<10 x i8>>) -> !llvm.ptr<i8>
    %52 = llvm.getelementptr %48[0, 0] : (!llvm.ptr<struct<(i32)>>) -> !llvm.ptr<i32>
    %53 = llvm.load %52 : !llvm.ptr<i32>
    %54 = llvm.call @printf(%51, %53) : (!llvm.ptr<i8>, i32) -> i32
    %55 = llvm.call @malloc(%15) : (i64) -> !llvm.ptr<i8>
    %56 = llvm.bitcast %55 : !llvm.ptr<i8> to !llvm.ptr<struct<(i32)>>
    %57 = llvm.bitcast %56 : !llvm.ptr<struct<(i32)>> to !llvm.ptr<array<0 x struct<(i32)>>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<array<0 x struct<(i32)>>>) -> !llvm.ptr<struct<(i32)>>
    call @_ZN1AC1Ei(%58, %c1_i32) : (!llvm.ptr<struct<(i32)>>, i32) -> ()
    %59 = llvm.getelementptr %57[0, 1] : (!llvm.ptr<array<0 x struct<(i32)>>>) -> !llvm.ptr<struct<(i32)>>
    call @_ZN1AC1Ei(%59, %c2_i32) : (!llvm.ptr<struct<(i32)>>, i32) -> ()
    %60 = llvm.getelementptr %57[0, 2] : (!llvm.ptr<array<0 x struct<(i32)>>>) -> !llvm.ptr<struct<(i32)>>
    call @_ZN1AC1Ei(%60, %c3_i32) : (!llvm.ptr<struct<(i32)>>, i32) -> ()
    %61 = llvm.getelementptr %57[0, 3] : (!llvm.ptr<array<0 x struct<(i32)>>>) -> !llvm.ptr<struct<(i32)>>
    "llvm.intr.memset"(%61, %c0_i8, %24, %false) : (!llvm.ptr<struct<(i32)>>, i8, i64, i1) -> ()
    %62 = llvm.mlir.addressof @str7 : !llvm.ptr<array<10 x i8>>
    %63 = llvm.getelementptr %62[0, 0] : (!llvm.ptr<array<10 x i8>>) -> !llvm.ptr<i8>
    scf.for %arg2 = %c0 to %13 step %c1 {
      %74 = arith.index_cast %arg2 : index to i64
      %75 = llvm.getelementptr %56[%74] : (!llvm.ptr<struct<(i32)>>, i64) -> !llvm.ptr<struct<(i32)>>
      %76 = llvm.getelementptr %75[0, 0] : (!llvm.ptr<struct<(i32)>>) -> !llvm.ptr<i32>
      %77 = llvm.load %76 : !llvm.ptr<i32>
      %78 = llvm.call @printf(%63, %77) : (!llvm.ptr<i8>, i32) -> i32
    }
    %64 = llvm.call @malloc(%c80_i64) : (i64) -> !llvm.ptr<i8>
    %65 = llvm.bitcast %64 : !llvm.ptr<i8> to !llvm.ptr<struct<(array<10 x f64>)>>
    %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr<struct<(array<10 x f64>)>>) -> !llvm.ptr<array<10 x f64>>
    "llvm.intr.memset"(%66, %c0_i8, %c80_i64, %false) : (!llvm.ptr<array<10 x f64>>, i8, i64, i1) -> ()
    %67 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(array<10 x f64>)>)>>) -> !llvm.ptr<struct<(i32, i32)>>
    %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr<struct<(i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %68 : !llvm.ptr<i32>
    %69 = llvm.getelementptr %67[0, 1] : (!llvm.ptr<struct<(i32, i32)>>) -> !llvm.ptr<i32>
    llvm.store %6, %69 : !llvm.ptr<i32>
    %70 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(struct<(i32, i32)>, struct<(array<10 x f64>)>)>>) -> !llvm.ptr<struct<(array<10 x f64>)>>
    %71 = llvm.getelementptr %70[0, 0] : (!llvm.ptr<struct<(array<10 x f64>)>>) -> !llvm.ptr<array<10 x f64>>
    %72 = llvm.getelementptr %71[0, 0] : (!llvm.ptr<array<10 x f64>>) -> !llvm.ptr<f64>
    llvm.store %cst, %72 : !llvm.ptr<f64>
    %73 = llvm.getelementptr %71[0, 1] : (!llvm.ptr<array<10 x f64>>) -> !llvm.ptr<f64>
    "llvm.intr.memset"(%73, %c0_i8, %c72_i64, %false) : (!llvm.ptr<f64>, i8, i64, i1) -> ()
    return %c0_i32 : i32
  }
  func.func @_ZN1AC1Ei(%arg0: !llvm.ptr<struct<(i32)>>, %arg1: i32) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(i32)>>) -> !llvm.ptr<i32>
    llvm.store %arg1, %0 : !llvm.ptr<i32>
    return
  }
}
