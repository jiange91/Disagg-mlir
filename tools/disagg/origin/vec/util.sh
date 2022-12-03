
function after_disagg_passes() {
  polygeist-opt --pass-pipeline="cse,canonicalize,convert-polygeist-to-llvm" $1 | mlir-translate --mlir-to-llvmir -o out/base.ll
  clang-b++ -std=c++14 -c out/base.ll -o /home/wuklab/projects/pl-zijian/raw_eth_pktgen/from_mlir/manual/base.o
}
