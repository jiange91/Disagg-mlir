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
@duration_col = external global ptr
@str5 = internal constant [2 x i8] c"\0A\00"
@str4 = internal constant [26 x i8] c"Max duration %lu seconds\0A\00"
@str3 = internal constant [26 x i8] c"Min duration %lu seconds\0A\00"
@str2 = internal constant [27 x i8] c"Mean duration %lu seconds\0A\00"
@str1 = internal constant [27 x i8] c"calculate_trip_duration()\0A\00"
@str0 = internal constant [16 x i8] c"Step 3: %ld us\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @poll_qid11(i32, i16)

declare i32 @cache_request_impl_11(i32, i64, i32, i8)

declare i32 @cache_request_impl_5(i32, i64, i32, i8)

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
  call void @_ZN10MaxVisitorImmEC1Ev(ptr %3), !dbg !61
  call void @_ZN10MinVisitorImmEC1Ev(ptr %2), !dbg !62
  call void @_ZN11MeanVisitorImmEC1Ev(ptr %1), !dbg !63
  call void @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(ptr %3, ptr %2, ptr %1), !dbg !64
  %5 = call i64 @_ZNK11MeanVisitorImmE10get_resultEv(ptr %1), !dbg !65
  %6 = call i32 (ptr, ...) @printf(ptr @str2, i64 %5), !dbg !66
  %7 = call i64 @_ZNK10MinVisitorImmE10get_resultEv(ptr %2), !dbg !67
  %8 = call i32 (ptr, ...) @printf(ptr @str3, i64 %7), !dbg !68
  %9 = call i64 @_ZNK10MaxVisitorImmE10get_resultEv(ptr %3), !dbg !69
  %10 = call i32 (ptr, ...) @printf(ptr @str4, i64 %9), !dbg !70
  %11 = call i32 (ptr, ...) @printf(ptr @str5), !dbg !71
  ret void, !dbg !72
}

define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv(ptr %0) !dbg !73 {
  %2 = getelementptr %"struct.std::chrono::duration.0", ptr %0, i32 0, i32 0, !dbg !74
  %3 = load i64, ptr %2, align 8, !dbg !76
  ret i64 %3, !dbg !77
}

define linkonce_odr %"struct.std::chrono::duration.0" @_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE(ptr %0) !dbg !78 {
  %2 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !79
  %3 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !81
  %4 = call %"struct.std::chrono::duration.0" @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(ptr %0), !dbg !82
  store %"struct.std::chrono::duration.0" %4, ptr %2, align 8, !dbg !83
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(ptr %3, ptr %2), !dbg !84
  %5 = load %"struct.std::chrono::duration.0", ptr %3, align 8, !dbg !85
  ret %"struct.std::chrono::duration.0" %5, !dbg !86
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE(ptr %0, ptr %1) !dbg !87 {
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !88
  %4 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !90
  %5 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !91
  %6 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !92
  %7 = call %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr %0), !dbg !93
  store %"struct.std::chrono::duration" %7, ptr %5, align 8, !dbg !94
  %8 = call %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr %1), !dbg !95
  store %"struct.std::chrono::duration" %8, ptr %4, align 8, !dbg !96
  %9 = call %"struct.std::chrono::duration" @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr %5, ptr %4), !dbg !97
  store %"struct.std::chrono::duration" %9, ptr %3, align 8, !dbg !98
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %6, ptr %3), !dbg !99
  %10 = load %"struct.std::chrono::duration", ptr %6, align 8, !dbg !100
  ret %"struct.std::chrono::duration" %10, !dbg !101
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %0, ptr %1) !dbg !102 {
  %3 = getelementptr %"struct.std::chrono::duration", ptr %1, i32 0, i32 0, !dbg !103
  %4 = load i64, ptr %3, align 8, !dbg !105
  %5 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !106
  store i64 %4, ptr %5, align 8, !dbg !107
  ret void, !dbg !108
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv() !dbg !109 {
  %1 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !110
  %2 = alloca i64, i64 1, align 8, !dbg !112
  store i64 undef, ptr %2, align 8, !dbg !113
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !114
  %4 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !115
  store i64 0, ptr %2, align 8, !dbg !116
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(ptr %3, ptr %2), !dbg !117
  %5 = load %"struct.std::chrono::duration", ptr %3, align 8, !dbg !118
  store %"struct.std::chrono::duration" %5, ptr %1, align 8, !dbg !119
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %4, ptr %1), !dbg !120
  %6 = load %"struct.std::chrono::duration", ptr %4, align 8, !dbg !121
  ret %"struct.std::chrono::duration" %6, !dbg !122
}

define linkonce_odr ptr @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_(ptr %0, ptr %1) !dbg !123 {
  %3 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !124
  %4 = getelementptr %"struct.std::chrono::duration", ptr %1, i32 0, i32 0, !dbg !126
  %5 = load i64, ptr %4, align 8, !dbg !127
  store i64 %5, ptr %3, align 8, !dbg !128
  ret ptr %0, !dbg !129
}

declare void @_Z16prepare_durationv()

define linkonce_odr void @_ZN10MaxVisitorImmEC1Ev(ptr %0) !dbg !130 {
  %2 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 0, !dbg !131
  store i64 0, ptr %2, align 8, !dbg !133
  %3 = load i64, ptr %2, align 8, !dbg !134
  store i64 %3, ptr %2, align 8, !dbg !135
  %4 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !136
  store i64 0, ptr %4, align 8, !dbg !137
  %5 = load i64, ptr %4, align 8, !dbg !138
  store i64 %5, ptr %4, align 8, !dbg !139
  %6 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 2, !dbg !140
  store i8 1, ptr %6, align 1, !dbg !141
  %7 = load i8, ptr %6, align 1, !dbg !142
  store i8 %7, ptr %6, align 1, !dbg !143
  ret void, !dbg !144
}

define linkonce_odr void @_ZN10MinVisitorImmEC1Ev(ptr %0) !dbg !145 {
  %2 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 0, !dbg !146
  store i64 0, ptr %2, align 8, !dbg !148
  %3 = load i64, ptr %2, align 8, !dbg !149
  store i64 %3, ptr %2, align 8, !dbg !150
  %4 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !151
  store i64 0, ptr %4, align 8, !dbg !152
  %5 = load i64, ptr %4, align 8, !dbg !153
  store i64 %5, ptr %4, align 8, !dbg !154
  %6 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 2, !dbg !155
  store i8 1, ptr %6, align 1, !dbg !156
  %7 = load i8, ptr %6, align 1, !dbg !157
  store i8 %7, ptr %6, align 1, !dbg !158
  ret void, !dbg !159
}

define linkonce_odr void @_ZN11MeanVisitorImmEC1Ev(ptr %0) !dbg !160 {
  %2 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !161
  store i64 0, ptr %2, align 8, !dbg !163
  %3 = load i64, ptr %2, align 8, !dbg !164
  store i64 %3, ptr %2, align 8, !dbg !165
  %4 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !166
  store i64 0, ptr %4, align 8, !dbg !167
  %5 = load i64, ptr %4, align 8, !dbg !168
  store i64 %5, ptr %4, align 8, !dbg !169
  ret void, !dbg !170
}

