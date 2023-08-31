module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid5(i32, i16)
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid12(i32, i16)
  llvm.func @cache_request_impl_12(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid3(i32, i16)
  llvm.func @cache_request_impl_3(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid11(i32, i16)
  llvm.func @cache_request_impl_11(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_5(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_4(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid8(i32, i16)
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_8(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_10(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_6(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_7(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_9(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global internal constant @str35("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str34("vector::reserve\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str33("Size larger than cap, dont do this\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @store_fwd_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>
  llvm.mlir.global external @psg_cnt_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  llvm.mlir.global external @pick_month_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @pick_day_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
  llvm.mlir.global external @index_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str32("analyze_trip_durations_of_timestamps() on key = %s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str31("Number of rows that have haversine_distance > 100 KM = %lu\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @haversine_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global internal constant @str30("pickup_longitude_vec.size() == dropoff_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str29("pickup_longitude_vec.size() == dropoff_longitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.func @__assert_fail(!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>)
  llvm.mlir.global internal constant @str28("void calculate_haversine_distance_column()\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str27("/users/Zijian/new_rt/apps/dataframe/new_app/all_step.cc\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str26("pickup_longitude_vec.size() == pickup_latitude_vec.size()\00") {addr_space = 0 : i32}
  llvm.mlir.global external @drop_lat_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @drop_long_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @pick_lat_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global external @pick_long_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>
  llvm.mlir.global internal constant @str25("calculate_haversine_distance_column()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str24("}\0A\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str23("%d, \00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str22("{\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str21("%f\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str20("calculate_distribution_store_and_fwd_flag()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str19("Max duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str18("Min duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str17("Mean duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @duration_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str16("calculate_trip_duration()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str15("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str14("print_passage_counts_by_vendor_id(vendor_id), vendor_id = %d\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str13("Number of unique vendor_ids in the train dataset: %ld\0A\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @vendor_id_col() {addr_space = 0 : i32} : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
  llvm.mlir.global internal constant @str12("number of vendor_ids in the train dataset: %ld\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str11("print_number_vendor_ids_and_unique()\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str10(" time: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str9("Step 8: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str8("Step 7: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str7("Step 5: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str6("Step 4: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str5("Step 3: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("Step 2-2: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Step 2-1: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str2("Step 1: %.6f s\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("pickup_month\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str0("pickup_day\00") {addr_space = 0 : i32}
  llvm.func @main() -> i32 {
    %0 = llvm.mlir.constant(1.000000e+06 : f64) : f64
    %1 = llvm.mlir.constant(2 : i32) : i32
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(10 : index) : i64
    %4 = llvm.mlir.constant(0 : index) : i64
    %5 = llvm.mlir.constant(1 : index) : i64
    %6 = llvm.mlir.constant(1 : i64) : i64
    %7 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %8 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %9 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %10 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %11 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %12 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %13 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %14 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %15 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %16 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %17 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %18 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %19 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %20 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %21 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %22 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %23 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration.0", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %24 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::duration", (i64)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %25 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %26 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %27 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %28 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %29 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %30 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %31 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %32 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %33 = llvm.alloca %6 x !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)> : (i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %34 = llvm.alloca %6 x !llvm.array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>> : (i64) -> !llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>
    %35 = llvm.mlir.undef : i32
    llvm.call @_Z9ext_setupv() : () -> ()
    %36 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<10 x struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.br ^bb1(%4 : i64)
  ^bb1(%37: i64):  // 2 preds: ^bb0, ^bb2
    %38 = llvm.icmp "slt" %37, %3 : i64
    llvm.cond_br %38, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %39 = llvm.getelementptr %36[%37] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, i64) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(%39) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> ()
    %40 = llvm.add %37, %5  : i64
    llvm.br ^bb1(%40 : i64)
  ^bb3:  // pred: ^bb1
    %41 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %41, %33 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %42 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%36, %33) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z34print_number_vendor_ids_and_uniquev() : () -> ()
    %43 = llvm.getelementptr %36[1] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %44 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %44, %32 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %45 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%43, %32) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z33print_passage_counts_by_vendor_idi(%2) : (i32) -> ()
    %46 = llvm.getelementptr %36[2] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %47 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %47, %31 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %48 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%46, %31) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z33print_passage_counts_by_vendor_idi(%1) : (i32) -> ()
    %49 = llvm.getelementptr %36[3] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %50 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %50, %30 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %51 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%49, %30) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z23calculate_trip_durationv() : () -> ()
    %52 = llvm.getelementptr %36[4] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %53 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %53, %29 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %54 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%52, %29) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z41calculate_distribution_store_and_fwd_flagv() : () -> ()
    %55 = llvm.getelementptr %36[5] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %56 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %56, %28 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %57 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%55, %28) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    llvm.call @_Z35calculate_haversine_distance_columnv() : () -> ()
    %58 = llvm.getelementptr %36[6] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %59 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %59, %27 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %60 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%58, %27) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %61 = llvm.mlir.addressof @str0 : !llvm.ptr<array<11 x i8>>
    %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_Z29analyze_trip_durations_of_dayIsEvPKc(%62) : (!llvm.ptr<i8>) -> ()
    %63 = llvm.getelementptr %36[7] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %64 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %64, %26 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %65 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%63, %26) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %66 = llvm.mlir.addressof @str1 : !llvm.ptr<array<13 x i8>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<13 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_Z31analyze_trip_durations_of_monthIsEvPKc(%67) : (!llvm.ptr<i8>) -> ()
    %68 = llvm.getelementptr %36[8] : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %69 = llvm.call @_ZNSt6chrono3_V212steady_clock3nowEv() : () -> !llvm.struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>
    llvm.store %69, %25 : !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %70 = llvm.call @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(%68, %25) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>
    %71 = llvm.mlir.addressof @str2 : !llvm.ptr<array<16 x i8>>
    %72 = llvm.getelementptr %71[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %73 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%43, %36) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %73, %24 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %74 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%24) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %74, %23 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %75 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%23) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %76 = llvm.sitofp %75 : i64 to f64
    %77 = llvm.fdiv %76, %0  : f64
    %78 = llvm.call @printf(%72, %77) : (!llvm.ptr<i8>, f64) -> i32
    %79 = llvm.mlir.addressof @str3 : !llvm.ptr<array<18 x i8>>
    %80 = llvm.getelementptr %79[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %81 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%46, %43) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %81, %22 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %82 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%22) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %82, %21 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %83 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%21) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %84 = llvm.sitofp %83 : i64 to f64
    %85 = llvm.fdiv %84, %0  : f64
    %86 = llvm.call @printf(%80, %85) : (!llvm.ptr<i8>, f64) -> i32
    %87 = llvm.mlir.addressof @str4 : !llvm.ptr<array<18 x i8>>
    %88 = llvm.getelementptr %87[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %89 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%49, %46) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %89, %20 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %90 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%20) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %90, %19 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %91 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%19) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %92 = llvm.sitofp %91 : i64 to f64
    %93 = llvm.fdiv %92, %0  : f64
    %94 = llvm.call @printf(%88, %93) : (!llvm.ptr<i8>, f64) -> i32
    %95 = llvm.mlir.addressof @str5 : !llvm.ptr<array<16 x i8>>
    %96 = llvm.getelementptr %95[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %97 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%52, %49) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %97, %18 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %98 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%18) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %98, %17 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %99 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%17) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %100 = llvm.sitofp %99 : i64 to f64
    %101 = llvm.fdiv %100, %0  : f64
    %102 = llvm.call @printf(%96, %101) : (!llvm.ptr<i8>, f64) -> i32
    %103 = llvm.mlir.addressof @str6 : !llvm.ptr<array<16 x i8>>
    %104 = llvm.getelementptr %103[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %105 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%55, %52) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %105, %16 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %106 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%16) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %106, %15 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %107 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%15) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %108 = llvm.sitofp %107 : i64 to f64
    %109 = llvm.fdiv %108, %0  : f64
    %110 = llvm.call @printf(%104, %109) : (!llvm.ptr<i8>, f64) -> i32
    %111 = llvm.mlir.addressof @str7 : !llvm.ptr<array<16 x i8>>
    %112 = llvm.getelementptr %111[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %113 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%58, %55) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %113, %14 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %114 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%14) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %114, %13 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %115 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%13) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %116 = llvm.sitofp %115 : i64 to f64
    %117 = llvm.fdiv %116, %0  : f64
    %118 = llvm.call @printf(%112, %117) : (!llvm.ptr<i8>, f64) -> i32
    %119 = llvm.mlir.addressof @str8 : !llvm.ptr<array<16 x i8>>
    %120 = llvm.getelementptr %119[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %121 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%63, %58) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %121, %12 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %122 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%12) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %122, %11 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %123 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%11) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %124 = llvm.sitofp %123 : i64 to f64
    %125 = llvm.fdiv %124, %0  : f64
    %126 = llvm.call @printf(%120, %125) : (!llvm.ptr<i8>, f64) -> i32
    %127 = llvm.mlir.addressof @str9 : !llvm.ptr<array<16 x i8>>
    %128 = llvm.getelementptr %127[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    %129 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%68, %63) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %129, %10 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %130 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%10) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %130, %9 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %131 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%9) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %132 = llvm.sitofp %131 : i64 to f64
    %133 = llvm.fdiv %132, %0  : f64
    %134 = llvm.call @printf(%128, %133) : (!llvm.ptr<i8>, f64) -> i32
    %135 = llvm.mlir.addressof @str10 : !llvm.ptr<array<15 x i8>>
    %136 = llvm.getelementptr %135[0, 0] : (!llvm.ptr<array<15 x i8>>) -> !llvm.ptr<i8>
    %137 = llvm.call @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(%68, %36) : (!llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>, !llvm.ptr<struct<"struct.std::chrono::time_point", (struct<"struct.std::chrono::duration", (i64)>)>>) -> !llvm.struct<"struct.std::chrono::duration", (i64)>
    llvm.store %137, %8 : !llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>
    %138 = llvm.call @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(%8) : (!llvm.ptr<struct<"struct.std::chrono::duration", (i64)>>) -> !llvm.struct<"struct.std::chrono::duration.0", (i64)>
    llvm.store %138, %7 : !llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>
    %139 = llvm.call @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(%7) : (!llvm.ptr<struct<"struct.std::chrono::duration.0", (i64)>>) -> i64
    %140 = llvm.sitofp %139 : i64 to f64
    %141 = llvm.fdiv %140, %0  : f64
    %142 = llvm.call @printf(%136, %141) : (!llvm.ptr<i8>, f64) -> i32
    llvm.return %35 : i32
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
  llvm.func @_Z34print_number_vendor_ids_and_uniquev() {
    %0 = llvm.mlir.addressof @str11 : !llvm.ptr<array<38 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<38 x i8>>) -> !llvm.ptr<i8>
    %2 = llvm.call @printf(%1) : (!llvm.ptr<i8>) -> i32
    %3 = llvm.mlir.addressof @str12 : !llvm.ptr<array<48 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<48 x i8>>) -> !llvm.ptr<i8>
    %5 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv__0(%6) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %8 = llvm.call @printf(%4, %7) : (!llvm.ptr<i8>, i64) -> i32
    %9 = llvm.mlir.addressof @str13 : !llvm.ptr<array<56 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %11 = llvm.call @_Z21get_vid_unique_valuesv() : () -> i64
    %12 = llvm.call @printf(%10, %11) : (!llvm.ptr<i8>, i64) -> i32
    llvm.return
  }
  llvm.func @_Z33print_passage_counts_by_vendor_idi(%arg0: i32) {
    %0 = llvm.mlir.constant(0 : index) : i64
    %1 = llvm.mlir.constant(1 : index) : i64
    %2 = llvm.mlir.constant(1 : i32) : i32
    %3 = llvm.mlir.constant(1 : i64) : i64
    %4 = llvm.alloca %3 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %5 = llvm.alloca %3 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %6 = llvm.alloca %3 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %7 = llvm.alloca %3 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %8 = llvm.alloca %3 x !llvm.struct<"class.anon", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    %9 = llvm.alloca %3 x i32 : (i64) -> !llvm.ptr<i32>
    %10 = llvm.mlir.undef : i32
    llvm.store %10, %9 : !llvm.ptr<i32>
    llvm.store %arg0, %9 : !llvm.ptr<i32>
    %11 = llvm.mlir.addressof @str14 : !llvm.ptr<array<62 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<62 x i8>>) -> !llvm.ptr<i8>
    %13 = llvm.call @printf(%12, %arg0) : (!llvm.ptr<i8>, i32) -> i32
    %14 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %9, %14 : !llvm.ptr<ptr<i32>>
    %15 = llvm.load %7 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    llvm.store %15, %6 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    llvm.call @_ZZ33print_passage_counts_by_vendor_idiEN3$_0C1EOS_(%8, %6) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> ()
    %16 = llvm.load %8 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    llvm.store %16, %5 : !llvm.ptr<struct<"class.anon", (ptr<i32>)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%4) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z14get_psg_by_vidIZ33print_passage_counts_by_vendor_idiE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%5, %4) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %17 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%4) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %18 = llvm.load %9 : !llvm.ptr<i32>
    %19 = llvm.icmp "eq" %18, %2 : i32
    llvm.cond_br %19, ^bb1, ^bb5
  ^bb1:  // pred: ^bb0
    llvm.br ^bb2(%0 : i64)
  ^bb2(%20: i64):  // 2 preds: ^bb1, ^bb3
    %21 = llvm.icmp "slt" %20, %17 : i64
    llvm.cond_br %21, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %22 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%4, %20) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %23 = llvm.load %22 : !llvm.ptr<i32>
    llvm.call @_Z20step21_passage_counti(%23) : (i32) -> ()
    %24 = llvm.add %20, %1  : i64
    llvm.br ^bb2(%24 : i64)
  ^bb4:  // pred: ^bb2
    llvm.call @_Z19step21_count_resultv() : () -> ()
    llvm.br ^bb9
  ^bb5:  // pred: ^bb0
    llvm.br ^bb6(%0 : i64)
  ^bb6(%25: i64):  // 2 preds: ^bb5, ^bb7
    %26 = llvm.icmp "slt" %25, %17 : i64
    llvm.cond_br %26, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %27 = llvm.call @_ZNSt6vectorIiSaIiEEixEm(%4, %25) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %28 = llvm.load %27 : !llvm.ptr<i32>
    llvm.call @_Z20step22_passage_counti(%28) : (i32) -> ()
    %29 = llvm.add %25, %1  : i64
    llvm.br ^bb6(%29 : i64)
  ^bb8:  // pred: ^bb6
    llvm.call @_Z19step22_count_resultv() : () -> ()
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb4, ^bb8
    %30 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %32 = llvm.call @printf(%31) : (!llvm.ptr<i8>) -> i32
    llvm.return
  }
  llvm.func @_Z23calculate_trip_durationv() {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.MeanVisitor", (i64, i64)> : (i64) -> !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %4 = llvm.mlir.addressof @str16 : !llvm.ptr<array<27 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %6 = llvm.call @printf(%5) : (!llvm.ptr<i8>) -> i32
    llvm.call @_Z16prepare_durationv() : () -> ()
    llvm.call @_ZN10MaxVisitorImmEC1Ev(%3) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    llvm.call @_ZN10MinVisitorImmEC1Ev(%2) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    llvm.call @_ZN11MeanVisitorImmEC1Ev(%1) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    llvm.call @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(%3, %2, %1) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %7 = llvm.mlir.addressof @str17 : !llvm.ptr<array<27 x i8>>
    %8 = llvm.getelementptr %7[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %9 = llvm.call @_ZNK11MeanVisitorImmE10get_resultEv(%1) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> i64
    %10 = llvm.call @printf(%8, %9) : (!llvm.ptr<i8>, i64) -> i32
    %11 = llvm.mlir.addressof @str18 : !llvm.ptr<array<26 x i8>>
    %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %13 = llvm.call @_ZNK10MinVisitorImmE10get_resultEv(%2) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %14 = llvm.call @printf(%12, %13) : (!llvm.ptr<i8>, i64) -> i32
    %15 = llvm.mlir.addressof @str19 : !llvm.ptr<array<26 x i8>>
    %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %17 = llvm.call @_ZNK10MaxVisitorImmE10get_resultEv(%3) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %18 = llvm.call @printf(%16, %17) : (!llvm.ptr<i8>, i64) -> i32
    %19 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %21 = llvm.call @printf(%20) : (!llvm.ptr<i8>) -> i32
    llvm.return
  }
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
    %14 = llvm.alloca %3 x !llvm.struct<"class.anon.7", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.7", (i8)>>
    %15 = llvm.alloca %3 x !llvm.struct<"class.anon.7", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.7", (i8)>>
    %16 = llvm.alloca %3 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %17 = llvm.alloca %3 x !llvm.struct<"class.anon.6", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.6", (i8)>>
    %18 = llvm.alloca %3 x !llvm.struct<"class.anon.6", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.6", (i8)>>
    %19 = llvm.mlir.addressof @str20 : !llvm.ptr<array<45 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<45 x i8>>) -> !llvm.ptr<i8>
    %21 = llvm.call @printf(%20) : (!llvm.ptr<i8>) -> i32
    %22 = llvm.load %18 : !llvm.ptr<struct<"class.anon.6", (i8)>>
    llvm.store %22, %17 : !llvm.ptr<struct<"class.anon.6", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%16) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%17, %16) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %23 = llvm.mlir.addressof @str21 : !llvm.ptr<array<4 x i8>>
    %24 = llvm.getelementptr %23[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %25 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%16) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %26 = llvm.sitofp %25 : i64 to f64
    %27 = llvm.call @_Z9get_indexv() : () -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %28 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%27) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %29 = llvm.sitofp %28 : i64 to f64
    %30 = llvm.fdiv %26, %29  : f64
    %31 = llvm.call @printf(%24, %30) : (!llvm.ptr<i8>, f64) -> i32
    %32 = llvm.load %15 : !llvm.ptr<struct<"class.anon.7", (i8)>>
    llvm.store %32, %14 : !llvm.ptr<struct<"class.anon.7", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%13) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_1iEvRT_RSt6vectorIT0_SaIS4_EE(%14, %13) : (!llvm.ptr<struct<"class.anon.7", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
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
    %41 = llvm.mlir.addressof @str22 : !llvm.ptr<array<2 x i8>>
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
    %48 = llvm.mlir.addressof @str23 : !llvm.ptr<array<5 x i8>>
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
    %56 = llvm.mlir.addressof @str24 : !llvm.ptr<array<4 x i8>>
    %57 = llvm.getelementptr %56[0, 0] : (!llvm.ptr<array<4 x i8>>) -> !llvm.ptr<i8>
    %58 = llvm.call @printf(%57) : (!llvm.ptr<i8>) -> i32
    llvm.return
  }
  llvm.func @_Z35calculate_haversine_distance_columnv() {
    %0 = llvm.mlir.constant(7 : i32) : i32
    %1 = llvm.mlir.constant(258048 : i32) : i32
    %2 = llvm.mlir.constant(7516192768 : i64) : i64
    %3 = llvm.mlir.constant(4294967296 : i64) : i64
    %4 = llvm.mlir.constant(11811160064 : i64) : i64
    %5 = llvm.mlir.constant(8589934592 : i64) : i64
    %6 = llvm.mlir.constant(5368709120 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(8192 : i64) : i64
    %11 = llvm.mlir.constant(-8192 : i64) : i64
    %12 = llvm.mlir.constant(2 : i8) : i8
    %13 = llvm.mlir.constant(405504 : i32) : i32
    %14 = llvm.mlir.constant(3 : i64) : i64
    %15 = llvm.mlir.constant(2 : i64) : i64
    %16 = llvm.mlir.constant(1024 : index) : i64
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(2 : index) : i64
    %19 = llvm.mlir.constant(3 : i32) : i32
    %20 = llvm.mlir.constant(1024 : i64) : i64
    %21 = llvm.mlir.constant(1023 : i64) : i64
    %22 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %23 = llvm.mlir.constant(1.800000e+02 : f64) : f64
    %24 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %25 = llvm.mlir.constant(6.371000e+03 : f64) : f64
    %26 = llvm.mlir.constant(0 : index) : i64
    %27 = llvm.mlir.constant(310 : i32) : i32
    %28 = llvm.mlir.constant(309 : i32) : i32
    %29 = llvm.mlir.constant(308 : i32) : i32
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.alloca %30 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %32 = llvm.alloca %30 x !llvm.struct<"class.anon.14", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.14", (i8)>>
    %33 = llvm.alloca %30 x !llvm.struct<"class.anon.14", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.14", (i8)>>
    %34 = llvm.mlir.addressof @str25 : !llvm.ptr<array<39 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<39 x i8>>) -> !llvm.ptr<i8>
    %36 = llvm.call @printf(%35) : (!llvm.ptr<i8>) -> i32
    %37 = llvm.mlir.addressof @pick_long_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %39 = llvm.mlir.addressof @pick_lat_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %41 = llvm.mlir.addressof @drop_long_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %42 = llvm.load %41 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %43 = llvm.mlir.addressof @drop_lat_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %45 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%38) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %46 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__3(%40) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %47 = llvm.icmp "eq" %45, %46 : i64
    llvm.cond_br %47, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %48 = llvm.mlir.addressof @str26 : !llvm.ptr<array<58 x i8>>
    %49 = llvm.getelementptr %48[0, 0] : (!llvm.ptr<array<58 x i8>>) -> !llvm.ptr<i8>
    %50 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %52 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
    %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%49, %51, %29, %53) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    %54 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%38) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %55 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__2(%42) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %56 = llvm.icmp "eq" %54, %55 : i64
    llvm.cond_br %56, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.br ^bb6
  ^bb5:  // pred: ^bb3
    %57 = llvm.mlir.addressof @str29 : !llvm.ptr<array<60 x i8>>
    %58 = llvm.getelementptr %57[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %59 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
    %60 = llvm.getelementptr %59[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %61 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
    %62 = llvm.getelementptr %61[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%58, %60, %28, %62) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %63 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%38) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %64 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__1(%44) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %65 = llvm.icmp "eq" %63, %64 : i64
    llvm.cond_br %65, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.br ^bb9
  ^bb8:  // pred: ^bb6
    %66 = llvm.mlir.addressof @str30 : !llvm.ptr<array<59 x i8>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<59 x i8>>) -> !llvm.ptr<i8>
    %68 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
    %69 = llvm.getelementptr %68[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %70 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
    %71 = llvm.getelementptr %70[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%67, %69, %27, %71) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb7, ^bb8
    %72 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__3(%40) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %73 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %74 = llvm.load %73 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
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
    %82 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%40, %80) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<f64> to i64
    %84 = llvm.and %83, %11  : i64
    %85 = llvm.udiv %84, %10  : i64
    %86 = llvm.srem %85, %9  : i64
    %87 = llvm.trunc %86 : i64 to i32
    %88 = llvm.call @cache_request_impl_9(%8, %84, %87, %7) : (i32, i64, i32, i8) -> i32
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
    %97 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%44, %95) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<f64> to i64
    %99 = llvm.and %98, %11  : i64
    %100 = llvm.udiv %99, %10  : i64
    %101 = llvm.srem %100, %9  : i64
    %102 = llvm.trunc %101 : i64 to i32
    %103 = llvm.call @cache_request_impl_7(%8, %99, %102, %7) : (i32, i64, i32, i8) -> i32
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
    %112 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%74, %110) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %113 = llvm.ptrtoint %112 : !llvm.ptr<f64> to i64
    %114 = llvm.and %113, %11  : i64
    %115 = llvm.udiv %114, %10  : i64
    %116 = llvm.srem %115, %9  : i64
    %117 = llvm.trunc %116 : i64 to i32
    %118 = llvm.call @cache_request_impl_6(%8, %114, %117, %7) : (i32, i64, i32, i8) -> i32
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
    %127 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%38, %125) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %128 = llvm.ptrtoint %127 : !llvm.ptr<f64> to i64
    %129 = llvm.and %128, %11  : i64
    %130 = llvm.udiv %129, %10  : i64
    %131 = llvm.srem %130, %9  : i64
    %132 = llvm.trunc %131 : i64 to i32
    %133 = llvm.call @cache_request_impl_10(%8, %129, %132, %7) : (i32, i64, i32, i8) -> i32
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
    %142 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%42, %140) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    %159 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%40, %158) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %160 = llvm.ptrtoint %159 : !llvm.ptr<f64> to i64
    %161 = llvm.and %160, %11  : i64
    %162 = llvm.udiv %161, %10  : i64
    %163 = llvm.srem %162, %9  : i64
    %164 = llvm.trunc %163 : i64 to i32
    %165 = llvm.call @cache_request_impl_9(%8, %161, %164, %7) : (i32, i64, i32, i8) -> i32
    %166 = llvm.sext %157 : i32 to i64
    %167 = llvm.getelementptr %77[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %164, %167 : !llvm.ptr<i32>
    %168 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%44, %158) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %169 = llvm.ptrtoint %168 : !llvm.ptr<f64> to i64
    %170 = llvm.and %169, %11  : i64
    %171 = llvm.udiv %170, %10  : i64
    %172 = llvm.srem %171, %9  : i64
    %173 = llvm.trunc %172 : i64 to i32
    %174 = llvm.call @cache_request_impl_7(%8, %170, %173, %7) : (i32, i64, i32, i8) -> i32
    %175 = llvm.getelementptr %92[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %173, %175 : !llvm.ptr<i32>
    %176 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%74, %158) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %177 = llvm.ptrtoint %176 : !llvm.ptr<f64> to i64
    %178 = llvm.and %177, %11  : i64
    %179 = llvm.udiv %178, %10  : i64
    %180 = llvm.srem %179, %9  : i64
    %181 = llvm.trunc %180 : i64 to i32
    %182 = llvm.call @cache_request_impl_6(%8, %178, %181, %7) : (i32, i64, i32, i8) -> i32
    %183 = llvm.getelementptr %107[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %181, %183 : !llvm.ptr<i32>
    %184 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%38, %158) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %185 = llvm.ptrtoint %184 : !llvm.ptr<f64> to i64
    %186 = llvm.and %185, %11  : i64
    %187 = llvm.udiv %186, %10  : i64
    %188 = llvm.srem %187, %9  : i64
    %189 = llvm.trunc %188 : i64 to i32
    %190 = llvm.call @cache_request_impl_10(%8, %186, %189, %7) : (i32, i64, i32, i8) -> i32
    %191 = llvm.getelementptr %122[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %189, %191 : !llvm.ptr<i32>
    %192 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%42, %158) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    %201 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%40, %200) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    %215 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%44, %200) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    %227 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%74, %200) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %228 = llvm.getelementptr %107[%202] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %229 = llvm.load %228 : !llvm.ptr<i32>
    %230 = llvm.ptrtoint %227 : !llvm.ptr<f64> to i64
    %231 = llvm.sext %229 : i32 to i64
    %232 = llvm.mul %231, %10  : i64
    %233 = llvm.srem %230, %10  : i64
    %234 = llvm.add %232, %233  : i64
    %235 = llvm.add %234, %4  : i64
    %236 = llvm.load %211 : !llvm.ptr<ptr<i8>>
    %237 = llvm.getelementptr %236[%235] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %238 = llvm.bitcast %237 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %239 = llvm.add %229, %13  : i32
    %240 = llvm.sext %239 : i32 to i64
    %241 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %242 = llvm.getelementptr %241[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %243 = llvm.getelementptr %242[%240] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %244 = llvm.getelementptr %243[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %245 = llvm.load %244 : !llvm.ptr<i8>
    %246 = llvm.or %245, %12  : i8
    llvm.store %246, %244 : !llvm.ptr<i8>
    %247 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%38, %200) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    %259 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%42, %200) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    %273 = llvm.getelementptr %242[%272] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
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
    %288 = llvm.getelementptr %238[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %289 = llvm.getelementptr %258[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %290 = llvm.getelementptr %270[%283] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %291 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%74, %285) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %292 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%40, %285) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %293 = llvm.load %286 : !llvm.ptr<f64>
    %294 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%38, %285) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %295 = llvm.load %289 : !llvm.ptr<f64>
    %296 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%44, %285) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %297 = llvm.load %287 : !llvm.ptr<f64>
    %298 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%42, %285) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
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
    llvm.store %324, %288 : !llvm.ptr<f64>
    %325 = llvm.add %283, %17  : i64
    llvm.br ^bb33(%325 : i64)
  ^bb35:  // pred: ^bb33
    %326 = llvm.add %152, %17  : i64
    llvm.br ^bb25(%326 : i64)
  ^bb36:  // pred: ^bb25
    llvm.call @_Z12hvs_set_sizem(%72) : (i64) -> ()
    %327 = llvm.load %33 : !llvm.ptr<struct<"class.anon.14", (i8)>>
    llvm.store %327, %32 : !llvm.ptr<struct<"class.anon.14", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%31) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%32, %31) : (!llvm.ptr<struct<"class.anon.14", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %328 = llvm.mlir.addressof @str31 : !llvm.ptr<array<60 x i8>>
    %329 = llvm.getelementptr %328[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %330 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%31) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %331 = llvm.call @printf(%329, %330) : (!llvm.ptr<i8>, i64) -> i32
    %332 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %333 = llvm.getelementptr %332[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %334 = llvm.call @printf(%333) : (!llvm.ptr<i8>) -> i32
    llvm.return
  }
  llvm.func linkonce_odr @_Z29analyze_trip_durations_of_dayIsEvPKc(%arg0: !llvm.ptr<i8>) {
    %0 = llvm.mlir.constant(10 : i32) : i32
    %1 = llvm.mlir.constant(368640 : i32) : i32
    %2 = llvm.mlir.constant(10737418240 : i64) : i64
    %3 = llvm.mlir.constant(9663676416 : i64) : i64
    %4 = llvm.mlir.constant(12884901888 : i64) : i64
    %5 = llvm.mlir.constant(8192 : i64) : i64
    %6 = llvm.mlir.constant(-8192 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(2048 : i64) : i64
    %11 = llvm.mlir.constant(-2048 : i64) : i64
    %12 = llvm.mlir.constant(3 : i64) : i64
    %13 = llvm.mlir.constant(2 : i64) : i64
    %14 = llvm.mlir.constant(1024 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(3 : i32) : i32
    %18 = llvm.mlir.constant(1024 : i64) : i64
    %19 = llvm.mlir.constant(1023 : i64) : i64
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
    %27 = llvm.alloca %21 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %28 = llvm.alloca %21 x !llvm.struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %29 = llvm.alloca %21 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %30 = llvm.mlir.addressof @str32 : !llvm.ptr<array<52 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %32 = llvm.call @printf(%31, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %33 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %34 = llvm.load %33 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %35 = llvm.mlir.addressof @pick_day_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %37 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %39 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__0(%34) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%29) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%29, %39) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEEC1Ev(%28) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE7reserveEm(%28, %39) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%27) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%27, %39) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
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
    %47 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%36, %45) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i16> to i64
    %49 = llvm.and %48, %11  : i64
    %50 = llvm.udiv %49, %10  : i64
    %51 = llvm.srem %50, %9  : i64
    %52 = llvm.trunc %51 : i64 to i32
    %53 = llvm.call @cache_request_impl_4(%8, %49, %52, %7) : (i32, i64, i32, i8) -> i32
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
    %62 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %60) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i64> to i64
    %64 = llvm.and %63, %6  : i64
    %65 = llvm.udiv %64, %5  : i64
    %66 = llvm.srem %65, %9  : i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.call @cache_request_impl_5(%8, %64, %67, %7) : (i32, i64, i32, i8) -> i32
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
    %77 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %75) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i64> to i64
    %79 = llvm.and %78, %6  : i64
    %80 = llvm.udiv %79, %5  : i64
    %81 = llvm.srem %80, %9  : i64
    %82 = llvm.trunc %81 : i64 to i32
    %83 = llvm.call @cache_request_impl_11(%8, %79, %82, %7) : (i32, i64, i32, i8) -> i32
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
    %94 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%36, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i16> to i64
    %96 = llvm.and %95, %11  : i64
    %97 = llvm.udiv %96, %10  : i64
    %98 = llvm.srem %97, %9  : i64
    %99 = llvm.trunc %98 : i64 to i32
    %100 = llvm.call @cache_request_impl_4(%8, %96, %99, %7) : (i32, i64, i32, i8) -> i32
    %101 = llvm.sext %92 : i32 to i64
    %102 = llvm.getelementptr %42[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %99, %102 : !llvm.ptr<i32>
    %103 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i64> to i64
    %105 = llvm.and %104, %6  : i64
    %106 = llvm.udiv %105, %5  : i64
    %107 = llvm.srem %106, %9  : i64
    %108 = llvm.trunc %107 : i64 to i32
    %109 = llvm.call @cache_request_impl_5(%8, %105, %108, %7) : (i32, i64, i32, i8) -> i32
    %110 = llvm.getelementptr %57[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %110 : !llvm.ptr<i32>
    %111 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i64> to i64
    %113 = llvm.and %112, %6  : i64
    %114 = llvm.udiv %113, %5  : i64
    %115 = llvm.srem %114, %9  : i64
    %116 = llvm.trunc %115 : i64 to i32
    %117 = llvm.call @cache_request_impl_11(%8, %113, %116, %7) : (i32, i64, i32, i8) -> i32
    %118 = llvm.getelementptr %72[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %116, %118 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %119 = llvm.mul %87, %14  : i64
    %120 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%36, %119) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %121 = llvm.srem %87, %12  : i64
    %122 = llvm.getelementptr %42[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %123 = llvm.load %122 : !llvm.ptr<i32>
    %124 = llvm.ptrtoint %120 : !llvm.ptr<i16> to i64
    %125 = llvm.sext %123 : i32 to i64
    %126 = llvm.mul %125, %10  : i64
    %127 = llvm.srem %124, %10  : i64
    %128 = llvm.add %126, %127  : i64
    %129 = llvm.add %128, %4  : i64
    %130 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %131 = llvm.load %130 : !llvm.ptr<ptr<i8>>
    %132 = llvm.getelementptr %131[%129] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %133 = llvm.bitcast %132 : !llvm.ptr<i8> to !llvm.ptr<i16>
    %134 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %119) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %135 = llvm.getelementptr %57[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %136 = llvm.load %135 : !llvm.ptr<i32>
    %137 = llvm.ptrtoint %134 : !llvm.ptr<i64> to i64
    %138 = llvm.sext %136 : i32 to i64
    %139 = llvm.mul %138, %5  : i64
    %140 = llvm.srem %137, %5  : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.add %141, %3  : i64
    %143 = llvm.load %130 : !llvm.ptr<ptr<i8>>
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %146 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %119) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %147 = llvm.getelementptr %72[%121] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %147 : !llvm.ptr<i32>
    %149 = llvm.ptrtoint %146 : !llvm.ptr<i64> to i64
    %150 = llvm.sext %148 : i32 to i64
    %151 = llvm.mul %150, %5  : i64
    %152 = llvm.srem %149, %5  : i64
    %153 = llvm.add %151, %152  : i64
    %154 = llvm.add %153, %2  : i64
    %155 = llvm.load %130 : !llvm.ptr<ptr<i8>>
    %156 = llvm.getelementptr %155[%154] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %158 = llvm.add %148, %1  : i32
    %159 = llvm.sext %158 : i32 to i64
    %160 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %161 = llvm.getelementptr %160[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %163 = llvm.getelementptr %162[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %164 = llvm.load %163 : !llvm.ptr<i16>
    llvm.call @poll_qid11(%0, %164) : (i32, i16) -> ()
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
    %175 = llvm.getelementptr %133[%172] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %176 = llvm.getelementptr %145[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %177 = llvm.getelementptr %157[%172] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %178 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %174) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %179 = llvm.load %176 : !llvm.ptr<i64>
    llvm.store %179, %26 : !llvm.ptr<i64>
    %180 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%36, %174) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %181 = llvm.load %175 : !llvm.ptr<i16>
    llvm.store %181, %24 : !llvm.ptr<i16>
    %182 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %174) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %183 = llvm.load %177 : !llvm.ptr<i64>
    llvm.store %183, %22 : !llvm.ptr<i64>
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%29, %26) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%28, %24) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%27, %22) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    %184 = llvm.add %172, %15  : i64
    llvm.br ^bb18(%184 : i64)
  ^bb20:  // pred: ^bb18
    %185 = llvm.add %87, %15  : i64
    llvm.br ^bb10(%185 : i64)
  ^bb21:  // pred: ^bb10
    llvm.call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %29, %28, %27) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_Z31analyze_trip_durations_of_monthIsEvPKc(%arg0: !llvm.ptr<i8>) {
    %0 = llvm.mlir.constant(13 : i32) : i32
    %1 = llvm.mlir.constant(479232 : i32) : i32
    %2 = llvm.mlir.constant(13958643712 : i64) : i64
    %3 = llvm.mlir.constant(10737418240 : i64) : i64
    %4 = llvm.mlir.constant(9663676416 : i64) : i64
    %5 = llvm.mlir.constant(2048 : i64) : i64
    %6 = llvm.mlir.constant(-2048 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(8192 : i64) : i64
    %11 = llvm.mlir.constant(-8192 : i64) : i64
    %12 = llvm.mlir.constant(3 : i64) : i64
    %13 = llvm.mlir.constant(2 : i64) : i64
    %14 = llvm.mlir.constant(1024 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(3 : i32) : i32
    %18 = llvm.mlir.constant(1024 : i64) : i64
    %19 = llvm.mlir.constant(1023 : i64) : i64
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
    %27 = llvm.alloca %21 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %28 = llvm.alloca %21 x !llvm.struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %29 = llvm.alloca %21 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %30 = llvm.mlir.addressof @str32 : !llvm.ptr<array<52 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %32 = llvm.call @printf(%31, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %33 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %34 = llvm.load %33 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %35 = llvm.mlir.addressof @pick_month_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %36 = llvm.load %35 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %37 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %38 = llvm.load %37 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %39 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__0(%34) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%29) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%29, %39) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEEC1Ev(%28) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE7reserveEm(%28, %39) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%27) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%27, %39) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
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
    %47 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %45) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i64> to i64
    %49 = llvm.and %48, %11  : i64
    %50 = llvm.udiv %49, %10  : i64
    %51 = llvm.srem %50, %9  : i64
    %52 = llvm.trunc %51 : i64 to i32
    %53 = llvm.call @cache_request_impl_5(%8, %49, %52, %7) : (i32, i64, i32, i8) -> i32
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
    %62 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %60) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<i64> to i64
    %64 = llvm.and %63, %11  : i64
    %65 = llvm.udiv %64, %10  : i64
    %66 = llvm.srem %65, %9  : i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.call @cache_request_impl_11(%8, %64, %67, %7) : (i32, i64, i32, i8) -> i32
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
    %77 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%36, %75) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i16> to i64
    %79 = llvm.and %78, %6  : i64
    %80 = llvm.udiv %79, %5  : i64
    %81 = llvm.srem %80, %9  : i64
    %82 = llvm.trunc %81 : i64 to i32
    %83 = llvm.call @cache_request_impl_3(%8, %79, %82, %7) : (i32, i64, i32, i8) -> i32
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
    %94 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<i64> to i64
    %96 = llvm.and %95, %11  : i64
    %97 = llvm.udiv %96, %10  : i64
    %98 = llvm.srem %97, %9  : i64
    %99 = llvm.trunc %98 : i64 to i32
    %100 = llvm.call @cache_request_impl_5(%8, %96, %99, %7) : (i32, i64, i32, i8) -> i32
    %101 = llvm.sext %92 : i32 to i64
    %102 = llvm.getelementptr %42[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %99, %102 : !llvm.ptr<i32>
    %103 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<i64> to i64
    %105 = llvm.and %104, %11  : i64
    %106 = llvm.udiv %105, %10  : i64
    %107 = llvm.srem %106, %9  : i64
    %108 = llvm.trunc %107 : i64 to i32
    %109 = llvm.call @cache_request_impl_11(%8, %105, %108, %7) : (i32, i64, i32, i8) -> i32
    %110 = llvm.getelementptr %57[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %108, %110 : !llvm.ptr<i32>
    %111 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%36, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %112 = llvm.ptrtoint %111 : !llvm.ptr<i16> to i64
    %113 = llvm.and %112, %6  : i64
    %114 = llvm.udiv %113, %5  : i64
    %115 = llvm.srem %114, %9  : i64
    %116 = llvm.trunc %115 : i64 to i32
    %117 = llvm.call @cache_request_impl_3(%8, %113, %116, %7) : (i32, i64, i32, i8) -> i32
    %118 = llvm.getelementptr %72[%101] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %116, %118 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %119 = llvm.mul %87, %14  : i64
    %120 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %119) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
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
    %134 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %119) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
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
    %146 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%36, %119) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
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
    llvm.call @poll_qid3(%0, %164) : (i32, i16) -> ()
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
    %178 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%34, %174) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %179 = llvm.load %175 : !llvm.ptr<i64>
    llvm.store %179, %26 : !llvm.ptr<i64>
    %180 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%36, %174) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %181 = llvm.load %177 : !llvm.ptr<i16>
    llvm.store %181, %24 : !llvm.ptr<i16>
    %182 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%38, %174) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %183 = llvm.load %176 : !llvm.ptr<i64>
    llvm.store %183, %22 : !llvm.ptr<i64>
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%29, %26) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%28, %24) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%27, %22) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    %184 = llvm.add %172, %15  : i64
    llvm.br ^bb18(%184 : i64)
  ^bb20:  // pred: ^bb18
    %185 = llvm.add %87, %15  : i64
    llvm.br ^bb10(%185 : i64)
  ^bb21:  // pred: ^bb10
    llvm.call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %29, %28, %27) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
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
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE4sizeEv__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i32>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i32> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i32> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func @_Z21get_vid_unique_valuesv() -> i64 {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(1 : i8) : i8
    %2 = llvm.mlir.constant(0 : i32) : i32
    %3 = llvm.mlir.constant(36864 : i64) : i64
    %4 = llvm.mlir.constant(4096 : i64) : i64
    %5 = llvm.mlir.constant(-4096 : i64) : i64
    %6 = llvm.mlir.constant(3 : i64) : i64
    %7 = llvm.mlir.constant(2 : i64) : i64
    %8 = llvm.mlir.constant(1024 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(3 : i32) : i32
    %12 = llvm.mlir.constant(1024 : i64) : i64
    %13 = llvm.mlir.constant(1023 : i64) : i64
    %14 = llvm.mlir.constant(0 : index) : i64
    %15 = llvm.mlir.constant(0 : i8) : i8
    %16 = llvm.mlir.constant(1 : i64) : i64
    %17 = llvm.alloca %16 x i32 : (i64) -> !llvm.ptr<i32>
    %18 = llvm.mlir.undef : i32
    llvm.store %18, %17 : !llvm.ptr<i32>
    %19 = llvm.alloca %16 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %20 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %22 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv__0(%21) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%19, %22) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %23 = llvm.add %22, %13  : i64
    %24 = llvm.sdiv %23, %12  : i64
    %25 = llvm.alloca %11 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%14 : i64)
  ^bb1(%26: i64):  // 2 preds: ^bb0, ^bb2
    %27 = llvm.icmp "slt" %26, %10 : i64
    llvm.cond_br %27, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %28 = llvm.mul %26, %8  : i64
    %29 = llvm.trunc %26 : i64 to i32
    %30 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%21, %28) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %31 = llvm.ptrtoint %30 : !llvm.ptr<i32> to i64
    %32 = llvm.and %31, %5  : i64
    %33 = llvm.udiv %32, %4  : i64
    %34 = llvm.srem %33, %3  : i64
    %35 = llvm.trunc %34 : i64 to i32
    %36 = llvm.call @cache_request_impl_12(%2, %32, %35, %1) : (i32, i64, i32, i8) -> i32
    %37 = llvm.sext %29 : i32 to i64
    %38 = llvm.getelementptr %25[%37] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %35, %38 : !llvm.ptr<i32>
    %39 = llvm.add %26, %9  : i64
    llvm.br ^bb1(%39 : i64)
  ^bb3:  // pred: ^bb1
    llvm.br ^bb4(%14 : i64)
  ^bb4(%40: i64):  // 2 preds: ^bb3, ^bb16
    %41 = llvm.icmp "slt" %40, %24 : i64
    llvm.cond_br %41, ^bb5, ^bb17
  ^bb5:  // pred: ^bb4
    %42 = llvm.add %40, %7  : i64
    %43 = llvm.icmp "slt" %42, %24 : i64
    llvm.cond_br %43, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %44 = llvm.srem %42, %6  : i64
    %45 = llvm.trunc %44 : i64 to i32
    %46 = llvm.mul %42, %8  : i64
    %47 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%21, %46) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %48 = llvm.ptrtoint %47 : !llvm.ptr<i32> to i64
    %49 = llvm.and %48, %5  : i64
    %50 = llvm.udiv %49, %4  : i64
    %51 = llvm.srem %50, %3  : i64
    %52 = llvm.trunc %51 : i64 to i32
    %53 = llvm.call @cache_request_impl_12(%2, %49, %52, %1) : (i32, i64, i32, i8) -> i32
    %54 = llvm.sext %45 : i32 to i64
    %55 = llvm.getelementptr %25[%54] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %52, %55 : !llvm.ptr<i32>
    llvm.br ^bb7
  ^bb7:  // 2 preds: ^bb5, ^bb6
    %56 = llvm.mul %40, %8  : i64
    %57 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%21, %56) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %58 = llvm.srem %40, %6  : i64
    %59 = llvm.getelementptr %25[%58] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %60 = llvm.load %59 : !llvm.ptr<i32>
    %61 = llvm.ptrtoint %57 : !llvm.ptr<i32> to i64
    %62 = llvm.sext %60 : i32 to i64
    %63 = llvm.mul %62, %4  : i64
    %64 = llvm.srem %61, %4  : i64
    %65 = llvm.add %63, %64  : i64
    %66 = llvm.add %65, %0  : i64
    %67 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %68 = llvm.load %67 : !llvm.ptr<ptr<i8>>
    %69 = llvm.getelementptr %68[%66] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %70 = llvm.bitcast %69 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %71 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %72 = llvm.getelementptr %71[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %73 = llvm.getelementptr %72[%62] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %74 = llvm.getelementptr %73[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %75 = llvm.load %74 : !llvm.ptr<i16>
    llvm.call @poll_qid12(%2, %75) : (i32, i16) -> ()
    %76 = llvm.add %40, %16  : i64
    %77 = llvm.mul %76, %12  : i64
    %78 = llvm.icmp "sgt" %22, %77 : i64
    llvm.cond_br %78, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    llvm.br ^bb10(%12 : i64)
  ^bb9:  // pred: ^bb7
    %79 = llvm.mul %40, %12  : i64
    %80 = llvm.sub %22, %79  : i64
    llvm.br ^bb10(%80 : i64)
  ^bb10(%81: i64):  // 2 preds: ^bb8, ^bb9
    llvm.br ^bb11
  ^bb11:  // pred: ^bb10
    %82 = llvm.mul %40, %12  : i64
    llvm.br ^bb12(%14 : i64)
  ^bb12(%83: i64):  // 2 preds: ^bb11, ^bb15
    %84 = llvm.icmp "slt" %83, %81 : i64
    llvm.cond_br %84, ^bb13, ^bb16
  ^bb13:  // pred: ^bb12
    %85 = llvm.add %83, %82  : i64
    %86 = llvm.getelementptr %70[%83] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %87 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%21, %85) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %88 = llvm.load %86 : !llvm.ptr<i32>
    llvm.store %88, %17 : !llvm.ptr<i32>
    %89 = llvm.call @_Z15step1_firstTimei(%88) : (i32) -> i8
    %90 = llvm.icmp "ne" %89, %15 : i8
    llvm.cond_br %90, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%19, %17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb15
  ^bb15:  // 2 preds: ^bb13, ^bb14
    %91 = llvm.add %83, %9  : i64
    llvm.br ^bb12(%91 : i64)
  ^bb16:  // pred: ^bb12
    %92 = llvm.add %40, %9  : i64
    llvm.br ^bb4(%92 : i64)
  ^bb17:  // pred: ^bb4
    %93 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.return %93 : i64
  }
  llvm.func internal @_ZZ33print_passage_counts_by_vendor_idiEN3$_0C1EOS_(%arg0: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func internal @_Z14get_psg_by_vidIZ33print_passage_counts_by_vendor_idiE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(9 : i32) : i32
    %1 = llvm.mlir.constant(331776 : i32) : i32
    %2 = llvm.mlir.constant(9663676416 : i64) : i64
    %3 = llvm.mlir.constant(3221225472 : i64) : i64
    %4 = llvm.mlir.constant(0 : i64) : i64
    %5 = llvm.mlir.constant(8192 : i64) : i64
    %6 = llvm.mlir.constant(-8192 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(4096 : i64) : i64
    %11 = llvm.mlir.constant(-4096 : i64) : i64
    %12 = llvm.mlir.constant(3 : i64) : i64
    %13 = llvm.mlir.constant(2 : i64) : i64
    %14 = llvm.mlir.constant(1024 : index) : i64
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(2 : index) : i64
    %17 = llvm.mlir.constant(3 : i32) : i32
    %18 = llvm.mlir.constant(1024 : i64) : i64
    %19 = llvm.mlir.constant(1023 : i64) : i64
    %20 = llvm.mlir.constant(0 : index) : i64
    %21 = llvm.mlir.constant(0 : i8) : i8
    %22 = llvm.mlir.constant(1 : i64) : i64
    %23 = llvm.alloca %22 x i32 : (i64) -> !llvm.ptr<i32>
    %24 = llvm.mlir.undef : i32
    llvm.store %24, %23 : !llvm.ptr<i32>
    %25 = llvm.alloca %22 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %24, %25 : !llvm.ptr<i32>
    %26 = llvm.alloca %22 x i64 : (i64) -> !llvm.ptr<i64>
    %27 = llvm.mlir.undef : i64
    llvm.store %27, %26 : !llvm.ptr<i64>
    %28 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %29 = llvm.load %28 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %30 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %32 = llvm.mlir.addressof @psg_cnt_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %34 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv__0(%31) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %34) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %35 = llvm.add %34, %19  : i64
    %36 = llvm.sdiv %35, %18  : i64
    %37 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%20 : i64)
  ^bb1(%38: i64):  // 2 preds: ^bb0, ^bb2
    %39 = llvm.icmp "slt" %38, %16 : i64
    llvm.cond_br %39, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %40 = llvm.mul %38, %14  : i64
    %41 = llvm.trunc %38 : i64 to i32
    %42 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %40) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.and %43, %11  : i64
    %45 = llvm.udiv %44, %10  : i64
    %46 = llvm.srem %45, %9  : i64
    %47 = llvm.trunc %46 : i64 to i32
    %48 = llvm.call @cache_request_impl_12(%8, %44, %47, %7) : (i32, i64, i32, i8) -> i32
    %49 = llvm.sext %41 : i32 to i64
    %50 = llvm.getelementptr %37[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %47, %50 : !llvm.ptr<i32>
    %51 = llvm.add %38, %15  : i64
    llvm.br ^bb1(%51 : i64)
  ^bb3:  // pred: ^bb1
    %52 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%20 : i64)
  ^bb4(%53: i64):  // 2 preds: ^bb3, ^bb5
    %54 = llvm.icmp "slt" %53, %16 : i64
    llvm.cond_br %54, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %55 = llvm.mul %53, %14  : i64
    %56 = llvm.trunc %53 : i64 to i32
    %57 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%33, %55) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %58 = llvm.ptrtoint %57 : !llvm.ptr<i32> to i64
    %59 = llvm.and %58, %11  : i64
    %60 = llvm.udiv %59, %10  : i64
    %61 = llvm.srem %60, %9  : i64
    %62 = llvm.trunc %61 : i64 to i32
    %63 = llvm.call @cache_request_impl_2(%8, %59, %62, %7) : (i32, i64, i32, i8) -> i32
    %64 = llvm.sext %56 : i32 to i64
    %65 = llvm.getelementptr %52[%64] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %62, %65 : !llvm.ptr<i32>
    %66 = llvm.add %53, %15  : i64
    llvm.br ^bb4(%66 : i64)
  ^bb6:  // pred: ^bb4
    %67 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb7(%20 : i64)
  ^bb7(%68: i64):  // 2 preds: ^bb6, ^bb8
    %69 = llvm.icmp "slt" %68, %16 : i64
    llvm.cond_br %69, ^bb8, ^bb9
  ^bb8:  // pred: ^bb7
    %70 = llvm.mul %68, %14  : i64
    %71 = llvm.trunc %68 : i64 to i32
    %72 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %70) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i64> to i64
    %74 = llvm.and %73, %6  : i64
    %75 = llvm.udiv %74, %5  : i64
    %76 = llvm.srem %75, %9  : i64
    %77 = llvm.trunc %76 : i64 to i32
    %78 = llvm.call @cache_request_impl_5(%8, %74, %77, %7) : (i32, i64, i32, i8) -> i32
    %79 = llvm.sext %71 : i32 to i64
    %80 = llvm.getelementptr %67[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %77, %80 : !llvm.ptr<i32>
    %81 = llvm.add %68, %15  : i64
    llvm.br ^bb7(%81 : i64)
  ^bb9:  // pred: ^bb7
    llvm.br ^bb10(%20 : i64)
  ^bb10(%82: i64):  // 2 preds: ^bb9, ^bb22
    %83 = llvm.icmp "slt" %82, %36 : i64
    llvm.cond_br %83, ^bb11, ^bb23
  ^bb11:  // pred: ^bb10
    %84 = llvm.add %82, %13  : i64
    %85 = llvm.icmp "slt" %84, %36 : i64
    llvm.cond_br %85, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %86 = llvm.srem %84, %12  : i64
    %87 = llvm.trunc %86 : i64 to i32
    %88 = llvm.mul %84, %14  : i64
    %89 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %88) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i32> to i64
    %91 = llvm.and %90, %11  : i64
    %92 = llvm.udiv %91, %10  : i64
    %93 = llvm.srem %92, %9  : i64
    %94 = llvm.trunc %93 : i64 to i32
    %95 = llvm.call @cache_request_impl_12(%8, %91, %94, %7) : (i32, i64, i32, i8) -> i32
    %96 = llvm.sext %87 : i32 to i64
    %97 = llvm.getelementptr %37[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %94, %97 : !llvm.ptr<i32>
    %98 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%33, %88) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %99 = llvm.ptrtoint %98 : !llvm.ptr<i32> to i64
    %100 = llvm.and %99, %11  : i64
    %101 = llvm.udiv %100, %10  : i64
    %102 = llvm.srem %101, %9  : i64
    %103 = llvm.trunc %102 : i64 to i32
    %104 = llvm.call @cache_request_impl_2(%8, %100, %103, %7) : (i32, i64, i32, i8) -> i32
    %105 = llvm.getelementptr %52[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %103, %105 : !llvm.ptr<i32>
    %106 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %88) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %107 = llvm.ptrtoint %106 : !llvm.ptr<i64> to i64
    %108 = llvm.and %107, %6  : i64
    %109 = llvm.udiv %108, %5  : i64
    %110 = llvm.srem %109, %9  : i64
    %111 = llvm.trunc %110 : i64 to i32
    %112 = llvm.call @cache_request_impl_5(%8, %108, %111, %7) : (i32, i64, i32, i8) -> i32
    %113 = llvm.getelementptr %67[%96] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %111, %113 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %114 = llvm.mul %82, %14  : i64
    %115 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %114) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %116 = llvm.srem %82, %12  : i64
    %117 = llvm.getelementptr %37[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %118 = llvm.load %117 : !llvm.ptr<i32>
    %119 = llvm.ptrtoint %115 : !llvm.ptr<i32> to i64
    %120 = llvm.sext %118 : i32 to i64
    %121 = llvm.mul %120, %10  : i64
    %122 = llvm.srem %119, %10  : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.add %123, %4  : i64
    %125 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %126 = llvm.load %125 : !llvm.ptr<ptr<i8>>
    %127 = llvm.getelementptr %126[%124] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %128 = llvm.bitcast %127 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %129 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%33, %114) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %130 = llvm.getelementptr %52[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %131 = llvm.load %130 : !llvm.ptr<i32>
    %132 = llvm.ptrtoint %129 : !llvm.ptr<i32> to i64
    %133 = llvm.sext %131 : i32 to i64
    %134 = llvm.mul %133, %10  : i64
    %135 = llvm.srem %132, %10  : i64
    %136 = llvm.add %134, %135  : i64
    %137 = llvm.add %136, %3  : i64
    %138 = llvm.load %125 : !llvm.ptr<ptr<i8>>
    %139 = llvm.getelementptr %138[%137] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %140 = llvm.bitcast %139 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %141 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %114) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %142 = llvm.getelementptr %67[%116] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %143 = llvm.load %142 : !llvm.ptr<i32>
    %144 = llvm.ptrtoint %141 : !llvm.ptr<i64> to i64
    %145 = llvm.sext %143 : i32 to i64
    %146 = llvm.mul %145, %5  : i64
    %147 = llvm.srem %144, %5  : i64
    %148 = llvm.add %146, %147  : i64
    %149 = llvm.add %148, %2  : i64
    %150 = llvm.load %125 : !llvm.ptr<ptr<i8>>
    %151 = llvm.getelementptr %150[%149] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %152 = llvm.bitcast %151 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %153 = llvm.add %143, %1  : i32
    %154 = llvm.sext %153 : i32 to i64
    %155 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %156 = llvm.getelementptr %155[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %157 = llvm.getelementptr %156[%154] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %158 = llvm.getelementptr %157[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %159 = llvm.load %158 : !llvm.ptr<i16>
    llvm.call @poll_qid5(%0, %159) : (i32, i16) -> ()
    %160 = llvm.add %82, %22  : i64
    %161 = llvm.mul %160, %18  : i64
    %162 = llvm.icmp "sgt" %34, %161 : i64
    llvm.cond_br %162, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%18 : i64)
  ^bb15:  // pred: ^bb13
    %163 = llvm.mul %82, %18  : i64
    %164 = llvm.sub %34, %163  : i64
    llvm.br ^bb16(%164 : i64)
  ^bb16(%165: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %166 = llvm.mul %82, %18  : i64
    llvm.br ^bb18(%20 : i64)
  ^bb18(%167: i64):  // 2 preds: ^bb17, ^bb21
    %168 = llvm.icmp "slt" %167, %165 : i64
    llvm.cond_br %168, ^bb19, ^bb22
  ^bb19:  // pred: ^bb18
    %169 = llvm.add %167, %166  : i64
    %170 = llvm.getelementptr %128[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %171 = llvm.getelementptr %140[%167] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %172 = llvm.getelementptr %152[%167] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %173 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %169) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %174 = llvm.load %172 : !llvm.ptr<i64>
    llvm.store %174, %26 : !llvm.ptr<i64>
    %175 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %169) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %176 = llvm.load %170 : !llvm.ptr<i32>
    llvm.store %176, %25 : !llvm.ptr<i32>
    %177 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%33, %169) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %178 = llvm.load %171 : !llvm.ptr<i32>
    llvm.store %178, %23 : !llvm.ptr<i32>
    %179 = llvm.call @_ZZ33print_passage_counts_by_vendor_idiENK3$_0clERKmRKi(%arg0, %26, %25) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<i64>, !llvm.ptr<i32>) -> i8
    %180 = llvm.icmp "ne" %179, %21 : i8
    llvm.cond_br %180, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %23) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb21
  ^bb21:  // 2 preds: ^bb19, ^bb20
    %181 = llvm.add %167, %15  : i64
    llvm.br ^bb18(%181 : i64)
  ^bb22:  // pred: ^bb18
    %182 = llvm.add %82, %15  : i64
    llvm.br ^bb10(%182 : i64)
  ^bb23:  // pred: ^bb10
    llvm.return
  }
  llvm.func @_Z20step21_passage_counti(i32) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func @_Z19step21_count_resultv() attributes {sym_visibility = "private"}
  llvm.func @_Z20step22_passage_counti(i32) attributes {sym_visibility = "private"}
  llvm.func @_Z19step22_count_resultv() attributes {sym_visibility = "private"}
  llvm.func @_Z16prepare_durationv() attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZN10MaxVisitorImmEC1Ev(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) {
    %0 = llvm.mlir.constant(1 : i8) : i8
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %1, %4 : !llvm.ptr<i64>
    %5 = llvm.load %4 : !llvm.ptr<i64>
    llvm.store %5, %4 : !llvm.ptr<i64>
    %6 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    llvm.store %0, %6 : !llvm.ptr<i8>
    %7 = llvm.load %6 : !llvm.ptr<i8>
    llvm.store %7, %6 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN10MinVisitorImmEC1Ev(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) {
    %0 = llvm.mlir.constant(1 : i8) : i8
    %1 = llvm.mlir.constant(0 : i64) : i64
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %1, %2 : !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    llvm.store %3, %2 : !llvm.ptr<i64>
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %1, %4 : !llvm.ptr<i64>
    %5 = llvm.load %4 : !llvm.ptr<i64>
    llvm.store %5, %4 : !llvm.ptr<i64>
    %6 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    llvm.store %0, %6 : !llvm.ptr<i8>
    %7 = llvm.load %6 : !llvm.ptr<i8>
    llvm.store %7, %6 : !llvm.ptr<i8>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN11MeanVisitorImmEC1Ev(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.load %1 : !llvm.ptr<i64>
    llvm.store %2, %1 : !llvm.ptr<i64>
    %3 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %3 : !llvm.ptr<i64>
    %4 = llvm.load %3 : !llvm.ptr<i64>
    llvm.store %4, %3 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg1: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg2: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) {
    %0 = llvm.mlir.constant(10 : i32) : i32
    %1 = llvm.mlir.constant(368640 : i32) : i32
    %2 = llvm.mlir.constant(10737418240 : i64) : i64
    %3 = llvm.mlir.constant(9663676416 : i64) : i64
    %4 = llvm.mlir.constant(1 : i8) : i8
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(36864 : i64) : i64
    %7 = llvm.mlir.constant(8192 : i64) : i64
    %8 = llvm.mlir.constant(-8192 : i64) : i64
    %9 = llvm.mlir.constant(3 : i64) : i64
    %10 = llvm.mlir.constant(2 : i64) : i64
    %11 = llvm.mlir.constant(1024 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(2 : index) : i64
    %14 = llvm.mlir.constant(3 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i64) : i64
    %16 = llvm.mlir.constant(1023 : i64) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.mlir.undef : i64
    %20 = llvm.alloca %18 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %19, %20 : !llvm.ptr<i64>
    %21 = llvm.alloca %18 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %19, %21 : !llvm.ptr<i64>
    %22 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %24 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %26 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__0(%25) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %26, %21 : !llvm.ptr<i64>
    %27 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__1(%23) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %27, %20 : !llvm.ptr<i64>
    %28 = llvm.call @_ZSt3minImERKT_S2_S2_(%20, %21) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %29 = llvm.load %28 : !llvm.ptr<i64>
    llvm.call @_ZN11MeanVisitorImmE3preEv(%arg2) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %30 = llvm.add %29, %16  : i64
    %31 = llvm.sdiv %30, %15  : i64
    %32 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%17 : i64)
  ^bb1(%33: i64):  // 2 preds: ^bb0, ^bb2
    %34 = llvm.icmp "slt" %33, %13 : i64
    llvm.cond_br %34, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %35 = llvm.mul %33, %11  : i64
    %36 = llvm.trunc %33 : i64 to i32
    %37 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%25, %35) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %38 = llvm.ptrtoint %37 : !llvm.ptr<i64> to i64
    %39 = llvm.and %38, %8  : i64
    %40 = llvm.udiv %39, %7  : i64
    %41 = llvm.srem %40, %6  : i64
    %42 = llvm.trunc %41 : i64 to i32
    %43 = llvm.call @cache_request_impl_5(%5, %39, %42, %4) : (i32, i64, i32, i8) -> i32
    %44 = llvm.sext %36 : i32 to i64
    %45 = llvm.getelementptr %32[%44] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %42, %45 : !llvm.ptr<i32>
    %46 = llvm.add %33, %12  : i64
    llvm.br ^bb1(%46 : i64)
  ^bb3:  // pred: ^bb1
    %47 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%17 : i64)
  ^bb4(%48: i64):  // 2 preds: ^bb3, ^bb5
    %49 = llvm.icmp "slt" %48, %13 : i64
    llvm.cond_br %49, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %50 = llvm.mul %48, %11  : i64
    %51 = llvm.trunc %48 : i64 to i32
    %52 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%23, %50) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i64> to i64
    %54 = llvm.and %53, %8  : i64
    %55 = llvm.udiv %54, %7  : i64
    %56 = llvm.srem %55, %6  : i64
    %57 = llvm.trunc %56 : i64 to i32
    %58 = llvm.call @cache_request_impl_11(%5, %54, %57, %4) : (i32, i64, i32, i8) -> i32
    %59 = llvm.sext %51 : i32 to i64
    %60 = llvm.getelementptr %47[%59] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %57, %60 : !llvm.ptr<i32>
    %61 = llvm.add %48, %12  : i64
    llvm.br ^bb4(%61 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%17 : i64)
  ^bb7(%62: i64):  // 2 preds: ^bb6, ^bb17
    %63 = llvm.icmp "slt" %62, %31 : i64
    llvm.cond_br %63, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    %64 = llvm.add %62, %10  : i64
    %65 = llvm.icmp "slt" %64, %31 : i64
    llvm.cond_br %65, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %66 = llvm.srem %64, %9  : i64
    %67 = llvm.trunc %66 : i64 to i32
    %68 = llvm.mul %64, %11  : i64
    %69 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%25, %68) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %70 = llvm.ptrtoint %69 : !llvm.ptr<i64> to i64
    %71 = llvm.and %70, %8  : i64
    %72 = llvm.udiv %71, %7  : i64
    %73 = llvm.srem %72, %6  : i64
    %74 = llvm.trunc %73 : i64 to i32
    %75 = llvm.call @cache_request_impl_5(%5, %71, %74, %4) : (i32, i64, i32, i8) -> i32
    %76 = llvm.sext %67 : i32 to i64
    %77 = llvm.getelementptr %32[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %74, %77 : !llvm.ptr<i32>
    %78 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%23, %68) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %79 = llvm.ptrtoint %78 : !llvm.ptr<i64> to i64
    %80 = llvm.and %79, %8  : i64
    %81 = llvm.udiv %80, %7  : i64
    %82 = llvm.srem %81, %6  : i64
    %83 = llvm.trunc %82 : i64 to i32
    %84 = llvm.call @cache_request_impl_11(%5, %80, %83, %4) : (i32, i64, i32, i8) -> i32
    %85 = llvm.getelementptr %47[%76] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %83, %85 : !llvm.ptr<i32>
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    %86 = llvm.mul %62, %11  : i64
    %87 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%25, %86) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %88 = llvm.srem %62, %9  : i64
    %89 = llvm.getelementptr %32[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %90 = llvm.load %89 : !llvm.ptr<i32>
    %91 = llvm.ptrtoint %87 : !llvm.ptr<i64> to i64
    %92 = llvm.sext %90 : i32 to i64
    %93 = llvm.mul %92, %7  : i64
    %94 = llvm.srem %91, %7  : i64
    %95 = llvm.add %93, %94  : i64
    %96 = llvm.add %95, %3  : i64
    %97 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %98 = llvm.load %97 : !llvm.ptr<ptr<i8>>
    %99 = llvm.getelementptr %98[%96] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %100 = llvm.bitcast %99 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %101 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%23, %86) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %102 = llvm.getelementptr %47[%88] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %103 = llvm.load %102 : !llvm.ptr<i32>
    %104 = llvm.ptrtoint %101 : !llvm.ptr<i64> to i64
    %105 = llvm.sext %103 : i32 to i64
    %106 = llvm.mul %105, %7  : i64
    %107 = llvm.srem %104, %7  : i64
    %108 = llvm.add %106, %107  : i64
    %109 = llvm.add %108, %2  : i64
    %110 = llvm.load %97 : !llvm.ptr<ptr<i8>>
    %111 = llvm.getelementptr %110[%109] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %112 = llvm.bitcast %111 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %113 = llvm.add %103, %1  : i32
    %114 = llvm.sext %113 : i32 to i64
    %115 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %116 = llvm.getelementptr %115[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %117 = llvm.getelementptr %116[%114] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %118 = llvm.getelementptr %117[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %119 = llvm.load %118 : !llvm.ptr<i16>
    llvm.call @poll_qid11(%0, %119) : (i32, i16) -> ()
    %120 = llvm.add %62, %18  : i64
    %121 = llvm.mul %120, %15  : i64
    %122 = llvm.icmp "sgt" %29, %121 : i64
    llvm.cond_br %122, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.br ^bb13(%15 : i64)
  ^bb12:  // pred: ^bb10
    %123 = llvm.mul %62, %15  : i64
    %124 = llvm.sub %29, %123  : i64
    llvm.br ^bb13(%124 : i64)
  ^bb13(%125: i64):  // 2 preds: ^bb11, ^bb12
    llvm.br ^bb14
  ^bb14:  // pred: ^bb13
    %126 = llvm.mul %62, %15  : i64
    llvm.br ^bb15(%17 : i64)
  ^bb15(%127: i64):  // 2 preds: ^bb14, ^bb16
    %128 = llvm.icmp "slt" %127, %125 : i64
    llvm.cond_br %128, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %129 = llvm.add %127, %126  : i64
    %130 = llvm.getelementptr %100[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %131 = llvm.getelementptr %112[%127] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %132 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%25, %129) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %133 = llvm.load %130 : !llvm.ptr<i64>
    %134 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%23, %129) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %135 = llvm.load %131 : !llvm.ptr<i64>
    llvm.call @_ZN10MaxVisitorImmEclEmm(%arg0, %133, %135) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
    llvm.call @_ZN10MinVisitorImmEclEmm(%arg1, %133, %135) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
    llvm.call @_ZN11MeanVisitorImmEclEmm(%arg2, %133, %135) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, i64, i64) -> ()
    %136 = llvm.add %127, %12  : i64
    llvm.br ^bb15(%136 : i64)
  ^bb17:  // pred: ^bb15
    %137 = llvm.add %62, %12  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb18:  // pred: ^bb7
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK11MeanVisitorImmE10get_resultEv(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %3 = llvm.load %2 : !llvm.ptr<i64>
    %4 = llvm.sdiv %1, %3  : i64
    llvm.return %4 : i64
  }
  llvm.func linkonce_odr @_ZNK10MinVisitorImmE10get_resultEv(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.return %1 : i64
  }
  llvm.func linkonce_odr @_ZNK10MaxVisitorImmE10get_resultEv(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    llvm.return %1 : i64
  }
  llvm.func internal @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.6", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(9 : i32) : i32
    %1 = llvm.mlir.constant(331776 : i32) : i32
    %2 = llvm.mlir.constant(9663676416 : i64) : i64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(6442450944 : i64) : i64
    %5 = llvm.mlir.constant(8192 : i64) : i64
    %6 = llvm.mlir.constant(-8192 : i64) : i64
    %7 = llvm.mlir.constant(4096 : i64) : i64
    %8 = llvm.mlir.constant(-4096 : i64) : i64
    %9 = llvm.mlir.constant(1 : i8) : i8
    %10 = llvm.mlir.constant(0 : i32) : i32
    %11 = llvm.mlir.constant(36864 : i64) : i64
    %12 = llvm.mlir.constant(-1024 : i64) : i64
    %13 = llvm.mlir.constant(3 : i64) : i64
    %14 = llvm.mlir.constant(2 : i64) : i64
    %15 = llvm.mlir.constant(1024 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(3 : i32) : i32
    %19 = llvm.mlir.constant(1024 : i64) : i64
    %20 = llvm.mlir.constant(1023 : i64) : i64
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
    %30 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %32 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %34 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %36 = llvm.call @_ZNKSt6vectorIcSaIcEE4sizeEv__0(%33) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
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
    %44 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %42) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i8> to i64
    %46 = llvm.and %45, %12  : i64
    %47 = llvm.udiv %46, %19  : i64
    %48 = llvm.srem %47, %11  : i64
    %49 = llvm.trunc %48 : i64 to i32
    %50 = llvm.call @cache_request_impl_1(%10, %46, %49, %9) : (i32, i64, i32, i8) -> i32
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
    %59 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %57) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.and %60, %8  : i64
    %62 = llvm.udiv %61, %7  : i64
    %63 = llvm.srem %62, %11  : i64
    %64 = llvm.trunc %63 : i64 to i32
    %65 = llvm.call @cache_request_impl_12(%10, %61, %64, %9) : (i32, i64, i32, i8) -> i32
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
    %74 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %72) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i64> to i64
    %76 = llvm.and %75, %6  : i64
    %77 = llvm.udiv %76, %5  : i64
    %78 = llvm.srem %77, %11  : i64
    %79 = llvm.trunc %78 : i64 to i32
    %80 = llvm.call @cache_request_impl_5(%10, %76, %79, %9) : (i32, i64, i32, i8) -> i32
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
    %91 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i8> to i64
    %93 = llvm.and %92, %12  : i64
    %94 = llvm.udiv %93, %19  : i64
    %95 = llvm.srem %94, %11  : i64
    %96 = llvm.trunc %95 : i64 to i32
    %97 = llvm.call @cache_request_impl_1(%10, %93, %96, %9) : (i32, i64, i32, i8) -> i32
    %98 = llvm.sext %89 : i32 to i64
    %99 = llvm.getelementptr %39[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %96, %99 : !llvm.ptr<i32>
    %100 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.and %101, %8  : i64
    %103 = llvm.udiv %102, %7  : i64
    %104 = llvm.srem %103, %11  : i64
    %105 = llvm.trunc %104 : i64 to i32
    %106 = llvm.call @cache_request_impl_12(%10, %102, %105, %9) : (i32, i64, i32, i8) -> i32
    %107 = llvm.getelementptr %54[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %105, %107 : !llvm.ptr<i32>
    %108 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i64> to i64
    %110 = llvm.and %109, %6  : i64
    %111 = llvm.udiv %110, %5  : i64
    %112 = llvm.srem %111, %11  : i64
    %113 = llvm.trunc %112 : i64 to i32
    %114 = llvm.call @cache_request_impl_5(%10, %110, %113, %9) : (i32, i64, i32, i8) -> i32
    %115 = llvm.getelementptr %69[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %115 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %116 = llvm.mul %84, %15  : i64
    %117 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %116) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
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
    %130 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %116) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
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
    %142 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %116) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
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
    llvm.call @poll_qid5(%0, %160) : (i32, i16) -> ()
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
    %174 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %170) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %175 = llvm.load %173 : !llvm.ptr<i64>
    llvm.store %175, %28 : !llvm.ptr<i64>
    %176 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %170) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %177 = llvm.load %171 : !llvm.ptr<i8>
    llvm.store %177, %26 : !llvm.ptr<i8>
    %178 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %170) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %172 : !llvm.ptr<i32>
    llvm.store %179, %24 : !llvm.ptr<i32>
    %180 = llvm.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0, %28, %26) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
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
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE4sizeEv__1(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE4sizeEv__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func @_Z9get_indexv() -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>> attributes {sym_visibility = "private"}
  llvm.func internal @_Z19get_vid_by_storefwdIZ41calculate_distribution_store_and_fwd_flagvE3$_1iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.7", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(6 : i32) : i32
    %1 = llvm.mlir.constant(221184 : i32) : i32
    %2 = llvm.mlir.constant(6442450944 : i64) : i64
    %3 = llvm.mlir.constant(0 : i64) : i64
    %4 = llvm.mlir.constant(9663676416 : i64) : i64
    %5 = llvm.mlir.constant(-1024 : i64) : i64
    %6 = llvm.mlir.constant(4096 : i64) : i64
    %7 = llvm.mlir.constant(-4096 : i64) : i64
    %8 = llvm.mlir.constant(1 : i8) : i8
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.mlir.constant(36864 : i64) : i64
    %11 = llvm.mlir.constant(8192 : i64) : i64
    %12 = llvm.mlir.constant(-8192 : i64) : i64
    %13 = llvm.mlir.constant(3 : i64) : i64
    %14 = llvm.mlir.constant(2 : i64) : i64
    %15 = llvm.mlir.constant(1024 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : index) : i64
    %18 = llvm.mlir.constant(3 : i32) : i32
    %19 = llvm.mlir.constant(1024 : i64) : i64
    %20 = llvm.mlir.constant(1023 : i64) : i64
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
    %30 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %32 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %34 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %36 = llvm.call @_ZNKSt6vectorIcSaIcEE4sizeEv__0(%33) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
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
    %44 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %42) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i64> to i64
    %46 = llvm.and %45, %12  : i64
    %47 = llvm.udiv %46, %11  : i64
    %48 = llvm.srem %47, %10  : i64
    %49 = llvm.trunc %48 : i64 to i32
    %50 = llvm.call @cache_request_impl_5(%9, %46, %49, %8) : (i32, i64, i32, i8) -> i32
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
    %59 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %57) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %60 = llvm.ptrtoint %59 : !llvm.ptr<i32> to i64
    %61 = llvm.and %60, %7  : i64
    %62 = llvm.udiv %61, %6  : i64
    %63 = llvm.srem %62, %10  : i64
    %64 = llvm.trunc %63 : i64 to i32
    %65 = llvm.call @cache_request_impl_12(%9, %61, %64, %8) : (i32, i64, i32, i8) -> i32
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
    %74 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %72) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i8> to i64
    %76 = llvm.and %75, %5  : i64
    %77 = llvm.udiv %76, %19  : i64
    %78 = llvm.srem %77, %10  : i64
    %79 = llvm.trunc %78 : i64 to i32
    %80 = llvm.call @cache_request_impl_1(%9, %76, %79, %8) : (i32, i64, i32, i8) -> i32
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
    %91 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %92 = llvm.ptrtoint %91 : !llvm.ptr<i64> to i64
    %93 = llvm.and %92, %12  : i64
    %94 = llvm.udiv %93, %11  : i64
    %95 = llvm.srem %94, %10  : i64
    %96 = llvm.trunc %95 : i64 to i32
    %97 = llvm.call @cache_request_impl_5(%9, %93, %96, %8) : (i32, i64, i32, i8) -> i32
    %98 = llvm.sext %89 : i32 to i64
    %99 = llvm.getelementptr %39[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %96, %99 : !llvm.ptr<i32>
    %100 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %101 = llvm.ptrtoint %100 : !llvm.ptr<i32> to i64
    %102 = llvm.and %101, %7  : i64
    %103 = llvm.udiv %102, %6  : i64
    %104 = llvm.srem %103, %10  : i64
    %105 = llvm.trunc %104 : i64 to i32
    %106 = llvm.call @cache_request_impl_12(%9, %102, %105, %8) : (i32, i64, i32, i8) -> i32
    %107 = llvm.getelementptr %54[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %105, %107 : !llvm.ptr<i32>
    %108 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %109 = llvm.ptrtoint %108 : !llvm.ptr<i8> to i64
    %110 = llvm.and %109, %5  : i64
    %111 = llvm.udiv %110, %19  : i64
    %112 = llvm.srem %111, %10  : i64
    %113 = llvm.trunc %112 : i64 to i32
    %114 = llvm.call @cache_request_impl_1(%9, %110, %113, %8) : (i32, i64, i32, i8) -> i32
    %115 = llvm.getelementptr %69[%98] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %113, %115 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %116 = llvm.mul %84, %15  : i64
    %117 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %116) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %118 = llvm.srem %84, %13  : i64
    %119 = llvm.getelementptr %39[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %120 = llvm.load %119 : !llvm.ptr<i32>
    %121 = llvm.ptrtoint %117 : !llvm.ptr<i64> to i64
    %122 = llvm.sext %120 : i32 to i64
    %123 = llvm.mul %122, %11  : i64
    %124 = llvm.srem %121, %11  : i64
    %125 = llvm.add %123, %124  : i64
    %126 = llvm.add %125, %4  : i64
    %127 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %128 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %129 = llvm.getelementptr %128[%126] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %131 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %116) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %132 = llvm.getelementptr %54[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %133 = llvm.load %132 : !llvm.ptr<i32>
    %134 = llvm.ptrtoint %131 : !llvm.ptr<i32> to i64
    %135 = llvm.sext %133 : i32 to i64
    %136 = llvm.mul %135, %6  : i64
    %137 = llvm.srem %134, %6  : i64
    %138 = llvm.add %136, %137  : i64
    %139 = llvm.add %138, %3  : i64
    %140 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %141 = llvm.getelementptr %140[%139] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %142 = llvm.bitcast %141 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %143 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %116) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %144 = llvm.getelementptr %69[%118] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.load %144 : !llvm.ptr<i32>
    %146 = llvm.ptrtoint %143 : !llvm.ptr<i8> to i64
    %147 = llvm.sext %145 : i32 to i64
    %148 = llvm.mul %147, %19  : i64
    %149 = llvm.srem %146, %19  : i64
    %150 = llvm.add %148, %149  : i64
    %151 = llvm.add %150, %2  : i64
    %152 = llvm.load %127 : !llvm.ptr<ptr<i8>>
    %153 = llvm.getelementptr %152[%151] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %154 = llvm.add %145, %1  : i32
    %155 = llvm.sext %154 : i32 to i64
    %156 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %157 = llvm.getelementptr %156[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %158 = llvm.getelementptr %157[%155] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %159 = llvm.getelementptr %158[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %160 = llvm.load %159 : !llvm.ptr<i16>
    llvm.call @poll_qid1(%0, %160) : (i32, i16) -> ()
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
    %171 = llvm.getelementptr %130[%168] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %172 = llvm.getelementptr %142[%168] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %173 = llvm.getelementptr %153[%168] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %174 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%31, %170) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %175 = llvm.load %171 : !llvm.ptr<i64>
    llvm.store %175, %28 : !llvm.ptr<i64>
    %176 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%33, %170) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %177 = llvm.load %173 : !llvm.ptr<i8>
    llvm.store %177, %26 : !llvm.ptr<i8>
    %178 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%35, %170) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %179 = llvm.load %172 : !llvm.ptr<i32>
    llvm.store %179, %24 : !llvm.ptr<i32>
    %180 = llvm.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0, %28, %26) : (!llvm.ptr<struct<"class.anon.7", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
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
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
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
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv__3(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv__2(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv__1(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE4sizeEv__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm__4(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm__3(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm__2(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm__1(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIdSaIdEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<f64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<f64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.return %5 : !llvm.ptr<f64>
  }
  llvm.func @_Z12hvs_set_sizem(%arg0: i64) {
    %0 = llvm.mlir.constant(1 : i32) : i32
    %1 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>> to !llvm.ptr<struct<"struct.rvector", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.call @_ZNKSt6vectorIdSaIdEE8capacityEv__0(%2) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %5 = llvm.icmp "sgt" %arg0, %4 : i64
    llvm.cond_br %5, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %6 = llvm.mlir.addressof @str33 : !llvm.ptr<array<36 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<36 x i8>>) -> !llvm.ptr<i8>
    %8 = llvm.call @printf(%7) : (!llvm.ptr<i8>) -> i32
    llvm.call @exit(%0) : (i32) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %9 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.rvector", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %10 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.rvector", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<f64>>
    %12 = llvm.getelementptr %11[%arg0] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    llvm.store %12, %9 : !llvm.ptr<ptr<f64>>
    llvm.return
  }
  llvm.func internal @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%arg0: !llvm.ptr<struct<"class.anon.14", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.mlir.constant(9663676416 : i64) : i64
    %2 = llvm.mlir.constant(11811160064 : i64) : i64
    %3 = llvm.mlir.constant(4096 : i64) : i64
    %4 = llvm.mlir.constant(-4096 : i64) : i64
    %5 = llvm.mlir.constant(1 : i8) : i8
    %6 = llvm.mlir.constant(0 : i32) : i32
    %7 = llvm.mlir.constant(36864 : i64) : i64
    %8 = llvm.mlir.constant(8192 : i64) : i64
    %9 = llvm.mlir.constant(-8192 : i64) : i64
    %10 = llvm.mlir.constant(3 : i64) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(1024 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(2 : index) : i64
    %15 = llvm.mlir.constant(3 : i32) : i32
    %16 = llvm.mlir.constant(1024 : i64) : i64
    %17 = llvm.mlir.constant(1023 : i64) : i64
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
    %27 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %28 = llvm.load %27 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %29 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %31 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %32 = llvm.load %31 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %33 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__0(%30) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %33) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
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
    %41 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%30, %39) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %42 = llvm.ptrtoint %41 : !llvm.ptr<f64> to i64
    %43 = llvm.and %42, %9  : i64
    %44 = llvm.udiv %43, %8  : i64
    %45 = llvm.srem %44, %7  : i64
    %46 = llvm.trunc %45 : i64 to i32
    %47 = llvm.call @cache_request_impl_6(%6, %43, %46, %5) : (i32, i64, i32, i8) -> i32
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
    %56 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%28, %54) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %57 = llvm.ptrtoint %56 : !llvm.ptr<i64> to i64
    %58 = llvm.and %57, %9  : i64
    %59 = llvm.udiv %58, %8  : i64
    %60 = llvm.srem %59, %7  : i64
    %61 = llvm.trunc %60 : i64 to i32
    %62 = llvm.call @cache_request_impl_5(%6, %58, %61, %5) : (i32, i64, i32, i8) -> i32
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
    %71 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%32, %69) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %72 = llvm.ptrtoint %71 : !llvm.ptr<i32> to i64
    %73 = llvm.and %72, %4  : i64
    %74 = llvm.udiv %73, %3  : i64
    %75 = llvm.srem %74, %7  : i64
    %76 = llvm.trunc %75 : i64 to i32
    %77 = llvm.call @cache_request_impl_12(%6, %73, %76, %5) : (i32, i64, i32, i8) -> i32
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
    %88 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%30, %87) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %89 = llvm.ptrtoint %88 : !llvm.ptr<f64> to i64
    %90 = llvm.and %89, %9  : i64
    %91 = llvm.udiv %90, %8  : i64
    %92 = llvm.srem %91, %7  : i64
    %93 = llvm.trunc %92 : i64 to i32
    %94 = llvm.call @cache_request_impl_6(%6, %90, %93, %5) : (i32, i64, i32, i8) -> i32
    %95 = llvm.sext %86 : i32 to i64
    %96 = llvm.getelementptr %36[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %93, %96 : !llvm.ptr<i32>
    %97 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%28, %87) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %98 = llvm.ptrtoint %97 : !llvm.ptr<i64> to i64
    %99 = llvm.and %98, %9  : i64
    %100 = llvm.udiv %99, %8  : i64
    %101 = llvm.srem %100, %7  : i64
    %102 = llvm.trunc %101 : i64 to i32
    %103 = llvm.call @cache_request_impl_5(%6, %99, %102, %5) : (i32, i64, i32, i8) -> i32
    %104 = llvm.getelementptr %51[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %102, %104 : !llvm.ptr<i32>
    %105 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%32, %87) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %106 = llvm.ptrtoint %105 : !llvm.ptr<i32> to i64
    %107 = llvm.and %106, %4  : i64
    %108 = llvm.udiv %107, %3  : i64
    %109 = llvm.srem %108, %7  : i64
    %110 = llvm.trunc %109 : i64 to i32
    %111 = llvm.call @cache_request_impl_12(%6, %107, %110, %5) : (i32, i64, i32, i8) -> i32
    %112 = llvm.getelementptr %66[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %110, %112 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %113 = llvm.mul %81, %12  : i64
    %114 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%30, %113) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %115 = llvm.srem %81, %10  : i64
    %116 = llvm.getelementptr %36[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %117 = llvm.load %116 : !llvm.ptr<i32>
    %118 = llvm.ptrtoint %114 : !llvm.ptr<f64> to i64
    %119 = llvm.sext %117 : i32 to i64
    %120 = llvm.mul %119, %8  : i64
    %121 = llvm.srem %118, %8  : i64
    %122 = llvm.add %120, %121  : i64
    %123 = llvm.add %122, %2  : i64
    %124 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %125 = llvm.load %124 : !llvm.ptr<ptr<i8>>
    %126 = llvm.getelementptr %125[%123] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %128 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%28, %113) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %129 = llvm.getelementptr %51[%115] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %130 = llvm.load %129 : !llvm.ptr<i32>
    %131 = llvm.ptrtoint %128 : !llvm.ptr<i64> to i64
    %132 = llvm.sext %130 : i32 to i64
    %133 = llvm.mul %132, %8  : i64
    %134 = llvm.srem %131, %8  : i64
    %135 = llvm.add %133, %134  : i64
    %136 = llvm.add %135, %1  : i64
    %137 = llvm.load %124 : !llvm.ptr<ptr<i8>>
    %138 = llvm.getelementptr %137[%136] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %139 = llvm.bitcast %138 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %140 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%32, %113) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
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
    llvm.call @poll_qid12(%6, %156) : (i32, i16) -> ()
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
    %167 = llvm.getelementptr %127[%164] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %168 = llvm.getelementptr %139[%164] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %169 = llvm.getelementptr %151[%164] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %170 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%28, %166) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %171 = llvm.load %168 : !llvm.ptr<i64>
    llvm.store %171, %25 : !llvm.ptr<i64>
    %172 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%30, %166) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %173 = llvm.load %167 : !llvm.ptr<f64>
    llvm.store %173, %23 : !llvm.ptr<f64>
    %174 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%32, %166) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %175 = llvm.load %169 : !llvm.ptr<i32>
    llvm.store %175, %21 : !llvm.ptr<i32>
    %176 = llvm.call @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0, %25, %23) : (!llvm.ptr<struct<"class.anon.14", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<f64>) -> i8
    %177 = llvm.icmp "ne" %176, %19 : i8
    llvm.cond_br %177, ^bb20, ^bb21
  ^bb20:  // pred: ^bb19
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %21) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
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
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseImSaImEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %7 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str34 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorImSaImEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i64>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i64>>
    %24 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %25 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%21, %23, %17, %24) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    llvm.br ^bb6(%17 : !llvm.ptr<i64>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
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
    %37 = llvm.call @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64>
    %38 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.br ^bb6(%37 : !llvm.ptr<i64>)
  ^bb6(%39: !llvm.ptr<i64>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %40 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<i64>>
    %45 = llvm.getelementptr %42[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i64>>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i64> to i64
    %48 = llvm.ptrtoint %44 : !llvm.ptr<i64> to i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.sdiv %49, %0  : i64
    llvm.call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%40, %44, %50) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
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
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    llvm.call @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %7 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str34 : !llvm.ptr<array<16 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<16 x i8>>) -> !llvm.ptr<i8>
    llvm.call @_ZSt20__throw_length_errorPKc(%10) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %11 = llvm.call @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %12 = llvm.icmp "slt" %11, %arg1 : i64
    llvm.cond_br %12, ^bb3, ^bb8
  ^bb3:  // pred: ^bb2
    %13 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %14 = llvm.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %15 = llvm.icmp "ne" %14, %1 : i8
    llvm.cond_br %15, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    %16 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %17 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%16, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    %18 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %21 = llvm.load %20 : !llvm.ptr<ptr<i16>>
    %22 = llvm.getelementptr %19[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<i16>>
    %24 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%16) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %25 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%21, %23, %17, %24) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.br ^bb6(%17 : !llvm.ptr<i16>)
  ^bb5:  // pred: ^bb3
    %26 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %28 = llvm.getelementptr %27[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<i16>>
    %31 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%30) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
    llvm.store %31, %5 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%6, %5) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %32 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<i16>>
    %34 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%33) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
    llvm.store %34, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %35 = llvm.load %6 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %36 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %37 = llvm.call @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16>
    %38 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%26) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    llvm.br ^bb6(%37 : !llvm.ptr<i16>)
  ^bb6(%39: !llvm.ptr<i16>):  // 2 preds: ^bb4, ^bb5
    llvm.br ^bb7
  ^bb7:  // pred: ^bb6
    %40 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %42 = llvm.getelementptr %41[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %44 = llvm.load %43 : !llvm.ptr<ptr<i16>>
    %45 = llvm.getelementptr %42[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %46 = llvm.load %45 : !llvm.ptr<ptr<i16>>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i16> to i64
    %48 = llvm.ptrtoint %44 : !llvm.ptr<i16> to i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.sdiv %49, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%40, %44, %50) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
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
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEixEm__1(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEEixEm__1(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<(ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<(ptr<i16>, ptr<i16>, ptr<i16>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.return %5 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE9push_backERKm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.ptr<i64>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i64>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i64>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %11 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    llvm.call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    llvm.store %17, %6 : !llvm.ptr<ptr<i64>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorImSaImEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
    llvm.store %18, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.call @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>, !llvm.ptr<i64>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE9push_backERKs(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.ptr<i16>) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %6 = llvm.getelementptr %5[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    %8 = llvm.getelementptr %5[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %9 = llvm.load %8 : !llvm.ptr<ptr<i16>>
    %10 = llvm.icmp "ne" %7, %9 : !llvm.ptr<i16>
    llvm.cond_br %10, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %11 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %12 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %14 = llvm.select %13, %11, %12 : i1, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %15 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    llvm.call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%14, %15, %arg1) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    %16 = llvm.load %6 : !llvm.ptr<ptr<i16>>
    %17 = llvm.getelementptr %16[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.store %17, %6 : !llvm.ptr<ptr<i16>>
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %18 = llvm.call @_ZNSt6vectorIsSaIsEE3endEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
    llvm.store %18, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%2, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> ()
    %19 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.call @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0, %19, %arg1) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>, !llvm.ptr<i16>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    llvm.return
  }
  llvm.func @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) attributes {sym_visibility = "private"}
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
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) {
    %0 = llvm.mlir.constant(4 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = llvm.alloca %2 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %7 = llvm.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %8 = llvm.icmp "sgt" %arg1, %7 : i64
    llvm.cond_br %8, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %9 = llvm.mlir.addressof @str34 : !llvm.ptr<array<16 x i8>>
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
    %31 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%30) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
    llvm.store %31, %5 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%6, %5) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %32 = llvm.getelementptr %28[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<i32>>
    %34 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%33) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
    llvm.store %34, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %35 = llvm.load %6 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %36 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %37 = llvm.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %arg1, %35, %36) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32>
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
  llvm.func @_Z15step1_firstTimei(i32) -> i8 attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEEixEm__1(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.return %5 : !llvm.ptr<i32>
  }
  llvm.func internal @_ZZ33print_passage_counts_by_vendor_idiENK3$_0clERKmRKi(%arg0: !llvm.ptr<struct<"class.anon", (ptr<i32>)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i32>) -> i8 attributes {sym_visibility = "private"} {
    %0 = llvm.load %arg2 : !llvm.ptr<i32>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i32>>
    %3 = llvm.load %2 : !llvm.ptr<i32>
    %4 = llvm.icmp "eq" %0, %3 : i32
    %5 = llvm.zext %4 : i1 to i8
    llvm.return %5 : i8
  }
  llvm.func linkonce_odr @_ZSt3minImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg1 : !llvm.ptr<i64>
    %1 = llvm.load %arg0 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN10MaxVisitorImmE3preEv(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN10MinVisitorImmE3preEv(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN11MeanVisitorImmE3preEv(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN10MaxVisitorImmEclEmm(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg1: i64, %arg2: i64) {
    %0 = llvm.mlir.constant(0 : i8) : i8
    %1 = llvm.mlir.constant(true) : i1
    %2 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    %3 = llvm.load %2 : !llvm.ptr<i8>
    %4 = llvm.icmp "ne" %3, %0 : i8
    llvm.cond_br %4, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.br ^bb3(%1 : i1)
  ^bb2:  // pred: ^bb0
    %5 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    %6 = llvm.load %5 : !llvm.ptr<i64>
    %7 = llvm.icmp "sgt" %arg2, %6 : i64
    llvm.br ^bb3(%7 : i1)
  ^bb3(%8: i1):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.cond_br %8, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %9 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %arg2, %9 : !llvm.ptr<i64>
    %10 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %arg1, %10 : !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i8>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    llvm.return
  }
  llvm.func linkonce_odr @_ZN10MinVisitorImmEclEmm(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg1: i64, %arg2: i64) {
    %0 = llvm.mlir.constant(0 : i8) : i8
    %1 = llvm.mlir.constant(true) : i1
    %2 = llvm.getelementptr %arg0[0, 2] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i8>
    %3 = llvm.load %2 : !llvm.ptr<i8>
    %4 = llvm.icmp "ne" %3, %0 : i8
    llvm.cond_br %4, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.br ^bb3(%1 : i1)
  ^bb2:  // pred: ^bb0
    %5 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    %6 = llvm.load %5 : !llvm.ptr<i64>
    %7 = llvm.icmp "slt" %arg2, %6 : i64
    llvm.br ^bb3(%7 : i1)
  ^bb3(%8: i1):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.cond_br %8, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %9 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %arg2, %9 : !llvm.ptr<i64>
    %10 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> !llvm.ptr<i64>
    llvm.store %arg1, %10 : !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i8>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    llvm.return
  }
  llvm.func linkonce_odr @_ZN11MeanVisitorImmEclEmm(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, %arg1: i64, %arg2: i64) {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %2 = llvm.load %1 : !llvm.ptr<i64>
    %3 = llvm.add %2, %arg2  : i64
    llvm.store %3, %1 : !llvm.ptr<i64>
    %4 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> !llvm.ptr<i64>
    %5 = llvm.load %4 : !llvm.ptr<i64>
    %6 = llvm.add %5, %0  : i64
    llvm.store %6, %4 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN10MaxVisitorImmE4postEv(%arg0: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN10MinVisitorImmE4postEv(%arg0: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN11MeanVisitorImmE4postEv(%arg0: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIcSaIcEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i8> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i8> to i64
    %9 = llvm.sub %7, %8  : i64
    llvm.return %9 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIcSaIcEE4sizeEv__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<(ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<(ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %6 = llvm.load %5 : !llvm.ptr<ptr<i8>>
    %7 = llvm.ptrtoint %4 : !llvm.ptr<i8> to i64
    %8 = llvm.ptrtoint %6 : !llvm.ptr<i8> to i64
    %9 = llvm.sub %7, %8  : i64
    llvm.return %9 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIcSaIcEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i8> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.21", (struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.22", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl", (struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<char, std::allocator<char>>::_Vector_impl_data", (ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    llvm.return %5 : !llvm.ptr<i8>
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIcSaIcEEixEm__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i8> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>>) -> !llvm.ptr<struct<(ptr<i8>, ptr<i8>, ptr<i8>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(ptr<i8>, ptr<i8>, ptr<i8>)>>) -> !llvm.ptr<ptr<i8>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i8>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    llvm.return %5 : !llvm.ptr<i8>
  }
  llvm.func internal @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0: !llvm.ptr<struct<"class.anon.6", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i8>) -> i8 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(78 : i32) : i32
    %1 = llvm.load %arg2 : !llvm.ptr<i8>
    %2 = llvm.sext %1 : i8 to i32
    %3 = llvm.icmp "eq" %2, %0 : i32
    %4 = llvm.zext %3 : i1 to i8
    llvm.return %4 : i8
  }
  llvm.func internal @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0: !llvm.ptr<struct<"class.anon.7", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i8>) -> i8 attributes {sym_visibility = "private"} {
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
    %5 = llvm.mlir.addressof @str35 : !llvm.ptr<array<26 x i8>>
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
  llvm.func @asin(f64) -> f64 attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.9", (struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.10", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl", (struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<double, std::allocator<double>>::_Vector_impl_data", (ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIdSaIdEE8capacityEv__0(%arg0: !llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> !llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>>) -> !llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>>) -> !llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>
    %4 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<f64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<(ptr<f64>, ptr<f64>, ptr<f64>)>>) -> !llvm.ptr<ptr<f64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<f64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<f64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<f64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
  }
  llvm.func @exit(i32) attributes {sym_visibility = "private"}
  llvm.func internal @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0: !llvm.ptr<struct<"class.anon.14", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<f64>) -> i8 attributes {sym_visibility = "private"} {
    %0 = llvm.mlir.constant(1.000000e+02 : f64) : f64
    %1 = llvm.load %arg2 : !llvm.ptr<f64>
    %2 = llvm.fcmp "ogt" %1, %0 : f64
    %3 = llvm.zext %2 : i1 to i8
    llvm.return %3 : i8
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    llvm.call @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.call @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
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
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, i64) -> !llvm.ptr<i64>
    llvm.br ^bb3(%7 : !llvm.ptr<i64>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i64>
    llvm.br ^bb3(%8 : !llvm.ptr<i64>)
  ^bb3(%9: !llvm.ptr<i64>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE11_S_relocateEPmS2_S2_RS0_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE20_M_allocate_and_copyISt13move_iteratorIPmEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg3: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>) -> !llvm.ptr<i64> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPmEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>, !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator", (ptr<i64>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
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
  llvm.func linkonce_odr @_ZSt8_DestroyIPmmEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i64>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i64>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.call @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEEC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %2 = llvm.call @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> i64
    llvm.return %2 : i64
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE8capacityEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
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
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
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
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::__is_move_insertable.30", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable.30", (i8)>>
    %5 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::__is_move_insertable.30", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%5, %2, %3, %1) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(0 : i64) : i64
    %1 = llvm.icmp "ne" %arg1, %0 : i64
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %7 = llvm.call @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%6, %arg1) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, i64) -> !llvm.ptr<i16>
    llvm.br ^bb3(%7 : !llvm.ptr<i16>)
  ^bb2:  // pred: ^bb0
    %8 = llvm.mlir.null : !llvm.ptr<i16>
    llvm.br ^bb3(%8 : !llvm.ptr<i16>)
  ^bb3(%9: !llvm.ptr<i16>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    llvm.return %9 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE11_S_relocateEPsS2_S2_RS0_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE20_M_allocate_and_copyISt13move_iteratorIPsEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg3: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %6 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPsEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0: !llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ES0_(%2, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<i16>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %4, %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%3, %1) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.return %5 : !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPssEvT_S1_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) {
    %0 = llvm.mlir.null : !llvm.ptr<i16>
    %1 = llvm.icmp "ne" %arg1, %0 : !llvm.ptr<i16>
    llvm.cond_br %1, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %3 = llvm.bitcast %2 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %4 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %5 = llvm.icmp "ne" %3, %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %6 = llvm.select %5, %3, %4 : i1, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    llvm.call @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%6, %arg1, %arg2) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE17_M_realloc_insertIJRKmEEEvN9__gnu_cxx17__normal_iteratorIPmS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>, %arg2: !llvm.ptr<i64>) {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %5 = llvm.mlir.addressof @str35 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i64>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i64>>
    %15 = llvm.call @_ZNSt6vectorImSaImEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
    llvm.store %15, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseImSaImEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, i64) -> !llvm.ptr<i64>
    %18 = llvm.bitcast %9 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.call @_ZNSt16allocator_traitsISaImEE9constructImJRKmEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<"class.std::allocator.3", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i64>) -> ()
    %23 = llvm.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i64>>
    %27 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %28 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%12, %26, %17, %27) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i64>>
    %32 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %33 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%31, %14, %29, %32) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    llvm.br ^bb3(%33 : !llvm.ptr<i64>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i64>>
    %36 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i64>>
    %41 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    llvm.br ^bb3(%42 : !llvm.ptr<i64>)
  ^bb3(%43: !llvm.ptr<i64>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorImSaImEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i64>>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i64> to i64
    %50 = llvm.ptrtoint %12 : !llvm.ptr<i64> to i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseImSaImEE13_M_deallocateEPmm(%8, %12, %52) : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i64>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i64>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.store %53, %47 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i64>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE17_M_realloc_insertIJRKsEEEvN9__gnu_cxx17__normal_iteratorIPsS1_EEDpOT_(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.mlir.constant(0 : i8) : i8
    %2 = llvm.mlir.constant(1 : i64) : i64
    %3 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %4 = llvm.alloca %2 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.store %arg1, %4 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %5 = llvm.mlir.addressof @str35 : !llvm.ptr<array<26 x i8>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %7 = llvm.call @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0, %2, %6) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
    %8 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %12 = llvm.load %11 : !llvm.ptr<ptr<i16>>
    %13 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %14 = llvm.load %13 : !llvm.ptr<ptr<i16>>
    %15 = llvm.call @_ZNSt6vectorIsSaIsEE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
    llvm.store %15, %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %16 = llvm.call @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%4, %3) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> i64
    %17 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE11_M_allocateEm(%8, %7) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, i64) -> !llvm.ptr<i16>
    %18 = llvm.bitcast %9 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %19 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %20 = llvm.icmp "ne" %18, %19 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %21 = llvm.select %20, %18, %19 : i1, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %22 = llvm.getelementptr %17[%16] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.call @_ZNSt16allocator_traitsISaIsEE9constructIsJRKsEEEvRS0_PT_DpOT0_(%21, %22, %arg2) : (!llvm.ptr<struct<"class.std::allocator.18", (i8)>>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> ()
    %23 = llvm.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %24 = llvm.icmp "ne" %23, %1 : i8
    llvm.cond_br %24, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    %25 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<i16>>
    %27 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %28 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%12, %26, %17, %27) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    %29 = llvm.getelementptr %28[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
    %30 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<i16>>
    %32 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %33 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%31, %14, %29, %32) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.br ^bb3(%33 : !llvm.ptr<i16>)
  ^bb2:  // pred: ^bb0
    %34 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<i16>>
    %36 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %37 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%12, %35, %17, %36) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    %38 = llvm.getelementptr %37[1] : (!llvm.ptr<i16>) -> !llvm.ptr<i16>
    %39 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%4) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %40 = llvm.load %39 : !llvm.ptr<ptr<i16>>
    %41 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %42 = llvm.call @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%40, %14, %38, %41) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.br ^bb3(%42 : !llvm.ptr<i16>)
  ^bb3(%43: !llvm.ptr<i16>):  // 2 preds: ^bb1, ^bb2
    llvm.br ^bb4
  ^bb4:  // pred: ^bb3
    %44 = llvm.call @_ZNSt6vectorIsSaIsEE15_S_use_relocateEv() : () -> i8
    %45 = llvm.icmp "eq" %44, %1 : i8
    llvm.cond_br %45, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %46 = llvm.call @_ZNSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%8) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %47 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %48 = llvm.load %47 : !llvm.ptr<ptr<i16>>
    %49 = llvm.ptrtoint %48 : !llvm.ptr<i16> to i64
    %50 = llvm.ptrtoint %12 : !llvm.ptr<i16> to i64
    %51 = llvm.sub %49, %50  : i64
    %52 = llvm.sdiv %51, %0  : i64
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE13_M_deallocateEPsm(%8, %12, %52) : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.store %17, %11 : !llvm.ptr<ptr<i16>>
    llvm.store %43, %13 : !llvm.ptr<ptr<i16>>
    %53 = llvm.getelementptr %17[%7] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    llvm.store %53, %47 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE3endEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %7 = llvm.getelementptr %6[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
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
  llvm.func linkonce_odr @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64 {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%1) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    llvm.return %2 : i64
  }
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
    %4 = llvm.alloca %3 x !llvm.struct<"struct.std::__is_move_insertable.34", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::__is_move_insertable.34", (i8)>>
    %5 = llvm.bitcast %4 : !llvm.ptr<struct<"struct.std::__is_move_insertable.34", (i8)>> to !llvm.ptr<i8>
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
  llvm.func linkonce_odr @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg3: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg2, %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg3, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %6 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %7 = llvm.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%5) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %9 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %10 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%8, %9, %6, %7) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %6 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: !llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ES0_(%2, %arg0) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<i32>) -> ()
    %4 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %4, %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%3, %1) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %5 = llvm.load %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.return %5 : !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
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
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    llvm.call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
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
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %5 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
    llvm.store %5, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %6 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg1) : (!llvm.ptr<i32>) -> !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>
    llvm.store %6, %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1EOS1_(%2, %1) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseImSaImEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    llvm.call @_ZNSt12_Vector_baseImSaImEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 {
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
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseImSaImEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.3", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>> to !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::integral_constant", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i64>
    llvm.return %2 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE14_S_do_relocateEPmS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %0 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg1: !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> {
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
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE10deallocateERS0_Pmm(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.3", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, !llvm.ptr<i64>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt12_Vector_baseIsSaIsEE12_Vector_implC1Ev(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    llvm.call @_ZNSt12_Vector_baseIsSaIsEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> i64 {
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
  llvm.func linkonce_odr @_ZNKSt12_Vector_baseIsSaIsEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator.18", (i8)>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>> to !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    %4 = llvm.select %3, %1, %2 : i1, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
    llvm.return %4 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<"struct.std::integral_constant", (i8)>) -> i8 {
    %0 = llvm.mlir.constant(1 : i8) : i8
    llvm.return %0 : i8
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg1: i64) -> !llvm.ptr<i16> {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = llvm.call @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i16>
    llvm.return %2 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE14_S_do_relocateEPsS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg4: !llvm.struct<"struct.std::integral_constant", (i8)>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %7 = llvm.call @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %7 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPsEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPsEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, %arg1: !llvm.ptr<i16>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %arg1, %0 : !llvm.ptr<ptr<i16>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZSt8_DestroyIPsEvT_S1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE10deallocateERS0_Psm(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator.18", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>
    llvm.call @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%0, %arg1, %arg2) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, !llvm.ptr<i16>, i64) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImE9constructImJRKmEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>) {
    %0 = llvm.load %arg2 : !llvm.ptr<i64>
    llvm.store %0, %arg1 : !llvm.ptr<i64>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorImSaImEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorImSaImEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.br ^bb9(%20 : i64)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%14 : i64)
  ^bb9(%21: i64):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    llvm.return %21 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxmiIPmSt6vectorImSaImEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i64>>
    %3 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.ptrtoint %2 : !llvm.ptr<i64> to i64
    %6 = llvm.ptrtoint %4 : !llvm.ptr<i64> to i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.return %8 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<ptr<i64>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.return %0 : !llvm.ptr<ptr<i64>>
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> {
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
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPmES1_mET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.struct<"class.std::move_iterator", (ptr<i64>)>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
    llvm.return %9 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPmSt6vectorImSaImEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>, %arg1: !llvm.ptr<ptr<i64>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i64>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.27", (ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i64>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsE9constructIsJRKsEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>) {
    %0 = llvm.load %arg2 : !llvm.ptr<i16>
    llvm.store %0, %arg1 : !llvm.ptr<i16>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNKSt6vectorIsSaIsEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 {
    %0 = llvm.mlir.constant(true) : i1
    %1 = llvm.mlir.constant(1 : i64) : i64
    %2 = llvm.mlir.undef : i64
    %3 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %3 : !llvm.ptr<i64>
    %4 = llvm.alloca %1 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %2, %4 : !llvm.ptr<i64>
    llvm.store %arg1, %4 : !llvm.ptr<i64>
    %5 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %6 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.load %4 : !llvm.ptr<i64>
    %9 = llvm.icmp "slt" %7, %8 : i64
    llvm.cond_br %9, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.call @_ZSt20__throw_length_errorPKc(%arg2) : (!llvm.ptr<i8>) -> ()
    llvm.br ^bb2
  ^bb2:  // 2 preds: ^bb0, ^bb1
    %10 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %11 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    llvm.store %11, %3 : !llvm.ptr<i64>
    %12 = llvm.call @_ZSt3maxImERKT_S2_S2_(%3, %4) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %13 = llvm.load %12 : !llvm.ptr<i64>
    %14 = llvm.add %10, %13  : i64
    %15 = llvm.call @_ZNKSt6vectorIsSaIsEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %16 = llvm.icmp "slt" %14, %15 : i64
    llvm.cond_br %16, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    llvm.br ^bb5(%0 : i1)
  ^bb4:  // pred: ^bb2
    %17 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    %18 = llvm.icmp "sgt" %14, %17 : i64
    llvm.br ^bb5(%18 : i1)
  ^bb5(%19: i1):  // 2 preds: ^bb3, ^bb4
    llvm.br ^bb6
  ^bb6:  // pred: ^bb5
    llvm.cond_br %19, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    %20 = llvm.call @_ZNKSt6vectorIsSaIsEE8max_sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> i64
    llvm.br ^bb9(%20 : i64)
  ^bb8:  // pred: ^bb6
    llvm.br ^bb9(%14 : i64)
  ^bb9(%21: i64):  // 2 preds: ^bb7, ^bb8
    llvm.br ^bb10
  ^bb10:  // pred: ^bb9
    llvm.return %21 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxxmiIPsSt6vectorIsSaIsEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> i64 {
    %0 = llvm.mlir.constant(2 : i64) : i64
    %1 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %2 = llvm.load %1 : !llvm.ptr<ptr<i16>>
    %3 = llvm.call @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i16>>
    %5 = llvm.ptrtoint %2 : !llvm.ptr<i16> to i64
    %6 = llvm.ptrtoint %4 : !llvm.ptr<i16> to i64
    %7 = llvm.sub %5, %6  : i64
    %8 = llvm.sdiv %7, %0  : i64
    llvm.return %8 : i64
  }
  llvm.func linkonce_odr @_ZNSt6vectorIsSaIsEE5beginEv(%arg0: !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    %4 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>
    %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%2, %7) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<ptr<i16>>) -> ()
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.store %8, %1 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.call @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1EOS5_(%3, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> ()
    %9 = llvm.load %3 : !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>
    llvm.return %9 : !llvm.struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEE4baseEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.return %0 : !llvm.ptr<ptr<i16>>
  }
  llvm.func linkonce_odr @_ZSt34__uninitialized_move_if_noexcept_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %5 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg0) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
    llvm.store %5, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%4, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %6 = llvm.call @_ZSt32__make_move_if_noexcept_iteratorIsSt13move_iteratorIPsEET0_PT_(%arg1) : (!llvm.ptr<i16>) -> !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>
    llvm.store %6, %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1EOS1_(%2, %1) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %7 = llvm.load %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %8 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %9 = llvm.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPsES1_sET0_T_S4_S3_RSaIT1_E(%7, %8, %arg2, %arg3) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %9 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx17__normal_iteratorIPsSt6vectorIsSaIsEEEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>, %arg1: !llvm.ptr<ptr<i16>>) {
    %0 = llvm.load %arg1 : !llvm.ptr<ptr<i16>>
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.__gnu_cxx::__normal_iterator.28", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    llvm.store %0, %1 : !llvm.ptr<ptr<i16>>
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
  llvm.func linkonce_odr @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %7 = llvm.call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, %arg1: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) {
    %0 = llvm.getelementptr %arg1[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    %2 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    llvm.store %1, %2 : !llvm.ptr<ptr<i32>>
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, %arg1: !llvm.ptr<i32>) {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
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
  llvm.func linkonce_odr @_ZSt3maxImERKT_S2_S2_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>) -> !llvm.ptr<i64> {
    %0 = llvm.load %arg0 : !llvm.ptr<i64>
    %1 = llvm.load %arg1 : !llvm.ptr<i64>
    %2 = llvm.icmp "slt" %0, %1 : i64
    %3 = llvm.select %2, %arg1, %arg0 : i1, !llvm.ptr<i64>
    llvm.return %3 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @_ZNSaImEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) {
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
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaImEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(1152921504606846975 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i64> {
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
  llvm.func linkonce_odr @_ZSt12__relocate_aIPmS0_SaImEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> {
    %0 = llvm.call @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<i64>, !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64>
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
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImE10deallocateEPmm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>, %arg1: !llvm.ptr<i64>, %arg2: i64) {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i64> to !llvm.ptr<i8>
    llvm.call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSaIsEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) {
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
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIsEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(4611686018427387903 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsE8allocateEmPKv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> !llvm.ptr<i16> {
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
  llvm.func linkonce_odr @_ZSt12__relocate_aIPsS0_SaIsEET0_T_S3_S2_RT1_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> {
    %0 = llvm.call @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0, %arg1, %arg2, %arg3) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16>
    llvm.return %0 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt18uninitialized_copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %7 = llvm.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %7 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNSt12_Destroy_auxILb1EE9__destroyIPsEEvT_S3_(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsE10deallocateEPsm(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>, %arg1: !llvm.ptr<i16>, %arg2: i64) {
    %0 = llvm.bitcast %arg1 : !llvm.ptr<i16> to !llvm.ptr<i8>
    llvm.call @_ZdlPv(%0) : (!llvm.ptr<i8>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    llvm.return %0 : i64
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
  llvm.func linkonce_odr @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %7 = llvm.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorImEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorImE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.4", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(1152921504606846975 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func @_ZSt17__throw_bad_allocv() attributes {sym_visibility = "private"}
  llvm.func @_Znwm(i64) -> !llvm.ptr<i8> attributes {sym_visibility = "private"}
  llvm.func linkonce_odr @_ZSt14__relocate_a_1ImmENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i64>, %arg1: !llvm.ptr<i64>, %arg2: !llvm.ptr<i64>, %arg3: !llvm.ptr<struct<"class.std::allocator.3", (i8)>>) -> !llvm.ptr<i64> {
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
  llvm.func linkonce_odr @_ZN9__gnu_cxx13new_allocatorIsEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>) {
    llvm.return
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorIsE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator.19", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(4611686018427387903 : i64) : i64
    llvm.return %0 : i64
  }
  llvm.func linkonce_odr @_ZSt14__relocate_a_1IssENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: !llvm.ptr<i16>, %arg1: !llvm.ptr<i16>, %arg2: !llvm.ptr<i16>, %arg3: !llvm.ptr<struct<"class.std::allocator.18", (i8)>>) -> !llvm.ptr<i16> {
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
  llvm.func linkonce_odr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPsES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %7 = llvm.call @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %7 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 {
    %0 = llvm.mlir.constant(2305843009213693951 : i64) : i64
    llvm.return %0 : i64
  }
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
  llvm.func linkonce_odr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %7 = llvm.call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%5, %6, %arg2) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %7 : !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZSt4copyISt13move_iteratorIPsES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg1: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>, %arg2: !llvm.ptr<i16>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %6 = llvm.call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%5) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16>
    llvm.call @_ZNSt13move_iteratorIPsEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>, !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %8 = llvm.call @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%7) : (!llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16>
    %9 = llvm.call @_ZSt14__copy_move_a2ILb1EPsS0_ET1_T0_S2_S1_(%6, %8, %arg2) : (!llvm.ptr<i16>, !llvm.ptr<i16>, !llvm.ptr<i16>) -> !llvm.ptr<i16>
    llvm.return %9 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg1: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %4 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %4 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg1, %3 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%2, %4) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %5 = llvm.load %2 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %6 = llvm.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%5) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32>
    llvm.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%1, %3) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>, !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %8 = llvm.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%7) : (!llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32>
    %9 = llvm.call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%6, %8, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %9 : !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZSt12__miter_baseIPsEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)>) -> !llvm.ptr<i16> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.26", (ptr<i16>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    llvm.store %arg0, %1 : !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>
    %2 = llvm.call @_ZNKSt13move_iteratorIPsE4baseEv(%1) : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<i16>
    llvm.return %2 : !llvm.ptr<i16>
  }
  llvm.func linkonce_odr @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> {
    %0 = llvm.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.return %0 : !llvm.ptr<i32>
  }
  llvm.func linkonce_odr @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)>) -> !llvm.ptr<i32> {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.std::move_iterator.29", (ptr<i32>)> : (i64) -> !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    llvm.store %arg0, %1 : !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>
    %2 = llvm.call @_ZNKSt13move_iteratorIPiE4baseEv(%1) : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<i32>
    llvm.return %2 : !llvm.ptr<i32>
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
  llvm.func linkonce_odr @_ZNKSt13move_iteratorIPsE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<i16> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.26", (ptr<i16>)>>) -> !llvm.ptr<ptr<i16>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i16>>
    llvm.return %1 : !llvm.ptr<i16>
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
  llvm.func linkonce_odr @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: !llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<i32> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::move_iterator.29", (ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    llvm.return %1 : !llvm.ptr<i32>
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

