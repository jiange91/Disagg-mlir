module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.func @poll_qid20(i32, i16)
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_20(i32, i64, i32, i8) -> i32
  llvm.func @cache_request_impl_21(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @index_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str5("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("Max duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Min duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Mean duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global external @duration_col() {addr_space = 0 : i32} : !llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>
  llvm.mlir.global internal constant @str1("calculate_trip_duration()\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Step 3: %ld us\0A\00") {addr_space = 0 : i32}
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
    llvm.call @_Z23calculate_trip_durationv() : () -> ()
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
  llvm.func @_Z23calculate_trip_durationv() {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.alloca %0 x !llvm.struct<"class.MeanVisitor", (i64, i64)> : (i64) -> !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>
    %2 = llvm.alloca %0 x !llvm.struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %3 = llvm.alloca %0 x !llvm.struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %4 = llvm.mlir.addressof @str1 : !llvm.ptr<array<27 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %6 = llvm.call @printf(%5) : (!llvm.ptr<i8>) -> i32
    llvm.call @_Z16prepare_durationv() : () -> ()
    %7 = llvm.mlir.addressof @duration_col : !llvm.ptr<ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %8 = llvm.load %7 : !llvm.ptr<ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    llvm.call @_ZN10MaxVisitorImmEC1Ev(%3) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    llvm.call @_ZN10MinVisitorImmEC1Ev(%2) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    llvm.call @_ZN11MeanVisitorImmEC1Ev(%1) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    llvm.call @_Z5visitIm10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRSt6vectorIT_SaIS7_EERT0_RT1_RT2_(%8, %3, %2, %1) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %9 = llvm.mlir.addressof @str2 : !llvm.ptr<array<27 x i8>>
    %10 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %11 = llvm.call @_ZNK11MeanVisitorImmE10get_resultEv(%1) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> i64
    %12 = llvm.call @printf(%10, %11) : (!llvm.ptr<i8>, i64) -> i32
    %13 = llvm.mlir.addressof @str3 : !llvm.ptr<array<26 x i8>>
    %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %15 = llvm.call @_ZNK10MinVisitorImmE10get_resultEv(%2) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %16 = llvm.call @printf(%14, %15) : (!llvm.ptr<i8>, i64) -> i32
    %17 = llvm.mlir.addressof @str4 : !llvm.ptr<array<26 x i8>>
    %18 = llvm.getelementptr %17[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %19 = llvm.call @_ZNK10MaxVisitorImmE10get_resultEv(%3) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %20 = llvm.call @printf(%18, %19) : (!llvm.ptr<i8>, i64) -> i32
    %21 = llvm.mlir.addressof @str5 : !llvm.ptr<array<2 x i8>>
    %22 = llvm.getelementptr %21[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %23 = llvm.call @printf(%22) : (!llvm.ptr<i8>) -> i32
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
  llvm.func linkonce_odr @_Z5visitIm10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRSt6vectorIT_SaIS7_EERT0_RT1_RT2_(%arg0: !llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg2: !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, %arg3: !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) {
    %0 = llvm.mlir.constant(19 : i32) : i32
    %1 = llvm.mlir.constant(608 : i32) : i32
    %2 = llvm.mlir.constant(4294967296 : i64) : i64
    %3 = llvm.mlir.constant(5368709120 : i64) : i64
    %4 = llvm.mlir.constant(1 : i8) : i8
    %5 = llvm.mlir.constant(0 : i32) : i32
    %6 = llvm.mlir.constant(32 : i64) : i64
    %7 = llvm.mlir.constant(4194304 : i64) : i64
    %8 = llvm.mlir.constant(-4194304 : i64) : i64
    %9 = llvm.mlir.constant(9 : i64) : i64
    %10 = llvm.mlir.constant(8 : i64) : i64
    %11 = llvm.mlir.constant(524288 : index) : i64
    %12 = llvm.mlir.constant(1 : index) : i64
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(9 : i32) : i32
    %15 = llvm.mlir.constant(524288 : i64) : i64
    %16 = llvm.mlir.constant(524287 : i64) : i64
    %17 = llvm.mlir.constant(0 : index) : i64
    %18 = llvm.mlir.constant(1 : i64) : i64
    %19 = llvm.mlir.undef : i64
    %20 = llvm.alloca %18 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %19, %20 : !llvm.ptr<i64>
    %21 = llvm.alloca %18 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %19, %21 : !llvm.ptr<i64>
    %22 = llvm.mlir.addressof @index_col : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %23 = llvm.load %22 : !llvm.ptr<ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>>
    %24 = llvm.call @rvec_index_size_i64(%23) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %24, %21 : !llvm.ptr<i64>
    %25 = llvm.call @rvec_dur_size_i64(%arg0) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64
    llvm.store %25, %20 : !llvm.ptr<i64>
    %26 = llvm.call @_ZSt3minImERKT_S2_S2_(%20, %21) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %27 = llvm.load %26 : !llvm.ptr<i64>
    llvm.call @_ZN11MeanVisitorImmE3preEv(%arg3) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %28 = llvm.add %27, %16  : i64
    %29 = llvm.sdiv %28, %15  : i64
    %30 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb1(%17 : i64)
  ^bb1(%31: i64):  // 2 preds: ^bb0, ^bb2
    %32 = llvm.icmp "slt" %31, %13 : i64
    llvm.cond_br %32, ^bb2, ^bb3
  ^bb2:  // pred: ^bb1
    %33 = llvm.mul %31, %11  : i64
    %34 = llvm.trunc %31 : i64 to i32
    %35 = llvm.call @rvec_dur_index_i64(%arg0, %33) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %36 = llvm.ptrtoint %35 : !llvm.ptr<i64> to i64
    %37 = llvm.and %36, %8  : i64
    %38 = llvm.udiv %37, %7  : i64
    %39 = llvm.srem %38, %6  : i64
    %40 = llvm.trunc %39 : i64 to i32
    %41 = llvm.call @cache_request_impl_21(%5, %37, %40, %4) : (i32, i64, i32, i8) -> i32
    %42 = llvm.sext %34 : i32 to i64
    %43 = llvm.getelementptr %30[%42] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %40, %43 : !llvm.ptr<i32>
    %44 = llvm.add %31, %12  : i64
    llvm.br ^bb1(%44 : i64)
  ^bb3:  // pred: ^bb1
    %45 = llvm.alloca %14 x i32 : (i32) -> !llvm.ptr<i32>
    llvm.br ^bb4(%17 : i64)
  ^bb4(%46: i64):  // 2 preds: ^bb3, ^bb5
    %47 = llvm.icmp "slt" %46, %13 : i64
    llvm.cond_br %47, ^bb5, ^bb6
  ^bb5:  // pred: ^bb4
    %48 = llvm.mul %46, %11  : i64
    %49 = llvm.trunc %46 : i64 to i32
    %50 = llvm.call @rvec_id_index_i64(%23, %48) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %51 = llvm.ptrtoint %50 : !llvm.ptr<i64> to i64
    %52 = llvm.and %51, %8  : i64
    %53 = llvm.udiv %52, %7  : i64
    %54 = llvm.srem %53, %6  : i64
    %55 = llvm.trunc %54 : i64 to i32
    %56 = llvm.call @cache_request_impl_20(%5, %52, %55, %4) : (i32, i64, i32, i8) -> i32
    %57 = llvm.sext %49 : i32 to i64
    %58 = llvm.getelementptr %45[%57] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %55, %58 : !llvm.ptr<i32>
    %59 = llvm.add %46, %12  : i64
    llvm.br ^bb4(%59 : i64)
  ^bb6:  // pred: ^bb4
    llvm.br ^bb7(%17 : i64)
  ^bb7(%60: i64):  // 2 preds: ^bb6, ^bb17
    %61 = llvm.icmp "slt" %60, %29 : i64
    llvm.cond_br %61, ^bb8, ^bb18
  ^bb8:  // pred: ^bb7
    %62 = llvm.add %60, %10  : i64
    %63 = llvm.icmp "slt" %62, %29 : i64
    llvm.cond_br %63, ^bb9, ^bb10
  ^bb9:  // pred: ^bb8
    %64 = llvm.srem %62, %9  : i64
    %65 = llvm.trunc %64 : i64 to i32
    %66 = llvm.mul %62, %11  : i64
    %67 = llvm.call @rvec_dur_index_i64(%arg0, %66) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %68 = llvm.ptrtoint %67 : !llvm.ptr<i64> to i64
    %69 = llvm.and %68, %8  : i64
    %70 = llvm.udiv %69, %7  : i64
    %71 = llvm.srem %70, %6  : i64
    %72 = llvm.trunc %71 : i64 to i32
    %73 = llvm.call @cache_request_impl_21(%5, %69, %72, %4) : (i32, i64, i32, i8) -> i32
    %74 = llvm.sext %65 : i32 to i64
    %75 = llvm.getelementptr %30[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %72, %75 : !llvm.ptr<i32>
    %76 = llvm.call @rvec_id_index_i64(%23, %66) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %77 = llvm.ptrtoint %76 : !llvm.ptr<i64> to i64
    %78 = llvm.and %77, %8  : i64
    %79 = llvm.udiv %78, %7  : i64
    %80 = llvm.srem %79, %6  : i64
    %81 = llvm.trunc %80 : i64 to i32
    %82 = llvm.call @cache_request_impl_20(%5, %78, %81, %4) : (i32, i64, i32, i8) -> i32
    %83 = llvm.getelementptr %45[%74] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %81, %83 : !llvm.ptr<i32>
    llvm.br ^bb10
  ^bb10:  // 2 preds: ^bb8, ^bb9
    %84 = llvm.mul %60, %11  : i64
    %85 = llvm.call @rvec_dur_index_i64(%arg0, %84) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %86 = llvm.srem %60, %9  : i64
    %87 = llvm.getelementptr %30[%86] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %88 = llvm.load %87 : !llvm.ptr<i32>
    %89 = llvm.ptrtoint %85 : !llvm.ptr<i64> to i64
    %90 = llvm.sext %88 : i32 to i64
    %91 = llvm.mul %90, %7  : i64
    %92 = llvm.srem %89, %7  : i64
    %93 = llvm.add %91, %92  : i64
    %94 = llvm.add %93, %3  : i64
    %95 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %96 = llvm.load %95 : !llvm.ptr<ptr<i8>>
    %97 = llvm.getelementptr %96[%94] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %98 = llvm.bitcast %97 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %99 = llvm.call @rvec_id_index_i64(%23, %84) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %100 = llvm.getelementptr %45[%86] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    %101 = llvm.load %100 : !llvm.ptr<i32>
    %102 = llvm.ptrtoint %99 : !llvm.ptr<i64> to i64
    %103 = llvm.sext %101 : i32 to i64
    %104 = llvm.mul %103, %7  : i64
    %105 = llvm.srem %102, %7  : i64
    %106 = llvm.add %104, %105  : i64
    %107 = llvm.add %106, %2  : i64
    %108 = llvm.load %95 : !llvm.ptr<ptr<i8>>
    %109 = llvm.getelementptr %108[%107] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %110 = llvm.bitcast %109 : !llvm.ptr<i8> to !llvm.ptr<i64>
    %111 = llvm.add %101, %1  : i32
    %112 = llvm.sext %111 : i32 to i64
    %113 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %114 = llvm.getelementptr %113[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %115 = llvm.getelementptr %114[%112] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %116 = llvm.getelementptr %115[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %117 = llvm.load %116 : !llvm.ptr<i16>
    llvm.call @poll_qid20(%0, %117) : (i32, i16) -> ()
    %118 = llvm.add %60, %18  : i64
    %119 = llvm.mul %118, %15  : i64
    %120 = llvm.icmp "sgt" %27, %119 : i64
    llvm.cond_br %120, ^bb11, ^bb12
  ^bb11:  // pred: ^bb10
    llvm.br ^bb13(%15 : i64)
  ^bb12:  // pred: ^bb10
    %121 = llvm.mul %60, %15  : i64
    %122 = llvm.sub %27, %121  : i64
    llvm.br ^bb13(%122 : i64)
  ^bb13(%123: i64):  // 2 preds: ^bb11, ^bb12
    llvm.br ^bb14
  ^bb14:  // pred: ^bb13
    %124 = llvm.mul %60, %15  : i64
    llvm.br ^bb15(%17 : i64)
  ^bb15(%125: i64):  // 2 preds: ^bb14, ^bb16
    %126 = llvm.icmp "slt" %125, %123 : i64
    llvm.cond_br %126, ^bb16, ^bb17
  ^bb16:  // pred: ^bb15
    %127 = llvm.add %125, %124  : i64
    %128 = llvm.getelementptr %98[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %129 = llvm.getelementptr %110[%125] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    %130 = llvm.call @rvec_id_index_i64(%23, %127) : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %131 = llvm.load %129 : !llvm.ptr<i64>
    %132 = llvm.call @rvec_dur_index_i64(%arg0, %127) : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, i64) -> !llvm.ptr<i64>
    %133 = llvm.load %128 : !llvm.ptr<i64>
    llvm.call @_ZN10MaxVisitorImmEclEmm(%arg1, %131, %133) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
    llvm.call @_ZN10MinVisitorImmEclEmm(%arg2, %131, %133) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
    llvm.call @_ZN11MeanVisitorImmEclEmm(%arg3, %131, %133) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, i64, i64) -> ()
    %134 = llvm.add %125, %12  : i64
    llvm.br ^bb15(%134 : i64)
  ^bb17:  // pred: ^bb15
    %135 = llvm.add %60, %12  : i64
    llvm.br ^bb7(%135 : i64)
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
  llvm.func linkonce_odr @rvec_index_size_i64(%arg0: !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
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
  llvm.func linkonce_odr @rvec_dur_size_i64(%arg0: !llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> i64 {
    %0 = llvm.mlir.constant(8 : i64) : i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %4 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %5 = llvm.load %4 : !llvm.ptr<ptr<i64>>
    %6 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %7 = llvm.load %6 : !llvm.ptr<ptr<i64>>
    %8 = llvm.ptrtoint %5 : !llvm.ptr<i64> to i64
    %9 = llvm.ptrtoint %7 : !llvm.ptr<i64> to i64
    %10 = llvm.sub %8, %9  : i64
    %11 = llvm.sdiv %10, %0  : i64
    llvm.return %11 : i64
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
  llvm.func linkonce_odr @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @rvec_id_index_i64(%arg0: !llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::class.std::vector.1", (struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base.2", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
  }
  llvm.func linkonce_odr @rvec_dur_index_i64(%arg0: !llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::class.std::vector", (struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    llvm.return %5 : !llvm.ptr<i64>
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
}

