; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i64 }
%"_Lowered_disagg@struct.arc" = type { ptr, ptr, ptr, ptr, [8 x i32] }

@_rbuf = external global ptr
@tokens = external global [33554432 x { i64, i8, i8, i16, i32 }]
@node = external global ptr
@g_payload = external global [23 x i32]
@str2 = internal constant [18 x i8] c"Dont opt this %d\0A\00"
@str1 = internal constant [18 x i8] c"Exec time %.5f s\0A\00"
@arc = external global ptr
@str0 = internal constant [13 x i8] c"after setup\0A\00"

declare ptr @malloc(i64)

declare void @free(ptr)

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
  %2 = alloca %"_Lowered_disagg@struct.arc", i64 1, align 8, !dbg !35
  %3 = getelementptr %"_Lowered_disagg@struct.arc", ptr %2, i32 0, i32 1, !dbg !37
  %4 = load ptr, ptr @node, align 8, !dbg !38
  %5 = ptrtoint ptr %4 to i64, !dbg !39
  %6 = alloca i32, i32 2, align 4, !dbg !40
  %7 = ptrtoint ptr %0 to i64, !dbg !41
  %8 = and i64 %7, -2097152, !dbg !42
  %9 = udiv i64 %8, 2097152, !dbg !43
  %10 = srem i64 %9, 2048, !dbg !44
  %11 = trunc i64 %10 to i32, !dbg !45
  %12 = call i32 @cache_request_impl_2(i32 0, i64 %8, i32 %11, i8 1), !dbg !46
  store i32 %11, ptr %6, align 4, !dbg !47
  br label %13, !dbg !48

13:                                               ; preds = %78, %1
  %14 = phi i64 [ %79, %78 ], [ 0, %1 ]
  %15 = icmp slt i64 %14, 2048, !dbg !49
  br i1 %15, label %16, label %80, !dbg !50

16:                                               ; preds = %13
  %17 = add i64 %14, 1, !dbg !51
  %18 = icmp slt i64 %17, 2048, !dbg !52
  br i1 %18, label %19, label %32, !dbg !53

19:                                               ; preds = %16
  %20 = srem i64 %17, 2, !dbg !54
  %21 = trunc i64 %20 to i32, !dbg !55
  %22 = mul i64 %17, 32768, !dbg !56
  %23 = getelementptr %"_Lowered_disagg@struct.arc", ptr %0, i64 %22, !dbg !57
  %24 = ptrtoint ptr %23 to i64, !dbg !58
  %25 = and i64 %24, -2097152, !dbg !59
  %26 = udiv i64 %25, 2097152, !dbg !60
  %27 = srem i64 %26, 2048, !dbg !61
  %28 = trunc i64 %27 to i32, !dbg !62
  %29 = call i32 @cache_request_impl_2(i32 0, i64 %25, i32 %28, i8 1), !dbg !63
  %30 = sext i32 %21 to i64, !dbg !64
  %31 = getelementptr i32, ptr %6, i64 %30, !dbg !65
  store i32 %28, ptr %31, align 4, !dbg !66
  br label %32, !dbg !67

32:                                               ; preds = %19, %16
  %33 = mul i64 %14, 32768, !dbg !68
  %34 = getelementptr %"_Lowered_disagg@struct.arc", ptr %0, i64 %33, !dbg !69
  %35 = srem i64 %14, 2, !dbg !70
  %36 = getelementptr i32, ptr %6, i64 %35, !dbg !71
  %37 = load i32, ptr %36, align 4, !dbg !72
  %38 = add i32 %37, 65536, !dbg !73
  %39 = sext i32 %38 to i64, !dbg !74
  %40 = getelementptr { i64, i8, i8, i16, i32 }, ptr @tokens, i64 %39, !dbg !75
  %41 = getelementptr { i64, i8, i8, i16, i32 }, ptr %40, i32 0, i32 3, !dbg !76
  %42 = load i16, ptr %41, align 2, !dbg !77
  call void @poll_qid2(i32 1, i16 %42), !dbg !78
  %43 = getelementptr { i64, i8, i8, i16, i32 }, ptr %40, i32 0, i32 1, !dbg !79
  %44 = load i8, ptr %43, align 1, !dbg !80
  %45 = or i8 %44, 2, !dbg !81
  store i8 %45, ptr %43, align 1, !dbg !82
  %46 = ptrtoint ptr %34 to i64, !dbg !83
  %47 = sext i32 %37 to i64, !dbg !84
  %48 = mul i64 %47, 2097152, !dbg !85
  %49 = srem i64 %46, 2097152, !dbg !86
  %50 = add i64 %48, %49, !dbg !87
  %51 = add i64 %50, 1073741824, !dbg !88
  %52 = load ptr, ptr @_rbuf, align 8, !dbg !89
  %53 = getelementptr i8, ptr %52, i64 %51, !dbg !90
  %54 = mul i64 %17, 32768, !dbg !91
  %55 = icmp slt i64 %54, 67108864, !dbg !92
  br i1 %55, label %56, label %57, !dbg !93

