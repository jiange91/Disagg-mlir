; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%"struct.std::chrono::duration.0" = type { i64 }
%"struct.std::chrono::duration" = type { i64 }
%"struct.std::chrono::time_point" = type { %"struct.std::chrono::duration" }
%class.MeanVisitor = type { i64, i64 }
%class.MinVisitor = type <{ i64, i64, i8, [7 x i8] }>
%class.MaxVisitor = type <{ i64, i64, i8, [7 x i8] }>
%"class.std::vector" = type { %"struct.std::_Vector_base" }
%"struct.std::_Vector_base" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"_Lowered_rid::class.std::vector.1" = type { %"_Lowered_rid::struct.std::_Vector_base.2" }
%"_Lowered_rid::struct.std::_Vector_base.2" = type { %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }
%"_Lowered_rdur::class.std::vector" = type { %"_Lowered_rdur::struct.std::_Vector_base" }
%"_Lowered_rdur::struct.std::_Vector_base" = type { %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" }
%"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl" = type { %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" }
%"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data" = type { ptr, ptr, ptr }

@tokens = external global [33554432 x { i64, i8, i8, i16, i32 }]
@_rbuf = external global ptr
@index_col = external global ptr
@str5 = internal constant [2 x i8] c"\0A\00"
@str4 = internal constant [26 x i8] c"Max duration %lu seconds\0A\00"
@str3 = internal constant [26 x i8] c"Min duration %lu seconds\0A\00"
@str2 = internal constant [27 x i8] c"Mean duration %lu seconds\0A\00"
@duration_col = external global ptr
@str1 = internal constant [27 x i8] c"calculate_trip_duration()\0A\00"
@str0 = internal constant [16 x i8] c"Step 3: %ld us\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @poll_qid20(i32, i16)

declare i32 @cache_request_impl_20(i32, i64, i32, i8)

declare i32 @cache_request_impl_21(i32, i64, i32, i8)

declare i32 @printf(ptr, ...)

define i32 @main() !dbg !3 {
  %1 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !7
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !9
  %3 = alloca %"struct.std::chrono::time_point", i64 1, align 8, !dbg !10
  %4 = alloca %"struct.std::chrono::time_point", i64 1, align 8, !dbg !11
  %5 = alloca [10 x %"struct.std::chrono::time_point"], i64 1, align 8, !dbg !12
  call void @_Z9ext_setupv(), !dbg !13
  %6 = getelementptr [10 x %"struct.std::chrono::time_point"], ptr %5, i32 0, i32 0, !dbg !14
  br label %7, !dbg !15

7:                                                ; preds = %10, %0
  %8 = phi i64 [ %12, %10 ], [ 0, %0 ]
  %9 = icmp slt i64 %8, 10, !dbg !16
  br i1 %9, label %10, label %13, !dbg !17

10:                                               ; preds = %7
  %11 = getelementptr %"struct.std::chrono::time_point", ptr %6, i64 %8, !dbg !18
  call void @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(ptr %11), !dbg !19
  %12 = add i64 %8, 1, !dbg !20
  br label %7, !dbg !21

13:                                               ; preds = %7
  %14 = call %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv(), !dbg !22
  store %"struct.std::chrono::time_point" %14, ptr %4, align 8, !dbg !23
  %15 = call ptr @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(ptr %6, ptr %4), !dbg !24
  call void @_Z23calculate_trip_durationv(), !dbg !25
  %16 = getelementptr %"struct.std::chrono::time_point", ptr %6, i32 1, !dbg !26
  %17 = call %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv(), !dbg !27
  store %"struct.std::chrono::time_point" %17, ptr %3, align 8, !dbg !28
  %18 = call ptr @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(ptr %16, ptr %3), !dbg !29
  %19 = call %"struct.std::chrono::duration" @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr %16, ptr %6), !dbg !30
  store %"struct.std::chrono::duration" %19, ptr %2, align 8, !dbg !31
  %20 = call %"struct.std::chrono::duration.0" @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr %2), !dbg !32
  store %"struct.std::chrono::duration.0" %20, ptr %1, align 8, !dbg !33
  %21 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(ptr %1), !dbg !34
  %22 = call i32 (ptr, ...) @printf(ptr @str0, i64 %21), !dbg !35
  ret i32 undef, !dbg !36
}

declare void @_Z9ext_setupv()

define linkonce_odr void @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev(ptr %0) !dbg !37 {
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !38
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !40
  %4 = call %"struct.std::chrono::duration" @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv(), !dbg !41
  store %"struct.std::chrono::duration" %4, ptr %2, align 8, !dbg !42
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %3, ptr %2), !dbg !43
  %5 = getelementptr %"struct.std::chrono::time_point", ptr %0, i32 0, i32 0, !dbg !44
  %6 = load %"struct.std::chrono::duration", ptr %3, align 8, !dbg !45
  store %"struct.std::chrono::duration" %6, ptr %5, align 8, !dbg !46
  ret void, !dbg !47
}

define linkonce_odr ptr @_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_(ptr %0, ptr %1) !dbg !48 {
  %3 = getelementptr %"struct.std::chrono::time_point", ptr %0, i32 0, i32 0, !dbg !49
  %4 = getelementptr %"struct.std::chrono::time_point", ptr %1, i32 0, i32 0, !dbg !51
  %5 = call ptr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(ptr %3, ptr %4), !dbg !52
  ret ptr %0, !dbg !53
}

declare %"struct.std::chrono::time_point" @_ZNSt6chrono3_V212steady_clock3nowEv()

define void @_Z23calculate_trip_durationv() !dbg !54 {
  %1 = alloca %class.MeanVisitor, i64 1, align 8, !dbg !55
  %2 = alloca %class.MinVisitor, i64 1, align 8, !dbg !57
  %3 = alloca %class.MaxVisitor, i64 1, align 8, !dbg !58
  %4 = call i32 (ptr, ...) @printf(ptr @str1), !dbg !59
  call void @_Z16prepare_durationv(), !dbg !60
  %5 = load ptr, ptr @duration_col, align 8, !dbg !61
  call void @_ZN10MaxVisitorImmEC1Ev(ptr %3), !dbg !62
  call void @_ZN10MinVisitorImmEC1Ev(ptr %2), !dbg !63
  call void @_ZN11MeanVisitorImmEC1Ev(ptr %1), !dbg !64
  call void @_Z5visitIm10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRSt6vectorIT_SaIS7_EERT0_RT1_RT2_(ptr %5, ptr %3, ptr %2, ptr %1), !dbg !65
  %6 = call i64 @_ZNK11MeanVisitorImmE10get_resultEv(ptr %1), !dbg !66
  %7 = call i32 (ptr, ...) @printf(ptr @str2, i64 %6), !dbg !67
  %8 = call i64 @_ZNK10MinVisitorImmE10get_resultEv(ptr %2), !dbg !68
  %9 = call i32 (ptr, ...) @printf(ptr @str3, i64 %8), !dbg !69
  %10 = call i64 @_ZNK10MaxVisitorImmE10get_resultEv(ptr %3), !dbg !70
  %11 = call i32 (ptr, ...) @printf(ptr @str4, i64 %10), !dbg !71
  %12 = call i32 (ptr, ...) @printf(ptr @str5), !dbg !72
  ret void, !dbg !73
}

define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(ptr %0) !dbg !74 {
  %2 = getelementptr %"struct.std::chrono::duration.0", ptr %0, i32 0, i32 0, !dbg !75
  %3 = load i64, ptr %2, align 8, !dbg !77
  ret i64 %3, !dbg !78
}

define linkonce_odr %"struct.std::chrono::duration.0" @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr %0) !dbg !79 {
  %2 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !80
  %3 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !82
  %4 = call %"struct.std::chrono::duration.0" @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(ptr %0), !dbg !83
  store %"struct.std::chrono::duration.0" %4, ptr %2, align 8, !dbg !84
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(ptr %3, ptr %2), !dbg !85
  %5 = load %"struct.std::chrono::duration.0", ptr %3, align 8, !dbg !86
  ret %"struct.std::chrono::duration.0" %5, !dbg !87
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr %0, ptr %1) !dbg !88 {
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !89
  %4 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !91
  %5 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !92
  %6 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !93
  %7 = call %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr %0), !dbg !94
  store %"struct.std::chrono::duration" %7, ptr %5, align 8, !dbg !95
  %8 = call %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr %1), !dbg !96
  store %"struct.std::chrono::duration" %8, ptr %4, align 8, !dbg !97
  %9 = call %"struct.std::chrono::duration" @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr %5, ptr %4), !dbg !98
  store %"struct.std::chrono::duration" %9, ptr %3, align 8, !dbg !99
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %6, ptr %3), !dbg !100
  %10 = load %"struct.std::chrono::duration", ptr %6, align 8, !dbg !101
  ret %"struct.std::chrono::duration" %10, !dbg !102
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %0, ptr %1) !dbg !103 {
  %3 = getelementptr %"struct.std::chrono::duration", ptr %1, i32 0, i32 0, !dbg !104
  %4 = load i64, ptr %3, align 8, !dbg !106
  %5 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !107
  store i64 %4, ptr %5, align 8, !dbg !108
  ret void, !dbg !109
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() !dbg !110 {
  %1 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !111
  %2 = alloca i64, i64 1, align 8, !dbg !113
  store i64 undef, ptr %2, align 8, !dbg !114
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !115
  %4 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !116
  store i64 0, ptr %2, align 8, !dbg !117
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(ptr %3, ptr %2), !dbg !118
  %5 = load %"struct.std::chrono::duration", ptr %3, align 8, !dbg !119
  store %"struct.std::chrono::duration" %5, ptr %1, align 8, !dbg !120
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %4, ptr %1), !dbg !121
  %6 = load %"struct.std::chrono::duration", ptr %4, align 8, !dbg !122
  ret %"struct.std::chrono::duration" %6, !dbg !123
}

