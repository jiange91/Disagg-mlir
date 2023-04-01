module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 8192, 64, 1], t1 = ["ref1", 268443648, 0, 262144, f32, 262144, 1, 1], t2 = ["ref2", 269492224, 0, 33030144, f32, 8192, 64, 1]}} {
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
    %11 = llvm.mlir.constant(8 : index) : i64
    %12 = llvm.mlir.constant(24576 : index) : i64
    %13 = llvm.mlir.constant(16384 : index) : i64
    %14 = llvm.mlir.constant(8192 : index) : i64
    %15 = llvm.mlir.constant(2048 : index) : i64
    %16 = llvm.mlir.constant(4 : i32) : i32
    %17 = llvm.mlir.constant(262144 : i64) : i64
    %18 = llvm.mlir.constant(262144 : index) : i64
    %19 = llvm.mlir.constant(0 : i32) : i32
    %20 = llvm.mlir.constant(3 : i64) : i64
    %21 = llvm.mlir.constant(2 : i64) : i64
    %22 = llvm.mlir.constant(64 : i64) : i64
    %23 = llvm.mlir.constant(4 : i64) : i64
    %24 = llvm.mlir.constant(8192 : i64) : i64
    %25 = llvm.mlir.constant(3735928559 : index) : i64
    %26 = llvm.mlir.constant(16 : index) : i64
    %27 = llvm.mlir.constant(2 : i32) : i32
    %28 = llvm.mlir.constant(64 : index) : i64
    %29 = llvm.mlir.constant(4 : index) : i64
    %30 = llvm.mlir.constant(1 : i64) : i64
    %31 = llvm.mlir.constant(0 : index) : i64
    %32 = llvm.mlir.constant(0 : i64) : i64
    %33 = llvm.mlir.constant(1 : index) : i64
    %34 = llvm.mlir.constant(2 : index) : i64
    %35 = llvm.mlir.constant(3 : index) : i64
    %36 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %37 = llvm.mlir.constant(64512 : index) : i64
    %38 = llvm.mlir.constant(512 : index) : i64
    %39 = llvm.mlir.null : !llvm.ptr<f32>
    %40 = llvm.getelementptr %39[33030144] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %41 = llvm.ptrtoint %40 : !llvm.ptr<f32> to i64
    %42 = llvm.add %41, %26  : i64
    %43 = llvm.call @_disagg_alloc(%27, %42) : (i32, i64) -> !llvm.ptr<i8>
    %44 = llvm.bitcast %43 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<f32> to i64
    %46 = llvm.sub %26, %33  : i64
    %47 = llvm.add %45, %46  : i64
    %48 = llvm.urem %47, %26  : i64
    %49 = llvm.sub %47, %48  : i64
    %50 = llvm.inttoptr %49 : i64 to !llvm.ptr<f32>
    %51 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %52 = llvm.insertvalue %44, %51[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %53 = llvm.insertvalue %50, %52[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %54 = llvm.insertvalue %31, %53[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %55 = llvm.insertvalue %37, %54[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %56 = llvm.insertvalue %38, %55[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %57 = llvm.insertvalue %38, %56[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %58 = llvm.insertvalue %33, %57[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %59 = llvm.alloca %30 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %32, %59 : !llvm.ptr<i64>
    %60 = llvm.alloca %30 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %32, %60 : !llvm.ptr<i64>
    %61 = llvm.getelementptr %39[8192] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %62 = llvm.inttoptr %25 : i64 to !llvm.ptr<f32>
    %63 = llvm.mlir.addressof @rbuf : !llvm.ptr<ptr<i8>>
    %64 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %65 = llvm.mul %24, %23  : i64
    %66 = llvm.srem %32, %22  : i64
    %67 = llvm.mul %65, %66  : i64
    %68 = llvm.getelementptr %64[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %69 = llvm.bitcast %68 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %70 = llvm.insertvalue %62, %51[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %71 = llvm.insertvalue %69, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %72 = llvm.insertvalue %31, %71[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %73 = llvm.insertvalue %26, %72[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %74 = llvm.insertvalue %38, %73[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %75 = llvm.insertvalue %38, %74[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %76 = llvm.insertvalue %33, %75[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %77 = llvm.srem %30, %22  : i64
    %78 = llvm.mul %65, %77  : i64
    %79 = llvm.getelementptr %64[%78] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %80 = llvm.bitcast %79 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %81 = llvm.insertvalue %80, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %82 = llvm.insertvalue %31, %81[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %83 = llvm.insertvalue %26, %82[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %84 = llvm.insertvalue %38, %83[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %85 = llvm.insertvalue %38, %84[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %86 = llvm.insertvalue %33, %85[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %87 = llvm.srem %21, %22  : i64
    %88 = llvm.mul %65, %87  : i64
    %89 = llvm.getelementptr %64[%88] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %90 = llvm.bitcast %89 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %91 = llvm.insertvalue %90, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %92 = llvm.insertvalue %31, %91[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %93 = llvm.insertvalue %26, %92[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %94 = llvm.insertvalue %38, %93[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %95 = llvm.insertvalue %38, %94[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %96 = llvm.insertvalue %33, %95[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %97 = llvm.srem %20, %22  : i64
    %98 = llvm.mul %65, %97  : i64
    %99 = llvm.getelementptr %64[%98] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %100 = llvm.bitcast %99 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %101 = llvm.insertvalue %100, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %102 = llvm.insertvalue %31, %101[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %103 = llvm.insertvalue %26, %102[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %104 = llvm.insertvalue %38, %103[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %105 = llvm.insertvalue %38, %104[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %106 = llvm.insertvalue %33, %105[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb1(%31, %29, %31, %76, %86, %96, %106 : i64, i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb1(%107: i64, %108: i64, %109: i64, %110: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %111: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %112: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %113: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>):  // 2 preds: ^bb0, ^bb8
    %114 = llvm.icmp "slt" %107, %37 : i64
    llvm.cond_br %114, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %115 = llvm.add %108, %33  : i64
    %116 = llvm.add %109, %33  : i64
    %117 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %118 = llvm.srem %108, %22  : i64
    %119 = llvm.mul %65, %118  : i64
    %120 = llvm.getelementptr %117[%119] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %121 = llvm.bitcast %120 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %122 = llvm.insertvalue %121, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %123 = llvm.insertvalue %31, %122[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %124 = llvm.insertvalue %26, %123[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %125 = llvm.insertvalue %38, %124[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %126 = llvm.insertvalue %38, %125[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %127 = llvm.insertvalue %33, %126[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.br ^bb3(%31 : i64)
  ^bb3(%128: i64):  // 2 preds: ^bb2, ^bb7
    %129 = llvm.icmp "slt" %128, %26 : i64
    llvm.cond_br %129, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%31 : i64)
  ^bb5(%130: i64):  // 2 preds: ^bb4, ^bb6
    %131 = llvm.icmp "slt" %130, %38 : i64
    llvm.cond_br %131, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %132 = llvm.extractvalue %110[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %133 = llvm.mul %128, %38  : i64
    %134 = llvm.add %133, %130  : i64
    %135 = llvm.getelementptr %132[%134] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %36, %135 : !llvm.ptr<f32>
    %136 = llvm.add %130, %33  : i64
    llvm.br ^bb5(%136 : i64)
  ^bb7:  // pred: ^bb5
    %137 = llvm.add %128, %33  : i64
    llvm.br ^bb3(%137 : i64)
  ^bb8:  // pred: ^bb3
    %138 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %139 = llvm.load %138 : !llvm.ptr<i64>
    %140 = llvm.add %139, %30  : i64
    llvm.store %140, %138 : !llvm.ptr<i64>
    %141 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %142 = llvm.srem %109, %22  : i64
    %143 = llvm.mul %65, %142  : i64
    %144 = llvm.getelementptr %141[%143] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %146 = llvm.ptrtoint %145 : !llvm.ptr<f32> to i64
    %147 = llvm.ptrtoint %61 : !llvm.ptr<f32> to i64
    %148 = llvm.mul %107, %38  : i64
    %149 = llvm.add %148, %31  : i64
    %150 = llvm.getelementptr %50[%149] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %151 = llvm.ptrtoint %150 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%146, %147, %151, %139, %19) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%60, %139) : (!llvm.ptr<i64>, i64) -> ()
    %152 = llvm.add %107, %26  : i64
    llvm.br ^bb1(%152, %115, %116, %111, %112, %113, %127 : i64, i64, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)
  ^bb9:  // pred: ^bb1
    %153 = llvm.call @malloc(%42) : (i64) -> !llvm.ptr<i8>
    %154 = llvm.bitcast %153 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %155 = llvm.ptrtoint %154 : !llvm.ptr<f32> to i64
    %156 = llvm.add %155, %46  : i64
    %157 = llvm.urem %156, %26  : i64
    %158 = llvm.sub %156, %157  : i64
    %159 = llvm.inttoptr %158 : i64 to !llvm.ptr<f32>
    %160 = llvm.alloca %30 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %32, %160 : !llvm.ptr<i64>
    %161 = llvm.alloca %30 x i64 : (i64) -> !llvm.ptr<i64>
    llvm.store %32, %161 : !llvm.ptr<i64>
    %162 = llvm.mlir.addressof @rdma_wrid_cnt : !llvm.ptr<i64>
    %163 = llvm.load %162 : !llvm.ptr<i64>
    %164 = llvm.add %163, %30  : i64
    llvm.store %164, %162 : !llvm.ptr<i64>
    %165 = llvm.getelementptr %39[262144] : (!llvm.ptr<f32>) -> !llvm.ptr<f32>
    %166 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %167 = llvm.mul %17, %23  : i64
    %168 = llvm.mul %167, %32  : i64
    %169 = llvm.getelementptr %166[%168] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %170 = llvm.bitcast %169 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %171 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>
    %172 = llvm.insertvalue %62, %171[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %173 = llvm.insertvalue %170, %172[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %174 = llvm.insertvalue %31, %173[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %175 = llvm.insertvalue %18, %174[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %176 = llvm.insertvalue %33, %175[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %177 = llvm.ptrtoint %170 : !llvm.ptr<f32> to i64
    %178 = llvm.ptrtoint %165 : !llvm.ptr<f32> to i64
    %179 = llvm.extractvalue %arg1[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %180 = llvm.extractvalue %arg1[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %181 = llvm.add %180, %31  : i64
    %182 = llvm.getelementptr %179[%181] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %183 = llvm.ptrtoint %182 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%177, %178, %183, %163, %16) : (i64, i64, i64, i64, i32) -> ()
    %184 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %185 = llvm.getelementptr %184[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %186 = llvm.bitcast %185 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %187 = llvm.insertvalue %186, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %188 = llvm.insertvalue %31, %187[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %189 = llvm.insertvalue %29, %188[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %190 = llvm.insertvalue %15, %189[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %191 = llvm.insertvalue %15, %190[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %192 = llvm.insertvalue %33, %191[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %193 = llvm.ptrtoint %186 : !llvm.ptr<f32> to i64
    %194 = llvm.ptrtoint %61 : !llvm.ptr<f32> to i64
    %195 = llvm.extractvalue %arg0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %196 = llvm.extractvalue %arg0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %197 = llvm.add %196, %31  : i64
    %198 = llvm.getelementptr %195[%197] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %199 = llvm.ptrtoint %198 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%193, %194, %199, %32, %16) : (i64, i64, i64, i64, i32) -> ()
    %200 = llvm.load %162 : !llvm.ptr<i64>
    %201 = llvm.add %200, %30  : i64
    llvm.store %201, %162 : !llvm.ptr<i64>
    %202 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %203 = llvm.getelementptr %202[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %204 = llvm.bitcast %203 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %205 = llvm.insertvalue %204, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %206 = llvm.insertvalue %31, %205[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %207 = llvm.insertvalue %29, %206[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %208 = llvm.insertvalue %15, %207[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %209 = llvm.insertvalue %15, %208[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %210 = llvm.insertvalue %33, %209[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %211 = llvm.ptrtoint %204 : !llvm.ptr<f32> to i64
    %212 = llvm.add %31, %31  : i64
    %213 = llvm.getelementptr %50[%212] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %214 = llvm.ptrtoint %213 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%211, %194, %214, %200, %16) : (i64, i64, i64, i64, i32) -> ()
    %215 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %216 = llvm.getelementptr %215[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %217 = llvm.bitcast %216 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %218 = llvm.insertvalue %217, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %219 = llvm.insertvalue %31, %218[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %220 = llvm.insertvalue %29, %219[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %221 = llvm.insertvalue %15, %220[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %222 = llvm.insertvalue %15, %221[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %223 = llvm.insertvalue %33, %222[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %224 = llvm.ptrtoint %217 : !llvm.ptr<f32> to i64
    %225 = llvm.add %196, %14  : i64
    %226 = llvm.getelementptr %195[%225] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %227 = llvm.ptrtoint %226 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%224, %194, %227, %32, %16) : (i64, i64, i64, i64, i32) -> ()
    %228 = llvm.load %162 : !llvm.ptr<i64>
    %229 = llvm.add %228, %30  : i64
    llvm.store %229, %162 : !llvm.ptr<i64>
    %230 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %231 = llvm.getelementptr %230[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %232 = llvm.bitcast %231 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %233 = llvm.insertvalue %232, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %234 = llvm.insertvalue %31, %233[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %235 = llvm.insertvalue %29, %234[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %236 = llvm.insertvalue %15, %235[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %237 = llvm.insertvalue %15, %236[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %238 = llvm.insertvalue %33, %237[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %239 = llvm.ptrtoint %232 : !llvm.ptr<f32> to i64
    %240 = llvm.add %14, %31  : i64
    %241 = llvm.getelementptr %50[%240] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %242 = llvm.ptrtoint %241 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%239, %194, %242, %228, %16) : (i64, i64, i64, i64, i32) -> ()
    %243 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %244 = llvm.getelementptr %243[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %245 = llvm.bitcast %244 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %246 = llvm.insertvalue %245, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %247 = llvm.insertvalue %31, %246[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %248 = llvm.insertvalue %29, %247[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %249 = llvm.insertvalue %15, %248[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %250 = llvm.insertvalue %15, %249[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %251 = llvm.insertvalue %33, %250[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %252 = llvm.ptrtoint %245 : !llvm.ptr<f32> to i64
    %253 = llvm.add %196, %13  : i64
    %254 = llvm.getelementptr %195[%253] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %255 = llvm.ptrtoint %254 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%252, %194, %255, %32, %16) : (i64, i64, i64, i64, i32) -> ()
    %256 = llvm.load %162 : !llvm.ptr<i64>
    %257 = llvm.add %256, %30  : i64
    llvm.store %257, %162 : !llvm.ptr<i64>
    %258 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %259 = llvm.getelementptr %258[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %260 = llvm.bitcast %259 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %261 = llvm.insertvalue %260, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %262 = llvm.insertvalue %31, %261[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %263 = llvm.insertvalue %29, %262[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %264 = llvm.insertvalue %15, %263[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %265 = llvm.insertvalue %15, %264[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %266 = llvm.insertvalue %33, %265[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %267 = llvm.ptrtoint %260 : !llvm.ptr<f32> to i64
    %268 = llvm.add %13, %31  : i64
    %269 = llvm.getelementptr %50[%268] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %270 = llvm.ptrtoint %269 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%267, %194, %270, %256, %16) : (i64, i64, i64, i64, i32) -> ()
    %271 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %272 = llvm.getelementptr %271[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %273 = llvm.bitcast %272 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %274 = llvm.insertvalue %273, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %275 = llvm.insertvalue %31, %274[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %276 = llvm.insertvalue %29, %275[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %277 = llvm.insertvalue %15, %276[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %278 = llvm.insertvalue %15, %277[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %279 = llvm.insertvalue %33, %278[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %280 = llvm.ptrtoint %273 : !llvm.ptr<f32> to i64
    %281 = llvm.add %196, %12  : i64
    %282 = llvm.getelementptr %195[%281] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %283 = llvm.ptrtoint %282 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%280, %194, %283, %32, %16) : (i64, i64, i64, i64, i32) -> ()
    %284 = llvm.load %162 : !llvm.ptr<i64>
    %285 = llvm.add %284, %30  : i64
    llvm.store %285, %162 : !llvm.ptr<i64>
    %286 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %287 = llvm.getelementptr %286[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %288 = llvm.bitcast %287 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %289 = llvm.insertvalue %288, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %290 = llvm.insertvalue %31, %289[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %291 = llvm.insertvalue %29, %290[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %292 = llvm.insertvalue %15, %291[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %293 = llvm.insertvalue %15, %292[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %294 = llvm.insertvalue %33, %293[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %295 = llvm.ptrtoint %288 : !llvm.ptr<f32> to i64
    %296 = llvm.add %12, %31  : i64
    %297 = llvm.getelementptr %50[%296] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %298 = llvm.ptrtoint %297 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%295, %194, %298, %284, %16) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%160, %163) : (!llvm.ptr<i64>, i64) -> ()
    %299 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %300 = llvm.getelementptr %299[4] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %301 = llvm.ptrtoint %300 : !llvm.ptr<vector<8xf32>> to i64
    %302 = llvm.alloca %301 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    llvm.br ^bb10(%31, %176, %192, %210, %200, %223, %238, %228, %251, %266, %256, %279, %294, %284 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb10(%303: i64, %304: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, %305: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %306: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %307: i64, %308: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %309: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %310: i64, %311: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %312: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %313: i64, %314: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %315: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %316: i64):  // 2 preds: ^bb9, ^bb23
    %317 = llvm.icmp "slt" %303, %37 : i64
    llvm.cond_br %317, ^bb11, ^bb24
  ^bb11:  // pred: ^bb10
    %318 = llvm.add %303, %28  : i64
    %319 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %320 = llvm.getelementptr %319[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %321 = llvm.bitcast %320 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %322 = llvm.insertvalue %321, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %323 = llvm.insertvalue %31, %322[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %324 = llvm.insertvalue %29, %323[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %325 = llvm.insertvalue %15, %324[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %326 = llvm.insertvalue %15, %325[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %327 = llvm.insertvalue %33, %326[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %328 = llvm.ptrtoint %321 : !llvm.ptr<f32> to i64
    %329 = llvm.mul %318, %38  : i64
    %330 = llvm.add %329, %196  : i64
    %331 = llvm.getelementptr %195[%330] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %332 = llvm.ptrtoint %331 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%328, %194, %332, %32, %16) : (i64, i64, i64, i64, i32) -> ()
    %333 = llvm.load %162 : !llvm.ptr<i64>
    %334 = llvm.add %333, %30  : i64
    llvm.store %334, %162 : !llvm.ptr<i64>
    %335 = llvm.load %63 : !llvm.ptr<ptr<i8>>
    %336 = llvm.getelementptr %335[%67] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %337 = llvm.bitcast %336 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %338 = llvm.insertvalue %337, %70[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %339 = llvm.insertvalue %31, %338[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %340 = llvm.insertvalue %29, %339[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %341 = llvm.insertvalue %15, %340[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %342 = llvm.insertvalue %15, %341[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %343 = llvm.insertvalue %33, %342[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %344 = llvm.ptrtoint %337 : !llvm.ptr<f32> to i64
    %345 = llvm.add %329, %31  : i64
    %346 = llvm.getelementptr %50[%345] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %347 = llvm.ptrtoint %346 : !llvm.ptr<f32> to i64
    llvm.call @rdma_req(%344, %194, %347, %333, %16) : (i64, i64, i64, i64, i32) -> ()
    llvm.call @rsync(%160, %307) : (!llvm.ptr<i64>, i64) -> ()
    llvm.br ^bb12(%31 : i64)
  ^bb12(%348: i64):  // 2 preds: ^bb11, ^bb22
    %349 = llvm.icmp "slt" %348, %29 : i64
    llvm.cond_br %349, ^bb13, ^bb23
  ^bb13:  // pred: ^bb12
    %350 = llvm.mul %348, %29  : i64
    %351 = llvm.add %303, %350  : i64
    llvm.br ^bb14(%31 : i64)
  ^bb14(%352: i64):  // 2 preds: ^bb13, ^bb21
    %353 = llvm.icmp "slt" %352, %38 : i64
    llvm.cond_br %353, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.br ^bb16(%31 : i64)
  ^bb16(%354: i64):  // 2 preds: ^bb15, ^bb20
    %355 = llvm.icmp "slt" %354, %38 : i64
    llvm.cond_br %355, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %356 = llvm.extractvalue %306[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %357 = llvm.mul %348, %15  : i64
    %358 = llvm.add %357, %352  : i64
    %359 = llvm.getelementptr %356[%358] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %360 = llvm.bitcast %359 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %361 = llvm.load %360 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %361, %302 : !llvm.ptr<vector<8xf32>>
    %362 = llvm.add %351, %33  : i64
    %363 = llvm.add %352, %38  : i64
    %364 = llvm.add %357, %363  : i64
    %365 = llvm.getelementptr %356[%364] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %366 = llvm.bitcast %365 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %367 = llvm.load %366 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %368 = llvm.getelementptr %302[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %367, %368 : !llvm.ptr<vector<8xf32>>
    %369 = llvm.add %351, %34  : i64
    %370 = llvm.add %352, %10  : i64
    %371 = llvm.add %357, %370  : i64
    %372 = llvm.getelementptr %356[%371] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %373 = llvm.bitcast %372 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %374 = llvm.load %373 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %375 = llvm.getelementptr %302[2] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %374, %375 : !llvm.ptr<vector<8xf32>>
    %376 = llvm.add %351, %35  : i64
    %377 = llvm.add %352, %9  : i64
    %378 = llvm.add %357, %377  : i64
    %379 = llvm.getelementptr %356[%378] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %380 = llvm.bitcast %379 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %381 = llvm.load %380 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %382 = llvm.getelementptr %302[3] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %381, %382 : !llvm.ptr<vector<8xf32>>
    llvm.br ^bb18(%31 : i64)
  ^bb18(%383: i64):  // 2 preds: ^bb17, ^bb19
    %384 = llvm.icmp "slt" %383, %11 : i64
    llvm.cond_br %384, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %385 = llvm.add %354, %383  : i64
    %386 = llvm.extractvalue %305[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %387 = llvm.add %357, %385  : i64
    %388 = llvm.getelementptr %386[%387] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %389 = llvm.load %388 : !llvm.ptr<f32>
    %390 = llvm.mlir.undef : vector<8xf32>
    %391 = llvm.insertelement %389, %390[%19 : i32] : vector<8xf32>
    %392 = llvm.shufflevector %391, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %393 = llvm.mul %354, %38  : i64
    %394 = llvm.add %352, %393  : i64
    %395 = llvm.mul %383, %38  : i64
    %396 = llvm.add %394, %395  : i64
    %397 = llvm.extractvalue %304[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)> 
    %398 = llvm.getelementptr %397[%396] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %399 = llvm.bitcast %398 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %400 = llvm.load %399 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %401 = llvm.load %302 : !llvm.ptr<vector<8xf32>>
    %402 = "llvm.intr.fmuladd"(%392, %400, %401) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %402, %302 : !llvm.ptr<vector<8xf32>>
    %403 = llvm.add %385, %33  : i64
    %404 = llvm.add %357, %403  : i64
    %405 = llvm.getelementptr %386[%404] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %406 = llvm.load %405 : !llvm.ptr<f32>
    %407 = llvm.insertelement %406, %390[%19 : i32] : vector<8xf32>
    %408 = llvm.shufflevector %407, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %409 = llvm.add %396, %38  : i64
    %410 = llvm.getelementptr %397[%409] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %411 = llvm.bitcast %410 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %412 = llvm.load %411 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %413 = llvm.load %302 : !llvm.ptr<vector<8xf32>>
    %414 = "llvm.intr.fmuladd"(%408, %412, %413) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %414, %302 : !llvm.ptr<vector<8xf32>>
    %415 = llvm.add %385, %34  : i64
    %416 = llvm.add %357, %415  : i64
    %417 = llvm.getelementptr %386[%416] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %418 = llvm.load %417 : !llvm.ptr<f32>
    %419 = llvm.insertelement %418, %390[%19 : i32] : vector<8xf32>
    %420 = llvm.shufflevector %419, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %421 = llvm.add %396, %10  : i64
    %422 = llvm.getelementptr %397[%421] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %423 = llvm.bitcast %422 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %424 = llvm.load %423 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %425 = llvm.load %302 : !llvm.ptr<vector<8xf32>>
    %426 = "llvm.intr.fmuladd"(%420, %424, %425) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %426, %302 : !llvm.ptr<vector<8xf32>>
    %427 = llvm.add %385, %35  : i64
    %428 = llvm.add %357, %427  : i64
    %429 = llvm.getelementptr %386[%428] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %430 = llvm.load %429 : !llvm.ptr<f32>
    %431 = llvm.insertelement %430, %390[%19 : i32] : vector<8xf32>
    %432 = llvm.shufflevector %431, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %433 = llvm.add %396, %9  : i64
    %434 = llvm.getelementptr %397[%433] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %435 = llvm.bitcast %434 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %436 = llvm.load %435 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %437 = llvm.load %302 : !llvm.ptr<vector<8xf32>>
    %438 = "llvm.intr.fmuladd"(%432, %436, %437) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %438, %302 : !llvm.ptr<vector<8xf32>>
    %439 = llvm.add %385, %38  : i64
    %440 = llvm.add %357, %439  : i64
    %441 = llvm.getelementptr %386[%440] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %442 = llvm.load %441 : !llvm.ptr<f32>
    %443 = llvm.insertelement %442, %390[%19 : i32] : vector<8xf32>
    %444 = llvm.shufflevector %443, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %445 = llvm.load %399 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %446 = llvm.load %368 : !llvm.ptr<vector<8xf32>>
    %447 = "llvm.intr.fmuladd"(%444, %445, %446) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %447, %368 : !llvm.ptr<vector<8xf32>>
    %448 = llvm.add %385, %8  : i64
    %449 = llvm.add %357, %448  : i64
    %450 = llvm.getelementptr %386[%449] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %451 = llvm.load %450 : !llvm.ptr<f32>
    %452 = llvm.insertelement %451, %390[%19 : i32] : vector<8xf32>
    %453 = llvm.shufflevector %452, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %454 = llvm.load %411 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %455 = llvm.load %368 : !llvm.ptr<vector<8xf32>>
    %456 = "llvm.intr.fmuladd"(%453, %454, %455) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %456, %368 : !llvm.ptr<vector<8xf32>>
    %457 = llvm.add %385, %7  : i64
    %458 = llvm.add %357, %457  : i64
    %459 = llvm.getelementptr %386[%458] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %460 = llvm.load %459 : !llvm.ptr<f32>
    %461 = llvm.insertelement %460, %390[%19 : i32] : vector<8xf32>
    %462 = llvm.shufflevector %461, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %463 = llvm.load %423 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %464 = llvm.load %368 : !llvm.ptr<vector<8xf32>>
    %465 = "llvm.intr.fmuladd"(%462, %463, %464) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %465, %368 : !llvm.ptr<vector<8xf32>>
    %466 = llvm.add %385, %6  : i64
    %467 = llvm.add %357, %466  : i64
    %468 = llvm.getelementptr %386[%467] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %469 = llvm.load %468 : !llvm.ptr<f32>
    %470 = llvm.insertelement %469, %390[%19 : i32] : vector<8xf32>
    %471 = llvm.shufflevector %470, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %472 = llvm.load %435 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %473 = llvm.load %368 : !llvm.ptr<vector<8xf32>>
    %474 = "llvm.intr.fmuladd"(%471, %472, %473) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %474, %368 : !llvm.ptr<vector<8xf32>>
    %475 = llvm.add %385, %10  : i64
    %476 = llvm.add %357, %475  : i64
    %477 = llvm.getelementptr %386[%476] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %478 = llvm.load %477 : !llvm.ptr<f32>
    %479 = llvm.insertelement %478, %390[%19 : i32] : vector<8xf32>
    %480 = llvm.shufflevector %479, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %481 = llvm.load %399 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %482 = llvm.load %375 : !llvm.ptr<vector<8xf32>>
    %483 = "llvm.intr.fmuladd"(%480, %481, %482) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %483, %375 : !llvm.ptr<vector<8xf32>>
    %484 = llvm.add %385, %5  : i64
    %485 = llvm.add %357, %484  : i64
    %486 = llvm.getelementptr %386[%485] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %487 = llvm.load %486 : !llvm.ptr<f32>
    %488 = llvm.insertelement %487, %390[%19 : i32] : vector<8xf32>
    %489 = llvm.shufflevector %488, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %490 = llvm.load %411 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %491 = llvm.load %375 : !llvm.ptr<vector<8xf32>>
    %492 = "llvm.intr.fmuladd"(%489, %490, %491) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %492, %375 : !llvm.ptr<vector<8xf32>>
    %493 = llvm.add %385, %4  : i64
    %494 = llvm.add %357, %493  : i64
    %495 = llvm.getelementptr %386[%494] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %496 = llvm.load %495 : !llvm.ptr<f32>
    %497 = llvm.insertelement %496, %390[%19 : i32] : vector<8xf32>
    %498 = llvm.shufflevector %497, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %499 = llvm.load %423 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %500 = llvm.load %375 : !llvm.ptr<vector<8xf32>>
    %501 = "llvm.intr.fmuladd"(%498, %499, %500) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %501, %375 : !llvm.ptr<vector<8xf32>>
    %502 = llvm.add %385, %3  : i64
    %503 = llvm.add %357, %502  : i64
    %504 = llvm.getelementptr %386[%503] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %505 = llvm.load %504 : !llvm.ptr<f32>
    %506 = llvm.insertelement %505, %390[%19 : i32] : vector<8xf32>
    %507 = llvm.shufflevector %506, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %508 = llvm.load %435 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %509 = llvm.load %375 : !llvm.ptr<vector<8xf32>>
    %510 = "llvm.intr.fmuladd"(%507, %508, %509) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %510, %375 : !llvm.ptr<vector<8xf32>>
    %511 = llvm.add %385, %9  : i64
    %512 = llvm.add %357, %511  : i64
    %513 = llvm.getelementptr %386[%512] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %514 = llvm.load %513 : !llvm.ptr<f32>
    %515 = llvm.insertelement %514, %390[%19 : i32] : vector<8xf32>
    %516 = llvm.shufflevector %515, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %517 = llvm.load %399 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %518 = llvm.load %382 : !llvm.ptr<vector<8xf32>>
    %519 = "llvm.intr.fmuladd"(%516, %517, %518) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %519, %382 : !llvm.ptr<vector<8xf32>>
    %520 = llvm.add %385, %2  : i64
    %521 = llvm.add %357, %520  : i64
    %522 = llvm.getelementptr %386[%521] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %523 = llvm.load %522 : !llvm.ptr<f32>
    %524 = llvm.insertelement %523, %390[%19 : i32] : vector<8xf32>
    %525 = llvm.shufflevector %524, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %526 = llvm.load %411 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %527 = llvm.load %382 : !llvm.ptr<vector<8xf32>>
    %528 = "llvm.intr.fmuladd"(%525, %526, %527) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %528, %382 : !llvm.ptr<vector<8xf32>>
    %529 = llvm.add %385, %1  : i64
    %530 = llvm.add %357, %529  : i64
    %531 = llvm.getelementptr %386[%530] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %532 = llvm.load %531 : !llvm.ptr<f32>
    %533 = llvm.insertelement %532, %390[%19 : i32] : vector<8xf32>
    %534 = llvm.shufflevector %533, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %535 = llvm.load %423 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %536 = llvm.load %382 : !llvm.ptr<vector<8xf32>>
    %537 = "llvm.intr.fmuladd"(%534, %535, %536) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %537, %382 : !llvm.ptr<vector<8xf32>>
    %538 = llvm.add %385, %0  : i64
    %539 = llvm.add %357, %538  : i64
    %540 = llvm.getelementptr %386[%539] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %541 = llvm.load %540 : !llvm.ptr<f32>
    %542 = llvm.insertelement %541, %390[%19 : i32] : vector<8xf32>
    %543 = llvm.shufflevector %542, %390 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %544 = llvm.load %435 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %545 = llvm.load %382 : !llvm.ptr<vector<8xf32>>
    %546 = "llvm.intr.fmuladd"(%543, %544, %545) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %546, %382 : !llvm.ptr<vector<8xf32>>
    %547 = llvm.add %383, %29  : i64
    llvm.br ^bb18(%547 : i64)
  ^bb20:  // pred: ^bb18
    %548 = llvm.load %302 : !llvm.ptr<vector<8xf32>>
    %549 = llvm.mul %351, %38  : i64
    %550 = llvm.add %549, %352  : i64
    %551 = llvm.getelementptr %159[%550] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %552 = llvm.bitcast %551 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %548, %552 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %553 = llvm.load %368 : !llvm.ptr<vector<8xf32>>
    %554 = llvm.mul %362, %38  : i64
    %555 = llvm.add %554, %352  : i64
    %556 = llvm.getelementptr %159[%555] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %557 = llvm.bitcast %556 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %553, %557 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %558 = llvm.load %375 : !llvm.ptr<vector<8xf32>>
    %559 = llvm.mul %369, %38  : i64
    %560 = llvm.add %559, %352  : i64
    %561 = llvm.getelementptr %159[%560] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %562 = llvm.bitcast %561 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %558, %562 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %563 = llvm.load %382 : !llvm.ptr<vector<8xf32>>
    %564 = llvm.mul %376, %38  : i64
    %565 = llvm.add %564, %352  : i64
    %566 = llvm.getelementptr %159[%565] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %567 = llvm.bitcast %566 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    llvm.store %563, %567 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %568 = llvm.add %354, %11  : i64
    llvm.br ^bb16(%568 : i64)
  ^bb21:  // pred: ^bb16
    %569 = llvm.add %352, %11  : i64
    llvm.br ^bb14(%569 : i64)
  ^bb22:  // pred: ^bb14
    %570 = llvm.add %348, %33  : i64
    llvm.br ^bb12(%570 : i64)
  ^bb23:  // pred: ^bb12
    %571 = llvm.add %303, %26  : i64
    llvm.br ^bb10(%571, %304, %308, %309, %310, %311, %312, %313, %314, %315, %316, %327, %343, %333 : i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<1 x i64>, array<1 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, i64)
  ^bb24:  // pred: ^bb10
    llvm.return %58 : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, %arg2: !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) attributes {access_mem_catcher = [["ref0", 0], ["ref1", 1]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.call @main_graph(%arg1, %arg2) : (!llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>) -> !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    llvm.store %0, %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.return
  }
}

