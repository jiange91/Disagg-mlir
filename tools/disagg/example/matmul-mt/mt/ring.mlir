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
  func.func @_driver(%arg0: !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, %arg1: !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, %arg2: memref<512x512xf32>) attributes {llvm.emit_c_interface} {
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    scf.for %arg3 = %c0 to %c2 step %c1 {
      %0 = arith.index_cast %arg3 : index to i64
      %1 = rmem.llvm.getelementptr %arg1[%0 []] : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
      %2 = rmem.llvm.load %1 : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>) -> !rmem.rmref<1, memref<64512x512xf32>>
      %3 = rmem.llvm.getelementptr %arg0[%0 []] : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, i64) -> !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
      %4 = arith.cmpi eq, %arg3, %c0 : index
      scf.if %4 {
        func.call @run_task_0(%3, %2, %arg2) : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>) -> ()
      }
      %5 = arith.cmpi eq, %arg3, %c1 : index
      scf.if %5 {
        func.call @run_task_1(%3, %2, %arg2) : (!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>) -> ()
      }
    }
    return
  }
  func.func @main_graph__1(%arg0: !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, %arg1: !rmem.rmref<1, memref<64512x512xf32>>, %arg2: memref<512x512xf32>) attributes {access_mem_catcher = [["ref2", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
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
    %4:3 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %3) -> (index, index, memref<4x512xf32>) {
      %12 = arith.addi %arg4, %c1 : index
      %13 = arith.addi %arg5, %c1 : index
      %14 = rmem.slot %arg4 {mem = "t0"} : (index) -> memref<4x512xf32>
      affine.for %arg7 = 0 to 4 {
        affine.for %arg8 = 0 to 512 {
          affine.store %cst, %arg6[%arg7, %arg8] : memref<4x512xf32>
        }
      }
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg5, %0[%arg3] %c2048 0 %15 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x512xf32>
      rmem.sync %2 -> %15 : <i64>, index
      affine.yield %12, %13, %14 : index, index, memref<4x512xf32>
    }
    %5 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %5 : !llvm.ptr<i64>
    %6 = llvm.alloca %c1_i64 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %c0_i64, %6 : !llvm.ptr<i64>
    %7 = rmem.wrid : index
    %8 = rmem.rdma %c0, %arg1[%c0] %c2048 4 %7 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %9 = rmem.wrid : index
    %10 = rmem.rdma %c0, %0[%c0] %c2048 4 %9 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %11:5 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %8, %arg7 = %10, %arg8 = %9) -> (index, index, memref<1x2048xf32>, memref<1x2048xf32>, index) {
      %12 = arith.addi %arg4, %c1 : index
      %13 = arith.addi %arg5, %c1 : index
      %14 = arith.addi %arg3, %c4 : index
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg4, %arg1[%14] %c2048 4 %15 {map = #map, mem = "t2"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      %17 = rmem.wrid : index
      %18 = rmem.rdma %arg4, %0[%14] %c2048 4 %17 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %5 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 512 step 8 {
          affine.for %arg11 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %21 = vector.load %arg7[%arg9, %arg10] : memref<1x2048xf32>, vector<8xf32>
            affine.store %21, %alloca[0] : memref<4xvector<8xf32>>
            %22 = affine.apply #map1(%arg10)
            %23 = vector.load %arg7[%arg9, %22] : memref<1x2048xf32>, vector<8xf32>
            affine.store %23, %alloca[1] : memref<4xvector<8xf32>>
            %24 = affine.apply #map2(%arg10)
            %25 = vector.load %arg7[%arg9, %24] : memref<1x2048xf32>, vector<8xf32>
            affine.store %25, %alloca[2] : memref<4xvector<8xf32>>
            %26 = affine.apply #map3(%arg10)
            %27 = vector.load %arg7[%arg9, %26] : memref<1x2048xf32>, vector<8xf32>
            affine.store %27, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg12 = 0 to 8 step 4 {
              %32 = arith.addi %arg12, %arg11 : index
              %33 = affine.apply #map4(%arg11, %arg12)
              %34 = memref.load %arg6[%arg9, %33] : memref<1x2048xf32>
              %35 = vector.broadcast %34 : f32 to vector<8xf32>
              %36 = vector.load %arg2[%32, %arg10] : memref<512x512xf32>, vector<8xf32>
              %37 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %38 = vector.fma %35, %36, %37 : vector<8xf32>
              affine.store %38, %alloca[0] : memref<4xvector<8xf32>>
              %39 = affine.apply #map5(%arg12)
              %40 = arith.addi %39, %arg11 : index
              %41 = affine.apply #map6(%arg11, %arg12)
              %42 = memref.load %arg6[%arg9, %41] : memref<1x2048xf32>
              %43 = vector.broadcast %42 : f32 to vector<8xf32>
              %44 = vector.load %arg2[%40, %arg10] : memref<512x512xf32>, vector<8xf32>
              %45 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %46 = vector.fma %43, %44, %45 : vector<8xf32>
              affine.store %46, %alloca[0] : memref<4xvector<8xf32>>
              %47 = affine.apply #map7(%arg12)
              %48 = arith.addi %47, %arg11 : index
              %49 = affine.apply #map8(%arg11, %arg12)
              %50 = memref.load %arg6[%arg9, %49] : memref<1x2048xf32>
              %51 = vector.broadcast %50 : f32 to vector<8xf32>
              %52 = vector.load %arg2[%48, %arg10] : memref<512x512xf32>, vector<8xf32>
              %53 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %54 = vector.fma %51, %52, %53 : vector<8xf32>
              affine.store %54, %alloca[0] : memref<4xvector<8xf32>>
              %55 = affine.apply #map9(%arg12)
              %56 = arith.addi %55, %arg11 : index
              %57 = affine.apply #map10(%arg11, %arg12)
              %58 = memref.load %arg6[%arg9, %57] : memref<1x2048xf32>
              %59 = vector.broadcast %58 : f32 to vector<8xf32>
              %60 = vector.load %arg2[%56, %arg10] : memref<512x512xf32>, vector<8xf32>
              %61 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %62 = vector.fma %59, %60, %61 : vector<8xf32>
              affine.store %62, %alloca[0] : memref<4xvector<8xf32>>
              %63 = affine.apply #map11(%arg11, %arg12)
              %64 = memref.load %arg6[%arg9, %63] : memref<1x2048xf32>
              %65 = vector.broadcast %64 : f32 to vector<8xf32>
              %66 = vector.load %arg2[%32, %arg10] : memref<512x512xf32>, vector<8xf32>
              %67 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %68 = vector.fma %65, %66, %67 : vector<8xf32>
              affine.store %68, %alloca[1] : memref<4xvector<8xf32>>
              %69 = affine.apply #map12(%arg11, %arg12)
              %70 = memref.load %arg6[%arg9, %69] : memref<1x2048xf32>
              %71 = vector.broadcast %70 : f32 to vector<8xf32>
              %72 = vector.load %arg2[%40, %arg10] : memref<512x512xf32>, vector<8xf32>
              %73 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %74 = vector.fma %71, %72, %73 : vector<8xf32>
              affine.store %74, %alloca[1] : memref<4xvector<8xf32>>
              %75 = affine.apply #map13(%arg11, %arg12)
              %76 = memref.load %arg6[%arg9, %75] : memref<1x2048xf32>
              %77 = vector.broadcast %76 : f32 to vector<8xf32>
              %78 = vector.load %arg2[%48, %arg10] : memref<512x512xf32>, vector<8xf32>
              %79 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %80 = vector.fma %77, %78, %79 : vector<8xf32>
              affine.store %80, %alloca[1] : memref<4xvector<8xf32>>
              %81 = affine.apply #map14(%arg11, %arg12)
              %82 = memref.load %arg6[%arg9, %81] : memref<1x2048xf32>
              %83 = vector.broadcast %82 : f32 to vector<8xf32>
              %84 = vector.load %arg2[%56, %arg10] : memref<512x512xf32>, vector<8xf32>
              %85 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %86 = vector.fma %83, %84, %85 : vector<8xf32>
              affine.store %86, %alloca[1] : memref<4xvector<8xf32>>
              %87 = affine.apply #map15(%arg11, %arg12)
              %88 = memref.load %arg6[%arg9, %87] : memref<1x2048xf32>
              %89 = vector.broadcast %88 : f32 to vector<8xf32>
              %90 = vector.load %arg2[%32, %arg10] : memref<512x512xf32>, vector<8xf32>
              %91 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %92 = vector.fma %89, %90, %91 : vector<8xf32>
              affine.store %92, %alloca[2] : memref<4xvector<8xf32>>
              %93 = affine.apply #map16(%arg11, %arg12)
              %94 = memref.load %arg6[%arg9, %93] : memref<1x2048xf32>
              %95 = vector.broadcast %94 : f32 to vector<8xf32>
              %96 = vector.load %arg2[%40, %arg10] : memref<512x512xf32>, vector<8xf32>
              %97 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %98 = vector.fma %95, %96, %97 : vector<8xf32>
              affine.store %98, %alloca[2] : memref<4xvector<8xf32>>
              %99 = affine.apply #map17(%arg11, %arg12)
              %100 = memref.load %arg6[%arg9, %99] : memref<1x2048xf32>
              %101 = vector.broadcast %100 : f32 to vector<8xf32>
              %102 = vector.load %arg2[%48, %arg10] : memref<512x512xf32>, vector<8xf32>
              %103 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %104 = vector.fma %101, %102, %103 : vector<8xf32>
              affine.store %104, %alloca[2] : memref<4xvector<8xf32>>
              %105 = affine.apply #map18(%arg11, %arg12)
              %106 = memref.load %arg6[%arg9, %105] : memref<1x2048xf32>
              %107 = vector.broadcast %106 : f32 to vector<8xf32>
              %108 = vector.load %arg2[%56, %arg10] : memref<512x512xf32>, vector<8xf32>
              %109 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %110 = vector.fma %107, %108, %109 : vector<8xf32>
              affine.store %110, %alloca[2] : memref<4xvector<8xf32>>
              %111 = affine.apply #map19(%arg11, %arg12)
              %112 = memref.load %arg6[%arg9, %111] : memref<1x2048xf32>
              %113 = vector.broadcast %112 : f32 to vector<8xf32>
              %114 = vector.load %arg2[%32, %arg10] : memref<512x512xf32>, vector<8xf32>
              %115 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %116 = vector.fma %113, %114, %115 : vector<8xf32>
              affine.store %116, %alloca[3] : memref<4xvector<8xf32>>
              %117 = affine.apply #map20(%arg11, %arg12)
              %118 = memref.load %arg6[%arg9, %117] : memref<1x2048xf32>
              %119 = vector.broadcast %118 : f32 to vector<8xf32>
              %120 = vector.load %arg2[%40, %arg10] : memref<512x512xf32>, vector<8xf32>
              %121 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %122 = vector.fma %119, %120, %121 : vector<8xf32>
              affine.store %122, %alloca[3] : memref<4xvector<8xf32>>
              %123 = affine.apply #map21(%arg11, %arg12)
              %124 = memref.load %arg6[%arg9, %123] : memref<1x2048xf32>
              %125 = vector.broadcast %124 : f32 to vector<8xf32>
              %126 = vector.load %arg2[%48, %arg10] : memref<512x512xf32>, vector<8xf32>
              %127 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %128 = vector.fma %125, %126, %127 : vector<8xf32>
              affine.store %128, %alloca[3] : memref<4xvector<8xf32>>
              %129 = affine.apply #map22(%arg11, %arg12)
              %130 = memref.load %arg6[%arg9, %129] : memref<1x2048xf32>
              %131 = vector.broadcast %130 : f32 to vector<8xf32>
              %132 = vector.load %arg2[%56, %arg10] : memref<512x512xf32>, vector<8xf32>
              %133 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %134 = vector.fma %131, %132, %133 : vector<8xf32>
              affine.store %134, %alloca[3] : memref<4xvector<8xf32>>
            }
            %28 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %28, %arg7[%arg9, %arg10] : memref<1x2048xf32>, vector<8xf32>
            %29 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %29, %arg7[%arg9, %22] : memref<1x2048xf32>, vector<8xf32>
            %30 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %30, %arg7[%arg9, %24] : memref<1x2048xf32>, vector<8xf32>
            %31 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %31, %arg7[%arg9, %26] : memref<1x2048xf32>, vector<8xf32>
          }
        }
      }
      %19 = rmem.wrid : index
      %20 = rmem.rdma %arg5, %0[%arg3] %c2048 0 %19 {map = #map, mem = "t0"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %6 -> %19 : <i64>, index
      affine.yield %12, %13, %16, %18, %17 : index, index, memref<1x2048xf32>, memref<1x2048xf32>, index
    }
    rmem.llvm.store %0 -> %arg0 : !rmem.rmref<1, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
    return
  }
  func.func private @run_task_1(!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>) attributes {llvm.emit_c_interface, llvm.linkage = #llvm.linkage<external>}
  func.func @main_graph__0(%arg0: !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, %arg1: !rmem.rmref<1, memref<64512x512xf32>>, %arg2: memref<512x512xf32>) attributes {access_mem_catcher = [["ref3", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
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
    %4:3 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %3) -> (index, index, memref<4x512xf32>) {
      %12 = arith.addi %arg4, %c1 : index
      %13 = arith.addi %arg5, %c1 : index
      %14 = rmem.slot %arg4 {mem = "t1"} : (index) -> memref<4x512xf32>
      affine.for %arg7 = 0 to 4 {
        affine.for %arg8 = 0 to 512 {
          affine.store %cst, %arg6[%arg7, %arg8] : memref<4x512xf32>
        }
      }
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg5, %0[%arg3] %c2048 0 %15 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<4x512xf32>
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
    %10 = rmem.rdma %c0, %arg1[%c0] %c2048 4 %9 {map = #map, mem = "t3"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
    %11:5 = affine.for %arg3 = 0 to 64512 step 4 iter_args(%arg4 = %c1, %arg5 = %c0, %arg6 = %8, %arg7 = %10, %arg8 = %9) -> (index, index, memref<1x2048xf32>, memref<1x2048xf32>, index) {
      %12 = arith.addi %arg4, %c1 : index
      %13 = arith.addi %arg5, %c1 : index
      %14 = arith.addi %arg3, %c4 : index
      %15 = rmem.wrid : index
      %16 = rmem.rdma %arg4, %0[%14] %c2048 4 %15 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      %17 = rmem.wrid : index
      %18 = rmem.rdma %arg4, %arg1[%14] %c2048 4 %17 {map = #map, mem = "t3"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %5 -> %arg8 : <i64>, index
      affine.for %arg9 = 0 to 1 {
        affine.for %arg10 = 0 to 512 step 8 {
          affine.for %arg11 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %20 = vector.load %arg6[%arg9, %arg10] : memref<1x2048xf32>, vector<8xf32>
            affine.store %20, %alloca[0] : memref<4xvector<8xf32>>
            %21 = affine.apply #map1(%arg10)
            %22 = vector.load %arg6[%arg9, %21] : memref<1x2048xf32>, vector<8xf32>
            affine.store %22, %alloca[1] : memref<4xvector<8xf32>>
            %23 = affine.apply #map2(%arg10)
            %24 = vector.load %arg6[%arg9, %23] : memref<1x2048xf32>, vector<8xf32>
            affine.store %24, %alloca[2] : memref<4xvector<8xf32>>
            %25 = affine.apply #map3(%arg10)
            %26 = vector.load %arg6[%arg9, %25] : memref<1x2048xf32>, vector<8xf32>
            affine.store %26, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg12 = 0 to 8 step 4 {
              %31 = arith.addi %arg12, %arg11 : index
              %32 = affine.apply #map4(%arg11, %arg12)
              %33 = memref.load %arg7[%arg9, %32] : memref<1x2048xf32>
              %34 = vector.broadcast %33 : f32 to vector<8xf32>
              %35 = vector.load %arg2[%31, %arg10] : memref<512x512xf32>, vector<8xf32>
              %36 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %37 = vector.fma %34, %35, %36 : vector<8xf32>
              affine.store %37, %alloca[0] : memref<4xvector<8xf32>>
              %38 = affine.apply #map5(%arg12)
              %39 = arith.addi %38, %arg11 : index
              %40 = affine.apply #map6(%arg11, %arg12)
              %41 = memref.load %arg7[%arg9, %40] : memref<1x2048xf32>
              %42 = vector.broadcast %41 : f32 to vector<8xf32>
              %43 = vector.load %arg2[%39, %arg10] : memref<512x512xf32>, vector<8xf32>
              %44 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %45 = vector.fma %42, %43, %44 : vector<8xf32>
              affine.store %45, %alloca[0] : memref<4xvector<8xf32>>
              %46 = affine.apply #map7(%arg12)
              %47 = arith.addi %46, %arg11 : index
              %48 = affine.apply #map8(%arg11, %arg12)
              %49 = memref.load %arg7[%arg9, %48] : memref<1x2048xf32>
              %50 = vector.broadcast %49 : f32 to vector<8xf32>
              %51 = vector.load %arg2[%47, %arg10] : memref<512x512xf32>, vector<8xf32>
              %52 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %53 = vector.fma %50, %51, %52 : vector<8xf32>
              affine.store %53, %alloca[0] : memref<4xvector<8xf32>>
              %54 = affine.apply #map9(%arg12)
              %55 = arith.addi %54, %arg11 : index
              %56 = affine.apply #map10(%arg11, %arg12)
              %57 = memref.load %arg7[%arg9, %56] : memref<1x2048xf32>
              %58 = vector.broadcast %57 : f32 to vector<8xf32>
              %59 = vector.load %arg2[%55, %arg10] : memref<512x512xf32>, vector<8xf32>
              %60 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %61 = vector.fma %58, %59, %60 : vector<8xf32>
              affine.store %61, %alloca[0] : memref<4xvector<8xf32>>
              %62 = affine.apply #map11(%arg11, %arg12)
              %63 = memref.load %arg7[%arg9, %62] : memref<1x2048xf32>
              %64 = vector.broadcast %63 : f32 to vector<8xf32>
              %65 = vector.load %arg2[%31, %arg10] : memref<512x512xf32>, vector<8xf32>
              %66 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %67 = vector.fma %64, %65, %66 : vector<8xf32>
              affine.store %67, %alloca[1] : memref<4xvector<8xf32>>
              %68 = affine.apply #map12(%arg11, %arg12)
              %69 = memref.load %arg7[%arg9, %68] : memref<1x2048xf32>
              %70 = vector.broadcast %69 : f32 to vector<8xf32>
              %71 = vector.load %arg2[%39, %arg10] : memref<512x512xf32>, vector<8xf32>
              %72 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %73 = vector.fma %70, %71, %72 : vector<8xf32>
              affine.store %73, %alloca[1] : memref<4xvector<8xf32>>
              %74 = affine.apply #map13(%arg11, %arg12)
              %75 = memref.load %arg7[%arg9, %74] : memref<1x2048xf32>
              %76 = vector.broadcast %75 : f32 to vector<8xf32>
              %77 = vector.load %arg2[%47, %arg10] : memref<512x512xf32>, vector<8xf32>
              %78 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %79 = vector.fma %76, %77, %78 : vector<8xf32>
              affine.store %79, %alloca[1] : memref<4xvector<8xf32>>
              %80 = affine.apply #map14(%arg11, %arg12)
              %81 = memref.load %arg7[%arg9, %80] : memref<1x2048xf32>
              %82 = vector.broadcast %81 : f32 to vector<8xf32>
              %83 = vector.load %arg2[%55, %arg10] : memref<512x512xf32>, vector<8xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %85 = vector.fma %82, %83, %84 : vector<8xf32>
              affine.store %85, %alloca[1] : memref<4xvector<8xf32>>
              %86 = affine.apply #map15(%arg11, %arg12)
              %87 = memref.load %arg7[%arg9, %86] : memref<1x2048xf32>
              %88 = vector.broadcast %87 : f32 to vector<8xf32>
              %89 = vector.load %arg2[%31, %arg10] : memref<512x512xf32>, vector<8xf32>
              %90 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %91 = vector.fma %88, %89, %90 : vector<8xf32>
              affine.store %91, %alloca[2] : memref<4xvector<8xf32>>
              %92 = affine.apply #map16(%arg11, %arg12)
              %93 = memref.load %arg7[%arg9, %92] : memref<1x2048xf32>
              %94 = vector.broadcast %93 : f32 to vector<8xf32>
              %95 = vector.load %arg2[%39, %arg10] : memref<512x512xf32>, vector<8xf32>
              %96 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %97 = vector.fma %94, %95, %96 : vector<8xf32>
              affine.store %97, %alloca[2] : memref<4xvector<8xf32>>
              %98 = affine.apply #map17(%arg11, %arg12)
              %99 = memref.load %arg7[%arg9, %98] : memref<1x2048xf32>
              %100 = vector.broadcast %99 : f32 to vector<8xf32>
              %101 = vector.load %arg2[%47, %arg10] : memref<512x512xf32>, vector<8xf32>
              %102 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %103 = vector.fma %100, %101, %102 : vector<8xf32>
              affine.store %103, %alloca[2] : memref<4xvector<8xf32>>
              %104 = affine.apply #map18(%arg11, %arg12)
              %105 = memref.load %arg7[%arg9, %104] : memref<1x2048xf32>
              %106 = vector.broadcast %105 : f32 to vector<8xf32>
              %107 = vector.load %arg2[%55, %arg10] : memref<512x512xf32>, vector<8xf32>
              %108 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %109 = vector.fma %106, %107, %108 : vector<8xf32>
              affine.store %109, %alloca[2] : memref<4xvector<8xf32>>
              %110 = affine.apply #map19(%arg11, %arg12)
              %111 = memref.load %arg7[%arg9, %110] : memref<1x2048xf32>
              %112 = vector.broadcast %111 : f32 to vector<8xf32>
              %113 = vector.load %arg2[%31, %arg10] : memref<512x512xf32>, vector<8xf32>
              %114 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %115 = vector.fma %112, %113, %114 : vector<8xf32>
              affine.store %115, %alloca[3] : memref<4xvector<8xf32>>
              %116 = affine.apply #map20(%arg11, %arg12)
              %117 = memref.load %arg7[%arg9, %116] : memref<1x2048xf32>
              %118 = vector.broadcast %117 : f32 to vector<8xf32>
              %119 = vector.load %arg2[%39, %arg10] : memref<512x512xf32>, vector<8xf32>
              %120 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %121 = vector.fma %118, %119, %120 : vector<8xf32>
              affine.store %121, %alloca[3] : memref<4xvector<8xf32>>
              %122 = affine.apply #map21(%arg11, %arg12)
              %123 = memref.load %arg7[%arg9, %122] : memref<1x2048xf32>
              %124 = vector.broadcast %123 : f32 to vector<8xf32>
              %125 = vector.load %arg2[%47, %arg10] : memref<512x512xf32>, vector<8xf32>
              %126 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %127 = vector.fma %124, %125, %126 : vector<8xf32>
              affine.store %127, %alloca[3] : memref<4xvector<8xf32>>
              %128 = affine.apply #map22(%arg11, %arg12)
              %129 = memref.load %arg7[%arg9, %128] : memref<1x2048xf32>
              %130 = vector.broadcast %129 : f32 to vector<8xf32>
              %131 = vector.load %arg2[%55, %arg10] : memref<512x512xf32>, vector<8xf32>
              %132 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %133 = vector.fma %130, %131, %132 : vector<8xf32>
              affine.store %133, %alloca[3] : memref<4xvector<8xf32>>
            }
            %27 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %27, %arg6[%arg9, %arg10] : memref<1x2048xf32>, vector<8xf32>
            %28 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %28, %arg6[%arg9, %21] : memref<1x2048xf32>, vector<8xf32>
            %29 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %29, %arg6[%arg9, %23] : memref<1x2048xf32>, vector<8xf32>
            %30 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %30, %arg6[%arg9, %25] : memref<1x2048xf32>, vector<8xf32>
          }
        }
      }
      %19 = rmem.rdma %arg5, %0[%arg3] %c2048 0 %c0 {map = #map, mem = "t1"} : (index, !rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<1x2048xf32>
      rmem.sync %6 -> %c0 : <i64>, index
      affine.yield %12, %13, %16, %18, %17 : index, index, memref<1x2048xf32>, memref<1x2048xf32>, index
    }
    rmem.llvm.store %0 -> %arg0 : !rmem.rmref<1, memref<64512x512xf32>>, !llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>
    return
  }
  func.func private @run_task_0(!llvm.ptr<!rmem.rmref<1, memref<64512x512xf32>>>, !rmem.rmref<1, memref<64512x512xf32>>, memref<512x512xf32>) attributes {llvm.emit_c_interface, llvm.linkage = #llvm.linkage<external>}
}

