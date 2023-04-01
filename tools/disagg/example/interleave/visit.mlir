module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @arc() {addr_space = 0 : i32, 
    "remote_target" = 1,
    "rel_types" = [
      !rmem.rmref<1, !llvm.ptr<struct<"struct.rarc", (!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>, array<56 x i8>)>>>
    ]
  } : !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>
  llvm.func @printf(!llvm.ptr<i8>, ...) -> i32
  llvm.mlir.global internal constant @str0("Exec time %.5f s\0A\00") {addr_space = 0 : i32}
  func.func @main() -> i32 attributes {llvm.linkage = #llvm.linkage<external>} {
    %cst = arith.constant 1.000000e+06 : f64
    %c0_i32 = arith.constant 0 : i32
    call @setup() : () -> ()
    %0 = call @microtime() : () -> i64
    call @visit() : () -> ()
    %1 = call @microtime() : () -> i64
    %2 = llvm.mlir.addressof @str0 : !llvm.ptr<array<18 x i8>>
    %3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<18 x i8>>) -> !llvm.ptr<i8>
    %4 = arith.subi %1, %0 : i64
    %5 = arith.sitofp %4 : i64 to f64
    %6 = arith.divf %5, %cst : f64
    %7 = llvm.call @printf(%3, %6) : (!llvm.ptr<i8>, f64) -> i32
    return %c0_i32 : i32
  }
  func.func private @setup() attributes {llvm.linkage = #llvm.linkage<external>}
  func.func private @microtime() -> i64 attributes {llvm.linkage = #llvm.linkage<external>}

  func.func @visit() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c67108864 = arith.constant 67108864 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = llvm.mlir.addressof @arc {
      "remote_target" = 1,
      "rel_types" = [
        !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<"struct.rarc", (!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>, array<56 x i8>)>>>>
      ]
    } : !llvm.ptr<ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>>
    scf.for %arg0 = %c0 to %c67108864 step %c1 {
      %1 = llvm.load %0 : !llvm.ptr<ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>>
      %2 = arith.index_cast %arg0 : index to i64
      %3 = llvm.getelementptr %1[%2] : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>, i64) -> !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>
      %4 = llvm.getelementptr %3[0, 0] : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>) -> !llvm.ptr<ptr<struct<"struct.node", (array<128 x i8>)>>>
      %5 = llvm.load %4 : !llvm.ptr<ptr<struct<"struct.node", (array<128 x i8>)>>>
      %6 = llvm.getelementptr %5[0, 0] : (!llvm.ptr<struct<"struct.node", (array<128 x i8>)>>) -> !llvm.ptr<array<128 x i8>>
      %7 = llvm.getelementptr %6[0, 0] : (!llvm.ptr<array<128 x i8>>) -> !llvm.ptr<i8>
      %8 = llvm.getelementptr %3[0, 1] : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>) -> !llvm.ptr<array<56 x i8>>
      %9 = llvm.getelementptr %8[0, 0] : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
      %10 = llvm.load %9 : !llvm.ptr<i8>
      llvm.store %10, %7 : !llvm.ptr<i8>
    }
    return
  }
}