define linkonce_odr ptr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(ptr %0, ptr %1) !dbg !124 {
  %3 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !125
  %4 = getelementptr %"struct.std::chrono::duration", ptr %1, i32 0, i32 0, !dbg !127
  %5 = load i64, ptr %4, align 8, !dbg !128
  store i64 %5, ptr %3, align 8, !dbg !129
  ret ptr %0, !dbg !130
}

declare void @_Z16prepare_durationv()

define linkonce_odr void @_ZN10MaxVisitorImmEC1Ev(ptr %0) !dbg !131 {
  %2 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 0, !dbg !132
  store i64 0, ptr %2, align 8, !dbg !134
  %3 = load i64, ptr %2, align 8, !dbg !135
  store i64 %3, ptr %2, align 8, !dbg !136
  %4 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !137
  store i64 0, ptr %4, align 8, !dbg !138
  %5 = load i64, ptr %4, align 8, !dbg !139
  store i64 %5, ptr %4, align 8, !dbg !140
  %6 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 2, !dbg !141
  store i8 1, ptr %6, align 1, !dbg !142
  %7 = load i8, ptr %6, align 1, !dbg !143
  store i8 %7, ptr %6, align 1, !dbg !144
  ret void, !dbg !145
}

define linkonce_odr void @_ZN10MinVisitorImmEC1Ev(ptr %0) !dbg !146 {
  %2 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 0, !dbg !147
  store i64 0, ptr %2, align 8, !dbg !149
  %3 = load i64, ptr %2, align 8, !dbg !150
  store i64 %3, ptr %2, align 8, !dbg !151
  %4 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !152
  store i64 0, ptr %4, align 8, !dbg !153
  %5 = load i64, ptr %4, align 8, !dbg !154
  store i64 %5, ptr %4, align 8, !dbg !155
  %6 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 2, !dbg !156
  store i8 1, ptr %6, align 1, !dbg !157
  %7 = load i8, ptr %6, align 1, !dbg !158
  store i8 %7, ptr %6, align 1, !dbg !159
  ret void, !dbg !160
}

define linkonce_odr void @_ZN11MeanVisitorImmEC1Ev(ptr %0) !dbg !161 {
  %2 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !162
  store i64 0, ptr %2, align 8, !dbg !164
  %3 = load i64, ptr %2, align 8, !dbg !165
  store i64 %3, ptr %2, align 8, !dbg !166
  %4 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !167
  store i64 0, ptr %4, align 8, !dbg !168
  %5 = load i64, ptr %4, align 8, !dbg !169
  store i64 %5, ptr %4, align 8, !dbg !170
  ret void, !dbg !171
}

define linkonce_odr void @_Z5visitIm10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRSt6vectorIT_SaIS7_EERT0_RT1_RT2_(ptr %0, ptr %1, ptr %2, ptr %3) !dbg !172 {
  %5 = alloca i64, i64 1, align 8, !dbg !173
  store i64 undef, ptr %5, align 8, !dbg !175
  %6 = alloca i64, i64 1, align 8, !dbg !176
  store i64 undef, ptr %6, align 8, !dbg !177
  %7 = load ptr, ptr @index_col, align 8, !dbg !178
  %8 = call i64 @rvec_index_size_i64(ptr %7), !dbg !179
  store i64 %8, ptr %6, align 8, !dbg !180
  %9 = call i64 @rvec_dur_size_i64(ptr %0), !dbg !181
  store i64 %9, ptr %5, align 8, !dbg !182
  %10 = call ptr @_ZSt3minImERKT_S2_S2_(ptr %5, ptr %6), !dbg !183
  %11 = load i64, ptr %10, align 8, !dbg !184
  call void @_ZN11MeanVisitorImmE3preEv(ptr %3), !dbg !185
  %12 = add i64 %11, 524287, !dbg !186
  %13 = sdiv i64 %12, 524288, !dbg !187
  %14 = alloca i32, i32 9, align 4, !dbg !188
  br label %15, !dbg !189

15:                                               ; preds = %18, %4
  %16 = phi i64 [ %30, %18 ], [ 0, %4 ]
  %17 = icmp slt i64 %16, 8, !dbg !190
  br i1 %17, label %18, label %31, !dbg !191

18:                                               ; preds = %15
  %19 = mul i64 %16, 524288, !dbg !192
  %20 = trunc i64 %16 to i32, !dbg !193
  %21 = call ptr @rvec_dur_index_i64(ptr %0, i64 %19), !dbg !194
  %22 = ptrtoint ptr %21 to i64, !dbg !195
  %23 = and i64 %22, -4194304, !dbg !196
  %24 = udiv i64 %23, 4194304, !dbg !197
  %25 = srem i64 %24, 32, !dbg !198
  %26 = trunc i64 %25 to i32, !dbg !199
  %27 = call i32 @cache_request_impl_21(i32 0, i64 %23, i32 %26, i8 1), !dbg !200
  %28 = sext i32 %20 to i64, !dbg !201
  %29 = getelementptr i32, ptr %14, i64 %28, !dbg !202
  store i32 %26, ptr %29, align 4, !dbg !203
  %30 = add i64 %16, 1, !dbg !204
  br label %15, !dbg !205

31:                                               ; preds = %15
  %32 = alloca i32, i32 9, align 4, !dbg !206
  br label %33, !dbg !207

33:                                               ; preds = %36, %31
  %34 = phi i64 [ %48, %36 ], [ 0, %31 ]
  %35 = icmp slt i64 %34, 8, !dbg !208
  br i1 %35, label %36, label %49, !dbg !209

36:                                               ; preds = %33
  %37 = mul i64 %34, 524288, !dbg !210
  %38 = trunc i64 %34 to i32, !dbg !211
  %39 = call ptr @rvec_id_index_i64(ptr %7, i64 %37), !dbg !212
  %40 = ptrtoint ptr %39 to i64, !dbg !213
  %41 = and i64 %40, -4194304, !dbg !214
  %42 = udiv i64 %41, 4194304, !dbg !215
  %43 = srem i64 %42, 32, !dbg !216
  %44 = trunc i64 %43 to i32, !dbg !217
  %45 = call i32 @cache_request_impl_20(i32 0, i64 %41, i32 %44, i8 1), !dbg !218
  %46 = sext i32 %38 to i64, !dbg !219
  %47 = getelementptr i32, ptr %32, i64 %46, !dbg !220
  store i32 %44, ptr %47, align 4, !dbg !221
  %48 = add i64 %34, 1, !dbg !222
  br label %33, !dbg !223

49:                                               ; preds = %33
  br label %50, !dbg !224

50:                                               ; preds = %130, %49
  %51 = phi i64 [ %131, %130 ], [ 0, %49 ]
  %52 = icmp slt i64 %51, %13, !dbg !225
  br i1 %52, label %53, label %132, !dbg !226

53:                                               ; preds = %50
  %54 = add i64 %51, 8, !dbg !227
  %55 = icmp slt i64 %54, %13, !dbg !228
  br i1 %55, label %56, label %77, !dbg !229

56:                                               ; preds = %53
  %57 = srem i64 %54, 9, !dbg !230
  %58 = trunc i64 %57 to i32, !dbg !231
  %59 = mul i64 %54, 524288, !dbg !232
  %60 = call ptr @rvec_dur_index_i64(ptr %0, i64 %59), !dbg !233
  %61 = ptrtoint ptr %60 to i64, !dbg !234
  %62 = and i64 %61, -4194304, !dbg !235
  %63 = udiv i64 %62, 4194304, !dbg !236
  %64 = srem i64 %63, 32, !dbg !237
  %65 = trunc i64 %64 to i32, !dbg !238
  %66 = call i32 @cache_request_impl_21(i32 0, i64 %62, i32 %65, i8 1), !dbg !239
  %67 = sext i32 %58 to i64, !dbg !240
  %68 = getelementptr i32, ptr %14, i64 %67, !dbg !241
  store i32 %65, ptr %68, align 4, !dbg !242
  %69 = call ptr @rvec_id_index_i64(ptr %7, i64 %59), !dbg !243
  %70 = ptrtoint ptr %69 to i64, !dbg !244
  %71 = and i64 %70, -4194304, !dbg !245
  %72 = udiv i64 %71, 4194304, !dbg !246
  %73 = srem i64 %72, 32, !dbg !247
  %74 = trunc i64 %73 to i32, !dbg !248
  %75 = call i32 @cache_request_impl_20(i32 0, i64 %71, i32 %74, i8 1), !dbg !249
  %76 = getelementptr i32, ptr %32, i64 %67, !dbg !250
  store i32 %74, ptr %76, align 4, !dbg !251
  br label %77, !dbg !252

77:                                               ; preds = %56, %53
  %78 = mul i64 %51, 524288, !dbg !253
  %79 = call ptr @rvec_dur_index_i64(ptr %0, i64 %78), !dbg !254
  %80 = srem i64 %51, 9, !dbg !255
  %81 = getelementptr i32, ptr %14, i64 %80, !dbg !256
  %82 = load i32, ptr %81, align 4, !dbg !257
  %83 = ptrtoint ptr %79 to i64, !dbg !258
  %84 = sext i32 %82 to i64, !dbg !259
  %85 = mul i64 %84, 4194304, !dbg !260
  %86 = srem i64 %83, 4194304, !dbg !261
  %87 = add i64 %85, %86, !dbg !262
  %88 = add i64 %87, 5368709120, !dbg !263
  %89 = load ptr, ptr @_rbuf, align 8, !dbg !264
  %90 = getelementptr i8, ptr %89, i64 %88, !dbg !265
  %91 = call ptr @rvec_id_index_i64(ptr %7, i64 %78), !dbg !266
  %92 = getelementptr i32, ptr %32, i64 %80, !dbg !267
  %93 = load i32, ptr %92, align 4, !dbg !268
  %94 = ptrtoint ptr %91 to i64, !dbg !269
  %95 = sext i32 %93 to i64, !dbg !270
  %96 = mul i64 %95, 4194304, !dbg !271
  %97 = srem i64 %94, 4194304, !dbg !272
  %98 = add i64 %96, %97, !dbg !273
  %99 = add i64 %98, 4294967296, !dbg !274
  %100 = load ptr, ptr @_rbuf, align 8, !dbg !275
  %101 = getelementptr i8, ptr %100, i64 %99, !dbg !276
  %102 = add i32 %93, 608, !dbg !277
  %103 = sext i32 %102 to i64, !dbg !278
  %104 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %103, !dbg !279
  %105 = getelementptr { i64, i8, i8, i16, i32 }, ptr %104, i32 0, i32 3, !dbg !280
  %106 = load i16, ptr %105, align 2, !dbg !281
  call void @poll_qid20(i32 19, i16 %106), !dbg !282
  %107 = add i64 %51, 1, !dbg !283
  %108 = mul i64 %107, 524288, !dbg !284
  %109 = icmp sgt i64 %11, %108, !dbg !285
  br i1 %109, label %110, label %111, !dbg !286

110:                                              ; preds = %77
  br label %114, !dbg !287

111:                                              ; preds = %77
  %112 = mul i64 %51, 524288, !dbg !288
  %113 = sub i64 %11, %112, !dbg !289
  br label %114, !dbg !290

114:                                              ; preds = %110, %111
  %115 = phi i64 [ %113, %111 ], [ 524288, %110 ]
  br label %116, !dbg !291

116:                                              ; preds = %114
  %117 = mul i64 %51, 524288, !dbg !292
  br label %118, !dbg !293

118:                                              ; preds = %121, %116
  %119 = phi i64 [ %129, %121 ], [ 0, %116 ]
  %120 = icmp slt i64 %119, %115, !dbg !294
  br i1 %120, label %121, label %130, !dbg !295

121:                                              ; preds = %118
  %122 = add i64 %119, %117, !dbg !296
  %123 = getelementptr i64, ptr %90, i64 %119, !dbg !297
  %124 = getelementptr i64, ptr %101, i64 %119, !dbg !298
  %125 = call ptr @rvec_id_index_i64(ptr %7, i64 %122), !dbg !299
  %126 = load i64, ptr %124, align 8, !dbg !300
  %127 = call ptr @rvec_dur_index_i64(ptr %0, i64 %122), !dbg !301
  %128 = load i64, ptr %123, align 8, !dbg !302
  call void @_ZN10MaxVisitorImmEclEmm(ptr %1, i64 %126, i64 %128), !dbg !303
  call void @_ZN10MinVisitorImmEclEmm(ptr %2, i64 %126, i64 %128), !dbg !304
  call void @_ZN11MeanVisitorImmEclEmm(ptr %3, i64 %126, i64 %128), !dbg !305
  %129 = add i64 %119, 1, !dbg !306
  br label %118, !dbg !307

130:                                              ; preds = %118
  %131 = add i64 %51, 1, !dbg !308
  br label %50, !dbg !309

132:                                              ; preds = %50
  ret void, !dbg !310
}

