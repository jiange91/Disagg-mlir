func.func private @disagg_read_tensor_f32(!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>)
llvm.mlir.global internal constant @constant_0("constant_0\00") {addr_space = 0 : i32}

%0 = rmem.alloc_memref(2, ) {alignment = 16 : i64} : <1, memref<50264x768xf32>>
%1 = rmem.memref.cast %0 : <1, memref<50264x768xf32>> to <1, memref<*xf32>>
%2 = llvm.mlir.addressof @constant_0 : !llvm.ptr<array<11 x i8>>
%3 = llvm.getelementptr %2[0, 0] : (!llvm.ptr<array<11 x i8>>) -> !llvm.ptr<i8>
func.call @disagg_read_tensor_f32(%3, %1) : (!llvm.ptr<i8>, !rmem.rmref<1, memref<*xf32>>) -> ()