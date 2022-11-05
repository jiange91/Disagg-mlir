; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@str7 = internal constant [10 x i8] c"aaa = %d\0A\00"
@str6 = internal constant [10 x i8] c"saa = %d\0A\00"
@str5 = internal constant [9 x i8] c"aa = %d\0A\00"
@str4 = internal constant [8 x i8] c"a = %d\0A\00"
@str3 = internal constant [10 x i8] c"a2d = %d\0A\00"
@str2 = internal constant [9 x i8] c"tt = %d\0A\00"
@str1 = internal constant [9 x i8] c"ts = %d\0A\00"
@str0 = internal constant [8 x i8] c"t = %d\0A\00"

; Function Attrs: inaccessiblememonly mustprogress nofree nounwind willreturn
declare noalias noundef i8* @malloc(i64) #0

declare void @free(i8*) #1

declare i32 @printf(i8*, ...) #1

declare i32 @atoi(i8*) #1

define i32 @main(i32 %0, i8** %1) #1 !dbg !3 {
  %3 = alloca [2 x { i32 }], i64 1, align 8, !dbg !7
  %4 = alloca { i32 }, i64 1, align 8, !dbg !9
  %5 = alloca [2 x [2 x i32]], i64 1, align 4, !dbg !10
  %6 = getelementptr i8*, i8** %1, i32 1, !dbg !11
  %7 = load i8*, i8** %6, align 8, !dbg !11
  %8 = call i32 @atoi(i8* %7), !dbg !12
  %9 = call noalias noundef i8* @malloc(i64 4), !dbg !13
  %10 = bitcast i8* %9 to i32*, !dbg !13
  store i32 2, i32* %10, align 4, !dbg !13
  %11 = load i32, i32* %10, align 4, !dbg !14
  %12 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str0, i32 0, i32 0), i32 %11), !dbg !15
  %13 = sext i32 %8 to i64, !dbg !16
  %14 = mul i64 %13, 4, !dbg !17
  %15 = call noalias noundef i8* @malloc(i64 %14), !dbg !17
  %16 = bitcast i8* %15 to i32*, !dbg !17
  %17 = bitcast i32* %16 to [0 x i32]*, !dbg !17
  %18 = getelementptr [0 x i32], [0 x i32]* %17, i32 0, i32 0, !dbg !17
  store i32 1, i32* %18, align 4, !dbg !17
  %19 = getelementptr [0 x i32], [0 x i32]* %17, i32 0, i32 1, !dbg !17
  store i32 2, i32* %19, align 4, !dbg !17
  %20 = getelementptr [0 x i32], [0 x i32]* %17, i32 0, i32 2, !dbg !17
  store i32 3, i32* %20, align 4, !dbg !17
  %21 = getelementptr [0 x i32], [0 x i32]* %17, i32 0, i32 3, !dbg !17
  %22 = sub i64 %14, 12, !dbg !17
  call void @llvm.memset.p0i32.i64(i32* %21, i8 0, i64 %22, i1 false), !dbg !17
  br label %23, !dbg !18

23:                                               ; preds = %26, %2
  %24 = phi i64 [ 0, %2 ], [ %30, %26 ]
  %25 = icmp slt i64 %24, 5, !dbg !18
  br i1 %25, label %26, label %31, !dbg !18

26:                                               ; preds = %23
  %27 = getelementptr i32, i32* %16, i64 %24, !dbg !19
  %28 = load i32, i32* %27, align 4, !dbg !19
  %29 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str1, i32 0, i32 0), i32 %28), !dbg !20
  %30 = add i64 %24, 1, !dbg !18
  br label %23, !dbg !18

31:                                               ; preds = %23
  %32 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str2, i32 0, i32 0), i32 %8), !dbg !21
  %33 = getelementptr [2 x [2 x i32]], [2 x [2 x i32]]* %5, i32 0, i32 0, !dbg !10
  %34 = getelementptr [2 x i32], [2 x i32]* %33, i32 0, i32 0, !dbg !10
  store i32 1, i32* %34, align 4, !dbg !10
  %35 = getelementptr [2 x i32], [2 x i32]* %33, i32 0, i32 1, !dbg !10
  store i32 2, i32* %35, align 4, !dbg !10
  %36 = getelementptr [2 x [2 x i32]], [2 x [2 x i32]]* %5, i32 0, i32 1, !dbg !10
  call void @llvm.memset.p0a2i32.i64([2 x i32]* %36, i8 0, i64 8, i1 false), !dbg !10
  br label %37, !dbg !22

