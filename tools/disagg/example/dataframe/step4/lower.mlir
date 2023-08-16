module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid20(i32, i16)
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_20(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_9(i32, i64, i32, i8) -> i32
  llvm.mlir.global internal constant @str7("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global external @vendor_id_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  llvm.mlir.global external @store_fwd_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>
  llvm.mlir.global external @index_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str5("}\0A\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("%d, \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("{\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("%f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("calculate_distribution_store_and_fwd_flag()\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Step 4: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(10 : index) : i64
    %1 = llvm.mlir.constant(0 : index) : i64
    %2 = llvm.mlir.constant(1 : index) : i64
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %5 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %7 = llvm.alloca %3 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %8 = llvm.alloca %3 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %9 = llvm.mlir.undef : i32
    llvm.call @_Z9ext_setupv() : () -> ()
    %10 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.br ^bb1(%1 : i64)
  ^bb1(%11: i64):  // 2 preds: ^bb0, ^bb2
    %12 = llvm.icmp "slt" %11, %0 : i64
    llvm.cond_br %12, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %13 = llvm.getelementptr %10[%11] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%13) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    %14 = llvm.add %11, %2  : i64
    llvm.br ^bb1(%14 : i64)
  ^bb3:  // pred: ^bb1
    %15 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %15, %7 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %16 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%10, %7) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z41calculate_distribution_store_and_fwd_flagv() : () -> ()
    %17 = llvm.getelementptr %10[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %18 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %18, %6 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %19 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%17, %6) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %20 = llvm.mlir.addressof @str0 : !llvm.ptr<array<16 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %22 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%17, %10) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %22, %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %23 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%5) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %23, %4 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %24 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%4) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %25 = llvm.call @printf(%21, %24) : (!llvm.ptr<i8>, i64) -> i32
    llvm.return %9 : i32
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
  llvm.func @_Z41calculate_distribution_store_and_fwd_flagv() {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(0 : i8) : i8
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %5 = llvm.alloca %3 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %6 = llvm.alloca %3 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %7 = llvm.alloca %3 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %8 = llvm.alloca %3 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %9 = llvm.alloca %3 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %10 = llvm.alloca %3 x i32 : (i64) -> !llvm.ptr<i32>
    %11 = llvm.mlir.undef : i32
    llvm.store %11, %10 : !llvm.ptr<i32>
    %12 = llvm.alloca %3 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %13 = llvm.alloca %3 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %14 = llvm.alloca %3 x !llvm.struct<"class.anon.6", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.6", (i8)>>
    %15 = llvm.alloca %3 x !llvm.struct<"class.anon.6", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.6", (i8)>>
    %16 = llvm.alloca %3 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %17 = llvm.alloca %3 x !llvm.struct<"class.anon", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon", (i8)>>
    %18 = llvm.alloca %3 x !llvm.struct<"class.anon", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon", (i8)>>
    %19 = llvm.mlir.addressof @str1 : !llvm.ptr<array<45 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<45 x i8>>) -> !llvm.ptr<i8>
    %21 = llvm.call @printf(%20) : (!llvm.ptr<i8>) -> i32
    %22 = llvm.load %18 : !llvm.ptr<struct<"class.anon", (i8)>>
    llvm.store %22, %17 : !llvm.ptr<struct<"class.anon", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%16) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%17, %16) : (!llvm.ptr<struct<"class.anon", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %23 = llvm.mlir.addressof @str2 : !llvm.ptr<array<4 x i8>>
    %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %25 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%16) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %26 = llvm.sitofp %25 : i64 to f64
    %27 = llvm.call @_Z9get_indexv() : () -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %28 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%27) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %29 = llvm.sitofp %28 : i64 to f64
    %30 = llvm.fdiv %26, %29  : f64
    %31 = llvm.call @printf(%24, %30) : (!llvm.ptr<i8>, f64) -> i32
    %32 = llvm.load %15 : !llvm.ptr<struct<"class.anon.6", (i8)>>
    llvm.store %32, %14 : !llvm.ptr<struct<"class.anon.6", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%13) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_1iEvRT_RSt6vectorIT0_SaIS4_EE(%14, %13) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %33 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%13) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.br ^bb1(%0 : i64)
  ^bb1(%34: i64):  // 2 preds: ^bb0, ^bb4
    %35 = llvm.icmp "slt" %34, %33 : i64
    llvm.cond_br %35, ^bb2, ^bb5
  ^bb2:  // pred: ^bb1
    %36 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%13, %34) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %37 = llvm.load %36 : !llvm.ptr<i32>
    llvm.store %37, %10 : !llvm.ptr<i32>
    %38 = llvm.call @_Z15step4_firstTimei(%37) : (i32) -> i8
    %39 = llvm.icmp "ne" %38, %2 : i8
    llvm.cond_br %39, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%12, %10) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %40 = llvm.add %34, %1  : i64
    llvm.br ^bb1(%40 : i64)
  ^bb5:  // pred: ^bb1
    %41 = llvm.mlir.addressof @str3 : !llvm.ptr<array<2 x i8>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %43 = llvm.call @printf(%42) : (!llvm.ptr<i8>) -> i32
    %44 = llvm.call @_ZNSt6vectorIiSaIiEE5beginEv(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %44, %8 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%9, %8) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %45 = llvm.load %9 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %45, %7 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %46 = llvm.call @_ZNSt6vectorIiSaIiEE3endEv(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %46, %5 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%6, %5) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %47 = llvm.load %6 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %47, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %48 = llvm.mlir.addressof @str4 : !llvm.ptr<array<5 x i8>>
    %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb5, ^bb7
    %50 = llvm.call @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%7, %4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i8
    %51 = llvm.icmp "ne" %50, %2 : i8
    llvm.cond_br %51, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %52 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32>
    %53 = llvm.load %52 : !llvm.ptr<i32>
    %54 = llvm.call @printf(%49, %53) : (!llvm.ptr<i8>, i32) -> i32
    %55 = llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.br ^bb6
  ^bb8:  // pred: ^bb6
    %56 = llvm.mlir.addressof @str5 : !llvm.ptr<array<4 x i8>>
    %57 = llvm.getelementptr %56[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %58 = llvm.call @printf(%57) : (!llvm.ptr<i8>) -> i32
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
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func internal @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(19 : i32) : i32
    %1 = llvm.mlir.constant(608 : i32) : i32
    %2 = llvm.mlir.constant(9663676416 : i64) : i64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(4294967296 : i64) : i64
    %5 = llvm.mlir.constant(4194304 : i64) : i64
    %6 = llvm.mlir.constant(-4194304 : i64) : i64
    %7 = llvm.mlir.constant(2097152 : i64) : i64
    %8 = llvm.mlir.constant(-2097152 : i64) : i64
    %9 = llvm.mlir.constant(1 : i8) : i8
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(32 : i64) : i64
    %12 = llvm.mlir.constant(-524288 : i64) : i64
    %13 = llvm.mlir.constant(9 : i64) : i64
    %14 = llvm.mlir.constant(8 : i64) : i64
    %15 = llvm.mlir.constant(524288 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(9 : i32) : i32
    %19 = llvm.mlir.constant(524288 : i64) : i64
    %20 = llvm.mlir.constant(524287 : i64) : i64
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(0 : i8) : i8
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.alloca %23 x i32 : (i64) -> !llvm.ptr<i32>
    %25 = llvm.mlir.undef : i32
    llvm.store %25, %24 : !llvm.ptr<i32>
    %26 = llvm.alloca %23 x i8 : (i64) -> !llvm.ptr<i8>
    %27 = llvm.mlir.undef : i8
    llvm.store %27, %26 : !llvm.ptr<i8>
    %28 = llvm.alloca %23 x i64 : (i64) -> !llvm.ptr<i64>
    %29 = llvm.mlir.undef : i64
    llvm.store %29, %28 : !llvm.ptr<i64>
    %30 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %32 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %34 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %36 = llvm.call @_ZNKSt6vectorIcSaIcEE4sizeEv(%33) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %36) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %37 = llvm.add %36, %20  : i64
    %38 = llvm.sdiv %37, %19  : i64
    %39 = llvm.alloca %18 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%21 : i64)
  ^bb1(%40: i64):  // 2 preds: ^bb0, ^bb2
    %41 = llvm.icmp "slt" %40, %17 : i64
    llvm.cond_br %41, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %42 = llvm.mul %40, %15  : i64
    %43 = llvm.trunc %40 : i64 to i32
    %44 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %42) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i8> to i64
    %46 = llvm.and %45, %12  : i64
    %47 = llvm.udiv %46, %19  : i64
    %48 = llvm.srem %47, %11  : i64
    %49 = llvm.trunc %48 : i64 to i32
    %50 = llvm.call @cache_request_impl_9(%10, %46, %49, %9) : (i32, i64, i32, i8) -> i32
    %51 = llvm.sext %43 : i32 to i64
    %52 = llvm.getelementptr %39[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %49, %52 : !llvm.ptr<i32>
    %53 = llvm.add %40, %16  : i64
    llvm.br ^bb1(%53 : i64)
  ^bb3:  // pred: ^bb1
    %54 = llvm.alloca %18 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%21 : i64)
  ^bb4(%55: i64):  // 2 preds: ^bb3, ^bb5
    %56 = llvm.icmp "slt" %55, %17 : i64
    llvm.cond_br %56, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %57 = llvm.mul %55, %15  : i64
    %58 = llvm.trunc %55 : i64 to i32
    %59 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %57) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.and %60, %8  : i64
    %62 = llvm.udiv %61, %7  : i64
    %63 = llvm.srem %62, %11  : i64
    %64 = llvm.trunc %63 : i64 to i32
    %65 = llvm.call @cache_request_impl_1(%10, %61, %64, %9) : (i32, i64, i32, i8) -> i32
    %66 = llvm.sext %58 : i32 to i64
    %67 = llvm.getelementptr %54[%66] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %64, %67 : !llvm.ptr<i32>
    %68 = llvm.add %55, %16  : i64
    llvm.br ^bb4(%68 : i64)
  ^bb6:  // pred: ^bb4
    %69 = llvm.alloca %18 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb7(%21 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb8
    %71 = llvm.icmp "slt" %70, %17 : i64
    llvm.cond_br %71, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %72 = llvm.mul %70, %15  : i64
    %73 = llvm.trunc %70 : i64 to i32
    %74 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %72) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i64> to i64
    %76 = llvm.and %75, %6  : i64
    %77 = llvm.udiv %76, %5  : i64
    %78 = llvm.srem %77, %11  : i64
    %79 = llvm.trunc %78 : i64 to i32
    %80 = llvm.call @cache_request_impl_20(%10, %76, %79, %9) : (i32, i64, i32, i8) -> i32
    %81 = llvm.sext %73 : i32 to i64
    %82 = llvm.getelementptr %69[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %79, %82 : !llvm.ptr<i32>
    %83 = llvm.add %70, %16  : i64
    llvm.br ^bb7(%83 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%21 : i64)
  ^bb10(%84: i64):  // 2 preds: ^bb9, ^bb22
    %85 = llvm.icmp "slt" %84, %38 : i64
    llvm.cond_br %85, ^bb11, ^bb23
  ^bb11:  // pred: ^bb10
    %86 = llvm.add %84, %14  : i64
    %87 = llvm.icmp "slt" %86, %38 : i64
    llvm.cond_br %87, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %88 = llvm.srem %86, %13  : i64
    %89 = llvm.trunc %88 : i64 to i32
    %90 = llvm.mul %86, %15  : i64
    %91 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %90) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i8> to i64
    %93 = llvm.and %92, %12  : i64
    %94 = llvm.udiv %93, %19  : i64
    %95 = llvm.srem %94, %11  : i64
    %96 = llvm.trunc %95 : i64 to i32
    %97 = llvm.call @cache_request_impl_9(%10, %93, %96, %9) : (i32, i64, i32, i8) -> i32
    %98 = llvm.sext %89 : i32 to i64
    %99 = llvm.getelementptr %39[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %96, %99 : !llvm.ptr<i32>
    %100 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %90) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.and %101, %8  : i64
    %103 = llvm.udiv %102, %7  : i64
    %104 = llvm.srem %103, %11  : i64
    %105 = llvm.trunc %104 : i64 to i32
    %106 = llvm.call @cache_request_impl_1(%10, %102, %105, %9) : (i32, i64, i32, i8) -> i32
    %107 = llvm.getelementptr %54[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %105, %107 : !llvm.ptr<i32>
    %108 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %90) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i64> to i64
    %110 = llvm.and %109, %6  : i64
    %111 = llvm.udiv %110, %5  : i64
    %112 = llvm.srem %111, %11  : i64
    %113 = llvm.trunc %112 : i64 to i32
    %114 = llvm.call @cache_request_impl_20(%10, %110, %113, %9) : (i32, i64, i32, i8) -> i32
    %115 = llvm.getelementptr %69[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %115 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %116 = llvm.mul %84, %15  : i64
    %117 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %116) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %118 = llvm.srem %84, %13  : i64
    %119 = llvm.getelementptr %39[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %120 = llvm.load %119 : !llvm.ptr<i32>
    %121 = llvm.ptrtoint %117 : !llvm.ptr<i8> to i64
    %122 = llvm.sext %120 : i32 to i64
    %123 = llvm.mul %122, %19  : i64
    %124 = llvm.srem %121, %19  : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.add %125, %4  : i64
    %127 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %128 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %130 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %116) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %131 = llvm.getelementptr %54[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.ptrtoint %130 : !llvm.ptr<i32> to i64
    %134 = llvm.sext %132 : i32 to i64
    %135 = llvm.mul %134, %7  : i64
    %136 = llvm.srem %133, %7  : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.add %137, %3  : i64
    %139 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %140 = llvm.getelementptr %139[%138] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %141 = llvm.bitcast %140 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %142 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %116) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %143 = llvm.getelementptr %69[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.ptrtoint %142 : !llvm.ptr<i64> to i64
    %146 = llvm.sext %144 : i32 to i64
    %147 = llvm.mul %146, %5  : i64
    %148 = llvm.srem %145, %5  : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.add %149, %2  : i64
    %151 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %152 = llvm.getelementptr %151[%150] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %154 = llvm.add %144, %1  : i32
    %155 = llvm.sext %154 : i32 to i64
    %156 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %157 = llvm.getelementptr %156[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %158 = llvm.getelementptr %157[%155] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %159 = llvm.getelementptr %158[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %160 = llvm.load %159 : !llvm.ptr<i16>
    llvm.call @poll_qid20(%0, %160) : (i32, i16) -> ()
    %161 = llvm.add %84, %23  : i64
    %162 = llvm.mul %161, %19  : i64
    %163 = llvm.icmp "sgt" %36, %162 : i64
    llvm.cond_br %163, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%19 : i64)
  ^bb15:  // pred: ^bb13
    %164 = llvm.mul %84, %19  : i64
    %165 = llvm.sub %36, %164  : i64
    llvm.br ^bb16(%165 : i64)
  ^bb16(%166: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %167 = llvm.mul %84, %19  : i64
    llvm.br ^bb18(%21 : i64)
  ^bb18(%168: i64):  // 2 preds: ^bb17, ^bb21
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb19, ^bb22
  ^bb19:  // pred: ^bb18
    %170 = llvm.add %168, %167  : i64
    %171 = llvm.getelementptr %129[%168] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %172 = llvm.getelementptr %141[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.getelementptr %153[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %174 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %170) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %175 = llvm.load %173 : !llvm.ptr<i64>
    llvm.store %175, %28 : !llvm.ptr<i64>
    %176 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %170) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %177 = llvm.load %171 : !llvm.ptr<i8>
    llvm.store %177, %26 : !llvm.ptr<i8>
    %178 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %170) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %172 : !llvm.ptr<i32>
    llvm.store %179, %24 : !llvm.ptr<i32>
    %180 = llvm.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0, %28, %26) : (!llvm.ptr<struct<"class.anon", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
    %181 = llvm.icmp "ne" %180, %22 : i8
    llvm.cond_br %181, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %24) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb19, ^bb20
    %182 = llvm.add %168, %16  : i64
    llvm.br ^bb18(%182 : i64)
  ^bb22:  // pred: ^bb18
    %183 = llvm.add %84, %16  : i64
    llvm.br ^bb10(%183 : i64)
  ^bb23:  // pred: ^bb10
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i32> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
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
  llvm.func @_Z9get_indexv() -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>> attributes {sym_visibility = "private"}
  llvm.func internal @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_1iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.6", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(19 : i32) : i32
    %1 = llvm.mlir.constant(608 : i32) : i32
    %2 = llvm.mlir.constant(9663676416 : i64) : i64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(4294967296 : i64) : i64
    %5 = llvm.mlir.constant(4194304 : i64) : i64
    %6 = llvm.mlir.constant(-4194304 : i64) : i64
    %7 = llvm.mlir.constant(2097152 : i64) : i64
    %8 = llvm.mlir.constant(-2097152 : i64) : i64
    %9 = llvm.mlir.constant(1 : i8) : i8
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(32 : i64) : i64
    %12 = llvm.mlir.constant(-524288 : i64) : i64
    %13 = llvm.mlir.constant(9 : i64) : i64
    %14 = llvm.mlir.constant(8 : i64) : i64
    %15 = llvm.mlir.constant(524288 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(8 : index) : i64
    %18 = llvm.mlir.constant(9 : i32) : i32
    %19 = llvm.mlir.constant(524288 : i64) : i64
    %20 = llvm.mlir.constant(524287 : i64) : i64
    %21 = llvm.mlir.constant(0 : index) : i64
    %22 = llvm.mlir.constant(0 : i8) : i8
    %23 = llvm.mlir.constant(1 : i64) : i64
    %24 = llvm.alloca %23 x i32 : (i64) -> !llvm.ptr<i32>
    %25 = llvm.mlir.undef : i32
    llvm.store %25, %24 : !llvm.ptr<i32>
    %26 = llvm.alloca %23 x i8 : (i64) -> !llvm.ptr<i8>
    %27 = llvm.mlir.undef : i8
    llvm.store %27, %26 : !llvm.ptr<i8>
    %28 = llvm.alloca %23 x i64 : (i64) -> !llvm.ptr<i64>
    %29 = llvm.mlir.undef : i64
    llvm.store %29, %28 : !llvm.ptr<i64>
    %30 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %32 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %34 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %36 = llvm.call @_ZNKSt6vectorIcSaIcEE4sizeEv(%33) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %36) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %37 = llvm.add %36, %20  : i64
    %38 = llvm.sdiv %37, %19  : i64
    %39 = llvm.alloca %18 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%21 : i64)
  ^bb1(%40: i64):  // 2 preds: ^bb0, ^bb2
    %41 = llvm.icmp "slt" %40, %17 : i64
    llvm.cond_br %41, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %42 = llvm.mul %40, %15  : i64
    %43 = llvm.trunc %40 : i64 to i32
    %44 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %42) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i8> to i64
    %46 = llvm.and %45, %12  : i64
    %47 = llvm.udiv %46, %19  : i64
    %48 = llvm.srem %47, %11  : i64
    %49 = llvm.trunc %48 : i64 to i32
    %50 = llvm.call @cache_request_impl_9(%10, %46, %49, %9) : (i32, i64, i32, i8) -> i32
    %51 = llvm.sext %43 : i32 to i64
    %52 = llvm.getelementptr %39[%51] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %49, %52 : !llvm.ptr<i32>
    %53 = llvm.add %40, %16  : i64
    llvm.br ^bb1(%53 : i64)
  ^bb3:  // pred: ^bb1
    %54 = llvm.alloca %18 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%21 : i64)
  ^bb4(%55: i64):  // 2 preds: ^bb3, ^bb5
    %56 = llvm.icmp "slt" %55, %17 : i64
    llvm.cond_br %56, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %57 = llvm.mul %55, %15  : i64
    %58 = llvm.trunc %55 : i64 to i32
    %59 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %57) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.and %60, %8  : i64
    %62 = llvm.udiv %61, %7  : i64
    %63 = llvm.srem %62, %11  : i64
    %64 = llvm.trunc %63 : i64 to i32
    %65 = llvm.call @cache_request_impl_1(%10, %61, %64, %9) : (i32, i64, i32, i8) -> i32
    %66 = llvm.sext %58 : i32 to i64
    %67 = llvm.getelementptr %54[%66] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %64, %67 : !llvm.ptr<i32>
    %68 = llvm.add %55, %16  : i64
    llvm.br ^bb4(%68 : i64)
  ^bb6:  // pred: ^bb4
    %69 = llvm.alloca %18 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb7(%21 : i64)
  ^bb7(%70: i64):  // 2 preds: ^bb6, ^bb8
    %71 = llvm.icmp "slt" %70, %17 : i64
    llvm.cond_br %71, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %72 = llvm.mul %70, %15  : i64
    %73 = llvm.trunc %70 : i64 to i32
    %74 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %72) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i64> to i64
    %76 = llvm.and %75, %6  : i64
    %77 = llvm.udiv %76, %5  : i64
    %78 = llvm.srem %77, %11  : i64
    %79 = llvm.trunc %78 : i64 to i32
    %80 = llvm.call @cache_request_impl_20(%10, %76, %79, %9) : (i32, i64, i32, i8) -> i32
    %81 = llvm.sext %73 : i32 to i64
    %82 = llvm.getelementptr %69[%81] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %79, %82 : !llvm.ptr<i32>
    %83 = llvm.add %70, %16  : i64
    llvm.br ^bb7(%83 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%21 : i64)
  ^bb10(%84: i64):  // 2 preds: ^bb9, ^bb22
    %85 = llvm.icmp "slt" %84, %38 : i64
    llvm.cond_br %85, ^bb11, ^bb23
  ^bb11:  // pred: ^bb10
    %86 = llvm.add %84, %14  : i64
    %87 = llvm.icmp "slt" %86, %38 : i64
    llvm.cond_br %87, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %88 = llvm.srem %86, %13  : i64
    %89 = llvm.trunc %88 : i64 to i32
    %90 = llvm.mul %86, %15  : i64
    %91 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %90) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i8> to i64
    %93 = llvm.and %92, %12  : i64
    %94 = llvm.udiv %93, %19  : i64
    %95 = llvm.srem %94, %11  : i64
    %96 = llvm.trunc %95 : i64 to i32
    %97 = llvm.call @cache_request_impl_9(%10, %93, %96, %9) : (i32, i64, i32, i8) -> i32
    %98 = llvm.sext %89 : i32 to i64
    %99 = llvm.getelementptr %39[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %96, %99 : !llvm.ptr<i32>
    %100 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %90) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.and %101, %8  : i64
    %103 = llvm.udiv %102, %7  : i64
    %104 = llvm.srem %103, %11  : i64
    %105 = llvm.trunc %104 : i64 to i32
    %106 = llvm.call @cache_request_impl_1(%10, %102, %105, %9) : (i32, i64, i32, i8) -> i32
    %107 = llvm.getelementptr %54[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %105, %107 : !llvm.ptr<i32>
    %108 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %90) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i64> to i64
    %110 = llvm.and %109, %6  : i64
    %111 = llvm.udiv %110, %5  : i64
    %112 = llvm.srem %111, %11  : i64
    %113 = llvm.trunc %112 : i64 to i32
    %114 = llvm.call @cache_request_impl_20(%10, %110, %113, %9) : (i32, i64, i32, i8) -> i32
    %115 = llvm.getelementptr %69[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %115 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %116 = llvm.mul %84, %15  : i64
    %117 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %116) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %118 = llvm.srem %84, %13  : i64
    %119 = llvm.getelementptr %39[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %120 = llvm.load %119 : !llvm.ptr<i32>
    %121 = llvm.ptrtoint %117 : !llvm.ptr<i8> to i64
    %122 = llvm.sext %120 : i32 to i64
    %123 = llvm.mul %122, %19  : i64
    %124 = llvm.srem %121, %19  : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.add %125, %4  : i64
    %127 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %128 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %130 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %116) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %131 = llvm.getelementptr %54[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %132 = llvm.load %131 : !llvm.ptr<i32>
    %133 = llvm.ptrtoint %130 : !llvm.ptr<i32> to i64
    %134 = llvm.sext %132 : i32 to i64
    %135 = llvm.mul %134, %7  : i64
    %136 = llvm.srem %133, %7  : i64
    %137 = llvm.add %135, %136  : i64
    %138 = llvm.add %137, %3  : i64
    %139 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %140 = llvm.getelementptr %139[%138] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %141 = llvm.bitcast %140 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %142 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %116) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %143 = llvm.getelementptr %69[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.load %143 : !llvm.ptr<i32>
    %145 = llvm.ptrtoint %142 : !llvm.ptr<i64> to i64
    %146 = llvm.sext %144 : i32 to i64
    %147 = llvm.mul %146, %5  : i64
    %148 = llvm.srem %145, %5  : i64
    %149 = llvm.add %147, %148  : i64
    %150 = llvm.add %149, %2  : i64
    %151 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %152 = llvm.getelementptr %151[%150] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %153 = llvm.bitcast %152 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %154 = llvm.add %144, %1  : i32
    %155 = llvm.sext %154 : i32 to i64
    %156 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %157 = llvm.getelementptr %156[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %158 = llvm.getelementptr %157[%155] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %159 = llvm.getelementptr %158[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %160 = llvm.load %159 : !llvm.ptr<i16>
    llvm.call @poll_qid20(%0, %160) : (i32, i16) -> ()
    %161 = llvm.add %84, %23  : i64
    %162 = llvm.mul %161, %19  : i64
    %163 = llvm.icmp "sgt" %36, %162 : i64
    llvm.cond_br %163, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%19 : i64)
  ^bb15:  // pred: ^bb13
    %164 = llvm.mul %84, %19  : i64
    %165 = llvm.sub %36, %164  : i64
    llvm.br ^bb16(%165 : i64)
  ^bb16(%166: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %167 = llvm.mul %84, %19  : i64
    llvm.br ^bb18(%21 : i64)
  ^bb18(%168: i64):  // 2 preds: ^bb17, ^bb21
    %169 = llvm.icmp "slt" %168, %166 : i64
    llvm.cond_br %169, ^bb19, ^bb22
  ^bb19:  // pred: ^bb18
    %170 = llvm.add %168, %167  : i64
    %171 = llvm.getelementptr %129[%168] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %172 = llvm.getelementptr %141[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.getelementptr %153[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %174 = llvm.call @_ZNKSt6vectorImSaImEEixEm(%31, %170) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %175 = llvm.load %173 : !llvm.ptr<i64>
    llvm.store %175, %28 : !llvm.ptr<i64>
    %176 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm(%33, %170) : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %177 = llvm.load %171 : !llvm.ptr<i8>
    llvm.store %177, %26 : !llvm.ptr<i8>
    %178 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm(%35, %170) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %172 : !llvm.ptr<i32>
    llvm.store %179, %24 : !llvm.ptr<i32>
    %180 = llvm.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0, %28, %26) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
    %181 = llvm.icmp "ne" %180, %22 : i8
    llvm.cond_br %181, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %24) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb19, ^bb20
    %182 = llvm.add %168, %16  : i64
    llvm.br ^bb18(%182 : i64)
  ^bb22:  // pred: ^bb18
    %183 = llvm.add %84, %16  : i64
    llvm.br ^bb10(%183 : i64)
  ^bb23:  // pred: ^bb10
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func @_Z15step4_firstTimei(i32) -> i8 attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i32>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %11 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    llvm.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.store %17, %6 : !llvm.ptr<ptr<i32>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %18, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i8 {
    %0 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i32>>
    %4 = llvm.icmp "ne" %1, %3 : !llvm.ptr<i32>
    %5 = llvm.zext %4 : i1 to i8
    llvm.return %5 : i8
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    llvm.return %1 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %1[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.store %2, %0 : !llvm.ptr<ptr<i32>>
    llvm.return %arg0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  }
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
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIcSaIcEE4sizeEv(%arg0: !llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i8> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i8> to i64
    %9 = llvm.sub %7, %8  : i64
    llvm.return %9 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str6 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i32>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i32>>
    %24 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %25 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%21, %23, %17, %24) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.br ^bb6(%17 : !llvm.ptr<i32>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<i32>>
    %31 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%30) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %31, %5 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%6, %5) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %32 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
    %34 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%33) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %34, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %35 = llvm.load %6 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %36 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %37 = llvm.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    %38 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.br ^bb6(%37 : !llvm.ptr<i32>)
  ^bb6(%39: !llvm.ptr<i32>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %40 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<i32>>
    %45 = llvm.getelementptr %42[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i32>>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.sdiv %49, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%40, %44, %50) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %39, %43 : !llvm.ptr<ptr<i32>>
    %51 = llvm.getelementptr %42[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %52 = llvm.getelementptr %39[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %52, %51 : !llvm.ptr<ptr<i32>>
    %53 = llvm.load %43 : !llvm.ptr<ptr<i32>>
    %54 = llvm.getelementptr %53[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %54, %45 : !llvm.ptr<ptr<i32>>
    llvm.br ^bb8
  ^bb8:  // 2 preds: ^bb2, ^bb7
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIcSaIcEEixEm(%arg0: !llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i8> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::class.std::vector.8", (struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base.9", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rfwd::struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    llvm.return %5 : !llvm.ptr<i8>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func internal @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0: !llvm.ptr<struct<"class.anon", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i8>) -> i8 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(78 : i32) : i32
    %1 = llvm.load %arg2 : !llvm.ptr<i8>
    %2 = llvm.sext %1 : i8 to i32
    %3 = llvm.icmp "eq" %2, %0 : i32
    %4 = llvm.zext %3 : i1 to i8
    llvm.return %4 : i8
  }
  llvm.func internal @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0: !llvm.ptr<struct<"class.anon.6", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i8>) -> i8 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(89 : i32) : i32
    %1 = llvm.load %arg2 : !llvm.ptr<i8>
    %2 = llvm.sext %1 : i8 to i32
    %3 = llvm.icmp "eq" %2, %0 : i32
    %4 = llvm.zext %3 : i1 to i8
    llvm.return %4 : i8
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %5 = llvm.mlir.addressof @str7 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i32>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i32>>
    %15 = llvm.call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %15, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %18 = llvm.bitcast %9 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %23 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
    %27 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %28 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%12, %26, %17, %27) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i32>>
    %32 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %33 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%31, %14, %29, %32) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.br ^bb3(%33 : !llvm.ptr<i32>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i32>>
    %36 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i32>>
    %41 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.br ^bb3(%42 : !llvm.ptr<i32>)
  ^bb3(%43: !llvm.ptr<i32>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i32>>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %50 = llvm.ptrtoint %12 : !llvm.ptr<i32> to i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%8, %12, %52) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i32>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i32>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %47 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.return %0 : !llvm.ptr<ptr<i32>>
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
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i32> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i8) : i8
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::__is_move_insertable", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>>
    %5 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%5, %2, %3, %1) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, i64) -> !llvm.ptr<i32>
    llvm.br ^bb3(%7 : !llvm.ptr<i32>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i32>
    llvm.br ^bb3(%8 : !llvm.ptr<i32>)
  ^bb3(%9: !llvm.ptr<i32>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %6 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ES0_(%2, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<i32>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %4, %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %1) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.return %5 : !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    llvm.store %0, %arg1 : !llvm.ptr<i32>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.br ^bb9(%20 : i64)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%14 : i64)
  ^bb9(%21: i64):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    llvm.return %21 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %3 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.ptrtoint %2 : !llvm.ptr<i32> to i64
    %6 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.return %8 : i64
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %5, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %6, %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %1) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
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
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    llvm.return %2 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPiEvT_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg0 : !llvm.ptr<i64>
    %1 = llvm.load %arg1 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(2305843009213693951 : i64) : i64
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
  llvm.func linkonce_odr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i32> to !llvm.ptr<i8>
    llvm.call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func @_ZSt17__throw_bad_allocv() attributes {sym_visibility = "private"}
  llvm.func @_Znwm(i64) -> !llvm.ptr<i8> attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %5 = llvm.sub %3, %4  : i64
    %6 = llvm.sdiv %5, %0  : i64
    %7 = llvm.icmp "sgt" %6, %2 : i64
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %9 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %10 = llvm.mul %6, %0  : i64
    "llvm.intr.memmove"(%8, %9, %10, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.getelementptr %arg2[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %11 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__niter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    llvm.return %arg0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func @_ZdlPv(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = llvm.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%5) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %8 = llvm.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%7) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    %9 = llvm.call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%6, %8, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.call @_ZNKSt13move_iteratorIPiE4baseEv(%1) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32>
    llvm.return %2 : !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    llvm.return %1 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(false) : i1
    %2 = llvm.mlir.constant(0 : i64) : i64
    %3 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %4 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %5 = llvm.sub %3, %4  : i64
    %6 = llvm.sdiv %5, %0  : i64
    %7 = llvm.icmp "ne" %6, %2 : i64
    llvm.cond_br %7, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %8 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %9 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
    %10 = llvm.mul %6, %0  : i64
    "llvm.intr.memmove"(%8, %9, %10, %1) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.getelementptr %arg2[%6] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %11 : !llvm.ptr<i32>
  }
}