define linkonce_odr void @_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_(ptr %0, ptr %1, ptr %2) !dbg !171 {
  %4 = alloca i64, i64 1, align 8, !dbg !172
  store i64 undef, ptr %4, align 8, !dbg !174
  %5 = alloca i64, i64 1, align 8, !dbg !175
  store i64 undef, ptr %5, align 8, !dbg !176
  %6 = load ptr, ptr @duration_col, align 8, !dbg !177
  %7 = load ptr, ptr @index_col, align 8, !dbg !178
  %8 = call i64 @idx_size_i64(ptr %7), !dbg !179
  store i64 %8, ptr %5, align 8, !dbg !180
  %9 = call i64 @dur_size_i64(ptr %6), !dbg !181
  store i64 %9, ptr %4, align 8, !dbg !182
  %10 = call ptr @_ZSt3minImERKT_S2_S2_(ptr %4, ptr %5), !dbg !183
  %11 = load i64, ptr %10, align 8, !dbg !184
  call void @_ZN11MeanVisitorImmE3preEv(ptr %2), !dbg !185
  %12 = add i64 %11, 524287, !dbg !186
  %13 = sdiv i64 %12, 524288, !dbg !187
  %14 = alloca i32, i32 9, align 4, !dbg !188
  br label %15, !dbg !189

15:                                               ; preds = %18, %3
  %16 = phi i64 [ %30, %18 ], [ 0, %3 ]
  %17 = icmp slt i64 %16, 8, !dbg !190
  br i1 %17, label %18, label %31, !dbg !191

18:                                               ; preds = %15
  %19 = mul i64 %16, 524288, !dbg !192
  %20 = trunc i64 %16 to i32, !dbg !193
  %21 = call ptr @idx_index_i64(ptr %7, i64 %19), !dbg !194
  %22 = ptrtoint ptr %21 to i64, !dbg !195
  %23 = and i64 %22, -4194304, !dbg !196
  %24 = udiv i64 %23, 4194304, !dbg !197
  %25 = srem i64 %24, 24, !dbg !198
  %26 = trunc i64 %25 to i32, !dbg !199
  %27 = call i32 @cache_request_impl_5(i32 0, i64 %23, i32 %26, i8 1), !dbg !200
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
  %39 = call ptr @dur_index_i64(ptr %6, i64 %37), !dbg !212
  %40 = ptrtoint ptr %39 to i64, !dbg !213
  %41 = and i64 %40, -4194304, !dbg !214
  %42 = udiv i64 %41, 4194304, !dbg !215
  %43 = srem i64 %42, 24, !dbg !216
  %44 = trunc i64 %43 to i32, !dbg !217
  %45 = call i32 @cache_request_impl_11(i32 0, i64 %41, i32 %44, i8 1), !dbg !218
  %46 = sext i32 %38 to i64, !dbg !219
  %47 = getelementptr i32, ptr %32, i64 %46, !dbg !220
  store i32 %44, ptr %47, align 4, !dbg !221
  %48 = add i64 %34, 1, !dbg !222
  br label %33, !dbg !223

49:                                               ; preds = %33
  br label %50, !dbg !224

50:                                               ; preds = %134, %49
  %51 = phi i64 [ %135, %134 ], [ 0, %49 ]
  %52 = icmp slt i64 %51, %13, !dbg !225
  br i1 %52, label %53, label %136, !dbg !226

53:                                               ; preds = %50
  %54 = add i64 %51, 8, !dbg !227
  %55 = icmp slt i64 %54, %13, !dbg !228
  br i1 %55, label %56, label %77, !dbg !229

56:                                               ; preds = %53
  %57 = srem i64 %54, 9, !dbg !230
  %58 = trunc i64 %57 to i32, !dbg !231
  %59 = mul i64 %54, 524288, !dbg !232
  %60 = call ptr @idx_index_i64(ptr %7, i64 %59), !dbg !233
  %61 = ptrtoint ptr %60 to i64, !dbg !234
  %62 = and i64 %61, -4194304, !dbg !235
  %63 = udiv i64 %62, 4194304, !dbg !236
  %64 = srem i64 %63, 24, !dbg !237
  %65 = trunc i64 %64 to i32, !dbg !238
  %66 = call i32 @cache_request_impl_5(i32 0, i64 %62, i32 %65, i8 1), !dbg !239
  %67 = sext i32 %58 to i64, !dbg !240
  %68 = getelementptr i32, ptr %14, i64 %67, !dbg !241
  store i32 %65, ptr %68, align 4, !dbg !242
  %69 = call ptr @dur_index_i64(ptr %6, i64 %59), !dbg !243
  %70 = ptrtoint ptr %69 to i64, !dbg !244
  %71 = and i64 %70, -4194304, !dbg !245
  %72 = udiv i64 %71, 4194304, !dbg !246
  %73 = srem i64 %72, 24, !dbg !247
  %74 = trunc i64 %73 to i32, !dbg !248
  %75 = call i32 @cache_request_impl_11(i32 0, i64 %71, i32 %74, i8 1), !dbg !249
  %76 = getelementptr i32, ptr %32, i64 %67, !dbg !250
  store i32 %74, ptr %76, align 4, !dbg !251
  br label %77, !dbg !252

77:                                               ; preds = %56, %53
  %78 = mul i64 %51, 524288, !dbg !253
  %79 = call ptr @idx_index_i64(ptr %7, i64 %78), !dbg !254
  %80 = srem i64 %51, 9, !dbg !255
  %81 = getelementptr i32, ptr %14, i64 %80, !dbg !256
  %82 = load i32, ptr %81, align 4, !dbg !257
  %83 = ptrtoint ptr %79 to i64, !dbg !258
  %84 = sext i32 %82 to i64, !dbg !259
  %85 = mul i64 %84, 4194304, !dbg !260
  %86 = srem i64 %83, 4194304, !dbg !261
  %87 = add i64 %85, %86, !dbg !262
  %88 = add i64 %87, 9663676416, !dbg !263
  %89 = load ptr, ptr @_rbuf, align 8, !dbg !264
  %90 = getelementptr i8, ptr %89, i64 %88, !dbg !265
  %91 = call ptr @dur_index_i64(ptr %6, i64 %78), !dbg !266
  %92 = getelementptr i32, ptr %32, i64 %80, !dbg !267
  %93 = load i32, ptr %92, align 4, !dbg !268
  %94 = ptrtoint ptr %91 to i64, !dbg !269
  %95 = sext i32 %93 to i64, !dbg !270
  %96 = mul i64 %95, 4194304, !dbg !271
  %97 = srem i64 %94, 4194304, !dbg !272
  %98 = add i64 %96, %97, !dbg !273
  %99 = add i64 %98, 10737418240, !dbg !274
  %100 = load ptr, ptr @_rbuf, align 8, !dbg !275
  %101 = getelementptr i8, ptr %100, i64 %99, !dbg !276
  %102 = add i32 %93, 240, !dbg !277
  %103 = sext i32 %102 to i64, !dbg !278
  %104 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %103, !dbg !279
  %105 = getelementptr { i64, i8, i8, i16, i32 }, ptr %104, i32 0, i32 3, !dbg !280
  %106 = load i16, ptr %105, align 2, !dbg !281
  call void @poll_qid11(i32 10, i16 %106), !dbg !282
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
  %119 = phi i64 [ %133, %121 ], [ 0, %116 ]
  %120 = icmp slt i64 %119, %115, !dbg !294
  br i1 %120, label %121, label %134, !dbg !295

121:                                              ; preds = %118
  %122 = add i64 %119, %117, !dbg !296
  %123 = getelementptr i64, ptr %90, i64 %119, !dbg !297
  %124 = getelementptr i64, ptr %101, i64 %119, !dbg !298
  %125 = call ptr @idx_index_i64(ptr %7, i64 %122), !dbg !299
  %126 = load i64, ptr %123, align 8, !dbg !300
  %127 = call ptr @dur_index_i64(ptr %6, i64 %122), !dbg !301
  %128 = load i64, ptr %124, align 8, !dbg !302
  call void @_ZN10MaxVisitorImmEclEmm(ptr %0, i64 %126, i64 %128), !dbg !303
  %129 = call ptr @idx_index_i64(ptr %7, i64 %122), !dbg !304
  %130 = call ptr @dur_index_i64(ptr %6, i64 %122), !dbg !305
  call void @_ZN10MinVisitorImmEclEmm(ptr %1, i64 %126, i64 %128), !dbg !306
  %131 = call ptr @idx_index_i64(ptr %7, i64 %122), !dbg !307
  %132 = call ptr @dur_index_i64(ptr %6, i64 %122), !dbg !308
  call void @_ZN11MeanVisitorImmEclEmm(ptr %2, i64 %126, i64 %128), !dbg !309
  %133 = add i64 %119, 1, !dbg !310
  br label %118, !dbg !311

134:                                              ; preds = %118
  %135 = add i64 %51, 1, !dbg !312
  br label %50, !dbg !313

136:                                              ; preds = %50
  ret void, !dbg !314
}

define linkonce_odr i64 @_ZNK11MeanVisitorImmE10get_resultEv(ptr %0) !dbg !315 {
  %2 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !316
  %3 = load i64, ptr %2, align 8, !dbg !318
  %4 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !319
  %5 = load i64, ptr %4, align 8, !dbg !320
  %6 = sdiv i64 %3, %5, !dbg !321
  ret i64 %6, !dbg !322
}

define linkonce_odr i64 @_ZNK10MinVisitorImmE10get_resultEv(ptr %0) !dbg !323 {
  %2 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !324
  %3 = load i64, ptr %2, align 8, !dbg !326
  ret i64 %3, !dbg !327
}