56:                                               ; preds = %32
  br label %60, !dbg !94

57:                                               ; preds = %32
  %58 = mul i64 %14, 32768, !dbg !95
  %59 = sub i64 67108864, %58, !dbg !96
  br label %60, !dbg !97

60:                                               ; preds = %56, %57
  %61 = phi i64 [ %59, %57 ], [ 32768, %56 ]
  br label %62, !dbg !98

62:                                               ; preds = %60
  br label %63, !dbg !99

63:                                               ; preds = %66, %62
  %64 = phi i64 [ %77, %66 ], [ 0, %62 ]
  %65 = icmp slt i64 %64, %61, !dbg !100
  br i1 %65, label %66, label %78, !dbg !101

66:                                               ; preds = %63
  %67 = getelementptr %"_Lowered_disagg@struct.arc", ptr %53, i64 %64, !dbg !102
  %68 = load %"_Lowered_disagg@struct.arc", ptr %67, align 8, !dbg !103
  store %"_Lowered_disagg@struct.arc" %68, ptr %2, align 8, !dbg !104
  %69 = load ptr, ptr %3, align 8, !dbg !105
  %70 = ptrtoint ptr %69 to i64, !dbg !106
  %71 = sub i64 %70, %5, !dbg !107
  %72 = sdiv i64 %71, 128, !dbg !108
  %73 = trunc i64 %72 to i32, !dbg !109
  %74 = and i32 %73, 23, !dbg !110
  %75 = sext i32 %74 to i64, !dbg !111
  %76 = getelementptr i32, ptr @g_payload, i64 %75, !dbg !112
  store i32 %73, ptr %76, align 4, !dbg !113
  %77 = add i64 %64, 1, !dbg !114
  br label %63, !dbg !115

78:                                               ; preds = %63
  %79 = add i64 %14, 1, !dbg !116
  br label %13, !dbg !117

