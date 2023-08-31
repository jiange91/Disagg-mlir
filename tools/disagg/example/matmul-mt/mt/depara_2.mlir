#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0) -> (d0 + 1)>
#map2 = affine_map<(d0) -> (d0 + 2)>
#map3 = affine_map<(d0) -> (d0 + 3)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func private @pthread_join(i64, !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @pthread_create(!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_driver(%arg0: !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, %arg1: !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, %arg2: memref<512x512xf32>) attributes {llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.array<2 x i64> : (i64) -> !llvm.ptr<array<2 x i64>>
    %1 = llvm.alloca %c1_i64 x !llvm.array<2 x !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>> : (i64) -> !llvm.ptr<!llvm.array<2 x !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>>
    %2 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<2 x i64>>) -> !llvm.ptr<i64>
    %3 = rmem.llvm.getelementptr %1[%c0_i64 [0]] : (!llvm.ptr<!llvm.array<2 x !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>>, i64) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %4 = llvm.mlir.null : !llvm.ptr<struct<(i64, array<48 x i8>)>>
    scf.for %arg3 = %c0 to %c2 step %c1 {
      %11 = arith.index_cast %arg3 : index to i64
      %12 = rmem.llvm.getelementptr %arg1[%11 []] : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
      %13 = rmem.llvm.load %12 : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>) -> !rmem.rmref<1, memref<64512x512xf32>>
      %14 = rmem.llvm.getelementptr %arg0[%11 []] : (!llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>
      %15 = rmem.llvm.load %14 : (!llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>) -> !rmem.rmref<2, memref<64512x512xf32>>
      %16 = arith.cmpi eq, %arg3, %c0 : index
      scf.if %16 {
        %18 = rmem.llvm.getelementptr %3[%c0_i64 []] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        %19 = rmem.llvm.getelementptr %18[%c0_i64 [0]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        rmem.llvm.store %15 -> %19 : !rmem.rmref<2, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>
        %20 = rmem.llvm.getelementptr %18[%c0_i64 [1]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        rmem.llvm.store %13 -> %20 : !rmem.rmref<1, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
        %21 = rmem.llvm.getelementptr %18[%c0_i64 [2]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<memref<512x512xf32>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        rmem.llvm.store %arg2 -> %21 : memref<512x512xf32>, !llvm.ptr<memref<512x512xf32>>
        %22 = rmem.bitcast %18 : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>) -> !llvm.ptr<i8>
        %23 = rmem.llvm.addressof @task_0 : <func<ptr<i8> (ptr<i8>)>>
        %24 = func.call @pthread_create(%2, %4, %23, %22) : (!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32
      }
      %17 = arith.cmpi eq, %arg3, %c1 : index
      scf.if %17 {
        %18 = rmem.llvm.getelementptr %3[%c1_i64 []] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        %19 = rmem.llvm.getelementptr %18[%c0_i64 [0]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        rmem.llvm.store %15 -> %19 : !rmem.rmref<2, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>
        %20 = rmem.llvm.getelementptr %18[%c0_i64 [1]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        rmem.llvm.store %13 -> %20 : !rmem.rmref<1, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
        %21 = rmem.llvm.getelementptr %18[%c0_i64 [2]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<memref<512x512xf32>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
        rmem.llvm.store %arg2 -> %21 : memref<512x512xf32>, !llvm.ptr<memref<512x512xf32>>
        %22 = rmem.bitcast %18 : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>) -> !llvm.ptr<i8>
        %23 = llvm.getelementptr %2[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
        %24 = rmem.llvm.addressof @task_1 : <func<ptr<i8> (ptr<i8>)>>
        %25 = func.call @pthread_create(%23, %4, %24, %22) : (!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32
      }
    }
    %5 = llvm.mlir.null : !llvm.ptr<ptr<i8>>
    %6 = llvm.load %2 : !llvm.ptr<i64>
    %7 = call @pthread_join(%6, %5) : (i64, !llvm.ptr<ptr<i8>>) -> i32
    %8 = llvm.getelementptr %2[1] : (!llvm.ptr<i64>) -> !llvm.ptr<i64>
    %9 = llvm.load %8 : !llvm.ptr<i64>
    %10 = call @pthread_join(%9, %5) : (i64, !llvm.ptr<ptr<i8>>) -> i32
    return
  }
  func.func @main_graph__1(%arg0: !rmem.rmref<4, memref<64512x512xf32>>, %arg1: !rmem.rmref<3, memref<64512x512xf32>>, %arg2: memref<512x512xf32>) attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    affine.for %arg3 = 0 to 64512 {
      affine.for %arg4 = 0 to 512 {
        rmem.affine.store %cst -> %arg0[%arg3, %arg4] {map = #map} : f32, !rmem.rmref<4, memref<64512x512xf32>>, index, index
      }
    }
    affine.for %arg3 = 0 to 64512 step 4 {
      affine.for %arg4 = 0 to 512 step 8 {
        affine.for %arg5 = 0 to 512 step 8 {
          %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
          %0 = rmem.vec.load %arg0[%arg3, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          affine.store %0, %alloca[0] : memref<4xvector<8xf32>>
          %1 = arith.addi %arg3, %c1 : index
          %2 = rmem.vec.load %arg0[%1, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          affine.store %2, %alloca[1] : memref<4xvector<8xf32>>
          %3 = arith.addi %arg3, %c2 : index
          %4 = rmem.vec.load %arg0[%3, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          affine.store %4, %alloca[2] : memref<4xvector<8xf32>>
          %5 = arith.addi %arg3, %c3 : index
          %6 = rmem.vec.load %arg0[%5, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          affine.store %6, %alloca[3] : memref<4xvector<8xf32>>
          affine.for %arg6 = 0 to 8 step 4 {
            %11 = arith.addi %arg6, %arg5 : index
            %12 = rmem.memref.load %arg1[%arg3, %11] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %13 = vector.broadcast %12 : f32 to vector<8xf32>
            %14 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %15 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %16 = vector.fma %13, %14, %15 : vector<8xf32>
            affine.store %16, %alloca[0] : memref<4xvector<8xf32>>
            %17 = affine.apply #map1(%arg6)
            %18 = arith.addi %17, %arg5 : index
            %19 = rmem.memref.load %arg1[%arg3, %18] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %20 = vector.broadcast %19 : f32 to vector<8xf32>
            %21 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %22 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %23 = vector.fma %20, %21, %22 : vector<8xf32>
            affine.store %23, %alloca[0] : memref<4xvector<8xf32>>
            %24 = affine.apply #map2(%arg6)
            %25 = arith.addi %24, %arg5 : index
            %26 = rmem.memref.load %arg1[%arg3, %25] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %27 = vector.broadcast %26 : f32 to vector<8xf32>
            %28 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %29 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %30 = vector.fma %27, %28, %29 : vector<8xf32>
            affine.store %30, %alloca[0] : memref<4xvector<8xf32>>
            %31 = affine.apply #map3(%arg6)
            %32 = arith.addi %31, %arg5 : index
            %33 = rmem.memref.load %arg1[%arg3, %32] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %34 = vector.broadcast %33 : f32 to vector<8xf32>
            %35 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %36 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %37 = vector.fma %34, %35, %36 : vector<8xf32>
            affine.store %37, %alloca[0] : memref<4xvector<8xf32>>
            %38 = rmem.memref.load %arg1[%1, %11] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %39 = vector.broadcast %38 : f32 to vector<8xf32>
            %40 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %41 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %42 = vector.fma %39, %40, %41 : vector<8xf32>
            affine.store %42, %alloca[1] : memref<4xvector<8xf32>>
            %43 = rmem.memref.load %arg1[%1, %18] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %44 = vector.broadcast %43 : f32 to vector<8xf32>
            %45 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %46 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %47 = vector.fma %44, %45, %46 : vector<8xf32>
            affine.store %47, %alloca[1] : memref<4xvector<8xf32>>
            %48 = rmem.memref.load %arg1[%1, %25] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %49 = vector.broadcast %48 : f32 to vector<8xf32>
            %50 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %51 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %52 = vector.fma %49, %50, %51 : vector<8xf32>
            affine.store %52, %alloca[1] : memref<4xvector<8xf32>>
            %53 = rmem.memref.load %arg1[%1, %32] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %54 = vector.broadcast %53 : f32 to vector<8xf32>
            %55 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %56 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %57 = vector.fma %54, %55, %56 : vector<8xf32>
            affine.store %57, %alloca[1] : memref<4xvector<8xf32>>
            %58 = rmem.memref.load %arg1[%3, %11] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %59 = vector.broadcast %58 : f32 to vector<8xf32>
            %60 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %61 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %62 = vector.fma %59, %60, %61 : vector<8xf32>
            affine.store %62, %alloca[2] : memref<4xvector<8xf32>>
            %63 = rmem.memref.load %arg1[%3, %18] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %64 = vector.broadcast %63 : f32 to vector<8xf32>
            %65 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %66 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %67 = vector.fma %64, %65, %66 : vector<8xf32>
            affine.store %67, %alloca[2] : memref<4xvector<8xf32>>
            %68 = rmem.memref.load %arg1[%3, %25] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %69 = vector.broadcast %68 : f32 to vector<8xf32>
            %70 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %71 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %72 = vector.fma %69, %70, %71 : vector<8xf32>
            affine.store %72, %alloca[2] : memref<4xvector<8xf32>>
            %73 = rmem.memref.load %arg1[%3, %32] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %74 = vector.broadcast %73 : f32 to vector<8xf32>
            %75 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %76 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %77 = vector.fma %74, %75, %76 : vector<8xf32>
            affine.store %77, %alloca[2] : memref<4xvector<8xf32>>
            %78 = rmem.memref.load %arg1[%5, %11] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %79 = vector.broadcast %78 : f32 to vector<8xf32>
            %80 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %81 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %82 = vector.fma %79, %80, %81 : vector<8xf32>
            affine.store %82, %alloca[3] : memref<4xvector<8xf32>>
            %83 = rmem.memref.load %arg1[%5, %18] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %84 = vector.broadcast %83 : f32 to vector<8xf32>
            %85 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %86 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %87 = vector.fma %84, %85, %86 : vector<8xf32>
            affine.store %87, %alloca[3] : memref<4xvector<8xf32>>
            %88 = rmem.memref.load %arg1[%5, %25] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %89 = vector.broadcast %88 : f32 to vector<8xf32>
            %90 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %91 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %92 = vector.fma %89, %90, %91 : vector<8xf32>
            affine.store %92, %alloca[3] : memref<4xvector<8xf32>>
            %93 = rmem.memref.load %arg1[%5, %32] : (!rmem.rmref<3, memref<64512x512xf32>>, index, index) -> f32
            %94 = vector.broadcast %93 : f32 to vector<8xf32>
            %95 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %96 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %97 = vector.fma %94, %95, %96 : vector<8xf32>
            affine.store %97, %alloca[3] : memref<4xvector<8xf32>>
          }
          %7 = affine.load %alloca[0] : memref<4xvector<8xf32>>
          rmem.vec.store %7, %arg0[%arg3, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          %8 = affine.load %alloca[1] : memref<4xvector<8xf32>>
          rmem.vec.store %8, %arg0[%1, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          %9 = affine.load %alloca[2] : memref<4xvector<8xf32>>
          rmem.vec.store %9, %arg0[%3, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
          %10 = affine.load %alloca[3] : memref<4xvector<8xf32>>
          rmem.vec.store %10, %arg0[%5, %arg4] : !rmem.rmref<4, memref<64512x512xf32>>, vector<8xf32>
        }
      }
    }
    return
  }
  func.func @task_1(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.mlir.null : !llvm.ptr<i8>
    %1 = rmem.bitcast %arg0 : (!llvm.ptr<i8>) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>
    %2 = rmem.llvm.getelementptr %1[%c0_i64 [0]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %3 = rmem.llvm.load %2 : (!llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>) -> !rmem.rmref<2, memref<64512x512xf32>>
    %4 = rmem.bitcast %3 : (!rmem.rmref<2, memref<64512x512xf32>>) -> !rmem.rmref<4, memref<64512x512xf32>>
    %5 = rmem.llvm.getelementptr %1[%c0_i64 [1]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %6 = rmem.llvm.load %5 : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>) -> !rmem.rmref<1, memref<64512x512xf32>>
    %7 = rmem.bitcast %6 : (!rmem.rmref<1, memref<64512x512xf32>>) -> !rmem.rmref<3, memref<64512x512xf32>>
    %8 = rmem.llvm.getelementptr %1[%c0_i64 [2]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<memref<512x512xf32>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %9 = rmem.llvm.load %8 : (!llvm.ptr<memref<512x512xf32>>) -> memref<512x512xf32>
    call @main_graph__1(%4, %7, %9) : (!rmem.rmref<4, memref<64512x512xf32>>, !rmem.rmref<3, memref<64512x512xf32>>, memref<512x512xf32>) -> ()
    return %0 : !llvm.ptr<i8>
  }
  func.func @main_graph__0(%arg0: !rmem.rmref<2, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<64512x512xf32>>, %arg2: memref<512x512xf32>) attributes {input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    affine.for %arg3 = 0 to 64512 {
      affine.for %arg4 = 0 to 512 {
        rmem.affine.store %cst -> %arg0[%arg3, %arg4] {map = #map} : f32, !rmem.rmref<2, memref<64512x512xf32>>, index, index
      }
    }
    affine.for %arg3 = 0 to 64512 step 4 {
      affine.for %arg4 = 0 to 512 step 8 {
        affine.for %arg5 = 0 to 512 step 8 {
          %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
          %0 = rmem.vec.load %arg0[%arg3, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          affine.store %0, %alloca[0] : memref<4xvector<8xf32>>
          %1 = arith.addi %arg3, %c1 : index
          %2 = rmem.vec.load %arg0[%1, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          affine.store %2, %alloca[1] : memref<4xvector<8xf32>>
          %3 = arith.addi %arg3, %c2 : index
          %4 = rmem.vec.load %arg0[%3, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          affine.store %4, %alloca[2] : memref<4xvector<8xf32>>
          %5 = arith.addi %arg3, %c3 : index
          %6 = rmem.vec.load %arg0[%5, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          affine.store %6, %alloca[3] : memref<4xvector<8xf32>>
          affine.for %arg6 = 0 to 8 step 4 {
            %11 = arith.addi %arg6, %arg5 : index
            %12 = rmem.memref.load %arg1[%arg3, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %13 = vector.broadcast %12 : f32 to vector<8xf32>
            %14 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %15 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %16 = vector.fma %13, %14, %15 : vector<8xf32>
            affine.store %16, %alloca[0] : memref<4xvector<8xf32>>
            %17 = affine.apply #map1(%arg6)
            %18 = arith.addi %17, %arg5 : index
            %19 = rmem.memref.load %arg1[%arg3, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %20 = vector.broadcast %19 : f32 to vector<8xf32>
            %21 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %22 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %23 = vector.fma %20, %21, %22 : vector<8xf32>
            affine.store %23, %alloca[0] : memref<4xvector<8xf32>>
            %24 = affine.apply #map2(%arg6)
            %25 = arith.addi %24, %arg5 : index
            %26 = rmem.memref.load %arg1[%arg3, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %27 = vector.broadcast %26 : f32 to vector<8xf32>
            %28 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %29 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %30 = vector.fma %27, %28, %29 : vector<8xf32>
            affine.store %30, %alloca[0] : memref<4xvector<8xf32>>
            %31 = affine.apply #map3(%arg6)
            %32 = arith.addi %31, %arg5 : index
            %33 = rmem.memref.load %arg1[%arg3, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %34 = vector.broadcast %33 : f32 to vector<8xf32>
            %35 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %36 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            %37 = vector.fma %34, %35, %36 : vector<8xf32>
            affine.store %37, %alloca[0] : memref<4xvector<8xf32>>
            %38 = rmem.memref.load %arg1[%1, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %39 = vector.broadcast %38 : f32 to vector<8xf32>
            %40 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %41 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %42 = vector.fma %39, %40, %41 : vector<8xf32>
            affine.store %42, %alloca[1] : memref<4xvector<8xf32>>
            %43 = rmem.memref.load %arg1[%1, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %44 = vector.broadcast %43 : f32 to vector<8xf32>
            %45 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %46 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %47 = vector.fma %44, %45, %46 : vector<8xf32>
            affine.store %47, %alloca[1] : memref<4xvector<8xf32>>
            %48 = rmem.memref.load %arg1[%1, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %49 = vector.broadcast %48 : f32 to vector<8xf32>
            %50 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %51 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %52 = vector.fma %49, %50, %51 : vector<8xf32>
            affine.store %52, %alloca[1] : memref<4xvector<8xf32>>
            %53 = rmem.memref.load %arg1[%1, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %54 = vector.broadcast %53 : f32 to vector<8xf32>
            %55 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %56 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            %57 = vector.fma %54, %55, %56 : vector<8xf32>
            affine.store %57, %alloca[1] : memref<4xvector<8xf32>>
            %58 = rmem.memref.load %arg1[%3, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %59 = vector.broadcast %58 : f32 to vector<8xf32>
            %60 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %61 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %62 = vector.fma %59, %60, %61 : vector<8xf32>
            affine.store %62, %alloca[2] : memref<4xvector<8xf32>>
            %63 = rmem.memref.load %arg1[%3, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %64 = vector.broadcast %63 : f32 to vector<8xf32>
            %65 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %66 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %67 = vector.fma %64, %65, %66 : vector<8xf32>
            affine.store %67, %alloca[2] : memref<4xvector<8xf32>>
            %68 = rmem.memref.load %arg1[%3, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %69 = vector.broadcast %68 : f32 to vector<8xf32>
            %70 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %71 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %72 = vector.fma %69, %70, %71 : vector<8xf32>
            affine.store %72, %alloca[2] : memref<4xvector<8xf32>>
            %73 = rmem.memref.load %arg1[%3, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %74 = vector.broadcast %73 : f32 to vector<8xf32>
            %75 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %76 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            %77 = vector.fma %74, %75, %76 : vector<8xf32>
            affine.store %77, %alloca[2] : memref<4xvector<8xf32>>
            %78 = rmem.memref.load %arg1[%5, %11] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %79 = vector.broadcast %78 : f32 to vector<8xf32>
            %80 = vector.load %arg2[%11, %arg4] : memref<512x512xf32>, vector<8xf32>
            %81 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %82 = vector.fma %79, %80, %81 : vector<8xf32>
            affine.store %82, %alloca[3] : memref<4xvector<8xf32>>
            %83 = rmem.memref.load %arg1[%5, %18] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %84 = vector.broadcast %83 : f32 to vector<8xf32>
            %85 = vector.load %arg2[%18, %arg4] : memref<512x512xf32>, vector<8xf32>
            %86 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %87 = vector.fma %84, %85, %86 : vector<8xf32>
            affine.store %87, %alloca[3] : memref<4xvector<8xf32>>
            %88 = rmem.memref.load %arg1[%5, %25] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %89 = vector.broadcast %88 : f32 to vector<8xf32>
            %90 = vector.load %arg2[%25, %arg4] : memref<512x512xf32>, vector<8xf32>
            %91 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %92 = vector.fma %89, %90, %91 : vector<8xf32>
            affine.store %92, %alloca[3] : memref<4xvector<8xf32>>
            %93 = rmem.memref.load %arg1[%5, %32] : (!rmem.rmref<1, memref<64512x512xf32>>, index, index) -> f32
            %94 = vector.broadcast %93 : f32 to vector<8xf32>
            %95 = vector.load %arg2[%32, %arg4] : memref<512x512xf32>, vector<8xf32>
            %96 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            %97 = vector.fma %94, %95, %96 : vector<8xf32>
            affine.store %97, %alloca[3] : memref<4xvector<8xf32>>
          }
          %7 = affine.load %alloca[0] : memref<4xvector<8xf32>>
          rmem.vec.store %7, %arg0[%arg3, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          %8 = affine.load %alloca[1] : memref<4xvector<8xf32>>
          rmem.vec.store %8, %arg0[%1, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          %9 = affine.load %alloca[2] : memref<4xvector<8xf32>>
          rmem.vec.store %9, %arg0[%3, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
          %10 = affine.load %alloca[3] : memref<4xvector<8xf32>>
          rmem.vec.store %10, %arg0[%5, %arg4] : !rmem.rmref<2, memref<64512x512xf32>>, vector<8xf32>
        }
      }
    }
    return
  }
  func.func @task_0(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %c0_i64 = arith.constant 0 : i64
    %0 = llvm.mlir.null : !llvm.ptr<i8>
    %1 = rmem.bitcast %arg0 : (!llvm.ptr<i8>) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>
    %2 = rmem.llvm.getelementptr %1[%c0_i64 [0]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %3 = rmem.llvm.load %2 : (!llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>) -> !rmem.rmref<2, memref<64512x512xf32>>
    %4 = rmem.llvm.getelementptr %1[%c0_i64 [1]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %5 = rmem.llvm.load %4 : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>) -> !rmem.rmref<1, memref<64512x512xf32>>
    %6 = rmem.llvm.getelementptr %1[%c0_i64 [2]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<memref<512x512xf32>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %7 = rmem.llvm.load %6 : (!llvm.ptr<memref<512x512xf32>>) -> memref<512x512xf32>
    call @main_graph__0(%3, %5, %7) : (!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>) -> ()
    return %0 : !llvm.ptr<i8>
  }
}

