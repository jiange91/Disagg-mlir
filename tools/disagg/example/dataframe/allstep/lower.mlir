module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid5(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid11(i32, i16)
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid12(i32, i16)
  llvm.func @cache_request_impl_12(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid3(i32, i16)
  llvm.func @cache_request_impl_3(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid4(i32, i16)
  llvm.func @cache_request_impl_4(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_11(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_5(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid7(i32, i16)
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_7(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_10(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_9(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_8(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_6(i32, i64, i32, i8) -> i32
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
  llvm.mlir.global internal constant @str10("Total: %.6f s\0A\00") {addr_space = 0 : i32}
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
    %0 = llvm.mlir.constant(8 : i32) : i32
    %1 = llvm.mlir.constant(294912 : i32) : i32
    %2 = llvm.mlir.constant(8589934592 : i64) : i64
    %3 = llvm.mlir.constant(4294967296 : i64) : i64
    %4 = llvm.mlir.constant(5368709120 : i64) : i64
    %5 = llvm.mlir.constant(7516192768 : i64) : i64
    %6 = llvm.mlir.constant(11811160064 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(8192 : i64) : i64
    %11 = llvm.mlir.constant(-8192 : i64) : i64
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : i8) : i8
    %15 = llvm.mlir.constant(405504 : i32) : i32
    %16 = llvm.mlir.constant(2 : i64) : i64
    %17 = llvm.mlir.constant(1024 : index) : i64
    %18 = llvm.mlir.constant(1 : index) : i64
    %19 = llvm.mlir.constant(2 : i32) : i32
    %20 = llvm.mlir.constant(1024 : i64) : i64
    %21 = llvm.mlir.constant(1023 : i64) : i64
    %22 = llvm.mlir.constant(3.1415926535897931 : f64) : f64
    %23 = llvm.mlir.constant(1.800000e+02 : f64) : f64
    %24 = llvm.mlir.constant(2.000000e+00 : f64) : f64
    %25 = llvm.mlir.constant(6.371000e+03 : f64) : f64
    %26 = llvm.mlir.constant(310 : i32) : i32
    %27 = llvm.mlir.constant(309 : i32) : i32
    %28 = llvm.mlir.constant(308 : i32) : i32
    %29 = llvm.mlir.constant(1 : i64) : i64
    %30 = llvm.alloca %29 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %31 = llvm.alloca %29 x !llvm.struct<"class.anon.14", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.14", (i8)>>
    %32 = llvm.alloca %29 x !llvm.struct<"class.anon.14", (i8)> : (i64) -> !llvm.ptr<struct<"class.anon.14", (i8)>>
    %33 = llvm.mlir.addressof @str25 : !llvm.ptr<array<39 x i8>>
    %34 = llvm.getelementptr %33[0, 0] : (!llvm.ptr<array<39 x i8>>) -> !llvm.ptr<i8>
    %35 = llvm.call @printf(%34) : (!llvm.ptr<i8>) -> i32
    %36 = llvm.mlir.addressof @pick_long_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %37 = llvm.load %36 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %38 = llvm.mlir.addressof @pick_lat_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %39 = llvm.load %38 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %40 = llvm.mlir.addressof @drop_long_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %41 = llvm.load %40 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %42 = llvm.mlir.addressof @drop_lat_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %43 = llvm.load %42 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %44 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%37) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %45 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__3(%39) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %46 = llvm.icmp "eq" %44, %45 : i64
    llvm.cond_br %46, ^bb1, ^bb2
  ^bb1:  // pred: ^bb0
    llvm.br ^bb3
  ^bb2:  // pred: ^bb0
    %47 = llvm.mlir.addressof @str26 : !llvm.ptr<array<58 x i8>>
    %48 = llvm.getelementptr %47[0, 0] : (!llvm.ptr<array<58 x i8>>) -> !llvm.ptr<i8>
    %49 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
    %50 = llvm.getelementptr %49[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %51 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
    %52 = llvm.getelementptr %51[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%48, %50, %28, %52) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb3
  ^bb3:  // 2 preds: ^bb1, ^bb2
    %53 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%37) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %54 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__2(%41) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %55 = llvm.icmp "eq" %53, %54 : i64
    llvm.cond_br %55, ^bb4, ^bb5
  ^bb4:  // pred: ^bb3
    llvm.br ^bb6
  ^bb5:  // pred: ^bb3
    %56 = llvm.mlir.addressof @str29 : !llvm.ptr<array<60 x i8>>
    %57 = llvm.getelementptr %56[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %58 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
    %59 = llvm.getelementptr %58[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %60 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
    %61 = llvm.getelementptr %60[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%57, %59, %27, %61) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb6
  ^bb6:  // 2 preds: ^bb4, ^bb5
    %62 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__4(%37) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %63 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__1(%43) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %64 = llvm.icmp "eq" %62, %63 : i64
    llvm.cond_br %64, ^bb7, ^bb8
  ^bb7:  // pred: ^bb6
    llvm.br ^bb9
  ^bb8:  // pred: ^bb6
    %65 = llvm.mlir.addressof @str30 : !llvm.ptr<array<59 x i8>>
    %66 = llvm.getelementptr %65[0, 0] : (!llvm.ptr<array<59 x i8>>) -> !llvm.ptr<i8>
    %67 = llvm.mlir.addressof @str27 : !llvm.ptr<array<56 x i8>>
    %68 = llvm.getelementptr %67[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
    %69 = llvm.mlir.addressof @str28 : !llvm.ptr<array<43 x i8>>
    %70 = llvm.getelementptr %69[0, 0] : (!llvm.ptr<array<43 x i8>>) -> !llvm.ptr<i8>
    llvm.call @__assert_fail(%66, %68, %26, %70) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i32, !llvm.ptr<i8>) -> ()
    llvm.br ^bb9
  ^bb9:  // 2 preds: ^bb7, ^bb8
    %71 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__3(%39) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    %72 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %73 = llvm.load %72 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %74 = llvm.add %71, %21  : i64
    %75 = llvm.sdiv %74, %20  : i64
    %76 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    %77 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%73, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<f64> to i64
    %79 = llvm.and %78, %11  : i64
    %80 = llvm.udiv %79, %10  : i64
    %81 = llvm.srem %80, %9  : i64
    %82 = llvm.trunc %81 : i64 to i32
    %83 = llvm.call @cache_request_impl_6(%8, %79, %82, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %82, %76 : !llvm.ptr<i32>
    %84 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    %85 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%41, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<f64> to i64
    %87 = llvm.and %86, %11  : i64
    %88 = llvm.udiv %87, %10  : i64
    %89 = llvm.srem %88, %9  : i64
    %90 = llvm.trunc %89 : i64 to i32
    %91 = llvm.call @cache_request_impl_8(%8, %87, %90, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %90, %84 : !llvm.ptr<i32>
    %92 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    %93 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%39, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %94 = llvm.ptrtoint %93 : !llvm.ptr<f64> to i64
    %95 = llvm.and %94, %11  : i64
    %96 = llvm.udiv %95, %10  : i64
    %97 = llvm.srem %96, %9  : i64
    %98 = llvm.trunc %97 : i64 to i32
    %99 = llvm.call @cache_request_impl_9(%8, %95, %98, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %98, %92 : !llvm.ptr<i32>
    %100 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    %101 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%37, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %102 = llvm.ptrtoint %101 : !llvm.ptr<f64> to i64
    %103 = llvm.and %102, %11  : i64
    %104 = llvm.udiv %103, %10  : i64
    %105 = llvm.srem %104, %9  : i64
    %106 = llvm.trunc %105 : i64 to i32
    %107 = llvm.call @cache_request_impl_10(%8, %103, %106, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %106, %100 : !llvm.ptr<i32>
    %108 = llvm.alloca %19 x i32 : (i32) -> !llvm.ptr<i32>
    %109 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%43, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %110 = llvm.ptrtoint %109 : !llvm.ptr<f64> to i64
    %111 = llvm.and %110, %11  : i64
    %112 = llvm.udiv %111, %10  : i64
    %113 = llvm.srem %112, %9  : i64
    %114 = llvm.trunc %113 : i64 to i32
    %115 = llvm.call @cache_request_impl_7(%8, %111, %114, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %114, %108 : !llvm.ptr<i32>
    llvm.br ^bb10(%13 : i64)
  ^bb10(%116: i64):  // 2 preds: ^bb9, ^bb20
    %117 = llvm.icmp "slt" %116, %75 : i64
    llvm.cond_br %117, ^bb11, ^bb21
  ^bb11:  // pred: ^bb10
    %118 = llvm.add %116, %29  : i64
    %119 = llvm.icmp "slt" %118, %75 : i64
    llvm.cond_br %119, ^bb12, ^bb13
  ^bb12:  // pred: ^bb11
    %120 = llvm.srem %118, %16  : i64
    %121 = llvm.trunc %120 : i64 to i32
    %122 = llvm.mul %118, %17  : i64
    %123 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%73, %122) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %124 = llvm.ptrtoint %123 : !llvm.ptr<f64> to i64
    %125 = llvm.and %124, %11  : i64
    %126 = llvm.udiv %125, %10  : i64
    %127 = llvm.srem %126, %9  : i64
    %128 = llvm.trunc %127 : i64 to i32
    %129 = llvm.call @cache_request_impl_6(%8, %125, %128, %7) : (i32, i64, i32, i8) -> i32
    %130 = llvm.sext %121 : i32 to i64
    %131 = llvm.getelementptr %76[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %128, %131 : !llvm.ptr<i32>
    %132 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%41, %122) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %133 = llvm.ptrtoint %132 : !llvm.ptr<f64> to i64
    %134 = llvm.and %133, %11  : i64
    %135 = llvm.udiv %134, %10  : i64
    %136 = llvm.srem %135, %9  : i64
    %137 = llvm.trunc %136 : i64 to i32
    %138 = llvm.call @cache_request_impl_8(%8, %134, %137, %7) : (i32, i64, i32, i8) -> i32
    %139 = llvm.getelementptr %84[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %137, %139 : !llvm.ptr<i32>
    %140 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%39, %122) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %141 = llvm.ptrtoint %140 : !llvm.ptr<f64> to i64
    %142 = llvm.and %141, %11  : i64
    %143 = llvm.udiv %142, %10  : i64
    %144 = llvm.srem %143, %9  : i64
    %145 = llvm.trunc %144 : i64 to i32
    %146 = llvm.call @cache_request_impl_9(%8, %142, %145, %7) : (i32, i64, i32, i8) -> i32
    %147 = llvm.getelementptr %92[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %145, %147 : !llvm.ptr<i32>
    %148 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%37, %122) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %149 = llvm.ptrtoint %148 : !llvm.ptr<f64> to i64
    %150 = llvm.and %149, %11  : i64
    %151 = llvm.udiv %150, %10  : i64
    %152 = llvm.srem %151, %9  : i64
    %153 = llvm.trunc %152 : i64 to i32
    %154 = llvm.call @cache_request_impl_10(%8, %150, %153, %7) : (i32, i64, i32, i8) -> i32
    %155 = llvm.getelementptr %100[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %153, %155 : !llvm.ptr<i32>
    %156 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%43, %122) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<f64> to i64
    %158 = llvm.and %157, %11  : i64
    %159 = llvm.udiv %158, %10  : i64
    %160 = llvm.srem %159, %9  : i64
    %161 = llvm.trunc %160 : i64 to i32
    %162 = llvm.call @cache_request_impl_7(%8, %158, %161, %7) : (i32, i64, i32, i8) -> i32
    %163 = llvm.getelementptr %108[%130] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %161, %163 : !llvm.ptr<i32>
    llvm.br ^bb13
  ^bb13:  // 2 preds: ^bb11, ^bb12
    %164 = llvm.mul %116, %17  : i64
    %165 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%73, %164) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %166 = llvm.srem %116, %16  : i64
    %167 = llvm.getelementptr %76[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %168 = llvm.load %167 : !llvm.ptr<i32>
    %169 = llvm.ptrtoint %165 : !llvm.ptr<f64> to i64
    %170 = llvm.sext %168 : i32 to i64
    %171 = llvm.mul %170, %10  : i64
    %172 = llvm.srem %169, %10  : i64
    %173 = llvm.add %171, %172  : i64
    %174 = llvm.add %173, %6  : i64
    %175 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %176 = llvm.load %175 : !llvm.ptr<ptr<i8>>
    %177 = llvm.getelementptr %176[%174] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %178 = llvm.bitcast %177 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %179 = llvm.add %168, %15  : i32
    %180 = llvm.sext %179 : i32 to i64
    %181 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %182 = llvm.getelementptr %181[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %183 = llvm.getelementptr %182[%180] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %184 = llvm.getelementptr %183[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %185 = llvm.load %184 : !llvm.ptr<i8>
    %186 = llvm.or %185, %14  : i8
    llvm.store %186, %184 : !llvm.ptr<i8>
    %187 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%41, %164) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %188 = llvm.getelementptr %84[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %189 = llvm.load %188 : !llvm.ptr<i32>
    %190 = llvm.ptrtoint %187 : !llvm.ptr<f64> to i64
    %191 = llvm.sext %189 : i32 to i64
    %192 = llvm.mul %191, %10  : i64
    %193 = llvm.srem %190, %10  : i64
    %194 = llvm.add %192, %193  : i64
    %195 = llvm.add %194, %5  : i64
    %196 = llvm.load %175 : !llvm.ptr<ptr<i8>>
    %197 = llvm.getelementptr %196[%195] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %198 = llvm.bitcast %197 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %199 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%39, %164) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %200 = llvm.getelementptr %92[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %201 = llvm.load %200 : !llvm.ptr<i32>
    %202 = llvm.ptrtoint %199 : !llvm.ptr<f64> to i64
    %203 = llvm.sext %201 : i32 to i64
    %204 = llvm.mul %203, %10  : i64
    %205 = llvm.srem %202, %10  : i64
    %206 = llvm.add %204, %205  : i64
    %207 = llvm.add %206, %4  : i64
    %208 = llvm.load %175 : !llvm.ptr<ptr<i8>>
    %209 = llvm.getelementptr %208[%207] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %210 = llvm.bitcast %209 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %211 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%37, %164) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %212 = llvm.getelementptr %100[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %213 = llvm.load %212 : !llvm.ptr<i32>
    %214 = llvm.ptrtoint %211 : !llvm.ptr<f64> to i64
    %215 = llvm.sext %213 : i32 to i64
    %216 = llvm.mul %215, %10  : i64
    %217 = llvm.srem %214, %10  : i64
    %218 = llvm.add %216, %217  : i64
    %219 = llvm.add %218, %3  : i64
    %220 = llvm.load %175 : !llvm.ptr<ptr<i8>>
    %221 = llvm.getelementptr %220[%219] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %222 = llvm.bitcast %221 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %223 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%43, %164) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %224 = llvm.getelementptr %108[%166] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %225 = llvm.load %224 : !llvm.ptr<i32>
    %226 = llvm.ptrtoint %223 : !llvm.ptr<f64> to i64
    %227 = llvm.sext %225 : i32 to i64
    %228 = llvm.mul %227, %10  : i64
    %229 = llvm.srem %226, %10  : i64
    %230 = llvm.add %228, %229  : i64
    %231 = llvm.add %230, %2  : i64
    %232 = llvm.load %175 : !llvm.ptr<ptr<i8>>
    %233 = llvm.getelementptr %232[%231] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %234 = llvm.bitcast %233 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %235 = llvm.add %225, %1  : i32
    %236 = llvm.sext %235 : i32 to i64
    %237 = llvm.getelementptr %182[%236] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %238 = llvm.getelementptr %237[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %239 = llvm.load %238 : !llvm.ptr<i16>
    llvm.call @poll_qid7(%0, %239) : (i32, i16) -> ()
    %240 = llvm.mul %118, %20  : i64
    %241 = llvm.icmp "sgt" %71, %240 : i64
    llvm.cond_br %241, ^bb14, ^bb15
  ^bb14:  // pred: ^bb13
    llvm.br ^bb16(%20 : i64)
  ^bb15:  // pred: ^bb13
    %242 = llvm.mul %116, %20  : i64
    %243 = llvm.sub %71, %242  : i64
    llvm.br ^bb16(%243 : i64)
  ^bb16(%244: i64):  // 2 preds: ^bb14, ^bb15
    llvm.br ^bb17
  ^bb17:  // pred: ^bb16
    %245 = llvm.mul %116, %20  : i64
    llvm.br ^bb18(%13 : i64)
  ^bb18(%246: i64):  // 2 preds: ^bb17, ^bb19
    %247 = llvm.icmp "slt" %246, %244 : i64
    llvm.cond_br %247, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %248 = llvm.add %246, %245  : i64
    %249 = llvm.getelementptr %178[%246] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %250 = llvm.getelementptr %198[%246] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %251 = llvm.getelementptr %210[%246] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %252 = llvm.getelementptr %222[%246] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %253 = llvm.getelementptr %234[%246] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %254 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%73, %248) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %255 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__3(%39, %248) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %256 = llvm.load %251 : !llvm.ptr<f64>
    %257 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__4(%37, %248) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %258 = llvm.load %252 : !llvm.ptr<f64>
    %259 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__1(%43, %248) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %260 = llvm.load %253 : !llvm.ptr<f64>
    %261 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__2(%41, %248) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %262 = llvm.load %250 : !llvm.ptr<f64>
    %263 = llvm.fsub %260, %256  : f64
    %264 = llvm.fmul %263, %22  : f64
    %265 = llvm.fdiv %264, %23  : f64
    %266 = llvm.fsub %262, %258  : f64
    %267 = llvm.fmul %266, %22  : f64
    %268 = llvm.fdiv %267, %23  : f64
    %269 = llvm.fmul %256, %22  : f64
    %270 = llvm.fdiv %269, %23  : f64
    %271 = llvm.fmul %260, %22  : f64
    %272 = llvm.fdiv %271, %23  : f64
    %273 = llvm.fdiv %265, %24  : f64
    %274 = "llvm.intr.sin"(%273) : (f64) -> f64
    %275 = "llvm.intr.pow"(%274, %24) : (f64, f64) -> f64
    %276 = llvm.fdiv %268, %24  : f64
    %277 = "llvm.intr.sin"(%276) : (f64) -> f64
    %278 = "llvm.intr.pow"(%277, %24) : (f64, f64) -> f64
    %279 = "llvm.intr.cos"(%270) : (f64) -> f64
    %280 = llvm.fmul %278, %279  : f64
    %281 = "llvm.intr.cos"(%272) : (f64) -> f64
    %282 = llvm.fmul %280, %281  : f64
    %283 = llvm.fadd %275, %282  : f64
    %284 = "llvm.intr.sqrt"(%283) : (f64) -> f64
    %285 = llvm.call @asin(%284) : (f64) -> f64
    %286 = llvm.fmul %285, %24  : f64
    %287 = llvm.fmul %286, %25  : f64
    llvm.store %287, %249 : !llvm.ptr<f64>
    %288 = llvm.add %246, %18  : i64
    llvm.br ^bb18(%288 : i64)
  ^bb20:  // pred: ^bb18
    %289 = llvm.add %116, %18  : i64
    llvm.br ^bb10(%289 : i64)
  ^bb21:  // pred: ^bb10
    llvm.call @_Z12hvs_set_sizem(%71) : (i64) -> ()
    %290 = llvm.load %32 : !llvm.ptr<struct<"class.anon.14", (i8)>>
    llvm.store %290, %31 : !llvm.ptr<struct<"class.anon.14", (i8)>>
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%30) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_Z20get_vid_by_haversineIZ35calculate_haversine_distance_columnvE3$_0iEvRT_RSt6vectorIT0_SaIS4_EE(%31, %30) : (!llvm.ptr<struct<"class.anon.14", (i8)>>, !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %291 = llvm.mlir.addressof @str31 : !llvm.ptr<array<60 x i8>>
    %292 = llvm.getelementptr %291[0, 0] : (!llvm.ptr<array<60 x i8>>) -> !llvm.ptr<i8>
    %293 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%30) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %294 = llvm.call @printf(%292, %293) : (!llvm.ptr<i8>, i64) -> i32
    %295 = llvm.mlir.addressof @str15 : !llvm.ptr<array<2 x i8>>
    %296 = llvm.getelementptr %295[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %297 = llvm.call @printf(%296) : (!llvm.ptr<i8>) -> i32
    llvm.return
  }
  llvm.func linkonce_odr @_Z29analyze_trip_durations_of_dayIsEvPKc(%arg0: !llvm.ptr<i8>) {
    %0 = llvm.mlir.constant(12 : i32) : i32
    %1 = llvm.mlir.constant(442368 : i32) : i32
    %2 = llvm.mlir.constant(12884901888 : i64) : i64
    %3 = llvm.mlir.constant(10737418240 : i64) : i64
    %4 = llvm.mlir.constant(9663676416 : i64) : i64
    %5 = llvm.mlir.constant(2048 : i64) : i64
    %6 = llvm.mlir.constant(-2048 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(8192 : i64) : i64
    %11 = llvm.mlir.constant(-8192 : i64) : i64
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : i64) : i64
    %15 = llvm.mlir.constant(1024 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : i32) : i32
    %18 = llvm.mlir.constant(1024 : i64) : i64
    %19 = llvm.mlir.constant(1023 : i64) : i64
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    %22 = llvm.mlir.undef : i64
    llvm.store %22, %21 : !llvm.ptr<i64>
    %23 = llvm.alloca %20 x i16 : (i64) -> !llvm.ptr<i16>
    %24 = llvm.mlir.undef : i16
    llvm.store %24, %23 : !llvm.ptr<i16>
    %25 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %22, %25 : !llvm.ptr<i64>
    %26 = llvm.alloca %20 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %27 = llvm.alloca %20 x !llvm.struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %28 = llvm.alloca %20 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %29 = llvm.mlir.addressof @str32 : !llvm.ptr<array<52 x i8>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %31 = llvm.call @printf(%30, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %32 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %34 = llvm.mlir.addressof @pick_day_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %36 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %37 = llvm.load %36 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %38 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__0(%33) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%28) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%28, %38) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEEC1Ev(%27) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE7reserveEm(%27, %38) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%26) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%26, %38) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %39 = llvm.add %38, %19  : i64
    %40 = llvm.sdiv %39, %18  : i64
    %41 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %42 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i64> to i64
    %44 = llvm.and %43, %11  : i64
    %45 = llvm.udiv %44, %10  : i64
    %46 = llvm.srem %45, %9  : i64
    %47 = llvm.trunc %46 : i64 to i32
    %48 = llvm.call @cache_request_impl_5(%8, %44, %47, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %47, %41 : !llvm.ptr<i32>
    %49 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %50 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i64> to i64
    %52 = llvm.and %51, %11  : i64
    %53 = llvm.udiv %52, %10  : i64
    %54 = llvm.srem %53, %9  : i64
    %55 = llvm.trunc %54 : i64 to i32
    %56 = llvm.call @cache_request_impl_11(%8, %52, %55, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %55, %49 : !llvm.ptr<i32>
    %57 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %58 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%35, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i16> to i64
    %60 = llvm.and %59, %6  : i64
    %61 = llvm.udiv %60, %5  : i64
    %62 = llvm.srem %61, %9  : i64
    %63 = llvm.trunc %62 : i64 to i32
    %64 = llvm.call @cache_request_impl_4(%8, %60, %63, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %63, %57 : !llvm.ptr<i32>
    llvm.br ^bb1(%13 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %40 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.add %65, %20  : i64
    %68 = llvm.icmp "slt" %67, %40 : i64
    llvm.cond_br %68, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %69 = llvm.srem %67, %14  : i64
    %70 = llvm.trunc %69 : i64 to i32
    %71 = llvm.mul %67, %15  : i64
    %72 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i64> to i64
    %74 = llvm.and %73, %11  : i64
    %75 = llvm.udiv %74, %10  : i64
    %76 = llvm.srem %75, %9  : i64
    %77 = llvm.trunc %76 : i64 to i32
    %78 = llvm.call @cache_request_impl_5(%8, %74, %77, %7) : (i32, i64, i32, i8) -> i32
    %79 = llvm.sext %70 : i32 to i64
    %80 = llvm.getelementptr %41[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %77, %80 : !llvm.ptr<i32>
    %81 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i64> to i64
    %83 = llvm.and %82, %11  : i64
    %84 = llvm.udiv %83, %10  : i64
    %85 = llvm.srem %84, %9  : i64
    %86 = llvm.trunc %85 : i64 to i32
    %87 = llvm.call @cache_request_impl_11(%8, %83, %86, %7) : (i32, i64, i32, i8) -> i32
    %88 = llvm.getelementptr %49[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %86, %88 : !llvm.ptr<i32>
    %89 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%35, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i16> to i64
    %91 = llvm.and %90, %6  : i64
    %92 = llvm.udiv %91, %5  : i64
    %93 = llvm.srem %92, %9  : i64
    %94 = llvm.trunc %93 : i64 to i32
    %95 = llvm.call @cache_request_impl_4(%8, %91, %94, %7) : (i32, i64, i32, i8) -> i32
    %96 = llvm.getelementptr %57[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %94, %96 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %97 = llvm.mul %65, %15  : i64
    %98 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %97) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %99 = llvm.srem %65, %14  : i64
    %100 = llvm.getelementptr %41[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.ptrtoint %98 : !llvm.ptr<i64> to i64
    %103 = llvm.sext %101 : i32 to i64
    %104 = llvm.mul %103, %10  : i64
    %105 = llvm.srem %102, %10  : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.add %106, %4  : i64
    %108 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %109 = llvm.load %108 : !llvm.ptr<ptr<i8>>
    %110 = llvm.getelementptr %109[%107] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %112 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %97) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %113 = llvm.getelementptr %49[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.load %113 : !llvm.ptr<i32>
    %115 = llvm.ptrtoint %112 : !llvm.ptr<i64> to i64
    %116 = llvm.sext %114 : i32 to i64
    %117 = llvm.mul %116, %10  : i64
    %118 = llvm.srem %115, %10  : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.add %119, %3  : i64
    %121 = llvm.load %108 : !llvm.ptr<ptr<i8>>
    %122 = llvm.getelementptr %121[%120] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %123 = llvm.bitcast %122 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %124 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%35, %97) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %125 = llvm.getelementptr %57[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.ptrtoint %124 : !llvm.ptr<i16> to i64
    %128 = llvm.sext %126 : i32 to i64
    %129 = llvm.mul %128, %5  : i64
    %130 = llvm.srem %127, %5  : i64
    %131 = llvm.add %129, %130  : i64
    %132 = llvm.add %131, %2  : i64
    %133 = llvm.load %108 : !llvm.ptr<ptr<i8>>
    %134 = llvm.getelementptr %133[%132] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %135 = llvm.bitcast %134 : !llvm.ptr<i8> to !llvm.ptr<i16>
    %136 = llvm.add %126, %1  : i32
    %137 = llvm.sext %136 : i32 to i64
    %138 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %139 = llvm.getelementptr %138[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %140 = llvm.getelementptr %139[%137] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %141 = llvm.getelementptr %140[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %142 = llvm.load %141 : !llvm.ptr<i16>
    llvm.call @poll_qid4(%0, %142) : (i32, i16) -> ()
    %143 = llvm.mul %67, %18  : i64
    %144 = llvm.icmp "sgt" %38, %143 : i64
    llvm.cond_br %144, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%18 : i64)
  ^bb6:  // pred: ^bb4
    %145 = llvm.mul %65, %18  : i64
    %146 = llvm.sub %38, %145  : i64
    llvm.br ^bb7(%146 : i64)
  ^bb7(%147: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %148 = llvm.mul %65, %18  : i64
    llvm.br ^bb9(%13 : i64)
  ^bb9(%149: i64):  // 2 preds: ^bb8, ^bb10
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %151 = llvm.add %149, %148  : i64
    %152 = llvm.getelementptr %111[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %153 = llvm.getelementptr %123[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %154 = llvm.getelementptr %135[%149] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %155 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %151) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %156 = llvm.load %152 : !llvm.ptr<i64>
    llvm.store %156, %25 : !llvm.ptr<i64>
    %157 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__1(%35, %151) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %158 = llvm.load %154 : !llvm.ptr<i16>
    llvm.store %158, %23 : !llvm.ptr<i16>
    %159 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %151) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %160 = llvm.load %153 : !llvm.ptr<i64>
    llvm.store %160, %21 : !llvm.ptr<i64>
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%28, %25) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%27, %23) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%26, %21) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    %161 = llvm.add %149, %16  : i64
    llvm.br ^bb9(%161 : i64)
  ^bb11:  // pred: ^bb9
    %162 = llvm.add %65, %16  : i64
    llvm.br ^bb1(%162 : i64)
  ^bb12:  // pred: ^bb1
    llvm.call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %28, %27, %26) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.return
  }
  llvm.func linkonce_odr @_Z31analyze_trip_durations_of_monthIsEvPKc(%arg0: !llvm.ptr<i8>) {
    %0 = llvm.mlir.constant(13 : i32) : i32
    %1 = llvm.mlir.constant(479232 : i32) : i32
    %2 = llvm.mlir.constant(13958643712 : i64) : i64
    %3 = llvm.mlir.constant(9663676416 : i64) : i64
    %4 = llvm.mlir.constant(10737418240 : i64) : i64
    %5 = llvm.mlir.constant(2048 : i64) : i64
    %6 = llvm.mlir.constant(-2048 : i64) : i64
    %7 = llvm.mlir.constant(1 : i8) : i8
    %8 = llvm.mlir.constant(0 : i32) : i32
    %9 = llvm.mlir.constant(36864 : i64) : i64
    %10 = llvm.mlir.constant(8192 : i64) : i64
    %11 = llvm.mlir.constant(-8192 : i64) : i64
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : i64) : i64
    %15 = llvm.mlir.constant(1024 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : i32) : i32
    %18 = llvm.mlir.constant(1024 : i64) : i64
    %19 = llvm.mlir.constant(1023 : i64) : i64
    %20 = llvm.mlir.constant(1 : i64) : i64
    %21 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    %22 = llvm.mlir.undef : i64
    llvm.store %22, %21 : !llvm.ptr<i64>
    %23 = llvm.alloca %20 x i16 : (i64) -> !llvm.ptr<i16>
    %24 = llvm.mlir.undef : i16
    llvm.store %24, %23 : !llvm.ptr<i16>
    %25 = llvm.alloca %20 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %22, %25 : !llvm.ptr<i64>
    %26 = llvm.alloca %20 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %27 = llvm.alloca %20 x !llvm.struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>
    %28 = llvm.alloca %20 x !llvm.struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
    %29 = llvm.mlir.addressof @str32 : !llvm.ptr<array<52 x i8>>
    %30 = llvm.getelementptr %29[0, 0] : (!llvm.ptr<array<52 x i8>>) -> !llvm.ptr<i8>
    %31 = llvm.call @printf(%30, %arg0) : (!llvm.ptr<i8>, !llvm.ptr<i8>) -> i32
    %32 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %34 = llvm.mlir.addressof @pick_month_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %35 = llvm.load %34 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>>
    %36 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %37 = llvm.load %36 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %38 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__0(%33) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%28) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%28, %38) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEEC1Ev(%27) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE7reserveEm(%27, %38) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> ()
    llvm.call @_ZNSt6vectorImSaImEEC1Ev(%26) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE7reserveEm(%26, %38) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> ()
    %39 = llvm.add %38, %19  : i64
    %40 = llvm.sdiv %39, %18  : i64
    %41 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %42 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i64> to i64
    %44 = llvm.and %43, %11  : i64
    %45 = llvm.udiv %44, %10  : i64
    %46 = llvm.srem %45, %9  : i64
    %47 = llvm.trunc %46 : i64 to i32
    %48 = llvm.call @cache_request_impl_11(%8, %44, %47, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %47, %41 : !llvm.ptr<i32>
    %49 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %50 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i64> to i64
    %52 = llvm.and %51, %11  : i64
    %53 = llvm.udiv %52, %10  : i64
    %54 = llvm.srem %53, %9  : i64
    %55 = llvm.trunc %54 : i64 to i32
    %56 = llvm.call @cache_request_impl_5(%8, %52, %55, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %55, %49 : !llvm.ptr<i32>
    %57 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %58 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%35, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %59 = llvm.ptrtoint %58 : !llvm.ptr<i16> to i64
    %60 = llvm.and %59, %6  : i64
    %61 = llvm.udiv %60, %5  : i64
    %62 = llvm.srem %61, %9  : i64
    %63 = llvm.trunc %62 : i64 to i32
    %64 = llvm.call @cache_request_impl_3(%8, %60, %63, %7) : (i32, i64, i32, i8) -> i32
    llvm.store %63, %57 : !llvm.ptr<i32>
    llvm.br ^bb1(%13 : i64)
  ^bb1(%65: i64):  // 2 preds: ^bb0, ^bb11
    %66 = llvm.icmp "slt" %65, %40 : i64
    llvm.cond_br %66, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %67 = llvm.add %65, %20  : i64
    %68 = llvm.icmp "slt" %67, %40 : i64
    llvm.cond_br %68, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %69 = llvm.srem %67, %14  : i64
    %70 = llvm.trunc %69 : i64 to i32
    %71 = llvm.mul %67, %15  : i64
    %72 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %73 = llvm.ptrtoint %72 : !llvm.ptr<i64> to i64
    %74 = llvm.and %73, %11  : i64
    %75 = llvm.udiv %74, %10  : i64
    %76 = llvm.srem %75, %9  : i64
    %77 = llvm.trunc %76 : i64 to i32
    %78 = llvm.call @cache_request_impl_11(%8, %74, %77, %7) : (i32, i64, i32, i8) -> i32
    %79 = llvm.sext %70 : i32 to i64
    %80 = llvm.getelementptr %41[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %77, %80 : !llvm.ptr<i32>
    %81 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i64> to i64
    %83 = llvm.and %82, %11  : i64
    %84 = llvm.udiv %83, %10  : i64
    %85 = llvm.srem %84, %9  : i64
    %86 = llvm.trunc %85 : i64 to i32
    %87 = llvm.call @cache_request_impl_5(%8, %83, %86, %7) : (i32, i64, i32, i8) -> i32
    %88 = llvm.getelementptr %49[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %86, %88 : !llvm.ptr<i32>
    %89 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%35, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %90 = llvm.ptrtoint %89 : !llvm.ptr<i16> to i64
    %91 = llvm.and %90, %6  : i64
    %92 = llvm.udiv %91, %5  : i64
    %93 = llvm.srem %92, %9  : i64
    %94 = llvm.trunc %93 : i64 to i32
    %95 = llvm.call @cache_request_impl_3(%8, %91, %94, %7) : (i32, i64, i32, i8) -> i32
    %96 = llvm.getelementptr %57[%79] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %94, %96 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %97 = llvm.mul %65, %15  : i64
    %98 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %97) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %99 = llvm.srem %65, %14  : i64
    %100 = llvm.getelementptr %41[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.ptrtoint %98 : !llvm.ptr<i64> to i64
    %103 = llvm.sext %101 : i32 to i64
    %104 = llvm.mul %103, %10  : i64
    %105 = llvm.srem %102, %10  : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.add %106, %4  : i64
    %108 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %109 = llvm.load %108 : !llvm.ptr<ptr<i8>>
    %110 = llvm.getelementptr %109[%107] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %111 = llvm.bitcast %110 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %112 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %97) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %113 = llvm.getelementptr %49[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %114 = llvm.load %113 : !llvm.ptr<i32>
    %115 = llvm.ptrtoint %112 : !llvm.ptr<i64> to i64
    %116 = llvm.sext %114 : i32 to i64
    %117 = llvm.mul %116, %10  : i64
    %118 = llvm.srem %115, %10  : i64
    %119 = llvm.add %117, %118  : i64
    %120 = llvm.add %119, %3  : i64
    %121 = llvm.load %108 : !llvm.ptr<ptr<i8>>
    %122 = llvm.getelementptr %121[%120] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %123 = llvm.bitcast %122 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %124 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%35, %97) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %125 = llvm.getelementptr %57[%99] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %126 = llvm.load %125 : !llvm.ptr<i32>
    %127 = llvm.ptrtoint %124 : !llvm.ptr<i16> to i64
    %128 = llvm.sext %126 : i32 to i64
    %129 = llvm.mul %128, %5  : i64
    %130 = llvm.srem %127, %5  : i64
    %131 = llvm.add %129, %130  : i64
    %132 = llvm.add %131, %2  : i64
    %133 = llvm.load %108 : !llvm.ptr<ptr<i8>>
    %134 = llvm.getelementptr %133[%132] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %135 = llvm.bitcast %134 : !llvm.ptr<i8> to !llvm.ptr<i16>
    %136 = llvm.add %126, %1  : i32
    %137 = llvm.sext %136 : i32 to i64
    %138 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %139 = llvm.getelementptr %138[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %140 = llvm.getelementptr %139[%137] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %141 = llvm.getelementptr %140[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %142 = llvm.load %141 : !llvm.ptr<i16>
    llvm.call @poll_qid3(%0, %142) : (i32, i16) -> ()
    %143 = llvm.mul %67, %18  : i64
    %144 = llvm.icmp "sgt" %38, %143 : i64
    llvm.cond_br %144, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%18 : i64)
  ^bb6:  // pred: ^bb4
    %145 = llvm.mul %65, %18  : i64
    %146 = llvm.sub %38, %145  : i64
    llvm.br ^bb7(%146 : i64)
  ^bb7(%147: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %148 = llvm.mul %65, %18  : i64
    llvm.br ^bb9(%13 : i64)
  ^bb9(%149: i64):  // 2 preds: ^bb8, ^bb10
    %150 = llvm.icmp "slt" %149, %147 : i64
    llvm.cond_br %150, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %151 = llvm.add %149, %148  : i64
    %152 = llvm.getelementptr %111[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %153 = llvm.getelementptr %123[%149] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %154 = llvm.getelementptr %135[%149] : (!llvm.ptr<i16>, i64) -> !llvm.ptr<i16>
    %155 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%33, %151) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %156 = llvm.load %153 : !llvm.ptr<i64>
    llvm.store %156, %25 : !llvm.ptr<i64>
    %157 = llvm.call @_ZNSt6vectorIsSaIsEEixEm__0(%35, %151) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, i64) -> !llvm.ptr<i16>
    %158 = llvm.load %154 : !llvm.ptr<i16>
    llvm.store %158, %23 : !llvm.ptr<i16>
    %159 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%37, %151) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %160 = llvm.load %152 : !llvm.ptr<i64>
    llvm.store %160, %21 : !llvm.ptr<i64>
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%28, %25) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    llvm.call @_ZNSt6vectorIsSaIsEE9push_backERKs(%27, %23) : (!llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<i16>) -> ()
    llvm.call @_ZNSt6vectorImSaImEE9push_backERKm(%26, %21) : (!llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<i64>) -> ()
    %161 = llvm.add %149, %16  : i64
    llvm.br ^bb9(%161 : i64)
  ^bb11:  // pred: ^bb9
    %162 = llvm.add %65, %16  : i64
    llvm.br ^bb1(%162 : i64)
  ^bb12:  // pred: ^bb1
    llvm.call @_Z24step7_process_after_copyPKcRSt6vectorImSaImEERS1_IsSaIsEES4_(%arg0, %28, %27, %26) : (!llvm.ptr<i8>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.16", (struct<"struct.std::_Vector_base.17", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl", (struct<"struct.std::_Vector_base<short, std::allocator<short>>::_Vector_impl_data", (ptr<i16>, ptr<i16>, ptr<i16>)>)>)>)>>, !llvm.ptr<struct<"class.std::vector.1", (struct<"struct.std::_Vector_base.2", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> ()
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
    %0 = llvm.mlir.constant(1 : i8) : i8
    %1 = llvm.mlir.constant(0 : i32) : i32
    %2 = llvm.mlir.constant(36864 : i64) : i64
    %3 = llvm.mlir.constant(4096 : i64) : i64
    %4 = llvm.mlir.constant(-4096 : i64) : i64
    %5 = llvm.mlir.constant(0 : i64) : i64
    %6 = llvm.mlir.constant(0 : index) : i64
    %7 = llvm.mlir.constant(2 : i64) : i64
    %8 = llvm.mlir.constant(1024 : index) : i64
    %9 = llvm.mlir.constant(1 : index) : i64
    %10 = llvm.mlir.constant(2 : i32) : i32
    %11 = llvm.mlir.constant(1024 : i64) : i64
    %12 = llvm.mlir.constant(1023 : i64) : i64
    %13 = llvm.mlir.constant(0 : i8) : i8
    %14 = llvm.mlir.constant(1 : i64) : i64
    %15 = llvm.alloca %14 x i32 : (i64) -> !llvm.ptr<i32>
    %16 = llvm.mlir.undef : i32
    llvm.store %16, %15 : !llvm.ptr<i32>
    %17 = llvm.alloca %14 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %18 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %19 = llvm.load %18 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %20 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv__0(%19) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEEC1Ev(%17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%17, %20) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %21 = llvm.add %20, %12  : i64
    %22 = llvm.sdiv %21, %11  : i64
    %23 = llvm.alloca %10 x i32 : (i32) -> !llvm.ptr<i32>
    %24 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%19, %5) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %25 = llvm.ptrtoint %24 : !llvm.ptr<i32> to i64
    %26 = llvm.and %25, %4  : i64
    %27 = llvm.udiv %26, %3  : i64
    %28 = llvm.srem %27, %2  : i64
    %29 = llvm.trunc %28 : i64 to i32
    %30 = llvm.call @cache_request_impl_12(%1, %26, %29, %0) : (i32, i64, i32, i8) -> i32
    llvm.store %29, %23 : !llvm.ptr<i32>
    llvm.br ^bb1(%6 : i64)
  ^bb1(%31: i64):  // 2 preds: ^bb0, ^bb13
    %32 = llvm.icmp "slt" %31, %22 : i64
    llvm.cond_br %32, ^bb2, ^bb14
  ^bb2:  // pred: ^bb1
    %33 = llvm.add %31, %14  : i64
    %34 = llvm.icmp "slt" %33, %22 : i64
    llvm.cond_br %34, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %35 = llvm.srem %33, %7  : i64
    %36 = llvm.trunc %35 : i64 to i32
    %37 = llvm.mul %33, %8  : i64
    %38 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%19, %37) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i32> to i64
    %40 = llvm.and %39, %4  : i64
    %41 = llvm.udiv %40, %3  : i64
    %42 = llvm.srem %41, %2  : i64
    %43 = llvm.trunc %42 : i64 to i32
    %44 = llvm.call @cache_request_impl_12(%1, %40, %43, %0) : (i32, i64, i32, i8) -> i32
    %45 = llvm.sext %36 : i32 to i64
    %46 = llvm.getelementptr %23[%45] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %43, %46 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %47 = llvm.mul %31, %8  : i64
    %48 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%19, %47) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %49 = llvm.srem %31, %7  : i64
    %50 = llvm.getelementptr %23[%49] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %51 = llvm.load %50 : !llvm.ptr<i32>
    %52 = llvm.ptrtoint %48 : !llvm.ptr<i32> to i64
    %53 = llvm.sext %51 : i32 to i64
    %54 = llvm.mul %53, %3  : i64
    %55 = llvm.srem %52, %3  : i64
    %56 = llvm.add %54, %55  : i64
    %57 = llvm.add %56, %5  : i64
    %58 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %59 = llvm.load %58 : !llvm.ptr<ptr<i8>>
    %60 = llvm.getelementptr %59[%57] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %61 = llvm.bitcast %60 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %62 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %63 = llvm.getelementptr %62[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %64 = llvm.getelementptr %63[%53] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %65 = llvm.getelementptr %64[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %66 = llvm.load %65 : !llvm.ptr<i16>
    llvm.call @poll_qid12(%1, %66) : (i32, i16) -> ()
    %67 = llvm.mul %33, %11  : i64
    %68 = llvm.icmp "sgt" %20, %67 : i64
    llvm.cond_br %68, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%11 : i64)
  ^bb6:  // pred: ^bb4
    %69 = llvm.mul %31, %11  : i64
    %70 = llvm.sub %20, %69  : i64
    llvm.br ^bb7(%70 : i64)
  ^bb7(%71: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %72 = llvm.mul %31, %11  : i64
    llvm.br ^bb9(%6 : i64)
  ^bb9(%73: i64):  // 2 preds: ^bb8, ^bb12
    %74 = llvm.icmp "slt" %73, %71 : i64
    llvm.cond_br %74, ^bb10, ^bb13
  ^bb10:  // pred: ^bb9
    %75 = llvm.add %73, %72  : i64
    %76 = llvm.getelementptr %61[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %77 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%19, %75) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %78 = llvm.load %76 : !llvm.ptr<i32>
    llvm.store %78, %15 : !llvm.ptr<i32>
    %79 = llvm.call @_Z15step1_firstTimei(%78) : (i32) -> i8
    %80 = llvm.icmp "ne" %79, %13 : i8
    llvm.cond_br %80, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%17, %15) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %81 = llvm.add %73, %9  : i64
    llvm.br ^bb9(%81 : i64)
  ^bb13:  // pred: ^bb9
    %82 = llvm.add %31, %9  : i64
    llvm.br ^bb1(%82 : i64)
  ^bb14:  // pred: ^bb1
    %83 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%17) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.return %83 : i64
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
    %0 = llvm.mlir.constant(3221225472 : i64) : i64
    %1 = llvm.mlir.constant(9663676416 : i64) : i64
    %2 = llvm.mlir.constant(4096 : i64) : i64
    %3 = llvm.mlir.constant(-4096 : i64) : i64
    %4 = llvm.mlir.constant(1 : i8) : i8
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(36864 : i64) : i64
    %7 = llvm.mlir.constant(8192 : i64) : i64
    %8 = llvm.mlir.constant(-8192 : i64) : i64
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(1024 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(2 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i64) : i64
    %16 = llvm.mlir.constant(1023 : i64) : i64
    %17 = llvm.mlir.constant(0 : i8) : i8
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.alloca %18 x i32 : (i64) -> !llvm.ptr<i32>
    %20 = llvm.mlir.undef : i32
    llvm.store %20, %19 : !llvm.ptr<i32>
    %21 = llvm.alloca %18 x i32 : (i64) -> !llvm.ptr<i32>
    llvm.store %20, %21 : !llvm.ptr<i32>
    %22 = llvm.alloca %18 x i64 : (i64) -> !llvm.ptr<i64>
    %23 = llvm.mlir.undef : i64
    llvm.store %23, %22 : !llvm.ptr<i64>
    %24 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %25 = llvm.load %24 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %26 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %27 = llvm.load %26 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %28 = llvm.mlir.addressof @psg_cnt_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %29 = llvm.load %28 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %30 = llvm.call @_ZNKSt6vectorIiSaIiEE4sizeEv__0(%27) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %30) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %31 = llvm.add %30, %16  : i64
    %32 = llvm.sdiv %31, %15  : i64
    %33 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %34 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%25, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %35 = llvm.ptrtoint %34 : !llvm.ptr<i64> to i64
    %36 = llvm.and %35, %8  : i64
    %37 = llvm.udiv %36, %7  : i64
    %38 = llvm.srem %37, %6  : i64
    %39 = llvm.trunc %38 : i64 to i32
    %40 = llvm.call @cache_request_impl_5(%5, %36, %39, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %39, %33 : !llvm.ptr<i32>
    %41 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %42 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%29, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %43 = llvm.ptrtoint %42 : !llvm.ptr<i32> to i64
    %44 = llvm.and %43, %3  : i64
    %45 = llvm.udiv %44, %2  : i64
    %46 = llvm.srem %45, %6  : i64
    %47 = llvm.trunc %46 : i64 to i32
    %48 = llvm.call @cache_request_impl_2(%5, %44, %47, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %47, %41 : !llvm.ptr<i32>
    %49 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %50 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%27, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i32> to i64
    %52 = llvm.and %51, %3  : i64
    %53 = llvm.udiv %52, %2  : i64
    %54 = llvm.srem %53, %6  : i64
    %55 = llvm.trunc %54 : i64 to i32
    %56 = llvm.call @cache_request_impl_12(%5, %52, %55, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %55, %49 : !llvm.ptr<i32>
    llvm.br ^bb1(%10 : i64)
  ^bb1(%57: i64):  // 2 preds: ^bb0, ^bb13
    %58 = llvm.icmp "slt" %57, %32 : i64
    llvm.cond_br %58, ^bb2, ^bb14
  ^bb2:  // pred: ^bb1
    %59 = llvm.add %57, %18  : i64
    %60 = llvm.icmp "slt" %59, %32 : i64
    llvm.cond_br %60, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %61 = llvm.srem %59, %11  : i64
    %62 = llvm.trunc %61 : i64 to i32
    %63 = llvm.mul %59, %12  : i64
    %64 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%25, %63) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %65 = llvm.ptrtoint %64 : !llvm.ptr<i64> to i64
    %66 = llvm.and %65, %8  : i64
    %67 = llvm.udiv %66, %7  : i64
    %68 = llvm.srem %67, %6  : i64
    %69 = llvm.trunc %68 : i64 to i32
    %70 = llvm.call @cache_request_impl_5(%5, %66, %69, %4) : (i32, i64, i32, i8) -> i32
    %71 = llvm.sext %62 : i32 to i64
    %72 = llvm.getelementptr %33[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %69, %72 : !llvm.ptr<i32>
    %73 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%29, %63) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %74 = llvm.ptrtoint %73 : !llvm.ptr<i32> to i64
    %75 = llvm.and %74, %3  : i64
    %76 = llvm.udiv %75, %2  : i64
    %77 = llvm.srem %76, %6  : i64
    %78 = llvm.trunc %77 : i64 to i32
    %79 = llvm.call @cache_request_impl_2(%5, %75, %78, %4) : (i32, i64, i32, i8) -> i32
    %80 = llvm.getelementptr %41[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %78, %80 : !llvm.ptr<i32>
    %81 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%27, %63) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %82 = llvm.ptrtoint %81 : !llvm.ptr<i32> to i64
    %83 = llvm.and %82, %3  : i64
    %84 = llvm.udiv %83, %2  : i64
    %85 = llvm.srem %84, %6  : i64
    %86 = llvm.trunc %85 : i64 to i32
    %87 = llvm.call @cache_request_impl_12(%5, %83, %86, %4) : (i32, i64, i32, i8) -> i32
    %88 = llvm.getelementptr %49[%71] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %86, %88 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %89 = llvm.mul %57, %12  : i64
    %90 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%25, %89) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %91 = llvm.srem %57, %11  : i64
    %92 = llvm.getelementptr %33[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %93 = llvm.load %92 : !llvm.ptr<i32>
    %94 = llvm.ptrtoint %90 : !llvm.ptr<i64> to i64
    %95 = llvm.sext %93 : i32 to i64
    %96 = llvm.mul %95, %7  : i64
    %97 = llvm.srem %94, %7  : i64
    %98 = llvm.add %96, %97  : i64
    %99 = llvm.add %98, %1  : i64
    %100 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %101 = llvm.load %100 : !llvm.ptr<ptr<i8>>
    %102 = llvm.getelementptr %101[%99] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %103 = llvm.bitcast %102 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %104 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%29, %89) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %105 = llvm.getelementptr %41[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %106 = llvm.load %105 : !llvm.ptr<i32>
    %107 = llvm.ptrtoint %104 : !llvm.ptr<i32> to i64
    %108 = llvm.sext %106 : i32 to i64
    %109 = llvm.mul %108, %2  : i64
    %110 = llvm.srem %107, %2  : i64
    %111 = llvm.add %109, %110  : i64
    %112 = llvm.add %111, %0  : i64
    %113 = llvm.load %100 : !llvm.ptr<ptr<i8>>
    %114 = llvm.getelementptr %113[%112] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %115 = llvm.bitcast %114 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %116 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%27, %89) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %117 = llvm.getelementptr %49[%91] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %118 = llvm.load %117 : !llvm.ptr<i32>
    %119 = llvm.ptrtoint %116 : !llvm.ptr<i32> to i64
    %120 = llvm.sext %118 : i32 to i64
    %121 = llvm.mul %120, %2  : i64
    %122 = llvm.srem %119, %2  : i64
    %123 = llvm.add %121, %122  : i64
    %124 = llvm.add %123, %9  : i64
    %125 = llvm.load %100 : !llvm.ptr<ptr<i8>>
    %126 = llvm.getelementptr %125[%124] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %127 = llvm.bitcast %126 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %128 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %129 = llvm.getelementptr %128[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %130 = llvm.getelementptr %129[%120] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %131 = llvm.getelementptr %130[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %132 = llvm.load %131 : !llvm.ptr<i16>
    llvm.call @poll_qid12(%5, %132) : (i32, i16) -> ()
    %133 = llvm.mul %59, %15  : i64
    %134 = llvm.icmp "sgt" %30, %133 : i64
    llvm.cond_br %134, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%15 : i64)
  ^bb6:  // pred: ^bb4
    %135 = llvm.mul %57, %15  : i64
    %136 = llvm.sub %30, %135  : i64
    llvm.br ^bb7(%136 : i64)
  ^bb7(%137: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %138 = llvm.mul %57, %15  : i64
    llvm.br ^bb9(%10 : i64)
  ^bb9(%139: i64):  // 2 preds: ^bb8, ^bb12
    %140 = llvm.icmp "slt" %139, %137 : i64
    llvm.cond_br %140, ^bb10, ^bb13
  ^bb10:  // pred: ^bb9
    %141 = llvm.add %139, %138  : i64
    %142 = llvm.getelementptr %103[%139] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %143 = llvm.getelementptr %115[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %144 = llvm.getelementptr %127[%139] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %145 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%25, %141) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %146 = llvm.load %142 : !llvm.ptr<i64>
    llvm.store %146, %22 : !llvm.ptr<i64>
    %147 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%27, %141) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %148 = llvm.load %144 : !llvm.ptr<i32>
    llvm.store %148, %21 : !llvm.ptr<i32>
    %149 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__0(%29, %141) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %150 = llvm.load %143 : !llvm.ptr<i32>
    llvm.store %150, %19 : !llvm.ptr<i32>
    %151 = llvm.call @_ZZ33print_passage_counts_by_vendor_idiENK3$_0clERKmRKi(%arg0, %22, %21) : (!llvm.ptr<struct<"class.anon", (ptr<i32>)>>, !llvm.ptr<i64>, !llvm.ptr<i32>) -> i8
    %152 = llvm.icmp "ne" %151, %17 : i8
    llvm.cond_br %152, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %153 = llvm.add %139, %13  : i64
    llvm.br ^bb9(%153 : i64)
  ^bb13:  // pred: ^bb9
    %154 = llvm.add %57, %13  : i64
    llvm.br ^bb1(%154 : i64)
  ^bb14:  // pred: ^bb1
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
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(1024 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(2 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i64) : i64
    %16 = llvm.mlir.constant(1023 : i64) : i64
    %17 = llvm.mlir.constant(1 : i64) : i64
    %18 = llvm.mlir.undef : i64
    %19 = llvm.alloca %17 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %18, %19 : !llvm.ptr<i64>
    %20 = llvm.alloca %17 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %18, %20 : !llvm.ptr<i64>
    %21 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %22 = llvm.load %21 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %23 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %24 = llvm.load %23 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %25 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__0(%24) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %25, %20 : !llvm.ptr<i64>
    %26 = llvm.call @_ZNKSt6vectorImSaImEE4sizeEv__1(%22) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %26, %19 : !llvm.ptr<i64>
    %27 = llvm.call @_ZSt3minImERKT_S2_S2_(%19, %20) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %28 = llvm.load %27 : !llvm.ptr<i64>
    llvm.call @_ZN11MeanVisitorImmE3preEv(%arg2) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %29 = llvm.add %28, %16  : i64
    %30 = llvm.sdiv %29, %15  : i64
    %31 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %32 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%24, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %33 = llvm.ptrtoint %32 : !llvm.ptr<i64> to i64
    %34 = llvm.and %33, %8  : i64
    %35 = llvm.udiv %34, %7  : i64
    %36 = llvm.srem %35, %6  : i64
    %37 = llvm.trunc %36 : i64 to i32
    %38 = llvm.call @cache_request_impl_5(%5, %34, %37, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %37, %31 : !llvm.ptr<i32>
    %39 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %40 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%22, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<i64> to i64
    %42 = llvm.and %41, %8  : i64
    %43 = llvm.udiv %42, %7  : i64
    %44 = llvm.srem %43, %6  : i64
    %45 = llvm.trunc %44 : i64 to i32
    %46 = llvm.call @cache_request_impl_11(%5, %42, %45, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %45, %39 : !llvm.ptr<i32>
    llvm.br ^bb1(%10 : i64)
  ^bb1(%47: i64):  // 2 preds: ^bb0, ^bb11
    %48 = llvm.icmp "slt" %47, %30 : i64
    llvm.cond_br %48, ^bb2, ^bb12
  ^bb2:  // pred: ^bb1
    %49 = llvm.add %47, %17  : i64
    %50 = llvm.icmp "slt" %49, %30 : i64
    llvm.cond_br %50, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %51 = llvm.srem %49, %11  : i64
    %52 = llvm.trunc %51 : i64 to i32
    %53 = llvm.mul %49, %12  : i64
    %54 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%24, %53) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i64> to i64
    %56 = llvm.and %55, %8  : i64
    %57 = llvm.udiv %56, %7  : i64
    %58 = llvm.srem %57, %6  : i64
    %59 = llvm.trunc %58 : i64 to i32
    %60 = llvm.call @cache_request_impl_5(%5, %56, %59, %4) : (i32, i64, i32, i8) -> i32
    %61 = llvm.sext %52 : i32 to i64
    %62 = llvm.getelementptr %31[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %59, %62 : !llvm.ptr<i32>
    %63 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%22, %53) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %64 = llvm.ptrtoint %63 : !llvm.ptr<i64> to i64
    %65 = llvm.and %64, %8  : i64
    %66 = llvm.udiv %65, %7  : i64
    %67 = llvm.srem %66, %6  : i64
    %68 = llvm.trunc %67 : i64 to i32
    %69 = llvm.call @cache_request_impl_11(%5, %65, %68, %4) : (i32, i64, i32, i8) -> i32
    %70 = llvm.getelementptr %39[%61] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %68, %70 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %71 = llvm.mul %47, %12  : i64
    %72 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%24, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %73 = llvm.srem %47, %11  : i64
    %74 = llvm.getelementptr %31[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %75 = llvm.load %74 : !llvm.ptr<i32>
    %76 = llvm.ptrtoint %72 : !llvm.ptr<i64> to i64
    %77 = llvm.sext %75 : i32 to i64
    %78 = llvm.mul %77, %7  : i64
    %79 = llvm.srem %76, %7  : i64
    %80 = llvm.add %78, %79  : i64
    %81 = llvm.add %80, %3  : i64
    %82 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %83 = llvm.load %82 : !llvm.ptr<ptr<i8>>
    %84 = llvm.getelementptr %83[%81] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %85 = llvm.bitcast %84 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %86 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%22, %71) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %87 = llvm.getelementptr %39[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.load %87 : !llvm.ptr<i32>
    %89 = llvm.ptrtoint %86 : !llvm.ptr<i64> to i64
    %90 = llvm.sext %88 : i32 to i64
    %91 = llvm.mul %90, %7  : i64
    %92 = llvm.srem %89, %7  : i64
    %93 = llvm.add %91, %92  : i64
    %94 = llvm.add %93, %2  : i64
    %95 = llvm.load %82 : !llvm.ptr<ptr<i8>>
    %96 = llvm.getelementptr %95[%94] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %97 = llvm.bitcast %96 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %98 = llvm.add %88, %1  : i32
    %99 = llvm.sext %98 : i32 to i64
    %100 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %101 = llvm.getelementptr %100[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %102 = llvm.getelementptr %101[%99] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %103 = llvm.getelementptr %102[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %104 = llvm.load %103 : !llvm.ptr<i16>
    llvm.call @poll_qid11(%0, %104) : (i32, i16) -> ()
    %105 = llvm.mul %49, %15  : i64
    %106 = llvm.icmp "sgt" %28, %105 : i64
    llvm.cond_br %106, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%15 : i64)
  ^bb6:  // pred: ^bb4
    %107 = llvm.mul %47, %15  : i64
    %108 = llvm.sub %28, %107  : i64
    llvm.br ^bb7(%108 : i64)
  ^bb7(%109: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %110 = llvm.mul %47, %15  : i64
    llvm.br ^bb9(%10 : i64)
  ^bb9(%111: i64):  // 2 preds: ^bb8, ^bb10
    %112 = llvm.icmp "slt" %111, %109 : i64
    llvm.cond_br %112, ^bb10, ^bb11
  ^bb10:  // pred: ^bb9
    %113 = llvm.add %111, %110  : i64
    %114 = llvm.getelementptr %85[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %115 = llvm.getelementptr %97[%111] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %116 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%24, %113) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %117 = llvm.load %114 : !llvm.ptr<i64>
    %118 = llvm.call @_ZNSt6vectorImSaImEEixEm__1(%22, %113) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %119 = llvm.load %115 : !llvm.ptr<i64>
    llvm.call @_ZN10MaxVisitorImmEclEmm(%arg0, %117, %119) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
    llvm.call @_ZN10MinVisitorImmEclEmm(%arg1, %117, %119) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
    llvm.call @_ZN11MeanVisitorImmEclEmm(%arg2, %117, %119) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, i64, i64) -> ()
    %120 = llvm.add %111, %13  : i64
    llvm.br ^bb9(%120 : i64)
  ^bb11:  // pred: ^bb9
    %121 = llvm.add %47, %13  : i64
    llvm.br ^bb1(%121 : i64)
  ^bb12:  // pred: ^bb1
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
    %0 = llvm.mlir.constant(9663676416 : i64) : i64
    %1 = llvm.mlir.constant(6442450944 : i64) : i64
    %2 = llvm.mlir.constant(4096 : i64) : i64
    %3 = llvm.mlir.constant(-4096 : i64) : i64
    %4 = llvm.mlir.constant(8192 : i64) : i64
    %5 = llvm.mlir.constant(-8192 : i64) : i64
    %6 = llvm.mlir.constant(1 : i8) : i8
    %7 = llvm.mlir.constant(0 : i32) : i32
    %8 = llvm.mlir.constant(36864 : i64) : i64
    %9 = llvm.mlir.constant(-1024 : i64) : i64
    %10 = llvm.mlir.constant(0 : i64) : i64
    %11 = llvm.mlir.constant(0 : index) : i64
    %12 = llvm.mlir.constant(2 : i64) : i64
    %13 = llvm.mlir.constant(1024 : index) : i64
    %14 = llvm.mlir.constant(1 : index) : i64
    %15 = llvm.mlir.constant(2 : i32) : i32
    %16 = llvm.mlir.constant(1024 : i64) : i64
    %17 = llvm.mlir.constant(1023 : i64) : i64
    %18 = llvm.mlir.constant(0 : i8) : i8
    %19 = llvm.mlir.constant(1 : i64) : i64
    %20 = llvm.alloca %19 x i32 : (i64) -> !llvm.ptr<i32>
    %21 = llvm.mlir.undef : i32
    llvm.store %21, %20 : !llvm.ptr<i32>
    %22 = llvm.alloca %19 x i8 : (i64) -> !llvm.ptr<i8>
    %23 = llvm.mlir.undef : i8
    llvm.store %23, %22 : !llvm.ptr<i8>
    %24 = llvm.alloca %19 x i64 : (i64) -> !llvm.ptr<i64>
    %25 = llvm.mlir.undef : i64
    llvm.store %25, %24 : !llvm.ptr<i64>
    %26 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %27 = llvm.load %26 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %28 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %29 = llvm.load %28 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %30 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %32 = llvm.call @_ZNKSt6vectorIcSaIcEE4sizeEv__0(%29) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %32) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %33 = llvm.add %32, %17  : i64
    %34 = llvm.sdiv %33, %16  : i64
    %35 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    %36 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%29, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %37 = llvm.ptrtoint %36 : !llvm.ptr<i8> to i64
    %38 = llvm.and %37, %9  : i64
    %39 = llvm.udiv %38, %16  : i64
    %40 = llvm.srem %39, %8  : i64
    %41 = llvm.trunc %40 : i64 to i32
    %42 = llvm.call @cache_request_impl_1(%7, %38, %41, %6) : (i32, i64, i32, i8) -> i32
    llvm.store %41, %35 : !llvm.ptr<i32>
    %43 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    %44 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%27, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<i64> to i64
    %46 = llvm.and %45, %5  : i64
    %47 = llvm.udiv %46, %4  : i64
    %48 = llvm.srem %47, %8  : i64
    %49 = llvm.trunc %48 : i64 to i32
    %50 = llvm.call @cache_request_impl_5(%7, %46, %49, %6) : (i32, i64, i32, i8) -> i32
    llvm.store %49, %43 : !llvm.ptr<i32>
    %51 = llvm.alloca %15 x i32 : (i32) -> !llvm.ptr<i32>
    %52 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %10) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %53 = llvm.ptrtoint %52 : !llvm.ptr<i32> to i64
    %54 = llvm.and %53, %3  : i64
    %55 = llvm.udiv %54, %2  : i64
    %56 = llvm.srem %55, %8  : i64
    %57 = llvm.trunc %56 : i64 to i32
    %58 = llvm.call @cache_request_impl_12(%7, %54, %57, %6) : (i32, i64, i32, i8) -> i32
    llvm.store %57, %51 : !llvm.ptr<i32>
    llvm.br ^bb1(%11 : i64)
  ^bb1(%59: i64):  // 2 preds: ^bb0, ^bb13
    %60 = llvm.icmp "slt" %59, %34 : i64
    llvm.cond_br %60, ^bb2, ^bb14
  ^bb2:  // pred: ^bb1
    %61 = llvm.add %59, %19  : i64
    %62 = llvm.icmp "slt" %61, %34 : i64
    llvm.cond_br %62, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %63 = llvm.srem %61, %12  : i64
    %64 = llvm.trunc %63 : i64 to i32
    %65 = llvm.mul %61, %13  : i64
    %66 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%29, %65) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %67 = llvm.ptrtoint %66 : !llvm.ptr<i8> to i64
    %68 = llvm.and %67, %9  : i64
    %69 = llvm.udiv %68, %16  : i64
    %70 = llvm.srem %69, %8  : i64
    %71 = llvm.trunc %70 : i64 to i32
    %72 = llvm.call @cache_request_impl_1(%7, %68, %71, %6) : (i32, i64, i32, i8) -> i32
    %73 = llvm.sext %64 : i32 to i64
    %74 = llvm.getelementptr %35[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %71, %74 : !llvm.ptr<i32>
    %75 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%27, %65) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %76 = llvm.ptrtoint %75 : !llvm.ptr<i64> to i64
    %77 = llvm.and %76, %5  : i64
    %78 = llvm.udiv %77, %4  : i64
    %79 = llvm.srem %78, %8  : i64
    %80 = llvm.trunc %79 : i64 to i32
    %81 = llvm.call @cache_request_impl_5(%7, %77, %80, %6) : (i32, i64, i32, i8) -> i32
    %82 = llvm.getelementptr %43[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %80, %82 : !llvm.ptr<i32>
    %83 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %65) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %84 = llvm.ptrtoint %83 : !llvm.ptr<i32> to i64
    %85 = llvm.and %84, %3  : i64
    %86 = llvm.udiv %85, %2  : i64
    %87 = llvm.srem %86, %8  : i64
    %88 = llvm.trunc %87 : i64 to i32
    %89 = llvm.call @cache_request_impl_12(%7, %85, %88, %6) : (i32, i64, i32, i8) -> i32
    %90 = llvm.getelementptr %51[%73] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %88, %90 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %91 = llvm.mul %59, %13  : i64
    %92 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%29, %91) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %93 = llvm.srem %59, %12  : i64
    %94 = llvm.getelementptr %35[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %95 = llvm.load %94 : !llvm.ptr<i32>
    %96 = llvm.ptrtoint %92 : !llvm.ptr<i8> to i64
    %97 = llvm.sext %95 : i32 to i64
    %98 = llvm.mul %97, %16  : i64
    %99 = llvm.srem %96, %16  : i64
    %100 = llvm.add %98, %99  : i64
    %101 = llvm.add %100, %1  : i64
    %102 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %103 = llvm.load %102 : !llvm.ptr<ptr<i8>>
    %104 = llvm.getelementptr %103[%101] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %105 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%27, %91) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %106 = llvm.getelementptr %43[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.ptrtoint %105 : !llvm.ptr<i64> to i64
    %109 = llvm.sext %107 : i32 to i64
    %110 = llvm.mul %109, %4  : i64
    %111 = llvm.srem %108, %4  : i64
    %112 = llvm.add %110, %111  : i64
    %113 = llvm.add %112, %0  : i64
    %114 = llvm.load %102 : !llvm.ptr<ptr<i8>>
    %115 = llvm.getelementptr %114[%113] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %117 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %91) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %118 = llvm.getelementptr %51[%93] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.ptrtoint %117 : !llvm.ptr<i32> to i64
    %121 = llvm.sext %119 : i32 to i64
    %122 = llvm.mul %121, %2  : i64
    %123 = llvm.srem %120, %2  : i64
    %124 = llvm.add %122, %123  : i64
    %125 = llvm.add %124, %10  : i64
    %126 = llvm.load %102 : !llvm.ptr<ptr<i8>>
    %127 = llvm.getelementptr %126[%125] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %128 = llvm.bitcast %127 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %129 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %130 = llvm.getelementptr %129[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %131 = llvm.getelementptr %130[%121] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %132 = llvm.getelementptr %131[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %133 = llvm.load %132 : !llvm.ptr<i16>
    llvm.call @poll_qid12(%7, %133) : (i32, i16) -> ()
    %134 = llvm.mul %61, %16  : i64
    %135 = llvm.icmp "sgt" %32, %134 : i64
    llvm.cond_br %135, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%16 : i64)
  ^bb6:  // pred: ^bb4
    %136 = llvm.mul %59, %16  : i64
    %137 = llvm.sub %32, %136  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb7(%138: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %139 = llvm.mul %59, %16  : i64
    llvm.br ^bb9(%11 : i64)
  ^bb9(%140: i64):  // 2 preds: ^bb8, ^bb12
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb10, ^bb13
  ^bb10:  // pred: ^bb9
    %142 = llvm.add %140, %139  : i64
    %143 = llvm.getelementptr %104[%140] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %144 = llvm.getelementptr %116[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %145 = llvm.getelementptr %128[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%27, %142) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %147 = llvm.load %144 : !llvm.ptr<i64>
    llvm.store %147, %24 : !llvm.ptr<i64>
    %148 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%29, %142) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %149 = llvm.load %143 : !llvm.ptr<i8>
    llvm.store %149, %22 : !llvm.ptr<i8>
    %150 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%31, %142) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %145 : !llvm.ptr<i32>
    llvm.store %151, %20 : !llvm.ptr<i32>
    %152 = llvm.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_0clERKmRKc(%arg0, %24, %22) : (!llvm.ptr<struct<"class.anon.6", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
    %153 = llvm.icmp "ne" %152, %18 : i8
    llvm.cond_br %153, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %20) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %154 = llvm.add %140, %14  : i64
    llvm.br ^bb9(%154 : i64)
  ^bb13:  // pred: ^bb9
    %155 = llvm.add %59, %14  : i64
    llvm.br ^bb1(%155 : i64)
  ^bb14:  // pred: ^bb1
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
    %0 = llvm.mlir.constant(9 : i32) : i32
    %1 = llvm.mlir.constant(331776 : i32) : i32
    %2 = llvm.mlir.constant(9663676416 : i64) : i64
    %3 = llvm.mlir.constant(6442450944 : i64) : i64
    %4 = llvm.mlir.constant(8192 : i64) : i64
    %5 = llvm.mlir.constant(-8192 : i64) : i64
    %6 = llvm.mlir.constant(4096 : i64) : i64
    %7 = llvm.mlir.constant(-4096 : i64) : i64
    %8 = llvm.mlir.constant(1 : i8) : i8
    %9 = llvm.mlir.constant(0 : i32) : i32
    %10 = llvm.mlir.constant(36864 : i64) : i64
    %11 = llvm.mlir.constant(-1024 : i64) : i64
    %12 = llvm.mlir.constant(0 : i64) : i64
    %13 = llvm.mlir.constant(0 : index) : i64
    %14 = llvm.mlir.constant(2 : i64) : i64
    %15 = llvm.mlir.constant(1024 : index) : i64
    %16 = llvm.mlir.constant(1 : index) : i64
    %17 = llvm.mlir.constant(2 : i32) : i32
    %18 = llvm.mlir.constant(1024 : i64) : i64
    %19 = llvm.mlir.constant(1023 : i64) : i64
    %20 = llvm.mlir.constant(0 : i8) : i8
    %21 = llvm.mlir.constant(1 : i64) : i64
    %22 = llvm.alloca %21 x i32 : (i64) -> !llvm.ptr<i32>
    %23 = llvm.mlir.undef : i32
    llvm.store %23, %22 : !llvm.ptr<i32>
    %24 = llvm.alloca %21 x i8 : (i64) -> !llvm.ptr<i8>
    %25 = llvm.mlir.undef : i8
    llvm.store %25, %24 : !llvm.ptr<i8>
    %26 = llvm.alloca %21 x i64 : (i64) -> !llvm.ptr<i64>
    %27 = llvm.mlir.undef : i64
    llvm.store %27, %26 : !llvm.ptr<i64>
    %28 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %29 = llvm.load %28 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %30 = llvm.mlir.addressof @store_fwd_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %31 = llvm.load %30 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>>
    %32 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %33 = llvm.load %32 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %34 = llvm.call @_ZNKSt6vectorIcSaIcEE4sizeEv__0(%31) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %34) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %35 = llvm.add %34, %19  : i64
    %36 = llvm.sdiv %35, %18  : i64
    %37 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %38 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%31, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<i8> to i64
    %40 = llvm.and %39, %11  : i64
    %41 = llvm.udiv %40, %18  : i64
    %42 = llvm.srem %41, %10  : i64
    %43 = llvm.trunc %42 : i64 to i32
    %44 = llvm.call @cache_request_impl_1(%9, %40, %43, %8) : (i32, i64, i32, i8) -> i32
    llvm.store %43, %37 : !llvm.ptr<i32>
    %45 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %46 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%33, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %47 = llvm.ptrtoint %46 : !llvm.ptr<i32> to i64
    %48 = llvm.and %47, %7  : i64
    %49 = llvm.udiv %48, %6  : i64
    %50 = llvm.srem %49, %10  : i64
    %51 = llvm.trunc %50 : i64 to i32
    %52 = llvm.call @cache_request_impl_12(%9, %48, %51, %8) : (i32, i64, i32, i8) -> i32
    llvm.store %51, %45 : !llvm.ptr<i32>
    %53 = llvm.alloca %17 x i32 : (i32) -> !llvm.ptr<i32>
    %54 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %12) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %55 = llvm.ptrtoint %54 : !llvm.ptr<i64> to i64
    %56 = llvm.and %55, %5  : i64
    %57 = llvm.udiv %56, %4  : i64
    %58 = llvm.srem %57, %10  : i64
    %59 = llvm.trunc %58 : i64 to i32
    %60 = llvm.call @cache_request_impl_5(%9, %56, %59, %8) : (i32, i64, i32, i8) -> i32
    llvm.store %59, %53 : !llvm.ptr<i32>
    llvm.br ^bb1(%13 : i64)
  ^bb1(%61: i64):  // 2 preds: ^bb0, ^bb13
    %62 = llvm.icmp "slt" %61, %36 : i64
    llvm.cond_br %62, ^bb2, ^bb14
  ^bb2:  // pred: ^bb1
    %63 = llvm.add %61, %21  : i64
    %64 = llvm.icmp "slt" %63, %36 : i64
    llvm.cond_br %64, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %65 = llvm.srem %63, %14  : i64
    %66 = llvm.trunc %65 : i64 to i32
    %67 = llvm.mul %63, %15  : i64
    %68 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%31, %67) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %69 = llvm.ptrtoint %68 : !llvm.ptr<i8> to i64
    %70 = llvm.and %69, %11  : i64
    %71 = llvm.udiv %70, %18  : i64
    %72 = llvm.srem %71, %10  : i64
    %73 = llvm.trunc %72 : i64 to i32
    %74 = llvm.call @cache_request_impl_1(%9, %70, %73, %8) : (i32, i64, i32, i8) -> i32
    %75 = llvm.sext %66 : i32 to i64
    %76 = llvm.getelementptr %37[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %73, %76 : !llvm.ptr<i32>
    %77 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%33, %67) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %78 = llvm.ptrtoint %77 : !llvm.ptr<i32> to i64
    %79 = llvm.and %78, %7  : i64
    %80 = llvm.udiv %79, %6  : i64
    %81 = llvm.srem %80, %10  : i64
    %82 = llvm.trunc %81 : i64 to i32
    %83 = llvm.call @cache_request_impl_12(%9, %79, %82, %8) : (i32, i64, i32, i8) -> i32
    %84 = llvm.getelementptr %45[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %82, %84 : !llvm.ptr<i32>
    %85 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %67) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<i64> to i64
    %87 = llvm.and %86, %5  : i64
    %88 = llvm.udiv %87, %4  : i64
    %89 = llvm.srem %88, %10  : i64
    %90 = llvm.trunc %89 : i64 to i32
    %91 = llvm.call @cache_request_impl_5(%9, %87, %90, %8) : (i32, i64, i32, i8) -> i32
    %92 = llvm.getelementptr %53[%75] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %90, %92 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %93 = llvm.mul %61, %15  : i64
    %94 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%31, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %95 = llvm.srem %61, %14  : i64
    %96 = llvm.getelementptr %37[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %97 = llvm.load %96 : !llvm.ptr<i32>
    %98 = llvm.ptrtoint %94 : !llvm.ptr<i8> to i64
    %99 = llvm.sext %97 : i32 to i64
    %100 = llvm.mul %99, %18  : i64
    %101 = llvm.srem %98, %18  : i64
    %102 = llvm.add %100, %101  : i64
    %103 = llvm.add %102, %3  : i64
    %104 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %105 = llvm.load %104 : !llvm.ptr<ptr<i8>>
    %106 = llvm.getelementptr %105[%103] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %107 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%33, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %108 = llvm.getelementptr %45[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %109 = llvm.load %108 : !llvm.ptr<i32>
    %110 = llvm.ptrtoint %107 : !llvm.ptr<i32> to i64
    %111 = llvm.sext %109 : i32 to i64
    %112 = llvm.mul %111, %6  : i64
    %113 = llvm.srem %110, %6  : i64
    %114 = llvm.add %112, %113  : i64
    %115 = llvm.add %114, %12  : i64
    %116 = llvm.load %104 : !llvm.ptr<ptr<i8>>
    %117 = llvm.getelementptr %116[%115] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %118 = llvm.bitcast %117 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %119 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %93) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %120 = llvm.getelementptr %53[%95] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %121 = llvm.load %120 : !llvm.ptr<i32>
    %122 = llvm.ptrtoint %119 : !llvm.ptr<i64> to i64
    %123 = llvm.sext %121 : i32 to i64
    %124 = llvm.mul %123, %4  : i64
    %125 = llvm.srem %122, %4  : i64
    %126 = llvm.add %124, %125  : i64
    %127 = llvm.add %126, %2  : i64
    %128 = llvm.load %104 : !llvm.ptr<ptr<i8>>
    %129 = llvm.getelementptr %128[%127] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %130 = llvm.bitcast %129 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %131 = llvm.add %121, %1  : i32
    %132 = llvm.sext %131 : i32 to i64
    %133 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %134 = llvm.getelementptr %133[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %135 = llvm.getelementptr %134[%132] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %136 = llvm.getelementptr %135[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %137 = llvm.load %136 : !llvm.ptr<i16>
    llvm.call @poll_qid5(%0, %137) : (i32, i16) -> ()
    %138 = llvm.mul %63, %18  : i64
    %139 = llvm.icmp "sgt" %34, %138 : i64
    llvm.cond_br %139, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%18 : i64)
  ^bb6:  // pred: ^bb4
    %140 = llvm.mul %61, %18  : i64
    %141 = llvm.sub %34, %140  : i64
    llvm.br ^bb7(%141 : i64)
  ^bb7(%142: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %143 = llvm.mul %61, %18  : i64
    llvm.br ^bb9(%13 : i64)
  ^bb9(%144: i64):  // 2 preds: ^bb8, ^bb12
    %145 = llvm.icmp "slt" %144, %142 : i64
    llvm.cond_br %145, ^bb10, ^bb13
  ^bb10:  // pred: ^bb9
    %146 = llvm.add %144, %143  : i64
    %147 = llvm.getelementptr %106[%144] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %148 = llvm.getelementptr %118[%144] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %149 = llvm.getelementptr %130[%144] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %150 = llvm.call @_ZNKSt6vectorImSaImEEixEm__0(%29, %146) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %151 = llvm.load %149 : !llvm.ptr<i64>
    llvm.store %151, %26 : !llvm.ptr<i64>
    %152 = llvm.call @_ZNKSt6vectorIcSaIcEEixEm__0(%31, %146) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i8>, ptr<i8>, ptr<i8>)>)>)>)>>, i64) -> !llvm.ptr<i8>
    %153 = llvm.load %147 : !llvm.ptr<i8>
    llvm.store %153, %24 : !llvm.ptr<i8>
    %154 = llvm.call @_ZNKSt6vectorIiSaIiEEixEm__1(%33, %146) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %155 = llvm.load %148 : !llvm.ptr<i32>
    llvm.store %155, %22 : !llvm.ptr<i32>
    %156 = llvm.call @_ZZ41calculate_distribution_store_and_fwd_flagvENK3$_1clERKmRKc(%arg0, %26, %24) : (!llvm.ptr<struct<"class.anon.7", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<i8>) -> i8
    %157 = llvm.icmp "ne" %156, %20 : i8
    llvm.cond_br %157, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %22) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %158 = llvm.add %144, %16  : i64
    llvm.br ^bb9(%158 : i64)
  ^bb13:  // pred: ^bb9
    %159 = llvm.add %61, %16  : i64
    llvm.br ^bb1(%159 : i64)
  ^bb14:  // pred: ^bb1
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
    %0 = llvm.mlir.constant(9663676416 : i64) : i64
    %1 = llvm.mlir.constant(11811160064 : i64) : i64
    %2 = llvm.mlir.constant(4096 : i64) : i64
    %3 = llvm.mlir.constant(-4096 : i64) : i64
    %4 = llvm.mlir.constant(1 : i8) : i8
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(36864 : i64) : i64
    %7 = llvm.mlir.constant(8192 : i64) : i64
    %8 = llvm.mlir.constant(-8192 : i64) : i64
    %9 = llvm.mlir.constant(0 : i64) : i64
    %10 = llvm.mlir.constant(0 : index) : i64
    %11 = llvm.mlir.constant(2 : i64) : i64
    %12 = llvm.mlir.constant(1024 : index) : i64
    %13 = llvm.mlir.constant(1 : index) : i64
    %14 = llvm.mlir.constant(2 : i32) : i32
    %15 = llvm.mlir.constant(1024 : i64) : i64
    %16 = llvm.mlir.constant(1023 : i64) : i64
    %17 = llvm.mlir.constant(0 : i8) : i8
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.alloca %18 x i32 : (i64) -> !llvm.ptr<i32>
    %20 = llvm.mlir.undef : i32
    llvm.store %20, %19 : !llvm.ptr<i32>
    %21 = llvm.alloca %18 x f64 : (i64) -> !llvm.ptr<f64>
    %22 = llvm.mlir.undef : f64
    llvm.store %22, %21 : !llvm.ptr<f64>
    %23 = llvm.alloca %18 x i64 : (i64) -> !llvm.ptr<i64>
    %24 = llvm.mlir.undef : i64
    llvm.store %24, %23 : !llvm.ptr<i64>
    %25 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %26 = llvm.load %25 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %27 = llvm.mlir.addressof @haversine_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %28 = llvm.load %27 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>>
    %29 = llvm.mlir.addressof @vendor_id_col : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %30 = llvm.load %29 : !llvm.ptr<ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>>
    %31 = llvm.call @_ZNKSt6vectorIdSaIdEE4sizeEv__0(%28) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>) -> i64
    llvm.call @_ZNSt6vectorIiSaIiEE7reserveEm(%arg1, %31) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> ()
    %32 = llvm.add %31, %16  : i64
    %33 = llvm.sdiv %32, %15  : i64
    %34 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %35 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%28, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<f64> to i64
    %37 = llvm.and %36, %8  : i64
    %38 = llvm.udiv %37, %7  : i64
    %39 = llvm.srem %38, %6  : i64
    %40 = llvm.trunc %39 : i64 to i32
    %41 = llvm.call @cache_request_impl_6(%5, %37, %40, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %40, %34 : !llvm.ptr<i32>
    %42 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %43 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%26, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %44 = llvm.ptrtoint %43 : !llvm.ptr<i64> to i64
    %45 = llvm.and %44, %8  : i64
    %46 = llvm.udiv %45, %7  : i64
    %47 = llvm.srem %46, %6  : i64
    %48 = llvm.trunc %47 : i64 to i32
    %49 = llvm.call @cache_request_impl_5(%5, %45, %48, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %48, %42 : !llvm.ptr<i32>
    %50 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    %51 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%30, %9) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %52 = llvm.ptrtoint %51 : !llvm.ptr<i32> to i64
    %53 = llvm.and %52, %3  : i64
    %54 = llvm.udiv %53, %2  : i64
    %55 = llvm.srem %54, %6  : i64
    %56 = llvm.trunc %55 : i64 to i32
    %57 = llvm.call @cache_request_impl_12(%5, %53, %56, %4) : (i32, i64, i32, i8) -> i32
    llvm.store %56, %50 : !llvm.ptr<i32>
    llvm.br ^bb1(%10 : i64)
  ^bb1(%58: i64):  // 2 preds: ^bb0, ^bb13
    %59 = llvm.icmp "slt" %58, %33 : i64
    llvm.cond_br %59, ^bb2, ^bb14
  ^bb2:  // pred: ^bb1
    %60 = llvm.add %58, %18  : i64
    %61 = llvm.icmp "slt" %60, %33 : i64
    llvm.cond_br %61, ^bb3, ^bb4
  ^bb3:  // pred: ^bb2
    %62 = llvm.srem %60, %11  : i64
    %63 = llvm.trunc %62 : i64 to i32
    %64 = llvm.mul %60, %12  : i64
    %65 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%28, %64) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %66 = llvm.ptrtoint %65 : !llvm.ptr<f64> to i64
    %67 = llvm.and %66, %8  : i64
    %68 = llvm.udiv %67, %7  : i64
    %69 = llvm.srem %68, %6  : i64
    %70 = llvm.trunc %69 : i64 to i32
    %71 = llvm.call @cache_request_impl_6(%5, %67, %70, %4) : (i32, i64, i32, i8) -> i32
    %72 = llvm.sext %63 : i32 to i64
    %73 = llvm.getelementptr %34[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %70, %73 : !llvm.ptr<i32>
    %74 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%26, %64) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %75 = llvm.ptrtoint %74 : !llvm.ptr<i64> to i64
    %76 = llvm.and %75, %8  : i64
    %77 = llvm.udiv %76, %7  : i64
    %78 = llvm.srem %77, %6  : i64
    %79 = llvm.trunc %78 : i64 to i32
    %80 = llvm.call @cache_request_impl_5(%5, %76, %79, %4) : (i32, i64, i32, i8) -> i32
    %81 = llvm.getelementptr %42[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %79, %81 : !llvm.ptr<i32>
    %82 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%30, %64) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %83 = llvm.ptrtoint %82 : !llvm.ptr<i32> to i64
    %84 = llvm.and %83, %3  : i64
    %85 = llvm.udiv %84, %2  : i64
    %86 = llvm.srem %85, %6  : i64
    %87 = llvm.trunc %86 : i64 to i32
    %88 = llvm.call @cache_request_impl_12(%5, %84, %87, %4) : (i32, i64, i32, i8) -> i32
    %89 = llvm.getelementptr %50[%72] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %87, %89 : !llvm.ptr<i32>
    llvm.br ^bb4
  ^bb4:  // 2 preds: ^bb2, ^bb3
    %90 = llvm.mul %58, %12  : i64
    %91 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%28, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %92 = llvm.srem %58, %11  : i64
    %93 = llvm.getelementptr %34[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %94 = llvm.load %93 : !llvm.ptr<i32>
    %95 = llvm.ptrtoint %91 : !llvm.ptr<f64> to i64
    %96 = llvm.sext %94 : i32 to i64
    %97 = llvm.mul %96, %7  : i64
    %98 = llvm.srem %95, %7  : i64
    %99 = llvm.add %97, %98  : i64
    %100 = llvm.add %99, %1  : i64
    %101 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %102 = llvm.load %101 : !llvm.ptr<ptr<i8>>
    %103 = llvm.getelementptr %102[%100] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %104 = llvm.bitcast %103 : !llvm.ptr<i8> to !llvm.ptr<f64>
    %105 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%26, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %106 = llvm.getelementptr %42[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %107 = llvm.load %106 : !llvm.ptr<i32>
    %108 = llvm.ptrtoint %105 : !llvm.ptr<i64> to i64
    %109 = llvm.sext %107 : i32 to i64
    %110 = llvm.mul %109, %7  : i64
    %111 = llvm.srem %108, %7  : i64
    %112 = llvm.add %110, %111  : i64
    %113 = llvm.add %112, %0  : i64
    %114 = llvm.load %101 : !llvm.ptr<ptr<i8>>
    %115 = llvm.getelementptr %114[%113] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %116 = llvm.bitcast %115 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %117 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%30, %90) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %118 = llvm.getelementptr %50[%92] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %119 = llvm.load %118 : !llvm.ptr<i32>
    %120 = llvm.ptrtoint %117 : !llvm.ptr<i32> to i64
    %121 = llvm.sext %119 : i32 to i64
    %122 = llvm.mul %121, %2  : i64
    %123 = llvm.srem %120, %2  : i64
    %124 = llvm.add %122, %123  : i64
    %125 = llvm.add %124, %9  : i64
    %126 = llvm.load %101 : !llvm.ptr<ptr<i8>>
    %127 = llvm.getelementptr %126[%125] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %128 = llvm.bitcast %127 : !llvm.ptr<i8> to !llvm.ptr<i32>
    %129 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %130 = llvm.getelementptr %129[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %131 = llvm.getelementptr %130[%121] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %132 = llvm.getelementptr %131[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %133 = llvm.load %132 : !llvm.ptr<i16>
    llvm.call @poll_qid12(%5, %133) : (i32, i16) -> ()
    %134 = llvm.mul %60, %15  : i64
    %135 = llvm.icmp "sgt" %31, %134 : i64
    llvm.cond_br %135, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    llvm.br ^bb7(%15 : i64)
  ^bb6:  // pred: ^bb4
    %136 = llvm.mul %58, %15  : i64
    %137 = llvm.sub %31, %136  : i64
    llvm.br ^bb7(%137 : i64)
  ^bb7(%138: i64):  // 2 preds: ^bb5, ^bb6
    llvm.br ^bb8
  ^bb8:  // pred: ^bb7
    %139 = llvm.mul %58, %15  : i64
    llvm.br ^bb9(%10 : i64)
  ^bb9(%140: i64):  // 2 preds: ^bb8, ^bb12
    %141 = llvm.icmp "slt" %140, %138 : i64
    llvm.cond_br %141, ^bb10, ^bb13
  ^bb10:  // pred: ^bb9
    %142 = llvm.add %140, %139  : i64
    %143 = llvm.getelementptr %104[%140] : (!llvm.ptr<f64>, i64) -> !llvm.ptr<f64>
    %144 = llvm.getelementptr %116[%140] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %145 = llvm.getelementptr %128[%140] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %146 = llvm.call @_ZNSt6vectorImSaImEEixEm__0(%26, %142) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %147 = llvm.load %144 : !llvm.ptr<i64>
    llvm.store %147, %23 : !llvm.ptr<i64>
    %148 = llvm.call @_ZNSt6vectorIdSaIdEEixEm__0(%28, %142) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<f64>, ptr<f64>, ptr<f64>)>)>)>)>>, i64) -> !llvm.ptr<f64>
    %149 = llvm.load %143 : !llvm.ptr<f64>
    llvm.store %149, %21 : !llvm.ptr<f64>
    %150 = llvm.call @_ZNSt6vectorIiSaIiEEixEm__0(%30, %142) : (!llvm.ptr<struct<(struct<(struct<(struct<(ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
    %151 = llvm.load %145 : !llvm.ptr<i32>
    llvm.store %151, %19 : !llvm.ptr<i32>
    %152 = llvm.call @_ZZ35calculate_haversine_distance_columnvENK3$_0clERKmRKd(%arg0, %23, %21) : (!llvm.ptr<struct<"class.anon.14", (i8)>>, !llvm.ptr<i64>, !llvm.ptr<f64>) -> i8
    %153 = llvm.icmp "ne" %152, %17 : i8
    llvm.cond_br %153, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg1, %19) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>) -> ()
    llvm.br ^bb12
  ^bb12:  // 2 preds: ^bb10, ^bb11
    %154 = llvm.add %140, %13  : i64
    llvm.br ^bb9(%154 : i64)
  ^bb13:  // pred: ^bb9
    %155 = llvm.add %58, %13  : i64
    llvm.br ^bb1(%155 : i64)
  ^bb14:  // pred: ^bb1
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

