; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl" = type { %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" }
%"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"class.std::allocator" = type { i8 }
%"class.std::initializer_list" = type { ptr, i64 }
%"struct.std::random_access_iterator_tag" = type { i8 }
%"struct.std::forward_iterator_tag" = type { i8 }
%struct.rvector = type { ptr, ptr, ptr }

@str1 = internal constant [49 x i8] c"cannot create std::vector larger than max_size()\00"
@str0 = internal constant [5 x i8] c"%zu\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @channel_init()

declare void @cache_init()

declare void @init_client()

declare i32 @printf(ptr, ...)

define i32 @_Z3sumRSt6vectorIiSaIiEE(ptr %0) !dbg !3 {
  br label %2, !dbg !7

2:                                                ; preds = %8, %1
  %3 = phi i32 [ %15, %8 ], [ 0, %1 ]
  %4 = phi i32 [ %14, %8 ], [ 0, %1 ]
  %5 = sext i32 %3 to i64, !dbg !9
  %6 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %0), !dbg !10
  %7 = icmp slt i64 %5, %6, !dbg !11
  br i1 %7, label %8, label %16, !dbg !12

8:                                                ; preds = %2
  %9 = phi i32 [ %4, %2 ]
  %10 = phi i32 [ %3, %2 ]
  %11 = sext i32 %10 to i64, !dbg !13
  %12 = call ptr @_ZNSt6vectorIiSaIiEEixEm(ptr %0, i64 %11), !dbg !14
  %13 = load i32, ptr %12, align 4, !dbg !15
  %14 = add i32 %9, %13, !dbg !16
  %15 = add i32 %10, 1, !dbg !17
  br label %2, !dbg !18

16:                                               ; preds = %2
  ret i32 %4, !dbg !19
}

define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %0) !dbg !20 {
  %2 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !21
  %3 = getelementptr %"struct.std::_Vector_base", ptr %2, i32 0, i32 0, !dbg !23
  %4 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !24
  %5 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !25
  %6 = load ptr, ptr %5, align 8, !dbg !26
  %7 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !27
  %8 = load ptr, ptr %7, align 8, !dbg !28
  %9 = ptrtoint ptr %8 to i64, !dbg !29
  %10 = ptrtoint ptr %6 to i64, !dbg !30
  %11 = sub i64 %10, %9, !dbg !31
  %12 = sdiv i64 %11, 4, !dbg !32
  ret i64 %12, !dbg !33
}

define linkonce_odr ptr @_ZNSt6vectorIiSaIiEEixEm(ptr %0, i64 %1) !dbg !34 {
  %3 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !35
  %4 = getelementptr %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !37
  %5 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !38
  %6 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !39
  %7 = load ptr, ptr %6, align 8, !dbg !40
  %8 = getelementptr i32, ptr %7, i64 %1, !dbg !41
  ret ptr %8, !dbg !42
}

define i32 @main() !dbg !43 {
  call void @init_client(), !dbg !44
  call void @cache_init(), !dbg !46
  call void @channel_init(), !dbg !47
  %1 = alloca %"class.std::vector", i64 1, align 8, !dbg !48
  %2 = alloca %"class.std::allocator", i64 1, align 8, !dbg !49
  %3 = alloca %"class.std::allocator", i64 1, align 8, !dbg !50
  %4 = alloca [6 x i32], i64 1, align 4, !dbg !51
  %5 = alloca [6 x i32], i64 1, align 4, !dbg !52
  %6 = alloca %"class.std::vector", i64 1, align 8, !dbg !53
  %7 = getelementptr [6 x i32], ptr %5, i32 0, i32 0, !dbg !54
  store i32 0, ptr %7, align 4, !dbg !55
  %8 = getelementptr [6 x i32], ptr %5, i32 0, i32 1, !dbg !56
  store i32 1, ptr %8, align 4, !dbg !57
  %9 = getelementptr [6 x i32], ptr %5, i32 0, i32 2, !dbg !58
  store i32 2, ptr %9, align 4, !dbg !59
  %10 = getelementptr [6 x i32], ptr %5, i32 0, i32 3, !dbg !60
  store i32 3, ptr %10, align 4, !dbg !61
  %11 = getelementptr [6 x i32], ptr %5, i32 0, i32 4, !dbg !62
  store i32 4, ptr %11, align 4, !dbg !63
  %12 = getelementptr [6 x i32], ptr %5, i32 0, i32 5, !dbg !64
  store i32 5, ptr %12, align 4, !dbg !65
  %13 = load [6 x i32], ptr %5, align 4, !dbg !66
  store [6 x i32] %13, ptr %4, align 4, !dbg !67
  %14 = getelementptr [6 x i32], ptr %4, i32 0, i32 0, !dbg !68
  %15 = insertvalue %"class.std::initializer_list" undef, ptr %14, 0, !dbg !69
  %16 = insertvalue %"class.std::initializer_list" %15, i64 6, 1, !dbg !70
  %17 = load %"class.std::allocator", ptr %3, align 1, !dbg !71
  store %"class.std::allocator" %17, ptr %2, align 1, !dbg !72
  call void @_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_(ptr %6, %"class.std::initializer_list" %16, ptr %2), !dbg !73
  %18 = load %"class.std::vector", ptr %6, align 8, !dbg !74
  store %"class.std::vector" %18, ptr %1, align 8, !dbg !75
  call void @_Z10remotelizeIiEvRSt6vectorIT_SaIS1_EE(ptr %1), !dbg !76
  %19 = call i64 @remote_vec_size(ptr %1), !dbg !77
  %20 = call i32 (ptr, ...) @printf(ptr @str0, i64 %19), !dbg !78
  ret i32 0, !dbg !79
}

define linkonce_odr void @_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_(ptr %0, %"class.std::initializer_list" %1, ptr %2) !dbg !80 {
  %4 = alloca %"struct.std::random_access_iterator_tag", i64 1, align 8, !dbg !81
  %5 = alloca %"struct.std::forward_iterator_tag", i64 1, align 8, !dbg !83
  %6 = alloca %"class.std::initializer_list", i64 1, align 8, !dbg !84
  store %"class.std::initializer_list" %1, ptr %6, align 8, !dbg !85
  %7 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !86
  call void @_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_(ptr %7, ptr %2), !dbg !87
  %8 = call ptr @_ZNKSt16initializer_listIiE5beginEv(ptr %6), !dbg !88
  %9 = call ptr @_ZNKSt16initializer_listIiE3endEv(ptr %6), !dbg !89
  call void @llvm.memset.p0.i64(ptr %4, i8 0, i64 1, i1 false), !dbg !90
  %10 = load %"struct.std::forward_iterator_tag", ptr %5, align 1, !dbg !91
  call void @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag(ptr %0, ptr %8, ptr %9, %"struct.std::forward_iterator_tag" %10), !dbg !92
  ret void, !dbg !93
}

define linkonce_odr void @_ZNSaIiEC1Ev(ptr %0) !dbg !94 {
  ret void, !dbg !95
}

