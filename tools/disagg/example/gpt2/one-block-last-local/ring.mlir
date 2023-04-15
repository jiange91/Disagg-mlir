#map = affine_map<(d0) -> (d0)>
#map1 = affine_map<(d0) -> (d0 + 64)>
#map2 = affine_map<(d0) -> (d0 + 32)>
#map3 = affine_map<(d0, d1) -> (-d0 + d1)>
#map4 = affine_map<(d0) -> (d0 + 1)>
#map5 = affine_map<(d0) -> (d0 + 2)>
#map6 = affine_map<(d0) -> (d0 + 3)>
#map7 = affine_map<(d0) -> (d0 * 195840)>
#map8 = affine_map<(d0) -> (d0 * 196608)>
#map9 = affine_map<(d0) -> (d0 * 196608 + 16320)>
#map10 = affine_map<(d0, d1) -> (d0 + d1)>
#map11 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256)>
#map12 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 256)>
#map13 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 512)>
#map14 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 768)>
#map15 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1024)>
#map16 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1280)>
#map17 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1536)>
#map18 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 256 + 1792)>
#map19 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64)>
#map20 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 64)>
#map21 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 128)>
#map22 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 192)>
#map23 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 256)>
#map24 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 320)>
#map25 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 384)>
#map26 = affine_map<(d0, d1, d2) -> (d0 * 16384 + d1 + d2 * 64 + 448)>
#map27 = affine_map<(d0) -> (d0 * 50264)>
#map28 = affine_map<(d0, d1, d2) -> (d0 * 50264 + d1 + d2 * 50264)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 987488, 0, 12582912, f32, 196608, 1, 1 : i32], t1 = ["ref1", 0, 0, 12582912, f32, 196608, 1, 1 : i32], t2 = ["ref2", 2557280, 0, 12582912, f32, 196608, 1, 1 : i32], t3 = ["ref3", 786432, 0, 3216896, f32, 50264, 1, 1 : i32], t4 = ["ref4", 3343712, 0, 12533760, f32, 195840, 1, 1 : i32], t5 = ["ref5", 1773920, 0, 12533760, f32, 195840, 1, 1 : i32]}} {
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
  func.func private @disagg_read_tensor_f32(!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>) attributes {llvm.emit_c_interface}
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("%ld\0A\00") {addr_space = 0 : i32}
  llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: !rmem.rmref<1, memref<64x12x255x64xf32>>, %arg2: !rmem.rmref<1, memref<64x12x255x64xf32>>) -> !rmem.rmref<1, memref<64x1x50264xf32>> attributes {access_mem_catcher = [["ref4", 1 : i32], ["ref5", 2 : i32]], input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, output_names = ["logits"]} {
    %c196608 = arith.constant 196608 : index
    %c195840 = arith.constant 195840 : index
    %c1_i64 = arith.constant 1 : i64
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %c4 = arith.constant 4 : index
    %c5 = arith.constant 5 : index
    %c6 = arith.constant 6 : index
    %c7 = arith.constant 7 : index
    %c0 = arith.constant 0 : index
    %cst = arith.constant 7.680000e+02 : f32
    %cst_0 = arith.constant 0xFF800000 : f32
    %cst_1 = arith.constant 0.000000e+00 : f32
    %c50264 = arith.constant 50264 : index
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<50264x768xf32>
    %cast = memref.cast %alloc : memref<50264x768xf32> to memref<*xf32>
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
    %alloc_6 = memref.alloc() {alignment = 16 : i64} : memref<768x2304xf32>
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
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %119 = arith.index_cast %118 : i64 to index
          %120 = arith.addi %119, %c50264 : index
          %121 = arith.cmpi slt, %119, %c0 : index
          %122 = arith.select %121, %120, %119 : index
          %123 = memref.load %alloc[%122, %arg5] : memref<50264x768xf32>
          affine.store %123, %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_35 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_36 = memref.cast %alloc_35 : memref<1x1x768xf32> to memref<*xf32>
    %34 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%35, %cast_36) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_37 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_38 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.addf %119, %118 : f32
          affine.store %120, %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = arith.divf %118, %cst : f32
          affine.store %119, %alloc_38[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_39 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_37[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_38[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.subf %118, %119 : f32
          affine.store %120, %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_40 = memref.alloc() : memref<f32>
    %cast_41 = memref.cast %alloc_40 : memref<f32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_41) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_42 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_40[] : memref<f32>
          %120 = math.powf %118, %119 : f32
          affine.store %120, %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_43 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_42[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.addf %119, %118 : f32
          affine.store %120, %alloc_43[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = arith.divf %118, %cst : f32
          affine.store %119, %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_44 = memref.alloc() : memref<f32>
    %cast_45 = memref.cast %alloc_44 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_45) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_46 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_43[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = affine.load %alloc_44[] : memref<f32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_47 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_46[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = math.sqrt %118 : f32
          affine.store %119, %alloc_47[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_48 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_39[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_47[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.divf %118, %119 : f32
          affine.store %120, %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_49 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_48[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_2[%arg5] : memref<768xf32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_50 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_49[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_4[%arg5] : memref<768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_50[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_51 = memref.reinterpret_cast %alloc_50 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_52 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        affine.store %cst_1, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_53 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_54 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 2304 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %118 = affine.load %alloc_6[%arg4 + %arg5, %arg3 + %arg6] : memref<768x2304xf32>
            affine.store %118, %alloc_54[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %118 = affine.load %reinterpret_cast_51[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %118, %alloc_53[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %118 = affine.apply #map3(%arg5, %arg7)
              %119 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %120 = vector.load %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %120, %alloca[0] : memref<4xvector<16xf32>>
              %121 = arith.addi %arg7, %c1 : index
              %122 = vector.load %alloc_52[%121, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
              %123 = arith.addi %arg7, %c2 : index
              %124 = vector.load %alloc_52[%123, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %124, %alloca[2] : memref<4xvector<16xf32>>
              %125 = arith.addi %arg7, %c3 : index
              %126 = vector.load %alloc_52[%125, %arg6] : memref<64x2304xf32>, vector<16xf32>
              affine.store %126, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %131 = memref.load %alloc_53[%118, %arg8] : memref<32x256xf32>
                %132 = vector.broadcast %131 : f32 to vector<16xf32>
                %133 = vector.load %alloc_54[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %134 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %135 = vector.fma %132, %133, %134 : vector<16xf32>
                affine.store %135, %alloca[0] : memref<4xvector<16xf32>>
                %136 = affine.apply #map4(%arg8)
                %137 = memref.load %alloc_53[%118, %136] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_54[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[0] : memref<4xvector<16xf32>>
                %142 = affine.apply #map5(%arg8)
                %143 = memref.load %alloc_53[%118, %142] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_54[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[0] : memref<4xvector<16xf32>>
                %148 = affine.apply #map6(%arg8)
                %149 = memref.load %alloc_53[%118, %148] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_54[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[0] : memref<4xvector<16xf32>>
                %154 = arith.addi %118, %c1 : index
                %155 = memref.load %alloc_53[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_54[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[1] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_53[%154, %136] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_54[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[1] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_53[%154, %142] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_54[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[1] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_53[%154, %148] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_54[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[1] : memref<4xvector<16xf32>>
                %175 = arith.addi %118, %c2 : index
                %176 = memref.load %alloc_53[%175, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_54[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[2] : memref<4xvector<16xf32>>
                %181 = memref.load %alloc_53[%175, %136] : memref<32x256xf32>
                %182 = vector.broadcast %181 : f32 to vector<16xf32>
                %183 = vector.load %alloc_54[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %184 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %185 = vector.fma %182, %183, %184 : vector<16xf32>
                affine.store %185, %alloca[2] : memref<4xvector<16xf32>>
                %186 = memref.load %alloc_53[%175, %142] : memref<32x256xf32>
                %187 = vector.broadcast %186 : f32 to vector<16xf32>
                %188 = vector.load %alloc_54[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %189 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %190 = vector.fma %187, %188, %189 : vector<16xf32>
                affine.store %190, %alloca[2] : memref<4xvector<16xf32>>
                %191 = memref.load %alloc_53[%175, %148] : memref<32x256xf32>
                %192 = vector.broadcast %191 : f32 to vector<16xf32>
                %193 = vector.load %alloc_54[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %194 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %195 = vector.fma %192, %193, %194 : vector<16xf32>
                affine.store %195, %alloca[2] : memref<4xvector<16xf32>>
                %196 = arith.addi %118, %c3 : index
                %197 = memref.load %alloc_53[%196, %arg8] : memref<32x256xf32>
                %198 = vector.broadcast %197 : f32 to vector<16xf32>
                %199 = vector.load %alloc_54[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %200 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %201 = vector.fma %198, %199, %200 : vector<16xf32>
                affine.store %201, %alloca[3] : memref<4xvector<16xf32>>
                %202 = memref.load %alloc_53[%196, %136] : memref<32x256xf32>
                %203 = vector.broadcast %202 : f32 to vector<16xf32>
                %204 = vector.load %alloc_54[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %205 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %206 = vector.fma %203, %204, %205 : vector<16xf32>
                affine.store %206, %alloca[3] : memref<4xvector<16xf32>>
                %207 = memref.load %alloc_53[%196, %142] : memref<32x256xf32>
                %208 = vector.broadcast %207 : f32 to vector<16xf32>
                %209 = vector.load %alloc_54[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %210 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %211 = vector.fma %208, %209, %210 : vector<16xf32>
                affine.store %211, %alloca[3] : memref<4xvector<16xf32>>
                %212 = memref.load %alloc_53[%196, %148] : memref<32x256xf32>
                %213 = vector.broadcast %212 : f32 to vector<16xf32>
                %214 = vector.load %alloc_54[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %215 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %216 = vector.fma %213, %214, %215 : vector<16xf32>
                affine.store %216, %alloca[3] : memref<4xvector<16xf32>>
              }
              %127 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_52[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %128 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_52[%121, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %129 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_52[%123, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %130 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_52[%125, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 2304 {
        %118 = affine.load %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
        %119 = affine.load %alloc_8[%arg4] : memref<2304xf32>
        %120 = arith.addf %118, %119 : f32
        affine.store %120, %alloc_52[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_55 = memref.reinterpret_cast %alloc_52 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_56 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_57 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_58 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          affine.store %118, %alloc_56[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 768] : memref<64x1x2304xf32>
          affine.store %118, %alloc_57[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %reinterpret_cast_55[%arg3, %arg4, %arg5 + 1536] : memref<64x1x2304xf32>
          affine.store %118, %alloc_58[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_59 = memref.reinterpret_cast %alloc_56 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_60 = memref.reinterpret_cast %alloc_57 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_61 = memref.reinterpret_cast %alloc_58 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %40 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref0", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %41 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %41 : !llvm.ptr<i64>
    %42 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %42 : !llvm.ptr<i64>
    %43 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %44 = rmem.wrid : index
    %45 = rmem.rdma %c0, %arg1[%c0] %c195840 4 %44 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %46:5 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %43, %arg7 = %45, %arg8 = %44) -> (index, index, memref<1x196608xf32>, memref<1x195840xf32>, index) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = arith.addi %arg3, %c1 : index
      %121 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<1x196608xf32>
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg4, %arg1[%120] %c195840 4 %122 {map = #map7, mem = "t4"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      rmem.sync %41 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 12 {
          affine.for %arg11 = 0 to 255 {
            affine.for %arg12 = 0 to 64 {
              %125 = affine.load %arg7[%arg9, %arg10 * 16320 + %arg11 * 64 + %arg12] : memref<1x195840xf32>
              affine.store %125, %arg6[%arg9, %arg10 * 16384 + %arg11 * 64 + %arg12] : memref<1x196608xf32>
            }
          }
        }
      }
      %124 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %c0 {map = #map8, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %42 -> %c0 : <i64>, index
      affine.yield %118, %119, %121, %123, %122 : index, index, memref<1x196608xf32>, memref<1x195840xf32>, index
    }
    %47 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %47 : !llvm.ptr<i64>
    %48 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %48 : !llvm.ptr<i64>
    %49 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<1x196608xf32>
    %50:3 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %49) -> (index, index, memref<1x196608xf32>) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<1x196608xf32>
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 12 {
          affine.for %arg9 = 0 to 1 {
            affine.for %arg10 = 0 to 64 {
              %123 = affine.load %reinterpret_cast_60[%arg3 + %arg7, %arg8, %arg9, %arg10] : memref<64x12x1x64xf32>
              affine.store %123, %arg6[%arg7, %arg8 * 16384 + %arg9 * 64 + %arg10] : memref<1x196608xf32>
            }
          }
        }
      }
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg5, %40[%arg3] %c196608 0 %121 {map = #map9, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %48 -> %121 : <i64>, index
      affine.yield %118, %119, %120 : index, index, memref<1x196608xf32>
    }
    %51 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x256x64xf32>>
    %52 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %52 : !llvm.ptr<i64>
    %53 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %53 : !llvm.ptr<i64>
    %54 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<1x196608xf32>
    %55 = rmem.wrid : index
    %56 = rmem.rdma %c0, %arg2[%c0] %c195840 4 %55 {map = #map7, mem = "t5"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
    %57:5 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %54, %arg7 = %56, %arg8 = %55) -> (index, index, memref<1x196608xf32>, memref<1x195840xf32>, index) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = arith.addi %arg3, %c1 : index
      %121 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<1x196608xf32>
      %122 = rmem.wrid : index
      %123 = rmem.rdma %arg4, %arg2[%120] %c195840 4 %122 {map = #map7, mem = "t5"} : (index, !rmem.rmref<1, memref<64x12x255x64xf32>>, index, index, index) -> memref<1x195840xf32>
      rmem.sync %52 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 12 {
          affine.for %arg11 = 0 to 255 {
            affine.for %arg12 = 0 to 64 {
              %125 = affine.load %arg7[%arg9, %arg10 * 16320 + %arg11 * 64 + %arg12] : memref<1x195840xf32>
              affine.store %125, %arg6[%arg9, %arg10 * 16384 + %arg11 * 64 + %arg12] : memref<1x196608xf32>
            }
          }
        }
      }
      %124 = rmem.rdma %arg5, %51[%arg3] %c196608 0 %c0 {map = #map8, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %53 -> %c0 : <i64>, index
      affine.yield %118, %119, %121, %123, %122 : index, index, memref<1x196608xf32>, memref<1x195840xf32>, index
    }
    %58 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %58 : !llvm.ptr<i64>
    %59 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %59 : !llvm.ptr<i64>
    %60 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<1x196608xf32>
    %61:3 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %60) -> (index, index, memref<1x196608xf32>) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<1x196608xf32>
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 12 {
          affine.for %arg9 = 0 to 1 {
            affine.for %arg10 = 0 to 64 {
              %123 = affine.load %reinterpret_cast_61[%arg3 + %arg7, %arg8, %arg9, %arg10] : memref<64x12x1x64xf32>
              affine.store %123, %arg6[%arg7, %arg8 * 16384 + %arg9 * 64 + %arg10] : memref<1x196608xf32>
            }
          }
        }
      }
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg5, %51[%arg3] %c196608 0 %121 {map = #map9, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %59 -> %121 : <i64>, index
      affine.yield %118, %119, %120 : index, index, memref<1x196608xf32>
    }
    %62 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0 : i32]], alignment = 16 : i64} : <1, memref<64x12x64x256xf32>>
    %63 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %63 : !llvm.ptr<i64>
    %64 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %64 : !llvm.ptr<i64>
    %65 = rmem.rdma %c0, %40[%c0] %c196608 4 %c0 {map = #map8, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %66 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<1x196608xf32>
    %67:5 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %65, %arg7 = %66, %arg8 = %c0) -> (index, index, memref<1x196608xf32>, memref<1x196608xf32>, index) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = arith.addi %arg3, %c1 : index
      %121 = rmem.rdma %arg4, %40[%120] %c196608 4 %c0 {map = #map8, mem = "t0"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      %122 = rmem.slot %arg4 {mem = "t2"} : (index) -> memref<1x196608xf32>
      rmem.sync %63 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 12 {
          affine.for %arg11 = 0 to 256 {
            affine.for %arg12 = 0 to 64 {
              %125 = affine.load %arg6[%arg9, %arg10 * 16384 + %arg11 * 64 + %arg12] : memref<1x196608xf32>
              affine.store %125, %arg7[%arg9, %arg10 * 16384 + %arg11 + %arg12 * 256] : memref<1x196608xf32>
            }
          }
        }
      }
      %123 = rmem.wrid : index
      %124 = rmem.rdma %arg5, %62[%arg3] %c196608 0 %123 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %64 -> %123 : <i64>, index
      affine.yield %118, %119, %121, %122, %c0 : index, index, memref<1x196608xf32>, memref<1x196608xf32>, index
    }
    %alloc_62 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            affine.store %cst_1, %alloc_62[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %68 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %68 : !llvm.ptr<i64>
    %69 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %69 : !llvm.ptr<i64>
    %70 = rmem.wrid : index
    %71 = rmem.rdma %c0, %62[%c0] %c196608 4 %70 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
    %72:4 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %71, %arg7 = %70) -> (index, index, memref<1x196608xf32>, index) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = arith.addi %arg3, %c1 : index
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg4, %62[%120] %c196608 4 %121 {map = #map8, mem = "t2"} : (index, !rmem.rmref<1, memref<64x12x64x256xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %68 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %123 = affine.apply #map10(%arg3, %arg8)
        affine.for %arg9 = 0 to 12 {
          affine.for %arg10 = 0 to 1 {
            affine.for %arg11 = 0 to 256 step 8 {
              affine.for %arg12 = 0 to 64 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg13 = 0 to 1 {
                  %124 = arith.addi %arg13, %arg10 : index
                  %125 = vector.load %alloc_62[%123, %arg9, %124, %arg11] : memref<64x12x1x256xf32>, vector<8xf32>
                  affine.store %125, %alloca[0] : memref<1xvector<8xf32>>
                  %126 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %arg12] : memref<64x12x1x64xf32>
                  %127 = vector.broadcast %126 : f32 to vector<8xf32>
                  %128 = affine.apply #map11(%arg9, %arg11, %arg12)
                  %129 = vector.load %arg6[%arg8, %128] : memref<1x196608xf32>, vector<8xf32>
                  %130 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %131 = vector.fma %127, %129, %130 : vector<8xf32>
                  affine.store %131, %alloca[0] : memref<1xvector<8xf32>>
                  %132 = arith.addi %arg12, %c1 : index
                  %133 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %132] : memref<64x12x1x64xf32>
                  %134 = vector.broadcast %133 : f32 to vector<8xf32>
                  %135 = affine.apply #map12(%arg9, %arg11, %arg12)
                  %136 = vector.load %arg6[%arg8, %135] : memref<1x196608xf32>, vector<8xf32>
                  %137 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %138 = vector.fma %134, %136, %137 : vector<8xf32>
                  affine.store %138, %alloca[0] : memref<1xvector<8xf32>>
                  %139 = arith.addi %arg12, %c2 : index
                  %140 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %139] : memref<64x12x1x64xf32>
                  %141 = vector.broadcast %140 : f32 to vector<8xf32>
                  %142 = affine.apply #map13(%arg9, %arg11, %arg12)
                  %143 = vector.load %arg6[%arg8, %142] : memref<1x196608xf32>, vector<8xf32>
                  %144 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %145 = vector.fma %141, %143, %144 : vector<8xf32>
                  affine.store %145, %alloca[0] : memref<1xvector<8xf32>>
                  %146 = arith.addi %arg12, %c3 : index
                  %147 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %146] : memref<64x12x1x64xf32>
                  %148 = vector.broadcast %147 : f32 to vector<8xf32>
                  %149 = affine.apply #map14(%arg9, %arg11, %arg12)
                  %150 = vector.load %arg6[%arg8, %149] : memref<1x196608xf32>, vector<8xf32>
                  %151 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %152 = vector.fma %148, %150, %151 : vector<8xf32>
                  affine.store %152, %alloca[0] : memref<1xvector<8xf32>>
                  %153 = arith.addi %arg12, %c4 : index
                  %154 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %153] : memref<64x12x1x64xf32>
                  %155 = vector.broadcast %154 : f32 to vector<8xf32>
                  %156 = affine.apply #map15(%arg9, %arg11, %arg12)
                  %157 = vector.load %arg6[%arg8, %156] : memref<1x196608xf32>, vector<8xf32>
                  %158 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %159 = vector.fma %155, %157, %158 : vector<8xf32>
                  affine.store %159, %alloca[0] : memref<1xvector<8xf32>>
                  %160 = arith.addi %arg12, %c5 : index
                  %161 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %160] : memref<64x12x1x64xf32>
                  %162 = vector.broadcast %161 : f32 to vector<8xf32>
                  %163 = affine.apply #map16(%arg9, %arg11, %arg12)
                  %164 = vector.load %arg6[%arg8, %163] : memref<1x196608xf32>, vector<8xf32>
                  %165 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %166 = vector.fma %162, %164, %165 : vector<8xf32>
                  affine.store %166, %alloca[0] : memref<1xvector<8xf32>>
                  %167 = arith.addi %arg12, %c6 : index
                  %168 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %167] : memref<64x12x1x64xf32>
                  %169 = vector.broadcast %168 : f32 to vector<8xf32>
                  %170 = affine.apply #map17(%arg9, %arg11, %arg12)
                  %171 = vector.load %arg6[%arg8, %170] : memref<1x196608xf32>, vector<8xf32>
                  %172 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %173 = vector.fma %169, %171, %172 : vector<8xf32>
                  affine.store %173, %alloca[0] : memref<1xvector<8xf32>>
                  %174 = arith.addi %arg12, %c7 : index
                  %175 = memref.load %reinterpret_cast_59[%123, %arg9, %124, %174] : memref<64x12x1x64xf32>
                  %176 = vector.broadcast %175 : f32 to vector<8xf32>
                  %177 = affine.apply #map18(%arg9, %arg11, %arg12)
                  %178 = vector.load %arg6[%arg8, %177] : memref<1x196608xf32>, vector<8xf32>
                  %179 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %180 = vector.fma %176, %178, %179 : vector<8xf32>
                  affine.store %180, %alloca[0] : memref<1xvector<8xf32>>
                  %181 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %181, %alloc_62[%123, %arg9, %124, %arg11] : memref<64x12x1x256xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %118, %119, %122, %121 : index, index, memref<1x196608xf32>, index
    }
    %alloc_63 = memref.alloc() : memref<f32>
    %cast_64 = memref.cast %alloc_63 : memref<f32> to memref<*xf32>
    %73 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %74 = llvm.getelementptr %73[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%74, %cast_64) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_65 = memref.alloc() : memref<f32>
    %cast_66 = memref.cast %alloc_65 : memref<f32> to memref<*xf32>
    %75 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %76 = llvm.getelementptr %75[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%76, %cast_66) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_67 = memref.alloc() : memref<f32>
    %77 = affine.load %alloc_63[] : memref<f32>
    %78 = affine.load %alloc_65[] : memref<f32>
    %79 = math.powf %77, %78 : f32
    affine.store %79, %alloc_67[] : memref<f32>
    %alloc_68 = memref.alloc() : memref<f32>
    affine.store %cst_1, %alloc_68[] : memref<f32>
    %alloc_69 = memref.alloc() : memref<f32>
    %80 = affine.load %alloc_68[] : memref<f32>
    %81 = affine.load %alloc_67[] : memref<f32>
    %82 = arith.addf %80, %81 : f32
    affine.store %82, %alloc_69[] : memref<f32>
    %alloc_70 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %118 = affine.load %alloc_62[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %119 = affine.load %alloc_69[] : memref<f32>
            %120 = arith.divf %118, %119 : f32
            affine.store %120, %alloc_70[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_71 = memref.alloc() : memref<f32>
    %cast_72 = memref.cast %alloc_71 : memref<f32> to memref<*xf32>
    %83 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %84 = llvm.getelementptr %83[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%84, %cast_72) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_73 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 256 {
            %118 = affine.load %alloc_30[0, 0, %arg5, %arg6] : memref<1x1x1x256xi1>
            %119 = affine.load %alloc_70[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %120 = affine.load %alloc_71[] : memref<f32>
            %121 = arith.select %118, %119, %120 : f32
            affine.store %121, %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_74 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_75 = memref.alloc() : memref<f32>
    %alloc_76 = memref.alloc() : memref<f32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_75[] : memref<f32>
          affine.store %cst_0, %alloc_76[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %120 = affine.load %alloc_76[] : memref<f32>
            %121 = affine.load %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %122 = arith.cmpf ogt, %120, %121 : f32
            %123 = arith.select %122, %120, %121 : f32
            affine.store %123, %alloc_76[] : memref<f32>
          }
          %118 = affine.load %alloc_76[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %120 = affine.load %alloc_75[] : memref<f32>
            %121 = affine.load %alloc_73[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %122 = arith.subf %121, %118 : f32
            %123 = math.exp %122 : f32
            %124 = arith.addf %120, %123 : f32
            affine.store %124, %alloc_75[] : memref<f32>
            affine.store %123, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %119 = affine.load %alloc_75[] : memref<f32>
          affine.for %arg6 = 0 to 256 {
            %120 = affine.load %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %121 = arith.divf %120, %119 : f32
            affine.store %121, %alloc_74[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_77 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 12 {
        affine.for %arg5 = 0 to 1 {
          affine.for %arg6 = 0 to 64 {
            affine.store %cst_1, %alloc_77[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %85 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %85 : !llvm.ptr<i64>
    %86 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %86 : !llvm.ptr<i64>
    %87 = rmem.wrid : index
    %88 = rmem.rdma %c0, %51[%c0] %c196608 4 %87 {map = #map8, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
    %89:4 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %88, %arg7 = %87) -> (index, index, memref<1x196608xf32>, index) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = arith.addi %arg3, %c1 : index
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg4, %51[%120] %c196608 4 %121 {map = #map8, mem = "t1"} : (index, !rmem.rmref<1, memref<64x12x256x64xf32>>, index, index, index) -> memref<1x196608xf32>
      rmem.sync %85 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %123 = affine.apply #map10(%arg3, %arg8)
        affine.for %arg9 = 0 to 12 {
          affine.for %arg10 = 0 to 1 {
            affine.for %arg11 = 0 to 64 step 8 {
              affine.for %arg12 = 0 to 256 step 8 {
                %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
                affine.for %arg13 = 0 to 1 {
                  %124 = arith.addi %arg13, %arg10 : index
                  %125 = vector.load %alloc_77[%123, %arg9, %124, %arg11] : memref<64x12x1x64xf32>, vector<8xf32>
                  affine.store %125, %alloca[0] : memref<1xvector<8xf32>>
                  %126 = memref.load %alloc_74[%123, %arg9, %124, %arg12] : memref<64x12x1x256xf32>
                  %127 = vector.broadcast %126 : f32 to vector<8xf32>
                  %128 = affine.apply #map19(%arg9, %arg11, %arg12)
                  %129 = vector.load %arg6[%arg8, %128] : memref<1x196608xf32>, vector<8xf32>
                  %130 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %131 = vector.fma %127, %129, %130 : vector<8xf32>
                  affine.store %131, %alloca[0] : memref<1xvector<8xf32>>
                  %132 = arith.addi %arg12, %c1 : index
                  %133 = memref.load %alloc_74[%123, %arg9, %124, %132] : memref<64x12x1x256xf32>
                  %134 = vector.broadcast %133 : f32 to vector<8xf32>
                  %135 = affine.apply #map20(%arg9, %arg11, %arg12)
                  %136 = vector.load %arg6[%arg8, %135] : memref<1x196608xf32>, vector<8xf32>
                  %137 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %138 = vector.fma %134, %136, %137 : vector<8xf32>
                  affine.store %138, %alloca[0] : memref<1xvector<8xf32>>
                  %139 = arith.addi %arg12, %c2 : index
                  %140 = memref.load %alloc_74[%123, %arg9, %124, %139] : memref<64x12x1x256xf32>
                  %141 = vector.broadcast %140 : f32 to vector<8xf32>
                  %142 = affine.apply #map21(%arg9, %arg11, %arg12)
                  %143 = vector.load %arg6[%arg8, %142] : memref<1x196608xf32>, vector<8xf32>
                  %144 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %145 = vector.fma %141, %143, %144 : vector<8xf32>
                  affine.store %145, %alloca[0] : memref<1xvector<8xf32>>
                  %146 = arith.addi %arg12, %c3 : index
                  %147 = memref.load %alloc_74[%123, %arg9, %124, %146] : memref<64x12x1x256xf32>
                  %148 = vector.broadcast %147 : f32 to vector<8xf32>
                  %149 = affine.apply #map22(%arg9, %arg11, %arg12)
                  %150 = vector.load %arg6[%arg8, %149] : memref<1x196608xf32>, vector<8xf32>
                  %151 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %152 = vector.fma %148, %150, %151 : vector<8xf32>
                  affine.store %152, %alloca[0] : memref<1xvector<8xf32>>
                  %153 = arith.addi %arg12, %c4 : index
                  %154 = memref.load %alloc_74[%123, %arg9, %124, %153] : memref<64x12x1x256xf32>
                  %155 = vector.broadcast %154 : f32 to vector<8xf32>
                  %156 = affine.apply #map23(%arg9, %arg11, %arg12)
                  %157 = vector.load %arg6[%arg8, %156] : memref<1x196608xf32>, vector<8xf32>
                  %158 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %159 = vector.fma %155, %157, %158 : vector<8xf32>
                  affine.store %159, %alloca[0] : memref<1xvector<8xf32>>
                  %160 = arith.addi %arg12, %c5 : index
                  %161 = memref.load %alloc_74[%123, %arg9, %124, %160] : memref<64x12x1x256xf32>
                  %162 = vector.broadcast %161 : f32 to vector<8xf32>
                  %163 = affine.apply #map24(%arg9, %arg11, %arg12)
                  %164 = vector.load %arg6[%arg8, %163] : memref<1x196608xf32>, vector<8xf32>
                  %165 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %166 = vector.fma %162, %164, %165 : vector<8xf32>
                  affine.store %166, %alloca[0] : memref<1xvector<8xf32>>
                  %167 = arith.addi %arg12, %c6 : index
                  %168 = memref.load %alloc_74[%123, %arg9, %124, %167] : memref<64x12x1x256xf32>
                  %169 = vector.broadcast %168 : f32 to vector<8xf32>
                  %170 = affine.apply #map25(%arg9, %arg11, %arg12)
                  %171 = vector.load %arg6[%arg8, %170] : memref<1x196608xf32>, vector<8xf32>
                  %172 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %173 = vector.fma %169, %171, %172 : vector<8xf32>
                  affine.store %173, %alloca[0] : memref<1xvector<8xf32>>
                  %174 = arith.addi %arg12, %c7 : index
                  %175 = memref.load %alloc_74[%123, %arg9, %124, %174] : memref<64x12x1x256xf32>
                  %176 = vector.broadcast %175 : f32 to vector<8xf32>
                  %177 = affine.apply #map26(%arg9, %arg11, %arg12)
                  %178 = vector.load %arg6[%arg8, %177] : memref<1x196608xf32>, vector<8xf32>
                  %179 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  %180 = vector.fma %176, %178, %179 : vector<8xf32>
                  affine.store %180, %alloca[0] : memref<1xvector<8xf32>>
                  %181 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                  vector.store %181, %alloc_77[%123, %arg9, %124, %arg11] : memref<64x12x1x64xf32>, vector<8xf32>
                }
              }
            }
          }
        }
      }
      affine.yield %118, %119, %122, %121 : index, index, memref<1x196608xf32>, index
    }
    %reinterpret_cast_78 = memref.reinterpret_cast %alloc_77 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_79 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_79[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_80 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_81 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %118 = affine.load %alloc_10[%arg4 + %arg5, %arg3 + %arg6] : memref<768x768xf32>
            affine.store %118, %alloc_81[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %118 = affine.load %reinterpret_cast_78[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %118, %alloc_80[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %118 = affine.apply #map3(%arg5, %arg7)
              %119 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %120 = vector.load %alloc_79[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %120, %alloca[0] : memref<4xvector<16xf32>>
              %121 = arith.addi %arg7, %c1 : index
              %122 = vector.load %alloc_79[%121, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
              %123 = arith.addi %arg7, %c2 : index
              %124 = vector.load %alloc_79[%123, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %124, %alloca[2] : memref<4xvector<16xf32>>
              %125 = arith.addi %arg7, %c3 : index
              %126 = vector.load %alloc_79[%125, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %126, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %131 = memref.load %alloc_80[%118, %arg8] : memref<32x256xf32>
                %132 = vector.broadcast %131 : f32 to vector<16xf32>
                %133 = vector.load %alloc_81[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %134 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %135 = vector.fma %132, %133, %134 : vector<16xf32>
                affine.store %135, %alloca[0] : memref<4xvector<16xf32>>
                %136 = affine.apply #map4(%arg8)
                %137 = memref.load %alloc_80[%118, %136] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_81[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[0] : memref<4xvector<16xf32>>
                %142 = affine.apply #map5(%arg8)
                %143 = memref.load %alloc_80[%118, %142] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_81[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[0] : memref<4xvector<16xf32>>
                %148 = affine.apply #map6(%arg8)
                %149 = memref.load %alloc_80[%118, %148] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_81[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[0] : memref<4xvector<16xf32>>
                %154 = arith.addi %118, %c1 : index
                %155 = memref.load %alloc_80[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_81[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[1] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_80[%154, %136] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_81[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[1] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_80[%154, %142] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_81[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[1] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_80[%154, %148] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_81[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[1] : memref<4xvector<16xf32>>
                %175 = arith.addi %118, %c2 : index
                %176 = memref.load %alloc_80[%175, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_81[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[2] : memref<4xvector<16xf32>>
                %181 = memref.load %alloc_80[%175, %136] : memref<32x256xf32>
                %182 = vector.broadcast %181 : f32 to vector<16xf32>
                %183 = vector.load %alloc_81[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %184 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %185 = vector.fma %182, %183, %184 : vector<16xf32>
                affine.store %185, %alloca[2] : memref<4xvector<16xf32>>
                %186 = memref.load %alloc_80[%175, %142] : memref<32x256xf32>
                %187 = vector.broadcast %186 : f32 to vector<16xf32>
                %188 = vector.load %alloc_81[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %189 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %190 = vector.fma %187, %188, %189 : vector<16xf32>
                affine.store %190, %alloca[2] : memref<4xvector<16xf32>>
                %191 = memref.load %alloc_80[%175, %148] : memref<32x256xf32>
                %192 = vector.broadcast %191 : f32 to vector<16xf32>
                %193 = vector.load %alloc_81[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %194 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %195 = vector.fma %192, %193, %194 : vector<16xf32>
                affine.store %195, %alloca[2] : memref<4xvector<16xf32>>
                %196 = arith.addi %118, %c3 : index
                %197 = memref.load %alloc_80[%196, %arg8] : memref<32x256xf32>
                %198 = vector.broadcast %197 : f32 to vector<16xf32>
                %199 = vector.load %alloc_81[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %200 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %201 = vector.fma %198, %199, %200 : vector<16xf32>
                affine.store %201, %alloca[3] : memref<4xvector<16xf32>>
                %202 = memref.load %alloc_80[%196, %136] : memref<32x256xf32>
                %203 = vector.broadcast %202 : f32 to vector<16xf32>
                %204 = vector.load %alloc_81[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %205 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %206 = vector.fma %203, %204, %205 : vector<16xf32>
                affine.store %206, %alloca[3] : memref<4xvector<16xf32>>
                %207 = memref.load %alloc_80[%196, %142] : memref<32x256xf32>
                %208 = vector.broadcast %207 : f32 to vector<16xf32>
                %209 = vector.load %alloc_81[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %210 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %211 = vector.fma %208, %209, %210 : vector<16xf32>
                affine.store %211, %alloca[3] : memref<4xvector<16xf32>>
                %212 = memref.load %alloc_80[%196, %148] : memref<32x256xf32>
                %213 = vector.broadcast %212 : f32 to vector<16xf32>
                %214 = vector.load %alloc_81[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %215 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %216 = vector.fma %213, %214, %215 : vector<16xf32>
                affine.store %216, %alloca[3] : memref<4xvector<16xf32>>
              }
              %127 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_79[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %128 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_79[%121, %arg6] : memref<64x768xf32>, vector<16xf32>
              %129 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_79[%123, %arg6] : memref<64x768xf32>, vector<16xf32>
              %130 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_79[%125, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %118 = affine.load %alloc_79[%arg3, %arg4] : memref<64x768xf32>
        %119 = affine.load %alloc_12[%arg4] : memref<768xf32>
        %120 = arith.addf %118, %119 : f32
        affine.store %120, %alloc_79[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_82 = memref.reinterpret_cast %alloc_79 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_83 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %reinterpret_cast_82[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_34[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_85 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.addf %119, %118 : f32
          affine.store %120, %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = arith.divf %118, %cst : f32
          affine.store %119, %alloc_85[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_86 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_85[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.subf %118, %119 : f32
          affine.store %120, %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_87 = memref.alloc() : memref<f32>
    %cast_88 = memref.cast %alloc_87 : memref<f32> to memref<*xf32>
    %90 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %91 = llvm.getelementptr %90[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%91, %cast_88) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_89 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_87[] : memref<f32>
          %120 = math.powf %118, %119 : f32
          affine.store %120, %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_90 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_89[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_90[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.addf %119, %118 : f32
          affine.store %120, %alloc_90[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = arith.divf %118, %cst : f32
          affine.store %119, %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_91 = memref.alloc() : memref<f32>
    %cast_92 = memref.cast %alloc_91 : memref<f32> to memref<*xf32>
    %92 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %93 = llvm.getelementptr %92[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%93, %cast_92) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_93 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_90[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = affine.load %alloc_91[] : memref<f32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_94 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_93[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = math.sqrt %118 : f32
          affine.store %119, %alloc_94[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_95 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_86[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_94[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.divf %118, %119 : f32
          affine.store %120, %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_96 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_95[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_14[%arg5] : memref<768xf32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_97 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_96[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_16[%arg5] : memref<768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_97[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_98 = memref.reinterpret_cast %alloc_97 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_99 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        affine.store %cst_1, %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_100 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_101 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 3072 step 64 {
      affine.for %arg4 = 0 to 768 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %118 = affine.load %alloc_18[%arg4 + %arg5, %arg3 + %arg6] : memref<768x3072xf32>
            affine.store %118, %alloc_101[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %118 = affine.load %reinterpret_cast_98[%arg5 + %arg6, %arg4 + %arg7] : memref<64x768xf32>
              affine.store %118, %alloc_100[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %118 = affine.apply #map3(%arg5, %arg7)
              %119 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %120 = vector.load %alloc_99[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %120, %alloca[0] : memref<4xvector<16xf32>>
              %121 = arith.addi %arg7, %c1 : index
              %122 = vector.load %alloc_99[%121, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
              %123 = arith.addi %arg7, %c2 : index
              %124 = vector.load %alloc_99[%123, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %124, %alloca[2] : memref<4xvector<16xf32>>
              %125 = arith.addi %arg7, %c3 : index
              %126 = vector.load %alloc_99[%125, %arg6] : memref<64x3072xf32>, vector<16xf32>
              affine.store %126, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %131 = memref.load %alloc_100[%118, %arg8] : memref<32x256xf32>
                %132 = vector.broadcast %131 : f32 to vector<16xf32>
                %133 = vector.load %alloc_101[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %134 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %135 = vector.fma %132, %133, %134 : vector<16xf32>
                affine.store %135, %alloca[0] : memref<4xvector<16xf32>>
                %136 = affine.apply #map4(%arg8)
                %137 = memref.load %alloc_100[%118, %136] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_101[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[0] : memref<4xvector<16xf32>>
                %142 = affine.apply #map5(%arg8)
                %143 = memref.load %alloc_100[%118, %142] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_101[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[0] : memref<4xvector<16xf32>>
                %148 = affine.apply #map6(%arg8)
                %149 = memref.load %alloc_100[%118, %148] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_101[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[0] : memref<4xvector<16xf32>>
                %154 = arith.addi %118, %c1 : index
                %155 = memref.load %alloc_100[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_101[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[1] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_100[%154, %136] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_101[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[1] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_100[%154, %142] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_101[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[1] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_100[%154, %148] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_101[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[1] : memref<4xvector<16xf32>>
                %175 = arith.addi %118, %c2 : index
                %176 = memref.load %alloc_100[%175, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_101[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[2] : memref<4xvector<16xf32>>
                %181 = memref.load %alloc_100[%175, %136] : memref<32x256xf32>
                %182 = vector.broadcast %181 : f32 to vector<16xf32>
                %183 = vector.load %alloc_101[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %184 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %185 = vector.fma %182, %183, %184 : vector<16xf32>
                affine.store %185, %alloca[2] : memref<4xvector<16xf32>>
                %186 = memref.load %alloc_100[%175, %142] : memref<32x256xf32>
                %187 = vector.broadcast %186 : f32 to vector<16xf32>
                %188 = vector.load %alloc_101[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %189 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %190 = vector.fma %187, %188, %189 : vector<16xf32>
                affine.store %190, %alloca[2] : memref<4xvector<16xf32>>
                %191 = memref.load %alloc_100[%175, %148] : memref<32x256xf32>
                %192 = vector.broadcast %191 : f32 to vector<16xf32>
                %193 = vector.load %alloc_101[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %194 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %195 = vector.fma %192, %193, %194 : vector<16xf32>
                affine.store %195, %alloca[2] : memref<4xvector<16xf32>>
                %196 = arith.addi %118, %c3 : index
                %197 = memref.load %alloc_100[%196, %arg8] : memref<32x256xf32>
                %198 = vector.broadcast %197 : f32 to vector<16xf32>
                %199 = vector.load %alloc_101[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %200 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %201 = vector.fma %198, %199, %200 : vector<16xf32>
                affine.store %201, %alloca[3] : memref<4xvector<16xf32>>
                %202 = memref.load %alloc_100[%196, %136] : memref<32x256xf32>
                %203 = vector.broadcast %202 : f32 to vector<16xf32>
                %204 = vector.load %alloc_101[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %205 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %206 = vector.fma %203, %204, %205 : vector<16xf32>
                affine.store %206, %alloca[3] : memref<4xvector<16xf32>>
                %207 = memref.load %alloc_100[%196, %142] : memref<32x256xf32>
                %208 = vector.broadcast %207 : f32 to vector<16xf32>
                %209 = vector.load %alloc_101[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %210 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %211 = vector.fma %208, %209, %210 : vector<16xf32>
                affine.store %211, %alloca[3] : memref<4xvector<16xf32>>
                %212 = memref.load %alloc_100[%196, %148] : memref<32x256xf32>
                %213 = vector.broadcast %212 : f32 to vector<16xf32>
                %214 = vector.load %alloc_101[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %215 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %216 = vector.fma %213, %214, %215 : vector<16xf32>
                affine.store %216, %alloca[3] : memref<4xvector<16xf32>>
              }
              %127 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_99[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %128 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_99[%121, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %129 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_99[%123, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %130 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_99[%125, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 3072 {
        %118 = affine.load %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
        %119 = affine.load %alloc_20[%arg4] : memref<3072xf32>
        %120 = arith.addf %118, %119 : f32
        affine.store %120, %alloc_99[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_102 = memref.reinterpret_cast %alloc_99 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_103 = memref.alloc() : memref<f32>
    %cast_104 = memref.cast %alloc_103 : memref<f32> to memref<*xf32>
    %94 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %95 = llvm.getelementptr %94[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%95, %cast_104) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_105 = memref.alloc() : memref<f32>
    %cast_106 = memref.cast %alloc_105 : memref<f32> to memref<*xf32>
    %96 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %97 = llvm.getelementptr %96[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%97, %cast_106) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_107 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_105[] : memref<f32>
          %120 = math.powf %118, %119 : f32
          affine.store %120, %alloc_107[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_108 = memref.alloc() : memref<f32>
    %cast_109 = memref.cast %alloc_108 : memref<f32> to memref<*xf32>
    %98 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %99 = llvm.getelementptr %98[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%99, %cast_109) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_110 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %alloc_107[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_108[] : memref<f32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_111 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_112 = memref.alloc() : memref<f32>
    %cast_113 = memref.cast %alloc_112 : memref<f32> to memref<*xf32>
    %100 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %101 = llvm.getelementptr %100[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%101, %cast_113) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_114 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_112[] : memref<f32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_115 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %alloc_114[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = math.tanh %118 : f32
          affine.store %119, %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_116 = memref.alloc() : memref<f32>
    %cast_117 = memref.cast %alloc_116 : memref<f32> to memref<*xf32>
    %102 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %103 = llvm.getelementptr %102[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%103, %cast_117) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_118 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %alloc_115[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_116[] : memref<f32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_119 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %reinterpret_cast_102[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_118[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_120 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 3072 {
          %118 = affine.load %alloc_119[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %119 = affine.load %alloc_103[] : memref<f32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_120[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_121 = memref.reinterpret_cast %alloc_120 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_122 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        affine.store %cst_1, %alloc_122[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_123 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_124 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    affine.for %arg3 = 0 to 768 step 64 {
      affine.for %arg4 = 0 to 3072 step 256 {
        affine.for %arg5 = 0 to 256 {
          affine.for %arg6 = 0 to 64 {
            %118 = affine.load %alloc_22[%arg4 + %arg5, %arg3 + %arg6] : memref<3072x768xf32>
            affine.store %118, %alloc_124[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        affine.for %arg5 = 0 to 64 step 32 {
          affine.for %arg6 = 0 to 32 {
            affine.for %arg7 = 0 to 256 {
              %118 = affine.load %reinterpret_cast_121[%arg5 + %arg6, %arg4 + %arg7] : memref<64x3072xf32>
              affine.store %118, %alloc_123[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          affine.for %arg6 = #map(%arg3) to #map1(%arg3) step 16 {
            affine.for %arg7 = #map(%arg5) to #map2(%arg5) step 4 {
              %118 = affine.apply #map3(%arg5, %arg7)
              %119 = affine.apply #map3(%arg3, %arg6)
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
              %120 = vector.load %alloc_122[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %120, %alloca[0] : memref<4xvector<16xf32>>
              %121 = arith.addi %arg7, %c1 : index
              %122 = vector.load %alloc_122[%121, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %122, %alloca[1] : memref<4xvector<16xf32>>
              %123 = arith.addi %arg7, %c2 : index
              %124 = vector.load %alloc_122[%123, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %124, %alloca[2] : memref<4xvector<16xf32>>
              %125 = arith.addi %arg7, %c3 : index
              %126 = vector.load %alloc_122[%125, %arg6] : memref<64x768xf32>, vector<16xf32>
              affine.store %126, %alloca[3] : memref<4xvector<16xf32>>
              affine.for %arg8 = 0 to 256 step 4 {
                %131 = memref.load %alloc_123[%118, %arg8] : memref<32x256xf32>
                %132 = vector.broadcast %131 : f32 to vector<16xf32>
                %133 = vector.load %alloc_124[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %134 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %135 = vector.fma %132, %133, %134 : vector<16xf32>
                affine.store %135, %alloca[0] : memref<4xvector<16xf32>>
                %136 = affine.apply #map4(%arg8)
                %137 = memref.load %alloc_123[%118, %136] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_124[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %140 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                affine.store %141, %alloca[0] : memref<4xvector<16xf32>>
                %142 = affine.apply #map5(%arg8)
                %143 = memref.load %alloc_123[%118, %142] : memref<32x256xf32>
                %144 = vector.broadcast %143 : f32 to vector<16xf32>
                %145 = vector.load %alloc_124[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %146 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %147 = vector.fma %144, %145, %146 : vector<16xf32>
                affine.store %147, %alloca[0] : memref<4xvector<16xf32>>
                %148 = affine.apply #map6(%arg8)
                %149 = memref.load %alloc_123[%118, %148] : memref<32x256xf32>
                %150 = vector.broadcast %149 : f32 to vector<16xf32>
                %151 = vector.load %alloc_124[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %152 = affine.load %alloca[0] : memref<4xvector<16xf32>>
                %153 = vector.fma %150, %151, %152 : vector<16xf32>
                affine.store %153, %alloca[0] : memref<4xvector<16xf32>>
                %154 = arith.addi %118, %c1 : index
                %155 = memref.load %alloc_123[%154, %arg8] : memref<32x256xf32>
                %156 = vector.broadcast %155 : f32 to vector<16xf32>
                %157 = vector.load %alloc_124[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %158 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %159 = vector.fma %156, %157, %158 : vector<16xf32>
                affine.store %159, %alloca[1] : memref<4xvector<16xf32>>
                %160 = memref.load %alloc_123[%154, %136] : memref<32x256xf32>
                %161 = vector.broadcast %160 : f32 to vector<16xf32>
                %162 = vector.load %alloc_124[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %163 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %164 = vector.fma %161, %162, %163 : vector<16xf32>
                affine.store %164, %alloca[1] : memref<4xvector<16xf32>>
                %165 = memref.load %alloc_123[%154, %142] : memref<32x256xf32>
                %166 = vector.broadcast %165 : f32 to vector<16xf32>
                %167 = vector.load %alloc_124[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %168 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %169 = vector.fma %166, %167, %168 : vector<16xf32>
                affine.store %169, %alloca[1] : memref<4xvector<16xf32>>
                %170 = memref.load %alloc_123[%154, %148] : memref<32x256xf32>
                %171 = vector.broadcast %170 : f32 to vector<16xf32>
                %172 = vector.load %alloc_124[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %173 = affine.load %alloca[1] : memref<4xvector<16xf32>>
                %174 = vector.fma %171, %172, %173 : vector<16xf32>
                affine.store %174, %alloca[1] : memref<4xvector<16xf32>>
                %175 = arith.addi %118, %c2 : index
                %176 = memref.load %alloc_123[%175, %arg8] : memref<32x256xf32>
                %177 = vector.broadcast %176 : f32 to vector<16xf32>
                %178 = vector.load %alloc_124[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %179 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %180 = vector.fma %177, %178, %179 : vector<16xf32>
                affine.store %180, %alloca[2] : memref<4xvector<16xf32>>
                %181 = memref.load %alloc_123[%175, %136] : memref<32x256xf32>
                %182 = vector.broadcast %181 : f32 to vector<16xf32>
                %183 = vector.load %alloc_124[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %184 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %185 = vector.fma %182, %183, %184 : vector<16xf32>
                affine.store %185, %alloca[2] : memref<4xvector<16xf32>>
                %186 = memref.load %alloc_123[%175, %142] : memref<32x256xf32>
                %187 = vector.broadcast %186 : f32 to vector<16xf32>
                %188 = vector.load %alloc_124[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %189 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %190 = vector.fma %187, %188, %189 : vector<16xf32>
                affine.store %190, %alloca[2] : memref<4xvector<16xf32>>
                %191 = memref.load %alloc_123[%175, %148] : memref<32x256xf32>
                %192 = vector.broadcast %191 : f32 to vector<16xf32>
                %193 = vector.load %alloc_124[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %194 = affine.load %alloca[2] : memref<4xvector<16xf32>>
                %195 = vector.fma %192, %193, %194 : vector<16xf32>
                affine.store %195, %alloca[2] : memref<4xvector<16xf32>>
                %196 = arith.addi %118, %c3 : index
                %197 = memref.load %alloc_123[%196, %arg8] : memref<32x256xf32>
                %198 = vector.broadcast %197 : f32 to vector<16xf32>
                %199 = vector.load %alloc_124[%arg8, %119] : memref<256x64xf32>, vector<16xf32>
                %200 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %201 = vector.fma %198, %199, %200 : vector<16xf32>
                affine.store %201, %alloca[3] : memref<4xvector<16xf32>>
                %202 = memref.load %alloc_123[%196, %136] : memref<32x256xf32>
                %203 = vector.broadcast %202 : f32 to vector<16xf32>
                %204 = vector.load %alloc_124[%136, %119] : memref<256x64xf32>, vector<16xf32>
                %205 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %206 = vector.fma %203, %204, %205 : vector<16xf32>
                affine.store %206, %alloca[3] : memref<4xvector<16xf32>>
                %207 = memref.load %alloc_123[%196, %142] : memref<32x256xf32>
                %208 = vector.broadcast %207 : f32 to vector<16xf32>
                %209 = vector.load %alloc_124[%142, %119] : memref<256x64xf32>, vector<16xf32>
                %210 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %211 = vector.fma %208, %209, %210 : vector<16xf32>
                affine.store %211, %alloca[3] : memref<4xvector<16xf32>>
                %212 = memref.load %alloc_123[%196, %148] : memref<32x256xf32>
                %213 = vector.broadcast %212 : f32 to vector<16xf32>
                %214 = vector.load %alloc_124[%148, %119] : memref<256x64xf32>, vector<16xf32>
                %215 = affine.load %alloca[3] : memref<4xvector<16xf32>>
                %216 = vector.fma %213, %214, %215 : vector<16xf32>
                affine.store %216, %alloca[3] : memref<4xvector<16xf32>>
              }
              %127 = affine.load %alloca[0] : memref<4xvector<16xf32>>
              vector.store %127, %alloc_122[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %128 = affine.load %alloca[1] : memref<4xvector<16xf32>>
              vector.store %128, %alloc_122[%121, %arg6] : memref<64x768xf32>, vector<16xf32>
              %129 = affine.load %alloca[2] : memref<4xvector<16xf32>>
              vector.store %129, %alloc_122[%123, %arg6] : memref<64x768xf32>, vector<16xf32>
              %130 = affine.load %alloca[3] : memref<4xvector<16xf32>>
              vector.store %130, %alloc_122[%125, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 768 {
        %118 = affine.load %alloc_122[%arg3, %arg4] : memref<64x768xf32>
        %119 = affine.load %alloc_24[%arg4] : memref<768xf32>
        %120 = arith.addf %118, %119 : f32
        affine.store %120, %alloc_122[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_125 = memref.reinterpret_cast %alloc_122 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_126 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_83[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %reinterpret_cast_125[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_127 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_126[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_35[0, %arg4, %arg5] : memref<1x1x768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_128 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.addf %119, %118 : f32
          affine.store %120, %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = arith.divf %118, %cst : f32
          affine.store %119, %alloc_128[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_129 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_127[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_128[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.subf %118, %119 : f32
          affine.store %120, %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_130 = memref.alloc() : memref<f32>
    %cast_131 = memref.cast %alloc_130 : memref<f32> to memref<*xf32>
    %104 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %105 = llvm.getelementptr %104[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%105, %cast_131) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_132 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_130[] : memref<f32>
          %120 = math.powf %118, %119 : f32
          affine.store %120, %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_133 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          affine.store %cst_1, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_132[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_133[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.addf %119, %118 : f32
          affine.store %120, %alloc_133[%arg3, %arg4, 0] : memref<64x1x1xf32>
        }
      }
    }
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = arith.divf %118, %cst : f32
          affine.store %119, %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_134 = memref.alloc() : memref<f32>
    %cast_135 = memref.cast %alloc_134 : memref<f32> to memref<*xf32>
    %106 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %107 = llvm.getelementptr %106[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%107, %cast_135) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_136 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_133[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = affine.load %alloc_134[] : memref<f32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_137 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 1 {
          %118 = affine.load %alloc_136[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %119 = math.sqrt %118 : f32
          affine.store %119, %alloc_137[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_129[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_137[%arg3, %arg4, 0] : memref<64x1x1xf32>
          %120 = arith.divf %118, %119 : f32
          affine.store %120, %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_139 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_138[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_26[%arg5] : memref<768xf32>
          %120 = arith.mulf %118, %119 : f32
          affine.store %120, %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_140 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    affine.for %arg3 = 0 to 64 {
      affine.for %arg4 = 0 to 1 {
        affine.for %arg5 = 0 to 768 {
          %118 = affine.load %alloc_139[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %119 = affine.load %alloc_28[%arg5] : memref<768xf32>
          %120 = arith.addf %118, %119 : f32
          affine.store %120, %alloc_140[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %108 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref3", 0 : i32]], alignment = 16 : i64} : <1, memref<64x1x50264xf32>>
    %109 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %109 : !llvm.ptr<i64>
    %110 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %110 : !llvm.ptr<i64>
    %111 = rmem.slot %c0 {mem = "t3"} : (index) -> memref<1x50264xf32>
    %112:3 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %111) -> (index, index, memref<1x50264xf32>) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = rmem.slot %arg4 {mem = "t3"} : (index) -> memref<1x50264xf32>
      affine.for %arg7 = 0 to 1 {
        affine.for %arg8 = 0 to 1 {
          affine.for %arg9 = 0 to 50264 {
            affine.store %cst_1, %arg6[%arg7, %arg8 * 50264 + %arg9] : memref<1x50264xf32>
          }
        }
      }
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg5, %108[%arg3] %c50264 0 %121 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %110 -> %121 : <i64>, index
      affine.yield %118, %119, %120 : index, index, memref<1x50264xf32>
    }
    %113 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %113 : !llvm.ptr<i64>
    %114 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %114 : !llvm.ptr<i64>
    %115 = rmem.wrid : index
    %116 = rmem.rdma %c0, %108[%c0] %c50264 4 %115 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
    %117:4 = affine.for %arg3 = 0 to 64 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %116, %arg7 = %115) -> (index, index, memref<1x50264xf32>, index) {
      %118 = arith.addi %arg4, %c1 : index
      %119 = arith.addi %arg5, %c1 : index
      %120 = arith.addi %arg3, %c1 : index
      %121 = rmem.wrid : index
      %122 = rmem.rdma %arg4, %108[%120] %c50264 4 %121 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %113 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        %125 = affine.apply #map10(%arg3, %arg8)
        affine.for %arg9 = 0 to 1 {
          affine.for %arg10 = 0 to 50264 step 8 {
            affine.for %arg11 = 0 to 768 step 8 {
              %alloca = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
              affine.for %arg12 = 0 to 1 {
                %126 = arith.addi %arg12, %arg9 : index
                %127 = affine.apply #map28(%arg9, %arg10, %arg12)
                %128 = vector.load %arg6[%arg8, %127] : memref<1x50264xf32>, vector<8xf32>
                affine.store %128, %alloca[0] : memref<1xvector<8xf32>>
                %129 = memref.load %alloc_140[%125, %126, %arg11] : memref<64x1x768xf32>
                %130 = vector.broadcast %129 : f32 to vector<8xf32>
                %131 = vector.load %alloc_32[%arg11, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %132 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %133 = vector.fma %130, %131, %132 : vector<8xf32>
                affine.store %133, %alloca[0] : memref<1xvector<8xf32>>
                %134 = arith.addi %arg11, %c1 : index
                %135 = memref.load %alloc_140[%125, %126, %134] : memref<64x1x768xf32>
                %136 = vector.broadcast %135 : f32 to vector<8xf32>
                %137 = vector.load %alloc_32[%134, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %138 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %139 = vector.fma %136, %137, %138 : vector<8xf32>
                affine.store %139, %alloca[0] : memref<1xvector<8xf32>>
                %140 = arith.addi %arg11, %c2 : index
                %141 = memref.load %alloc_140[%125, %126, %140] : memref<64x1x768xf32>
                %142 = vector.broadcast %141 : f32 to vector<8xf32>
                %143 = vector.load %alloc_32[%140, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %144 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %145 = vector.fma %142, %143, %144 : vector<8xf32>
                affine.store %145, %alloca[0] : memref<1xvector<8xf32>>
                %146 = arith.addi %arg11, %c3 : index
                %147 = memref.load %alloc_140[%125, %126, %146] : memref<64x1x768xf32>
                %148 = vector.broadcast %147 : f32 to vector<8xf32>
                %149 = vector.load %alloc_32[%146, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %150 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %151 = vector.fma %148, %149, %150 : vector<8xf32>
                affine.store %151, %alloca[0] : memref<1xvector<8xf32>>
                %152 = arith.addi %arg11, %c4 : index
                %153 = memref.load %alloc_140[%125, %126, %152] : memref<64x1x768xf32>
                %154 = vector.broadcast %153 : f32 to vector<8xf32>
                %155 = vector.load %alloc_32[%152, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %156 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %157 = vector.fma %154, %155, %156 : vector<8xf32>
                affine.store %157, %alloca[0] : memref<1xvector<8xf32>>
                %158 = arith.addi %arg11, %c5 : index
                %159 = memref.load %alloc_140[%125, %126, %158] : memref<64x1x768xf32>
                %160 = vector.broadcast %159 : f32 to vector<8xf32>
                %161 = vector.load %alloc_32[%158, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %162 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %163 = vector.fma %160, %161, %162 : vector<8xf32>
                affine.store %163, %alloca[0] : memref<1xvector<8xf32>>
                %164 = arith.addi %arg11, %c6 : index
                %165 = memref.load %alloc_140[%125, %126, %164] : memref<64x1x768xf32>
                %166 = vector.broadcast %165 : f32 to vector<8xf32>
                %167 = vector.load %alloc_32[%164, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %168 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %169 = vector.fma %166, %167, %168 : vector<8xf32>
                affine.store %169, %alloca[0] : memref<1xvector<8xf32>>
                %170 = arith.addi %arg11, %c7 : index
                %171 = memref.load %alloc_140[%125, %126, %170] : memref<64x1x768xf32>
                %172 = vector.broadcast %171 : f32 to vector<8xf32>
                %173 = vector.load %alloc_32[%170, %arg10] : memref<768x50264xf32>, vector<8xf32>
                %174 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                %175 = vector.fma %172, %173, %174 : vector<8xf32>
                affine.store %175, %alloca[0] : memref<1xvector<8xf32>>
                %176 = affine.load %alloca[0] : memref<1xvector<8xf32>>
                vector.store %176, %arg6[%arg8, %127] : memref<1x50264xf32>, vector<8xf32>
              }
            }
          }
        }
      }
      %123 = rmem.wrid : index
      %124 = rmem.rdma %arg5, %108[%arg3] %c50264 0 %123 {map = #map27, mem = "t3"} : (index, !rmem.rmref<1, memref<64x1x50264xf32>>, index, index, index) -> memref<1x50264xf32>
      rmem.sync %114 -> %123 : <i64>, index
      affine.yield %118, %119, %122, %121 : index, index, memref<1x50264xf32>, index
    }
    return %108 : !rmem.rmref<1, memref<64x1x50264xf32>>
  }
}

