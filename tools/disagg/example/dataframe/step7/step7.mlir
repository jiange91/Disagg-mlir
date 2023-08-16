module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str6("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global external @pick_month_col() {addr_space = 0 : i32,
    remote_target = 1,
    !llvm.ptr<struct<"rmon::class.std::vector.1", (struct<"rmon::struct.std::_Vector_base.2", (struct<"rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"rmon::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (!rmem.rmref<14, !llvm.ptr<i16>>, !rmem.rmref<14, !llvm.ptr<i16>>, !rmem.rmref<14, !llvm.ptr<i16>>)>)>)>)>>
  } : !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @duration_col() {addr_space = 0 : i32,
    remote_target = 1,
    !llvm.ptr<struct<"rdur::class.std::vector", (struct<"rdur::struct.std::_Vector_base", (struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>
  } : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global external @pick_day_col() {addr_space = 0 : i32,
     remote_target = 1,
    rel_types = [!llvm.ptr<struct<"rday::class.std::vector.1", (struct<"rday::struct.std::_Vector_base.2", (struct<"rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (!rmem.rmref<13, !llvm.ptr<i16>>, !rmem.rmref<13, !llvm.ptr<i16>>, !rmem.rmref<13, !llvm.ptr<i16>>)>)>)>)>>
  } : !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @index_col() {addr_space = 0 : i32,
    remote_target = 1,
    rel_types = [!llvm.ptr<struct<"rid::class.std::vector.1", (struct<"rid::struct.std::_Vector_base.2", (struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>]
  } : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str4("analyze_trip_durations_of_timestamps() on key = %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Step 8: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("Step 7: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("pickup_month\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("pickup_day\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %7 = llvm.alloca %c1_i64 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %8 = llvm.mlir.undef : i32
    call @_Z9ext_setupv() : () -> ()
    %9 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %34 = arith.index_cast %arg0 : index to i64
      %35 = llvm.getelementptr %9[%34] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
      func.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%35) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    }
    %10 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %10, %6 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %11 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%9, %6) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %12 = llvm.mlir.addressof @str0 : !llvm.ptr<array<11 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @_Z29analyze_trip_durations_of_dayIsEvPKc(%13) : (!llvm.ptr<i8>) -> ()
    %14 = llvm.getelementptr %9[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %15 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %15, %5 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %16 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%14, %5) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %17 = llvm.mlir.addressof @str1 : !llvm.ptr<array<13 x i8>>
    %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    call @_Z31analyze_trip_durations_of_monthIsEvPKc(%18) : (!llvm.ptr<i8>) -> ()
    %19 = llvm.getelementptr %9[2] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %20 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %20, %4 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %21 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%19, %4) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %22 = llvm.mlir.addressof @str2 : !llvm.ptr<array<16 x i8>>
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %24 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%14, %9) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %24, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %25 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%3) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %25, %2 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %26 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%2) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %27 = llvm.call @printf(%23, %26) : (!llvm.ptr<i8>, i64) -> i32
    %28 = llvm.mlir.addressof @str3 : !llvm.ptr<array<16 x i8>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %30 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%19, %14) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %30, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %31 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %31, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %32 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %33 = llvm.call @printf(%29, %32) : (!llvm.ptr<i8>, i64) -> i32
    return %8 : i32
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
  func.func @_Z29analyze_trip_durations_of_dayIsEvPKc(%arg0: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i16 : (i64) -> !llvm.ptr<i16>
    %3 = llvm.mlir.undef : i16
    llvm.store %3, %2 : !llvm.ptr<i16>
    %4 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %4 : !llvm.ptr<i64>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %8 = llvm.mlir.addressof @str4 : !llvm.ptr<array<52 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %10 = llvm.call @printf(%9, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %11 = llvm.mlir.addressof @index_col {
      remote_target = 1,
      rel_types = [!llvm.ptr<ptr<struct<"rid::class.std::vector.1", (struct<"rid::struct.std::_Vector_base.2", (struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>, !rmem.rmref<10, !llvm.ptr<i64>>)>)>)>)>>>]
    } : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %13 = llvm.mlir.addressof @pick_day_col {
      remote_target = 1,
      rel_types = [!llvm.ptr<struct<"rday::class.std::vector.1", (struct<"rday::struct.std::_Vector_base.2", (struct<"rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"rday::struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (!rmem.rmref<13, !llvm.ptr<i16>>, !rmem.rmref<13, !llvm.ptr<i16>>, !rmem.rmref<13, !llvm.ptr<i16>>)>)>)>)>>
    } : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %15 = llvm.mlir.addressof @duration_col {
      remote_target = 1,
      !llvm.ptr<struct<"rdur::class.std::vector", (struct<"rdur::struct.std::_Vector_base", (struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>
    } : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %16 = llvm.load %15 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %17 = call @_ZNKSt6vectorImSaImEE4sizeEv(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    call @_ZNSt6vectorImSaImEEC1Ev(%7) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%7, %17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorIsSaIsEEC1Ev(%6) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIsSaIsEE7reserveEm(%6, %17) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorImSaImEEC1Ev(%5) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%5, %17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %18 = arith.index_cast %17 : i64 to index
    scf.for %arg1 = %c0 to %18 step %c1 {
      %19 = arith.index_cast %arg1 : index to i64
      %20 = func.call @_ZNSt6vectorImSaImEEixEm(%12, %19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %21 = llvm.load %20 : !llvm.ptr<i64>
      llvm.store %21, %4 : !llvm.ptr<i64>
      %22 = func.call @_ZNSt6vectorIsSaIsEEixEm(%14, %19) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
      %23 = llvm.load %22 : !llvm.ptr<i16>
      llvm.store %23, %2 : !llvm.ptr<i16>
      %24 = func.call @_ZNSt6vectorImSaImEEixEm(%16, %19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %25 = llvm.load %24 : !llvm.ptr<i64>
      llvm.store %25, %0 : !llvm.ptr<i64>
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%7, %4) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
      func.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%6, %2) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%5, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    }
    call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %7, %6, %5) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    return
  }
  func.func @_Z31analyze_trip_durations_of_monthIsEvPKc(%arg0: !llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i16 : (i64) -> !llvm.ptr<i16>
    %3 = llvm.mlir.undef : i16
    llvm.store %3, %2 : !llvm.ptr<i16>
    %4 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %4 : !llvm.ptr<i64>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %8 = llvm.mlir.addressof @str4 : !llvm.ptr<array<52 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %10 = llvm.call @printf(%9, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %11 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %13 = llvm.mlir.addressof @pick_month_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %15 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %16 = llvm.load %15 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %17 = call @_ZNKSt6vectorImSaImEE4sizeEv(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    call @_ZNSt6vectorImSaImEEC1Ev(%7) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%7, %17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorIsSaIsEEC1Ev(%6) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIsSaIsEE7reserveEm(%6, %17) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorImSaImEEC1Ev(%5) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%5, %17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %18 = arith.index_cast %17 : i64 to index
    scf.for %arg1 = %c0 to %18 step %c1 {
      %19 = arith.index_cast %arg1 : index to i64
      %20 = func.call @_ZNSt6vectorImSaImEEixEm(%12, %19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %21 = llvm.load %20 : !llvm.ptr<i64>
      llvm.store %21, %4 : !llvm.ptr<i64>
      %22 = func.call @_ZNSt6vectorIsSaIsEEixEm(%14, %19) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
      %23 = llvm.load %22 : !llvm.ptr<i16>
      llvm.store %23, %2 : !llvm.ptr<i16>
      %24 = func.call @_ZNSt6vectorImSaImEEixEm(%16, %19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %25 = llvm.load %24 : !llvm.ptr<i64>
      llvm.store %25, %0 : !llvm.ptr<i64>
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%7, %4) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
      func.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%6, %2) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%5, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    }
    call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %7, %6, %5) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
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
  func.func @_ZNKSt6vectorImSaImEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i64>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i64> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i64> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    call @_ZNSt12_Vector_baseImSaImEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorImSaImEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorImSaImEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i64>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i64>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i64>>
        %35 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
        scf.yield %28 : !llvm.ptr<i64>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
        %31 = llvm.load %30 : !llvm.ptr<ptr<i64>>
        %32 = func.call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%31) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
        llvm.store %32, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
        func.call @_ZNSt13move_iteratorIPmEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
        %33 = llvm.getelementptr %29[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i64>>
        %35 = func.call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%34) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
        llvm.store %35, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
        func.call @_ZNSt13move_iteratorIPmEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
        %36 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
        %37 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
        %38 = func.call @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
        %39 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
        scf.yield %38 : !llvm.ptr<i64>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i64>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i64>>
      %19 = llvm.ptrtoint %18 : !llvm.ptr<i64> to i64
      %20 = llvm.ptrtoint %16 : !llvm.ptr<i64> to i64
      %21 = arith.subi %19, %20 : i64
      %22 = arith.divsi %21, %c8_i64 : i64
      func.call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
      llvm.store %11, %15 : !llvm.ptr<ptr<i64>>
      %23 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %24 = llvm.getelementptr %11[%8] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
      llvm.store %24, %23 : !llvm.ptr<ptr<i64>>
      %25 = llvm.load %15 : !llvm.ptr<ptr<i64>>
      %26 = llvm.getelementptr %25[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
      llvm.store %26, %17 : !llvm.ptr<ptr<i64>>
    }
    return
  }
  func.func @_ZNSt6vectorIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    call @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i16>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i16>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i16>>
        %35 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
        scf.yield %28 : !llvm.ptr<i16>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %31 = llvm.load %30 : !llvm.ptr<ptr<i16>>
        %32 = func.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%31) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
        llvm.store %32, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
        func.call @_ZNSt13move_iteratorIPsEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
        %33 = llvm.getelementptr %29[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i16>>
        %35 = func.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%34) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
        llvm.store %35, %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
        func.call @_ZNSt13move_iteratorIPsEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
        %36 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
        %37 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
        %38 = func.call @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16>
        %39 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
        scf.yield %38 : !llvm.ptr<i16>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i16>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i16>>
      %19 = llvm.ptrtoint %18 : !llvm.ptr<i16> to i64
      %20 = llvm.ptrtoint %16 : !llvm.ptr<i16> to i64
      %21 = arith.subi %19, %20 : i64
      %22 = arith.divsi %21, %c2_i64 : i64
      func.call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
      llvm.store %11, %15 : !llvm.ptr<ptr<i16>>
      %23 = llvm.getelementptr %14[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %24 = llvm.getelementptr %11[%8] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
      llvm.store %24, %23 : !llvm.ptr<ptr<i16>>
      %25 = llvm.load %15 : !llvm.ptr<ptr<i16>>
      %26 = llvm.getelementptr %25[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
      llvm.store %26, %17 : !llvm.ptr<ptr<i16>>
    }
    return
  }
  func.func @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @_ZNSt6vectorIsSaIsEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    return %5 : !llvm.ptr<i16>
  }
  func.func @_ZNSt6vectorImSaImEE9push_backERKm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i64>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i64>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i64>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i64>>
      func.call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i64>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
      llvm.store %16, %5 : !llvm.ptr<ptr<i64>>
    } else {
      %10 = func.call @_ZNSt6vectorImSaImEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
      func.call @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> ()
    }
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE9push_backERKs(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i16>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i16>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i16>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i16>>
      func.call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i16>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
      llvm.store %16, %5 : !llvm.ptr<ptr<i16>>
    } else {
      %10 = func.call @_ZNSt6vectorIsSaIsEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
      func.call @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>, !llvm.ptr<i16>) -> ()
    }
    return
  }
  func.func private @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<external>}
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
  func.func @_ZNSt12_Vector_baseImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    call @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = call @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    return %2 : i64
  }
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNKSt6vectorImSaImEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i64>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i64> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i64> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorImSaImEE15_S_use_relocateEv() -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    return %c1_i8 : i8
  }
  func.func @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i64>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, i64) -> !llvm.ptr<i64>
      scf.yield %7 : !llvm.ptr<i64>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i64>
      scf.yield %2 : !llvm.ptr<i64>
    }
    return %1 : !llvm.ptr<i64>
  }
  func.func @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @_ZNSt13move_iteratorIPmEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%arg0: !llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<i64>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    return %4 : !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
  }
  func.func @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i64>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      func.call @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    call @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = call @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64
    return %2 : i64
  }
  func.func @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i16>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i16> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i16> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c2_i64 : i64
    return %10 : i64
  }
  func.func @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i16>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i16> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i16> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c2_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable.8", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable.8", (i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable.8", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    return %c1_i8 : i8
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i16>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, i64) -> !llvm.ptr<i16>
      scf.yield %7 : !llvm.ptr<i16>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i16>
      scf.yield %2 : !llvm.ptr<i16>
    }
    return %1 : !llvm.ptr<i16>
  }
  func.func @_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  func.func @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg3: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    return %5 : !llvm.ptr<i16>
  }
  func.func @_ZNSt13move_iteratorIPsEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0: !llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<i16>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    return %4 : !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
  }
  func.func @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i16>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i16>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      func.call @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    return
  }
  func.func @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.mlir.addressof @str6 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i64>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i64>>
    %12 = call @_ZNSt6vectorImSaImEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %13 = call @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    %20 = call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i64>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i64>>
      %34 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i64>>
      %39 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
      scf.yield %40 : !llvm.ptr<i64>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i64>>
      %34 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i64>>
      %39 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
      scf.yield %40 : !llvm.ptr<i64>
    }
    %23 = call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i64>>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i64> to i64
    %28 = llvm.ptrtoint %9 : !llvm.ptr<i64> to i64
    %29 = arith.subi %27, %28 : i64
    %30 = arith.divsi %29, %c8_i64 : i64
    call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i64>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i64>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %31, %25 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZNSt6vectorImSaImEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
  }
  func.func @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.mlir.addressof @str6 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i16>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i16>>
    %12 = call @_ZNSt6vectorIsSaIsEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %13 = call @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    %20 = call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i16>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i16>>
      %34 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i16>>
      %39 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
      scf.yield %40 : !llvm.ptr<i16>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i16>>
      %34 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i16>>
      %39 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
      scf.yield %40 : !llvm.ptr<i16>
    }
    %23 = call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i16>>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i16> to i64
    %28 = llvm.ptrtoint %9 : !llvm.ptr<i16> to i64
    %29 = arith.subi %27, %28 : i64
    %30 = arith.divsi %29, %c2_i64 : i64
    call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i16>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i16>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %31, %25 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
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
  func.func @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    call @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1152921504606846975_i64 = arith.constant 1152921504606846975 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.store %c1152921504606846975_i64, %2 : !llvm.ptr<i64>
    llvm.store %c1152921504606846975_i64, %0 : !llvm.ptr<i64>
    %3 = call @_ZSt3minImERKT_S2_S2_(%2, %0) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    return %4 : i64
  }
  func.func @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZNSt6vectorImSaImEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i64>
    return %2 : !llvm.ptr<i64>
  }
  func.func @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    return %6 : !llvm.ptr<i64>
  }
  func.func @_ZNSt13move_iteratorIPmEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZNSt13move_iteratorIPmEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZSt8_DestroyIPmEvT_S1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    call @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4611686018427387903_i64 = arith.constant 4611686018427387903 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %1 = llvm.mlir.undef : i64
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    llvm.store %c4611686018427387903_i64, %2 : !llvm.ptr<i64>
    llvm.store %c4611686018427387903_i64, %0 : !llvm.ptr<i64>
    %3 = call @_ZSt3minImERKT_S2_S2_(%2, %0) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    return %4 : i64
  }
  func.func @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  func.func @_ZNSt6vectorIsSaIsEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: i64) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i16>
    return %2 : !llvm.ptr<i16>
  }
  func.func @_ZNSt6vectorIsSaIsEE14_S_do_relocateEPsS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %6 : !llvm.ptr<i16>
  }
  func.func @_ZNSt13move_iteratorIPsEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSt13move_iteratorIPsEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZSt8_DestroyIPsEvT_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i64>
    llvm.store %0, %arg1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
      scf.yield %17 : i64
    } else {
      scf.yield %12 : i64
    }
    return %16 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i64>>
    %4 = llvm.ptrtoint %1 : !llvm.ptr<i64> to i64
    %5 = llvm.ptrtoint %3 : !llvm.ptr<i64> to i64
    %6 = arith.subi %4, %5 : i64
    %7 = arith.divsi %6, %c8_i64 : i64
    return %7 : i64
  }
  func.func @_ZNSt6vectorImSaImEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    return %0 : !llvm.ptr<ptr<i64>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%arg0) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
    llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %5 = call @_ZSt32__make_move_if_noexcept_iteratorImSt13move_iteratorIPmEET0_PT_(%arg1) : (!llvm.ptr<i64>) -> !llvm.struct<"class.std::move_iterator", (ptr<i64>)>
    llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    return %8 : !llvm.ptr<i64>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>, %arg1: !llvm.ptr<ptr<i64>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i64>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i16>
    llvm.store %0, %arg1 : !llvm.ptr<i16>
    return
  }
  func.func @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
      scf.yield %17 : i64
    } else {
      scf.yield %12 : i64
    }
    return %16 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i16>>
    %4 = llvm.ptrtoint %1 : !llvm.ptr<i16> to i64
    %5 = llvm.ptrtoint %3 : !llvm.ptr<i16> to i64
    %6 = arith.subi %4, %5 : i64
    %7 = arith.divsi %6, %c2_i64 : i64
    return %7 : i64
  }
  func.func @_ZNSt6vectorIsSaIsEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    return %0 : !llvm.ptr<ptr<i16>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %4 = call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
    llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %5 = call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg1) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>
    llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    return %8 : !llvm.ptr<i16>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>, %arg1: !llvm.ptr<ptr<i16>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i16>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.7", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSaImEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i64>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1152921504606846975_i64 = arith.constant 1152921504606846975 : i64
    return %c1152921504606846975_i64 : i64
  }
  func.func @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %c1152921504606846975_i64 = arith.constant 1152921504606846975 : i64
    %0 = arith.cmpi sgt, %arg1, %c1152921504606846975_i64 : i64
    scf.if %0 {
      func.call @_ZSt17__throw_bad_allocv() : () -> ()
    }
    %1 = arith.muli %arg1, %c8_i64 : i64
    %2 = call @_Znwm(%1) : (i64) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPmES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    return %6 : !llvm.ptr<i64>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPmEEvT_S3_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i64> to !llvm.ptr<i8>
    call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZNSaIsEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i16>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %2 : !llvm.ptr<ptr<i16>>
    %3 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %3 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSt16allocator_traitsISaIsEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4611686018427387903_i64 = arith.constant 4611686018427387903 : i64
    return %c4611686018427387903_i64 : i64
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %c4611686018427387903_i64 = arith.constant 4611686018427387903 : i64
    %0 = arith.cmpi sgt, %arg1, %c4611686018427387903_i64 : i64
    scf.if %0 {
      func.call @_ZSt17__throw_bad_allocv() : () -> ()
    }
    %1 = arith.muli %arg1, %c2_i64 : i64
    %2 = call @_Znwm(%1) : (i64) -> !llvm.ptr<i8>
    %3 = llvm.bitcast %2 : !llvm.ptr<i8> to !llvm.ptr<i16>
    return %3 : !llvm.ptr<i16>
  }
  func.func @_ZSt12__relocate_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %6 : !llvm.ptr<i16>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i16> to !llvm.ptr<i8>
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
  func.func @_ZN9__gnu_cxx13new_allocatorImEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1152921504606846975_i64 = arith.constant 1152921504606846975 : i64
    return %c1152921504606846975_i64 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i64> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i64> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c8_i64 : i64
    %4 = arith.cmpi sgt, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i64> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i64> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c8_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @_ZSt12__niter_baseIPmET_S1_(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i64>
  }
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPmES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = call @_ZSt4copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    return %6 : !llvm.ptr<i64>
  }
  func.func private @_ZdlPv(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZN9__gnu_cxx13new_allocatorIsEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4611686018427387903_i64 = arith.constant 4611686018427387903 : i64
    return %c4611686018427387903_i64 : i64
  }
  func.func @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i16> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i16> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c2_i64 : i64
    %4 = arith.cmpi sgt, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i16> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i16> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c2_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    return %5 : !llvm.ptr<i16>
  }
  func.func @_ZSt12__niter_baseIPsET_S1_(%arg0: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i16>
  }
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %6 = call @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %6 : !llvm.ptr<i16>
  }
  func.func @_ZSt4copyISt13move_iteratorIPmES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = call @_ZSt12__miter_baseIPmEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = call @_ZSt12__miter_baseIPmEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
    %8 = call @_ZSt14__copy_move_a2ILb1EPmS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    return %8 : !llvm.ptr<i64>
  }
  func.func @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %5 = call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> ()
    %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %7 = call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16>
    %8 = call @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %8 : !llvm.ptr<i16>
  }
  func.func @_ZSt14__copy_move_a2ILb1EPmS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZSt12__miter_baseIPmEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = call @_ZNKSt13move_iteratorIPmE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<i64>
    return %1 : !llvm.ptr<i64>
  }
  func.func @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.6", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>
    %1 = call @_ZNKSt13move_iteratorIPsE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<i16>
    return %1 : !llvm.ptr<i16>
  }
  func.func @_ZSt12__niter_wrapIPmET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i64>>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg1 : !llvm.ptr<i64>
  }
  func.func @_ZSt13__copy_move_aILb1EPmS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZSt12__miter_baseIPmET_S1_(%arg0: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i64>
  }
  func.func @_ZNKSt13move_iteratorIPmE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    return %1 : !llvm.ptr<i64>
  }
  func.func @_ZSt12__niter_wrapIPsET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i16>>, %arg1: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg1 : !llvm.ptr<i16>
  }
  func.func @_ZSt13__copy_move_aILb1EPsS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZSt12__miter_baseIPsET_S1_(%arg0: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i16>
  }
  func.func @_ZNKSt13move_iteratorIPsE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.6", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    return %1 : !llvm.ptr<i16>
  }
  func.func @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mImEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i64> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i64> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c8_i64 : i64
    %4 = arith.cmpi ne, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i64> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i64> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c8_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIsEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg1 : !llvm.ptr<i16> to i64
    %1 = llvm.ptrtoint %arg0 : !llvm.ptr<i16> to i64
    %2 = arith.subi %0, %1 : i64
    %3 = arith.divsi %2, %c2_i64 : i64
    %4 = arith.cmpi ne, %3, %c0_i64 : i64
    scf.if %4 {
      %6 = llvm.bitcast %arg2 : !llvm.ptr<i16> to !llvm.ptr<i8>
      %7 = llvm.bitcast %arg0 : !llvm.ptr<i16> to !llvm.ptr<i8>
      %8 = arith.muli %3, %c2_i64 : i64
      "llvm.intr.memmove"(%6, %7, %8, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    }
    %5 = llvm.getelementptr %arg2[%3] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    return %5 : !llvm.ptr<i16>
  }
}