define linkonce_odr i64 @_ZNK11MeanVisitorImmE10get_resultEv(ptr %0) !dbg !311 {
  %2 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !312
  %3 = load i64, ptr %2, align 8, !dbg !314
  %4 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !315
  %5 = load i64, ptr %4, align 8, !dbg !316
  %6 = sdiv i64 %3, %5, !dbg !317
  ret i64 %6, !dbg !318
}

define linkonce_odr i64 @_ZNK10MinVisitorImmE10get_resultEv(ptr %0) !dbg !319 {
  %2 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !320
  %3 = load i64, ptr %2, align 8, !dbg !322
  ret i64 %3, !dbg !323
}

define linkonce_odr i64 @_ZNK10MaxVisitorImmE10get_resultEv(ptr %0) !dbg !324 {
  %2 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !325
  %3 = load i64, ptr %2, align 8, !dbg !327
  ret i64 %3, !dbg !328
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(ptr %0, ptr %1) !dbg !329 {
  %3 = getelementptr %"struct.std::chrono::duration.0", ptr %1, i32 0, i32 0, !dbg !330
  %4 = load i64, ptr %3, align 8, !dbg !332
  %5 = getelementptr %"struct.std::chrono::duration.0", ptr %0, i32 0, i32 0, !dbg !333
  store i64 %4, ptr %5, align 8, !dbg !334
  ret void, !dbg !335
}

define linkonce_odr %"struct.std::chrono::duration.0" @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(ptr %0) !dbg !336 {
  %2 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !337
  %3 = alloca i64, i64 1, align 8, !dbg !339
  store i64 undef, ptr %3, align 8, !dbg !340
  %4 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !341
  %5 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !342
  %6 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %0), !dbg !343
  %7 = sdiv i64 %6, 1000, !dbg !344
  store i64 %7, ptr %3, align 8, !dbg !345
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(ptr %4, ptr %3), !dbg !346
  %8 = load %"struct.std::chrono::duration.0", ptr %4, align 8, !dbg !347
  store %"struct.std::chrono::duration.0" %8, ptr %2, align 8, !dbg !348
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(ptr %5, ptr %2), !dbg !349
  %9 = load %"struct.std::chrono::duration.0", ptr %5, align 8, !dbg !350
  ret %"struct.std::chrono::duration.0" %9, !dbg !351
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr %0, ptr %1) !dbg !352 {
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !353
  %4 = alloca i64, i64 1, align 8, !dbg !355
  store i64 undef, ptr %4, align 8, !dbg !356
  %5 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !357
  %6 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !358
  %7 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !359
  %8 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !360
  %9 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !361
  %10 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !362
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %8, ptr %0), !dbg !363
  %11 = load %"struct.std::chrono::duration", ptr %8, align 8, !dbg !364
  store %"struct.std::chrono::duration" %11, ptr %7, align 8, !dbg !365
  %12 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %7), !dbg !366
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %6, ptr %1), !dbg !367
  %13 = load %"struct.std::chrono::duration", ptr %6, align 8, !dbg !368
  store %"struct.std::chrono::duration" %13, ptr %5, align 8, !dbg !369
  %14 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %5), !dbg !370
  %15 = sub i64 %12, %14, !dbg !371
  store i64 %15, ptr %4, align 8, !dbg !372
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(ptr %9, ptr %4), !dbg !373
  %16 = load %"struct.std::chrono::duration", ptr %9, align 8, !dbg !374
  store %"struct.std::chrono::duration" %16, ptr %3, align 8, !dbg !375
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %10, ptr %3), !dbg !376
  %17 = load %"struct.std::chrono::duration", ptr %10, align 8, !dbg !377
  ret %"struct.std::chrono::duration" %17, !dbg !378
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr %0) !dbg !379 {
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !380
  %3 = getelementptr %"struct.std::chrono::time_point", ptr %0, i32 0, i32 0, !dbg !382
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %2, ptr %3), !dbg !383
  %4 = load %"struct.std::chrono::duration", ptr %2, align 8, !dbg !384
  ret %"struct.std::chrono::duration" %4, !dbg !385
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(ptr %0, ptr %1) !dbg !386 {
  %3 = load i64, ptr %1, align 8, !dbg !387
  %4 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !389
  store i64 %3, ptr %4, align 8, !dbg !390
  ret void, !dbg !391
}

define linkonce_odr i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() !dbg !392 {
  ret i64 0, !dbg !393
}

define linkonce_odr i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr %0) !dbg !395 {
  %2 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !396
  %3 = getelementptr %"struct.std::_Vector_base", ptr %2, i32 0, i32 0, !dbg !398
  %4 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !399
  %5 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !400
  %6 = load ptr, ptr %5, align 8, !dbg !401
  %7 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !402
  %8 = load ptr, ptr %7, align 8, !dbg !403
  %9 = ptrtoint ptr %6 to i64, !dbg !404
  %10 = ptrtoint ptr %8 to i64, !dbg !405
  %11 = sub i64 %9, %10, !dbg !406
  %12 = sdiv i64 %11, 8, !dbg !407
  ret i64 %12, !dbg !408
}

define linkonce_odr i64 @rvec_index_size_i64(ptr %0) !dbg !409 {
  %2 = getelementptr %"_Lowered_rid::class.std::vector.1", ptr %0, i32 0, i32 0, !dbg !410
  %3 = getelementptr %"_Lowered_rid::struct.std::_Vector_base.2", ptr %2, i32 0, i32 0, !dbg !412
  %4 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !413
  %5 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !414
  %6 = load ptr, ptr %5, align 8, !dbg !415
  %7 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !416
  %8 = load ptr, ptr %7, align 8, !dbg !417
  %9 = ptrtoint ptr %6 to i64, !dbg !418
  %10 = ptrtoint ptr %8 to i64, !dbg !419
  %11 = sub i64 %9, %10, !dbg !420
  %12 = sdiv i64 %11, 8, !dbg !421
  ret i64 %12, !dbg !422
}

define linkonce_odr i64 @rvec_dur_size_i64(ptr %0) !dbg !423 {
  %2 = getelementptr %"_Lowered_rdur::class.std::vector", ptr %0, i32 0, i32 0, !dbg !424
  %3 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base", ptr %2, i32 0, i32 0, !dbg !426
  %4 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !427
  %5 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !428
  %6 = load ptr, ptr %5, align 8, !dbg !429
  %7 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !430
  %8 = load ptr, ptr %7, align 8, !dbg !431
  %9 = ptrtoint ptr %6 to i64, !dbg !432
  %10 = ptrtoint ptr %8 to i64, !dbg !433
  %11 = sub i64 %9, %10, !dbg !434
  %12 = sdiv i64 %11, 8, !dbg !435
  ret i64 %12, !dbg !436
}

