module attributes {llvm.data_layout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128", llvm.target_triple = "x86_64-unknown-linux-gnu", rmem.templates = {t0 = ["ref0", 8192, 0, 33030144, f32, 2048, 1, 1 : i32], t1 = ["ref1", 0, 0, 33030144, f32, 2048, 1, 1 : i32]}} {
  llvm.func @poll_qid1(i32, i16)
  llvm.func @cache_request_impl_1(i32, i64, i32, i8) -> i32
  llvm.func @poll_qid2(i32, i16)
  llvm.mlir.global external @_rbuf() {addr_space = 0 : i32} : !llvm.ptr<i8>
  llvm.func @cache_request_impl_2(i32, i64, i32, i8) -> i32
  llvm.mlir.global external @tokens() {addr_space = 0 : i32} : !llvm.array<33554432 x struct<(i64, i8, i8, i16, i32)>>
  llvm.func @main_graph(%arg0: !llvm.ptr<f32>, %arg1: !llvm.ptr<f32>, %arg2: i64, %arg3: i64, %arg4: i64, %arg5: i64, %arg6: i64, %arg7: !llvm.ptr<f32>, %arg8: !llvm.ptr<f32>, %arg9: i64, %arg10: i64, %arg11: i64, %arg12: i64, %arg13: i64, %arg14: !llvm.ptr<f32>, %arg15: !llvm.ptr<f32>, %arg16: i64, %arg17: i64, %arg18: i64, %arg19: i64, %arg20: i64) attributes {access_mem_catcher = [["ref0", 0 : i32], ["ref1", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
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
    %13 = llvm.mlir.constant(8 : index) : i64
    %14 = llvm.mlir.constant(0 : i64) : i64
    %15 = llvm.mlir.constant(2048 : index) : i64
    %16 = llvm.mlir.constant(1 : i32) : i32
    %17 = llvm.mlir.constant(1 : index) : i64
    %18 = llvm.mlir.constant(67108864 : i64) : i64
    %19 = llvm.mlir.constant(512 : index) : i64
    %20 = llvm.mlir.constant(64512 : index) : i64
    %21 = llvm.mlir.constant(1 : i8) : i8
    %22 = llvm.mlir.constant(0 : i32) : i32
    %23 = llvm.mlir.constant(8192 : i64) : i64
    %24 = llvm.mlir.constant(-8192 : i64) : i64
    %25 = llvm.mlir.constant(0 : index) : i64
    %26 = llvm.mlir.constant(0.000000e+00 : f32) : f32
    %27 = llvm.mlir.constant(4 : index) : i64
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
    llvm.br ^bb1(%25, %36 : i64, i32)
  ^bb1(%38: i64, %39: i32):  // 2 preds: ^bb0, ^bb8
    %40 = llvm.icmp "slt" %38, %20 : i64
    llvm.cond_br %40, ^bb2, ^bb9
  ^bb2:  // pred: ^bb1
    %41 = llvm.add %38, %27  : i64
    %42 = llvm.mul %41, %19  : i64
    %43 = llvm.add %42, %arg2  : i64
    %44 = llvm.getelementptr %arg1[%43] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %45 = llvm.ptrtoint %44 : !llvm.ptr<f32> to i64
    %46 = llvm.and %45, %24  : i64
    %47 = llvm.udiv %46, %23  : i64
    %48 = llvm.srem %47, %23  : i64
    %49 = llvm.trunc %48 : i64 to i32
    %50 = llvm.call @cache_request_impl_2(%22, %46, %49, %21) : (i32, i64, i32, i8) -> i32
    %51 = llvm.mul %38, %19  : i64
    %52 = llvm.add %51, %arg2  : i64
    %53 = llvm.getelementptr %arg1[%52] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %54 = llvm.ptrtoint %53 : !llvm.ptr<f32> to i64
    %55 = llvm.sext %39 : i32 to i64
    %56 = llvm.mul %55, %23  : i64
    %57 = llvm.srem %54, %23  : i64
    %58 = llvm.add %56, %57  : i64
    %59 = llvm.add %58, %18  : i64
    %60 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %61 = llvm.load %60 : !llvm.ptr<ptr<i8>>
    %62 = llvm.getelementptr %61[%59] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %63 = llvm.bitcast %62 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %64 = llvm.add %39, %28  : i32
    %65 = llvm.sext %64 : i32 to i64
    %66 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %67 = llvm.getelementptr %66[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %68 = llvm.getelementptr %67[%65] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %69 = llvm.getelementptr %68[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %70 = llvm.load %69 : !llvm.ptr<i8>
    %71 = llvm.or %70, %29  : i8
    llvm.store %71, %69 : !llvm.ptr<i8>
    %72 = llvm.getelementptr %68[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %73 = llvm.load %72 : !llvm.ptr<i16>
    llvm.call @poll_qid2(%16, %73) : (i32, i16) -> ()
    llvm.br ^bb3(%25 : i64)
  ^bb3(%74: i64):  // 2 preds: ^bb2, ^bb7
    %75 = llvm.icmp "slt" %74, %27 : i64
    llvm.cond_br %75, ^bb4, ^bb8
  ^bb4:  // pred: ^bb3
    llvm.br ^bb5(%25 : i64)
  ^bb5(%76: i64):  // 2 preds: ^bb4, ^bb6
    %77 = llvm.icmp "slt" %76, %19 : i64
    llvm.cond_br %77, ^bb6, ^bb7
  ^bb6:  // pred: ^bb5
    %78 = llvm.mul %74, %19  : i64
    %79 = llvm.add %78, %76  : i64
    %80 = llvm.getelementptr %63[%79] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    llvm.store %26, %80 : !llvm.ptr<f32>
    %81 = llvm.add %76, %17  : i64
    llvm.br ^bb5(%81 : i64)
  ^bb7:  // pred: ^bb5
    %82 = llvm.add %74, %17  : i64
    llvm.br ^bb3(%82 : i64)
  ^bb8:  // pred: ^bb3
    llvm.br ^bb1(%41, %49 : i64, i32)
  ^bb9:  // pred: ^bb1
    %83 = llvm.call @cache_request_impl_2(%22, %33, %36, %21) : (i32, i64, i32, i8) -> i32
    %84 = llvm.add %arg9, %25  : i64
    %85 = llvm.getelementptr %arg8[%84] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %86 = llvm.ptrtoint %85 : !llvm.ptr<f32> to i64
    %87 = llvm.and %86, %24  : i64
    %88 = llvm.udiv %87, %23  : i64
    %89 = llvm.srem %88, %23  : i64
    %90 = llvm.trunc %89 : i64 to i32
    %91 = llvm.call @cache_request_impl_1(%22, %87, %90, %21) : (i32, i64, i32, i8) -> i32
    llvm.br ^bb10(%25, %36, %90 : i64, i32, i32)
  ^bb10(%92: i64, %93: i32, %94: i32):  // 2 preds: ^bb9, ^bb23
    %95 = llvm.icmp "slt" %92, %20 : i64
    llvm.cond_br %95, ^bb11, ^bb24
  ^bb11:  // pred: ^bb10
    %96 = llvm.add %92, %27  : i64
    %97 = llvm.mul %96, %19  : i64
    %98 = llvm.add %97, %arg2  : i64
    %99 = llvm.getelementptr %arg1[%98] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %100 = llvm.ptrtoint %99 : !llvm.ptr<f32> to i64
    %101 = llvm.and %100, %24  : i64
    %102 = llvm.udiv %101, %23  : i64
    %103 = llvm.srem %102, %23  : i64
    %104 = llvm.trunc %103 : i64 to i32
    %105 = llvm.call @cache_request_impl_2(%22, %101, %104, %21) : (i32, i64, i32, i8) -> i32
    %106 = llvm.add %97, %arg9  : i64
    %107 = llvm.getelementptr %arg8[%106] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %108 = llvm.ptrtoint %107 : !llvm.ptr<f32> to i64
    %109 = llvm.and %108, %24  : i64
    %110 = llvm.udiv %109, %23  : i64
    %111 = llvm.srem %110, %23  : i64
    %112 = llvm.trunc %111 : i64 to i32
    %113 = llvm.call @cache_request_impl_1(%22, %109, %112, %21) : (i32, i64, i32, i8) -> i32
    %114 = llvm.mul %92, %19  : i64
    %115 = llvm.add %114, %arg2  : i64
    %116 = llvm.getelementptr %arg1[%115] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %117 = llvm.ptrtoint %116 : !llvm.ptr<f32> to i64
    %118 = llvm.sext %93 : i32 to i64
    %119 = llvm.mul %118, %23  : i64
    %120 = llvm.srem %117, %23  : i64
    %121 = llvm.add %119, %120  : i64
    %122 = llvm.add %121, %18  : i64
    %123 = llvm.mlir.addressof @_rbuf : !llvm.ptr<ptr<i8>>
    %124 = llvm.load %123 : !llvm.ptr<ptr<i8>>
    %125 = llvm.getelementptr %124[%122] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %126 = llvm.bitcast %125 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %127 = llvm.add %93, %28  : i32
    %128 = llvm.sext %127 : i32 to i64
    %129 = llvm.mlir.addressof @tokens : !llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>
    %130 = llvm.getelementptr %129[0, 0] : (!llvm.ptr<array<33554432 x struct<(i64, i8, i8, i16, i32)>>>) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %131 = llvm.getelementptr %130[%128] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %132 = llvm.getelementptr %131[0, 1] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i8>
    %133 = llvm.load %132 : !llvm.ptr<i8>
    %134 = llvm.or %133, %29  : i8
    llvm.store %134, %132 : !llvm.ptr<i8>
    %135 = llvm.add %114, %arg9  : i64
    %136 = llvm.getelementptr %arg8[%135] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %137 = llvm.ptrtoint %136 : !llvm.ptr<f32> to i64
    %138 = llvm.sext %94 : i32 to i64
    %139 = llvm.mul %138, %23  : i64
    %140 = llvm.srem %137, %23  : i64
    %141 = llvm.add %139, %140  : i64
    %142 = llvm.add %141, %14  : i64
    %143 = llvm.load %123 : !llvm.ptr<ptr<i8>>
    %144 = llvm.getelementptr %143[%142] : (!llvm.ptr<i8>, i64) -> !llvm.ptr<i8>
    %145 = llvm.bitcast %144 : !llvm.ptr<i8> to !llvm.ptr<f32>
    %146 = llvm.getelementptr %130[%138] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>, i64) -> !llvm.ptr<struct<(i64, i8, i8, i16, i32)>>
    %147 = llvm.getelementptr %146[0, 3] : (!llvm.ptr<struct<(i64, i8, i8, i16, i32)>>) -> !llvm.ptr<i16>
    %148 = llvm.load %147 : !llvm.ptr<i16>
    llvm.call @poll_qid1(%22, %148) : (i32, i16) -> ()
    llvm.br ^bb12(%25 : i64)
  ^bb12(%149: i64):  // 2 preds: ^bb11, ^bb22
    %150 = llvm.icmp "slt" %149, %17 : i64
    llvm.cond_br %150, ^bb13, ^bb23
  ^bb13:  // pred: ^bb12
    llvm.br ^bb14(%25 : i64)
  ^bb14(%151: i64):  // 2 preds: ^bb13, ^bb21
    %152 = llvm.icmp "slt" %151, %19 : i64
    llvm.cond_br %152, ^bb15, ^bb22
  ^bb15:  // pred: ^bb14
    llvm.br ^bb16(%25 : i64)
  ^bb16(%153: i64):  // 2 preds: ^bb15, ^bb20
    %154 = llvm.icmp "slt" %153, %19 : i64
    llvm.cond_br %154, ^bb17, ^bb21
  ^bb17:  // pred: ^bb16
    %155 = llvm.mlir.null : !llvm.ptr<vector<8xf32>>
    %156 = llvm.getelementptr %155[4] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    %157 = llvm.ptrtoint %156 : !llvm.ptr<vector<8xf32>> to i64
    %158 = llvm.alloca %157 x vector<8xf32> {alignment = 64 : i64} : (i64) -> !llvm.ptr<vector<8xf32>>
    %159 = llvm.mul %149, %15  : i64
    %160 = llvm.add %159, %151  : i64
    %161 = llvm.getelementptr %126[%160] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %162 = llvm.bitcast %161 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %163 = llvm.load %162 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    llvm.store %163, %158 : !llvm.ptr<vector<8xf32>>
    %164 = llvm.add %151, %19  : i64
    %165 = llvm.add %159, %164  : i64
    %166 = llvm.getelementptr %126[%165] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %167 = llvm.bitcast %166 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %168 = llvm.load %167 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %169 = llvm.getelementptr %158[1] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %168, %169 : !llvm.ptr<vector<8xf32>>
    %170 = llvm.add %151, %12  : i64
    %171 = llvm.add %159, %170  : i64
    %172 = llvm.getelementptr %126[%171] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %173 = llvm.bitcast %172 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %174 = llvm.load %173 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %175 = llvm.getelementptr %158[2] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %174, %175 : !llvm.ptr<vector<8xf32>>
    %176 = llvm.add %151, %11  : i64
    %177 = llvm.add %159, %176  : i64
    %178 = llvm.getelementptr %126[%177] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %179 = llvm.bitcast %178 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %180 = llvm.load %179 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %181 = llvm.getelementptr %158[3] : (!llvm.ptr<vector<8xf32>>) -> !llvm.ptr<vector<8xf32>>
    llvm.store %180, %181 : !llvm.ptr<vector<8xf32>>
    llvm.br ^bb18(%25 : i64)
  ^bb18(%182: i64):  // 2 preds: ^bb17, ^bb19
    %183 = llvm.icmp "slt" %182, %13 : i64
    llvm.cond_br %183, ^bb19, ^bb20
  ^bb19:  // pred: ^bb18
    %184 = llvm.add %182, %153  : i64
    %185 = llvm.add %159, %184  : i64
    %186 = llvm.getelementptr %145[%185] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %187 = llvm.load %186 : !llvm.ptr<f32>
    %188 = llvm.mlir.undef : vector<8xf32>
    %189 = llvm.insertelement %187, %188[%22 : i32] : vector<8xf32>
    %190 = llvm.shufflevector %189, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %191 = llvm.mul %184, %19  : i64
    %192 = llvm.add %191, %151  : i64
    %193 = llvm.getelementptr %arg15[%192] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %194 = llvm.bitcast %193 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %195 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %196 = llvm.load %158 : !llvm.ptr<vector<8xf32>>
    %197 = "llvm.intr.fmuladd"(%190, %195, %196) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %197, %158 : !llvm.ptr<vector<8xf32>>
    %198 = llvm.add %182, %17  : i64
    %199 = llvm.add %198, %153  : i64
    %200 = llvm.add %184, %17  : i64
    %201 = llvm.add %159, %200  : i64
    %202 = llvm.getelementptr %145[%201] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %203 = llvm.load %202 : !llvm.ptr<f32>
    %204 = llvm.insertelement %203, %188[%22 : i32] : vector<8xf32>
    %205 = llvm.shufflevector %204, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %206 = llvm.mul %199, %19  : i64
    %207 = llvm.add %206, %151  : i64
    %208 = llvm.getelementptr %arg15[%207] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %209 = llvm.bitcast %208 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %210 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %211 = llvm.load %158 : !llvm.ptr<vector<8xf32>>
    %212 = "llvm.intr.fmuladd"(%205, %210, %211) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %212, %158 : !llvm.ptr<vector<8xf32>>
    %213 = llvm.add %182, %10  : i64
    %214 = llvm.add %213, %153  : i64
    %215 = llvm.add %184, %10  : i64
    %216 = llvm.add %159, %215  : i64
    %217 = llvm.getelementptr %145[%216] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %218 = llvm.load %217 : !llvm.ptr<f32>
    %219 = llvm.insertelement %218, %188[%22 : i32] : vector<8xf32>
    %220 = llvm.shufflevector %219, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %221 = llvm.mul %214, %19  : i64
    %222 = llvm.add %221, %151  : i64
    %223 = llvm.getelementptr %arg15[%222] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %224 = llvm.bitcast %223 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %225 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %226 = llvm.load %158 : !llvm.ptr<vector<8xf32>>
    %227 = "llvm.intr.fmuladd"(%220, %225, %226) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %227, %158 : !llvm.ptr<vector<8xf32>>
    %228 = llvm.add %182, %9  : i64
    %229 = llvm.add %228, %153  : i64
    %230 = llvm.add %184, %9  : i64
    %231 = llvm.add %159, %230  : i64
    %232 = llvm.getelementptr %145[%231] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %233 = llvm.load %232 : !llvm.ptr<f32>
    %234 = llvm.insertelement %233, %188[%22 : i32] : vector<8xf32>
    %235 = llvm.shufflevector %234, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %236 = llvm.mul %229, %19  : i64
    %237 = llvm.add %236, %151  : i64
    %238 = llvm.getelementptr %arg15[%237] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %239 = llvm.bitcast %238 : !llvm.ptr<f32> to !llvm.ptr<vector<8xf32>>
    %240 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %241 = llvm.load %158 : !llvm.ptr<vector<8xf32>>
    %242 = "llvm.intr.fmuladd"(%235, %240, %241) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %242, %158 : !llvm.ptr<vector<8xf32>>
    %243 = llvm.add %184, %19  : i64
    %244 = llvm.add %159, %243  : i64
    %245 = llvm.getelementptr %145[%244] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %246 = llvm.load %245 : !llvm.ptr<f32>
    %247 = llvm.insertelement %246, %188[%22 : i32] : vector<8xf32>
    %248 = llvm.shufflevector %247, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %249 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %250 = llvm.load %169 : !llvm.ptr<vector<8xf32>>
    %251 = "llvm.intr.fmuladd"(%248, %249, %250) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %251, %169 : !llvm.ptr<vector<8xf32>>
    %252 = llvm.add %184, %8  : i64
    %253 = llvm.add %159, %252  : i64
    %254 = llvm.getelementptr %145[%253] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %255 = llvm.load %254 : !llvm.ptr<f32>
    %256 = llvm.insertelement %255, %188[%22 : i32] : vector<8xf32>
    %257 = llvm.shufflevector %256, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %258 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %259 = llvm.load %169 : !llvm.ptr<vector<8xf32>>
    %260 = "llvm.intr.fmuladd"(%257, %258, %259) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %260, %169 : !llvm.ptr<vector<8xf32>>
    %261 = llvm.add %184, %7  : i64
    %262 = llvm.add %159, %261  : i64
    %263 = llvm.getelementptr %145[%262] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %264 = llvm.load %263 : !llvm.ptr<f32>
    %265 = llvm.insertelement %264, %188[%22 : i32] : vector<8xf32>
    %266 = llvm.shufflevector %265, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %267 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %268 = llvm.load %169 : !llvm.ptr<vector<8xf32>>
    %269 = "llvm.intr.fmuladd"(%266, %267, %268) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %269, %169 : !llvm.ptr<vector<8xf32>>
    %270 = llvm.add %184, %6  : i64
    %271 = llvm.add %159, %270  : i64
    %272 = llvm.getelementptr %145[%271] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %273 = llvm.load %272 : !llvm.ptr<f32>
    %274 = llvm.insertelement %273, %188[%22 : i32] : vector<8xf32>
    %275 = llvm.shufflevector %274, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %276 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %277 = llvm.load %169 : !llvm.ptr<vector<8xf32>>
    %278 = "llvm.intr.fmuladd"(%275, %276, %277) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %278, %169 : !llvm.ptr<vector<8xf32>>
    %279 = llvm.add %184, %12  : i64
    %280 = llvm.add %159, %279  : i64
    %281 = llvm.getelementptr %145[%280] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %282 = llvm.load %281 : !llvm.ptr<f32>
    %283 = llvm.insertelement %282, %188[%22 : i32] : vector<8xf32>
    %284 = llvm.shufflevector %283, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %285 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %286 = llvm.load %175 : !llvm.ptr<vector<8xf32>>
    %287 = "llvm.intr.fmuladd"(%284, %285, %286) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %287, %175 : !llvm.ptr<vector<8xf32>>
    %288 = llvm.add %184, %5  : i64
    %289 = llvm.add %159, %288  : i64
    %290 = llvm.getelementptr %145[%289] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %291 = llvm.load %290 : !llvm.ptr<f32>
    %292 = llvm.insertelement %291, %188[%22 : i32] : vector<8xf32>
    %293 = llvm.shufflevector %292, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %294 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %295 = llvm.load %175 : !llvm.ptr<vector<8xf32>>
    %296 = "llvm.intr.fmuladd"(%293, %294, %295) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %296, %175 : !llvm.ptr<vector<8xf32>>
    %297 = llvm.add %184, %4  : i64
    %298 = llvm.add %159, %297  : i64
    %299 = llvm.getelementptr %145[%298] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %300 = llvm.load %299 : !llvm.ptr<f32>
    %301 = llvm.insertelement %300, %188[%22 : i32] : vector<8xf32>
    %302 = llvm.shufflevector %301, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %303 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %304 = llvm.load %175 : !llvm.ptr<vector<8xf32>>
    %305 = "llvm.intr.fmuladd"(%302, %303, %304) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %305, %175 : !llvm.ptr<vector<8xf32>>
    %306 = llvm.add %184, %3  : i64
    %307 = llvm.add %159, %306  : i64
    %308 = llvm.getelementptr %145[%307] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %309 = llvm.load %308 : !llvm.ptr<f32>
    %310 = llvm.insertelement %309, %188[%22 : i32] : vector<8xf32>
    %311 = llvm.shufflevector %310, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %312 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %313 = llvm.load %175 : !llvm.ptr<vector<8xf32>>
    %314 = "llvm.intr.fmuladd"(%311, %312, %313) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %314, %175 : !llvm.ptr<vector<8xf32>>
    %315 = llvm.add %184, %11  : i64
    %316 = llvm.add %159, %315  : i64
    %317 = llvm.getelementptr %145[%316] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %318 = llvm.load %317 : !llvm.ptr<f32>
    %319 = llvm.insertelement %318, %188[%22 : i32] : vector<8xf32>
    %320 = llvm.shufflevector %319, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %321 = llvm.load %194 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %322 = llvm.load %181 : !llvm.ptr<vector<8xf32>>
    %323 = "llvm.intr.fmuladd"(%320, %321, %322) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %323, %181 : !llvm.ptr<vector<8xf32>>
    %324 = llvm.add %184, %2  : i64
    %325 = llvm.add %159, %324  : i64
    %326 = llvm.getelementptr %145[%325] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %327 = llvm.load %326 : !llvm.ptr<f32>
    %328 = llvm.insertelement %327, %188[%22 : i32] : vector<8xf32>
    %329 = llvm.shufflevector %328, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %330 = llvm.load %209 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %331 = llvm.load %181 : !llvm.ptr<vector<8xf32>>
    %332 = "llvm.intr.fmuladd"(%329, %330, %331) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %332, %181 : !llvm.ptr<vector<8xf32>>
    %333 = llvm.add %184, %1  : i64
    %334 = llvm.add %159, %333  : i64
    %335 = llvm.getelementptr %145[%334] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %336 = llvm.load %335 : !llvm.ptr<f32>
    %337 = llvm.insertelement %336, %188[%22 : i32] : vector<8xf32>
    %338 = llvm.shufflevector %337, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %339 = llvm.load %224 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %340 = llvm.load %181 : !llvm.ptr<vector<8xf32>>
    %341 = "llvm.intr.fmuladd"(%338, %339, %340) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %341, %181 : !llvm.ptr<vector<8xf32>>
    %342 = llvm.add %184, %0  : i64
    %343 = llvm.add %159, %342  : i64
    %344 = llvm.getelementptr %145[%343] : (!llvm.ptr<f32>, i64) -> !llvm.ptr<f32>
    %345 = llvm.load %344 : !llvm.ptr<f32>
    %346 = llvm.insertelement %345, %188[%22 : i32] : vector<8xf32>
    %347 = llvm.shufflevector %346, %188 [0, 0, 0, 0, 0, 0, 0, 0] : vector<8xf32> 
    %348 = llvm.load %239 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %349 = llvm.load %181 : !llvm.ptr<vector<8xf32>>
    %350 = "llvm.intr.fmuladd"(%347, %348, %349) : (vector<8xf32>, vector<8xf32>, vector<8xf32>) -> vector<8xf32>
    llvm.store %350, %181 : !llvm.ptr<vector<8xf32>>
    %351 = llvm.add %182, %27  : i64
    llvm.br ^bb18(%351 : i64)
  ^bb20:  // pred: ^bb18
    %352 = llvm.load %158 : !llvm.ptr<vector<8xf32>>
    llvm.store %352, %162 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %353 = llvm.load %169 : !llvm.ptr<vector<8xf32>>
    llvm.store %353, %167 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %354 = llvm.load %175 : !llvm.ptr<vector<8xf32>>
    llvm.store %354, %173 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %355 = llvm.load %181 : !llvm.ptr<vector<8xf32>>
    llvm.store %355, %179 {alignment = 4 : i64} : !llvm.ptr<vector<8xf32>>
    %356 = llvm.add %153, %13  : i64
    llvm.br ^bb16(%356 : i64)
  ^bb21:  // pred: ^bb16
    %357 = llvm.add %151, %13  : i64
    llvm.br ^bb14(%357 : i64)
  ^bb22:  // pred: ^bb14
    %358 = llvm.add %149, %17  : i64
    llvm.br ^bb12(%358 : i64)
  ^bb23:  // pred: ^bb12
    llvm.br ^bb10(%96, %104, %112 : i64, i32, i32)
  ^bb24:  // pred: ^bb10
    llvm.return
  }
  llvm.func @_mlir_ciface_main_graph(%arg0: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg1: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>, %arg2: !llvm.ptr<struct<(ptr<f32>, ptr<f32>, i64, array<2 x i64>, array<2 x i64>)>>) attributes {access_mem_catcher = [["ref0", 0 : i32], ["ref1", 1 : i32]], input_names = ["X1", "X2"], llvm.emit_c_interface, output_names = ["Y"]} {
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
    llvm.call @main_graph(%1, %2, %3, %4, %5, %6, %7, %9, %10, %11, %12, %13, %14, %15, %17, %18, %19, %20, %21, %22, %23) : (!llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64, !llvm.ptr<f32>, !llvm.ptr<f32>, i64, i64, i64, i64, i64) -> ()
    llvm.return
  }
}