define linkonce_odr void @_Z10remotelizeIiEvRSt6vectorIT_SaIS1_EE(ptr %0) !dbg !97 {
  %2 = alloca i128, i64 1, align 8, !dbg !98
  store i128 undef, ptr %2, align 8, !dbg !100
  %3 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %0), !dbg !101
  %4 = call i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr %0), !dbg !102
  %5 = mul i64 %4, 4, !dbg !103
  %6 = call ptr @_Z13_disagg_allocjm(i32 2, i64 %5), !dbg !104
  %7 = ptrtoint ptr %6 to i64, !dbg !105
  %8 = call i128 @_Z13cache_requestm(i64 %7), !dbg !106
  store i128 %8, ptr %2, align 8, !dbg !107
  %9 = call ptr @_Z16cache_access_mutPn(ptr %2), !dbg !108
  %10 = getelementptr %struct.rvector, ptr %0, i32 0, i32 0, !dbg !109
  %11 = load ptr, ptr %10, align 8, !dbg !110
  call void @llvm.memcpy.p0.p0.i64(ptr %9, ptr %11, i64 %5, i1 false), !dbg !111
  store ptr %6, ptr %10, align 8, !dbg !112
  %12 = getelementptr %struct.rvector, ptr %0, i32 0, i32 1, !dbg !113
  %13 = load ptr, ptr %10, align 8, !dbg !114
  %14 = getelementptr i32, ptr %13, i64 %3, !dbg !115
  store ptr %14, ptr %12, align 8, !dbg !116
  %15 = getelementptr %struct.rvector, ptr %0, i32 0, i32 2, !dbg !117
  %16 = load ptr, ptr %10, align 8, !dbg !118
  %17 = getelementptr i32, ptr %16, i64 %4, !dbg !119
  store ptr %17, ptr %15, align 8, !dbg !120
  ret void, !dbg !121
}

define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_(ptr %0, ptr %1) !dbg !122 {
  %3 = getelementptr %"struct.std::_Vector_base", ptr %0, i32 0, i32 0, !dbg !123
  call void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_(ptr %3, ptr %1), !dbg !125
  ret void, !dbg !126
}

define linkonce_odr void @_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag(ptr %0, ptr %1, ptr %2, %"struct.std::forward_iterator_tag" %3) !dbg !127 {
  %5 = call i64 @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr %1, ptr %2), !dbg !128
  %6 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !130
  %7 = getelementptr %"struct.std::_Vector_base", ptr %6, i32 0, i32 0, !dbg !131
  %8 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", ptr %7, i32 0, i32 0, !dbg !132
  %9 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %8, i32 0, i32 0, !dbg !133
  %10 = call ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %6), !dbg !134
  %11 = call i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 %5, ptr %10), !dbg !135
  %12 = call ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %6, i64 %11), !dbg !136
  store ptr %12, ptr %9, align 8, !dbg !137
  %13 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %8, i32 0, i32 2, !dbg !138
  %14 = load ptr, ptr %9, align 8, !dbg !139
  %15 = getelementptr i32, ptr %14, i64 %5, !dbg !140
  store ptr %15, ptr %13, align 8, !dbg !141
  %16 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %8, i32 0, i32 1, !dbg !142
  %17 = load ptr, ptr %9, align 8, !dbg !143
  %18 = call ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %6), !dbg !144
  %19 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %1, ptr %2, ptr %17), !dbg !145
  store ptr %19, ptr %16, align 8, !dbg !146
  ret void, !dbg !147
}

define linkonce_odr ptr @_ZNKSt16initializer_listIiE5beginEv(ptr %0) !dbg !148 {
  %2 = getelementptr %"class.std::initializer_list", ptr %0, i32 0, i32 0, !dbg !149
  %3 = load ptr, ptr %2, align 8, !dbg !151
  ret ptr %3, !dbg !152
}

define linkonce_odr ptr @_ZNKSt16initializer_listIiE3endEv(ptr %0) !dbg !153 {
  %2 = call ptr @_ZNKSt16initializer_listIiE5beginEv(ptr %0), !dbg !154
  %3 = call i64 @_ZNKSt16initializer_listIiE4sizeEv(ptr %0), !dbg !156
  %4 = getelementptr i32, ptr %2, i64 %3, !dbg !157
  ret ptr %4, !dbg !158
}

define linkonce_odr void @_ZNSt20forward_iterator_tagC1EOS_(ptr %0, ptr %1) !dbg !159 {
  ret void, !dbg !160
}

define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC1Ev(ptr %0) !dbg !162 {
  ret void, !dbg !163
}

define linkonce_odr i64 @_ZNKSt6vectorIiSaIiEE8capacityEv(ptr %0) !dbg !165 {
  %2 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !166
  %3 = getelementptr %"struct.std::_Vector_base", ptr %2, i32 0, i32 0, !dbg !168
  %4 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !169
  %5 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i32 0, i32 2, !dbg !170
  %6 = load ptr, ptr %5, align 8, !dbg !171
  %7 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !172
  %8 = load ptr, ptr %7, align 8, !dbg !173
  %9 = ptrtoint ptr %8 to i64, !dbg !174
  %10 = ptrtoint ptr %6 to i64, !dbg !175
  %11 = sub i64 %10, %9, !dbg !176
  %12 = sdiv i64 %11, 4, !dbg !177
  ret i64 %12, !dbg !178
}

declare ptr @_Z13_disagg_allocjm(i32, i64)

declare i128 @_Z13cache_requestm(i64)

declare ptr @_Z16cache_access_mutPn(ptr)

define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_(ptr %0, ptr %1) !dbg !179 {
  %3 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl", ptr %0, i32 0, i32 0, !dbg !180
  call void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(ptr %3), !dbg !182
  ret void, !dbg !183
}

define linkonce_odr i64 @_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_(ptr %0, ptr %1) !dbg !184 {
  %3 = alloca %"struct.std::random_access_iterator_tag", i64 1, align 8, !dbg !185
  %4 = alloca ptr, i64 1, align 8, !dbg !187
  store ptr %0, ptr %4, align 8, !dbg !188
  %5 = call %"struct.std::random_access_iterator_tag" @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr %4), !dbg !189
  %6 = load %"struct.std::random_access_iterator_tag", ptr %3, align 1, !dbg !190
  %7 = call i64 @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr %0, ptr %1, %"struct.std::random_access_iterator_tag" %6), !dbg !191
  ret i64 %7, !dbg !192
}

define linkonce_odr ptr @_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm(ptr %0, i64 %1) !dbg !193 {
  %3 = icmp ne i64 %1, 0, !dbg !194
  br i1 %3, label %4, label %9, !dbg !196

4:                                                ; preds = %2
  %5 = getelementptr %"struct.std::_Vector_base", ptr %0, i32 0, i32 0, !dbg !197
  %6 = icmp ne ptr %5, null, !dbg !198
  %7 = select i1 %6, ptr %5, ptr null, !dbg !199
  %8 = call ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr %7, i64 %1), !dbg !200
  br label %10, !dbg !201

9:                                                ; preds = %2
  br label %10, !dbg !202