define linkonce_odr ptr @_ZSt3minImERKT_S2_S2_(ptr %0, ptr %1) !dbg !437 {
  %3 = load i64, ptr %1, align 8, !dbg !438
  %4 = load i64, ptr %0, align 8, !dbg !440
  %5 = icmp slt i64 %3, %4, !dbg !441
  %6 = select i1 %5, ptr %1, ptr %0, !dbg !442
  ret ptr %6, !dbg !443
}

define linkonce_odr void @_ZN10MaxVisitorImmE3preEv(ptr %0) !dbg !444 {
  ret void, !dbg !445
}

define linkonce_odr void @_ZN10MinVisitorImmE3preEv(ptr %0) !dbg !447 {
  ret void, !dbg !448
}

define linkonce_odr void @_ZN11MeanVisitorImmE3preEv(ptr %0) !dbg !450 {
  %2 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !451
  store i64 0, ptr %2, align 8, !dbg !453
  %3 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !454
  store i64 0, ptr %3, align 8, !dbg !455
  ret void, !dbg !456
}

define linkonce_odr ptr @_ZNSt6vectorImSaImEEixEm(ptr %0, i64 %1) !dbg !457 {
  %3 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !458
  %4 = getelementptr %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !460
  %5 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !461
  %6 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !462
  %7 = load ptr, ptr %6, align 8, !dbg !463
  %8 = getelementptr i64, ptr %7, i64 %1, !dbg !464
  ret ptr %8, !dbg !465
}

define linkonce_odr ptr @rvec_id_index_i64(ptr %0, i64 %1) !dbg !466 {
  %3 = getelementptr %"_Lowered_rid::class.std::vector.1", ptr %0, i32 0, i32 0, !dbg !467
  %4 = getelementptr %"_Lowered_rid::struct.std::_Vector_base.2", ptr %3, i32 0, i32 0, !dbg !469
  %5 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !470
  %6 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !471
  %7 = load ptr, ptr %6, align 8, !dbg !472
  %8 = getelementptr i64, ptr %7, i64 %1, !dbg !473
  ret ptr %8, !dbg !474
}

define linkonce_odr ptr @rvec_dur_index_i64(ptr %0, i64 %1) !dbg !475 {
  %3 = getelementptr %"_Lowered_rdur::class.std::vector", ptr %0, i32 0, i32 0, !dbg !476
  %4 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !478
  %5 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !479
  %6 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !480
  %7 = load ptr, ptr %6, align 8, !dbg !481
  %8 = getelementptr i64, ptr %7, i64 %1, !dbg !482
  ret ptr %8, !dbg !483
}

define linkonce_odr void @_ZN10MaxVisitorImmEclEmm(ptr %0, i64 %1, i64 %2) !dbg !484 {
  %4 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 2, !dbg !485
  %5 = load i8, ptr %4, align 1, !dbg !487
  %6 = icmp ne i8 %5, 0, !dbg !488
  br i1 %6, label %7, label %8, !dbg !489

7:                                                ; preds = %3
  br label %12, !dbg !490

8:                                                ; preds = %3
  %9 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !491
  %10 = load i64, ptr %9, align 8, !dbg !492
  %11 = icmp sgt i64 %2, %10, !dbg !493
  br label %12, !dbg !494

12:                                               ; preds = %7, %8
  %13 = phi i1 [ %11, %8 ], [ true, %7 ]
  br label %14, !dbg !495

14:                                               ; preds = %12
  br i1 %13, label %15, label %18, !dbg !496

15:                                               ; preds = %14
  %16 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !497
  store i64 %2, ptr %16, align 8, !dbg !498
  %17 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 0, !dbg !499
  store i64 %1, ptr %17, align 8, !dbg !500
  store i8 0, ptr %4, align 1, !dbg !501
  br label %18, !dbg !502

18:                                               ; preds = %15, %14
  ret void, !dbg !503
}

define linkonce_odr void @_ZN10MinVisitorImmEclEmm(ptr %0, i64 %1, i64 %2) !dbg !504 {
  %4 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 2, !dbg !505
  %5 = load i8, ptr %4, align 1, !dbg !507
  %6 = icmp ne i8 %5, 0, !dbg !508
  br i1 %6, label %7, label %8, !dbg !509

7:                                                ; preds = %3
  br label %12, !dbg !510

8:                                                ; preds = %3
  %9 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !511
  %10 = load i64, ptr %9, align 8, !dbg !512
  %11 = icmp slt i64 %2, %10, !dbg !513
  br label %12, !dbg !514

12:                                               ; preds = %7, %8
  %13 = phi i1 [ %11, %8 ], [ true, %7 ]
  br label %14, !dbg !515

14:                                               ; preds = %12
  br i1 %13, label %15, label %18, !dbg !516

15:                                               ; preds = %14
  %16 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !517
  store i64 %2, ptr %16, align 8, !dbg !518
  %17 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 0, !dbg !519
  store i64 %1, ptr %17, align 8, !dbg !520
  store i8 0, ptr %4, align 1, !dbg !521
  br label %18, !dbg !522

18:                                               ; preds = %15, %14
  ret void, !dbg !523
}

define linkonce_odr void @_ZN11MeanVisitorImmEclEmm(ptr %0, i64 %1, i64 %2) !dbg !524 {
  %4 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !525
  %5 = load i64, ptr %4, align 8, !dbg !527
  %6 = add i64 %5, %2, !dbg !528
  store i64 %6, ptr %4, align 8, !dbg !529
  %7 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !530
  %8 = load i64, ptr %7, align 8, !dbg !531
  %9 = add i64 %8, 1, !dbg !532
  store i64 %9, ptr %7, align 8, !dbg !533
  ret void, !dbg !534
}

define linkonce_odr void @_ZN10MaxVisitorImmE4postEv(ptr %0) !dbg !535 {
  ret void, !dbg !536
}

define linkonce_odr void @_ZN10MinVisitorImmE4postEv(ptr %0) !dbg !538 {
  ret void, !dbg !539
}

