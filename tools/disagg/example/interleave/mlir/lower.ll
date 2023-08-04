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

declare i32 @select_1(i64)

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
  br label %5, !dbg !39

5:                                                ; preds = %86, %1
  %6 = phi i64 [ %90, %86 ], [ 0, %1 ]
  %7 = icmp slt i64 %6, 67108864, !dbg !40
  br i1 %7, label %8, label %91, !dbg !41

8:                                                ; preds = %5
  %9 = trunc i64 %6 to i32, !dbg !42
  %10 = getelementptr %"_Lowered_disagg@struct.arc", ptr %0, i64 %6, !dbg !43
  %11 = ptrtoint ptr %10 to i64, !dbg !44
  %12 = and i64 %11, -2097152, !dbg !45
  %13 = udiv i64 %12, 2097152, !dbg !46
  %14 = srem i64 %13, 12, !dbg !47
  %15 = trunc i64 %14 to i32, !dbg !48
  %16 = add i32 %15, 8388608, !dbg !49
  %17 = sext i32 %16 to i64, !dbg !50
  %18 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %17, !dbg !51
  %19 = sext i32 %15 to i64, !dbg !52
  %20 = mul i64 %19, 2097152, !dbg !53
  %21 = srem i64 %11, 2097152, !dbg !54
  %22 = add i64 %20, %21, !dbg !55
  %23 = add i64 %22, 1073741824, !dbg !56
  %24 = load ptr, ptr @_rbuf, align 8, !dbg !57
  %25 = getelementptr i8, ptr %24, i64 %23, !dbg !58
  %26 = getelementptr { i64, i8, i8, i16, i32 }, ptr %18, i32 0, i32 1, !dbg !59
  %27 = load i8, ptr %26, align 1, !dbg !60
  %28 = sext i8 %27 to i32, !dbg !61
  %29 = and i32 %28, 1, !dbg !62
  %30 = trunc i32 %29 to i8, !dbg !63
  %31 = sext i8 %30 to i32, !dbg !64
  %32 = icmp ne i32 %31, 0, !dbg !65
  br i1 %32, label %33, label %37, !dbg !66

33:                                               ; preds = %8
  %34 = getelementptr { i64, i8, i8, i16, i32 }, ptr %18, i32 0, i32 0, !dbg !67
  %35 = load i64, ptr %34, align 8, !dbg !68
  %36 = icmp ne i64 %35, %12, !dbg !69
  br label %38, !dbg !70

37:                                               ; preds = %8
  br label %38, !dbg !71

38:                                               ; preds = %33, %37
  %39 = phi i1 [ true, %37 ], [ %36, %33 ]
  br label %40, !dbg !72

40:                                               ; preds = %38
  br i1 %39, label %41, label %45, !dbg !73

41:                                               ; preds = %40
  %42 = call i32 @cache_request_impl_2(i32 2, i64 %12, i32 %15, i8 1), !dbg !74
  %43 = getelementptr { i64, i8, i8, i16, i32 }, ptr %18, i32 0, i32 3, !dbg !75
  %44 = load i16, ptr %43, align 2, !dbg !76
  call void @poll_qid2(i32 1, i16 %44), !dbg !77
  br label %46, !dbg !78

45:                                               ; preds = %40
  br label %46, !dbg !79

46:                                               ; preds = %41, %45
  %47 = phi ptr [ %25, %45 ], [ %25, %41 ]
  br label %48, !dbg !80

