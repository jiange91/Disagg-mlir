; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%"_Lowered_disagg@struct.node" = type { ptr, ptr, ptr, ptr, i32, [23 x i32] }
%"_Lowered_disagg@struct.arc" = type { ptr, ptr, ptr, ptr, [8 x i32] }

@_rbuf = external global ptr
@tokens = external global [33554432 x { i64, i8, i8, i16, i32 }]
@g_payload = external global [23 x i32]
@str2 = internal constant [18 x i8] c"Dont opt this %d\0A\00"
@str1 = internal constant [18 x i8] c"Exec time %.5f s\0A\00"
@arc = external global ptr
@str0 = internal constant [13 x i8] c"after setup\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

declare void @poll_qid1(i32, i16)

declare i32 @cache_request_impl_1(i32, i64, i32, i8)

declare void @poll_qid2(i32, i16)

declare i32 @cache_request_impl_2(i32, i64, i32, i8)

declare i32 @clock_gettime(i32, ptr)

declare i32 @printf(ptr, ...)

define i32 @main() !dbg !3 {
  call void @setup(), !dbg !7
  %1 = call i32 (ptr, ...) @printf(ptr @str0), !dbg !9
  %2 = call i64 @microtime(), !dbg !10
  %3 = load ptr, ptr @arc, align 8, !dbg !11
  call void @visit(ptr %3), !dbg !12
  %4 = call i64 @microtime(), !dbg !13
  %5 = sub i64 %4, %2, !dbg !14
  %6 = sitofp i64 %5 to double, !dbg !15
  %7 = fdiv double %6, 1.000000e+06, !dbg !16
  %8 = call i32 (ptr, ...) @printf(ptr @str1, double %7), !dbg !17
  %9 = load i32, ptr getelementptr (i32, ptr @g_payload, i32 5), align 4, !dbg !18
  %10 = call i32 (ptr, ...) @printf(ptr @str2, i32 %9), !dbg !19
  ret i32 0, !dbg !20
}

declare void @setup()

define internal i64 @microtime() !dbg !21 {
  %1 = alloca %struct.timespec, i64 1, align 8, !dbg !22
  %2 = call i32 @clock_gettime(i32 0, ptr %1), !dbg !24
  %3 = getelementptr %struct.timespec, ptr %1, i32 0, i32 0, !dbg !25
  %4 = load i64, ptr %3, align 8, !dbg !26
  %5 = mul i64 %4, 1000, !dbg !27
  %6 = mul i64 %5, 1000, !dbg !28
  %7 = getelementptr %struct.timespec, ptr %1, i32 0, i32 1, !dbg !29
  %8 = load i64, ptr %7, align 8, !dbg !30
  %9 = sdiv i64 %8, 1000, !dbg !31
  %10 = add i64 %6, %9, !dbg !32
  ret i64 %10, !dbg !33
}

