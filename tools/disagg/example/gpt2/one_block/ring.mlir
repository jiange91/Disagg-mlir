#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 0, 0, 12533760, f32, 195840, 64, 1], t1 = ["ref1", 67108864, 0, 12533760, f32, 195840, 64, 1], t2 = ["ref2", 134217728, 0, 12582912, f32, 196608, 64, 1], t3 = ["ref3", 201326592, 0, 12582912, f32, 196608, 64, 1], t4 = ["ref4", 268435456, 0, 12582912, f32, 196608, 64, 1], t5 = ["ref5", 335544320, 0, 3216896, f32, 50264, 64, 1]}} {
  llvm.mlir.global internal constant @constant_45("constant_45\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_44("constant_44\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_41("constant_41\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_40("constant_40\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_39("constant_39\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_38("constant_38\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_37("constant_37\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_34("constant_34\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_33("constant_33\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_30("constant_30\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_28("constant_28\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_27("constant_27\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_20("constant_20\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_19("constant_19\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_18("constant_18\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_16("constant_16\00") {addr_space = 0 : i32}
  func.func private @read_tensor_i1(!llvm.ptr<i8>, memref<*xi1>) attributes {llvm.emit_c_interface}
  llvm.mlir.global internal constant @constant_15("constant_15\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_14("constant_14\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_13("constant_13\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_12("constant_12\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_11("constant_11\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_10("constant_10\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_9("constant_9\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_8("constant_8\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_7("constant_7\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_6("constant_6\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_5("constant_5\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_4("constant_4\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_3("constant_3\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_2("constant_2\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_1("constant_1\00") {addr_space = 0 : i32}
  func.func private @read_tensor_f32(!llvm.ptr<i8>, memref<*xf32>) attributes {llvm.emit_c_interface}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%ld\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: !rmem.rmref<1, memref<64x12x255x64xf32>>, %arg2: !rmem.rmref<1, memref<64x12x255x64xf32>>) -> memref<64x1x50264xf32> attributes {access_mem_catcher = [["ref0", 1], ["ref1", 2]], input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"]} {
    %c50264 = arith.constant 50264 : index
    %cst = arith.constant 0.000000e+00 : f32
    %cst_0 = arith.constant 7.680000e+02 : f32
    %c0 = arith.constant 0 : index
    %c3 = arith.constant 3 : index
    %c2 = arith.constant 2 : index
    %c1 = arith.constant 1 : index
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x1x50264xf32>
    %alloc_1 = memref.alloc() {alignment = 16 : i64} : memref<50264x768xf32>
    %cast = memref.cast %alloc_1 : memref<50264x768xf32> to memref<*xf32>
    %0 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<11 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%1, %cast) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_2 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_3 = memref.cast %alloc_2 : memref<768xf32> to memref<*xf32>
    %2 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<11 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%3, %cast_3) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_4 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_5 = memref.cast %alloc_4 : memref<768xf32> to memref<*xf32>
    %4 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<11 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%5, %cast_5) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_6 = memref.alloc() : memref<768x2304xf32>
    %cast_7 = memref.cast %alloc_6 : memref<768x2304xf32> to memref<*xf32>
    %6 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<11 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%7, %cast_7) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_8 = memref.alloc() {alignment = 16 : i64} : memref<2304xf32>
    %cast_9 = memref.cast %alloc_8 : memref<2304xf32> to memref<*xf32>
    %8 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<11 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%9, %cast_9) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_10 = memref.alloc() {alignment = 16 : i64} : memref<768x768xf32>
    %cast_11 = memref.cast %alloc_10 : memref<768x768xf32> to memref<*xf32>
    %10 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<11 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%11, %cast_11) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_12 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_13 = memref.cast %alloc_12 : memref<768xf32> to memref<*xf32>
    %12 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<11 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%13, %cast_13) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_14 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_15 = memref.cast %alloc_14 : memref<768xf32> to memref<*xf32>
    %14 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<11 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%15, %cast_15) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_16 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_17 = memref.cast %alloc_16 : memref<768xf32> to memref<*xf32>
    %16 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<11 x i8>>
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%17, %cast_17) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_18 = memref.alloc() {alignment = 16 : i64} : memref<768x3072xf32>
    %cast_19 = memref.cast %alloc_18 : memref<768x3072xf32> to memref<*xf32>
    %18 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<11 x i8>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%19, %cast_19) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_20 = memref.alloc() {alignment = 16 : i64} : memref<3072xf32>
    %cast_21 = memref.cast %alloc_20 : memref<3072xf32> to memref<*xf32>
    %20 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<12 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%21, %cast_21) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_22 = memref.alloc() {alignment = 16 : i64} : memref<3072x768xf32>
    %cast_23 = memref.cast %alloc_22 : memref<3072x768xf32> to memref<*xf32>
    %22 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<12 x i8>>
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%23, %cast_23) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_24 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_25 = memref.cast %alloc_24 : memref<768xf32> to memref<*xf32>
    %24 = llvm.mlir.addressof @constant_12 : !llvm.ptr<array<12 x i8>>
    %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%25, %cast_25) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_26 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_27 = memref.cast %alloc_26 : memref<768xf32> to memref<*xf32>
    %26 = llvm.mlir.addressof @constant_13 : !llvm.ptr<array<12 x i8>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%27, %cast_27) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_28 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_29 = memref.cast %alloc_28 : memref<768xf32> to memref<*xf32>
    %28 = llvm.mlir.addressof @constant_14 : !llvm.ptr<array<12 x i8>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%29, %cast_29) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_30 = memref.alloc() {alignment = 16 : i64} : memref<1x1x1x256xi1>
    %cast_31 = memref.cast %alloc_30 : memref<1x1x1x256xi1> to memref<*xi1>
    %30 = llvm.mlir.addressof @constant_15 : !llvm.ptr<array<12 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_i1(%31, %cast_31) : (!llvm.ptr<i8>, memref<*xi1>) -> ()
    %alloc_32 = memref.alloc() {alignment = 16 : i64} : memref<768x50264xf32>
    %cast_33 = memref.cast %alloc_32 : memref<768x50264xf32> to memref<*xf32>
    %32 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%33, %cast_33) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_34 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      %dump0 = affine.load %reinterpret_cast[%arg3, 0] : memref<64x1xi64>
      %dump1 = llvm.mlir.addressof @str0 : !llvm.ptr<array<5 x i8>>
      %dump2 = llvm.getelementptr %dump1[0, 0] : (!llvm.ptr<array<5 x i8>>) -> !llvm.ptr<i8>
      %dump3 = llvm.call @printf(%dump2, %dump0) : (!llvm.ptr<i8>, i64) -> i32
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %40 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %41 = arith.index_cast %40 : i64 to index
          %42 = arith.addi %41, %c50264 : index
          %43 = arith.cmpi slt, %41, %c0 : index
          %44 = arith.select %43, %42, %41 : index
          %45 = memref.load %alloc_1[%44, %arg5] : memref<50264x768xf32>
          affine.store %45, %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    // %alloc_35 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    // %cast_36 = memref.cast %alloc_35 : memref<1x1x768xf32> to memref<*xf32>
    // %34 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    // %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    // call @read_tensor_f32(%35, %cast_36) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    // %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
    //       %42 = arith.addf %40, %41 : f32
    //       affine.store %42, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // %alloc_38 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 1 {
    //       affine.store %cst, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
    //       %42 = arith.addf %41, %40 : f32
    //       affine.store %42, %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 1 {
    //       %40 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //       %41 = arith.divf %40, %cst_0 : f32
    //       affine.store %41, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
    //       %42 = arith.subf %40, %41 : f32
    //       affine.store %42, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // %alloc_40 = memref.alloc() : memref<f32>
    // %cast_41 = memref.cast %alloc_40 : memref<f32> to memref<*xf32>
    // %36 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    // %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    // call @read_tensor_f32(%37, %cast_41) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    // %alloc_42 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_40[] : memref<f32>
    //       %42 = math.powf %40, %41 : f32
    //       affine.store %42, %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // %alloc_43 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 1 {
    //       affine.store %cst, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
    //       %42 = arith.addf %41, %40 : f32
    //       affine.store %42, %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 1 {
    //       %40 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //       %41 = arith.divf %40, %cst_0 : f32
    //       affine.store %41, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // %alloc_44 = memref.alloc() : memref<f32>
    // %cast_45 = memref.cast %alloc_44 : memref<f32> to memref<*xf32>
    // %38 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    // %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    // call @read_tensor_f32(%39, %cast_45) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    // %alloc_46 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 1 {
    //       %40 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //       %41 = affine.load %alloc_44[] : memref<f32>
    //       %42 = arith.addf %40, %41 : f32
    //       affine.store %42, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 1 {
    //       %40 = affine.load %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //       %41 = math.sqrt %40 : f32
    //       affine.store %41, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
    //     }
    //   }
    // }
    // %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_47[%arg3, %arg4, 0] : memref<64x1x1xf32>
    //       %42 = arith.divf %40, %41 : f32
    //       affine.store %42, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_2[%arg5] : memref<768xf32>
    //       %42 = arith.mulf %40, %41 : f32
    //       affine.store %42, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // %alloc_50 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //       %41 = affine.load %alloc_4[%arg5] : memref<768xf32>
    //       %42 = arith.addf %40, %41 : f32
    //       affine.store %42, %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // %reinterpret_cast_51 = memref.reinterpret_cast %alloc_50 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    // %alloc_52 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 2304 {
    //     affine.store %cst, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
    //   }
    // }
    // %alloc_53 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    // %alloc_54 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    // affine.for %arg3 = 0 to 2304 step 64 {
    //   affine.for %arg4 = 0 to 768 step 256 {
    //     affine.for %arg5 = 0 to 256 {
    //       affine.for %arg6 = 0 to 64 {
    //         %40 = affine.load %alloc_6[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
    //         affine.store %40, %alloc_54[%arg5, %arg6] : memref<256x64xf32>
    //       }
    //     }
    //     affine.for %arg5 = 0 to 64 step 32 {
    //       affine.for %arg6 = 0 to 32 {
    //         affine.for %arg7 = 0 to 256 {
    //           %40 = affine.load %reinterpret_cast_51[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
    //           affine.store %40, %alloc_53[%arg6, %arg7] : memref<32x256xf32>
    //         }
    //       }
    //       affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
    //         affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
    //           %40 = affine.apply #map3(%arg5, %arg7)
    //           %41 = affine.apply #map3(%arg3, %arg6)
    //           %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    //           %42 = vector.load %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           affine.store %42, %alloca[0] : memref<4xvector<16xf32>>
    //           %43 = arith.addi %arg7, %c1 : index
    //           %44 = vector.load %alloc_52[%43, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           affine.store %44, %alloca[1] : memref<4xvector<16xf32>>
    //           %45 = arith.addi %arg7, %c2 : index
    //           %46 = vector.load %alloc_52[%45, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           affine.store %46, %alloca[2] : memref<4xvector<16xf32>>
    //           %47 = arith.addi %arg7, %c3 : index
    //           %48 = vector.load %alloc_52[%47, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           affine.store %48, %alloca[3] : memref<4xvector<16xf32>>
    //           affine.for %arg8 = 0 to 256 step 4 {
    //             %53 = memref.load %alloc_53[%40, %arg8] : memref<32x256xf32>
    //             %54 = vector.broadcast %53 : f32 to vector<16xf32>
    //             %55 = vector.load %alloc_54[%arg8, %41] : memref<256x64xf32>, vector<16xf32>
    //             %56 = affine.load %alloca[0] : memref<4xvector<16xf32>>
    //             %57 = vector.fma %54, %55, %56 : vector<16xf32>
    //             affine.store %57, %alloca[0] : memref<4xvector<16xf32>>
    //             %58 = affine.apply #map4(%arg8)
    //             %59 = memref.load %alloc_53[%40, %58] : memref<32x256xf32>
    //             %60 = vector.broadcast %59 : f32 to vector<16xf32>
    //             %61 = vector.load %alloc_54[%58, %41] : memref<256x64xf32>, vector<16xf32>
    //             %62 = affine.load %alloca[0] : memref<4xvector<16xf32>>
    //             %63 = vector.fma %60, %61, %62 : vector<16xf32>
    //             affine.store %63, %alloca[0] : memref<4xvector<16xf32>>
    //             %64 = affine.apply #map5(%arg8)
    //             %65 = memref.load %alloc_53[%40, %64] : memref<32x256xf32>
    //             %66 = vector.broadcast %65 : f32 to vector<16xf32>
    //             %67 = vector.load %alloc_54[%64, %41] : memref<256x64xf32>, vector<16xf32>
    //             %68 = affine.load %alloca[0] : memref<4xvector<16xf32>>
    //             %69 = vector.fma %66, %67, %68 : vector<16xf32>
    //             affine.store %69, %alloca[0] : memref<4xvector<16xf32>>
    //             %70 = affine.apply #map6(%arg8)
    //             %71 = memref.load %alloc_53[%40, %70] : memref<32x256xf32>
    //             %72 = vector.broadcast %71 : f32 to vector<16xf32>
    //             %73 = vector.load %alloc_54[%70, %41] : memref<256x64xf32>, vector<16xf32>
    //             %74 = affine.load %alloca[0] : memref<4xvector<16xf32>>
    //             %75 = vector.fma %72, %73, %74 : vector<16xf32>
    //             affine.store %75, %alloca[0] : memref<4xvector<16xf32>>
    //             %76 = arith.addi %40, %c1 : index
    //             %77 = memref.load %alloc_53[%76, %arg8] : memref<32x256xf32>
    //             %78 = vector.broadcast %77 : f32 to vector<16xf32>
    //             %79 = vector.load %alloc_54[%arg8, %41] : memref<256x64xf32>, vector<16xf32>
    //             %80 = affine.load %alloca[1] : memref<4xvector<16xf32>>
    //             %81 = vector.fma %78, %79, %80 : vector<16xf32>
    //             affine.store %81, %alloca[1] : memref<4xvector<16xf32>>
    //             %82 = memref.load %alloc_53[%76, %58] : memref<32x256xf32>
    //             %83 = vector.broadcast %82 : f32 to vector<16xf32>
    //             %84 = vector.load %alloc_54[%58, %41] : memref<256x64xf32>, vector<16xf32>
    //             %85 = affine.load %alloca[1] : memref<4xvector<16xf32>>
    //             %86 = vector.fma %83, %84, %85 : vector<16xf32>
    //             affine.store %86, %alloca[1] : memref<4xvector<16xf32>>
    //             %87 = memref.load %alloc_53[%76, %64] : memref<32x256xf32>
    //             %88 = vector.broadcast %87 : f32 to vector<16xf32>
    //             %89 = vector.load %alloc_54[%64, %41] : memref<256x64xf32>, vector<16xf32>
    //             %90 = affine.load %alloca[1] : memref<4xvector<16xf32>>
    //             %91 = vector.fma %88, %89, %90 : vector<16xf32>
    //             affine.store %91, %alloca[1] : memref<4xvector<16xf32>>
    //             %92 = memref.load %alloc_53[%76, %70] : memref<32x256xf32>
    //             %93 = vector.broadcast %92 : f32 to vector<16xf32>
    //             %94 = vector.load %alloc_54[%70, %41] : memref<256x64xf32>, vector<16xf32>
    //             %95 = affine.load %alloca[1] : memref<4xvector<16xf32>>
    //             %96 = vector.fma %93, %94, %95 : vector<16xf32>
    //             affine.store %96, %alloca[1] : memref<4xvector<16xf32>>
    //             %97 = arith.addi %40, %c2 : index
    //             %98 = memref.load %alloc_53[%97, %arg8] : memref<32x256xf32>
    //             %99 = vector.broadcast %98 : f32 to vector<16xf32>
    //             %100 = vector.load %alloc_54[%arg8, %41] : memref<256x64xf32>, vector<16xf32>
    //             %101 = affine.load %alloca[2] : memref<4xvector<16xf32>>
    //             %102 = vector.fma %99, %100, %101 : vector<16xf32>
    //             affine.store %102, %alloca[2] : memref<4xvector<16xf32>>
    //             %103 = memref.load %alloc_53[%97, %58] : memref<32x256xf32>
    //             %104 = vector.broadcast %103 : f32 to vector<16xf32>
    //             %105 = vector.load %alloc_54[%58, %41] : memref<256x64xf32>, vector<16xf32>
    //             %106 = affine.load %alloca[2] : memref<4xvector<16xf32>>
    //             %107 = vector.fma %104, %105, %106 : vector<16xf32>
    //             affine.store %107, %alloca[2] : memref<4xvector<16xf32>>
    //             %108 = memref.load %alloc_53[%97, %64] : memref<32x256xf32>
    //             %109 = vector.broadcast %108 : f32 to vector<16xf32>
    //             %110 = vector.load %alloc_54[%64, %41] : memref<256x64xf32>, vector<16xf32>
    //             %111 = affine.load %alloca[2] : memref<4xvector<16xf32>>
    //             %112 = vector.fma %109, %110, %111 : vector<16xf32>
    //             affine.store %112, %alloca[2] : memref<4xvector<16xf32>>
    //             %113 = memref.load %alloc_53[%97, %70] : memref<32x256xf32>
    //             %114 = vector.broadcast %113 : f32 to vector<16xf32>
    //             %115 = vector.load %alloc_54[%70, %41] : memref<256x64xf32>, vector<16xf32>
    //             %116 = affine.load %alloca[2] : memref<4xvector<16xf32>>
    //             %117 = vector.fma %114, %115, %116 : vector<16xf32>
    //             affine.store %117, %alloca[2] : memref<4xvector<16xf32>>
    //             %118 = arith.addi %40, %c3 : index
    //             %119 = memref.load %alloc_53[%118, %arg8] : memref<32x256xf32>
    //             %120 = vector.broadcast %119 : f32 to vector<16xf32>
    //             %121 = vector.load %alloc_54[%arg8, %41] : memref<256x64xf32>, vector<16xf32>
    //             %122 = affine.load %alloca[3] : memref<4xvector<16xf32>>
    //             %123 = vector.fma %120, %121, %122 : vector<16xf32>
    //             affine.store %123, %alloca[3] : memref<4xvector<16xf32>>
    //             %124 = memref.load %alloc_53[%118, %58] : memref<32x256xf32>
    //             %125 = vector.broadcast %124 : f32 to vector<16xf32>
    //             %126 = vector.load %alloc_54[%58, %41] : memref<256x64xf32>, vector<16xf32>
    //             %127 = affine.load %alloca[3] : memref<4xvector<16xf32>>
    //             %128 = vector.fma %125, %126, %127 : vector<16xf32>
    //             affine.store %128, %alloca[3] : memref<4xvector<16xf32>>
    //             %129 = memref.load %alloc_53[%118, %64] : memref<32x256xf32>
    //             %130 = vector.broadcast %129 : f32 to vector<16xf32>
    //             %131 = vector.load %alloc_54[%64, %41] : memref<256x64xf32>, vector<16xf32>
    //             %132 = affine.load %alloca[3] : memref<4xvector<16xf32>>
    //             %133 = vector.fma %130, %131, %132 : vector<16xf32>
    //             affine.store %133, %alloca[3] : memref<4xvector<16xf32>>
    //             %134 = memref.load %alloc_53[%118, %70] : memref<32x256xf32>
    //             %135 = vector.broadcast %134 : f32 to vector<16xf32>
    //             %136 = vector.load %alloc_54[%70, %41] : memref<256x64xf32>, vector<16xf32>
    //             %137 = affine.load %alloca[3] : memref<4xvector<16xf32>>
    //             %138 = vector.fma %135, %136, %137 : vector<16xf32>
    //             affine.store %138, %alloca[3] : memref<4xvector<16xf32>>
    //           }
    //           %49 = affine.load %alloca[0] : memref<4xvector<16xf32>>
    //           vector.store %49, %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           %50 = affine.load %alloca[1] : memref<4xvector<16xf32>>
    //           vector.store %50, %alloc_52[%43, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           %51 = affine.load %alloca[2] : memref<4xvector<16xf32>>
    //           vector.store %51, %alloc_52[%45, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //           %52 = affine.load %alloca[3] : memref<4xvector<16xf32>>
    //           vector.store %52, %alloc_52[%47, %arg6] : memref<64x2304xf32>, vector<16xf32>
    //         }
    //       }
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 2304 {
    //     %40 = affine.load %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
    //     %41 = affine.load %alloc_8[%arg4] : memref<2304xf32>
    //     %42 = arith.addf %40, %41 : f32
    //     affine.store %42, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
    //   }
    // }
    // %reinterpret_cast_55 = memref.reinterpret_cast %alloc_52 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    // %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // %alloc_58 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
    //       affine.store %40, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
    //       affine.store %40, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    // affine.for %arg3 = 0 to 64 {
    //   affine.for %arg4 = 0 to 1 {
    //     affine.for %arg5 = 0 to 768 {
    //       %40 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
    //       affine.store %40, %alloc_58[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
    //     }
    //   }
    // }
    return %alloc : memref<64x1x50264xf32>
  }
}

