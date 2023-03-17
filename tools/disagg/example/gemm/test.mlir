#map = affine_map<(d0, d1) -> (d0, d1)>
#amap = affine_map<(d0) -> (d0 * 1024)>

#map3 = affine_map<(d0, d1, d2) -> (d1 * 1024)>

%c0 = arith.constant 0 : index
%c1 = arith.constant 1 : index
%c2 = arith.constant 2 : index
%c3 = arith.constant 3 : index
%c4 = arith.constant 4 : index
%c1024 = arith.constant 1024 : index
%c2048 = arith.constant 2048 : index
%cst = arith.constant 0.000000e+00 : f32

// sym: ref0
// i_result: 0
%0 = rmem.alloc_memref(2, ) {alignment = 16 : i64, access_mem_catcher = ["ref0", 0]} : <1, memref<64512x1024xf32>>

affine.for %arg2 = 0 to 64512 {
  // access_mem [arg2, 0->8]
  affine.for %arg3 = 0 to 1024 {
    rmem.affine.store %cst -> %0[%arg2, %arg3] {map = #map} : f32, !rmem.rmref<1, memref<64512x1024xf32>>, index, index
  }
} {"pf_target" = 1, "nahead" = 2, "access_mem" = [["ref0", #amap, 1024]], "batch" = 2}

// %p1 = rmem.rdma %0[%c0] %c2048 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index) -> memref<2x1024xf32>
// %p2 = rmem.rdma %0[%c2] %c2048 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index) -> memref<2x1024xf32>
// affine.for %arg2 = 0 to 64512 step 2 
//   // outer loop
//   iter_args(%buf1 = %p1, %buf2 = %p2) -> (memref<2x1024xf32>, memref<2x1024xf32>) {
//   %h = arith.addi %arg2, %c4 : index
//   // rdma add 
//   %stable = rmem.rdma %0[%h] %c2048 {map = #map} : (!rmem.rmref<1, memref<64512x1024xf32>>, index, index) -> memref<2x1024xf32>
//   // sync(%arg2)
//   affine.for %k = 0 to 2 {
//     // inner loop
//     // %i = affine.apply #amap(%k)
//     // %m = memref.subview %buf1[%i][1024][1] : memref<2048xf32> to memref<1024xf32, affine_map<(d0)[s0] -> (d0 + s0)>>

//     affine.for %arg3 = 0 to 1024 {
//       affine.store %cst, %buf1[%k, %arg3] : memref<2x1024xf32>
//     }
//   }
//   affine.yield %p2, %stable : memref<2x1024xf32>, memref<2x1024xf32>
// } 