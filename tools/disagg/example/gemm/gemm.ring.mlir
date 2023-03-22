#map = affine_map<(d0) -> (d0 * 1024)>
#map1 = affine_map<(d0) -> (0)>
#map2 = affine_map<(d0) -> (d0 * 512)>
#map3 = affine_map<(d0) -> (d0 + 1024)>
#map4 = affine_map<(d0) -> (d0 + 2048)>
#map5 = affine_map<(d0) -> (d0 + 3072)>
#map6 = affine_map<(d0, d1) -> (d0 + d1)>
#map7 = affine_map<(d0, d1, d2) -> (d0 + d1 * 1024 + d2 * 1024)>
#map8 = affine_map<(d0, d1) -> (d0 + d1 + 1)>
#map9 = affine_map<(d0, d1, d2) -> (d0 + d1 * 1024 + d2 * 1024 + 1024)>
#map10 = affine_map<(d0, d1) -> (d0 + d1 + 2)>
#map11 = affine_map<(d0, d1, d2) -> (d0 + d1 * 1024 + d2 * 1024 + 2048)>
#map12 = affine_map<(d0, d1) -> (d0 + d1 + 3)>
#map13 = affine_map<(d0, d1, d2) -> (d0 + d1 * 1024 + d2 * 1024 + 3072)>
#map14 = affine_map<(d0, d1) -> (d0 + d1 + 512)>
#map15 = affine_map<(d0, d1) -> (d0 + d1 + 513)>
#map16 = affine_map<(d0, d1) -> (d0 + d1 + 514)>
#map17 = affine_map<(d0, d1) -> (d0 + d1 + 515)>
#map18 = affine_map<(d0, d1) -> (d0 + d1 + 1024)>
#map19 = affine_map<(d0, d1) -> (d0 + d1 + 1025)>
#map20 = affine_map<(d0, d1) -> (d0 + d1 + 1026)>
#map21 = affine_map<(d0, d1) -> (d0 + d1 + 1027)>
#map22 = affine_map<(d0, d1) -> (d0 + d1 + 1536)>
#map23 = affine_map<(d0, d1) -> (d0 + d1 + 1537)>
#map24 = affine_map<(d0, d1) -> (d0 + d1 + 1538)>
#map25 = affine_map<(d0, d1) -> (d0 + d1 + 1539)>
module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu"} {
  func.func @main_graph(%arg0: !rmem.rmref<1, memref<64512x512xf32>>, %arg1: !rmem.rmref<1, memref<512x1024xf32>>) -> !rmem.rmref<1, memref<64512x1024xf32>> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %c8 = arith.constant 8 : index
    %c8192 = arith.constant 8192 : index
    %c4096 = arith.constant 4096 : index
    %c524288 = arith.constant 524288 : index
    %c4 = arith.constant 4 : index
    %c2048 = arith.constant 2048 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %c2 = arith.constant 2 : index
    %c3 = arith.constant 3 : index
    %cst = arith.constant 0.000000e+00 : f32
    %0 = rmem.alloc_memref(2, ) {access_mem_catcher = [["ref2", 0]], alignment = 16 : i64} : <1, memref<64512x1024xf32>>
    %alloc = memref.alloc() {alignment = 16 : i64} : memref<64512x1024xf32>
    %1 = rmem.wrid : index
    %2 = rmem.rdma %0[%c0] %c2048 -> %1 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index, index) -> memref<2x1024xf32>
    %3 = rmem.wrid : index
    %4 = rmem.rdma %0[%c2] %c2048 -> %3 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index, index) -> memref<2x1024xf32>

    %5:4 = affine.for %arg2 = 0 to 64512 step 2 
      iter_args(%arg3 = %2, %arg4 = %1, %arg5 = %4, %arg6 = %3) -> (memref<2x1024xf32>, index, memref<2x1024xf32>, index) {
      %13 = arith.addi %arg2, %c4 : index
      %14 = rmem.wrid : index
      %15 = rmem.rdma %0[%13] %c2048 -> %14 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index, index) -> memref<2x1024xf32>

      rmem.sync %arg4 : index
      affine.for %arg7 = 0 to 2 {
        affine.for %arg8 = 0 to 1024 {
          affine.store %cst, %arg3[%arg7, %arg8] : memref<2x1024xf32>
        }
      }
      affine.yield %arg5, %arg6, %15, %14 : memref<2x1024xf32>, index, memref<2x1024xf32>, index
    }


    %6 = rmem.wrid : index
    %7 = rmem.rdma %arg1[%c0] %c524288 -> %6 {map = #map1} : (!rmem.rmref<1, memref<512x1024xf32>>, index, index, index) -> memref<524288xf32>

    %8 = rmem.wrid : index
    %9 = rmem.rdma %arg0[%c0] %c4096 -> %8 {map = #map2} : (!rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<2x2048xf32>
    %10 = rmem.wrid : index
    %11 = rmem.rdma %0[%c0] %c8192 -> %10 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index, index) -> memref<2x4096xf32>

    rmem.sync %6 : index

    %12:4 = affine.for %arg2 = 0 to 64512 step 8 iter_args(%arg3 = %7, %arg4 = %9, %arg5 = %11, %arg6 = %10) -> (memref<524288xf32>, memref<2x2048xf32>, memref<2x4096xf32>, index) {

      %13 = arith.addi %arg2, %c8 : index
      %14 = rmem.wrid : index
      %15 = rmem.rdma %arg0[%13] %c4096 -> %14 {map = #map2} : (!rmem.rmref<1, memref<64512x512xf32>>, index, index, index) -> memref<2x2048xf32>
      %16 = rmem.wrid : index
      %17 = rmem.rdma %0[%13] %c8192 -> %16 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index, index) -> memref<2x4096xf32>

      rmem.sync %arg6 : index

      affine.for %arg7 = 0 to 2 {
        %18 = arith.muli %arg7, %c4 : index
        %19 = arith.addi %arg2, %18 : index
        affine.for %arg8 = 0 to 1024 step 8 {
          affine.for %arg9 = 0 to 512 step 8 {
            %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
            %20 = vector.load %arg5[%arg7, %arg8] : memref<2x4096xf32>, vector<8xf32>

            affine.store %20, %alloca[0] : memref<4xvector<8xf32>>
            %21 = arith.addi %19, %c1 : index
            %22 = affine.apply #map3(%arg8)
            %23 = vector.load %arg5[%arg7, %22] : memref<2x4096xf32>, vector<8xf32>
            affine.store %23, %alloca[1] : memref<4xvector<8xf32>>
            %24 = arith.addi %19, %c2 : index
            %25 = affine.apply #map4(%arg8)
            %26 = vector.load %arg5[%arg7, %25] : memref<2x4096xf32>, vector<8xf32>
            affine.store %26, %alloca[2] : memref<4xvector<8xf32>>
            %27 = arith.addi %19, %c3 : index
            %28 = affine.apply #map5(%arg8)
            %29 = vector.load %arg5[%arg7, %28] : memref<2x4096xf32>, vector<8xf32>
            affine.store %29, %alloca[3] : memref<4xvector<8xf32>>
            affine.for %arg10 = 0 to 8 step 4 {
              %34 = affine.apply #map6(%arg9, %arg10)
              %35 = memref.load %arg4[%arg7, %34] : memref<2x2048xf32>
              %36 = vector.broadcast %35 : f32 to vector<8xf32>
              %37 = affine.apply #map7(%arg8, %arg9, %arg10)
              %38 = vector.load %arg3[%37] : memref<524288xf32>, vector<8xf32>
              %39 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %40 = vector.fma %36, %38, %39 : vector<8xf32>
              affine.store %40, %alloca[0] : memref<4xvector<8xf32>>
              %41 = affine.apply #map8(%arg9, %arg10)
              %42 = memref.load %arg4[%arg7, %41] : memref<2x2048xf32>
              %43 = vector.broadcast %42 : f32 to vector<8xf32>
              %44 = affine.apply #map9(%arg8, %arg9, %arg10)
              %45 = vector.load %arg3[%44] : memref<524288xf32>, vector<8xf32>
              %46 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %47 = vector.fma %43, %45, %46 : vector<8xf32>
              affine.store %47, %alloca[0] : memref<4xvector<8xf32>>
              %48 = affine.apply #map10(%arg9, %arg10)
              %49 = memref.load %arg4[%arg7, %48] : memref<2x2048xf32>
              %50 = vector.broadcast %49 : f32 to vector<8xf32>
              %51 = affine.apply #map11(%arg8, %arg9, %arg10)
              %52 = vector.load %arg3[%51] : memref<524288xf32>, vector<8xf32>
              %53 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %54 = vector.fma %50, %52, %53 : vector<8xf32>
              affine.store %54, %alloca[0] : memref<4xvector<8xf32>>
              %55 = affine.apply #map12(%arg9, %arg10)
              %56 = memref.load %arg4[%arg7, %55] : memref<2x2048xf32>
              %57 = vector.broadcast %56 : f32 to vector<8xf32>
              %58 = affine.apply #map13(%arg8, %arg9, %arg10)
              %59 = vector.load %arg3[%58] : memref<524288xf32>, vector<8xf32>
              %60 = affine.load %alloca[0] : memref<4xvector<8xf32>>
              %61 = vector.fma %57, %59, %60 : vector<8xf32>
              affine.store %61, %alloca[0] : memref<4xvector<8xf32>>
              %62 = affine.apply #map14(%arg9, %arg10)
              %63 = memref.load %arg4[%arg7, %62] : memref<2x2048xf32>
              %64 = vector.broadcast %63 : f32 to vector<8xf32>
              %65 = vector.load %arg3[%37] : memref<524288xf32>, vector<8xf32>
              %66 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %67 = vector.fma %64, %65, %66 : vector<8xf32>
              affine.store %67, %alloca[1] : memref<4xvector<8xf32>>
              %68 = affine.apply #map15(%arg9, %arg10)
              %69 = memref.load %arg4[%arg7, %68] : memref<2x2048xf32>
              %70 = vector.broadcast %69 : f32 to vector<8xf32>
              %71 = vector.load %arg3[%44] : memref<524288xf32>, vector<8xf32>
              %72 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %73 = vector.fma %70, %71, %72 : vector<8xf32>
              affine.store %73, %alloca[1] : memref<4xvector<8xf32>>
              %74 = affine.apply #map16(%arg9, %arg10)
              %75 = memref.load %arg4[%arg7, %74] : memref<2x2048xf32>
              %76 = vector.broadcast %75 : f32 to vector<8xf32>
              %77 = vector.load %arg3[%51] : memref<524288xf32>, vector<8xf32>
              %78 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %79 = vector.fma %76, %77, %78 : vector<8xf32>
              affine.store %79, %alloca[1] : memref<4xvector<8xf32>>
              %80 = affine.apply #map17(%arg9, %arg10)
              %81 = memref.load %arg4[%arg7, %80] : memref<2x2048xf32>
              %82 = vector.broadcast %81 : f32 to vector<8xf32>
              %83 = vector.load %arg3[%58] : memref<524288xf32>, vector<8xf32>
              %84 = affine.load %alloca[1] : memref<4xvector<8xf32>>
              %85 = vector.fma %82, %83, %84 : vector<8xf32>
              affine.store %85, %alloca[1] : memref<4xvector<8xf32>>
              %86 = affine.apply #map18(%arg9, %arg10)
              %87 = memref.load %arg4[%arg7, %86] : memref<2x2048xf32>
              %88 = vector.broadcast %87 : f32 to vector<8xf32>
              %89 = vector.load %arg3[%37] : memref<524288xf32>, vector<8xf32>
              %90 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %91 = vector.fma %88, %89, %90 : vector<8xf32>
              affine.store %91, %alloca[2] : memref<4xvector<8xf32>>
              %92 = affine.apply #map19(%arg9, %arg10)
              %93 = memref.load %arg4[%arg7, %92] : memref<2x2048xf32>
              %94 = vector.broadcast %93 : f32 to vector<8xf32>
              %95 = vector.load %arg3[%44] : memref<524288xf32>, vector<8xf32>
              %96 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %97 = vector.fma %94, %95, %96 : vector<8xf32>
              affine.store %97, %alloca[2] : memref<4xvector<8xf32>>
              %98 = affine.apply #map20(%arg9, %arg10)
              %99 = memref.load %arg4[%arg7, %98] : memref<2x2048xf32>
              %100 = vector.broadcast %99 : f32 to vector<8xf32>
              %101 = vector.load %arg3[%51] : memref<524288xf32>, vector<8xf32>
              %102 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %103 = vector.fma %100, %101, %102 : vector<8xf32>
              affine.store %103, %alloca[2] : memref<4xvector<8xf32>>
              %104 = affine.apply #map21(%arg9, %arg10)
              %105 = memref.load %arg4[%arg7, %104] : memref<2x2048xf32>
              %106 = vector.broadcast %105 : f32 to vector<8xf32>
              %107 = vector.load %arg3[%58] : memref<524288xf32>, vector<8xf32>
              %108 = affine.load %alloca[2] : memref<4xvector<8xf32>>
              %109 = vector.fma %106, %107, %108 : vector<8xf32>
              affine.store %109, %alloca[2] : memref<4xvector<8xf32>>
              %110 = affine.apply #map22(%arg9, %arg10)
              %111 = memref.load %arg4[%arg7, %110] : memref<2x2048xf32>
              %112 = vector.broadcast %111 : f32 to vector<8xf32>
              %113 = vector.load %arg3[%37] : memref<524288xf32>, vector<8xf32>
              %114 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %115 = vector.fma %112, %113, %114 : vector<8xf32>
              affine.store %115, %alloca[3] : memref<4xvector<8xf32>>
              %116 = affine.apply #map23(%arg9, %arg10)
              %117 = memref.load %arg4[%arg7, %116] : memref<2x2048xf32>
              %118 = vector.broadcast %117 : f32 to vector<8xf32>
              %119 = vector.load %arg3[%44] : memref<524288xf32>, vector<8xf32>
              %120 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %121 = vector.fma %118, %119, %120 : vector<8xf32>
              affine.store %121, %alloca[3] : memref<4xvector<8xf32>>
              %122 = affine.apply #map24(%arg9, %arg10)
              %123 = memref.load %arg4[%arg7, %122] : memref<2x2048xf32>
              %124 = vector.broadcast %123 : f32 to vector<8xf32>
              %125 = vector.load %arg3[%51] : memref<524288xf32>, vector<8xf32>
              %126 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %127 = vector.fma %124, %125, %126 : vector<8xf32>
              affine.store %127, %alloca[3] : memref<4xvector<8xf32>>
              %128 = affine.apply #map25(%arg9, %arg10)
              %129 = memref.load %arg4[%arg7, %128] : memref<2x2048xf32>
              %130 = vector.broadcast %129 : f32 to vector<8xf32>
              %131 = vector.load %arg3[%58] : memref<524288xf32>, vector<8xf32>
              %132 = affine.load %alloca[3] : memref<4xvector<8xf32>>
              %133 = vector.fma %130, %131, %132 : vector<8xf32>
              affine.store %133, %alloca[3] : memref<4xvector<8xf32>>
            }
            %30 = affine.load %alloca[0] : memref<4xvector<8xf32>>
            vector.store %30, %alloc[%19, %arg8] : memref<64512x1024xf32>, vector<8xf32>
            %31 = affine.load %alloca[1] : memref<4xvector<8xf32>>
            vector.store %31, %alloc[%21, %arg8] : memref<64512x1024xf32>, vector<8xf32>
            %32 = affine.load %alloca[2] : memref<4xvector<8xf32>>
            vector.store %32, %alloc[%24, %arg8] : memref<64512x1024xf32>, vector<8xf32>
            %33 = affine.load %alloca[3] : memref<4xvector<8xf32>>
            vector.store %33, %alloc[%27, %arg8] : memref<64512x1024xf32>, vector<8xf32>
          }
        }
      }
      affine.yield %arg3, %15, %17, %16 : memref<524288xf32>, memref<2x2048xf32>, memref<2x4096xf32>, index
    }
    rmem.return %0 : !rmem.rmref<1, memref<64512x1024xf32>>
  }
}