10:                                               ; preds = %4, %9
  %11 = phi ptr [ null, %9 ], [ %8, %4 ]
  br label %12, !dbg !203

12:                                               ; preds = %10
  ret ptr %11, !dbg !204
}

define linkonce_odr i64 @_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_(i64 %0, ptr %1) !dbg !205 {
  %3 = alloca %"class.std::allocator", i64 1, align 8, !dbg !206
  %4 = alloca %"class.std::allocator", i64 1, align 8, !dbg !208
  %5 = load %"class.std::allocator", ptr %4, align 1, !dbg !209
  store %"class.std::allocator" %5, ptr %3, align 1, !dbg !210
  %6 = call i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr %3), !dbg !211
  %7 = icmp sgt i64 %0, %6, !dbg !212
  br i1 %7, label %8, label %9, !dbg !213

8:                                                ; preds = %2
  call void @_ZSt20__throw_length_errorPKc(ptr @str1), !dbg !214
  br label %9, !dbg !215

9:                                                ; preds = %8, %2
  ret i64 %0, !dbg !216
}

define linkonce_odr ptr @_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv(ptr %0) !dbg !217 {
  %2 = getelementptr %"struct.std::_Vector_base", ptr %0, i32 0, i32 0, !dbg !218
  %3 = icmp ne ptr %2, null, !dbg !220
  %4 = select i1 %3, ptr %2, ptr null, !dbg !221
  ret ptr %4, !dbg !222
}

define linkonce_odr ptr @_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E(ptr %0, ptr %1, ptr %2, ptr %3) !dbg !223 {
  %5 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %0, ptr %1, ptr %2), !dbg !224
  ret ptr %5, !dbg !226
}

define linkonce_odr i64 @_ZNKSt16initializer_listIiE4sizeEv(ptr %0) !dbg !227 {
  %2 = getelementptr %"class.std::initializer_list", ptr %0, i32 0, i32 1, !dbg !228
  %3 = load i64, ptr %2, align 8, !dbg !230
  ret i64 %3, !dbg !231
}

define linkonce_odr void @_ZNSt18input_iterator_tagC1EOS_(ptr %0, ptr %1) !dbg !232 {
  ret void, !dbg !233
}

define linkonce_odr void @_ZNSaIiEC1ERKS_(ptr %0, ptr %1) !dbg !235 {
  ret void, !dbg !236
}

define linkonce_odr void @_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev(ptr %0) !dbg !238 {
  %2 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i32 0, i32 0, !dbg !239
  store ptr null, ptr %2, align 8, !dbg !241
  %3 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i32 0, i32 1, !dbg !242
  store ptr null, ptr %3, align 8, !dbg !243
  %4 = getelementptr %"struct.std::_Vector_base<int, std::allocator<int>>::_Vector_impl_data", ptr %0, i32 0, i32 2, !dbg !244
  store ptr null, ptr %4, align 8, !dbg !245
  ret void, !dbg !246
}

define linkonce_odr i64 @_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag(ptr %0, ptr %1, %"struct.std::random_access_iterator_tag" %2) !dbg !247 {
  %4 = ptrtoint ptr %0 to i64, !dbg !248
  %5 = ptrtoint ptr %1 to i64, !dbg !250
  %6 = sub i64 %5, %4, !dbg !251
  %7 = sdiv i64 %6, 4, !dbg !252
  ret i64 %7, !dbg !253
}

define linkonce_odr void @_ZNSt26random_access_iterator_tagC1EOS_(ptr %0, ptr %1) !dbg !254 {
  ret void, !dbg !255
}

define linkonce_odr %"struct.std::random_access_iterator_tag" @_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_(ptr %0) !dbg !257 {
  %2 = alloca %"struct.std::random_access_iterator_tag", i64 1, align 8, !dbg !258
  %3 = alloca %"struct.std::random_access_iterator_tag", i64 1, align 8, !dbg !260
  call void @llvm.memset.p0.i64(ptr %2, i8 0, i64 1, i1 false), !dbg !261
  %4 = load %"struct.std::random_access_iterator_tag", ptr %3, align 1, !dbg !262
  ret %"struct.std::random_access_iterator_tag" %4, !dbg !263
}

define linkonce_odr ptr @_ZNSt16allocator_traitsISaIiEE8allocateERS0_m(ptr %0, i64 %1) !dbg !264 {
  %3 = call ptr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr %0, i64 %1, ptr null), !dbg !265
  ret ptr %3, !dbg !267
}

define linkonce_odr i64 @_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_(ptr %0) !dbg !268 {
  %2 = alloca i64, i64 1, align 8, !dbg !269
  store i64 undef, ptr %2, align 8, !dbg !271
  %3 = alloca i64, i64 1, align 8, !dbg !272
  store i64 undef, ptr %3, align 8, !dbg !273
  store i64 2305843009213693951, ptr %3, align 8, !dbg !274
  store i64 2305843009213693951, ptr %2, align 8, !dbg !275
  %4 = call ptr @_ZSt3minImERKT_S2_S2_(ptr %3, ptr %2), !dbg !276
  %5 = load i64, ptr %4, align 8, !dbg !277
  ret i64 %5, !dbg !278
}

declare void @_ZSt20__throw_length_errorPKc(ptr)

define linkonce_odr ptr @_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_(ptr %0, ptr %1, ptr %2) !dbg !279 {
  %4 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %0, ptr %1, ptr %2), !dbg !280
  ret ptr %4, !dbg !282
}

define linkonce_odr void @_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_(ptr %0, ptr %1) !dbg !283 {
  ret void, !dbg !284
}

define linkonce_odr void @_ZNSt26bidirectional_iterator_tagC1EOS_(ptr %0, ptr %1) !dbg !286 {
  ret void, !dbg !287
}

define linkonce_odr ptr @_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv(ptr %0, i64 %1, ptr %2) !dbg !289 {
  %4 = icmp sgt i64 %1, 2305843009213693951, !dbg !290
  br i1 %4, label %5, label %6, !dbg !292

5:                                                ; preds = %3
  call void @_ZSt17__throw_bad_allocv(), !dbg !293
  br label %6, !dbg !294

6:                                                ; preds = %5, %3
  %7 = mul i64 %1, 4, !dbg !295
  %8 = call ptr @_Znwm(i64 %7), !dbg !296
  ret ptr %8, !dbg !297
}

define linkonce_odr i64 @_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_(ptr %0) !dbg !298 {
  ret i64 2305843009213693951, !dbg !299
}

define linkonce_odr ptr @_ZSt3minImERKT_S2_S2_(ptr %0, ptr %1) !dbg !301 {
  %3 = load i64, ptr %1, align 8, !dbg !302
  %4 = load i64, ptr %0, align 8, !dbg !304
  %5 = icmp slt i64 %3, %4, !dbg !305
  %6 = select i1 %5, ptr %1, ptr %0, !dbg !306
  ret ptr %6, !dbg !307
}

