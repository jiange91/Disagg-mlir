module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str1("cannot create std::vector larger than max_size()\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%zu\0A\00") {addr_space = 0 : i32}
  func.func @_Z3sumRSt6vectorIiSaIiEE(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %0:2 = scf.while (%arg1 = %c0_i32, %arg2 = %c0_i32) : (i32, i32) -> (i32, i32) {
      %1 = arith.extsi %arg1 : i32 to i64
      %2 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
      %3 = arith.cmpi slt, %1, %2 : i64
      scf.condition(%3) %arg2, %arg1 : i32, i32
    } do {
    ^bb0(%arg1: i32, %arg2: i32):
      %1 = arith.extsi %arg2 : i32 to i64
      %2 = func.call @_ZNSt6vectorIiSaIiEEixEm(%arg0, %1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, i64) -> !llvm.ptr<i32>
      %3 = llvm.load %2 : !llvm.ptr<i32>
      %4 = arith.addi %arg1, %3 : i32
      %5 = arith.addi %arg2, %c1_i32 : i32
      scf.yield %5, %4 : i32, i32
    }
    return %0#0 : i32
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
    %7 = llvm.ptrtoint %6 : !llvm.ptr<i32> to i64
    %8 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %9 = arith.subi %8, %7 : i64
    %10 = arith.divsi %9, %c4_i64 : i64
    return %10 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %4 = llvm.load %3 : !llvm.ptr<ptr<i32>>
    %5 = llvm.getelementptr %4[%arg1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %5 : !llvm.ptr<i32>
  }
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %c6_i64 = arith.constant 6 : i64
    %c5_i32 = arith.constant 5 : i32
    %c4_i32 = arith.constant 4 : i32
    %c3_i32 = arith.constant 3 : i32
    %c2_i32 = arith.constant 2 : i32
    %c1_i32 = arith.constant 1 : i32
    %c0_i32 = arith.constant 0 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::allocator", (i8)> : (i64) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::allocator", (i8)> : (i64) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.alloca %c1_i64 x !llvm.array<6 x i32> : (i64) -> !llvm.ptr<array<6 x i32>>
    %4 = llvm.alloca %c1_i64 x !llvm.array<6 x i32> : (i64) -> !llvm.ptr<array<6 x i32>>
    %5 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)> : (i64) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %6 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c0_i32, %6 : !llvm.ptr<i32>
    %7 = llvm.getelementptr %4[0, 1] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c1_i32, %7 : !llvm.ptr<i32>
    %8 = llvm.getelementptr %4[0, 2] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c2_i32, %8 : !llvm.ptr<i32>
    %9 = llvm.getelementptr %4[0, 3] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c3_i32, %9 : !llvm.ptr<i32>
    %10 = llvm.getelementptr %4[0, 4] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c4_i32, %10 : !llvm.ptr<i32>
    %11 = llvm.getelementptr %4[0, 5] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    llvm.store %c5_i32, %11 : !llvm.ptr<i32>
    %12 = llvm.load %4 : !llvm.ptr<array<6 x i32>>
    llvm.store %12, %3 : !llvm.ptr<array<6 x i32>>
    %13 = llvm.mlir.undef : !llvm.struct<"class.std::initializer_list", (ptr<i32>, i64)>
    %14 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<array<6 x i32>>) -> !llvm.ptr<i32>
    %15 = llvm.insertvalue %14, %13[0] : !llvm.struct<"class.std::initializer_list", (ptr<i32>, i64)> 
    %16 = llvm.insertvalue %c6_i64, %15[1] : !llvm.struct<"class.std::initializer_list", (ptr<i32>, i64)> 
    %17 = llvm.load %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.store %17, %1 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    call @_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_(%5, %16, %1) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.struct<"class.std::initializer_list", (ptr<i32>, i64)>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> ()
    %18 = llvm.load %5 : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    llvm.store %18, %0 : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    call @_Z10remotelizeIiEvRSt6vectorIT_SaIS1_EE(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> ()
    %19 = llvm.mlir.addressof @str0 : !llvm.ptr<array<5 x i8>>
    %20 = llvm.getelementptr %19[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>

    %rvec = rmem.bitcast %0 : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<!llvm.struct<"r::class.std::vector", (!llvm.struct<"r::struct.std::_Vector_base", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>> 

    %21 = call @remote_vec_size(%rvec) : (!llvm.ptr<!llvm.struct<"r::class.std::vector", (!llvm.struct<"r::struct.std::_Vector_base", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>) -> i64

    // %21 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) {
    //   "remote_target" = 1,
    //   "remote_callee" = "remote_vec_size"
    // } : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64

    %22 = llvm.call @printf(%20, %21) : (!llvm.ptr<i8>, i64) -> i32
    return %c0_i32 : i32
  }
  func.func @_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.struct<"class.std::initializer_list", (ptr<i32>, i64)>, %arg2: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::random_access_iterator_tag", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::forward_iterator_tag", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::forward_iterator_tag", (i8)>>
    %2 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::initializer_list", (ptr<i32>, i64)> : (i64) -> !llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>
    llvm.store %arg1, %2 : !llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>
    %3 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_(%3, %arg2) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> ()
    %4 = call @_ZNKSt16initializer_listIiE5beginEv(%2) : (!llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<i32>
    %5 = call @_ZNKSt16initializer_listIiE3endEv(%2) : (!llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<i32>
    %6 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%6, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %7 = llvm.load %1 : !llvm.ptr<struct<"struct.std::forward_iterator_tag", (i8)>>
    call @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag(%arg0, %4, %5, %7) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, !llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.struct<"struct.std::forward_iterator_tag", (i8)>) -> ()
    return
  }
  func.func @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_Z10remotelizeIiEvRSt6vectorIT_SaIS1_EE(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %false = arith.constant false
    %c2_i32 = arith.constant 2 : i32
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x i128 : (i64) -> !llvm.ptr<i128>
    %1 = llvm.mlir.undef : i128
    llvm.store %1, %0 : !llvm.ptr<i128>
    %2 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>> to !llvm.ptr<struct<"struct.rvector", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %3 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %4 = call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    %5 = arith.muli %4, %c4_i64 : i64
    %6 = call @_Z13_disagg_allocjm(%c2_i32, %5) : (i32, i64) -> !llvm.ptr<i8>
    %7 = llvm.ptrtoint %6 : !llvm.ptr<i8> to i64
    %8 = call @_Z13cache_requestm(%7) : (i64) -> i128
    llvm.store %8, %0 : !llvm.ptr<i128>
    %9 = call @_Z16cache_access_mutPn(%0) : (!llvm.ptr<i128>) -> !llvm.ptr<i8>
    %10 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.rvector", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %11 = llvm.load %10 : !llvm.ptr<ptr<i32>>
    %12 = llvm.bitcast %11 : !llvm.ptr<i32> to !llvm.ptr<i8>
    "llvm.intr.memcpy"(%9, %12, %5, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
    %13 = llvm.bitcast %6 : !llvm.ptr<i8> to !llvm.ptr<i32>
    llvm.store %13, %10 : !llvm.ptr<ptr<i32>>
    %14 = llvm.getelementptr %2[0, 1] : (!llvm.ptr<struct<"struct.rvector", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %15 = llvm.load %10 : !llvm.ptr<ptr<i32>>
    %16 = llvm.getelementptr %15[%3] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %16, %14 : !llvm.ptr<ptr<i32>>
    %17 = llvm.getelementptr %2[0, 2] : (!llvm.ptr<struct<"struct.rvector", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %18 = llvm.load %10 : !llvm.ptr<ptr<i32>>
    %19 = llvm.getelementptr %18[%4] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %19, %17 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, %arg1: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_(%0, %arg1) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> ()
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag(%arg0: !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.struct<"struct.std::forward_iterator_tag", (i8)>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(%arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>) -> i64
    %1 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %5 = call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %6 = call @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(%0, %5) : (i64, !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    %7 = call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%1, %6) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>, i64) -> !llvm.ptr<i32>
    llvm.store %7, %4 : !llvm.ptr<ptr<i32>>
    %8 = llvm.getelementptr %3[0, 2] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %9 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %10 = llvm.getelementptr %9[%0] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    llvm.store %10, %8 : !llvm.ptr<ptr<i32>>
    %11 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> !llvm.ptr<ptr<i32>>
    %12 = llvm.load %4 : !llvm.ptr<ptr<i32>>
    %13 = call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%1) : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %14 = call @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(%arg1, %arg2, %12) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    llvm.store %14, %11 : !llvm.ptr<ptr<i32>>
    return
  }
  func.func @_ZNKSt16initializer_listIiE5beginEv(%arg0: !llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<ptr<i32>>
    %1 = llvm.load %0 : !llvm.ptr<ptr<i32>>
    return %1 : !llvm.ptr<i32>
  }
  func.func @_ZNKSt16initializer_listIiE3endEv(%arg0: !llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNKSt16initializer_listIiE5beginEv(%arg0) : (!llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<i32>
    %1 = call @_ZNKSt16initializer_listIiE4sizeEv(%arg0) : (!llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> i64
    %2 = llvm.getelementptr %0[%1] : (!llvm.ptr<i32>, i64) -> !llvm.ptr<i32>
    return %2 : !llvm.ptr<i32>
  }
  func.func @_ZNSt20forward_iterator_tagC1EOS_(%arg0: !llvm.ptr<struct<"struct.std::forward_iterator_tag", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::forward_iterator_tag", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
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
    %7 = llvm.ptrtoint %6 : !llvm.ptr<i32> to i64
    %8 = llvm.ptrtoint %4 : !llvm.ptr<i32> to i64
    %9 = arith.subi %8, %7 : i64
    %10 = arith.divsi %9, %c4_i64 : i64
    return %10 : i64
  }
  func.func private @_Z13_disagg_allocjm(i32, i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Z13cache_requestm(i64) -> i128 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Z16cache_access_mutPn(!llvm.ptr<i128>) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>, %arg1: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%0) : (!llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>>) -> ()
    return
  }
  func.func @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::random_access_iterator_tag", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>
    %1 = llvm.alloca %c1_i64 x !llvm.ptr<i32> : (i64) -> !llvm.ptr<ptr<i32>>
    llvm.store %arg0, %1 : !llvm.ptr<ptr<i32>>
    %2 = call @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%1) : (!llvm.ptr<ptr<i32>>) -> !llvm.struct<"struct.std::random_access_iterator_tag", (i8)>
    %3 = llvm.load %0 : !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>
    %4 = call @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(%arg0, %arg1, %3) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.struct<"struct.std::random_access_iterator_tag", (i8)>) -> i64
    return %4 : i64
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
  func.func @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(%arg0: i64, %arg1: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::allocator", (i8)> : (i64) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"class.std::allocator", (i8)> : (i64) -> !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.load %1 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    llvm.store %2, %0 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%0) : (!llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64
    %4 = arith.cmpi sgt, %arg0, %3 : i64
    scf.if %4 {
      %5 = llvm.mlir.addressof @str1 : !llvm.ptr<array<49 x i8>>
      %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<array<49 x i8>>) -> !llvm.ptr<i8>
      func.call @_ZSt20__throw_length_errorPKc(%6) : (!llvm.ptr<i8>) -> ()
    }
    return %arg0 : i64
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"class.std::allocator", (i8)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 0] : (!llvm.ptr<struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>>) -> !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>>
    %1 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>> to !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %2 = llvm.mlir.null : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %3 = llvm.icmp "ne" %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    %4 = arith.select %3, %1, %2 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
    return %4 : !llvm.ptr<struct<"class.std::allocator", (i8)>>
  }
  func.func @_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>, %arg3: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZNKSt16initializer_listIiE4sizeEv(%arg0: !llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.getelementptr %arg0[0, 1] : (!llvm.ptr<struct<"class.std::initializer_list", (ptr<i32>, i64)>>) -> !llvm.ptr<i64>
    %1 = llvm.load %0 : !llvm.ptr<i64>
    return %1 : i64
  }
  func.func @_ZNSt18input_iterator_tagC1EOS_(%arg0: !llvm.ptr<struct<"struct.std::input_iterator_tag", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::input_iterator_tag", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSaIiEC1ERKS_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: !llvm.ptr<struct<"class.std::allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.struct<"struct.std::random_access_iterator_tag", (i8)>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %2 = arith.subi %1, %0 : i64
    %3 = arith.divsi %2, %c4_i64 : i64
    return %3 : i64
  }
  func.func @_ZNSt26random_access_iterator_tagC1EOS_(%arg0: !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(%arg0: !llvm.ptr<ptr<i32>>) -> !llvm.struct<"struct.std::random_access_iterator_tag", (i8)> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %false = arith.constant false
    %c0_i8 = arith.constant 0 : i8
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::random_access_iterator_tag", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>
    %1 = llvm.alloca %c1_i64 x !llvm.struct<"struct.std::random_access_iterator_tag", (i8)> : (i64) -> !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>
    %2 = llvm.bitcast %0 : !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>> to !llvm.ptr<i8>
    "llvm.intr.memset"(%2, %c0_i8, %c1_i64, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
    %3 = llvm.load %1 : !llvm.ptr<struct<"struct.std::random_access_iterator_tag", (i8)>>
    return %3 : !llvm.struct<"struct.std::random_access_iterator_tag", (i8)>
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>, %arg1: i64) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = llvm.bitcast %arg0 : !llvm.ptr<struct<"class.std::allocator", (i8)>> to !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>
    %1 = llvm.mlir.null : !llvm.ptr<i8>
    %2 = call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%0, %arg1, %1) : (!llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, i64, !llvm.ptr<i8>) -> !llvm.ptr<i32>
    return %2 : !llvm.ptr<i32>
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
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>, %arg1: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
  }
  func.func @_ZNSt26bidirectional_iterator_tagC1EOS_(%arg0: !llvm.ptr<struct<"struct.std::bidirectional_iterator_tag", (i8)>>, %arg1: !llvm.ptr<struct<"struct.std::bidirectional_iterator_tag", (i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return
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
  func.func @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<"class.std::allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
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
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<"class.__gnu_cxx::new_allocator", (i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2305843009213693951_i64 = arith.constant 2305843009213693951 : i64
    return %c2305843009213693951_i64 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt4copyIPKiPiET0_T_S4_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__miter_baseIPKiET_S2_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_wrapIPiET_RKS1_S1_(%arg0: !llvm.ptr<ptr<i32>>, %arg1: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg1 : !llvm.ptr<i32>
  }
  func.func @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %0 = call @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0, %arg1, %arg2) : (!llvm.ptr<i32>, !llvm.ptr<i32>, !llvm.ptr<i32>) -> !llvm.ptr<i32>
    return %0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_baseIPKiET_S2_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZSt12__niter_baseIPiET_S1_(%arg0: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    return %arg0 : !llvm.ptr<i32>
  }
  func.func @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: !llvm.ptr<i32>, %arg1: !llvm.ptr<i32>, %arg2: !llvm.ptr<i32>) -> !llvm.ptr<i32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c4_i64 = arith.constant 4 : i64
    %false = arith.constant false
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.ptrtoint %arg0 : !llvm.ptr<i32> to i64
    %1 = llvm.ptrtoint %arg1 : !llvm.ptr<i32> to i64
    %2 = arith.subi %1, %0 : i64
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

  func.func @remote_vec_size(%arg0: !llvm.ptr<!llvm.struct<"r::class.std::vector", (!llvm.struct<"r::struct.std::_Vector_base", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<external>} {
    %0 = rmem.bitcast %arg0 : (!llvm.ptr<!llvm.struct<"r::class.std::vector", (!llvm.struct<"r::struct.std::_Vector_base", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (!llvm.struct<"r::struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (!rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>, !rmem.rmref<1, !llvm.ptr<i32>>)>)>)>)>>) -> !llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>
    %1 = call @_ZNKSt6vectorIiSaIiEE4sizeEv(%0) : (!llvm.ptr<struct<"class.std::vector", (struct<"struct.std::_Vector_base", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", (struct<"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", (ptr<i32>, ptr<i32>, ptr<i32>)>)>)>)>>) -> i64
    return %1 : i64
  }
}


  
