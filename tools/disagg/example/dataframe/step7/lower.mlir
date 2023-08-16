module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid14(i32, i16)
  llvm.func @cache_request_impl_14(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid10(i32, i16)
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_10(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_13(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_11(i32, i64, i32, i8) -> i32
  llvm.mlir.global internal constant @str6("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global external @pick_month_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @duration_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global external @pick_day_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @index_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str4("analyze_trip_durations_of_timestamps() on key = %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Step 8: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("Step 7: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("pickup_month\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("pickup_day\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(10 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %5 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %7 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %8 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %9 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %10 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %11 = llvm.alloca %3 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %12 = llvm.mlir.undef : i32
    llvm.call @_Z9ext_setupv() : () -> ()
    %13 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%14: i64):  // 2 preds: ^bb0, ^bb2
    %15 = llvm.icmp "slt" %14, %0 : i64
    llvm.cond_br %15, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %16 = llvm.getelementptr %13[%14] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%16) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    %17 = llvm.add %14, %2  : i64
    llvm.br ^bb1(%17 : i64)
  ^bb3:  // pred: ^bb1
    %18 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %18, %10 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %19 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%13, %10) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %20 = llvm.mlir.addressof @str0 : !llvm.ptr<array<11 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_Z29analyze_trip_durations_of_dayIsEvPKc(%21) : (!llvm.ptr<i8>) -> ()
    %22 = llvm.getelementptr %13[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %23 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %23, %9 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %24 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%22, %9) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %25 = llvm.mlir.addressof @str1 : !llvm.ptr<array<13 x i8>>
    %26 = llvm.getelementptr %25[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_Z31analyze_trip_durations_of_monthIsEvPKc(%26) : (!llvm.ptr<i8>) -> ()
    %27 = llvm.getelementptr %13[2] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %28 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %28, %8 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %29 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%27, %8) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %30 = llvm.mlir.addressof @str2 : !llvm.ptr<array<16 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %32 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%22, %13) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %32, %7 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %33 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%7) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %33, %6 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %34 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%6) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %35 = llvm.call @printf(%31, %34) : (!llvm.ptr<i8>, i64) -> i32
    %36 = llvm.mlir.addressof @str3 : !llvm.ptr<array<16 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %38 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%27, %22) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %38, %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %39 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%5) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %39, %4 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %40 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%4) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %41 = llvm.call @printf(%37, %40) : (!llvm.ptr<i8>, i64) -> i32
    llvm.return %12 : i32
  }
  llvm.func @_Z9ext_setupv() attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %3 = llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() : () -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %3, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%2, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = llvm.load %2 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %5, %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%0, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.return %arg0 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
  }
  llvm.func @_ZNSt6chrono3_V212steady_clock3nowEv() -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_Z29analyze_trip_durations_of_dayIsEvPKc(%arg0: !llvm.ptr<i8>) {
    %0 = llvm.mlir.constant(288 : i32) : i32
    %1 = llvm.mlir.constant(9663676416 : i64) : i64
    %2 = llvm.mlir.constant(12884901888 : i64) : i64
    %3 = llvm.mlir.constant(10737418240 : i64) : i64
    %4 = llvm.mlir.constant(1048576 : i64) : i64
    %5 = llvm.mlir.constant(-1048576 : i64) : i64
    %6 = llvm.mlir.constant(1 : i8) : i8
    %7 = llvm.mlir.constant(0 : i32) : i32
    %8 = llvm.mlir.constant(32 : i64) : i64
    %9 = llvm.mlir.constant(4194304 : i64) : i64
    %10 = llvm.mlir.constant(-4194304 : i64) : i64
    %11 = llvm.mlir.constant(9 : i64) : i64
    %12 = llvm.mlir.constant(8 : i64) : i64
    %13 = llvm.mlir.constant(524288 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(8 : index) : i64
    %16 = llvm.mlir.constant(9 : i32) : i32
    %17 = llvm.mlir.constant(524288 : i64) : i64
    %18 = llvm.mlir.constant(524287 : i64) : i64
    %19 = llvm.mlir.constant(0 : index) : i64
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    %22 = llvm.mlir.undef : i64
    llvm.store %22, %21 : !llvm.ptr<i64>
    %23 = llvm.alloca %20 x i16 : (i64) -> !llvm.ptr<i16>
    %24 = llvm.mlir.undef : i16
    llvm.store %24, %23 : !llvm.ptr<i16>
    %25 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %22, %25 : !llvm.ptr<i64>
    %26 = llvm.alloca %20 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %27 = llvm.alloca %20 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %28 = llvm.alloca %20 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %29 = llvm.mlir.addressof @str4 : !llvm.ptr<array<52 x i8>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %31 = llvm.call @printf(%30, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %32 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %34 = llvm.mlir.addressof @pick_day_col : !llvm.ptr<ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %36 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %37 = llvm.load %36 : !llvm.ptr<ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %38 = llvm.call @ridx_size_i64(%33) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%28) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%28, %38) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEEC1Ev(%27) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE7reserveEm(%27, %38) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%26) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%26, %38) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %39 = llvm.add %38, %18  : i64
    %40 = llvm.sdiv %39, %17  : i64
    %41 = llvm.alloca %16 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%19 : i64)
  ^bb1(%42: i64):  // 2 preds: ^bb0, ^bb2
    %43 = llvm.icmp "slt" %42, %15 : i64
    llvm.cond_br %43, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %44 = llvm.mul %42, %13  : i64
    %45 = llvm.trunc %42 : i64 to i32
    %46 = llvm.call @rdur_index_i64(%37, %44) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i64> to i64
    %48 = llvm.and %47, %10  : i64
    %49 = llvm.udiv %48, %9  : i64
    %50 = llvm.srem %49, %8  : i64
    %51 = llvm.trunc %50 : i64 to i32
    %52 = llvm.call @cache_request_impl_11(%7, %48, %51, %6) : (i32, i64, i32, i8) -> i32
    %53 = llvm.sext %45 : i32 to i64
    %54 = llvm.getelementptr %41[%53] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %51, %54 : !llvm.ptr<i32>
    %55 = llvm.add %42, %14  : i64
    llvm.br ^bb1(%55 : i64)
  ^bb3:  // pred: ^bb1
    %56 = llvm.alloca %16 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%19 : i64)
  ^bb4(%57: i64):  // 2 preds: ^bb3, ^bb5
    %58 = llvm.icmp "slt" %57, %15 : i64
    llvm.cond_br %58, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %59 = llvm.mul %57, %13  : i64
    %60 = llvm.trunc %57 : i64 to i32
    %61 = llvm.call @rday_index_i16(%35, %59) : (!llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %62 = llvm.ptrtoint %61 : !llvm.ptr<i16> to i64
    %63 = llvm.and %62, %5  : i64
    %64 = llvm.udiv %63, %4  : i64
    %65 = llvm.srem %64, %8  : i64
    %66 = llvm.trunc %65 : i64 to i32
    %67 = llvm.call @cache_request_impl_13(%7, %63, %66, %6) : (i32, i64, i32, i8) -> i32
    %68 = llvm.sext %60 : i32 to i64
    %69 = llvm.getelementptr %56[%68] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %66, %69 : !llvm.ptr<i32>
    %70 = llvm.add %57, %14  : i64
    llvm.br ^bb4(%70 : i64)
  ^bb6:  // pred: ^bb4
    %71 = llvm.alloca %16 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb7(%19 : i64)
  ^bb7(%72: i64):  // 2 preds: ^bb6, ^bb8
    %73 = llvm.icmp "slt" %72, %15 : i64
    llvm.cond_br %73, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %74 = llvm.mul %72, %13  : i64
    %75 = llvm.trunc %72 : i64 to i32
    %76 = llvm.call @ridx_index_i64(%33, %74) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %77 = llvm.ptrtoint %76 : !llvm.ptr<i64> to i64
    %78 = llvm.and %77, %10  : i64
    %79 = llvm.udiv %78, %9  : i64
    %80 = llvm.srem %79, %8  : i64
    %81 = llvm.trunc %80 : i64 to i32
    %82 = llvm.call @cache_request_impl_10(%7, %78, %81, %6) : (i32, i64, i32, i8) -> i32
    %83 = llvm.sext %75 : i32 to i64
    %84 = llvm.getelementptr %71[%83] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %81, %84 : !llvm.ptr<i32>
    %85 = llvm.add %72, %14  : i64
    llvm.br ^bb7(%85 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%19 : i64)
  ^bb10(%86: i64):  // 2 preds: ^bb9, ^bb20
    %87 = llvm.icmp "slt" %86, %40 : i64
    llvm.cond_br %87, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %88 = llvm.add %86, %12  : i64
    %89 = llvm.icmp "slt" %88, %40 : i64
    llvm.cond_br %89, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %90 = llvm.srem %88, %11  : i64
    %91 = llvm.trunc %90 : i64 to i32
    %92 = llvm.mul %88, %13  : i64
    %93 = llvm.call @rdur_index_i64(%37, %92) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<i64> to i64
    %95 = llvm.and %94, %10  : i64
    %96 = llvm.udiv %95, %9  : i64
    %97 = llvm.srem %96, %8  : i64
    %98 = llvm.trunc %97 : i64 to i32
    %99 = llvm.call @cache_request_impl_11(%7, %95, %98, %6) : (i32, i64, i32, i8) -> i32
    %100 = llvm.sext %91 : i32 to i64
    %101 = llvm.getelementptr %41[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %98, %101 : !llvm.ptr<i32>
    %102 = llvm.call @rday_index_i16(%35, %92) : (!llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %103 = llvm.ptrtoint %102 : !llvm.ptr<i16> to i64
    %104 = llvm.and %103, %5  : i64
    %105 = llvm.udiv %104, %4  : i64
    %106 = llvm.srem %105, %8  : i64
    %107 = llvm.trunc %106 : i64 to i32
    %108 = llvm.call @cache_request_impl_13(%7, %104, %107, %6) : (i32, i64, i32, i8) -> i32
    %109 = llvm.getelementptr %56[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %107, %109 : !llvm.ptr<i32>
    %110 = llvm.call @ridx_index_i64(%33, %92) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %111 = llvm.ptrtoint %110 : !llvm.ptr<i64> to i64
    %112 = llvm.and %111, %10  : i64
    %113 = llvm.udiv %112, %9  : i64
    %114 = llvm.srem %113, %8  : i64
    %115 = llvm.trunc %114 : i64 to i32
    %116 = llvm.call @cache_request_impl_10(%7, %112, %115, %6) : (i32, i64, i32, i8) -> i32
    %117 = llvm.getelementptr %71[%100] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %115, %117 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %118 = llvm.mul %86, %13  : i64
    %119 = llvm.call @rdur_index_i64(%37, %118) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %120 = llvm.srem %86, %11  : i64
    %121 = llvm.getelementptr %41[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %122 = llvm.load %121 : !llvm.ptr<i32>
    %123 = llvm.ptrtoint %119 : !llvm.ptr<i64> to i64
    %124 = llvm.sext %122 : i32 to i64
    %125 = llvm.mul %124, %9  : i64
    %126 = llvm.srem %123, %9  : i64
    %127 = llvm.add %125, %126  : i64
    %128 = llvm.add %127, %3  : i64
    %129 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %130 = llvm.load %129 : !llvm.ptr<ptr<i8>>
    %131 = llvm.getelementptr %130[%128] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %132 = llvm.bitcast %131 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %133 = llvm.call @rday_index_i16(%35, %118) : (!llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %134 = llvm.getelementptr %56[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %135 = llvm.load %134 : !llvm.ptr<i32>
    %136 = llvm.ptrtoint %133 : !llvm.ptr<i16> to i64
    %137 = llvm.sext %135 : i32 to i64
    %138 = llvm.mul %137, %4  : i64
    %139 = llvm.srem %136, %4  : i64
    %140 = llvm.add %138, %139  : i64
    %141 = llvm.add %140, %2  : i64
    %142 = llvm.load %129 : !llvm.ptr<ptr<i8>>
    %143 = llvm.getelementptr %142[%141] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %144 = llvm.bitcast %143 : !llvm.ptr<i8> to !llvm.ptr<i16>
    %145 = llvm.call @ridx_index_i64(%33, %118) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %146 = llvm.getelementptr %71[%120] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %147 = llvm.load %146 : !llvm.ptr<i32>
    %148 = llvm.ptrtoint %145 : !llvm.ptr<i64> to i64
    %149 = llvm.sext %147 : i32 to i64
    %150 = llvm.mul %149, %9  : i64
    %151 = llvm.srem %148, %9  : i64
    %152 = llvm.add %150, %151  : i64
    %153 = llvm.add %152, %1  : i64
    %154 = llvm.load %129 : !llvm.ptr<ptr<i8>>
    %155 = llvm.getelementptr %154[%153] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %156 = llvm.bitcast %155 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %157 = llvm.add %147, %0  : i32
    %158 = llvm.sext %157 : i32 to i64
    %159 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %160 = llvm.getelementptr %159[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %161 = llvm.getelementptr %160[%158] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %162 = llvm.getelementptr %161[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %163 = llvm.load %162 : !llvm.ptr<i16>
    llvm.call @poll_qid10(%16, %163) : (i32, i16) -> ()
    %164 = llvm.add %86, %20  : i64
    %165 = llvm.mul %164, %17  : i64
    %166 = llvm.icmp "sgt" %38, %165 : i64
    llvm.cond_br %166, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%17 : i64)
  ^bb15:  // pred: ^bb13
    %167 = llvm.mul %86, %17  : i64
    %168 = llvm.sub %38, %167  : i64
    llvm.br ^bb16(%168 : i64)
  ^bb16(%169: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %170 = llvm.mul %86, %17  : i64
    llvm.br ^bb18(%19 : i64)
  ^bb18(%171: i64):  // 2 preds: ^bb17, ^bb19
    %172 = llvm.icmp "slt" %171, %169 : i64
    llvm.cond_br %172, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %173 = llvm.add %171, %170  : i64
    %174 = llvm.getelementptr %132[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %175 = llvm.getelementptr %144[%171] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %176 = llvm.getelementptr %156[%171] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.call @ridx_index_i64(%33, %173) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %178 = llvm.load %176 : !llvm.ptr<i64>
    llvm.store %178, %25 : !llvm.ptr<i64>
    %179 = llvm.call @rday_index_i16(%35, %173) : (!llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %180 = llvm.load %175 : !llvm.ptr<i16>
    llvm.store %180, %23 : !llvm.ptr<i16>
    %181 = llvm.call @rdur_index_i64(%37, %173) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %182 = llvm.load %174 : !llvm.ptr<i64>
    llvm.store %182, %21 : !llvm.ptr<i64>
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%28, %25) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%27, %23) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%26, %21) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    %183 = llvm.add %171, %14  : i64
    llvm.br ^bb18(%183 : i64)
  ^bb20:  // pred: ^bb18
    %184 = llvm.add %86, %14  : i64
    llvm.br ^bb10(%184 : i64)
  ^bb21:  // pred: ^bb10
    llvm.call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %28, %27, %26) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_Z31analyze_trip_durations_of_monthIsEvPKc(%arg0: !llvm.ptr<i8>) {
    %0 = llvm.mlir.constant(13 : i32) : i32
    %1 = llvm.mlir.constant(416 : i32) : i32
    %2 = llvm.mlir.constant(13958643712 : i64) : i64
    %3 = llvm.mlir.constant(9663676416 : i64) : i64
    %4 = llvm.mlir.constant(10737418240 : i64) : i64
    %5 = llvm.mlir.constant(1048576 : i64) : i64
    %6 = llvm.mlir.constant(-1048576 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(32 : i64) : i64
    %10 = llvm.mlir.constant(4194304 : i64) : i64
    %11 = llvm.mlir.constant(-4194304 : i64) : i64
    %12 = llvm.mlir.constant(9 : i64) : i64
    %13 = llvm.mlir.constant(8 : i64) : i64
    %14 = llvm.mlir.constant(524288 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(8 : index) : i64
    %17 = llvm.mlir.constant(9 : i32) : i32
    %18 = llvm.mlir.constant(524288 : i64) : i64
    %19 = llvm.mlir.constant(524287 : i64) : i64
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.mlir.constant(1 : i64) : i64
    %22 = llvm.alloca %21 x i64 : (i64) -> !llvm.ptr<i64>
    %23 = llvm.mlir.undef : i64
    llvm.store %23, %22 : !llvm.ptr<i64>
    %24 = llvm.alloca %21 x i16 : (i64) -> !llvm.ptr<i16>
    %25 = llvm.mlir.undef : i16
    llvm.store %25, %24 : !llvm.ptr<i16>
    %26 = llvm.alloca %21 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %23, %26 : !llvm.ptr<i64>
    %27 = llvm.alloca %21 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %28 = llvm.alloca %21 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %29 = llvm.alloca %21 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %30 = llvm.mlir.addressof @str4 : !llvm.ptr<array<52 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %32 = llvm.call @printf(%31, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %33 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %34 = llvm.load %33 : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %35 = llvm.mlir.addressof @pick_month_col : !llvm.ptr<ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %37 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %39 = llvm.call @ridx_size_i64(%34) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%29) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%29, %39) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEEC1Ev(%28) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE7reserveEm(%28, %39) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%27) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%27, %39) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %40 = llvm.add %39, %19  : i64
    %41 = llvm.sdiv %40, %18  : i64
    %42 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%20 : i64)
  ^bb1(%43: i64):  // 2 preds: ^bb0, ^bb2
    %44 = llvm.icmp "slt" %43, %16 : i64
    llvm.cond_br %44, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %45 = llvm.mul %43, %14  : i64
    %46 = llvm.trunc %43 : i64 to i32
    %47 = llvm.call @rdur_index_i64(%38, %45) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i64> to i64
    %49 = llvm.and %48, %11  : i64
    %50 = llvm.udiv %49, %10  : i64
    %51 = llvm.srem %50, %9  : i64
    %52 = llvm.trunc %51 : i64 to i32
    %53 = llvm.call @cache_request_impl_11(%8, %49, %52, %7) : (i32, i64, i32, i8) -> i32
    %54 = llvm.sext %46 : i32 to i64
    %55 = llvm.getelementptr %42[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %52, %55 : !llvm.ptr<i32>
    %56 = llvm.add %43, %15  : i64
    llvm.br ^bb1(%56 : i64)
  ^bb3:  // pred: ^bb1
    %57 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%20 : i64)
  ^bb4(%58: i64):  // 2 preds: ^bb3, ^bb5
    %59 = llvm.icmp "slt" %58, %16 : i64
    llvm.cond_br %59, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %60 = llvm.mul %58, %14  : i64
    %61 = llvm.trunc %58 : i64 to i32
    %62 = llvm.call @ridx_index_i64(%34, %60) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i64> to i64
    %64 = llvm.and %63, %11  : i64
    %65 = llvm.udiv %64, %10  : i64
    %66 = llvm.srem %65, %9  : i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.call @cache_request_impl_10(%8, %64, %67, %7) : (i32, i64, i32, i8) -> i32
    %69 = llvm.sext %61 : i32 to i64
    %70 = llvm.getelementptr %57[%69] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %67, %70 : !llvm.ptr<i32>
    %71 = llvm.add %58, %15  : i64
    llvm.br ^bb4(%71 : i64)
  ^bb6:  // pred: ^bb4
    %72 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb7(%20 : i64)
  ^bb7(%73: i64):  // 2 preds: ^bb6, ^bb8
    %74 = llvm.icmp "slt" %73, %16 : i64
    llvm.cond_br %74, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %75 = llvm.mul %73, %14  : i64
    %76 = llvm.trunc %73 : i64 to i32
    %77 = llvm.call @rmon_index_i16(%36, %75) : (!llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i16> to i64
    %79 = llvm.and %78, %6  : i64
    %80 = llvm.udiv %79, %5  : i64
    %81 = llvm.srem %80, %9  : i64
    %82 = llvm.trunc %81 : i64 to i32
    %83 = llvm.call @cache_request_impl_14(%8, %79, %82, %7) : (i32, i64, i32, i8) -> i32
    %84 = llvm.sext %76 : i32 to i64
    %85 = llvm.getelementptr %72[%84] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %82, %85 : !llvm.ptr<i32>
    %86 = llvm.add %73, %15  : i64
    llvm.br ^bb7(%86 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%20 : i64)
  ^bb10(%87: i64):  // 2 preds: ^bb9, ^bb20
    %88 = llvm.icmp "slt" %87, %41 : i64
    llvm.cond_br %88, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %89 = llvm.add %87, %13  : i64
    %90 = llvm.icmp "slt" %89, %41 : i64
    llvm.cond_br %90, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %91 = llvm.srem %89, %12  : i64
    %92 = llvm.trunc %91 : i64 to i32
    %93 = llvm.mul %89, %14  : i64
    %94 = llvm.call @rdur_index_i64(%38, %93) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i64> to i64
    %96 = llvm.and %95, %11  : i64
    %97 = llvm.udiv %96, %10  : i64
    %98 = llvm.srem %97, %9  : i64
    %99 = llvm.trunc %98 : i64 to i32
    %100 = llvm.call @cache_request_impl_11(%8, %96, %99, %7) : (i32, i64, i32, i8) -> i32
    %101 = llvm.sext %92 : i32 to i64
    %102 = llvm.getelementptr %42[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %99, %102 : !llvm.ptr<i32>
    %103 = llvm.call @ridx_index_i64(%34, %93) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i64> to i64
    %105 = llvm.and %104, %11  : i64
    %106 = llvm.udiv %105, %10  : i64
    %107 = llvm.srem %106, %9  : i64
    %108 = llvm.trunc %107 : i64 to i32
    %109 = llvm.call @cache_request_impl_10(%8, %105, %108, %7) : (i32, i64, i32, i8) -> i32
    %110 = llvm.getelementptr %57[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %110 : !llvm.ptr<i32>
    %111 = llvm.call @rmon_index_i16(%36, %93) : (!llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i16> to i64
    %113 = llvm.and %112, %6  : i64
    %114 = llvm.udiv %113, %5  : i64
    %115 = llvm.srem %114, %9  : i64
    %116 = llvm.trunc %115 : i64 to i32
    %117 = llvm.call @cache_request_impl_14(%8, %113, %116, %7) : (i32, i64, i32, i8) -> i32
    %118 = llvm.getelementptr %72[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %116, %118 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %119 = llvm.mul %87, %14  : i64
    %120 = llvm.call @rdur_index_i64(%38, %119) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %121 = llvm.srem %87, %12  : i64
    %122 = llvm.getelementptr %42[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.ptrtoint %120 : !llvm.ptr<i64> to i64
    %125 = llvm.sext %123 : i32 to i64
    %126 = llvm.mul %125, %10  : i64
    %127 = llvm.srem %124, %10  : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.add %128, %4  : i64
    %130 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %131 = llvm.load %130 : !llvm.ptr<ptr<i8>>
    %132 = llvm.getelementptr %131[%129] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %134 = llvm.call @ridx_index_i64(%34, %119) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %135 = llvm.getelementptr %57[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.load %135 : !llvm.ptr<i32>
    %137 = llvm.ptrtoint %134 : !llvm.ptr<i64> to i64
    %138 = llvm.sext %136 : i32 to i64
    %139 = llvm.mul %138, %10  : i64
    %140 = llvm.srem %137, %10  : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.add %141, %3  : i64
    %143 = llvm.load %130 : !llvm.ptr<ptr<i8>>
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %146 = llvm.call @rmon_index_i16(%36, %119) : (!llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %147 = llvm.getelementptr %72[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.ptrtoint %146 : !llvm.ptr<i16> to i64
    %150 = llvm.sext %148 : i32 to i64
    %151 = llvm.mul %150, %5  : i64
    %152 = llvm.srem %149, %5  : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.add %153, %2  : i64
    %155 = llvm.load %130 : !llvm.ptr<ptr<i8>>
    %156 = llvm.getelementptr %155[%154] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<i16>
    %158 = llvm.add %148, %1  : i32
    %159 = llvm.sext %158 : i32 to i64
    %160 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %161 = llvm.getelementptr %160[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %163 = llvm.getelementptr %162[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %164 = llvm.load %163 : !llvm.ptr<i16>
    llvm.call @poll_qid14(%0, %164) : (i32, i16) -> ()
    %165 = llvm.add %87, %21  : i64
    %166 = llvm.mul %165, %18  : i64
    %167 = llvm.icmp "sgt" %39, %166 : i64
    llvm.cond_br %167, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%18 : i64)
  ^bb15:  // pred: ^bb13
    %168 = llvm.mul %87, %18  : i64
    %169 = llvm.sub %39, %168  : i64
    llvm.br ^bb16(%169 : i64)
  ^bb16(%170: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %171 = llvm.mul %87, %18  : i64
    llvm.br ^bb18(%20 : i64)
  ^bb18(%172: i64):  // 2 preds: ^bb17, ^bb19
    %173 = llvm.icmp "slt" %172, %170 : i64
    llvm.cond_br %173, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %174 = llvm.add %172, %171  : i64
    %175 = llvm.getelementptr %133[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %176 = llvm.getelementptr %145[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.getelementptr %157[%172] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %178 = llvm.call @ridx_index_i64(%34, %174) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %179 = llvm.load %176 : !llvm.ptr<i64>
    llvm.store %179, %26 : !llvm.ptr<i64>
    %180 = llvm.call @rmon_index_i16(%36, %174) : (!llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %181 = llvm.load %177 : !llvm.ptr<i16>
    llvm.store %181, %24 : !llvm.ptr<i16>
    %182 = llvm.call @rdur_index_i64(%38, %174) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %183 = llvm.load %175 : !llvm.ptr<i64>
    llvm.store %183, %22 : !llvm.ptr<i64>
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%29, %26) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%28, %24) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%27, %22) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    %184 = llvm.add %172, %15  : i64
    llvm.br ^bb18(%184 : i64)
  ^bb20:  // pred: ^bb18
    %185 = llvm.add %87, %15  : i64
    llvm.br ^bb10(%185 : i64)
  ^bb21:  // pred: ^bb10
    llvm.call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %29, %28, %27) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.return %1 : i64
  }
  llvm.func linkonce_odr @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %2 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %3 = llvm.call @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %3, %1 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%2, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.return %4 : !llvm.struct<"struct.std::chrono::duration.0", (i64)>
  }
  llvm.func linkonce_odr @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %3 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = llvm.call @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %5, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.call @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg1) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %6, %2 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %7 = llvm.call @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%3, %2) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %7, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%4, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %8 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.return %8 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  llvm.func linkonce_odr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() -> !llvm.struct<"struct.std::chrono::duration", (i64)> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.undef : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    %5 = llvm.alloca %1 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %1 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %0, %3 : !llvm.ptr<i64>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%5, %3) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<i64>) -> ()
    %7 = llvm.load %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %7, %2 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%6, %2) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %8 = llvm.load %6 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.return %8 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  llvm.func linkonce_odr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %2 = llvm.load %1 : !llvm.ptr<i64>
    llvm.store %2, %0 : !llvm.ptr<i64>
    llvm.return %arg0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @ridx_size_i64(%arg0: !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseImSaImEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorImSaImEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i64>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i64>>
    %24 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %25 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%21, %23, %17, %24) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.br ^bb6(%17 : !llvm.ptr<i64>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<i64>>
    %31 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%30) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
    llvm.store %31, %5 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1EOS1_(%6, %5) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %32 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<i64>>
    %34 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%33) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
    llvm.store %34, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %35 = llvm.load %6 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %36 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %37 = llvm.call @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
    %38 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.br ^bb6(%37 : !llvm.ptr<i64>)
  ^bb6(%39: !llvm.ptr<i64>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %40 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<i64>>
    %45 = llvm.getelementptr %42[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i64>>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i64> to i64
    %48 = llvm.ptrtoint %44 : !llvm.ptr<i64> to i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.sdiv %49, %0  : i64
    llvm.call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%40, %44, %50) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.store %39, %43 : !llvm.ptr<ptr<i64>>
    %51 = llvm.getelementptr %42[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %52 = llvm.getelementptr %39[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %52, %51 : !llvm.ptr<ptr<i64>>
    %53 = llvm.load %43 : !llvm.ptr<ptr<i64>>
    %54 = llvm.getelementptr %53[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %54, %45 : !llvm.ptr<ptr<i64>>
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb2, ^bb7
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %7 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i16>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i16>>
    %24 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %25 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%21, %23, %17, %24) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.br ^bb6(%17 : !llvm.ptr<i16>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<i16>>
    %31 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%30) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
    llvm.store %31, %5 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%6, %5) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %32 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<i16>>
    %34 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%33) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
    llvm.store %34, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %35 = llvm.load %6 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %36 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %37 = llvm.call @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16>
    %38 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.br ^bb6(%37 : !llvm.ptr<i16>)
  ^bb6(%39: !llvm.ptr<i16>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %40 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<i16>>
    %45 = llvm.getelementptr %42[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i16>>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i16> to i64
    %48 = llvm.ptrtoint %44 : !llvm.ptr<i16> to i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.sdiv %49, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%40, %44, %50) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.store %39, %43 : !llvm.ptr<ptr<i16>>
    %51 = llvm.getelementptr %42[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %52 = llvm.getelementptr %39[%13] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %52, %51 : !llvm.ptr<ptr<i16>>
    %53 = llvm.load %43 : !llvm.ptr<ptr<i16>>
    %54 = llvm.getelementptr %53[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %54, %45 : !llvm.ptr<ptr<i16>>
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb2, ^bb7
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @ridx_index_i64(%arg0: !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @rdur_index_i64(%arg0: !llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @rday_index_i16(%arg0: !llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rday::class.std::vector.1", (struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rday::struct.std::_Vector_base.2", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @rmon_index_i16(%arg0: !llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rmon::class.std::vector.1", (struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rmon::struct.std::_Vector_base.2", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE9push_backERKm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.ptr<i64>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i64>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i64>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %11 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    llvm.call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.store %17, %6 : !llvm.ptr<ptr<i64>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorImSaImEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
    llvm.store %18, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE9push_backERKs(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.ptr<i16>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i16>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i16>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %11 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    llvm.call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.store %17, %6 : !llvm.ptr<ptr<i16>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorIsSaIsEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
    llvm.store %18, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.call @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>, !llvm.ptr<i16>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
  }
  llvm.func @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)> {
    %0 = llvm.mlir.constant(1000 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.undef : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    %5 = llvm.alloca %1 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %6 = llvm.alloca %1 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %7 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.store %8, %3 : !llvm.ptr<i64>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%5, %3) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<i64>) -> ()
    %9 = llvm.load %5 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.store %9, %2 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%6, %2) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> ()
    %10 = llvm.load %6 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.return %10 : !llvm.struct<"struct.std::chrono::duration.0", (i64)>
  }
  llvm.func linkonce_odr @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %0 x i64 : (i64) -> !llvm.ptr<i64>
    %3 = llvm.mlir.undef : i64
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %7 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %8 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %9 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%7, %arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %10 = llvm.load %7 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %10, %6 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %11 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%6) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%5, %arg1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %12 = llvm.load %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %12, %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %13 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%4) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    %14 = llvm.sub %11, %13  : i64
    llvm.store %14, %2 : !llvm.ptr<i64>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%8, %2) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<i64>) -> ()
    %15 = llvm.load %8 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %15, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%9, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %16 = llvm.load %9 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.return %16 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  llvm.func linkonce_odr @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%1, %2) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.return %3 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  llvm.func linkonce_odr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<i64>) {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6chrono15duration_valuesIlE4zeroEv() -> i64 {
    %0 = llvm.mlir.constant(0 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    llvm.call @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.call @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %4 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE15_S_use_relocateEv() -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i8) : i8
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::__is_move_insertable", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>>
    %5 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%5, %2, %3, %1) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, i64) -> !llvm.ptr<i64>
    llvm.br ^bb3(%7 : !llvm.ptr<i64>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i64>
    llvm.br ^bb3(%8 : !llvm.ptr<i64>)
  ^bb3(%9: !llvm.ptr<i64>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %6 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPmEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%arg0: !llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1ES0_(%2, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<i64>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %4, %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1EOS1_(%3, %1) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.return %5 : !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.call @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.call @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %4 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i16>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i16> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i16> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i16>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i16> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i16> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i8) : i8
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::__is_move_insertable.8", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable.8", (i8)>>
    %5 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::__is_move_insertable.8", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%5, %2, %3, %1) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, i64) -> !llvm.ptr<i16>
    llvm.br ^bb3(%7 : !llvm.ptr<i16>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i16>
    llvm.br ^bb3(%8 : !llvm.ptr<i16>)
  ^bb3(%9: !llvm.ptr<i16>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg3: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %6 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPsEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0: !llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ES0_(%2, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<i16>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %4, %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%3, %1) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.return %5 : !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i16>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i16>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.call @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %5 = llvm.mlir.addressof @str6 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i64>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i64>>
    %15 = llvm.call @_ZNSt6vectorImSaImEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
    llvm.store %15, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    %18 = llvm.bitcast %9 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    %23 = llvm.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i64>>
    %27 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %28 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%12, %26, %17, %27) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i64>>
    %32 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %33 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%31, %14, %29, %32) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.br ^bb3(%33 : !llvm.ptr<i64>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i64>>
    %36 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i64>>
    %41 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.br ^bb3(%42 : !llvm.ptr<i64>)
  ^bb3(%43: !llvm.ptr<i64>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i64>>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i64> to i64
    %50 = llvm.ptrtoint %12 : !llvm.ptr<i64> to i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%8, %12, %52) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i64>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i64>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %47 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %5 = llvm.mlir.addressof @str6 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i16>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i16>>
    %15 = llvm.call @_ZNSt6vectorIsSaIsEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
    llvm.store %15, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    %18 = llvm.bitcast %9 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    %23 = llvm.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i16>>
    %27 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %28 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%12, %26, %17, %27) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i16>>
    %32 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %33 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%31, %14, %29, %32) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.br ^bb3(%33 : !llvm.ptr<i16>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i16>>
    %36 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i16>>
    %41 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.br ^bb3(%42 : !llvm.ptr<i16>)
  ^bb3(%43: !llvm.ptr<i16>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i16>>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i16> to i64
    %50 = llvm.ptrtoint %12 : !llvm.ptr<i16> to i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%8, %12, %52) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i16>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i16>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %53, %47 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
  }
  llvm.func linkonce_odr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, %arg1: !llvm.ptr<i64>) {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.return %1 : i64
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    llvm.call @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(1152921504606846975 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    %3 = llvm.mlir.undef : i64
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %3, %4 : !llvm.ptr<i64>
    llvm.store %0, %4 : !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    %5 = llvm.call @_ZSt3minImERKT_S2_S2_(%4, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %6 = llvm.load %5 : !llvm.ptr<i64>
    llvm.return %6 : i64
  }
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.return %2 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = llvm.call @_ZSt18uninitialized_copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.return %7 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPmEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPmEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<i64>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPmEvT_S1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(4611686018427387903 : i64) : i64
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    %3 = llvm.mlir.undef : i64
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %3, %4 : !llvm.ptr<i64>
    llvm.store %0, %4 : !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    %5 = llvm.call @_ZSt3minImERKT_S2_S2_(%4, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %6 = llvm.load %5 : !llvm.ptr<i64>
    llvm.return %6 : i64
  }
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i16>
    llvm.return %2 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE14_S_do_relocateEPsS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %7 = llvm.call @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %7 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPsEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPsEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, %arg1: !llvm.ptr<i16>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPsEvT_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) {
    %0 = llvm.load %arg2 : !llvm.ptr<i64>
    llvm.store %0, %arg1 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.br ^bb9(%20 : i64)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%14 : i64)
  ^bb9(%21: i64):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    llvm.return %21 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i64>>
    %3 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.ptrtoint %2 : !llvm.ptr<i64> to i64
    %6 = llvm.ptrtoint %4 : !llvm.ptr<i64> to i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.return %8 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.return %0 : !llvm.ptr<ptr<i64>>
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%arg0) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
    llvm.store %5, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %6 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%arg1) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
    llvm.store %6, %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1EOS1_(%2, %1) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %9 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<ptr<i64>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i64>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) {
    %0 = llvm.load %arg2 : !llvm.ptr<i16>
    llvm.store %0, %arg1 : !llvm.ptr<i16>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    llvm.br ^bb9(%20 : i64)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%14 : i64)
  ^bb9(%21: i64):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    llvm.return %21 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> i64 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i16>>
    %3 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.ptrtoint %2 : !llvm.ptr<i16> to i64
    %6 = llvm.ptrtoint %4 : !llvm.ptr<i16> to i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.return %8 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.return %0 : !llvm.ptr<ptr<i16>>
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
    llvm.store %5, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %6 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg1) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
    llvm.store %6, %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%2, %1) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %9 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, %arg1: !llvm.ptr<ptr<i16>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i16>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSaImEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i64>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(1152921504606846975 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(1152921504606846975 : i64) : i64
    %2 = llvm.icmp "sgt" %arg1, %1 : i64
    llvm.cond_br %2, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt17__throw_bad_allocv() : () -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %3 = llvm.mul %arg1, %0  : i64
    %4 = llvm.call @_Znwm(%3) : (i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt18uninitialized_copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = llvm.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPmES3_EET0_T_S6_S5_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.return %7 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSaIsEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) {
    %0 = llvm.mlir.null : !llvm.ptr<i16>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i16>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(4611686018427387903 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(4611686018427387903 : i64) : i64
    %2 = llvm.icmp "sgt" %arg1, %1 : i64
    llvm.cond_br %2, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt17__throw_bad_allocv() : () -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %3 = llvm.mul %arg1, %0  : i64
    %4 = llvm.call @_Znwm(%3) : (i64) -> !llvm.ptr<i8>
    %5 = llvm.bitcast %4 : !llvm.ptr<i8> to !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt12__relocate_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %7 = llvm.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %7 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i16> to !llvm.ptr<i8>
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
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(1152921504606846975 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func @_ZSt17__throw_bad_allocv() attributes {sym_visibility = "private"}
  llvm.func @_Znwm(i64) -> !llvm.ptr<i8> attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.ptrtoint %arg1 : !llvm.ptr<i64> to i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i64> to i64
    %5 = llvm.sub %3, %4  : i64
    %6 = llvm.sdiv %5, %0  : i64
    %7 = llvm.icmp "sgt" %6, %2 : i64
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.bitcast %arg2 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %9 = llvm.bitcast %arg0 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %10 = llvm.mul %6, %0  : i64
    "llvm.intr.memmove"(%8, %9, %10, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.getelementptr %arg2[%6] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %11 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt12__niter_baseIPmET_S1_(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    llvm.return %arg0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPmES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = llvm.call @_ZSt4copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.return %7 : !llvm.ptr<i64>
  }
  llvm.func @_ZdlPv(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(4611686018427387903 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.ptrtoint %arg1 : !llvm.ptr<i16> to i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i16> to i64
    %5 = llvm.sub %3, %4  : i64
    %6 = llvm.sdiv %5, %0  : i64
    %7 = llvm.icmp "sgt" %6, %2 : i64
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.bitcast %arg2 : !llvm.ptr<i16> to !llvm.ptr<i8>
    %9 = llvm.bitcast %arg0 : !llvm.ptr<i16> to !llvm.ptr<i8>
    %10 = llvm.mul %6, %0  : i64
    "llvm.intr.memmove"(%8, %9, %10, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.getelementptr %arg2[%6] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %11 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt12__niter_baseIPsET_S1_(%arg0: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    llvm.return %arg0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %7 = llvm.call @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %7 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt4copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = llvm.call @_ZSt12__miter_baseIPmEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%5) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %8 = llvm.call @_ZSt12__miter_baseIPmEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%7) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
    %9 = llvm.call @_ZSt14__copy_move_a2ILb1EPmS0_ET1_T0_S2_S1_(%6, %8, %arg2) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.return %9 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = llvm.call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%5) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %8 = llvm.call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%7) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16>
    %9 = llvm.call @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(%6, %8, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %9 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt14__copy_move_a2ILb1EPmS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPmEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.call @_ZNKSt13move_iteratorIPmE4baseEv(%1) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<i64>
    llvm.return %2 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.call @_ZNKSt13move_iteratorIPsE4baseEv(%1) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<i16>
    llvm.return %2 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt12__niter_wrapIPmET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i64>>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    llvm.return %arg1 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt13__copy_move_aILb1EPmS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPmET_S1_(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    llvm.return %arg0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNKSt13move_iteratorIPmE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    llvm.return %1 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt12__niter_wrapIPsET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i16>>, %arg1: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    llvm.return %arg1 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt13__copy_move_aILb1EPsS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPsET_S1_(%arg0: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    llvm.return %arg0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNKSt13move_iteratorIPsE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    llvm.return %1 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.ptrtoint %arg1 : !llvm.ptr<i64> to i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i64> to i64
    %5 = llvm.sub %3, %4  : i64
    %6 = llvm.sdiv %5, %0  : i64
    %7 = llvm.icmp "ne" %6, %2 : i64
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.bitcast %arg2 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %9 = llvm.bitcast %arg0 : !llvm.ptr<i64> to !llvm.ptr<i8>
    %10 = llvm.mul %6, %0  : i64
    "llvm.intr.memmove"(%8, %9, %10, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.getelementptr %arg2[%6] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %11 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.ptrtoint %arg1 : !llvm.ptr<i16> to i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i16> to i64
    %5 = llvm.sub %3, %4  : i64
    %6 = llvm.sdiv %5, %0  : i64
    %7 = llvm.icmp "ne" %6, %2 : i64
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.bitcast %arg2 : !llvm.ptr<i16> to !llvm.ptr<i8>
    %9 = llvm.bitcast %arg0 : !llvm.ptr<i16> to !llvm.ptr<i8>
    %10 = llvm.mul %6, %0  : i64
    "llvm.intr.memmove"(%8, %9, %10, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.getelementptr %arg2[%6] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %11 : !llvm.ptr<i16>
  }
}

