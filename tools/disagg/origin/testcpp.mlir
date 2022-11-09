module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str12("basic_string::_M_construct null not valid\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("cannot create std::vector larger than max_size()\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str10("%s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("J\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("I\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("H\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("G\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("F\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("E\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("D\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("C\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("B\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("A\00") {addr_space = 0 : i32}
  func.func @main(%arg0: i32, %arg1: !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0_i8 = arith.constant 0 : i8
    %c10_i64 = arith.constant 10 : i64
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)> : (i64) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)> : (i64) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %6 = llvm.alloca %c1_i64 x !llvm.array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> : (i64) -> !llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %8 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %9 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %10 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %11 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %12 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %13 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %14 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %15 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %16 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %17 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %18 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %19 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %20 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %21 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %22 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %23 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %24 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %25 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %26 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %27 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %28 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %29 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %30 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %31 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %32 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %33 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %34 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %35 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %36 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %37 = llvm.alloca %c1_i64 x !llvm.array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> : (i64) -> !llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %38 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>
    %39 = llvm.getelementptr %37[0, 0] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %40 = llvm.mlir.addressof @str0 : !llvm.ptr<array<2 x i8>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %42 = llvm.load %35 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %42, %34 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%36, %41, %34) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %43 = llvm.load %36 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %43, %39 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %44 = llvm.getelementptr %37[0, 1] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %45 = llvm.mlir.addressof @str1 : !llvm.ptr<array<2 x i8>>
    %46 = llvm.getelementptr %45[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %47 = llvm.load %32 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %47, %31 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%33, %46, %31) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %48 = llvm.load %33 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %48, %44 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %49 = llvm.getelementptr %37[0, 2] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %50 = llvm.mlir.addressof @str2 : !llvm.ptr<array<2 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %52 = llvm.load %29 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %52, %28 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%30, %51, %28) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %53 = llvm.load %30 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %53, %49 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %54 = llvm.getelementptr %37[0, 3] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %55 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %56 = llvm.getelementptr %55[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %57 = llvm.load %26 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %57, %25 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%27, %56, %25) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %58 = llvm.load %27 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %58, %54 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %59 = llvm.getelementptr %37[0, 4] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %60 = llvm.mlir.addressof @str4 : !llvm.ptr<array<2 x i8>>
    %61 = llvm.getelementptr %60[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %62 = llvm.load %23 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %62, %22 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%24, %61, %22) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %63 = llvm.load %24 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %63, %59 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %64 = llvm.getelementptr %37[0, 5] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %65 = llvm.mlir.addressof @str5 : !llvm.ptr<array<2 x i8>>
    %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %67 = llvm.load %20 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %67, %19 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%21, %66, %19) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %68 = llvm.load %21 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %68, %64 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %69 = llvm.getelementptr %37[0, 6] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %70 = llvm.mlir.addressof @str6 : !llvm.ptr<array<2 x i8>>
    %71 = llvm.getelementptr %70[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %72 = llvm.load %17 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %72, %16 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%18, %71, %16) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %73 = llvm.load %18 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %73, %69 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %74 = llvm.getelementptr %37[0, 7] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %75 = llvm.mlir.addressof @str7 : !llvm.ptr<array<2 x i8>>
    %76 = llvm.getelementptr %75[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %77 = llvm.load %14 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %77, %13 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%15, %76, %13) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %78 = llvm.load %15 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %78, %74 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %79 = llvm.getelementptr %37[0, 8] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %80 = llvm.mlir.addressof @str8 : !llvm.ptr<array<2 x i8>>
    %81 = llvm.getelementptr %80[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %82 = llvm.load %11 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %82, %10 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%12, %81, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %83 = llvm.load %12 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %83, %79 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %84 = llvm.getelementptr %37[0, 9] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %85 = llvm.mlir.addressof @str9 : !llvm.ptr<array<2 x i8>>
    %86 = llvm.getelementptr %85[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %87 = llvm.load %8 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %87, %7 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%9, %86, %7) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %88 = llvm.load %9 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %88, %84 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %89 = llvm.load %37 : !llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    llvm.store %89, %6 : !llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %90 = llvm.mlir.undef : !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>
    %91 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<10 x struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %92 = llvm.insertvalue %91, %90[0] : !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)> 
    %93 = llvm.insertvalue %c10_i64, %92[1] : !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)> 
    %94 = llvm.load %5 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %94, %4 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1ESt16initializer_listIS5_ERKS6_(%38, %93, %4) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>, !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %95 = llvm.load %38 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>
    llvm.store %95, %3 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>
    %96 = call @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(%3) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>
    llvm.store %96, %2 : !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %97 = call @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(%3) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>
    llvm.store %97, %1 : !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %98 = llvm.mlir.addressof @str10 : !llvm.ptr<array<4 x i8>>
    %99 = llvm.getelementptr %98[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    scf.while : () -> () {
      %100 = func.call @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(%2, %1) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>, !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> i8
      %101 = arith.cmpi ne, %100, %c0_i8 : i8
      scf.condition(%101)
    } do {
      %100 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(%2) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%0, %100) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> ()
      %101 = func.call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
      %102 = llvm.call @printf(%99, %101) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
      %103 = func.call @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(%2) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
      scf.yield
    }
    return %c0_i32 : i32
  }
  func.func @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1ESt16initializer_listIS5_ERKS6_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>, %arg1: !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>, %arg2: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)> : (i64) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>
    call @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1ERKS6_(%3, %arg2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %4 = call @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv(%2) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %5 = call @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv(%2) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %6 = llvm.bitcast %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%6, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeIPKS5_EEvT_SB_St20forward_iterator_tag(%arg0, %4, %5, %7) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.struct<(struct<(i8)>)>) -> ()
    return
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1IS3_EEPKcRKS3_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i8 = arith.constant 0 : i8
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %1 = call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%0, %1, %arg2) : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %2 = llvm.mlir.null : !llvm.ptr<i8>
    %3 = llvm.icmp "ne" %arg1, %2 : !llvm.ptr<i8>
    %4 = scf.if %3 -> (!llvm.ptr<i8>) {
      %5 = func.call @__builtin_is_constant_evaluated() : () -> i8
      %6 = arith.cmpi ne, %5, %c0_i8 : i8
      %7 = scf.if %6 -> (i64) {
        %9 = func.call @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(%arg1) : (!llvm.ptr<i8>) -> i64
        scf.yield %9 : i64
      } else {
        %9 = func.call @strlen(%arg1) : (!llvm.ptr<i8>) -> i64
        scf.yield %9 : i64
      }
      %8 = llvm.getelementptr %arg1[%7] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      scf.yield %8 : !llvm.ptr<i8>
    } else {
      %5 = llvm.getelementptr %arg1[-1] : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
      scf.yield %5 : !llvm.ptr<i8>
    }
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%arg0, %arg1, %4) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZNSaIcEC1Ev(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    return
  }
  func.func @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1Ev(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE5beginEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)> : (i64) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_(%0, %4) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>, !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> ()
    %5 = llvm.load %0 : !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    return %5 : !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>
  }
  func.func @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE3endEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)> : (i64) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_(%0, %4) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>, !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> ()
    %5 = llvm.load %0 : !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    return %5 : !llvm.struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>
  }
  func.func @_ZN9__gnu_cxxneIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEEbRKNS_17__normal_iteratorIT_T0_EESG_(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>, %arg1: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(%arg0) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(%arg1) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %4 = llvm.icmp "ne" %1, %3 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %5 = arith.extui %4 : i1 to i8
    return %5 : i8
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(i8)>)>, ptr<i8>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %2 = call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    %3 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = call @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%3) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.struct<(struct<(i8)>)>
    llvm.store %4, %0 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_(%1, %2, %0) : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>, !llvm.ptr<i8>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    llvm.store %6, %5 : !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %7 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    %8 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    %9 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> i64
    %10 = llvm.getelementptr %8[%9] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%arg0, %7, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEdeEv(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return %1 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE5c_strEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    return %0 : !llvm.ptr<i8>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEppEv(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %2 = llvm.getelementptr %1[1] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %2, %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return %arg0 : !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
  }
  func.func @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EEC1ERKS6_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>, %arg1: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>
    call @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1ERKS6_(%0, %arg1) : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_range_initializeIPKS5_EEvT_SB_St20forward_iterator_tag(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg2: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg3: !llvm.struct<(struct<(i8)>)>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt8distanceIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_(%arg1, %arg2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %5 = call @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(%1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %6 = call @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_(%0, %5) : (i64, !llvm.ptr<struct<(struct<(i8)>)>>) -> i64
    %7 = call @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm(%1, %6) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>, i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %7, %4 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %8 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %9 = llvm.load %4 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %10 = llvm.getelementptr %9[%0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %10, %8 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %11 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %12 = llvm.load %4 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %13 = call @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(%1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %14 = call @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_EET0_T_SC_SB_(%arg1, %arg2, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    llvm.store %14, %11 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return
  }
  func.func @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return %1 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE3endEv(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE5beginEv(%arg0) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %1 = call @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv(%arg0) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> i64
    %2 = llvm.getelementptr %0[%1] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    return %2 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNSt20forward_iterator_tagC1EOS_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcRKS3_(%arg0: !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i8>>
    return
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_local_dataEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(i64, array<8 x i8>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(i64, array<8 x i8>)>>) -> !llvm.ptr<i64>
    %2 = llvm.bitcast %1 : !llvm.ptr<i64> to !llvm.ptr<array<16 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZSt9addressofIcEPT_RS0_(%3) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    return %4 : !llvm.ptr<i8>
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<(i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<(i8)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%arg0, %arg1, %arg2, %2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.struct<(i8)>) -> ()
    return
  }
  func.func @_ZNSt11char_traitsIcE6lengthEPKc(%arg0: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i8 = arith.constant 0 : i8
    %0 = call @__builtin_is_constant_evaluated() : () -> i8
    %1 = arith.cmpi ne, %0, %c0_i8 : i8
    %2 = scf.if %1 -> (i64) {
      %3 = func.call @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(%arg0) : (!llvm.ptr<i8>) -> i64
      scf.yield %3 : i64
    } else {
      %3 = func.call @strlen(%arg0) : (!llvm.ptr<i8>) -> i64
      scf.yield %3 : i64
    }
    return %2 : i64
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIcEC1Ev(%arg0: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1Ev(%arg0: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEEC1ERKS7_(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>, %arg1: !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    llvm.store %0, %1 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESt6vectorIS6_SaIS6_EEE4baseEv(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderC1EPcOS3_(%arg0: !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i8>>
    return
  }
  func.func @_ZN9__gnu_cxx14__alloc_traitsISaIcEcE17_S_select_on_copyERKS1_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.struct<(struct<(i8)>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%arg0) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.struct<(struct<(i8)>)>
    return %0 : !llvm.struct<(struct<(i8)>)>
  }
  func.func @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_get_allocatorEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>> attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<(struct<(i8)>)>>
    return %4 : !llvm.ptr<struct<(struct<(i8)>)>>
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<(i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<(i8)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%arg0, %arg1, %arg2, %2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.struct<(i8)>) -> ()
    return
  }
  func.func @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %1 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i8>>
    return %2 : !llvm.ptr<i8>
  }
  func.func @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE6lengthEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE12_Vector_implC1ERKS6_(%arg0: !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>, %arg1: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>) -> !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>
    call @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> ()
    return
  }
  func.func @_ZSt8distanceIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> : (i64) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    llvm.store %arg0, %0 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %1 = call @_ZSt19__iterator_categoryIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_(%0) : (!llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>
    %2 = call @_ZSt10__distanceIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St26random_access_iterator_tag(%arg0, %arg1, %1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>) -> i64
    return %2 : i64
  }
  func.func @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_M_allocateEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>, %arg1: i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>
      %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<(struct<(i8)>)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<(struct<(i8)>)>>
      %7 = func.call @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(%6, %arg1) : (!llvm.ptr<struct<(struct<(i8)>)>>, i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      scf.yield %7 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      scf.yield %2 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    }
    return %1 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_S_check_init_lenEmRKS6_(%arg0: i64, %arg1: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.load %1 : !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.store %2, %0 : !llvm.ptr<struct<(struct<(i8)>)>>
    %3 = call @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(%0) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> i64
    %4 = arith.cmpi sgt, %arg0, %3 : i64
    scf.if %4 {
      %5 = llvm.mlir.addressof @str11 : !llvm.ptr<array<49 x i8>>
      %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<49 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%6) : (!llvm.ptr<i8>) -> ()
    }
    return %arg0 : i64
  }
  func.func @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<(struct<(i8)>)>>
    return %4 : !llvm.ptr<struct<(struct<(i8)>)>>
  }
  func.func @_ZSt22__uninitialized_copy_aIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_S5_ET0_T_SA_S9_RSaIT1_E(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg2: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_EET0_T_SC_SB_(%arg0, %arg1, %arg2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    return %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNKSt16initializer_listINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE4sizeEv(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt18input_iterator_tagC1EOS_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSaIcEC1ERKS_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    return
  }
  func.func @_ZNSt14pointer_traitsIPcE10pointer_toERc(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt9addressofIcEPT_RS0_(%arg0) : (!llvm.ptr<i8>) -> !llvm.ptr<i8>
    return %0 : !llvm.ptr<i8>
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPKcEEvT_S8_St12__false_type(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>, %arg3: !llvm.struct<(i8)>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.bitcast %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%2, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%arg0, %arg1, %arg2, %3) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.struct<(struct<(i8)>)>) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx11char_traitsIcE6lengthEPKc(%arg0: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i8 = arith.constant 0 : i8
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i8 : (i64) -> !llvm.ptr<i8>
    %1 = llvm.mlir.undef : i8
    llvm.store %1, %0 : !llvm.ptr<i8>
    %2 = scf.while (%arg1 = %c0_i64) : (i64) -> i64 {
      %3 = llvm.getelementptr %arg0[%arg1] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
      llvm.store %c0_i8, %0 : !llvm.ptr<i8>
      %4 = func.call @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(%3, %0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i8
      %5 = arith.cmpi eq, %4, %c0_i8 : i8
      scf.condition(%5) %arg1 : i64
    } do {
    ^bb0(%arg1: i64):
      %3 = arith.addi %arg1, %c1_i64 : i64
      scf.yield %3 : i64
    }
    return %2 : i64
  }
  func.func private @strlen(!llvm.ptr<i8>) -> i64
  func.func @_ZNSt16allocator_traitsISaIcEE37select_on_container_copy_constructionERKS0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.struct<(struct<(i8)>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %1 = llvm.load %0 : !llvm.ptr<struct<(struct<(i8)>)>>
    return %1 : !llvm.struct<(struct<(i8)>)>
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE16_M_construct_auxIPcEEvT_S7_St12__false_type(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>, %arg3: !llvm.struct<(i8)>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(i8)>)> : (i64) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.bitcast %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%2, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%arg0, %arg1, %arg2, %3) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.struct<(struct<(i8)>)>) -> ()
    return
  }
  func.func @_ZNSaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS5_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    llvm.store %0, %1 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    llvm.store %0, %2 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<(ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>)>>) -> !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    llvm.store %0, %3 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>
    return
  }
  func.func @_ZSt10__distanceIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt15iterator_traitsIT_E15difference_typeES9_S9_St26random_access_iterator_tag(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg2: !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c40_i64 = arith.constant 40 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c40_i64 : i64
    return %3 : i64
  }
  func.func @_ZSt19__iterator_categoryIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEENSt15iterator_traitsIT_E17iterator_categoryERKS9_(%arg0: !llvm.ptr<ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>>) -> !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    return %2 : !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>
  }
  func.func @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8allocateERS6_m(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<(i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    return %2 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNSt6vectorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEESaIS5_EE11_S_max_sizeERKS6_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c230584300921369395_i64 = arith.constant 230584300921369395 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.store %c230584300921369395_i64, %2 : !llvm.ptr<i64>
    llvm.store %c230584300921369395_i64, %0 : !llvm.ptr<i64>
    %3 = call @_ZSt3minImERKT_S2_S2_(%2, %0) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    return %4 : i64
  }
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt18uninitialized_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS5_ET0_T_SA_S9_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg2: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_EET0_T_SC_SB_(%arg0, %arg1, %arg2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    return %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIcEC1ERKS1_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func private @_ZSt9addressofIcEPT_RS0_(!llvm.ptr<i8>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPKcEEvT_S8_St20forward_iterator_tag(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>, %arg3: !llvm.struct<(struct<(i8)>)>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %c15_i64 = arith.constant 15 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = call @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(%arg1) : (!llvm.ptr<i8>) -> i8
    %3 = arith.cmpi ne, %2, %c0_i8 : i8
    %4 = llvm.icmp "ne" %arg1, %arg2 : !llvm.ptr<i8>
    %5 = arith.andi %3, %4 : i1
    scf.if %5 {
      %10 = llvm.mlir.addressof @str12 : !llvm.ptr<array<42 x i8>>
      %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<42 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt19__throw_logic_errorPKc(%11) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(%arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i64
    llvm.store %6, %0 : !llvm.ptr<i64>
    %7 = arith.cmpi sgt, %6, %c15_i64 : i64
    scf.if %7 {
      %10 = func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%arg0, %0, %c0_i64) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i64>, i64) -> !llvm.ptr<i8>
      func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%arg0, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>) -> ()
      %11 = llvm.load %0 : !llvm.ptr<i64>
      func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%arg0, %11) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> ()
    }
    %8 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(%8, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %9 = llvm.load %0 : !llvm.ptr<i64>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%arg0, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> ()
    return
  }
  func.func private @__builtin_is_constant_evaluated() -> i8 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZN9__gnu_cxx11char_traitsIcE2eqERKcS3_(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg0 : !llvm.ptr<i8>
    %1 = llvm.load %arg1 : !llvm.ptr<i8>
    %2 = arith.cmpi eq, %0, %1 : i8
    %3 = arith.extui %2 : i1 to i8
    return %3 : i8
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_M_constructIPcEEvT_S7_St20forward_iterator_tag(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>, %arg3: !llvm.struct<(struct<(i8)>)>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %c15_i64 = arith.constant 15 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = call @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(%arg1) : (!llvm.ptr<i8>) -> i8
    %3 = arith.cmpi ne, %2, %c0_i8 : i8
    %4 = llvm.icmp "ne" %arg1, %arg2 : !llvm.ptr<i8>
    %5 = arith.andi %3, %4 : i1
    scf.if %5 {
      %10 = llvm.mlir.addressof @str12 : !llvm.ptr<array<42 x i8>>
      %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<42 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt19__throw_logic_errorPKc(%11) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(%arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i64
    llvm.store %6, %0 : !llvm.ptr<i64>
    %7 = arith.cmpi sgt, %6, %c15_i64 : i64
    scf.if %7 {
      %10 = func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(%arg0, %0, %c0_i64) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i64>, i64) -> !llvm.ptr<i8>
      func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%arg0, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i8>) -> ()
      %11 = llvm.load %0 : !llvm.ptr<i64>
      func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%arg0, %11) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> ()
    }
    %8 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(%8, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    %9 = llvm.load %0 : !llvm.ptr<i64>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%arg0, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEC1ERKS7_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8allocateEmPKv(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c40_i64 = arith.constant 40 : i64
    %c230584300921369395_i64 = arith.constant 230584300921369395 : i64
    %0 = arith.cmpi sgt, %arg1, %c230584300921369395_i64 : i64
    scf.if %0 {
      func.call @_ZSt17__throw_bad_allocv() : () -> ()
    }
    %1 = arith.muli %arg1, %c40_i64 : i64
    %2 = call @_Znwm(%1) : (i64) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    return %3 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZNSt16allocator_traitsISaINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEE8max_sizeERKS6_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c230584300921369395_i64 = arith.constant 230584300921369395 : i64
    return %c230584300921369395_i64 : i64
  }
  func.func @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZNSt20__uninitialized_copyILb0EE13__uninit_copyIPKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEPS7_EET0_T_SC_SB_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg2: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0:2 = scf.while (%arg3 = %arg0, %arg4 = %arg2) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) {
      %1 = llvm.icmp "ne" %arg3, %arg1 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      scf.condition(%1) %arg4, %arg3 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    } do {
    ^bb0(%arg3: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg4: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>):
      %1 = func.call @_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_(%arg3) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      func.call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%1, %arg4) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> ()
      %2 = llvm.getelementptr %arg4[1] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      %3 = llvm.getelementptr %arg3[1] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
      scf.yield %2, %3 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
    }
    return %0#0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>
  }
  func.func @_ZN9__gnu_cxx17__is_null_pointerIKcEEbPT_(%arg0: !llvm.ptr<i8>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i8>
    %1 = llvm.icmp "eq" %arg0, %0 : !llvm.ptr<i8>
    %2 = arith.extui %1 : i1 to i8
    return %2 : i8
  }
  func.func private @_ZSt19__throw_logic_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt8distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %arg0, %0 : !llvm.ptr<ptr<i8>>
    %1 = call @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%0) : (!llvm.ptr<ptr<i8>>) -> !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>
    %2 = call @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(%arg0, %arg1, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>) -> i64
    return %2 : i64
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEPc(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>
    %1 = llvm.getelementptr %0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    llvm.store %arg1, %1 : !llvm.ptr<ptr<i8>>
    return
  }
  func.func private @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<i64>, i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_capacityEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(i64, array<8 x i8>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(i64, array<8 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %arg1, %1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcPKcS7_(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.ptrtoint %arg2 : !llvm.ptr<i8> to i64
    %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i8> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.cmpi eq, %2, %c1_i64 : i64
    scf.if %3 {
      func.call @_ZNSt11char_traitsIcE6assignERcRKc(%arg0, %arg1) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    } else {
      %4 = func.call @_ZNSt11char_traitsIcE4copyEPcPKcm(%arg0, %arg1, %2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    }
    return
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_M_set_lengthEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i8 : (i64) -> !llvm.ptr<i8>
    %1 = llvm.mlir.undef : i8
    llvm.store %1, %0 : !llvm.ptr<i8>
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%arg0, %arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, i64) -> ()
    %2 = call @_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_M_dataEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i8>
    %3 = llvm.getelementptr %2[%arg1] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    llvm.store %c0_i8, %0 : !llvm.ptr<i8>
    call @_ZNSt11char_traitsIcE6assignERcRKc(%3, %0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx17__is_null_pointerIcEEbPT_(%arg0: !llvm.ptr<i8>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i8>
    %1 = llvm.icmp "eq" %arg0, %0 : !llvm.ptr<i8>
    %2 = arith.extui %1 : i1 to i8
    return %2 : i8
  }
  func.func @_ZSt8distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    llvm.store %arg0, %0 : !llvm.ptr<ptr<i8>>
    %1 = call @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(%0) : (!llvm.ptr<ptr<i8>>) -> !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>
    %2 = call @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(%arg0, %arg1, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>) -> i64
    return %2 : i64
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE13_S_copy_charsEPcS5_S5_(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.ptrtoint %arg2 : !llvm.ptr<i8> to i64
    %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i8> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.cmpi eq, %2, %c1_i64 : i64
    scf.if %3 {
      func.call @_ZNSt11char_traitsIcE6assignERcRKc(%arg0, %arg1) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    } else {
      %4 = func.call @_ZNSt11char_traitsIcE4copyEPcPKcm(%arg0, %arg1, %2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    }
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8max_sizeEv(%arg0: !llvm.ptr<struct<(i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c230584300921369395_i64 = arith.constant 230584300921369395 : i64
    return %c230584300921369395_i64 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt10_ConstructINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEJRKS5_EEvPT_DpOT0_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    call @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC1ERKS4_(%arg0, %arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> ()
    return
  }
  func.func private @_ZSt11__addressofINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEEPT_RS6_(!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt10__distanceIPKcENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i8> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i8> to i64
    %2 = arith.subi %0, %1 : i64
    return %2 : i64
  }
  func.func @_ZSt19__iterator_categoryIPKcENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%arg0: !llvm.ptr<ptr<i8>>) -> !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    return %2 : !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE7_S_copyEPcPKcm(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = arith.cmpi eq, %arg2, %c1_i64 : i64
    scf.if %0 {
      func.call @_ZNSt11char_traitsIcE6assignERcRKc(%arg0, %arg1) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> ()
    } else {
      %1 = func.call @_ZNSt11char_traitsIcE4copyEPcPKcm(%arg0, %arg1, %arg2) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    }
    return
  }
  func.func @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_lengthEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<available_externally>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, ptr<i8>)>, i64, struct<(i64, array<8 x i8>)>)>>) -> !llvm.ptr<i64>
    llvm.store %arg1, %0 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt11char_traitsIcE6assignERcRKc(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i8>
    llvm.store %0, %arg0 : !llvm.ptr<i8>
    return
  }
  func.func @_ZSt10__distanceIPcENSt15iterator_traitsIT_E15difference_typeES2_S2_St26random_access_iterator_tag(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i8> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i8> to i64
    %2 = arith.subi %0, %1 : i64
    return %2 : i64
  }
  func.func @_ZSt19__iterator_categoryIPcENSt15iterator_traitsIT_E17iterator_categoryERKS2_(%arg0: !llvm.ptr<ptr<i8>>) -> !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    return %2 : !llvm.struct<(struct<(struct<(struct<(i8)>)>)>)>
  }
  func.func @_ZNSt11char_traitsIcE4copyEPcPKcm(%arg0: !llvm.ptr<i8>, %arg1: !llvm.ptr<i8>, %arg2: i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi eq, %arg2, %c0_i64 : i64
    scf.if %0 {
    } else {
      "llvm.intr.memcpy"(%arg0, %arg1, %arg2, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    return %arg0 : !llvm.ptr<i8>
  }
}
