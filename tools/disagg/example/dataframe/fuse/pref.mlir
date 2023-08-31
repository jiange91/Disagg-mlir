module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "index_col", unnamed_addr = 0 : i64} : {
  }
  rmem.llvm.global {global_type = !llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, linkage = 10 : i64, sym_name = "duration_col", unnamed_addr = 0 : i64} : {
  }
  llvm.mlir.global internal constant @str5("\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str4("Max duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str3("Min duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str2("Mean duration %lu seconds\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("calculate_trip_duration()\0A\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Step 3: %ld us\0A\00") {addr_space = 0 : i32}
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
    call @_Z23calculate_trip_durationv() : () -> ()
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
  func.func @_Z23calculate_trip_durationv() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.MeanVisitor", (i64, i64)> : (i64) -> !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)> : (i64) -> !llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>
    %3 = llvm.mlir.addressof @str1 : !llvm.ptr<array<27 x i8>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %5 = llvm.call @printf(%4) : (!llvm.ptr<i8>) -> i32
    call @_Z16prepare_durationv() : () -> ()
    call @_ZN10MaxVisitorImmEC1Ev(%2) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    call @_ZN10MinVisitorImmEC1Ev(%1) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> ()
    call @_ZN11MeanVisitorImmEC1Ev(%0) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    call @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(%2, %1, %0) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, !llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %6 = llvm.mlir.addressof @str2 : !llvm.ptr<array<27 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<27 x i8>>) -> !llvm.ptr<i8>
    %8 = call @_ZNK11MeanVisitorImmE10get_resultEv(%0) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> i64
    %9 = llvm.call @printf(%7, %8) : (!llvm.ptr<i8>, i64) -> i32
    %10 = llvm.mlir.addressof @str3 : !llvm.ptr<array<26 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %12 = call @_ZNK10MinVisitorImmE10get_resultEv(%1) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %13 = llvm.call @printf(%11, %12) : (!llvm.ptr<i8>, i64) -> i32
    %14 = llvm.mlir.addressof @str4 : !llvm.ptr<array<26 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<26 x i8>>) -> !llvm.ptr<i8>
    %16 = call @_ZNK10MaxVisitorImmE10get_resultEv(%2) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>) -> i64
    %17 = llvm.call @printf(%15, %16) : (!llvm.ptr<i8>, i64) -> i32
    %18 = llvm.mlir.addressof @str5 : !llvm.ptr<array<2 x i8>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<2 x i8>>) -> !llvm.ptr<i8>
    %20 = llvm.call @printf(%19) : (!llvm.ptr<i8>) -> i32
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
    %c9_i64 = arith.constant 9 : i64
    %c8_i64 = arith.constant 8 : i64
    %c524288 = arith.constant 524288 : index
    %c1 = arith.constant 1 : index
    %c8 = arith.constant 8 : index
    %c9_i32 = arith.constant 9 : i32
    %c524288_i64 = arith.constant 524288 : i64
    %c524287_i64 = arith.constant 524287 : i64
    %c0 = arith.constant 0 : index
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.mlir.undef : i64
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %0, %2 : !llvm.ptr<i64>
    %3 = rmem.llvm.addressof @duration_col : <!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>
    %5 = rmem.llvm.addressof @index_col : <!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>>) -> !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>
    %7 = call @idx_size_i64(%6) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>) -> i64
    rmem.llvm.store %7 -> %2 : i64, !llvm.ptr<i64>
    %8 = call @dur_size_i64(%4) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>) -> i64
    rmem.llvm.store %8 -> %1 : i64, !llvm.ptr<i64>
    %9 = call @_ZSt3minImERKT_S2_S2_(%1, %2) : (!llvm.ptr<i64>, !llvm.ptr<i64>) -> !llvm.ptr<i64>
    %10 = llvm.load %9 : !llvm.ptr<i64>
    call @_ZN11MeanVisitorImmE3preEv(%arg2) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>) -> ()
    %11 = arith.addi %10, %c524287_i64 : i64
    %12 = arith.divsi %11, %c524288_i64 : i64
    %13 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg3 = %c0 to %c8 step %c1 {
      %16 = arith.muli %arg3, %c524288 : index
      %17 = arith.index_cast %arg3 : index to i32
      %18 = arith.index_cast %16 : index to i64
      %19 = func.call @idx_index_i64(%6, %18) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
      %20 = rmem.request 5, %19 : (!rmem.rmref<5, !llvm.ptr<i64>>) -> i32
      %21 = arith.extsi %17 : i32 to i64
      %22 = llvm.getelementptr %13[%21] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %20, %22 : !llvm.ptr<i32>
    }
    %14 = llvm.alloca %c9_i32 x i32 : (i32) -> !llvm.ptr<i32>
    scf.for %arg3 = %c0 to %c8 step %c1 {
      %16 = arith.muli %arg3, %c524288 : index
      %17 = arith.index_cast %arg3 : index to i32
      %18 = arith.index_cast %16 : index to i64
      %19 = func.call @dur_index_i64(%4, %18) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
      %20 = rmem.request 11, %19 : (!rmem.rmref<11, !llvm.ptr<i64>>) -> i32
      %21 = arith.extsi %17 : i32 to i64
      %22 = llvm.getelementptr %14[%21] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      llvm.store %20, %22 : !llvm.ptr<i32>
    }
    %15 = arith.index_cast %12 : i64 to index
    scf.for %arg3 = %c0 to %15 step %c1 {
      %16 = arith.index_cast %arg3 : index to i64
      %17 = arith.addi %16, %c8_i64 : i64
      %18 = arith.cmpi slt, %17, %12 : i64
      scf.if %18 {
        %36 = arith.remsi %17, %c9_i64 : i64
        %37 = arith.trunci %36 : i64 to i32
        %38 = arith.index_cast %17 : i64 to index
        %39 = arith.muli %38, %c524288 : index
        %40 = arith.index_cast %39 : index to i64
        %41 = func.call @idx_index_i64(%6, %40) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
        %42 = rmem.request 5, %41 : (!rmem.rmref<5, !llvm.ptr<i64>>) -> i32
        %43 = arith.extsi %37 : i32 to i64
        %44 = llvm.getelementptr %13[%43] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %42, %44 : !llvm.ptr<i32>
        %45 = arith.remsi %17, %c9_i64 : i64
        %46 = arith.trunci %45 : i64 to i32
        %47 = arith.index_cast %17 : i64 to index
        %48 = arith.muli %47, %c524288 : index
        %49 = arith.index_cast %48 : index to i64
        %50 = func.call @dur_index_i64(%4, %49) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
        %51 = rmem.request 11, %50 : (!rmem.rmref<11, !llvm.ptr<i64>>) -> i32
        %52 = arith.extsi %46 : i32 to i64
        %53 = llvm.getelementptr %14[%52] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
        llvm.store %51, %53 : !llvm.ptr<i32>
      }
      %19 = arith.muli %arg3, %c524288 : index
      %20 = arith.index_cast %19 : index to i64
      %21 = func.call @idx_index_i64(%6, %20) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
      %22 = arith.remsi %16, %c9_i64 : i64
      %23 = llvm.getelementptr %13[%22] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %24 = llvm.load %23 : !llvm.ptr<i32>
      %25 = rmem.paddr 5, %24, %21 : (i32, !rmem.rmref<5, !llvm.ptr<i64>>) -> !llvm.ptr<i64>
      %26 = func.call @dur_index_i64(%4, %20) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
      %27 = llvm.getelementptr %14[%22] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
      %28 = llvm.load %27 : !llvm.ptr<i32>
      %29 = rmem.paddr 11, %28, %26 : (i32, !rmem.rmref<11, !llvm.ptr<i64>>) -> !llvm.ptr<i64>
      rmem.poll 11, %28 : (i32) -> ()
      %30 = arith.addi %16, %c1_i64 : i64
      %31 = arith.muli %30, %c524288_i64 : i64
      %32 = arith.cmpi sgt, %10, %31 : i64
      %33 = scf.if %32 -> (i64) {
        scf.yield %c524288_i64 : i64
      } else {
        %36 = arith.muli %16, %c524288_i64 : i64
        %37 = arith.subi %10, %36 : i64
        scf.yield %37 : i64
      }
      %34 = arith.muli %16, %c524288_i64 : i64
      %35 = arith.index_cast %33 : i64 to index
      scf.for %arg4 = %c0 to %35 step %c1 {
        %36 = arith.index_cast %34 : i64 to index
        %37 = arith.addi %arg4, %36 : index
        %38 = arith.index_cast %arg4 : index to i64
        %39 = rmem.llvm.getelementptr %25[%38 []] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>, i64
        %40 = rmem.from_addr %39 : (!llvm.ptr<i64>) -> !rmem.rmref<0, !llvm.ptr<i64>>
        %41 = rmem.llvm.getelementptr %29[%38 []] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>, i64
        %42 = rmem.from_addr %41 : (!llvm.ptr<i64>) -> !rmem.rmref<0, !llvm.ptr<i64>>
        %43 = arith.index_cast %37 : index to i64
        %44 = func.call @idx_index_i64(%6, %43) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
        %45 = rmem.llvm.load %40 : (!rmem.rmref<0, !llvm.ptr<i64>>) -> i64
        %46 = func.call @dur_index_i64(%4, %43) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
        %47 = rmem.llvm.load %42 : (!rmem.rmref<0, !llvm.ptr<i64>>) -> i64
        func.call @_ZN10MaxVisitorImmEclEmm(%arg0, %45, %47) : (!llvm.ptr<struct<"class.MaxVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
        %48 = func.call @idx_index_i64(%6, %43) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
        %49 = func.call @dur_index_i64(%4, %43) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
        func.call @_ZN10MinVisitorImmEclEmm(%arg1, %45, %47) : (!llvm.ptr<struct<"class.MinVisitor", packed (i64, i64, i8, array<7 x i8>)>>, i64, i64) -> ()
        %50 = func.call @idx_index_i64(%6, %43) : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
        %51 = func.call @dur_index_i64(%4, %43) : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
        func.call @_ZN11MeanVisitorImmEclEmm(%arg2, %45, %47) : (!llvm.ptr<struct<"class.MeanVisitor", (i64, i64)>>, i64, i64) -> ()
      }
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
  func.func @idx_size_i64(%arg0: !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<5, !llvm.ptr<i64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<5, !llvm.ptr<i64>>>) -> !rmem.rmref<5, !llvm.ptr<i64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<5, !llvm.ptr<i64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<5, !llvm.ptr<i64>>>) -> !rmem.rmref<5, !llvm.ptr<i64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<5, !llvm.ptr<i64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<5, !llvm.ptr<i64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
  }
  func.func @dur_size_i64(%arg0: !llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c8_i64 = arith.constant 8 : i64
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 1]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<11, !llvm.ptr<i64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<11, !llvm.ptr<i64>>>) -> !rmem.rmref<11, !llvm.ptr<i64>>
    %5 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<11, !llvm.ptr<i64>>>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<11, !llvm.ptr<i64>>>) -> !rmem.rmref<11, !llvm.ptr<i64>>
    %7 = rmem.llvm.ptr2int %4 : (!rmem.rmref<11, !llvm.ptr<i64>>) -> i64
    %8 = rmem.llvm.ptr2int %6 : (!rmem.rmref<11, !llvm.ptr<i64>>) -> i64
    %9 = arith.subi %7, %8 : i64
    %10 = arith.divsi %9, %c8_i64 : i64
    return %10 : i64
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
  func.func @_ZNSt6vectorImSaImEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (ptr<i64>, ptr<i64>, ptr<i64>)>>) -> !llvm.ptr<ptr<i64>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i64>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i64>, i64) -> !llvm.ptr<i64>
    return %5 : !llvm.ptr<i64>
  }
  func.func @idx_index_i64(%arg0: !llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<5, !llvm.ptr<i64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::class.std::vector.1", (!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base.2", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>, !rmem.rmref<5, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<5, !llvm.ptr<i64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<5, !llvm.ptr<i64>>>) -> !rmem.rmref<5, !llvm.ptr<i64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<5, !llvm.ptr<i64>>, i64) -> !rmem.rmref<5, !llvm.ptr<i64>>
    return %5 : !rmem.rmref<5, !llvm.ptr<i64>>
  }
  func.func @dur_index_i64(%arg0: !llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>, %arg1: i64) -> !rmem.rmref<11, !llvm.ptr<i64>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = rmem.llvm.getelementptr %arg0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::class.std::vector", (!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>>
    %1 = rmem.llvm.getelementptr %0[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>)>>) -> !llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>>
    %2 = rmem.llvm.getelementptr %1[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", (!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>)>>) -> !llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>>
    %3 = rmem.llvm.getelementptr %2[ [0, 0]] : (!llvm.ptr<!llvm.struct<"rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", (!rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>, !rmem.rmref<11, !llvm.ptr<i64>>)>>) -> !llvm.ptr<!rmem.rmref<11, !llvm.ptr<i64>>>
    %4 = rmem.llvm.load %3 : (!llvm.ptr<!rmem.rmref<11, !llvm.ptr<i64>>>) -> !rmem.rmref<11, !llvm.ptr<i64>>
    %5 = rmem.llvm.getelementptr %4[%arg1 []] : (!rmem.rmref<11, !llvm.ptr<i64>>, i64) -> !rmem.rmref<11, !llvm.ptr<i64>>
    return %5 : !rmem.rmref<11, !llvm.ptr<i64>>
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
}

