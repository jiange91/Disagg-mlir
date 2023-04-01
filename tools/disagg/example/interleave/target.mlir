module attributes {dlti.dl_spec = #dlti.dl_spec<#dlti.dl_entry<"dlti.endianness", "little">, #dlti.dl_entry<i64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f80, dense<128> : vector<2xi32>>, #dlti.dl_entry<i1, dense<8> : vector<2xi32>>, #dlti.dl_entry<i8, dense<8> : vector<2xi32>>, #dlti.dl_entry<i16, dense<16> : vector<2xi32>>, #dlti.dl_entry<i32, dense<32> : vector<2xi32>>, #dlti.dl_entry<f16, dense<16> : vector<2xi32>>, #dlti.dl_entry<f64, dense<64> : vector<2xi32>>, #dlti.dl_entry<f128, dense<128> : vector<2xi32>>>, llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", "polygeist.target-cpu" = "x86-64", "polygeist.target-features" = "+cx8,+fxsr,+mmx,+sse,+sse2,+x87", "polygeist.tune-cpu" = "generic"} {
  llvm.mlir.global external @arc() {addr_space = 0 : i32, rel_types = [!rmem.rmref<1, !llvm.ptr<!llvm.struct<"struct.rarc", (!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>, array<56 x i8>)>>>], remote_target = 1 : i64} : !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>
  func.func @visit() attributes {llvm.linkage = #llvm.linkage<external>} {
    %c67108864 = arith.constant 67108864 : index
    %c0 = arith.constant 0 : index
    %c1 = arith.constant 1 : index
    %0 = llvm.mlir.addressof @arc {
      rel_types = [!llvm.ptr<!rmem.rmref<1, !llvm.ptr<!llvm.struct<"struct.rarc", (!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>, array<56 x i8>)>>>>], 
      remote_target = 1 : i64
    } : !llvm.ptr<ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>>
    scf.for %arg0 = %c0 to %c67108864 step %c1 {
      %1 = llvm.load %0 {
        "remote_target" = 1,
        "rel_types" = [!rmem.rmref<1, !llvm.ptr<!llvm.struct<"struct.rarc", (!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>, array<56 x i8>)>>>]
      } : !llvm.ptr<ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>>
      %2 = arith.index_cast %arg0 : index to i64
      %3 = llvm.getelementptr %1[%2] {
        "remote_target" = 1
        // "rel_types" = [!rmem.rmref<1, !llvm.ptr<!llvm.struct<"struct.rarc", (!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>, array<56 x i8>)>>>]
      } : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>, i64) -> !llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>
      %4 = llvm.getelementptr %3[0, 0] {
        "remote_target" = 1
        // "rel_types" = [!rmem.rmref<1, !llvm.ptr<!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>>>]
      } : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>) -> !llvm.ptr<ptr<struct<"struct.node", (array<128 x i8>)>>>
      %5 = llvm.load %4 {
        "remote_target" = 1
        // "rel_types" = [!rmem.rmref<1, !llvm.ptr<struct<"struct.rnode", (array<128 x i8>)>>>]
      } : !llvm.ptr<ptr<struct<"struct.node", (array<128 x i8>)>>>
      %6 = llvm.getelementptr %5[0, 0] {
        "remote_target" = 1
      } : (!llvm.ptr<struct<"struct.node", (array<128 x i8>)>>) -> !llvm.ptr<array<128 x i8>>
      %7 = llvm.getelementptr %6[0, 0] {
        "remote_target" = 1
      } : (!llvm.ptr<array<128 x i8>>) -> !llvm.ptr<i8>
      %8 = llvm.getelementptr %3[0, 1] {
        "remote_target" = 1
      } : (!llvm.ptr<struct<"struct.arc", (ptr<struct<"struct.node", (array<128 x i8>)>>, array<56 x i8>)>>) -> !llvm.ptr<array<56 x i8>>
      %9 = llvm.getelementptr %8[0, 0] {
        "remote_target" = 1
      } : (!llvm.ptr<array<56 x i8>>) -> !llvm.ptr<i8>
      %10 = llvm.load %9 {"remote_target" = 1} : !llvm.ptr<i8>
      llvm.store %10, %7 {"remote_target" = 1} : !llvm.ptr<i8>
    }
    return
  }
}