define linkonce_odr ptr @_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_(ptr %0, ptr %1, ptr %2) !dbg !308 {
  %4 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %0, ptr %1, ptr %2), !dbg !309
  ret ptr %4, !dbg !311
}

define linkonce_odr i64 @_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv(ptr %0) !dbg !312 {
  ret i64 2305843009213693951, !dbg !313
}

declare void @_ZSt17__throw_bad_allocv()

declare ptr @_Znwm(i64)

define linkonce_odr ptr @_ZSt4copyIPKiPiET0_T_S4_S3_(ptr %0, ptr %1, ptr %2) !dbg !315 {
  %4 = call ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %0, ptr %1, ptr %2), !dbg !316
  ret ptr %4, !dbg !318
}

define linkonce_odr ptr @_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_(ptr %0, ptr %1, ptr %2) !dbg !319 {
  %4 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %0, ptr %1, ptr %2), !dbg !320
  ret ptr %4, !dbg !322
}

define linkonce_odr ptr @_ZSt12__miter_baseIPKiET_S2_(ptr %0) !dbg !323 {
  ret ptr %0, !dbg !324
}

define linkonce_odr ptr @_ZSt12__niter_wrapIPiET_RKS1_S1_(ptr %0, ptr %1) !dbg !326 {
  ret ptr %1, !dbg !327
}

define linkonce_odr ptr @_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_(ptr %0, ptr %1, ptr %2) !dbg !329 {
  %4 = call ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %0, ptr %1, ptr %2), !dbg !330
  ret ptr %4, !dbg !332
}

define linkonce_odr ptr @_ZSt12__niter_baseIPKiET_S2_(ptr %0) !dbg !333 {
  ret ptr %0, !dbg !334
}

define linkonce_odr ptr @_ZSt12__niter_baseIPiET_S1_(ptr %0) !dbg !336 {
  ret ptr %0, !dbg !337
}

define linkonce_odr ptr @_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_(ptr %0, ptr %1, ptr %2) !dbg !339 {
  %4 = ptrtoint ptr %0 to i64, !dbg !340
  %5 = ptrtoint ptr %1 to i64, !dbg !342
  %6 = sub i64 %5, %4, !dbg !343
  %7 = sdiv i64 %6, 4, !dbg !344
  %8 = icmp ne i64 %7, 0, !dbg !345
  br i1 %8, label %9, label %11, !dbg !346

9:                                                ; preds = %3
  %10 = mul i64 %7, 4, !dbg !347
  call void @llvm.memmove.p0.p0.i64(ptr %2, ptr %0, i64 %10, i1 false), !dbg !348
  br label %11, !dbg !349

11:                                               ; preds = %9, %3
  %12 = getelementptr i32, ptr %2, i64 %7, !dbg !350
  ret ptr %12, !dbg !351
}

