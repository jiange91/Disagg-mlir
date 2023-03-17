#map = affine_map<(d0, d1) -> (d0, d1)>
#map1 = affine_map<(d0, d1) -> (d0 * 1024 + d1)>
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
%alloc = memref.alloc() {alignment = 16 : i64} : memref<64512x1024xf32>

affine.for %arg2 = 0 to 64512 {
  affine.for %arg3 = 0 to 1024 {
    affine.store %cst, %alloc[%arg2, %arg3] {"remote_check_use" = 1} : memref<64512x1024xf32>
  }
}