80:                                               ; preds = %13
  ret void, !dbg !118
}

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 14, type: !5, scopeLine: 14, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "lower_remote.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/example/interleave/debug")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 17, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 20, column: 10, scope: !8)
!10 = !DILocation(line: 21, column: 10, scope: !8)
!11 = !DILocation(line: 23, column: 10, scope: !8)
!12 = !DILocation(line: 24, column: 5, scope: !8)
!13 = !DILocation(line: 25, column: 10, scope: !8)
!14 = !DILocation(line: 28, column: 11, scope: !8)
!15 = !DILocation(line: 29, column: 11, scope: !8)
!16 = !DILocation(line: 30, column: 11, scope: !8)
!17 = !DILocation(line: 31, column: 11, scope: !8)
!18 = !DILocation(line: 37, column: 11, scope: !8)
!19 = !DILocation(line: 38, column: 11, scope: !8)
!20 = !DILocation(line: 39, column: 5, scope: !8)
!21 = distinct !DISubprogram(name: "microtime", linkageName: "microtime", scope: null, file: !4, line: 42, type: !5, scopeLine: 42, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!22 = !DILocation(line: 46, column: 10, scope: !23)
!23 = !DILexicalBlockFile(scope: !21, file: !4, discriminator: 0)
!24 = !DILocation(line: 47, column: 10, scope: !23)
!25 = !DILocation(line: 48, column: 10, scope: !23)
!26 = !DILocation(line: 49, column: 10, scope: !23)
!27 = !DILocation(line: 50, column: 10, scope: !23)
!28 = !DILocation(line: 51, column: 10, scope: !23)
!29 = !DILocation(line: 52, column: 10, scope: !23)
!30 = !DILocation(line: 53, column: 11, scope: !23)
!31 = !DILocation(line: 54, column: 11, scope: !23)
!32 = !DILocation(line: 55, column: 11, scope: !23)
!33 = !DILocation(line: 56, column: 5, scope: !23)
!34 = distinct !DISubprogram(name: "visit", linkageName: "visit", scope: null, file: !4, line: 58, type: !5, scopeLine: 58, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!35 = !DILocation(line: 79, column: 11, scope: !36)
!36 = !DILexicalBlockFile(scope: !34, file: !4, discriminator: 0)
!37 = !DILocation(line: 80, column: 11, scope: !36)
!38 = !DILocation(line: 84, column: 11, scope: !36)
!39 = !DILocation(line: 85, column: 11, scope: !36)
!40 = !DILocation(line: 86, column: 11, scope: !36)
!41 = !DILocation(line: 87, column: 11, scope: !36)
!42 = !DILocation(line: 88, column: 11, scope: !36)
!43 = !DILocation(line: 89, column: 11, scope: !36)
!44 = !DILocation(line: 90, column: 11, scope: !36)
!45 = !DILocation(line: 91, column: 11, scope: !36)
!46 = !DILocation(line: 92, column: 11, scope: !36)
!47 = !DILocation(line: 93, column: 5, scope: !36)
!48 = !DILocation(line: 94, column: 5, scope: !36)
!49 = !DILocation(line: 96, column: 11, scope: !36)
!50 = !DILocation(line: 97, column: 5, scope: !36)
!51 = !DILocation(line: 99, column: 11, scope: !36)
!52 = !DILocation(line: 100, column: 11, scope: !36)
!53 = !DILocation(line: 101, column: 5, scope: !36)
!54 = !DILocation(line: 103, column: 11, scope: !36)
!55 = !DILocation(line: 104, column: 11, scope: !36)
!56 = !DILocation(line: 105, column: 11, scope: !36)
!57 = !DILocation(line: 106, column: 11, scope: !36)
!58 = !DILocation(line: 107, column: 11, scope: !36)
!59 = !DILocation(line: 108, column: 11, scope: !36)
!60 = !DILocation(line: 109, column: 11, scope: !36)
!61 = !DILocation(line: 110, column: 11, scope: !36)
!62 = !DILocation(line: 111, column: 11, scope: !36)
!63 = !DILocation(line: 112, column: 11, scope: !36)
!64 = !DILocation(line: 113, column: 11, scope: !36)
!65 = !DILocation(line: 114, column: 11, scope: !36)
!66 = !DILocation(line: 115, column: 5, scope: !36)
!67 = !DILocation(line: 116, column: 5, scope: !36)
!68 = !DILocation(line: 118, column: 11, scope: !36)
!69 = !DILocation(line: 119, column: 11, scope: !36)
!70 = !DILocation(line: 120, column: 11, scope: !36)
!71 = !DILocation(line: 121, column: 11, scope: !36)
!72 = !DILocation(line: 122, column: 11, scope: !36)
!73 = !DILocation(line: 123, column: 11, scope: !36)
!74 = !DILocation(line: 124, column: 11, scope: !36)
!75 = !DILocation(line: 127, column: 11, scope: !36)
!76 = !DILocation(line: 128, column: 11, scope: !36)
!77 = !DILocation(line: 129, column: 11, scope: !36)
!78 = !DILocation(line: 130, column: 5, scope: !36)
!79 = !DILocation(line: 131, column: 11, scope: !36)
!80 = !DILocation(line: 132, column: 11, scope: !36)
!81 = !DILocation(line: 133, column: 11, scope: !36)
!82 = !DILocation(line: 134, column: 5, scope: !36)
!83 = !DILocation(line: 135, column: 11, scope: !36)
!84 = !DILocation(line: 136, column: 11, scope: !36)
!85 = !DILocation(line: 137, column: 11, scope: !36)
!86 = !DILocation(line: 138, column: 11, scope: !36)
!87 = !DILocation(line: 139, column: 11, scope: !36)
!88 = !DILocation(line: 140, column: 11, scope: !36)
!89 = !DILocation(line: 142, column: 11, scope: !36)
!90 = !DILocation(line: 143, column: 11, scope: !36)
!91 = !DILocation(line: 145, column: 11, scope: !36)
!92 = !DILocation(line: 146, column: 11, scope: !36)
!93 = !DILocation(line: 147, column: 5, scope: !36)
!94 = !DILocation(line: 149, column: 5, scope: !36)
!95 = !DILocation(line: 151, column: 11, scope: !36)
!96 = !DILocation(line: 152, column: 11, scope: !36)
!97 = !DILocation(line: 153, column: 5, scope: !36)
!98 = !DILocation(line: 155, column: 5, scope: !36)
!99 = !DILocation(line: 157, column: 5, scope: !36)
!100 = !DILocation(line: 159, column: 11, scope: !36)
!101 = !DILocation(line: 160, column: 5, scope: !36)
!102 = !DILocation(line: 162, column: 11, scope: !36)
!103 = !DILocation(line: 163, column: 11, scope: !36)
!104 = !DILocation(line: 164, column: 5, scope: !36)
!105 = !DILocation(line: 165, column: 11, scope: !36)
!106 = !DILocation(line: 166, column: 11, scope: !36)
!107 = !DILocation(line: 167, column: 11, scope: !36)
!108 = !DILocation(line: 168, column: 11, scope: !36)
!109 = !DILocation(line: 169, column: 11, scope: !36)
!110 = !DILocation(line: 170, column: 11, scope: !36)
!111 = !DILocation(line: 171, column: 11, scope: !36)
!112 = !DILocation(line: 172, column: 11, scope: !36)
!113 = !DILocation(line: 173, column: 5, scope: !36)
!114 = !DILocation(line: 174, column: 11, scope: !36)
!115 = !DILocation(line: 175, column: 5, scope: !36)
!116 = !DILocation(line: 177, column: 11, scope: !36)
!117 = !DILocation(line: 178, column: 5, scope: !36)
!118 = !DILocation(line: 180, column: 5, scope: !36)
