#!/bin/bash

function mkd_out() {
  mkdir -p ./out
  rm -rf ./out/*
}

# cmd [opt-level] [src.c]
function c_llvm-dialect_obj() {
  mkd_out
  # Compile to LLVM-dialect
  cgeist -v -S -O$1 $2 -emit-llvm-dialect -o out/base.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base.mlir -o out/base.ll

  # Uncomment this and comment the above two if generate llvm-ir directly
  # cgeist -v -S -O$1 $2 -emit-llvm -o out/base.ll

  # From LLVM-IR to assembly
  llc -filetype=obj out/base.ll -o ./out/base.o
  echo "Compile $2 complete"
}

# cmd [opt-level] [src.c]
function c_high_obj() {
  mkd_out
  cgeist -v -S -std=c11 -O$1 -g -memref-abi=0 $2 -o out/base.mlir

  # lower to llvm dialect
  polygeist-opt --convert-polygeist-to-llvm out/base.mlir -o out/base_llvm.mlir

  # Translate to llvm ir
  mlir-translate --disable-i2p-p2i-opt -mlir-to-llvmir out/base_llvm.mlir -o out/base.ll

  llc -filetype=obj -relocation-model=pic out/base.ll -o ./out/base.o
  echo "Compile $2 complete"
}

# cmd [lowered.mlir]
function c_from_lowered() {
  mkd_out

  # lower to llvm dialect
  polygeist-opt --convert-polygeist-to-llvm $1 -o out/base_llvm.mlir

  # Translate to llvm ir
  mlir-translate --disable-i2p-p2i-opt -mlir-to-llvmir out/base_llvm.mlir -o out/base.ll

  llc -filetype=obj -relocation-model=pic out/base.ll -o ./out/base.o
  echo "Compile $1 complete"
}