48:                                               ; preds = %46
  %49 = load i8, ptr %26, align 1, !dbg !81
  %50 = or i8 %49, 2, !dbg !82
  store i8 %50, ptr %26, align 1, !dbg !83
  %51 = load %"_Lowered_disagg@struct.arc", ptr %47, align 8, !dbg !84
  store %"_Lowered_disagg@struct.arc" %51, ptr %3, align 8, !dbg !85
  %52 = load ptr, ptr %4, align 8, !dbg !86
  %53 = ptrtoint ptr %52 to i64, !dbg !87
  %54 = and i64 %53, -128, !dbg !88
  %55 = call i32 @select_1(i64 %54), !dbg !89
  %56 = sext i32 %55 to i64, !dbg !90
  %57 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %56, !dbg !91
  %58 = mul i64 %56, 128, !dbg !92
  %59 = srem i64 %53, 128, !dbg !93
  %60 = add i64 %58, %59, !dbg !94
  %61 = add i64 %60, 0, !dbg !95
  %62 = load ptr, ptr @_rbuf, align 8, !dbg !96
  %63 = getelementptr i8, ptr %62, i64 %61, !dbg !97
  %64 = getelementptr { i64, i8, i8, i16, i32 }, ptr %57, i32 0, i32 1, !dbg !98
  %65 = load i8, ptr %64, align 1, !dbg !99
  %66 = sext i8 %65 to i32, !dbg !100
  %67 = and i32 %66, 1, !dbg !101
  %68 = trunc i32 %67 to i8, !dbg !102
  %69 = sext i8 %68 to i32, !dbg !103
  %70 = icmp ne i32 %69, 0, !dbg !104
  br i1 %70, label %71, label %75, !dbg !105

71:                                               ; preds = %48
  %72 = getelementptr { i64, i8, i8, i16, i32 }, ptr %57, i32 0, i32 0, !dbg !106
  %73 = load i64, ptr %72, align 8, !dbg !107
  %74 = icmp ne i64 %73, %54, !dbg !108
  br label %76, !dbg !109

75:                                               ; preds = %48
  br label %76, !dbg !110

76:                                               ; preds = %71, %75
  %77 = phi i1 [ true, %75 ], [ %74, %71 ]
  br label %78, !dbg !111

78:                                               ; preds = %76
  br i1 %77, label %79, label %83, !dbg !112

79:                                               ; preds = %78
  %80 = call i32 @cache_request_impl_1(i32 0, i64 %54, i32 %55, i8 1), !dbg !113
  %81 = getelementptr { i64, i8, i8, i16, i32 }, ptr %57, i32 0, i32 3, !dbg !114
  %82 = load i16, ptr %81, align 2, !dbg !115
  call void @poll_qid1(i32 0, i16 %82), !dbg !116
  br label %84, !dbg !117

83:                                               ; preds = %78
  br label %84, !dbg !118

84:                                               ; preds = %79, %83
  %85 = phi ptr [ %63, %83 ], [ %63, %79 ]
  br label %86, !dbg !119

86:                                               ; preds = %84
  %87 = load i8, ptr %64, align 1, !dbg !120
  %88 = or i8 %87, 2, !dbg !121
  store i8 %88, ptr %64, align 1, !dbg !122
  %89 = load %"_Lowered_disagg@struct.node", ptr %85, align 8, !dbg !123
  store %"_Lowered_disagg@struct.node" %89, ptr %2, align 8, !dbg !124
  call void @computation(ptr %3, ptr %2, i32 %9), !dbg !125
  %90 = add i64 %6, 1, !dbg !126
  br label %5, !dbg !127

91:                                               ; preds = %5
  ret void, !dbg !128
}