define void @visit(ptr %0) !dbg !34 {
  %2 = alloca %"_Lowered_disagg@struct.node", i64 1, align 8, !dbg !35
  %3 = alloca %"_Lowered_disagg@struct.arc", i64 1, align 8, !dbg !37
  %4 = getelementptr %"_Lowered_disagg@struct.arc", ptr %3, i32 0, i32 1, !dbg !38
  %5 = alloca i32, i32 12, align 4, !dbg !39
  br label %6, !dbg !40

6:                                                ; preds = %9, %1
  %7 = phi i64 [ %21, %9 ], [ 0, %1 ]
  %8 = icmp slt i64 %7, 11, !dbg !41
  br i1 %8, label %9, label %22, !dbg !42

9:                                                ; preds = %6
  %10 = mul i64 %7, 32768, !dbg !43
  %11 = trunc i64 %7 to i32, !dbg !44
  %12 = getelementptr %"_Lowered_disagg@struct.arc", ptr %0, i64 %10, !dbg !45
  %13 = ptrtoint ptr %12 to i64, !dbg !46
  %14 = and i64 %13, -2097152, !dbg !47
  %15 = udiv i64 %14, 2097152, !dbg !48
  %16 = srem i64 %15, 12, !dbg !49
  %17 = trunc i64 %16 to i32, !dbg !50
  %18 = call i32 @cache_request_impl_2(i32 0, i64 %14, i32 %17, i8 1), !dbg !51
  %19 = sext i32 %11 to i64, !dbg !52
  %20 = getelementptr i32, ptr %5, i64 %19, !dbg !53
  store i32 %17, ptr %20, align 4, !dbg !54
  %21 = add i64 %7, 1, !dbg !55
  br label %6, !dbg !56

22:                                               ; preds = %6
  br label %23, !dbg !57

23:                                               ; preds = %124, %22
  %24 = phi i64 [ %125, %124 ], [ 0, %22 ]
  %25 = icmp slt i64 %24, 2048, !dbg !58
  br i1 %25, label %26, label %126, !dbg !59

26:                                               ; preds = %23
  %27 = add i64 %24, 11, !dbg !60
  %28 = icmp slt i64 %27, 2048, !dbg !61
  br i1 %28, label %29, label %42, !dbg !62

29:                                               ; preds = %26
  %30 = srem i64 %27, 12, !dbg !63
  %31 = trunc i64 %30 to i32, !dbg !64
  %32 = mul i64 %27, 32768, !dbg !65
  %33 = getelementptr %"_Lowered_disagg@struct.arc", ptr %0, i64 %32, !dbg !66
  %34 = ptrtoint ptr %33 to i64, !dbg !67
  %35 = and i64 %34, -2097152, !dbg !68
  %36 = udiv i64 %35, 2097152, !dbg !69
  %37 = srem i64 %36, 12, !dbg !70
  %38 = trunc i64 %37 to i32, !dbg !71
  %39 = call i32 @cache_request_impl_2(i32 0, i64 %35, i32 %38, i8 1), !dbg !72
  %40 = sext i32 %31 to i64, !dbg !73
  %41 = getelementptr i32, ptr %5, i64 %40, !dbg !74
  store i32 %38, ptr %41, align 4, !dbg !75
  br label %42, !dbg !76

42:                                               ; preds = %29, %26
  %43 = mul i64 %24, 32768, !dbg !77
  %44 = getelementptr %"_Lowered_disagg@struct.arc", ptr %0, i64 %43, !dbg !78
  %45 = srem i64 %24, 12, !dbg !79
  %46 = getelementptr i32, ptr %5, i64 %45, !dbg !80
  %47 = load i32, ptr %46, align 4, !dbg !81
  %48 = add i32 %47, 64000, !dbg !82
  %49 = sext i32 %48 to i64, !dbg !83
  %50 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %49, !dbg !84
  %51 = getelementptr { i64, i8, i8, i16, i32 }, ptr %50, i32 0, i32 3, !dbg !85
  %52 = load i16, ptr %51, align 2, !dbg !86
  call void @poll_qid2(i32 1, i16 %52), !dbg !87
  %53 = getelementptr { i64, i8, i8, i16, i32 }, ptr %50, i32 0, i32 1, !dbg !88
  %54 = load i8, ptr %53, align 1, !dbg !89
  %55 = or i8 %54, 2, !dbg !90
  store i8 %55, ptr %53, align 1, !dbg !91
  %56 = ptrtoint ptr %44 to i64, !dbg !92
  %57 = sext i32 %47 to i64, !dbg !93
  %58 = mul i64 %57, 2097152, !dbg !94
  %59 = srem i64 %56, 2097152, !dbg !95
  %60 = add i64 %58, %59, !dbg !96
  %61 = add i64 %60, 1073741824, !dbg !97
  %62 = load ptr, ptr @_rbuf, align 8, !dbg !98
  %63 = getelementptr i8, ptr %62, i64 %61, !dbg !99
  %64 = add i64 %24, 1, !dbg !100
  %65 = mul i64 %64, 32768, !dbg !101
  %66 = icmp slt i64 %65, 67108864, !dbg !102
  br i1 %66, label %67, label %68, !dbg !103

67:                                               ; preds = %42
  br label %71, !dbg !104

68:                                               ; preds = %42
  %69 = mul i64 %24, 32768, !dbg !105
  %70 = sub i64 67108864, %69, !dbg !106
  br label %71, !dbg !107

71:                                               ; preds = %67, %68
  %72 = phi i64 [ %70, %68 ], [ 32768, %67 ]
  br label %73, !dbg !108

73:                                               ; preds = %71
  %74 = mul i64 %24, 32768, !dbg !109
  br label %75, !dbg !110

75:                                               ; preds = %119, %73
  %76 = phi i64 [ %123, %119 ], [ 0, %73 ]
  %77 = icmp slt i64 %76, %72, !dbg !111
  br i1 %77, label %78, label %124, !dbg !112

78:                                               ; preds = %75
  %79 = add i64 %76, %74, !dbg !113
  %80 = getelementptr %"_Lowered_disagg@struct.arc", ptr %63, i64 %76, !dbg !114
  %81 = trunc i64 %79 to i32, !dbg !115
  %82 = load %"_Lowered_disagg@struct.arc", ptr %80, align 8, !dbg !116
  store %"_Lowered_disagg@struct.arc" %82, ptr %3, align 8, !dbg !117
  %83 = load ptr, ptr %4, align 8, !dbg !118
  %84 = ptrtoint ptr %83 to i64, !dbg !119
  %85 = and i64 %84, -16384, !dbg !120
  %86 = udiv i64 %85, 16384, !dbg !121
  %87 = srem i64 %86, 64000, !dbg !122
  %88 = trunc i64 %87 to i32, !dbg !123
  %89 = sext i32 %88 to i64, !dbg !124
  %90 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %89, !dbg !125
  %91 = mul i64 %89, 16384, !dbg !126
  %92 = srem i64 %84, 16384, !dbg !127
  %93 = add i64 %91, %92, !dbg !128
  %94 = add i64 %93, 0, !dbg !129
  %95 = load ptr, ptr @_rbuf, align 8, !dbg !130
  %96 = getelementptr i8, ptr %95, i64 %94, !dbg !131
  %97 = getelementptr { i64, i8, i8, i16, i32 }, ptr %90, i32 0, i32 1, !dbg !132
  %98 = load i8, ptr %97, align 1, !dbg !133
  %99 = sext i8 %98 to i32, !dbg !134
  %100 = and i32 %99, 1, !dbg !135
  %101 = trunc i32 %100 to i8, !dbg !136
  %102 = sext i8 %101 to i32, !dbg !137
  %103 = icmp ne i32 %102, 0, !dbg !138
  br i1 %103, label %104, label %108, !dbg !139

104:                                              ; preds = %78
  %105 = getelementptr { i64, i8, i8, i16, i32 }, ptr %90, i32 0, i32 0, !dbg !140
  %106 = load i64, ptr %105, align 8, !dbg !141
  %107 = icmp ne i64 %106, %85, !dbg !142
  br label %109, !dbg !143

108:                                              ; preds = %78
  br label %109, !dbg !144

109:                                              ; preds = %104, %108
  %110 = phi i1 [ true, %108 ], [ %107, %104 ]
  br label %111, !dbg !145

111:                                              ; preds = %109
  br i1 %110, label %112, label %116, !dbg !146

112:                                              ; preds = %111
  %113 = call i32 @cache_request_impl_1(i32 0, i64 %85, i32 %88, i8 1), !dbg !147
  %114 = getelementptr { i64, i8, i8, i16, i32 }, ptr %90, i32 0, i32 3, !dbg !148
  %115 = load i16, ptr %114, align 2, !dbg !149
  call void @poll_qid1(i32 0, i16 %115), !dbg !150
  br label %117, !dbg !151

116:                                              ; preds = %111
  br label %117, !dbg !152

117:                                              ; preds = %112, %116
  %118 = phi ptr [ %96, %116 ], [ %96, %112 ]
  br label %119, !dbg !153

119:                                              ; preds = %117
  %120 = load i8, ptr %97, align 1, !dbg !154
  %121 = or i8 %120, 2, !dbg !155
  store i8 %121, ptr %97, align 1, !dbg !156
  %122 = load %"_Lowered_disagg@struct.node", ptr %118, align 8, !dbg !157
  store %"_Lowered_disagg@struct.node" %122, ptr %2, align 8, !dbg !158
  call void @computation(ptr %3, ptr %2, i32 %81), !dbg !159
  %123 = add i64 %76, 1, !dbg !160
  br label %75, !dbg !161

124:                                              ; preds = %75
  %125 = add i64 %24, 1, !dbg !162
  br label %23, !dbg !163

126:                                              ; preds = %23
  ret void, !dbg !164
}

