module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_10(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid8(i32, i16)
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_8(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_6(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_9(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_12(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_5(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global internal constant @str10("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global external @vendor_id_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  llvm.mlir.global external @index_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str8("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("Number of rows that have haversine_distance > 100 KM = %lu\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @haversine_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global internal constant @str6("pickup_longitude_vec.size() == dropoff_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("pickup_longitude_vec.size() == dropoff_longitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.func @__assert_fail(!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @str4("void calculate_haversine_distance_column()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("/users/Zijian/new_rt/apps/dataframe/new_app/step5.cc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("pickup_longitude_vec.size() == pickup_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global external @drop_lat_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @drop_long_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @pick_lat_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @pick_long_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global internal constant @str1("calculate_haversine_distance_column()\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Step 5: %ld us\0A\00") {addr_space = 0 : i32}
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
    llvm.call @_Z35calculate_haversine_distance_columnv() : () -> ()
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
  llvm.func @_Z35calculate_haversine_distance_columnv() {
    %0 = llvm.mlir.constant(7 : i32) : i32
    %1 = llvm.mlir.constant(224 : i32) : i32
    %2 = llvm.mlir.constant(7516192768 : i64) : i64
    %3 = llvm.mlir.constant(5368709120 : i64) : i64
    %4 = llvm.mlir.constant(8589934592 : i64) : i64
    %5 = llvm.mlir.constant(11811160064 : i64) : i64
    %6 = llvm.mlir.constant(4294967296 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(32 : i64) : i64
    %10 = llvm.mlir.constant(4194304 : i64) : i64
    %11 = llvm.mlir.constant(-4194304 : i64) : i64
    %12 = llvm.mlir.constant(2 : i8) : i8
    %13 = llvm.mlir.constant(352 : i32) : i32
    %14 = llvm.mlir.constant(9 : i64) : i64
    %15 = llvm.mlir.constant(8 : i64) : i64
    %16 = llvm.mlir.constant(524288 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(8 : index) : i64
    %19 = llvm.mlir.constant(9 : i32) : i32
    %20 = llvm.mlir.constant(524288 : i64) : i64
    %21 = llvm.mlir.constant(524287 : i64) : i64
    %22 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %23 = llvm.mlir.constant(1.800000e+02 : f64) : f64
    %24 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %25 = llvm.mlir.constant(6.371000e+03 : f64) : f64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(63 : i32) : i32
    %28 = llvm.mlir.constant(62 : i32) : i32
    %29 = llvm.mlir.constant(61 : i32) : i32
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.alloca %30 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %32 = llvm.alloca %30 x !llvm.struct<"class.anon", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon", (i8)>>
    %33 = llvm.alloca %30 x !llvm.struct<"class.anon", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon", (i8)>>
    %34 = llvm.mlir.addressof @str1 : !llvm.ptr<array<39 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<39 x i8>>) -> !llvm.ptr<i8>
    %36 = llvm.call @printf(%35) : (!llvm.ptr<i8>) -> i32
    %37 = llvm.mlir.addressof @pick_long_col : !llvm.ptr<ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %39 = llvm.mlir.addressof @pick_lat_col : !llvm.ptr<ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %41 = llvm.mlir.addressof @drop_long_col : !llvm.ptr<ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %42 = llvm.load %41 : !llvm.ptr<ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %43 = llvm.mlir.addressof @drop_lat_col : !llvm.ptr<ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %45 = llvm.call @plon_size_f64(%38) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %46 = llvm.call @plat_size_f64(%40) : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %47 = llvm.icmp "eq" %45, %46 : i64
    llvm.cond_br %47, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %48 = llvm.mlir.addressof @str2 : !llvm.ptr<array<58 x i8>>
    %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr<array<58 x i8>>) -> !llvm.ptr<i8>
    %50 = llvm.mlir.addressof @str3 : !llvm.ptr<array<53 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
    %52 = llvm.mlir.addressof @str4 : !llvm.ptr<array<43 x i8>>
    %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%49, %51, %29, %53) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    %54 = llvm.call @plon_size_f64(%38) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %55 = llvm.call @dlon_size_f64(%42) : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %56 = llvm.icmp "eq" %54, %55 : i64
    llvm.cond_br %56, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.br ^bb6
  ^bb5:  // pred: ^bb3
    %57 = llvm.mlir.addressof @str5 : !llvm.ptr<array<60 x i8>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %59 = llvm.mlir.addressof @str3 : !llvm.ptr<array<53 x i8>>
    %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
    %61 = llvm.mlir.addressof @str4 : !llvm.ptr<array<43 x i8>>
    %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%58, %60, %28, %62) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %63 = llvm.call @plon_size_f64(%38) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %64 = llvm.call @dlat_size_f64(%44) : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %65 = llvm.icmp "eq" %63, %64 : i64
    llvm.cond_br %65, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.br ^bb9
  ^bb8:  // pred: ^bb6
    %66 = llvm.mlir.addressof @str6 : !llvm.ptr<array<59 x i8>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<59 x i8>>) -> !llvm.ptr<i8>
    %68 = llvm.mlir.addressof @str3 : !llvm.ptr<array<53 x i8>>
    %69 = llvm.getelementptr %68[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
    %70 = llvm.mlir.addressof @str4 : !llvm.ptr<array<43 x i8>>
    %71 = llvm.getelementptr %70[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%67, %69, %27, %71) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb7, ^bb8
    %72 = llvm.call @plat_size_f64(%40) : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %73 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %74 = llvm.load %73 : !llvm.ptr<ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %75 = llvm.add %72, %21  : i64
    %76 = llvm.sdiv %75, %20  : i64
    %77 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb10(%26 : i64)
  ^bb10(%78: i64):  // 2 preds: ^bb9, ^bb11
    %79 = llvm.icmp "slt" %78, %18 : i64
    llvm.cond_br %79, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    %80 = llvm.mul %78, %16  : i64
    %81 = llvm.trunc %78 : i64 to i32
    %82 = llvm.call @plon_index_f64(%38, %80) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<f64> to i64
    %84 = llvm.and %83, %11  : i64
    %85 = llvm.udiv %84, %10  : i64
    %86 = llvm.srem %85, %9  : i64
    %87 = llvm.trunc %86 : i64 to i32
    %88 = llvm.call @cache_request_impl_5(%8, %84, %87, %7) : (i32, i64, i32, i8) -> i32
    %89 = llvm.sext %81 : i32 to i64
    %90 = llvm.getelementptr %77[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %87, %90 : !llvm.ptr<i32>
    %91 = llvm.add %78, %17  : i64
    llvm.br ^bb10(%91 : i64)
  ^bb12:  // pred: ^bb10
    %92 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb13(%26 : i64)
  ^bb13(%93: i64):  // 2 preds: ^bb12, ^bb14
    %94 = llvm.icmp "slt" %93, %18 : i64
    llvm.cond_br %94, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    %95 = llvm.mul %93, %16  : i64
    %96 = llvm.trunc %93 : i64 to i32
    %97 = llvm.call @hvs_index_f64(%74, %95) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<f64> to i64
    %99 = llvm.and %98, %11  : i64
    %100 = llvm.udiv %99, %10  : i64
    %101 = llvm.srem %100, %9  : i64
    %102 = llvm.trunc %101 : i64 to i32
    %103 = llvm.call @cache_request_impl_12(%8, %99, %102, %7) : (i32, i64, i32, i8) -> i32
    %104 = llvm.sext %96 : i32 to i64
    %105 = llvm.getelementptr %92[%104] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %102, %105 : !llvm.ptr<i32>
    %106 = llvm.add %93, %17  : i64
    llvm.br ^bb13(%106 : i64)
  ^bb15:  // pred: ^bb13
    %107 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb16(%26 : i64)
  ^bb16(%108: i64):  // 2 preds: ^bb15, ^bb17
    %109 = llvm.icmp "slt" %108, %18 : i64
    llvm.cond_br %109, ^bb17, ^bb18
  ^bb17:  // pred: ^bb16
    %110 = llvm.mul %108, %16  : i64
    %111 = llvm.trunc %108 : i64 to i32
    %112 = llvm.call @dlat_index_f64(%44, %110) : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<f64> to i64
    %114 = llvm.and %113, %11  : i64
    %115 = llvm.udiv %114, %10  : i64
    %116 = llvm.srem %115, %9  : i64
    %117 = llvm.trunc %116 : i64 to i32
    %118 = llvm.call @cache_request_impl_9(%8, %114, %117, %7) : (i32, i64, i32, i8) -> i32
    %119 = llvm.sext %111 : i32 to i64
    %120 = llvm.getelementptr %107[%119] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %117, %120 : !llvm.ptr<i32>
    %121 = llvm.add %108, %17  : i64
    llvm.br ^bb16(%121 : i64)
  ^bb18:  // pred: ^bb16
    %122 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb19(%26 : i64)
  ^bb19(%123: i64):  // 2 preds: ^bb18, ^bb20
    %124 = llvm.icmp "slt" %123, %18 : i64
    llvm.cond_br %124, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    %125 = llvm.mul %123, %16  : i64
    %126 = llvm.trunc %123 : i64 to i32
    %127 = llvm.call @plat_index_f64(%40, %125) : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<f64> to i64
    %129 = llvm.and %128, %11  : i64
    %130 = llvm.udiv %129, %10  : i64
    %131 = llvm.srem %130, %9  : i64
    %132 = llvm.trunc %131 : i64 to i32
    %133 = llvm.call @cache_request_impl_6(%8, %129, %132, %7) : (i32, i64, i32, i8) -> i32
    %134 = llvm.sext %126 : i32 to i64
    %135 = llvm.getelementptr %122[%134] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %132, %135 : !llvm.ptr<i32>
    %136 = llvm.add %123, %17  : i64
    llvm.br ^bb19(%136 : i64)
  ^bb21:  // pred: ^bb19
    %137 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb22(%26 : i64)
  ^bb22(%138: i64):  // 2 preds: ^bb21, ^bb23
    %139 = llvm.icmp "slt" %138, %18 : i64
    llvm.cond_br %139, ^bb23, ^bb24
  ^bb23:  // pred: ^bb22
    %140 = llvm.mul %138, %16  : i64
    %141 = llvm.trunc %138 : i64 to i32
    %142 = llvm.call @dlon_index_f64(%42, %140) : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %143 = llvm.ptrtoint %142 : !llvm.ptr<f64> to i64
    %144 = llvm.and %143, %11  : i64
    %145 = llvm.udiv %144, %10  : i64
    %146 = llvm.srem %145, %9  : i64
    %147 = llvm.trunc %146 : i64 to i32
    %148 = llvm.call @cache_request_impl_8(%8, %144, %147, %7) : (i32, i64, i32, i8) -> i32
    %149 = llvm.sext %141 : i32 to i64
    %150 = llvm.getelementptr %137[%149] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %147, %150 : !llvm.ptr<i32>
    %151 = llvm.add %138, %17  : i64
    llvm.br ^bb22(%151 : i64)
  ^bb24:  // pred: ^bb22
    llvm.br ^bb25(%26 : i64)
  ^bb25(%152: i64):  // 2 preds: ^bb24, ^bb35
    %153 = llvm.icmp "slt" %152, %76 : i64
    llvm.cond_br %153, ^bb26, ^bb36
  ^bb26:  // pred: ^bb25
    %154 = llvm.add %152, %15  : i64
    %155 = llvm.icmp "slt" %154, %76 : i64
    llvm.cond_br %155, ^bb27, ^bb28
  ^bb27:  // pred: ^bb26
    %156 = llvm.srem %154, %14  : i64
    %157 = llvm.trunc %156 : i64 to i32
    %158 = llvm.mul %154, %16  : i64
    %159 = llvm.call @plon_index_f64(%38, %158) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<f64> to i64
    %161 = llvm.and %160, %11  : i64
    %162 = llvm.udiv %161, %10  : i64
    %163 = llvm.srem %162, %9  : i64
    %164 = llvm.trunc %163 : i64 to i32
    %165 = llvm.call @cache_request_impl_5(%8, %161, %164, %7) : (i32, i64, i32, i8) -> i32
    %166 = llvm.sext %157 : i32 to i64
    %167 = llvm.getelementptr %77[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %167 : !llvm.ptr<i32>
    %168 = llvm.call @hvs_index_f64(%74, %158) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<f64> to i64
    %170 = llvm.and %169, %11  : i64
    %171 = llvm.udiv %170, %10  : i64
    %172 = llvm.srem %171, %9  : i64
    %173 = llvm.trunc %172 : i64 to i32
    %174 = llvm.call @cache_request_impl_12(%8, %170, %173, %7) : (i32, i64, i32, i8) -> i32
    %175 = llvm.getelementptr %92[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %175 : !llvm.ptr<i32>
    %176 = llvm.call @dlat_index_f64(%44, %158) : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<f64> to i64
    %178 = llvm.and %177, %11  : i64
    %179 = llvm.udiv %178, %10  : i64
    %180 = llvm.srem %179, %9  : i64
    %181 = llvm.trunc %180 : i64 to i32
    %182 = llvm.call @cache_request_impl_9(%8, %178, %181, %7) : (i32, i64, i32, i8) -> i32
    %183 = llvm.getelementptr %107[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %181, %183 : !llvm.ptr<i32>
    %184 = llvm.call @plat_index_f64(%40, %158) : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<f64> to i64
    %186 = llvm.and %185, %11  : i64
    %187 = llvm.udiv %186, %10  : i64
    %188 = llvm.srem %187, %9  : i64
    %189 = llvm.trunc %188 : i64 to i32
    %190 = llvm.call @cache_request_impl_6(%8, %186, %189, %7) : (i32, i64, i32, i8) -> i32
    %191 = llvm.getelementptr %122[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %189, %191 : !llvm.ptr<i32>
    %192 = llvm.call @dlon_index_f64(%42, %158) : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %193 = llvm.ptrtoint %192 : !llvm.ptr<f64> to i64
    %194 = llvm.and %193, %11  : i64
    %195 = llvm.udiv %194, %10  : i64
    %196 = llvm.srem %195, %9  : i64
    %197 = llvm.trunc %196 : i64 to i32
    %198 = llvm.call @cache_request_impl_8(%8, %194, %197, %7) : (i32, i64, i32, i8) -> i32
    %199 = llvm.getelementptr %137[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %197, %199 : !llvm.ptr<i32>
    llvm.br ^bb28
  ^bb28:  // 2 preds: ^bb26, ^bb27
    %200 = llvm.mul %152, %16  : i64
    %201 = llvm.call @plon_index_f64(%38, %200) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %202 = llvm.srem %152, %14  : i64
    %203 = llvm.getelementptr %77[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %204 = llvm.load %203 : !llvm.ptr<i32>
    %205 = llvm.ptrtoint %201 : !llvm.ptr<f64> to i64
    %206 = llvm.sext %204 : i32 to i64
    %207 = llvm.mul %206, %10  : i64
    %208 = llvm.srem %205, %10  : i64
    %209 = llvm.add %207, %208  : i64
    %210 = llvm.add %209, %6  : i64
    %211 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %212 = llvm.load %211 : !llvm.ptr<ptr<i8>>
    %213 = llvm.getelementptr %212[%210] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %214 = llvm.bitcast %213 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %215 = llvm.call @hvs_index_f64(%74, %200) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %216 = llvm.getelementptr %92[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %217 = llvm.load %216 : !llvm.ptr<i32>
    %218 = llvm.ptrtoint %215 : !llvm.ptr<f64> to i64
    %219 = llvm.sext %217 : i32 to i64
    %220 = llvm.mul %219, %10  : i64
    %221 = llvm.srem %218, %10  : i64
    %222 = llvm.add %220, %221  : i64
    %223 = llvm.add %222, %5  : i64
    %224 = llvm.load %211 : !llvm.ptr<ptr<i8>>
    %225 = llvm.getelementptr %224[%223] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %226 = llvm.bitcast %225 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %227 = llvm.add %217, %13  : i32
    %228 = llvm.sext %227 : i32 to i64
    %229 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %230 = llvm.getelementptr %229[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %231 = llvm.getelementptr %230[%228] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %232 = llvm.getelementptr %231[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %233 = llvm.load %232 : !llvm.ptr<i8>
    %234 = llvm.or %233, %12  : i8
    llvm.store %234, %232 : !llvm.ptr<i8>
    %235 = llvm.call @dlat_index_f64(%44, %200) : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %236 = llvm.getelementptr %107[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %237 = llvm.load %236 : !llvm.ptr<i32>
    %238 = llvm.ptrtoint %235 : !llvm.ptr<f64> to i64
    %239 = llvm.sext %237 : i32 to i64
    %240 = llvm.mul %239, %10  : i64
    %241 = llvm.srem %238, %10  : i64
    %242 = llvm.add %240, %241  : i64
    %243 = llvm.add %242, %4  : i64
    %244 = llvm.load %211 : !llvm.ptr<ptr<i8>>
    %245 = llvm.getelementptr %244[%243] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %246 = llvm.bitcast %245 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %247 = llvm.call @plat_index_f64(%40, %200) : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %248 = llvm.getelementptr %122[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %249 = llvm.load %248 : !llvm.ptr<i32>
    %250 = llvm.ptrtoint %247 : !llvm.ptr<f64> to i64
    %251 = llvm.sext %249 : i32 to i64
    %252 = llvm.mul %251, %10  : i64
    %253 = llvm.srem %250, %10  : i64
    %254 = llvm.add %252, %253  : i64
    %255 = llvm.add %254, %3  : i64
    %256 = llvm.load %211 : !llvm.ptr<ptr<i8>>
    %257 = llvm.getelementptr %256[%255] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %258 = llvm.bitcast %257 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %259 = llvm.call @dlon_index_f64(%42, %200) : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %260 = llvm.getelementptr %137[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %261 = llvm.load %260 : !llvm.ptr<i32>
    %262 = llvm.ptrtoint %259 : !llvm.ptr<f64> to i64
    %263 = llvm.sext %261 : i32 to i64
    %264 = llvm.mul %263, %10  : i64
    %265 = llvm.srem %262, %10  : i64
    %266 = llvm.add %264, %265  : i64
    %267 = llvm.add %266, %2  : i64
    %268 = llvm.load %211 : !llvm.ptr<ptr<i8>>
    %269 = llvm.getelementptr %268[%267] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %270 = llvm.bitcast %269 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %271 = llvm.add %261, %1  : i32
    %272 = llvm.sext %271 : i32 to i64
    %273 = llvm.getelementptr %230[%272] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %274 = llvm.getelementptr %273[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %275 = llvm.load %274 : !llvm.ptr<i16>
    llvm.call @poll_qid8(%0, %275) : (i32, i16) -> ()
    %276 = llvm.add %152, %30  : i64
    %277 = llvm.mul %276, %20  : i64
    %278 = llvm.icmp "sgt" %72, %277 : i64
    llvm.cond_br %278, ^bb29, ^bb30
  ^bb29:  // pred: ^bb28
    llvm.br ^bb31(%20 : i64)
  ^bb30:  // pred: ^bb28
    %279 = llvm.mul %152, %20  : i64
    %280 = llvm.sub %72, %279  : i64
    llvm.br ^bb31(%280 : i64)
  ^bb31(%281: i64):  // 2 preds: ^bb29, ^bb30
    llvm.br ^bb32
  ^bb32:  // pred: ^bb31
    %282 = llvm.mul %152, %20  : i64
    llvm.br ^bb33(%26 : i64)
  ^bb33(%283: i64):  // 2 preds: ^bb32, ^bb34
    %284 = llvm.icmp "slt" %283, %281 : i64
    llvm.cond_br %284, ^bb34, ^bb35
  ^bb34:  // pred: ^bb33
    %285 = llvm.add %283, %282  : i64
    %286 = llvm.getelementptr %214[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %287 = llvm.getelementptr %226[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %288 = llvm.getelementptr %246[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %289 = llvm.getelementptr %258[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %290 = llvm.getelementptr %270[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %291 = llvm.call @hvs_index_f64(%74, %285) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %292 = llvm.call @plat_index_f64(%40, %285) : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %293 = llvm.load %289 : !llvm.ptr<f64>
    %294 = llvm.call @plon_index_f64(%38, %285) : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %295 = llvm.load %286 : !llvm.ptr<f64>
    %296 = llvm.call @dlat_index_f64(%44, %285) : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %297 = llvm.load %288 : !llvm.ptr<f64>
    %298 = llvm.call @dlon_index_f64(%42, %285) : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %299 = llvm.load %290 : !llvm.ptr<f64>
    %300 = llvm.fsub %297, %293  : f64
    %301 = llvm.fmul %300, %22  : f64
    %302 = llvm.fdiv %301, %23  : f64
    %303 = llvm.fsub %299, %295  : f64
    %304 = llvm.fmul %303, %22  : f64
    %305 = llvm.fdiv %304, %23  : f64
    %306 = llvm.fmul %293, %22  : f64
    %307 = llvm.fdiv %306, %23  : f64
    %308 = llvm.fmul %297, %22  : f64
    %309 = llvm.fdiv %308, %23  : f64
    %310 = llvm.fdiv %302, %24  : f64
    %311 = "llvm.intr.sin"(%310) : (f64) -> f64
    %312 = "llvm.intr.pow"(%311, %24) : (f64, f64) -> f64
    %313 = llvm.fdiv %305, %24  : f64
    %314 = "llvm.intr.sin"(%313) : (f64) -> f64
    %315 = "llvm.intr.pow"(%314, %24) : (f64, f64) -> f64
    %316 = "llvm.intr.cos"(%307) : (f64) -> f64
    %317 = llvm.fmul %315, %316  : f64
    %318 = "llvm.intr.cos"(%309) : (f64) -> f64
    %319 = llvm.fmul %317, %318  : f64
    %320 = llvm.fadd %312, %319  : f64
    %321 = "llvm.intr.sqrt"(%320) : (f64) -> f64
    %322 = llvm.call @asin(%321) : (f64) -> f64
    %323 = llvm.fmul %322, %24  : f64
    %324 = llvm.fmul %323, %25  : f64
    llvm.store %324, %287 : !llvm.ptr<f64>
    %325 = llvm.add %283, %17  : i64
    llvm.br ^bb33(%325 : i64)
  ^bb35:  // pred: ^bb33
    %326 = llvm.add %152, %17  : i64
    llvm.br ^bb25(%326 : i64)
  ^bb36:  // pred: ^bb25
    llvm.call @_Z12vec_set_sizeIdEvRSt6vectorIT_SaIS1_EEm(%74, %72) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> ()
    %327 = llvm.load %33 : !llvm.ptr<struct<"class.anon", (i8)>>
    llvm.store %327, %32 : !llvm.ptr<struct<"class.anon", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%31) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%32, %31) : (!llvm.ptr<struct<"class.anon", (i8)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %328 = llvm.mlir.addressof @str7 : !llvm.ptr<array<60 x i8>>
    %329 = llvm.getelementptr %328[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %330 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%31) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %331 = llvm.call @printf(%329, %330) : (!llvm.ptr<i8>, i64) -> i32
    %332 = llvm.mlir.addressof @str8 : !llvm.ptr<array<2 x i8>>
    %333 = llvm.getelementptr %332[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %334 = llvm.call @printf(%333) : (!llvm.ptr<i8>) -> i32
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
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @hvs_size_f64(%arg0: !llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @plon_size_f64(%arg0: !llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @plat_size_f64(%arg0: !llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @dlat_size_f64(%arg0: !llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @dlon_size_f64(%arg0: !llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @hvs_index_f64(%arg0: !llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @plon_index_f64(%arg0: !llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::class.std::vector", (struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @plat_index_f64(%arg0: !llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::class.std::vector", (struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @dlon_index_f64(%arg0: !llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::class.std::vector", (struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @dlat_index_f64(%arg0: !llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::class.std::vector", (struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func @_Z12vec_set_sizeIdEvRSt6vectorIT_SaIS1_EEm(!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func internal @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(11811160064 : i64) : i64
    %2 = llvm.mlir.constant(9663676416 : i64) : i64
    %3 = llvm.mlir.constant(2097152 : i64) : i64
    %4 = llvm.mlir.constant(-2097152 : i64) : i64
    %5 = llvm.mlir.constant(1 : i8) : i8
    %6 = llvm.mlir.constant(0 : i32) : i32
    %7 = llvm.mlir.constant(32 : i64) : i64
    %8 = llvm.mlir.constant(4194304 : i64) : i64
    %9 = llvm.mlir.constant(-4194304 : i64) : i64
    %10 = llvm.mlir.constant(9 : i64) : i64
    %11 = llvm.mlir.constant(8 : i64) : i64
    %12 = llvm.mlir.constant(524288 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(8 : index) : i64
    %15 = llvm.mlir.constant(9 : i32) : i32
    %16 = llvm.mlir.constant(524288 : i64) : i64
    %17 = llvm.mlir.constant(524287 : i64) : i64
    %18 = llvm.mlir.constant(0 : index) : i64
    %19 = llvm.mlir.constant(0 : i8) : i8
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.alloca %20 x i32 : (i64) -> !llvm.ptr<i32>
    %22 = llvm.mlir.undef : i32
    llvm.store %22, %21 : !llvm.ptr<i32>
    %23 = llvm.alloca %20 x f64 : (i64) -> !llvm.ptr<f64>
    %24 = llvm.mlir.undef : f64
    llvm.store %24, %23 : !llvm.ptr<f64>
    %25 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    %26 = llvm.mlir.undef : i64
    llvm.store %26, %25 : !llvm.ptr<i64>
    %27 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %28 = llvm.load %27 : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %29 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %31 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %33 = llvm.call @hvs_size_f64(%30) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %33) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %34 = llvm.add %33, %17  : i64
    %35 = llvm.sdiv %34, %16  : i64
    %36 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%18 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb2
    %38 = llvm.icmp "slt" %37, %14 : i64
    llvm.cond_br %38, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %39 = llvm.mul %37, %12  : i64
    %40 = llvm.trunc %37 : i64 to i32
    %41 = llvm.call @_ZNSt6vectorImSaImEEixEm(%28, %39) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<i64> to i64
    %43 = llvm.and %42, %9  : i64
    %44 = llvm.udiv %43, %8  : i64
    %45 = llvm.srem %44, %7  : i64
    %46 = llvm.trunc %45 : i64 to i32
    %47 = llvm.call @cache_request_impl_10(%6, %43, %46, %5) : (i32, i64, i32, i8) -> i32
    %48 = llvm.sext %40 : i32 to i64
    %49 = llvm.getelementptr %36[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %46, %49 : !llvm.ptr<i32>
    %50 = llvm.add %37, %13  : i64
    llvm.br ^bb1(%50 : i64)
  ^bb3:  // pred: ^bb1
    %51 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%18 : i64)
  ^bb4(%52: i64):  // 2 preds: ^bb3, ^bb5
    %53 = llvm.icmp "slt" %52, %14 : i64
    llvm.cond_br %53, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %54 = llvm.mul %52, %12  : i64
    %55 = llvm.trunc %52 : i64 to i32
    %56 = llvm.call @hvs_index_f64(%30, %54) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<f64> to i64
    %58 = llvm.and %57, %9  : i64
    %59 = llvm.udiv %58, %8  : i64
    %60 = llvm.srem %59, %7  : i64
    %61 = llvm.trunc %60 : i64 to i32
    %62 = llvm.call @cache_request_impl_12(%6, %58, %61, %5) : (i32, i64, i32, i8) -> i32
    %63 = llvm.sext %55 : i32 to i64
    %64 = llvm.getelementptr %51[%63] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %61, %64 : !llvm.ptr<i32>
    %65 = llvm.add %52, %13  : i64
    llvm.br ^bb4(%65 : i64)
  ^bb6:  // pred: ^bb4
    %66 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb7(%18 : i64)
  ^bb7(%67: i64):  // 2 preds: ^bb6, ^bb8
    %68 = llvm.icmp "slt" %67, %14 : i64
    llvm.cond_br %68, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %69 = llvm.mul %67, %12  : i64
    %70 = llvm.trunc %67 : i64 to i32
    %71 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%32, %69) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.and %72, %4  : i64
    %74 = llvm.udiv %73, %3  : i64
    %75 = llvm.srem %74, %7  : i64
    %76 = llvm.trunc %75 : i64 to i32
    %77 = llvm.call @cache_request_impl_1(%6, %73, %76, %5) : (i32, i64, i32, i8) -> i32
    %78 = llvm.sext %70 : i32 to i64
    %79 = llvm.getelementptr %66[%78] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %76, %79 : !llvm.ptr<i32>
    %80 = llvm.add %67, %13  : i64
    llvm.br ^bb7(%80 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%18 : i64)
  ^bb10(%81: i64):  // 2 preds: ^bb9, ^bb22
    %82 = llvm.icmp "slt" %81, %35 : i64
    llvm.cond_br %82, ^bb11, ^bb23
  ^bb11:  // pred: ^bb10
    %83 = llvm.add %81, %11  : i64
    %84 = llvm.icmp "slt" %83, %35 : i64
    llvm.cond_br %84, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %85 = llvm.srem %83, %10  : i64
    %86 = llvm.trunc %85 : i64 to i32
    %87 = llvm.mul %83, %12  : i64
    %88 = llvm.call @_ZNSt6vectorImSaImEEixEm(%28, %87) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<i64> to i64
    %90 = llvm.and %89, %9  : i64
    %91 = llvm.udiv %90, %8  : i64
    %92 = llvm.srem %91, %7  : i64
    %93 = llvm.trunc %92 : i64 to i32
    %94 = llvm.call @cache_request_impl_10(%6, %90, %93, %5) : (i32, i64, i32, i8) -> i32
    %95 = llvm.sext %86 : i32 to i64
    %96 = llvm.getelementptr %36[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %93, %96 : !llvm.ptr<i32>
    %97 = llvm.call @hvs_index_f64(%30, %87) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<f64> to i64
    %99 = llvm.and %98, %9  : i64
    %100 = llvm.udiv %99, %8  : i64
    %101 = llvm.srem %100, %7  : i64
    %102 = llvm.trunc %101 : i64 to i32
    %103 = llvm.call @cache_request_impl_12(%6, %99, %102, %5) : (i32, i64, i32, i8) -> i32
    %104 = llvm.getelementptr %51[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %102, %104 : !llvm.ptr<i32>
    %105 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%32, %87) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.and %106, %4  : i64
    %108 = llvm.udiv %107, %3  : i64
    %109 = llvm.srem %108, %7  : i64
    %110 = llvm.trunc %109 : i64 to i32
    %111 = llvm.call @cache_request_impl_1(%6, %107, %110, %5) : (i32, i64, i32, i8) -> i32
    %112 = llvm.getelementptr %66[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %110, %112 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %113 = llvm.mul %81, %12  : i64
    %114 = llvm.call @_ZNSt6vectorImSaImEEixEm(%28, %113) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %115 = llvm.srem %81, %10  : i64
    %116 = llvm.getelementptr %36[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.ptrtoint %114 : !llvm.ptr<i64> to i64
    %119 = llvm.sext %117 : i32 to i64
    %120 = llvm.mul %119, %8  : i64
    %121 = llvm.srem %118, %8  : i64
    %122 = llvm.add %120, %121  : i64
    %123 = llvm.add %122, %2  : i64
    %124 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %125 = llvm.load %124 : !llvm.ptr<ptr<i8>>
    %126 = llvm.getelementptr %125[%123] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %128 = llvm.call @hvs_index_f64(%30, %113) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %129 = llvm.getelementptr %51[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.ptrtoint %128 : !llvm.ptr<f64> to i64
    %132 = llvm.sext %130 : i32 to i64
    %133 = llvm.mul %132, %8  : i64
    %134 = llvm.srem %131, %8  : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.add %135, %1  : i64
    %137 = llvm.load %124 : !llvm.ptr<ptr<i8>>
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %140 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%32, %113) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %141 = llvm.getelementptr %66[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %142 = llvm.load %141 : !llvm.ptr<i32>
    %143 = llvm.ptrtoint %140 : !llvm.ptr<i32> to i64
    %144 = llvm.sext %142 : i32 to i64
    %145 = llvm.mul %144, %3  : i64
    %146 = llvm.srem %143, %3  : i64
    %147 = llvm.add %145, %146  : i64
    %148 = llvm.add %147, %0  : i64
    %149 = llvm.load %124 : !llvm.ptr<ptr<i8>>
    %150 = llvm.getelementptr %149[%148] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %151 = llvm.bitcast %150 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %152 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %153 = llvm.getelementptr %152[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %154 = llvm.getelementptr %153[%144] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %155 = llvm.getelementptr %154[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %156 = llvm.load %155 : !llvm.ptr<i16>
    llvm.call @poll_qid1(%6, %156) : (i32, i16) -> ()
    %157 = llvm.add %81, %20  : i64
    %158 = llvm.mul %157, %16  : i64
    %159 = llvm.icmp "sgt" %33, %158 : i64
    llvm.cond_br %159, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%16 : i64)
  ^bb15:  // pred: ^bb13
    %160 = llvm.mul %81, %16  : i64
    %161 = llvm.sub %33, %160  : i64
    llvm.br ^bb16(%161 : i64)
  ^bb16(%162: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %163 = llvm.mul %81, %16  : i64
    llvm.br ^bb18(%18 : i64)
  ^bb18(%164: i64):  // 2 preds: ^bb17, ^bb21
    %165 = llvm.icmp "slt" %164, %162 : i64
    llvm.cond_br %165, ^bb19, ^bb22
  ^bb19:  // pred: ^bb18
    %166 = llvm.add %164, %163  : i64
    %167 = llvm.getelementptr %127[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %168 = llvm.getelementptr %139[%164] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %169 = llvm.getelementptr %151[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %170 = llvm.call @_ZNSt6vectorImSaImEEixEm(%28, %166) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %171 = llvm.load %167 : !llvm.ptr<i64>
    llvm.store %171, %25 : !llvm.ptr<i64>
    %172 = llvm.call @hvs_index_f64(%30, %166) : (!llvm.ptr<struct<"_Lowered_rhvs::class.std::vector", (struct<"_Lowered_rhvs::struct.std::_Vector_base", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"_Lowered_rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %173 = llvm.load %168 : !llvm.ptr<f64>
    llvm.store %173, %23 : !llvm.ptr<f64>
    %174 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%32, %166) : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %169 : !llvm.ptr<i32>
    llvm.store %175, %21 : !llvm.ptr<i32>
    %176 = llvm.call @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0, %25, %23) : (!llvm.ptr<struct<"class.anon", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<f64>) -> i8
    %177 = llvm.icmp "ne" %176, %19 : i8
    llvm.cond_br %177, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %21) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb19, ^bb20
    %178 = llvm.add %164, %13  : i64
    llvm.br ^bb18(%178 : i64)
  ^bb22:  // pred: ^bb18
    %179 = llvm.add %81, %13  : i64
    llvm.br ^bb10(%179 : i64)
  ^bb23:  // pred: ^bb10
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
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
  llvm.func @asin(f64) -> f64 attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str9 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i32>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i32>>
    %24 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %25 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%21, %23, %17, %24) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    llvm.br ^bb6(%17 : !llvm.ptr<i32>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
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
    %37 = llvm.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    %38 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.br ^bb6(%37 : !llvm.ptr<i32>)
  ^bb6(%39: !llvm.ptr<i32>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %40 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<i32>>
    %45 = llvm.getelementptr %42[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i32>>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.ptrtoint %44 : !llvm.ptr<i32> to i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.sdiv %49, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%40, %44, %50) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
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
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::class.std::vector", (struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func internal @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0: !llvm.ptr<struct<"class.anon", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<f64>) -> i8 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1.000000e+02 : f64) : f64
    %1 = llvm.load %arg2 : !llvm.ptr<f64>
    %2 = llvm.fcmp "ogt" %1, %0 : f64
    %3 = llvm.zext %2 : i1 to i8
    llvm.return %3 : i8
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i32>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %11 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    llvm.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.store %17, %6 : !llvm.ptr<ptr<i32>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %18, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
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
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
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
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, i64) -> !llvm.ptr<i32>
    llvm.br ^bb3(%7 : !llvm.ptr<i32>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i32>
    llvm.br ^bb3(%8 : !llvm.ptr<i32>)
  ^bb3(%9: !llvm.ptr<i32>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %5 = llvm.mlir.addressof @str10 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i32>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i32>>
    %15 = llvm.call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %15, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %18 = llvm.bitcast %9 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %23 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
    %27 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %28 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%12, %26, %17, %27) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i32>>
    %32 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %33 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%31, %14, %29, %32) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    llvm.br ^bb3(%33 : !llvm.ptr<i32>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i32>>
    %36 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i32>>
    %41 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    llvm.br ^bb3(%42 : !llvm.ptr<i32>)
  ^bb3(%43: !llvm.ptr<i32>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i32>>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %50 = llvm.ptrtoint %12 : !llvm.ptr<i32> to i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%8, %12, %52) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i32>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i32>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %53, %47 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) {
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
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 {
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
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    llvm.return %2 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> {
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
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    llvm.store %0, %arg1 : !llvm.ptr<i32>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
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
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.return %0 : !llvm.ptr<ptr<i32>>
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> {
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
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 {
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
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> {
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
  llvm.func linkonce_odr @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) {
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
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func @_ZSt17__throw_bad_allocv() attributes {sym_visibility = "private"}
  llvm.func @_Znwm(i64) -> !llvm.ptr<i8> attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> {
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

