#!/bin/bash

function mkd_out() {
  mkdir -p ./out
  rm -rf ./out/*
}

# c_cgeist_llvmir [opt-level] [src.c] [bin_name]
function c_cgeist_llmvir() {
  mkd_out
  # Compile to LLVM-IR, skipping MLIR steps
  cgeist -v -S -O$1 $2 -emit-llvm-dialect -o out/base.mlir

  # Translate to llvm ir
  mlir-translate -mlir-to-llvmir out/base.mlir -o out/base.ll

  # From LLVM-IR to assembly
  llc -filetype=asm out/base.ll -o ./out/base.s

  # Clang compile
  which clang
  clang -O$2 ./out/base.s -o ./out/$3
  echo "Compile $1 complete"
}