declare void @computation(ptr, ptr, i32)

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 15, type: !5, scopeLine: 15, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "mlir/lower_remote.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/example/interleave")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 18, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 21, column: 10, scope: !8)
!10 = !DILocation(line: 22, column: 10, scope: !8)
!11 = !DILocation(line: 24, column: 10, scope: !8)
!12 = !DILocation(line: 25, column: 5, scope: !8)
!13 = !DILocation(line: 26, column: 10, scope: !8)
!14 = !DILocation(line: 29, column: 11, scope: !8)
!15 = !DILocation(line: 30, column: 11, scope: !8)
!16 = !DILocation(line: 31, column: 11, scope: !8)
!17 = !DILocation(line: 32, column: 11, scope: !8)
!18 = !DILocation(line: 38, column: 11, scope: !8)
!19 = !DILocation(line: 39, column: 11, scope: !8)
!20 = !DILocation(line: 40, column: 5, scope: !8)
!21 = distinct !DISubprogram(name: "microtime", linkageName: "microtime", scope: null, file: !4, line: 43, type: !5, scopeLine: 43, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!22 = !DILocation(line: 47, column: 10, scope: !23)
!23 = !DILexicalBlockFile(scope: !21, file: !4, discriminator: 0)
!24 = !DILocation(line: 48, column: 10, scope: !23)
!25 = !DILocation(line: 49, column: 10, scope: !23)
!26 = !DILocation(line: 50, column: 10, scope: !23)
!27 = !DILocation(line: 51, column: 10, scope: !23)
!28 = !DILocation(line: 52, column: 10, scope: !23)
!29 = !DILocation(line: 53, column: 10, scope: !23)
!30 = !DILocation(line: 54, column: 11, scope: !23)
!31 = !DILocation(line: 55, column: 11, scope: !23)
!32 = !DILocation(line: 56, column: 11, scope: !23)
!33 = !DILocation(line: 57, column: 5, scope: !23)
!34 = distinct !DISubprogram(name: "visit", linkageName: "visit", scope: null, file: !4, line: 59, type: !5, scopeLine: 59, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!35 = !DILocation(line: 85, column: 11, scope: !36)
!36 = !DILexicalBlockFile(scope: !34, file: !4, discriminator: 0)
!37 = !DILocation(line: 86, column: 11, scope: !36)
!38 = !DILocation(line: 87, column: 11, scope: !36)
!39 = !DILocation(line: 88, column: 11, scope: !36)
!40 = !DILocation(line: 89, column: 5, scope: !36)
!41 = !DILocation(line: 91, column: 11, scope: !36)
!42 = !DILocation(line: 92, column: 5, scope: !36)
!43 = !DILocation(line: 94, column: 11, scope: !36)
!44 = !DILocation(line: 95, column: 11, scope: !36)
!45 = !DILocation(line: 96, column: 11, scope: !36)
!46 = !DILocation(line: 97, column: 11, scope: !36)
!47 = !DILocation(line: 98, column: 11, scope: !36)
!48 = !DILocation(line: 99, column: 11, scope: !36)
!49 = !DILocation(line: 100, column: 11, scope: !36)
!50 = !DILocation(line: 101, column: 11, scope: !36)
!51 = !DILocation(line: 102, column: 11, scope: !36)
!52 = !DILocation(line: 103, column: 11, scope: !36)
!53 = !DILocation(line: 104, column: 11, scope: !36)
!54 = !DILocation(line: 105, column: 5, scope: !36)
!55 = !DILocation(line: 106, column: 11, scope: !36)
!56 = !DILocation(line: 107, column: 5, scope: !36)
!57 = !DILocation(line: 109, column: 5, scope: !36)
!58 = !DILocation(line: 111, column: 11, scope: !36)
!59 = !DILocation(line: 112, column: 5, scope: !36)
!60 = !DILocation(line: 114, column: 11, scope: !36)
!61 = !DILocation(line: 115, column: 11, scope: !36)
!62 = !DILocation(line: 116, column: 5, scope: !36)
!63 = !DILocation(line: 118, column: 11, scope: !36)
!64 = !DILocation(line: 119, column: 11, scope: !36)
!65 = !DILocation(line: 120, column: 11, scope: !36)
!66 = !DILocation(line: 121, column: 11, scope: !36)
!67 = !DILocation(line: 122, column: 11, scope: !36)
!68 = !DILocation(line: 123, column: 11, scope: !36)
!69 = !DILocation(line: 124, column: 11, scope: !36)
!70 = !DILocation(line: 125, column: 11, scope: !36)
!71 = !DILocation(line: 126, column: 11, scope: !36)
!72 = !DILocation(line: 127, column: 11, scope: !36)
!73 = !DILocation(line: 128, column: 11, scope: !36)
!74 = !DILocation(line: 129, column: 11, scope: !36)
!75 = !DILocation(line: 130, column: 5, scope: !36)
!76 = !DILocation(line: 131, column: 5, scope: !36)
!77 = !DILocation(line: 133, column: 11, scope: !36)
!78 = !DILocation(line: 134, column: 11, scope: !36)
!79 = !DILocation(line: 135, column: 11, scope: !36)
!80 = !DILocation(line: 136, column: 11, scope: !36)
!81 = !DILocation(line: 137, column: 11, scope: !36)
!82 = !DILocation(line: 138, column: 11, scope: !36)
!83 = !DILocation(line: 139, column: 11, scope: !36)
!84 = !DILocation(line: 142, column: 11, scope: !36)
!85 = !DILocation(line: 143, column: 11, scope: !36)
!86 = !DILocation(line: 144, column: 11, scope: !36)
!87 = !DILocation(line: 145, column: 5, scope: !36)
!88 = !DILocation(line: 146, column: 11, scope: !36)
!89 = !DILocation(line: 147, column: 11, scope: !36)
!90 = !DILocation(line: 148, column: 11, scope: !36)
!91 = !DILocation(line: 149, column: 5, scope: !36)
!92 = !DILocation(line: 150, column: 11, scope: !36)
!93 = !DILocation(line: 151, column: 11, scope: !36)
!94 = !DILocation(line: 152, column: 11, scope: !36)
!95 = !DILocation(line: 153, column: 11, scope: !36)
!96 = !DILocation(line: 154, column: 11, scope: !36)
!97 = !DILocation(line: 155, column: 11, scope: !36)
!98 = !DILocation(line: 157, column: 11, scope: !36)
!99 = !DILocation(line: 158, column: 11, scope: !36)
!100 = !DILocation(line: 160, column: 11, scope: !36)
!101 = !DILocation(line: 161, column: 11, scope: !36)
!102 = !DILocation(line: 162, column: 11, scope: !36)
!103 = !DILocation(line: 163, column: 5, scope: !36)
!104 = !DILocation(line: 165, column: 5, scope: !36)
!105 = !DILocation(line: 167, column: 11, scope: !36)
!106 = !DILocation(line: 168, column: 11, scope: !36)
!107 = !DILocation(line: 169, column: 5, scope: !36)
!108 = !DILocation(line: 171, column: 5, scope: !36)
!109 = !DILocation(line: 173, column: 11, scope: !36)
!110 = !DILocation(line: 174, column: 5, scope: !36)
!111 = !DILocation(line: 176, column: 11, scope: !36)
!112 = !DILocation(line: 177, column: 5, scope: !36)
!113 = !DILocation(line: 179, column: 11, scope: !36)
!114 = !DILocation(line: 180, column: 11, scope: !36)
!115 = !DILocation(line: 181, column: 11, scope: !36)
!116 = !DILocation(line: 182, column: 11, scope: !36)
!117 = !DILocation(line: 183, column: 5, scope: !36)
!118 = !DILocation(line: 184, column: 11, scope: !36)
!119 = !DILocation(line: 185, column: 11, scope: !36)
!120 = !DILocation(line: 186, column: 11, scope: !36)
!121 = !DILocation(line: 187, column: 12, scope: !36)
!122 = !DILocation(line: 188, column: 12, scope: !36)
!123 = !DILocation(line: 189, column: 12, scope: !36)
!124 = !DILocation(line: 190, column: 12, scope: !36)
!125 = !DILocation(line: 191, column: 12, scope: !36)
!126 = !DILocation(line: 192, column: 12, scope: !36)
!127 = !DILocation(line: 193, column: 12, scope: !36)
!128 = !DILocation(line: 194, column: 12, scope: !36)
!129 = !DILocation(line: 195, column: 12, scope: !36)
!130 = !DILocation(line: 196, column: 12, scope: !36)
!131 = !DILocation(line: 197, column: 12, scope: !36)
!132 = !DILocation(line: 199, column: 12, scope: !36)
!133 = !DILocation(line: 200, column: 12, scope: !36)
!134 = !DILocation(line: 201, column: 12, scope: !36)
!135 = !DILocation(line: 202, column: 12, scope: !36)
!136 = !DILocation(line: 203, column: 12, scope: !36)
!137 = !DILocation(line: 204, column: 12, scope: !36)
!138 = !DILocation(line: 205, column: 12, scope: !36)
!139 = !DILocation(line: 206, column: 5, scope: !36)
!140 = !DILocation(line: 208, column: 12, scope: !36)
!141 = !DILocation(line: 209, column: 12, scope: !36)
!142 = !DILocation(line: 210, column: 12, scope: !36)
!143 = !DILocation(line: 211, column: 5, scope: !36)
!144 = !DILocation(line: 213, column: 5, scope: !36)
!145 = !DILocation(line: 215, column: 5, scope: !36)
!146 = !DILocation(line: 217, column: 5, scope: !36)
!147 = !DILocation(line: 219, column: 12, scope: !36)
!148 = !DILocation(line: 220, column: 12, scope: !36)
!149 = !DILocation(line: 221, column: 12, scope: !36)
!150 = !DILocation(line: 222, column: 5, scope: !36)
!151 = !DILocation(line: 223, column: 5, scope: !36)
!152 = !DILocation(line: 225, column: 5, scope: !36)
!153 = !DILocation(line: 227, column: 5, scope: !36)
!154 = !DILocation(line: 229, column: 12, scope: !36)
!155 = !DILocation(line: 230, column: 12, scope: !36)
!156 = !DILocation(line: 231, column: 5, scope: !36)
!157 = !DILocation(line: 232, column: 12, scope: !36)
!158 = !DILocation(line: 233, column: 5, scope: !36)
!159 = !DILocation(line: 234, column: 5, scope: !36)
!160 = !DILocation(line: 235, column: 12, scope: !36)
!161 = !DILocation(line: 236, column: 5, scope: !36)
!162 = !DILocation(line: 238, column: 12, scope: !36)
!163 = !DILocation(line: 239, column: 5, scope: !36)
!164 = !DILocation(line: 241, column: 5, scope: !36)
