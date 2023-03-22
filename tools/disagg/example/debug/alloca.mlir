  %alloc = memref.alloc() {alignment = 16 : i64} : memref<64512x1024xf32>

  affine.for %arg2 = 0 to 64512 step 4 {
    affine.for %arg3 = 0 to 1024 step 8 {
      affine.for %arg4 = 0 to 512 step 8 {
        %alloca = memref.alloca() {alignment = 64 : i64} : memref<4xvector<8xf32>>
        %7 = affine.load %alloca[0] : memref<4xvector<8xf32>>
        vector.store %7, %alloc[%arg2, %arg3] : memref<64512x1024xf32>, vector<8xf32>
      }
    }
  }