37:                                               ; preds = %51, %31
  %38 = phi i64 [ 0, %31 ], [ %52, %51 ]
  %39 = icmp slt i64 %38, 2, !dbg !22
  br i1 %39, label %40, label %53, !dbg !22

40:                                               ; preds = %37
  %41 = getelementptr [2 x i32], [2 x i32]* %33, i64 %38, !dbg !23
  %42 = getelementptr [2 x i32], [2 x i32]* %41, i32 0, i32 0, !dbg !23
  br label %43, !dbg !24

43:                                               ; preds = %46, %40
  %44 = phi i64 [ 0, %40 ], [ %50, %46 ]
  %45 = icmp slt i64 %44, 2, !dbg !24
  br i1 %45, label %46, label %51, !dbg !24

46:                                               ; preds = %43
  %47 = getelementptr i32, i32* %42, i64 %44, !dbg !23
  %48 = load i32, i32* %47, align 4, !dbg !23
  %49 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str3, i32 0, i32 0), i32 %48), !dbg !25
  %50 = add i64 %44, 1, !dbg !24
  br label %43, !dbg !24

51:                                               ; preds = %43
  %52 = add i64 %38, 1, !dbg !22
  br label %37, !dbg !22

53:                                               ; preds = %37
  call void @_ZN1AC1Ei({ i32 }* %4, i32 1), !dbg !26
  %54 = getelementptr { i32 }, { i32 }* %4, i32 0, i32 0, !dbg !27
  %55 = load i32, i32* %54, align 4, !dbg !28
  %56 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @str4, i32 0, i32 0), i32 %55), !dbg !29
  %57 = call noalias noundef i8* @malloc(i64 4), !dbg !30
  %58 = bitcast i8* %57 to { i32 }*, !dbg !30
  call void @_ZN1AC1Ei({ i32 }* %58, i32 2), !dbg !31
  %59 = getelementptr { i32 }, { i32 }* %58, i32 0, i32 0, !dbg !32
  %60 = load i32, i32* %59, align 4, !dbg !33
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @str5, i32 0, i32 0), i32 %60), !dbg !34
  %62 = getelementptr [2 x { i32 }], [2 x { i32 }]* %3, i32 0, i32 0, !dbg !7
  call void @_ZN1AC1Ei({ i32 }* %62, i32 1), !dbg !35
  %63 = getelementptr [2 x { i32 }], [2 x { i32 }]* %3, i32 0, i32 1, !dbg !7
  call void @llvm.memset.p0sl_i32s.i64({ i32 }* %63, i8 0, i64 4, i1 false), !dbg !7
  %64 = getelementptr { i32 }, { i32 }* %62, i32 0, i32 0, !dbg !36
  %65 = load i32, i32* %64, align 4, !dbg !37
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str6, i32 0, i32 0), i32 %65), !dbg !38
  %67 = call noalias noundef i8* @malloc(i64 %14), !dbg !39
  %68 = bitcast i8* %67 to { i32 }*, !dbg !39
  %69 = bitcast { i32 }* %68 to [0 x { i32 }]*, !dbg !39
  %70 = getelementptr [0 x { i32 }], [0 x { i32 }]* %69, i32 0, i32 0, !dbg !39
  call void @_ZN1AC1Ei({ i32 }* %70, i32 1), !dbg !40
  %71 = getelementptr [0 x { i32 }], [0 x { i32 }]* %69, i32 0, i32 1, !dbg !39
  call void @_ZN1AC1Ei({ i32 }* %71, i32 2), !dbg !41
  %72 = getelementptr [0 x { i32 }], [0 x { i32 }]* %69, i32 0, i32 2, !dbg !39
  call void @_ZN1AC1Ei({ i32 }* %72, i32 3), !dbg !42
  %73 = getelementptr [0 x { i32 }], [0 x { i32 }]* %69, i32 0, i32 3, !dbg !39
  call void @llvm.memset.p0sl_i32s.i64({ i32 }* %73, i8 0, i64 %22, i1 false), !dbg !39
  br label %74, !dbg !43

74:                                               ; preds = %77, %53
  %75 = phi i64 [ 0, %53 ], [ %82, %77 ]
  %76 = icmp slt i64 %75, %13, !dbg !43
  br i1 %76, label %77, label %83, !dbg !43

