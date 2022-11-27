# PL-Disagg out-of-tree MLIR

## Building
```
mkdir build
cd build
cmake -G Ninja .. \
  -DMLIR_DIR=/users/Zijian/Disagg-mlir/llvm-project/build/lib/cmake/mlir \
  -DCLANG_DIR=/users/Zijian/Disagg-mlir/llvm-project/build/lib/cmake/clang \
  -DLLVM_EXTERNAL_LIT=/users/Zijian/Disagg-mlir/llvm-project/build/bin/llvm-lit \
  -DCMAKE_C_COMPILER="clang" \
  -DCMAKE_CXX_COMPILER="clang++" \
  -DCMAKE_BUILD_TYPE=DEBUG
ninja
```