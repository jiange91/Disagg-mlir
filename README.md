## Build instructions

### Requirements 
- Working C and C++ toolchains(compiler, linker)
- cmake
- make or ninja

> Build mlir and polygeist seperately, following option 1 in the original instruction 

1. First check working gcc/clang include search path `include_dir`
```sh
gcc -E -v -
``` 
2. (MacOS) Check `root_dir`
```sh
xcrun --show-sdk-path
```

3. Build LLVM, MLIR, and Clang:
```sh
mkdir llvm-project/build
cd llvm-project/build
cmake -G Ninja ../llvm \
  -DLLVM_ENABLE_PROJECTS="mlir;clang" \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_BUILD_TYPE=Release \
  -DLLVM_INSTALL_UTILS=ON \
  -DLLVM_BINUTILS_INCDIR=/users/Zijian/gold/binutils/include \
  -DCMAKE_C_COMPILER="clang" \
  -DCMAKE_CXX_COMPILER="clang++" \
  -DC_INCLUDE_DIRS="/users/Zijian/Disagg-mlir/llvm-project/build/lib/clang/16.0.0/include:/usr/local/include:/usr/include/x86_64-linux-gnu:/usr/include" \
   -DLLVM_ENABLE_RUNTIMES="libcxx;libcxxabi;libunwind" \
  -DLIBCXXABI_USE_LLVM_UNWINDER=YES \
  -DCLANG_DEFAULT_CXX_STDLIB=libstdc++ \
  -DLIBCXX_ENABLE_EXCEPTIONS=OFF
ninja
ninja check-mlir
```

4. Build Polygeist and Disaggregation:
```sh
# at root directory
mkdir build
cd build
cmake -G Ninja .. \
  -DMLIR_DIR=$PWD/../llvm-project/build/lib/cmake/mlir \
  -DCLANG_DIR=$PWD/../llvm-project/build/lib/cmake/clang \
  -DLLVM_EXTERNAL_LIT=$PWD/../llvm-project/build/bin/llvm-lit \
  -DLLVM_TARGETS_TO_BUILD="host" \
  -DLLVM_ENABLE_ASSERTIONS=ON \
  -DCMAKE_BUILD_TYPE=DEBUG
ninja
ninja check-polygeist-opt && ninja check-cgeist
```

`ninja check-polygeist-opt` runs the tests in `Polygeist/test/polygeist-opt`
`ninja check-cgeist` runs the tests in `Polygeist/tools/cgeist/Test`