define linkonce_odr i64 @_ZNK10MaxVisitorImmE10get_resultEv(ptr %0) !dbg !328 {
  %2 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !329
  %3 = load i64, ptr %2, align 8, !dbg !331
  ret i64 %3, !dbg !332
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(ptr %0, ptr %1) !dbg !333 {
  %3 = getelementptr %"struct.std::chrono::duration.0", ptr %1, i32 0, i32 0, !dbg !334
  %4 = load i64, ptr %3, align 8, !dbg !336
  %5 = getelementptr %"struct.std::chrono::duration.0", ptr %0, i32 0, i32 0, !dbg !337
  store i64 %4, ptr %5, align 8, !dbg !338
  ret void, !dbg !339
}

define linkonce_odr %"struct.std::chrono::duration.0" @_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE(ptr %0) !dbg !340 {
  %2 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !341
  %3 = alloca i64, i64 1, align 8, !dbg !343
  store i64 undef, ptr %3, align 8, !dbg !344
  %4 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !345
  %5 = alloca %"struct.std::chrono::duration.0", i64 1, align 8, !dbg !346
  %6 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %0), !dbg !347
  %7 = sdiv i64 %6, 1000, !dbg !348
  store i64 %7, ptr %3, align 8, !dbg !349
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(ptr %4, ptr %3), !dbg !350
  %8 = load %"struct.std::chrono::duration.0", ptr %4, align 8, !dbg !351
  store %"struct.std::chrono::duration.0" %8, ptr %2, align 8, !dbg !352
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_(ptr %5, ptr %2), !dbg !353
  %9 = load %"struct.std::chrono::duration.0", ptr %5, align 8, !dbg !354
  ret %"struct.std::chrono::duration.0" %9, !dbg !355
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_(ptr %0, ptr %1) !dbg !356 {
  %3 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !357
  %4 = alloca i64, i64 1, align 8, !dbg !359
  store i64 undef, ptr %4, align 8, !dbg !360
  %5 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !361
  %6 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !362
  %7 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !363
  %8 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !364
  %9 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !365
  %10 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !366
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %8, ptr %0), !dbg !367
  %11 = load %"struct.std::chrono::duration", ptr %8, align 8, !dbg !368
  store %"struct.std::chrono::duration" %11, ptr %7, align 8, !dbg !369
  %12 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %7), !dbg !370
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %6, ptr %1), !dbg !371
  %13 = load %"struct.std::chrono::duration", ptr %6, align 8, !dbg !372
  store %"struct.std::chrono::duration" %13, ptr %5, align 8, !dbg !373
  %14 = call i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %5), !dbg !374
  %15 = sub i64 %12, %14, !dbg !375
  store i64 %15, ptr %4, align 8, !dbg !376
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(ptr %9, ptr %4), !dbg !377
  %16 = load %"struct.std::chrono::duration", ptr %9, align 8, !dbg !378
  store %"struct.std::chrono::duration" %16, ptr %3, align 8, !dbg !379
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %10, ptr %3), !dbg !380
  %17 = load %"struct.std::chrono::duration", ptr %10, align 8, !dbg !381
  ret %"struct.std::chrono::duration" %17, !dbg !382
}

