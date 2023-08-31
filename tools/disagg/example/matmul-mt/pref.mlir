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
  func.func @main_graph(%arg0: !rmem.rmref<2, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<64512x512xf32>>, %arg2: memref<512x512xf32>) attributes {access_mem_catcher = [["ref0", 0 : i32], ["ref1", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c2_i8 = arith.constant 2 : i8
    %c8192_i32 = arith.constant 8192 : i32
    %c4 = arith.constant 4 : index
    %cst = arith.constant 0.000000e+00 : f32
    %c0 = arith.constant 0 : index
    %0 = rmem.affine.req %arg0[%c0] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
    %1 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %0) -> (i32) {
      %5 = arith.addi %arg3, %c4 : index
      %6 = rmem.affine.req %arg0[%5] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
      %7 = rmem.affine.paddr %arg4, %arg0[%arg3] {map = #map} : (i32, !rmem.rmref<2, memref<64512x512xf32>>, index) -> memref<4x512xf32>
      %8 = arith.addi %arg4, %c8192_i32 : i32
      %9 = arith.extsi %8 : i32 to i64
      %10 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %11 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %12 = llvm.getelementptr %11[%9] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %13 = llvm.getelementptr %12[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %14 = llvm.load %13 : !llvm.ptr<i8>
      %15 = arith.ori %14, %c2_i8 : i8
      llvm.store %15, %13 : !llvm.ptr<i8>
      rmem.poll 2, %arg4 : (i32) -> ()
      affine.for %arg5 = 0 to 4 {
        affine.for %arg6 = 0 to 512 {
          affine.store %cst, %7[%arg5, %arg6] : memref<4x512xf32>
        }
      }
      affine.yield %6 : i32
    }
    %2 = rmem.affine.req %arg0[%c0] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
    %3 = rmem.affine.req %arg1[%c0] {cache_id = 1 : i32, map = #map, mem = "t1"} : (!rmem.rmref<1, memref<64512x512xf32>>, index) -> i32
    %4:2 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %2, %arg5 = %3) -> (i32, i32) {
      %5 = arith.addi %arg3, %c4 : index
      %6 = rmem.affine.req %arg0[%5] {cache_id = 2 : i32, map = #map, mem = "t0"} : (!rmem.rmref<2, memref<64512x512xf32>>, index) -> i32
      %7 = rmem.affine.req %arg1[%5] {cache_id = 1 : i32, map = #map, mem = "t1"} : (!rmem.rmref<1, memref<64512x512xf32>>, index) -> i32
      %8 = rmem.affine.paddr %arg4, %arg0[%arg3] {map = #map} : (i32, !rmem.rmref<2, memref<64512x512xf32>>, index) -> memref<1x2048xf32>
      %9 = arith.addi %arg4, %c8192_i32 : i32
      %10 = arith.extsi %9 : i32 to i64
      %11 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
      %12 = llvm.getelementptr %11[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %13 = llvm.getelementptr %12[%10] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
      %14 = llvm.getelementptr %13[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
      %15 = llvm.load %14 : !llvm.ptr<i8>
      %16 = arith.ori %15, %c2_i8 : i8
      llvm.store %16, %14 : !llvm.ptr<i8>
      %17 = rmem.affine.paddr %arg5, %arg1[%arg3] {map = #map} : (i32, !rmem.rmref<1, memref<64512x512xf32>>, index) -> memref<1x2048xf32>
      rmem.poll 1, %arg5 : (i32) -> ()
      affine.for %arg6 = 0 to 1 {
        affine.for %arg7 = 0 to 512 step 8 {
          affine.for %arg8 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %18 = vector.load %8[%arg6, %arg7] : memref<1x2048xf32>, vector<8xf32>
            affine.store %18, %alloca[0] : memref<4xvector<8xf32>>
            %19 = affine.apply #map1(%arg7)
            %20 = vector.load %8[%arg6, %19] : memref<1x2048xf32>, vector<8xf32>
            affine.store %20, %alloca[1] : memref<4xvector<8xf32>>
            %21 = affine.apply #map2(%arg7)
            %22 = vector.load %8[%arg6, %21] : memref<1x2048xf32>, vector<8xf32>
            affine.store %22, %alloca[2] : memref<4xvector<8xf32>>
            %23 = affine.apply #map3(%arg7)
            %24 = vector.load %8[%arg6, %23] : memref<1x2048xf32>, vector<8xf32>
            affine.store %24, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg9 = 0 to 8 step 4 {
              %29 = arith.addi %arg9, %arg8 : index
              %30 = affine.apply #map4(%arg8, %arg9)
              %31 = memref.load %17[%arg6, %30] : memref<1x2048xf32>
              %32 = vector.broadcast %31 : f32 to vector<8xf32>
              %33 = vector.load %arg2[%29, %arg7] : memref<512x512xf32>, vector<8xf32>
              %34 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %35 = vector.fma %32, %33, %34 : vector<8xf32>
              affine.store %35, %alloca[0] : memref<4xvector<8xf32>>
              %36 = affine.apply #map5(%arg9)
              %37 = arith.addi %36, %arg8 : index
              %38 = affine.apply #map6(%arg8, %arg9)
              %39 = memref.load %17[%arg6, %38] : memref<1x2048xf32>
              %40 = vector.broadcast %39 : f32 to vector<8xf32>
              %41 = vector.load %arg2[%37, %arg7] : memref<512x512xf32>, vector<8xf32>
              %42 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %43 = vector.fma %40, %41, %42 : vector<8xf32>
              affine.store %43, %alloca[0] : memref<4xvector<8xf32>>
              %44 = affine.apply #map7(%arg9)
              %45 = arith.addi %44, %arg8 : index
              %46 = affine.apply #map8(%arg8, %arg9)
              %47 = memref.load %17[%arg6, %46] : memref<1x2048xf32>
              %48 = vector.broadcast %47 : f32 to vector<8xf32>
              %49 = vector.load %arg2[%45, %arg7] : memref<512x512xf32>, vector<8xf32>
              %50 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %51 = vector.fma %48, %49, %50 : vector<8xf32>
              affine.store %51, %alloca[0] : memref<4xvector<8xf32>>
              %52 = affine.apply #map9(%arg9)
              %53 = arith.addi %52, %arg8 : index
              %54 = affine.apply #map10(%arg8, %arg9)
              %55 = memref.load %17[%arg6, %54] : memref<1x2048xf32>
              %56 = vector.broadcast %55 : f32 to vector<8xf32>
              %57 = vector.load %arg2[%53, %arg7] : memref<512x512xf32>, vector<8xf32>
              %58 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %59 = vector.fma %56, %57, %58 : vector<8xf32>
              affine.store %59, %alloca[0] : memref<4xvector<8xf32>>
              %60 = affine.apply #map11(%arg8, %arg9)
              %61 = memref.load %17[%arg6, %60] : memref<1x2048xf32>
              %62 = vector.broadcast %61 : f32 to vector<8xf32>
              %63 = vector.load %arg2[%29, %arg7] : memref<512x512xf32>, vector<8xf32>
              %64 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %65 = vector.fma %62, %63, %64 : vector<8xf32>
              affine.store %65, %alloca[1] : memref<4xvector<8xf32>>
              %66 = affine.apply #map12(%arg8, %arg9)
              %67 = memref.load %17[%arg6, %66] : memref<1x2048xf32>
              %68 = vector.broadcast %67 : f32 to vector<8xf32>
              %69 = vector.load %arg2[%37, %arg7] : memref<512x512xf32>, vector<8xf32>
              %70 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %71 = vector.fma %68, %69, %70 : vector<8xf32>
              affine.store %71, %alloca[1] : memref<4xvector<8xf32>>
              %72 = affine.apply #map13(%arg8, %arg9)
              %73 = memref.load %17[%arg6, %72] : memref<1x2048xf32>
              %74 = vector.broadcast %73 : f32 to vector<8xf32>
              %75 = vector.load %arg2[%45, %arg7] : memref<512x512xf32>, vector<8xf32>
              %76 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %77 = vector.fma %74, %75, %76 : vector<8xf32>
              affine.store %77, %alloca[1] : memref<4xvector<8xf32>>
              %78 = affine.apply #map14(%arg8, %arg9)
              %79 = memref.load %17[%arg6, %78] : memref<1x2048xf32>
              %80 = vector.broadcast %79 : f32 to vector<8xf32>
              %81 = vector.load %arg2[%53, %arg7] : memref<512x512xf32>, vector<8xf32>
              %82 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %83 = vector.fma %80, %81, %82 : vector<8xf32>
              affine.store %83, %alloca[1] : memref<4xvector<8xf32>>
              %84 = affine.apply #map15(%arg8, %arg9)
              %85 = memref.load %17[%arg6, %84] : memref<1x2048xf32>
              %86 = vector.broadcast %85 : f32 to vector<8xf32>
              %87 = vector.load %arg2[%29, %arg7] : memref<512x512xf32>, vector<8xf32>
              %88 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %89 = vector.fma %86, %87, %88 : vector<8xf32>
              affine.store %89, %alloca[2] : memref<4xvector<8xf32>>
              %90 = affine.apply #map16(%arg8, %arg9)
              %91 = memref.load %17[%arg6, %90] : memref<1x2048xf32>
              %92 = vector.broadcast %91 : f32 to vector<8xf32>
              %93 = vector.load %arg2[%37, %arg7] : memref<512x512xf32>, vector<8xf32>
              %94 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %95 = vector.fma %92, %93, %94 : vector<8xf32>
              affine.store %95, %alloca[2] : memref<4xvector<8xf32>>
              %96 = affine.apply #map17(%arg8, %arg9)
              %97 = memref.load %17[%arg6, %96] : memref<1x2048xf32>
              %98 = vector.broadcast %97 : f32 to vector<8xf32>
              %99 = vector.load %arg2[%45, %arg7] : memref<512x512xf32>, vector<8xf32>
              %100 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %101 = vector.fma %98, %99, %100 : vector<8xf32>
              affine.store %101, %alloca[2] : memref<4xvector<8xf32>>
              %102 = affine.apply #map18(%arg8, %arg9)
              %103 = memref.load %17[%arg6, %102] : memref<1x2048xf32>
              %104 = vector.broadcast %103 : f32 to vector<8xf32>
              %105 = vector.load %arg2[%53, %arg7] : memref<512x512xf32>, vector<8xf32>
              %106 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %107 = vector.fma %104, %105, %106 : vector<8xf32>
              affine.store %107, %alloca[2] : memref<4xvector<8xf32>>
              %108 = affine.apply #map19(%arg8, %arg9)
              %109 = memref.load %17[%arg6, %108] : memref<1x2048xf32>
              %110 = vector.broadcast %109 : f32 to vector<8xf32>
              %111 = vector.load %arg2[%29, %arg7] : memref<512x512xf32>, vector<8xf32>
              %112 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %113 = vector.fma %110, %111, %112 : vector<8xf32>
              affine.store %113, %alloca[3] : memref<4xvector<8xf32>>
              %114 = affine.apply #map20(%arg8, %arg9)
              %115 = memref.load %17[%arg6, %114] : memref<1x2048xf32>
              %116 = vector.broadcast %115 : f32 to vector<8xf32>
              %117 = vector.load %arg2[%37, %arg7] : memref<512x512xf32>, vector<8xf32>
              %118 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %119 = vector.fma %116, %117, %118 : vector<8xf32>
              affine.store %119, %alloca[3] : memref<4xvector<8xf32>>
              %120 = affine.apply #map21(%arg8, %arg9)
              %121 = memref.load %17[%arg6, %120] : memref<1x2048xf32>
              %122 = vector.broadcast %121 : f32 to vector<8xf32>
              %123 = vector.load %arg2[%45, %arg7] : memref<512x512xf32>, vector<8xf32>
              %124 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %125 = vector.fma %122, %123, %124 : vector<8xf32>
              affine.store %125, %alloca[3] : memref<4xvector<8xf32>>
              %126 = affine.apply #map22(%arg8, %arg9)
              %127 = memref.load %17[%arg6, %126] : memref<1x2048xf32>
              %128 = vector.broadcast %127 : f32 to vector<8xf32>
              %129 = vector.load %arg2[%53, %arg7] : memref<512x512xf32>, vector<8xf32>
              %130 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %131 = vector.fma %128, %129, %130 : vector<8xf32>
              affine.store %131, %alloca[3] : memref<4xvector<8xf32>>
            }
            %25 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %25, %8[%arg6, %arg7] : memref<1x2048xf32>, vector<8xf32>
            %26 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %26, %8[%arg6, %19] : memref<1x2048xf32>, vector<8xf32>
            %27 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %27, %8[%arg6, %21] : memref<1x2048xf32>, vector<8xf32>
            %28 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %28, %8[%arg6, %23] : memref<1x2048xf32>, vector<8xf32>
          }
        }
      }
      affine.yield %6, %7 : i32, i32
    }
    return
  }
}

