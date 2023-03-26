#map = affine_map<(d0) -> (d0 * 512)>
#map1 = affine_map<(d0) -> (0)>
#map2 = affine_map<(d0) -> (d0 + 512)>
#map3 = affine_map<(d0) -> (d0 + 1024)>
#map4 = affine_map<(d0) -> (d0 + 1536)>
#map5 = affine_map<(d0, d1) -> (d0 + d1)>
#map6 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512)>
#map7 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map8 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512 + 512)>
#map9 = affine_map<(d0, d1) -> (d0 + d1 + 2)>
#map10 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512 + 1024)>
#map11 = affine_map<(d0, d1) -> (d0 + d1 + 3)>
#map12 = affine_map<(d0, d1, d2) -> (d0 + d1 * 512 + d2 * 512 + 1536)>
#map13 = affine_map<(d0, d1) -> (d0 + d1 + 512)>
#map14 = affine_map<(d0, d1) -> (d0 + d1 + 513)>
#map15 = affine_map<(d0, d1) -> (d0 + d1 + 514)>
#map16 = affine_map<(d0, d1) -> (d0 + d1 + 515)>
#map17 = affine_map<(d0, d1) -> (d0 + d1 + 1024)>
#map18 = affine_map<(d0, d1) -> (d0 + d1 + 1025)>
#map19 = affine_map<(d0, d1) -> (d0 + d1 + 1026)>
#map20 = affine_map<(d0, d1) -> (d0 + d1 + 1027)>
#map21 = affine_map<(d0, d1) -> (d0 + d1 + 1536)>
#map22 = affine_map<(d0, d1) -> (d0 + d1 + 1537)>
#map23 = affine_map<(d0, d1) -> (d0 + d1 + 1538)>
#map24 = affine_map<(d0, d1) -> (d0 + d1 + 1539)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 4096, 8064, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 262144, 1, 1], t2 = ["ref2", 269492224, 0, 33030144, f32, 4096, 8064, 1]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x512xf32>>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c4 = arith.constant 4 : index
    %c8 = arith.constant 8 : index
    %c262144 = arith.constant 262144 : index
    %c4096 = arith.constant 4096 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64512x512xf32>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = rmem.slot %c0 {mem = "t2"} : (index) -> memref<8x512xf32>
    %4 = rmem.slot %c1 {mem = "t2"} : (index) -> memref<8x512xf32>
    %5:4 = affine.for %arg2 = 0 to 64512 step 8 iter_args(%arg3 = %c2, %arg4 = %c0, %arg5 = %3, %arg6 = %4) -> (index, index, memref<8x512xf32>, memref<8x512xf32>) {
      %14 = arith.addi %arg3, %c1 : index
      %15 = arith.addi %arg4, %c1 : index
      %16 = rmem.slot %arg3 {mem = "t2"} : (index) -> memref<8x512xf32>
      affine.for %arg7 = 0 to 8 {
        affine.for %arg8 = 0 to 512 {
          affine.store %cst, %arg5[%arg7, %arg8] : memref<8x512xf32>
        }
      }
      %17 = rmem.wrid : index
      %18 = rmem.rdma %arg4, %0[%arg2] %c4096 0 %17 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<8x512xf32>
      rmem.sync %2 -> %17 : <i64>, index
      affine.yield %14, %15, %arg6, %16 : index, index, memref<8x512xf32>, memref<8x512xf32>
    }
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64512x512xf32>
    %6 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %6 : !llvm.ptr<i64>
    %7 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %7 : !llvm.ptr<i64>
    %8 = rmem.wrid : index
    %9 = rmem.rdma %c0, %arg1[%c0] %c262144 4 %8 {map = #map1, mem = "t1"} : (index, !rmem.rmref<1, memref<512x512xf32>>, index, index, index) -> memref<262144xf32>
    %10 = rmem.rdma %c0, %arg0[%c0] %c4096 4 %c0 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<2x2048xf32>
    %11 = rmem.wrid : index
    %12 = rmem.rdma %c0, %0[%c0] %c4096 4 %11 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<2x2048xf32>
    rmem.sync %6 -> %8 : <i64>, index
    %13:6 = affine.for %arg2 = 0 to 64512 step 8 iter_args(%arg3 = %c1, %arg4 = %c0, %arg5 = %9, %arg6 = %10, %arg7 = %12, %arg8 = %11) -> (index, index, memref<262144xf32>, memref<2x2048xf32>, memref<2x2048xf32>, index) {
      %14 = arith.addi %arg3, %c1 : index
      %15 = arith.addi %arg4, %c1 : index
      %16 = arith.addi %arg2, %c8 : index
      %17 = rmem.rdma %c0, %arg0[%16] %c4096 4 %c0 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<2x2048xf32>
      %18 = rmem.wrid : index
      %19 = rmem.rdma %c0, %0[%16] %c4096 4 %18 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<2x2048xf32>
      rmem.sync %6 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 2 {
        %20 = arith.muli %arg9, %c4 : index
        %21 = arith.addi %arg2, %20 : index
        affine.for %arg10 = 0 to 512 step 8 {
          affine.for %arg11 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %22 = vector.load %arg7[%arg9, %arg10] : memref<2x2048xf32>, vector<8xf32>
            affine.store %22, %alloca[0] : memref<4xvector<8xf32>>
            %23 = arith.addi %21, %c1 : index
            %24 = affine.apply #map2(%arg10)
            %25 = vector.load %arg7[%arg9, %24] : memref<2x2048xf32>, vector<8xf32>
            affine.store %25, %alloca[1] : memref<4xvector<8xf32>>
            %26 = arith.addi %21, %c2 : index
            %27 = affine.apply #map3(%arg10)
            %28 = vector.load %arg7[%arg9, %27] : memref<2x2048xf32>, vector<8xf32>
            affine.store %28, %alloca[2] : memref<4xvector<8xf32>>
            %29 = arith.addi %21, %c3 : index
            %30 = affine.apply #map4(%arg10)
            %31 = vector.load %arg7[%arg9, %30] : memref<2x2048xf32>, vector<8xf32>
            affine.store %31, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg12 = 0 to 8 step 4 {
              %36 = affine.apply #map5(%arg11, %arg12)
              %37 = memref.load %arg6[%arg9, %36] : memref<2x2048xf32>
              %38 = vector.broadcast %37 : f32 to vector<8xf32>
              %39 = affine.apply #map6(%arg10, %arg11, %arg12)
              %40 = vector.load %arg5[%39] : memref<262144xf32>, vector<8xf32>
              %41 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %42 = vector.fma %38, %40, %41 : vector<8xf32>
              affine.store %42, %alloca[0] : memref<4xvector<8xf32>>
              %43 = affine.apply #map7(%arg11, %arg12)
              %44 = memref.load %arg6[%arg9, %43] : memref<2x2048xf32>
              %45 = vector.broadcast %44 : f32 to vector<8xf32>
              %46 = affine.apply #map8(%arg10, %arg11, %arg12)
              %47 = vector.load %arg5[%46] : memref<262144xf32>, vector<8xf32>
              %48 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %49 = vector.fma %45, %47, %48 : vector<8xf32>
              affine.store %49, %alloca[0] : memref<4xvector<8xf32>>
              %50 = affine.apply #map9(%arg11, %arg12)
              %51 = memref.load %arg6[%arg9, %50] : memref<2x2048xf32>
              %52 = vector.broadcast %51 : f32 to vector<8xf32>
              %53 = affine.apply #map10(%arg10, %arg11, %arg12)
              %54 = vector.load %arg5[%53] : memref<262144xf32>, vector<8xf32>
              %55 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %56 = vector.fma %52, %54, %55 : vector<8xf32>
              affine.store %56, %alloca[0] : memref<4xvector<8xf32>>
              %57 = affine.apply #map11(%arg11, %arg12)
              %58 = memref.load %arg6[%arg9, %57] : memref<2x2048xf32>
              %59 = vector.broadcast %58 : f32 to vector<8xf32>
              %60 = affine.apply #map12(%arg10, %arg11, %arg12)
              %61 = vector.load %arg5[%60] : memref<262144xf32>, vector<8xf32>
              %62 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %63 = vector.fma %59, %61, %62 : vector<8xf32>
              affine.store %63, %alloca[0] : memref<4xvector<8xf32>>
              %64 = affine.apply #map13(%arg11, %arg12)
              %65 = memref.load %arg6[%arg9, %64] : memref<2x2048xf32>
              %66 = vector.broadcast %65 : f32 to vector<8xf32>
              %67 = vector.load %arg5[%39] : memref<262144xf32>, vector<8xf32>
              %68 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %69 = vector.fma %66, %67, %68 : vector<8xf32>
              affine.store %69, %alloca[1] : memref<4xvector<8xf32>>
              %70 = affine.apply #map14(%arg11, %arg12)
              %71 = memref.load %arg6[%arg9, %70] : memref<2x2048xf32>
              %72 = vector.broadcast %71 : f32 to vector<8xf32>
              %73 = vector.load %arg5[%46] : memref<262144xf32>, vector<8xf32>
              %74 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %75 = vector.fma %72, %73, %74 : vector<8xf32>
              affine.store %75, %alloca[1] : memref<4xvector<8xf32>>
              %76 = affine.apply #map15(%arg11, %arg12)
              %77 = memref.load %arg6[%arg9, %76] : memref<2x2048xf32>
              %78 = vector.broadcast %77 : f32 to vector<8xf32>
              %79 = vector.load %arg5[%53] : memref<262144xf32>, vector<8xf32>
              %80 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %81 = vector.fma %78, %79, %80 : vector<8xf32>
              affine.store %81, %alloca[1] : memref<4xvector<8xf32>>
              %82 = affine.apply #map16(%arg11, %arg12)
              %83 = memref.load %arg6[%arg9, %82] : memref<2x2048xf32>
              %84 = vector.broadcast %83 : f32 to vector<8xf32>
              %85 = vector.load %arg5[%60] : memref<262144xf32>, vector<8xf32>
              %86 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %87 = vector.fma %84, %85, %86 : vector<8xf32>
              affine.store %87, %alloca[1] : memref<4xvector<8xf32>>
              %88 = affine.apply #map17(%arg11, %arg12)
              %89 = memref.load %arg6[%arg9, %88] : memref<2x2048xf32>
              %90 = vector.broadcast %89 : f32 to vector<8xf32>
              %91 = vector.load %arg5[%39] : memref<262144xf32>, vector<8xf32>
              %92 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %93 = vector.fma %90, %91, %92 : vector<8xf32>
              affine.store %93, %alloca[2] : memref<4xvector<8xf32>>
              %94 = affine.apply #map18(%arg11, %arg12)
              %95 = memref.load %arg6[%arg9, %94] : memref<2x2048xf32>
              %96 = vector.broadcast %95 : f32 to vector<8xf32>
              %97 = vector.load %arg5[%46] : memref<262144xf32>, vector<8xf32>
              %98 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %99 = vector.fma %96, %97, %98 : vector<8xf32>
              affine.store %99, %alloca[2] : memref<4xvector<8xf32>>
              %100 = affine.apply #map19(%arg11, %arg12)
              %101 = memref.load %arg6[%arg9, %100] : memref<2x2048xf32>
              %102 = vector.broadcast %101 : f32 to vector<8xf32>
              %103 = vector.load %arg5[%53] : memref<262144xf32>, vector<8xf32>
              %104 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %105 = vector.fma %102, %103, %104 : vector<8xf32>
              affine.store %105, %alloca[2] : memref<4xvector<8xf32>>
              %106 = affine.apply #map20(%arg11, %arg12)
              %107 = memref.load %arg6[%arg9, %106] : memref<2x2048xf32>
              %108 = vector.broadcast %107 : f32 to vector<8xf32>
              %109 = vector.load %arg5[%60] : memref<262144xf32>, vector<8xf32>
              %110 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %111 = vector.fma %108, %109, %110 : vector<8xf32>
              affine.store %111, %alloca[2] : memref<4xvector<8xf32>>
              %112 = affine.apply #map21(%arg11, %arg12)
              %113 = memref.load %arg6[%arg9, %112] : memref<2x2048xf32>
              %114 = vector.broadcast %113 : f32 to vector<8xf32>
              %115 = vector.load %arg5[%39] : memref<262144xf32>, vector<8xf32>
              %116 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %117 = vector.fma %114, %115, %116 : vector<8xf32>
              affine.store %117, %alloca[3] : memref<4xvector<8xf32>>
              %118 = affine.apply #map22(%arg11, %arg12)
              %119 = memref.load %arg6[%arg9, %118] : memref<2x2048xf32>
              %120 = vector.broadcast %119 : f32 to vector<8xf32>
              %121 = vector.load %arg5[%46] : memref<262144xf32>, vector<8xf32>
              %122 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %123 = vector.fma %120, %121, %122 : vector<8xf32>
              affine.store %123, %alloca[3] : memref<4xvector<8xf32>>
              %124 = affine.apply #map23(%arg11, %arg12)
              %125 = memref.load %arg6[%arg9, %124] : memref<2x2048xf32>
              %126 = vector.broadcast %125 : f32 to vector<8xf32>
              %127 = vector.load %arg5[%53] : memref<262144xf32>, vector<8xf32>
              %128 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %129 = vector.fma %126, %127, %128 : vector<8xf32>
              affine.store %129, %alloca[3] : memref<4xvector<8xf32>>
              %130 = affine.apply #map24(%arg11, %arg12)
              %131 = memref.load %arg6[%arg9, %130] : memref<2x2048xf32>
              %132 = vector.broadcast %131 : f32 to vector<8xf32>
              %133 = vector.load %arg5[%60] : memref<262144xf32>, vector<8xf32>
              %134 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %135 = vector.fma %132, %133, %134 : vector<8xf32>
              affine.store %135, %alloca[3] : memref<4xvector<8xf32>>
            }
            %32 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %32, %alloc[%21, %arg10] : memref<64512x512xf32>, vector<8xf32>
            %33 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %33, %alloc[%23, %arg10] : memref<64512x512xf32>, vector<8xf32>
            %34 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %34, %alloc[%26, %arg10] : memref<64512x512xf32>, vector<8xf32>
            %35 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %35, %alloc[%29, %arg10] : memref<64512x512xf32>, vector<8xf32>
          }
        }
      }
      affine.yield %14, %15, %arg5, %17, %19, %18 : index, index, memref<262144xf32>, memref<2x2048xf32>, memref<2x2048xf32>, index
    }
    rmem.return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }
}

