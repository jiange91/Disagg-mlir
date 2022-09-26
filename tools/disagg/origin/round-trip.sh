#!/bin/bash

function mkd_out() {
  mkdir -p ./out
  rm -rf ./out/*
}

# c_cgeist_llvm-dialect [opt-level] [src.c] [bin_name]
function c_cgeist_llmv-dialect() {
  mkd_out
  # Compile to LLVM-dialect
  cgeist -v -S -O$1 $2 -emit-llvm-dialect -o out/base.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base.mlir -o out/base.ll

  # Uncomment this and comment the above two if generate llvm-ir directly
  # cgeist -v -S -O$1 $2 -emit-llvm -o out/base.ll

  # From LLVM-IR to assembly
  llc -filetype=asm out/base.ll -o ./out/base.s

  # Clang compile
  which clang
  clang -O$1 ./out/base.s -o ./out/$3
  echo "Compile $2 complete"
}

# c_cgeist_mlir [opt-level] [src.c] [bin_name]
function c_cgeist_mlir() {
  mkd_out
  # Compile to LLVM-dialect
  cgeist -v -S -O$1 $2 -o out/base.mlir

  # lower host (multi dialects)
  mlir-opt -lower-host-to-llvm out/base.mlir -o out/base_host.mlir        
  
  # convert scf to cf
  mlir-opt -convert-scf-to-cf out/base_host.mlir -o out/base_host_scf.mlir

  # convert cf to llvm
  mlir-opt -convert-cf-to-llvm='index-bitwidth=64' out/base_host_scf.mlir -o out/base_host_scf_cf.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base_host_scf_cf.mlir -o out/base.ll

  # Uncomment this and comment the above two if generate llvm-ir directly
  # cgeist -v -S -O$1 $2 -emit-llvm -o out/base.ll

  # From LLVM-IR to assembly
  llc -filetype=asm out/base.ll -o ./out/base.s

  # Clang compile
  which clang
  clang -O$1 ./out/base.s -o ./out/$3
  echo "Compile $2 complete"
}