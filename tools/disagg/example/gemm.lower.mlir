module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 4096, 8064, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 262144, 1, 1], t2 = ["ref2", 269492224, 0, 33030144, f32, 4096, 8064, 1]}} {
  llvm.func @malloc(i64) -> !llvm.ptr<i8>
  llvm.func @rsync(!llvm.ptr<i64>, i64)
  llvm.func @rdma_req(i64, i64, i64, i64, i32)
  llvm.mlir.global external @rdma_wrid_cnt() {addr_space = 0 : i32} : i64
  llvm.mlir.global external @rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @_disagg_alloc(i32, i64) -> !llvm.ptr<i8>
  llvm.func @main_graph(%arg0: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.mlir.constant(1539 : index) : i64
    %1 = llvm.mlir.constant(1538 : index) : i64
    %2 = llvm.mlir.constant(1537 : index) : i64
    %3 = llvm.mlir.constant(1027 : index) : i64
    %4 = llvm.mlir.constant(1026 : index) : i64
    %5 = llvm.mlir.constant(1025 : index) : i64
    %6 = llvm.mlir.constant(515 : index) : i64
    %7 = llvm.mlir.constant(514 : index) : i64
    %8 = llvm.mlir.constant(513 : index) : i64
    %9 = llvm.mlir.constant(1536 : index) : i64
    %10 = llvm.mlir.constant(1024 : index) : i64
    %11 = llvm.mlir.constant(2048 : index) : i64
    %12 = llvm.mlir.constant(4 : i32) : i32
    %13 = llvm.mlir.constant(262144 : i64) : i64
    %14 = llvm.mlir.constant(262144 : index) : i64
    %15 = llvm.mlir.constant(0 : i32) : i32
    %16 = llvm.mlir.constant(8064 : i64) : i64
    %17 = llvm.mlir.constant(4 : i64) : i64
    %18 = llvm.mlir.constant(4096 : i64) : i64
    %19 = llvm.mlir.constant(3735928559 : index) : i64
    %20 = llvm.mlir.constant(16 : index) : i64
    %21 = llvm.mlir.constant(2 : i32) : i32
    %22 = llvm.mlir.constant(4 : index) : i64
    %23 = llvm.mlir.constant(8 : index) : i64
    %24 = llvm.mlir.constant(1 : i64) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(0 : i64) : i64
    %27 = llvm.mlir.constant(1 : index) : i64
    %28 = llvm.mlir.constant(2 : index) : i64
    %29 = llvm.mlir.constant(3 : index) : i64
    %30 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %31 = llvm.mlir.constant(64512 : index) : i64
    %32 = llvm.mlir.constant(512 : index) : i64
    %33 = llvm.mlir.null : !llvm.ptr<f32>
    %34 = llvm.getelementptr %33[33030144] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %35 = llvm.ptrtoint %34 : !llvm.ptr<f32> to i64
    %36 = llvm.add %35, %20  : i64
    %37 = llvm.call @_disagg_alloc(%21, %36) : (i32, i64) -> !llvm.ptr<i8>
    %38 = llvm.bitcast %37 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %39 = llvm.ptrtoint %38 : !llvm.ptr<f32> to i64
    %40 = llvm.sub %20, %27  : i64
    %41 = llvm.add %39, %40  : i64
    %42 = llvm.urem %41, %20  : i64
    %43 = llvm.sub %41, %42  : i64
    %44 = llvm.inttoptr %43 : i64 to !llvm.ptr<f32>
    %45 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %46 = llvm.insertvalue %38, %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %47 = llvm.insertvalue %44, %46[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %48 = llvm.insertvalue %25, %47[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %49 = llvm.insertvalue %31, %48[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %50 = llvm.insertvalue %32, %49[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %51 = llvm.insertvalue %32, %50[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %52 = llvm.insertvalue %27, %51[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.alloca %24 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %26, %53 : !llvm.ptr<i64>
    %54 = llvm.alloca %24 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %26, %54 : !llvm.ptr<i64>
    %55 = llvm.getelementptr %33[4096] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %56 = llvm.inttoptr %19 : i64 to !llvm.ptr<f32>
    %57 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %58 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %59 = llvm.mul %18, %17  : i64
    %60 = llvm.srem %26, %16  : i64
    %61 = llvm.mul %59, %60  : i64
    %62 = llvm.getelementptr %58[%61] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %64 = llvm.insertvalue %56, %45[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %65 = llvm.insertvalue %63, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %66 = llvm.insertvalue %25, %65[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %67 = llvm.insertvalue %23, %66[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %68 = llvm.insertvalue %32, %67[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %69 = llvm.insertvalue %32, %68[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %70 = llvm.insertvalue %27, %69[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.srem %24, %16  : i64
    %72 = llvm.mul %59, %71  : i64
    %73 = llvm.getelementptr %58[%72] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %74 = llvm.bitcast %73 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %75 = llvm.insertvalue %74, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %25, %75[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.insertvalue %23, %76[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %78 = llvm.insertvalue %32, %77[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %79 = llvm.insertvalue %32, %78[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %80 = llvm.insertvalue %27, %79[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%25, %28, %25, %70, %80 : i64, i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb1(%81: i64, %82: i64, %83: i64, %84: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %85: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb0, ^bb8
    %86 = llvm.icmp "slt" %81, %31 : i64
    llvm.cond_br %86, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %87 = llvm.add %82, %27  : i64
    %88 = llvm.add %83, %27  : i64
    %89 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %90 = llvm.srem %82, %16  : i64
    %91 = llvm.mul %59, %90  : i64
    %92 = llvm.getelementptr %89[%91] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %93 = llvm.bitcast %92 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %94 = llvm.insertvalue %93, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.insertvalue %25, %94[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.insertvalue %23, %95[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.insertvalue %32, %96[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %98 = llvm.insertvalue %32, %97[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %99 = llvm.insertvalue %27, %98[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb3(%25 : i64)
  ^bb3(%100: i64):  // 2 preds: ^bb2, ^bb7
    %101 = llvm.icmp "slt" %100, %23 : i64
    llvm.cond_br %101, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%25 : i64)
  ^bb5(%102: i64):  // 2 preds: ^bb4, ^bb6
    %103 = llvm.icmp "slt" %102, %32 : i64
    llvm.cond_br %103, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %104 = llvm.extractvalue %84[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.mul %100, %32  : i64
    %106 = llvm.add %105, %102  : i64
    %107 = llvm.getelementptr %104[%106] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %30, %107 : !llvm.ptr<f32>
    %108 = llvm.add %102, %27  : i64
    llvm.br ^bb5(%108 : i64)
  ^bb7:  // pred: ^bb5
    %109 = llvm.add %100, %27  : i64
    llvm.br ^bb3(%109 : i64)
  ^bb8:  // pred: ^bb3
    %110 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %111 = llvm.load %110 : !llvm.ptr<i64>
    %112 = llvm.add %111, %24  : i64
    llvm.store %112, %110 : !llvm.ptr<i64>
    %113 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %114 = llvm.srem %83, %16  : i64
    %115 = llvm.mul %59, %114  : i64
    %116 = llvm.getelementptr %113[%115] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %117 = llvm.bitcast %116 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %118 = llvm.ptrtoint %117 : !llvm.ptr<f32> to i64
    %119 = llvm.ptrtoint %55 : !llvm.ptr<f32> to i64
    %120 = llvm.mul %81, %32  : i64
    %121 = llvm.add %120, %25  : i64
    %122 = llvm.getelementptr %44[%121] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %123 = llvm.ptrtoint %122 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%118, %119, %123, %111, %15) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%54, %111) : (!llvm.ptr<i64>, i64) -> ()
    %124 = llvm.add %81, %23  : i64
    llvm.br ^bb1(%124, %87, %88, %85, %99 : i64, i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb9:  // pred: ^bb1
    %125 = llvm.call @malloc(%36) : (i64) -> !llvm.ptr<i8>
    %126 = llvm.bitcast %125 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %127 = llvm.ptrtoint %126 : !llvm.ptr<f32> to i64
    %128 = llvm.add %127, %40  : i64
    %129 = llvm.urem %128, %20  : i64
    %130 = llvm.sub %128, %129  : i64
    %131 = llvm.inttoptr %130 : i64 to !llvm.ptr<f32>
    %132 = llvm.alloca %24 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %26, %132 : !llvm.ptr<i64>
    %133 = llvm.alloca %24 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %26, %133 : !llvm.ptr<i64>
    %134 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %135 = llvm.load %134 : !llvm.ptr<i64>
    %136 = llvm.add %135, %24  : i64
    llvm.store %136, %134 : !llvm.ptr<i64>
    %137 = llvm.getelementptr %33[262144] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %138 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %139 = llvm.mul %13, %17  : i64
    %140 = llvm.mul %139, %26  : i64
    %141 = llvm.getelementptr %138[%140] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %142 = llvm.bitcast %141 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %143 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %144 = llvm.insertvalue %56, %143[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %145 = llvm.insertvalue %142, %144[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %146 = llvm.insertvalue %25, %145[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %147 = llvm.insertvalue %14, %146[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %148 = llvm.insertvalue %27, %147[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %149 = llvm.ptrtoint %142 : !llvm.ptr<f32> to i64
    %150 = llvm.ptrtoint %137 : !llvm.ptr<f32> to i64
    %151 = llvm.extractvalue %arg1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %152 = llvm.extractvalue %arg1[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %153 = llvm.add %152, %25  : i64
    %154 = llvm.getelementptr %151[%153] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%149, %150, %155, %135, %12) : (i64, i64, i64, i64, i32) -> ()
    %156 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %157 = llvm.getelementptr %156[%61] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %158 = llvm.bitcast %157 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %159 = llvm.insertvalue %158, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %160 = llvm.insertvalue %25, %159[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %161 = llvm.insertvalue %28, %160[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %162 = llvm.insertvalue %11, %161[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %163 = llvm.insertvalue %11, %162[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %164 = llvm.insertvalue %27, %163[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %165 = llvm.ptrtoint %158 : !llvm.ptr<f32> to i64
    %166 = llvm.ptrtoint %55 : !llvm.ptr<f32> to i64
    %167 = llvm.extractvalue %arg0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %168 = llvm.extractvalue %arg0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %169 = llvm.add %168, %25  : i64
    %170 = llvm.getelementptr %167[%169] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %171 = llvm.ptrtoint %170 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%165, %166, %171, %26, %12) : (i64, i64, i64, i64, i32) -> ()
    %172 = llvm.load %134 : !llvm.ptr<i64>
    %173 = llvm.add %172, %24  : i64
    llvm.store %173, %134 : !llvm.ptr<i64>
    %174 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %175 = llvm.getelementptr %174[%61] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %176 = llvm.bitcast %175 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %177 = llvm.insertvalue %176, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %178 = llvm.insertvalue %25, %177[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %179 = llvm.insertvalue %28, %178[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.insertvalue %11, %179[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.insertvalue %11, %180[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %182 = llvm.insertvalue %27, %181[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %183 = llvm.ptrtoint %176 : !llvm.ptr<f32> to i64
    %184 = llvm.add %25, %25  : i64
    %185 = llvm.getelementptr %44[%184] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %186 = llvm.ptrtoint %185 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%183, %166, %186, %172, %12) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%132, %135) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb10(%25, %148, %164, %182, %172 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb10(%187: i64, %188: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, %189: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %190: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %191: i64):  // 2 preds: ^bb9, ^bb23
    %192 = llvm.icmp "slt" %187, %31 : i64
    llvm.cond_br %192, ^bb11, ^bb24
  ^bb11:  // pred: ^bb10
    %193 = llvm.add %187, %23  : i64
    %194 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %195 = llvm.getelementptr %194[%61] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %196 = llvm.bitcast %195 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %197 = llvm.insertvalue %196, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %198 = llvm.insertvalue %25, %197[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %199 = llvm.insertvalue %28, %198[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %200 = llvm.insertvalue %11, %199[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %201 = llvm.insertvalue %11, %200[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %202 = llvm.insertvalue %27, %201[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %203 = llvm.ptrtoint %196 : !llvm.ptr<f32> to i64
    %204 = llvm.mul %193, %32  : i64
    %205 = llvm.add %204, %168  : i64
    %206 = llvm.getelementptr %167[%205] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %207 = llvm.ptrtoint %206 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%203, %166, %207, %26, %12) : (i64, i64, i64, i64, i32) -> ()
    %208 = llvm.load %134 : !llvm.ptr<i64>
    %209 = llvm.add %208, %24  : i64
    llvm.store %209, %134 : !llvm.ptr<i64>
    %210 = llvm.load %57 : !llvm.ptr<ptr<i8>>
    %211 = llvm.getelementptr %210[%61] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %212 = llvm.bitcast %211 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %213 = llvm.insertvalue %212, %64[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %214 = llvm.insertvalue %25, %213[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %215 = llvm.insertvalue %28, %214[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %216 = llvm.insertvalue %11, %215[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %217 = llvm.insertvalue %11, %216[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %218 = llvm.insertvalue %27, %217[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %219 = llvm.ptrtoint %212 : !llvm.ptr<f32> to i64
    %220 = llvm.add %204, %25  : i64
    %221 = llvm.getelementptr %44[%220] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %222 = llvm.ptrtoint %221 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%219, %166, %222, %208, %12) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%132, %191) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb12(%25 : i64)
  ^bb12(%223: i64):  // 2 preds: ^bb11, ^bb22
    %224 = llvm.icmp "slt" %223, %28 : i64
    llvm.cond_br %224, ^bb13, ^bb23
  ^bb13:  // pred: ^bb12
    %225 = llvm.mul %223, %22  : i64
    %226 = llvm.add %187, %225  : i64
    llvm.br ^bb14(%25 : i64)
  ^bb14(%227: i64):  // 2 preds: ^bb13, ^bb21
    %228 = llvm.icmp "slt" %227, %32 : i64
    llvm.cond_br %228, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.br ^bb16(%25 : i64)
  ^bb16(%229: i64):  // 2 preds: ^bb15, ^bb20
    %230 = llvm.icmp "slt" %229, %32 : i64
    llvm.cond_br %230, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %231 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %232 = llvm.getelementptr %231[4] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %233 = llvm.ptrtoint %232 : !llvm.ptr<vector<8xf32>> to i64
    %234 = llvm.alloca %233 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    %235 = llvm.extractvalue %190[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.mul %223, %11  : i64
    %237 = llvm.add %236, %227  : i64
    %238 = llvm.getelementptr %235[%237] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %239 = llvm.bitcast %238 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %240 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %240, %234 : !llvm.ptr<vector<8xf32>>
    %241 = llvm.add %226, %27  : i64
    %242 = llvm.add %227, %32  : i64
    %243 = llvm.add %236, %242  : i64
    %244 = llvm.getelementptr %235[%243] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %245 = llvm.bitcast %244 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %246 = llvm.load %245 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %247 = llvm.getelementptr %234[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %246, %247 : !llvm.ptr<vector<8xf32>>
    %248 = llvm.add %226, %28  : i64
    %249 = llvm.add %227, %10  : i64
    %250 = llvm.add %236, %249  : i64
    %251 = llvm.getelementptr %235[%250] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %252 = llvm.bitcast %251 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %253 = llvm.load %252 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %254 = llvm.getelementptr %234[2] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %253, %254 : !llvm.ptr<vector<8xf32>>
    %255 = llvm.add %226, %29  : i64
    %256 = llvm.add %227, %9  : i64
    %257 = llvm.add %236, %256  : i64
    %258 = llvm.getelementptr %235[%257] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %259 = llvm.bitcast %258 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %260 = llvm.load %259 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %261 = llvm.getelementptr %234[3] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %260, %261 : !llvm.ptr<vector<8xf32>>
    llvm.br ^bb18(%25 : i64)
  ^bb18(%262: i64):  // 2 preds: ^bb17, ^bb19
    %263 = llvm.icmp "slt" %262, %23 : i64
    llvm.cond_br %263, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %264 = llvm.add %229, %262  : i64
    %265 = llvm.extractvalue %189[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %266 = llvm.add %236, %264  : i64
    %267 = llvm.getelementptr %265[%266] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %268 = llvm.load %267 : !llvm.ptr<f32>
    %269 = llvm.mlir.undef : vector<8xf32>
    %270 = llvm.insertelement %268, %269[%15 : i32] : vector<8xf32>
    %271 = llvm.shufflevector %270, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %272 = llvm.mul %229, %32  : i64
    %273 = llvm.add %227, %272  : i64
    %274 = llvm.mul %262, %32  : i64
    %275 = llvm.add %273, %274  : i64
    %276 = llvm.extractvalue %188[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %277 = llvm.getelementptr %276[%275] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %278 = llvm.bitcast %277 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %279 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %280 = llvm.load %234 : !llvm.ptr<vector<8xf32>>
    %281 = "llvm.intr.fmuladd"(%271, %279, %280) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %281, %234 : !llvm.ptr<vector<8xf32>>
    %282 = llvm.add %264, %27  : i64
    %283 = llvm.add %236, %282  : i64
    %284 = llvm.getelementptr %265[%283] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %285 = llvm.load %284 : !llvm.ptr<f32>
    %286 = llvm.insertelement %285, %269[%15 : i32] : vector<8xf32>
    %287 = llvm.shufflevector %286, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %288 = llvm.add %275, %32  : i64
    %289 = llvm.getelementptr %276[%288] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %290 = llvm.bitcast %289 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %291 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %292 = llvm.load %234 : !llvm.ptr<vector<8xf32>>
    %293 = "llvm.intr.fmuladd"(%287, %291, %292) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %293, %234 : !llvm.ptr<vector<8xf32>>
    %294 = llvm.add %264, %28  : i64
    %295 = llvm.add %236, %294  : i64
    %296 = llvm.getelementptr %265[%295] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %297 = llvm.load %296 : !llvm.ptr<f32>
    %298 = llvm.insertelement %297, %269[%15 : i32] : vector<8xf32>
    %299 = llvm.shufflevector %298, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %300 = llvm.add %275, %10  : i64
    %301 = llvm.getelementptr %276[%300] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %302 = llvm.bitcast %301 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %303 = llvm.load %302 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %304 = llvm.load %234 : !llvm.ptr<vector<8xf32>>
    %305 = "llvm.intr.fmuladd"(%299, %303, %304) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %305, %234 : !llvm.ptr<vector<8xf32>>
    %306 = llvm.add %264, %29  : i64
    %307 = llvm.add %236, %306  : i64
    %308 = llvm.getelementptr %265[%307] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %309 = llvm.load %308 : !llvm.ptr<f32>
    %310 = llvm.insertelement %309, %269[%15 : i32] : vector<8xf32>
    %311 = llvm.shufflevector %310, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %312 = llvm.add %275, %9  : i64
    %313 = llvm.getelementptr %276[%312] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %314 = llvm.bitcast %313 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %315 = llvm.load %314 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %316 = llvm.load %234 : !llvm.ptr<vector<8xf32>>
    %317 = "llvm.intr.fmuladd"(%311, %315, %316) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %317, %234 : !llvm.ptr<vector<8xf32>>
    %318 = llvm.add %264, %32  : i64
    %319 = llvm.add %236, %318  : i64
    %320 = llvm.getelementptr %265[%319] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %321 = llvm.load %320 : !llvm.ptr<f32>
    %322 = llvm.insertelement %321, %269[%15 : i32] : vector<8xf32>
    %323 = llvm.shufflevector %322, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %324 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %325 = llvm.load %247 : !llvm.ptr<vector<8xf32>>
    %326 = "llvm.intr.fmuladd"(%323, %324, %325) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %326, %247 : !llvm.ptr<vector<8xf32>>
    %327 = llvm.add %264, %8  : i64
    %328 = llvm.add %236, %327  : i64
    %329 = llvm.getelementptr %265[%328] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %330 = llvm.load %329 : !llvm.ptr<f32>
    %331 = llvm.insertelement %330, %269[%15 : i32] : vector<8xf32>
    %332 = llvm.shufflevector %331, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %333 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %334 = llvm.load %247 : !llvm.ptr<vector<8xf32>>
    %335 = "llvm.intr.fmuladd"(%332, %333, %334) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %335, %247 : !llvm.ptr<vector<8xf32>>
    %336 = llvm.add %264, %7  : i64
    %337 = llvm.add %236, %336  : i64
    %338 = llvm.getelementptr %265[%337] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %339 = llvm.load %338 : !llvm.ptr<f32>
    %340 = llvm.insertelement %339, %269[%15 : i32] : vector<8xf32>
    %341 = llvm.shufflevector %340, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %342 = llvm.load %302 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %343 = llvm.load %247 : !llvm.ptr<vector<8xf32>>
    %344 = "llvm.intr.fmuladd"(%341, %342, %343) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %344, %247 : !llvm.ptr<vector<8xf32>>
    %345 = llvm.add %264, %6  : i64
    %346 = llvm.add %236, %345  : i64
    %347 = llvm.getelementptr %265[%346] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %348 = llvm.load %347 : !llvm.ptr<f32>
    %349 = llvm.insertelement %348, %269[%15 : i32] : vector<8xf32>
    %350 = llvm.shufflevector %349, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %351 = llvm.load %314 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %352 = llvm.load %247 : !llvm.ptr<vector<8xf32>>
    %353 = "llvm.intr.fmuladd"(%350, %351, %352) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %353, %247 : !llvm.ptr<vector<8xf32>>
    %354 = llvm.add %264, %10  : i64
    %355 = llvm.add %236, %354  : i64
    %356 = llvm.getelementptr %265[%355] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %357 = llvm.load %356 : !llvm.ptr<f32>
    %358 = llvm.insertelement %357, %269[%15 : i32] : vector<8xf32>
    %359 = llvm.shufflevector %358, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %360 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %361 = llvm.load %254 : !llvm.ptr<vector<8xf32>>
    %362 = "llvm.intr.fmuladd"(%359, %360, %361) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %362, %254 : !llvm.ptr<vector<8xf32>>
    %363 = llvm.add %264, %5  : i64
    %364 = llvm.add %236, %363  : i64
    %365 = llvm.getelementptr %265[%364] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %366 = llvm.load %365 : !llvm.ptr<f32>
    %367 = llvm.insertelement %366, %269[%15 : i32] : vector<8xf32>
    %368 = llvm.shufflevector %367, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %369 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %370 = llvm.load %254 : !llvm.ptr<vector<8xf32>>
    %371 = "llvm.intr.fmuladd"(%368, %369, %370) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %371, %254 : !llvm.ptr<vector<8xf32>>
    %372 = llvm.add %264, %4  : i64
    %373 = llvm.add %236, %372  : i64
    %374 = llvm.getelementptr %265[%373] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %375 = llvm.load %374 : !llvm.ptr<f32>
    %376 = llvm.insertelement %375, %269[%15 : i32] : vector<8xf32>
    %377 = llvm.shufflevector %376, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %378 = llvm.load %302 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %379 = llvm.load %254 : !llvm.ptr<vector<8xf32>>
    %380 = "llvm.intr.fmuladd"(%377, %378, %379) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %380, %254 : !llvm.ptr<vector<8xf32>>
    %381 = llvm.add %264, %3  : i64
    %382 = llvm.add %236, %381  : i64
    %383 = llvm.getelementptr %265[%382] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %384 = llvm.load %383 : !llvm.ptr<f32>
    %385 = llvm.insertelement %384, %269[%15 : i32] : vector<8xf32>
    %386 = llvm.shufflevector %385, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %387 = llvm.load %314 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %388 = llvm.load %254 : !llvm.ptr<vector<8xf32>>
    %389 = "llvm.intr.fmuladd"(%386, %387, %388) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %389, %254 : !llvm.ptr<vector<8xf32>>
    %390 = llvm.add %264, %9  : i64
    %391 = llvm.add %236, %390  : i64
    %392 = llvm.getelementptr %265[%391] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %393 = llvm.load %392 : !llvm.ptr<f32>
    %394 = llvm.insertelement %393, %269[%15 : i32] : vector<8xf32>
    %395 = llvm.shufflevector %394, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %396 = llvm.load %278 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %397 = llvm.load %261 : !llvm.ptr<vector<8xf32>>
    %398 = "llvm.intr.fmuladd"(%395, %396, %397) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %398, %261 : !llvm.ptr<vector<8xf32>>
    %399 = llvm.add %264, %2  : i64
    %400 = llvm.add %236, %399  : i64
    %401 = llvm.getelementptr %265[%400] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %402 = llvm.load %401 : !llvm.ptr<f32>
    %403 = llvm.insertelement %402, %269[%15 : i32] : vector<8xf32>
    %404 = llvm.shufflevector %403, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %405 = llvm.load %290 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %406 = llvm.load %261 : !llvm.ptr<vector<8xf32>>
    %407 = "llvm.intr.fmuladd"(%404, %405, %406) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %407, %261 : !llvm.ptr<vector<8xf32>>
    %408 = llvm.add %264, %1  : i64
    %409 = llvm.add %236, %408  : i64
    %410 = llvm.getelementptr %265[%409] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %411 = llvm.load %410 : !llvm.ptr<f32>
    %412 = llvm.insertelement %411, %269[%15 : i32] : vector<8xf32>
    %413 = llvm.shufflevector %412, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %414 = llvm.load %302 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %415 = llvm.load %261 : !llvm.ptr<vector<8xf32>>
    %416 = "llvm.intr.fmuladd"(%413, %414, %415) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %416, %261 : !llvm.ptr<vector<8xf32>>
    %417 = llvm.add %264, %0  : i64
    %418 = llvm.add %236, %417  : i64
    %419 = llvm.getelementptr %265[%418] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %420 = llvm.load %419 : !llvm.ptr<f32>
    %421 = llvm.insertelement %420, %269[%15 : i32] : vector<8xf32>
    %422 = llvm.shufflevector %421, %269 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %423 = llvm.load %314 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %424 = llvm.load %261 : !llvm.ptr<vector<8xf32>>
    %425 = "llvm.intr.fmuladd"(%422, %423, %424) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %425, %261 : !llvm.ptr<vector<8xf32>>
    %426 = llvm.add %262, %22  : i64
    llvm.br ^bb18(%426 : i64)
  ^bb20:  // pred: ^bb18
    %427 = llvm.load %234 : !llvm.ptr<vector<8xf32>>
    %428 = llvm.mul %226, %32  : i64
    %429 = llvm.add %428, %227  : i64
    %430 = llvm.getelementptr %131[%429] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %431 = llvm.bitcast %430 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %427, %431 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %432 = llvm.load %247 : !llvm.ptr<vector<8xf32>>
    %433 = llvm.mul %241, %32  : i64
    %434 = llvm.add %433, %227  : i64
    %435 = llvm.getelementptr %131[%434] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %436 = llvm.bitcast %435 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %432, %436 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %437 = llvm.load %254 : !llvm.ptr<vector<8xf32>>
    %438 = llvm.mul %248, %32  : i64
    %439 = llvm.add %438, %227  : i64
    %440 = llvm.getelementptr %131[%439] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %441 = llvm.bitcast %440 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %437, %441 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %442 = llvm.load %261 : !llvm.ptr<vector<8xf32>>
    %443 = llvm.mul %255, %32  : i64
    %444 = llvm.add %443, %227  : i64
    %445 = llvm.getelementptr %131[%444] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %446 = llvm.bitcast %445 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %442, %446 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %447 = llvm.add %229, %23  : i64
    llvm.br ^bb16(%447 : i64)
  ^bb21:  // pred: ^bb16
    %448 = llvm.add %227, %23  : i64
    llvm.br ^bb14(%448 : i64)
  ^bb22:  // pred: ^bb14
    %449 = llvm.add %223, %27  : i64
    llvm.br ^bb12(%449 : i64)
  ^bb23:  // pred: ^bb12
    llvm.br ^bb10(%193, %188, %202, %218, %208 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb24:  // pred: ^bb10
    llvm.return %52 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %arg2: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.call @main_graph(%arg1, %arg2) : (!llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %0, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.return
  }
}

