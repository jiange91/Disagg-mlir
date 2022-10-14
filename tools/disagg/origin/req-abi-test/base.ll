; ModuleID = 'LLVMDialectModule'
source_filename = "LLVMDialectModule"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@rbuf = external global ptr

declare ptr @malloc(i64)

declare void @free(ptr)

define i32 @main(i32 %0, ptr %1) !dbg !3 {
  call void @init_device(), !dbg !7
  call void @init_bufs(), !dbg !9
  call void @cache_init(), !dbg !10
  %3 = load ptr, ptr @rbuf, align 8, !dbg !11
  %4 = call i32 @cache_create(i32 64, i32 16, ptr %3), !dbg !12
  %5 = call ptr @_disagg_alloc(i32 %4, i64 1), !dbg !13
  %6 = ptrtoint ptr %5 to i64, !dbg !14
  %7 = call { i64, i64 } @cache_request(i64 %6), !dbg !15
  call void @shutdown_device(), !dbg !16
  ret i32 0, !dbg !17
}

declare void @init_device()

declare void @init_bufs()

declare void @cache_init()

declare i32 @cache_create(i32, i32, ptr)

declare ptr @_disagg_alloc(i32, i64)

declare { i64, i64 } @cache_request(i64)

declare void @shutdown_device()

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2}

!0 = distinct !DICompileUnit(language: DW_LANG_C, file: !1, producer: "mlir", isOptimized: true, runtimeVersion: 0, emissionKind: FullDebug)
!1 = !DIFile(filename: "LLVMDialectModule", directory: "/")
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = distinct !DISubprogram(name: "main", linkageName: "main", scope: null, file: !4, line: 3, type: !5, scopeLine: 3, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !0, retainedNodes: !6)
!4 = !DIFile(filename: "out/base_llvm.mlir", directory: "/users/Zijian/Disagg-mlir/tools/disagg/origin")
!5 = !DISubroutineType(types: !6)
!6 = !{}
!7 = !DILocation(line: 8, column: 5, scope: !8)
!8 = !DILexicalBlockFile(scope: !3, file: !4, discriminator: 0)
!9 = !DILocation(line: 9, column: 5, scope: !8)
!10 = !DILocation(line: 10, column: 5, scope: !8)
!11 = !DILocation(line: 12, column: 10, scope: !8)
!12 = !DILocation(line: 13, column: 10, scope: !8)
!13 = !DILocation(line: 14, column: 10, scope: !8)
!14 = !DILocation(line: 15, column: 10, scope: !8)
!15 = !DILocation(line: 16, column: 10, scope: !8)
!16 = !DILocation(line: 17, column: 5, scope: !8)
!17 = !DILocation(line: 18, column: 5, scope: !8)
