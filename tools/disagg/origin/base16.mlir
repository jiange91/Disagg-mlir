module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str2("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("vector::reserve\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @strConst("construct without realloc\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @strFirstInt("first: %d\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(0 : i32) : i32
    %1 = llvm.mlir.constant(1 : i32) : i32
    %2 = llvm.mlir.constant(16 : i64) : i64
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.mlir.undef : i32
    %5 = llvm.alloca %3 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %4, %5 : !llvm.ptr<i32>
    %6 = llvm.alloca %3 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%6) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%6, %2) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    llvm.store %1, %5 : !llvm.ptr<i32>
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%6, %5) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()

    %a_s0 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %a_M_impl = llvm.getelementptr %a_s0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %a_M_impl_data = llvm.getelementptr %a_M_impl[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %a_M_start = llvm.getelementptr %a_M_impl_data[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %a_Start_ptr = llvm.load %a_M_start : !llvm.ptr<ptr<i32>> 
    %a_0 = llvm.load %a_Start_ptr : !llvm.ptr<i32>

    %int_0 = llvm.mlir.addressof @strFirstInt : !llvm.ptr<array<11 x i8>>
    %int_1 = llvm.getelementptr %int_0[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    %int_2 = llvm.call @printf(%int_1, %a_0) : (!llvm.ptr<i8>, i32) -> i32

    %7 = llvm.mlir.addressof @str0 : !llvm.ptr<array<4 x i8>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb1(%0 : i32)
  ^bb1(%9: i32):  // 2 preds: ^bb0, ^bb2
    %10 = llvm.sext %9 : i32 to i64
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%6) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %10, %11 : i64
    llvm.cond_br %12, ^bb2(%9 : i32), ^bb3
  ^bb2(%13: i32):  // pred: ^bb1
    %14 = llvm.sext %13 : i32 to i64
    %15 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%6, %14) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %16 = llvm.load %15 : !llvm.ptr<i32>
    %17 = llvm.call @printf(%8, %16) : (!llvm.ptr<i8>, i32) -> i32
    %18 = llvm.add %13, %1  : i32
    llvm.br ^bb1(%18 : i32)
  ^bb3:  // pred: ^bb1
    llvm.return %0 : i32
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %5 = llvm.alloca %2 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %6 = llvm.alloca %2 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str1 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %19 = llvm.getelementptr %18[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i32>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i32>>
    %24 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %25 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%21, %23, %17, %24) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.br ^bb6(%17 : !llvm.ptr<i32>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %28 = llvm.getelementptr %27[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<i32>>
    %31 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%30) : (!llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>)>
    llvm.store %31, %5 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%6, %5) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %32 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
    %34 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%33) : (!llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>)>
    llvm.store %34, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%4, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %35 = llvm.load %6 : !llvm.ptr<struct<(ptr<i32>)>>
    %36 = llvm.load %4 : !llvm.ptr<struct<(ptr<i32>)>>
    %37 = llvm.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<(ptr<i32>)>, !llvm.struct<(ptr<i32>)>) -> !llvm.ptr<i32>
    %38 = llvm.load %29 : !llvm.ptr<ptr<i32>>
    %39 = llvm.load %32 : !llvm.ptr<ptr<i32>>
    %40 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.call @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%38, %39, %40) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    llvm.br ^bb6(%37 : !llvm.ptr<i32>)
  ^bb6(%41: !llvm.ptr<i32>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %42 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %44 = llvm.getelementptr %43[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i32>>
    %47 = llvm.getelementptr %44[0, 2] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i32>>
    %49 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %50 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %51 = llvm.sub %50, %49  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%42, %46, %52) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %41, %45 : !llvm.ptr<ptr<i32>>
    %53 = llvm.getelementptr %44[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %54 = llvm.getelementptr %41[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %54, %53 : !llvm.ptr<ptr<i32>>
    %55 = llvm.load %45 : !llvm.ptr<ptr<i32>>
    %56 = llvm.getelementptr %55[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %56, %47 : !llvm.ptr<ptr<i32>>
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb2, ^bb7
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i32>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %here_0 = llvm.mlir.addressof @strConst: !llvm.ptr<array<27 x i8>>
    %here_1 = llvm.getelementptr %here_0[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %here_2 = llvm.call @printf(%here_1) : (!llvm.ptr<i8>) -> i32
    %11 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<(struct<(i8)>)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<(struct<(i8)>)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    llvm.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<(struct<(i8)>)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.store %17, %6 : !llvm.ptr<ptr<i32>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<(ptr<i32>)>
    llvm.store %18, %1 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<(ptr<i32>)>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %9 = llvm.ptrtoint %5 : !llvm.ptr<i32> to i64
    %10 = llvm.sub %9, %8  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %9 = llvm.ptrtoint %5 : !llvm.ptr<i32> to i64
    %10 = llvm.sub %9, %8  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() -> i8 {
    %0 = llvm.mlir.constant(false) : i1
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
    %4 = llvm.alloca %2 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
    %5 = llvm.alloca %2 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %6 = llvm.bitcast %4 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%6, %1, %2, %0) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
    llvm.store %7, %3 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
    %8 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<(i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<(i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<(i8)>>
    llvm.call @_ZNSt17integral_constantIbLb1EEC1EOS0_(%5, %14) : (!llvm.ptr<struct<(i8)>>, !llvm.ptr<struct<(i8)>>) -> ()
    %15 = llvm.load %5 : !llvm.ptr<struct<(i8)>>
    %16 = llvm.call @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%15) : (!llvm.struct<(i8)>) -> i8
    llvm.return %16 : i8
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<(struct<(i8)>)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<(struct<(i8)>)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<(struct<(i8)>)>>, i64) -> !llvm.ptr<i32>
    llvm.br ^bb3(%7 : !llvm.ptr<i32>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i32>
    llvm.br ^bb3(%8 : !llvm.ptr<i32>)
  ^bb3(%9: !llvm.ptr<i32>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %2 = llvm.alloca %0 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %3 = llvm.alloca %0 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %4 = llvm.load %2 : !llvm.ptr<struct<(i8)>>
    llvm.store %4, %1 : !llvm.ptr<struct<(i8)>>
    llvm.call @_ZNSt17integral_constantIbLb1EEC1EOS0_(%3, %1) : (!llvm.ptr<struct<(i8)>>, !llvm.ptr<struct<(i8)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<(i8)>>
    %6 = llvm.call @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0, %arg1, %arg2, %arg3, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>, !llvm.struct<(i8)>) -> !llvm.ptr<i32>
    llvm.return %6 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.return %4 : !llvm.ptr<struct<(struct<(i8)>)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<(ptr<i32>)>, %arg3: !llvm.struct<(ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<(ptr<i32>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<(ptr<i32>)>, !llvm.struct<(ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.return %6 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<(ptr<i32>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ES0_(%2, %arg0) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<i32>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %4, %1 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %1) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.return %5 : !llvm.struct<(ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<(struct<(i8)>)>>) {
    llvm.call @_ZSt8_DestroyIPiEvT_S1_(%arg0, %arg1) : (!llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<(struct<(i8)>)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<(struct<(i8)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<(i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<(ptr<i32>)>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<(ptr<i32>)>>
    %5 = llvm.mlir.addressof @str2 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %10 = llvm.getelementptr %9[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i32>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i32>>
    %15 = llvm.call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<(ptr<i32>)>
    llvm.store %15, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %18 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<(struct<(i8)>)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<(struct<(i8)>)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<(struct<(i8)>)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %23 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
    %27 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %28 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%12, %26, %17, %27) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i32>>
    %32 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %33 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%31, %14, %29, %32) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.br ^bb3(%33 : !llvm.ptr<i32>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i32>>
    %36 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i32>>
    %41 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.br ^bb3(%42 : !llvm.ptr<i32>)
  ^bb3(%43: !llvm.ptr<i32>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.call @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%12, %14, %46) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i32>>
    %49 = llvm.ptrtoint %12 : !llvm.ptr<i32> to i64
    %50 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %51 = llvm.sub %50, %49  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%8, %12, %52) : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i32>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i32>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %47 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<(ptr<i32>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<(ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.return %9 : !llvm.struct<(ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.call @_ZNSaIiEC1Ev(%0) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %1 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%1) : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    %3 = llvm.mlir.undef : i64
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %3, %4 : !llvm.ptr<i64>
    llvm.store %0, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> i64
    llvm.store %5, %2 : !llvm.ptr<i64>
    %6 = llvm.call @_ZSt3minImERKT_S2_S2_(%4, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %7 = llvm.load %6 : !llvm.ptr<i64>
    llvm.return %7 : i64
  }
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<(struct<(i8)>)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<(struct<(i8)>)>>
    llvm.return %4 : !llvm.ptr<struct<(struct<(i8)>)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<(i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<struct<(i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<(i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    llvm.return %2 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>, %arg4: !llvm.struct<(i8)>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<(ptr<i32>)>, %arg1: !llvm.struct<(ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<(ptr<i32>)>>
    %7 = llvm.call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<(ptr<i32>)>, !llvm.struct<(ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<(ptr<i32>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<(ptr<i32>)>>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPiEvT_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) {
    llvm.call @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0, %arg1) : (!llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<(i8)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.br ^bb9(%20 : i64)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%14 : i64)
  ^bb9(%21: i64):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    llvm.return %21 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<(ptr<i32>)>>, %arg1: !llvm.ptr<struct<(ptr<i32>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %3 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %6 = llvm.ptrtoint %2 : !llvm.ptr<i32> to i64
    %7 = llvm.sub %6, %5  : i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.return %8 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<(ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>, struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.return %9 : !llvm.struct<(ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.return %0 : !llvm.ptr<ptr<i32>>
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %5 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>)>
    llvm.store %5, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%4, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %6 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<(ptr<i32>)>
    llvm.store %6, %1 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %1) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<(ptr<i32>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<(ptr<i32>)>, !llvm.struct<(ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<(ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%0) : (!llvm.ptr<struct<(i8)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<struct<(i8)>>
    %1 = llvm.call @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%0) : (!llvm.ptr<struct<(i8)>>) -> i64
    llvm.return %1 : i64
  }
  llvm.func linkonce_odr @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0) : (!llvm.ptr<struct<(i8)>>) -> i64
    %2 = llvm.icmp "sgt" %arg1, %1 : i64
    llvm.cond_br %2, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt17__throw_bad_allocv() : () -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %3 = llvm.mul %arg1, %0  : i64
    %4 = llvm.call @_Znwm(%3) : (i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt12__niter_baseIPiET_S1_(%arg0) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %1 = llvm.call @_ZSt12__niter_baseIPiET_S1_(%arg1) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %2 = llvm.call @_ZSt12__niter_baseIPiET_S1_(%arg2) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %3 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%0, %1, %2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32>
    llvm.return %3 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<(ptr<i32>)>, %arg1: !llvm.struct<(ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<(ptr<i32>)>>
    %7 = llvm.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%5, %6, %arg2) : (!llvm.struct<(ptr<i32>)>, !llvm.struct<(ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg0 : !llvm.ptr<i64>
    %1 = llvm.load %arg1 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<(i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<(i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func @_ZSt17__throw_bad_allocv() attributes {sym_visibility = "private"}
  llvm.func @_Znwm(i64) -> !llvm.ptr<i8> attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %5 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %6 = llvm.sub %5, %4  : i64
    %7 = llvm.sdiv %6, %0  : i64
    %8 = llvm.icmp "sgt" %7, %3 : i64
    llvm.cond_br %8, ^bb1, ^bb5
  ^bb1:  // pred: ^bb0
    %9 = llvm.mul %7, %0  : i64
    %10 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %11 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.br ^bb2(%1 : i64)
  ^bb2(%12: i64):  // 2 preds: ^bb1, ^bb3
    %13 = llvm.icmp "slt" %12, %9 : i64
    llvm.cond_br %13, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %14 = llvm.trunc %12 : i64 to i32
    %15 = llvm.getelementptr %10[%14] : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
    %16 = llvm.load %15 : !llvm.ptr<i8>
    %17 = llvm.getelementptr %11[%14] : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
    llvm.store %16, %17 : !llvm.ptr<i8>
    %18 = llvm.add %12, %2  : i64
    llvm.br ^bb2(%18 : i64)
  ^bb4:  // pred: ^bb2
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb0, ^bb4
    %19 = llvm.getelementptr %arg2[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %19 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__niter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    llvm.return %arg0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<(ptr<i32>)>, %arg1: !llvm.struct<(ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<(ptr<i32>)>>
    %7 = llvm.call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<(ptr<i32>)>, !llvm.struct<(ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func @_ZdlPv(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<(ptr<i32>)>, %arg1: !llvm.struct<(ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<(ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<(ptr<i32>)>>
    %6 = llvm.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%5) : (!llvm.struct<(ptr<i32>)>) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<(ptr<i32>)>>, !llvm.ptr<struct<(ptr<i32>)>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<(ptr<i32>)>>
    %8 = llvm.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%7) : (!llvm.struct<(ptr<i32>)>) -> !llvm.ptr<i32>
    %9 = llvm.call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%6, %8, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.ptr<i32> : (i64) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg2, %1 : !llvm.ptr<ptr<i32>>
    %2 = llvm.call @_ZSt12__niter_baseIPiET_S1_(%arg0) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %3 = llvm.call @_ZSt12__niter_baseIPiET_S1_(%arg1) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %4 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %5 = llvm.call @_ZSt12__niter_baseIPiET_S1_(%4) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %6 = llvm.call @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%2, %3, %5) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    %7 = llvm.call @_ZSt12__niter_wrapIPiET_RKS1_S1_(%1, %6) : (!llvm.ptr<ptr<i32>>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<(ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<(ptr<i32>)> : (i64) -> !llvm.ptr<struct<(ptr<i32>)>>
    llvm.store %arg0, %1 : !llvm.ptr<struct<(ptr<i32>)>>
    %2 = llvm.call @_ZNKSt13move_iteratorIPiE4baseEv(%1) : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<i32>
    %3 = llvm.call @_ZSt12__miter_baseIPiET_S1_(%2) : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %3 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__niter_wrapIPiET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i32>>, %arg1: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    llvm.return %arg1 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    llvm.return %arg0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    llvm.return %1 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %5 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %6 = llvm.sub %5, %4  : i64
    %7 = llvm.sdiv %6, %0  : i64
    %8 = llvm.icmp "ne" %7, %3 : i64
    llvm.cond_br %8, ^bb1, ^bb5
  ^bb1:  // pred: ^bb0
    %9 = llvm.mul %7, %0  : i64
    %10 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %11 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.br ^bb2(%1 : i64)
  ^bb2(%12: i64):  // 2 preds: ^bb1, ^bb3
    %13 = llvm.icmp "slt" %12, %9 : i64
    llvm.cond_br %13, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %14 = llvm.trunc %12 : i64 to i32
    %15 = llvm.getelementptr %10[%14] : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
    %16 = llvm.load %15 : !llvm.ptr<i8>
    %17 = llvm.getelementptr %11[%14] : (!llvm.ptr<i8>, i32) -> !llvm.ptr<i8>
    llvm.store %16, %17 : !llvm.ptr<i8>
    %18 = llvm.add %12, %2  : i64
    llvm.br ^bb2(%18 : i64)
  ^bb4:  // pred: ^bb2
    llvm.br ^bb5
  ^bb5:  // 2 preds: ^bb0, ^bb4
    %19 = llvm.getelementptr %arg2[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %19 : !llvm.ptr<i32>
  }
}
