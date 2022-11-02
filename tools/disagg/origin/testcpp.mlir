module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global internal constant @str2("vector::_M_realloc_insert\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @str1("vector::reserve\00") {addr_space = 0 : i32}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%d\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %alloca = memref.alloca() : memref<1xi32>
    %cast = memref.cast %alloca : memref<1xi32> to memref<?xi32>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i32
    memref.store %0, %cast[%c0] : memref<?xi32>
    %alloca_0 = memref.alloca() : memref<1xi32>
    %cast_1 = memref.cast %alloca_0 : memref<1xi32> to memref<?xi32>
    %c0_2 = arith.constant 0 : index
    %1 = llvm.mlir.undef : i32
    memref.store %1, %cast_1[%c0_2] : memref<?xi32>
    %c1_i64 = arith.constant 1 : i64
    %2 = llvm.alloca %c1_i64 x !llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)> : (i64) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>
    %true = arith.constant true
    %alloca_3 = memref.alloca() : memref<i1>
    %alloca_4 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    %alloca_5 = memref.alloca() : memref<i32>
    %3 = llvm.mlir.undef : i32
    memref.store %3, %alloca_5[] : memref<i32>
    %4 = memref.load %alloca_3[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %12 = memref.load %alloca_3[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            func.call @_ZNSt6vectorIiSaIiEEC1Ev(%2) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> ()
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_3[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %c16_i32 = arith.constant 16 : i32
        %c16_i64 = arith.constant 16 : i64
        func.call @_ZNSt6vectorIiSaIiEE7reserveEm(%2, %c16_i64) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i64) -> ()
        scf.yield
      }
    }
    %6 = memref.load %alloca_3[] : memref<i1>
    scf.if %6 {
      scf.execute_region {
        %12 = memref.load %alloca_3[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            %c1_i32 = arith.constant 1 : i32
            %c0_6 = arith.constant 0 : index
            memref.store %c1_i32, %cast_1[%c0_6] : memref<?xi32>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %7 = memref.load %alloca_3[] : memref<i1>
    scf.if %7 {
      scf.execute_region {
        func.call @_ZNSt6vectorIiSaIiEE9push_backERKi(%2, %cast_1) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, memref<?xi32>) -> ()
        scf.yield
      }
    }
    %8 = memref.load %alloca_3[] : memref<i1>
    scf.if %8 {
      scf.execute_region {
        %12 = llvm.mlir.addressof @str0 : !llvm.ptr<array<4 x i8>>
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_6 = arith.constant 0 : i32
        %13 = llvm.getelementptr %12[%c0_i32, %c0_i32_6] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
        %14 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%2) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
        %15 = llvm.call @printf(%13, %14) : (!llvm.ptr<i8>, i64) -> i32
        scf.yield
      }
    }
    %9 = memref.load %alloca_3[] : memref<i1>
    scf.if %9 {
      scf.execute_region {
        %12 = memref.load %alloca_3[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            %13 = memref.load %alloca_3[] : memref<i1>
            scf.if %13 {
              scf.execute_region {
                %c0_i32 = arith.constant 0 : i32
                %c0_10 = arith.constant 0 : index
                memref.store %c0_i32, %cast[%c0_10] : memref<?xi32>
                scf.yield
              }
            }
            %true_6 = arith.constant true
            %alloca_7 = memref.alloca() : memref<i1>
            %alloca_8 = memref.alloca() : memref<i1>
            memref.store %true_6, %alloca_8[] : memref<i1>
            cf.br ^bb1
          ^bb1:  // 2 preds: ^bb0, ^bb2
            %c0_9 = arith.constant 0 : index
            %14 = memref.load %cast[%c0_9] : memref<?xi32>
            %15 = arith.extsi %14 : i32 to i64
            %16 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%2) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %17 = arith.cmpi slt, %15, %16 : i64
            %18 = arith.extui %17 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %19 = arith.cmpi ne, %18, %c0_i8 : i8
            %20 = memref.load %alloca_8[] : memref<i1>
            %21 = arith.andi %19, %20 : i1
            cf.cond_br %21, ^bb2, ^bb3
          ^bb2:  // pred: ^bb1
            %22 = memref.load %alloca_8[] : memref<i1>
            memref.store %22, %alloca_7[] : memref<i1>
            %23 = memref.load %alloca_7[] : memref<i1>
            scf.if %23 {
              scf.execute_region {
                %26 = llvm.mlir.addressof @str0 : !llvm.ptr<array<4 x i8>>
                %c0_i32 = arith.constant 0 : i32
                %c0_i32_10 = arith.constant 0 : i32
                %27 = llvm.getelementptr %26[%c0_i32, %c0_i32_10] : (!llvm.ptr<array<4 x i8>>, i32, i32) -> !llvm.ptr<i8>
                %c0_11 = arith.constant 0 : index
                %28 = memref.load %cast[%c0_11] : memref<?xi32>
                %29 = arith.extsi %28 : i32 to i64
                %30 = func.call @_ZNSt6vectorIiSaIiEEixEm(%2, %29) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i64) -> memref<?xi32>
                %c0_12 = arith.constant 0 : index
                %31 = memref.load %30[%c0_12] : memref<?xi32>
                %32 = llvm.call @printf(%27, %31) : (!llvm.ptr<i8>, i32) -> i32
                scf.yield
              }
            }
            %24 = memref.load %alloca_8[] : memref<i1>
            memref.store %24, %alloca_7[] : memref<i1>
            %25 = memref.load %alloca_7[] : memref<i1>
            scf.if %25 {
              scf.execute_region {
                %c0_10 = arith.constant 0 : index
                %26 = memref.load %cast[%c0_10] : memref<?xi32>
                %c1_i32 = arith.constant 1 : i32
                %27 = arith.addi %26, %c1_i32 : i32
                %c0_11 = arith.constant 0 : index
                memref.store %27, %cast[%c0_11] : memref<?xi32>
                scf.yield
              }
            }
            cf.br ^bb1
          ^bb3:  // pred: ^bb1
            scf.yield
          }
        }
        scf.yield
      }
    }
    %10 = memref.load %alloca_3[] : memref<i1>
    scf.if %10 {
      scf.execute_region {
        %12 = memref.load %alloca_3[] : memref<i1>
        scf.if %12 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            memref.store %c0_i32, %alloca_5[] : memref<i32>
            %false = arith.constant false
            memref.store %false, %alloca_3[] : memref<i1>
            memref.store %false, %alloca_4[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %11 = memref.load %alloca_5[] : memref<i32>
    return %11 : i32
  }
  func.func @_ZNSt6vectorIiSaIiEEC1Ev(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> ()
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE7reserveEm(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2 = arith.constant 2 : index
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_3 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloca_6 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_7 = memref.cast %alloca_6 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_8 = memref.alloca() : memref<1xi64>
    %cast_9 = memref.cast %alloca_8 : memref<1xi64> to memref<?xi64>
    %c0_10 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast_9[%c0_10] : memref<?xi64>
    %alloca_11 = memref.alloca() : memref<1xi64>
    %cast_12 = memref.cast %alloca_11 : memref<1xi64> to memref<?xi64>
    %c0_13 = arith.constant 0 : index
    %1 = llvm.mlir.undef : i64
    memref.store %1, %cast_12[%c0_13] : memref<?xi64>
    %c0_14 = arith.constant 0 : index
    memref.store %arg1, %cast_12[%c0_14] : memref<?xi64>
    %true = arith.constant true
    %alloca_15 = memref.alloca() : memref<i1>
    %alloca_16 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_16[] : memref<i1>
    memref.store %true, %alloca_15[] : memref<i1>
    %2 = memref.load %alloca_15[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %4 = memref.load %alloca_15[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            %c0_17 = arith.constant 0 : index
            %5 = memref.load %cast_12[%c0_17] : memref<?xi64>
            %6 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %7 = arith.cmpi sgt, %5, %6 : i64
            %8 = arith.extui %7 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %9 = arith.cmpi ne, %8, %c0_i8 : i8
            scf.if %9 {
              %10 = llvm.mlir.addressof @str1 : !llvm.ptr<array<16 x i8>>
              %c0_i32 = arith.constant 0 : i32
              %c0_i32_18 = arith.constant 0 : i32
              %11 = llvm.getelementptr %10[%c0_i32, %c0_i32_18] : (!llvm.ptr<array<16 x i8>>, i32, i32) -> !llvm.ptr<i8>
              func.call @_ZSt20__throw_length_errorPKc(%11) : (!llvm.ptr<i8>) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_15[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %4 = memref.load %alloca_15[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            %5 = func.call @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %c0_17 = arith.constant 0 : index
            %6 = memref.load %cast_12[%c0_17] : memref<?xi64>
            %7 = arith.cmpi slt, %5, %6 : i64
            %8 = arith.extui %7 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %9 = arith.cmpi ne, %8, %c0_i8 : i8
            scf.if %9 {
              %10 = memref.load %alloca_15[] : memref<i1>
              scf.if %10 {
                scf.execute_region {
                  %18 = memref.load %alloca_15[] : memref<i1>
                  scf.if %18 {
                    scf.execute_region {
                      %19 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
                      %c0_18 = arith.constant 0 : index
                      memref.store %19, %cast_9[%c0_18] : memref<?xi64>
                      scf.yield
                    }
                  }
                  scf.yield
                }
              }
              %11 = memref.load %alloca_15[] : memref<i1>
              scf.if %11 {
                scf.execute_region {
                  %18 = memref.load %alloca_15[] : memref<i1>
                  scf.if %18 {
                    scf.execute_region {
                      scf.yield
                    }
                  }
                  scf.yield
                }
              }
              %12 = memref.load %alloca_15[] : memref<i1>
              scf.if %12 {
                scf.execute_region {
                  %18 = memref.load %alloca_15[] : memref<i1>
                  scf.if %18 {
                    scf.execute_region {
                      %19 = func.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
                      %c0_i8_18 = arith.constant 0 : i8
                      %20 = arith.cmpi ne, %19, %c0_i8_18 : i8
                      scf.if %20 {
                        %21 = memref.load %alloca_15[] : memref<i1>
                        scf.if %21 {
                          scf.execute_region {
                            %c0_i32 = arith.constant 0 : i32
                            %c0_i32_19 = arith.constant 0 : i32
                            %23 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_20 = arith.constant 0 : index
                            %24 = memref.load %cast_12[%c0_20] : memref<?xi64>
                            %25 = func.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%23, %24) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i64) -> memref<?xi32>
                            %c0_21 = arith.constant 0 : index
                            memref.store %25, %cast_7[%c0_21] : memref<?xmemref<?xi32>>
                            scf.yield
                          }
                        }
                        %22 = memref.load %alloca_15[] : memref<i1>
                        scf.if %22 {
                          scf.execute_region {
                            %c0_i32 = arith.constant 0 : i32
                            %c0_i32_19 = arith.constant 0 : i32
                            %23 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_i32_20 = arith.constant 0 : i32
                            %c0_i32_21 = arith.constant 0 : i32
                            %24 = llvm.getelementptr %23[%c0_i32_20, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                            %c0_i32_22 = arith.constant 0 : i32
                            %c1_i32 = arith.constant 1 : i32
                            %25 = llvm.getelementptr %24[%c0_i32_22, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                            %26 = "polygeist.pointer2memref"(%25) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                            %27 = "polygeist.subindex"(%26, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                            %28 = "polygeist.subindex"(%27, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                            %c0_23 = arith.constant 0 : index
                            %29 = memref.load %28[%c0_23] : memref<?xmemref<?xi32>>
                            %c0_i32_24 = arith.constant 0 : i32
                            %c0_i32_25 = arith.constant 0 : i32
                            %30 = llvm.getelementptr %arg0[%c0_i32_24, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_i32_26 = arith.constant 0 : i32
                            %c0_i32_27 = arith.constant 0 : i32
                            %31 = llvm.getelementptr %30[%c0_i32_26, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                            %c0_i32_28 = arith.constant 0 : i32
                            %c1_i32_29 = arith.constant 1 : i32
                            %32 = llvm.getelementptr %31[%c0_i32_28, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                            %33 = "polygeist.pointer2memref"(%32) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                            %34 = "polygeist.subindex"(%33, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                            %35 = "polygeist.subindex"(%34, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                            %c0_30 = arith.constant 0 : index
                            %36 = memref.load %35[%c0_30] : memref<?xmemref<?xi32>>
                            %c0_31 = arith.constant 0 : index
                            %37 = memref.load %cast_7[%c0_31] : memref<?xmemref<?xi32>>
                            %c0_i32_32 = arith.constant 0 : i32
                            %c0_i32_33 = arith.constant 0 : i32
                            %38 = llvm.getelementptr %arg0[%c0_i32_32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %39 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%38) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
                            %40 = func.call @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%29, %36, %37, %39) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
                            scf.yield
                          }
                        }
                      } else {
                        %21 = memref.load %alloca_15[] : memref<i1>
                        scf.if %21 {
                          scf.execute_region {
                            %c0_19 = arith.constant 0 : index
                            %23 = memref.load %cast_12[%c0_19] : memref<?xi64>
                            %c0_i32 = arith.constant 0 : i32
                            %c0_i32_20 = arith.constant 0 : i32
                            %24 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_i32_21 = arith.constant 0 : i32
                            %c0_i32_22 = arith.constant 0 : i32
                            %25 = llvm.getelementptr %24[%c0_i32_21, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                            %c0_i32_23 = arith.constant 0 : i32
                            %c1_i32 = arith.constant 1 : i32
                            %26 = llvm.getelementptr %25[%c0_i32_23, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                            %27 = "polygeist.pointer2memref"(%26) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                            %28 = "polygeist.subindex"(%27, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                            %29 = "polygeist.subindex"(%28, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                            %c0_24 = arith.constant 0 : index
                            %30 = memref.load %29[%c0_24] : memref<?xmemref<?xi32>>
                            %cast_25 = memref.cast %alloca_3 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
                            func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%30, %cast_25) : (memref<?xi32>, memref<?x1xmemref<?xi32>>) -> ()
                            func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%cast_5, %cast_25) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
                            %c0_i32_26 = arith.constant 0 : i32
                            %c0_i32_27 = arith.constant 0 : i32
                            %31 = llvm.getelementptr %arg0[%c0_i32_26, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_i32_28 = arith.constant 0 : i32
                            %c0_i32_29 = arith.constant 0 : i32
                            %32 = llvm.getelementptr %31[%c0_i32_28, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                            %c0_i32_30 = arith.constant 0 : i32
                            %c1_i32_31 = arith.constant 1 : i32
                            %33 = llvm.getelementptr %32[%c0_i32_30, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                            %34 = "polygeist.pointer2memref"(%33) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                            %35 = "polygeist.subindex"(%34, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                            %36 = "polygeist.subindex"(%35, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                            %c0_32 = arith.constant 0 : index
                            %37 = memref.load %36[%c0_32] : memref<?xmemref<?xi32>>
                            %cast_33 = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
                            func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%37, %cast_33) : (memref<?xi32>, memref<?x1xmemref<?xi32>>) -> ()
                            func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%cast, %cast_33) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
                            %c0_34 = arith.constant 0 : index
                            %c0_35 = arith.constant 0 : index
                            %38 = memref.load %cast_5[%c0_34, %c0_35] : memref<?x1xmemref<?xi32>>
                            memref.store %38, %alloca_0[%c0_34, %c0_35] : memref<1x1xmemref<?xi32>>
                            %cast_36 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
                            %c0_37 = arith.constant 0 : index
                            %c0_38 = arith.constant 0 : index
                            %39 = memref.load %cast[%c0_37, %c0_38] : memref<?x1xmemref<?xi32>>
                            memref.store %39, %alloca[%c0_37, %c0_38] : memref<1x1xmemref<?xi32>>
                            %cast_39 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
                            %40 = func.call @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0, %23, %cast_36, %cast_39) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i64, memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> memref<?xi32>
                            %c0_40 = arith.constant 0 : index
                            memref.store %40, %cast_7[%c0_40] : memref<?xmemref<?xi32>>
                            scf.yield
                          }
                        }
                        %22 = memref.load %alloca_15[] : memref<i1>
                        scf.if %22 {
                          scf.execute_region {
                            %c0_i32 = arith.constant 0 : i32
                            %c0_i32_19 = arith.constant 0 : i32
                            %23 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_i32_20 = arith.constant 0 : i32
                            %c0_i32_21 = arith.constant 0 : i32
                            %24 = llvm.getelementptr %23[%c0_i32_20, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                            %c0_i32_22 = arith.constant 0 : i32
                            %c1_i32 = arith.constant 1 : i32
                            %25 = llvm.getelementptr %24[%c0_i32_22, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                            %26 = "polygeist.pointer2memref"(%25) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                            %27 = "polygeist.subindex"(%26, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                            %28 = "polygeist.subindex"(%27, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                            %c0_23 = arith.constant 0 : index
                            %29 = memref.load %28[%c0_23] : memref<?xmemref<?xi32>>
                            %c0_i32_24 = arith.constant 0 : i32
                            %c0_i32_25 = arith.constant 0 : i32
                            %30 = llvm.getelementptr %arg0[%c0_i32_24, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %c0_i32_26 = arith.constant 0 : i32
                            %c0_i32_27 = arith.constant 0 : i32
                            %31 = llvm.getelementptr %30[%c0_i32_26, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                            %c0_i32_28 = arith.constant 0 : i32
                            %c1_i32_29 = arith.constant 1 : i32
                            %32 = llvm.getelementptr %31[%c0_i32_28, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                            %33 = "polygeist.pointer2memref"(%32) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                            %34 = "polygeist.subindex"(%33, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                            %35 = "polygeist.subindex"(%34, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                            %c0_30 = arith.constant 0 : index
                            %36 = memref.load %35[%c0_30] : memref<?xmemref<?xi32>>
                            %c0_i32_31 = arith.constant 0 : i32
                            %c0_i32_32 = arith.constant 0 : i32
                            %37 = llvm.getelementptr %arg0[%c0_i32_31, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                            %38 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%37) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
                            func.call @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%29, %36, %38) : (memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
                            scf.yield
                          }
                        }
                      }
                      scf.yield
                    }
                  }
                  scf.yield
                }
              }
              %13 = memref.load %alloca_15[] : memref<i1>
              scf.if %13 {
                scf.execute_region {
                  scf.yield
                }
              }
              %14 = memref.load %alloca_15[] : memref<i1>
              scf.if %14 {
                scf.execute_region {
                  %c0_i32 = arith.constant 0 : i32
                  %c0_i32_18 = arith.constant 0 : i32
                  %18 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_19 = arith.constant 0 : i32
                  %c0_i32_20 = arith.constant 0 : i32
                  %19 = llvm.getelementptr %arg0[%c0_i32_19, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_21 = arith.constant 0 : i32
                  %c0_i32_22 = arith.constant 0 : i32
                  %20 = llvm.getelementptr %19[%c0_i32_21, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_23 = arith.constant 0 : i32
                  %c1_i32 = arith.constant 1 : i32
                  %21 = llvm.getelementptr %20[%c0_i32_23, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %22 = "polygeist.pointer2memref"(%21) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %23 = "polygeist.subindex"(%22, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %24 = "polygeist.subindex"(%23, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_24 = arith.constant 0 : index
                  %25 = memref.load %24[%c0_24] : memref<?xmemref<?xi32>>
                  %c0_i32_25 = arith.constant 0 : i32
                  %c0_i32_26 = arith.constant 0 : i32
                  %26 = llvm.getelementptr %arg0[%c0_i32_25, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_27 = arith.constant 0 : i32
                  %c0_i32_28 = arith.constant 0 : i32
                  %27 = llvm.getelementptr %26[%c0_i32_27, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_29 = arith.constant 0 : i32
                  %c1_i32_30 = arith.constant 1 : i32
                  %28 = llvm.getelementptr %27[%c0_i32_29, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %29 = "polygeist.pointer2memref"(%28) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %30 = "polygeist.subindex"(%29, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %31 = "polygeist.subindex"(%30, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_31 = arith.constant 0 : index
                  %32 = memref.load %31[%c0_31] : memref<?xmemref<?xi32>>
                  %c0_i32_32 = arith.constant 0 : i32
                  %c0_i32_33 = arith.constant 0 : i32
                  %33 = llvm.getelementptr %arg0[%c0_i32_32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_34 = arith.constant 0 : i32
                  %c0_i32_35 = arith.constant 0 : i32
                  %34 = llvm.getelementptr %33[%c0_i32_34, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_36 = arith.constant 0 : i32
                  %c1_i32_37 = arith.constant 1 : i32
                  %35 = llvm.getelementptr %34[%c0_i32_36, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %36 = "polygeist.pointer2memref"(%35) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %37 = "polygeist.subindex"(%36, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %38 = "polygeist.subindex"(%37, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_38 = arith.constant 0 : index
                  %39 = memref.load %38[%c0_38] : memref<?xmemref<?xi32>>
                  %40 = "polygeist.memref2pointer"(%32) : (memref<?xi32>) -> !llvm.ptr<i32>
                  %41 = "polygeist.memref2pointer"(%39) : (memref<?xi32>) -> !llvm.ptr<i32>
                  %42 = llvm.ptrtoint %40 : !llvm.ptr<i32> to i64
                  %43 = llvm.ptrtoint %41 : !llvm.ptr<i32> to i64
                  %44 = arith.subi %42, %43 : i64
                  %45 = "polygeist.typeSize"() {source = i32} : () -> index
                  %46 = arith.index_cast %45 : index to i64
                  %47 = arith.divsi %44, %46 : i64
                  func.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%18, %25, %47) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, memref<?xi32>, i64) -> ()
                  scf.yield
                }
              }
              %15 = memref.load %alloca_15[] : memref<i1>
              scf.if %15 {
                scf.execute_region {
                  %c0_i32 = arith.constant 0 : i32
                  %c0_i32_18 = arith.constant 0 : i32
                  %18 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_19 = arith.constant 0 : i32
                  %c0_i32_20 = arith.constant 0 : i32
                  %19 = llvm.getelementptr %18[%c0_i32_19, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_21 = arith.constant 0 : i32
                  %c1_i32 = arith.constant 1 : i32
                  %20 = llvm.getelementptr %19[%c0_i32_21, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %21 = "polygeist.pointer2memref"(%20) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %22 = "polygeist.subindex"(%21, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %23 = "polygeist.subindex"(%22, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_22 = arith.constant 0 : index
                  %24 = memref.load %cast_7[%c0_22] : memref<?xmemref<?xi32>>
                  %c0_23 = arith.constant 0 : index
                  memref.store %24, %23[%c0_23] : memref<?xmemref<?xi32>>
                  scf.yield
                }
              }
              %16 = memref.load %alloca_15[] : memref<i1>
              scf.if %16 {
                scf.execute_region {
                  %c0_i32 = arith.constant 0 : i32
                  %c0_i32_18 = arith.constant 0 : i32
                  %18 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_19 = arith.constant 0 : i32
                  %c0_i32_20 = arith.constant 0 : i32
                  %19 = llvm.getelementptr %18[%c0_i32_19, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_21 = arith.constant 0 : i32
                  %c1_i32 = arith.constant 1 : i32
                  %20 = llvm.getelementptr %19[%c0_i32_21, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %21 = "polygeist.pointer2memref"(%20) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %22 = "polygeist.subindex"(%21, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %23 = "polygeist.subindex"(%22, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_22 = arith.constant 0 : index
                  %24 = memref.load %cast_7[%c0_22] : memref<?xmemref<?xi32>>
                  %c0_23 = arith.constant 0 : index
                  %25 = memref.load %cast_9[%c0_23] : memref<?xi64>
                  %26 = arith.index_cast %25 : i64 to index
                  %27 = "polygeist.subindex"(%24, %26) : (memref<?xi32>, index) -> memref<?xi32>
                  %c0_24 = arith.constant 0 : index
                  memref.store %27, %23[%c0_24] : memref<?xmemref<?xi32>>
                  scf.yield
                }
              }
              %17 = memref.load %alloca_15[] : memref<i1>
              scf.if %17 {
                scf.execute_region {
                  %c0_i32 = arith.constant 0 : i32
                  %c0_i32_18 = arith.constant 0 : i32
                  %18 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_19 = arith.constant 0 : i32
                  %c0_i32_20 = arith.constant 0 : i32
                  %19 = llvm.getelementptr %18[%c0_i32_19, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_21 = arith.constant 0 : i32
                  %c1_i32 = arith.constant 1 : i32
                  %20 = llvm.getelementptr %19[%c0_i32_21, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %21 = "polygeist.pointer2memref"(%20) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %22 = "polygeist.subindex"(%21, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %23 = "polygeist.subindex"(%22, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_i32_22 = arith.constant 0 : i32
                  %c0_i32_23 = arith.constant 0 : i32
                  %24 = llvm.getelementptr %arg0[%c0_i32_22, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_24 = arith.constant 0 : i32
                  %c0_i32_25 = arith.constant 0 : i32
                  %25 = llvm.getelementptr %24[%c0_i32_24, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_26 = arith.constant 0 : i32
                  %c1_i32_27 = arith.constant 1 : i32
                  %26 = llvm.getelementptr %25[%c0_i32_26, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %27 = "polygeist.pointer2memref"(%26) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %28 = "polygeist.subindex"(%27, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %29 = "polygeist.subindex"(%28, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_28 = arith.constant 0 : index
                  %30 = memref.load %29[%c0_28] : memref<?xmemref<?xi32>>
                  %c0_29 = arith.constant 0 : index
                  %31 = memref.load %cast_12[%c0_29] : memref<?xi64>
                  %32 = arith.index_cast %31 : i64 to index
                  %33 = "polygeist.subindex"(%30, %32) : (memref<?xi32>, index) -> memref<?xi32>
                  %c0_30 = arith.constant 0 : index
                  memref.store %33, %23[%c0_30] : memref<?xmemref<?xi32>>
                  scf.yield
                }
              }
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE9push_backERKi(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %alloca_2 = memref.alloca() : memref<i1>
    %alloca_3 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    %0 = memref.load %alloca_2[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %1 = memref.load %alloca_2[] : memref<i1>
        scf.if %1 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %2 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_5 = arith.constant 0 : i32
            %c0_i32_6 = arith.constant 0 : i32
            %3 = llvm.getelementptr %2[%c0_i32_5, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_7 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %4 = llvm.getelementptr %3[%c0_i32_7, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %6 = "polygeist.subindex"(%5, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %7 = "polygeist.subindex"(%6, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_8 = arith.constant 0 : index
            %8 = memref.load %7[%c0_8] : memref<?xmemref<?xi32>>
            %c0_i32_9 = arith.constant 0 : i32
            %c0_i32_10 = arith.constant 0 : i32
            %9 = llvm.getelementptr %arg0[%c0_i32_9, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_11 = arith.constant 0 : i32
            %c0_i32_12 = arith.constant 0 : i32
            %10 = llvm.getelementptr %9[%c0_i32_11, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_13 = arith.constant 0 : i32
            %c1_i32_14 = arith.constant 1 : i32
            %11 = llvm.getelementptr %10[%c0_i32_13, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %12 = "polygeist.pointer2memref"(%11) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %13 = "polygeist.subindex"(%12, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %14 = "polygeist.subindex"(%13, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_15 = arith.constant 0 : index
            %15 = memref.load %14[%c0_15] : memref<?xmemref<?xi32>>
            %16 = "polygeist.memref2pointer"(%8) : (memref<?xi32>) -> !llvm.ptr<i32>
            %17 = "polygeist.memref2pointer"(%15) : (memref<?xi32>) -> !llvm.ptr<i32>
            %18 = llvm.icmp "ne" %16, %17 : !llvm.ptr<i32>
            %19 = arith.extui %18 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %20 = arith.cmpi ne, %19, %c0_i8 : i8
            scf.if %20 {
              %21 = memref.load %alloca_2[] : memref<i1>
              scf.if %21 {
                scf.execute_region {
                  scf.yield
                }
              }
              %22 = memref.load %alloca_2[] : memref<i1>
              scf.if %22 {
                scf.execute_region {
                  %c0_i32_16 = arith.constant 0 : i32
                  %c0_i32_17 = arith.constant 0 : i32
                  %25 = llvm.getelementptr %arg0[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_18 = arith.constant 0 : i32
                  %c0_i32_19 = arith.constant 0 : i32
                  %26 = llvm.getelementptr %25[%c0_i32_18, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_20 = arith.constant 0 : i32
                  %c0_i32_21 = arith.constant 0 : i32
                  %27 = llvm.getelementptr %26[%c0_i32_20, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
                  %28 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
                  %29 = llvm.icmp "ne" %27, %28 : !llvm.ptr<struct<(struct<(i8)>)>>
                  %30 = arith.select %29, %27, %28 : !llvm.ptr<struct<(struct<(i8)>)>>
                  %c0_i32_22 = arith.constant 0 : i32
                  %c0_i32_23 = arith.constant 0 : i32
                  %31 = llvm.getelementptr %arg0[%c0_i32_22, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_24 = arith.constant 0 : i32
                  %c0_i32_25 = arith.constant 0 : i32
                  %32 = llvm.getelementptr %31[%c0_i32_24, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_26 = arith.constant 0 : i32
                  %c1_i32_27 = arith.constant 1 : i32
                  %33 = llvm.getelementptr %32[%c0_i32_26, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %34 = "polygeist.pointer2memref"(%33) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %35 = "polygeist.subindex"(%34, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %36 = "polygeist.subindex"(%35, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_28 = arith.constant 0 : index
                  %37 = memref.load %36[%c0_28] : memref<?xmemref<?xi32>>
                  func.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%30, %37, %arg1) : (!llvm.ptr<struct<(struct<(i8)>)>>, memref<?xi32>, memref<?xi32>) -> ()
                  scf.yield
                }
              }
              %23 = memref.load %alloca_2[] : memref<i1>
              scf.if %23 {
                scf.execute_region {
                  %c0_i32_16 = arith.constant 0 : i32
                  %c0_i32_17 = arith.constant 0 : i32
                  %25 = llvm.getelementptr %arg0[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                  %c0_i32_18 = arith.constant 0 : i32
                  %c0_i32_19 = arith.constant 0 : i32
                  %26 = llvm.getelementptr %25[%c0_i32_18, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
                  %c0_i32_20 = arith.constant 0 : i32
                  %c1_i32_21 = arith.constant 1 : i32
                  %27 = llvm.getelementptr %26[%c0_i32_20, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
                  %28 = "polygeist.pointer2memref"(%27) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
                  %29 = "polygeist.subindex"(%28, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
                  %30 = "polygeist.subindex"(%29, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
                  %c0_22 = arith.constant 0 : index
                  %31 = memref.load %30[%c0_22] : memref<?xmemref<?xi32>>
                  %32 = "polygeist.subindex"(%31, %c1) : (memref<?xi32>, index) -> memref<?xi32>
                  %c0_23 = arith.constant 0 : index
                  memref.store %32, %30[%c0_23] : memref<?xmemref<?xi32>>
                  scf.yield
                }
              }
              %24 = memref.load %alloca_2[] : memref<i1>
              scf.if %24 {
                scf.execute_region {
                  scf.yield
                }
              }
            } else {
              %cast_16 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
              func.call @_ZNSt6vectorIiSaIiEE3endEv(%arg0, %cast_16) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, memref<?x1xmemref<?xi32>>) -> ()
              func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%cast, %cast_16) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
              %c0_17 = arith.constant 0 : index
              %c0_18 = arith.constant 0 : index
              %21 = memref.load %cast[%c0_17, %c0_18] : memref<?x1xmemref<?xi32>>
              memref.store %21, %alloca[%c0_17, %c0_18] : memref<1x1xmemref<?xi32>>
              %cast_19 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
              func.call @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0, %cast_19, %arg1) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, memref<?x1xmemref<?xi32>>, memref<?xi32>) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i64>
    %0 = llvm.mlir.undef : i64
    memref.store %0, %alloca_1[] : memref<i64>
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %4 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_3 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %5 = llvm.getelementptr %4[%c0_i32_3, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_5 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %6 = llvm.getelementptr %5[%c0_i32_5, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %7 = "polygeist.pointer2memref"(%6) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %8 = "polygeist.subindex"(%7, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %9 = "polygeist.subindex"(%8, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_6 = arith.constant 0 : index
            %10 = memref.load %9[%c0_6] : memref<?xmemref<?xi32>>
            %c0_i32_7 = arith.constant 0 : i32
            %c0_i32_8 = arith.constant 0 : i32
            %11 = llvm.getelementptr %arg0[%c0_i32_7, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_9 = arith.constant 0 : i32
            %c0_i32_10 = arith.constant 0 : i32
            %12 = llvm.getelementptr %11[%c0_i32_9, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_11 = arith.constant 0 : i32
            %c1_i32_12 = arith.constant 1 : i32
            %13 = llvm.getelementptr %12[%c0_i32_11, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %14 = "polygeist.pointer2memref"(%13) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %15 = "polygeist.subindex"(%14, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %16 = "polygeist.subindex"(%15, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %17 = memref.load %16[%c0_13] : memref<?xmemref<?xi32>>
            %18 = "polygeist.memref2pointer"(%10) : (memref<?xi32>) -> !llvm.ptr<i32>
            %19 = "polygeist.memref2pointer"(%17) : (memref<?xi32>) -> !llvm.ptr<i32>
            %20 = llvm.ptrtoint %18 : !llvm.ptr<i32> to i64
            %21 = llvm.ptrtoint %19 : !llvm.ptr<i32> to i64
            %22 = arith.subi %20, %21 : i64
            %23 = "polygeist.typeSize"() {source = i32} : () -> index
            %24 = arith.index_cast %23 : index to i64
            %25 = arith.divsi %22, %24 : i64
            memref.store %25, %alloca_1[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i64>
    return %2 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEEixEm(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: i64) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0_0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0_0] : memref<?xi64>
    %c0_1 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_1] : memref<?xi64>
    %true = arith.constant true
    %alloca_2 = memref.alloca() : memref<i1>
    %alloca_3 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    %alloca_4 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_2[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        scf.yield
      }
    }
    %2 = memref.load %alloca_2[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %4 = memref.load %alloca_2[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_5 = arith.constant 0 : i32
            %5 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_6 = arith.constant 0 : i32
            %c0_i32_7 = arith.constant 0 : i32
            %6 = llvm.getelementptr %5[%c0_i32_6, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_8 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %7 = llvm.getelementptr %6[%c0_i32_8, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %8 = "polygeist.pointer2memref"(%7) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %9 = "polygeist.subindex"(%8, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %10 = "polygeist.subindex"(%9, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_9 = arith.constant 0 : index
            %11 = memref.load %10[%c0_9] : memref<?xmemref<?xi32>>
            %c0_10 = arith.constant 0 : index
            %12 = memref.load %cast[%c0_10] : memref<?xi64>
            %13 = arith.index_cast %12 : i64 to index
            %14 = "polygeist.subindex"(%11, %13) : (memref<?xi32>, index) -> memref<?xi32>
            %c0_11 = arith.constant 0 : index
            memref.store %14, %alloca_4[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_2[] : memref<i1>
            memref.store %false, %alloca_3[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_4[] : memref<memref<?xi32>>
    return %3 : memref<?xi32>
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEEC1Ev(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
    call @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%0) : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>) -> ()
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i64>
    %0 = llvm.mlir.undef : i64
    memref.store %0, %alloca_1[] : memref<i64>
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %4 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %5 = func.call @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%4) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
            %6 = func.call @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%5) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> i64
            memref.store %6, %alloca_1[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i64>
    return %2 : i64
  }
  func.func private @_ZSt20__throw_length_errorPKc(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZNKSt6vectorIiSaIiEE8capacityEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2 = arith.constant 2 : index
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i64>
    %0 = llvm.mlir.undef : i64
    memref.store %0, %alloca_1[] : memref<i64>
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %4 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_3 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %5 = llvm.getelementptr %4[%c0_i32_3, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_5 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %6 = llvm.getelementptr %5[%c0_i32_5, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %7 = "polygeist.pointer2memref"(%6) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %8 = "polygeist.subindex"(%7, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %9 = "polygeist.subindex"(%8, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_6 = arith.constant 0 : index
            %10 = memref.load %9[%c0_6] : memref<?xmemref<?xi32>>
            %c0_i32_7 = arith.constant 0 : i32
            %c0_i32_8 = arith.constant 0 : i32
            %11 = llvm.getelementptr %arg0[%c0_i32_7, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_9 = arith.constant 0 : i32
            %c0_i32_10 = arith.constant 0 : i32
            %12 = llvm.getelementptr %11[%c0_i32_9, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_11 = arith.constant 0 : i32
            %c1_i32_12 = arith.constant 1 : i32
            %13 = llvm.getelementptr %12[%c0_i32_11, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %14 = "polygeist.pointer2memref"(%13) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %15 = "polygeist.subindex"(%14, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %16 = "polygeist.subindex"(%15, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %17 = memref.load %16[%c0_13] : memref<?xmemref<?xi32>>
            %18 = "polygeist.memref2pointer"(%10) : (memref<?xi32>) -> !llvm.ptr<i32>
            %19 = "polygeist.memref2pointer"(%17) : (memref<?xi32>) -> !llvm.ptr<i32>
            %20 = llvm.ptrtoint %18 : !llvm.ptr<i32> to i64
            %21 = llvm.ptrtoint %19 : !llvm.ptr<i32> to i64
            %22 = arith.subi %20, %21 : i64
            %23 = "polygeist.typeSize"() {source = i32} : () -> index
            %24 = arith.index_cast %23 : index to i64
            %25 = arith.divsi %22, %24 : i64
            memref.store %25, %alloca_1[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i64>
    return %2 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
    %c1_i64_0 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64_0 x !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)> : (i64) -> !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
    %c1_i64_1 = arith.constant 1 : i64
    %2 = llvm.alloca %c1_i64_1 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_3 = memref.alloca() : memref<i8>
    %3 = llvm.mlir.undef : i8
    memref.store %3, %alloca_3[] : memref<i8>
    %4 = memref.load %alloca[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %6 = memref.load %alloca[] : memref<i1>
        scf.if %6 {
          scf.execute_region {
            %7 = llvm.bitcast %1 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>> to !llvm.ptr<i8>
            %8 = "polygeist.typeSize"() {source = !llvm.struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>} : () -> index
            %c0_i8 = arith.constant 0 : i8
            %9 = arith.index_cast %8 : index to i64
            %false = arith.constant false
            "llvm.intr.memset"(%7, %c0_i8, %9, %false) : (!llvm.ptr<i8>, i8, i64, i1) -> ()
            %10 = llvm.load %1 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
            llvm.store %10, %0 : !llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %11 = llvm.getelementptr %0[%c0_i32, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(struct<(i8)>)>)>)>)>>, i32) -> !llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>
            %c0_i32_5 = arith.constant 0 : i32
            %c0_i32_6 = arith.constant 0 : i32
            %12 = llvm.getelementptr %11[%c0_i32_5, 0] : (!llvm.ptr<struct<(struct<(struct<(struct<(i8)>)>)>)>>, i32) -> !llvm.ptr<struct<(struct<(struct<(i8)>)>)>>
            %c0_i32_7 = arith.constant 0 : i32
            %c0_i32_8 = arith.constant 0 : i32
            %13 = llvm.getelementptr %12[%c0_i32_7, 0] : (!llvm.ptr<struct<(struct<(struct<(i8)>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
            %c0_i32_9 = arith.constant 0 : i32
            %c0_i32_10 = arith.constant 0 : i32
            %14 = llvm.getelementptr %13[%c0_i32_9, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>, i32) -> !llvm.ptr<struct<(i8)>>
            %15 = llvm.mlir.null : !llvm.ptr<struct<(i8)>>
            %16 = llvm.icmp "ne" %14, %15 : !llvm.ptr<struct<(i8)>>
            %17 = arith.select %16, %14, %15 : !llvm.ptr<struct<(i8)>>
            func.call @_ZNSt17integral_constantIbLb1EEC1EOS0_(%2, %17) : (!llvm.ptr<struct<(i8)>>, !llvm.ptr<struct<(i8)>>) -> ()
            %18 = llvm.load %2 : !llvm.ptr<struct<(i8)>>
            %19 = func.call @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%18) : (!llvm.struct<(i8)>) -> i8
            memref.store %19, %alloca_3[] : memref<i8>
            %false_11 = arith.constant false
            memref.store %false_11, %alloca[] : memref<i1>
            memref.store %false_11, %alloca_2[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_3[] : memref<i8>
    return %5 : i8
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, %arg1: i64) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %c0_0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_0] : memref<?xi64>
    %true = arith.constant true
    %alloca_1 = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    %alloca_3 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_1[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %4 = memref.load %alloca_1[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %4 = memref.load %alloca_1[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            %c0_4 = arith.constant 0 : index
            %5 = memref.load %cast[%c0_4] : memref<?xi64>
            %c0_i32 = arith.constant 0 : i32
            %c0_i64 = arith.constant 0 : i64
            %6 = arith.cmpi ne, %5, %c0_i64 : i64
            %7 = arith.extui %6 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %8 = arith.cmpi ne, %7, %c0_i8 : i8
            %9 = scf.if %8 -> (memref<?xi32>) {
              %c0_i32_5 = arith.constant 0 : i32
              %c0_i32_6 = arith.constant 0 : i32
              %10 = llvm.getelementptr %arg0[%c0_i32_5, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
              %c0_i32_7 = arith.constant 0 : i32
              %c0_i32_8 = arith.constant 0 : i32
              %11 = llvm.getelementptr %10[%c0_i32_7, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
              %12 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
              %13 = llvm.icmp "ne" %11, %12 : !llvm.ptr<struct<(struct<(i8)>)>>
              %14 = arith.select %13, %11, %12 : !llvm.ptr<struct<(struct<(i8)>)>>
              %c0_9 = arith.constant 0 : index
              %15 = memref.load %cast[%c0_9] : memref<?xi64>
              %16 = func.call @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%14, %15) : (!llvm.ptr<struct<(struct<(i8)>)>>, i64) -> memref<?xi32>
              scf.yield %16 : memref<?xi32>
            } else {
              %10 = llvm.mlir.null : !llvm.ptr<i8>
              %11 = "polygeist.pointer2memref"(%10) : (!llvm.ptr<i8>) -> memref<?xi32>
              scf.yield %11 : memref<?xi32>
            }
            memref.store %9, %alloca_3[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_1[] : memref<i1>
            memref.store %false, %alloca_2[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_3[] : memref<memref<?xi32>>
    return %3 : memref<?xi32>
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %c1_i64_0 = arith.constant 1 : i64
    %1 = llvm.alloca %c1_i64_0 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %c1_i64_1 = arith.constant 1 : i64
    %2 = llvm.alloca %c1_i64_1 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_5[%c0] : memref<?xmemref<?xi32>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %cast_3[%c0_6] : memref<?xmemref<?xi32>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_7] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_8 = memref.alloca() : memref<i1>
    %alloca_9 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_9[] : memref<i1>
    memref.store %true, %alloca_8[] : memref<i1>
    %alloca_10 = memref.alloca() : memref<memref<?xi32>>
    %3 = memref.load %alloca_8[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %6 = memref.load %alloca_8[] : memref<i1>
        scf.if %6 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_8[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %6 = memref.load %alloca_8[] : memref<i1>
        scf.if %6 {
          scf.execute_region {
            %c0_11 = arith.constant 0 : index
            %7 = memref.load %cast_5[%c0_11] : memref<?xmemref<?xi32>>
            %c0_12 = arith.constant 0 : index
            %8 = memref.load %cast_3[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %9 = memref.load %cast[%c0_13] : memref<?xmemref<?xi32>>
            %10 = llvm.load %1 : !llvm.ptr<struct<(i8)>>
            llvm.store %10, %0 : !llvm.ptr<struct<(i8)>>
            func.call @_ZNSt17integral_constantIbLb1EEC1EOS0_(%2, %0) : (!llvm.ptr<struct<(i8)>>, !llvm.ptr<struct<(i8)>>) -> ()
            %11 = llvm.load %2 : !llvm.ptr<struct<(i8)>>
            %12 = func.call @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%7, %8, %9, %arg3, %11) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>, !llvm.struct<(i8)>) -> memref<?xi32>
            memref.store %12, %alloca_10[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_8[] : memref<i1>
            memref.store %false, %alloca_9[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_10[] : memref<memref<?xi32>>
    return %5 : memref<?xi32>
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<!llvm.ptr<struct<(struct<(i8)>)>>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %3 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_3 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %4 = llvm.getelementptr %3[%c0_i32_3, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
            %5 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
            %6 = llvm.icmp "ne" %4, %5 : !llvm.ptr<struct<(struct<(i8)>)>>
            %7 = arith.select %6, %4, %5 : !llvm.ptr<struct<(struct<(i8)>)>>
            memref.store %7, %alloca_1[] : memref<!llvm.ptr<struct<(struct<(i8)>)>>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_1[] : memref<!llvm.ptr<struct<(struct<(i8)>)>>>
    return %1 : !llvm.ptr<struct<(struct<(i8)>)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE20_M_allocate_and_copyISt13move_iteratorIPiEEES4_mT_S6_(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: i64, %arg2: memref<?x1xmemref<?xi32>>, %arg3: memref<?x1xmemref<?xi32>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_6 = memref.alloca() : memref<1xi64>
    %cast_7 = memref.cast %alloca_6 : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast_7[%c0] : memref<?xi64>
    %c0_8 = arith.constant 0 : index
    memref.store %arg1, %cast_7[%c0_8] : memref<?xi64>
    %true = arith.constant true
    %alloca_9 = memref.alloca() : memref<i1>
    %alloca_10 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_10[] : memref<i1>
    memref.store %true, %alloca_9[] : memref<i1>
    %alloca_11 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_9[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %4 = memref.load %alloca_9[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_12 = arith.constant 0 : i32
            %5 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_13 = arith.constant 0 : index
            %6 = memref.load %cast_7[%c0_13] : memref<?xi64>
            %7 = func.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%5, %6) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i64) -> memref<?xi32>
            %c0_14 = arith.constant 0 : index
            memref.store %7, %cast_5[%c0_14] : memref<?xmemref<?xi32>>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_9[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %4 = memref.load %alloca_9[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast_3, %arg2) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast, %arg3) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_12 = arith.constant 0 : index
            %6 = memref.load %cast_5[%c0_12] : memref<?xmemref<?xi32>>
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_13 = arith.constant 0 : i32
            %7 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %8 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%7) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
            %c0_14 = arith.constant 0 : index
            %c0_15 = arith.constant 0 : index
            %9 = memref.load %cast_3[%c0_14, %c0_15] : memref<?x1xmemref<?xi32>>
            memref.store %9, %alloca_0[%c0_14, %c0_15] : memref<1x1xmemref<?xi32>>
            %cast_16 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %c0_17 = arith.constant 0 : index
            %c0_18 = arith.constant 0 : index
            %10 = memref.load %cast[%c0_17, %c0_18] : memref<?x1xmemref<?xi32>>
            memref.store %10, %alloca[%c0_17, %c0_18] : memref<1x1xmemref<?xi32>>
            %cast_19 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %11 = func.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%cast_16, %cast_19, %6, %8) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
            scf.yield
          }
        }
        %5 = memref.load %alloca_9[] : memref<i1>
        scf.if %5 {
          scf.execute_region {
            %6 = memref.load %alloca_9[] : memref<i1>
            scf.if %6 {
              scf.execute_region {
                %c0_12 = arith.constant 0 : index
                %7 = memref.load %cast_5[%c0_12] : memref<?xmemref<?xi32>>
                memref.store %7, %alloca_11[] : memref<memref<?xi32>>
                %false = arith.constant false
                memref.store %false, %alloca_9[] : memref<i1>
                memref.store %false, %alloca_10[] : memref<i1>
                scf.yield
              }
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_11[] : memref<memref<?xi32>>
    return %3 : memref<?xi32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1EOS1_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %0 = "polygeist.subindex"(%arg1, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %1 = "polygeist.subindex"(%0, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_0 = arith.constant 0 : index
    %2 = memref.load %1[%c0_0] : memref<?xmemref<?xi32>>
    %3 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %4 = "polygeist.subindex"(%3, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %2, %4[%c0_1] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%arg0: memref<?xi32>, %arg1: memref<?x1xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_4 = arith.constant 0 : index
    memref.store %arg0, %cast_3[%c0_4] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_5 = memref.alloca() : memref<i1>
    %alloca_6 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    memref.store %true, %alloca_5[] : memref<i1>
    %0 = memref.load %alloca_5[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %1 = memref.load %alloca_5[] : memref<i1>
        scf.if %1 {
          scf.execute_region {
            %c0_7 = arith.constant 0 : index
            %2 = memref.load %cast_3[%c0_7] : memref<?xmemref<?xi32>>
            func.call @_ZNSt13move_iteratorIPiEC1ES0_(%cast, %2) : (memref<?x1xmemref<?xi32>>, memref<?xi32>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%cast_1, %cast) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %3 = memref.load %cast_1[%c0, %c0] : memref<?x1xmemref<?xi32>>
            memref.store %3, %arg1[%c0, %c0] : memref<?x1xmemref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_5[] : memref<i1>
            memref.store %false, %alloca_6[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func.func @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_1[%c0] : memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_2] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_3 = memref.alloca() : memref<i1>
    %alloca_4 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    %0 = memref.load %alloca_3[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %c0_5 = arith.constant 0 : index
        %1 = memref.load %cast_1[%c0_5] : memref<?xmemref<?xi32>>
        %c0_6 = arith.constant 0 : index
        %2 = memref.load %cast[%c0_6] : memref<?xmemref<?xi32>>
        func.call @_ZSt8_DestroyIPiEvT_S1_(%1, %2) : (memref<?xi32>, memref<?xi32>) -> ()
        scf.yield
      }
    }
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, %arg1: memref<?xi32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %cast_1[%c0_2] : memref<?xmemref<?xi32>>
    %c0_3 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_3] : memref<?xi64>
    %true = arith.constant true
    %alloca_4 = memref.alloca() : memref<i1>
    %alloca_5 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_5[] : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    %1 = memref.load %alloca_4[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca_4[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_4[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %3 = memref.load %alloca_4[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_6 = arith.constant 0 : index
            %4 = memref.load %cast_1[%c0_6] : memref<?xmemref<?xi32>>
            %5 = "polygeist.memref2pointer"(%4) : (memref<?xi32>) -> !llvm.ptr<i32>
            %6 = llvm.mlir.null : !llvm.ptr<i32>
            %7 = llvm.icmp "ne" %5, %6 : !llvm.ptr<i32>
            scf.if %7 {
              %c0_i32 = arith.constant 0 : i32
              %c0_i32_7 = arith.constant 0 : i32
              %8 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
              %c0_i32_8 = arith.constant 0 : i32
              %c0_i32_9 = arith.constant 0 : i32
              %9 = llvm.getelementptr %8[%c0_i32_8, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
              %10 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
              %11 = llvm.icmp "ne" %9, %10 : !llvm.ptr<struct<(struct<(i8)>)>>
              %12 = arith.select %11, %9, %10 : !llvm.ptr<struct<(struct<(i8)>)>>
              %c0_10 = arith.constant 0 : index
              %13 = memref.load %cast_1[%c0_10] : memref<?xmemref<?xi32>>
              %c0_11 = arith.constant 0 : index
              %14 = memref.load %cast[%c0_11] : memref<?xi64>
              func.call @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%12, %13, %14) : (!llvm.ptr<struct<(struct<(i8)>)>>, memref<?xi32>, i64) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: memref<?xi32>, %arg2: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_0 = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    %0 = memref.load %alloca_0[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_2 = arith.constant 0 : i32
        %1 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>, i32) -> !llvm.ptr<struct<(i8)>>
        %c0_3 = arith.constant 0 : index
        %2 = memref.load %cast[%c0_3] : memref<?xmemref<?xi32>>
        func.call @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%1, %2, %arg2) : (!llvm.ptr<struct<(i8)>>, memref<?xi32>, memref<?xi32>) -> ()
        scf.yield
      }
    }
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE17_M_realloc_insertIJRKiEEEvN9__gnu_cxx17__normal_iteratorIPiS1_EEDpOT_(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: memref<?x1xmemref<?xi32>>, %arg2: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2 = arith.constant 2 : index
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xi64>
    %cast_3 = memref.cast %alloca_2 : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast_3[%c0] : memref<?xi64>
    %alloca_4 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_5 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_6 = memref.cast %alloca_5 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c1 = arith.constant 1 : index
    %alloca_7 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_8 = memref.cast %alloca_7 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_9 = arith.constant 0 : index
    %alloca_10 = memref.alloca() : memref<1xi64>
    %cast_11 = memref.cast %alloca_10 : memref<1xi64> to memref<?xi64>
    %c0_12 = arith.constant 0 : index
    %1 = llvm.mlir.undef : i64
    memref.store %1, %cast_11[%c0_12] : memref<?xi64>
    %true = arith.constant true
    %alloca_13 = memref.alloca() : memref<i1>
    %alloca_14 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_14[] : memref<i1>
    memref.store %true, %alloca_13[] : memref<i1>
    %2 = memref.load %alloca_13[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c1_i32 = arith.constant 1 : i32
            %c1_i64 = arith.constant 1 : i64
            %16 = llvm.mlir.addressof @str2 : !llvm.ptr<array<26 x i8>>
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_15 = arith.constant 0 : i32
            %17 = llvm.getelementptr %16[%c0_i32, %c0_i32_15] : (!llvm.ptr<array<26 x i8>>, i32, i32) -> !llvm.ptr<i8>
            %18 = func.call @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0, %c1_i64, %17) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i64, !llvm.ptr<i8>) -> i64
            %c0_16 = arith.constant 0 : index
            memref.store %18, %cast_11[%c0_16] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_13[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_15 = arith.constant 0 : i32
            %16 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_16 = arith.constant 0 : i32
            %c0_i32_17 = arith.constant 0 : i32
            %17 = llvm.getelementptr %16[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_18 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %18 = llvm.getelementptr %17[%c0_i32_18, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %19 = "polygeist.pointer2memref"(%18) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %20 = "polygeist.subindex"(%19, %c0_9) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %21 = "polygeist.subindex"(%20, %c0_9) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_19 = arith.constant 0 : index
            %22 = memref.load %21[%c0_19] : memref<?xmemref<?xi32>>
            %c0_20 = arith.constant 0 : index
            memref.store %22, %cast_8[%c0_20] : memref<?xmemref<?xi32>>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_13[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_15 = arith.constant 0 : i32
            %16 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_16 = arith.constant 0 : i32
            %c0_i32_17 = arith.constant 0 : i32
            %17 = llvm.getelementptr %16[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_18 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %18 = llvm.getelementptr %17[%c0_i32_18, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %19 = "polygeist.pointer2memref"(%18) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %20 = "polygeist.subindex"(%19, %c0_9) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %21 = "polygeist.subindex"(%20, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_19 = arith.constant 0 : index
            %22 = memref.load %21[%c0_19] : memref<?xmemref<?xi32>>
            %c0_20 = arith.constant 0 : index
            memref.store %22, %cast_6[%c0_20] : memref<?xmemref<?xi32>>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_13[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %cast_15 = memref.cast %alloca_4 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            func.call @_ZNSt6vectorIiSaIiEE5beginEv(%arg0, %cast_15) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, memref<?x1xmemref<?xi32>>) -> ()
            %16 = func.call @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg1, %cast_15) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> i64
            %c0_16 = arith.constant 0 : index
            memref.store %16, %cast_3[%c0_16] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %6 = memref.load %alloca_13[] : memref<i1>
    scf.if %6 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_15 = arith.constant 0 : i32
            %16 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_16 = arith.constant 0 : index
            %17 = memref.load %cast_11[%c0_16] : memref<?xi64>
            %18 = func.call @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(%16, %17) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i64) -> memref<?xi32>
            %c0_17 = arith.constant 0 : index
            memref.store %18, %cast_1[%c0_17] : memref<?xmemref<?xi32>>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %7 = memref.load %alloca_13[] : memref<i1>
    scf.if %7 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c0_15 = arith.constant 0 : index
            %16 = memref.load %cast_1[%c0_15] : memref<?xmemref<?xi32>>
            %c0_16 = arith.constant 0 : index
            memref.store %16, %cast[%c0_16] : memref<?xmemref<?xi32>>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %8 = memref.load %alloca_13[] : memref<i1>
    scf.if %8 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_15 = arith.constant 0 : i32
            %18 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_16 = arith.constant 0 : i32
            %c0_i32_17 = arith.constant 0 : i32
            %19 = llvm.getelementptr %18[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_18 = arith.constant 0 : i32
            %c0_i32_19 = arith.constant 0 : i32
            %20 = llvm.getelementptr %19[%c0_i32_18, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
            %21 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
            %22 = llvm.icmp "ne" %20, %21 : !llvm.ptr<struct<(struct<(i8)>)>>
            %23 = arith.select %22, %20, %21 : !llvm.ptr<struct<(struct<(i8)>)>>
            %c0_20 = arith.constant 0 : index
            %24 = memref.load %cast_1[%c0_20] : memref<?xmemref<?xi32>>
            %c0_21 = arith.constant 0 : index
            %25 = memref.load %cast_3[%c0_21] : memref<?xi64>
            %26 = arith.index_cast %25 : i64 to index
            %27 = "polygeist.subindex"(%24, %26) : (memref<?xi32>, index) -> memref<?xi32>
            func.call @_ZNSt16allocator_traitsISaIiEE9constructIiJRKiEEEvRS0_PT_DpOT0_(%23, %27, %arg2) : (!llvm.ptr<struct<(struct<(i8)>)>>, memref<?xi32>, memref<?xi32>) -> ()
            scf.yield
          }
        }
        %16 = memref.load %alloca_13[] : memref<i1>
        scf.if %16 {
          scf.execute_region {
            %18 = llvm.mlir.null : !llvm.ptr<i8>
            %19 = "polygeist.pointer2memref"(%18) : (!llvm.ptr<i8>) -> memref<?xi32>
            %c0_15 = arith.constant 0 : index
            memref.store %19, %cast[%c0_15] : memref<?xmemref<?xi32>>
            scf.yield
          }
        }
        %17 = memref.load %alloca_13[] : memref<i1>
        scf.if %17 {
          scf.execute_region {
            %18 = memref.load %alloca_13[] : memref<i1>
            scf.if %18 {
              scf.execute_region {
                %19 = func.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
                %c0_i8 = arith.constant 0 : i8
                %20 = arith.cmpi ne, %19, %c0_i8 : i8
                scf.if %20 {
                  %21 = memref.load %alloca_13[] : memref<i1>
                  scf.if %21 {
                    scf.execute_region {
                      %c0_15 = arith.constant 0 : index
                      %24 = memref.load %cast_8[%c0_15] : memref<?xmemref<?xi32>>
                      %25 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>>
                      %c0_16 = arith.constant 0 : index
                      %26 = memref.load %25[%c0_16] : memref<?xmemref<?xi32>>
                      %c0_17 = arith.constant 0 : index
                      %27 = memref.load %cast_1[%c0_17] : memref<?xmemref<?xi32>>
                      %c0_i32 = arith.constant 0 : i32
                      %c0_i32_18 = arith.constant 0 : i32
                      %28 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                      %29 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%28) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
                      %30 = func.call @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%24, %26, %27, %29) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
                      %c0_19 = arith.constant 0 : index
                      memref.store %30, %cast[%c0_19] : memref<?xmemref<?xi32>>
                      scf.yield
                    }
                  }
                  %22 = memref.load %alloca_13[] : memref<i1>
                  scf.if %22 {
                    scf.execute_region {
                      %c0_15 = arith.constant 0 : index
                      %24 = memref.load %cast[%c0_15] : memref<?xmemref<?xi32>>
                      %25 = "polygeist.subindex"(%24, %c1) : (memref<?xi32>, index) -> memref<?xi32>
                      %c0_16 = arith.constant 0 : index
                      memref.store %25, %cast[%c0_16] : memref<?xmemref<?xi32>>
                      scf.yield
                    }
                  }
                  %23 = memref.load %alloca_13[] : memref<i1>
                  scf.if %23 {
                    scf.execute_region {
                      %24 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>>
                      %c0_15 = arith.constant 0 : index
                      %25 = memref.load %24[%c0_15] : memref<?xmemref<?xi32>>
                      %c0_16 = arith.constant 0 : index
                      %26 = memref.load %cast_6[%c0_16] : memref<?xmemref<?xi32>>
                      %c0_17 = arith.constant 0 : index
                      %27 = memref.load %cast[%c0_17] : memref<?xmemref<?xi32>>
                      %c0_i32 = arith.constant 0 : i32
                      %c0_i32_18 = arith.constant 0 : i32
                      %28 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                      %29 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%28) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
                      %30 = func.call @_ZNSt6vectorIiSaIiEE11_S_relocateEPiS2_S2_RS0_(%25, %26, %27, %29) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
                      %c0_19 = arith.constant 0 : index
                      memref.store %30, %cast[%c0_19] : memref<?xmemref<?xi32>>
                      scf.yield
                    }
                  }
                } else {
                  %21 = memref.load %alloca_13[] : memref<i1>
                  scf.if %21 {
                    scf.execute_region {
                      %c0_15 = arith.constant 0 : index
                      %24 = memref.load %cast_8[%c0_15] : memref<?xmemref<?xi32>>
                      %25 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>>
                      %c0_16 = arith.constant 0 : index
                      %26 = memref.load %25[%c0_16] : memref<?xmemref<?xi32>>
                      %c0_17 = arith.constant 0 : index
                      %27 = memref.load %cast_1[%c0_17] : memref<?xmemref<?xi32>>
                      %c0_i32 = arith.constant 0 : i32
                      %c0_i32_18 = arith.constant 0 : i32
                      %28 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                      %29 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%28) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
                      %30 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%24, %26, %27, %29) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
                      %c0_19 = arith.constant 0 : index
                      memref.store %30, %cast[%c0_19] : memref<?xmemref<?xi32>>
                      scf.yield
                    }
                  }
                  %22 = memref.load %alloca_13[] : memref<i1>
                  scf.if %22 {
                    scf.execute_region {
                      %c0_15 = arith.constant 0 : index
                      %24 = memref.load %cast[%c0_15] : memref<?xmemref<?xi32>>
                      %25 = "polygeist.subindex"(%24, %c1) : (memref<?xi32>, index) -> memref<?xi32>
                      %c0_16 = arith.constant 0 : index
                      memref.store %25, %cast[%c0_16] : memref<?xmemref<?xi32>>
                      scf.yield
                    }
                  }
                  %23 = memref.load %alloca_13[] : memref<i1>
                  scf.if %23 {
                    scf.execute_region {
                      %24 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>>
                      %c0_15 = arith.constant 0 : index
                      %25 = memref.load %24[%c0_15] : memref<?xmemref<?xi32>>
                      %c0_16 = arith.constant 0 : index
                      %26 = memref.load %cast_6[%c0_16] : memref<?xmemref<?xi32>>
                      %c0_17 = arith.constant 0 : index
                      %27 = memref.load %cast[%c0_17] : memref<?xmemref<?xi32>>
                      %c0_i32 = arith.constant 0 : i32
                      %c0_i32_18 = arith.constant 0 : i32
                      %28 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
                      %29 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%28) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
                      %30 = func.call @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%25, %26, %27, %29) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
                      %c0_19 = arith.constant 0 : index
                      memref.store %30, %cast[%c0_19] : memref<?xmemref<?xi32>>
                      scf.yield
                    }
                  }
                }
                scf.yield
              }
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %9 = memref.load %alloca_13[] : memref<i1>
    scf.if %9 {
      scf.execute_region {
        %15 = memref.load %alloca_13[] : memref<i1>
        scf.if %15 {
          scf.execute_region {
            %16 = func.call @_ZNSt6vectorIiSaIiEE15_S_use_relocateEv() : () -> i8
            %c0_i8 = arith.constant 0 : i8
            %17 = arith.cmpi ne, %16, %c0_i8 : i8
            %true_15 = arith.constant true
            %18 = arith.xori %17, %true_15 : i1
            %19 = arith.extui %18 : i1 to i8
            %c0_i8_16 = arith.constant 0 : i8
            %20 = arith.cmpi ne, %19, %c0_i8_16 : i8
            scf.if %20 {
              %c0_17 = arith.constant 0 : index
              %21 = memref.load %cast_8[%c0_17] : memref<?xmemref<?xi32>>
              %c0_18 = arith.constant 0 : index
              %22 = memref.load %cast_6[%c0_18] : memref<?xmemref<?xi32>>
              %c0_i32 = arith.constant 0 : i32
              %c0_i32_19 = arith.constant 0 : i32
              %23 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
              %24 = func.call @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%23) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>>
              func.call @_ZSt8_DestroyIPiiEvT_S1_RSaIT0_E(%21, %22, %24) : (memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %10 = memref.load %alloca_13[] : memref<i1>
    scf.if %10 {
      scf.execute_region {
        scf.yield
      }
    }
    %11 = memref.load %alloca_13[] : memref<i1>
    scf.if %11 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_15 = arith.constant 0 : i32
        %15 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
        %c0_16 = arith.constant 0 : index
        %16 = memref.load %cast_8[%c0_16] : memref<?xmemref<?xi32>>
        %c0_i32_17 = arith.constant 0 : i32
        %c0_i32_18 = arith.constant 0 : i32
        %17 = llvm.getelementptr %arg0[%c0_i32_17, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
        %c0_i32_19 = arith.constant 0 : i32
        %c0_i32_20 = arith.constant 0 : i32
        %18 = llvm.getelementptr %17[%c0_i32_19, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
        %c0_i32_21 = arith.constant 0 : i32
        %c1_i32 = arith.constant 1 : i32
        %19 = llvm.getelementptr %18[%c0_i32_21, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
        %20 = "polygeist.pointer2memref"(%19) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
        %21 = "polygeist.subindex"(%20, %c0_9) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
        %22 = "polygeist.subindex"(%21, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
        %c0_22 = arith.constant 0 : index
        %23 = memref.load %22[%c0_22] : memref<?xmemref<?xi32>>
        %c0_23 = arith.constant 0 : index
        %24 = memref.load %cast_8[%c0_23] : memref<?xmemref<?xi32>>
        %25 = "polygeist.memref2pointer"(%23) : (memref<?xi32>) -> !llvm.ptr<i32>
        %26 = "polygeist.memref2pointer"(%24) : (memref<?xi32>) -> !llvm.ptr<i32>
        %27 = llvm.ptrtoint %25 : !llvm.ptr<i32> to i64
        %28 = llvm.ptrtoint %26 : !llvm.ptr<i32> to i64
        %29 = arith.subi %27, %28 : i64
        %30 = "polygeist.typeSize"() {source = i32} : () -> index
        %31 = arith.index_cast %30 : index to i64
        %32 = arith.divsi %29, %31 : i64
        func.call @_ZNSt12_Vector_baseIiSaIiEE13_M_deallocateEPim(%15, %16, %32) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, memref<?xi32>, i64) -> ()
        scf.yield
      }
    }
    %12 = memref.load %alloca_13[] : memref<i1>
    scf.if %12 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_15 = arith.constant 0 : i32
        %15 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
        %c0_i32_16 = arith.constant 0 : i32
        %c0_i32_17 = arith.constant 0 : i32
        %16 = llvm.getelementptr %15[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
        %c0_i32_18 = arith.constant 0 : i32
        %c1_i32 = arith.constant 1 : i32
        %17 = llvm.getelementptr %16[%c0_i32_18, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
        %18 = "polygeist.pointer2memref"(%17) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
        %19 = "polygeist.subindex"(%18, %c0_9) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
        %20 = "polygeist.subindex"(%19, %c0_9) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
        %c0_19 = arith.constant 0 : index
        %21 = memref.load %cast_1[%c0_19] : memref<?xmemref<?xi32>>
        %c0_20 = arith.constant 0 : index
        memref.store %21, %20[%c0_20] : memref<?xmemref<?xi32>>
        scf.yield
      }
    }
    %13 = memref.load %alloca_13[] : memref<i1>
    scf.if %13 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_15 = arith.constant 0 : i32
        %15 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
        %c0_i32_16 = arith.constant 0 : i32
        %c0_i32_17 = arith.constant 0 : i32
        %16 = llvm.getelementptr %15[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
        %c0_i32_18 = arith.constant 0 : i32
        %c1_i32 = arith.constant 1 : i32
        %17 = llvm.getelementptr %16[%c0_i32_18, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
        %18 = "polygeist.pointer2memref"(%17) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
        %19 = "polygeist.subindex"(%18, %c0_9) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
        %20 = "polygeist.subindex"(%19, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
        %c0_19 = arith.constant 0 : index
        %21 = memref.load %cast[%c0_19] : memref<?xmemref<?xi32>>
        %c0_20 = arith.constant 0 : index
        memref.store %21, %20[%c0_20] : memref<?xmemref<?xi32>>
        scf.yield
      }
    }
    %14 = memref.load %alloca_13[] : memref<i1>
    scf.if %14 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_15 = arith.constant 0 : i32
        %15 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
        %c0_i32_16 = arith.constant 0 : i32
        %c0_i32_17 = arith.constant 0 : i32
        %16 = llvm.getelementptr %15[%c0_i32_16, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
        %c0_i32_18 = arith.constant 0 : i32
        %c1_i32 = arith.constant 1 : i32
        %17 = llvm.getelementptr %16[%c0_i32_18, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
        %18 = "polygeist.pointer2memref"(%17) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
        %19 = "polygeist.subindex"(%18, %c0_9) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
        %20 = "polygeist.subindex"(%19, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
        %c0_19 = arith.constant 0 : index
        %21 = memref.load %cast_1[%c0_19] : memref<?xmemref<?xi32>>
        %c0_20 = arith.constant 0 : index
        %22 = memref.load %cast_11[%c0_20] : memref<?xi64>
        %23 = arith.index_cast %22 : i64 to index
        %24 = "polygeist.subindex"(%21, %23) : (memref<?xi32>, index) -> memref<?xi32>
        %c0_21 = arith.constant 0 : index
        memref.store %24, %20[%c0_21] : memref<?xmemref<?xi32>>
        scf.yield
      }
    }
    return
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %0 = "polygeist.subindex"(%arg1, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %1 = "polygeist.subindex"(%0, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_0 = arith.constant 0 : index
    %2 = memref.load %1[%c0_0] : memref<?xmemref<?xi32>>
    %3 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %4 = "polygeist.subindex"(%3, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %2, %4[%c0_1] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE3endEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: memref<?x1xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %true = arith.constant true
    %alloca_2 = memref.alloca() : memref<i1>
    %alloca_3 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    %0 = memref.load %alloca_2[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %1 = memref.load %alloca_2[] : memref<i1>
        scf.if %1 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %2 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_5 = arith.constant 0 : i32
            %c0_i32_6 = arith.constant 0 : i32
            %3 = llvm.getelementptr %2[%c0_i32_5, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_7 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %4 = llvm.getelementptr %3[%c0_i32_7, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %6 = "polygeist.subindex"(%5, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %7 = "polygeist.subindex"(%6, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%cast, %7) : (memref<?x1xmemref<?xi32>>, memref<?xmemref<?xi32>>) -> ()
            func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%cast_1, %cast) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %8 = memref.load %cast_1[%c0, %c0] : memref<?x1xmemref<?xi32>>
            memref.store %8, %arg1[%c0, %c0] : memref<?x1xmemref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_2[] : memref<i1>
            memref.store %false, %alloca_3[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1Ev(%arg0: !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
    call @_ZNSaIiEC1Ev(%0) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> ()
    %c0_i32_1 = arith.constant 0 : i32
    %c1_i32 = arith.constant 1 : i32
    %1 = llvm.getelementptr %arg0[%c0_i32_1, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
    %2 = "polygeist.pointer2memref"(%1) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
    call @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%2) : (memref<?x3xmemref<?xi32>>) -> ()
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xi64>
    %cast_1 = memref.cast %alloca_0 : memref<1xi64> to memref<?xi64>
    %c0_2 = arith.constant 0 : index
    %1 = llvm.mlir.undef : i64
    memref.store %1, %cast_1[%c0_2] : memref<?xi64>
    %true = arith.constant true
    %alloca_3 = memref.alloca() : memref<i1>
    %alloca_4 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    %alloca_5 = memref.alloca() : memref<i64>
    %2 = llvm.mlir.undef : i64
    memref.store %2, %alloca_5[] : memref<i64>
    %3 = memref.load %alloca_3[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %7 = memref.load %alloca_3[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %c1_i32 = arith.constant 1 : i32
            %c-1_i32 = arith.constant -1 : i32
            %c-1_i64 = arith.constant -1 : i64
            %c0_i32 = arith.constant 0 : i32
            %c0_i64 = arith.constant 0 : i64
            %8 = arith.cmpi slt, %c-1_i64, %c0_i64 : i64
            %9 = arith.extui %8 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %10 = arith.cmpi ne, %9, %c0_i8 : i8
            %11 = scf.if %10 -> (i64) {
              %c1_i32_7 = arith.constant 1 : i32
              %c1_i64 = arith.constant 1 : i64
              %c64_i32 = arith.constant 64 : i32
              %c1_i32_8 = arith.constant 1 : i32
              %c-1_i32_9 = arith.constant -1 : i32
              %c-1_i64_10 = arith.constant -1 : i64
              %c0_i32_11 = arith.constant 0 : i32
              %c0_i64_12 = arith.constant 0 : i64
              %15 = arith.cmpi slt, %c-1_i64_10, %c0_i64_12 : i64
              %16 = arith.extui %15 : i1 to i8
              %17 = arith.extui %16 : i8 to i32
              %18 = arith.subi %c64_i32, %17 : i32
              %c1_i32_13 = arith.constant 1 : i32
              %19 = arith.subi %18, %c1_i32_13 : i32
              %20 = arith.extui %19 : i32 to i64
              %21 = arith.shli %c1_i64, %20 : i64
              %c1_i32_14 = arith.constant 1 : i32
              %c1_i64_15 = arith.constant 1 : i64
              %22 = arith.subi %21, %c1_i64_15 : i64
              %c1_i32_16 = arith.constant 1 : i32
              %23 = arith.extui %c1_i32_16 : i32 to i64
              %24 = arith.shli %22, %23 : i64
              %c1_i32_17 = arith.constant 1 : i32
              %c1_i64_18 = arith.constant 1 : i64
              %25 = arith.addi %24, %c1_i64_18 : i64
              scf.yield %25 : i64
            } else {
              %c0_i32_7 = arith.constant 0 : i32
              %c0_i64_8 = arith.constant 0 : i64
              %c-1_i64_9 = arith.constant -1 : i64
              %15 = arith.xori %c0_i64_8, %c-1_i64_9 : i64
              scf.yield %15 : i64
            }
            %12 = "polygeist.typeSize"() {source = i32} : () -> index
            %13 = arith.index_cast %12 : index to i64
            %14 = arith.divui %11, %13 : i64
            %c0_6 = arith.constant 0 : index
            memref.store %14, %cast_1[%c0_6] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_3[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %7 = memref.load %alloca_3[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %8 = func.call @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0) : (!llvm.ptr<struct<(struct<(i8)>)>>) -> i64
            %c0_6 = arith.constant 0 : index
            memref.store %8, %cast[%c0_6] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_3[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %7 = memref.load %alloca_3[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %8 = func.call @_ZSt3minImERKT_S2_S2_(%cast_1, %cast) : (memref<?xi64>, memref<?xi64>) -> memref<?xi64>
            %c0_6 = arith.constant 0 : index
            %9 = memref.load %8[%c0_6] : memref<?xi64>
            memref.store %9, %alloca_5[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca_3[] : memref<i1>
            memref.store %false, %alloca_4[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %6 = memref.load %alloca_5[] : memref<i64>
    return %6 : i64
  }
  func.func @_ZNKSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>) -> !llvm.ptr<struct<(struct<(i8)>)>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<!llvm.ptr<struct<(struct<(i8)>)>>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %3 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_3 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %4 = llvm.getelementptr %3[%c0_i32_3, 0] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<struct<(struct<(i8)>)>>
            %5 = llvm.mlir.null : !llvm.ptr<struct<(struct<(i8)>)>>
            %6 = llvm.icmp "ne" %4, %5 : !llvm.ptr<struct<(struct<(i8)>)>>
            %7 = arith.select %6, %4, %5 : !llvm.ptr<struct<(struct<(i8)>)>>
            memref.store %7, %alloca_1[] : memref<!llvm.ptr<struct<(struct<(i8)>)>>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_1[] : memref<!llvm.ptr<struct<(struct<(i8)>)>>>
    return %1 : !llvm.ptr<struct<(struct<(i8)>)>>
  }
  func.func @_ZNSt6vectorIiSaIiEE19_S_nothrow_relocateESt17integral_constantIbLb1EE(%arg0: !llvm.struct<(i8)>) -> i8 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    llvm.store %arg0, %0 : !llvm.ptr<struct<(i8)>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i8>
    %1 = llvm.mlir.undef : i8
    memref.store %1, %alloca_1[] : memref<i8>
    %2 = memref.load %alloca[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %4 = memref.load %alloca[] : memref<i1>
        scf.if %4 {
          scf.execute_region {
            %c1_i8 = arith.constant 1 : i8
            memref.store %c1_i8, %alloca_1[] : memref<i8>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_1[] : memref<i8>
    return %3 : i8
  }
  func.func @_ZNSt17integral_constantIbLb1EEC1EOS0_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: i64) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %c0_0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_0] : memref<?xi64>
    %true = arith.constant true
    %alloca_1 = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    %alloca_3 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_1[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca_1[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %4 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>, i32) -> !llvm.ptr<struct<(i8)>>
            %c0_5 = arith.constant 0 : index
            %5 = memref.load %cast[%c0_5] : memref<?xi64>
            %6 = llvm.mlir.null : !llvm.ptr<i8>
            %7 = func.call @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%4, %5, %6) : (!llvm.ptr<struct<(i8)>>, i64, !llvm.ptr<i8>) -> memref<?xi32>
            memref.store %7, %alloca_3[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_1[] : memref<i1>
            memref.store %false, %alloca_2[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_3[] : memref<memref<?xi32>>
    return %2 : memref<?xi32>
  }
  func.func @_ZNSt6vectorIiSaIiEE14_S_do_relocateEPiS2_S2_RS0_St17integral_constantIbLb1EE(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>, %arg4: !llvm.struct<(i8)>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.struct<(i8)> : (i64) -> !llvm.ptr<struct<(i8)>>
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_3[%c0] : memref<?xmemref<?xi32>>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %cast_1[%c0_4] : memref<?xmemref<?xi32>>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_5] : memref<?xmemref<?xi32>>
    llvm.store %arg4, %0 : !llvm.ptr<struct<(i8)>>
    %true = arith.constant true
    %alloca_6 = memref.alloca() : memref<i1>
    %alloca_7 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    %alloca_8 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_6[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca_6[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_9 = arith.constant 0 : index
            %4 = memref.load %cast_3[%c0_9] : memref<?xmemref<?xi32>>
            %c0_10 = arith.constant 0 : index
            %5 = memref.load %cast_1[%c0_10] : memref<?xmemref<?xi32>>
            %c0_11 = arith.constant 0 : index
            %6 = memref.load %cast[%c0_11] : memref<?xmemref<?xi32>>
            %7 = func.call @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%4, %5, %6, %arg3) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
            memref.store %7, %alloca_8[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_6[] : memref<i1>
            memref.store %false, %alloca_7[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_8[] : memref<memref<?xi32>>
    return %2 : memref<?xi32>
  }
  func.func @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg2, %cast_5[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_6 = memref.alloca() : memref<i1>
    %alloca_7 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    %alloca_8 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_6[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_6[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast_3, %arg0) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast, %arg1) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_9 = arith.constant 0 : index
            %3 = memref.load %cast_5[%c0_9] : memref<?xmemref<?xi32>>
            %c0_10 = arith.constant 0 : index
            %c0_11 = arith.constant 0 : index
            %4 = memref.load %cast_3[%c0_10, %c0_11] : memref<?x1xmemref<?xi32>>
            memref.store %4, %alloca_0[%c0_10, %c0_11] : memref<1x1xmemref<?xi32>>
            %cast_12 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %c0_14 = arith.constant 0 : index
            %5 = memref.load %cast[%c0_13, %c0_14] : memref<?x1xmemref<?xi32>>
            memref.store %5, %alloca[%c0_13, %c0_14] : memref<1x1xmemref<?xi32>>
            %cast_15 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %6 = func.call @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%cast_12, %cast_15, %3) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>, memref<?xi32>) -> memref<?xi32>
            memref.store %6, %alloca_8[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_6[] : memref<i1>
            memref.store %false, %alloca_7[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_8[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZNSt13move_iteratorIPiEC1ERKS1_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %0 = "polygeist.subindex"(%arg1, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %1 = "polygeist.subindex"(%0, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_0 = arith.constant 0 : index
    %2 = memref.load %1[%c0_0] : memref<?xmemref<?xi32>>
    %3 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %4 = "polygeist.subindex"(%3, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %2, %4[%c0_1] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt13move_iteratorIPiEC1ES0_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_0] : memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    %0 = memref.load %cast[%c0_1] : memref<?xmemref<?xi32>>
    %1 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %2 = "polygeist.subindex"(%1, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %0, %2[%c0_2] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_3 = memref.alloca() : memref<i1>
    %alloca_4 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    return
  }
  func.func @_ZSt8_DestroyIPiEvT_S1_(%arg0: memref<?xi32>, %arg1: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_1[%c0] : memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_2] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_3 = memref.alloca() : memref<i1>
    %alloca_4 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    %0 = memref.load %alloca_3[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %3 = memref.load %alloca_3[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_3[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca_3[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_3[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %c0_5 = arith.constant 0 : index
        %3 = memref.load %cast_1[%c0_5] : memref<?xmemref<?xi32>>
        %c0_6 = arith.constant 0 : index
        %4 = memref.load %cast[%c0_6] : memref<?xmemref<?xi32>>
        func.call @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%3, %4) : (memref<?xi32>, memref<?xi32>) -> ()
        scf.yield
      }
    }
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE10deallocateERS0_Pim(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>, %arg1: memref<?xi32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %cast_1[%c0_2] : memref<?xmemref<?xi32>>
    %c0_3 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_3] : memref<?xi64>
    %true = arith.constant true
    %alloca_4 = memref.alloca() : memref<i1>
    %alloca_5 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_5[] : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    %1 = memref.load %alloca_4[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %c0_i32 = arith.constant 0 : i32
        %c0_i32_6 = arith.constant 0 : i32
        %2 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>, i32) -> !llvm.ptr<struct<(i8)>>
        %c0_7 = arith.constant 0 : index
        %3 = memref.load %cast_1[%c0_7] : memref<?xmemref<?xi32>>
        %c0_8 = arith.constant 0 : index
        %4 = memref.load %cast[%c0_8] : memref<?xi64>
        func.call @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%2, %3, %4) : (!llvm.ptr<struct<(i8)>>, memref<?xi32>, i64) -> ()
        scf.yield
      }
    }
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE9constructIiJRKiEEEvPT_DpOT0_(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: memref<?xi32>, %arg2: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1 = arith.constant 1 : index
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_0 = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    %0 = memref.load %alloca_0[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %c0_2 = arith.constant 0 : index
        %1 = memref.load %cast[%c0_2] : memref<?xmemref<?xi32>>
        %2 = "polygeist.memref2pointer"(%1) : (memref<?xi32>) -> !llvm.ptr<i8>
        %3 = "polygeist.pointer2memref"(%2) : (!llvm.ptr<i8>) -> memref<?xi32>
        scf.yield
      }
    }
    return
  }
  func.func @_ZNKSt6vectorIiSaIiEE12_M_check_lenEmPKc(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xi64>
    %cast_1 = memref.cast %alloca_0 : memref<1xi64> to memref<?xi64>
    %c0_2 = arith.constant 0 : index
    %1 = llvm.mlir.undef : i64
    memref.store %1, %cast_1[%c0_2] : memref<?xi64>
    %c1_i64 = arith.constant 1 : i64
    %2 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %alloca_3 = memref.alloca() : memref<1xi64>
    %cast_4 = memref.cast %alloca_3 : memref<1xi64> to memref<?xi64>
    %c0_5 = arith.constant 0 : index
    %3 = llvm.mlir.undef : i64
    memref.store %3, %cast_4[%c0_5] : memref<?xi64>
    %c0_6 = arith.constant 0 : index
    memref.store %arg1, %cast_4[%c0_6] : memref<?xi64>
    llvm.store %arg2, %2 : !llvm.ptr<ptr<i8>>
    %true = arith.constant true
    %alloca_7 = memref.alloca() : memref<i1>
    %alloca_8 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_8[] : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    %alloca_9 = memref.alloca() : memref<i64>
    %4 = llvm.mlir.undef : i64
    memref.store %4, %alloca_9[] : memref<i64>
    %5 = memref.load %alloca_7[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %9 = memref.load %alloca_7[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            %10 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %11 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %12 = arith.subi %10, %11 : i64
            %c0_10 = arith.constant 0 : index
            %13 = memref.load %cast_4[%c0_10] : memref<?xi64>
            %14 = arith.cmpi slt, %12, %13 : i64
            %15 = arith.extui %14 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %16 = arith.cmpi ne, %15, %c0_i8 : i8
            scf.if %16 {
              %17 = llvm.load %2 : !llvm.ptr<ptr<i8>>
              func.call @_ZSt20__throw_length_errorPKc(%17) : (!llvm.ptr<i8>) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %6 = memref.load %alloca_7[] : memref<i1>
    scf.if %6 {
      scf.execute_region {
        %9 = memref.load %alloca_7[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            %10 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %11 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %c0_10 = arith.constant 0 : index
            memref.store %11, %cast_1[%c0_10] : memref<?xi64>
            %12 = func.call @_ZSt3maxImERKT_S2_S2_(%cast_1, %cast_4) : (memref<?xi64>, memref<?xi64>) -> memref<?xi64>
            %c0_11 = arith.constant 0 : index
            %13 = memref.load %12[%c0_11] : memref<?xi64>
            %14 = arith.addi %10, %13 : i64
            %c0_12 = arith.constant 0 : index
            memref.store %14, %cast[%c0_12] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %7 = memref.load %alloca_7[] : memref<i1>
    scf.if %7 {
      scf.execute_region {
        %9 = memref.load %alloca_7[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            %c0_10 = arith.constant 0 : index
            %10 = memref.load %cast[%c0_10] : memref<?xi64>
            %11 = func.call @_ZNKSt6vectorIiSaIiEE4sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
            %12 = arith.cmpi slt, %10, %11 : i64
            %13 = arith.extui %12 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %14 = arith.cmpi ne, %13, %c0_i8 : i8
            %15 = scf.if %14 -> (i1) {
              %true_12 = arith.constant true
              scf.yield %true_12 : i1
            } else {
              %c0_12 = arith.constant 0 : index
              %19 = memref.load %cast[%c0_12] : memref<?xi64>
              %20 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
              %21 = arith.cmpi sgt, %19, %20 : i64
              %22 = arith.extui %21 : i1 to i8
              %c0_i8_13 = arith.constant 0 : i8
              %23 = arith.cmpi ne, %22, %c0_i8_13 : i8
              scf.yield %23 : i1
            }
            %16 = arith.extui %15 : i1 to i8
            %c0_i8_11 = arith.constant 0 : i8
            %17 = arith.cmpi ne, %16, %c0_i8_11 : i8
            %18 = scf.if %17 -> (i64) {
              %19 = func.call @_ZNKSt6vectorIiSaIiEE8max_sizeEv(%arg0) : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>) -> i64
              scf.yield %19 : i64
            } else {
              %c0_12 = arith.constant 0 : index
              %19 = memref.load %cast[%c0_12] : memref<?xi64>
              scf.yield %19 : i64
            }
            memref.store %18, %alloca_9[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca_7[] : memref<i1>
            memref.store %false, %alloca_8[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %8 = memref.load %alloca_9[] : memref<i64>
    return %8 : i64
  }
  func.func @_ZN9__gnu_cxxmiIPiSt6vectorIiSaIiEEEENS_17__normal_iteratorIT_T0_E15difference_typeERKS8_SB_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i64>
    %0 = llvm.mlir.undef : i64
    memref.store %0, %alloca_1[] : memref<i64>
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %4 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0) : (memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>>
            %c0 = arith.constant 0 : index
            %5 = memref.load %4[%c0] : memref<?xmemref<?xi32>>
            %6 = func.call @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg1) : (memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>>
            %c0_2 = arith.constant 0 : index
            %7 = memref.load %6[%c0_2] : memref<?xmemref<?xi32>>
            %8 = "polygeist.memref2pointer"(%5) : (memref<?xi32>) -> !llvm.ptr<i32>
            %9 = "polygeist.memref2pointer"(%7) : (memref<?xi32>) -> !llvm.ptr<i32>
            %10 = llvm.ptrtoint %8 : !llvm.ptr<i32> to i64
            %11 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
            %12 = arith.subi %10, %11 : i64
            %13 = "polygeist.typeSize"() {source = i32} : () -> index
            %14 = arith.index_cast %13 : index to i64
            %15 = arith.divsi %12, %14 : i64
            memref.store %15, %alloca_1[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i64>
    return %2 : i64
  }
  func.func @_ZNSt6vectorIiSaIiEE5beginEv(%arg0: !llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, %arg1: memref<?x1xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %true = arith.constant true
    %alloca_2 = memref.alloca() : memref<i1>
    %alloca_3 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    %0 = memref.load %alloca_2[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %1 = memref.load %alloca_2[] : memref<i1>
        scf.if %1 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_4 = arith.constant 0 : i32
            %2 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>
            %c0_i32_5 = arith.constant 0 : i32
            %c0_i32_6 = arith.constant 0 : i32
            %3 = llvm.getelementptr %2[%c0_i32_5, 0] : (!llvm.ptr<!llvm.struct<(!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>
            %c0_i32_7 = arith.constant 0 : i32
            %c1_i32 = arith.constant 1 : i32
            %4 = llvm.getelementptr %3[%c0_i32_7, 1] : (!llvm.ptr<!llvm.struct<(struct<(struct<(i8)>)>, !llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>)>>, i32) -> !llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>
            %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr<!llvm.struct<(memref<?xi32>, memref<?xi32>, memref<?xi32>)>>) -> memref<?x3xmemref<?xi32>>
            %6 = "polygeist.subindex"(%5, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
            %7 = "polygeist.subindex"(%6, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%cast, %7) : (memref<?x1xmemref<?xi32>>, memref<?xmemref<?xi32>>) -> ()
            func.call @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1EOS5_(%cast_1, %cast) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %8 = memref.load %cast_1[%c0, %c0] : memref<?x1xmemref<?xi32>>
            memref.store %8, %arg1[%c0, %c0] : memref<?x1xmemref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_2[] : memref<i1>
            memref.store %false, %alloca_3[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    return
  }
  func.func @_ZNK9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEE4baseEv(%arg0: memref<?x1xmemref<?xi32>>) -> memref<?xmemref<?xi32>> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<memref<?xmemref<?xi32>>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_2 = arith.constant 0 : index
            %3 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
            %4 = "polygeist.subindex"(%3, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            memref.store %4, %alloca_1[] : memref<memref<?xmemref<?xi32>>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_1[] : memref<memref<?xmemref<?xi32>>>
    return %1 : memref<?xmemref<?xi32>>
  }
  func.func @_ZSt34__uninitialized_move_if_noexcept_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_3 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_6 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_7 = memref.cast %alloca_6 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_8 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_9 = memref.cast %alloca_8 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_10 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_11 = memref.cast %alloca_10 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_11[%c0] : memref<?xmemref<?xi32>>
    %c0_12 = arith.constant 0 : index
    memref.store %arg1, %cast_9[%c0_12] : memref<?xmemref<?xi32>>
    %c0_13 = arith.constant 0 : index
    memref.store %arg2, %cast_7[%c0_13] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_14 = memref.alloca() : memref<i1>
    %alloca_15 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_15[] : memref<i1>
    memref.store %true, %alloca_14[] : memref<i1>
    %alloca_16 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_14[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_14[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_17 = arith.constant 0 : index
            %3 = memref.load %cast_11[%c0_17] : memref<?xmemref<?xi32>>
            %cast_18 = memref.cast %alloca_3 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%3, %cast_18) : (memref<?xi32>, memref<?x1xmemref<?xi32>>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%cast_5, %cast_18) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_19 = arith.constant 0 : index
            %4 = memref.load %cast_9[%c0_19] : memref<?xmemref<?xi32>>
            %cast_20 = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            func.call @_ZSt32__make_move_if_noexcept_iteratorIiSt13move_iteratorIPiEET0_PT_(%4, %cast_20) : (memref<?xi32>, memref<?x1xmemref<?xi32>>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1EOS1_(%cast, %cast_20) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_21 = arith.constant 0 : index
            %5 = memref.load %cast_7[%c0_21] : memref<?xmemref<?xi32>>
            %c0_22 = arith.constant 0 : index
            %c0_23 = arith.constant 0 : index
            %6 = memref.load %cast_5[%c0_22, %c0_23] : memref<?x1xmemref<?xi32>>
            memref.store %6, %alloca_0[%c0_22, %c0_23] : memref<1x1xmemref<?xi32>>
            %cast_24 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %c0_25 = arith.constant 0 : index
            %c0_26 = arith.constant 0 : index
            %7 = memref.load %cast[%c0_25, %c0_26] : memref<?x1xmemref<?xi32>>
            memref.store %7, %alloca[%c0_25, %c0_26] : memref<1x1xmemref<?xi32>>
            %cast_27 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %8 = func.call @_ZSt22__uninitialized_copy_aISt13move_iteratorIPiES1_iET0_T_S4_S3_RSaIT1_E(%cast_24, %cast_27, %5, %arg3) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
            memref.store %8, %alloca_16[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_14[] : memref<i1>
            memref.store %false, %alloca_15[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_16[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZN9__gnu_cxx17__normal_iteratorIPiSt6vectorIiSaIiEEEC1ERKS1_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %c0_0 = arith.constant 0 : index
    %0 = memref.load %arg1[%c0_0] : memref<?xmemref<?xi32>>
    %1 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
    %2 = "polygeist.subindex"(%1, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %0, %2[%c0_1] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSaIiEC1Ev(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0_i32 = arith.constant 0 : i32
    %c0_i32_0 = arith.constant 0 : i32
    %0 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>, i32) -> !llvm.ptr<struct<(i8)>>
    call @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%0) : (!llvm.ptr<struct<(i8)>>) -> ()
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(%arg0: memref<?x3xmemref<?xi32>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.null : !llvm.ptr<i8>
    %1 = "polygeist.pointer2memref"(%0) : (!llvm.ptr<i8>) -> memref<?xi32>
    %2 = "polygeist.subindex"(%arg0, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
    %3 = "polygeist.subindex"(%2, %c0) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_0 = arith.constant 0 : index
    memref.store %1, %3[%c0_0] : memref<?xmemref<?xi32>>
    %4 = llvm.mlir.null : !llvm.ptr<i8>
    %5 = "polygeist.pointer2memref"(%4) : (!llvm.ptr<i8>) -> memref<?xi32>
    %6 = "polygeist.subindex"(%arg0, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
    %7 = "polygeist.subindex"(%6, %c1) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_1 = arith.constant 0 : index
    memref.store %5, %7[%c0_1] : memref<?xmemref<?xi32>>
    %8 = llvm.mlir.null : !llvm.ptr<i8>
    %9 = "polygeist.pointer2memref"(%8) : (!llvm.ptr<i8>) -> memref<?xi32>
    %10 = "polygeist.subindex"(%arg0, %c0) : (memref<?x3xmemref<?xi32>>, index) -> memref<3xmemref<?xi32>>
    %11 = "polygeist.subindex"(%10, %c2) : (memref<3xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %9, %11[%c0_2] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_3 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(%arg0: !llvm.ptr<struct<(struct<(i8)>)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i64>
    %0 = llvm.mlir.undef : i64
    memref.store %0, %alloca_1[] : memref<i64>
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0_i32 = arith.constant 0 : i32
            %c0_i32_2 = arith.constant 0 : i32
            %4 = llvm.getelementptr %arg0[%c0_i32, 0] : (!llvm.ptr<struct<(struct<(i8)>)>>, i32) -> !llvm.ptr<struct<(i8)>>
            %5 = func.call @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%4) : (!llvm.ptr<struct<(i8)>>) -> i64
            memref.store %5, %alloca_1[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i64>
    return %2 : i64
  }
  func.func @_ZSt3minImERKT_S2_S2_(%arg0: memref<?xi64>, %arg1: memref<?xi64>) -> memref<?xi64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<memref<?xi64>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0 = arith.constant 0 : index
            %4 = memref.load %arg1[%c0] : memref<?xi64>
            %c0_2 = arith.constant 0 : index
            %5 = memref.load %arg0[%c0_2] : memref<?xi64>
            %6 = arith.cmpi slt, %4, %5 : i64
            %7 = arith.extui %6 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %8 = arith.cmpi ne, %7, %c0_i8 : i8
            scf.if %8 {
              %9 = memref.load %alloca[] : memref<i1>
              scf.if %9 {
                scf.execute_region {
                  memref.store %arg1, %alloca_1[] : memref<memref<?xi64>>
                  %false = arith.constant false
                  memref.store %false, %alloca[] : memref<i1>
                  memref.store %false, %alloca_0[] : memref<i1>
                  scf.yield
                }
              }
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            memref.store %arg0, %alloca_1[] : memref<memref<?xi64>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<memref<?xi64>>
    return %2 : memref<?xi64>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: i64, %arg2: !llvm.ptr<i8>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.ptr<i8> : (i64) -> !llvm.ptr<ptr<i8>>
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %1 = llvm.mlir.undef : i64
    memref.store %1, %cast[%c0] : memref<?xi64>
    %c0_0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_0] : memref<?xi64>
    llvm.store %arg2, %0 : !llvm.ptr<ptr<i8>>
    %true = arith.constant true
    %alloca_1 = memref.alloca() : memref<i1>
    %alloca_2 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_2[] : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    %alloca_3 = memref.alloca() : memref<memref<?xi32>>
    %2 = memref.load %alloca_1[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %5 = memref.load %alloca_1[] : memref<i1>
        scf.if %5 {
          scf.execute_region {
            %c0_4 = arith.constant 0 : index
            %6 = memref.load %cast[%c0_4] : memref<?xi64>
            %7 = func.call @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0) : (!llvm.ptr<struct<(i8)>>) -> i64
            %8 = arith.cmpi sgt, %6, %7 : i64
            %9 = arith.extui %8 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %10 = arith.cmpi ne, %9, %c0_i8 : i8
            scf.if %10 {
              func.call @_ZSt17__throw_bad_allocv() : () -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_1[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %5 = memref.load %alloca_1[] : memref<i1>
        scf.if %5 {
          scf.execute_region {
            %c0_4 = arith.constant 0 : index
            %6 = memref.load %cast[%c0_4] : memref<?xi64>
            %7 = "polygeist.typeSize"() {source = i32} : () -> index
            %8 = arith.index_cast %7 : index to i64
            %9 = arith.muli %6, %8 : i64
            %10 = func.call @_Znwm(%9) : (i64) -> !llvm.ptr<i8>
            %11 = "polygeist.pointer2memref"(%10) : (!llvm.ptr<i8>) -> memref<?xi32>
            memref.store %11, %alloca_3[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_1[] : memref<i1>
            memref.store %false, %alloca_2[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_3[] : memref<memref<?xi32>>
    return %4 : memref<?xi32>
  }
  func.func @_ZSt12__relocate_aIPiS0_SaIiEET0_T_S3_S2_RT1_(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_3[%c0] : memref<?xmemref<?xi32>>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %cast_1[%c0_4] : memref<?xmemref<?xi32>>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_5] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_6 = memref.alloca() : memref<i1>
    %alloca_7 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    %alloca_8 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_6[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_6[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_9 = arith.constant 0 : index
            %3 = memref.load %cast_3[%c0_9] : memref<?xmemref<?xi32>>
            %4 = func.call @_ZSt12__niter_baseIPiET_S1_(%3) : (memref<?xi32>) -> memref<?xi32>
            %c0_10 = arith.constant 0 : index
            %5 = memref.load %cast_1[%c0_10] : memref<?xmemref<?xi32>>
            %6 = func.call @_ZSt12__niter_baseIPiET_S1_(%5) : (memref<?xi32>) -> memref<?xi32>
            %c0_11 = arith.constant 0 : index
            %7 = memref.load %cast[%c0_11] : memref<?xmemref<?xi32>>
            %8 = func.call @_ZSt12__niter_baseIPiET_S1_(%7) : (memref<?xi32>) -> memref<?xi32>
            %9 = func.call @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%4, %6, %8, %arg3) : (memref<?xi32>, memref<?xi32>, memref<?xi32>, !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32>
            memref.store %9, %alloca_8[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_6[] : memref<i1>
            memref.store %false, %alloca_7[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_8[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZSt18uninitialized_copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>, %arg2: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xi8>
    %cast_5 = memref.cast %alloca_4 : memref<1xi8> to memref<?xi8>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i8
    memref.store %0, %cast_5[%c0] : memref<?xi8>
    %alloca_6 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_7 = memref.cast %alloca_6 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %cast_7[%c0_8] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_9 = memref.alloca() : memref<i1>
    %alloca_10 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_10[] : memref<i1>
    memref.store %true, %alloca_9[] : memref<i1>
    %alloca_11 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_9[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_9[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_9[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_9[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_9[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %6 = memref.load %alloca_9[] : memref<i1>
    scf.if %6 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            %c1_i8 = arith.constant 1 : i8
            %c0_12 = arith.constant 0 : index
            memref.store %c1_i8, %cast_5[%c0_12] : memref<?xi8>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %7 = memref.load %alloca_9[] : memref<i1>
    scf.if %7 {
      scf.execute_region {
        %9 = memref.load %alloca_9[] : memref<i1>
        scf.if %9 {
          scf.execute_region {
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast_3, %arg0) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast, %arg1) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_12 = arith.constant 0 : index
            %10 = memref.load %cast_7[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %c0_14 = arith.constant 0 : index
            %11 = memref.load %cast_3[%c0_13, %c0_14] : memref<?x1xmemref<?xi32>>
            memref.store %11, %alloca_0[%c0_13, %c0_14] : memref<1x1xmemref<?xi32>>
            %cast_15 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %c0_16 = arith.constant 0 : index
            %c0_17 = arith.constant 0 : index
            %12 = memref.load %cast[%c0_16, %c0_17] : memref<?x1xmemref<?xi32>>
            memref.store %12, %alloca[%c0_16, %c0_17] : memref<1x1xmemref<?xi32>>
            %cast_18 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %13 = func.call @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%cast_15, %cast_18, %10) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>, memref<?xi32>) -> memref<?xi32>
            memref.store %13, %alloca_11[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_9[] : memref<i1>
            memref.store %false, %alloca_10[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %8 = memref.load %alloca_11[] : memref<memref<?xi32>>
    return %8 : memref<?xi32>
  }
  func.func @_ZNSt12_Destroy_auxILb1EE9__destroyIPiEEvT_S3_(%arg0: memref<?xi32>, %arg1: memref<?xi32>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_1[%c0] : memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0_2] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_3 = memref.alloca() : memref<i1>
    %alloca_4 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    memref.store %true, %alloca_3[] : memref<i1>
    return
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiE10deallocateEPim(%arg0: !llvm.ptr<struct<(i8)>>, %arg1: memref<?xi32>, %arg2: i64) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_2 = arith.constant 0 : index
    memref.store %arg1, %cast_1[%c0_2] : memref<?xmemref<?xi32>>
    %c0_3 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_3] : memref<?xi64>
    %true = arith.constant true
    %alloca_4 = memref.alloca() : memref<i1>
    %alloca_5 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_5[] : memref<i1>
    memref.store %true, %alloca_4[] : memref<i1>
    %1 = memref.load %alloca_4[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %c0_6 = arith.constant 0 : index
        %2 = memref.load %cast_1[%c0_6] : memref<?xmemref<?xi32>>
        %3 = "polygeist.memref2pointer"(%2) : (memref<?xi32>) -> !llvm.ptr<i8>
        func.call @_ZdlPv(%3) : (!llvm.ptr<i8>) -> ()
        scf.yield
      }
    }
    return
  }
  func.func @_ZSt3maxImERKT_S2_S2_(%arg0: memref<?xi64>, %arg1: memref<?xi64>) -> memref<?xi64> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<memref<?xi64>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c0 = arith.constant 0 : index
            %4 = memref.load %arg0[%c0] : memref<?xi64>
            %c0_2 = arith.constant 0 : index
            %5 = memref.load %arg1[%c0_2] : memref<?xi64>
            %6 = arith.cmpi slt, %4, %5 : i64
            %7 = arith.extui %6 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %8 = arith.cmpi ne, %7, %c0_i8 : i8
            scf.if %8 {
              %9 = memref.load %alloca[] : memref<i1>
              scf.if %9 {
                scf.execute_region {
                  memref.store %arg1, %alloca_1[] : memref<memref<?xi64>>
                  %false = arith.constant false
                  memref.store %false, %alloca[] : memref<i1>
                  memref.store %false, %alloca_0[] : memref<i1>
                  scf.yield
                }
              }
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            memref.store %arg0, %alloca_1[] : memref<memref<?xi64>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<memref<?xi64>>
    return %2 : memref<?xi64>
  }
  func.func @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(%arg0: !llvm.ptr<struct<(i8)>>) attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    return
  }
  func.func @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(%arg0: !llvm.ptr<struct<(i8)>>) -> i64 attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<i64>
    %0 = llvm.mlir.undef : i64
    memref.store %0, %alloca_1[] : memref<i64>
    %1 = memref.load %alloca[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            %c9223372036854775807_i64 = arith.constant 9223372036854775807 : i64
            %4 = "polygeist.typeSize"() {source = i32} : () -> index
            %5 = arith.index_cast %4 : index to i64
            %6 = arith.divui %c9223372036854775807_i64, %5 : i64
            memref.store %6, %alloca_1[] : memref<i64>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_1[] : memref<i64>
    return %2 : i64
  }
  func.func private @_ZSt17__throw_bad_allocv() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @_Znwm(i64) -> !llvm.ptr<i8> attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt14__relocate_a_1IiiENSt9enable_ifIXsr3std24__is_bitwise_relocatableIT_EE5valueEPS1_E4typeES2_S2_S2_RSaIT0_E(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>, %arg3: !llvm.ptr<struct<(struct<(i8)>)>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg0, %cast_5[%c0_6] : memref<?xmemref<?xi32>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %cast_3[%c0_7] : memref<?xmemref<?xi32>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %cast_1[%c0_8] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_9 = memref.alloca() : memref<i1>
    %alloca_10 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_10[] : memref<i1>
    memref.store %true, %alloca_9[] : memref<i1>
    %alloca_11 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_9[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %5 = memref.load %alloca_9[] : memref<i1>
        scf.if %5 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %6 = memref.load %cast_3[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %7 = memref.load %cast_5[%c0_13] : memref<?xmemref<?xi32>>
            %8 = "polygeist.memref2pointer"(%6) : (memref<?xi32>) -> !llvm.ptr<i32>
            %9 = "polygeist.memref2pointer"(%7) : (memref<?xi32>) -> !llvm.ptr<i32>
            %10 = llvm.ptrtoint %8 : !llvm.ptr<i32> to i64
            %11 = llvm.ptrtoint %9 : !llvm.ptr<i32> to i64
            %12 = arith.subi %10, %11 : i64
            %13 = "polygeist.typeSize"() {source = i32} : () -> index
            %14 = arith.index_cast %13 : index to i64
            %15 = arith.divsi %12, %14 : i64
            %c0_14 = arith.constant 0 : index
            memref.store %15, %cast[%c0_14] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_9[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %5 = memref.load %alloca_9[] : memref<i1>
        scf.if %5 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %6 = memref.load %cast[%c0_12] : memref<?xi64>
            %c0_i32 = arith.constant 0 : i32
            %c0_i64 = arith.constant 0 : i64
            %7 = arith.cmpi sgt, %6, %c0_i64 : i64
            %8 = arith.extui %7 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %9 = arith.cmpi ne, %8, %c0_i8 : i8
            scf.if %9 {
              %c0_13 = arith.constant 0 : index
              %10 = memref.load %cast_1[%c0_13] : memref<?xmemref<?xi32>>
              %11 = "polygeist.memref2pointer"(%10) : (memref<?xi32>) -> !llvm.ptr<i8>
              %c0_14 = arith.constant 0 : index
              %12 = memref.load %cast_5[%c0_14] : memref<?xmemref<?xi32>>
              %13 = "polygeist.memref2pointer"(%12) : (memref<?xi32>) -> !llvm.ptr<i8>
              %c0_15 = arith.constant 0 : index
              %14 = memref.load %cast[%c0_15] : memref<?xi64>
              %15 = "polygeist.typeSize"() {source = i32} : () -> index
              %16 = arith.index_cast %15 : index to i64
              %17 = arith.muli %14, %16 : i64
              %false = arith.constant false
              "llvm.intr.memmove"(%11, %13, %17, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_9[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %5 = memref.load %alloca_9[] : memref<i1>
        scf.if %5 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %6 = memref.load %cast_1[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %7 = memref.load %cast[%c0_13] : memref<?xi64>
            %8 = arith.index_cast %7 : i64 to index
            %9 = "polygeist.subindex"(%6, %8) : (memref<?xi32>, index) -> memref<?xi32>
            memref.store %9, %alloca_11[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_9[] : memref<i1>
            memref.store %false, %alloca_10[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_11[] : memref<memref<?xi32>>
    return %4 : memref<?xi32>
  }
  func.func @_ZSt12__niter_baseIPiET_S1_(%arg0: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_0 = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    %alloca_2 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_0[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_0[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_3 = arith.constant 0 : index
            %3 = memref.load %cast[%c0_3] : memref<?xmemref<?xi32>>
            memref.store %3, %alloca_2[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_0[] : memref<i1>
            memref.store %false, %alloca_1[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_2[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyISt13move_iteratorIPiES3_EET0_T_S6_S5_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>, %arg2: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg2, %cast_5[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_6 = memref.alloca() : memref<i1>
    %alloca_7 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    %alloca_8 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_6[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_6[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast_3, %arg0) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast, %arg1) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_9 = arith.constant 0 : index
            %3 = memref.load %cast_5[%c0_9] : memref<?xmemref<?xi32>>
            %c0_10 = arith.constant 0 : index
            %c0_11 = arith.constant 0 : index
            %4 = memref.load %cast_3[%c0_10, %c0_11] : memref<?x1xmemref<?xi32>>
            memref.store %4, %alloca_0[%c0_10, %c0_11] : memref<1x1xmemref<?xi32>>
            %cast_12 = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %c0_14 = arith.constant 0 : index
            %5 = memref.load %cast[%c0_13, %c0_14] : memref<?x1xmemref<?xi32>>
            memref.store %5, %alloca[%c0_13, %c0_14] : memref<1x1xmemref<?xi32>>
            %cast_15 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %6 = func.call @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%cast_12, %cast_15, %3) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>, memref<?xi32>) -> memref<?xi32>
            memref.store %6, %alloca_8[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_6[] : memref<i1>
            memref.store %false, %alloca_7[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_8[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func private @_ZdlPv(!llvm.ptr<i8>) attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_ZSt4copyISt13move_iteratorIPiES1_ET0_T_S4_S3_(%arg0: memref<?x1xmemref<?xi32>>, %arg1: memref<?x1xmemref<?xi32>>, %arg2: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast = memref.cast %alloca_0 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_1 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1x1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg2, %cast_5[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_6 = memref.alloca() : memref<i1>
    %alloca_7 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    %alloca_8 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_6[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        scf.yield
      }
    }
    %1 = memref.load %alloca_6[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %3 = memref.load %alloca_6[] : memref<i1>
        scf.if %3 {
          scf.execute_region {
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast_3, %arg0) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_9 = arith.constant 0 : index
            %c0_10 = arith.constant 0 : index
            %4 = memref.load %cast_3[%c0_9, %c0_10] : memref<?x1xmemref<?xi32>>
            memref.store %4, %alloca_1[%c0_9, %c0_10] : memref<1x1xmemref<?xi32>>
            %cast_11 = memref.cast %alloca_1 : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %5 = func.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%cast_11) : (memref<?x1xmemref<?xi32>>) -> memref<?xi32>
            func.call @_ZNSt13move_iteratorIPiEC1ERKS1_(%cast, %arg1) : (memref<?x1xmemref<?xi32>>, memref<?x1xmemref<?xi32>>) -> ()
            %c0_12 = arith.constant 0 : index
            %c0_13 = arith.constant 0 : index
            %6 = memref.load %cast[%c0_12, %c0_13] : memref<?x1xmemref<?xi32>>
            memref.store %6, %alloca[%c0_12, %c0_13] : memref<1x1xmemref<?xi32>>
            %cast_14 = memref.cast %alloca : memref<1x1xmemref<?xi32>> to memref<?x1xmemref<?xi32>>
            %7 = func.call @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%cast_14) : (memref<?x1xmemref<?xi32>>) -> memref<?xi32>
            %c0_15 = arith.constant 0 : index
            %8 = memref.load %cast_5[%c0_15] : memref<?xmemref<?xi32>>
            %9 = func.call @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%5, %7, %8) : (memref<?xi32>, memref<?xi32>, memref<?xi32>) -> memref<?xi32>
            memref.store %9, %alloca_8[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_6[] : memref<i1>
            memref.store %false, %alloca_7[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_8[] : memref<memref<?xi32>>
    return %2 : memref<?xi32>
  }
  func.func @_ZSt14__copy_move_a2ILb1EPiS0_ET1_T0_S2_S1_(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast_3[%c0] : memref<?xmemref<?xi32>>
    %c0_4 = arith.constant 0 : index
    memref.store %arg1, %cast_1[%c0_4] : memref<?xmemref<?xi32>>
    %c0_5 = arith.constant 0 : index
    memref.store %arg2, %cast[%c0_5] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_6 = memref.alloca() : memref<i1>
    %alloca_7 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_7[] : memref<i1>
    memref.store %true, %alloca_6[] : memref<i1>
    %alloca_8 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_6[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_6[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_9 = arith.constant 0 : index
            %3 = memref.load %cast_3[%c0_9] : memref<?xmemref<?xi32>>
            %4 = func.call @_ZSt12__niter_baseIPiET_S1_(%3) : (memref<?xi32>) -> memref<?xi32>
            %c0_10 = arith.constant 0 : index
            %5 = memref.load %cast_1[%c0_10] : memref<?xmemref<?xi32>>
            %6 = func.call @_ZSt12__niter_baseIPiET_S1_(%5) : (memref<?xi32>) -> memref<?xi32>
            %c0_11 = arith.constant 0 : index
            %7 = memref.load %cast[%c0_11] : memref<?xmemref<?xi32>>
            %8 = func.call @_ZSt12__niter_baseIPiET_S1_(%7) : (memref<?xi32>) -> memref<?xi32>
            %9 = func.call @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%4, %6, %8) : (memref<?xi32>, memref<?xi32>, memref<?xi32>) -> memref<?xi32>
            %10 = func.call @_ZSt12__niter_wrapIPiET_RKS1_S1_(%cast, %9) : (memref<?xmemref<?xi32>>, memref<?xi32>) -> memref<?xi32>
            memref.store %10, %alloca_8[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_6[] : memref<i1>
            memref.store %false, %alloca_7[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_8[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZSt12__miter_baseIPiEDTcl12__miter_basecldtfp_4baseEEESt13move_iteratorIT_E(%arg0: memref<?x1xmemref<?xi32>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %3 = func.call @_ZNKSt13move_iteratorIPiE4baseEv(%arg0) : (memref<?x1xmemref<?xi32>>) -> memref<?xi32>
            %4 = func.call @_ZSt12__miter_baseIPiET_S1_(%3) : (memref<?xi32>) -> memref<?xi32>
            memref.store %4, %alloca_1[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_1[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZSt12__niter_wrapIPiET_RKS1_S1_(%arg0: memref<?xmemref<?xi32>>, %arg1: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg1, %cast[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_0 = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    %alloca_2 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_0[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_0[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_3 = arith.constant 0 : index
            %3 = memref.load %cast[%c0_3] : memref<?xmemref<?xi32>>
            memref.store %3, %alloca_2[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_0[] : memref<i1>
            memref.store %false, %alloca_1[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_2[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZSt13__copy_move_aILb1EPiS0_ET1_T0_S2_S1_(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi8>
    %cast = memref.cast %alloca : memref<1xi8> to memref<?xi8>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i8
    memref.store %0, %cast[%c0] : memref<?xi8>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg0, %cast_5[%c0_6] : memref<?xmemref<?xi32>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %cast_3[%c0_7] : memref<?xmemref<?xi32>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %cast_1[%c0_8] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_9 = memref.alloca() : memref<i1>
    %alloca_10 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_10[] : memref<i1>
    memref.store %true, %alloca_9[] : memref<i1>
    %alloca_11 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_9[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_9[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_9[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_9[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %c1_i8 = arith.constant 1 : i8
            %c0_i8 = arith.constant 0 : i8
            %8 = arith.cmpi ne, %c1_i8, %c0_i8 : i8
            %9 = scf.if %8 -> (i1) {
              %c1_i32 = arith.constant 1 : i32
              %c0_i32 = arith.constant 0 : i32
              %17 = arith.cmpi ne, %c1_i32, %c0_i32 : i32
              %18 = arith.extui %17 : i1 to i8
              %c0_i8_15 = arith.constant 0 : i8
              %19 = arith.cmpi ne, %18, %c0_i8_15 : i8
              scf.yield %19 : i1
            } else {
              %false = arith.constant false
              scf.yield %false : i1
            }
            %10 = arith.extui %9 : i1 to i8
            %c0_i8_12 = arith.constant 0 : i8
            %11 = arith.cmpi ne, %10, %c0_i8_12 : i8
            %12 = scf.if %11 -> (i1) {
              %c1_i32 = arith.constant 1 : i32
              %c0_i32 = arith.constant 0 : i32
              %17 = arith.cmpi ne, %c1_i32, %c0_i32 : i32
              %18 = arith.extui %17 : i1 to i8
              %c0_i8_15 = arith.constant 0 : i8
              %19 = arith.cmpi ne, %18, %c0_i8_15 : i8
              scf.yield %19 : i1
            } else {
              %false = arith.constant false
              scf.yield %false : i1
            }
            %13 = arith.extui %12 : i1 to i8
            %c0_i8_13 = arith.constant 0 : i8
            %14 = arith.cmpi ne, %13, %c0_i8_13 : i8
            %15 = scf.if %14 -> (i1) {
              %c1_i32 = arith.constant 1 : i32
              %c0_i32 = arith.constant 0 : i32
              %17 = arith.cmpi ne, %c1_i32, %c0_i32 : i32
              %18 = arith.extui %17 : i1 to i8
              %c0_i8_15 = arith.constant 0 : i8
              %19 = arith.cmpi ne, %18, %c0_i8_15 : i8
              scf.yield %19 : i1
            } else {
              %false = arith.constant false
              scf.yield %false : i1
            }
            %16 = arith.extui %15 : i1 to i8
            %c0_14 = arith.constant 0 : index
            memref.store %16, %cast[%c0_14] : memref<?xi8>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_9[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %8 = memref.load %cast_5[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %9 = memref.load %cast_3[%c0_13] : memref<?xmemref<?xi32>>
            %c0_14 = arith.constant 0 : index
            %10 = memref.load %cast_1[%c0_14] : memref<?xmemref<?xi32>>
            %11 = func.call @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%8, %9, %10) : (memref<?xi32>, memref<?xi32>, memref<?xi32>) -> memref<?xi32>
            memref.store %11, %alloca_11[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_9[] : memref<i1>
            memref.store %false, %alloca_10[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %6 = memref.load %alloca_11[] : memref<memref<?xi32>>
    return %6 : memref<?xi32>
  }
  func.func @_ZSt12__miter_baseIPiET_S1_(%arg0: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xmemref<?xi32>>
    %cast = memref.cast %alloca : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0 = arith.constant 0 : index
    memref.store %arg0, %cast[%c0] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_0 = memref.alloca() : memref<i1>
    %alloca_1 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_1[] : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    %alloca_2 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca_0[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca_0[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_3 = arith.constant 0 : index
            %3 = memref.load %cast[%c0_3] : memref<?xmemref<?xi32>>
            memref.store %3, %alloca_2[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_0[] : memref<i1>
            memref.store %false, %alloca_1[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_2[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZNKSt13move_iteratorIPiE4baseEv(%arg0: memref<?x1xmemref<?xi32>>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %c0 = arith.constant 0 : index
    %true = arith.constant true
    %alloca = memref.alloca() : memref<i1>
    %alloca_0 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_0[] : memref<i1>
    memref.store %true, %alloca[] : memref<i1>
    %alloca_1 = memref.alloca() : memref<memref<?xi32>>
    %0 = memref.load %alloca[] : memref<i1>
    scf.if %0 {
      scf.execute_region {
        %2 = memref.load %alloca[] : memref<i1>
        scf.if %2 {
          scf.execute_region {
            %c0_2 = arith.constant 0 : index
            %3 = "polygeist.subindex"(%arg0, %c0) : (memref<?x1xmemref<?xi32>>, index) -> memref<1xmemref<?xi32>>
            %4 = "polygeist.subindex"(%3, %c0) : (memref<1xmemref<?xi32>>, index) -> memref<?xmemref<?xi32>>
            %c0_3 = arith.constant 0 : index
            %5 = memref.load %4[%c0_3] : memref<?xmemref<?xi32>>
            memref.store %5, %alloca_1[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca[] : memref<i1>
            memref.store %false, %alloca_0[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %1 = memref.load %alloca_1[] : memref<memref<?xi32>>
    return %1 : memref<?xi32>
  }
  func.func @_ZNSt11__copy_moveILb1ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(%arg0: memref<?xi32>, %arg1: memref<?xi32>, %arg2: memref<?xi32>) -> memref<?xi32> attributes {llvm.linkage = #llvm.linkage<linkonce_odr>} {
    %alloca = memref.alloca() : memref<1xi64>
    %cast = memref.cast %alloca : memref<1xi64> to memref<?xi64>
    %c0 = arith.constant 0 : index
    %0 = llvm.mlir.undef : i64
    memref.store %0, %cast[%c0] : memref<?xi64>
    %alloca_0 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_1 = memref.cast %alloca_0 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_2 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_3 = memref.cast %alloca_2 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %alloca_4 = memref.alloca() : memref<1xmemref<?xi32>>
    %cast_5 = memref.cast %alloca_4 : memref<1xmemref<?xi32>> to memref<?xmemref<?xi32>>
    %c0_6 = arith.constant 0 : index
    memref.store %arg0, %cast_5[%c0_6] : memref<?xmemref<?xi32>>
    %c0_7 = arith.constant 0 : index
    memref.store %arg1, %cast_3[%c0_7] : memref<?xmemref<?xi32>>
    %c0_8 = arith.constant 0 : index
    memref.store %arg2, %cast_1[%c0_8] : memref<?xmemref<?xi32>>
    %true = arith.constant true
    %alloca_9 = memref.alloca() : memref<i1>
    %alloca_10 = memref.alloca() : memref<i1>
    memref.store %true, %alloca_10[] : memref<i1>
    memref.store %true, %alloca_9[] : memref<i1>
    %alloca_11 = memref.alloca() : memref<memref<?xi32>>
    %1 = memref.load %alloca_9[] : memref<i1>
    scf.if %1 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %2 = memref.load %alloca_9[] : memref<i1>
    scf.if %2 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            scf.yield
          }
        }
        scf.yield
      }
    }
    %3 = memref.load %alloca_9[] : memref<i1>
    scf.if %3 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %8 = memref.load %cast_3[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %9 = memref.load %cast_5[%c0_13] : memref<?xmemref<?xi32>>
            %10 = "polygeist.memref2pointer"(%8) : (memref<?xi32>) -> !llvm.ptr<i32>
            %11 = "polygeist.memref2pointer"(%9) : (memref<?xi32>) -> !llvm.ptr<i32>
            %12 = llvm.ptrtoint %10 : !llvm.ptr<i32> to i64
            %13 = llvm.ptrtoint %11 : !llvm.ptr<i32> to i64
            %14 = arith.subi %12, %13 : i64
            %15 = "polygeist.typeSize"() {source = i32} : () -> index
            %16 = arith.index_cast %15 : index to i64
            %17 = arith.divsi %14, %16 : i64
            %c0_14 = arith.constant 0 : index
            memref.store %17, %cast[%c0_14] : memref<?xi64>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %4 = memref.load %alloca_9[] : memref<i1>
    scf.if %4 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %8 = memref.load %cast[%c0_12] : memref<?xi64>
            %c0_i64 = arith.constant 0 : i64
            %9 = arith.cmpi ne, %8, %c0_i64 : i64
            %10 = arith.extui %9 : i1 to i8
            %c0_i8 = arith.constant 0 : i8
            %11 = arith.cmpi ne, %10, %c0_i8 : i8
            scf.if %11 {
              %c0_13 = arith.constant 0 : index
              %12 = memref.load %cast_1[%c0_13] : memref<?xmemref<?xi32>>
              %13 = "polygeist.memref2pointer"(%12) : (memref<?xi32>) -> !llvm.ptr<i8>
              %c0_14 = arith.constant 0 : index
              %14 = memref.load %cast_5[%c0_14] : memref<?xmemref<?xi32>>
              %15 = "polygeist.memref2pointer"(%14) : (memref<?xi32>) -> !llvm.ptr<i8>
              %16 = "polygeist.typeSize"() {source = i32} : () -> index
              %17 = arith.index_cast %16 : index to i64
              %c0_15 = arith.constant 0 : index
              %18 = memref.load %cast[%c0_15] : memref<?xi64>
              %19 = arith.muli %17, %18 : i64
              %false = arith.constant false
              "llvm.intr.memmove"(%13, %15, %19, %false) : (!llvm.ptr<i8>, !llvm.ptr<i8>, i64, i1) -> ()
            }
            scf.yield
          }
        }
        scf.yield
      }
    }
    %5 = memref.load %alloca_9[] : memref<i1>
    scf.if %5 {
      scf.execute_region {
        %7 = memref.load %alloca_9[] : memref<i1>
        scf.if %7 {
          scf.execute_region {
            %c0_12 = arith.constant 0 : index
            %8 = memref.load %cast_1[%c0_12] : memref<?xmemref<?xi32>>
            %c0_13 = arith.constant 0 : index
            %9 = memref.load %cast[%c0_13] : memref<?xi64>
            %10 = arith.index_cast %9 : i64 to index
            %11 = "polygeist.subindex"(%8, %10) : (memref<?xi32>, index) -> memref<?xi32>
            memref.store %11, %alloca_11[] : memref<memref<?xi32>>
            %false = arith.constant false
            memref.store %false, %alloca_9[] : memref<i1>
            memref.store %false, %alloca_10[] : memref<i1>
            scf.yield
          }
        }
        scf.yield
      }
    }
    %6 = memref.load %alloca_11[] : memref<memref<?xi32>>
    return %6 : memref<?xi32>
  }
}