define linkonce_odr void @_ZN11MeanVisitorImmE4postEv(ptr %0) !dbg !541 {
  ret void, !dbg !542
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(ptr %0, ptr %1) !dbg !544 {
  %3 = load i64, ptr %1, align 8, !dbg !545
  %4 = getelementptr %"struct.std::chrono::duration.0", ptr %0, i32 0, i32 0, !dbg !547
  store i64 %3, ptr %4, align 8, !dbg !548
  ret void, !dbg !549
}

define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %0) !dbg !550 {
  %2 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !551
  %3 = load i64, ptr %2, align 8, !dbg !553
  ret i64 %3, !dbg !554
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "lower.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/example/dataframe/step3")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 21, column: 10, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 22, column: 10, scope: !8)
!10 = !DILocation(line: 23, column: 10, scope: !8)
!11 = !DILocation(line: 24, column: 10, scope: !8)
!12 = !DILocation(line: 25, column: 10, scope: !8)
!13 = !DILocation(line: 27, column: 5, scope: !8)
!14 = !DILocation(line: 28, column: 11, scope: !8)
!15 = !DILocation(line: 29, column: 5, scope: !8)
!16 = !DILocation(line: 31, column: 11, scope: !8)
!17 = !DILocation(line: 32, column: 5, scope: !8)
!18 = !DILocation(line: 34, column: 11, scope: !8)
!19 = !DILocation(line: 35, column: 5, scope: !8)
!20 = !DILocation(line: 36, column: 11, scope: !8)
!21 = !DILocation(line: 37, column: 5, scope: !8)
!22 = !DILocation(line: 39, column: 11, scope: !8)
!23 = !DILocation(line: 40, column: 5, scope: !8)
!24 = !DILocation(line: 41, column: 11, scope: !8)
!25 = !DILocation(line: 42, column: 5, scope: !8)
!26 = !DILocation(line: 43, column: 11, scope: !8)
!27 = !DILocation(line: 44, column: 11, scope: !8)
!28 = !DILocation(line: 45, column: 5, scope: !8)
!29 = !DILocation(line: 46, column: 11, scope: !8)
!30 = !DILocation(line: 49, column: 11, scope: !8)
!31 = !DILocation(line: 50, column: 5, scope: !8)
!32 = !DILocation(line: 51, column: 11, scope: !8)
!33 = !DILocation(line: 52, column: 5, scope: !8)
!34 = !DILocation(line: 53, column: 11, scope: !8)
!35 = !DILocation(line: 54, column: 11, scope: !8)
!36 = !DILocation(line: 55, column: 5, scope: !8)
!37 = distinct !DISubprogram(name: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev", linkageName: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEC1Ev", scope: null, file: !4, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!38 = !DILocation(line: 60, column: 10, scope: !39)
!39 = !DILexicalBlockFile(scope: !37, file: !4, discriminator: 0)
!40 = !DILocation(line: 61, column: 10, scope: !39)
!41 = !DILocation(line: 62, column: 10, scope: !39)
!42 = !DILocation(line: 63, column: 5, scope: !39)
!43 = !DILocation(line: 64, column: 5, scope: !39)
!44 = !DILocation(line: 65, column: 10, scope: !39)
!45 = !DILocation(line: 66, column: 10, scope: !39)
!46 = !DILocation(line: 67, column: 5, scope: !39)
!47 = !DILocation(line: 68, column: 5, scope: !39)
!48 = distinct !DISubprogram(name: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_", linkageName: "_ZNSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEEaSEOS7_", scope: null, file: !4, line: 70, type: !5, scopeLine: 70, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!49 = !DILocation(line: 71, column: 10, scope: !50)
!50 = !DILexicalBlockFile(scope: !48, file: !4, discriminator: 0)
!51 = !DILocation(line: 72, column: 10, scope: !50)
!52 = !DILocation(line: 73, column: 10, scope: !50)
!53 = !DILocation(line: 74, column: 5, scope: !50)
!54 = distinct !DISubprogram(name: "_Z23calculate_trip_durationv", linkageName: "_Z23calculate_trip_durationv", scope: null, file: !4, line: 77, type: !5, scopeLine: 77, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!55 = !DILocation(line: 79, column: 10, scope: !56)
!56 = !DILexicalBlockFile(scope: !54, file: !4, discriminator: 0)
!57 = !DILocation(line: 80, column: 10, scope: !56)
!58 = !DILocation(line: 81, column: 10, scope: !56)
!59 = !DILocation(line: 84, column: 10, scope: !56)
!60 = !DILocation(line: 85, column: 5, scope: !56)
!61 = !DILocation(line: 87, column: 10, scope: !56)
!62 = !DILocation(line: 88, column: 5, scope: !56)
!63 = !DILocation(line: 89, column: 5, scope: !56)
!64 = !DILocation(line: 90, column: 5, scope: !56)
!65 = !DILocation(line: 91, column: 5, scope: !56)
!66 = !DILocation(line: 94, column: 11, scope: !56)
!67 = !DILocation(line: 95, column: 11, scope: !56)
!68 = !DILocation(line: 98, column: 11, scope: !56)
!69 = !DILocation(line: 99, column: 11, scope: !56)
!70 = !DILocation(line: 102, column: 11, scope: !56)
!71 = !DILocation(line: 103, column: 11, scope: !56)
!72 = !DILocation(line: 106, column: 11, scope: !56)
!73 = !DILocation(line: 107, column: 5, scope: !56)
!74 = distinct !DISubprogram(name: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv", scope: null, file: !4, line: 109, type: !5, scopeLine: 109, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!75 = !DILocation(line: 110, column: 10, scope: !76)
!76 = !DILexicalBlockFile(scope: !74, file: !4, discriminator: 0)
!77 = !DILocation(line: 111, column: 10, scope: !76)
!78 = !DILocation(line: 112, column: 5, scope: !76)
!79 = distinct !DISubprogram(name: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", linkageName: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", scope: null, file: !4, line: 114, type: !5, scopeLine: 114, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!80 = !DILocation(line: 116, column: 10, scope: !81)
!81 = !DILexicalBlockFile(scope: !79, file: !4, discriminator: 0)
!82 = !DILocation(line: 117, column: 10, scope: !81)
!83 = !DILocation(line: 118, column: 10, scope: !81)
!84 = !DILocation(line: 119, column: 5, scope: !81)
!85 = !DILocation(line: 120, column: 5, scope: !81)
!86 = !DILocation(line: 121, column: 10, scope: !81)
!87 = !DILocation(line: 122, column: 5, scope: !81)
!88 = distinct !DISubprogram(name: "_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE", linkageName: "_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE", scope: null, file: !4, line: 124, type: !5, scopeLine: 124, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!89 = !DILocation(line: 126, column: 10, scope: !90)
!90 = !DILexicalBlockFile(scope: !88, file: !4, discriminator: 0)
!91 = !DILocation(line: 127, column: 10, scope: !90)
!92 = !DILocation(line: 128, column: 10, scope: !90)
!93 = !DILocation(line: 129, column: 10, scope: !90)
!94 = !DILocation(line: 130, column: 10, scope: !90)
!95 = !DILocation(line: 131, column: 5, scope: !90)
!96 = !DILocation(line: 132, column: 10, scope: !90)
!97 = !DILocation(line: 133, column: 5, scope: !90)
!98 = !DILocation(line: 134, column: 10, scope: !90)
!99 = !DILocation(line: 135, column: 5, scope: !90)
!100 = !DILocation(line: 136, column: 5, scope: !90)
!101 = !DILocation(line: 137, column: 10, scope: !90)
!102 = !DILocation(line: 138, column: 5, scope: !90)
!103 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_", scope: null, file: !4, line: 140, type: !5, scopeLine: 140, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!104 = !DILocation(line: 141, column: 10, scope: !105)
!105 = !DILexicalBlockFile(scope: !103, file: !4, discriminator: 0)
!106 = !DILocation(line: 142, column: 10, scope: !105)
!107 = !DILocation(line: 143, column: 10, scope: !105)
!108 = !DILocation(line: 144, column: 5, scope: !105)
!109 = !DILocation(line: 145, column: 5, scope: !105)
!110 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", scope: null, file: !4, line: 147, type: !5, scopeLine: 147, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!111 = !DILocation(line: 150, column: 10, scope: !112)
!112 = !DILexicalBlockFile(scope: !110, file: !4, discriminator: 0)
!113 = !DILocation(line: 151, column: 10, scope: !112)
!114 = !DILocation(line: 153, column: 5, scope: !112)
!115 = !DILocation(line: 154, column: 10, scope: !112)
!116 = !DILocation(line: 155, column: 10, scope: !112)
!117 = !DILocation(line: 156, column: 5, scope: !112)
!118 = !DILocation(line: 157, column: 5, scope: !112)
!119 = !DILocation(line: 158, column: 10, scope: !112)
!120 = !DILocation(line: 159, column: 5, scope: !112)
!121 = !DILocation(line: 160, column: 5, scope: !112)
!122 = !DILocation(line: 161, column: 10, scope: !112)
!123 = !DILocation(line: 162, column: 5, scope: !112)
!124 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", scope: null, file: !4, line: 164, type: !5, scopeLine: 164, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!125 = !DILocation(line: 165, column: 10, scope: !126)
!126 = !DILexicalBlockFile(scope: !124, file: !4, discriminator: 0)
!127 = !DILocation(line: 166, column: 10, scope: !126)
!128 = !DILocation(line: 167, column: 10, scope: !126)
!129 = !DILocation(line: 168, column: 5, scope: !126)
!130 = !DILocation(line: 169, column: 5, scope: !126)
!131 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmEC1Ev", linkageName: "_ZN10MaxVisitorImmEC1Ev", scope: null, file: !4, line: 172, type: !5, scopeLine: 172, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!132 = !DILocation(line: 175, column: 10, scope: !133)
!133 = !DILexicalBlockFile(scope: !131, file: !4, discriminator: 0)
!134 = !DILocation(line: 176, column: 5, scope: !133)
!135 = !DILocation(line: 177, column: 10, scope: !133)
!136 = !DILocation(line: 178, column: 5, scope: !133)
!137 = !DILocation(line: 179, column: 10, scope: !133)
!138 = !DILocation(line: 180, column: 5, scope: !133)
!139 = !DILocation(line: 181, column: 10, scope: !133)
!140 = !DILocation(line: 182, column: 5, scope: !133)
!141 = !DILocation(line: 183, column: 10, scope: !133)
!142 = !DILocation(line: 184, column: 5, scope: !133)
!143 = !DILocation(line: 185, column: 10, scope: !133)
!144 = !DILocation(line: 186, column: 5, scope: !133)
!145 = !DILocation(line: 187, column: 5, scope: !133)
!146 = distinct !DISubprogram(name: "_ZN10MinVisitorImmEC1Ev", linkageName: "_ZN10MinVisitorImmEC1Ev", scope: null, file: !4, line: 189, type: !5, scopeLine: 189, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!147 = !DILocation(line: 192, column: 10, scope: !148)
!148 = !DILexicalBlockFile(scope: !146, file: !4, discriminator: 0)
!149 = !DILocation(line: 193, column: 5, scope: !148)
!150 = !DILocation(line: 194, column: 10, scope: !148)
!151 = !DILocation(line: 195, column: 5, scope: !148)
!152 = !DILocation(line: 196, column: 10, scope: !148)
!153 = !DILocation(line: 197, column: 5, scope: !148)
!154 = !DILocation(line: 198, column: 10, scope: !148)
!155 = !DILocation(line: 199, column: 5, scope: !148)
!156 = !DILocation(line: 200, column: 10, scope: !148)
!157 = !DILocation(line: 201, column: 5, scope: !148)
!158 = !DILocation(line: 202, column: 10, scope: !148)
!159 = !DILocation(line: 203, column: 5, scope: !148)
!160 = !DILocation(line: 204, column: 5, scope: !148)
!161 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmEC1Ev", linkageName: "_ZN11MeanVisitorImmEC1Ev", scope: null, file: !4, line: 206, type: !5, scopeLine: 206, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!162 = !DILocation(line: 208, column: 10, scope: !163)
!163 = !DILexicalBlockFile(scope: !161, file: !4, discriminator: 0)
!164 = !DILocation(line: 209, column: 5, scope: !163)
!165 = !DILocation(line: 210, column: 10, scope: !163)
!166 = !DILocation(line: 211, column: 5, scope: !163)
!167 = !DILocation(line: 212, column: 10, scope: !163)
!168 = !DILocation(line: 213, column: 5, scope: !163)
!169 = !DILocation(line: 214, column: 10, scope: !163)
!170 = !DILocation(line: 215, column: 5, scope: !163)
!171 = !DILocation(line: 216, column: 5, scope: !163)
!172 = distinct !DISubprogram(name: "_Z5visitIm10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRSt6vectorIT_SaIS7_EERT0_RT1_RT2_", linkageName: "_Z5visitIm10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRSt6vectorIT_SaIS7_EERT0_RT1_RT2_", scope: null, file: !4, line: 218, type: !5, scopeLine: 218, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!173 = !DILocation(line: 239, column: 11, scope: !174)
!174 = !DILexicalBlockFile(scope: !172, file: !4, discriminator: 0)
!175 = !DILocation(line: 240, column: 5, scope: !174)
!176 = !DILocation(line: 241, column: 11, scope: !174)
!177 = !DILocation(line: 242, column: 5, scope: !174)
!178 = !DILocation(line: 244, column: 11, scope: !174)
!179 = !DILocation(line: 245, column: 11, scope: !174)
!180 = !DILocation(line: 246, column: 5, scope: !174)
!181 = !DILocation(line: 247, column: 11, scope: !174)
!182 = !DILocation(line: 248, column: 5, scope: !174)
!183 = !DILocation(line: 249, column: 11, scope: !174)
!184 = !DILocation(line: 250, column: 11, scope: !174)
!185 = !DILocation(line: 251, column: 5, scope: !174)
!186 = !DILocation(line: 252, column: 11, scope: !174)
!187 = !DILocation(line: 253, column: 11, scope: !174)
!188 = !DILocation(line: 254, column: 11, scope: !174)
!189 = !DILocation(line: 255, column: 5, scope: !174)
!190 = !DILocation(line: 257, column: 11, scope: !174)
!191 = !DILocation(line: 258, column: 5, scope: !174)
!192 = !DILocation(line: 260, column: 11, scope: !174)
!193 = !DILocation(line: 261, column: 11, scope: !174)
!194 = !DILocation(line: 262, column: 11, scope: !174)
!195 = !DILocation(line: 263, column: 11, scope: !174)
!196 = !DILocation(line: 264, column: 11, scope: !174)
!197 = !DILocation(line: 265, column: 11, scope: !174)
!198 = !DILocation(line: 266, column: 11, scope: !174)
!199 = !DILocation(line: 267, column: 11, scope: !174)
!200 = !DILocation(line: 268, column: 11, scope: !174)
!201 = !DILocation(line: 269, column: 11, scope: !174)
!202 = !DILocation(line: 270, column: 11, scope: !174)
!203 = !DILocation(line: 271, column: 5, scope: !174)
!204 = !DILocation(line: 272, column: 11, scope: !174)
!205 = !DILocation(line: 273, column: 5, scope: !174)
!206 = !DILocation(line: 275, column: 11, scope: !174)
!207 = !DILocation(line: 276, column: 5, scope: !174)
!208 = !DILocation(line: 278, column: 11, scope: !174)
!209 = !DILocation(line: 279, column: 5, scope: !174)
!210 = !DILocation(line: 281, column: 11, scope: !174)
!211 = !DILocation(line: 282, column: 11, scope: !174)
!212 = !DILocation(line: 283, column: 11, scope: !174)
!213 = !DILocation(line: 284, column: 11, scope: !174)
!214 = !DILocation(line: 285, column: 11, scope: !174)
!215 = !DILocation(line: 286, column: 11, scope: !174)
!216 = !DILocation(line: 287, column: 11, scope: !174)
!217 = !DILocation(line: 288, column: 11, scope: !174)
!218 = !DILocation(line: 289, column: 11, scope: !174)
!219 = !DILocation(line: 290, column: 11, scope: !174)
!220 = !DILocation(line: 291, column: 11, scope: !174)
!221 = !DILocation(line: 292, column: 5, scope: !174)
!222 = !DILocation(line: 293, column: 11, scope: !174)
!223 = !DILocation(line: 294, column: 5, scope: !174)
!224 = !DILocation(line: 296, column: 5, scope: !174)
!225 = !DILocation(line: 298, column: 11, scope: !174)
!226 = !DILocation(line: 299, column: 5, scope: !174)
!227 = !DILocation(line: 301, column: 11, scope: !174)
!228 = !DILocation(line: 302, column: 11, scope: !174)
!229 = !DILocation(line: 303, column: 5, scope: !174)
!230 = !DILocation(line: 305, column: 11, scope: !174)
!231 = !DILocation(line: 306, column: 11, scope: !174)
!232 = !DILocation(line: 307, column: 11, scope: !174)
!233 = !DILocation(line: 308, column: 11, scope: !174)
!234 = !DILocation(line: 309, column: 11, scope: !174)
!235 = !DILocation(line: 310, column: 11, scope: !174)
!236 = !DILocation(line: 311, column: 11, scope: !174)
!237 = !DILocation(line: 312, column: 11, scope: !174)
!238 = !DILocation(line: 313, column: 11, scope: !174)
!239 = !DILocation(line: 314, column: 11, scope: !174)
!240 = !DILocation(line: 315, column: 11, scope: !174)
!241 = !DILocation(line: 316, column: 11, scope: !174)
!242 = !DILocation(line: 317, column: 5, scope: !174)
!243 = !DILocation(line: 318, column: 11, scope: !174)
!244 = !DILocation(line: 319, column: 11, scope: !174)
!245 = !DILocation(line: 320, column: 11, scope: !174)
!246 = !DILocation(line: 321, column: 11, scope: !174)
!247 = !DILocation(line: 322, column: 11, scope: !174)
!248 = !DILocation(line: 323, column: 11, scope: !174)
!249 = !DILocation(line: 324, column: 11, scope: !174)
!250 = !DILocation(line: 325, column: 11, scope: !174)
!251 = !DILocation(line: 326, column: 5, scope: !174)
!252 = !DILocation(line: 327, column: 5, scope: !174)
!253 = !DILocation(line: 329, column: 11, scope: !174)
!254 = !DILocation(line: 330, column: 11, scope: !174)
!255 = !DILocation(line: 331, column: 11, scope: !174)
!256 = !DILocation(line: 332, column: 11, scope: !174)
!257 = !DILocation(line: 333, column: 11, scope: !174)
!258 = !DILocation(line: 334, column: 11, scope: !174)
!259 = !DILocation(line: 335, column: 11, scope: !174)
!260 = !DILocation(line: 336, column: 11, scope: !174)
!261 = !DILocation(line: 337, column: 11, scope: !174)
!262 = !DILocation(line: 338, column: 11, scope: !174)
!263 = !DILocation(line: 339, column: 11, scope: !174)
!264 = !DILocation(line: 341, column: 11, scope: !174)
!265 = !DILocation(line: 342, column: 11, scope: !174)
!266 = !DILocation(line: 344, column: 11, scope: !174)
!267 = !DILocation(line: 345, column: 12, scope: !174)
!268 = !DILocation(line: 346, column: 12, scope: !174)
!269 = !DILocation(line: 347, column: 12, scope: !174)
!270 = !DILocation(line: 348, column: 12, scope: !174)
!271 = !DILocation(line: 349, column: 12, scope: !174)
!272 = !DILocation(line: 350, column: 12, scope: !174)
!273 = !DILocation(line: 351, column: 12, scope: !174)
!274 = !DILocation(line: 352, column: 12, scope: !174)
!275 = !DILocation(line: 353, column: 12, scope: !174)
!276 = !DILocation(line: 354, column: 12, scope: !174)
!277 = !DILocation(line: 356, column: 12, scope: !174)
!278 = !DILocation(line: 357, column: 12, scope: !174)
!279 = !DILocation(line: 360, column: 12, scope: !174)
!280 = !DILocation(line: 361, column: 12, scope: !174)
!281 = !DILocation(line: 362, column: 12, scope: !174)
!282 = !DILocation(line: 363, column: 5, scope: !174)
!283 = !DILocation(line: 364, column: 12, scope: !174)
!284 = !DILocation(line: 365, column: 12, scope: !174)
!285 = !DILocation(line: 366, column: 12, scope: !174)
!286 = !DILocation(line: 367, column: 5, scope: !174)
!287 = !DILocation(line: 369, column: 5, scope: !174)
!288 = !DILocation(line: 371, column: 12, scope: !174)
!289 = !DILocation(line: 372, column: 12, scope: !174)
!290 = !DILocation(line: 373, column: 5, scope: !174)
!291 = !DILocation(line: 375, column: 5, scope: !174)
!292 = !DILocation(line: 377, column: 12, scope: !174)
!293 = !DILocation(line: 378, column: 5, scope: !174)
!294 = !DILocation(line: 380, column: 12, scope: !174)
!295 = !DILocation(line: 381, column: 5, scope: !174)
!296 = !DILocation(line: 383, column: 12, scope: !174)
!297 = !DILocation(line: 384, column: 12, scope: !174)
!298 = !DILocation(line: 385, column: 12, scope: !174)
!299 = !DILocation(line: 386, column: 12, scope: !174)
!300 = !DILocation(line: 387, column: 12, scope: !174)
!301 = !DILocation(line: 388, column: 12, scope: !174)
!302 = !DILocation(line: 389, column: 12, scope: !174)
!303 = !DILocation(line: 390, column: 5, scope: !174)
!304 = !DILocation(line: 391, column: 5, scope: !174)
!305 = !DILocation(line: 392, column: 5, scope: !174)
!306 = !DILocation(line: 393, column: 12, scope: !174)
!307 = !DILocation(line: 394, column: 5, scope: !174)
!308 = !DILocation(line: 396, column: 12, scope: !174)
!309 = !DILocation(line: 397, column: 5, scope: !174)
!310 = !DILocation(line: 399, column: 5, scope: !174)
!311 = distinct !DISubprogram(name: "_ZNK11MeanVisitorImmE10get_resultEv", linkageName: "_ZNK11MeanVisitorImmE10get_resultEv", scope: null, file: !4, line: 401, type: !5, scopeLine: 401, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!312 = !DILocation(line: 402, column: 10, scope: !313)
!313 = !DILexicalBlockFile(scope: !311, file: !4, discriminator: 0)
!314 = !DILocation(line: 403, column: 10, scope: !313)
!315 = !DILocation(line: 404, column: 10, scope: !313)
!316 = !DILocation(line: 405, column: 10, scope: !313)
!317 = !DILocation(line: 406, column: 10, scope: !313)
!318 = !DILocation(line: 407, column: 5, scope: !313)
!319 = distinct !DISubprogram(name: "_ZNK10MinVisitorImmE10get_resultEv", linkageName: "_ZNK10MinVisitorImmE10get_resultEv", scope: null, file: !4, line: 409, type: !5, scopeLine: 409, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!320 = !DILocation(line: 410, column: 10, scope: !321)
!321 = !DILexicalBlockFile(scope: !319, file: !4, discriminator: 0)
!322 = !DILocation(line: 411, column: 10, scope: !321)
!323 = !DILocation(line: 412, column: 5, scope: !321)
!324 = distinct !DISubprogram(name: "_ZNK10MaxVisitorImmE10get_resultEv", linkageName: "_ZNK10MaxVisitorImmE10get_resultEv", scope: null, file: !4, line: 414, type: !5, scopeLine: 414, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!325 = !DILocation(line: 415, column: 10, scope: !326)
!326 = !DILexicalBlockFile(scope: !324, file: !4, discriminator: 0)
!327 = !DILocation(line: 416, column: 10, scope: !326)
!328 = !DILocation(line: 417, column: 5, scope: !326)
!329 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_", scope: null, file: !4, line: 419, type: !5, scopeLine: 419, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!330 = !DILocation(line: 420, column: 10, scope: !331)
!331 = !DILexicalBlockFile(scope: !329, file: !4, discriminator: 0)
!332 = !DILocation(line: 421, column: 10, scope: !331)
!333 = !DILocation(line: 422, column: 10, scope: !331)
!334 = !DILocation(line: 423, column: 5, scope: !331)
!335 = !DILocation(line: 424, column: 5, scope: !331)
!336 = distinct !DISubprogram(name: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE", scope: null, file: !4, line: 426, type: !5, scopeLine: 426, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!337 = !DILocation(line: 429, column: 10, scope: !338)
!338 = !DILexicalBlockFile(scope: !336, file: !4, discriminator: 0)
!339 = !DILocation(line: 430, column: 10, scope: !338)
!340 = !DILocation(line: 432, column: 5, scope: !338)
!341 = !DILocation(line: 433, column: 10, scope: !338)
!342 = !DILocation(line: 434, column: 10, scope: !338)
!343 = !DILocation(line: 435, column: 10, scope: !338)
!344 = !DILocation(line: 436, column: 10, scope: !338)
!345 = !DILocation(line: 437, column: 5, scope: !338)
!346 = !DILocation(line: 438, column: 5, scope: !338)
!347 = !DILocation(line: 439, column: 10, scope: !338)
!348 = !DILocation(line: 440, column: 5, scope: !338)
!349 = !DILocation(line: 441, column: 5, scope: !338)
!350 = !DILocation(line: 442, column: 11, scope: !338)
!351 = !DILocation(line: 443, column: 5, scope: !338)
!352 = distinct !DISubprogram(name: "_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_", linkageName: "_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_", scope: null, file: !4, line: 445, type: !5, scopeLine: 445, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!353 = !DILocation(line: 447, column: 10, scope: !354)
!354 = !DILexicalBlockFile(scope: !352, file: !4, discriminator: 0)
!355 = !DILocation(line: 448, column: 10, scope: !354)
!356 = !DILocation(line: 450, column: 5, scope: !354)
!357 = !DILocation(line: 451, column: 10, scope: !354)
!358 = !DILocation(line: 452, column: 10, scope: !354)
!359 = !DILocation(line: 453, column: 10, scope: !354)
!360 = !DILocation(line: 454, column: 10, scope: !354)
!361 = !DILocation(line: 455, column: 10, scope: !354)
!362 = !DILocation(line: 456, column: 10, scope: !354)
!363 = !DILocation(line: 457, column: 5, scope: !354)
!364 = !DILocation(line: 458, column: 11, scope: !354)
!365 = !DILocation(line: 459, column: 5, scope: !354)
!366 = !DILocation(line: 460, column: 11, scope: !354)
!367 = !DILocation(line: 461, column: 5, scope: !354)
!368 = !DILocation(line: 462, column: 11, scope: !354)
!369 = !DILocation(line: 463, column: 5, scope: !354)
!370 = !DILocation(line: 464, column: 11, scope: !354)
!371 = !DILocation(line: 465, column: 11, scope: !354)
!372 = !DILocation(line: 466, column: 5, scope: !354)
!373 = !DILocation(line: 467, column: 5, scope: !354)
!374 = !DILocation(line: 468, column: 11, scope: !354)
!375 = !DILocation(line: 469, column: 5, scope: !354)
!376 = !DILocation(line: 470, column: 5, scope: !354)
!377 = !DILocation(line: 471, column: 11, scope: !354)
!378 = !DILocation(line: 472, column: 5, scope: !354)
!379 = distinct !DISubprogram(name: "_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv", linkageName: "_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv", scope: null, file: !4, line: 474, type: !5, scopeLine: 474, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!380 = !DILocation(line: 476, column: 10, scope: !381)
!381 = !DILexicalBlockFile(scope: !379, file: !4, discriminator: 0)
!382 = !DILocation(line: 477, column: 10, scope: !381)
!383 = !DILocation(line: 478, column: 5, scope: !381)
!384 = !DILocation(line: 479, column: 10, scope: !381)
!385 = !DILocation(line: 480, column: 5, scope: !381)
!386 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_", scope: null, file: !4, line: 482, type: !5, scopeLine: 482, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!387 = !DILocation(line: 483, column: 10, scope: !388)
!388 = !DILexicalBlockFile(scope: !386, file: !4, discriminator: 0)
!389 = !DILocation(line: 484, column: 10, scope: !388)
!390 = !DILocation(line: 485, column: 5, scope: !388)
!391 = !DILocation(line: 486, column: 5, scope: !388)
!392 = distinct !DISubprogram(name: "_ZNSt6chrono15duration_valuesIlE4zeroEv", linkageName: "_ZNSt6chrono15duration_valuesIlE4zeroEv", scope: null, file: !4, line: 488, type: !5, scopeLine: 488, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!393 = !DILocation(line: 490, column: 5, scope: !394)
!394 = !DILexicalBlockFile(scope: !392, file: !4, discriminator: 0)
!395 = distinct !DISubprogram(name: "_ZNKSt6vectorImSaImEE4sizeEv", linkageName: "_ZNKSt6vectorImSaImEE4sizeEv", scope: null, file: !4, line: 492, type: !5, scopeLine: 492, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!396 = !DILocation(line: 494, column: 10, scope: !397)
!397 = !DILexicalBlockFile(scope: !395, file: !4, discriminator: 0)
!398 = !DILocation(line: 495, column: 10, scope: !397)
!399 = !DILocation(line: 496, column: 10, scope: !397)
!400 = !DILocation(line: 497, column: 10, scope: !397)
!401 = !DILocation(line: 498, column: 10, scope: !397)
!402 = !DILocation(line: 499, column: 10, scope: !397)
!403 = !DILocation(line: 500, column: 10, scope: !397)
!404 = !DILocation(line: 501, column: 10, scope: !397)
!405 = !DILocation(line: 502, column: 10, scope: !397)
!406 = !DILocation(line: 503, column: 11, scope: !397)
!407 = !DILocation(line: 504, column: 11, scope: !397)
!408 = !DILocation(line: 505, column: 5, scope: !397)
!409 = distinct !DISubprogram(name: "rvec_index_size_i64", linkageName: "rvec_index_size_i64", scope: null, file: !4, line: 507, type: !5, scopeLine: 507, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!410 = !DILocation(line: 509, column: 10, scope: !411)
!411 = !DILexicalBlockFile(scope: !409, file: !4, discriminator: 0)
!412 = !DILocation(line: 510, column: 10, scope: !411)
!413 = !DILocation(line: 511, column: 10, scope: !411)
!414 = !DILocation(line: 512, column: 10, scope: !411)
!415 = !DILocation(line: 513, column: 10, scope: !411)
!416 = !DILocation(line: 514, column: 10, scope: !411)
!417 = !DILocation(line: 515, column: 10, scope: !411)
!418 = !DILocation(line: 516, column: 10, scope: !411)
!419 = !DILocation(line: 517, column: 10, scope: !411)
!420 = !DILocation(line: 518, column: 11, scope: !411)
!421 = !DILocation(line: 519, column: 11, scope: !411)
!422 = !DILocation(line: 520, column: 5, scope: !411)
!423 = distinct !DISubprogram(name: "rvec_dur_size_i64", linkageName: "rvec_dur_size_i64", scope: null, file: !4, line: 522, type: !5, scopeLine: 522, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!424 = !DILocation(line: 524, column: 10, scope: !425)
!425 = !DILexicalBlockFile(scope: !423, file: !4, discriminator: 0)
!426 = !DILocation(line: 525, column: 10, scope: !425)
!427 = !DILocation(line: 526, column: 10, scope: !425)
!428 = !DILocation(line: 527, column: 10, scope: !425)
!429 = !DILocation(line: 528, column: 10, scope: !425)
!430 = !DILocation(line: 529, column: 10, scope: !425)
!431 = !DILocation(line: 530, column: 10, scope: !425)
!432 = !DILocation(line: 531, column: 10, scope: !425)
!433 = !DILocation(line: 532, column: 10, scope: !425)
!434 = !DILocation(line: 533, column: 11, scope: !425)
!435 = !DILocation(line: 534, column: 11, scope: !425)
!436 = !DILocation(line: 535, column: 5, scope: !425)
!437 = distinct !DISubprogram(name: "_ZSt3minImERKT_S2_S2_", linkageName: "_ZSt3minImERKT_S2_S2_", scope: null, file: !4, line: 537, type: !5, scopeLine: 537, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!438 = !DILocation(line: 538, column: 10, scope: !439)
!439 = !DILexicalBlockFile(scope: !437, file: !4, discriminator: 0)
!440 = !DILocation(line: 539, column: 10, scope: !439)
!441 = !DILocation(line: 540, column: 10, scope: !439)
!442 = !DILocation(line: 541, column: 10, scope: !439)
!443 = !DILocation(line: 542, column: 5, scope: !439)
!444 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmE3preEv", linkageName: "_ZN10MaxVisitorImmE3preEv", scope: null, file: !4, line: 544, type: !5, scopeLine: 544, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!445 = !DILocation(line: 545, column: 5, scope: !446)
!446 = !DILexicalBlockFile(scope: !444, file: !4, discriminator: 0)
!447 = distinct !DISubprogram(name: "_ZN10MinVisitorImmE3preEv", linkageName: "_ZN10MinVisitorImmE3preEv", scope: null, file: !4, line: 547, type: !5, scopeLine: 547, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!448 = !DILocation(line: 548, column: 5, scope: !449)
!449 = !DILexicalBlockFile(scope: !447, file: !4, discriminator: 0)
!450 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmE3preEv", linkageName: "_ZN11MeanVisitorImmE3preEv", scope: null, file: !4, line: 550, type: !5, scopeLine: 550, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!451 = !DILocation(line: 552, column: 10, scope: !452)
!452 = !DILexicalBlockFile(scope: !450, file: !4, discriminator: 0)
!453 = !DILocation(line: 553, column: 5, scope: !452)
!454 = !DILocation(line: 554, column: 10, scope: !452)
!455 = !DILocation(line: 555, column: 5, scope: !452)
!456 = !DILocation(line: 556, column: 5, scope: !452)
!457 = distinct !DISubprogram(name: "_ZNSt6vectorImSaImEEixEm", linkageName: "_ZNSt6vectorImSaImEEixEm", scope: null, file: !4, line: 558, type: !5, scopeLine: 558, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!458 = !DILocation(line: 559, column: 10, scope: !459)
!459 = !DILexicalBlockFile(scope: !457, file: !4, discriminator: 0)
!460 = !DILocation(line: 560, column: 10, scope: !459)
!461 = !DILocation(line: 561, column: 10, scope: !459)
!462 = !DILocation(line: 562, column: 10, scope: !459)
!463 = !DILocation(line: 563, column: 10, scope: !459)
!464 = !DILocation(line: 564, column: 10, scope: !459)
!465 = !DILocation(line: 565, column: 5, scope: !459)
!466 = distinct !DISubprogram(name: "rvec_id_index_i64", linkageName: "rvec_id_index_i64", scope: null, file: !4, line: 567, type: !5, scopeLine: 567, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!467 = !DILocation(line: 568, column: 10, scope: !468)
!468 = !DILexicalBlockFile(scope: !466, file: !4, discriminator: 0)
!469 = !DILocation(line: 569, column: 10, scope: !468)
!470 = !DILocation(line: 570, column: 10, scope: !468)
!471 = !DILocation(line: 571, column: 10, scope: !468)
!472 = !DILocation(line: 572, column: 10, scope: !468)
!473 = !DILocation(line: 573, column: 10, scope: !468)
!474 = !DILocation(line: 574, column: 5, scope: !468)
!475 = distinct !DISubprogram(name: "rvec_dur_index_i64", linkageName: "rvec_dur_index_i64", scope: null, file: !4, line: 576, type: !5, scopeLine: 576, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!476 = !DILocation(line: 577, column: 10, scope: !477)
!477 = !DILexicalBlockFile(scope: !475, file: !4, discriminator: 0)
!478 = !DILocation(line: 578, column: 10, scope: !477)
!479 = !DILocation(line: 579, column: 10, scope: !477)
!480 = !DILocation(line: 580, column: 10, scope: !477)
!481 = !DILocation(line: 581, column: 10, scope: !477)
!482 = !DILocation(line: 582, column: 10, scope: !477)
!483 = !DILocation(line: 583, column: 5, scope: !477)
!484 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmEclEmm", linkageName: "_ZN10MaxVisitorImmEclEmm", scope: null, file: !4, line: 585, type: !5, scopeLine: 585, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!485 = !DILocation(line: 588, column: 10, scope: !486)
!486 = !DILexicalBlockFile(scope: !484, file: !4, discriminator: 0)
!487 = !DILocation(line: 589, column: 10, scope: !486)
!488 = !DILocation(line: 590, column: 10, scope: !486)
!489 = !DILocation(line: 591, column: 5, scope: !486)
!490 = !DILocation(line: 593, column: 5, scope: !486)
!491 = !DILocation(line: 595, column: 10, scope: !486)
!492 = !DILocation(line: 596, column: 10, scope: !486)
!493 = !DILocation(line: 597, column: 10, scope: !486)
!494 = !DILocation(line: 598, column: 5, scope: !486)
!495 = !DILocation(line: 600, column: 5, scope: !486)
!496 = !DILocation(line: 602, column: 5, scope: !486)
!497 = !DILocation(line: 604, column: 10, scope: !486)
!498 = !DILocation(line: 605, column: 5, scope: !486)
!499 = !DILocation(line: 606, column: 11, scope: !486)
!500 = !DILocation(line: 607, column: 5, scope: !486)
!501 = !DILocation(line: 608, column: 5, scope: !486)
!502 = !DILocation(line: 609, column: 5, scope: !486)
!503 = !DILocation(line: 611, column: 5, scope: !486)
!504 = distinct !DISubprogram(name: "_ZN10MinVisitorImmEclEmm", linkageName: "_ZN10MinVisitorImmEclEmm", scope: null, file: !4, line: 613, type: !5, scopeLine: 613, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!505 = !DILocation(line: 616, column: 10, scope: !506)
!506 = !DILexicalBlockFile(scope: !504, file: !4, discriminator: 0)
!507 = !DILocation(line: 617, column: 10, scope: !506)
!508 = !DILocation(line: 618, column: 10, scope: !506)
!509 = !DILocation(line: 619, column: 5, scope: !506)
!510 = !DILocation(line: 621, column: 5, scope: !506)
!511 = !DILocation(line: 623, column: 10, scope: !506)
!512 = !DILocation(line: 624, column: 10, scope: !506)
!513 = !DILocation(line: 625, column: 10, scope: !506)
!514 = !DILocation(line: 626, column: 5, scope: !506)
!515 = !DILocation(line: 628, column: 5, scope: !506)
!516 = !DILocation(line: 630, column: 5, scope: !506)
!517 = !DILocation(line: 632, column: 10, scope: !506)
!518 = !DILocation(line: 633, column: 5, scope: !506)
!519 = !DILocation(line: 634, column: 11, scope: !506)
!520 = !DILocation(line: 635, column: 5, scope: !506)
!521 = !DILocation(line: 636, column: 5, scope: !506)
!522 = !DILocation(line: 637, column: 5, scope: !506)
!523 = !DILocation(line: 639, column: 5, scope: !506)
!524 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmEclEmm", linkageName: "_ZN11MeanVisitorImmEclEmm", scope: null, file: !4, line: 641, type: !5, scopeLine: 641, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!525 = !DILocation(line: 643, column: 10, scope: !526)
!526 = !DILexicalBlockFile(scope: !524, file: !4, discriminator: 0)
!527 = !DILocation(line: 644, column: 10, scope: !526)
!528 = !DILocation(line: 645, column: 10, scope: !526)
!529 = !DILocation(line: 646, column: 5, scope: !526)
!530 = !DILocation(line: 647, column: 10, scope: !526)
!531 = !DILocation(line: 648, column: 10, scope: !526)
!532 = !DILocation(line: 649, column: 10, scope: !526)
!533 = !DILocation(line: 650, column: 5, scope: !526)
!534 = !DILocation(line: 651, column: 5, scope: !526)
!535 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmE4postEv", linkageName: "_ZN10MaxVisitorImmE4postEv", scope: null, file: !4, line: 653, type: !5, scopeLine: 653, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!536 = !DILocation(line: 654, column: 5, scope: !537)
!537 = !DILexicalBlockFile(scope: !535, file: !4, discriminator: 0)
!538 = distinct !DISubprogram(name: "_ZN10MinVisitorImmE4postEv", linkageName: "_ZN10MinVisitorImmE4postEv", scope: null, file: !4, line: 656, type: !5, scopeLine: 656, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!539 = !DILocation(line: 657, column: 5, scope: !540)
!540 = !DILexicalBlockFile(scope: !538, file: !4, discriminator: 0)
!541 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmE4postEv", linkageName: "_ZN11MeanVisitorImmE4postEv", scope: null, file: !4, line: 659, type: !5, scopeLine: 659, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!542 = !DILocation(line: 660, column: 5, scope: !543)
!543 = !DILexicalBlockFile(scope: !541, file: !4, discriminator: 0)
!544 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_", scope: null, file: !4, line: 662, type: !5, scopeLine: 662, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!545 = !DILocation(line: 663, column: 10, scope: !546)
!546 = !DILexicalBlockFile(scope: !544, file: !4, discriminator: 0)
!547 = !DILocation(line: 664, column: 10, scope: !546)
!548 = !DILocation(line: 665, column: 5, scope: !546)
!549 = !DILocation(line: 666, column: 5, scope: !546)
!550 = distinct !DISubprogram(name: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", scope: null, file: !4, line: 668, type: !5, scopeLine: 668, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!551 = !DILocation(line: 669, column: 10, scope: !552)
!552 = !DILexicalBlockFile(scope: !550, file: !4, discriminator: 0)
!553 = !DILocation(line: 670, column: 10, scope: !552)
!554 = !DILocation(line: 671, column: 5, scope: !552)