define i64 @remote_vec_size(ptr %0) !dbg !352 {
  %2 = call i64 @_ZNKSt6vectorIiSaIiEE4sizeEv(ptr %0), !dbg !353
  ret i64 %2, !dbg !355
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #0

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nocallback nofree nounwind willreturn
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #1

attributes #0 = { argmemonly nocallback nofree nounwind willreturn writeonly }
attributes #1 = { argmemonly nocallback nofree nounwind willreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "_Z3sumRSt6vectorIiSaIiEE", linkageName: "_Z3sumRSt6vectorIiSaIiEE", scope: null, file: !4, line: 8, type: !5, scopeLine: 8, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "cvec_llvm_llvm.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/origin/vec")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 11, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 13, column: 10, scope: !8)
!10 = !DILocation(line: 14, column: 10, scope: !8)
!11 = !DILocation(line: 15, column: 10, scope: !8)
!12 = !DILocation(line: 16, column: 5, scope: !8)
!13 = !DILocation(line: 18, column: 10, scope: !8)
!14 = !DILocation(line: 19, column: 11, scope: !8)
!15 = !DILocation(line: 20, column: 11, scope: !8)
!16 = !DILocation(line: 21, column: 11, scope: !8)
!17 = !DILocation(line: 22, column: 11, scope: !8)
!18 = !DILocation(line: 23, column: 5, scope: !8)
!19 = !DILocation(line: 25, column: 5, scope: !8)
!20 = distinct !DISubprogram(name: "_ZNKSt6vectorIiSaIiEE4sizeEv", linkageName: "_ZNKSt6vectorIiSaIiEE4sizeEv", scope: null, file: !4, line: 27, type: !5, scopeLine: 27, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!21 = !DILocation(line: 29, column: 10, scope: !22)
!22 = !DILexicalBlockFile(scope: !20, file: !4, discriminator: 0)
!23 = !DILocation(line: 30, column: 10, scope: !22)
!24 = !DILocation(line: 31, column: 10, scope: !22)
!25 = !DILocation(line: 32, column: 10, scope: !22)
!26 = !DILocation(line: 33, column: 10, scope: !22)
!27 = !DILocation(line: 34, column: 10, scope: !22)
!28 = !DILocation(line: 35, column: 10, scope: !22)
!29 = !DILocation(line: 36, column: 10, scope: !22)
!30 = !DILocation(line: 37, column: 10, scope: !22)
!31 = !DILocation(line: 38, column: 11, scope: !22)
!32 = !DILocation(line: 39, column: 11, scope: !22)
!33 = !DILocation(line: 40, column: 5, scope: !22)
!34 = distinct !DISubprogram(name: "_ZNSt6vectorIiSaIiEEixEm", linkageName: "_ZNSt6vectorIiSaIiEEixEm", scope: null, file: !4, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!35 = !DILocation(line: 43, column: 10, scope: !36)
!36 = !DILexicalBlockFile(scope: !34, file: !4, discriminator: 0)
!37 = !DILocation(line: 44, column: 10, scope: !36)
!38 = !DILocation(line: 45, column: 10, scope: !36)
!39 = !DILocation(line: 46, column: 10, scope: !36)
!40 = !DILocation(line: 47, column: 10, scope: !36)
!41 = !DILocation(line: 48, column: 10, scope: !36)
!42 = !DILocation(line: 49, column: 5, scope: !36)
!43 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 51, type: !5, scopeLine: 51, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!44 = !DILocation(line: 52, column: 5, scope: !45)
!45 = !DILexicalBlockFile(scope: !43, file: !4, discriminator: 0)
!46 = !DILocation(line: 53, column: 5, scope: !45)
!47 = !DILocation(line: 54, column: 5, scope: !45)
!48 = !DILocation(line: 63, column: 10, scope: !45)
!49 = !DILocation(line: 64, column: 10, scope: !45)
!50 = !DILocation(line: 65, column: 11, scope: !45)
!51 = !DILocation(line: 66, column: 11, scope: !45)
!52 = !DILocation(line: 67, column: 11, scope: !45)
!53 = !DILocation(line: 68, column: 11, scope: !45)
!54 = !DILocation(line: 69, column: 11, scope: !45)
!55 = !DILocation(line: 70, column: 5, scope: !45)
!56 = !DILocation(line: 71, column: 11, scope: !45)
!57 = !DILocation(line: 72, column: 5, scope: !45)
!58 = !DILocation(line: 73, column: 11, scope: !45)
!59 = !DILocation(line: 74, column: 5, scope: !45)
!60 = !DILocation(line: 75, column: 11, scope: !45)
!61 = !DILocation(line: 76, column: 5, scope: !45)
!62 = !DILocation(line: 77, column: 11, scope: !45)
!63 = !DILocation(line: 78, column: 5, scope: !45)
!64 = !DILocation(line: 79, column: 11, scope: !45)
!65 = !DILocation(line: 80, column: 5, scope: !45)
!66 = !DILocation(line: 81, column: 11, scope: !45)
!67 = !DILocation(line: 82, column: 5, scope: !45)
!68 = !DILocation(line: 84, column: 11, scope: !45)
!69 = !DILocation(line: 85, column: 11, scope: !45)
!70 = !DILocation(line: 86, column: 11, scope: !45)
!71 = !DILocation(line: 87, column: 11, scope: !45)
!72 = !DILocation(line: 88, column: 5, scope: !45)
!73 = !DILocation(line: 89, column: 5, scope: !45)
!74 = !DILocation(line: 90, column: 11, scope: !45)
!75 = !DILocation(line: 91, column: 5, scope: !45)
!76 = !DILocation(line: 92, column: 5, scope: !45)
!77 = !DILocation(line: 96, column: 11, scope: !45)
!78 = !DILocation(line: 97, column: 11, scope: !45)
!79 = !DILocation(line: 98, column: 5, scope: !45)
!80 = distinct !DISubprogram(name: "_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_", linkageName: "_ZNSt6vectorIiSaIiEEC1ESt16initializer_listIiERKS0_", scope: null, file: !4, line: 100, type: !5, scopeLine: 100, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!81 = !DILocation(line: 104, column: 10, scope: !82)
!82 = !DILexicalBlockFile(scope: !80, file: !4, discriminator: 0)
!83 = !DILocation(line: 105, column: 10, scope: !82)
!84 = !DILocation(line: 106, column: 10, scope: !82)
!85 = !DILocation(line: 107, column: 5, scope: !82)
!86 = !DILocation(line: 108, column: 10, scope: !82)
!87 = !DILocation(line: 109, column: 5, scope: !82)
!88 = !DILocation(line: 110, column: 10, scope: !82)
!89 = !DILocation(line: 111, column: 10, scope: !82)
!90 = !DILocation(line: 113, column: 5, scope: !82)
!91 = !DILocation(line: 114, column: 11, scope: !82)
!92 = !DILocation(line: 115, column: 5, scope: !82)
!93 = !DILocation(line: 116, column: 5, scope: !82)
!94 = distinct !DISubprogram(name: "_ZNSaIiEC1Ev", linkageName: "_ZNSaIiEC1Ev", scope: null, file: !4, line: 118, type: !5, scopeLine: 118, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!95 = !DILocation(line: 119, column: 5, scope: !96)
!96 = !DILexicalBlockFile(scope: !94, file: !4, discriminator: 0)
!97 = distinct !DISubprogram(name: "_Z10remotelizeIiEvRSt6vectorIT_SaIS1_EE", linkageName: "_Z10remotelizeIiEvRSt6vectorIT_SaIS1_EE", scope: null, file: !4, line: 121, type: !5, scopeLine: 121, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!98 = !DILocation(line: 126, column: 10, scope: !99)
!99 = !DILexicalBlockFile(scope: !97, file: !4, discriminator: 0)
!100 = !DILocation(line: 128, column: 5, scope: !99)
!101 = !DILocation(line: 130, column: 10, scope: !99)
!102 = !DILocation(line: 131, column: 10, scope: !99)
!103 = !DILocation(line: 132, column: 10, scope: !99)
!104 = !DILocation(line: 133, column: 11, scope: !99)
!105 = !DILocation(line: 134, column: 11, scope: !99)
!106 = !DILocation(line: 135, column: 11, scope: !99)
!107 = !DILocation(line: 136, column: 5, scope: !99)
!108 = !DILocation(line: 137, column: 11, scope: !99)
!109 = !DILocation(line: 138, column: 11, scope: !99)
!110 = !DILocation(line: 139, column: 11, scope: !99)
!111 = !DILocation(line: 141, column: 5, scope: !99)
!112 = !DILocation(line: 143, column: 5, scope: !99)
!113 = !DILocation(line: 144, column: 11, scope: !99)
!114 = !DILocation(line: 145, column: 11, scope: !99)
!115 = !DILocation(line: 146, column: 11, scope: !99)
!116 = !DILocation(line: 147, column: 5, scope: !99)
!117 = !DILocation(line: 148, column: 11, scope: !99)
!118 = !DILocation(line: 149, column: 11, scope: !99)
!119 = !DILocation(line: 150, column: 11, scope: !99)
!120 = !DILocation(line: 151, column: 5, scope: !99)
!121 = !DILocation(line: 152, column: 5, scope: !99)
!122 = distinct !DISubprogram(name: "_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_", linkageName: "_ZNSt12_Vector_baseIiSaIiEEC1ERKS0_", scope: null, file: !4, line: 154, type: !5, scopeLine: 154, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!123 = !DILocation(line: 155, column: 10, scope: !124)
!124 = !DILexicalBlockFile(scope: !122, file: !4, discriminator: 0)
!125 = !DILocation(line: 156, column: 5, scope: !124)
!126 = !DILocation(line: 157, column: 5, scope: !124)
!127 = distinct !DISubprogram(name: "_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag", linkageName: "_ZNSt6vectorIiSaIiEE19_M_range_initializeIPKiEEvT_S5_St20forward_iterator_tag", scope: null, file: !4, line: 159, type: !5, scopeLine: 159, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!128 = !DILocation(line: 160, column: 10, scope: !129)
!129 = !DILexicalBlockFile(scope: !127, file: !4, discriminator: 0)
!130 = !DILocation(line: 161, column: 10, scope: !129)
!131 = !DILocation(line: 162, column: 10, scope: !129)
!132 = !DILocation(line: 163, column: 10, scope: !129)
!133 = !DILocation(line: 164, column: 10, scope: !129)
!134 = !DILocation(line: 165, column: 10, scope: !129)
!135 = !DILocation(line: 166, column: 10, scope: !129)
!136 = !DILocation(line: 167, column: 10, scope: !129)
!137 = !DILocation(line: 168, column: 5, scope: !129)
!138 = !DILocation(line: 169, column: 10, scope: !129)
!139 = !DILocation(line: 170, column: 10, scope: !129)
!140 = !DILocation(line: 171, column: 11, scope: !129)
!141 = !DILocation(line: 172, column: 5, scope: !129)
!142 = !DILocation(line: 173, column: 11, scope: !129)
!143 = !DILocation(line: 174, column: 11, scope: !129)
!144 = !DILocation(line: 175, column: 11, scope: !129)
!145 = !DILocation(line: 176, column: 11, scope: !129)
!146 = !DILocation(line: 177, column: 5, scope: !129)
!147 = !DILocation(line: 178, column: 5, scope: !129)
!148 = distinct !DISubprogram(name: "_ZNKSt16initializer_listIiE5beginEv", linkageName: "_ZNKSt16initializer_listIiE5beginEv", scope: null, file: !4, line: 180, type: !5, scopeLine: 180, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!149 = !DILocation(line: 181, column: 10, scope: !150)
!150 = !DILexicalBlockFile(scope: !148, file: !4, discriminator: 0)
!151 = !DILocation(line: 182, column: 10, scope: !150)
!152 = !DILocation(line: 183, column: 5, scope: !150)
!153 = distinct !DISubprogram(name: "_ZNKSt16initializer_listIiE3endEv", linkageName: "_ZNKSt16initializer_listIiE3endEv", scope: null, file: !4, line: 185, type: !5, scopeLine: 185, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!154 = !DILocation(line: 186, column: 10, scope: !155)
!155 = !DILexicalBlockFile(scope: !153, file: !4, discriminator: 0)
!156 = !DILocation(line: 187, column: 10, scope: !155)
!157 = !DILocation(line: 188, column: 10, scope: !155)
!158 = !DILocation(line: 189, column: 5, scope: !155)
!159 = distinct !DISubprogram(name: "_ZNSt20forward_iterator_tagC1EOS_", linkageName: "_ZNSt20forward_iterator_tagC1EOS_", scope: null, file: !4, line: 191, type: !5, scopeLine: 191, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!160 = !DILocation(line: 192, column: 5, scope: !161)
!161 = !DILexicalBlockFile(scope: !159, file: !4, discriminator: 0)
!162 = distinct !DISubprogram(name: "_ZN9__gnu_cxx13new_allocatorIiEC1Ev", linkageName: "_ZN9__gnu_cxx13new_allocatorIiEC1Ev", scope: null, file: !4, line: 194, type: !5, scopeLine: 194, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!163 = !DILocation(line: 195, column: 5, scope: !164)
!164 = !DILexicalBlockFile(scope: !162, file: !4, discriminator: 0)
!165 = distinct !DISubprogram(name: "_ZNKSt6vectorIiSaIiEE8capacityEv", linkageName: "_ZNKSt6vectorIiSaIiEE8capacityEv", scope: null, file: !4, line: 197, type: !5, scopeLine: 197, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!166 = !DILocation(line: 199, column: 10, scope: !167)
!167 = !DILexicalBlockFile(scope: !165, file: !4, discriminator: 0)
!168 = !DILocation(line: 200, column: 10, scope: !167)
!169 = !DILocation(line: 201, column: 10, scope: !167)
!170 = !DILocation(line: 202, column: 10, scope: !167)
!171 = !DILocation(line: 203, column: 10, scope: !167)
!172 = !DILocation(line: 204, column: 10, scope: !167)
!173 = !DILocation(line: 205, column: 10, scope: !167)
!174 = !DILocation(line: 206, column: 10, scope: !167)
!175 = !DILocation(line: 207, column: 10, scope: !167)
!176 = !DILocation(line: 208, column: 11, scope: !167)
!177 = !DILocation(line: 209, column: 11, scope: !167)
!178 = !DILocation(line: 210, column: 5, scope: !167)
!179 = distinct !DISubprogram(name: "_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_", linkageName: "_ZNSt12_Vector_baseIiSaIiEE12_Vector_implC1ERKS0_", scope: null, file: !4, line: 215, type: !5, scopeLine: 215, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!180 = !DILocation(line: 216, column: 10, scope: !181)
!181 = !DILexicalBlockFile(scope: !179, file: !4, discriminator: 0)
!182 = !DILocation(line: 217, column: 5, scope: !181)
!183 = !DILocation(line: 218, column: 5, scope: !181)
!184 = distinct !DISubprogram(name: "_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_", linkageName: "_ZSt8distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_", scope: null, file: !4, line: 220, type: !5, scopeLine: 220, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!185 = !DILocation(line: 222, column: 10, scope: !186)
!186 = !DILexicalBlockFile(scope: !184, file: !4, discriminator: 0)
!187 = !DILocation(line: 223, column: 10, scope: !186)
!188 = !DILocation(line: 224, column: 5, scope: !186)
!189 = !DILocation(line: 225, column: 10, scope: !186)
!190 = !DILocation(line: 226, column: 10, scope: !186)
!191 = !DILocation(line: 227, column: 10, scope: !186)
!192 = !DILocation(line: 228, column: 5, scope: !186)
!193 = distinct !DISubprogram(name: "_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm", linkageName: "_ZNSt12_Vector_baseIiSaIiEE11_M_allocateEm", scope: null, file: !4, line: 230, type: !5, scopeLine: 230, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!194 = !DILocation(line: 232, column: 10, scope: !195)
!195 = !DILexicalBlockFile(scope: !193, file: !4, discriminator: 0)
!196 = !DILocation(line: 233, column: 5, scope: !195)
!197 = !DILocation(line: 235, column: 10, scope: !195)
!198 = !DILocation(line: 238, column: 10, scope: !195)
!199 = !DILocation(line: 239, column: 10, scope: !195)
!200 = !DILocation(line: 240, column: 10, scope: !195)
!201 = !DILocation(line: 241, column: 5, scope: !195)
!202 = !DILocation(line: 244, column: 5, scope: !195)
!203 = !DILocation(line: 246, column: 5, scope: !195)
!204 = !DILocation(line: 248, column: 5, scope: !195)
!205 = distinct !DISubprogram(name: "_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_", linkageName: "_ZNSt6vectorIiSaIiEE17_S_check_init_lenEmRKS0_", scope: null, file: !4, line: 250, type: !5, scopeLine: 250, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!206 = !DILocation(line: 252, column: 10, scope: !207)
!207 = !DILexicalBlockFile(scope: !205, file: !4, discriminator: 0)
!208 = !DILocation(line: 253, column: 10, scope: !207)
!209 = !DILocation(line: 254, column: 10, scope: !207)
!210 = !DILocation(line: 255, column: 5, scope: !207)
!211 = !DILocation(line: 256, column: 10, scope: !207)
!212 = !DILocation(line: 257, column: 10, scope: !207)
!213 = !DILocation(line: 258, column: 5, scope: !207)
!214 = !DILocation(line: 262, column: 5, scope: !207)
!215 = !DILocation(line: 263, column: 5, scope: !207)
!216 = !DILocation(line: 265, column: 5, scope: !207)
!217 = distinct !DISubprogram(name: "_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", linkageName: "_ZNSt12_Vector_baseIiSaIiEE19_M_get_Tp_allocatorEv", scope: null, file: !4, line: 267, type: !5, scopeLine: 267, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!218 = !DILocation(line: 268, column: 10, scope: !219)
!219 = !DILexicalBlockFile(scope: !217, file: !4, discriminator: 0)
!220 = !DILocation(line: 271, column: 10, scope: !219)
!221 = !DILocation(line: 272, column: 10, scope: !219)
!222 = !DILocation(line: 273, column: 5, scope: !219)
!223 = distinct !DISubprogram(name: "_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E", linkageName: "_ZSt22__uninitialized_copy_aIPKiPiiET0_T_S4_S3_RSaIT1_E", scope: null, file: !4, line: 275, type: !5, scopeLine: 275, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!224 = !DILocation(line: 276, column: 10, scope: !225)
!225 = !DILexicalBlockFile(scope: !223, file: !4, discriminator: 0)
!226 = !DILocation(line: 277, column: 5, scope: !225)
!227 = distinct !DISubprogram(name: "_ZNKSt16initializer_listIiE4sizeEv", linkageName: "_ZNKSt16initializer_listIiE4sizeEv", scope: null, file: !4, line: 279, type: !5, scopeLine: 279, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!228 = !DILocation(line: 280, column: 10, scope: !229)
!229 = !DILexicalBlockFile(scope: !227, file: !4, discriminator: 0)
!230 = !DILocation(line: 281, column: 10, scope: !229)
!231 = !DILocation(line: 282, column: 5, scope: !229)
!232 = distinct !DISubprogram(name: "_ZNSt18input_iterator_tagC1EOS_", linkageName: "_ZNSt18input_iterator_tagC1EOS_", scope: null, file: !4, line: 284, type: !5, scopeLine: 284, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!233 = !DILocation(line: 285, column: 5, scope: !234)
!234 = !DILexicalBlockFile(scope: !232, file: !4, discriminator: 0)
!235 = distinct !DISubprogram(name: "_ZNSaIiEC1ERKS_", linkageName: "_ZNSaIiEC1ERKS_", scope: null, file: !4, line: 287, type: !5, scopeLine: 287, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!236 = !DILocation(line: 288, column: 5, scope: !237)
!237 = !DILexicalBlockFile(scope: !235, file: !4, discriminator: 0)
!238 = distinct !DISubprogram(name: "_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev", linkageName: "_ZNSt12_Vector_baseIiSaIiEE17_Vector_impl_dataC1Ev", scope: null, file: !4, line: 290, type: !5, scopeLine: 290, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!239 = !DILocation(line: 292, column: 10, scope: !240)
!240 = !DILexicalBlockFile(scope: !238, file: !4, discriminator: 0)
!241 = !DILocation(line: 293, column: 5, scope: !240)
!242 = !DILocation(line: 294, column: 10, scope: !240)
!243 = !DILocation(line: 295, column: 5, scope: !240)
!244 = !DILocation(line: 296, column: 10, scope: !240)
!245 = !DILocation(line: 297, column: 5, scope: !240)
!246 = !DILocation(line: 298, column: 5, scope: !240)
!247 = distinct !DISubprogram(name: "_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", linkageName: "_ZSt10__distanceIPKiENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag", scope: null, file: !4, line: 300, type: !5, scopeLine: 300, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!248 = !DILocation(line: 302, column: 10, scope: !249)
!249 = !DILexicalBlockFile(scope: !247, file: !4, discriminator: 0)
!250 = !DILocation(line: 303, column: 10, scope: !249)
!251 = !DILocation(line: 304, column: 10, scope: !249)
!252 = !DILocation(line: 305, column: 10, scope: !249)
!253 = !DILocation(line: 306, column: 5, scope: !249)
!254 = distinct !DISubprogram(name: "_ZNSt26random_access_iterator_tagC1EOS_", linkageName: "_ZNSt26random_access_iterator_tagC1EOS_", scope: null, file: !4, line: 308, type: !5, scopeLine: 308, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!255 = !DILocation(line: 309, column: 5, scope: !256)
!256 = !DILexicalBlockFile(scope: !254, file: !4, discriminator: 0)
!257 = distinct !DISubprogram(name: "_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_", linkageName: "_ZSt19__iterator_categoryIPKiENSt15iterator_traitsIT_E17iterator_categoryERKS3_", scope: null, file: !4, line: 311, type: !5, scopeLine: 311, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!258 = !DILocation(line: 315, column: 10, scope: !259)
!259 = !DILexicalBlockFile(scope: !257, file: !4, discriminator: 0)
!260 = !DILocation(line: 316, column: 10, scope: !259)
!261 = !DILocation(line: 318, column: 5, scope: !259)
!262 = !DILocation(line: 319, column: 10, scope: !259)
!263 = !DILocation(line: 320, column: 5, scope: !259)
!264 = distinct !DISubprogram(name: "_ZNSt16allocator_traitsISaIiEE8allocateERS0_m", linkageName: "_ZNSt16allocator_traitsISaIiEE8allocateERS0_m", scope: null, file: !4, line: 322, type: !5, scopeLine: 322, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!265 = !DILocation(line: 325, column: 10, scope: !266)
!266 = !DILexicalBlockFile(scope: !264, file: !4, discriminator: 0)
!267 = !DILocation(line: 326, column: 5, scope: !266)
!268 = distinct !DISubprogram(name: "_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_", linkageName: "_ZNSt6vectorIiSaIiEE11_S_max_sizeERKS0_", scope: null, file: !4, line: 328, type: !5, scopeLine: 328, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!269 = !DILocation(line: 331, column: 10, scope: !270)
!270 = !DILexicalBlockFile(scope: !268, file: !4, discriminator: 0)
!271 = !DILocation(line: 333, column: 5, scope: !270)
!272 = !DILocation(line: 334, column: 10, scope: !270)
!273 = !DILocation(line: 335, column: 5, scope: !270)
!274 = !DILocation(line: 336, column: 5, scope: !270)
!275 = !DILocation(line: 337, column: 5, scope: !270)
!276 = !DILocation(line: 338, column: 10, scope: !270)
!277 = !DILocation(line: 339, column: 10, scope: !270)
!278 = !DILocation(line: 340, column: 5, scope: !270)
!279 = distinct !DISubprogram(name: "_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_", linkageName: "_ZSt18uninitialized_copyIPKiPiET0_T_S4_S3_", scope: null, file: !4, line: 343, type: !5, scopeLine: 343, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!280 = !DILocation(line: 344, column: 10, scope: !281)
!281 = !DILexicalBlockFile(scope: !279, file: !4, discriminator: 0)
!282 = !DILocation(line: 345, column: 5, scope: !281)
!283 = distinct !DISubprogram(name: "_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_", linkageName: "_ZN9__gnu_cxx13new_allocatorIiEC1ERKS1_", scope: null, file: !4, line: 347, type: !5, scopeLine: 347, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!284 = !DILocation(line: 348, column: 5, scope: !285)
!285 = !DILexicalBlockFile(scope: !283, file: !4, discriminator: 0)
!286 = distinct !DISubprogram(name: "_ZNSt26bidirectional_iterator_tagC1EOS_", linkageName: "_ZNSt26bidirectional_iterator_tagC1EOS_", scope: null, file: !4, line: 350, type: !5, scopeLine: 350, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!287 = !DILocation(line: 351, column: 5, scope: !288)
!288 = !DILexicalBlockFile(scope: !286, file: !4, discriminator: 0)
!289 = distinct !DISubprogram(name: "_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv", linkageName: "_ZN9__gnu_cxx13new_allocatorIiE8allocateEmPKv", scope: null, file: !4, line: 353, type: !5, scopeLine: 353, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!290 = !DILocation(line: 356, column: 10, scope: !291)
!291 = !DILexicalBlockFile(scope: !289, file: !4, discriminator: 0)
!292 = !DILocation(line: 357, column: 5, scope: !291)
!293 = !DILocation(line: 359, column: 5, scope: !291)
!294 = !DILocation(line: 360, column: 5, scope: !291)
!295 = !DILocation(line: 362, column: 10, scope: !291)
!296 = !DILocation(line: 363, column: 10, scope: !291)
!297 = !DILocation(line: 365, column: 5, scope: !291)
!298 = distinct !DISubprogram(name: "_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_", linkageName: "_ZNSt16allocator_traitsISaIiEE8max_sizeERKS0_", scope: null, file: !4, line: 367, type: !5, scopeLine: 367, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!299 = !DILocation(line: 369, column: 5, scope: !300)
!300 = !DILexicalBlockFile(scope: !298, file: !4, discriminator: 0)
!301 = distinct !DISubprogram(name: "_ZSt3minImERKT_S2_S2_", linkageName: "_ZSt3minImERKT_S2_S2_", scope: null, file: !4, line: 371, type: !5, scopeLine: 371, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!302 = !DILocation(line: 372, column: 10, scope: !303)
!303 = !DILexicalBlockFile(scope: !301, file: !4, discriminator: 0)
!304 = !DILocation(line: 373, column: 10, scope: !303)
!305 = !DILocation(line: 374, column: 10, scope: !303)
!306 = !DILocation(line: 375, column: 10, scope: !303)
!307 = !DILocation(line: 376, column: 5, scope: !303)
!308 = distinct !DISubprogram(name: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_", linkageName: "_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKiPiEET0_T_S6_S5_", scope: null, file: !4, line: 378, type: !5, scopeLine: 378, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!309 = !DILocation(line: 379, column: 10, scope: !310)
!310 = !DILexicalBlockFile(scope: !308, file: !4, discriminator: 0)
!311 = !DILocation(line: 380, column: 5, scope: !310)
!312 = distinct !DISubprogram(name: "_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv", linkageName: "_ZNK9__gnu_cxx13new_allocatorIiE8max_sizeEv", scope: null, file: !4, line: 382, type: !5, scopeLine: 382, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!313 = !DILocation(line: 384, column: 5, scope: !314)
!314 = !DILexicalBlockFile(scope: !312, file: !4, discriminator: 0)
!315 = distinct !DISubprogram(name: "_ZSt4copyIPKiPiET0_T_S4_S3_", linkageName: "_ZSt4copyIPKiPiET0_T_S4_S3_", scope: null, file: !4, line: 388, type: !5, scopeLine: 388, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!316 = !DILocation(line: 389, column: 10, scope: !317)
!317 = !DILexicalBlockFile(scope: !315, file: !4, discriminator: 0)
!318 = !DILocation(line: 390, column: 5, scope: !317)
!319 = distinct !DISubprogram(name: "_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_", linkageName: "_ZSt14__copy_move_a2ILb0EPKiPiET1_T0_S4_S3_", scope: null, file: !4, line: 392, type: !5, scopeLine: 392, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!320 = !DILocation(line: 393, column: 10, scope: !321)
!321 = !DILexicalBlockFile(scope: !319, file: !4, discriminator: 0)
!322 = !DILocation(line: 394, column: 5, scope: !321)
!323 = distinct !DISubprogram(name: "_ZSt12__miter_baseIPKiET_S2_", linkageName: "_ZSt12__miter_baseIPKiET_S2_", scope: null, file: !4, line: 396, type: !5, scopeLine: 396, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!324 = !DILocation(line: 397, column: 5, scope: !325)
!325 = !DILexicalBlockFile(scope: !323, file: !4, discriminator: 0)
!326 = distinct !DISubprogram(name: "_ZSt12__niter_wrapIPiET_RKS1_S1_", linkageName: "_ZSt12__niter_wrapIPiET_RKS1_S1_", scope: null, file: !4, line: 399, type: !5, scopeLine: 399, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!327 = !DILocation(line: 400, column: 5, scope: !328)
!328 = !DILexicalBlockFile(scope: !326, file: !4, discriminator: 0)
!329 = distinct !DISubprogram(name: "_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_", linkageName: "_ZSt13__copy_move_aILb0EPKiPiET1_T0_S4_S3_", scope: null, file: !4, line: 402, type: !5, scopeLine: 402, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!330 = !DILocation(line: 403, column: 10, scope: !331)
!331 = !DILexicalBlockFile(scope: !329, file: !4, discriminator: 0)
!332 = !DILocation(line: 404, column: 5, scope: !331)
!333 = distinct !DISubprogram(name: "_ZSt12__niter_baseIPKiET_S2_", linkageName: "_ZSt12__niter_baseIPKiET_S2_", scope: null, file: !4, line: 406, type: !5, scopeLine: 406, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!334 = !DILocation(line: 407, column: 5, scope: !335)
!335 = !DILexicalBlockFile(scope: !333, file: !4, discriminator: 0)
!336 = distinct !DISubprogram(name: "_ZSt12__niter_baseIPiET_S1_", linkageName: "_ZSt12__niter_baseIPiET_S1_", scope: null, file: !4, line: 409, type: !5, scopeLine: 409, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!337 = !DILocation(line: 410, column: 5, scope: !338)
!338 = !DILexicalBlockFile(scope: !336, file: !4, discriminator: 0)
!339 = distinct !DISubprogram(name: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_", linkageName: "_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIiEEPT_PKS3_S6_S4_", scope: null, file: !4, line: 412, type: !5, scopeLine: 412, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!340 = !DILocation(line: 416, column: 10, scope: !341)
!341 = !DILexicalBlockFile(scope: !339, file: !4, discriminator: 0)
!342 = !DILocation(line: 417, column: 10, scope: !341)
!343 = !DILocation(line: 418, column: 10, scope: !341)
!344 = !DILocation(line: 419, column: 10, scope: !341)
!345 = !DILocation(line: 420, column: 10, scope: !341)
!346 = !DILocation(line: 421, column: 5, scope: !341)
!347 = !DILocation(line: 425, column: 11, scope: !341)
!348 = !DILocation(line: 426, column: 5, scope: !341)
!349 = !DILocation(line: 427, column: 5, scope: !341)
!350 = !DILocation(line: 429, column: 11, scope: !341)
!351 = !DILocation(line: 430, column: 5, scope: !341)
!352 = distinct !DISubprogram(name: "remote_vec_size", linkageName: "remote_vec_size", scope: null, file: !4, line: 432, type: !5, scopeLine: 432, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!353 = !DILocation(line: 434, column: 10, scope: !354)
!354 = !DILexicalBlockFile(scope: !352, file: !4, discriminator: 0)
!355 = !DILocation(line: 435, column: 5, scope: !354)
