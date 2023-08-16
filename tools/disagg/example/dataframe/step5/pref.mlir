module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global internal constant @str10("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("vector::reserve\00") {addr_space = 0 : i32}
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, linkage = 10 : i64, sym_name = "vendor_id_col", unnamed_addr = 0 : i64} : {
  }
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "index_col", unnamed_addr = 0 : i64} : {
  }
  llvm.mlir.global internal constant @str8("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("Number of rows that have haversine_distance > 100 KM = %lu\0A\00") {addr_space = 0 : i32}
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "haversine_col", unnamed_addr = 0 : i64} : {
  }
  llvm.mlir.global internal constant @str6("pickup_longitude_vec.size() == dropoff_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("pickup_longitude_vec.size() == dropoff_longitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.func @__assert_fail(!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @str4("void calculate_haversine_distance_column()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("/users/Zijian/new_rt/apps/dataframe/new_app/step5.cc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("pickup_longitude_vec.size() == pickup_latitude_vec.size()\00") {addr_space = 0 : i32}
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "drop_lat_col", unnamed_addr = 0 : i64} : {
  }
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "drop_long_col", unnamed_addr = 0 : i64} : {
  }
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "pick_lat_col", unnamed_addr = 0 : i64} : {
  }
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "pick_long_col", unnamed_addr = 0 : i64} : {
  }
  llvm.mlir.global internal constant @str1("calculate_haversine_distance_column()\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Step 5: %ld us\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %4 = llvm.alloca %c1_i64 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %5 = llvm.mlir.undef : i32
    call @_Z9ext_setupv() : () -> ()
    %6 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %18 = arith.index_cast %arg0 : index to i64
      %19 = llvm.getelementptr %6[%18] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
      func.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%19) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    }
    %7 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %7, %3 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %8 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%6, %3) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z35calculate_haversine_distance_columnv() : () -> ()
    %9 = llvm.getelementptr %6[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %10 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %10, %2 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %11 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%9, %2) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %12 = llvm.mlir.addressof @str0 : !llvm.ptr<array<16 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %14 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%9, %6) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %14, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %15 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %15, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %16 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %17 = llvm.call @printf(%13, %16) : (!llvm.ptr<i8>, i64) -> i32
    return %5 : i32
  }
  func.func private @_Z9ext_setupv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() : () -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %2, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%1, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.load %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %4, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return
  }
  func.func @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%0, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %arg0 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
  }
  func.func private @_ZNSt6chrono3_V212steady_clock3nowEv() -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_Z35calculate_haversine_distance_columnv() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2_i8 = arith.constant 2 : i8
    %c352_i32 = arith.constant 352 : i32
    %c9_i64 = arith.constant 9 : i64
    %c8_i64 = arith.constant 8 : i64
    %c524288 = arith.constant 524288 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c9_i32 = arith.constant 9 : i32
    %c524288_i64 = arith.constant 524288 : i64
    %c524287_i64 = arith.constant 524287 : i64
    %cst = arith.constant 3.1415926535897931 : f64
    %cst_0 = arith.constant 1.800000e+02 : f64
    %cst_1 = arith.constant 2.000000e+00 : f64
    %cst_2 = arith.constant 6.371000e+03 : f64
    %c0 = arith.constant 0 : index
    %c63_i32 = arith.constant 63 : i32
    %c62_i32 = arith.constant 62 : i32
    %c61_i32 = arith.constant 61 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon", (i8)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon", (i8)>>
    %3 = llvm.mlir.addressof @str1 : !llvm.ptr<array<39 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<39 x i8>>) -> !llvm.ptr<i8>
    %5 = llvm.call @printf(%4) : (!llvm.ptr<i8>) -> i32
    %6 = rmem.llvm.addressof @pick_long_col : <!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>>
    %7 = rmem.llvm.load %6 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>
    %8 = rmem.llvm.addressof @pick_lat_col : <!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>>
    %9 = rmem.llvm.load %8 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>
    %10 = rmem.llvm.addressof @drop_long_col : <!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>>
    %11 = rmem.llvm.load %10 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>
    %12 = rmem.llvm.addressof @drop_lat_col : <!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>>
    %13 = rmem.llvm.load %12 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>
    %14 = call @plon_size_f64(%7) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %15 = call @plat_size_f64(%9) : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %16 = arith.cmpi eq, %14, %15 : i64
    scf.if %16 {
    } else {
      %42 = llvm.mlir.addressof @str2 : !llvm.ptr<array<58 x i8>>
      %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<array<58 x i8>>) -> !llvm.ptr<i8>
      %44 = llvm.mlir.addressof @str3 : !llvm.ptr<array<53 x i8>>
      %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
      %46 = llvm.mlir.addressof @str4 : !llvm.ptr<array<43 x i8>>
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%43, %45, %c61_i32, %47) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %17 = call @plon_size_f64(%7) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %18 = call @dlon_size_f64(%11) : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %19 = arith.cmpi eq, %17, %18 : i64
    scf.if %19 {
    } else {
      %42 = llvm.mlir.addressof @str5 : !llvm.ptr<array<60 x i8>>
      %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
      %44 = llvm.mlir.addressof @str3 : !llvm.ptr<array<53 x i8>>
      %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
      %46 = llvm.mlir.addressof @str4 : !llvm.ptr<array<43 x i8>>
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%43, %45, %c62_i32, %47) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %20 = call @plon_size_f64(%7) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %21 = call @dlat_size_f64(%13) : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %22 = arith.cmpi eq, %20, %21 : i64
    scf.if %22 {
    } else {
      %42 = llvm.mlir.addressof @str6 : !llvm.ptr<array<59 x i8>>
      %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<array<59 x i8>>) -> !llvm.ptr<i8>
      %44 = llvm.mlir.addressof @str3 : !llvm.ptr<array<53 x i8>>
      %45 = llvm.getelementptr %44[0, 0] : (!llvm.ptr<array<53 x i8>>) -> !llvm.ptr<i8>
      %46 = llvm.mlir.addressof @str4 : !llvm.ptr<array<43 x i8>>
      %47 = llvm.getelementptr %46[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%43, %45, %c63_i32, %47) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %23 = call @plat_size_f64(%9) : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    %24 = rmem.llvm.addressof @haversine_col : <!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>>
    %25 = rmem.llvm.load %24 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>
    %26 = arith.addi %23, %c524287_i64 : i64
    %27 = arith.divsi %26, %c524288_i64 : i64
    %28 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      %42 = arith.muli %arg0, %c524288 : index
      %43 = arith.index_cast %arg0 : index to i32
      %44 = arith.index_cast %42 : index to i64
      %45 = func.call @plon_index_f64(%7, %44) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<f64>>
      %46 = rmem.request 5, %45 : (!rmem.rmref<5, !llvm.ptr<f64>>) -> i32
      %47 = arith.extsi %43 : i32 to i64
      %48 = llvm.getelementptr %28[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %46, %48 : !llvm.ptr<i32>
    }
    %29 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      %42 = arith.muli %arg0, %c524288 : index
      %43 = arith.index_cast %arg0 : index to i32
      %44 = arith.index_cast %42 : index to i64
      %45 = func.call @hvs_index_f64(%25, %44) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
      %46 = rmem.request 12, %45 : (!rmem.rmref<12, !llvm.ptr<f64>>) -> i32
      %47 = arith.extsi %43 : i32 to i64
      %48 = llvm.getelementptr %29[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %46, %48 : !llvm.ptr<i32>
    }
    %30 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      %42 = arith.muli %arg0, %c524288 : index
      %43 = arith.index_cast %arg0 : index to i32
      %44 = arith.index_cast %42 : index to i64
      %45 = func.call @dlat_index_f64(%13, %44) : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<9, !llvm.ptr<f64>>
      %46 = rmem.request 9, %45 : (!rmem.rmref<9, !llvm.ptr<f64>>) -> i32
      %47 = arith.extsi %43 : i32 to i64
      %48 = llvm.getelementptr %30[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %46, %48 : !llvm.ptr<i32>
    }
    %31 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      %42 = arith.muli %arg0, %c524288 : index
      %43 = arith.index_cast %arg0 : index to i32
      %44 = arith.index_cast %42 : index to i64
      %45 = func.call @plat_index_f64(%9, %44) : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<6, !llvm.ptr<f64>>
      %46 = rmem.request 6, %45 : (!rmem.rmref<6, !llvm.ptr<f64>>) -> i32
      %47 = arith.extsi %43 : i32 to i64
      %48 = llvm.getelementptr %31[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %46, %48 : !llvm.ptr<i32>
    }
    %32 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg0 = %c0 to %c8 step %c1 {
      %42 = arith.muli %arg0, %c524288 : index
      %43 = arith.index_cast %arg0 : index to i32
      %44 = arith.index_cast %42 : index to i64
      %45 = func.call @dlon_index_f64(%11, %44) : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<8, !llvm.ptr<f64>>
      %46 = rmem.request 8, %45 : (!rmem.rmref<8, !llvm.ptr<f64>>) -> i32
      %47 = arith.extsi %43 : i32 to i64
      %48 = llvm.getelementptr %32[%47] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %46, %48 : !llvm.ptr<i32>
    }
    %33 = arith.index_cast %27 : i64 to index
    scf.for %arg0 = %c0 to %33 step %c1 {
      %42 = arith.index_cast %arg0 : index to i64
      %43 = arith.addi %42, %c8_i64 : i64
      %44 = arith.cmpi slt, %43, %27 : i64
      scf.if %44 {
        %82 = arith.remsi %43, %c9_i64 : i64
        %83 = arith.trunci %82 : i64 to i32
        %84 = arith.index_cast %43 : i64 to index
        %85 = arith.muli %84, %c524288 : index
        %86 = arith.index_cast %85 : index to i64
        %87 = func.call @plon_index_f64(%7, %86) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<f64>>
        %88 = rmem.request 5, %87 : (!rmem.rmref<5, !llvm.ptr<f64>>) -> i32
        %89 = arith.extsi %83 : i32 to i64
        %90 = llvm.getelementptr %28[%89] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %88, %90 : !llvm.ptr<i32>
        %91 = arith.remsi %43, %c9_i64 : i64
        %92 = arith.trunci %91 : i64 to i32
        %93 = arith.index_cast %43 : i64 to index
        %94 = arith.muli %93, %c524288 : index
        %95 = arith.index_cast %94 : index to i64
        %96 = func.call @hvs_index_f64(%25, %95) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
        %97 = rmem.request 12, %96 : (!rmem.rmref<12, !llvm.ptr<f64>>) -> i32
        %98 = arith.extsi %92 : i32 to i64
        %99 = llvm.getelementptr %29[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %97, %99 : !llvm.ptr<i32>
        %100 = arith.remsi %43, %c9_i64 : i64
        %101 = arith.trunci %100 : i64 to i32
        %102 = arith.index_cast %43 : i64 to index
        %103 = arith.muli %102, %c524288 : index
        %104 = arith.index_cast %103 : index to i64
        %105 = func.call @dlat_index_f64(%13, %104) : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<9, !llvm.ptr<f64>>
        %106 = rmem.request 9, %105 : (!rmem.rmref<9, !llvm.ptr<f64>>) -> i32
        %107 = arith.extsi %101 : i32 to i64
        %108 = llvm.getelementptr %30[%107] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %106, %108 : !llvm.ptr<i32>
        %109 = arith.remsi %43, %c9_i64 : i64
        %110 = arith.trunci %109 : i64 to i32
        %111 = arith.index_cast %43 : i64 to index
        %112 = arith.muli %111, %c524288 : index
        %113 = arith.index_cast %112 : index to i64
        %114 = func.call @plat_index_f64(%9, %113) : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<6, !llvm.ptr<f64>>
        %115 = rmem.request 6, %114 : (!rmem.rmref<6, !llvm.ptr<f64>>) -> i32
        %116 = arith.extsi %110 : i32 to i64
        %117 = llvm.getelementptr %31[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %115, %117 : !llvm.ptr<i32>
        %118 = arith.remsi %43, %c9_i64 : i64
        %119 = arith.trunci %118 : i64 to i32
        %120 = arith.index_cast %43 : i64 to index
        %121 = arith.muli %120, %c524288 : index
        %122 = arith.index_cast %121 : index to i64
        %123 = func.call @dlon_index_f64(%11, %122) : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<8, !llvm.ptr<f64>>
        %124 = rmem.request 8, %123 : (!rmem.rmref<8, !llvm.ptr<f64>>) -> i32
        %125 = arith.extsi %119 : i32 to i64
        %126 = llvm.getelementptr %32[%125] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %124, %126 : !llvm.ptr<i32>
      }
      %45 = arith.muli %arg0, %c524288 : index
      %46 = arith.index_cast %45 : index to i64
      %47 = func.call @plon_index_f64(%7, %46) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<f64>>
      %48 = arith.remsi %42, %c9_i64 : i64
      %49 = llvm.getelementptr %28[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %50 = llvm.load %49 : !llvm.ptr<i32>
      %51 = rmem.paddr 5, %50, %47 : (i32, !rmem.rmref<5, !llvm.ptr<f64>>) -> !llvm.ptr<f64>
      %52 = func.call @hvs_index_f64(%25, %46) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
      %53 = llvm.getelementptr %29[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %54 = llvm.load %53 : !llvm.ptr<i32>
      %55 = rmem.paddr 12, %54, %52 : (i32, !rmem.rmref<12, !llvm.ptr<f64>>) -> !llvm.ptr<f64>
      %56 = arith.addi %54, %c352_i32 : i32
      %57 = arith.extsi %56 : i32 to i64
      %58 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %59 = llvm.getelementptr %58[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %60 = llvm.getelementptr %59[%57] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %61 = llvm.getelementptr %60[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %62 = llvm.load %61 : !llvm.ptr<i8>
      %63 = arith.ori %62, %c2_i8 : i8
      llvm.store %63, %61 : !llvm.ptr<i8>
      %64 = func.call @dlat_index_f64(%13, %46) : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<9, !llvm.ptr<f64>>
      %65 = llvm.getelementptr %30[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %66 = llvm.load %65 : !llvm.ptr<i32>
      %67 = rmem.paddr 9, %66, %64 : (i32, !rmem.rmref<9, !llvm.ptr<f64>>) -> !llvm.ptr<f64>
      %68 = func.call @plat_index_f64(%9, %46) : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<6, !llvm.ptr<f64>>
      %69 = llvm.getelementptr %31[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %70 = llvm.load %69 : !llvm.ptr<i32>
      %71 = rmem.paddr 6, %70, %68 : (i32, !rmem.rmref<6, !llvm.ptr<f64>>) -> !llvm.ptr<f64>
      %72 = func.call @dlon_index_f64(%11, %46) : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<8, !llvm.ptr<f64>>
      %73 = llvm.getelementptr %32[%48] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %74 = llvm.load %73 : !llvm.ptr<i32>
      %75 = rmem.paddr 8, %74, %72 : (i32, !rmem.rmref<8, !llvm.ptr<f64>>) -> !llvm.ptr<f64>
      rmem.poll 8, %74 : (i32) -> ()
      %76 = arith.addi %42, %c1_i64 : i64
      %77 = arith.muli %76, %c524288_i64 : i64
      %78 = arith.cmpi sgt, %23, %77 : i64
      %79 = scf.if %78 -> (i64) {
        scf.yield %c524288_i64 : i64
      } else {
        %82 = arith.muli %42, %c524288_i64 : i64
        %83 = arith.subi %23, %82 : i64
        scf.yield %83 : i64
      }
      %80 = arith.muli %42, %c524288_i64 : i64
      %81 = arith.index_cast %79 : i64 to index
      scf.for %arg1 = %c0 to %81 step %c1 {
        %82 = arith.index_cast %80 : i64 to index
        %83 = arith.addi %arg1, %82 : index
        %84 = arith.index_cast %arg1 : index to i64
        %85 = rmem.llvm.getelementptr %51[%84 []] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>, f64
        %86 = rmem.from_addr %85 : (!llvm.ptr<f64>) -> !rmem.rmref<0, !llvm.ptr<f64>>
        %87 = rmem.llvm.getelementptr %55[%84 []] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>, f64
        %88 = rmem.from_addr %87 : (!llvm.ptr<f64>) -> !rmem.rmref<0, !llvm.ptr<f64>>
        %89 = rmem.llvm.getelementptr %67[%84 []] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>, f64
        %90 = rmem.from_addr %89 : (!llvm.ptr<f64>) -> !rmem.rmref<0, !llvm.ptr<f64>>
        %91 = rmem.llvm.getelementptr %71[%84 []] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>, f64
        %92 = rmem.from_addr %91 : (!llvm.ptr<f64>) -> !rmem.rmref<0, !llvm.ptr<f64>>
        %93 = rmem.llvm.getelementptr %75[%84 []] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>, f64
        %94 = rmem.from_addr %93 : (!llvm.ptr<f64>) -> !rmem.rmref<0, !llvm.ptr<f64>>
        %95 = arith.index_cast %83 : index to i64
        %96 = func.call @hvs_index_f64(%25, %95) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
        %97 = func.call @plat_index_f64(%9, %95) : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<6, !llvm.ptr<f64>>
        %98 = rmem.llvm.load %92 : (!rmem.rmref<0, !llvm.ptr<f64>>) -> f64
        %99 = func.call @plon_index_f64(%7, %95) : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<f64>>
        %100 = rmem.llvm.load %86 : (!rmem.rmref<0, !llvm.ptr<f64>>) -> f64
        %101 = func.call @dlat_index_f64(%13, %95) : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<9, !llvm.ptr<f64>>
        %102 = rmem.llvm.load %90 : (!rmem.rmref<0, !llvm.ptr<f64>>) -> f64
        %103 = func.call @dlon_index_f64(%11, %95) : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<8, !llvm.ptr<f64>>
        %104 = rmem.llvm.load %94 : (!rmem.rmref<0, !llvm.ptr<f64>>) -> f64
        %105 = arith.subf %102, %98 : f64
        %106 = arith.mulf %105, %cst : f64
        %107 = arith.divf %106, %cst_0 : f64
        %108 = arith.subf %104, %100 : f64
        %109 = arith.mulf %108, %cst : f64
        %110 = arith.divf %109, %cst_0 : f64
        %111 = arith.mulf %98, %cst : f64
        %112 = arith.divf %111, %cst_0 : f64
        %113 = arith.mulf %102, %cst : f64
        %114 = arith.divf %113, %cst_0 : f64
        %115 = arith.divf %107, %cst_1 : f64
        %116 = math.sin %115 : f64
        %117 = math.powf %116, %cst_1 : f64
        %118 = arith.divf %110, %cst_1 : f64
        %119 = math.sin %118 : f64
        %120 = math.powf %119, %cst_1 : f64
        %121 = math.cos %112 : f64
        %122 = arith.mulf %120, %121 : f64
        %123 = math.cos %114 : f64
        %124 = arith.mulf %122, %123 : f64
        %125 = arith.addf %117, %124 : f64
        %126 = math.sqrt %125 : f64
        %127 = func.call @asin(%126) : (f64) -> f64
        %128 = arith.mulf %127, %cst_1 : f64
        %129 = arith.mulf %128, %cst_2 : f64
        rmem.llvm.store %129 -> %88 : f64, !rmem.rmref<0, !llvm.ptr<f64>>
      }
    }
    call @_Z12vec_set_sizeIdEvRSt6vectorIT_SaIS1_EEm(%25, %23) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> ()
    %34 = llvm.load %2 : !llvm.ptr<struct<"class.anon", (i8)>>
    llvm.store %34, %1 : !llvm.ptr<struct<"class.anon", (i8)>>
    call @_ZNSt6vectorIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%1, %0) : (!llvm.ptr<struct<"class.anon", (i8)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %35 = llvm.mlir.addressof @str7 : !llvm.ptr<array<60 x i8>>
    %36 = llvm.getelementptr %35[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %37 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %38 = llvm.call @printf(%36, %37) : (!llvm.ptr<i8>, i64) -> i32
    %39 = llvm.mlir.addressof @str8 : !llvm.ptr<array<2 x i8>>
    %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %41 = llvm.call @printf(%40) : (!llvm.ptr<i8>) -> i32
    return
  }
  func.func @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %2 = call @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %2, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%1, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    return %3 : !llvm.struct<"struct.std::chrono::duration.0", (i64)>
  }
  func.func @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = call @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %4, %2 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = call @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg1) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %5, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = call @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%2, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %6, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%3, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %7 = llvm.load %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %7 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %2 = llvm.mlir.undef : i64
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%3, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<i64>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %5, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%4, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %6 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %6 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %2 = llvm.load %1 : !llvm.ptr<i64>
    llvm.store %2, %0 : !llvm.ptr<i64>
    return %arg0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
  }
  func.func @_ZNKSt6vectorIdSaIdEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<f64>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<f64> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<f64> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @hvs_size_f64(%arg0: !llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<12, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<12, !llvm.ptr<f64>>>) -> !rmem.rmref<12, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<12, !llvm.ptr<f64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<12, !llvm.ptr<f64>>>) -> !rmem.rmref<12, !llvm.ptr<f64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<12, !llvm.ptr<f64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<12, !llvm.ptr<f64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @plon_size_f64(%arg0: !llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<5, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<5, !llvm.ptr<f64>>>) -> !rmem.rmref<5, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<5, !llvm.ptr<f64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<5, !llvm.ptr<f64>>>) -> !rmem.rmref<5, !llvm.ptr<f64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<5, !llvm.ptr<f64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<5, !llvm.ptr<f64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @plat_size_f64(%arg0: !llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<6, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<6, !llvm.ptr<f64>>>) -> !rmem.rmref<6, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<6, !llvm.ptr<f64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<6, !llvm.ptr<f64>>>) -> !rmem.rmref<6, !llvm.ptr<f64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<6, !llvm.ptr<f64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<6, !llvm.ptr<f64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @dlat_size_f64(%arg0: !llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<9, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<9, !llvm.ptr<f64>>>) -> !rmem.rmref<9, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<9, !llvm.ptr<f64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<9, !llvm.ptr<f64>>>) -> !rmem.rmref<9, !llvm.ptr<f64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<9, !llvm.ptr<f64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<9, !llvm.ptr<f64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @dlon_size_f64(%arg0: !llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<8, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<8, !llvm.ptr<f64>>>) -> !rmem.rmref<8, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<8, !llvm.ptr<f64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<8, !llvm.ptr<f64>>>) -> !rmem.rmref<8, !llvm.ptr<f64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<8, !llvm.ptr<f64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<8, !llvm.ptr<f64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorIdSaIdEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    return %5 : !llvm.ptr<f64>
  }
  func.func @hvs_index_f64(%arg0: !llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<12, !llvm.ptr<f64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<12, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<12, !llvm.ptr<f64>>>) -> !rmem.rmref<12, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<12, !llvm.ptr<f64>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
    return %5 : !rmem.rmref<12, !llvm.ptr<f64>>
  }
  func.func @plon_index_f64(%arg0: !llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<5, !llvm.ptr<f64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::class.std::vector", (!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>, !rmem.rmref<5, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<5, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<5, !llvm.ptr<f64>>>) -> !rmem.rmref<5, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<5, !llvm.ptr<f64>>, i64) -> !rmem.rmref<5, !llvm.ptr<f64>>
    return %5 : !rmem.rmref<5, !llvm.ptr<f64>>
  }
  func.func @plat_index_f64(%arg0: !llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<6, !llvm.ptr<f64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::class.std::vector", (!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rplat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>, !rmem.rmref<6, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<6, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<6, !llvm.ptr<f64>>>) -> !rmem.rmref<6, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<6, !llvm.ptr<f64>>, i64) -> !rmem.rmref<6, !llvm.ptr<f64>>
    return %5 : !rmem.rmref<6, !llvm.ptr<f64>>
  }
  func.func @dlon_index_f64(%arg0: !llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<8, !llvm.ptr<f64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::class.std::vector", (!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlon::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>, !rmem.rmref<8, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<8, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<8, !llvm.ptr<f64>>>) -> !rmem.rmref<8, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<8, !llvm.ptr<f64>>, i64) -> !rmem.rmref<8, !llvm.ptr<f64>>
    return %5 : !rmem.rmref<8, !llvm.ptr<f64>>
  }
  func.func @dlat_index_f64(%arg0: !llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<9, !llvm.ptr<f64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::class.std::vector", (!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdlat::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>, !rmem.rmref<9, !llvm.ptr<f64>>)>>) -> !llvm.ptr<!rmem.rmref<9, !llvm.ptr<f64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<9, !llvm.ptr<f64>>>) -> !rmem.rmref<9, !llvm.ptr<f64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<9, !llvm.ptr<f64>>, i64) -> !rmem.rmref<9, !llvm.ptr<f64>>
    return %5 : !rmem.rmref<9, !llvm.ptr<f64>>
  }
  func.func private @_Z12vec_set_sizeIdEvRSt6vectorIT_SaIS1_EEm(!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    return
  }
  func.func private @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c9_i64 = arith.constant 9 : i64
    %c8_i64 = arith.constant 8 : i64
    %c524288 = arith.constant 524288 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c9_i32 = arith.constant 9 : i32
    %c524288_i64 = arith.constant 524288 : i64
    %c524287_i64 = arith.constant 524287 : i64
    %c0 = arith.constant 0 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %1 = llvm.mlir.undef : i32
    llvm.store %1, %0 : !llvm.ptr<i32>
    %2 = llvm.alloca %c1_i64 x f64 : (i64) -> !llvm.ptr<f64>
    %3 = llvm.mlir.undef : f64
    llvm.store %3, %2 : !llvm.ptr<f64>
    %4 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %5 = llvm.mlir.undef : i64
    llvm.store %5, %4 : !llvm.ptr<i64>
    %6 = rmem.llvm.addressof @index_col : <!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>>
    %7 = rmem.llvm.load %6 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>
    %8 = rmem.llvm.addressof @haversine_col : <!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>>
    %9 = rmem.llvm.load %8 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>
    %10 = rmem.llvm.addressof @vendor_id_col : <!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>>
    %11 = rmem.llvm.load %10 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>
    %12 = call @hvs_size_f64(%9) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %12) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %13 = arith.addi %12, %c524287_i64 : i64
    %14 = arith.divsi %13, %c524288_i64 : i64
    %15 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %c8 step %c1 {
      %19 = arith.muli %arg2, %c524288 : index
      %20 = arith.index_cast %arg2 : index to i32
      %21 = arith.index_cast %19 : index to i64
      %22 = func.call @_ZNSt6vectorImSaImEEixEm(%7, %21) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<10, !llvm.ptr<i64>>
      %23 = rmem.request 10, %22 : (!rmem.rmref<10, !llvm.ptr<i64>>) -> i32
      %24 = arith.extsi %20 : i32 to i64
      %25 = llvm.getelementptr %15[%24] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %23, %25 : !llvm.ptr<i32>
    }
    %16 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %c8 step %c1 {
      %19 = arith.muli %arg2, %c524288 : index
      %20 = arith.index_cast %arg2 : index to i32
      %21 = arith.index_cast %19 : index to i64
      %22 = func.call @hvs_index_f64(%9, %21) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
      %23 = rmem.request 12, %22 : (!rmem.rmref<12, !llvm.ptr<f64>>) -> i32
      %24 = arith.extsi %20 : i32 to i64
      %25 = llvm.getelementptr %16[%24] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %23, %25 : !llvm.ptr<i32>
    }
    %17 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg2 = %c0 to %c8 step %c1 {
      %19 = arith.muli %arg2, %c524288 : index
      %20 = arith.index_cast %arg2 : index to i32
      %21 = arith.index_cast %19 : index to i64
      %22 = func.call @_ZNSt6vectorIiSaIiEEixEm(%11, %21) : (!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
      %23 = rmem.request 1, %22 : (!rmem.rmref<1, !llvm.ptr<i32>>) -> i32
      %24 = arith.extsi %20 : i32 to i64
      %25 = llvm.getelementptr %17[%24] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %23, %25 : !llvm.ptr<i32>
    }
    %18 = arith.index_cast %14 : i64 to index
    scf.for %arg2 = %c0 to %18 step %c1 {
      %19 = arith.index_cast %arg2 : index to i64
      %20 = arith.addi %19, %c8_i64 : i64
      %21 = arith.cmpi slt, %20, %14 : i64
      scf.if %21 {
        %43 = arith.remsi %20, %c9_i64 : i64
        %44 = arith.trunci %43 : i64 to i32
        %45 = arith.index_cast %20 : i64 to index
        %46 = arith.muli %45, %c524288 : index
        %47 = arith.index_cast %46 : index to i64
        %48 = func.call @_ZNSt6vectorImSaImEEixEm(%7, %47) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<10, !llvm.ptr<i64>>
        %49 = rmem.request 10, %48 : (!rmem.rmref<10, !llvm.ptr<i64>>) -> i32
        %50 = arith.extsi %44 : i32 to i64
        %51 = llvm.getelementptr %15[%50] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %49, %51 : !llvm.ptr<i32>
        %52 = arith.remsi %20, %c9_i64 : i64
        %53 = arith.trunci %52 : i64 to i32
        %54 = arith.index_cast %20 : i64 to index
        %55 = arith.muli %54, %c524288 : index
        %56 = arith.index_cast %55 : index to i64
        %57 = func.call @hvs_index_f64(%9, %56) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
        %58 = rmem.request 12, %57 : (!rmem.rmref<12, !llvm.ptr<f64>>) -> i32
        %59 = arith.extsi %53 : i32 to i64
        %60 = llvm.getelementptr %16[%59] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %58, %60 : !llvm.ptr<i32>
        %61 = arith.remsi %20, %c9_i64 : i64
        %62 = arith.trunci %61 : i64 to i32
        %63 = arith.index_cast %20 : i64 to index
        %64 = arith.muli %63, %c524288 : index
        %65 = arith.index_cast %64 : index to i64
        %66 = func.call @_ZNSt6vectorIiSaIiEEixEm(%11, %65) : (!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
        %67 = rmem.request 1, %66 : (!rmem.rmref<1, !llvm.ptr<i32>>) -> i32
        %68 = arith.extsi %62 : i32 to i64
        %69 = llvm.getelementptr %17[%68] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %67, %69 : !llvm.ptr<i32>
      }
      %22 = arith.muli %arg2, %c524288 : index
      %23 = arith.index_cast %22 : index to i64
      %24 = func.call @_ZNSt6vectorImSaImEEixEm(%7, %23) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<10, !llvm.ptr<i64>>
      %25 = arith.remsi %19, %c9_i64 : i64
      %26 = llvm.getelementptr %15[%25] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %27 = llvm.load %26 : !llvm.ptr<i32>
      %28 = rmem.paddr 10, %27, %24 : (i32, !rmem.rmref<10, !llvm.ptr<i64>>) -> !llvm.ptr<i64>
      %29 = func.call @hvs_index_f64(%9, %23) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
      %30 = llvm.getelementptr %16[%25] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %31 = llvm.load %30 : !llvm.ptr<i32>
      %32 = rmem.paddr 12, %31, %29 : (i32, !rmem.rmref<12, !llvm.ptr<f64>>) -> !llvm.ptr<f64>
      %33 = func.call @_ZNSt6vectorIiSaIiEEixEm(%11, %23) : (!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
      %34 = llvm.getelementptr %17[%25] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %35 = llvm.load %34 : !llvm.ptr<i32>
      %36 = rmem.paddr 1, %35, %33 : (i32, !rmem.rmref<1, !llvm.ptr<i32>>) -> !llvm.ptr<i32>
      rmem.poll 1, %35 : (i32) -> ()
      %37 = arith.addi %19, %c1_i64 : i64
      %38 = arith.muli %37, %c524288_i64 : i64
      %39 = arith.cmpi sgt, %12, %38 : i64
      %40 = scf.if %39 -> (i64) {
        scf.yield %c524288_i64 : i64
      } else {
        %43 = arith.muli %19, %c524288_i64 : i64
        %44 = arith.subi %12, %43 : i64
        scf.yield %44 : i64
      }
      %41 = arith.muli %19, %c524288_i64 : i64
      %42 = arith.index_cast %40 : i64 to index
      scf.for %arg3 = %c0 to %42 step %c1 {
        %43 = arith.index_cast %41 : i64 to index
        %44 = arith.addi %arg3, %43 : index
        %45 = arith.index_cast %arg3 : index to i64
        %46 = rmem.llvm.getelementptr %28[%45 []] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>, i64
        %47 = rmem.from_addr %46 : (!llvm.ptr<i64>) -> !rmem.rmref<0, !llvm.ptr<i64>>
        %48 = rmem.llvm.getelementptr %32[%45 []] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>, f64
        %49 = rmem.from_addr %48 : (!llvm.ptr<f64>) -> !rmem.rmref<0, !llvm.ptr<f64>>
        %50 = rmem.llvm.getelementptr %36[%45 []] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>, i32
        %51 = rmem.from_addr %50 : (!llvm.ptr<i32>) -> !rmem.rmref<0, !llvm.ptr<i32>>
        %52 = arith.index_cast %44 : index to i64
        %53 = func.call @_ZNSt6vectorImSaImEEixEm(%7, %52) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<10, !llvm.ptr<i64>>
        %54 = rmem.llvm.load %47 : (!rmem.rmref<0, !llvm.ptr<i64>>) -> i64
        rmem.llvm.store %54 -> %4 : i64, !llvm.ptr<i64>
        %55 = func.call @hvs_index_f64(%9, %52) : (!llvm.ptr<!llvm.struct<"rhvs::class.std::vector", (!llvm.struct<"rhvs::struct.std::_Vector_base", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (!llvm.struct<"rhvs::struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (!rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>, !rmem.rmref<12, !llvm.ptr<f64>>)>)>)>)>>, i64) -> !rmem.rmref<12, !llvm.ptr<f64>>
        %56 = rmem.llvm.load %49 : (!rmem.rmref<0, !llvm.ptr<f64>>) -> f64
        rmem.llvm.store %56 -> %2 : f64, !llvm.ptr<f64>
        %57 = func.call @_ZNSt6vectorIiSaIiEEixEm(%11, %52) : (!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
        %58 = rmem.llvm.load %51 : (!rmem.rmref<0, !llvm.ptr<i32>>) -> i32
        rmem.llvm.store %58 -> %0 : i32, !llvm.ptr<i32>
        %59 = func.call @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0, %4, %2) : (!llvm.ptr<struct<"class.anon", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<f64>) -> i8
        %60 = arith.cmpi ne, %59, %c0_i8 : i8
        scf.if %60 {
          func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
        }
      }
    }
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i32> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c4_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1000_i64 = arith.constant 1000 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %2 = llvm.mlir.undef : i64
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %5 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    %6 = arith.divsi %5, %c1000_i64 : i64
    llvm.store %6, %1 : !llvm.ptr<i64>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%3, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<i64>) -> ()
    %7 = llvm.load %3 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(%4, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> ()
    %8 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    return %8 : !llvm.struct<"struct.std::chrono::duration.0", (i64)>
  }
  func.func @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %2 = llvm.mlir.undef : i64
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %8 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%6, %arg0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %9 = llvm.load %6 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %9, %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %10 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%5) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%4, %arg1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %11 = llvm.load %4 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %11, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %12 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%3) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64
    %13 = arith.subi %10, %12 : i64
    llvm.store %13, %1 : !llvm.ptr<i64>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%7, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<i64>) -> ()
    %14 = llvm.load %7 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    llvm.store %14, %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%8, %0) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %15 = llvm.load %8 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %15 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    call @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(%0, %1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> ()
    %2 = llvm.load %0 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    return %2 : !llvm.struct<"struct.std::chrono::duration", (i64)>
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNSt6chrono15duration_valuesIlE4zeroEv() -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    return %c0_i64 : i64
  }
  func.func private @asin(f64) -> f64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str9 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i32>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i32>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i32>>
        %35 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
        scf.yield %28 : !llvm.ptr<i32>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %31 = llvm.load %30 : !llvm.ptr<ptr<i32>>
        %32 = func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%31) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
        llvm.store %32, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
        %33 = llvm.getelementptr %29[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i32>>
        %35 = func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%34) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
        llvm.store %35, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
        %36 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        %37 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
        %38 = func.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
        %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
        scf.yield %38 : !llvm.ptr<i32>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i32>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i32>>
      %19 = llvm.ptrtoint %18 : !llvm.ptr<i32> to i64
      %20 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
      %21 = arith.subi %19, %20 : i64
      %22 = arith.divsi %21, %c4_i64 : i64
      func.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
      llvm.store %11, %15 : !llvm.ptr<ptr<i32>>
      %23 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %24 = llvm.getelementptr %11[%8] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %24, %23 : !llvm.ptr<ptr<i32>>
      %25 = llvm.load %15 : !llvm.ptr<ptr<i32>>
      %26 = llvm.getelementptr %25[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %26, %17 : !llvm.ptr<ptr<i32>>
    }
    return
  }
  func.func @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<10, !llvm.ptr<i64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<10, !llvm.ptr<i64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<10, !llvm.ptr<i64>>>) -> !rmem.rmref<10, !llvm.ptr<i64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<10, !llvm.ptr<i64>>, i64) -> !rmem.rmref<10, !llvm.ptr<i64>>
    return %5 : !rmem.rmref<10, !llvm.ptr<i64>>
  }
  func.func @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<1, !llvm.ptr<i32>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rvid::class.std::vector", (!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rvid::struct.std::_Vector_base", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>>) -> !llvm.ptr<!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rvid::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>>) -> !llvm.ptr<!rmem.rmref<1, !llvm.ptr<i32>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<1, !llvm.ptr<i32>>>) -> !rmem.rmref<1, !llvm.ptr<i32>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<1, !llvm.ptr<i32>>, i64) -> !rmem.rmref<1, !llvm.ptr<i32>>
    return %5 : !rmem.rmref<1, !llvm.ptr<i32>>
  }
  func.func private @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0: !llvm.ptr<struct<"class.anon", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<f64>) -> i8 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+02 : f64
    %0 = llvm.load %arg2 : !llvm.ptr<f64>
    %1 = arith.cmpf ogt, %0, %cst : f64
    %2 = arith.extui %1 : i1 to i8
    return %2 : i8
  }
  func.func @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i32>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i32>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i32>>
      func.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i32>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      llvm.store %16, %5 : !llvm.ptr<ptr<i32>>
    } else {
      %10 = func.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      func.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> ()
    }
    return
  }
  func.func @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(%arg0: !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64
    return %2 : i64
  }
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i32> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c4_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    return %c1_i8 : i8
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i32>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, i64) -> !llvm.ptr<i32>
      scf.yield %7 : !llvm.ptr<i32>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i32>
      scf.yield %2 : !llvm.ptr<i32>
    }
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<i32>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    return %4 : !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
  }
  func.func @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      func.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.mlir.addressof @str10 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i32>>
    %12 = call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %13 = call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %20 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i32>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
      %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
      scf.yield %40 : !llvm.ptr<i32>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
      %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
      scf.yield %40 : !llvm.ptr<i32>
    }
    %23 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
    %28 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
    %29 = arith.subi %27, %28 : i64
    %30 = arith.divsi %29, %c4_i64 : i64
    call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i32>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i32>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %31, %25 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  func.func @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i32>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.store %c2305843009213693951_i64, %2 : !llvm.ptr<i64>
    llvm.store %c2305843009213693951_i64, %0 : !llvm.ptr<i64>
    %3 = call @_ZSt3minImERKT_S2_S2_(%2, %0) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    return %4 : i64
  }
  func.func @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    return %2 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZSt8_DestroyIPiEvT_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    llvm.store %0, %arg1 : !llvm.ptr<i32>
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      scf.yield %17 : i64
    } else {
      scf.yield %12 : i64
    }
    return %16 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i32>>
    %4 = llvm.ptrtoint %1 : !llvm.ptr<i32> to i64
    %5 = llvm.ptrtoint %3 : !llvm.ptr<i32> to i64
    %6 = arith.subi %4, %5 : i64
    %7 = arith.divsi %6, %c4_i64 : i64
    return %7 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    return %0 : !llvm.ptr<ptr<i32>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %4 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %5 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator", (ptr<i32>)>
    llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    return %8 : !llvm.ptr<i32>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    %0 = arith.cmpi sgt, %arg1, %c2305843009213693951_i64 : i64
    scf.if %0 {
      func.call @_ZSt17__throw_bad_allocv() : () -> ()
    }
    %1 = arith.muli %arg1, %c4_i64 : i64
    %2 = call @_Znwm(%1) : (i64) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<i32>
    return %3 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i32> to !llvm.ptr<i8>
    call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg0 : !llvm.ptr<i64>
    %1 = llvm.load %arg1 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c4_i64 : i64
    %4 = arith.cmpi sgt, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c4_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %6 = call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func private @_ZdlPv(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %5 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> ()
    %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %7 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32>
    %8 = call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %8 : !llvm.ptr<i32>
  }
  func.func @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>
    %1 = call @_ZNKSt13move_iteratorIPiE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32>
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_wrapIPiET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i32>>, %arg1: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg1 : !llvm.ptr<i32>
  }
  func.func @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__miter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c4_i64 : i64
    %4 = arith.cmpi ne, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i32> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c4_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
}

