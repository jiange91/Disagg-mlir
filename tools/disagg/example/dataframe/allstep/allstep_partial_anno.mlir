module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str35("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str34("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str33("Size larger than cap, dont do this\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @store_fwd_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>
  llvm.mlir.global external @psg_cnt_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  llvm.mlir.global external @pick_month_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @pick_day_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @index_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str32("analyze_trip_durations_of_timestamps() on key = %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str31("Number of rows that have haversine_distance > 100 KM = %lu\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @haversine_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global internal constant @str30("pickup_longitude_vec.size() == dropoff_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str29("pickup_longitude_vec.size() == dropoff_longitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.func @__assert_fail(!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @str28("void calculate_haversine_distance_column()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str27("/users/Zijian/new_rt/apps/dataframe/new_app/all_step.cc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str26("pickup_longitude_vec.size() == pickup_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global external @drop_lat_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @drop_long_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @pick_lat_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @pick_long_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global internal constant @str25("calculate_haversine_distance_column()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str24("}\0A\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str23("%d, \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str22("{\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str21("%f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str20("calculate_distribution_store_and_fwd_flag()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str19("Max duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str18("Min duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str17("Mean duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @duration_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str16("calculate_trip_duration()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str14("print_passage_counts_by_vendor_id(vendor_id), vendor_id = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str13("Number of unique vendor_ids in the train dataset: %ld\0A\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @vendor_id_col() {addr_space = 0 : i32, remote_target = 1} : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  llvm.mlir.global internal constant @str12("number of vendor_ids in the train dataset: %ld\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("print_number_vendor_ids_and_unique()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str10("Total: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("Step 8: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("Step 7: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("Step 5: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("Step 4: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("Step 3: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("Step 2-2: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Step 2-1: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("Step 1: %ld us\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("pickup_month\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("pickup_day\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c10 = arith.constant 10 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %8 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %9 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %10 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %11 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %12 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %13 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %14 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %15 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %16 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %17 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %18 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %19 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %20 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %21 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %22 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %23 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %24 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %25 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %26 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %27 = llvm.alloca %c1_i64 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %28 = llvm.mlir.undef : i32
    call @_Z9ext_setupv() : () -> ()
    %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    scf.for %arg0 = %c0 to %c10 step %c1 {
      %114 = arith.index_cast %arg0 : index to i64
      %115 = llvm.getelementptr %29[%114] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
      func.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%115) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    }
    %30 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %30, %26 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %31 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%29, %26) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z34print_number_vendor_ids_and_uniquev() : () -> ()
    %32 = llvm.getelementptr %29[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %33 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %33, %25 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %34 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%32, %25) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z33print_passage_counts_by_vendor_idi(%c1_i32) : (i32) -> ()
    %35 = llvm.getelementptr %29[2] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %36 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %36, %24 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %37 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%35, %24) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z33print_passage_counts_by_vendor_idi(%c2_i32) : (i32) -> ()
    %38 = llvm.getelementptr %29[3] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %39 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %39, %23 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %40 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%38, %23) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z23calculate_trip_durationv() : () -> ()
    %41 = llvm.getelementptr %29[4] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %42 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %42, %22 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %43 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%41, %22) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z41calculate_distribution_store_and_fwd_flagv() : () -> ()
    %44 = llvm.getelementptr %29[5] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %45 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %45, %21 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %46 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%44, %21) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    call @_Z35calculate_haversine_distance_columnv() : () -> ()
    %47 = llvm.getelementptr %29[6] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %48 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %48, %20 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %49 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%47, %20) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %50 = llvm.mlir.addressof @str0 : !llvm.ptr<array<11 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @_Z29analyze_trip_durations_of_dayIsEvPKc(%51) : (!llvm.ptr<i8>) -> ()
    %52 = llvm.getelementptr %29[7] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %53 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %53, %19 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %54 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%52, %19) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %55 = llvm.mlir.addressof @str1 : !llvm.ptr<array<13 x i8>>
    %56 = llvm.getelementptr %55[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    call @_Z31analyze_trip_durations_of_monthIsEvPKc(%56) : (!llvm.ptr<i8>) -> ()
    %57 = llvm.getelementptr %29[8] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %58 = call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %58, %18 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %59 = call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%57, %18) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %60 = llvm.mlir.addressof @str2 : !llvm.ptr<array<16 x i8>>
    %61 = llvm.getelementptr %60[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %62 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%32, %29) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %62, %17 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %63 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%17) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %63, %16 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %64 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%16) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %65 = llvm.call @printf(%61, %64) : (!llvm.ptr<i8>, i64) -> i32
    %66 = llvm.mlir.addressof @str3 : !llvm.ptr<array<18 x i8>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %68 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%35, %32) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %68, %15 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %69 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%15) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %69, %14 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %70 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%14) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %71 = llvm.call @printf(%67, %70) : (!llvm.ptr<i8>, i64) -> i32
    %72 = llvm.mlir.addressof @str4 : !llvm.ptr<array<18 x i8>>
    %73 = llvm.getelementptr %72[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %74 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%38, %35) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %74, %13 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %75 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%13) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %75, %12 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %76 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%12) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %77 = llvm.call @printf(%73, %76) : (!llvm.ptr<i8>, i64) -> i32
    %78 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
    %79 = llvm.getelementptr %78[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %80 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%41, %38) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %80, %11 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %81 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%11) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %81, %10 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %82 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%10) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %83 = llvm.call @printf(%79, %82) : (!llvm.ptr<i8>, i64) -> i32
    %84 = llvm.mlir.addressof @str6 : !llvm.ptr<array<16 x i8>>
    %85 = llvm.getelementptr %84[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %86 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%44, %41) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %86, %9 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %87 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%9) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %87, %8 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %88 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%8) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %89 = llvm.call @printf(%85, %88) : (!llvm.ptr<i8>, i64) -> i32
    %90 = llvm.mlir.addressof @str7 : !llvm.ptr<array<16 x i8>>
    %91 = llvm.getelementptr %90[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %92 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%47, %44) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %92, %7 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %93 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%7) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %93, %6 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %94 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%6) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %95 = llvm.call @printf(%91, %94) : (!llvm.ptr<i8>, i64) -> i32
    %96 = llvm.mlir.addressof @str8 : !llvm.ptr<array<16 x i8>>
    %97 = llvm.getelementptr %96[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %98 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%52, %47) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %98, %5 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %99 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%5) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %99, %4 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %100 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%4) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %101 = llvm.call @printf(%97, %100) : (!llvm.ptr<i8>, i64) -> i32
    %102 = llvm.mlir.addressof @str9 : !llvm.ptr<array<16 x i8>>
    %103 = llvm.getelementptr %102[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %104 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%57, %52) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %104, %3 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %105 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%3) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %105, %2 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %106 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%2) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %107 = llvm.call @printf(%103, %106) : (!llvm.ptr<i8>, i64) -> i32
    %108 = llvm.mlir.addressof @str10 : !llvm.ptr<array<15 x i8>>
    %109 = llvm.getelementptr %108[0, 0] : (!llvm.ptr<array<15 x i8>>) -> !llvm.ptr<i8>
    %110 = call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%57, %29) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %110, %1 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %111 = call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%1) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %111, %0 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %112 = call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%0) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %113 = llvm.call @printf(%109, %112) : (!llvm.ptr<i8>, i64) -> i32
    return %28 : i32
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
  func.func @_Z34print_number_vendor_ids_and_uniquev() attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = llvm.mlir.addressof @str11 : !llvm.ptr<array<38 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<38 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1) : (!llvm.ptr<i8>) -> i32
    %3 = llvm.mlir.addressof @str12 : !llvm.ptr<array<48 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<48 x i8>>) -> !llvm.ptr<i8>
    %5 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %7 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%6) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %8 = llvm.call @printf(%4, %7) : (!llvm.ptr<i8>, i64) -> i32
    %9 = llvm.mlir.addressof @str13 : !llvm.ptr<array<56 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %11 = call @_Z21get_vid_unique_valuesv() : () -> i64
    %12 = llvm.call @printf(%10, %11) : (!llvm.ptr<i8>, i64) -> i32
    return
  }
  func.func @_Z33print_passage_counts_by_vendor_idi(%arg0: i32) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i32 = arith.constant 1 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %5 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %6 = llvm.mlir.undef : i32
    llvm.store %6, %5 : !llvm.ptr<i32>
    llvm.store %arg0, %5 : !llvm.ptr<i32>
    %7 = llvm.mlir.addressof @str14 : !llvm.ptr<array<62 x i8>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<array<62 x i8>>) -> !llvm.ptr<i8>
    %9 = llvm.call @printf(%8, %arg0) : (!llvm.ptr<i8>, i32) -> i32
    %10 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %5, %10 : !llvm.ptr<ptr<i32>>
    %11 = llvm.load %3 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    llvm.store %11, %2 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    call @_ZZ33print_passage_counts_by_vendor_idiEN3$_0C1EOS_(%4, %2) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> ()
    %12 = llvm.load %4 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    llvm.store %12, %1 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    call @_ZNSt6vectorIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_Z14get_psg_by_vidIZ33print_passage_counts_by_vendor_idiE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%1, %0) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %13 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = llvm.load %5 : !llvm.ptr<i32>
    %15 = arith.cmpi eq, %14, %c1_i32 : i32
    scf.if %15 {
      %19 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %c0 to %19 step %c1 {
        %20 = arith.index_cast %arg1 : index to i64
        %21 = func.call @_ZNSt6vectorIiSaIiEEixEm(%0, %20) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
        %22 = llvm.load %21 : !llvm.ptr<i32>
        func.call @_Z20step21_passage_counti(%22) : (i32) -> ()
      }
      func.call @_Z19step21_count_resultv() : () -> ()
    } else {
      %19 = arith.index_cast %13 : i64 to index
      scf.for %arg1 = %c0 to %19 step %c1 {
        %20 = arith.index_cast %arg1 : index to i64
        %21 = func.call @_ZNSt6vectorIiSaIiEEixEm(%0, %20) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
        %22 = llvm.load %21 : !llvm.ptr<i32>
        func.call @_Z20step22_passage_counti(%22) : (i32) -> ()
      }
      func.call @_Z19step22_count_resultv() : () -> ()
    }
    %16 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %18 = llvm.call @printf(%17) : (!llvm.ptr<i8>) -> i32
    return
  }
  func.func @_Z23calculate_trip_durationv() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.MeanVisitor", (i64, i64)> : (i64) -> !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %3 = llvm.mlir.addressof @str16 : !llvm.ptr<array<27 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %5 = llvm.call @printf(%4) : (!llvm.ptr<i8>) -> i32
    call @_Z16prepare_durationv() : () -> ()
    call @_ZN10MaxVisitorImmEC1Ev(%2) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    call @_ZN10MinVisitorImmEC1Ev(%1) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    call @_ZN11MeanVisitorImmEC1Ev(%0) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    call @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(%2, %1, %0) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %6 = llvm.mlir.addressof @str17 : !llvm.ptr<array<27 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %8 = call @_ZNK11MeanVisitorImmE10get_resultEv(%0) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> i64
    %9 = llvm.call @printf(%7, %8) : (!llvm.ptr<i8>, i64) -> i32
    %10 = llvm.mlir.addressof @str18 : !llvm.ptr<array<26 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %12 = call @_ZNK10MinVisitorImmE10get_resultEv(%1) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %13 = llvm.call @printf(%11, %12) : (!llvm.ptr<i8>, i64) -> i32
    %14 = llvm.mlir.addressof @str19 : !llvm.ptr<array<26 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %16 = call @_ZNK10MaxVisitorImmE10get_resultEv(%2) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %17 = llvm.call @printf(%15, %16) : (!llvm.ptr<i8>, i64) -> i32
    %18 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %20 = llvm.call @printf(%19) : (!llvm.ptr<i8>) -> i32
    return
  }
  func.func @_Z41calculate_distribution_store_and_fwd_flagv() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %4 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %6 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %7 = llvm.mlir.undef : i32
    llvm.store %7, %6 : !llvm.ptr<i32>
    %8 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %9 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %10 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon.7", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.7", (i8)>>
    %11 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon.7", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.7", (i8)>>
    %12 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %13 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon.6", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.6", (i8)>>
    %14 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon.6", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.6", (i8)>>
    %15 = llvm.mlir.addressof @str20 : !llvm.ptr<array<45 x i8>>
    %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<45 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.call @printf(%16) : (!llvm.ptr<i8>) -> i32
    %18 = llvm.load %14 : !llvm.ptr<struct<"class.anon.6", (i8)>>
    llvm.store %18, %13 : !llvm.ptr<struct<"class.anon.6", (i8)>>
    call @_ZNSt6vectorIiSaIiEEC1Ev(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%13, %12) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %19 = llvm.mlir.addressof @str21 : !llvm.ptr<array<4 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %21 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %22 = arith.sitofp %21 : i64 to f64
    %23 = call @_Z9get_indexv() : () -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %24 = call @_ZNKSt6vectorImSaImEE4sizeEv(%23) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %25 = arith.sitofp %24 : i64 to f64
    %26 = arith.divf %22, %25 : f64
    %27 = llvm.call @printf(%20, %26) : (!llvm.ptr<i8>, f64) -> i32
    %28 = llvm.load %11 : !llvm.ptr<struct<"class.anon.7", (i8)>>
    llvm.store %28, %10 : !llvm.ptr<struct<"class.anon.7", (i8)>>
    call @_ZNSt6vectorIiSaIiEEC1Ev(%9) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_1iEvRT_RSt6vectorIT0_SaIS4_EE(%10, %9) : (!llvm.ptr<struct<"class.anon.7", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIiSaIiEEC1Ev(%8) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %29 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%9) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %30 = arith.index_cast %29 : i64 to index
    scf.for %arg0 = %c0 to %30 step %c1 {
      %43 = arith.index_cast %arg0 : index to i64
      %44 = func.call @_ZNSt6vectorIiSaIiEEixEm(%9, %43) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %45 = llvm.load %44 : !llvm.ptr<i32>
      llvm.store %45, %6 : !llvm.ptr<i32>
      %46 = func.call @_Z15step4_firstTimei(%45) : (i32) -> i8
      %47 = arith.cmpi ne, %46, %c0_i8 : i8
      scf.if %47 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%8, %6) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    }
    %31 = llvm.mlir.addressof @str22 : !llvm.ptr<array<2 x i8>>
    %32 = llvm.getelementptr %31[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %33 = llvm.call @printf(%32) : (!llvm.ptr<i8>) -> i32
    %34 = call @_ZNSt6vectorIiSaIiEE5beginEv(%8) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %34, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%5, %4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %35 = llvm.load %5 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %35, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %36 = call @_ZNSt6vectorIiSaIiEE3endEv(%8) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %36, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %37 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %37, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %38 = llvm.mlir.addressof @str23 : !llvm.ptr<array<5 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
    scf.while : () -> () {
      %43 = func.call @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%3, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i8
      %44 = arith.cmpi ne, %43, %c0_i8 : i8
      scf.condition(%44)
    } do {
      %43 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32>
      %44 = llvm.load %43 : !llvm.ptr<i32>
      %45 = llvm.call @printf(%39, %44) : (!llvm.ptr<i8>, i32) -> i32
      %46 = func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      scf.yield
    }
    %40 = llvm.mlir.addressof @str24 : !llvm.ptr<array<4 x i8>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %42 = llvm.call @printf(%41) : (!llvm.ptr<i8>) -> i32
    return
  }
  func.func @_Z35calculate_haversine_distance_columnv() attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 3.1415926535897931 : f64
    %cst_0 = arith.constant 1.800000e+02 : f64
    %cst_1 = arith.constant 2.000000e+00 : f64
    %cst_2 = arith.constant 6.371000e+03 : f64
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c310_i32 = arith.constant 310 : i32
    %c309_i32 = arith.constant 309 : i32
    %c308_i32 = arith.constant 308 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon.14", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.14", (i8)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.anon.14", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.14", (i8)>>
    %3 = llvm.mlir.addressof @str25 : !llvm.ptr<array<39 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<39 x i8>>) -> !llvm.ptr<i8>
    %5 = llvm.call @printf(%4) : (!llvm.ptr<i8>) -> i32
    %6 = llvm.mlir.addressof @pick_long_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %8 = llvm.mlir.addressof @pick_lat_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %10 = llvm.mlir.addressof @drop_long_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %12 = llvm.mlir.addressof @drop_lat_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %13 = llvm.load %12 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %14 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%7) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %15 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%9) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %16 = arith.cmpi eq, %14, %15 : i64
    scf.if %16 {
    } else {
      %35 = llvm.mlir.addressof @str26 : !llvm.ptr<array<58 x i8>>
      %36 = llvm.getelementptr %35[0, 0] : (!llvm.ptr<array<58 x i8>>) -> !llvm.ptr<i8>
      %37 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
      %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
      %39 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
      %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%36, %38, %c308_i32, %40) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %17 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%7) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %18 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%11) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %19 = arith.cmpi eq, %17, %18 : i64
    scf.if %19 {
    } else {
      %35 = llvm.mlir.addressof @str29 : !llvm.ptr<array<60 x i8>>
      %36 = llvm.getelementptr %35[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
      %37 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
      %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
      %39 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
      %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%36, %38, %c309_i32, %40) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %20 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%7) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %21 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%13) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %22 = arith.cmpi eq, %20, %21 : i64
    scf.if %22 {
    } else {
      %35 = llvm.mlir.addressof @str30 : !llvm.ptr<array<59 x i8>>
      %36 = llvm.getelementptr %35[0, 0] : (!llvm.ptr<array<59 x i8>>) -> !llvm.ptr<i8>
      %37 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
      %38 = llvm.getelementptr %37[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
      %39 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
      %40 = llvm.getelementptr %39[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
      llvm.call @__assert_fail(%36, %38, %c310_i32, %40) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    }
    %23 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%9) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %24 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %26 = arith.index_cast %23 : i64 to index
    scf.for %arg0 = %c0 to %26 step %c1 {
      %35 = arith.index_cast %arg0 : index to i64
      %36 = func.call @_ZNSt6vectorIdSaIdEEixEm(%25, %35) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
      %37 = func.call @_ZNSt6vectorIdSaIdEEixEm(%9, %35) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
      %38 = llvm.load %37 : !llvm.ptr<f64>
      %39 = func.call @_ZNSt6vectorIdSaIdEEixEm(%7, %35) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
      %40 = llvm.load %39 : !llvm.ptr<f64>
      %41 = func.call @_ZNSt6vectorIdSaIdEEixEm(%13, %35) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
      %42 = llvm.load %41 : !llvm.ptr<f64>
      %43 = func.call @_ZNSt6vectorIdSaIdEEixEm(%11, %35) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
      %44 = llvm.load %43 : !llvm.ptr<f64>
      %45 = arith.subf %42, %38 : f64
      %46 = arith.mulf %45, %cst : f64
      %47 = arith.divf %46, %cst_0 : f64
      %48 = arith.subf %44, %40 : f64
      %49 = arith.mulf %48, %cst : f64
      %50 = arith.divf %49, %cst_0 : f64
      %51 = arith.mulf %38, %cst : f64
      %52 = arith.divf %51, %cst_0 : f64
      %53 = arith.mulf %42, %cst : f64
      %54 = arith.divf %53, %cst_0 : f64
      %55 = arith.divf %47, %cst_1 : f64
      %56 = math.sin %55 : f64
      %57 = math.powf %56, %cst_1 : f64
      %58 = arith.divf %50, %cst_1 : f64
      %59 = math.sin %58 : f64
      %60 = math.powf %59, %cst_1 : f64
      %61 = math.cos %52 : f64
      %62 = arith.mulf %60, %61 : f64
      %63 = math.cos %54 : f64
      %64 = arith.mulf %62, %63 : f64
      %65 = arith.addf %57, %64 : f64
      %66 = math.sqrt %65 : f64
      %67 = func.call @asin(%66) : (f64) -> f64
      %68 = arith.mulf %67, %cst_1 : f64
      %69 = arith.mulf %68, %cst_2 : f64
      llvm.store %69, %36 : !llvm.ptr<f64>
    }
    call @_Z12hvs_set_sizem(%23) : (i64) -> ()
    %27 = llvm.load %2 : !llvm.ptr<struct<"class.anon.14", (i8)>>
    llvm.store %27, %1 : !llvm.ptr<struct<"class.anon.14", (i8)>>
    call @_ZNSt6vectorIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%1, %0) : (!llvm.ptr<struct<"class.anon.14", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %28 = llvm.mlir.addressof @str31 : !llvm.ptr<array<60 x i8>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %30 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %31 = llvm.call @printf(%29, %30) : (!llvm.ptr<i8>, i64) -> i32
    %32 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %34 = llvm.call @printf(%33) : (!llvm.ptr<i8>) -> i32
    return
  }
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
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %8 = llvm.mlir.addressof @str32 : !llvm.ptr<array<52 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %10 = llvm.call @printf(%9, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %11 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %13 = llvm.mlir.addressof @pick_day_col : !llvm.ptr<ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %15 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %16 = llvm.load %15 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %17 = call @_ZNKSt6vectorImSaImEE4sizeEv(%12) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    call @_ZNSt6vectorImSaImEEC1Ev(%7) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%7, %17) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorIsSaIsEEC1Ev(%6) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIsSaIsEE7reserveEm(%6, %17) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorImSaImEEC1Ev(%5) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%5, %17) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %18 = arith.index_cast %17 : i64 to index
    scf.for %arg1 = %c0 to %18 step %c1 {
      %19 = arith.index_cast %arg1 : index to i64
      %20 = func.call @_ZNSt6vectorImSaImEEixEm(%12, %19) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %21 = llvm.load %20 : !llvm.ptr<i64>
      llvm.store %21, %4 : !llvm.ptr<i64>
      %22 = func.call @_ZNSt6vectorIsSaIsEEixEm(%14, %19) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
      %23 = llvm.load %22 : !llvm.ptr<i16>
      llvm.store %23, %2 : !llvm.ptr<i16>
      %24 = func.call @_ZNSt6vectorImSaImEEixEm(%16, %19) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %25 = llvm.load %24 : !llvm.ptr<i64>
      llvm.store %25, %0 : !llvm.ptr<i64>
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%7, %4) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
      func.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%6, %2) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%5, %0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    }
    call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %7, %6, %5) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
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
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %6 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %7 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %8 = llvm.mlir.addressof @str32 : !llvm.ptr<array<52 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %10 = llvm.call @printf(%9, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %11 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %13 = llvm.mlir.addressof @pick_month_col : !llvm.ptr<ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %15 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %16 = llvm.load %15 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %17 = call @_ZNKSt6vectorImSaImEE4sizeEv(%12) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    call @_ZNSt6vectorImSaImEEC1Ev(%7) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%7, %17) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorIsSaIsEEC1Ev(%6) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIsSaIsEE7reserveEm(%6, %17) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    call @_ZNSt6vectorImSaImEEC1Ev(%5) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    call @_ZNSt6vectorImSaImEE7reserveEm(%5, %17) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %18 = arith.index_cast %17 : i64 to index
    scf.for %arg1 = %c0 to %18 step %c1 {
      %19 = arith.index_cast %arg1 : index to i64
      %20 = func.call @_ZNSt6vectorImSaImEEixEm(%12, %19) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %21 = llvm.load %20 : !llvm.ptr<i64>
      llvm.store %21, %4 : !llvm.ptr<i64>
      %22 = func.call @_ZNSt6vectorIsSaIsEEixEm(%14, %19) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
      %23 = llvm.load %22 : !llvm.ptr<i16>
      llvm.store %23, %2 : !llvm.ptr<i16>
      %24 = func.call @_ZNSt6vectorImSaImEEixEm(%16, %19) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %25 = llvm.load %24 : !llvm.ptr<i64>
      llvm.store %25, %0 : !llvm.ptr<i64>
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%7, %4) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
      func.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%6, %2) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
      func.call @_ZNSt6vectorImSaImEE9push_backERKm(%5, %0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    }
    call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %7, %6, %5) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
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
  func.func @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
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
  func.func @_Z21get_vid_unique_valuesv() -> i64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %1 = llvm.mlir.undef : i32
    llvm.store %1, %0 : !llvm.ptr<i32>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %3 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %5 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%4) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEEC1Ev(%2) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%2, %5) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %6 = arith.index_cast %5 : i64 to index
    scf.for %arg0 = %c0 to %6 step %c1 {
      %8 = arith.index_cast %arg0 : index to i64
      %9 = func.call @_ZNSt6vectorIiSaIiEEixEm(%4, %8) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %10 = llvm.load %9 : !llvm.ptr<i32>
      llvm.store %10, %0 : !llvm.ptr<i32>
      %11 = func.call @_Z15step1_firstTimei(%10) : (i32) -> i8
      %12 = arith.cmpi ne, %11, %c0_i8 : i8
      scf.if %12 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%2, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    }
    %7 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%2) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    return %7 : i64
  }
  func.func private @_ZZ33print_passage_counts_by_vendor_idiEN3$_0C1EOS_(%arg0: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    return
  }
  func.func private @_Z14get_psg_by_vidIZ33print_passage_counts_by_vendor_idiE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %1 = llvm.mlir.undef : i32
    llvm.store %1, %0 : !llvm.ptr<i32>
    %2 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %1, %2 : !llvm.ptr<i32>
    %3 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %4 = llvm.mlir.undef : i64
    llvm.store %4, %3 : !llvm.ptr<i64>
    %5 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %7 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %9 = llvm.mlir.addressof @psg_cnt_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %10 = llvm.load %9 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %11 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%8) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %11) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %12 = arith.index_cast %11 : i64 to index
    scf.for %arg2 = %c0 to %12 step %c1 {
      %13 = arith.index_cast %arg2 : index to i64
      %14 = func.call @_ZNKSt6vectorImSaImEEixEm(%6, %13) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %15 = llvm.load %14 : !llvm.ptr<i64>
      llvm.store %15, %3 : !llvm.ptr<i64>
      %16 = func.call @_ZNKSt6vectorIiSaIiEEixEm(%8, %13) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %17 = llvm.load %16 : !llvm.ptr<i32>
      llvm.store %17, %2 : !llvm.ptr<i32>
      %18 = func.call @_ZNKSt6vectorIiSaIiEEixEm(%10, %13) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %19 = llvm.load %18 : !llvm.ptr<i32>
      llvm.store %19, %0 : !llvm.ptr<i32>
      %20 = func.call @_ZZ33print_passage_counts_by_vendor_idiENK3$_0clERKmRKi(%arg0, %3, %2) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<i64>, !llvm.ptr<i32>) -> i8
      %21 = arith.cmpi ne, %20, %c0_i8 : i8
      scf.if %21 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    }
    return
  }
  func.func private @_Z20step21_passage_counti(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func private @_Z19step21_count_resultv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Z20step22_passage_counti(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Z19step22_count_resultv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Z16prepare_durationv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZN10MaxVisitorImmEC1Ev(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    llvm.store %c1_i8, %4 : !llvm.ptr<i8>
    %5 = llvm.load %4 : !llvm.ptr<i8>
    llvm.store %5, %4 : !llvm.ptr<i8>
    return
  }
  func.func @_ZN10MinVisitorImmEC1Ev(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    llvm.store %c1_i8, %4 : !llvm.ptr<i8>
    %5 = llvm.load %4 : !llvm.ptr<i8>
    llvm.store %5, %4 : !llvm.ptr<i8>
    return
  }
  func.func @_ZN11MeanVisitorImmEC1Ev(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.store %1, %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    llvm.store %3, %2 : !llvm.ptr<i64>
    return
  }
  func.func @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg1: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg2: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    %3 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %5 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %7 = call @_ZNKSt6vectorImSaImEE4sizeEv(%6) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %7, %2 : !llvm.ptr<i64>
    %8 = call @_ZNKSt6vectorImSaImEE4sizeEv(%4) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %8, %1 : !llvm.ptr<i64>
    %9 = call @_ZSt3minImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %10 = llvm.load %9 : !llvm.ptr<i64>
    call @_ZN11MeanVisitorImmE3preEv(%arg2) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %11 = arith.index_cast %10 : i64 to index
    scf.for %arg3 = %c0 to %11 step %c1 {
      %12 = arith.index_cast %arg3 : index to i64
      %13 = func.call @_ZNSt6vectorImSaImEEixEm(%6, %12) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %14 = llvm.load %13 : !llvm.ptr<i64>
      %15 = func.call @_ZNSt6vectorImSaImEEixEm(%4, %12) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %16 = llvm.load %15 : !llvm.ptr<i64>
      func.call @_ZN10MaxVisitorImmEclEmm(%arg0, %14, %16) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
      func.call @_ZN10MinVisitorImmEclEmm(%arg1, %14, %16) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
      func.call @_ZN11MeanVisitorImmEclEmm(%arg2, %14, %16) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, i64, i64) -> ()
    }
    return
  }
  func.func @_ZNK11MeanVisitorImmE10get_resultEv(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    %4 = arith.divsi %1, %3 : i64
    return %4 : i64
  }
  func.func @_ZNK10MinVisitorImmE10get_resultEv(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNK10MaxVisitorImmE10get_resultEv(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func private @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.6", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %1 = llvm.mlir.undef : i32
    llvm.store %1, %0 : !llvm.ptr<i32>
    %2 = llvm.alloca %c1_i64 x i8 : (i64) -> !llvm.ptr<i8>
    %3 = llvm.mlir.undef : i8
    llvm.store %3, %2 : !llvm.ptr<i8>
    %4 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %5 = llvm.mlir.undef : i64
    llvm.store %5, %4 : !llvm.ptr<i64>
    %6 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %8 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %10 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %12 = call @_ZNKSt6vectorIcSaIcEE4sizeEv(%9) : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %13 = arith.index_cast %12 : i64 to index
    scf.for %arg2 = %c0 to %13 step %c1 {
      %14 = arith.index_cast %arg2 : index to i64
      %15 = func.call @_ZNKSt6vectorImSaImEEixEm(%7, %14) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %16 = llvm.load %15 : !llvm.ptr<i64>
      llvm.store %16, %4 : !llvm.ptr<i64>
      %17 = func.call @_ZNKSt6vectorIcSaIcEEixEm(%9, %14) : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
      %18 = llvm.load %17 : !llvm.ptr<i8>
      llvm.store %18, %2 : !llvm.ptr<i8>
      %19 = func.call @_ZNKSt6vectorIiSaIiEEixEm(%11, %14) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %20 = llvm.load %19 : !llvm.ptr<i32>
      llvm.store %20, %0 : !llvm.ptr<i32>
      %21 = func.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0, %4, %2) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
      %22 = arith.cmpi ne, %21, %c0_i8 : i8
      scf.if %22 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    }
    return
  }
  func.func @_ZNKSt6vectorImSaImEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
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
  func.func private @_Z9get_indexv() -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_1iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.7", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i32 : (i64) -> !llvm.ptr<i32>
    %1 = llvm.mlir.undef : i32
    llvm.store %1, %0 : !llvm.ptr<i32>
    %2 = llvm.alloca %c1_i64 x i8 : (i64) -> !llvm.ptr<i8>
    %3 = llvm.mlir.undef : i8
    llvm.store %3, %2 : !llvm.ptr<i8>
    %4 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    %5 = llvm.mlir.undef : i64
    llvm.store %5, %4 : !llvm.ptr<i64>
    %6 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %8 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %10 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %12 = call @_ZNKSt6vectorIcSaIcEE4sizeEv(%9) : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %13 = arith.index_cast %12 : i64 to index
    scf.for %arg2 = %c0 to %13 step %c1 {
      %14 = arith.index_cast %arg2 : index to i64
      %15 = func.call @_ZNKSt6vectorImSaImEEixEm(%7, %14) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %16 = llvm.load %15 : !llvm.ptr<i64>
      llvm.store %16, %4 : !llvm.ptr<i64>
      %17 = func.call @_ZNKSt6vectorIcSaIcEEixEm(%9, %14) : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
      %18 = llvm.load %17 : !llvm.ptr<i8>
      llvm.store %18, %2 : !llvm.ptr<i8>
      %19 = func.call @_ZNKSt6vectorIiSaIiEEixEm(%11, %14) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %20 = llvm.load %19 : !llvm.ptr<i32>
      llvm.store %20, %0 : !llvm.ptr<i32>
      %21 = func.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0, %4, %2) : (!llvm.ptr<struct<"class.anon.7", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
      %22 = arith.cmpi ne, %21, %c0_i8 : i8
      scf.if %22 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    }
    return
  }
  func.func private @_Z15step4_firstTimei(i32) -> i8 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i32>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i32>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i32>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i32>>
      func.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i32>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      llvm.store %16, %5 : !llvm.ptr<ptr<i32>>
    } else {
      %10 = func.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
      func.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, !llvm.ptr<i32>) -> ()
    }
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  func.func @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<ptr<i32>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
  }
  func.func @_ZN9__gnu_cxxneIPiSt6vectorIiSaIiEEEEbRKNS_17__normal_iteratorIT_T0_EESA_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i32>>
    %4 = llvm.icmp "ne" %1, %3 : !llvm.ptr<i32>
    %5 = arith.extui %4 : i1 to i8
    return %5 : i8
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEdeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEppEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %1[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.store %2, %0 : !llvm.ptr<ptr<i32>>
    return %arg0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
  }
  func.func @_ZNKSt6vectorIdSaIdEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
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
  func.func @_ZNSt6vectorIdSaIdEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    return %5 : !llvm.ptr<f64>
  }
  func.func @_Z12hvs_set_sizem(%arg0: i64) attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %0 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %2 = llvm.bitcast %1 : !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>> to !llvm.ptr<struct<"struct.rvector", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = call @_ZNKSt6vectorIdSaIdEE8capacityEv(%1) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %4 = arith.cmpi sgt, %arg0, %3 : i64
    scf.if %4 {
      %9 = llvm.mlir.addressof @str33 : !llvm.ptr<array<36 x i8>>
      %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<36 x i8>>) -> !llvm.ptr<i8>
      %11 = llvm.call @printf(%10) : (!llvm.ptr<i8>) -> i32
      func.call @exit(%c1_i32) : (i32) -> ()
    }
    %5 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.rvector", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.rvector", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.getelementptr %7[%arg0] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %8, %5 : !llvm.ptr<ptr<f64>>
    return
  }
  func.func private @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.14", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
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
    %6 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %8 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %10 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %12 = call @_ZNKSt6vectorIdSaIdEE4sizeEv(%9) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %12) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %13 = arith.index_cast %12 : i64 to index
    scf.for %arg2 = %c0 to %13 step %c1 {
      %14 = arith.index_cast %arg2 : index to i64
      %15 = func.call @_ZNSt6vectorImSaImEEixEm(%7, %14) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
      %16 = llvm.load %15 : !llvm.ptr<i64>
      llvm.store %16, %4 : !llvm.ptr<i64>
      %17 = func.call @_ZNSt6vectorIdSaIdEEixEm(%9, %14) : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
      %18 = llvm.load %17 : !llvm.ptr<f64>
      llvm.store %18, %2 : !llvm.ptr<f64>
      %19 = func.call @_ZNSt6vectorIiSaIiEEixEm(%11, %14) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %20 = llvm.load %19 : !llvm.ptr<i32>
      llvm.store %20, %0 : !llvm.ptr<i32>
      %21 = func.call @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0, %4, %2) : (!llvm.ptr<struct<"class.anon.14", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<f64>) -> i8
      %22 = arith.cmpi ne, %21, %c0_i8 : i8
      scf.if %22 {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
      }
    }
    return
  }
  func.func @_ZNSt6vectorImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    call @_ZNSt12_Vector_baseImSaImEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorImSaImEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str34 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorImSaImEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i64>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i64>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i64>>
        %35 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
        scf.yield %28 : !llvm.ptr<i64>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
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
        %38 = func.call @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
        %39 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
        scf.yield %38 : !llvm.ptr<i64>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i64>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i64>>
      %19 = llvm.ptrtoint %18 : !llvm.ptr<i64> to i64
      %20 = llvm.ptrtoint %16 : !llvm.ptr<i64> to i64
      %21 = arith.subi %19, %20 : i64
      %22 = arith.divsi %21, %c8_i64 : i64
      func.call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
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
  func.func @_ZNSt6vectorIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    call @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str34 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i16>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i16>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i16>>
        %35 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
        scf.yield %28 : !llvm.ptr<i16>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %31 = llvm.load %30 : !llvm.ptr<ptr<i16>>
        %32 = func.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%31) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
        llvm.store %32, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
        func.call @_ZNSt13move_iteratorIPsEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
        %33 = llvm.getelementptr %29[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i16>>
        %35 = func.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%34) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
        llvm.store %35, %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
        func.call @_ZNSt13move_iteratorIPsEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
        %36 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
        %37 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
        %38 = func.call @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16>
        %39 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
        scf.yield %38 : !llvm.ptr<i16>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i16>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i16>>
      %19 = llvm.ptrtoint %18 : !llvm.ptr<i16> to i64
      %20 = llvm.ptrtoint %16 : !llvm.ptr<i16> to i64
      %21 = arith.subi %19, %20 : i64
      %22 = arith.divsi %21, %c2_i64 : i64
      func.call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
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
  func.func @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @_ZNSt6vectorIsSaIsEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    return %5 : !llvm.ptr<i16>
  }
  func.func @_ZNSt6vectorImSaImEE9push_backERKm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i64>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i64>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i64>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i64>>
      func.call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i64>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
      llvm.store %16, %5 : !llvm.ptr<ptr<i64>>
    } else {
      %10 = func.call @_ZNSt6vectorImSaImEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
      func.call @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>, !llvm.ptr<i64>) -> ()
    }
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE9push_backERKs(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %5 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i16>>
    %7 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<i16>>
    %9 = llvm.icmp "ne" %6, %8 : !llvm.ptr<i16>
    scf.if %9 {
      %10 = llvm.bitcast %3 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %11 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %12 = llvm.icmp "ne" %10, %11 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %13 = arith.select %12, %10, %11 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %14 = llvm.load %5 : !llvm.ptr<ptr<i16>>
      func.call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%13, %14, %arg1) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
      %15 = llvm.load %5 : !llvm.ptr<ptr<i16>>
      %16 = llvm.getelementptr %15[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
      llvm.store %16, %5 : !llvm.ptr<ptr<i16>>
    } else {
      %10 = func.call @_ZNSt6vectorIsSaIsEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
      llvm.store %10, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
      func.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> ()
      %11 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
      func.call @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0, %11, %arg1) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>, !llvm.ptr<i16>) -> ()
    }
    return
  }
  func.func private @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<external>}
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
  func.func @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.cmpi sgt, %arg1, %4 : i64
    scf.if %5 {
      %8 = llvm.mlir.addressof @str34 : !llvm.ptr<array<16 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%9) : (!llvm.ptr<i8>) -> ()
    }
    %6 = call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %7 = arith.cmpi slt, %6, %arg1 : i64
    scf.if %7 {
      %8 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %9 = func.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
      %10 = arith.cmpi ne, %9, %c0_i8 : i8
      %11 = scf.if %10 -> (!llvm.ptr<i32>) {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
        %28 = func.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%27, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
        %29 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
        %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %32 = llvm.load %31 : !llvm.ptr<ptr<i32>>
        %33 = llvm.getelementptr %30[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i32>>
        %35 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
        %36 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%32, %34, %28, %35) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
        scf.yield %28 : !llvm.ptr<i32>
      } else {
        %27 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
        %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
        %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
        %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %31 = llvm.load %30 : !llvm.ptr<ptr<i32>>
        %32 = func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%31) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
        llvm.store %32, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
        func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
        %33 = llvm.getelementptr %29[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
        %34 = llvm.load %33 : !llvm.ptr<ptr<i32>>
        %35 = func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%34) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
        llvm.store %35, %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
        func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
        %36 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
        %37 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
        %38 = func.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %36, %37) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32>
        %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%27) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
        scf.yield %38 : !llvm.ptr<i32>
      }
      %12 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
      %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
      %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %16 = llvm.load %15 : !llvm.ptr<ptr<i32>>
      %17 = llvm.getelementptr %14[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %18 = llvm.load %17 : !llvm.ptr<ptr<i32>>
      %19 = llvm.ptrtoint %18 : !llvm.ptr<i32> to i64
      %20 = llvm.ptrtoint %16 : !llvm.ptr<i32> to i64
      %21 = arith.subi %19, %20 : i64
      %22 = arith.divsi %21, %c4_i64 : i64
      func.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%12, %16, %22) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
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
  func.func private @_Z15step1_firstTimei(i32) -> i8 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @_ZNKSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func private @_ZZ33print_passage_counts_by_vendor_idiENK3$_0clERKmRKi(%arg0: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i32>) -> i8 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %3 = llvm.load %2 : !llvm.ptr<i32>
    %4 = arith.cmpi eq, %0, %3 : i32
    %5 = arith.extui %4 : i1 to i8
    return %5 : i8
  }
  func.func @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZN10MaxVisitorImmE3preEv(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN10MinVisitorImmE3preEv(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN11MeanVisitorImmE3preEv(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %0 : !llvm.ptr<i64>
    %1 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZN10MaxVisitorImmEclEmm(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg1: i64, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i8 = arith.constant 0 : i8
    %true = arith.constant true
    %0 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    %1 = llvm.load %0 : !llvm.ptr<i8>
    %2 = arith.cmpi ne, %1, %c0_i8 : i8
    %3 = scf.if %2 -> (i1) {
      scf.yield %true : i1
    } else {
      %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
      %5 = llvm.load %4 : !llvm.ptr<i64>
      %6 = arith.cmpi sgt, %arg2, %5 : i64
      scf.yield %6 : i1
    }
    scf.if %3 {
      %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
      llvm.store %arg2, %4 : !llvm.ptr<i64>
      %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
      llvm.store %arg1, %5 : !llvm.ptr<i64>
      llvm.store %c0_i8, %0 : !llvm.ptr<i8>
    }
    return
  }
  func.func @_ZN10MinVisitorImmEclEmm(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg1: i64, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i8 = arith.constant 0 : i8
    %true = arith.constant true
    %0 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    %1 = llvm.load %0 : !llvm.ptr<i8>
    %2 = arith.cmpi ne, %1, %c0_i8 : i8
    %3 = scf.if %2 -> (i1) {
      scf.yield %true : i1
    } else {
      %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
      %5 = llvm.load %4 : !llvm.ptr<i64>
      %6 = arith.cmpi slt, %arg2, %5 : i64
      scf.yield %6 : i1
    }
    scf.if %3 {
      %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
      llvm.store %arg2, %4 : !llvm.ptr<i64>
      %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
      llvm.store %arg1, %5 : !llvm.ptr<i64>
      llvm.store %c0_i8, %0 : !llvm.ptr<i8>
    }
    return
  }
  func.func @_ZN11MeanVisitorImmEclEmm(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, %arg1: i64, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = arith.addi %1, %arg2 : i64
    llvm.store %2, %0 : !llvm.ptr<i64>
    %3 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    %5 = arith.addi %4, %c1_i64 : i64
    llvm.store %5, %3 : !llvm.ptr<i64>
    return
  }
  func.func @_ZN10MaxVisitorImmE4postEv(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN10MinVisitorImmE4postEv(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN11MeanVisitorImmE4postEv(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNKSt6vectorIcSaIcEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i8> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i8> to i64
    %9 = arith.subi %7, %8 : i64
    return %9 : i64
  }
  func.func @_ZNKSt6vectorIcSaIcEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    return %5 : !llvm.ptr<i8>
  }
  func.func private @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0: !llvm.ptr<struct<"class.anon.6", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i8>) -> i8 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c78_i32 = arith.constant 78 : i32
    %0 = llvm.load %arg2 : !llvm.ptr<i8>
    %1 = arith.extsi %0 : i8 to i32
    %2 = arith.cmpi eq, %1, %c78_i32 : i32
    %3 = arith.extui %2 : i1 to i8
    return %3 : i8
  }
  func.func private @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0: !llvm.ptr<struct<"class.anon.7", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i8>) -> i8 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %c89_i32 = arith.constant 89 : i32
    %0 = llvm.load %arg2 : !llvm.ptr<i8>
    %1 = arith.extsi %0 : i8 to i32
    %2 = arith.cmpi eq, %1, %c89_i32 : i32
    %3 = arith.extui %2 : i1 to i8
    return %3 : i8
  }
  func.func @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %2 = llvm.mlir.addressof @str35 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i32>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i32>>
    %12 = call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>
    %13 = call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> ()
    %20 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i32>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
      %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      scf.yield %40 : !llvm.ptr<i32>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
      %34 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i32>) -> !llvm.ptr<i32>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i32>>
      %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
      scf.yield %40 : !llvm.ptr<i32>
    }
    %23 = call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i32>>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
    %28 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
    %29 = arith.subi %27, %28 : i64
    %30 = arith.divsi %29, %c4_i64 : i64
    call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<i32>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i32>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i32>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %31, %25 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>, %arg1: !llvm.ptr<ptr<i32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i32>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    return %0 : !llvm.ptr<ptr<i32>>
  }
  func.func private @asin(f64) -> f64 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNKSt6vectorIdSaIdEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<f64>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<f64> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<f64> to i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func private @exit(i32) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0: !llvm.ptr<struct<"class.anon.14", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<f64>) -> i8 attributes {llvm.linkage = #llvm.linkage<internal>} {
    %cst = arith.constant 1.000000e+02 : f64
    %0 = llvm.load %arg2 : !llvm.ptr<f64>
    %1 = arith.cmpf ogt, %0, %cst : f64
    %2 = arith.extui %1 : i1 to i8
    return %2 : i8
  }
  func.func @_ZNSt12_Vector_baseImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    call @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = call @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64
    return %2 : i64
  }
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNKSt6vectorImSaImEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
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
  func.func @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i64>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, i64) -> !llvm.ptr<i64>
      scf.yield %7 : !llvm.ptr<i64>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i64>
      scf.yield %2 : !llvm.ptr<i64>
    }
    return %1 : !llvm.ptr<i64>
  }
  func.func @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  func.func @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    call @_ZNSt13move_iteratorIPmEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
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
  func.func @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i64>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      func.call @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    call @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> ()
    return
  }
  func.func @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %2 = call @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> i64
    return %2 : i64
  }
  func.func @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
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
  func.func @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
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
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable.30", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable.30", (i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable.30", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    return %c1_i8 : i8
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i16>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, i64) -> !llvm.ptr<i16>
      scf.yield %7 : !llvm.ptr<i16>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i16>
      scf.yield %2 : !llvm.ptr<i16>
    }
    return %1 : !llvm.ptr<i16>
  }
  func.func @_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
  }
  func.func @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg3: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    return %5 : !llvm.ptr<i16>
  }
  func.func @_ZNSt13move_iteratorIPsEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0: !llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<i16>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    return %4 : !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
  }
  func.func @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i16>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i16>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      func.call @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    return
  }
  func.func @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.mlir.addressof @str35 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i64>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i64>>
    %12 = call @_ZNSt6vectorImSaImEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %13 = call @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    %20 = call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i64>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i64>>
      %34 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i64>>
      %39 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
      scf.yield %40 : !llvm.ptr<i64>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i64>>
      %34 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i64>>
      %39 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
      scf.yield %40 : !llvm.ptr<i64>
    }
    %23 = call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i64>>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i64> to i64
    %28 = llvm.ptrtoint %9 : !llvm.ptr<i64> to i64
    %29 = arith.subi %27, %28 : i64
    %30 = arith.divsi %29, %c8_i64 : i64
    call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i64>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i64>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %31, %25 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZNSt6vectorImSaImEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
  }
  func.func @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.store %arg1, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.mlir.addressof @str35 : !llvm.ptr<array<26 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %4 = call @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0, %c1_i64, %3) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i16>>
    %10 = llvm.getelementptr %7[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i16>>
    %12 = call @_ZNSt6vectorIsSaIsEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
    llvm.store %12, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %13 = call @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%1, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> i64
    %14 = call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%5, %4) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    %15 = llvm.bitcast %6 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %16 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %17 = llvm.icmp "ne" %15, %16 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %18 = arith.select %17, %15, %16 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %19 = llvm.getelementptr %14[%13] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%18, %19, %arg2) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    %20 = call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %21 = arith.cmpi ne, %20, %c0_i8 : i8
    %22 = scf.if %21 -> (!llvm.ptr<i16>) {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i16>>
      %34 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %35 = func.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%9, %33, %14, %34) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i16>>
      %39 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %40 = func.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%38, %11, %36, %39) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
      scf.yield %40 : !llvm.ptr<i16>
    } else {
      %32 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %33 = llvm.load %32 : !llvm.ptr<ptr<i16>>
      %34 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %35 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%9, %33, %14, %34) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
      %36 = llvm.getelementptr %35[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
      %37 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
      %38 = llvm.load %37 : !llvm.ptr<ptr<i16>>
      %39 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
      %40 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%38, %11, %36, %39) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
      scf.yield %40 : !llvm.ptr<i16>
    }
    %23 = call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %24 = arith.cmpi eq, %23, %c0_i8 : i8
    scf.if %24 {
      %32 = func.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    }
    %25 = llvm.getelementptr %7[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i16>>
    %27 = llvm.ptrtoint %26 : !llvm.ptr<i16> to i64
    %28 = llvm.ptrtoint %9 : !llvm.ptr<i16> to i64
    %29 = arith.subi %27, %28 : i64
    %30 = arith.divsi %29, %c2_i64 : i64
    call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%5, %9, %30) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.store %14, %8 : !llvm.ptr<ptr<i16>>
    llvm.store %22, %10 : !llvm.ptr<ptr<i16>>
    %31 = llvm.getelementptr %14[%4] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %31, %25 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
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
  func.func @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    return %2 : i64
  }
  func.func @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
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
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::__is_move_insertable.34", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable.34", (i8)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::__is_move_insertable.34", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%1, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    return %c1_i8 : i8
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i64 = arith.constant 0 : i64
    %0 = arith.cmpi ne, %arg1, %c0_i64 : i64
    %1 = scf.if %0 -> (!llvm.ptr<i32>) {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %7 = func.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, i64) -> !llvm.ptr<i32>
      scf.yield %7 : !llvm.ptr<i32>
    } else {
      %2 = llvm.mlir.null : !llvm.ptr<i32>
      scf.yield %2 : !llvm.ptr<i32>
    }
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg3: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg2, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg3, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %5 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%4, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %6 = call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %8 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %9 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %5, %6) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ES0_(%1, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<i32>) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %3, %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %0) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    return %4 : !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
  }
  func.func @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.mlir.null : !llvm.ptr<i32>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i32>
    scf.if %1 {
      %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
      %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      %6 = arith.select %5, %3, %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
      func.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    }
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    llvm.store %0, %arg1 : !llvm.ptr<i32>
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
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
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
    llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %5 = call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
    llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %8 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    call @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  func.func @_ZNSt6vectorImSaImEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i64>
    return %2 : !llvm.ptr<i64>
  }
  func.func @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    return %0 : !llvm.ptr<i64>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    return
  }
  func.func @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    call @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
  }
  func.func @_ZNSt6vectorIsSaIsEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg1: i64) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i16>
    return %2 : !llvm.ptr<i16>
  }
  func.func @_ZNSt6vectorIsSaIsEE14_S_do_relocateEPsS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %6 : !llvm.ptr<i16>
  }
  func.func @_ZNSt13move_iteratorIPsEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSt13move_iteratorIPsEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZSt8_DestroyIPsEvT_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i64>
    llvm.store %0, %arg1 : !llvm.ptr<i64>
    return
  }
  func.func @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
      scf.yield %17 : i64
    } else {
      scf.yield %12 : i64
    }
    return %16 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i64>>
    %4 = llvm.ptrtoint %1 : !llvm.ptr<i64> to i64
    %5 = llvm.ptrtoint %3 : !llvm.ptr<i64> to i64
    %6 = arith.subi %4, %5 : i64
    %7 = arith.divsi %6, %c8_i64 : i64
    return %7 : i64
  }
  func.func @_ZNSt6vectorImSaImEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    return %0 : !llvm.ptr<ptr<i64>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    return %8 : !llvm.ptr<i64>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, %arg1: !llvm.ptr<ptr<i64>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i64>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i64>>
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg2 : !llvm.ptr<i16>
    llvm.store %0, %arg1 : !llvm.ptr<i16>
    return
  }
  func.func @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.store %arg1, %2 : !llvm.ptr<i64>
    %3 = call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %5 = arith.subi %3, %4 : i64
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = arith.cmpi slt, %5, %6 : i64
    scf.if %7 {
      func.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    }
    %8 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %9 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    llvm.store %9, %1 : !llvm.ptr<i64>
    %10 = call @_ZSt3maxImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %11 = llvm.load %10 : !llvm.ptr<i64>
    %12 = arith.addi %8, %11 : i64
    %13 = call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %14 = arith.cmpi slt, %12, %13 : i64
    %15 = scf.if %14 -> (i1) {
      scf.yield %true : i1
    } else {
      %17 = func.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
      %18 = arith.cmpi sgt, %12, %17 : i64
      scf.yield %18 : i1
    }
    %16 = scf.if %15 -> (i64) {
      %17 = func.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
      scf.yield %17 : i64
    } else {
      scf.yield %12 : i64
    }
    return %16 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2_i64 = arith.constant 2 : i64
    %0 = call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %3 = llvm.load %2 : !llvm.ptr<ptr<i16>>
    %4 = llvm.ptrtoint %1 : !llvm.ptr<i16> to i64
    %5 = llvm.ptrtoint %3 : !llvm.ptr<i16> to i64
    %6 = arith.subi %4, %5 : i64
    %7 = arith.divsi %6, %c2_i64 : i64
    return %7 : i64
  }
  func.func @_ZNSt6vectorIsSaIsEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%1, %6) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.store %7, %0 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%2, %0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    return %8 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    return %0 : !llvm.ptr<ptr<i16>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
    llvm.store %4, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1EOS1_(%3, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %5 = call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg1) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
    llvm.store %5, %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1EOS1_(%1, %0) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %6 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %8 = call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%6, %7, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    return %8 : !llvm.ptr<i16>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, %arg1: !llvm.ptr<ptr<i16>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i16>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i16>>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i8 = arith.constant 1 : i8
    return %c1_i8 : i8
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    return %2 : !llvm.ptr<i32>
  }
  func.func @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZSt8_DestroyIPiEvT_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, !llvm.ptr<i32>, i64) -> ()
    return
  }
  func.func @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.load %arg0 : !llvm.ptr<i64>
    %1 = llvm.load %arg1 : !llvm.ptr<i64>
    %2 = arith.cmpi slt, %0, %1 : i64
    %3 = arith.select %2, %arg1, %arg0 : !llvm.ptr<i64>
    return %3 : !llvm.ptr<i64>
  }
  func.func @_ZNSaImEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1152921504606846975_i64 = arith.constant 1152921504606846975 : i64
    return %c1152921504606846975_i64 : i64
  }
  func.func @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
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
  func.func @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i64> to !llvm.ptr<i8>
    call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZNSaIsEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNSt16allocator_traitsISaIsEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4611686018427387903_i64 = arith.constant 4611686018427387903 : i64
    return %c4611686018427387903_i64 : i64
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZSt12__relocate_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    return %0 : !llvm.ptr<i16>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %6 : !llvm.ptr<i16>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i16> to !llvm.ptr<i8>
    call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<i32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i32> to !llvm.ptr<i8>
    call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorImEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1152921504606846975_i64 = arith.constant 1152921504606846975 : i64
    return %c1152921504606846975_i64 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZN9__gnu_cxx13new_allocatorIsEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4611686018427387903_i64 = arith.constant 4611686018427387903 : i64
    return %c4611686018427387903_i64 : i64
  }
  func.func @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = call @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %6 : !llvm.ptr<i16>
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%4, %5, %arg2) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %6 : !llvm.ptr<i32>
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
  func.func @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16>
    call @_ZNSt13move_iteratorIPsEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %7 = call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16>
    %8 = call @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    return %8 : !llvm.ptr<i16>
  }
  func.func @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %4 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%4) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32>
    call @_ZNSt13move_iteratorIPiEC1ERKS1_(%0, %2) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %6 = llvm.load %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %7 = call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%6) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32>
    %8 = call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%5, %7, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %8 : !llvm.ptr<i32>
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
  func.func @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %1 = call @_ZNKSt13move_iteratorIPsE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<i16>
    return %1 : !llvm.ptr<i16>
  }
  func.func @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %1 = call @_ZNKSt13move_iteratorIPiE4baseEv(%0) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<i32>
    return %1 : !llvm.ptr<i32>
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
  func.func @_ZNKSt13move_iteratorIPsE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<i16> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    return %1 : !llvm.ptr<i16>
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
  func.func @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    return %1 : !llvm.ptr<i32>
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
