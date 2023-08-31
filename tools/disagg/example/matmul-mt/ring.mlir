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
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 16384, 0, 33030144, f32, 2048, 1, 1 : i32], t1 = ["ref1", 0, 0, 33030144, f32, 2048, 1, 1 : i32], t2 = ["ref2", 24576, 0, 33030144, f32, 2048, 1, 1 : i32], t3 = ["ref3", 8192, 0, 33030144, f32, 2048, 1, 1 : i32]}} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: memref<512x512xf32>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {access_mem_catcher = [["ref2", 0 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c2048 = arith.constant 2048 : index
    %c4 = arith.constant 4 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref0", 0 : i32]], alignment = 16 : i64} : <1, memref<64512x512xf32>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = rmem.slot %c0 {mem = "t0"} : (index) -> memref<4x512xf32>
    %4:3 = affine.for %arg2 = 0 to 64512 step 4 iter_args(%arg3 = %c1, %arg4 = %c0, %arg5 = %3) -> (index, index, memref<4x512xf32>) {
      %12 = arith.addi %arg3, %c1 : index
      %13 = arith.addi %arg4, %c1 : index
      %14 = rmem.slot %arg3 {mem = "t0"} : (index) -> memref<4x512xf32>
      affine.for %arg6 = 0 to 4 {
        affine.for %arg7 = 0 to 512 {
          affine.store %cst, %arg5[%arg6, %arg7] : memref<4x512xf32>
        }
      }
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg4, %0[%arg2] %c2048 0 %15 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x512xf32>
      rmem.sync %2 -> %15 : <i64>, index
      affine.yield %12, %13, %14 : index, index, memref<4x512xf32>
    }
    %5 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %5 : !llvm.ptr<i64>
    %6 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %6 : !llvm.ptr<i64>
    %7 = rmem.wrid : index
    %8 = rmem.rdma %c0, %0[%c0] %c2048 4 %7 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %9 = rmem.wrid : index
    %10 = rmem.rdma %c0, %arg0[%c0] %c2048 4 %9 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %11:5 = affine.for %arg2 = 0 to 64512 step 4 iter_args(%arg3 = %c1, %arg4 = %c0, %arg5 = %8, %arg6 = %10, %arg7 = %9) -> (index, index, memref<1x2048xf32>, memref<1x2048xf32>, index) {
      %12 = arith.addi %arg3, %c1 : index
      %13 = arith.addi %arg4, %c1 : index
      %14 = arith.addi %arg2, %c4 : index
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg3, %0[%14] %c2048 4 %15 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      %17 = rmem.wrid : index
      %18 = rmem.rdma %arg3, %arg0[%14] %c2048 4 %17 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %5 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        affine.for %arg9 = 0 to 512 step 8 {
          affine.for %arg10 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %20 = vector.load %arg5[%arg8, %arg9] : memref<1x2048xf32>, vector<8xf32>
            affine.store %20, %alloca[0] : memref<4xvector<8xf32>>
            %21 = affine.apply #map1(%arg9)
            %22 = vector.load %arg5[%arg8, %21] : memref<1x2048xf32>, vector<8xf32>
            affine.store %22, %alloca[1] : memref<4xvector<8xf32>>
            %23 = affine.apply #map2(%arg9)
            %24 = vector.load %arg5[%arg8, %23] : memref<1x2048xf32>, vector<8xf32>
            affine.store %24, %alloca[2] : memref<4xvector<8xf32>>
            %25 = affine.apply #map3(%arg9)
            %26 = vector.load %arg5[%arg8, %25] : memref<1x2048xf32>, vector<8xf32>
            affine.store %26, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg11 = 0 to 8 step 4 {
              %31 = arith.addi %arg11, %arg10 : index
              %32 = affine.apply #map4(%arg10, %arg11)
              %33 = memref.load %arg6[%arg8, %32] : memref<1x2048xf32>
              %34 = vector.broadcast %33 : f32 to vector<8xf32>
              %35 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %36 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %37 = vector.fma %34, %35, %36 : vector<8xf32>
              affine.store %37, %alloca[0] : memref<4xvector<8xf32>>
              %38 = affine.apply #map5(%arg11)
              %39 = arith.addi %38, %arg10 : index
              %40 = affine.apply #map6(%arg10, %arg11)
              %41 = memref.load %arg6[%arg8, %40] : memref<1x2048xf32>
              %42 = vector.broadcast %41 : f32 to vector<8xf32>
              %43 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %44 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %45 = vector.fma %42, %43, %44 : vector<8xf32>
              affine.store %45, %alloca[0] : memref<4xvector<8xf32>>
              %46 = affine.apply #map7(%arg11)
              %47 = arith.addi %46, %arg10 : index
              %48 = affine.apply #map8(%arg10, %arg11)
              %49 = memref.load %arg6[%arg8, %48] : memref<1x2048xf32>
              %50 = vector.broadcast %49 : f32 to vector<8xf32>
              %51 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %52 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %53 = vector.fma %50, %51, %52 : vector<8xf32>
              affine.store %53, %alloca[0] : memref<4xvector<8xf32>>
              %54 = affine.apply #map9(%arg11)
              %55 = arith.addi %54, %arg10 : index
              %56 = affine.apply #map10(%arg10, %arg11)
              %57 = memref.load %arg6[%arg8, %56] : memref<1x2048xf32>
              %58 = vector.broadcast %57 : f32 to vector<8xf32>
              %59 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %60 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %61 = vector.fma %58, %59, %60 : vector<8xf32>
              affine.store %61, %alloca[0] : memref<4xvector<8xf32>>
              %62 = affine.apply #map11(%arg10, %arg11)
              %63 = memref.load %arg6[%arg8, %62] : memref<1x2048xf32>
              %64 = vector.broadcast %63 : f32 to vector<8xf32>
              %65 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %66 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %67 = vector.fma %64, %65, %66 : vector<8xf32>
              affine.store %67, %alloca[1] : memref<4xvector<8xf32>>
              %68 = affine.apply #map12(%arg10, %arg11)
              %69 = memref.load %arg6[%arg8, %68] : memref<1x2048xf32>
              %70 = vector.broadcast %69 : f32 to vector<8xf32>
              %71 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %72 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %73 = vector.fma %70, %71, %72 : vector<8xf32>
              affine.store %73, %alloca[1] : memref<4xvector<8xf32>>
              %74 = affine.apply #map13(%arg10, %arg11)
              %75 = memref.load %arg6[%arg8, %74] : memref<1x2048xf32>
              %76 = vector.broadcast %75 : f32 to vector<8xf32>
              %77 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %78 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %79 = vector.fma %76, %77, %78 : vector<8xf32>
              affine.store %79, %alloca[1] : memref<4xvector<8xf32>>
              %80 = affine.apply #map14(%arg10, %arg11)
              %81 = memref.load %arg6[%arg8, %80] : memref<1x2048xf32>
              %82 = vector.broadcast %81 : f32 to vector<8xf32>
              %83 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %85 = vector.fma %82, %83, %84 : vector<8xf32>
              affine.store %85, %alloca[1] : memref<4xvector<8xf32>>
              %86 = affine.apply #map15(%arg10, %arg11)
              %87 = memref.load %arg6[%arg8, %86] : memref<1x2048xf32>
              %88 = vector.broadcast %87 : f32 to vector<8xf32>
              %89 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %90 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %91 = vector.fma %88, %89, %90 : vector<8xf32>
              affine.store %91, %alloca[2] : memref<4xvector<8xf32>>
              %92 = affine.apply #map16(%arg10, %arg11)
              %93 = memref.load %arg6[%arg8, %92] : memref<1x2048xf32>
              %94 = vector.broadcast %93 : f32 to vector<8xf32>
              %95 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %96 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %97 = vector.fma %94, %95, %96 : vector<8xf32>
              affine.store %97, %alloca[2] : memref<4xvector<8xf32>>
              %98 = affine.apply #map17(%arg10, %arg11)
              %99 = memref.load %arg6[%arg8, %98] : memref<1x2048xf32>
              %100 = vector.broadcast %99 : f32 to vector<8xf32>
              %101 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %102 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %103 = vector.fma %100, %101, %102 : vector<8xf32>
              affine.store %103, %alloca[2] : memref<4xvector<8xf32>>
              %104 = affine.apply #map18(%arg10, %arg11)
              %105 = memref.load %arg6[%arg8, %104] : memref<1x2048xf32>
              %106 = vector.broadcast %105 : f32 to vector<8xf32>
              %107 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %108 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %109 = vector.fma %106, %107, %108 : vector<8xf32>
              affine.store %109, %alloca[2] : memref<4xvector<8xf32>>
              %110 = affine.apply #map19(%arg10, %arg11)
              %111 = memref.load %arg6[%arg8, %110] : memref<1x2048xf32>
              %112 = vector.broadcast %111 : f32 to vector<8xf32>
              %113 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %114 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %115 = vector.fma %112, %113, %114 : vector<8xf32>
              affine.store %115, %alloca[3] : memref<4xvector<8xf32>>
              %116 = affine.apply #map20(%arg10, %arg11)
              %117 = memref.load %arg6[%arg8, %116] : memref<1x2048xf32>
              %118 = vector.broadcast %117 : f32 to vector<8xf32>
              %119 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %120 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %121 = vector.fma %118, %119, %120 : vector<8xf32>
              affine.store %121, %alloca[3] : memref<4xvector<8xf32>>
              %122 = affine.apply #map21(%arg10, %arg11)
              %123 = memref.load %arg6[%arg8, %122] : memref<1x2048xf32>
              %124 = vector.broadcast %123 : f32 to vector<8xf32>
              %125 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %126 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %127 = vector.fma %124, %125, %126 : vector<8xf32>
              affine.store %127, %alloca[3] : memref<4xvector<8xf32>>
              %128 = affine.apply #map22(%arg10, %arg11)
              %129 = memref.load %arg6[%arg8, %128] : memref<1x2048xf32>
              %130 = vector.broadcast %129 : f32 to vector<8xf32>
              %131 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %132 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %133 = vector.fma %130, %131, %132 : vector<8xf32>
              affine.store %133, %alloca[3] : memref<4xvector<8xf32>>
            }
            %27 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %27, %arg5[%arg8, %arg9] : memref<1x2048xf32>, vector<8xf32>
            %28 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %28, %arg5[%arg8, %21] : memref<1x2048xf32>, vector<8xf32>
            %29 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %29, %arg5[%arg8, %23] : memref<1x2048xf32>, vector<8xf32>
            %30 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %30, %arg5[%arg8, %25] : memref<1x2048xf32>, vector<8xf32>
          }
        }
      }
      %19 = rmem.rdma %arg4, %0[%arg2] %c2048 0 %c0 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %6 -> %c0 : <i64>, index
      affine.yield %12, %13, %16, %18, %17 : index, index, memref<1x2048xf32>, memref<1x2048xf32>, index
    }
    return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }
  func.func @main_graph_1(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: memref<512x512xf32>) -> !rmem.rmref<1, memref<64512x512xf32>> attributes {access_mem_catcher = [["ref3", 0 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c2048 = arith.constant 2048 : index
    %c4 = arith.constant 4 : index
    %c1_i64 = arith.constant 1 : i64
    %c0 = arith.constant 0 : index
    %c0_i64 = arith.constant 0 : i64
    %c1 = arith.constant 1 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref1", 0 : i32]], alignment = 16 : i64} : <1, memref<64512x512xf32>>
    %1 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %1 : !llvm.ptr<i64>
    %2 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %2 : !llvm.ptr<i64>
    %3 = rmem.slot %c0 {mem = "t1"} : (index) -> memref<4x512xf32>
    %4:3 = affine.for %arg2 = 0 to 64512 step 4 iter_args(%arg3 = %c1, %arg4 = %c0, %arg5 = %3) -> (index, index, memref<4x512xf32>) {
      %12 = arith.addi %arg3, %c1 : index
      %13 = arith.addi %arg4, %c1 : index
      %14 = rmem.slot %arg3 {mem = "t1"} : (index) -> memref<4x512xf32>
      affine.for %arg6 = 0 to 4 {
        affine.for %arg7 = 0 to 512 {
          affine.store %cst, %arg5[%arg6, %arg7] : memref<4x512xf32>
        }
      }
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg4, %0[%arg2] %c2048 0 %15 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x512xf32>
      rmem.sync %2 -> %15 : <i64>, index
      affine.yield %12, %13, %14 : index, index, memref<4x512xf32>
    }
    %5 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %5 : !llvm.ptr<i64>
    %6 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %6 : !llvm.ptr<i64>
    %7 = rmem.wrid : index
    %8 = rmem.rdma %c0, %0[%c0] %c2048 4 %7 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %9 = rmem.wrid : index
    %10 = rmem.rdma %c0, %arg0[%c0] %c2048 4 %9 {map = #map, mem = "t3"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %11:5 = affine.for %arg2 = 0 to 64512 step 4 iter_args(%arg3 = %c1, %arg4 = %c0, %arg5 = %8, %arg6 = %10, %arg7 = %9) -> (index, index, memref<1x2048xf32>, memref<1x2048xf32>, index) {
      %12 = arith.addi %arg3, %c1 : index
      %13 = arith.addi %arg4, %c1 : index
      %14 = arith.addi %arg2, %c4 : index
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg3, %0[%14] %c2048 4 %15 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      %17 = rmem.wrid : index
      %18 = rmem.rdma %arg3, %arg0[%14] %c2048 4 %17 {map = #map, mem = "t3"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %5 -> %arg7 : <i64>, index
      affine.for %arg8 = 0 to 1 {
        affine.for %arg9 = 0 to 512 step 8 {
          affine.for %arg10 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %20 = vector.load %arg5[%arg8, %arg9] : memref<1x2048xf32>, vector<8xf32>
            affine.store %20, %alloca[0] : memref<4xvector<8xf32>>
            %21 = affine.apply #map1(%arg9)
            %22 = vector.load %arg5[%arg8, %21] : memref<1x2048xf32>, vector<8xf32>
            affine.store %22, %alloca[1] : memref<4xvector<8xf32>>
            %23 = affine.apply #map2(%arg9)
            %24 = vector.load %arg5[%arg8, %23] : memref<1x2048xf32>, vector<8xf32>
            affine.store %24, %alloca[2] : memref<4xvector<8xf32>>
            %25 = affine.apply #map3(%arg9)
            %26 = vector.load %arg5[%arg8, %25] : memref<1x2048xf32>, vector<8xf32>
            affine.store %26, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg11 = 0 to 8 step 4 {
              %31 = arith.addi %arg11, %arg10 : index
              %32 = affine.apply #map4(%arg10, %arg11)
              %33 = memref.load %arg6[%arg8, %32] : memref<1x2048xf32>
              %34 = vector.broadcast %33 : f32 to vector<8xf32>
              %35 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %36 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %37 = vector.fma %34, %35, %36 : vector<8xf32>
              affine.store %37, %alloca[0] : memref<4xvector<8xf32>>
              %38 = affine.apply #map5(%arg11)
              %39 = arith.addi %38, %arg10 : index
              %40 = affine.apply #map6(%arg10, %arg11)
              %41 = memref.load %arg6[%arg8, %40] : memref<1x2048xf32>
              %42 = vector.broadcast %41 : f32 to vector<8xf32>
              %43 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %44 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %45 = vector.fma %42, %43, %44 : vector<8xf32>
              affine.store %45, %alloca[0] : memref<4xvector<8xf32>>
              %46 = affine.apply #map7(%arg11)
              %47 = arith.addi %46, %arg10 : index
              %48 = affine.apply #map8(%arg10, %arg11)
              %49 = memref.load %arg6[%arg8, %48] : memref<1x2048xf32>
              %50 = vector.broadcast %49 : f32 to vector<8xf32>
              %51 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %52 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %53 = vector.fma %50, %51, %52 : vector<8xf32>
              affine.store %53, %alloca[0] : memref<4xvector<8xf32>>
              %54 = affine.apply #map9(%arg11)
              %55 = arith.addi %54, %arg10 : index
              %56 = affine.apply #map10(%arg10, %arg11)
              %57 = memref.load %arg6[%arg8, %56] : memref<1x2048xf32>
              %58 = vector.broadcast %57 : f32 to vector<8xf32>
              %59 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %60 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %61 = vector.fma %58, %59, %60 : vector<8xf32>
              affine.store %61, %alloca[0] : memref<4xvector<8xf32>>
              %62 = affine.apply #map11(%arg10, %arg11)
              %63 = memref.load %arg6[%arg8, %62] : memref<1x2048xf32>
              %64 = vector.broadcast %63 : f32 to vector<8xf32>
              %65 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %66 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %67 = vector.fma %64, %65, %66 : vector<8xf32>
              affine.store %67, %alloca[1] : memref<4xvector<8xf32>>
              %68 = affine.apply #map12(%arg10, %arg11)
              %69 = memref.load %arg6[%arg8, %68] : memref<1x2048xf32>
              %70 = vector.broadcast %69 : f32 to vector<8xf32>
              %71 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %72 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %73 = vector.fma %70, %71, %72 : vector<8xf32>
              affine.store %73, %alloca[1] : memref<4xvector<8xf32>>
              %74 = affine.apply #map13(%arg10, %arg11)
              %75 = memref.load %arg6[%arg8, %74] : memref<1x2048xf32>
              %76 = vector.broadcast %75 : f32 to vector<8xf32>
              %77 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %78 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %79 = vector.fma %76, %77, %78 : vector<8xf32>
              affine.store %79, %alloca[1] : memref<4xvector<8xf32>>
              %80 = affine.apply #map14(%arg10, %arg11)
              %81 = memref.load %arg6[%arg8, %80] : memref<1x2048xf32>
              %82 = vector.broadcast %81 : f32 to vector<8xf32>
              %83 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %85 = vector.fma %82, %83, %84 : vector<8xf32>
              affine.store %85, %alloca[1] : memref<4xvector<8xf32>>
              %86 = affine.apply #map15(%arg10, %arg11)
              %87 = memref.load %arg6[%arg8, %86] : memref<1x2048xf32>
              %88 = vector.broadcast %87 : f32 to vector<8xf32>
              %89 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %90 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %91 = vector.fma %88, %89, %90 : vector<8xf32>
              affine.store %91, %alloca[2] : memref<4xvector<8xf32>>
              %92 = affine.apply #map16(%arg10, %arg11)
              %93 = memref.load %arg6[%arg8, %92] : memref<1x2048xf32>
              %94 = vector.broadcast %93 : f32 to vector<8xf32>
              %95 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %96 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %97 = vector.fma %94, %95, %96 : vector<8xf32>
              affine.store %97, %alloca[2] : memref<4xvector<8xf32>>
              %98 = affine.apply #map17(%arg10, %arg11)
              %99 = memref.load %arg6[%arg8, %98] : memref<1x2048xf32>
              %100 = vector.broadcast %99 : f32 to vector<8xf32>
              %101 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %102 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %103 = vector.fma %100, %101, %102 : vector<8xf32>
              affine.store %103, %alloca[2] : memref<4xvector<8xf32>>
              %104 = affine.apply #map18(%arg10, %arg11)
              %105 = memref.load %arg6[%arg8, %104] : memref<1x2048xf32>
              %106 = vector.broadcast %105 : f32 to vector<8xf32>
              %107 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %108 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %109 = vector.fma %106, %107, %108 : vector<8xf32>
              affine.store %109, %alloca[2] : memref<4xvector<8xf32>>
              %110 = affine.apply #map19(%arg10, %arg11)
              %111 = memref.load %arg6[%arg8, %110] : memref<1x2048xf32>
              %112 = vector.broadcast %111 : f32 to vector<8xf32>
              %113 = vector.load %arg1[%31, %arg9] : memref<512x512xf32>, vector<8xf32>
              %114 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %115 = vector.fma %112, %113, %114 : vector<8xf32>
              affine.store %115, %alloca[3] : memref<4xvector<8xf32>>
              %116 = affine.apply #map20(%arg10, %arg11)
              %117 = memref.load %arg6[%arg8, %116] : memref<1x2048xf32>
              %118 = vector.broadcast %117 : f32 to vector<8xf32>
              %119 = vector.load %arg1[%39, %arg9] : memref<512x512xf32>, vector<8xf32>
              %120 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %121 = vector.fma %118, %119, %120 : vector<8xf32>
              affine.store %121, %alloca[3] : memref<4xvector<8xf32>>
              %122 = affine.apply #map21(%arg10, %arg11)
              %123 = memref.load %arg6[%arg8, %122] : memref<1x2048xf32>
              %124 = vector.broadcast %123 : f32 to vector<8xf32>
              %125 = vector.load %arg1[%47, %arg9] : memref<512x512xf32>, vector<8xf32>
              %126 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %127 = vector.fma %124, %125, %126 : vector<8xf32>
              affine.store %127, %alloca[3] : memref<4xvector<8xf32>>
              %128 = affine.apply #map22(%arg10, %arg11)
              %129 = memref.load %arg6[%arg8, %128] : memref<1x2048xf32>
              %130 = vector.broadcast %129 : f32 to vector<8xf32>
              %131 = vector.load %arg1[%55, %arg9] : memref<512x512xf32>, vector<8xf32>
              %132 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %133 = vector.fma %130, %131, %132 : vector<8xf32>
              affine.store %133, %alloca[3] : memref<4xvector<8xf32>>
            }
            %27 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %27, %arg5[%arg8, %arg9] : memref<1x2048xf32>, vector<8xf32>
            %28 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %28, %arg5[%arg8, %21] : memref<1x2048xf32>, vector<8xf32>
            %29 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %29, %arg5[%arg8, %23] : memref<1x2048xf32>, vector<8xf32>
            %30 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %30, %arg5[%arg8, %25] : memref<1x2048xf32>, vector<8xf32>
          }
        }
      }
      %19 = rmem.rdma %arg4, %0[%arg2] %c2048 0 %c0 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %6 -> %c0 : <i64>, index
      affine.yield %12, %13, %16, %18, %17 : index, index, memref<1x2048xf32>, memref<1x2048xf32>, index
    }
    return %0 : !rmem.rmref<1, memref<64512x512xf32>>
  }
}