declare void @computation(ptr, ptr, i32)

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 16, type: !5, scopeLine: 16, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "mlir/lower_remote.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/example/interleave")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 19, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 22, column: 10, scope: !8)
!10 = !DILocation(line: 23, column: 10, scope: !8)
!11 = !DILocation(line: 25, column: 10, scope: !8)
!12 = !DILocation(line: 26, column: 5, scope: !8)
!13 = !DILocation(line: 27, column: 10, scope: !8)
!14 = !DILocation(line: 30, column: 11, scope: !8)
!15 = !DILocation(line: 31, column: 11, scope: !8)
!16 = !DILocation(line: 32, column: 11, scope: !8)
!17 = !DILocation(line: 33, column: 11, scope: !8)
!18 = !DILocation(line: 39, column: 11, scope: !8)
!19 = !DILocation(line: 40, column: 11, scope: !8)
!20 = !DILocation(line: 41, column: 5, scope: !8)
!21 = distinct !DISubprogram(name: "microtime", linkageName: "microtime", scope: null, file: !4, line: 44, type: !5, scopeLine: 44, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!22 = !DILocation(line: 48, column: 10, scope: !23)
!23 = !DILexicalBlockFile(scope: !21, file: !4, discriminator: 0)
!24 = !DILocation(line: 49, column: 10, scope: !23)
!25 = !DILocation(line: 50, column: 10, scope: !23)
!26 = !DILocation(line: 51, column: 10, scope: !23)
!27 = !DILocation(line: 52, column: 10, scope: !23)
!28 = !DILocation(line: 53, column: 10, scope: !23)
!29 = !DILocation(line: 54, column: 10, scope: !23)
!30 = !DILocation(line: 55, column: 11, scope: !23)
!31 = !DILocation(line: 56, column: 11, scope: !23)
!32 = !DILocation(line: 57, column: 11, scope: !23)
!33 = !DILocation(line: 58, column: 5, scope: !23)
!34 = distinct !DISubprogram(name: "visit", linkageName: "visit", scope: null, file: !4, line: 60, type: !5, scopeLine: 60, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!35 = !DILocation(line: 79, column: 11, scope: !36)
!36 = !DILexicalBlockFile(scope: !34, file: !4, discriminator: 0)
!37 = !DILocation(line: 80, column: 11, scope: !36)
!38 = !DILocation(line: 81, column: 11, scope: !36)
!39 = !DILocation(line: 82, column: 5, scope: !36)
!40 = !DILocation(line: 84, column: 11, scope: !36)
!41 = !DILocation(line: 85, column: 5, scope: !36)
!42 = !DILocation(line: 87, column: 11, scope: !36)
!43 = !DILocation(line: 88, column: 11, scope: !36)
!44 = !DILocation(line: 89, column: 11, scope: !36)
!45 = !DILocation(line: 90, column: 11, scope: !36)
!46 = !DILocation(line: 91, column: 11, scope: !36)
!47 = !DILocation(line: 92, column: 11, scope: !36)
!48 = !DILocation(line: 93, column: 11, scope: !36)
!49 = !DILocation(line: 94, column: 11, scope: !36)
!50 = !DILocation(line: 95, column: 11, scope: !36)
!51 = !DILocation(line: 98, column: 11, scope: !36)
!52 = !DILocation(line: 99, column: 11, scope: !36)
!53 = !DILocation(line: 100, column: 11, scope: !36)
!54 = !DILocation(line: 101, column: 11, scope: !36)
!55 = !DILocation(line: 102, column: 11, scope: !36)
!56 = !DILocation(line: 103, column: 11, scope: !36)
!57 = !DILocation(line: 105, column: 11, scope: !36)
!58 = !DILocation(line: 106, column: 11, scope: !36)
!59 = !DILocation(line: 108, column: 11, scope: !36)
!60 = !DILocation(line: 109, column: 11, scope: !36)
!61 = !DILocation(line: 110, column: 11, scope: !36)
!62 = !DILocation(line: 111, column: 11, scope: !36)
!63 = !DILocation(line: 112, column: 11, scope: !36)
!64 = !DILocation(line: 113, column: 11, scope: !36)
!65 = !DILocation(line: 114, column: 11, scope: !36)
!66 = !DILocation(line: 115, column: 5, scope: !36)
!67 = !DILocation(line: 117, column: 11, scope: !36)
!68 = !DILocation(line: 118, column: 11, scope: !36)
!69 = !DILocation(line: 119, column: 11, scope: !36)
!70 = !DILocation(line: 120, column: 5, scope: !36)
!71 = !DILocation(line: 122, column: 5, scope: !36)
!72 = !DILocation(line: 124, column: 5, scope: !36)
!73 = !DILocation(line: 126, column: 5, scope: !36)
!74 = !DILocation(line: 128, column: 11, scope: !36)
!75 = !DILocation(line: 129, column: 11, scope: !36)
!76 = !DILocation(line: 130, column: 11, scope: !36)
!77 = !DILocation(line: 131, column: 5, scope: !36)
!78 = !DILocation(line: 132, column: 5, scope: !36)
!79 = !DILocation(line: 134, column: 5, scope: !36)
!80 = !DILocation(line: 136, column: 5, scope: !36)
!81 = !DILocation(line: 138, column: 11, scope: !36)
!82 = !DILocation(line: 139, column: 11, scope: !36)
!83 = !DILocation(line: 140, column: 5, scope: !36)
!84 = !DILocation(line: 141, column: 11, scope: !36)
!85 = !DILocation(line: 142, column: 5, scope: !36)
!86 = !DILocation(line: 143, column: 11, scope: !36)
!87 = !DILocation(line: 144, column: 11, scope: !36)
!88 = !DILocation(line: 145, column: 11, scope: !36)
!89 = !DILocation(line: 146, column: 11, scope: !36)
!90 = !DILocation(line: 147, column: 11, scope: !36)
!91 = !DILocation(line: 148, column: 11, scope: !36)
!92 = !DILocation(line: 149, column: 11, scope: !36)
!93 = !DILocation(line: 150, column: 11, scope: !36)
!94 = !DILocation(line: 151, column: 11, scope: !36)
!95 = !DILocation(line: 152, column: 11, scope: !36)
!96 = !DILocation(line: 153, column: 11, scope: !36)
!97 = !DILocation(line: 154, column: 11, scope: !36)
!98 = !DILocation(line: 156, column: 11, scope: !36)
!99 = !DILocation(line: 157, column: 11, scope: !36)
!100 = !DILocation(line: 158, column: 11, scope: !36)
!101 = !DILocation(line: 159, column: 11, scope: !36)
!102 = !DILocation(line: 160, column: 11, scope: !36)
!103 = !DILocation(line: 161, column: 11, scope: !36)
!104 = !DILocation(line: 162, column: 11, scope: !36)
!105 = !DILocation(line: 163, column: 5, scope: !36)
!106 = !DILocation(line: 165, column: 11, scope: !36)
!107 = !DILocation(line: 166, column: 11, scope: !36)
!108 = !DILocation(line: 167, column: 11, scope: !36)
!109 = !DILocation(line: 168, column: 5, scope: !36)
!110 = !DILocation(line: 170, column: 5, scope: !36)
!111 = !DILocation(line: 172, column: 5, scope: !36)
!112 = !DILocation(line: 174, column: 5, scope: !36)
!113 = !DILocation(line: 176, column: 11, scope: !36)
!114 = !DILocation(line: 177, column: 11, scope: !36)
!115 = !DILocation(line: 178, column: 11, scope: !36)
!116 = !DILocation(line: 179, column: 5, scope: !36)
!117 = !DILocation(line: 180, column: 5, scope: !36)
!118 = !DILocation(line: 182, column: 5, scope: !36)
!119 = !DILocation(line: 184, column: 5, scope: !36)
!120 = !DILocation(line: 186, column: 11, scope: !36)
!121 = !DILocation(line: 187, column: 11, scope: !36)
!122 = !DILocation(line: 188, column: 5, scope: !36)
!123 = !DILocation(line: 189, column: 11, scope: !36)
!124 = !DILocation(line: 190, column: 5, scope: !36)
!125 = !DILocation(line: 191, column: 5, scope: !36)
!126 = !DILocation(line: 192, column: 11, scope: !36)
!127 = !DILocation(line: 193, column: 5, scope: !36)
!128 = !DILocation(line: 195, column: 5, scope: !36)
