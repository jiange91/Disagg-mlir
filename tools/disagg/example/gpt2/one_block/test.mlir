module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
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
  func.func private @read_tensor_i1(!llvm.ptr<i8>, memref<*xi1>)
  func.func private @disagg_read_tensor_i1(!llvm.ptr<i8>, memref<*xi1>) attributes {operand_types = [!llvm.ptr<i8>, !rmem.rmref<1, memref<*xi1>>], remote_target = 1 : i64}
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
  func.func private @read_tensor_f32(!llvm.ptr<i8>, memref<*xf32>)
  func.func private @disagg_read_tensor_f32(!llvm.ptr<i8>, memref<*xf32>) attributes {operand_types = [!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>], remote_target = 1 : i64}
  llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}
  func.func @main_graph(%arg0: memref<64x1xi64>, %arg1: memref<64x12x255x64xf32>, %arg2: memref<64x12x255x64xf32>) -> memref<64x1x50264xf32> attributes {input_names = ["input_ids", "past.0.key", "past.0.value"], llvm.emit_c_interface, operand_types = [memref<64x1xi64>, !rmem.rmref<1, memref<64x12x255x64xf32>>, !rmem.rmref<1, memref<64x12x255x64xf32>>], output_names = ["logits"], remote_target = 1 : i64} {
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64x1x50264xf32>
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
    %alloc_2 = memref.alloc() {alignment = 16 : i64} : memref<50264x768xf32>
    %cast = memref.cast %alloc_2 : memref<50264x768xf32> to memref<*xf32>
    %0 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<11 x i8>>
    %1 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%1, %cast) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_3 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_4 = memref.cast %alloc_3 : memref<768xf32> to memref<*xf32>
    %2 = llvm.mlir.addressof @constant_1 : !llvm.ptr<array<11 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%3, %cast_4) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_5 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_6 = memref.cast %alloc_5 : memref<768xf32> to memref<*xf32>
    %4 = llvm.mlir.addressof @constant_2 : !llvm.ptr<array<11 x i8>>
    %5 = llvm.getelementptr %4[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%5, %cast_6) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_7 = memref.alloc() : memref<768x2304xf32>
    %cast_8 = memref.cast %alloc_7 : memref<768x2304xf32> to memref<*xf32>
    %6 = llvm.mlir.addressof @constant_3 : !llvm.ptr<array<11 x i8>>
    %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%7, %cast_8) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_9 = memref.alloc() {alignment = 16 : i64} : memref<2304xf32>
    %cast_10 = memref.cast %alloc_9 : memref<2304xf32> to memref<*xf32>
    %8 = llvm.mlir.addressof @constant_4 : !llvm.ptr<array<11 x i8>>
    %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%9, %cast_10) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_11 = memref.alloc() {alignment = 16 : i64} : memref<768x768xf32>
    %cast_12 = memref.cast %alloc_11 : memref<768x768xf32> to memref<*xf32>
    %10 = llvm.mlir.addressof @constant_5 : !llvm.ptr<array<11 x i8>>
    %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%11, %cast_12) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_13 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_14 = memref.cast %alloc_13 : memref<768xf32> to memref<*xf32>
    %12 = llvm.mlir.addressof @constant_6 : !llvm.ptr<array<11 x i8>>
    %13 = llvm.getelementptr %12[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%13, %cast_14) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_15 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_16 = memref.cast %alloc_15 : memref<768xf32> to memref<*xf32>
    %14 = llvm.mlir.addressof @constant_7 : !llvm.ptr<array<11 x i8>>
    %15 = llvm.getelementptr %14[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%15, %cast_16) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_17 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_18 = memref.cast %alloc_17 : memref<768xf32> to memref<*xf32>
    %16 = llvm.mlir.addressof @constant_8 : !llvm.ptr<array<11 x i8>>
    %17 = llvm.getelementptr %16[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%17, %cast_18) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_19 = memref.alloc() {alignment = 16 : i64} : memref<768x3072xf32>
    %cast_20 = memref.cast %alloc_19 : memref<768x3072xf32> to memref<*xf32>
    %18 = llvm.mlir.addressof @constant_9 : !llvm.ptr<array<11 x i8>>
    %19 = llvm.getelementptr %18[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%19, %cast_20) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_21 = memref.alloc() {alignment = 16 : i64} : memref<3072xf32>
    %cast_22 = memref.cast %alloc_21 : memref<3072xf32> to memref<*xf32>
    %20 = llvm.mlir.addressof @constant_10 : !llvm.ptr<array<12 x i8>>
    %21 = llvm.getelementptr %20[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%21, %cast_22) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_23 = memref.alloc() {alignment = 16 : i64} : memref<3072x768xf32>
    %cast_24 = memref.cast %alloc_23 : memref<3072x768xf32> to memref<*xf32>
    %22 = llvm.mlir.addressof @constant_11 : !llvm.ptr<array<12 x i8>>
    %23 = llvm.getelementptr %22[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%23, %cast_24) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_25 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_26 = memref.cast %alloc_25 : memref<768xf32> to memref<*xf32>
    %24 = llvm.mlir.addressof @constant_12 : !llvm.ptr<array<12 x i8>>
    %25 = llvm.getelementptr %24[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%25, %cast_26) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_27 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_28 = memref.cast %alloc_27 : memref<768xf32> to memref<*xf32>
    %26 = llvm.mlir.addressof @constant_13 : !llvm.ptr<array<12 x i8>>
    %27 = llvm.getelementptr %26[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%27, %cast_28) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_29 = memref.alloc() {alignment = 16 : i64} : memref<768xf32>
    %cast_30 = memref.cast %alloc_29 : memref<768xf32> to memref<*xf32>
    %28 = llvm.mlir.addressof @constant_14 : !llvm.ptr<array<12 x i8>>
    %29 = llvm.getelementptr %28[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%29, %cast_30) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_31 = memref.alloc() {alignment = 16 : i64} : memref<1x1x1x256xi1>
    %cast_32 = memref.cast %alloc_31 : memref<1x1x1x256xi1> to memref<*xi1>
    %30 = llvm.mlir.addressof @constant_15 : !llvm.ptr<array<12 x i8>>
    %31 = llvm.getelementptr %30[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_i1(%31, %cast_32) : (!llvm.ptr<i8>, memref<*xi1>) -> ()
    %alloc_33 = memref.alloc() {alignment = 16 : i64} : memref<768x50264xf32>
    %cast_34 = memref.cast %alloc_33 : memref<768x50264xf32> to memref<*xf32>
    %32 = llvm.mlir.addressof @constant_16 : !llvm.ptr<array<12 x i8>>
    %33 = llvm.getelementptr %32[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%33, %cast_34) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %reinterpret_cast = memref.reinterpret_cast %arg0 to offset: [0], sizes: [64, 1], strides: [1, 1] : memref<64x1xi64> to memref<64x1xi64>
    %alloc_35 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_36 = arith.constant 0 : index
    %c64 = arith.constant 64 : index
    %c1_37 = arith.constant 1 : index
    scf.for %arg3 = %c0_36 to %c64 step %c1_37 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %reinterpret_cast[%arg3, %arg4] : memref<64x1xi64>
          %71 = arith.index_cast %70 : i64 to index
          %72 = arith.addi %71, %c50264 : index
          %73 = arith.cmpi slt, %71, %c0 : index
          %74 = arith.select %73, %72, %71 : index
          %75 = memref.load %alloc_2[%74, %arg5] : memref<50264x768xf32>
          memref.store %75, %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_38 = memref.alloc() {alignment = 16 : i64} : memref<1x1x768xf32>
    %cast_39 = memref.cast %alloc_38 : memref<1x1x768xf32> to memref<*xf32>
    %34 = llvm.mlir.addressof @constant_18 : !llvm.ptr<array<12 x i8>>
    %35 = llvm.getelementptr %34[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%35, %cast_39) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_40 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_41 = arith.constant 0 : index
    %c64_42 = arith.constant 64 : index
    %c1_43 = arith.constant 1 : index
    scf.for %arg3 = %c0_41 to %c64_42 step %c1_43 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_38[%c0_400, %arg4, %arg5] : memref<1x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_44 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_45 = arith.constant 0 : index
    %c64_46 = arith.constant 64 : index
    %c1_47 = arith.constant 1 : index
    scf.for %arg3 = %c0_45 to %c64_46 step %c1_47 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          memref.store %cst_1, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_48 = arith.constant 0 : index
    %c64_49 = arith.constant 64 : index
    %c1_50 = arith.constant 1 : index
    scf.for %arg3 = %c0_48 to %c64_49 step %c1_50 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_44[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          %c0_401 = arith.constant 0 : index
          memref.store %72, %alloc_44[%arg3, %arg4, %c0_401] : memref<64x1x1xf32>
        }
      }
    }
    %c0_51 = arith.constant 0 : index
    %c64_52 = arith.constant 64 : index
    %c1_53 = arith.constant 1 : index
    scf.for %arg3 = %c0_51 to %c64_52 step %c1_53 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          memref.store %71, %alloc_44[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_54 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_55 = arith.constant 0 : index
    %c64_56 = arith.constant 64 : index
    %c1_57 = arith.constant 1 : index
    scf.for %arg3 = %c0_55 to %c64_56 step %c1_57 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_40[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_44[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.subf %70, %71 : f32
          memref.store %72, %alloc_54[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_58 = memref.alloc() : memref<f32>
    %cast_59 = memref.cast %alloc_58 : memref<f32> to memref<*xf32>
    %36 = llvm.mlir.addressof @constant_19 : !llvm.ptr<array<12 x i8>>
    %37 = llvm.getelementptr %36[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%37, %cast_59) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_60 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_61 = arith.constant 0 : index
    %c64_62 = arith.constant 64 : index
    %c1_63 = arith.constant 1 : index
    scf.for %arg3 = %c0_61 to %c64_62 step %c1_63 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_54[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_58[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          memref.store %72, %alloc_60[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_64 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_65 = arith.constant 0 : index
    %c64_66 = arith.constant 64 : index
    %c1_67 = arith.constant 1 : index
    scf.for %arg3 = %c0_65 to %c64_66 step %c1_67 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          memref.store %cst_1, %alloc_64[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_68 = arith.constant 0 : index
    %c64_69 = arith.constant 64 : index
    %c1_70 = arith.constant 1 : index
    scf.for %arg3 = %c0_68 to %c64_69 step %c1_70 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_60[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_64[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          %c0_401 = arith.constant 0 : index
          memref.store %72, %alloc_64[%arg3, %arg4, %c0_401] : memref<64x1x1xf32>
        }
      }
    }
    %c0_71 = arith.constant 0 : index
    %c64_72 = arith.constant 64 : index
    %c1_73 = arith.constant 1 : index
    scf.for %arg3 = %c0_71 to %c64_72 step %c1_73 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_64[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          memref.store %71, %alloc_64[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_74 = memref.alloc() : memref<f32>
    %cast_75 = memref.cast %alloc_74 : memref<f32> to memref<*xf32>
    %38 = llvm.mlir.addressof @constant_20 : !llvm.ptr<array<12 x i8>>
    %39 = llvm.getelementptr %38[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%39, %cast_75) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_76 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_77 = arith.constant 0 : index
    %c64_78 = arith.constant 64 : index
    %c1_79 = arith.constant 1 : index
    scf.for %arg3 = %c0_77 to %c64_78 step %c1_79 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_64[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = memref.load %alloc_74[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_76[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_80 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_81 = arith.constant 0 : index
    %c64_82 = arith.constant 64 : index
    %c1_83 = arith.constant 1 : index
    scf.for %arg3 = %c0_81 to %c64_82 step %c1_83 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_76[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = math.sqrt %70 : f32
          memref.store %71, %alloc_80[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_84 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_85 = arith.constant 0 : index
    %c64_86 = arith.constant 64 : index
    %c1_87 = arith.constant 1 : index
    scf.for %arg3 = %c0_85 to %c64_86 step %c1_87 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_54[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_80[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.divf %70, %71 : f32
          memref.store %72, %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_88 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_89 = arith.constant 0 : index
    %c64_90 = arith.constant 64 : index
    %c1_91 = arith.constant 1 : index
    scf.for %arg3 = %c0_89 to %c64_90 step %c1_91 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_84[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_3[%arg5] : memref<768xf32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_92 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_93 = arith.constant 0 : index
    %c64_94 = arith.constant 64 : index
    %c1_95 = arith.constant 1 : index
    scf.for %arg3 = %c0_93 to %c64_94 step %c1_95 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_88[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_5[%arg5] : memref<768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_92[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_96 = memref.reinterpret_cast %alloc_92 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_97 = memref.alloc() {alignment = 128 : i64} : memref<64x2304xf32>
    %c0_98 = arith.constant 0 : index
    %c64_99 = arith.constant 64 : index
    %c1_100 = arith.constant 1 : index
    scf.for %arg3 = %c0_98 to %c64_99 step %c1_100 {
      %c0_394 = arith.constant 0 : index
      %c2304_395 = arith.constant 2304 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c2304_395 step %c1_396 {
        memref.store %cst_1, %alloc_97[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %alloc_101 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_102 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_103 = arith.constant 0 : index
    %c2304 = arith.constant 2304 : index
    %c64_104 = arith.constant 64 : index
    %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_103 to %c2304 step %c64_104 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c256 {
        %c0_396 = arith.constant 0 : index
        %c256_397 = arith.constant 256 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c256_397 step %c1_398 {
          %c0_401 = arith.constant 0 : index
          %c64_402 = arith.constant 64 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c64_402 step %c1_403 {
            %70 = arith.addi %arg4, %arg5 : index
            %71 = arith.addi %arg3, %arg6 : index
            %72 = memref.load %alloc_7[%70, %71] : memref<768x2304xf32>
            memref.store %72, %alloc_102[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_399 = arith.constant 0 : index
        %c64_400 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_399 to %c64_400 step %c32 {
          %c0_401 = arith.constant 0 : index
          %c32_402 = arith.constant 32 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c32_402 step %c1_403 {
            %c0_405 = arith.constant 0 : index
            %c256_406 = arith.constant 256 : index
            %c1_407 = arith.constant 1 : index
            scf.for %arg7 = %c0_405 to %c256_406 step %c1_407 {
              %71 = arith.addi %arg5, %arg6 : index
              %72 = arith.addi %arg4, %arg7 : index
              %73 = memref.load %reinterpret_cast_96[%71, %72] : memref<64x768xf32>
              memref.store %73, %alloc_101[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_404 = arith.constant 64 : index
          %70 = arith.addi %arg3, %c64_404 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %70 step %c16 {
            %c32_405 = arith.constant 32 : index
            %71 = arith.addi %arg5, %c32_405 : index
            %c4_406 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %71 step %c4_406 {
              %c-1 = arith.constant -1 : index
              %72 = arith.muli %arg5, %c-1 : index
              %73 = arith.addi %72, %arg7 : index
              %c-1_407 = arith.constant -1 : index
              %74 = arith.muli %arg3, %c-1_407 : index
              %75 = arith.addi %74, %arg6 : index
              %76 = vector.load %alloc_97[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c0_408 = arith.constant 0 : index
              memref.store %76, %alloca[%c0_408] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_97[%77, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c1_409 = arith.constant 1 : index
              memref.store %78, %alloca[%c1_409] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_97[%79, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c2_410 = arith.constant 2 : index
              memref.store %80, %alloca[%c2_410] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_97[%81, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c3_411 = arith.constant 3 : index
              memref.store %82, %alloca[%c3_411] : memref<4xvector<16xf32>>
              %c0_412 = arith.constant 0 : index
              %c256_413 = arith.constant 256 : index
              %c4_414 = arith.constant 4 : index
              scf.for %arg8 = %c0_412 to %c256_413 step %c4_414 {
                %87 = memref.load %alloc_101[%73, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_102[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_419 = arith.constant 0 : index
                %90 = memref.load %alloca[%c0_419] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                %c0_420 = arith.constant 0 : index
                memref.store %91, %alloca[%c0_420] : memref<4xvector<16xf32>>
                %c1_421 = arith.constant 1 : index
                %92 = arith.addi %arg8, %c1_421 : index
                %93 = memref.load %alloc_101[%73, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_102[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_422 = arith.constant 0 : index
                %96 = memref.load %alloca[%c0_422] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                %c0_423 = arith.constant 0 : index
                memref.store %97, %alloca[%c0_423] : memref<4xvector<16xf32>>
                %c2_424 = arith.constant 2 : index
                %98 = arith.addi %arg8, %c2_424 : index
                %99 = memref.load %alloc_101[%73, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_102[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_425 = arith.constant 0 : index
                %102 = memref.load %alloca[%c0_425] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                %c0_426 = arith.constant 0 : index
                memref.store %103, %alloca[%c0_426] : memref<4xvector<16xf32>>
                %c3_427 = arith.constant 3 : index
                %104 = arith.addi %arg8, %c3_427 : index
                %105 = memref.load %alloc_101[%73, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_102[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_428 = arith.constant 0 : index
                %108 = memref.load %alloca[%c0_428] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                %c0_429 = arith.constant 0 : index
                memref.store %109, %alloca[%c0_429] : memref<4xvector<16xf32>>
                %110 = arith.addi %73, %c1 : index
                %111 = memref.load %alloc_101[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_102[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_430 = arith.constant 1 : index
                %114 = memref.load %alloca[%c1_430] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                %c1_431 = arith.constant 1 : index
                memref.store %115, %alloca[%c1_431] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_101[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_102[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_432 = arith.constant 1 : index
                %119 = memref.load %alloca[%c1_432] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                %c1_433 = arith.constant 1 : index
                memref.store %120, %alloca[%c1_433] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_101[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_102[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_434 = arith.constant 1 : index
                %124 = memref.load %alloca[%c1_434] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                %c1_435 = arith.constant 1 : index
                memref.store %125, %alloca[%c1_435] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_101[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_102[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_436 = arith.constant 1 : index
                %129 = memref.load %alloca[%c1_436] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                %c1_437 = arith.constant 1 : index
                memref.store %130, %alloca[%c1_437] : memref<4xvector<16xf32>>
                %131 = arith.addi %73, %c2 : index
                %132 = memref.load %alloc_101[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_102[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_438 = arith.constant 2 : index
                %135 = memref.load %alloca[%c2_438] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                %c2_439 = arith.constant 2 : index
                memref.store %136, %alloca[%c2_439] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_101[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_102[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_440 = arith.constant 2 : index
                %140 = memref.load %alloca[%c2_440] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                %c2_441 = arith.constant 2 : index
                memref.store %141, %alloca[%c2_441] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_101[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_102[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_442 = arith.constant 2 : index
                %145 = memref.load %alloca[%c2_442] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                %c2_443 = arith.constant 2 : index
                memref.store %146, %alloca[%c2_443] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_101[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_102[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_444 = arith.constant 2 : index
                %150 = memref.load %alloca[%c2_444] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                %c2_445 = arith.constant 2 : index
                memref.store %151, %alloca[%c2_445] : memref<4xvector<16xf32>>
                %152 = arith.addi %73, %c3 : index
                %153 = memref.load %alloc_101[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_102[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_446 = arith.constant 3 : index
                %156 = memref.load %alloca[%c3_446] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                %c3_447 = arith.constant 3 : index
                memref.store %157, %alloca[%c3_447] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_101[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_102[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_448 = arith.constant 3 : index
                %161 = memref.load %alloca[%c3_448] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c3_449 = arith.constant 3 : index
                memref.store %162, %alloca[%c3_449] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_101[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_102[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_450 = arith.constant 3 : index
                %166 = memref.load %alloca[%c3_450] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c3_451 = arith.constant 3 : index
                memref.store %167, %alloca[%c3_451] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_101[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_102[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_452 = arith.constant 3 : index
                %171 = memref.load %alloca[%c3_452] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c3_453 = arith.constant 3 : index
                memref.store %172, %alloca[%c3_453] : memref<4xvector<16xf32>>
              }
              %c0_415 = arith.constant 0 : index
              %83 = memref.load %alloca[%c0_415] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_97[%arg7, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c1_416 = arith.constant 1 : index
              %84 = memref.load %alloca[%c1_416] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_97[%77, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c2_417 = arith.constant 2 : index
              %85 = memref.load %alloca[%c2_417] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_97[%79, %arg6] : memref<64x2304xf32>, vector<16xf32>
              %c3_418 = arith.constant 3 : index
              %86 = memref.load %alloca[%c3_418] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_97[%81, %arg6] : memref<64x2304xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_105 = arith.constant 0 : index
    %c64_106 = arith.constant 64 : index
    %c1_107 = arith.constant 1 : index
    scf.for %arg3 = %c0_105 to %c64_106 step %c1_107 {
      %c0_394 = arith.constant 0 : index
      %c2304_395 = arith.constant 2304 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c2304_395 step %c1_396 {
        %70 = memref.load %alloc_97[%arg3, %arg4] : memref<64x2304xf32>
        %71 = memref.load %alloc_9[%arg4] : memref<2304xf32>
        %72 = arith.addf %70, %71 : f32
        memref.store %72, %alloc_97[%arg3, %arg4] : memref<64x2304xf32>
      }
    }
    %reinterpret_cast_108 = memref.reinterpret_cast %alloc_97 to offset: [0], sizes: [64, 1, 2304], strides: [2304, 2304, 1] : memref<64x2304xf32> to memref<64x1x2304xf32>
    %alloc_109 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_110 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %alloc_111 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_112 = arith.constant 0 : index
    %c64_113 = arith.constant 64 : index
    %c1_114 = arith.constant 1 : index
    scf.for %arg3 = %c0_112 to %c64_113 step %c1_114 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %reinterpret_cast_108[%arg3, %arg4, %arg5] : memref<64x1x2304xf32>
          memref.store %70, %alloc_109[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %c0_115 = arith.constant 0 : index
    %c64_116 = arith.constant 64 : index
    %c1_117 = arith.constant 1 : index
    scf.for %arg3 = %c0_115 to %c64_116 step %c1_117 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %c768_400 = arith.constant 768 : index
          %70 = arith.addi %arg5, %c768_400 : index
          %71 = memref.load %reinterpret_cast_108[%arg3, %arg4, %70] : memref<64x1x2304xf32>
          memref.store %71, %alloc_110[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %c0_118 = arith.constant 0 : index
    %c64_119 = arith.constant 64 : index
    %c1_120 = arith.constant 1 : index
    scf.for %arg3 = %c0_118 to %c64_119 step %c1_120 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %c1536 = arith.constant 1536 : index
          %70 = arith.addi %arg5, %c1536 : index
          %71 = memref.load %reinterpret_cast_108[%arg3, %arg4, %70] : memref<64x1x2304xf32>
          memref.store %71, %alloc_111[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_121 = memref.reinterpret_cast %alloc_109 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_122 = memref.reinterpret_cast %alloc_110 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %reinterpret_cast_123 = memref.reinterpret_cast %alloc_111 to offset: [0], sizes: [64, 12, 1, 64], strides: [768, 64, 64, 1] : memref<64x1x768xf32> to memref<64x12x1x64xf32>
    %alloc_124 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x12x256x64xf32>
    %c0_125 = arith.constant 0 : index
    %c64_126 = arith.constant 64 : index
    %c1_127 = arith.constant 1 : index
    scf.for %arg3 = %c0_125 to %c64_126 step %c1_127 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c255 = arith.constant 255 : index
        %c1_397 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c255 step %c1_397 {
          %c0_398 = arith.constant 0 : index
          %c64_399 = arith.constant 64 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_398 to %c64_399 step %c1_400 {
            %70 = memref.load %arg1[%arg3, %arg4, %arg5, %arg6] : memref<64x12x255x64xf32>
            memref.store %70, %alloc_124[%arg3, %arg4, %arg5, %arg6] : memref<64x12x256x64xf32>
          }
        }
      }
    }
    %c0_128 = arith.constant 0 : index
    %c64_129 = arith.constant 64 : index
    %c1_130 = arith.constant 1 : index
    scf.for %arg3 = %c0_128 to %c64_129 step %c1_130 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c64_400 = arith.constant 64 : index
          %c1_401 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c64_400 step %c1_401 {
            %70 = memref.load %reinterpret_cast_122[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            %c255 = arith.constant 255 : index
            %71 = arith.addi %arg5, %c255 : index
            memref.store %70, %alloc_124[%arg3, %arg4, %71, %arg6] : memref<64x12x256x64xf32>
          }
        }
      }
    }
    %alloc_131 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x12x256x64xf32>
    %c0_132 = arith.constant 0 : index
    %c64_133 = arith.constant 64 : index
    %c1_134 = arith.constant 1 : index
    scf.for %arg3 = %c0_132 to %c64_133 step %c1_134 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c255 = arith.constant 255 : index
        %c1_397 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c255 step %c1_397 {
          %c0_398 = arith.constant 0 : index
          %c64_399 = arith.constant 64 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_398 to %c64_399 step %c1_400 {
            %70 = memref.load %arg2[%arg3, %arg4, %arg5, %arg6] : memref<64x12x255x64xf32>
            memref.store %70, %alloc_131[%arg3, %arg4, %arg5, %arg6] : memref<64x12x256x64xf32>
          }
        }
      }
    }
    %c0_135 = arith.constant 0 : index
    %c64_136 = arith.constant 64 : index
    %c1_137 = arith.constant 1 : index
    scf.for %arg3 = %c0_135 to %c64_136 step %c1_137 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c64_400 = arith.constant 64 : index
          %c1_401 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c64_400 step %c1_401 {
            %70 = memref.load %reinterpret_cast_123[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
            %c255 = arith.constant 255 : index
            %71 = arith.addi %arg5, %c255 : index
            memref.store %70, %alloc_131[%arg3, %arg4, %71, %arg6] : memref<64x12x256x64xf32>
          }
        }
      }
    }
    %alloc_138 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x12x64x256xf32>
    %c0_139 = arith.constant 0 : index
    %c64_140 = arith.constant 64 : index
    %c1_141 = arith.constant 1 : index
    scf.for %arg3 = %c0_139 to %c64_140 step %c1_141 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c256 = arith.constant 256 : index
        %c1_397 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c256 step %c1_397 {
          %c0_398 = arith.constant 0 : index
          %c64_399 = arith.constant 64 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_398 to %c64_399 step %c1_400 {
            %70 = memref.load %alloc_124[%arg3, %arg4, %arg5, %arg6] : memref<64x12x256x64xf32>
            memref.store %70, %alloc_138[%arg3, %arg4, %arg6, %arg5] : memref<64x12x64x256xf32>
          }
        }
      }
    }
    %alloc_142 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %c0_143 = arith.constant 0 : index
    %c64_144 = arith.constant 64 : index
    %c1_145 = arith.constant 1 : index
    scf.for %arg3 = %c0_143 to %c64_144 step %c1_145 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c256 step %c1_400 {
            memref.store %cst_1, %alloc_142[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %c0_146 = arith.constant 0 : index
    %c64_147 = arith.constant 64 : index
    %c1_148 = arith.constant 1 : index
    %alloca_149 = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    scf.for %arg3 = %c0_146 to %c64_147 step %c1_148 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c8 = arith.constant 8 : index
          scf.for %arg6 = %c0_399 to %c256 step %c8 {
            %c0_400 = arith.constant 0 : index
            %c64_401 = arith.constant 64 : index
            %c8_402 = arith.constant 8 : index
            scf.for %arg7 = %c0_400 to %c64_401 step %c8_402 {
              %c0_403 = arith.constant 0 : index
              %c1_404 = arith.constant 1 : index
              %c1_405 = arith.constant 1 : index
              scf.for %arg8 = %c0_403 to %c1_404 step %c1_405 {
                %70 = arith.addi %arg8, %arg5 : index
                %71 = vector.load %alloc_142[%arg3, %arg4, %70, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
                %c0_406 = arith.constant 0 : index
                memref.store %71, %alloca_149[%c0_406] : memref<1xvector<8xf32>>
                %72 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %arg7] : memref<64x12x1x64xf32>
                %73 = vector.broadcast %72 : f32 to vector<8xf32>
                %74 = vector.load %alloc_138[%arg3, %arg4, %arg7, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_407 = arith.constant 0 : index
                %75 = memref.load %alloca_149[%c0_407] : memref<1xvector<8xf32>>
                %76 = vector.fma %73, %74, %75 : vector<8xf32>
                %c0_408 = arith.constant 0 : index
                memref.store %76, %alloca_149[%c0_408] : memref<1xvector<8xf32>>
                %77 = arith.addi %arg7, %c1 : index
                %78 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %77] : memref<64x12x1x64xf32>
                %79 = vector.broadcast %78 : f32 to vector<8xf32>
                %80 = vector.load %alloc_138[%arg3, %arg4, %77, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_409 = arith.constant 0 : index
                %81 = memref.load %alloca_149[%c0_409] : memref<1xvector<8xf32>>
                %82 = vector.fma %79, %80, %81 : vector<8xf32>
                %c0_410 = arith.constant 0 : index
                memref.store %82, %alloca_149[%c0_410] : memref<1xvector<8xf32>>
                %83 = arith.addi %arg7, %c2 : index
                %84 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %83] : memref<64x12x1x64xf32>
                %85 = vector.broadcast %84 : f32 to vector<8xf32>
                %86 = vector.load %alloc_138[%arg3, %arg4, %83, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_411 = arith.constant 0 : index
                %87 = memref.load %alloca_149[%c0_411] : memref<1xvector<8xf32>>
                %88 = vector.fma %85, %86, %87 : vector<8xf32>
                %c0_412 = arith.constant 0 : index
                memref.store %88, %alloca_149[%c0_412] : memref<1xvector<8xf32>>
                %89 = arith.addi %arg7, %c3 : index
                %90 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %89] : memref<64x12x1x64xf32>
                %91 = vector.broadcast %90 : f32 to vector<8xf32>
                %92 = vector.load %alloc_138[%arg3, %arg4, %89, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_413 = arith.constant 0 : index
                %93 = memref.load %alloca_149[%c0_413] : memref<1xvector<8xf32>>
                %94 = vector.fma %91, %92, %93 : vector<8xf32>
                %c0_414 = arith.constant 0 : index
                memref.store %94, %alloca_149[%c0_414] : memref<1xvector<8xf32>>
                %95 = arith.addi %arg7, %c4 : index
                %96 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %95] : memref<64x12x1x64xf32>
                %97 = vector.broadcast %96 : f32 to vector<8xf32>
                %98 = vector.load %alloc_138[%arg3, %arg4, %95, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_415 = arith.constant 0 : index
                %99 = memref.load %alloca_149[%c0_415] : memref<1xvector<8xf32>>
                %100 = vector.fma %97, %98, %99 : vector<8xf32>
                %c0_416 = arith.constant 0 : index
                memref.store %100, %alloca_149[%c0_416] : memref<1xvector<8xf32>>
                %101 = arith.addi %arg7, %c5 : index
                %102 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %101] : memref<64x12x1x64xf32>
                %103 = vector.broadcast %102 : f32 to vector<8xf32>
                %104 = vector.load %alloc_138[%arg3, %arg4, %101, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_417 = arith.constant 0 : index
                %105 = memref.load %alloca_149[%c0_417] : memref<1xvector<8xf32>>
                %106 = vector.fma %103, %104, %105 : vector<8xf32>
                %c0_418 = arith.constant 0 : index
                memref.store %106, %alloca_149[%c0_418] : memref<1xvector<8xf32>>
                %107 = arith.addi %arg7, %c6 : index
                %108 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %107] : memref<64x12x1x64xf32>
                %109 = vector.broadcast %108 : f32 to vector<8xf32>
                %110 = vector.load %alloc_138[%arg3, %arg4, %107, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_419 = arith.constant 0 : index
                %111 = memref.load %alloca_149[%c0_419] : memref<1xvector<8xf32>>
                %112 = vector.fma %109, %110, %111 : vector<8xf32>
                %c0_420 = arith.constant 0 : index
                memref.store %112, %alloca_149[%c0_420] : memref<1xvector<8xf32>>
                %113 = arith.addi %arg7, %c7 : index
                %114 = memref.load %reinterpret_cast_121[%arg3, %arg4, %70, %113] : memref<64x12x1x64xf32>
                %115 = vector.broadcast %114 : f32 to vector<8xf32>
                %116 = vector.load %alloc_138[%arg3, %arg4, %113, %arg6] : memref<64x12x64x256xf32>, vector<8xf32>
                %c0_421 = arith.constant 0 : index
                %117 = memref.load %alloca_149[%c0_421] : memref<1xvector<8xf32>>
                %118 = vector.fma %115, %116, %117 : vector<8xf32>
                %c0_422 = arith.constant 0 : index
                memref.store %118, %alloca_149[%c0_422] : memref<1xvector<8xf32>>
                %c0_423 = arith.constant 0 : index
                %119 = memref.load %alloca_149[%c0_423] : memref<1xvector<8xf32>>
                vector.store %119, %alloc_142[%arg3, %arg4, %70, %arg6] : memref<64x12x1x256xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    }
    %alloc_150 = memref.alloc() : memref<f32>
    %cast_151 = memref.cast %alloc_150 : memref<f32> to memref<*xf32>
    %40 = llvm.mlir.addressof @constant_27 : !llvm.ptr<array<12 x i8>>
    %41 = llvm.getelementptr %40[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%41, %cast_151) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_152 = memref.alloc() : memref<f32>
    %cast_153 = memref.cast %alloc_152 : memref<f32> to memref<*xf32>
    %42 = llvm.mlir.addressof @constant_28 : !llvm.ptr<array<12 x i8>>
    %43 = llvm.getelementptr %42[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%43, %cast_153) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_154 = memref.alloc() : memref<f32>
    %44 = memref.load %alloc_150[] : memref<f32>
    %45 = memref.load %alloc_152[] : memref<f32>
    %46 = math.powf %44, %45 : f32
    memref.store %46, %alloc_154[] : memref<f32>
    %alloc_155 = memref.alloc() : memref<f32>
    memref.store %cst_1, %alloc_155[] : memref<f32>
    %alloc_156 = memref.alloc() : memref<f32>
    %47 = memref.load %alloc_155[] : memref<f32>
    %48 = memref.load %alloc_154[] : memref<f32>
    %49 = arith.addf %47, %48 : f32
    memref.store %49, %alloc_156[] : memref<f32>
    %alloc_157 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %c0_158 = arith.constant 0 : index
    %c64_159 = arith.constant 64 : index
    %c1_160 = arith.constant 1 : index
    scf.for %arg3 = %c0_158 to %c64_159 step %c1_160 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c256 step %c1_400 {
            %70 = memref.load %alloc_142[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %71 = memref.load %alloc_156[] : memref<f32>
            %72 = arith.divf %70, %71 : f32
            memref.store %72, %alloc_157[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_161 = memref.alloc() : memref<f32>
    %cast_162 = memref.cast %alloc_161 : memref<f32> to memref<*xf32>
    %50 = llvm.mlir.addressof @constant_30 : !llvm.ptr<array<12 x i8>>
    %51 = llvm.getelementptr %50[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%51, %cast_162) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_163 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %c0_164 = arith.constant 0 : index
    %c64_165 = arith.constant 64 : index
    %c1_166 = arith.constant 1 : index
    scf.for %arg3 = %c0_164 to %c64_165 step %c1_166 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c256 step %c1_400 {
            %c0_401 = arith.constant 0 : index
            %c0_402 = arith.constant 0 : index
            %70 = memref.load %alloc_31[%c0_401, %c0_402, %arg5, %arg6] : memref<1x1x1x256xi1>
            %71 = memref.load %alloc_157[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %72 = memref.load %alloc_161[] : memref<f32>
            %73 = arith.select %70, %71, %72 : f32
            memref.store %73, %alloc_163[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_167 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x256xf32>
    %alloc_168 = memref.alloc() : memref<f32>
    %alloc_169 = memref.alloc() : memref<f32>
    %c0_170 = arith.constant 0 : index
    %c64_171 = arith.constant 64 : index
    %c1_172 = arith.constant 1 : index
    scf.for %arg3 = %c0_170 to %c64_171 step %c1_172 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          memref.store %cst_1, %alloc_168[] : memref<f32>
          memref.store %cst_0, %alloc_169[] : memref<f32>
          %c0_399 = arith.constant 0 : index
          %c256 = arith.constant 256 : index
          %c1_400 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c256 step %c1_400 {
            %72 = memref.load %alloc_169[] : memref<f32>
            %73 = memref.load %alloc_163[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %74 = arith.cmpf ogt, %72, %73 : f32
            %75 = arith.select %74, %72, %73 : f32
            memref.store %75, %alloc_169[] : memref<f32>
          }
          %70 = memref.load %alloc_169[] : memref<f32>
          %c0_401 = arith.constant 0 : index
          %c256_402 = arith.constant 256 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c256_402 step %c1_403 {
            %72 = memref.load %alloc_168[] : memref<f32>
            %73 = memref.load %alloc_163[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %74 = arith.subf %73, %70 : f32
            %75 = math.exp %74 : f32
            %76 = arith.addf %72, %75 : f32
            memref.store %76, %alloc_168[] : memref<f32>
            memref.store %75, %alloc_167[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
          %71 = memref.load %alloc_168[] : memref<f32>
          %c0_404 = arith.constant 0 : index
          %c256_405 = arith.constant 256 : index
          %c1_406 = arith.constant 1 : index
          scf.for %arg6 = %c0_404 to %c256_405 step %c1_406 {
            %72 = memref.load %alloc_167[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
            %73 = arith.divf %72, %71 : f32
            memref.store %73, %alloc_167[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x256xf32>
          }
        }
      }
    }
    %alloc_173 = memref.alloc() {alignment = 16 : i64} : memref<64x12x1x64xf32>
    %c0_174 = arith.constant 0 : index
    %c64_175 = arith.constant 64 : index
    %c1_176 = arith.constant 1 : index
    scf.for %arg3 = %c0_174 to %c64_175 step %c1_176 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c64_400 = arith.constant 64 : index
          %c1_401 = arith.constant 1 : index
          scf.for %arg6 = %c0_399 to %c64_400 step %c1_401 {
            memref.store %cst_1, %alloc_173[%arg3, %arg4, %arg5, %arg6] : memref<64x12x1x64xf32>
          }
        }
      }
    }
    %c0_177 = arith.constant 0 : index
    %c64_178 = arith.constant 64 : index
    %c1_179 = arith.constant 1 : index
    %alloca_180 = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    scf.for %arg3 = %c0_177 to %c64_178 step %c1_179 {
      %c0_394 = arith.constant 0 : index
      %c12 = arith.constant 12 : index
      %c1_395 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c12 step %c1_395 {
        %c0_396 = arith.constant 0 : index
        %c1_397 = arith.constant 1 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c1_397 step %c1_398 {
          %c0_399 = arith.constant 0 : index
          %c64_400 = arith.constant 64 : index
          %c8 = arith.constant 8 : index
          scf.for %arg6 = %c0_399 to %c64_400 step %c8 {
            %c0_401 = arith.constant 0 : index
            %c256 = arith.constant 256 : index
            %c8_402 = arith.constant 8 : index
            scf.for %arg7 = %c0_401 to %c256 step %c8_402 {
              %c0_403 = arith.constant 0 : index
              %c1_404 = arith.constant 1 : index
              %c1_405 = arith.constant 1 : index
              scf.for %arg8 = %c0_403 to %c1_404 step %c1_405 {
                %70 = arith.addi %arg8, %arg5 : index
                %71 = vector.load %alloc_173[%arg3, %arg4, %70, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
                %c0_406 = arith.constant 0 : index
                memref.store %71, %alloca_180[%c0_406] : memref<1xvector<8xf32>>
                %72 = memref.load %alloc_167[%arg3, %arg4, %70, %arg7] : memref<64x12x1x256xf32>
                %73 = vector.broadcast %72 : f32 to vector<8xf32>
                %74 = vector.load %alloc_131[%arg3, %arg4, %arg7, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_407 = arith.constant 0 : index
                %75 = memref.load %alloca_180[%c0_407] : memref<1xvector<8xf32>>
                %76 = vector.fma %73, %74, %75 : vector<8xf32>
                %c0_408 = arith.constant 0 : index
                memref.store %76, %alloca_180[%c0_408] : memref<1xvector<8xf32>>
                %77 = arith.addi %arg7, %c1 : index
                %78 = memref.load %alloc_167[%arg3, %arg4, %70, %77] : memref<64x12x1x256xf32>
                %79 = vector.broadcast %78 : f32 to vector<8xf32>
                %80 = vector.load %alloc_131[%arg3, %arg4, %77, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_409 = arith.constant 0 : index
                %81 = memref.load %alloca_180[%c0_409] : memref<1xvector<8xf32>>
                %82 = vector.fma %79, %80, %81 : vector<8xf32>
                %c0_410 = arith.constant 0 : index
                memref.store %82, %alloca_180[%c0_410] : memref<1xvector<8xf32>>
                %83 = arith.addi %arg7, %c2 : index
                %84 = memref.load %alloc_167[%arg3, %arg4, %70, %83] : memref<64x12x1x256xf32>
                %85 = vector.broadcast %84 : f32 to vector<8xf32>
                %86 = vector.load %alloc_131[%arg3, %arg4, %83, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_411 = arith.constant 0 : index
                %87 = memref.load %alloca_180[%c0_411] : memref<1xvector<8xf32>>
                %88 = vector.fma %85, %86, %87 : vector<8xf32>
                %c0_412 = arith.constant 0 : index
                memref.store %88, %alloca_180[%c0_412] : memref<1xvector<8xf32>>
                %89 = arith.addi %arg7, %c3 : index
                %90 = memref.load %alloc_167[%arg3, %arg4, %70, %89] : memref<64x12x1x256xf32>
                %91 = vector.broadcast %90 : f32 to vector<8xf32>
                %92 = vector.load %alloc_131[%arg3, %arg4, %89, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_413 = arith.constant 0 : index
                %93 = memref.load %alloca_180[%c0_413] : memref<1xvector<8xf32>>
                %94 = vector.fma %91, %92, %93 : vector<8xf32>
                %c0_414 = arith.constant 0 : index
                memref.store %94, %alloca_180[%c0_414] : memref<1xvector<8xf32>>
                %95 = arith.addi %arg7, %c4 : index
                %96 = memref.load %alloc_167[%arg3, %arg4, %70, %95] : memref<64x12x1x256xf32>
                %97 = vector.broadcast %96 : f32 to vector<8xf32>
                %98 = vector.load %alloc_131[%arg3, %arg4, %95, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_415 = arith.constant 0 : index
                %99 = memref.load %alloca_180[%c0_415] : memref<1xvector<8xf32>>
                %100 = vector.fma %97, %98, %99 : vector<8xf32>
                %c0_416 = arith.constant 0 : index
                memref.store %100, %alloca_180[%c0_416] : memref<1xvector<8xf32>>
                %101 = arith.addi %arg7, %c5 : index
                %102 = memref.load %alloc_167[%arg3, %arg4, %70, %101] : memref<64x12x1x256xf32>
                %103 = vector.broadcast %102 : f32 to vector<8xf32>
                %104 = vector.load %alloc_131[%arg3, %arg4, %101, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_417 = arith.constant 0 : index
                %105 = memref.load %alloca_180[%c0_417] : memref<1xvector<8xf32>>
                %106 = vector.fma %103, %104, %105 : vector<8xf32>
                %c0_418 = arith.constant 0 : index
                memref.store %106, %alloca_180[%c0_418] : memref<1xvector<8xf32>>
                %107 = arith.addi %arg7, %c6 : index
                %108 = memref.load %alloc_167[%arg3, %arg4, %70, %107] : memref<64x12x1x256xf32>
                %109 = vector.broadcast %108 : f32 to vector<8xf32>
                %110 = vector.load %alloc_131[%arg3, %arg4, %107, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_419 = arith.constant 0 : index
                %111 = memref.load %alloca_180[%c0_419] : memref<1xvector<8xf32>>
                %112 = vector.fma %109, %110, %111 : vector<8xf32>
                %c0_420 = arith.constant 0 : index
                memref.store %112, %alloca_180[%c0_420] : memref<1xvector<8xf32>>
                %113 = arith.addi %arg7, %c7 : index
                %114 = memref.load %alloc_167[%arg3, %arg4, %70, %113] : memref<64x12x1x256xf32>
                %115 = vector.broadcast %114 : f32 to vector<8xf32>
                %116 = vector.load %alloc_131[%arg3, %arg4, %113, %arg6] : memref<64x12x256x64xf32>, vector<8xf32>
                %c0_421 = arith.constant 0 : index
                %117 = memref.load %alloca_180[%c0_421] : memref<1xvector<8xf32>>
                %118 = vector.fma %115, %116, %117 : vector<8xf32>
                %c0_422 = arith.constant 0 : index
                memref.store %118, %alloca_180[%c0_422] : memref<1xvector<8xf32>>
                %c0_423 = arith.constant 0 : index
                %119 = memref.load %alloca_180[%c0_423] : memref<1xvector<8xf32>>
                vector.store %119, %alloc_173[%arg3, %arg4, %70, %arg6] : memref<64x12x1x64xf32>, vector<8xf32>
              }
            }
          }
        }
      }
    }
    %reinterpret_cast_181 = memref.reinterpret_cast %alloc_173 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x12x1x64xf32> to memref<64x768xf32>
    %alloc_182 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    %c0_183 = arith.constant 0 : index
    %c64_184 = arith.constant 64 : index
    %c1_185 = arith.constant 1 : index
    scf.for %arg3 = %c0_183 to %c64_184 step %c1_185 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c1_396 {
        memref.store %cst_1, %alloc_182[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_186 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_187 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_188 = arith.constant 0 : index
    %c768 = arith.constant 768 : index
    %c64_189 = arith.constant 64 : index
    %alloca_190 = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_188 to %c768 step %c64_189 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c256 {
        %c0_396 = arith.constant 0 : index
        %c256_397 = arith.constant 256 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c256_397 step %c1_398 {
          %c0_401 = arith.constant 0 : index
          %c64_402 = arith.constant 64 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c64_402 step %c1_403 {
            %70 = arith.addi %arg4, %arg5 : index
            %71 = arith.addi %arg3, %arg6 : index
            %72 = memref.load %alloc_11[%70, %71] : memref<768x768xf32>
            memref.store %72, %alloc_187[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_399 = arith.constant 0 : index
        %c64_400 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_399 to %c64_400 step %c32 {
          %c0_401 = arith.constant 0 : index
          %c32_402 = arith.constant 32 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c32_402 step %c1_403 {
            %c0_405 = arith.constant 0 : index
            %c256_406 = arith.constant 256 : index
            %c1_407 = arith.constant 1 : index
            scf.for %arg7 = %c0_405 to %c256_406 step %c1_407 {
              %71 = arith.addi %arg5, %arg6 : index
              %72 = arith.addi %arg4, %arg7 : index
              %73 = memref.load %reinterpret_cast_181[%71, %72] : memref<64x768xf32>
              memref.store %73, %alloc_186[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_404 = arith.constant 64 : index
          %70 = arith.addi %arg3, %c64_404 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %70 step %c16 {
            %c32_405 = arith.constant 32 : index
            %71 = arith.addi %arg5, %c32_405 : index
            %c4_406 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %71 step %c4_406 {
              %c-1 = arith.constant -1 : index
              %72 = arith.muli %arg5, %c-1 : index
              %73 = arith.addi %72, %arg7 : index
              %c-1_407 = arith.constant -1 : index
              %74 = arith.muli %arg3, %c-1_407 : index
              %75 = arith.addi %74, %arg6 : index
              %76 = vector.load %alloc_182[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c0_408 = arith.constant 0 : index
              memref.store %76, %alloca_190[%c0_408] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_182[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_409 = arith.constant 1 : index
              memref.store %78, %alloca_190[%c1_409] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_182[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_410 = arith.constant 2 : index
              memref.store %80, %alloca_190[%c2_410] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_182[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_411 = arith.constant 3 : index
              memref.store %82, %alloca_190[%c3_411] : memref<4xvector<16xf32>>
              %c0_412 = arith.constant 0 : index
              %c256_413 = arith.constant 256 : index
              %c4_414 = arith.constant 4 : index
              scf.for %arg8 = %c0_412 to %c256_413 step %c4_414 {
                %87 = memref.load %alloc_186[%73, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_187[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_419 = arith.constant 0 : index
                %90 = memref.load %alloca_190[%c0_419] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                %c0_420 = arith.constant 0 : index
                memref.store %91, %alloca_190[%c0_420] : memref<4xvector<16xf32>>
                %c1_421 = arith.constant 1 : index
                %92 = arith.addi %arg8, %c1_421 : index
                %93 = memref.load %alloc_186[%73, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_187[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_422 = arith.constant 0 : index
                %96 = memref.load %alloca_190[%c0_422] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                %c0_423 = arith.constant 0 : index
                memref.store %97, %alloca_190[%c0_423] : memref<4xvector<16xf32>>
                %c2_424 = arith.constant 2 : index
                %98 = arith.addi %arg8, %c2_424 : index
                %99 = memref.load %alloc_186[%73, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_187[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_425 = arith.constant 0 : index
                %102 = memref.load %alloca_190[%c0_425] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                %c0_426 = arith.constant 0 : index
                memref.store %103, %alloca_190[%c0_426] : memref<4xvector<16xf32>>
                %c3_427 = arith.constant 3 : index
                %104 = arith.addi %arg8, %c3_427 : index
                %105 = memref.load %alloc_186[%73, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_187[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_428 = arith.constant 0 : index
                %108 = memref.load %alloca_190[%c0_428] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                %c0_429 = arith.constant 0 : index
                memref.store %109, %alloca_190[%c0_429] : memref<4xvector<16xf32>>
                %110 = arith.addi %73, %c1 : index
                %111 = memref.load %alloc_186[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_187[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_430 = arith.constant 1 : index
                %114 = memref.load %alloca_190[%c1_430] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                %c1_431 = arith.constant 1 : index
                memref.store %115, %alloca_190[%c1_431] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_186[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_187[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_432 = arith.constant 1 : index
                %119 = memref.load %alloca_190[%c1_432] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                %c1_433 = arith.constant 1 : index
                memref.store %120, %alloca_190[%c1_433] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_186[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_187[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_434 = arith.constant 1 : index
                %124 = memref.load %alloca_190[%c1_434] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                %c1_435 = arith.constant 1 : index
                memref.store %125, %alloca_190[%c1_435] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_186[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_187[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_436 = arith.constant 1 : index
                %129 = memref.load %alloca_190[%c1_436] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                %c1_437 = arith.constant 1 : index
                memref.store %130, %alloca_190[%c1_437] : memref<4xvector<16xf32>>
                %131 = arith.addi %73, %c2 : index
                %132 = memref.load %alloc_186[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_187[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_438 = arith.constant 2 : index
                %135 = memref.load %alloca_190[%c2_438] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                %c2_439 = arith.constant 2 : index
                memref.store %136, %alloca_190[%c2_439] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_186[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_187[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_440 = arith.constant 2 : index
                %140 = memref.load %alloca_190[%c2_440] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                %c2_441 = arith.constant 2 : index
                memref.store %141, %alloca_190[%c2_441] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_186[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_187[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_442 = arith.constant 2 : index
                %145 = memref.load %alloca_190[%c2_442] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                %c2_443 = arith.constant 2 : index
                memref.store %146, %alloca_190[%c2_443] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_186[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_187[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_444 = arith.constant 2 : index
                %150 = memref.load %alloca_190[%c2_444] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                %c2_445 = arith.constant 2 : index
                memref.store %151, %alloca_190[%c2_445] : memref<4xvector<16xf32>>
                %152 = arith.addi %73, %c3 : index
                %153 = memref.load %alloc_186[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_187[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_446 = arith.constant 3 : index
                %156 = memref.load %alloca_190[%c3_446] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                %c3_447 = arith.constant 3 : index
                memref.store %157, %alloca_190[%c3_447] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_186[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_187[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_448 = arith.constant 3 : index
                %161 = memref.load %alloca_190[%c3_448] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c3_449 = arith.constant 3 : index
                memref.store %162, %alloca_190[%c3_449] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_186[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_187[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_450 = arith.constant 3 : index
                %166 = memref.load %alloca_190[%c3_450] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c3_451 = arith.constant 3 : index
                memref.store %167, %alloca_190[%c3_451] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_186[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_187[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_452 = arith.constant 3 : index
                %171 = memref.load %alloca_190[%c3_452] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c3_453 = arith.constant 3 : index
                memref.store %172, %alloca_190[%c3_453] : memref<4xvector<16xf32>>
              }
              %c0_415 = arith.constant 0 : index
              %83 = memref.load %alloca_190[%c0_415] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_182[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_416 = arith.constant 1 : index
              %84 = memref.load %alloca_190[%c1_416] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_182[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_417 = arith.constant 2 : index
              %85 = memref.load %alloca_190[%c2_417] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_182[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_418 = arith.constant 3 : index
              %86 = memref.load %alloca_190[%c3_418] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_182[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_191 = arith.constant 0 : index
    %c64_192 = arith.constant 64 : index
    %c1_193 = arith.constant 1 : index
    scf.for %arg3 = %c0_191 to %c64_192 step %c1_193 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c1_396 {
        %70 = memref.load %alloc_182[%arg3, %arg4] : memref<64x768xf32>
        %71 = memref.load %alloc_13[%arg4] : memref<768xf32>
        %72 = arith.addf %70, %71 : f32
        memref.store %72, %alloc_182[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_194 = memref.reinterpret_cast %alloc_182 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_195 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_196 = arith.constant 0 : index
    %c64_197 = arith.constant 64 : index
    %c1_198 = arith.constant 1 : index
    scf.for %arg3 = %c0_196 to %c64_197 step %c1_198 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %reinterpret_cast_194[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_35[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_195[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_199 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_200 = arith.constant 0 : index
    %c64_201 = arith.constant 64 : index
    %c1_202 = arith.constant 1 : index
    scf.for %arg3 = %c0_200 to %c64_201 step %c1_202 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_195[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_38[%c0_400, %arg4, %arg5] : memref<1x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_199[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_203 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_204 = arith.constant 0 : index
    %c64_205 = arith.constant 64 : index
    %c1_206 = arith.constant 1 : index
    scf.for %arg3 = %c0_204 to %c64_205 step %c1_206 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          memref.store %cst_1, %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_207 = arith.constant 0 : index
    %c64_208 = arith.constant 64 : index
    %c1_209 = arith.constant 1 : index
    scf.for %arg3 = %c0_207 to %c64_208 step %c1_209 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_199[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_203[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          %c0_401 = arith.constant 0 : index
          memref.store %72, %alloc_203[%arg3, %arg4, %c0_401] : memref<64x1x1xf32>
        }
      }
    }
    %c0_210 = arith.constant 0 : index
    %c64_211 = arith.constant 64 : index
    %c1_212 = arith.constant 1 : index
    scf.for %arg3 = %c0_210 to %c64_211 step %c1_212 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          memref.store %71, %alloc_203[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_213 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_214 = arith.constant 0 : index
    %c64_215 = arith.constant 64 : index
    %c1_216 = arith.constant 1 : index
    scf.for %arg3 = %c0_214 to %c64_215 step %c1_216 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_199[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_203[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.subf %70, %71 : f32
          memref.store %72, %alloc_213[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_217 = memref.alloc() : memref<f32>
    %cast_218 = memref.cast %alloc_217 : memref<f32> to memref<*xf32>
    %52 = llvm.mlir.addressof @constant_33 : !llvm.ptr<array<12 x i8>>
    %53 = llvm.getelementptr %52[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%53, %cast_218) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_219 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_220 = arith.constant 0 : index
    %c64_221 = arith.constant 64 : index
    %c1_222 = arith.constant 1 : index
    scf.for %arg3 = %c0_220 to %c64_221 step %c1_222 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_213[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_217[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          memref.store %72, %alloc_219[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_223 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_224 = arith.constant 0 : index
    %c64_225 = arith.constant 64 : index
    %c1_226 = arith.constant 1 : index
    scf.for %arg3 = %c0_224 to %c64_225 step %c1_226 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          memref.store %cst_1, %alloc_223[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_227 = arith.constant 0 : index
    %c64_228 = arith.constant 64 : index
    %c1_229 = arith.constant 1 : index
    scf.for %arg3 = %c0_227 to %c64_228 step %c1_229 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_219[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_223[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          %c0_401 = arith.constant 0 : index
          memref.store %72, %alloc_223[%arg3, %arg4, %c0_401] : memref<64x1x1xf32>
        }
      }
    }
    %c0_230 = arith.constant 0 : index
    %c64_231 = arith.constant 64 : index
    %c1_232 = arith.constant 1 : index
    scf.for %arg3 = %c0_230 to %c64_231 step %c1_232 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_223[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          memref.store %71, %alloc_223[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_233 = memref.alloc() : memref<f32>
    %cast_234 = memref.cast %alloc_233 : memref<f32> to memref<*xf32>
    %54 = llvm.mlir.addressof @constant_34 : !llvm.ptr<array<12 x i8>>
    %55 = llvm.getelementptr %54[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%55, %cast_234) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_235 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_236 = arith.constant 0 : index
    %c64_237 = arith.constant 64 : index
    %c1_238 = arith.constant 1 : index
    scf.for %arg3 = %c0_236 to %c64_237 step %c1_238 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_223[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = memref.load %alloc_233[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_235[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_239 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_240 = arith.constant 0 : index
    %c64_241 = arith.constant 64 : index
    %c1_242 = arith.constant 1 : index
    scf.for %arg3 = %c0_240 to %c64_241 step %c1_242 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_235[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = math.sqrt %70 : f32
          memref.store %71, %alloc_239[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_243 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_244 = arith.constant 0 : index
    %c64_245 = arith.constant 64 : index
    %c1_246 = arith.constant 1 : index
    scf.for %arg3 = %c0_244 to %c64_245 step %c1_246 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_213[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_239[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.divf %70, %71 : f32
          memref.store %72, %alloc_243[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_247 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_248 = arith.constant 0 : index
    %c64_249 = arith.constant 64 : index
    %c1_250 = arith.constant 1 : index
    scf.for %arg3 = %c0_248 to %c64_249 step %c1_250 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_243[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_15[%arg5] : memref<768xf32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_251 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_252 = arith.constant 0 : index
    %c64_253 = arith.constant 64 : index
    %c1_254 = arith.constant 1 : index
    scf.for %arg3 = %c0_252 to %c64_253 step %c1_254 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_247[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_17[%arg5] : memref<768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_251[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %reinterpret_cast_255 = memref.reinterpret_cast %alloc_251 to offset: [0], sizes: [64, 768], strides: [768, 1] : memref<64x1x768xf32> to memref<64x768xf32>
    %alloc_256 = memref.alloc() {alignment = 128 : i64} : memref<64x3072xf32>
    %c0_257 = arith.constant 0 : index
    %c64_258 = arith.constant 64 : index
    %c1_259 = arith.constant 1 : index
    scf.for %arg3 = %c0_257 to %c64_258 step %c1_259 {
      %c0_394 = arith.constant 0 : index
      %c3072_395 = arith.constant 3072 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c3072_395 step %c1_396 {
        memref.store %cst_1, %alloc_256[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %alloc_260 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_261 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_262 = arith.constant 0 : index
    %c3072 = arith.constant 3072 : index
    %c64_263 = arith.constant 64 : index
    %alloca_264 = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_262 to %c3072 step %c64_263 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c256 {
        %c0_396 = arith.constant 0 : index
        %c256_397 = arith.constant 256 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c256_397 step %c1_398 {
          %c0_401 = arith.constant 0 : index
          %c64_402 = arith.constant 64 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c64_402 step %c1_403 {
            %70 = arith.addi %arg4, %arg5 : index
            %71 = arith.addi %arg3, %arg6 : index
            %72 = memref.load %alloc_19[%70, %71] : memref<768x3072xf32>
            memref.store %72, %alloc_261[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_399 = arith.constant 0 : index
        %c64_400 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_399 to %c64_400 step %c32 {
          %c0_401 = arith.constant 0 : index
          %c32_402 = arith.constant 32 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c32_402 step %c1_403 {
            %c0_405 = arith.constant 0 : index
            %c256_406 = arith.constant 256 : index
            %c1_407 = arith.constant 1 : index
            scf.for %arg7 = %c0_405 to %c256_406 step %c1_407 {
              %71 = arith.addi %arg5, %arg6 : index
              %72 = arith.addi %arg4, %arg7 : index
              %73 = memref.load %reinterpret_cast_255[%71, %72] : memref<64x768xf32>
              memref.store %73, %alloc_260[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_404 = arith.constant 64 : index
          %70 = arith.addi %arg3, %c64_404 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %70 step %c16 {
            %c32_405 = arith.constant 32 : index
            %71 = arith.addi %arg5, %c32_405 : index
            %c4_406 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %71 step %c4_406 {
              %c-1 = arith.constant -1 : index
              %72 = arith.muli %arg5, %c-1 : index
              %73 = arith.addi %72, %arg7 : index
              %c-1_407 = arith.constant -1 : index
              %74 = arith.muli %arg3, %c-1_407 : index
              %75 = arith.addi %74, %arg6 : index
              %76 = vector.load %alloc_256[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c0_408 = arith.constant 0 : index
              memref.store %76, %alloca_264[%c0_408] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_256[%77, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c1_409 = arith.constant 1 : index
              memref.store %78, %alloca_264[%c1_409] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_256[%79, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c2_410 = arith.constant 2 : index
              memref.store %80, %alloca_264[%c2_410] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_256[%81, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c3_411 = arith.constant 3 : index
              memref.store %82, %alloca_264[%c3_411] : memref<4xvector<16xf32>>
              %c0_412 = arith.constant 0 : index
              %c256_413 = arith.constant 256 : index
              %c4_414 = arith.constant 4 : index
              scf.for %arg8 = %c0_412 to %c256_413 step %c4_414 {
                %87 = memref.load %alloc_260[%73, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_261[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_419 = arith.constant 0 : index
                %90 = memref.load %alloca_264[%c0_419] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                %c0_420 = arith.constant 0 : index
                memref.store %91, %alloca_264[%c0_420] : memref<4xvector<16xf32>>
                %c1_421 = arith.constant 1 : index
                %92 = arith.addi %arg8, %c1_421 : index
                %93 = memref.load %alloc_260[%73, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_261[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_422 = arith.constant 0 : index
                %96 = memref.load %alloca_264[%c0_422] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                %c0_423 = arith.constant 0 : index
                memref.store %97, %alloca_264[%c0_423] : memref<4xvector<16xf32>>
                %c2_424 = arith.constant 2 : index
                %98 = arith.addi %arg8, %c2_424 : index
                %99 = memref.load %alloc_260[%73, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_261[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_425 = arith.constant 0 : index
                %102 = memref.load %alloca_264[%c0_425] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                %c0_426 = arith.constant 0 : index
                memref.store %103, %alloca_264[%c0_426] : memref<4xvector<16xf32>>
                %c3_427 = arith.constant 3 : index
                %104 = arith.addi %arg8, %c3_427 : index
                %105 = memref.load %alloc_260[%73, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_261[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_428 = arith.constant 0 : index
                %108 = memref.load %alloca_264[%c0_428] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                %c0_429 = arith.constant 0 : index
                memref.store %109, %alloca_264[%c0_429] : memref<4xvector<16xf32>>
                %110 = arith.addi %73, %c1 : index
                %111 = memref.load %alloc_260[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_261[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_430 = arith.constant 1 : index
                %114 = memref.load %alloca_264[%c1_430] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                %c1_431 = arith.constant 1 : index
                memref.store %115, %alloca_264[%c1_431] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_260[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_261[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_432 = arith.constant 1 : index
                %119 = memref.load %alloca_264[%c1_432] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                %c1_433 = arith.constant 1 : index
                memref.store %120, %alloca_264[%c1_433] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_260[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_261[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_434 = arith.constant 1 : index
                %124 = memref.load %alloca_264[%c1_434] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                %c1_435 = arith.constant 1 : index
                memref.store %125, %alloca_264[%c1_435] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_260[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_261[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_436 = arith.constant 1 : index
                %129 = memref.load %alloca_264[%c1_436] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                %c1_437 = arith.constant 1 : index
                memref.store %130, %alloca_264[%c1_437] : memref<4xvector<16xf32>>
                %131 = arith.addi %73, %c2 : index
                %132 = memref.load %alloc_260[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_261[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_438 = arith.constant 2 : index
                %135 = memref.load %alloca_264[%c2_438] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                %c2_439 = arith.constant 2 : index
                memref.store %136, %alloca_264[%c2_439] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_260[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_261[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_440 = arith.constant 2 : index
                %140 = memref.load %alloca_264[%c2_440] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                %c2_441 = arith.constant 2 : index
                memref.store %141, %alloca_264[%c2_441] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_260[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_261[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_442 = arith.constant 2 : index
                %145 = memref.load %alloca_264[%c2_442] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                %c2_443 = arith.constant 2 : index
                memref.store %146, %alloca_264[%c2_443] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_260[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_261[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_444 = arith.constant 2 : index
                %150 = memref.load %alloca_264[%c2_444] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                %c2_445 = arith.constant 2 : index
                memref.store %151, %alloca_264[%c2_445] : memref<4xvector<16xf32>>
                %152 = arith.addi %73, %c3 : index
                %153 = memref.load %alloc_260[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_261[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_446 = arith.constant 3 : index
                %156 = memref.load %alloca_264[%c3_446] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                %c3_447 = arith.constant 3 : index
                memref.store %157, %alloca_264[%c3_447] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_260[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_261[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_448 = arith.constant 3 : index
                %161 = memref.load %alloca_264[%c3_448] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c3_449 = arith.constant 3 : index
                memref.store %162, %alloca_264[%c3_449] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_260[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_261[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_450 = arith.constant 3 : index
                %166 = memref.load %alloca_264[%c3_450] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c3_451 = arith.constant 3 : index
                memref.store %167, %alloca_264[%c3_451] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_260[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_261[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_452 = arith.constant 3 : index
                %171 = memref.load %alloca_264[%c3_452] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c3_453 = arith.constant 3 : index
                memref.store %172, %alloca_264[%c3_453] : memref<4xvector<16xf32>>
              }
              %c0_415 = arith.constant 0 : index
              %83 = memref.load %alloca_264[%c0_415] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_256[%arg7, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c1_416 = arith.constant 1 : index
              %84 = memref.load %alloca_264[%c1_416] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_256[%77, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c2_417 = arith.constant 2 : index
              %85 = memref.load %alloca_264[%c2_417] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_256[%79, %arg6] : memref<64x3072xf32>, vector<16xf32>
              %c3_418 = arith.constant 3 : index
              %86 = memref.load %alloca_264[%c3_418] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_256[%81, %arg6] : memref<64x3072xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_265 = arith.constant 0 : index
    %c64_266 = arith.constant 64 : index
    %c1_267 = arith.constant 1 : index
    scf.for %arg3 = %c0_265 to %c64_266 step %c1_267 {
      %c0_394 = arith.constant 0 : index
      %c3072_395 = arith.constant 3072 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c3072_395 step %c1_396 {
        %70 = memref.load %alloc_256[%arg3, %arg4] : memref<64x3072xf32>
        %71 = memref.load %alloc_21[%arg4] : memref<3072xf32>
        %72 = arith.addf %70, %71 : f32
        memref.store %72, %alloc_256[%arg3, %arg4] : memref<64x3072xf32>
      }
    }
    %reinterpret_cast_268 = memref.reinterpret_cast %alloc_256 to offset: [0], sizes: [64, 1, 3072], strides: [3072, 3072, 1] : memref<64x3072xf32> to memref<64x1x3072xf32>
    %alloc_269 = memref.alloc() : memref<f32>
    %cast_270 = memref.cast %alloc_269 : memref<f32> to memref<*xf32>
    %56 = llvm.mlir.addressof @constant_37 : !llvm.ptr<array<12 x i8>>
    %57 = llvm.getelementptr %56[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%57, %cast_270) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_271 = memref.alloc() : memref<f32>
    %cast_272 = memref.cast %alloc_271 : memref<f32> to memref<*xf32>
    %58 = llvm.mlir.addressof @constant_38 : !llvm.ptr<array<12 x i8>>
    %59 = llvm.getelementptr %58[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%59, %cast_272) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_273 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_274 = arith.constant 0 : index
    %c64_275 = arith.constant 64 : index
    %c1_276 = arith.constant 1 : index
    scf.for %arg3 = %c0_274 to %c64_275 step %c1_276 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %reinterpret_cast_268[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_271[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          memref.store %72, %alloc_273[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_277 = memref.alloc() : memref<f32>
    %cast_278 = memref.cast %alloc_277 : memref<f32> to memref<*xf32>
    %60 = llvm.mlir.addressof @constant_39 : !llvm.ptr<array<12 x i8>>
    %61 = llvm.getelementptr %60[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%61, %cast_278) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_279 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_280 = arith.constant 0 : index
    %c64_281 = arith.constant 64 : index
    %c1_282 = arith.constant 1 : index
    scf.for %arg3 = %c0_280 to %c64_281 step %c1_282 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %alloc_273[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_277[] : memref<f32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_279[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_283 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_284 = arith.constant 0 : index
    %c64_285 = arith.constant 64 : index
    %c1_286 = arith.constant 1 : index
    scf.for %arg3 = %c0_284 to %c64_285 step %c1_286 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %reinterpret_cast_268[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_279[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_283[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_287 = memref.alloc() : memref<f32>
    %cast_288 = memref.cast %alloc_287 : memref<f32> to memref<*xf32>
    %62 = llvm.mlir.addressof @constant_40 : !llvm.ptr<array<12 x i8>>
    %63 = llvm.getelementptr %62[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%63, %cast_288) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_289 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_290 = arith.constant 0 : index
    %c64_291 = arith.constant 64 : index
    %c1_292 = arith.constant 1 : index
    scf.for %arg3 = %c0_290 to %c64_291 step %c1_292 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %alloc_283[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_287[] : memref<f32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_289[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_293 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_294 = arith.constant 0 : index
    %c64_295 = arith.constant 64 : index
    %c1_296 = arith.constant 1 : index
    scf.for %arg3 = %c0_294 to %c64_295 step %c1_296 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %alloc_289[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = math.tanh %70 : f32
          memref.store %71, %alloc_293[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_297 = memref.alloc() : memref<f32>
    %cast_298 = memref.cast %alloc_297 : memref<f32> to memref<*xf32>
    %64 = llvm.mlir.addressof @constant_41 : !llvm.ptr<array<12 x i8>>
    %65 = llvm.getelementptr %64[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%65, %cast_298) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_299 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_300 = arith.constant 0 : index
    %c64_301 = arith.constant 64 : index
    %c1_302 = arith.constant 1 : index
    scf.for %arg3 = %c0_300 to %c64_301 step %c1_302 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %alloc_293[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_297[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_299[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_303 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_304 = arith.constant 0 : index
    %c64_305 = arith.constant 64 : index
    %c1_306 = arith.constant 1 : index
    scf.for %arg3 = %c0_304 to %c64_305 step %c1_306 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %reinterpret_cast_268[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_299[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_303[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %alloc_307 = memref.alloc() {alignment = 16 : i64} : memref<64x1x3072xf32>
    %c0_308 = arith.constant 0 : index
    %c64_309 = arith.constant 64 : index
    %c1_310 = arith.constant 1 : index
    scf.for %arg3 = %c0_308 to %c64_309 step %c1_310 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c3072_398 = arith.constant 3072 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c3072_398 step %c1_399 {
          %70 = memref.load %alloc_303[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
          %71 = memref.load %alloc_269[] : memref<f32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_307[%arg3, %arg4, %arg5] : memref<64x1x3072xf32>
        }
      }
    }
    %reinterpret_cast_311 = memref.reinterpret_cast %alloc_307 to offset: [0], sizes: [64, 3072], strides: [3072, 1] : memref<64x1x3072xf32> to memref<64x3072xf32>
    %alloc_312 = memref.alloc() {alignment = 128 : i64} : memref<64x768xf32>
    %c0_313 = arith.constant 0 : index
    %c64_314 = arith.constant 64 : index
    %c1_315 = arith.constant 1 : index
    scf.for %arg3 = %c0_313 to %c64_314 step %c1_315 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c1_396 {
        memref.store %cst_1, %alloc_312[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %alloc_316 = memref.alloc() {alignment = 128 : i64} : memref<32x256xf32>
    %alloc_317 = memref.alloc() {alignment = 128 : i64} : memref<256x64xf32>
    %c0_318 = arith.constant 0 : index
    %c768_319 = arith.constant 768 : index
    %c64_320 = arith.constant 64 : index
    %alloca_321 = memref.alloca() {alignment = 64 : i64} : memref<4xvector<16xf32>>
    scf.for %arg3 = %c0_318 to %c768_319 step %c64_320 {
      %c0_394 = arith.constant 0 : index
      %c3072_395 = arith.constant 3072 : index
      %c256 = arith.constant 256 : index
      scf.for %arg4 = %c0_394 to %c3072_395 step %c256 {
        %c0_396 = arith.constant 0 : index
        %c256_397 = arith.constant 256 : index
        %c1_398 = arith.constant 1 : index
        scf.for %arg5 = %c0_396 to %c256_397 step %c1_398 {
          %c0_401 = arith.constant 0 : index
          %c64_402 = arith.constant 64 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c64_402 step %c1_403 {
            %70 = arith.addi %arg4, %arg5 : index
            %71 = arith.addi %arg3, %arg6 : index
            %72 = memref.load %alloc_23[%70, %71] : memref<3072x768xf32>
            memref.store %72, %alloc_317[%arg5, %arg6] : memref<256x64xf32>
          }
        }
        %c0_399 = arith.constant 0 : index
        %c64_400 = arith.constant 64 : index
        %c32 = arith.constant 32 : index
        scf.for %arg5 = %c0_399 to %c64_400 step %c32 {
          %c0_401 = arith.constant 0 : index
          %c32_402 = arith.constant 32 : index
          %c1_403 = arith.constant 1 : index
          scf.for %arg6 = %c0_401 to %c32_402 step %c1_403 {
            %c0_405 = arith.constant 0 : index
            %c256_406 = arith.constant 256 : index
            %c1_407 = arith.constant 1 : index
            scf.for %arg7 = %c0_405 to %c256_406 step %c1_407 {
              %71 = arith.addi %arg5, %arg6 : index
              %72 = arith.addi %arg4, %arg7 : index
              %73 = memref.load %reinterpret_cast_311[%71, %72] : memref<64x3072xf32>
              memref.store %73, %alloc_316[%arg6, %arg7] : memref<32x256xf32>
            }
          }
          %c64_404 = arith.constant 64 : index
          %70 = arith.addi %arg3, %c64_404 : index
          %c16 = arith.constant 16 : index
          scf.for %arg6 = %arg3 to %70 step %c16 {
            %c32_405 = arith.constant 32 : index
            %71 = arith.addi %arg5, %c32_405 : index
            %c4_406 = arith.constant 4 : index
            scf.for %arg7 = %arg5 to %71 step %c4_406 {
              %c-1 = arith.constant -1 : index
              %72 = arith.muli %arg5, %c-1 : index
              %73 = arith.addi %72, %arg7 : index
              %c-1_407 = arith.constant -1 : index
              %74 = arith.muli %arg3, %c-1_407 : index
              %75 = arith.addi %74, %arg6 : index
              %76 = vector.load %alloc_312[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c0_408 = arith.constant 0 : index
              memref.store %76, %alloca_321[%c0_408] : memref<4xvector<16xf32>>
              %77 = arith.addi %arg7, %c1 : index
              %78 = vector.load %alloc_312[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_409 = arith.constant 1 : index
              memref.store %78, %alloca_321[%c1_409] : memref<4xvector<16xf32>>
              %79 = arith.addi %arg7, %c2 : index
              %80 = vector.load %alloc_312[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_410 = arith.constant 2 : index
              memref.store %80, %alloca_321[%c2_410] : memref<4xvector<16xf32>>
              %81 = arith.addi %arg7, %c3 : index
              %82 = vector.load %alloc_312[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_411 = arith.constant 3 : index
              memref.store %82, %alloca_321[%c3_411] : memref<4xvector<16xf32>>
              %c0_412 = arith.constant 0 : index
              %c256_413 = arith.constant 256 : index
              %c4_414 = arith.constant 4 : index
              scf.for %arg8 = %c0_412 to %c256_413 step %c4_414 {
                %87 = memref.load %alloc_316[%73, %arg8] : memref<32x256xf32>
                %88 = vector.broadcast %87 : f32 to vector<16xf32>
                %89 = vector.load %alloc_317[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_419 = arith.constant 0 : index
                %90 = memref.load %alloca_321[%c0_419] : memref<4xvector<16xf32>>
                %91 = vector.fma %88, %89, %90 : vector<16xf32>
                %c0_420 = arith.constant 0 : index
                memref.store %91, %alloca_321[%c0_420] : memref<4xvector<16xf32>>
                %c1_421 = arith.constant 1 : index
                %92 = arith.addi %arg8, %c1_421 : index
                %93 = memref.load %alloc_316[%73, %92] : memref<32x256xf32>
                %94 = vector.broadcast %93 : f32 to vector<16xf32>
                %95 = vector.load %alloc_317[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_422 = arith.constant 0 : index
                %96 = memref.load %alloca_321[%c0_422] : memref<4xvector<16xf32>>
                %97 = vector.fma %94, %95, %96 : vector<16xf32>
                %c0_423 = arith.constant 0 : index
                memref.store %97, %alloca_321[%c0_423] : memref<4xvector<16xf32>>
                %c2_424 = arith.constant 2 : index
                %98 = arith.addi %arg8, %c2_424 : index
                %99 = memref.load %alloc_316[%73, %98] : memref<32x256xf32>
                %100 = vector.broadcast %99 : f32 to vector<16xf32>
                %101 = vector.load %alloc_317[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_425 = arith.constant 0 : index
                %102 = memref.load %alloca_321[%c0_425] : memref<4xvector<16xf32>>
                %103 = vector.fma %100, %101, %102 : vector<16xf32>
                %c0_426 = arith.constant 0 : index
                memref.store %103, %alloca_321[%c0_426] : memref<4xvector<16xf32>>
                %c3_427 = arith.constant 3 : index
                %104 = arith.addi %arg8, %c3_427 : index
                %105 = memref.load %alloc_316[%73, %104] : memref<32x256xf32>
                %106 = vector.broadcast %105 : f32 to vector<16xf32>
                %107 = vector.load %alloc_317[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c0_428 = arith.constant 0 : index
                %108 = memref.load %alloca_321[%c0_428] : memref<4xvector<16xf32>>
                %109 = vector.fma %106, %107, %108 : vector<16xf32>
                %c0_429 = arith.constant 0 : index
                memref.store %109, %alloca_321[%c0_429] : memref<4xvector<16xf32>>
                %110 = arith.addi %73, %c1 : index
                %111 = memref.load %alloc_316[%110, %arg8] : memref<32x256xf32>
                %112 = vector.broadcast %111 : f32 to vector<16xf32>
                %113 = vector.load %alloc_317[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_430 = arith.constant 1 : index
                %114 = memref.load %alloca_321[%c1_430] : memref<4xvector<16xf32>>
                %115 = vector.fma %112, %113, %114 : vector<16xf32>
                %c1_431 = arith.constant 1 : index
                memref.store %115, %alloca_321[%c1_431] : memref<4xvector<16xf32>>
                %116 = memref.load %alloc_316[%110, %92] : memref<32x256xf32>
                %117 = vector.broadcast %116 : f32 to vector<16xf32>
                %118 = vector.load %alloc_317[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_432 = arith.constant 1 : index
                %119 = memref.load %alloca_321[%c1_432] : memref<4xvector<16xf32>>
                %120 = vector.fma %117, %118, %119 : vector<16xf32>
                %c1_433 = arith.constant 1 : index
                memref.store %120, %alloca_321[%c1_433] : memref<4xvector<16xf32>>
                %121 = memref.load %alloc_316[%110, %98] : memref<32x256xf32>
                %122 = vector.broadcast %121 : f32 to vector<16xf32>
                %123 = vector.load %alloc_317[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_434 = arith.constant 1 : index
                %124 = memref.load %alloca_321[%c1_434] : memref<4xvector<16xf32>>
                %125 = vector.fma %122, %123, %124 : vector<16xf32>
                %c1_435 = arith.constant 1 : index
                memref.store %125, %alloca_321[%c1_435] : memref<4xvector<16xf32>>
                %126 = memref.load %alloc_316[%110, %104] : memref<32x256xf32>
                %127 = vector.broadcast %126 : f32 to vector<16xf32>
                %128 = vector.load %alloc_317[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c1_436 = arith.constant 1 : index
                %129 = memref.load %alloca_321[%c1_436] : memref<4xvector<16xf32>>
                %130 = vector.fma %127, %128, %129 : vector<16xf32>
                %c1_437 = arith.constant 1 : index
                memref.store %130, %alloca_321[%c1_437] : memref<4xvector<16xf32>>
                %131 = arith.addi %73, %c2 : index
                %132 = memref.load %alloc_316[%131, %arg8] : memref<32x256xf32>
                %133 = vector.broadcast %132 : f32 to vector<16xf32>
                %134 = vector.load %alloc_317[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_438 = arith.constant 2 : index
                %135 = memref.load %alloca_321[%c2_438] : memref<4xvector<16xf32>>
                %136 = vector.fma %133, %134, %135 : vector<16xf32>
                %c2_439 = arith.constant 2 : index
                memref.store %136, %alloca_321[%c2_439] : memref<4xvector<16xf32>>
                %137 = memref.load %alloc_316[%131, %92] : memref<32x256xf32>
                %138 = vector.broadcast %137 : f32 to vector<16xf32>
                %139 = vector.load %alloc_317[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_440 = arith.constant 2 : index
                %140 = memref.load %alloca_321[%c2_440] : memref<4xvector<16xf32>>
                %141 = vector.fma %138, %139, %140 : vector<16xf32>
                %c2_441 = arith.constant 2 : index
                memref.store %141, %alloca_321[%c2_441] : memref<4xvector<16xf32>>
                %142 = memref.load %alloc_316[%131, %98] : memref<32x256xf32>
                %143 = vector.broadcast %142 : f32 to vector<16xf32>
                %144 = vector.load %alloc_317[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_442 = arith.constant 2 : index
                %145 = memref.load %alloca_321[%c2_442] : memref<4xvector<16xf32>>
                %146 = vector.fma %143, %144, %145 : vector<16xf32>
                %c2_443 = arith.constant 2 : index
                memref.store %146, %alloca_321[%c2_443] : memref<4xvector<16xf32>>
                %147 = memref.load %alloc_316[%131, %104] : memref<32x256xf32>
                %148 = vector.broadcast %147 : f32 to vector<16xf32>
                %149 = vector.load %alloc_317[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c2_444 = arith.constant 2 : index
                %150 = memref.load %alloca_321[%c2_444] : memref<4xvector<16xf32>>
                %151 = vector.fma %148, %149, %150 : vector<16xf32>
                %c2_445 = arith.constant 2 : index
                memref.store %151, %alloca_321[%c2_445] : memref<4xvector<16xf32>>
                %152 = arith.addi %73, %c3 : index
                %153 = memref.load %alloc_316[%152, %arg8] : memref<32x256xf32>
                %154 = vector.broadcast %153 : f32 to vector<16xf32>
                %155 = vector.load %alloc_317[%arg8, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_446 = arith.constant 3 : index
                %156 = memref.load %alloca_321[%c3_446] : memref<4xvector<16xf32>>
                %157 = vector.fma %154, %155, %156 : vector<16xf32>
                %c3_447 = arith.constant 3 : index
                memref.store %157, %alloca_321[%c3_447] : memref<4xvector<16xf32>>
                %158 = memref.load %alloc_316[%152, %92] : memref<32x256xf32>
                %159 = vector.broadcast %158 : f32 to vector<16xf32>
                %160 = vector.load %alloc_317[%92, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_448 = arith.constant 3 : index
                %161 = memref.load %alloca_321[%c3_448] : memref<4xvector<16xf32>>
                %162 = vector.fma %159, %160, %161 : vector<16xf32>
                %c3_449 = arith.constant 3 : index
                memref.store %162, %alloca_321[%c3_449] : memref<4xvector<16xf32>>
                %163 = memref.load %alloc_316[%152, %98] : memref<32x256xf32>
                %164 = vector.broadcast %163 : f32 to vector<16xf32>
                %165 = vector.load %alloc_317[%98, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_450 = arith.constant 3 : index
                %166 = memref.load %alloca_321[%c3_450] : memref<4xvector<16xf32>>
                %167 = vector.fma %164, %165, %166 : vector<16xf32>
                %c3_451 = arith.constant 3 : index
                memref.store %167, %alloca_321[%c3_451] : memref<4xvector<16xf32>>
                %168 = memref.load %alloc_316[%152, %104] : memref<32x256xf32>
                %169 = vector.broadcast %168 : f32 to vector<16xf32>
                %170 = vector.load %alloc_317[%104, %75] : memref<256x64xf32>, vector<16xf32>
                %c3_452 = arith.constant 3 : index
                %171 = memref.load %alloca_321[%c3_452] : memref<4xvector<16xf32>>
                %172 = vector.fma %169, %170, %171 : vector<16xf32>
                %c3_453 = arith.constant 3 : index
                memref.store %172, %alloca_321[%c3_453] : memref<4xvector<16xf32>>
              }
              %c0_415 = arith.constant 0 : index
              %83 = memref.load %alloca_321[%c0_415] : memref<4xvector<16xf32>>
              vector.store %83, %alloc_312[%arg7, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c1_416 = arith.constant 1 : index
              %84 = memref.load %alloca_321[%c1_416] : memref<4xvector<16xf32>>
              vector.store %84, %alloc_312[%77, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c2_417 = arith.constant 2 : index
              %85 = memref.load %alloca_321[%c2_417] : memref<4xvector<16xf32>>
              vector.store %85, %alloc_312[%79, %arg6] : memref<64x768xf32>, vector<16xf32>
              %c3_418 = arith.constant 3 : index
              %86 = memref.load %alloca_321[%c3_418] : memref<4xvector<16xf32>>
              vector.store %86, %alloc_312[%81, %arg6] : memref<64x768xf32>, vector<16xf32>
            }
          }
        }
      }
    }
    %c0_322 = arith.constant 0 : index
    %c64_323 = arith.constant 64 : index
    %c1_324 = arith.constant 1 : index
    scf.for %arg3 = %c0_322 to %c64_323 step %c1_324 {
      %c0_394 = arith.constant 0 : index
      %c768_395 = arith.constant 768 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c768_395 step %c1_396 {
        %70 = memref.load %alloc_312[%arg3, %arg4] : memref<64x768xf32>
        %71 = memref.load %alloc_25[%arg4] : memref<768xf32>
        %72 = arith.addf %70, %71 : f32
        memref.store %72, %alloc_312[%arg3, %arg4] : memref<64x768xf32>
      }
    }
    %reinterpret_cast_325 = memref.reinterpret_cast %alloc_312 to offset: [0], sizes: [64, 1, 768], strides: [768, 768, 1] : memref<64x768xf32> to memref<64x1x768xf32>
    %alloc_326 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_327 = arith.constant 0 : index
    %c64_328 = arith.constant 64 : index
    %c1_329 = arith.constant 1 : index
    scf.for %arg3 = %c0_327 to %c64_328 step %c1_329 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_195[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %reinterpret_cast_325[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_326[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_330 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_331 = arith.constant 0 : index
    %c64_332 = arith.constant 64 : index
    %c1_333 = arith.constant 1 : index
    scf.for %arg3 = %c0_331 to %c64_332 step %c1_333 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_326[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_38[%c0_400, %arg4, %arg5] : memref<1x1x768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_330[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_334 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_335 = arith.constant 0 : index
    %c64_336 = arith.constant 64 : index
    %c1_337 = arith.constant 1 : index
    scf.for %arg3 = %c0_335 to %c64_336 step %c1_337 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          memref.store %cst_1, %alloc_334[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_338 = arith.constant 0 : index
    %c64_339 = arith.constant 64 : index
    %c1_340 = arith.constant 1 : index
    scf.for %arg3 = %c0_338 to %c64_339 step %c1_340 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_330[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_334[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          %c0_401 = arith.constant 0 : index
          memref.store %72, %alloc_334[%arg3, %arg4, %c0_401] : memref<64x1x1xf32>
        }
      }
    }
    %c0_341 = arith.constant 0 : index
    %c64_342 = arith.constant 64 : index
    %c1_343 = arith.constant 1 : index
    scf.for %arg3 = %c0_341 to %c64_342 step %c1_343 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_334[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          memref.store %71, %alloc_334[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_344 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_345 = arith.constant 0 : index
    %c64_346 = arith.constant 64 : index
    %c1_347 = arith.constant 1 : index
    scf.for %arg3 = %c0_345 to %c64_346 step %c1_347 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_330[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_334[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.subf %70, %71 : f32
          memref.store %72, %alloc_344[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_348 = memref.alloc() : memref<f32>
    %cast_349 = memref.cast %alloc_348 : memref<f32> to memref<*xf32>
    %66 = llvm.mlir.addressof @constant_44 : !llvm.ptr<array<12 x i8>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%67, %cast_349) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_350 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_351 = arith.constant 0 : index
    %c64_352 = arith.constant 64 : index
    %c1_353 = arith.constant 1 : index
    scf.for %arg3 = %c0_351 to %c64_352 step %c1_353 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_344[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_348[] : memref<f32>
          %72 = math.powf %70, %71 : f32
          memref.store %72, %alloc_350[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_354 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_355 = arith.constant 0 : index
    %c64_356 = arith.constant 64 : index
    %c1_357 = arith.constant 1 : index
    scf.for %arg3 = %c0_355 to %c64_356 step %c1_357 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          memref.store %cst_1, %alloc_354[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %c0_358 = arith.constant 0 : index
    %c64_359 = arith.constant 64 : index
    %c1_360 = arith.constant 1 : index
    scf.for %arg3 = %c0_358 to %c64_359 step %c1_360 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_350[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_354[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.addf %71, %70 : f32
          %c0_401 = arith.constant 0 : index
          memref.store %72, %alloc_354[%arg3, %arg4, %c0_401] : memref<64x1x1xf32>
        }
      }
    }
    %c0_361 = arith.constant 0 : index
    %c64_362 = arith.constant 64 : index
    %c1_363 = arith.constant 1 : index
    scf.for %arg3 = %c0_361 to %c64_362 step %c1_363 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_354[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = arith.divf %70, %cst : f32
          memref.store %71, %alloc_354[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_364 = memref.alloc() : memref<f32>
    %cast_365 = memref.cast %alloc_364 : memref<f32> to memref<*xf32>
    %68 = llvm.mlir.addressof @constant_45 : !llvm.ptr<array<12 x i8>>
    %69 = llvm.getelementptr %68[0, 0] : (!llvm.ptr<array<12 x i8>>) -> !llvm.ptr<i8>
    call @read_tensor_f32(%69, %cast_365) : (!llvm.ptr<i8>, memref<*xf32>) -> ()
    %alloc_366 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_367 = arith.constant 0 : index
    %c64_368 = arith.constant 64 : index
    %c1_369 = arith.constant 1 : index
    scf.for %arg3 = %c0_367 to %c64_368 step %c1_369 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_354[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = memref.load %alloc_364[] : memref<f32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_366[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_370 = memref.alloc() {alignment = 16 : i64} : memref<64x1x1xf32>
    %c0_371 = arith.constant 0 : index
    %c64_372 = arith.constant 64 : index
    %c1_373 = arith.constant 1 : index
    scf.for %arg3 = %c0_371 to %c64_372 step %c1_373 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c1_398 = arith.constant 1 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c1_398 step %c1_399 {
          %70 = memref.load %alloc_366[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
          %71 = math.sqrt %70 : f32
          memref.store %71, %alloc_370[%arg3, %arg4, %arg5] : memref<64x1x1xf32>
        }
      }
    }
    %alloc_374 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_375 = arith.constant 0 : index
    %c64_376 = arith.constant 64 : index
    %c1_377 = arith.constant 1 : index
    scf.for %arg3 = %c0_375 to %c64_376 step %c1_377 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_344[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %c0_400 = arith.constant 0 : index
          %71 = memref.load %alloc_370[%arg3, %arg4, %c0_400] : memref<64x1x1xf32>
          %72 = arith.divf %70, %71 : f32
          memref.store %72, %alloc_374[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_378 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_379 = arith.constant 0 : index
    %c64_380 = arith.constant 64 : index
    %c1_381 = arith.constant 1 : index
    scf.for %arg3 = %c0_379 to %c64_380 step %c1_381 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_374[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_27[%arg5] : memref<768xf32>
          %72 = arith.mulf %70, %71 : f32
          memref.store %72, %alloc_378[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_382 = memref.alloc() {alignment = 16 : i64} : memref<64x1x768xf32>
    %c0_383 = arith.constant 0 : index
    %c64_384 = arith.constant 64 : index
    %c1_385 = arith.constant 1 : index
    scf.for %arg3 = %c0_383 to %c64_384 step %c1_385 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c768_398 = arith.constant 768 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c768_398 step %c1_399 {
          %70 = memref.load %alloc_378[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
          %71 = memref.load %alloc_29[%arg5] : memref<768xf32>
          %72 = arith.addf %70, %71 : f32
          memref.store %72, %alloc_382[%arg3, %arg4, %arg5] : memref<64x1x768xf32>
        }
      }
    }
    %alloc_386 = memref.alloc() {alignment = 16 : i64, remote_target = 1 : i64} : memref<64x1x50264xf32>
    %c0_387 = arith.constant 0 : index
    %c64_388 = arith.constant 64 : index
    %c1_389 = arith.constant 1 : index
    scf.for %arg3 = %c0_387 to %c64_388 step %c1_389 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c50264_398 = arith.constant 50264 : index
        %c1_399 = arith.constant 1 : index
        scf.for %arg5 = %c0_397 to %c50264_398 step %c1_399 {
          memref.store %cst_1, %alloc_386[%arg3, %arg4, %arg5] : memref<64x1x50264xf32>
        }
      }
    }
    %c0_390 = arith.constant 0 : index
    %c64_391 = arith.constant 64 : index
    %c1_392 = arith.constant 1 : index
    %alloca_393 = memref.alloca() {alignment = 64 : i64} : memref<1xvector<8xf32>>
    scf.for %arg3 = %c0_390 to %c64_391 step %c1_392 {
      %c0_394 = arith.constant 0 : index
      %c1_395 = arith.constant 1 : index
      %c1_396 = arith.constant 1 : index
      scf.for %arg4 = %c0_394 to %c1_395 step %c1_396 {
        %c0_397 = arith.constant 0 : index
        %c50264_398 = arith.constant 50264 : index
        %c8 = arith.constant 8 : index
        scf.for %arg5 = %c0_397 to %c50264_398 step %c8 {
          %c0_399 = arith.constant 0 : index
          %c768_400 = arith.constant 768 : index
          %c8_401 = arith.constant 8 : index
          scf.for %arg6 = %c0_399 to %c768_400 step %c8_401 {
            %c0_402 = arith.constant 0 : index
            %c1_403 = arith.constant 1 : index
            %c1_404 = arith.constant 1 : index
            scf.for %arg7 = %c0_402 to %c1_403 step %c1_404 {
              %70 = arith.addi %arg7, %arg4 : index
              %71 = vector.load %alloc_386[%arg3, %70, %arg5] : memref<64x1x50264xf32>, vector<8xf32>
              %c0_405 = arith.constant 0 : index
              memref.store %71, %alloca_393[%c0_405] : memref<1xvector<8xf32>>
              %72 = memref.load %alloc_382[%arg3, %70, %arg6] : memref<64x1x768xf32>
              %73 = vector.broadcast %72 : f32 to vector<8xf32>
              %74 = vector.load %alloc_33[%arg6, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_406 = arith.constant 0 : index
              %75 = memref.load %alloca_393[%c0_406] : memref<1xvector<8xf32>>
              %76 = vector.fma %73, %74, %75 : vector<8xf32>
              %c0_407 = arith.constant 0 : index
              memref.store %76, %alloca_393[%c0_407] : memref<1xvector<8xf32>>
              %77 = arith.addi %arg6, %c1 : index
              %78 = memref.load %alloc_382[%arg3, %70, %77] : memref<64x1x768xf32>
              %79 = vector.broadcast %78 : f32 to vector<8xf32>
              %80 = vector.load %alloc_33[%77, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_408 = arith.constant 0 : index
              %81 = memref.load %alloca_393[%c0_408] : memref<1xvector<8xf32>>
              %82 = vector.fma %79, %80, %81 : vector<8xf32>
              %c0_409 = arith.constant 0 : index
              memref.store %82, %alloca_393[%c0_409] : memref<1xvector<8xf32>>
              %83 = arith.addi %arg6, %c2 : index
              %84 = memref.load %alloc_382[%arg3, %70, %83] : memref<64x1x768xf32>
              %85 = vector.broadcast %84 : f32 to vector<8xf32>
              %86 = vector.load %alloc_33[%83, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_410 = arith.constant 0 : index
              %87 = memref.load %alloca_393[%c0_410] : memref<1xvector<8xf32>>
              %88 = vector.fma %85, %86, %87 : vector<8xf32>
              %c0_411 = arith.constant 0 : index
              memref.store %88, %alloca_393[%c0_411] : memref<1xvector<8xf32>>
              %89 = arith.addi %arg6, %c3 : index
              %90 = memref.load %alloc_382[%arg3, %70, %89] : memref<64x1x768xf32>
              %91 = vector.broadcast %90 : f32 to vector<8xf32>
              %92 = vector.load %alloc_33[%89, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_412 = arith.constant 0 : index
              %93 = memref.load %alloca_393[%c0_412] : memref<1xvector<8xf32>>
              %94 = vector.fma %91, %92, %93 : vector<8xf32>
              %c0_413 = arith.constant 0 : index
              memref.store %94, %alloca_393[%c0_413] : memref<1xvector<8xf32>>
              %95 = arith.addi %arg6, %c4 : index
              %96 = memref.load %alloc_382[%arg3, %70, %95] : memref<64x1x768xf32>
              %97 = vector.broadcast %96 : f32 to vector<8xf32>
              %98 = vector.load %alloc_33[%95, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_414 = arith.constant 0 : index
              %99 = memref.load %alloca_393[%c0_414] : memref<1xvector<8xf32>>
              %100 = vector.fma %97, %98, %99 : vector<8xf32>
              %c0_415 = arith.constant 0 : index
              memref.store %100, %alloca_393[%c0_415] : memref<1xvector<8xf32>>
              %101 = arith.addi %arg6, %c5 : index
              %102 = memref.load %alloc_382[%arg3, %70, %101] : memref<64x1x768xf32>
              %103 = vector.broadcast %102 : f32 to vector<8xf32>
              %104 = vector.load %alloc_33[%101, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_416 = arith.constant 0 : index
              %105 = memref.load %alloca_393[%c0_416] : memref<1xvector<8xf32>>
              %106 = vector.fma %103, %104, %105 : vector<8xf32>
              %c0_417 = arith.constant 0 : index
              memref.store %106, %alloca_393[%c0_417] : memref<1xvector<8xf32>>
              %107 = arith.addi %arg6, %c6 : index
              %108 = memref.load %alloc_382[%arg3, %70, %107] : memref<64x1x768xf32>
              %109 = vector.broadcast %108 : f32 to vector<8xf32>
              %110 = vector.load %alloc_33[%107, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_418 = arith.constant 0 : index
              %111 = memref.load %alloca_393[%c0_418] : memref<1xvector<8xf32>>
              %112 = vector.fma %109, %110, %111 : vector<8xf32>
              %c0_419 = arith.constant 0 : index
              memref.store %112, %alloca_393[%c0_419] : memref<1xvector<8xf32>>
              %113 = arith.addi %arg6, %c7 : index
              %114 = memref.load %alloc_382[%arg3, %70, %113] : memref<64x1x768xf32>
              %115 = vector.broadcast %114 : f32 to vector<8xf32>
              %116 = vector.load %alloc_33[%113, %arg5] : memref<768x50264xf32>, vector<8xf32>
              %c0_420 = arith.constant 0 : index
              %117 = memref.load %alloca_393[%c0_420] : memref<1xvector<8xf32>>
              %118 = vector.fma %115, %116, %117 : vector<8xf32>
              %c0_421 = arith.constant 0 : index
              memref.store %118, %alloca_393[%c0_421] : memref<1xvector<8xf32>>
              %c0_422 = arith.constant 0 : index
              %119 = memref.load %alloca_393[%c0_422] : memref<1xvector<8xf32>>
              vector.store %119, %alloc_386[%arg3, %70, %arg5] : memref<64x1x50264xf32>, vector<8xf32>
            }
          }
        }
      }
    }
    return %alloc : memref<64x1x50264xf32>
  }
}