define linkonce_odr %"struct.std::chrono::duration" @_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv(ptr %0) !dbg !383 {
  %2 = alloca %"struct.std::chrono::duration", i64 1, align 8, !dbg !384
  %3 = getelementptr %"struct.std::chrono::time_point", ptr %0, i32 0, i32 0, !dbg !386
  call void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_(ptr %2, ptr %3), !dbg !387
  %4 = load %"struct.std::chrono::duration", ptr %2, align 8, !dbg !388
  ret %"struct.std::chrono::duration" %4, !dbg !389
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_(ptr %0, ptr %1) !dbg !390 {
  %3 = load i64, ptr %1, align 8, !dbg !391
  %4 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !393
  store i64 %3, ptr %4, align 8, !dbg !394
  ret void, !dbg !395
}

define linkonce_odr i64 @_ZNSt6chrono15duration_valuesIlE4zeroEv() !dbg !396 {
  ret i64 0, !dbg !397
}

define linkonce_odr i64 @_ZNKSt6vectorImSaImEE4sizeEv(ptr %0) !dbg !399 {
  %2 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !400
  %3 = getelementptr %"struct.std::_Vector_base", ptr %2, i32 0, i32 0, !dbg !402
  %4 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !403
  %5 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !404
  %6 = load ptr, ptr %5, align 8, !dbg !405
  %7 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !406
  %8 = load ptr, ptr %7, align 8, !dbg !407
  %9 = ptrtoint ptr %6 to i64, !dbg !408
  %10 = ptrtoint ptr %8 to i64, !dbg !409
  %11 = sub i64 %9, %10, !dbg !410
  %12 = sdiv i64 %11, 8, !dbg !411
  ret i64 %12, !dbg !412
}

define linkonce_odr i64 @idx_size_i64(ptr %0) !dbg !413 {
  %2 = getelementptr %"_Lowered_rid::class.std::vector.1", ptr %0, i32 0, i32 0, !dbg !414
  %3 = getelementptr %"_Lowered_rid::struct.std::_Vector_base.2", ptr %2, i32 0, i32 0, !dbg !416
  %4 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !417
  %5 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !418
  %6 = load ptr, ptr %5, align 8, !dbg !419
  %7 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !420
  %8 = load ptr, ptr %7, align 8, !dbg !421
  %9 = ptrtoint ptr %6 to i64, !dbg !422
  %10 = ptrtoint ptr %8 to i64, !dbg !423
  %11 = sub i64 %9, %10, !dbg !424
  %12 = sdiv i64 %11, 8, !dbg !425
  ret i64 %12, !dbg !426
}

define linkonce_odr i64 @dur_size_i64(ptr %0) !dbg !427 {
  %2 = getelementptr %"_Lowered_rdur::class.std::vector", ptr %0, i32 0, i32 0, !dbg !428
  %3 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base", ptr %2, i32 0, i32 0, !dbg !430
  %4 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %3, i32 0, i32 0, !dbg !431
  %5 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 1, !dbg !432
  %6 = load ptr, ptr %5, align 8, !dbg !433
  %7 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %4, i32 0, i32 0, !dbg !434
  %8 = load ptr, ptr %7, align 8, !dbg !435
  %9 = ptrtoint ptr %6 to i64, !dbg !436
  %10 = ptrtoint ptr %8 to i64, !dbg !437
  %11 = sub i64 %9, %10, !dbg !438
  %12 = sdiv i64 %11, 8, !dbg !439
  ret i64 %12, !dbg !440
}

define linkonce_odr ptr @_ZSt3minImERKT_S2_S2_(ptr %0, ptr %1) !dbg !441 {
  %3 = load i64, ptr %1, align 8, !dbg !442
  %4 = load i64, ptr %0, align 8, !dbg !444
  %5 = icmp slt i64 %3, %4, !dbg !445
  %6 = select i1 %5, ptr %1, ptr %0, !dbg !446
  ret ptr %6, !dbg !447
}

define linkonce_odr void @_ZN10MaxVisitorImmE3preEv(ptr %0) !dbg !448 {
  ret void, !dbg !449
}

define linkonce_odr void @_ZN10MinVisitorImmE3preEv(ptr %0) !dbg !451 {
  ret void, !dbg !452
}

define linkonce_odr void @_ZN11MeanVisitorImmE3preEv(ptr %0) !dbg !454 {
  %2 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !455
  store i64 0, ptr %2, align 8, !dbg !457
  %3 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !458
  store i64 0, ptr %3, align 8, !dbg !459
  ret void, !dbg !460
}

define linkonce_odr ptr @_ZNSt6vectorImSaImEEixEm(ptr %0, i64 %1) !dbg !461 {
  %3 = getelementptr %"class.std::vector", ptr %0, i32 0, i32 0, !dbg !462
  %4 = getelementptr %"struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !464
  %5 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !465
  %6 = getelementptr %"struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !466
  %7 = load ptr, ptr %6, align 8, !dbg !467
  %8 = getelementptr i64, ptr %7, i64 %1, !dbg !468
  ret ptr %8, !dbg !469
}

define linkonce_odr ptr @idx_index_i64(ptr %0, i64 %1) !dbg !470 {
  %3 = getelementptr %"_Lowered_rid::class.std::vector.1", ptr %0, i32 0, i32 0, !dbg !471
  %4 = getelementptr %"_Lowered_rid::struct.std::_Vector_base.2", ptr %3, i32 0, i32 0, !dbg !473
  %5 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !474
  %6 = getelementptr %"_Lowered_rid::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !475
  %7 = load ptr, ptr %6, align 8, !dbg !476
  %8 = getelementptr i64, ptr %7, i64 %1, !dbg !477
  ret ptr %8, !dbg !478
}

define linkonce_odr ptr @dur_index_i64(ptr %0, i64 %1) !dbg !479 {
  %3 = getelementptr %"_Lowered_rdur::class.std::vector", ptr %0, i32 0, i32 0, !dbg !480
  %4 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base", ptr %3, i32 0, i32 0, !dbg !482
  %5 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl", ptr %4, i32 0, i32 0, !dbg !483
  %6 = getelementptr %"_Lowered_rdur::struct.std::_Vector_base<unsigned long, std::allocator<unsigned long>>::_Vector_impl_data", ptr %5, i32 0, i32 0, !dbg !484
  %7 = load ptr, ptr %6, align 8, !dbg !485
  %8 = getelementptr i64, ptr %7, i64 %1, !dbg !486
  ret ptr %8, !dbg !487
}

define linkonce_odr void @_ZN10MaxVisitorImmEclEmm(ptr %0, i64 %1, i64 %2) !dbg !488 {
  %4 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 2, !dbg !489
  %5 = load i8, ptr %4, align 1, !dbg !491
  %6 = icmp ne i8 %5, 0, !dbg !492
  br i1 %6, label %7, label %8, !dbg !493

7:                                                ; preds = %3
  br label %12, !dbg !494

8:                                                ; preds = %3
  %9 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !495
  %10 = load i64, ptr %9, align 8, !dbg !496
  %11 = icmp sgt i64 %2, %10, !dbg !497
  br label %12, !dbg !498

12:                                               ; preds = %7, %8
  %13 = phi i1 [ %11, %8 ], [ true, %7 ]
  br label %14, !dbg !499

14:                                               ; preds = %12
  br i1 %13, label %15, label %18, !dbg !500

15:                                               ; preds = %14
  %16 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 1, !dbg !501
  store i64 %2, ptr %16, align 8, !dbg !502
  %17 = getelementptr %class.MaxVisitor, ptr %0, i32 0, i32 0, !dbg !503
  store i64 %1, ptr %17, align 8, !dbg !504
  store i8 0, ptr %4, align 1, !dbg !505
  br label %18, !dbg !506

18:                                               ; preds = %15, %14
  ret void, !dbg !507
}

define linkonce_odr void @_ZN10MinVisitorImmEclEmm(ptr %0, i64 %1, i64 %2) !dbg !508 {
  %4 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 2, !dbg !509
  %5 = load i8, ptr %4, align 1, !dbg !511
  %6 = icmp ne i8 %5, 0, !dbg !512
  br i1 %6, label %7, label %8, !dbg !513

7:                                                ; preds = %3
  br label %12, !dbg !514

8:                                                ; preds = %3
  %9 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !515
  %10 = load i64, ptr %9, align 8, !dbg !516
  %11 = icmp slt i64 %2, %10, !dbg !517
  br label %12, !dbg !518

12:                                               ; preds = %7, %8
  %13 = phi i1 [ %11, %8 ], [ true, %7 ]
  br label %14, !dbg !519

14:                                               ; preds = %12
  br i1 %13, label %15, label %18, !dbg !520

15:                                               ; preds = %14
  %16 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 1, !dbg !521
  store i64 %2, ptr %16, align 8, !dbg !522
  %17 = getelementptr %class.MinVisitor, ptr %0, i32 0, i32 0, !dbg !523
  store i64 %1, ptr %17, align 8, !dbg !524
  store i8 0, ptr %4, align 1, !dbg !525
  br label %18, !dbg !526

18:                                               ; preds = %15, %14
  ret void, !dbg !527
}

define linkonce_odr void @_ZN11MeanVisitorImmEclEmm(ptr %0, i64 %1, i64 %2) !dbg !528 {
  %4 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 0, !dbg !529
  %5 = load i64, ptr %4, align 8, !dbg !531
  %6 = add i64 %5, %2, !dbg !532
  store i64 %6, ptr %4, align 8, !dbg !533
  %7 = getelementptr %class.MeanVisitor, ptr %0, i32 0, i32 1, !dbg !534
  %8 = load i64, ptr %7, align 8, !dbg !535
  %9 = add i64 %8, 1, !dbg !536
  store i64 %9, ptr %7, align 8, !dbg !537
  ret void, !dbg !538
}

define linkonce_odr void @_ZN10MaxVisitorImmE4postEv(ptr %0) !dbg !539 {
  ret void, !dbg !540
}

define linkonce_odr void @_ZN10MinVisitorImmE4postEv(ptr %0) !dbg !542 {
  ret void, !dbg !543
}

define linkonce_odr void @_ZN11MeanVisitorImmE4postEv(ptr %0) !dbg !545 {
  ret void, !dbg !546
}

define linkonce_odr void @_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_(ptr %0, ptr %1) !dbg !548 {
  %3 = load i64, ptr %1, align 8, !dbg !549
  %4 = getelementptr %"struct.std::chrono::duration.0", ptr %0, i32 0, i32 0, !dbg !551
  store i64 %3, ptr %4, align 8, !dbg !552
  ret void, !dbg !553
}

define linkonce_odr i64 @_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv(ptr %0) !dbg !554 {
  %2 = getelementptr %"struct.std::chrono::duration", ptr %0, i32 0, i32 0, !dbg !555
  %3 = load i64, ptr %2, align 8, !dbg !557
  ret i64 %3, !dbg !558
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "lower.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/example/dataframe/fuse")
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
!61 = !DILocation(line: 86, column: 5, scope: !56)
!62 = !DILocation(line: 87, column: 5, scope: !56)
!63 = !DILocation(line: 88, column: 5, scope: !56)
!64 = !DILocation(line: 89, column: 5, scope: !56)
!65 = !DILocation(line: 92, column: 10, scope: !56)
!66 = !DILocation(line: 93, column: 11, scope: !56)
!67 = !DILocation(line: 96, column: 11, scope: !56)
!68 = !DILocation(line: 97, column: 11, scope: !56)
!69 = !DILocation(line: 100, column: 11, scope: !56)
!70 = !DILocation(line: 101, column: 11, scope: !56)
!71 = !DILocation(line: 104, column: 11, scope: !56)
!72 = !DILocation(line: 105, column: 5, scope: !56)
!73 = distinct !DISubprogram(name: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000EEE5countEv", scope: null, file: !4, line: 107, type: !5, scopeLine: 107, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!74 = !DILocation(line: 108, column: 10, scope: !75)
!75 = !DILexicalBlockFile(scope: !73, file: !4, discriminator: 0)
!76 = !DILocation(line: 109, column: 10, scope: !75)
!77 = !DILocation(line: 110, column: 5, scope: !75)
!78 = distinct !DISubprogram(name: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", linkageName: "_ZNSt6chrono13duration_castINS_8durationIlSt5ratioILl1ELl1000000EEEElS2_ILl1ELl1000000000EEEENSt9enable_ifIXsr13__is_durationIT_EE5valueES7_E4typeERKNS1_IT0_T1_EE", scope: null, file: !4, line: 112, type: !5, scopeLine: 112, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!79 = !DILocation(line: 114, column: 10, scope: !80)
!80 = !DILexicalBlockFile(scope: !78, file: !4, discriminator: 0)
!81 = !DILocation(line: 115, column: 10, scope: !80)
!82 = !DILocation(line: 116, column: 10, scope: !80)
!83 = !DILocation(line: 117, column: 5, scope: !80)
!84 = !DILocation(line: 118, column: 5, scope: !80)
!85 = !DILocation(line: 119, column: 10, scope: !80)
!86 = !DILocation(line: 120, column: 5, scope: !80)
!87 = distinct !DISubprogram(name: "_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE", linkageName: "_ZNSt6chronomiINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEES6_EENSt11common_typeIJT0_T1_EE4typeERKNS_10time_pointIT_S8_EERKNSC_ISD_S9_EE", scope: null, file: !4, line: 122, type: !5, scopeLine: 122, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!88 = !DILocation(line: 124, column: 10, scope: !89)
!89 = !DILexicalBlockFile(scope: !87, file: !4, discriminator: 0)
!90 = !DILocation(line: 125, column: 10, scope: !89)
!91 = !DILocation(line: 126, column: 10, scope: !89)
!92 = !DILocation(line: 127, column: 10, scope: !89)
!93 = !DILocation(line: 128, column: 10, scope: !89)
!94 = !DILocation(line: 129, column: 5, scope: !89)
!95 = !DILocation(line: 130, column: 10, scope: !89)
!96 = !DILocation(line: 131, column: 5, scope: !89)
!97 = !DILocation(line: 132, column: 10, scope: !89)
!98 = !DILocation(line: 133, column: 5, scope: !89)
!99 = !DILocation(line: 134, column: 5, scope: !89)
!100 = !DILocation(line: 135, column: 10, scope: !89)
!101 = !DILocation(line: 136, column: 5, scope: !89)
!102 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1ERKS3_", scope: null, file: !4, line: 138, type: !5, scopeLine: 138, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!103 = !DILocation(line: 139, column: 10, scope: !104)
!104 = !DILexicalBlockFile(scope: !102, file: !4, discriminator: 0)
!105 = !DILocation(line: 140, column: 10, scope: !104)
!106 = !DILocation(line: 141, column: 10, scope: !104)
!107 = !DILocation(line: 142, column: 5, scope: !104)
!108 = !DILocation(line: 143, column: 5, scope: !104)
!109 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE4zeroEv", scope: null, file: !4, line: 145, type: !5, scopeLine: 145, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!110 = !DILocation(line: 148, column: 10, scope: !111)
!111 = !DILexicalBlockFile(scope: !109, file: !4, discriminator: 0)
!112 = !DILocation(line: 149, column: 10, scope: !111)
!113 = !DILocation(line: 151, column: 5, scope: !111)
!114 = !DILocation(line: 152, column: 10, scope: !111)
!115 = !DILocation(line: 153, column: 10, scope: !111)
!116 = !DILocation(line: 154, column: 5, scope: !111)
!117 = !DILocation(line: 155, column: 5, scope: !111)
!118 = !DILocation(line: 156, column: 10, scope: !111)
!119 = !DILocation(line: 157, column: 5, scope: !111)
!120 = !DILocation(line: 158, column: 5, scope: !111)
!121 = !DILocation(line: 159, column: 10, scope: !111)
!122 = !DILocation(line: 160, column: 5, scope: !111)
!123 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEaSERKS3_", scope: null, file: !4, line: 162, type: !5, scopeLine: 162, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!124 = !DILocation(line: 163, column: 10, scope: !125)
!125 = !DILexicalBlockFile(scope: !123, file: !4, discriminator: 0)
!126 = !DILocation(line: 164, column: 10, scope: !125)
!127 = !DILocation(line: 165, column: 10, scope: !125)
!128 = !DILocation(line: 166, column: 5, scope: !125)
!129 = !DILocation(line: 167, column: 5, scope: !125)
!130 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmEC1Ev", linkageName: "_ZN10MaxVisitorImmEC1Ev", scope: null, file: !4, line: 170, type: !5, scopeLine: 170, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!131 = !DILocation(line: 173, column: 10, scope: !132)
!132 = !DILexicalBlockFile(scope: !130, file: !4, discriminator: 0)
!133 = !DILocation(line: 174, column: 5, scope: !132)
!134 = !DILocation(line: 175, column: 10, scope: !132)
!135 = !DILocation(line: 176, column: 5, scope: !132)
!136 = !DILocation(line: 177, column: 10, scope: !132)
!137 = !DILocation(line: 178, column: 5, scope: !132)
!138 = !DILocation(line: 179, column: 10, scope: !132)
!139 = !DILocation(line: 180, column: 5, scope: !132)
!140 = !DILocation(line: 181, column: 10, scope: !132)
!141 = !DILocation(line: 182, column: 5, scope: !132)
!142 = !DILocation(line: 183, column: 10, scope: !132)
!143 = !DILocation(line: 184, column: 5, scope: !132)
!144 = !DILocation(line: 185, column: 5, scope: !132)
!145 = distinct !DISubprogram(name: "_ZN10MinVisitorImmEC1Ev", linkageName: "_ZN10MinVisitorImmEC1Ev", scope: null, file: !4, line: 187, type: !5, scopeLine: 187, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!146 = !DILocation(line: 190, column: 10, scope: !147)
!147 = !DILexicalBlockFile(scope: !145, file: !4, discriminator: 0)
!148 = !DILocation(line: 191, column: 5, scope: !147)
!149 = !DILocation(line: 192, column: 10, scope: !147)
!150 = !DILocation(line: 193, column: 5, scope: !147)
!151 = !DILocation(line: 194, column: 10, scope: !147)
!152 = !DILocation(line: 195, column: 5, scope: !147)
!153 = !DILocation(line: 196, column: 10, scope: !147)
!154 = !DILocation(line: 197, column: 5, scope: !147)
!155 = !DILocation(line: 198, column: 10, scope: !147)
!156 = !DILocation(line: 199, column: 5, scope: !147)
!157 = !DILocation(line: 200, column: 10, scope: !147)
!158 = !DILocation(line: 201, column: 5, scope: !147)
!159 = !DILocation(line: 202, column: 5, scope: !147)
!160 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmEC1Ev", linkageName: "_ZN11MeanVisitorImmEC1Ev", scope: null, file: !4, line: 204, type: !5, scopeLine: 204, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!161 = !DILocation(line: 206, column: 10, scope: !162)
!162 = !DILexicalBlockFile(scope: !160, file: !4, discriminator: 0)
!163 = !DILocation(line: 207, column: 5, scope: !162)
!164 = !DILocation(line: 208, column: 10, scope: !162)
!165 = !DILocation(line: 209, column: 5, scope: !162)
!166 = !DILocation(line: 210, column: 10, scope: !162)
!167 = !DILocation(line: 211, column: 5, scope: !162)
!168 = !DILocation(line: 212, column: 10, scope: !162)
!169 = !DILocation(line: 213, column: 5, scope: !162)
!170 = !DILocation(line: 214, column: 5, scope: !162)
!171 = distinct !DISubprogram(name: "_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_", linkageName: "_Z5visitI10MaxVisitorImmE10MinVisitorImmE11MeanVisitorImmEEvRT_RT0_RT1_", scope: null, file: !4, line: 216, type: !5, scopeLine: 216, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!172 = !DILocation(line: 237, column: 11, scope: !173)
!173 = !DILexicalBlockFile(scope: !171, file: !4, discriminator: 0)
!174 = !DILocation(line: 238, column: 5, scope: !173)
!175 = !DILocation(line: 239, column: 11, scope: !173)
!176 = !DILocation(line: 240, column: 5, scope: !173)
!177 = !DILocation(line: 242, column: 11, scope: !173)
!178 = !DILocation(line: 244, column: 11, scope: !173)
!179 = !DILocation(line: 245, column: 11, scope: !173)
!180 = !DILocation(line: 246, column: 5, scope: !173)
!181 = !DILocation(line: 247, column: 11, scope: !173)
!182 = !DILocation(line: 248, column: 5, scope: !173)
!183 = !DILocation(line: 249, column: 11, scope: !173)
!184 = !DILocation(line: 250, column: 11, scope: !173)
!185 = !DILocation(line: 251, column: 5, scope: !173)
!186 = !DILocation(line: 252, column: 11, scope: !173)
!187 = !DILocation(line: 253, column: 11, scope: !173)
!188 = !DILocation(line: 254, column: 11, scope: !173)
!189 = !DILocation(line: 255, column: 5, scope: !173)
!190 = !DILocation(line: 257, column: 11, scope: !173)
!191 = !DILocation(line: 258, column: 5, scope: !173)
!192 = !DILocation(line: 260, column: 11, scope: !173)
!193 = !DILocation(line: 261, column: 11, scope: !173)
!194 = !DILocation(line: 262, column: 11, scope: !173)
!195 = !DILocation(line: 263, column: 11, scope: !173)
!196 = !DILocation(line: 264, column: 11, scope: !173)
!197 = !DILocation(line: 265, column: 11, scope: !173)
!198 = !DILocation(line: 266, column: 11, scope: !173)
!199 = !DILocation(line: 267, column: 11, scope: !173)
!200 = !DILocation(line: 268, column: 11, scope: !173)
!201 = !DILocation(line: 269, column: 11, scope: !173)
!202 = !DILocation(line: 270, column: 11, scope: !173)
!203 = !DILocation(line: 271, column: 5, scope: !173)
!204 = !DILocation(line: 272, column: 11, scope: !173)
!205 = !DILocation(line: 273, column: 5, scope: !173)
!206 = !DILocation(line: 275, column: 11, scope: !173)
!207 = !DILocation(line: 276, column: 5, scope: !173)
!208 = !DILocation(line: 278, column: 11, scope: !173)
!209 = !DILocation(line: 279, column: 5, scope: !173)
!210 = !DILocation(line: 281, column: 11, scope: !173)
!211 = !DILocation(line: 282, column: 11, scope: !173)
!212 = !DILocation(line: 283, column: 11, scope: !173)
!213 = !DILocation(line: 284, column: 11, scope: !173)
!214 = !DILocation(line: 285, column: 11, scope: !173)
!215 = !DILocation(line: 286, column: 11, scope: !173)
!216 = !DILocation(line: 287, column: 11, scope: !173)
!217 = !DILocation(line: 288, column: 11, scope: !173)
!218 = !DILocation(line: 289, column: 11, scope: !173)
!219 = !DILocation(line: 290, column: 11, scope: !173)
!220 = !DILocation(line: 291, column: 11, scope: !173)
!221 = !DILocation(line: 292, column: 5, scope: !173)
!222 = !DILocation(line: 293, column: 11, scope: !173)
!223 = !DILocation(line: 294, column: 5, scope: !173)
!224 = !DILocation(line: 296, column: 5, scope: !173)
!225 = !DILocation(line: 298, column: 11, scope: !173)
!226 = !DILocation(line: 299, column: 5, scope: !173)
!227 = !DILocation(line: 301, column: 11, scope: !173)
!228 = !DILocation(line: 302, column: 11, scope: !173)
!229 = !DILocation(line: 303, column: 5, scope: !173)
!230 = !DILocation(line: 305, column: 11, scope: !173)
!231 = !DILocation(line: 306, column: 11, scope: !173)
!232 = !DILocation(line: 307, column: 11, scope: !173)
!233 = !DILocation(line: 308, column: 11, scope: !173)
!234 = !DILocation(line: 309, column: 11, scope: !173)
!235 = !DILocation(line: 310, column: 11, scope: !173)
!236 = !DILocation(line: 311, column: 11, scope: !173)
!237 = !DILocation(line: 312, column: 11, scope: !173)
!238 = !DILocation(line: 313, column: 11, scope: !173)
!239 = !DILocation(line: 314, column: 11, scope: !173)
!240 = !DILocation(line: 315, column: 11, scope: !173)
!241 = !DILocation(line: 316, column: 11, scope: !173)
!242 = !DILocation(line: 317, column: 5, scope: !173)
!243 = !DILocation(line: 318, column: 11, scope: !173)
!244 = !DILocation(line: 319, column: 11, scope: !173)
!245 = !DILocation(line: 320, column: 11, scope: !173)
!246 = !DILocation(line: 321, column: 11, scope: !173)
!247 = !DILocation(line: 322, column: 11, scope: !173)
!248 = !DILocation(line: 323, column: 11, scope: !173)
!249 = !DILocation(line: 324, column: 11, scope: !173)
!250 = !DILocation(line: 325, column: 11, scope: !173)
!251 = !DILocation(line: 326, column: 5, scope: !173)
!252 = !DILocation(line: 327, column: 5, scope: !173)
!253 = !DILocation(line: 329, column: 11, scope: !173)
!254 = !DILocation(line: 330, column: 11, scope: !173)
!255 = !DILocation(line: 331, column: 11, scope: !173)
!256 = !DILocation(line: 332, column: 11, scope: !173)
!257 = !DILocation(line: 333, column: 11, scope: !173)
!258 = !DILocation(line: 334, column: 11, scope: !173)
!259 = !DILocation(line: 335, column: 11, scope: !173)
!260 = !DILocation(line: 336, column: 11, scope: !173)
!261 = !DILocation(line: 337, column: 11, scope: !173)
!262 = !DILocation(line: 338, column: 11, scope: !173)
!263 = !DILocation(line: 339, column: 11, scope: !173)
!264 = !DILocation(line: 341, column: 11, scope: !173)
!265 = !DILocation(line: 342, column: 11, scope: !173)
!266 = !DILocation(line: 344, column: 12, scope: !173)
!267 = !DILocation(line: 345, column: 12, scope: !173)
!268 = !DILocation(line: 346, column: 12, scope: !173)
!269 = !DILocation(line: 347, column: 12, scope: !173)
!270 = !DILocation(line: 348, column: 12, scope: !173)
!271 = !DILocation(line: 349, column: 12, scope: !173)
!272 = !DILocation(line: 350, column: 12, scope: !173)
!273 = !DILocation(line: 351, column: 12, scope: !173)
!274 = !DILocation(line: 352, column: 12, scope: !173)
!275 = !DILocation(line: 353, column: 12, scope: !173)
!276 = !DILocation(line: 354, column: 12, scope: !173)
!277 = !DILocation(line: 356, column: 12, scope: !173)
!278 = !DILocation(line: 357, column: 12, scope: !173)
!279 = !DILocation(line: 360, column: 12, scope: !173)
!280 = !DILocation(line: 361, column: 12, scope: !173)
!281 = !DILocation(line: 362, column: 12, scope: !173)
!282 = !DILocation(line: 363, column: 5, scope: !173)
!283 = !DILocation(line: 364, column: 12, scope: !173)
!284 = !DILocation(line: 365, column: 12, scope: !173)
!285 = !DILocation(line: 366, column: 12, scope: !173)
!286 = !DILocation(line: 367, column: 5, scope: !173)
!287 = !DILocation(line: 369, column: 5, scope: !173)
!288 = !DILocation(line: 371, column: 12, scope: !173)
!289 = !DILocation(line: 372, column: 12, scope: !173)
!290 = !DILocation(line: 373, column: 5, scope: !173)
!291 = !DILocation(line: 375, column: 5, scope: !173)
!292 = !DILocation(line: 377, column: 12, scope: !173)
!293 = !DILocation(line: 378, column: 5, scope: !173)
!294 = !DILocation(line: 380, column: 12, scope: !173)
!295 = !DILocation(line: 381, column: 5, scope: !173)
!296 = !DILocation(line: 383, column: 12, scope: !173)
!297 = !DILocation(line: 384, column: 12, scope: !173)
!298 = !DILocation(line: 385, column: 12, scope: !173)
!299 = !DILocation(line: 386, column: 12, scope: !173)
!300 = !DILocation(line: 387, column: 12, scope: !173)
!301 = !DILocation(line: 388, column: 12, scope: !173)
!302 = !DILocation(line: 389, column: 12, scope: !173)
!303 = !DILocation(line: 390, column: 5, scope: !173)
!304 = !DILocation(line: 391, column: 12, scope: !173)
!305 = !DILocation(line: 392, column: 12, scope: !173)
!306 = !DILocation(line: 393, column: 5, scope: !173)
!307 = !DILocation(line: 394, column: 12, scope: !173)
!308 = !DILocation(line: 395, column: 12, scope: !173)
!309 = !DILocation(line: 396, column: 5, scope: !173)
!310 = !DILocation(line: 397, column: 12, scope: !173)
!311 = !DILocation(line: 398, column: 5, scope: !173)
!312 = !DILocation(line: 400, column: 12, scope: !173)
!313 = !DILocation(line: 401, column: 5, scope: !173)
!314 = !DILocation(line: 403, column: 5, scope: !173)
!315 = distinct !DISubprogram(name: "_ZNK11MeanVisitorImmE10get_resultEv", linkageName: "_ZNK11MeanVisitorImmE10get_resultEv", scope: null, file: !4, line: 405, type: !5, scopeLine: 405, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!316 = !DILocation(line: 406, column: 10, scope: !317)
!317 = !DILexicalBlockFile(scope: !315, file: !4, discriminator: 0)
!318 = !DILocation(line: 407, column: 10, scope: !317)
!319 = !DILocation(line: 408, column: 10, scope: !317)
!320 = !DILocation(line: 409, column: 10, scope: !317)
!321 = !DILocation(line: 410, column: 10, scope: !317)
!322 = !DILocation(line: 411, column: 5, scope: !317)
!323 = distinct !DISubprogram(name: "_ZNK10MinVisitorImmE10get_resultEv", linkageName: "_ZNK10MinVisitorImmE10get_resultEv", scope: null, file: !4, line: 413, type: !5, scopeLine: 413, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!324 = !DILocation(line: 414, column: 10, scope: !325)
!325 = !DILexicalBlockFile(scope: !323, file: !4, discriminator: 0)
!326 = !DILocation(line: 415, column: 10, scope: !325)
!327 = !DILocation(line: 416, column: 5, scope: !325)
!328 = distinct !DISubprogram(name: "_ZNK10MaxVisitorImmE10get_resultEv", linkageName: "_ZNK10MaxVisitorImmE10get_resultEv", scope: null, file: !4, line: 418, type: !5, scopeLine: 418, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!329 = !DILocation(line: 419, column: 10, scope: !330)
!330 = !DILexicalBlockFile(scope: !328, file: !4, discriminator: 0)
!331 = !DILocation(line: 420, column: 10, scope: !330)
!332 = !DILocation(line: 421, column: 5, scope: !330)
!333 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1ERKS3_", scope: null, file: !4, line: 423, type: !5, scopeLine: 423, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!334 = !DILocation(line: 424, column: 10, scope: !335)
!335 = !DILexicalBlockFile(scope: !333, file: !4, discriminator: 0)
!336 = !DILocation(line: 425, column: 10, scope: !335)
!337 = !DILocation(line: 426, column: 10, scope: !335)
!338 = !DILocation(line: 427, column: 5, scope: !335)
!339 = !DILocation(line: 428, column: 5, scope: !335)
!340 = distinct !DISubprogram(name: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE", linkageName: "_ZNSt6chrono20__duration_cast_implINS_8durationIlSt5ratioILl1ELl1000000EEEES2_ILl1ELl1000EElLb1ELb0EE6__castIlS2_ILl1ELl1000000000EEEES4_RKNS1_IT_T0_EE", scope: null, file: !4, line: 430, type: !5, scopeLine: 430, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!341 = !DILocation(line: 433, column: 10, scope: !342)
!342 = !DILexicalBlockFile(scope: !340, file: !4, discriminator: 0)
!343 = !DILocation(line: 434, column: 10, scope: !342)
!344 = !DILocation(line: 436, column: 5, scope: !342)
!345 = !DILocation(line: 437, column: 10, scope: !342)
!346 = !DILocation(line: 438, column: 10, scope: !342)
!347 = !DILocation(line: 439, column: 10, scope: !342)
!348 = !DILocation(line: 440, column: 10, scope: !342)
!349 = !DILocation(line: 441, column: 5, scope: !342)
!350 = !DILocation(line: 442, column: 5, scope: !342)
!351 = !DILocation(line: 443, column: 10, scope: !342)
!352 = !DILocation(line: 444, column: 5, scope: !342)
!353 = !DILocation(line: 445, column: 5, scope: !342)
!354 = !DILocation(line: 446, column: 11, scope: !342)
!355 = !DILocation(line: 447, column: 5, scope: !342)
!356 = distinct !DISubprogram(name: "_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_", linkageName: "_ZNSt6chronomiIlSt5ratioILl1ELl1000000000EElS2_EENSt11common_typeIJNS_8durationIT_T0_EENS4_IT1_T2_EEEE4typeERKS7_RKSA_", scope: null, file: !4, line: 449, type: !5, scopeLine: 449, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!357 = !DILocation(line: 451, column: 10, scope: !358)
!358 = !DILexicalBlockFile(scope: !356, file: !4, discriminator: 0)
!359 = !DILocation(line: 452, column: 10, scope: !358)
!360 = !DILocation(line: 454, column: 5, scope: !358)
!361 = !DILocation(line: 455, column: 10, scope: !358)
!362 = !DILocation(line: 456, column: 10, scope: !358)
!363 = !DILocation(line: 457, column: 10, scope: !358)
!364 = !DILocation(line: 458, column: 10, scope: !358)
!365 = !DILocation(line: 459, column: 10, scope: !358)
!366 = !DILocation(line: 460, column: 10, scope: !358)
!367 = !DILocation(line: 461, column: 5, scope: !358)
!368 = !DILocation(line: 462, column: 11, scope: !358)
!369 = !DILocation(line: 463, column: 5, scope: !358)
!370 = !DILocation(line: 464, column: 11, scope: !358)
!371 = !DILocation(line: 465, column: 5, scope: !358)
!372 = !DILocation(line: 466, column: 11, scope: !358)
!373 = !DILocation(line: 467, column: 5, scope: !358)
!374 = !DILocation(line: 468, column: 11, scope: !358)
!375 = !DILocation(line: 469, column: 11, scope: !358)
!376 = !DILocation(line: 470, column: 5, scope: !358)
!377 = !DILocation(line: 471, column: 5, scope: !358)
!378 = !DILocation(line: 472, column: 11, scope: !358)
!379 = !DILocation(line: 473, column: 5, scope: !358)
!380 = !DILocation(line: 474, column: 5, scope: !358)
!381 = !DILocation(line: 475, column: 11, scope: !358)
!382 = !DILocation(line: 476, column: 5, scope: !358)
!383 = distinct !DISubprogram(name: "_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv", linkageName: "_ZNKSt6chrono10time_pointINS_3_V212steady_clockENS_8durationIlSt5ratioILl1ELl1000000000EEEEE16time_since_epochEv", scope: null, file: !4, line: 478, type: !5, scopeLine: 478, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!384 = !DILocation(line: 480, column: 10, scope: !385)
!385 = !DILexicalBlockFile(scope: !383, file: !4, discriminator: 0)
!386 = !DILocation(line: 481, column: 10, scope: !385)
!387 = !DILocation(line: 482, column: 5, scope: !385)
!388 = !DILocation(line: 483, column: 10, scope: !385)
!389 = !DILocation(line: 484, column: 5, scope: !385)
!390 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000000EEEC1IlvEERKT_", scope: null, file: !4, line: 486, type: !5, scopeLine: 486, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!391 = !DILocation(line: 487, column: 10, scope: !392)
!392 = !DILexicalBlockFile(scope: !390, file: !4, discriminator: 0)
!393 = !DILocation(line: 488, column: 10, scope: !392)
!394 = !DILocation(line: 489, column: 5, scope: !392)
!395 = !DILocation(line: 490, column: 5, scope: !392)
!396 = distinct !DISubprogram(name: "_ZNSt6chrono15duration_valuesIlE4zeroEv", linkageName: "_ZNSt6chrono15duration_valuesIlE4zeroEv", scope: null, file: !4, line: 492, type: !5, scopeLine: 492, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!397 = !DILocation(line: 494, column: 5, scope: !398)
!398 = !DILexicalBlockFile(scope: !396, file: !4, discriminator: 0)
!399 = distinct !DISubprogram(name: "_ZNKSt6vectorImSaImEE4sizeEv", linkageName: "_ZNKSt6vectorImSaImEE4sizeEv", scope: null, file: !4, line: 496, type: !5, scopeLine: 496, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!400 = !DILocation(line: 498, column: 10, scope: !401)
!401 = !DILexicalBlockFile(scope: !399, file: !4, discriminator: 0)
!402 = !DILocation(line: 499, column: 10, scope: !401)
!403 = !DILocation(line: 500, column: 10, scope: !401)
!404 = !DILocation(line: 501, column: 10, scope: !401)
!405 = !DILocation(line: 502, column: 10, scope: !401)
!406 = !DILocation(line: 503, column: 10, scope: !401)
!407 = !DILocation(line: 504, column: 10, scope: !401)
!408 = !DILocation(line: 505, column: 10, scope: !401)
!409 = !DILocation(line: 506, column: 10, scope: !401)
!410 = !DILocation(line: 507, column: 11, scope: !401)
!411 = !DILocation(line: 508, column: 11, scope: !401)
!412 = !DILocation(line: 509, column: 5, scope: !401)
!413 = distinct !DISubprogram(name: "idx_size_i64", linkageName: "idx_size_i64", scope: null, file: !4, line: 511, type: !5, scopeLine: 511, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!414 = !DILocation(line: 513, column: 10, scope: !415)
!415 = !DILexicalBlockFile(scope: !413, file: !4, discriminator: 0)
!416 = !DILocation(line: 514, column: 10, scope: !415)
!417 = !DILocation(line: 515, column: 10, scope: !415)
!418 = !DILocation(line: 516, column: 10, scope: !415)
!419 = !DILocation(line: 517, column: 10, scope: !415)
!420 = !DILocation(line: 518, column: 10, scope: !415)
!421 = !DILocation(line: 519, column: 10, scope: !415)
!422 = !DILocation(line: 520, column: 10, scope: !415)
!423 = !DILocation(line: 521, column: 10, scope: !415)
!424 = !DILocation(line: 522, column: 11, scope: !415)
!425 = !DILocation(line: 523, column: 11, scope: !415)
!426 = !DILocation(line: 524, column: 5, scope: !415)
!427 = distinct !DISubprogram(name: "dur_size_i64", linkageName: "dur_size_i64", scope: null, file: !4, line: 526, type: !5, scopeLine: 526, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!428 = !DILocation(line: 528, column: 10, scope: !429)
!429 = !DILexicalBlockFile(scope: !427, file: !4, discriminator: 0)
!430 = !DILocation(line: 529, column: 10, scope: !429)
!431 = !DILocation(line: 530, column: 10, scope: !429)
!432 = !DILocation(line: 531, column: 10, scope: !429)
!433 = !DILocation(line: 532, column: 10, scope: !429)
!434 = !DILocation(line: 533, column: 10, scope: !429)
!435 = !DILocation(line: 534, column: 10, scope: !429)
!436 = !DILocation(line: 535, column: 10, scope: !429)
!437 = !DILocation(line: 536, column: 10, scope: !429)
!438 = !DILocation(line: 537, column: 11, scope: !429)
!439 = !DILocation(line: 538, column: 11, scope: !429)
!440 = !DILocation(line: 539, column: 5, scope: !429)
!441 = distinct !DISubprogram(name: "_ZSt3minImERKT_S2_S2_", linkageName: "_ZSt3minImERKT_S2_S2_", scope: null, file: !4, line: 541, type: !5, scopeLine: 541, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!442 = !DILocation(line: 542, column: 10, scope: !443)
!443 = !DILexicalBlockFile(scope: !441, file: !4, discriminator: 0)
!444 = !DILocation(line: 543, column: 10, scope: !443)
!445 = !DILocation(line: 544, column: 10, scope: !443)
!446 = !DILocation(line: 545, column: 10, scope: !443)
!447 = !DILocation(line: 546, column: 5, scope: !443)
!448 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmE3preEv", linkageName: "_ZN10MaxVisitorImmE3preEv", scope: null, file: !4, line: 548, type: !5, scopeLine: 548, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!449 = !DILocation(line: 549, column: 5, scope: !450)
!450 = !DILexicalBlockFile(scope: !448, file: !4, discriminator: 0)
!451 = distinct !DISubprogram(name: "_ZN10MinVisitorImmE3preEv", linkageName: "_ZN10MinVisitorImmE3preEv", scope: null, file: !4, line: 551, type: !5, scopeLine: 551, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!452 = !DILocation(line: 552, column: 5, scope: !453)
!453 = !DILexicalBlockFile(scope: !451, file: !4, discriminator: 0)
!454 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmE3preEv", linkageName: "_ZN11MeanVisitorImmE3preEv", scope: null, file: !4, line: 554, type: !5, scopeLine: 554, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!455 = !DILocation(line: 556, column: 10, scope: !456)
!456 = !DILexicalBlockFile(scope: !454, file: !4, discriminator: 0)
!457 = !DILocation(line: 557, column: 5, scope: !456)
!458 = !DILocation(line: 558, column: 10, scope: !456)
!459 = !DILocation(line: 559, column: 5, scope: !456)
!460 = !DILocation(line: 560, column: 5, scope: !456)
!461 = distinct !DISubprogram(name: "_ZNSt6vectorImSaImEEixEm", linkageName: "_ZNSt6vectorImSaImEEixEm", scope: null, file: !4, line: 562, type: !5, scopeLine: 562, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!462 = !DILocation(line: 563, column: 10, scope: !463)
!463 = !DILexicalBlockFile(scope: !461, file: !4, discriminator: 0)
!464 = !DILocation(line: 564, column: 10, scope: !463)
!465 = !DILocation(line: 565, column: 10, scope: !463)
!466 = !DILocation(line: 566, column: 10, scope: !463)
!467 = !DILocation(line: 567, column: 10, scope: !463)
!468 = !DILocation(line: 568, column: 10, scope: !463)
!469 = !DILocation(line: 569, column: 5, scope: !463)
!470 = distinct !DISubprogram(name: "idx_index_i64", linkageName: "idx_index_i64", scope: null, file: !4, line: 571, type: !5, scopeLine: 571, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!471 = !DILocation(line: 572, column: 10, scope: !472)
!472 = !DILexicalBlockFile(scope: !470, file: !4, discriminator: 0)
!473 = !DILocation(line: 573, column: 10, scope: !472)
!474 = !DILocation(line: 574, column: 10, scope: !472)
!475 = !DILocation(line: 575, column: 10, scope: !472)
!476 = !DILocation(line: 576, column: 10, scope: !472)
!477 = !DILocation(line: 577, column: 10, scope: !472)
!478 = !DILocation(line: 578, column: 5, scope: !472)
!479 = distinct !DISubprogram(name: "dur_index_i64", linkageName: "dur_index_i64", scope: null, file: !4, line: 580, type: !5, scopeLine: 580, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!480 = !DILocation(line: 581, column: 10, scope: !481)
!481 = !DILexicalBlockFile(scope: !479, file: !4, discriminator: 0)
!482 = !DILocation(line: 582, column: 10, scope: !481)
!483 = !DILocation(line: 583, column: 10, scope: !481)
!484 = !DILocation(line: 584, column: 10, scope: !481)
!485 = !DILocation(line: 585, column: 10, scope: !481)
!486 = !DILocation(line: 586, column: 10, scope: !481)
!487 = !DILocation(line: 587, column: 5, scope: !481)
!488 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmEclEmm", linkageName: "_ZN10MaxVisitorImmEclEmm", scope: null, file: !4, line: 589, type: !5, scopeLine: 589, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!489 = !DILocation(line: 592, column: 10, scope: !490)
!490 = !DILexicalBlockFile(scope: !488, file: !4, discriminator: 0)
!491 = !DILocation(line: 593, column: 10, scope: !490)
!492 = !DILocation(line: 594, column: 10, scope: !490)
!493 = !DILocation(line: 595, column: 5, scope: !490)
!494 = !DILocation(line: 597, column: 5, scope: !490)
!495 = !DILocation(line: 599, column: 10, scope: !490)
!496 = !DILocation(line: 600, column: 10, scope: !490)
!497 = !DILocation(line: 601, column: 10, scope: !490)
!498 = !DILocation(line: 602, column: 5, scope: !490)
!499 = !DILocation(line: 604, column: 5, scope: !490)
!500 = !DILocation(line: 606, column: 5, scope: !490)
!501 = !DILocation(line: 608, column: 10, scope: !490)
!502 = !DILocation(line: 609, column: 5, scope: !490)
!503 = !DILocation(line: 610, column: 11, scope: !490)
!504 = !DILocation(line: 611, column: 5, scope: !490)
!505 = !DILocation(line: 612, column: 5, scope: !490)
!506 = !DILocation(line: 613, column: 5, scope: !490)
!507 = !DILocation(line: 615, column: 5, scope: !490)
!508 = distinct !DISubprogram(name: "_ZN10MinVisitorImmEclEmm", linkageName: "_ZN10MinVisitorImmEclEmm", scope: null, file: !4, line: 617, type: !5, scopeLine: 617, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!509 = !DILocation(line: 620, column: 10, scope: !510)
!510 = !DILexicalBlockFile(scope: !508, file: !4, discriminator: 0)
!511 = !DILocation(line: 621, column: 10, scope: !510)
!512 = !DILocation(line: 622, column: 10, scope: !510)
!513 = !DILocation(line: 623, column: 5, scope: !510)
!514 = !DILocation(line: 625, column: 5, scope: !510)
!515 = !DILocation(line: 627, column: 10, scope: !510)
!516 = !DILocation(line: 628, column: 10, scope: !510)
!517 = !DILocation(line: 629, column: 10, scope: !510)
!518 = !DILocation(line: 630, column: 5, scope: !510)
!519 = !DILocation(line: 632, column: 5, scope: !510)
!520 = !DILocation(line: 634, column: 5, scope: !510)
!521 = !DILocation(line: 636, column: 10, scope: !510)
!522 = !DILocation(line: 637, column: 5, scope: !510)
!523 = !DILocation(line: 638, column: 11, scope: !510)
!524 = !DILocation(line: 639, column: 5, scope: !510)
!525 = !DILocation(line: 640, column: 5, scope: !510)
!526 = !DILocation(line: 641, column: 5, scope: !510)
!527 = !DILocation(line: 643, column: 5, scope: !510)
!528 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmEclEmm", linkageName: "_ZN11MeanVisitorImmEclEmm", scope: null, file: !4, line: 645, type: !5, scopeLine: 645, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!529 = !DILocation(line: 647, column: 10, scope: !530)
!530 = !DILexicalBlockFile(scope: !528, file: !4, discriminator: 0)
!531 = !DILocation(line: 648, column: 10, scope: !530)
!532 = !DILocation(line: 649, column: 10, scope: !530)
!533 = !DILocation(line: 650, column: 5, scope: !530)
!534 = !DILocation(line: 651, column: 10, scope: !530)
!535 = !DILocation(line: 652, column: 10, scope: !530)
!536 = !DILocation(line: 653, column: 10, scope: !530)
!537 = !DILocation(line: 654, column: 5, scope: !530)
!538 = !DILocation(line: 655, column: 5, scope: !530)
!539 = distinct !DISubprogram(name: "_ZN10MaxVisitorImmE4postEv", linkageName: "_ZN10MaxVisitorImmE4postEv", scope: null, file: !4, line: 657, type: !5, scopeLine: 657, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!540 = !DILocation(line: 658, column: 5, scope: !541)
!541 = !DILexicalBlockFile(scope: !539, file: !4, discriminator: 0)
!542 = distinct !DISubprogram(name: "_ZN10MinVisitorImmE4postEv", linkageName: "_ZN10MinVisitorImmE4postEv", scope: null, file: !4, line: 660, type: !5, scopeLine: 660, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!543 = !DILocation(line: 661, column: 5, scope: !544)
!544 = !DILexicalBlockFile(scope: !542, file: !4, discriminator: 0)
!545 = distinct !DISubprogram(name: "_ZN11MeanVisitorImmE4postEv", linkageName: "_ZN11MeanVisitorImmE4postEv", scope: null, file: !4, line: 663, type: !5, scopeLine: 663, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!546 = !DILocation(line: 664, column: 5, scope: !547)
!547 = !DILexicalBlockFile(scope: !545, file: !4, discriminator: 0)
!548 = distinct !DISubprogram(name: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_", linkageName: "_ZNSt6chrono8durationIlSt5ratioILl1ELl1000000EEEC1IlvEERKT_", scope: null, file: !4, line: 666, type: !5, scopeLine: 666, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!549 = !DILocation(line: 667, column: 10, scope: !550)
!550 = !DILexicalBlockFile(scope: !548, file: !4, discriminator: 0)
!551 = !DILocation(line: 668, column: 10, scope: !550)
!552 = !DILocation(line: 669, column: 5, scope: !550)
!553 = !DILocation(line: 670, column: 5, scope: !550)
!554 = distinct !DISubprogram(name: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", linkageName: "_ZNKSt6chrono8durationIlSt5ratioILl1ELl1000000000EEE5countEv", scope: null, file: !4, line: 672, type: !5, scopeLine: 672, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!555 = !DILocation(line: 673, column: 10, scope: !556)
!556 = !DILexicalBlockFile(scope: !554, file: !4, discriminator: 0)
!557 = !DILocation(line: 674, column: 10, scope: !556)
!558 = !DILocation(line: 675, column: 5, scope: !556)