77:                                               ; preds = %74
  %78 = getelementptr { i32 }, { i32 }* %68, i64 %75, !dbg !44
  %79 = getelementptr { i32 }, { i32 }* %78, i32 0, i32 0, !dbg !45
  %80 = load i32, i32* %79, align 4, !dbg !44
  %81 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @str7, i32 0, i32 0), i32 %80), !dbg !46
  %82 = add i64 %75, 1, !dbg !43
  br label %74, !dbg !43

83:                                               ; preds = %74
  ret i32 0, !dbg !47
}

define linkonce_odr void @_ZN1AC1Ei({ i32 }* %0, i32 %1) #1 !dbg !48 {
  %3 = getelementptr { i32 }, { i32 }* %0, i32 0, i32 0, !dbg !49
  store i32 %1, i32* %3, align 4, !dbg !49
  ret void, !dbg !51
}

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0i32.i64(i32* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0a2i32.i64([2 x i32]* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: argmemonly nocallback nofree nounwind willreturn writeonly
declare void @llvm.memset.p0sl_i32s.i64({ i32 }* nocapture writeonly, i8, i64, i1 immarg) #2

attributes #0 = { inaccessiblememonly mustprogress nofree nounwind willreturn "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { argmemonly nocallback nofree nounwind willreturn writeonly "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 36, type: !5, scopeLine: 36, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "testcpp.cc", directory: "/users/Zijian/Disagg-mlir/tools/disagg/origin")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 71, column: 3, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 65, column: 3, scope: !8)
!10 = !DILocation(line: 58, column: 3, scope: !8)
!11 = !DILocation(line: 46, column: 16, scope: !8)
!12 = !DILocation(line: 46, column: 11, scope: !8)
!13 = !DILocation(line: 47, column: 12, scope: !8)
!14 = !DILocation(line: 48, column: 22, scope: !8)
!15 = !DILocation(line: 48, column: 3, scope: !8)
!16 = !DILocation(line: 0, scope: !8)
!17 = !DILocation(line: 50, column: 13, scope: !8)
!18 = !DILocation(line: 51, column: 21, scope: !8)
!19 = !DILocation(line: 52, column: 25, scope: !8)
!20 = !DILocation(line: 52, column: 5, scope: !8)
!21 = !DILocation(line: 56, column: 3, scope: !8)
!22 = !DILocation(line: 59, column: 21, scope: !8)
!23 = !DILocation(line: 61, column: 28, scope: !8)
!24 = !DILocation(line: 60, column: 23, scope: !8)
!25 = !DILocation(line: 61, column: 7, scope: !8)
!26 = !DILocation(line: 65, column: 9, scope: !8)
!27 = !DILocation(line: 66, column: 24, scope: !8)
!28 = !DILocation(line: 66, column: 22, scope: !8)
!29 = !DILocation(line: 66, column: 3, scope: !8)
!30 = !DILocation(line: 68, column: 11, scope: !8)
!31 = !DILocation(line: 68, column: 15, scope: !8)
!32 = !DILocation(line: 69, column: 27, scope: !8)
!33 = !DILocation(line: 69, column: 23, scope: !8)
!34 = !DILocation(line: 69, column: 3, scope: !8)
!35 = !DILocation(line: 71, column: 15, scope: !8)
!36 = !DILocation(line: 72, column: 31, scope: !8)
!37 = !DILocation(line: 72, column: 24, scope: !8)
!38 = !DILocation(line: 72, column: 3, scope: !8)
!39 = !DILocation(line: 74, column: 12, scope: !8)
!40 = !DILocation(line: 74, column: 22, scope: !8)
!41 = !DILocation(line: 74, column: 27, scope: !8)
!42 = !DILocation(line: 74, column: 32, scope: !8)
!43 = !DILocation(line: 75, column: 21, scope: !8)
!44 = !DILocation(line: 76, column: 26, scope: !8)
!45 = !DILocation(line: 76, column: 33, scope: !8)
!46 = !DILocation(line: 76, column: 5, scope: !8)
!47 = !DILocation(line: 96, column: 1, scope: !8)
!48 = distinct !DISubprogram(name: "_ZN1AC1Ei", linkageName: "_ZN1AC1Ei", scope: null, file: !4, line: 19, type: !5, scopeLine: 19, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!49 = !DILocation(line: 19, column: 3, scope: !50)
!50 = !DILexicalBlockFile(scope: !48, file: !4, discriminator: 0)
!51 = !DILocation(line: 19, column: 19, scope: !50)

