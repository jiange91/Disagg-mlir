#map = affine_map<(d0) -> (d0 * 512)>
#map1 = affine_map<(d0) -> (d0 + 512)>
#map2 = affine_map<(d0) -> (d0 + 1024)>
#map3 = affine_map<(d0) -> (d0 + 1536)>
#map4 = affine_map<(d0, d1) -> (d0 + d1)>
#map5 = affine_map<(d0) -> (d0 + 1)>
#map6 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map7 = affine_map<(d0) -> (d0 + 2)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + 2)>
#map9 = affine_map<(d0) -> (d0 + 3)>
#map10 = affine_map<(d0, d1) -> (d0 + d1 + 3)>
#map11 = affine_map<(d0, d1) -> (d0 + d1 + 512)>
#map12 = affine_map<(d0, d1) -> (d0 + d1 + 513)>
#map13 = affine_map<(d0, d1) -> (d0 + d1 + 514)>
#map14 = affine_map<(d0, d1) -> (d0 + d1 + 515)>
#map15 = affine_map<(d0, d1) -> (d0 + d1 + 1024)>
#map16 = affine_map<(d0, d1) -> (d0 + d1 + 1025)>
#map17 = affine_map<(d0, d1) -> (d0 + d1 + 1026)>
#map18 = affine_map<(d0, d1) -> (d0 + d1 + 1027)>
#map19 = affine_map<(d0, d1) -> (d0 + d1 + 1536)>
#map20 = affine_map<(d0, d1) -> (d0 + d1 + 1537)>
#map21 = affine_map<(d0, d1) -> (d0 + d1 + 1538)>
#map22 = affine_map<(d0, d1) -> (d0 + d1 + 1539)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 2048, 1, 1 : i32], t1 = ["ref1", 0, 0, 33030144, f32, 2048, 1, 1 : i32]}} {
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  func.func private @pthread_join(i64, !llvm.ptr<ptr<i8>>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @pthread_create(!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32 attributes {llvm.linkage = #llvm.linkage<external>}
  func.func @_driver(%arg0: !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, %arg1: !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, %arg2: memref<512x512xf32>) attributes {llvm.emit_c_interface} {
    %c0_i64 = arith.constant 0 : i64
    %c1_i64 = arith.constant 1 : i64
    %0 = llvm.alloca %c1_i64 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr<array<1 x i64>>
    %1 = rmem.alloca_ptr %c1_i64 x !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)> {alignment = 0 : i64} : (i64) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>
    %2 = llvm.getelementptr %0[0, 0] : (!llvm.ptr<array<1 x i64>>) -> !llvm.ptr<i64>
    %3 = llvm.mlir.null : !llvm.ptr<struct<(i64, array<48 x i8>)>>
    %4 = rmem.llvm.getelementptr %arg1[%c0_i64 []] : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
    %5 = rmem.llvm.load %4 : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>) -> !rmem.rmref<1, memref<64512x512xf32>>
    %6 = rmem.llvm.getelementptr %arg0[%c0_i64 []] : (!llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>
    %7 = rmem.llvm.load %6 : (!llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>) -> !rmem.rmref<2, memref<64512x512xf32>>
    %8 = rmem.llvm.getelementptr %1[%c0_i64 []] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    %9 = rmem.llvm.getelementptr %8[%c0_i64 [0]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    rmem.llvm.store %7 -> %9 : !rmem.rmref<2, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<2, memref<64512x512xf32>>>
    %10 = rmem.llvm.getelementptr %8[%c0_i64 [1]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    rmem.llvm.store %5 -> %10 : !rmem.rmref<1, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
    %11 = rmem.llvm.getelementptr %8[%c0_i64 [2]] : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>, i64) -> !llvm.ptr<memref<512x512xf32>>, !llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>
    rmem.llvm.store %arg2 -> %11 : memref<512x512xf32>, !llvm.ptr<memref<512x512xf32>>
    %12 = rmem.bitcast %8 : (!llvm.ptr<!llvm.struct<(!rmem.rmref<2, memref<64512x512xf32>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>)>>) -> !llvm.ptr<i8>
    %13 = rmem.llvm.addressof @task_0 : <func<ptr<i8> (ptr<i8>)>>
    %14 = call @pthread_create(%2, %3, %13, %12) : (!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32
    %15 = llvm.mlir.null : !llvm.ptr<ptr<i8>>
    %16 = llvm.load %2 : !llvm.ptr<i64>
    %17 = call @pthread_join(%16, %15) : (i64, !llvm.ptr<ptr<i8>>) -> i32
    return
  }
  func.func @main_graph__0(%arg0: !rmem.rmref<2, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<64512x512xf32>>, %arg2: memref<512x512xf32>) attributes {access_mem_catcher = [["ref0", 0 : i32], ["ref1", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c2_i8 = arith.constant 2 : i8
    %c8192_i32 = arith.constant 8192 : i32
    %c8 = arith.constant 8 : index
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %0 = rmem.affine.req %arg0[%c0] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
    %1 = rmem.affine.req %arg0[%c4] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
    %2:2 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %0, %arg5 = %1) -> (i32, i32) {
      %8 = arith.addi %arg3, %c8 : index
      %9 = rmem.affine.req %arg0[%8] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
      %10 = rmem.affine.paddr %arg4, %arg0[%arg3] {map = #map} : (i32, !rmem.rmref<2, memref<64512x512xf32>>, index) -> memref<4x512xf32>
      %11 = arith.addi %arg4, %c8192_i32 : i32
      %12 = arith.extsi %11 : i32 to i64
      %13 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %14 = llvm.getelementptr %13[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %15 = llvm.getelementptr %14[%12] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %16 = llvm.getelementptr %15[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %17 = llvm.load %16 : !llvm.ptr<i8>
      %18 = arith.ori %17, %c2_i8 : i8
      llvm.store %18, %16 : !llvm.ptr<i8>
      rmem.poll 2, %arg4 : (i32) -> ()
      affine.for %arg6 = 0 to 4 {
        affine.for %arg7 = 0 to 512 {
          affine.store %cst, %10[%arg6, %arg7] : memref<4x512xf32>
        }
      }
      affine.yield %arg5, %9 : i32, i32
    }
    %3 = rmem.affine.req %arg1[%c0] {cache_id = 1 : i32, map = #map, mem = "t1"} : (!rmem.rmref<1, memref<64512x512xf32>>, index) -> i32
    %4 = rmem.affine.req %arg0[%c0] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
    %5 = rmem.affine.req %arg1[%c4] {cache_id = 1 : i32, map = #map, mem = "t1"} : (!rmem.rmref<1, memref<64512x512xf32>>, index) -> i32
    %6 = rmem.affine.req %arg0[%c4] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
    %7:4 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %3, %arg5 = %4, %arg6 = %5, %arg7 = %6) -> (i32, i32, i32, i32) {
      %8 = arith.addi %arg3, %c8 : index
      %9 = rmem.affine.req %arg1[%8] {cache_id = 1 : i32, map = #map, mem = "t1"} : (!rmem.rmref<1, memref<64512x512xf32>>, index) -> i32
      %10 = rmem.affine.req %arg0[%8] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
      %11 = rmem.affine.paddr %arg4, %arg1[%arg3] {map = #map} : (i32, !rmem.rmref<1, memref<64512x512xf32>>, index) -> memref<1x2048xf32>
      %12 = rmem.affine.paddr %arg5, %arg0[%arg3] {map = #map} : (i32, !rmem.rmref<2, memref<64512x512xf32>>, index) -> memref<1x2048xf32>
      %13 = arith.addi %arg5, %c8192_i32 : i32
      %14 = arith.extsi %13 : i32 to i64
      %15 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %16 = llvm.getelementptr %15[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %17 = llvm.getelementptr %16[%14] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %18 = llvm.getelementptr %17[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %19 = llvm.load %18 : !llvm.ptr<i8>
      %20 = arith.ori %19, %c2_i8 : i8
      llvm.store %20, %18 : !llvm.ptr<i8>
      rmem.poll 2, %arg5 : (i32) -> ()
      affine.for %arg8 = 0 to 1 {
        affine.for %arg9 = 0 to 512 step 8 {
          affine.for %arg10 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %21 = vector.load %12[%arg8, %arg9] : memref<1x2048xf32>, vector<8xf32>
            affine.store %21, %alloca[0] : memref<4xvector<8xf32>>
            %22 = affine.apply #map1(%arg9)
            %23 = vector.load %12[%arg8, %22] : memref<1x2048xf32>, vector<8xf32>
            affine.store %23, %alloca[1] : memref<4xvector<8xf32>>
            %24 = affine.apply #map2(%arg9)
            %25 = vector.load %12[%arg8, %24] : memref<1x2048xf32>, vector<8xf32>
            affine.store %25, %alloca[2] : memref<4xvector<8xf32>>
            %26 = affine.apply #map3(%arg9)
            %27 = vector.load %12[%arg8, %26] : memref<1x2048xf32>, vector<8xf32>
            affine.store %27, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg11 = 0 to 8 step 4 {
              %32 = arith.addi %arg11, %arg10 : index
              %33 = affine.apply #map4(%arg10, %arg11)
              %34 = memref.load %11[%arg8, %33] : memref<1x2048xf32>
              %35 = vector.broadcast %34 : f32 to vector<8xf32>
              %36 = vector.load %arg2[%32, %arg9] : memref<512x512xf32>, vector<8xf32>
              %37 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %38 = vector.fma %35, %36, %37 : vector<8xf32>
              affine.store %38, %alloca[0] : memref<4xvector<8xf32>>
              %39 = affine.apply #map5(%arg11)
              %40 = arith.addi %39, %arg10 : index
              %41 = affine.apply #map6(%arg10, %arg11)
              %42 = memref.load %11[%arg8, %41] : memref<1x2048xf32>
              %43 = vector.broadcast %42 : f32 to vector<8xf32>
              %44 = vector.load %arg2[%40, %arg9] : memref<512x512xf32>, vector<8xf32>
              %45 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %46 = vector.fma %43, %44, %45 : vector<8xf32>
              affine.store %46, %alloca[0] : memref<4xvector<8xf32>>
              %47 = affine.apply #map7(%arg11)
              %48 = arith.addi %47, %arg10 : index
              %49 = affine.apply #map8(%arg10, %arg11)
              %50 = memref.load %11[%arg8, %49] : memref<1x2048xf32>
              %51 = vector.broadcast %50 : f32 to vector<8xf32>
              %52 = vector.load %arg2[%48, %arg9] : memref<512x512xf32>, vector<8xf32>
              %53 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %54 = vector.fma %51, %52, %53 : vector<8xf32>
              affine.store %54, %alloca[0] : memref<4xvector<8xf32>>
              %55 = affine.apply #map9(%arg11)
              %56 = arith.addi %55, %arg10 : index
              %57 = affine.apply #map10(%arg10, %arg11)
              %58 = memref.load %11[%arg8, %57] : memref<1x2048xf32>
              %59 = vector.broadcast %58 : f32 to vector<8xf32>
              %60 = vector.load %arg2[%56, %arg9] : memref<512x512xf32>, vector<8xf32>
              %61 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %62 = vector.fma %59, %60, %61 : vector<8xf32>
              affine.store %62, %alloca[0] : memref<4xvector<8xf32>>
              %63 = affine.apply #map11(%arg10, %arg11)
              %64 = memref.load %11[%arg8, %63] : memref<1x2048xf32>
              %65 = vector.broadcast %64 : f32 to vector<8xf32>
              %66 = vector.load %arg2[%32, %arg9] : memref<512x512xf32>, vector<8xf32>
              %67 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %68 = vector.fma %65, %66, %67 : vector<8xf32>
              affine.store %68, %alloca[1] : memref<4xvector<8xf32>>
              %69 = affine.apply #map12(%arg10, %arg11)
              %70 = memref.load %11[%arg8, %69] : memref<1x2048xf32>
              %71 = vector.broadcast %70 : f32 to vector<8xf32>
              %72 = vector.load %arg2[%40, %arg9] : memref<512x512xf32>, vector<8xf32>
              %73 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %74 = vector.fma %71, %72, %73 : vector<8xf32>
              affine.store %74, %alloca[1] : memref<4xvector<8xf32>>
              %75 = affine.apply #map13(%arg10, %arg11)
              %76 = memref.load %11[%arg8, %75] : memref<1x2048xf32>
              %77 = vector.broadcast %76 : f32 to vector<8xf32>
              %78 = vector.load %arg2[%48, %arg9] : memref<512x512xf32>, vector<8xf32>
              %79 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %80 = vector.fma %77, %78, %79 : vector<8xf32>
              affine.store %80, %alloca[1] : memref<4xvector<8xf32>>
              %81 = affine.apply #map14(%arg10, %arg11)
              %82 = memref.load %11[%arg8, %81] : memref<1x2048xf32>
              %83 = vector.broadcast %82 : f32 to vector<8xf32>
              %84 = vector.load %arg2[%56, %arg9] : memref<512x512xf32>, vector<8xf32>
              %85 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %86 = vector.fma %83, %84, %85 : vector<8xf32>
              affine.store %86, %alloca[1] : memref<4xvector<8xf32>>
              %87 = affine.apply #map15(%arg10, %arg11)
              %88 = memref.load %11[%arg8, %87] : memref<1x2048xf32>
              %89 = vector.broadcast %88 : f32 to vector<8xf32>
              %90 = vector.load %arg2[%32, %arg9] : memref<512x512xf32>, vector<8xf32>
              %91 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %92 = vector.fma %89, %90, %91 : vector<8xf32>
              affine.store %92, %alloca[2] : memref<4xvector<8xf32>>
              %93 = affine.apply #map16(%arg10, %arg11)
              %94 = memref.load %11[%arg8, %93] : memref<1x2048xf32>
              %95 = vector.broadcast %94 : f32 to vector<8xf32>
              %96 = vector.load %arg2[%40, %arg9] : memref<512x512xf32>, vector<8xf32>
              %97 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %98 = vector.fma %95, %96, %97 : vector<8xf32>
              affine.store %98, %alloca[2] : memref<4xvector<8xf32>>
              %99 = affine.apply #map17(%arg10, %arg11)
              %100 = memref.load %11[%arg8, %99] : memref<1x2048xf32>
              %101 = vector.broadcast %100 : f32 to vector<8xf32>
              %102 = vector.load %arg2[%48, %arg9] : memref<512x512xf32>, vector<8xf32>
              %103 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %104 = vector.fma %101, %102, %103 : vector<8xf32>
              affine.store %104, %alloca[2] : memref<4xvector<8xf32>>
              %105 = affine.apply #map18(%arg10, %arg11)
              %106 = memref.load %11[%arg8, %105] : memref<1x2048xf32>
              %107 = vector.broadcast %106 : f32 to vector<8xf32>
              %108 = vector.load %arg2[%56, %arg9] : memref<512x512xf32>, vector<8xf32>
              %109 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %110 = vector.fma %107, %108, %109 : vector<8xf32>
              affine.store %110, %alloca[2] : memref<4xvector<8xf32>>
              %111 = affine.apply #map19(%arg10, %arg11)
              %112 = memref.load %11[%arg8, %111] : memref<1x2048xf32>
              %113 = vector.broadcast %112 : f32 to vector<8xf32>
              %114 = vector.load %arg2[%32, %arg9] : memref<512x512xf32>, vector<8xf32>
              %115 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %116 = vector.fma %113, %114, %115 : vector<8xf32>
              affine.store %116, %alloca[3] : memref<4xvector<8xf32>>
              %117 = affine.apply #map20(%arg10, %arg11)
              %118 = memref.load %11[%arg8, %117] : memref<1x2048xf32>
              %119 = vector.broadcast %118 : f32 to vector<8xf32>
              %120 = vector.load %arg2[%40, %arg9] : memref<512x512xf32>, vector<8xf32>
              %121 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %122 = vector.fma %119, %120, %121 : vector<8xf32>
              affine.store %122, %alloca[3] : memref<4xvector<8xf32>>
              %123 = affine.apply #map21(%arg10, %arg11)
              %124 = memref.load %11[%arg8, %123] : memref<1x2048xf32>
              %125 = vector.broadcast %124 : f32 to vector<8xf32>
              %126 = vector.load %arg2[%48, %arg9] : memref<512x512xf32>, vector<8xf32>
              %127 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %128 = vector.fma %125, %126, %127 : vector<8xf32>
              affine.store %128, %alloca[3] : memref<4xvector<8xf32>>
              %129 = affine.apply #map22(%arg10, %arg11)
              %130 = memref.load %11[%arg8, %129] : memref<1x2048xf32>
              %131 = vector.broadcast %130 : f32 to vector<8xf32>
              %132 = vector.load %arg2[%56, %arg9] : memref<512x512xf32>, vector<8xf32>
              %133 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %134 = vector.fma %131, %132, %133 : vector<8xf32>
              affine.store %134, %alloca[3] : memref<4xvector<8xf32>>
            }
            %28 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %28, %12[%arg8, %arg9] : memref<1x2048xf32>, vector<8xf32>
            %29 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %29, %12[%arg8, %22] : memref<1x2048xf32>, vector<8xf32>
            %30 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %30, %12[%arg8, %24] : memref<1x2048xf32>, vector<8xf32>
            %31 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %31, %12[%arg8, %26] : memref<1x2048xf32>, vector<8xf32>
          }
        }
      }
      affine.yield %arg6, %arg7, %9, %10 : i32, i32, i32, i32
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

