module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 2048, 1, 1 : i32], t1 = ["ref1", 0, 0, 33030144, f32, 2048, 1, 1 : i32]}} {
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid2(i32, i16)
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.func @pthread_join(i64, !llvm.ptr<ptr<i8>>) -> i32 attributes {sym_visibility = "private"}
  llvm.func @pthread_create(!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32 attributes {sym_visibility = "private"}
  llvm.func @_driver(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<f32>, %arg3: !llvm.ptr<f32>, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: i64, %arg8: i64) attributes {llvm.emit_c_interface} {
    %0 = llvm.mlir.constant(1 : i64) : i64
    %1 = llvm.mlir.undef : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>
    %2 = llvm.insertvalue %arg2, %1[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.insertvalue %arg3, %2[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.insertvalue %arg4, %3[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.insertvalue %arg5, %4[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.insertvalue %arg7, %5[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.insertvalue %arg6, %6[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.insertvalue %arg8, %7[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %9 = llvm.alloca %0 x !llvm.array<1 x i64> : (i64) -> !llvm.ptr<array<1 x i64>>
    %10 = llvm.alloca %0 x !llvm.struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)> : (i64) -> !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %11 = llvm.getelementptr %9[0, 0] : (!llvm.ptr<array<1 x i64>>) -> !llvm.ptr<i64>
    %12 = llvm.mlir.null : !llvm.ptr<struct<(i64, array<48 x i8>)>>
    %13 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %14 = llvm.load %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %15 = llvm.getelementptr %10[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.store %14, %15 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %16 = llvm.getelementptr %10[0, 1] : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.store %13, %16 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %17 = llvm.getelementptr %10[0, 2] : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    llvm.store %8, %17 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %18 = llvm.bitcast %10 : !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>> to !llvm.ptr<i8>
    %19 = llvm.mlir.addressof @task_0 : !llvm.ptr<func<ptr<i8> (ptr<i8>)>>
    %20 = llvm.call @pthread_create(%11, %12, %19, %18) : (!llvm.ptr<i64>, !llvm.ptr<struct<(i64, array<48 x i8>)>>, !llvm.ptr<func<ptr<i8> (ptr<i8>)>>, !llvm.ptr<i8>) -> i32
    %21 = llvm.mlir.null : !llvm.ptr<ptr<i8>>
    %22 = llvm.load %11 : !llvm.ptr<i64>
    %23 = llvm.call @pthread_join(%22, %21) : (i64, !llvm.ptr<ptr<i8>>) -> i32
    llvm.return
  }
  llvm.func @_mlir_ciface__driver(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {llvm.emit_c_interface} {
    %0 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @_driver(%arg0, %arg1, %1, %2, %3, %4, %5, %6, %7) : (!llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
  llvm.func @main_graph__0(%arg0: !llvm.ptr<f32>, %arg1: !llvm.ptr<f32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<f32>, %arg8: !llvm.ptr<f32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr<f32>, %arg15: !llvm.ptr<f32>, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) attributes {access_mem_catcher = [["ref0", 0 : i32], ["ref1", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.mlir.constant(1539 : index) : i64
    %1 = llvm.mlir.constant(1538 : index) : i64
    %2 = llvm.mlir.constant(1537 : index) : i64
    %3 = llvm.mlir.constant(1027 : index) : i64
    %4 = llvm.mlir.constant(1026 : index) : i64
    %5 = llvm.mlir.constant(1025 : index) : i64
    %6 = llvm.mlir.constant(515 : index) : i64
    %7 = llvm.mlir.constant(514 : index) : i64
    %8 = llvm.mlir.constant(513 : index) : i64
    %9 = llvm.mlir.constant(3 : index) : i64
    %10 = llvm.mlir.constant(2 : index) : i64
    %11 = llvm.mlir.constant(1536 : index) : i64
    %12 = llvm.mlir.constant(1024 : index) : i64
    %13 = llvm.mlir.constant(0 : i64) : i64
    %14 = llvm.mlir.constant(1 : i32) : i32
    %15 = llvm.mlir.constant(1 : index) : i64
    %16 = llvm.mlir.constant(67108864 : i64) : i64
    %17 = llvm.mlir.constant(512 : index) : i64
    %18 = llvm.mlir.constant(4 : index) : i64
    %19 = llvm.mlir.constant(64512 : index) : i64
    %20 = llvm.mlir.constant(2048 : index) : i64
    %21 = llvm.mlir.constant(1 : i8) : i8
    %22 = llvm.mlir.constant(0 : i32) : i32
    %23 = llvm.mlir.constant(8192 : i64) : i64
    %24 = llvm.mlir.constant(-8192 : i64) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %27 = llvm.mlir.constant(8 : index) : i64
    %28 = llvm.mlir.constant(8192 : i32) : i32
    %29 = llvm.mlir.constant(2 : i8) : i8
    %30 = llvm.add %arg2, %25  : i64
    %31 = llvm.getelementptr %arg1[%30] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %32 = llvm.ptrtoint %31 : !llvm.ptr<f32> to i64
    %33 = llvm.and %32, %24  : i64
    %34 = llvm.udiv %33, %23  : i64
    %35 = llvm.srem %34, %23  : i64
    %36 = llvm.trunc %35 : i64 to i32
    %37 = llvm.call @cache_request_impl_2(%22, %33, %36, %21) : (i32, i64, i32, i8) -> i32
    %38 = llvm.add %arg2, %20  : i64
    %39 = llvm.getelementptr %arg1[%38] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %40 = llvm.ptrtoint %39 : !llvm.ptr<f32> to i64
    %41 = llvm.and %40, %24  : i64
    %42 = llvm.udiv %41, %23  : i64
    %43 = llvm.srem %42, %23  : i64
    %44 = llvm.trunc %43 : i64 to i32
    %45 = llvm.call @cache_request_impl_2(%22, %41, %44, %21) : (i32, i64, i32, i8) -> i32
    llvm.br ^bb1(%25, %36, %44 : i64, i32, i32)
  ^bb1(%46: i64, %47: i32, %48: i32):  // 2 preds: ^bb0, ^bb8
    %49 = llvm.icmp "slt" %46, %19 : i64
    llvm.cond_br %49, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %50 = llvm.add %46, %27  : i64
    %51 = llvm.mul %50, %17  : i64
    %52 = llvm.add %51, %arg2  : i64
    %53 = llvm.getelementptr %arg1[%52] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<f32> to i64
    %55 = llvm.and %54, %24  : i64
    %56 = llvm.udiv %55, %23  : i64
    %57 = llvm.srem %56, %23  : i64
    %58 = llvm.trunc %57 : i64 to i32
    %59 = llvm.call @cache_request_impl_2(%22, %55, %58, %21) : (i32, i64, i32, i8) -> i32
    %60 = llvm.mul %46, %17  : i64
    %61 = llvm.add %60, %arg2  : i64
    %62 = llvm.getelementptr %arg1[%61] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %63 = llvm.ptrtoint %62 : !llvm.ptr<f32> to i64
    %64 = llvm.sext %47 : i32 to i64
    %65 = llvm.mul %64, %23  : i64
    %66 = llvm.srem %63, %23  : i64
    %67 = llvm.add %65, %66  : i64
    %68 = llvm.add %67, %16  : i64
    %69 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %70 = llvm.load %69 : !llvm.ptr<ptr<i8>>
    %71 = llvm.getelementptr %70[%68] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %72 = llvm.bitcast %71 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %73 = llvm.add %47, %28  : i32
    %74 = llvm.sext %73 : i32 to i64
    %75 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %76 = llvm.getelementptr %75[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %77 = llvm.getelementptr %76[%74] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %78 = llvm.getelementptr %77[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %79 = llvm.load %78 : !llvm.ptr<i8>
    %80 = llvm.or %79, %29  : i8
    llvm.store %80, %78 : !llvm.ptr<i8>
    %81 = llvm.getelementptr %77[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %82 = llvm.load %81 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%14, %82) : (i32, i16) -> ()
    llvm.br ^bb3(%25 : i64)
  ^bb3(%83: i64):  // 2 preds: ^bb2, ^bb7
    %84 = llvm.icmp "slt" %83, %18 : i64
    llvm.cond_br %84, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%25 : i64)
  ^bb5(%85: i64):  // 2 preds: ^bb4, ^bb6
    %86 = llvm.icmp "slt" %85, %17 : i64
    llvm.cond_br %86, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %87 = llvm.mul %83, %17  : i64
    %88 = llvm.add %87, %85  : i64
    %89 = llvm.getelementptr %72[%88] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %26, %89 : !llvm.ptr<f32>
    %90 = llvm.add %85, %15  : i64
    llvm.br ^bb5(%90 : i64)
  ^bb7:  // pred: ^bb5
    %91 = llvm.add %83, %15  : i64
    llvm.br ^bb3(%91 : i64)
  ^bb8:  // pred: ^bb3
    %92 = llvm.add %46, %18  : i64
    llvm.br ^bb1(%92, %48, %58 : i64, i32, i32)
  ^bb9:  // pred: ^bb1
    %93 = llvm.add %arg9, %25  : i64
    %94 = llvm.getelementptr %arg8[%93] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %95 = llvm.ptrtoint %94 : !llvm.ptr<f32> to i64
    %96 = llvm.and %95, %24  : i64
    %97 = llvm.udiv %96, %23  : i64
    %98 = llvm.srem %97, %23  : i64
    %99 = llvm.trunc %98 : i64 to i32
    %100 = llvm.call @cache_request_impl_1(%22, %96, %99, %21) : (i32, i64, i32, i8) -> i32
    %101 = llvm.call @cache_request_impl_2(%22, %33, %36, %21) : (i32, i64, i32, i8) -> i32
    %102 = llvm.add %arg9, %20  : i64
    %103 = llvm.getelementptr %arg8[%102] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %104 = llvm.ptrtoint %103 : !llvm.ptr<f32> to i64
    %105 = llvm.and %104, %24  : i64
    %106 = llvm.udiv %105, %23  : i64
    %107 = llvm.srem %106, %23  : i64
    %108 = llvm.trunc %107 : i64 to i32
    %109 = llvm.call @cache_request_impl_1(%22, %105, %108, %21) : (i32, i64, i32, i8) -> i32
    %110 = llvm.call @cache_request_impl_2(%22, %41, %44, %21) : (i32, i64, i32, i8) -> i32
    llvm.br ^bb10(%25, %99, %36, %108, %44 : i64, i32, i32, i32, i32)
  ^bb10(%111: i64, %112: i32, %113: i32, %114: i32, %115: i32):  // 2 preds: ^bb9, ^bb23
    %116 = llvm.icmp "slt" %111, %19 : i64
    llvm.cond_br %116, ^bb11, ^bb24
  ^bb11:  // pred: ^bb10
    %117 = llvm.add %111, %27  : i64
    %118 = llvm.mul %117, %17  : i64
    %119 = llvm.add %118, %arg9  : i64
    %120 = llvm.getelementptr %arg8[%119] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %121 = llvm.ptrtoint %120 : !llvm.ptr<f32> to i64
    %122 = llvm.and %121, %24  : i64
    %123 = llvm.udiv %122, %23  : i64
    %124 = llvm.srem %123, %23  : i64
    %125 = llvm.trunc %124 : i64 to i32
    %126 = llvm.call @cache_request_impl_1(%22, %122, %125, %21) : (i32, i64, i32, i8) -> i32
    %127 = llvm.add %118, %arg2  : i64
    %128 = llvm.getelementptr %arg1[%127] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %129 = llvm.ptrtoint %128 : !llvm.ptr<f32> to i64
    %130 = llvm.and %129, %24  : i64
    %131 = llvm.udiv %130, %23  : i64
    %132 = llvm.srem %131, %23  : i64
    %133 = llvm.trunc %132 : i64 to i32
    %134 = llvm.call @cache_request_impl_2(%22, %130, %133, %21) : (i32, i64, i32, i8) -> i32
    %135 = llvm.mul %111, %17  : i64
    %136 = llvm.add %135, %arg9  : i64
    %137 = llvm.getelementptr %arg8[%136] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %138 = llvm.ptrtoint %137 : !llvm.ptr<f32> to i64
    %139 = llvm.sext %112 : i32 to i64
    %140 = llvm.mul %139, %23  : i64
    %141 = llvm.srem %138, %23  : i64
    %142 = llvm.add %140, %141  : i64
    %143 = llvm.add %142, %13  : i64
    %144 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %145 = llvm.load %144 : !llvm.ptr<ptr<i8>>
    %146 = llvm.getelementptr %145[%143] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %147 = llvm.bitcast %146 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %148 = llvm.add %135, %arg2  : i64
    %149 = llvm.getelementptr %arg1[%148] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %150 = llvm.ptrtoint %149 : !llvm.ptr<f32> to i64
    %151 = llvm.sext %113 : i32 to i64
    %152 = llvm.mul %151, %23  : i64
    %153 = llvm.srem %150, %23  : i64
    %154 = llvm.add %152, %153  : i64
    %155 = llvm.add %154, %16  : i64
    %156 = llvm.getelementptr %145[%155] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %157 = llvm.bitcast %156 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %158 = llvm.add %113, %28  : i32
    %159 = llvm.sext %158 : i32 to i64
    %160 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %161 = llvm.getelementptr %160[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %162 = llvm.getelementptr %161[%159] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %163 = llvm.getelementptr %162[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %164 = llvm.load %163 : !llvm.ptr<i8>
    %165 = llvm.or %164, %29  : i8
    llvm.store %165, %163 : !llvm.ptr<i8>
    %166 = llvm.getelementptr %162[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %167 = llvm.load %166 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%14, %167) : (i32, i16) -> ()
    llvm.br ^bb12(%25 : i64)
  ^bb12(%168: i64):  // 2 preds: ^bb11, ^bb22
    %169 = llvm.icmp "slt" %168, %15 : i64
    llvm.cond_br %169, ^bb13, ^bb23
  ^bb13:  // pred: ^bb12
    llvm.br ^bb14(%25 : i64)
  ^bb14(%170: i64):  // 2 preds: ^bb13, ^bb21
    %171 = llvm.icmp "slt" %170, %17 : i64
    llvm.cond_br %171, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.br ^bb16(%25 : i64)
  ^bb16(%172: i64):  // 2 preds: ^bb15, ^bb20
    %173 = llvm.icmp "slt" %172, %17 : i64
    llvm.cond_br %173, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %174 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %175 = llvm.getelementptr %174[4] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %176 = llvm.ptrtoint %175 : !llvm.ptr<vector<8xf32>> to i64
    %177 = llvm.alloca %176 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    %178 = llvm.mul %168, %20  : i64
    %179 = llvm.add %178, %170  : i64
    %180 = llvm.getelementptr %157[%179] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %181 = llvm.bitcast %180 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %182 = llvm.load %181 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %182, %177 : !llvm.ptr<vector<8xf32>>
    %183 = llvm.add %170, %17  : i64
    %184 = llvm.add %178, %183  : i64
    %185 = llvm.getelementptr %157[%184] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %186 = llvm.bitcast %185 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %187 = llvm.load %186 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %188 = llvm.getelementptr %177[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %187, %188 : !llvm.ptr<vector<8xf32>>
    %189 = llvm.add %170, %12  : i64
    %190 = llvm.add %178, %189  : i64
    %191 = llvm.getelementptr %157[%190] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %192 = llvm.bitcast %191 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %193 = llvm.load %192 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %194 = llvm.getelementptr %177[2] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %193, %194 : !llvm.ptr<vector<8xf32>>
    %195 = llvm.add %170, %11  : i64
    %196 = llvm.add %178, %195  : i64
    %197 = llvm.getelementptr %157[%196] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %198 = llvm.bitcast %197 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %199 = llvm.load %198 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %200 = llvm.getelementptr %177[3] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %199, %200 : !llvm.ptr<vector<8xf32>>
    llvm.br ^bb18(%25 : i64)
  ^bb18(%201: i64):  // 2 preds: ^bb17, ^bb19
    %202 = llvm.icmp "slt" %201, %27 : i64
    llvm.cond_br %202, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %203 = llvm.add %201, %172  : i64
    %204 = llvm.add %178, %203  : i64
    %205 = llvm.getelementptr %147[%204] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %206 = llvm.load %205 : !llvm.ptr<f32>
    %207 = llvm.mlir.undef : vector<8xf32>
    %208 = llvm.insertelement %206, %207[%22 : i32] : vector<8xf32>
    %209 = llvm.shufflevector %208, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %210 = llvm.mul %203, %17  : i64
    %211 = llvm.add %210, %170  : i64
    %212 = llvm.getelementptr %arg15[%211] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %213 = llvm.bitcast %212 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %214 = llvm.load %213 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %215 = llvm.load %177 : !llvm.ptr<vector<8xf32>>
    %216 = "llvm.intr.fmuladd"(%209, %214, %215) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %216, %177 : !llvm.ptr<vector<8xf32>>
    %217 = llvm.add %201, %15  : i64
    %218 = llvm.add %217, %172  : i64
    %219 = llvm.add %203, %15  : i64
    %220 = llvm.add %178, %219  : i64
    %221 = llvm.getelementptr %147[%220] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %222 = llvm.load %221 : !llvm.ptr<f32>
    %223 = llvm.insertelement %222, %207[%22 : i32] : vector<8xf32>
    %224 = llvm.shufflevector %223, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %225 = llvm.mul %218, %17  : i64
    %226 = llvm.add %225, %170  : i64
    %227 = llvm.getelementptr %arg15[%226] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %228 = llvm.bitcast %227 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %229 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %230 = llvm.load %177 : !llvm.ptr<vector<8xf32>>
    %231 = "llvm.intr.fmuladd"(%224, %229, %230) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %231, %177 : !llvm.ptr<vector<8xf32>>
    %232 = llvm.add %201, %10  : i64
    %233 = llvm.add %232, %172  : i64
    %234 = llvm.add %203, %10  : i64
    %235 = llvm.add %178, %234  : i64
    %236 = llvm.getelementptr %147[%235] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %237 = llvm.load %236 : !llvm.ptr<f32>
    %238 = llvm.insertelement %237, %207[%22 : i32] : vector<8xf32>
    %239 = llvm.shufflevector %238, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %240 = llvm.mul %233, %17  : i64
    %241 = llvm.add %240, %170  : i64
    %242 = llvm.getelementptr %arg15[%241] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %243 = llvm.bitcast %242 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %244 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %245 = llvm.load %177 : !llvm.ptr<vector<8xf32>>
    %246 = "llvm.intr.fmuladd"(%239, %244, %245) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %246, %177 : !llvm.ptr<vector<8xf32>>
    %247 = llvm.add %201, %9  : i64
    %248 = llvm.add %247, %172  : i64
    %249 = llvm.add %203, %9  : i64
    %250 = llvm.add %178, %249  : i64
    %251 = llvm.getelementptr %147[%250] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %252 = llvm.load %251 : !llvm.ptr<f32>
    %253 = llvm.insertelement %252, %207[%22 : i32] : vector<8xf32>
    %254 = llvm.shufflevector %253, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %255 = llvm.mul %248, %17  : i64
    %256 = llvm.add %255, %170  : i64
    %257 = llvm.getelementptr %arg15[%256] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %258 = llvm.bitcast %257 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %259 = llvm.load %258 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %260 = llvm.load %177 : !llvm.ptr<vector<8xf32>>
    %261 = "llvm.intr.fmuladd"(%254, %259, %260) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %261, %177 : !llvm.ptr<vector<8xf32>>
    %262 = llvm.add %203, %17  : i64
    %263 = llvm.add %178, %262  : i64
    %264 = llvm.getelementptr %147[%263] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %265 = llvm.load %264 : !llvm.ptr<f32>
    %266 = llvm.insertelement %265, %207[%22 : i32] : vector<8xf32>
    %267 = llvm.shufflevector %266, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %268 = llvm.load %213 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %269 = llvm.load %188 : !llvm.ptr<vector<8xf32>>
    %270 = "llvm.intr.fmuladd"(%267, %268, %269) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %270, %188 : !llvm.ptr<vector<8xf32>>
    %271 = llvm.add %203, %8  : i64
    %272 = llvm.add %178, %271  : i64
    %273 = llvm.getelementptr %147[%272] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %274 = llvm.load %273 : !llvm.ptr<f32>
    %275 = llvm.insertelement %274, %207[%22 : i32] : vector<8xf32>
    %276 = llvm.shufflevector %275, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %277 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %278 = llvm.load %188 : !llvm.ptr<vector<8xf32>>
    %279 = "llvm.intr.fmuladd"(%276, %277, %278) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %279, %188 : !llvm.ptr<vector<8xf32>>
    %280 = llvm.add %203, %7  : i64
    %281 = llvm.add %178, %280  : i64
    %282 = llvm.getelementptr %147[%281] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %283 = llvm.load %282 : !llvm.ptr<f32>
    %284 = llvm.insertelement %283, %207[%22 : i32] : vector<8xf32>
    %285 = llvm.shufflevector %284, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %286 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %287 = llvm.load %188 : !llvm.ptr<vector<8xf32>>
    %288 = "llvm.intr.fmuladd"(%285, %286, %287) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %288, %188 : !llvm.ptr<vector<8xf32>>
    %289 = llvm.add %203, %6  : i64
    %290 = llvm.add %178, %289  : i64
    %291 = llvm.getelementptr %147[%290] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %292 = llvm.load %291 : !llvm.ptr<f32>
    %293 = llvm.insertelement %292, %207[%22 : i32] : vector<8xf32>
    %294 = llvm.shufflevector %293, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %295 = llvm.load %258 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %296 = llvm.load %188 : !llvm.ptr<vector<8xf32>>
    %297 = "llvm.intr.fmuladd"(%294, %295, %296) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %297, %188 : !llvm.ptr<vector<8xf32>>
    %298 = llvm.add %203, %12  : i64
    %299 = llvm.add %178, %298  : i64
    %300 = llvm.getelementptr %147[%299] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %301 = llvm.load %300 : !llvm.ptr<f32>
    %302 = llvm.insertelement %301, %207[%22 : i32] : vector<8xf32>
    %303 = llvm.shufflevector %302, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %304 = llvm.load %213 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %305 = llvm.load %194 : !llvm.ptr<vector<8xf32>>
    %306 = "llvm.intr.fmuladd"(%303, %304, %305) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %306, %194 : !llvm.ptr<vector<8xf32>>
    %307 = llvm.add %203, %5  : i64
    %308 = llvm.add %178, %307  : i64
    %309 = llvm.getelementptr %147[%308] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %310 = llvm.load %309 : !llvm.ptr<f32>
    %311 = llvm.insertelement %310, %207[%22 : i32] : vector<8xf32>
    %312 = llvm.shufflevector %311, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %313 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %314 = llvm.load %194 : !llvm.ptr<vector<8xf32>>
    %315 = "llvm.intr.fmuladd"(%312, %313, %314) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %315, %194 : !llvm.ptr<vector<8xf32>>
    %316 = llvm.add %203, %4  : i64
    %317 = llvm.add %178, %316  : i64
    %318 = llvm.getelementptr %147[%317] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %319 = llvm.load %318 : !llvm.ptr<f32>
    %320 = llvm.insertelement %319, %207[%22 : i32] : vector<8xf32>
    %321 = llvm.shufflevector %320, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %322 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %323 = llvm.load %194 : !llvm.ptr<vector<8xf32>>
    %324 = "llvm.intr.fmuladd"(%321, %322, %323) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %324, %194 : !llvm.ptr<vector<8xf32>>
    %325 = llvm.add %203, %3  : i64
    %326 = llvm.add %178, %325  : i64
    %327 = llvm.getelementptr %147[%326] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %328 = llvm.load %327 : !llvm.ptr<f32>
    %329 = llvm.insertelement %328, %207[%22 : i32] : vector<8xf32>
    %330 = llvm.shufflevector %329, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %331 = llvm.load %258 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %332 = llvm.load %194 : !llvm.ptr<vector<8xf32>>
    %333 = "llvm.intr.fmuladd"(%330, %331, %332) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %333, %194 : !llvm.ptr<vector<8xf32>>
    %334 = llvm.add %203, %11  : i64
    %335 = llvm.add %178, %334  : i64
    %336 = llvm.getelementptr %147[%335] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %337 = llvm.load %336 : !llvm.ptr<f32>
    %338 = llvm.insertelement %337, %207[%22 : i32] : vector<8xf32>
    %339 = llvm.shufflevector %338, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %340 = llvm.load %213 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %341 = llvm.load %200 : !llvm.ptr<vector<8xf32>>
    %342 = "llvm.intr.fmuladd"(%339, %340, %341) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %342, %200 : !llvm.ptr<vector<8xf32>>
    %343 = llvm.add %203, %2  : i64
    %344 = llvm.add %178, %343  : i64
    %345 = llvm.getelementptr %147[%344] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %346 = llvm.load %345 : !llvm.ptr<f32>
    %347 = llvm.insertelement %346, %207[%22 : i32] : vector<8xf32>
    %348 = llvm.shufflevector %347, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %349 = llvm.load %228 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %350 = llvm.load %200 : !llvm.ptr<vector<8xf32>>
    %351 = "llvm.intr.fmuladd"(%348, %349, %350) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %351, %200 : !llvm.ptr<vector<8xf32>>
    %352 = llvm.add %203, %1  : i64
    %353 = llvm.add %178, %352  : i64
    %354 = llvm.getelementptr %147[%353] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %355 = llvm.load %354 : !llvm.ptr<f32>
    %356 = llvm.insertelement %355, %207[%22 : i32] : vector<8xf32>
    %357 = llvm.shufflevector %356, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %358 = llvm.load %243 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %359 = llvm.load %200 : !llvm.ptr<vector<8xf32>>
    %360 = "llvm.intr.fmuladd"(%357, %358, %359) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %360, %200 : !llvm.ptr<vector<8xf32>>
    %361 = llvm.add %203, %0  : i64
    %362 = llvm.add %178, %361  : i64
    %363 = llvm.getelementptr %147[%362] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %364 = llvm.load %363 : !llvm.ptr<f32>
    %365 = llvm.insertelement %364, %207[%22 : i32] : vector<8xf32>
    %366 = llvm.shufflevector %365, %207 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %367 = llvm.load %258 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %368 = llvm.load %200 : !llvm.ptr<vector<8xf32>>
    %369 = "llvm.intr.fmuladd"(%366, %367, %368) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %369, %200 : !llvm.ptr<vector<8xf32>>
    %370 = llvm.add %201, %18  : i64
    llvm.br ^bb18(%370 : i64)
  ^bb20:  // pred: ^bb18
    %371 = llvm.load %177 : !llvm.ptr<vector<8xf32>>
    llvm.store %371, %181 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %372 = llvm.load %188 : !llvm.ptr<vector<8xf32>>
    llvm.store %372, %186 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %373 = llvm.load %194 : !llvm.ptr<vector<8xf32>>
    llvm.store %373, %192 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %374 = llvm.load %200 : !llvm.ptr<vector<8xf32>>
    llvm.store %374, %198 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %375 = llvm.add %172, %27  : i64
    llvm.br ^bb16(%375 : i64)
  ^bb21:  // pred: ^bb16
    %376 = llvm.add %170, %27  : i64
    llvm.br ^bb14(%376 : i64)
  ^bb22:  // pred: ^bb14
    %377 = llvm.add %168, %15  : i64
    llvm.br ^bb12(%377 : i64)
  ^bb23:  // pred: ^bb12
    %378 = llvm.add %111, %18  : i64
    llvm.br ^bb10(%378, %114, %115, %125, %133 : i64, i32, i32, i32, i32)
  ^bb24:  // pred: ^bb10
    llvm.return
  }
  llvm.func @_mlir_ciface_main_graph__0(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {access_mem_catcher = [["ref0", 0 : i32], ["ref1", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
    %0 = llvm.load %arg0 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %1 = llvm.extractvalue %0[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %2 = llvm.extractvalue %0[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %3 = llvm.extractvalue %0[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %4 = llvm.extractvalue %0[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %5 = llvm.extractvalue %0[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %6 = llvm.extractvalue %0[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %7 = llvm.extractvalue %0[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %8 = llvm.load %arg1 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %9 = llvm.extractvalue %8[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %8[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %8[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %8[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %8[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %8[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %8[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.load %arg2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %17 = llvm.extractvalue %16[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %16[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %16[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %16[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %16[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %16[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %16[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @main_graph__0(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
  llvm.func @task_0(%arg0: !llvm.ptr<i8>) -> !llvm.ptr<i8> {
    %0 = llvm.mlir.null : !llvm.ptr<i8>
    %1 = llvm.bitcast %arg0 : !llvm.ptr<i8> to !llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>
    %2 = llvm.getelementptr %1[0, 0] : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %3 = llvm.load %2 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %4 = llvm.getelementptr %1[0, 1] : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %5 = llvm.load %4 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %6 = llvm.getelementptr %1[0, 2] : (!llvm.ptr<struct<(struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>, struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>)>>) -> !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %7 = llvm.load %6 : !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>
    %8 = llvm.extractvalue %3[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %9 = llvm.extractvalue %3[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %10 = llvm.extractvalue %3[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %11 = llvm.extractvalue %3[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %12 = llvm.extractvalue %3[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %13 = llvm.extractvalue %3[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %14 = llvm.extractvalue %3[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %15 = llvm.extractvalue %5[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %16 = llvm.extractvalue %5[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %17 = llvm.extractvalue %5[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %18 = llvm.extractvalue %5[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %19 = llvm.extractvalue %5[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %20 = llvm.extractvalue %5[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %21 = llvm.extractvalue %5[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %22 = llvm.extractvalue %7[0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %23 = llvm.extractvalue %7[1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %24 = llvm.extractvalue %7[2] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %25 = llvm.extractvalue %7[3, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %26 = llvm.extractvalue %7[3, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %27 = llvm.extractvalue %7[4, 0] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    %28 = llvm.extractvalue %7[4, 1] : !llvm.struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)> 
    llvm.call @main_graph__0(%8, %9, %10, %11, %12, %13, %14, %15, %16, %17, %18, %19, %20, %21, %22, %23, %24, %25, %26, %27, %28) : (!llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64) -> ()
    llvm.return %0 : !llvm.ptr<i8>
  }
}

