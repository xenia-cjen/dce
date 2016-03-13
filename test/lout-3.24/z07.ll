; ModuleID = 'z07.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.0 = type { i8, i8, i8 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.2 = type { i8, i8, i16 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [32 x i8] c"SplitIsDefinite: x not a SPLIT!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"DisposeObject: x has a parent!\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_tmp = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"CopyObject: PAR child!\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"CopyObject: CLOSURE!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.7 = private unnamed_addr constant [12 x i8] c"CopyObject:\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"InsertObject:\00", align 1
@.str.9 = private unnamed_addr constant [22 x i8] c"Meld: type(x) != ACAT\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"Meld: type(y) != ACAT\00", align 1
@.str.11 = private unnamed_addr constant [43 x i8] c"%s: maximum paragraph length (%d) exceeded\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.13 = private unnamed_addr constant [34 x i8] c"NextDefiniteWithGap: g == nilobj!\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"1s\00", align 1
@.str.15 = private unnamed_addr constant [9 x i8] c"Meld: g!\00", align 1
@.str.16 = private unnamed_addr constant [38 x i8] c"DisposeSplitObject: type(x) != SPLIT!\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c"DisposeSplitObject: x has no children!\00", align 1
@.str.18 = private unnamed_addr constant [37 x i8] c"DisposeSplitObject: x has one child!\00", align 1
@.str.19 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: children!\00", align 1
@.str.20 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: link (a)!\00", align 1
@.str.21 = private unnamed_addr constant [30 x i8] c"DisposeSplitObject: link (b)!\00", align 1

; Function Attrs: nounwind uwtable
define i32 @SplitIsDefinite(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %y1 = alloca %union.rec*, align 8
  %y2 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 0
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 1
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %y1, align 8
  br label %25

; <label>:25                                      ; preds = %35, %13
  %26 = load %union.rec*, %union.rec** %y1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 1
  %29 = bitcast %union.FIRST_UNION* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %42

; <label>:34                                      ; preds = %25
  br label %35

; <label>:35                                      ; preds = %34
  %36 = load %union.rec*, %union.rec** %y1, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 1
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %y1, align 8
  br label %25

; <label>:42                                      ; preds = %25
  %43 = load %union.rec*, %union.rec** %1, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 0
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %y2, align 8
  br label %54

; <label>:54                                      ; preds = %64, %42
  %55 = load %union.rec*, %union.rec** %y2, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %71

; <label>:63                                      ; preds = %54
  br label %64

; <label>:64                                      ; preds = %63
  %65 = load %union.rec*, %union.rec** %y2, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 1
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %y2, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load %union.rec*, %union.rec** %y1, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 1
  %75 = bitcast %union.FIRST_UNION* %74 to %struct.anon*
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp sge i32 %78, 9
  br i1 %79, label %80, label %109

; <label>:80                                      ; preds = %71
  %81 = load %union.rec*, %union.rec** %y1, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 1
  %84 = bitcast %union.FIRST_UNION* %83 to %struct.anon*
  %85 = getelementptr inbounds %struct.anon, %struct.anon* %84, i32 0, i32 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp sle i32 %87, 99
  br i1 %88, label %89, label %109

; <label>:89                                      ; preds = %80
  %90 = load %union.rec*, %union.rec** %y2, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 1
  %93 = bitcast %union.FIRST_UNION* %92 to %struct.anon*
  %94 = getelementptr inbounds %struct.anon, %struct.anon* %93, i32 0, i32 0
  %95 = load i8, i8* %94, align 1
  %96 = zext i8 %95 to i32
  %97 = icmp sge i32 %96, 9
  br i1 %97, label %98, label %107

; <label>:98                                      ; preds = %89
  %99 = load %union.rec*, %union.rec** %y2, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 1
  %102 = bitcast %union.FIRST_UNION* %101 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp sle i32 %105, 99
  br label %107

; <label>:107                                     ; preds = %98, %89
  %108 = phi i1 [ false, %89 ], [ %106, %98 ]
  br label %109

; <label>:109                                     ; preds = %107, %80, %71
  %110 = phi i1 [ false, %80 ], [ false, %71 ], [ %108, %107 ]
  %111 = zext i1 %110 to i32
  ret i32 %111
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @DisposeObject(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 1
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = load %union.rec*, %union.rec** %1, align 8
  %9 = icmp eq %union.rec* %7, %8
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 1
  %17 = bitcast %union.FIRST_UNION* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp eq i32 %20, 9
  br i1 %21, label %22, label %24

; <label>:22                                      ; preds = %13
  %23 = load %union.rec*, %union.rec** %1, align 8
  call void @DisposeSplitObject(%union.rec* %23)
  br label %266

; <label>:24                                      ; preds = %13
  br label %25

; <label>:25                                      ; preds = %211, %24
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = icmp ne %union.rec* %31, %32
  br i1 %33, label %34, label %212

; <label>:34                                      ; preds = %25
  %35 = load %union.rec*, %union.rec** %1, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** @xx_link, align 8
  %41 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %41, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 1
  %47 = load %union.rec*, %union.rec** %46, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %49 = icmp eq %union.rec* %47, %48
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %34
  br label %92

; <label>:51                                      ; preds = %34
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 1
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %56, align 8
  store %union.rec* %57, %union.rec** @zz_res, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %60, i32 0, i64 1
  %62 = getelementptr inbounds %struct.LIST, %struct.LIST* %61, i32 0, i32 0
  %63 = load %union.rec*, %union.rec** %62, align 8
  %64 = load %union.rec*, %union.rec** @zz_res, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 0
  store %union.rec* %63, %union.rec** %68, align 8
  %69 = load %union.rec*, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 0
  %73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %72, i32 0, i64 1
  %74 = getelementptr inbounds %struct.LIST, %struct.LIST* %73, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %74, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 0
  %78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %77, i32 0, i64 1
  %79 = getelementptr inbounds %struct.LIST, %struct.LIST* %78, i32 0, i32 1
  store %union.rec* %69, %union.rec** %79, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 1
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 1
  store %union.rec* %80, %union.rec** %85, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 1
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 0
  store %union.rec* %80, %union.rec** %90, align 8
  %91 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %92

; <label>:92                                      ; preds = %51, %50
  %93 = phi %union.rec* [ null, %50 ], [ %91, %51 ]
  store %union.rec* %93, %union.rec** @xx_tmp, align 8
  %94 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 0
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 1
  %100 = load %union.rec*, %union.rec** %99, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = icmp eq %union.rec* %100, %101
  br i1 %102, label %103, label %104

; <label>:103                                     ; preds = %92
  br label %145

; <label>:104                                     ; preds = %92
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 0
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 1
  %110 = load %union.rec*, %union.rec** %109, align 8
  store %union.rec* %110, %union.rec** @zz_res, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 0
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 0
  %116 = load %union.rec*, %union.rec** %115, align 8
  %117 = load %union.rec*, %union.rec** @zz_res, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 0
  %120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %119, i32 0, i64 0
  %121 = getelementptr inbounds %struct.LIST, %struct.LIST* %120, i32 0, i32 0
  store %union.rec* %116, %union.rec** %121, align 8
  %122 = load %union.rec*, %union.rec** @zz_res, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 0
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %127, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 1
  store %union.rec* %122, %union.rec** %132, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 0
  %137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %136, i32 0, i64 0
  %138 = getelementptr inbounds %struct.LIST, %struct.LIST* %137, i32 0, i32 1
  store %union.rec* %133, %union.rec** %138, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 0
  %142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %141, i32 0, i64 0
  %143 = getelementptr inbounds %struct.LIST, %struct.LIST* %142, i32 0, i32 0
  store %union.rec* %133, %union.rec** %143, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %145

; <label>:145                                     ; preds = %104, %103
  %146 = phi %union.rec* [ null, %103 ], [ %144, %104 ]
  %147 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %147, %union.rec** @zz_hold, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %148, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 1
  %152 = bitcast %union.FIRST_UNION* %151 to %struct.anon*
  %153 = getelementptr inbounds %struct.anon, %struct.anon* %152, i32 0, i32 0
  %154 = load i8, i8* %153, align 1
  %155 = zext i8 %154 to i32
  %156 = icmp eq i32 %155, 11
  br i1 %156, label %166, label %157

; <label>:157                                     ; preds = %145
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 1
  %161 = bitcast %union.FIRST_UNION* %160 to %struct.anon*
  %162 = getelementptr inbounds %struct.anon, %struct.anon* %161, i32 0, i32 0
  %163 = load i8, i8* %162, align 1
  %164 = zext i8 %163 to i32
  %165 = icmp eq i32 %164, 12
  br i1 %165, label %166, label %174

; <label>:166                                     ; preds = %157, %145
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 1
  %170 = bitcast %union.FIRST_UNION* %169 to %struct.anon*
  %171 = getelementptr inbounds %struct.anon, %struct.anon* %170, i32 0, i32 1
  %172 = load i8, i8* %171, align 1
  %173 = zext i8 %172 to i32
  br label %185

; <label>:174                                     ; preds = %157
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 1
  %178 = bitcast %union.FIRST_UNION* %177 to %struct.anon*
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  %180 = load i8, i8* %179, align 1
  %181 = zext i8 %180 to i64
  %182 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %181
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  br label %185

; <label>:185                                     ; preds = %174, %166
  %186 = phi i32 [ %173, %166 ], [ %184, %174 ]
  store i32 %186, i32* @zz_size, align 4
  %187 = load i32, i32* @zz_size, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %188
  %190 = load %union.rec*, %union.rec** %189, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 0
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 0
  store %union.rec* %190, %union.rec** %195, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = load i32, i32* @zz_size, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %198
  store %union.rec* %196, %union.rec** %199, align 8
  %200 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 0
  %203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %202, i32 0, i64 1
  %204 = getelementptr inbounds %struct.LIST, %struct.LIST* %203, i32 0, i32 1
  %205 = load %union.rec*, %union.rec** %204, align 8
  %206 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %207 = icmp eq %union.rec* %205, %206
  br i1 %207, label %208, label %211

; <label>:208                                     ; preds = %185
  %209 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %210 = call i32 @DisposeObject(%union.rec* %209)
  br label %211

; <label>:211                                     ; preds = %208, %185
  br label %25

; <label>:212                                     ; preds = %25
  %213 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %214, %union.rec** @zz_hold, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 1
  %218 = bitcast %union.FIRST_UNION* %217 to %struct.anon*
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 0
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 11
  br i1 %222, label %232, label %223

; <label>:223                                     ; preds = %212
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 1
  %227 = bitcast %union.FIRST_UNION* %226 to %struct.anon*
  %228 = getelementptr inbounds %struct.anon, %struct.anon* %227, i32 0, i32 0
  %229 = load i8, i8* %228, align 1
  %230 = zext i8 %229 to i32
  %231 = icmp eq i32 %230, 12
  br i1 %231, label %232, label %240

; <label>:232                                     ; preds = %223, %212
  %233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 1
  %236 = bitcast %union.FIRST_UNION* %235 to %struct.anon*
  %237 = getelementptr inbounds %struct.anon, %struct.anon* %236, i32 0, i32 1
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  br label %251

; <label>:240                                     ; preds = %223
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 1
  %244 = bitcast %union.FIRST_UNION* %243 to %struct.anon*
  %245 = getelementptr inbounds %struct.anon, %struct.anon* %244, i32 0, i32 0
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i64
  %248 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %247
  %249 = load i8, i8* %248, align 1
  %250 = zext i8 %249 to i32
  br label %251

; <label>:251                                     ; preds = %240, %232
  %252 = phi i32 [ %239, %232 ], [ %250, %240 ]
  store i32 %252, i32* @zz_size, align 4
  %253 = load i32, i32* @zz_size, align 4
  %254 = sext i32 %253 to i64
  %255 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %254
  %256 = load %union.rec*, %union.rec** %255, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  store %union.rec* %256, %union.rec** %261, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %263 = load i32, i32* @zz_size, align 4
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %264
  store %union.rec* %262, %union.rec** %265, align 8
  br label %266

; <label>:266                                     ; preds = %251, %22
  ret i32 0
}

; Function Attrs: nounwind uwtable
define internal void @DisposeSplitObject(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %uplink = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 9
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.16, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 0
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 1
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = icmp ne %union.rec* %19, %20
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %13
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %22, %13
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 0
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %36, align 8
  %38 = icmp ne %union.rec* %31, %37
  br i1 %38, label %42, label %39

; <label>:39                                      ; preds = %25
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %41 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.18, i32 0, i32 0))
  br label %42

; <label>:42                                      ; preds = %39, %25
  %43 = load %union.rec*, %union.rec** %1, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 0
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = load %union.rec*, %union.rec** %1, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %51, i32 0, i64 0
  %53 = getelementptr inbounds %struct.LIST, %struct.LIST* %52, i32 0, i32 1
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 0
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %58, align 8
  %60 = icmp eq %union.rec* %48, %59
  br i1 %60, label %64, label %61

; <label>:61                                      ; preds = %42
  %62 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %63 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %62, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.19, i32 0, i32 0))
  br label %64

; <label>:64                                      ; preds = %61, %42
  %65 = load %union.rec*, %union.rec** %1, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 0
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 1
  %70 = load %union.rec*, %union.rec** %69, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 0
  %73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %72, i32 0, i64 1
  %74 = getelementptr inbounds %struct.LIST, %struct.LIST* %73, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %74, align 8
  store %union.rec* %75, %union.rec** %y, align 8
  store i32 1, i32* %count, align 4
  br label %76

; <label>:76                                      ; preds = %86, %64
  %77 = load %union.rec*, %union.rec** %y, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %95

; <label>:85                                      ; preds = %76
  br label %86

; <label>:86                                      ; preds = %85
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %89, i32 0, i64 1
  %91 = getelementptr inbounds %struct.LIST, %struct.LIST* %90, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %91, align 8
  store %union.rec* %92, %union.rec** %y, align 8
  %93 = load i32, i32* %count, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %count, align 4
  br label %76

; <label>:95                                      ; preds = %76
  %96 = load %union.rec*, %union.rec** %y, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 1
  %99 = bitcast %union.FIRST_UNION* %98 to %struct.anon*
  %100 = getelementptr inbounds %struct.anon, %struct.anon* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 16
  br i1 %103, label %104, label %331

; <label>:104                                     ; preds = %95
  %105 = load %union.rec*, %union.rec** %y, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 0
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 1
  %110 = load %union.rec*, %union.rec** %109, align 8
  store %union.rec* %110, %union.rec** %link, align 8
  %111 = load %union.rec*, %union.rec** %y, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 1
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 1
  %116 = load %union.rec*, %union.rec** %115, align 8
  store %union.rec* %116, %union.rec** %uplink, align 8
  store i32 1, i32* %i, align 4
  br label %117

; <label>:117                                     ; preds = %132, %104
  %118 = load %union.rec*, %union.rec** %link, align 8
  %119 = load %union.rec*, %union.rec** %y, align 8
  %120 = icmp ne %union.rec* %118, %119
  br i1 %120, label %121, label %129

; <label>:121                                     ; preds = %117
  %122 = load %union.rec*, %union.rec** %uplink, align 8
  %123 = load %union.rec*, %union.rec** %y, align 8
  %124 = icmp ne %union.rec* %122, %123
  br i1 %124, label %125, label %129

; <label>:125                                     ; preds = %121
  %126 = load i32, i32* %i, align 4
  %127 = load i32, i32* %count, align 4
  %128 = icmp slt i32 %126, %127
  br label %129

; <label>:129                                     ; preds = %125, %121, %117
  %130 = phi i1 [ false, %121 ], [ false, %117 ], [ %128, %125 ]
  br i1 %130, label %131, label %147

; <label>:131                                     ; preds = %129
  br label %132

; <label>:132                                     ; preds = %131
  %133 = load %union.rec*, %union.rec** %link, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 0
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 1
  %138 = load %union.rec*, %union.rec** %137, align 8
  store %union.rec* %138, %union.rec** %link, align 8
  %139 = load %union.rec*, %union.rec** %uplink, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 0
  %142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %141, i32 0, i64 1
  %143 = getelementptr inbounds %struct.LIST, %struct.LIST* %142, i32 0, i32 1
  %144 = load %union.rec*, %union.rec** %143, align 8
  store %union.rec* %144, %union.rec** %uplink, align 8
  %145 = load i32, i32* %i, align 4
  %146 = add nsw i32 %145, 1
  store i32 %146, i32* %i, align 4
  br label %117

; <label>:147                                     ; preds = %129
  %148 = load %union.rec*, %union.rec** %link, align 8
  %149 = load %union.rec*, %union.rec** %y, align 8
  %150 = icmp ne %union.rec* %148, %149
  br i1 %150, label %151, label %155

; <label>:151                                     ; preds = %147
  %152 = load %union.rec*, %union.rec** %uplink, align 8
  %153 = load %union.rec*, %union.rec** %y, align 8
  %154 = icmp ne %union.rec* %152, %153
  br i1 %154, label %158, label %155

; <label>:155                                     ; preds = %151, %147
  %156 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %156, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.20, i32 0, i32 0))
  br label %158

; <label>:158                                     ; preds = %155, %151
  %159 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %159, %union.rec** @xx_link, align 8
  %160 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %160, %union.rec** @zz_hold, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 0
  %164 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %163, i32 0, i64 1
  %165 = getelementptr inbounds %struct.LIST, %struct.LIST* %164, i32 0, i32 1
  %166 = load %union.rec*, %union.rec** %165, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = icmp eq %union.rec* %166, %167
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %158
  br label %211

; <label>:170                                     ; preds = %158
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %173, i32 0, i64 1
  %175 = getelementptr inbounds %struct.LIST, %struct.LIST* %174, i32 0, i32 1
  %176 = load %union.rec*, %union.rec** %175, align 8
  store %union.rec* %176, %union.rec** @zz_res, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %179, i32 0, i64 1
  %181 = getelementptr inbounds %struct.LIST, %struct.LIST* %180, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %181, align 8
  %183 = load %union.rec*, %union.rec** @zz_res, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 0
  %186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %185, i32 0, i64 1
  %187 = getelementptr inbounds %struct.LIST, %struct.LIST* %186, i32 0, i32 0
  store %union.rec* %182, %union.rec** %187, align 8
  %188 = load %union.rec*, %union.rec** @zz_res, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %191, i32 0, i64 1
  %193 = getelementptr inbounds %struct.LIST, %struct.LIST* %192, i32 0, i32 0
  %194 = load %union.rec*, %union.rec** %193, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 0
  %197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %196, i32 0, i64 1
  %198 = getelementptr inbounds %struct.LIST, %struct.LIST* %197, i32 0, i32 1
  store %union.rec* %188, %union.rec** %198, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 0
  %203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %202, i32 0, i64 1
  %204 = getelementptr inbounds %struct.LIST, %struct.LIST* %203, i32 0, i32 1
  store %union.rec* %199, %union.rec** %204, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 0
  %208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %207, i32 0, i64 1
  %209 = getelementptr inbounds %struct.LIST, %struct.LIST* %208, i32 0, i32 0
  store %union.rec* %199, %union.rec** %209, align 8
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %211

; <label>:211                                     ; preds = %170, %169
  %212 = phi %union.rec* [ null, %169 ], [ %210, %170 ]
  store %union.rec* %212, %union.rec** @xx_tmp, align 8
  %213 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %213, %union.rec** @zz_hold, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 0
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 1
  %219 = load %union.rec*, %union.rec** %218, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %221 = icmp eq %union.rec* %219, %220
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %211
  br label %264

; <label>:223                                     ; preds = %211
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 1
  %229 = load %union.rec*, %union.rec** %228, align 8
  store %union.rec* %229, %union.rec** @zz_res, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %231 = bitcast %union.rec* %230 to %struct.word_type*
  %232 = getelementptr inbounds %struct.word_type, %struct.word_type* %231, i32 0, i32 0
  %233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %232, i32 0, i64 0
  %234 = getelementptr inbounds %struct.LIST, %struct.LIST* %233, i32 0, i32 0
  %235 = load %union.rec*, %union.rec** %234, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 0
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 0
  store %union.rec* %235, %union.rec** %240, align 8
  %241 = load %union.rec*, %union.rec** @zz_res, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 0
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 0
  %247 = load %union.rec*, %union.rec** %246, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 0
  %250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %249, i32 0, i64 0
  %251 = getelementptr inbounds %struct.LIST, %struct.LIST* %250, i32 0, i32 1
  store %union.rec* %241, %union.rec** %251, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 0
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 1
  store %union.rec* %252, %union.rec** %257, align 8
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 0
  %261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %260, i32 0, i64 0
  %262 = getelementptr inbounds %struct.LIST, %struct.LIST* %261, i32 0, i32 0
  store %union.rec* %252, %union.rec** %262, align 8
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %264

; <label>:264                                     ; preds = %223, %222
  %265 = phi %union.rec* [ null, %222 ], [ %263, %223 ]
  %266 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %266, %union.rec** @zz_hold, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %267, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 1
  %271 = bitcast %union.FIRST_UNION* %270 to %struct.anon*
  %272 = getelementptr inbounds %struct.anon, %struct.anon* %271, i32 0, i32 0
  %273 = load i8, i8* %272, align 1
  %274 = zext i8 %273 to i32
  %275 = icmp eq i32 %274, 11
  br i1 %275, label %285, label %276

; <label>:276                                     ; preds = %264
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 1
  %280 = bitcast %union.FIRST_UNION* %279 to %struct.anon*
  %281 = getelementptr inbounds %struct.anon, %struct.anon* %280, i32 0, i32 0
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  %284 = icmp eq i32 %283, 12
  br i1 %284, label %285, label %293

; <label>:285                                     ; preds = %276, %264
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 1
  %289 = bitcast %union.FIRST_UNION* %288 to %struct.anon*
  %290 = getelementptr inbounds %struct.anon, %struct.anon* %289, i32 0, i32 1
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  br label %304

; <label>:293                                     ; preds = %276
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 1
  %297 = bitcast %union.FIRST_UNION* %296 to %struct.anon*
  %298 = getelementptr inbounds %struct.anon, %struct.anon* %297, i32 0, i32 0
  %299 = load i8, i8* %298, align 1
  %300 = zext i8 %299 to i64
  %301 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %300
  %302 = load i8, i8* %301, align 1
  %303 = zext i8 %302 to i32
  br label %304

; <label>:304                                     ; preds = %293, %285
  %305 = phi i32 [ %292, %285 ], [ %303, %293 ]
  store i32 %305, i32* @zz_size, align 4
  %306 = load i32, i32* @zz_size, align 4
  %307 = sext i32 %306 to i64
  %308 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %307
  %309 = load %union.rec*, %union.rec** %308, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 0
  %313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %312, i32 0, i64 0
  %314 = getelementptr inbounds %struct.LIST, %struct.LIST* %313, i32 0, i32 0
  store %union.rec* %309, %union.rec** %314, align 8
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %316 = load i32, i32* @zz_size, align 4
  %317 = sext i32 %316 to i64
  %318 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %317
  store %union.rec* %315, %union.rec** %318, align 8
  %319 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 0
  %322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %321, i32 0, i64 1
  %323 = getelementptr inbounds %struct.LIST, %struct.LIST* %322, i32 0, i32 1
  %324 = load %union.rec*, %union.rec** %323, align 8
  %325 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %326 = icmp eq %union.rec* %324, %325
  br i1 %326, label %327, label %330

; <label>:327                                     ; preds = %304
  %328 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %329 = call i32 @DisposeObject(%union.rec* %328)
  br label %330

; <label>:330                                     ; preds = %327, %304
  br label %331

; <label>:331                                     ; preds = %330, %95
  %332 = load %union.rec*, %union.rec** %1, align 8
  %333 = bitcast %union.rec* %332 to %struct.word_type*
  %334 = getelementptr inbounds %struct.word_type, %struct.word_type* %333, i32 0, i32 0
  %335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %334, i32 0, i64 0
  %336 = getelementptr inbounds %struct.LIST, %struct.LIST* %335, i32 0, i32 1
  %337 = load %union.rec*, %union.rec** %336, align 8
  store %union.rec* %337, %union.rec** @xx_link, align 8
  %338 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 0
  %342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %341, i32 0, i64 1
  %343 = getelementptr inbounds %struct.LIST, %struct.LIST* %342, i32 0, i32 1
  %344 = load %union.rec*, %union.rec** %343, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %346 = icmp eq %union.rec* %344, %345
  br i1 %346, label %347, label %348

; <label>:347                                     ; preds = %331
  br label %389

; <label>:348                                     ; preds = %331
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 0
  %352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %351, i32 0, i64 1
  %353 = getelementptr inbounds %struct.LIST, %struct.LIST* %352, i32 0, i32 1
  %354 = load %union.rec*, %union.rec** %353, align 8
  store %union.rec* %354, %union.rec** @zz_res, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %356 = bitcast %union.rec* %355 to %struct.word_type*
  %357 = getelementptr inbounds %struct.word_type, %struct.word_type* %356, i32 0, i32 0
  %358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %357, i32 0, i64 1
  %359 = getelementptr inbounds %struct.LIST, %struct.LIST* %358, i32 0, i32 0
  %360 = load %union.rec*, %union.rec** %359, align 8
  %361 = load %union.rec*, %union.rec** @zz_res, align 8
  %362 = bitcast %union.rec* %361 to %struct.word_type*
  %363 = getelementptr inbounds %struct.word_type, %struct.word_type* %362, i32 0, i32 0
  %364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %363, i32 0, i64 1
  %365 = getelementptr inbounds %struct.LIST, %struct.LIST* %364, i32 0, i32 0
  store %union.rec* %360, %union.rec** %365, align 8
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 1
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 0
  %372 = load %union.rec*, %union.rec** %371, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 0
  %375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %374, i32 0, i64 1
  %376 = getelementptr inbounds %struct.LIST, %struct.LIST* %375, i32 0, i32 1
  store %union.rec* %366, %union.rec** %376, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = bitcast %union.rec* %378 to %struct.word_type*
  %380 = getelementptr inbounds %struct.word_type, %struct.word_type* %379, i32 0, i32 0
  %381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %380, i32 0, i64 1
  %382 = getelementptr inbounds %struct.LIST, %struct.LIST* %381, i32 0, i32 1
  store %union.rec* %377, %union.rec** %382, align 8
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 0
  %386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %385, i32 0, i64 1
  %387 = getelementptr inbounds %struct.LIST, %struct.LIST* %386, i32 0, i32 0
  store %union.rec* %377, %union.rec** %387, align 8
  %388 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %389

; <label>:389                                     ; preds = %348, %347
  %390 = phi %union.rec* [ null, %347 ], [ %388, %348 ]
  store %union.rec* %390, %union.rec** @xx_tmp, align 8
  %391 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %391, %union.rec** @zz_hold, align 8
  %392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 0
  %395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %394, i32 0, i64 0
  %396 = getelementptr inbounds %struct.LIST, %struct.LIST* %395, i32 0, i32 1
  %397 = load %union.rec*, %union.rec** %396, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = icmp eq %union.rec* %397, %398
  br i1 %399, label %400, label %401

; <label>:400                                     ; preds = %389
  br label %442

; <label>:401                                     ; preds = %389
  %402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 0
  %405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %404, i32 0, i64 0
  %406 = getelementptr inbounds %struct.LIST, %struct.LIST* %405, i32 0, i32 1
  %407 = load %union.rec*, %union.rec** %406, align 8
  store %union.rec* %407, %union.rec** @zz_res, align 8
  %408 = load %union.rec*, %union.rec** @zz_hold, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 0
  %411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %410, i32 0, i64 0
  %412 = getelementptr inbounds %struct.LIST, %struct.LIST* %411, i32 0, i32 0
  %413 = load %union.rec*, %union.rec** %412, align 8
  %414 = load %union.rec*, %union.rec** @zz_res, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 0
  %417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %416, i32 0, i64 0
  %418 = getelementptr inbounds %struct.LIST, %struct.LIST* %417, i32 0, i32 0
  store %union.rec* %413, %union.rec** %418, align 8
  %419 = load %union.rec*, %union.rec** @zz_res, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 0
  %423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %422, i32 0, i64 0
  %424 = getelementptr inbounds %struct.LIST, %struct.LIST* %423, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %424, align 8
  %426 = bitcast %union.rec* %425 to %struct.word_type*
  %427 = getelementptr inbounds %struct.word_type, %struct.word_type* %426, i32 0, i32 0
  %428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %427, i32 0, i64 0
  %429 = getelementptr inbounds %struct.LIST, %struct.LIST* %428, i32 0, i32 1
  store %union.rec* %419, %union.rec** %429, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 0
  %434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %433, i32 0, i64 0
  %435 = getelementptr inbounds %struct.LIST, %struct.LIST* %434, i32 0, i32 1
  store %union.rec* %430, %union.rec** %435, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 0
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 0
  store %union.rec* %430, %union.rec** %440, align 8
  %441 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %442

; <label>:442                                     ; preds = %401, %400
  %443 = phi %union.rec* [ null, %400 ], [ %441, %401 ]
  %444 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %444, %union.rec** @zz_hold, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %445, %union.rec** @zz_hold, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 1
  %449 = bitcast %union.FIRST_UNION* %448 to %struct.anon*
  %450 = getelementptr inbounds %struct.anon, %struct.anon* %449, i32 0, i32 0
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp eq i32 %452, 11
  br i1 %453, label %463, label %454

; <label>:454                                     ; preds = %442
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 1
  %458 = bitcast %union.FIRST_UNION* %457 to %struct.anon*
  %459 = getelementptr inbounds %struct.anon, %struct.anon* %458, i32 0, i32 0
  %460 = load i8, i8* %459, align 1
  %461 = zext i8 %460 to i32
  %462 = icmp eq i32 %461, 12
  br i1 %462, label %463, label %471

; <label>:463                                     ; preds = %454, %442
  %464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %465 = bitcast %union.rec* %464 to %struct.word_type*
  %466 = getelementptr inbounds %struct.word_type, %struct.word_type* %465, i32 0, i32 1
  %467 = bitcast %union.FIRST_UNION* %466 to %struct.anon*
  %468 = getelementptr inbounds %struct.anon, %struct.anon* %467, i32 0, i32 1
  %469 = load i8, i8* %468, align 1
  %470 = zext i8 %469 to i32
  br label %482

; <label>:471                                     ; preds = %454
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 1
  %475 = bitcast %union.FIRST_UNION* %474 to %struct.anon*
  %476 = getelementptr inbounds %struct.anon, %struct.anon* %475, i32 0, i32 0
  %477 = load i8, i8* %476, align 1
  %478 = zext i8 %477 to i64
  %479 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %478
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  br label %482

; <label>:482                                     ; preds = %471, %463
  %483 = phi i32 [ %470, %463 ], [ %481, %471 ]
  store i32 %483, i32* @zz_size, align 4
  %484 = load i32, i32* @zz_size, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %485
  %487 = load %union.rec*, %union.rec** %486, align 8
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %489 = bitcast %union.rec* %488 to %struct.word_type*
  %490 = getelementptr inbounds %struct.word_type, %struct.word_type* %489, i32 0, i32 0
  %491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %490, i32 0, i64 0
  %492 = getelementptr inbounds %struct.LIST, %struct.LIST* %491, i32 0, i32 0
  store %union.rec* %487, %union.rec** %492, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = load i32, i32* @zz_size, align 4
  %495 = sext i32 %494 to i64
  %496 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %495
  store %union.rec* %493, %union.rec** %496, align 8
  %497 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 0
  %500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %499, i32 0, i64 1
  %501 = getelementptr inbounds %struct.LIST, %struct.LIST* %500, i32 0, i32 1
  %502 = load %union.rec*, %union.rec** %501, align 8
  %503 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %504 = icmp eq %union.rec* %502, %503
  br i1 %504, label %505, label %508

; <label>:505                                     ; preds = %482
  %506 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %507 = call i32 @DisposeObject(%union.rec* %506)
  br label %508

; <label>:508                                     ; preds = %505, %482
  %509 = load %union.rec*, %union.rec** %1, align 8
  %510 = bitcast %union.rec* %509 to %struct.word_type*
  %511 = getelementptr inbounds %struct.word_type, %struct.word_type* %510, i32 0, i32 0
  %512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %511, i32 0, i64 0
  %513 = getelementptr inbounds %struct.LIST, %struct.LIST* %512, i32 0, i32 0
  %514 = load %union.rec*, %union.rec** %513, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 1
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 0
  %519 = load %union.rec*, %union.rec** %518, align 8
  store %union.rec* %519, %union.rec** %y, align 8
  store i32 1, i32* %count, align 4
  br label %520

; <label>:520                                     ; preds = %530, %508
  %521 = load %union.rec*, %union.rec** %y, align 8
  %522 = bitcast %union.rec* %521 to %struct.word_type*
  %523 = getelementptr inbounds %struct.word_type, %struct.word_type* %522, i32 0, i32 1
  %524 = bitcast %union.FIRST_UNION* %523 to %struct.anon*
  %525 = getelementptr inbounds %struct.anon, %struct.anon* %524, i32 0, i32 0
  %526 = load i8, i8* %525, align 1
  %527 = zext i8 %526 to i32
  %528 = icmp eq i32 %527, 0
  br i1 %528, label %529, label %539

; <label>:529                                     ; preds = %520
  br label %530

; <label>:530                                     ; preds = %529
  %531 = load %union.rec*, %union.rec** %y, align 8
  %532 = bitcast %union.rec* %531 to %struct.word_type*
  %533 = getelementptr inbounds %struct.word_type, %struct.word_type* %532, i32 0, i32 0
  %534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %533, i32 0, i64 1
  %535 = getelementptr inbounds %struct.LIST, %struct.LIST* %534, i32 0, i32 0
  %536 = load %union.rec*, %union.rec** %535, align 8
  store %union.rec* %536, %union.rec** %y, align 8
  %537 = load i32, i32* %count, align 4
  %538 = add nsw i32 %537, 1
  store i32 %538, i32* %count, align 4
  br label %520

; <label>:539                                     ; preds = %520
  %540 = load %union.rec*, %union.rec** %y, align 8
  %541 = bitcast %union.rec* %540 to %struct.word_type*
  %542 = getelementptr inbounds %struct.word_type, %struct.word_type* %541, i32 0, i32 1
  %543 = bitcast %union.FIRST_UNION* %542 to %struct.anon*
  %544 = getelementptr inbounds %struct.anon, %struct.anon* %543, i32 0, i32 0
  %545 = load i8, i8* %544, align 1
  %546 = zext i8 %545 to i32
  %547 = icmp eq i32 %546, 15
  br i1 %547, label %548, label %775

; <label>:548                                     ; preds = %539
  %549 = load %union.rec*, %union.rec** %y, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 0
  %552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %551, i32 0, i64 0
  %553 = getelementptr inbounds %struct.LIST, %struct.LIST* %552, i32 0, i32 1
  %554 = load %union.rec*, %union.rec** %553, align 8
  store %union.rec* %554, %union.rec** %link, align 8
  %555 = load %union.rec*, %union.rec** %y, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 1
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 1
  %560 = load %union.rec*, %union.rec** %559, align 8
  store %union.rec* %560, %union.rec** %uplink, align 8
  store i32 1, i32* %i, align 4
  br label %561

; <label>:561                                     ; preds = %576, %548
  %562 = load %union.rec*, %union.rec** %link, align 8
  %563 = load %union.rec*, %union.rec** %y, align 8
  %564 = icmp ne %union.rec* %562, %563
  br i1 %564, label %565, label %573

; <label>:565                                     ; preds = %561
  %566 = load %union.rec*, %union.rec** %uplink, align 8
  %567 = load %union.rec*, %union.rec** %y, align 8
  %568 = icmp ne %union.rec* %566, %567
  br i1 %568, label %569, label %573

; <label>:569                                     ; preds = %565
  %570 = load i32, i32* %i, align 4
  %571 = load i32, i32* %count, align 4
  %572 = icmp slt i32 %570, %571
  br label %573

; <label>:573                                     ; preds = %569, %565, %561
  %574 = phi i1 [ false, %565 ], [ false, %561 ], [ %572, %569 ]
  br i1 %574, label %575, label %591

; <label>:575                                     ; preds = %573
  br label %576

; <label>:576                                     ; preds = %575
  %577 = load %union.rec*, %union.rec** %link, align 8
  %578 = bitcast %union.rec* %577 to %struct.word_type*
  %579 = getelementptr inbounds %struct.word_type, %struct.word_type* %578, i32 0, i32 0
  %580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %579, i32 0, i64 0
  %581 = getelementptr inbounds %struct.LIST, %struct.LIST* %580, i32 0, i32 1
  %582 = load %union.rec*, %union.rec** %581, align 8
  store %union.rec* %582, %union.rec** %link, align 8
  %583 = load %union.rec*, %union.rec** %uplink, align 8
  %584 = bitcast %union.rec* %583 to %struct.word_type*
  %585 = getelementptr inbounds %struct.word_type, %struct.word_type* %584, i32 0, i32 0
  %586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %585, i32 0, i64 1
  %587 = getelementptr inbounds %struct.LIST, %struct.LIST* %586, i32 0, i32 1
  %588 = load %union.rec*, %union.rec** %587, align 8
  store %union.rec* %588, %union.rec** %uplink, align 8
  %589 = load i32, i32* %i, align 4
  %590 = add nsw i32 %589, 1
  store i32 %590, i32* %i, align 4
  br label %561

; <label>:591                                     ; preds = %573
  %592 = load %union.rec*, %union.rec** %link, align 8
  %593 = load %union.rec*, %union.rec** %y, align 8
  %594 = icmp ne %union.rec* %592, %593
  br i1 %594, label %595, label %599

; <label>:595                                     ; preds = %591
  %596 = load %union.rec*, %union.rec** %uplink, align 8
  %597 = load %union.rec*, %union.rec** %y, align 8
  %598 = icmp ne %union.rec* %596, %597
  br i1 %598, label %602, label %599

; <label>:599                                     ; preds = %595, %591
  %600 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %601 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %600, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.21, i32 0, i32 0))
  br label %602

; <label>:602                                     ; preds = %599, %595
  %603 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %603, %union.rec** @xx_link, align 8
  %604 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %604, %union.rec** @zz_hold, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 1
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 1
  %610 = load %union.rec*, %union.rec** %609, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %612 = icmp eq %union.rec* %610, %611
  br i1 %612, label %613, label %614

; <label>:613                                     ; preds = %602
  br label %655

; <label>:614                                     ; preds = %602
  %615 = load %union.rec*, %union.rec** @zz_hold, align 8
  %616 = bitcast %union.rec* %615 to %struct.word_type*
  %617 = getelementptr inbounds %struct.word_type, %struct.word_type* %616, i32 0, i32 0
  %618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %617, i32 0, i64 1
  %619 = getelementptr inbounds %struct.LIST, %struct.LIST* %618, i32 0, i32 1
  %620 = load %union.rec*, %union.rec** %619, align 8
  store %union.rec* %620, %union.rec** @zz_res, align 8
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 0
  %624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %623, i32 0, i64 1
  %625 = getelementptr inbounds %struct.LIST, %struct.LIST* %624, i32 0, i32 0
  %626 = load %union.rec*, %union.rec** %625, align 8
  %627 = load %union.rec*, %union.rec** @zz_res, align 8
  %628 = bitcast %union.rec* %627 to %struct.word_type*
  %629 = getelementptr inbounds %struct.word_type, %struct.word_type* %628, i32 0, i32 0
  %630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %629, i32 0, i64 1
  %631 = getelementptr inbounds %struct.LIST, %struct.LIST* %630, i32 0, i32 0
  store %union.rec* %626, %union.rec** %631, align 8
  %632 = load %union.rec*, %union.rec** @zz_res, align 8
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 0
  %636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %635, i32 0, i64 1
  %637 = getelementptr inbounds %struct.LIST, %struct.LIST* %636, i32 0, i32 0
  %638 = load %union.rec*, %union.rec** %637, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 0
  %641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %640, i32 0, i64 1
  %642 = getelementptr inbounds %struct.LIST, %struct.LIST* %641, i32 0, i32 1
  store %union.rec* %632, %union.rec** %642, align 8
  %643 = load %union.rec*, %union.rec** @zz_hold, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %645 = bitcast %union.rec* %644 to %struct.word_type*
  %646 = getelementptr inbounds %struct.word_type, %struct.word_type* %645, i32 0, i32 0
  %647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %646, i32 0, i64 1
  %648 = getelementptr inbounds %struct.LIST, %struct.LIST* %647, i32 0, i32 1
  store %union.rec* %643, %union.rec** %648, align 8
  %649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %650 = bitcast %union.rec* %649 to %struct.word_type*
  %651 = getelementptr inbounds %struct.word_type, %struct.word_type* %650, i32 0, i32 0
  %652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %651, i32 0, i64 1
  %653 = getelementptr inbounds %struct.LIST, %struct.LIST* %652, i32 0, i32 0
  store %union.rec* %643, %union.rec** %653, align 8
  %654 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %655

; <label>:655                                     ; preds = %614, %613
  %656 = phi %union.rec* [ null, %613 ], [ %654, %614 ]
  store %union.rec* %656, %union.rec** @xx_tmp, align 8
  %657 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %657, %union.rec** @zz_hold, align 8
  %658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %659 = bitcast %union.rec* %658 to %struct.word_type*
  %660 = getelementptr inbounds %struct.word_type, %struct.word_type* %659, i32 0, i32 0
  %661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %660, i32 0, i64 0
  %662 = getelementptr inbounds %struct.LIST, %struct.LIST* %661, i32 0, i32 1
  %663 = load %union.rec*, %union.rec** %662, align 8
  %664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %665 = icmp eq %union.rec* %663, %664
  br i1 %665, label %666, label %667

; <label>:666                                     ; preds = %655
  br label %708

; <label>:667                                     ; preds = %655
  %668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %669 = bitcast %union.rec* %668 to %struct.word_type*
  %670 = getelementptr inbounds %struct.word_type, %struct.word_type* %669, i32 0, i32 0
  %671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %670, i32 0, i64 0
  %672 = getelementptr inbounds %struct.LIST, %struct.LIST* %671, i32 0, i32 1
  %673 = load %union.rec*, %union.rec** %672, align 8
  store %union.rec* %673, %union.rec** @zz_res, align 8
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  %675 = bitcast %union.rec* %674 to %struct.word_type*
  %676 = getelementptr inbounds %struct.word_type, %struct.word_type* %675, i32 0, i32 0
  %677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %676, i32 0, i64 0
  %678 = getelementptr inbounds %struct.LIST, %struct.LIST* %677, i32 0, i32 0
  %679 = load %union.rec*, %union.rec** %678, align 8
  %680 = load %union.rec*, %union.rec** @zz_res, align 8
  %681 = bitcast %union.rec* %680 to %struct.word_type*
  %682 = getelementptr inbounds %struct.word_type, %struct.word_type* %681, i32 0, i32 0
  %683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %682, i32 0, i64 0
  %684 = getelementptr inbounds %struct.LIST, %struct.LIST* %683, i32 0, i32 0
  store %union.rec* %679, %union.rec** %684, align 8
  %685 = load %union.rec*, %union.rec** @zz_res, align 8
  %686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %687 = bitcast %union.rec* %686 to %struct.word_type*
  %688 = getelementptr inbounds %struct.word_type, %struct.word_type* %687, i32 0, i32 0
  %689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %688, i32 0, i64 0
  %690 = getelementptr inbounds %struct.LIST, %struct.LIST* %689, i32 0, i32 0
  %691 = load %union.rec*, %union.rec** %690, align 8
  %692 = bitcast %union.rec* %691 to %struct.word_type*
  %693 = getelementptr inbounds %struct.word_type, %struct.word_type* %692, i32 0, i32 0
  %694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %693, i32 0, i64 0
  %695 = getelementptr inbounds %struct.LIST, %struct.LIST* %694, i32 0, i32 1
  store %union.rec* %685, %union.rec** %695, align 8
  %696 = load %union.rec*, %union.rec** @zz_hold, align 8
  %697 = load %union.rec*, %union.rec** @zz_hold, align 8
  %698 = bitcast %union.rec* %697 to %struct.word_type*
  %699 = getelementptr inbounds %struct.word_type, %struct.word_type* %698, i32 0, i32 0
  %700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %699, i32 0, i64 0
  %701 = getelementptr inbounds %struct.LIST, %struct.LIST* %700, i32 0, i32 1
  store %union.rec* %696, %union.rec** %701, align 8
  %702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 0
  %705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %704, i32 0, i64 0
  %706 = getelementptr inbounds %struct.LIST, %struct.LIST* %705, i32 0, i32 0
  store %union.rec* %696, %union.rec** %706, align 8
  %707 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %708

; <label>:708                                     ; preds = %667, %666
  %709 = phi %union.rec* [ null, %666 ], [ %707, %667 ]
  %710 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %710, %union.rec** @zz_hold, align 8
  %711 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %711, %union.rec** @zz_hold, align 8
  %712 = load %union.rec*, %union.rec** @zz_hold, align 8
  %713 = bitcast %union.rec* %712 to %struct.word_type*
  %714 = getelementptr inbounds %struct.word_type, %struct.word_type* %713, i32 0, i32 1
  %715 = bitcast %union.FIRST_UNION* %714 to %struct.anon*
  %716 = getelementptr inbounds %struct.anon, %struct.anon* %715, i32 0, i32 0
  %717 = load i8, i8* %716, align 1
  %718 = zext i8 %717 to i32
  %719 = icmp eq i32 %718, 11
  br i1 %719, label %729, label %720

; <label>:720                                     ; preds = %708
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %722 = bitcast %union.rec* %721 to %struct.word_type*
  %723 = getelementptr inbounds %struct.word_type, %struct.word_type* %722, i32 0, i32 1
  %724 = bitcast %union.FIRST_UNION* %723 to %struct.anon*
  %725 = getelementptr inbounds %struct.anon, %struct.anon* %724, i32 0, i32 0
  %726 = load i8, i8* %725, align 1
  %727 = zext i8 %726 to i32
  %728 = icmp eq i32 %727, 12
  br i1 %728, label %729, label %737

; <label>:729                                     ; preds = %720, %708
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 1
  %733 = bitcast %union.FIRST_UNION* %732 to %struct.anon*
  %734 = getelementptr inbounds %struct.anon, %struct.anon* %733, i32 0, i32 1
  %735 = load i8, i8* %734, align 1
  %736 = zext i8 %735 to i32
  br label %748

; <label>:737                                     ; preds = %720
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %739 = bitcast %union.rec* %738 to %struct.word_type*
  %740 = getelementptr inbounds %struct.word_type, %struct.word_type* %739, i32 0, i32 1
  %741 = bitcast %union.FIRST_UNION* %740 to %struct.anon*
  %742 = getelementptr inbounds %struct.anon, %struct.anon* %741, i32 0, i32 0
  %743 = load i8, i8* %742, align 1
  %744 = zext i8 %743 to i64
  %745 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %744
  %746 = load i8, i8* %745, align 1
  %747 = zext i8 %746 to i32
  br label %748

; <label>:748                                     ; preds = %737, %729
  %749 = phi i32 [ %736, %729 ], [ %747, %737 ]
  store i32 %749, i32* @zz_size, align 4
  %750 = load i32, i32* @zz_size, align 4
  %751 = sext i32 %750 to i64
  %752 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %751
  %753 = load %union.rec*, %union.rec** %752, align 8
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %755 = bitcast %union.rec* %754 to %struct.word_type*
  %756 = getelementptr inbounds %struct.word_type, %struct.word_type* %755, i32 0, i32 0
  %757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %756, i32 0, i64 0
  %758 = getelementptr inbounds %struct.LIST, %struct.LIST* %757, i32 0, i32 0
  store %union.rec* %753, %union.rec** %758, align 8
  %759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %760 = load i32, i32* @zz_size, align 4
  %761 = sext i32 %760 to i64
  %762 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %761
  store %union.rec* %759, %union.rec** %762, align 8
  %763 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %764 = bitcast %union.rec* %763 to %struct.word_type*
  %765 = getelementptr inbounds %struct.word_type, %struct.word_type* %764, i32 0, i32 0
  %766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %765, i32 0, i64 1
  %767 = getelementptr inbounds %struct.LIST, %struct.LIST* %766, i32 0, i32 1
  %768 = load %union.rec*, %union.rec** %767, align 8
  %769 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %770 = icmp eq %union.rec* %768, %769
  br i1 %770, label %771, label %774

; <label>:771                                     ; preds = %748
  %772 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %773 = call i32 @DisposeObject(%union.rec* %772)
  br label %774

; <label>:774                                     ; preds = %771, %748
  br label %775

; <label>:775                                     ; preds = %774, %539
  %776 = load %union.rec*, %union.rec** %1, align 8
  %777 = bitcast %union.rec* %776 to %struct.word_type*
  %778 = getelementptr inbounds %struct.word_type, %struct.word_type* %777, i32 0, i32 0
  %779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %778, i32 0, i64 0
  %780 = getelementptr inbounds %struct.LIST, %struct.LIST* %779, i32 0, i32 0
  %781 = load %union.rec*, %union.rec** %780, align 8
  store %union.rec* %781, %union.rec** @xx_link, align 8
  %782 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %782, %union.rec** @zz_hold, align 8
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %784 = bitcast %union.rec* %783 to %struct.word_type*
  %785 = getelementptr inbounds %struct.word_type, %struct.word_type* %784, i32 0, i32 0
  %786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %785, i32 0, i64 1
  %787 = getelementptr inbounds %struct.LIST, %struct.LIST* %786, i32 0, i32 1
  %788 = load %union.rec*, %union.rec** %787, align 8
  %789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %790 = icmp eq %union.rec* %788, %789
  br i1 %790, label %791, label %792

; <label>:791                                     ; preds = %775
  br label %833

; <label>:792                                     ; preds = %775
  %793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %794 = bitcast %union.rec* %793 to %struct.word_type*
  %795 = getelementptr inbounds %struct.word_type, %struct.word_type* %794, i32 0, i32 0
  %796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %795, i32 0, i64 1
  %797 = getelementptr inbounds %struct.LIST, %struct.LIST* %796, i32 0, i32 1
  %798 = load %union.rec*, %union.rec** %797, align 8
  store %union.rec* %798, %union.rec** @zz_res, align 8
  %799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %800 = bitcast %union.rec* %799 to %struct.word_type*
  %801 = getelementptr inbounds %struct.word_type, %struct.word_type* %800, i32 0, i32 0
  %802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %801, i32 0, i64 1
  %803 = getelementptr inbounds %struct.LIST, %struct.LIST* %802, i32 0, i32 0
  %804 = load %union.rec*, %union.rec** %803, align 8
  %805 = load %union.rec*, %union.rec** @zz_res, align 8
  %806 = bitcast %union.rec* %805 to %struct.word_type*
  %807 = getelementptr inbounds %struct.word_type, %struct.word_type* %806, i32 0, i32 0
  %808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %807, i32 0, i64 1
  %809 = getelementptr inbounds %struct.LIST, %struct.LIST* %808, i32 0, i32 0
  store %union.rec* %804, %union.rec** %809, align 8
  %810 = load %union.rec*, %union.rec** @zz_res, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 0
  %814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %813, i32 0, i64 1
  %815 = getelementptr inbounds %struct.LIST, %struct.LIST* %814, i32 0, i32 0
  %816 = load %union.rec*, %union.rec** %815, align 8
  %817 = bitcast %union.rec* %816 to %struct.word_type*
  %818 = getelementptr inbounds %struct.word_type, %struct.word_type* %817, i32 0, i32 0
  %819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %818, i32 0, i64 1
  %820 = getelementptr inbounds %struct.LIST, %struct.LIST* %819, i32 0, i32 1
  store %union.rec* %810, %union.rec** %820, align 8
  %821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %822 = load %union.rec*, %union.rec** @zz_hold, align 8
  %823 = bitcast %union.rec* %822 to %struct.word_type*
  %824 = getelementptr inbounds %struct.word_type, %struct.word_type* %823, i32 0, i32 0
  %825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %824, i32 0, i64 1
  %826 = getelementptr inbounds %struct.LIST, %struct.LIST* %825, i32 0, i32 1
  store %union.rec* %821, %union.rec** %826, align 8
  %827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %828 = bitcast %union.rec* %827 to %struct.word_type*
  %829 = getelementptr inbounds %struct.word_type, %struct.word_type* %828, i32 0, i32 0
  %830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %829, i32 0, i64 1
  %831 = getelementptr inbounds %struct.LIST, %struct.LIST* %830, i32 0, i32 0
  store %union.rec* %821, %union.rec** %831, align 8
  %832 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %833

; <label>:833                                     ; preds = %792, %791
  %834 = phi %union.rec* [ null, %791 ], [ %832, %792 ]
  store %union.rec* %834, %union.rec** @xx_tmp, align 8
  %835 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %835, %union.rec** @zz_hold, align 8
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %837 = bitcast %union.rec* %836 to %struct.word_type*
  %838 = getelementptr inbounds %struct.word_type, %struct.word_type* %837, i32 0, i32 0
  %839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %838, i32 0, i64 0
  %840 = getelementptr inbounds %struct.LIST, %struct.LIST* %839, i32 0, i32 1
  %841 = load %union.rec*, %union.rec** %840, align 8
  %842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %843 = icmp eq %union.rec* %841, %842
  br i1 %843, label %844, label %845

; <label>:844                                     ; preds = %833
  br label %886

; <label>:845                                     ; preds = %833
  %846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %847 = bitcast %union.rec* %846 to %struct.word_type*
  %848 = getelementptr inbounds %struct.word_type, %struct.word_type* %847, i32 0, i32 0
  %849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %848, i32 0, i64 0
  %850 = getelementptr inbounds %struct.LIST, %struct.LIST* %849, i32 0, i32 1
  %851 = load %union.rec*, %union.rec** %850, align 8
  store %union.rec* %851, %union.rec** @zz_res, align 8
  %852 = load %union.rec*, %union.rec** @zz_hold, align 8
  %853 = bitcast %union.rec* %852 to %struct.word_type*
  %854 = getelementptr inbounds %struct.word_type, %struct.word_type* %853, i32 0, i32 0
  %855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %854, i32 0, i64 0
  %856 = getelementptr inbounds %struct.LIST, %struct.LIST* %855, i32 0, i32 0
  %857 = load %union.rec*, %union.rec** %856, align 8
  %858 = load %union.rec*, %union.rec** @zz_res, align 8
  %859 = bitcast %union.rec* %858 to %struct.word_type*
  %860 = getelementptr inbounds %struct.word_type, %struct.word_type* %859, i32 0, i32 0
  %861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %860, i32 0, i64 0
  %862 = getelementptr inbounds %struct.LIST, %struct.LIST* %861, i32 0, i32 0
  store %union.rec* %857, %union.rec** %862, align 8
  %863 = load %union.rec*, %union.rec** @zz_res, align 8
  %864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %865 = bitcast %union.rec* %864 to %struct.word_type*
  %866 = getelementptr inbounds %struct.word_type, %struct.word_type* %865, i32 0, i32 0
  %867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %866, i32 0, i64 0
  %868 = getelementptr inbounds %struct.LIST, %struct.LIST* %867, i32 0, i32 0
  %869 = load %union.rec*, %union.rec** %868, align 8
  %870 = bitcast %union.rec* %869 to %struct.word_type*
  %871 = getelementptr inbounds %struct.word_type, %struct.word_type* %870, i32 0, i32 0
  %872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %871, i32 0, i64 0
  %873 = getelementptr inbounds %struct.LIST, %struct.LIST* %872, i32 0, i32 1
  store %union.rec* %863, %union.rec** %873, align 8
  %874 = load %union.rec*, %union.rec** @zz_hold, align 8
  %875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %876 = bitcast %union.rec* %875 to %struct.word_type*
  %877 = getelementptr inbounds %struct.word_type, %struct.word_type* %876, i32 0, i32 0
  %878 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %877, i32 0, i64 0
  %879 = getelementptr inbounds %struct.LIST, %struct.LIST* %878, i32 0, i32 1
  store %union.rec* %874, %union.rec** %879, align 8
  %880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %881 = bitcast %union.rec* %880 to %struct.word_type*
  %882 = getelementptr inbounds %struct.word_type, %struct.word_type* %881, i32 0, i32 0
  %883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %882, i32 0, i64 0
  %884 = getelementptr inbounds %struct.LIST, %struct.LIST* %883, i32 0, i32 0
  store %union.rec* %874, %union.rec** %884, align 8
  %885 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %886

; <label>:886                                     ; preds = %845, %844
  %887 = phi %union.rec* [ null, %844 ], [ %885, %845 ]
  %888 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %888, %union.rec** @zz_hold, align 8
  %889 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %889, %union.rec** @zz_hold, align 8
  %890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %891 = bitcast %union.rec* %890 to %struct.word_type*
  %892 = getelementptr inbounds %struct.word_type, %struct.word_type* %891, i32 0, i32 1
  %893 = bitcast %union.FIRST_UNION* %892 to %struct.anon*
  %894 = getelementptr inbounds %struct.anon, %struct.anon* %893, i32 0, i32 0
  %895 = load i8, i8* %894, align 1
  %896 = zext i8 %895 to i32
  %897 = icmp eq i32 %896, 11
  br i1 %897, label %907, label %898

; <label>:898                                     ; preds = %886
  %899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %900 = bitcast %union.rec* %899 to %struct.word_type*
  %901 = getelementptr inbounds %struct.word_type, %struct.word_type* %900, i32 0, i32 1
  %902 = bitcast %union.FIRST_UNION* %901 to %struct.anon*
  %903 = getelementptr inbounds %struct.anon, %struct.anon* %902, i32 0, i32 0
  %904 = load i8, i8* %903, align 1
  %905 = zext i8 %904 to i32
  %906 = icmp eq i32 %905, 12
  br i1 %906, label %907, label %915

; <label>:907                                     ; preds = %898, %886
  %908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %909 = bitcast %union.rec* %908 to %struct.word_type*
  %910 = getelementptr inbounds %struct.word_type, %struct.word_type* %909, i32 0, i32 1
  %911 = bitcast %union.FIRST_UNION* %910 to %struct.anon*
  %912 = getelementptr inbounds %struct.anon, %struct.anon* %911, i32 0, i32 1
  %913 = load i8, i8* %912, align 1
  %914 = zext i8 %913 to i32
  br label %926

; <label>:915                                     ; preds = %898
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 1
  %919 = bitcast %union.FIRST_UNION* %918 to %struct.anon*
  %920 = getelementptr inbounds %struct.anon, %struct.anon* %919, i32 0, i32 0
  %921 = load i8, i8* %920, align 1
  %922 = zext i8 %921 to i64
  %923 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %922
  %924 = load i8, i8* %923, align 1
  %925 = zext i8 %924 to i32
  br label %926

; <label>:926                                     ; preds = %915, %907
  %927 = phi i32 [ %914, %907 ], [ %925, %915 ]
  store i32 %927, i32* @zz_size, align 4
  %928 = load i32, i32* @zz_size, align 4
  %929 = sext i32 %928 to i64
  %930 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %929
  %931 = load %union.rec*, %union.rec** %930, align 8
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 0
  %935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %934, i32 0, i64 0
  %936 = getelementptr inbounds %struct.LIST, %struct.LIST* %935, i32 0, i32 0
  store %union.rec* %931, %union.rec** %936, align 8
  %937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %938 = load i32, i32* @zz_size, align 4
  %939 = sext i32 %938 to i64
  %940 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %939
  store %union.rec* %937, %union.rec** %940, align 8
  %941 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %942 = bitcast %union.rec* %941 to %struct.word_type*
  %943 = getelementptr inbounds %struct.word_type, %struct.word_type* %942, i32 0, i32 0
  %944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %943, i32 0, i64 1
  %945 = getelementptr inbounds %struct.LIST, %struct.LIST* %944, i32 0, i32 1
  %946 = load %union.rec*, %union.rec** %945, align 8
  %947 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %948 = icmp eq %union.rec* %946, %947
  br i1 %948, label %949, label %952

; <label>:949                                     ; preds = %926
  %950 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %951 = call i32 @DisposeObject(%union.rec* %950)
  br label %952

; <label>:952                                     ; preds = %949, %926
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @MakeWord(i32 %typ, i8* %str, %struct.FILE_POS* %pos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca %struct.FILE_POS*, align 8
  %res = alloca %union.rec*, align 8
  store i32 %typ, i32* %1, align 4
  store i8* %str, i8** %2, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %3, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = call i64 @strlen(i8* %4) #4
  %6 = add i64 %5, 1
  %7 = mul i64 %6, 1
  %8 = add i64 68, %7
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* @zz_size, align 4
  %10 = load i32, i32* @zz_size, align 4
  %11 = sub nsw i32 %10, 1
  %12 = sext i32 %11 to i64
  %13 = udiv i64 %12, 8
  %14 = add i64 %13, 1
  %15 = trunc i64 %14 to i32
  store i32 %15, i32* @zz_size, align 4
  %16 = sext i32 %15 to i64
  %17 = icmp uge i64 %16, 265
  br i1 %17, label %18, label %21

; <label>:18                                      ; preds = %0
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %19)
  br label %46

; <label>:21                                      ; preds = %0
  %22 = load i32, i32* @zz_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %23
  %25 = load %union.rec*, %union.rec** %24, align 8
  %26 = icmp eq %union.rec* %25, null
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %21
  %28 = load i32, i32* @zz_size, align 4
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %30 = call %union.rec* @GetMemory(i32 %28, %struct.FILE_POS* %29)
  store %union.rec* %30, %union.rec** @zz_hold, align 8
  br label %45

; <label>:31                                      ; preds = %21
  %32 = load i32, i32* @zz_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %33
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  store %union.rec* %35, %union.rec** @zz_hold, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  %42 = load i32, i32* @zz_size, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %43
  store %union.rec* %41, %union.rec** %44, align 8
  br label %45

; <label>:45                                      ; preds = %31, %27
  br label %46

; <label>:46                                      ; preds = %45, %18
  %47 = load i32, i32* @zz_size, align 4
  %48 = trunc i32 %47 to i8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 1
  %52 = bitcast %union.FIRST_UNION* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 1
  store i8 %48, i8* %53, align 1
  %54 = load i32, i32* %1, align 4
  %55 = trunc i32 %54 to i8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 1
  %59 = bitcast %union.FIRST_UNION* %58 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  store i8 %55, i8* %60, align 1
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 1
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 1
  store %union.rec* %61, %union.rec** %66, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %69, i32 0, i64 1
  %71 = getelementptr inbounds %struct.LIST, %struct.LIST* %70, i32 0, i32 0
  store %union.rec* %61, %union.rec** %71, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %74, i32 0, i64 0
  %76 = getelementptr inbounds %struct.LIST, %struct.LIST* %75, i32 0, i32 1
  store %union.rec* %61, %union.rec** %76, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 0
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 0
  store %union.rec* %61, %union.rec** %81, align 8
  store %union.rec* %61, %union.rec** %res, align 8
  %82 = load %union.rec*, %union.rec** %res, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %84, i32 0, i32 0
  %86 = load i8*, i8** %2, align 8
  %87 = call i8* @strcpy(i8* %85, i8* %86) #5
  %88 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %89 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %88, i32 0, i32 2
  %90 = load i16, i16* %89, align 2
  %91 = load %union.rec*, %union.rec** %res, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 1
  %94 = bitcast %union.FIRST_UNION* %93 to %struct.FILE_POS*
  %95 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %94, i32 0, i32 2
  store i16 %90, i16* %95, align 2
  %96 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %97 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, 1048575
  %100 = load %union.rec*, %union.rec** %res, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 1
  %103 = bitcast %union.FIRST_UNION* %102 to %struct.FILE_POS*
  %104 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %99, 1048575
  %107 = and i32 %105, -1048576
  %108 = or i32 %107, %106
  store i32 %108, i32* %104, align 4
  %109 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %110 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = lshr i32 %111, 20
  %113 = load %union.rec*, %union.rec** %res, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 1
  %116 = bitcast %union.FIRST_UNION* %115 to %struct.FILE_POS*
  %117 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %112, 4095
  %120 = shl i32 %119, 20
  %121 = and i32 %118, 1048575
  %122 = or i32 %121, %120
  store i32 %122, i32* %117, align 4
  %123 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %123
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define %union.rec* @MakeWordTwo(i32 %typ, i8* %str1, i8* %str2, %struct.FILE_POS* %pos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.FILE_POS*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i32 %typ, i32* %1, align 4
  store i8* %str1, i8** %2, align 8
  store i8* %str2, i8** %3, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %4, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #4
  %7 = trunc i64 %6 to i32
  store i32 %7, i32* %len1, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call i64 @strlen(i8* %8) #4
  %10 = trunc i64 %9 to i32
  store i32 %10, i32* %len2, align 4
  %11 = load i32, i32* %len1, align 4
  %12 = load i32, i32* %len2, align 4
  %13 = add nsw i32 %11, %12
  %14 = add nsw i32 %13, 1
  %15 = sext i32 %14 to i64
  %16 = mul i64 %15, 1
  %17 = add i64 68, %16
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* @zz_size, align 4
  %19 = load i32, i32* @zz_size, align 4
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  %22 = udiv i64 %21, 8
  %23 = add i64 %22, 1
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* @zz_size, align 4
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, 265
  br i1 %26, label %27, label %30

; <label>:27                                      ; preds = %0
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %28)
  br label %55

; <label>:30                                      ; preds = %0
  %31 = load i32, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %32
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = icmp eq %union.rec* %34, null
  br i1 %35, label %36, label %40

; <label>:36                                      ; preds = %30
  %37 = load i32, i32* @zz_size, align 4
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %39 = call %union.rec* @GetMemory(i32 %37, %struct.FILE_POS* %38)
  store %union.rec* %39, %union.rec** @zz_hold, align 8
  br label %54

; <label>:40                                      ; preds = %30
  %41 = load i32, i32* @zz_size, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %42
  %44 = load %union.rec*, %union.rec** %43, align 8
  store %union.rec* %44, %union.rec** @zz_hold, align 8
  store %union.rec* %44, %union.rec** @zz_hold, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 0
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  %51 = load i32, i32* @zz_size, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %52
  store %union.rec* %50, %union.rec** %53, align 8
  br label %54

; <label>:54                                      ; preds = %40, %36
  br label %55

; <label>:55                                      ; preds = %54, %27
  %56 = load i32, i32* @zz_size, align 4
  %57 = trunc i32 %56 to i8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 1
  %61 = bitcast %union.FIRST_UNION* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 1
  store i8 %57, i8* %62, align 1
  %63 = load i32, i32* %1, align 4
  %64 = trunc i32 %63 to i8
  %65 = load %union.rec*, %union.rec** @zz_hold, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 1
  %68 = bitcast %union.FIRST_UNION* %67 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  store i8 %64, i8* %69, align 1
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 1
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 1
  store %union.rec* %70, %union.rec** %75, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 1
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 0
  store %union.rec* %70, %union.rec** %80, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 0
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 1
  store %union.rec* %70, %union.rec** %85, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 0
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 0
  store %union.rec* %70, %union.rec** %90, align 8
  store %union.rec* %70, %union.rec** %res, align 8
  %91 = load %union.rec*, %union.rec** %res, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 4
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %93, i32 0, i32 0
  %95 = load i8*, i8** %2, align 8
  %96 = call i8* @strcpy(i8* %94, i8* %95) #5
  %97 = load i32, i32* %len1, align 4
  %98 = sext i32 %97 to i64
  %99 = load %union.rec*, %union.rec** %res, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 4
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %101, i32 0, i64 %98
  %103 = load i8*, i8** %3, align 8
  %104 = call i8* @strcpy(i8* %102, i8* %103) #5
  %105 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %106 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %105, i32 0, i32 2
  %107 = load i16, i16* %106, align 2
  %108 = load %union.rec*, %union.rec** %res, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 1
  %111 = bitcast %union.FIRST_UNION* %110 to %struct.FILE_POS*
  %112 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %111, i32 0, i32 2
  store i16 %107, i16* %112, align 2
  %113 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %114 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = and i32 %115, 1048575
  %117 = load %union.rec*, %union.rec** %res, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 1
  %120 = bitcast %union.FIRST_UNION* %119 to %struct.FILE_POS*
  %121 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %120, i32 0, i32 3
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %116, 1048575
  %124 = and i32 %122, -1048576
  %125 = or i32 %124, %123
  store i32 %125, i32* %121, align 4
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %127 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = lshr i32 %128, 20
  %130 = load %union.rec*, %union.rec** %res, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 1
  %133 = bitcast %union.FIRST_UNION* %132 to %struct.FILE_POS*
  %134 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = and i32 %129, 4095
  %137 = shl i32 %136, 20
  %138 = and i32 %135, 1048575
  %139 = or i32 %138, %137
  store i32 %139, i32* %134, align 4
  %140 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %140
}

; Function Attrs: nounwind uwtable
define %union.rec* @MakeWordThree(i8* %s1, i8* %s2, i8* %s3) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %len1 = alloca i32, align 4
  %len2 = alloca i32, align 4
  %len3 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i8* %s1, i8** %1, align 8
  store i8* %s2, i8** %2, align 8
  store i8* %s3, i8** %3, align 8
  %4 = load i8*, i8** %1, align 8
  %5 = call i64 @strlen(i8* %4) #4
  %6 = trunc i64 %5 to i32
  store i32 %6, i32* %len1, align 4
  %7 = load i8*, i8** %2, align 8
  %8 = call i64 @strlen(i8* %7) #4
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %len2, align 4
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10) #4
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %len3, align 4
  %13 = load i32, i32* %len1, align 4
  %14 = load i32, i32* %len2, align 4
  %15 = add nsw i32 %13, %14
  %16 = load i32, i32* %len3, align 4
  %17 = add nsw i32 %15, %16
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 1
  %21 = add i64 68, %20
  %22 = trunc i64 %21 to i32
  store i32 %22, i32* @zz_size, align 4
  %23 = load i32, i32* @zz_size, align 4
  %24 = sub nsw i32 %23, 1
  %25 = sext i32 %24 to i64
  %26 = udiv i64 %25, 8
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* @zz_size, align 4
  %29 = sext i32 %28 to i64
  %30 = icmp uge i64 %29, 265
  br i1 %30, label %31, label %34

; <label>:31                                      ; preds = %0
  %32 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %33 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %32)
  br label %59

; <label>:34                                      ; preds = %0
  %35 = load i32, i32* @zz_size, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %36
  %38 = load %union.rec*, %union.rec** %37, align 8
  %39 = icmp eq %union.rec* %38, null
  br i1 %39, label %40, label %44

; <label>:40                                      ; preds = %34
  %41 = load i32, i32* @zz_size, align 4
  %42 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %43 = call %union.rec* @GetMemory(i32 %41, %struct.FILE_POS* %42)
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  br label %58

; <label>:44                                      ; preds = %34
  %45 = load i32, i32* @zz_size, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %46
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  store %union.rec* %48, %union.rec** @zz_hold, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %51, i32 0, i64 0
  %53 = getelementptr inbounds %struct.LIST, %struct.LIST* %52, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = load i32, i32* @zz_size, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %56
  store %union.rec* %54, %union.rec** %57, align 8
  br label %58

; <label>:58                                      ; preds = %44, %40
  br label %59

; <label>:59                                      ; preds = %58, %31
  %60 = load i32, i32* @zz_size, align 4
  %61 = trunc i32 %60 to i8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 1
  %65 = bitcast %union.FIRST_UNION* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 1
  store i8 %61, i8* %66, align 1
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  store i8 11, i8* %71, align 1
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %75, i32 0, i64 1
  %77 = getelementptr inbounds %struct.LIST, %struct.LIST* %76, i32 0, i32 1
  store %union.rec* %72, %union.rec** %77, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 1
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 0
  store %union.rec* %72, %union.rec** %82, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 0
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 1
  store %union.rec* %72, %union.rec** %87, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %90, i32 0, i64 0
  %92 = getelementptr inbounds %struct.LIST, %struct.LIST* %91, i32 0, i32 0
  store %union.rec* %72, %union.rec** %92, align 8
  store %union.rec* %72, %union.rec** %res, align 8
  %93 = load %union.rec*, %union.rec** %res, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 4
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %95, i32 0, i32 0
  %97 = load i8*, i8** %1, align 8
  %98 = call i8* @strcpy(i8* %96, i8* %97) #5
  %99 = load i32, i32* %len1, align 4
  %100 = sext i32 %99 to i64
  %101 = load %union.rec*, %union.rec** %res, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 4
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %103, i32 0, i64 %100
  %105 = load i8*, i8** %2, align 8
  %106 = call i8* @strcpy(i8* %104, i8* %105) #5
  %107 = load i32, i32* %len1, align 4
  %108 = load i32, i32* %len2, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = load %union.rec*, %union.rec** %res, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 4
  %114 = getelementptr inbounds [4 x i8], [4 x i8]* %113, i32 0, i64 %110
  %115 = load i8*, i8** %3, align 8
  %116 = call i8* @strcpy(i8* %114, i8* %115) #5
  %117 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %117
}

; Function Attrs: nounwind uwtable
define %union.rec* @CopyObject(%union.rec* %x, %struct.FILE_POS* %pos) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.FILE_POS*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  switch i32 %9, label %2198 [
    i32 11, label %10
    i32 12, label %10
    i32 1, label %105
    i32 5, label %438
    i32 4, label %438
    i32 6, label %438
    i32 7, label %438
    i32 20, label %438
    i32 21, label %438
    i32 22, label %438
    i32 23, label %438
    i32 24, label %438
    i32 25, label %438
    i32 26, label %438
    i32 27, label %438
    i32 28, label %438
    i32 29, label %438
    i32 30, label %438
    i32 31, label %438
    i32 32, label %438
    i32 33, label %438
    i32 34, label %438
    i32 35, label %438
    i32 36, label %438
    i32 37, label %438
    i32 38, label %438
    i32 39, label %438
    i32 40, label %438
    i32 41, label %438
    i32 44, label %438
    i32 42, label %438
    i32 43, label %438
    i32 45, label %438
    i32 46, label %438
    i32 47, label %438
    i32 48, label %438
    i32 49, label %438
    i32 50, label %438
    i32 51, label %438
    i32 54, label %438
    i32 53, label %438
    i32 52, label %438
    i32 55, label %438
    i32 56, label %438
    i32 58, label %438
    i32 59, label %438
    i32 60, label %438
    i32 61, label %438
    i32 62, label %438
    i32 63, label %438
    i32 64, label %438
    i32 65, label %438
    i32 66, label %438
    i32 67, label %438
    i32 68, label %438
    i32 69, label %438
    i32 70, label %438
    i32 71, label %438
    i32 72, label %438
    i32 73, label %438
    i32 74, label %438
    i32 75, label %438
    i32 76, label %438
    i32 77, label %438
    i32 78, label %438
    i32 79, label %438
    i32 80, label %438
    i32 92, label %438
    i32 93, label %438
    i32 94, label %438
    i32 95, label %438
    i32 96, label %438
    i32 97, label %438
    i32 98, label %438
    i32 99, label %438
    i32 19, label %438
    i32 18, label %438
    i32 17, label %438
    i32 81, label %438
    i32 57, label %729
    i32 82, label %1017
    i32 10, label %1019
    i32 2, label %1301
  ]

; <label>:10                                      ; preds = %0, %0
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 4
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i32 0, i32 0
  %15 = call i64 @strlen(i8* %14) #4
  %16 = add i64 %15, 1
  %17 = mul i64 %16, 1
  %18 = add i64 68, %17
  %19 = trunc i64 %18 to i32
  store i32 %19, i32* @zz_size, align 4
  %20 = load i32, i32* @zz_size, align 4
  %21 = sub nsw i32 %20, 1
  %22 = sext i32 %21 to i64
  %23 = udiv i64 %22, 8
  %24 = add i64 %23, 1
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* @zz_size, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 265
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %10
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %29)
  br label %56

; <label>:31                                      ; preds = %10
  %32 = load i32, i32* @zz_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %33
  %35 = load %union.rec*, %union.rec** %34, align 8
  %36 = icmp eq %union.rec* %35, null
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %31
  %38 = load i32, i32* @zz_size, align 4
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %40 = call %union.rec* @GetMemory(i32 %38, %struct.FILE_POS* %39)
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  br label %55

; <label>:41                                      ; preds = %31
  %42 = load i32, i32* @zz_size, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %43
  %45 = load %union.rec*, %union.rec** %44, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 0
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = load i32, i32* @zz_size, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %53
  store %union.rec* %51, %union.rec** %54, align 8
  br label %55

; <label>:55                                      ; preds = %41, %37
  br label %56

; <label>:56                                      ; preds = %55, %28
  %57 = load i32, i32* @zz_size, align 4
  %58 = trunc i32 %57 to i8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 1
  %62 = bitcast %union.FIRST_UNION* %61 to %struct.anon*
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 1
  store i8 %58, i8* %63, align 1
  %64 = load %union.rec*, %union.rec** %1, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 1
  %67 = bitcast %union.FIRST_UNION* %66 to %struct.anon*
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 1
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 1
  %73 = bitcast %union.FIRST_UNION* %72 to %struct.anon*
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 0
  store i8 %69, i8* %74, align 1
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 1
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  store %union.rec* %75, %union.rec** %80, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 1
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 0
  store %union.rec* %75, %union.rec** %85, align 8
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 0
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 1
  store %union.rec* %75, %union.rec** %90, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %93, i32 0, i64 0
  %95 = getelementptr inbounds %struct.LIST, %struct.LIST* %94, i32 0, i32 0
  store %union.rec* %75, %union.rec** %95, align 8
  store %union.rec* %75, %union.rec** %res, align 8
  %96 = load %union.rec*, %union.rec** %res, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 4
  %99 = getelementptr inbounds [4 x i8], [4 x i8]* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %1, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 4
  %103 = getelementptr inbounds [4 x i8], [4 x i8]* %102, i32 0, i32 0
  %104 = call i8* @strcpy(i8* %99, i8* %103) #5
  br label %2209

; <label>:105                                     ; preds = %0
  %106 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %107 = zext i8 %106 to i32
  store i32 %107, i32* @zz_size, align 4
  %108 = sext i32 %107 to i64
  %109 = icmp uge i64 %108, 265
  br i1 %109, label %110, label %113

; <label>:110                                     ; preds = %105
  %111 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %112 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %111)
  br label %138

; <label>:113                                     ; preds = %105
  %114 = load i32, i32* @zz_size, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %115
  %117 = load %union.rec*, %union.rec** %116, align 8
  %118 = icmp eq %union.rec* %117, null
  br i1 %118, label %119, label %123

; <label>:119                                     ; preds = %113
  %120 = load i32, i32* @zz_size, align 4
  %121 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %122 = call %union.rec* @GetMemory(i32 %120, %struct.FILE_POS* %121)
  store %union.rec* %122, %union.rec** @zz_hold, align 8
  br label %137

; <label>:123                                     ; preds = %113
  %124 = load i32, i32* @zz_size, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %125
  %127 = load %union.rec*, %union.rec** %126, align 8
  store %union.rec* %127, %union.rec** @zz_hold, align 8
  store %union.rec* %127, %union.rec** @zz_hold, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %132, align 8
  %134 = load i32, i32* @zz_size, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %135
  store %union.rec* %133, %union.rec** %136, align 8
  br label %137

; <label>:137                                     ; preds = %123, %119
  br label %138

; <label>:138                                     ; preds = %137, %110
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  store i8 1, i8* %143, align 1
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 0
  %148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %147, i32 0, i64 1
  %149 = getelementptr inbounds %struct.LIST, %struct.LIST* %148, i32 0, i32 1
  store %union.rec* %144, %union.rec** %149, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %152, i32 0, i64 1
  %154 = getelementptr inbounds %struct.LIST, %struct.LIST* %153, i32 0, i32 0
  store %union.rec* %144, %union.rec** %154, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 0
  %158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %157, i32 0, i64 0
  %159 = getelementptr inbounds %struct.LIST, %struct.LIST* %158, i32 0, i32 1
  store %union.rec* %144, %union.rec** %159, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 0
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  store %union.rec* %144, %union.rec** %164, align 8
  store %union.rec* %144, %union.rec** %res, align 8
  %165 = load %union.rec*, %union.rec** %1, align 8
  %166 = bitcast %union.rec* %165 to %struct.gapobj_type*
  %167 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %166, i32 0, i32 3
  %168 = bitcast %struct.GAP* %167 to i16*
  %169 = load i16, i16* %168, align 4
  %170 = lshr i16 %169, 8
  %171 = and i16 %170, 1
  %172 = zext i16 %171 to i32
  %173 = load %union.rec*, %union.rec** %res, align 8
  %174 = bitcast %union.rec* %173 to %struct.gapobj_type*
  %175 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %174, i32 0, i32 3
  %176 = bitcast %struct.GAP* %175 to i16*
  %177 = trunc i32 %172 to i16
  %178 = load i16, i16* %176, align 4
  %179 = and i16 %177, 1
  %180 = shl i16 %179, 8
  %181 = and i16 %178, -257
  %182 = or i16 %181, %180
  store i16 %182, i16* %176, align 4
  %183 = zext i16 %179 to i32
  %184 = load %union.rec*, %union.rec** %1, align 8
  %185 = bitcast %union.rec* %184 to %struct.gapobj_type*
  %186 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %185, i32 0, i32 3
  %187 = bitcast %struct.GAP* %186 to i16*
  %188 = load i16, i16* %187, align 4
  %189 = lshr i16 %188, 9
  %190 = and i16 %189, 1
  %191 = zext i16 %190 to i32
  %192 = load %union.rec*, %union.rec** %res, align 8
  %193 = bitcast %union.rec* %192 to %struct.gapobj_type*
  %194 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %193, i32 0, i32 3
  %195 = bitcast %struct.GAP* %194 to i16*
  %196 = trunc i32 %191 to i16
  %197 = load i16, i16* %195, align 4
  %198 = and i16 %196, 1
  %199 = shl i16 %198, 9
  %200 = and i16 %197, -513
  %201 = or i16 %200, %199
  store i16 %201, i16* %195, align 4
  %202 = zext i16 %198 to i32
  %203 = load %union.rec*, %union.rec** %1, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 2
  %206 = bitcast %union.SECOND_UNION* %205 to %struct.anon.0*
  %207 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %206, i32 0, i32 1
  %208 = load i8, i8* %207, align 1
  %209 = load %union.rec*, %union.rec** %res, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 2
  %212 = bitcast %union.SECOND_UNION* %211 to %struct.anon.0*
  %213 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %212, i32 0, i32 1
  store i8 %208, i8* %213, align 1
  %214 = load %union.rec*, %union.rec** %1, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 2
  %217 = bitcast %union.SECOND_UNION* %216 to %struct.anon.0*
  %218 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %217, i32 0, i32 2
  %219 = load i8, i8* %218, align 1
  %220 = load %union.rec*, %union.rec** %res, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 2
  %223 = bitcast %union.SECOND_UNION* %222 to %struct.anon.0*
  %224 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %223, i32 0, i32 2
  store i8 %219, i8* %224, align 1
  %225 = load %union.rec*, %union.rec** %1, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 1
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec*, %union.rec** %1, align 8
  %232 = icmp ne %union.rec* %230, %231
  br i1 %232, label %233, label %437

; <label>:233                                     ; preds = %138
  %234 = load %union.rec*, %union.rec** %1, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 0
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 1
  %239 = load %union.rec*, %union.rec** %238, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 0
  %242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %241, i32 0, i64 1
  %243 = getelementptr inbounds %struct.LIST, %struct.LIST* %242, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %243, align 8
  store %union.rec* %244, %union.rec** %y, align 8
  br label %245

; <label>:245                                     ; preds = %255, %233
  %246 = load %union.rec*, %union.rec** %y, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 1
  %249 = bitcast %union.FIRST_UNION* %248 to %struct.anon*
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %262

; <label>:254                                     ; preds = %245
  br label %255

; <label>:255                                     ; preds = %254
  %256 = load %union.rec*, %union.rec** %y, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %258, i32 0, i64 1
  %260 = getelementptr inbounds %struct.LIST, %struct.LIST* %259, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %260, align 8
  store %union.rec* %261, %union.rec** %y, align 8
  br label %245

; <label>:262                                     ; preds = %245
  %263 = load %union.rec*, %union.rec** %y, align 8
  %264 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %265 = call %union.rec* @CopyObject(%union.rec* %263, %struct.FILE_POS* %264)
  store %union.rec* %265, %union.rec** %tmp, align 8
  %266 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %267 = zext i8 %266 to i32
  store i32 %267, i32* @zz_size, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp uge i64 %268, 265
  br i1 %269, label %270, label %273

; <label>:270                                     ; preds = %262
  %271 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %272 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %271)
  br label %298

; <label>:273                                     ; preds = %262
  %274 = load i32, i32* @zz_size, align 4
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %275
  %277 = load %union.rec*, %union.rec** %276, align 8
  %278 = icmp eq %union.rec* %277, null
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %273
  %280 = load i32, i32* @zz_size, align 4
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %282 = call %union.rec* @GetMemory(i32 %280, %struct.FILE_POS* %281)
  store %union.rec* %282, %union.rec** @zz_hold, align 8
  br label %297

; <label>:283                                     ; preds = %273
  %284 = load i32, i32* @zz_size, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %285
  %287 = load %union.rec*, %union.rec** %286, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  store %union.rec* %287, %union.rec** @zz_hold, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %290, i32 0, i64 0
  %292 = getelementptr inbounds %struct.LIST, %struct.LIST* %291, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %292, align 8
  %294 = load i32, i32* @zz_size, align 4
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %295
  store %union.rec* %293, %union.rec** %296, align 8
  br label %297

; <label>:297                                     ; preds = %283, %279
  br label %298

; <label>:298                                     ; preds = %297, %270
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 1
  %302 = bitcast %union.FIRST_UNION* %301 to %struct.anon*
  %303 = getelementptr inbounds %struct.anon, %struct.anon* %302, i32 0, i32 0
  store i8 0, i8* %303, align 1
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 1
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 1
  store %union.rec* %304, %union.rec** %309, align 8
  %310 = load %union.rec*, %union.rec** @zz_hold, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 0
  %313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %312, i32 0, i64 1
  %314 = getelementptr inbounds %struct.LIST, %struct.LIST* %313, i32 0, i32 0
  store %union.rec* %304, %union.rec** %314, align 8
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %317, i32 0, i64 0
  %319 = getelementptr inbounds %struct.LIST, %struct.LIST* %318, i32 0, i32 1
  store %union.rec* %304, %union.rec** %319, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 0
  %323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %322, i32 0, i64 0
  %324 = getelementptr inbounds %struct.LIST, %struct.LIST* %323, i32 0, i32 0
  store %union.rec* %304, %union.rec** %324, align 8
  store %union.rec* %304, %union.rec** @xx_link, align 8
  %325 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %325, %union.rec** @zz_res, align 8
  %326 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %326, %union.rec** @zz_hold, align 8
  %327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %328 = icmp eq %union.rec* %327, null
  br i1 %328, label %329, label %331

; <label>:329                                     ; preds = %298
  %330 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %379

; <label>:331                                     ; preds = %298
  %332 = load %union.rec*, %union.rec** @zz_res, align 8
  %333 = icmp eq %union.rec* %332, null
  br i1 %333, label %334, label %336

; <label>:334                                     ; preds = %331
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %377

; <label>:336                                     ; preds = %331
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 0
  %340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %339, i32 0, i64 0
  %341 = getelementptr inbounds %struct.LIST, %struct.LIST* %340, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %341, align 8
  store %union.rec* %342, %union.rec** @zz_tmp, align 8
  %343 = load %union.rec*, %union.rec** @zz_res, align 8
  %344 = bitcast %union.rec* %343 to %struct.word_type*
  %345 = getelementptr inbounds %struct.word_type, %struct.word_type* %344, i32 0, i32 0
  %346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %345, i32 0, i64 0
  %347 = getelementptr inbounds %struct.LIST, %struct.LIST* %346, i32 0, i32 0
  %348 = load %union.rec*, %union.rec** %347, align 8
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 0
  %352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %351, i32 0, i64 0
  %353 = getelementptr inbounds %struct.LIST, %struct.LIST* %352, i32 0, i32 0
  store %union.rec* %348, %union.rec** %353, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  %356 = bitcast %union.rec* %355 to %struct.word_type*
  %357 = getelementptr inbounds %struct.word_type, %struct.word_type* %356, i32 0, i32 0
  %358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %357, i32 0, i64 0
  %359 = getelementptr inbounds %struct.LIST, %struct.LIST* %358, i32 0, i32 0
  %360 = load %union.rec*, %union.rec** %359, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 0
  %363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %362, i32 0, i64 0
  %364 = getelementptr inbounds %struct.LIST, %struct.LIST* %363, i32 0, i32 1
  store %union.rec* %354, %union.rec** %364, align 8
  %365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  %367 = bitcast %union.rec* %366 to %struct.word_type*
  %368 = getelementptr inbounds %struct.word_type, %struct.word_type* %367, i32 0, i32 0
  %369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %368, i32 0, i64 0
  %370 = getelementptr inbounds %struct.LIST, %struct.LIST* %369, i32 0, i32 0
  store %union.rec* %365, %union.rec** %370, align 8
  %371 = load %union.rec*, %union.rec** @zz_res, align 8
  %372 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 0
  %375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %374, i32 0, i64 0
  %376 = getelementptr inbounds %struct.LIST, %struct.LIST* %375, i32 0, i32 1
  store %union.rec* %371, %union.rec** %376, align 8
  br label %377

; <label>:377                                     ; preds = %336, %334
  %378 = phi %union.rec* [ %335, %334 ], [ %371, %336 ]
  br label %379

; <label>:379                                     ; preds = %377, %329
  %380 = phi %union.rec* [ %330, %329 ], [ %378, %377 ]
  %381 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %381, %union.rec** @zz_res, align 8
  %382 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %382, %union.rec** @zz_hold, align 8
  %383 = load %union.rec*, %union.rec** @zz_hold, align 8
  %384 = icmp eq %union.rec* %383, null
  br i1 %384, label %385, label %387

; <label>:385                                     ; preds = %379
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %435

; <label>:387                                     ; preds = %379
  %388 = load %union.rec*, %union.rec** @zz_res, align 8
  %389 = icmp eq %union.rec* %388, null
  br i1 %389, label %390, label %392

; <label>:390                                     ; preds = %387
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %433

; <label>:392                                     ; preds = %387
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 0
  %396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %395, i32 0, i64 1
  %397 = getelementptr inbounds %struct.LIST, %struct.LIST* %396, i32 0, i32 0
  %398 = load %union.rec*, %union.rec** %397, align 8
  store %union.rec* %398, %union.rec** @zz_tmp, align 8
  %399 = load %union.rec*, %union.rec** @zz_res, align 8
  %400 = bitcast %union.rec* %399 to %struct.word_type*
  %401 = getelementptr inbounds %struct.word_type, %struct.word_type* %400, i32 0, i32 0
  %402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %401, i32 0, i64 1
  %403 = getelementptr inbounds %struct.LIST, %struct.LIST* %402, i32 0, i32 0
  %404 = load %union.rec*, %union.rec** %403, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 0
  %408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %407, i32 0, i64 1
  %409 = getelementptr inbounds %struct.LIST, %struct.LIST* %408, i32 0, i32 0
  store %union.rec* %404, %union.rec** %409, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 0
  %414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %413, i32 0, i64 1
  %415 = getelementptr inbounds %struct.LIST, %struct.LIST* %414, i32 0, i32 0
  %416 = load %union.rec*, %union.rec** %415, align 8
  %417 = bitcast %union.rec* %416 to %struct.word_type*
  %418 = getelementptr inbounds %struct.word_type, %struct.word_type* %417, i32 0, i32 0
  %419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %418, i32 0, i64 1
  %420 = getelementptr inbounds %struct.LIST, %struct.LIST* %419, i32 0, i32 1
  store %union.rec* %410, %union.rec** %420, align 8
  %421 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  %423 = bitcast %union.rec* %422 to %struct.word_type*
  %424 = getelementptr inbounds %struct.word_type, %struct.word_type* %423, i32 0, i32 0
  %425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %424, i32 0, i64 1
  %426 = getelementptr inbounds %struct.LIST, %struct.LIST* %425, i32 0, i32 0
  store %union.rec* %421, %union.rec** %426, align 8
  %427 = load %union.rec*, %union.rec** @zz_res, align 8
  %428 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %429 = bitcast %union.rec* %428 to %struct.word_type*
  %430 = getelementptr inbounds %struct.word_type, %struct.word_type* %429, i32 0, i32 0
  %431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %430, i32 0, i64 1
  %432 = getelementptr inbounds %struct.LIST, %struct.LIST* %431, i32 0, i32 1
  store %union.rec* %427, %union.rec** %432, align 8
  br label %433

; <label>:433                                     ; preds = %392, %390
  %434 = phi %union.rec* [ %391, %390 ], [ %427, %392 ]
  br label %435

; <label>:435                                     ; preds = %433, %385
  %436 = phi %union.rec* [ %386, %385 ], [ %434, %433 ]
  br label %437

; <label>:437                                     ; preds = %435, %138
  br label %2209

; <label>:438                                     ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %439 = load %union.rec*, %union.rec** %1, align 8
  %440 = bitcast %union.rec* %439 to %struct.word_type*
  %441 = getelementptr inbounds %struct.word_type, %struct.word_type* %440, i32 0, i32 1
  %442 = bitcast %union.FIRST_UNION* %441 to %struct.anon*
  %443 = getelementptr inbounds %struct.anon, %struct.anon* %442, i32 0, i32 0
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i64
  %446 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %445
  %447 = load i8, i8* %446, align 1
  %448 = zext i8 %447 to i32
  store i32 %448, i32* @zz_size, align 4
  %449 = sext i32 %448 to i64
  %450 = icmp uge i64 %449, 265
  br i1 %450, label %451, label %454

; <label>:451                                     ; preds = %438
  %452 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %453 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %452)
  br label %479

; <label>:454                                     ; preds = %438
  %455 = load i32, i32* @zz_size, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %456
  %458 = load %union.rec*, %union.rec** %457, align 8
  %459 = icmp eq %union.rec* %458, null
  br i1 %459, label %460, label %464

; <label>:460                                     ; preds = %454
  %461 = load i32, i32* @zz_size, align 4
  %462 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %463 = call %union.rec* @GetMemory(i32 %461, %struct.FILE_POS* %462)
  store %union.rec* %463, %union.rec** @zz_hold, align 8
  br label %478

; <label>:464                                     ; preds = %454
  %465 = load i32, i32* @zz_size, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %466
  %468 = load %union.rec*, %union.rec** %467, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  store %union.rec* %468, %union.rec** @zz_hold, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %470 = bitcast %union.rec* %469 to %struct.word_type*
  %471 = getelementptr inbounds %struct.word_type, %struct.word_type* %470, i32 0, i32 0
  %472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %471, i32 0, i64 0
  %473 = getelementptr inbounds %struct.LIST, %struct.LIST* %472, i32 0, i32 0
  %474 = load %union.rec*, %union.rec** %473, align 8
  %475 = load i32, i32* @zz_size, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %476
  store %union.rec* %474, %union.rec** %477, align 8
  br label %478

; <label>:478                                     ; preds = %464, %460
  br label %479

; <label>:479                                     ; preds = %478, %451
  %480 = load %union.rec*, %union.rec** %1, align 8
  %481 = bitcast %union.rec* %480 to %struct.word_type*
  %482 = getelementptr inbounds %struct.word_type, %struct.word_type* %481, i32 0, i32 1
  %483 = bitcast %union.FIRST_UNION* %482 to %struct.anon*
  %484 = getelementptr inbounds %struct.anon, %struct.anon* %483, i32 0, i32 0
  %485 = load i8, i8* %484, align 1
  %486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %487 = bitcast %union.rec* %486 to %struct.word_type*
  %488 = getelementptr inbounds %struct.word_type, %struct.word_type* %487, i32 0, i32 1
  %489 = bitcast %union.FIRST_UNION* %488 to %struct.anon*
  %490 = getelementptr inbounds %struct.anon, %struct.anon* %489, i32 0, i32 0
  store i8 %485, i8* %490, align 1
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %493 = bitcast %union.rec* %492 to %struct.word_type*
  %494 = getelementptr inbounds %struct.word_type, %struct.word_type* %493, i32 0, i32 0
  %495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %494, i32 0, i64 1
  %496 = getelementptr inbounds %struct.LIST, %struct.LIST* %495, i32 0, i32 1
  store %union.rec* %491, %union.rec** %496, align 8
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 0
  %500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %499, i32 0, i64 1
  %501 = getelementptr inbounds %struct.LIST, %struct.LIST* %500, i32 0, i32 0
  store %union.rec* %491, %union.rec** %501, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 0
  %505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %504, i32 0, i64 0
  %506 = getelementptr inbounds %struct.LIST, %struct.LIST* %505, i32 0, i32 1
  store %union.rec* %491, %union.rec** %506, align 8
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %508 = bitcast %union.rec* %507 to %struct.word_type*
  %509 = getelementptr inbounds %struct.word_type, %struct.word_type* %508, i32 0, i32 0
  %510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %509, i32 0, i64 0
  %511 = getelementptr inbounds %struct.LIST, %struct.LIST* %510, i32 0, i32 0
  store %union.rec* %491, %union.rec** %511, align 8
  store %union.rec* %491, %union.rec** %res, align 8
  %512 = load %union.rec*, %union.rec** %1, align 8
  %513 = bitcast %union.rec* %512 to %struct.word_type*
  %514 = getelementptr inbounds %struct.word_type, %struct.word_type* %513, i32 0, i32 0
  %515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %514, i32 0, i64 0
  %516 = getelementptr inbounds %struct.LIST, %struct.LIST* %515, i32 0, i32 1
  %517 = load %union.rec*, %union.rec** %516, align 8
  store %union.rec* %517, %union.rec** %link, align 8
  br label %518

; <label>:518                                     ; preds = %721, %479
  %519 = load %union.rec*, %union.rec** %link, align 8
  %520 = load %union.rec*, %union.rec** %1, align 8
  %521 = icmp ne %union.rec* %519, %520
  br i1 %521, label %522, label %728

; <label>:522                                     ; preds = %518
  %523 = load %union.rec*, %union.rec** %link, align 8
  %524 = bitcast %union.rec* %523 to %struct.word_type*
  %525 = getelementptr inbounds %struct.word_type, %struct.word_type* %524, i32 0, i32 0
  %526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %525, i32 0, i64 1
  %527 = getelementptr inbounds %struct.LIST, %struct.LIST* %526, i32 0, i32 0
  %528 = load %union.rec*, %union.rec** %527, align 8
  store %union.rec* %528, %union.rec** %y, align 8
  br label %529

; <label>:529                                     ; preds = %539, %522
  %530 = load %union.rec*, %union.rec** %y, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 1
  %533 = bitcast %union.FIRST_UNION* %532 to %struct.anon*
  %534 = getelementptr inbounds %struct.anon, %struct.anon* %533, i32 0, i32 0
  %535 = load i8, i8* %534, align 1
  %536 = zext i8 %535 to i32
  %537 = icmp eq i32 %536, 0
  br i1 %537, label %538, label %546

; <label>:538                                     ; preds = %529
  br label %539

; <label>:539                                     ; preds = %538
  %540 = load %union.rec*, %union.rec** %y, align 8
  %541 = bitcast %union.rec* %540 to %struct.word_type*
  %542 = getelementptr inbounds %struct.word_type, %struct.word_type* %541, i32 0, i32 0
  %543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %542, i32 0, i64 1
  %544 = getelementptr inbounds %struct.LIST, %struct.LIST* %543, i32 0, i32 0
  %545 = load %union.rec*, %union.rec** %544, align 8
  store %union.rec* %545, %union.rec** %y, align 8
  br label %529

; <label>:546                                     ; preds = %529
  %547 = load %union.rec*, %union.rec** %y, align 8
  %548 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %549 = call %union.rec* @CopyObject(%union.rec* %547, %struct.FILE_POS* %548)
  store %union.rec* %549, %union.rec** %tmp, align 8
  %550 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %551 = zext i8 %550 to i32
  store i32 %551, i32* @zz_size, align 4
  %552 = sext i32 %551 to i64
  %553 = icmp uge i64 %552, 265
  br i1 %553, label %554, label %557

; <label>:554                                     ; preds = %546
  %555 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %556 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %555)
  br label %582

; <label>:557                                     ; preds = %546
  %558 = load i32, i32* @zz_size, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %559
  %561 = load %union.rec*, %union.rec** %560, align 8
  %562 = icmp eq %union.rec* %561, null
  br i1 %562, label %563, label %567

; <label>:563                                     ; preds = %557
  %564 = load i32, i32* @zz_size, align 4
  %565 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %566 = call %union.rec* @GetMemory(i32 %564, %struct.FILE_POS* %565)
  store %union.rec* %566, %union.rec** @zz_hold, align 8
  br label %581

; <label>:567                                     ; preds = %557
  %568 = load i32, i32* @zz_size, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %569
  %571 = load %union.rec*, %union.rec** %570, align 8
  store %union.rec* %571, %union.rec** @zz_hold, align 8
  store %union.rec* %571, %union.rec** @zz_hold, align 8
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 0
  %575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %574, i32 0, i64 0
  %576 = getelementptr inbounds %struct.LIST, %struct.LIST* %575, i32 0, i32 0
  %577 = load %union.rec*, %union.rec** %576, align 8
  %578 = load i32, i32* @zz_size, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %579
  store %union.rec* %577, %union.rec** %580, align 8
  br label %581

; <label>:581                                     ; preds = %567, %563
  br label %582

; <label>:582                                     ; preds = %581, %554
  %583 = load %union.rec*, %union.rec** @zz_hold, align 8
  %584 = bitcast %union.rec* %583 to %struct.word_type*
  %585 = getelementptr inbounds %struct.word_type, %struct.word_type* %584, i32 0, i32 1
  %586 = bitcast %union.FIRST_UNION* %585 to %struct.anon*
  %587 = getelementptr inbounds %struct.anon, %struct.anon* %586, i32 0, i32 0
  store i8 0, i8* %587, align 1
  %588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 0
  %592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %591, i32 0, i64 1
  %593 = getelementptr inbounds %struct.LIST, %struct.LIST* %592, i32 0, i32 1
  store %union.rec* %588, %union.rec** %593, align 8
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 0
  %597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %596, i32 0, i64 1
  %598 = getelementptr inbounds %struct.LIST, %struct.LIST* %597, i32 0, i32 0
  store %union.rec* %588, %union.rec** %598, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 0
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 1
  store %union.rec* %588, %union.rec** %603, align 8
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %605 = bitcast %union.rec* %604 to %struct.word_type*
  %606 = getelementptr inbounds %struct.word_type, %struct.word_type* %605, i32 0, i32 0
  %607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %606, i32 0, i64 0
  %608 = getelementptr inbounds %struct.LIST, %struct.LIST* %607, i32 0, i32 0
  store %union.rec* %588, %union.rec** %608, align 8
  store %union.rec* %588, %union.rec** @xx_link, align 8
  %609 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %609, %union.rec** @zz_res, align 8
  %610 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %610, %union.rec** @zz_hold, align 8
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %612 = icmp eq %union.rec* %611, null
  br i1 %612, label %613, label %615

; <label>:613                                     ; preds = %582
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %663

; <label>:615                                     ; preds = %582
  %616 = load %union.rec*, %union.rec** @zz_res, align 8
  %617 = icmp eq %union.rec* %616, null
  br i1 %617, label %618, label %620

; <label>:618                                     ; preds = %615
  %619 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %661

; <label>:620                                     ; preds = %615
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 0
  %624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %623, i32 0, i64 0
  %625 = getelementptr inbounds %struct.LIST, %struct.LIST* %624, i32 0, i32 0
  %626 = load %union.rec*, %union.rec** %625, align 8
  store %union.rec* %626, %union.rec** @zz_tmp, align 8
  %627 = load %union.rec*, %union.rec** @zz_res, align 8
  %628 = bitcast %union.rec* %627 to %struct.word_type*
  %629 = getelementptr inbounds %struct.word_type, %struct.word_type* %628, i32 0, i32 0
  %630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %629, i32 0, i64 0
  %631 = getelementptr inbounds %struct.LIST, %struct.LIST* %630, i32 0, i32 0
  %632 = load %union.rec*, %union.rec** %631, align 8
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 0
  %636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %635, i32 0, i64 0
  %637 = getelementptr inbounds %struct.LIST, %struct.LIST* %636, i32 0, i32 0
  store %union.rec* %632, %union.rec** %637, align 8
  %638 = load %union.rec*, %union.rec** @zz_hold, align 8
  %639 = load %union.rec*, %union.rec** @zz_res, align 8
  %640 = bitcast %union.rec* %639 to %struct.word_type*
  %641 = getelementptr inbounds %struct.word_type, %struct.word_type* %640, i32 0, i32 0
  %642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %641, i32 0, i64 0
  %643 = getelementptr inbounds %struct.LIST, %struct.LIST* %642, i32 0, i32 0
  %644 = load %union.rec*, %union.rec** %643, align 8
  %645 = bitcast %union.rec* %644 to %struct.word_type*
  %646 = getelementptr inbounds %struct.word_type, %struct.word_type* %645, i32 0, i32 0
  %647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %646, i32 0, i64 0
  %648 = getelementptr inbounds %struct.LIST, %struct.LIST* %647, i32 0, i32 1
  store %union.rec* %638, %union.rec** %648, align 8
  %649 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %650 = load %union.rec*, %union.rec** @zz_res, align 8
  %651 = bitcast %union.rec* %650 to %struct.word_type*
  %652 = getelementptr inbounds %struct.word_type, %struct.word_type* %651, i32 0, i32 0
  %653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %652, i32 0, i64 0
  %654 = getelementptr inbounds %struct.LIST, %struct.LIST* %653, i32 0, i32 0
  store %union.rec* %649, %union.rec** %654, align 8
  %655 = load %union.rec*, %union.rec** @zz_res, align 8
  %656 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %657 = bitcast %union.rec* %656 to %struct.word_type*
  %658 = getelementptr inbounds %struct.word_type, %struct.word_type* %657, i32 0, i32 0
  %659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %658, i32 0, i64 0
  %660 = getelementptr inbounds %struct.LIST, %struct.LIST* %659, i32 0, i32 1
  store %union.rec* %655, %union.rec** %660, align 8
  br label %661

; <label>:661                                     ; preds = %620, %618
  %662 = phi %union.rec* [ %619, %618 ], [ %655, %620 ]
  br label %663

; <label>:663                                     ; preds = %661, %613
  %664 = phi %union.rec* [ %614, %613 ], [ %662, %661 ]
  %665 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %665, %union.rec** @zz_res, align 8
  %666 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %666, %union.rec** @zz_hold, align 8
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %668 = icmp eq %union.rec* %667, null
  br i1 %668, label %669, label %671

; <label>:669                                     ; preds = %663
  %670 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %719

; <label>:671                                     ; preds = %663
  %672 = load %union.rec*, %union.rec** @zz_res, align 8
  %673 = icmp eq %union.rec* %672, null
  br i1 %673, label %674, label %676

; <label>:674                                     ; preds = %671
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %717

; <label>:676                                     ; preds = %671
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 0
  %680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %679, i32 0, i64 1
  %681 = getelementptr inbounds %struct.LIST, %struct.LIST* %680, i32 0, i32 0
  %682 = load %union.rec*, %union.rec** %681, align 8
  store %union.rec* %682, %union.rec** @zz_tmp, align 8
  %683 = load %union.rec*, %union.rec** @zz_res, align 8
  %684 = bitcast %union.rec* %683 to %struct.word_type*
  %685 = getelementptr inbounds %struct.word_type, %struct.word_type* %684, i32 0, i32 0
  %686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %685, i32 0, i64 1
  %687 = getelementptr inbounds %struct.LIST, %struct.LIST* %686, i32 0, i32 0
  %688 = load %union.rec*, %union.rec** %687, align 8
  %689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 0
  %692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %691, i32 0, i64 1
  %693 = getelementptr inbounds %struct.LIST, %struct.LIST* %692, i32 0, i32 0
  store %union.rec* %688, %union.rec** %693, align 8
  %694 = load %union.rec*, %union.rec** @zz_hold, align 8
  %695 = load %union.rec*, %union.rec** @zz_res, align 8
  %696 = bitcast %union.rec* %695 to %struct.word_type*
  %697 = getelementptr inbounds %struct.word_type, %struct.word_type* %696, i32 0, i32 0
  %698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %697, i32 0, i64 1
  %699 = getelementptr inbounds %struct.LIST, %struct.LIST* %698, i32 0, i32 0
  %700 = load %union.rec*, %union.rec** %699, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 0
  %703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %702, i32 0, i64 1
  %704 = getelementptr inbounds %struct.LIST, %struct.LIST* %703, i32 0, i32 1
  store %union.rec* %694, %union.rec** %704, align 8
  %705 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %706 = load %union.rec*, %union.rec** @zz_res, align 8
  %707 = bitcast %union.rec* %706 to %struct.word_type*
  %708 = getelementptr inbounds %struct.word_type, %struct.word_type* %707, i32 0, i32 0
  %709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %708, i32 0, i64 1
  %710 = getelementptr inbounds %struct.LIST, %struct.LIST* %709, i32 0, i32 0
  store %union.rec* %705, %union.rec** %710, align 8
  %711 = load %union.rec*, %union.rec** @zz_res, align 8
  %712 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %713 = bitcast %union.rec* %712 to %struct.word_type*
  %714 = getelementptr inbounds %struct.word_type, %struct.word_type* %713, i32 0, i32 0
  %715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %714, i32 0, i64 1
  %716 = getelementptr inbounds %struct.LIST, %struct.LIST* %715, i32 0, i32 1
  store %union.rec* %711, %union.rec** %716, align 8
  br label %717

; <label>:717                                     ; preds = %676, %674
  %718 = phi %union.rec* [ %675, %674 ], [ %711, %676 ]
  br label %719

; <label>:719                                     ; preds = %717, %669
  %720 = phi %union.rec* [ %670, %669 ], [ %718, %717 ]
  br label %721

; <label>:721                                     ; preds = %719
  %722 = load %union.rec*, %union.rec** %link, align 8
  %723 = bitcast %union.rec* %722 to %struct.word_type*
  %724 = getelementptr inbounds %struct.word_type, %struct.word_type* %723, i32 0, i32 0
  %725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %724, i32 0, i64 0
  %726 = getelementptr inbounds %struct.LIST, %struct.LIST* %725, i32 0, i32 1
  %727 = load %union.rec*, %union.rec** %726, align 8
  store %union.rec* %727, %union.rec** %link, align 8
  br label %518

; <label>:728                                     ; preds = %518
  br label %2209

; <label>:729                                     ; preds = %0
  %730 = load %union.rec*, %union.rec** %1, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 1
  %733 = bitcast %union.FIRST_UNION* %732 to %struct.anon*
  %734 = getelementptr inbounds %struct.anon, %struct.anon* %733, i32 0, i32 0
  %735 = load i8, i8* %734, align 1
  %736 = zext i8 %735 to i64
  %737 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %736
  %738 = load i8, i8* %737, align 1
  %739 = zext i8 %738 to i32
  store i32 %739, i32* @zz_size, align 4
  %740 = sext i32 %739 to i64
  %741 = icmp uge i64 %740, 265
  br i1 %741, label %742, label %745

; <label>:742                                     ; preds = %729
  %743 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %744 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %743)
  br label %770

; <label>:745                                     ; preds = %729
  %746 = load i32, i32* @zz_size, align 4
  %747 = sext i32 %746 to i64
  %748 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %747
  %749 = load %union.rec*, %union.rec** %748, align 8
  %750 = icmp eq %union.rec* %749, null
  br i1 %750, label %751, label %755

; <label>:751                                     ; preds = %745
  %752 = load i32, i32* @zz_size, align 4
  %753 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %754 = call %union.rec* @GetMemory(i32 %752, %struct.FILE_POS* %753)
  store %union.rec* %754, %union.rec** @zz_hold, align 8
  br label %769

; <label>:755                                     ; preds = %745
  %756 = load i32, i32* @zz_size, align 4
  %757 = sext i32 %756 to i64
  %758 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %757
  %759 = load %union.rec*, %union.rec** %758, align 8
  store %union.rec* %759, %union.rec** @zz_hold, align 8
  store %union.rec* %759, %union.rec** @zz_hold, align 8
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %761 = bitcast %union.rec* %760 to %struct.word_type*
  %762 = getelementptr inbounds %struct.word_type, %struct.word_type* %761, i32 0, i32 0
  %763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %762, i32 0, i64 0
  %764 = getelementptr inbounds %struct.LIST, %struct.LIST* %763, i32 0, i32 0
  %765 = load %union.rec*, %union.rec** %764, align 8
  %766 = load i32, i32* @zz_size, align 4
  %767 = sext i32 %766 to i64
  %768 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %767
  store %union.rec* %765, %union.rec** %768, align 8
  br label %769

; <label>:769                                     ; preds = %755, %751
  br label %770

; <label>:770                                     ; preds = %769, %742
  %771 = load %union.rec*, %union.rec** %1, align 8
  %772 = bitcast %union.rec* %771 to %struct.word_type*
  %773 = getelementptr inbounds %struct.word_type, %struct.word_type* %772, i32 0, i32 1
  %774 = bitcast %union.FIRST_UNION* %773 to %struct.anon*
  %775 = getelementptr inbounds %struct.anon, %struct.anon* %774, i32 0, i32 0
  %776 = load i8, i8* %775, align 1
  %777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 1
  %780 = bitcast %union.FIRST_UNION* %779 to %struct.anon*
  %781 = getelementptr inbounds %struct.anon, %struct.anon* %780, i32 0, i32 0
  store i8 %776, i8* %781, align 1
  %782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %784 = bitcast %union.rec* %783 to %struct.word_type*
  %785 = getelementptr inbounds %struct.word_type, %struct.word_type* %784, i32 0, i32 0
  %786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %785, i32 0, i64 1
  %787 = getelementptr inbounds %struct.LIST, %struct.LIST* %786, i32 0, i32 1
  store %union.rec* %782, %union.rec** %787, align 8
  %788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %789 = bitcast %union.rec* %788 to %struct.word_type*
  %790 = getelementptr inbounds %struct.word_type, %struct.word_type* %789, i32 0, i32 0
  %791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %790, i32 0, i64 1
  %792 = getelementptr inbounds %struct.LIST, %struct.LIST* %791, i32 0, i32 0
  store %union.rec* %782, %union.rec** %792, align 8
  %793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %794 = bitcast %union.rec* %793 to %struct.word_type*
  %795 = getelementptr inbounds %struct.word_type, %struct.word_type* %794, i32 0, i32 0
  %796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %795, i32 0, i64 0
  %797 = getelementptr inbounds %struct.LIST, %struct.LIST* %796, i32 0, i32 1
  store %union.rec* %782, %union.rec** %797, align 8
  %798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %799 = bitcast %union.rec* %798 to %struct.word_type*
  %800 = getelementptr inbounds %struct.word_type, %struct.word_type* %799, i32 0, i32 0
  %801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %800, i32 0, i64 0
  %802 = getelementptr inbounds %struct.LIST, %struct.LIST* %801, i32 0, i32 0
  store %union.rec* %782, %union.rec** %802, align 8
  store %union.rec* %782, %union.rec** %res, align 8
  %803 = load %union.rec*, %union.rec** %1, align 8
  %804 = bitcast %union.rec* %803 to %struct.word_type*
  %805 = getelementptr inbounds %struct.word_type, %struct.word_type* %804, i32 0, i32 0
  %806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %805, i32 0, i64 0
  %807 = getelementptr inbounds %struct.LIST, %struct.LIST* %806, i32 0, i32 1
  %808 = load %union.rec*, %union.rec** %807, align 8
  store %union.rec* %808, %union.rec** %link, align 8
  br label %809

; <label>:809                                     ; preds = %1009, %770
  %810 = load %union.rec*, %union.rec** %link, align 8
  %811 = load %union.rec*, %union.rec** %1, align 8
  %812 = icmp ne %union.rec* %810, %811
  br i1 %812, label %813, label %1016

; <label>:813                                     ; preds = %809
  %814 = load %union.rec*, %union.rec** %link, align 8
  %815 = bitcast %union.rec* %814 to %struct.word_type*
  %816 = getelementptr inbounds %struct.word_type, %struct.word_type* %815, i32 0, i32 0
  %817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %816, i32 0, i64 1
  %818 = getelementptr inbounds %struct.LIST, %struct.LIST* %817, i32 0, i32 0
  %819 = load %union.rec*, %union.rec** %818, align 8
  store %union.rec* %819, %union.rec** %y, align 8
  br label %820

; <label>:820                                     ; preds = %830, %813
  %821 = load %union.rec*, %union.rec** %y, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 1
  %824 = bitcast %union.FIRST_UNION* %823 to %struct.anon*
  %825 = getelementptr inbounds %struct.anon, %struct.anon* %824, i32 0, i32 0
  %826 = load i8, i8* %825, align 1
  %827 = zext i8 %826 to i32
  %828 = icmp eq i32 %827, 0
  br i1 %828, label %829, label %837

; <label>:829                                     ; preds = %820
  br label %830

; <label>:830                                     ; preds = %829
  %831 = load %union.rec*, %union.rec** %y, align 8
  %832 = bitcast %union.rec* %831 to %struct.word_type*
  %833 = getelementptr inbounds %struct.word_type, %struct.word_type* %832, i32 0, i32 0
  %834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %833, i32 0, i64 1
  %835 = getelementptr inbounds %struct.LIST, %struct.LIST* %834, i32 0, i32 0
  %836 = load %union.rec*, %union.rec** %835, align 8
  store %union.rec* %836, %union.rec** %y, align 8
  br label %820

; <label>:837                                     ; preds = %820
  %838 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %839 = zext i8 %838 to i32
  store i32 %839, i32* @zz_size, align 4
  %840 = sext i32 %839 to i64
  %841 = icmp uge i64 %840, 265
  br i1 %841, label %842, label %845

; <label>:842                                     ; preds = %837
  %843 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %844 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %843)
  br label %870

; <label>:845                                     ; preds = %837
  %846 = load i32, i32* @zz_size, align 4
  %847 = sext i32 %846 to i64
  %848 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %847
  %849 = load %union.rec*, %union.rec** %848, align 8
  %850 = icmp eq %union.rec* %849, null
  br i1 %850, label %851, label %855

; <label>:851                                     ; preds = %845
  %852 = load i32, i32* @zz_size, align 4
  %853 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %854 = call %union.rec* @GetMemory(i32 %852, %struct.FILE_POS* %853)
  store %union.rec* %854, %union.rec** @zz_hold, align 8
  br label %869

; <label>:855                                     ; preds = %845
  %856 = load i32, i32* @zz_size, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %857
  %859 = load %union.rec*, %union.rec** %858, align 8
  store %union.rec* %859, %union.rec** @zz_hold, align 8
  store %union.rec* %859, %union.rec** @zz_hold, align 8
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %861 = bitcast %union.rec* %860 to %struct.word_type*
  %862 = getelementptr inbounds %struct.word_type, %struct.word_type* %861, i32 0, i32 0
  %863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %862, i32 0, i64 0
  %864 = getelementptr inbounds %struct.LIST, %struct.LIST* %863, i32 0, i32 0
  %865 = load %union.rec*, %union.rec** %864, align 8
  %866 = load i32, i32* @zz_size, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %867
  store %union.rec* %865, %union.rec** %868, align 8
  br label %869

; <label>:869                                     ; preds = %855, %851
  br label %870

; <label>:870                                     ; preds = %869, %842
  %871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 1
  %874 = bitcast %union.FIRST_UNION* %873 to %struct.anon*
  %875 = getelementptr inbounds %struct.anon, %struct.anon* %874, i32 0, i32 0
  store i8 0, i8* %875, align 1
  %876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 0
  %880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %879, i32 0, i64 1
  %881 = getelementptr inbounds %struct.LIST, %struct.LIST* %880, i32 0, i32 1
  store %union.rec* %876, %union.rec** %881, align 8
  %882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %883 = bitcast %union.rec* %882 to %struct.word_type*
  %884 = getelementptr inbounds %struct.word_type, %struct.word_type* %883, i32 0, i32 0
  %885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %884, i32 0, i64 1
  %886 = getelementptr inbounds %struct.LIST, %struct.LIST* %885, i32 0, i32 0
  store %union.rec* %876, %union.rec** %886, align 8
  %887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %888 = bitcast %union.rec* %887 to %struct.word_type*
  %889 = getelementptr inbounds %struct.word_type, %struct.word_type* %888, i32 0, i32 0
  %890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %889, i32 0, i64 0
  %891 = getelementptr inbounds %struct.LIST, %struct.LIST* %890, i32 0, i32 1
  store %union.rec* %876, %union.rec** %891, align 8
  %892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %893 = bitcast %union.rec* %892 to %struct.word_type*
  %894 = getelementptr inbounds %struct.word_type, %struct.word_type* %893, i32 0, i32 0
  %895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %894, i32 0, i64 0
  %896 = getelementptr inbounds %struct.LIST, %struct.LIST* %895, i32 0, i32 0
  store %union.rec* %876, %union.rec** %896, align 8
  store %union.rec* %876, %union.rec** @xx_link, align 8
  %897 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %897, %union.rec** @zz_res, align 8
  %898 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %898, %union.rec** @zz_hold, align 8
  %899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %900 = icmp eq %union.rec* %899, null
  br i1 %900, label %901, label %903

; <label>:901                                     ; preds = %870
  %902 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %951

; <label>:903                                     ; preds = %870
  %904 = load %union.rec*, %union.rec** @zz_res, align 8
  %905 = icmp eq %union.rec* %904, null
  br i1 %905, label %906, label %908

; <label>:906                                     ; preds = %903
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %949

; <label>:908                                     ; preds = %903
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %910 = bitcast %union.rec* %909 to %struct.word_type*
  %911 = getelementptr inbounds %struct.word_type, %struct.word_type* %910, i32 0, i32 0
  %912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %911, i32 0, i64 0
  %913 = getelementptr inbounds %struct.LIST, %struct.LIST* %912, i32 0, i32 0
  %914 = load %union.rec*, %union.rec** %913, align 8
  store %union.rec* %914, %union.rec** @zz_tmp, align 8
  %915 = load %union.rec*, %union.rec** @zz_res, align 8
  %916 = bitcast %union.rec* %915 to %struct.word_type*
  %917 = getelementptr inbounds %struct.word_type, %struct.word_type* %916, i32 0, i32 0
  %918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %917, i32 0, i64 0
  %919 = getelementptr inbounds %struct.LIST, %struct.LIST* %918, i32 0, i32 0
  %920 = load %union.rec*, %union.rec** %919, align 8
  %921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %922 = bitcast %union.rec* %921 to %struct.word_type*
  %923 = getelementptr inbounds %struct.word_type, %struct.word_type* %922, i32 0, i32 0
  %924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %923, i32 0, i64 0
  %925 = getelementptr inbounds %struct.LIST, %struct.LIST* %924, i32 0, i32 0
  store %union.rec* %920, %union.rec** %925, align 8
  %926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %927 = load %union.rec*, %union.rec** @zz_res, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 0
  %930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %929, i32 0, i64 0
  %931 = getelementptr inbounds %struct.LIST, %struct.LIST* %930, i32 0, i32 0
  %932 = load %union.rec*, %union.rec** %931, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 0
  %935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %934, i32 0, i64 0
  %936 = getelementptr inbounds %struct.LIST, %struct.LIST* %935, i32 0, i32 1
  store %union.rec* %926, %union.rec** %936, align 8
  %937 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %938 = load %union.rec*, %union.rec** @zz_res, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 0
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 0
  store %union.rec* %937, %union.rec** %942, align 8
  %943 = load %union.rec*, %union.rec** @zz_res, align 8
  %944 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %945 = bitcast %union.rec* %944 to %struct.word_type*
  %946 = getelementptr inbounds %struct.word_type, %struct.word_type* %945, i32 0, i32 0
  %947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %946, i32 0, i64 0
  %948 = getelementptr inbounds %struct.LIST, %struct.LIST* %947, i32 0, i32 1
  store %union.rec* %943, %union.rec** %948, align 8
  br label %949

; <label>:949                                     ; preds = %908, %906
  %950 = phi %union.rec* [ %907, %906 ], [ %943, %908 ]
  br label %951

; <label>:951                                     ; preds = %949, %901
  %952 = phi %union.rec* [ %902, %901 ], [ %950, %949 ]
  %953 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %953, %union.rec** @zz_res, align 8
  %954 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %954, %union.rec** @zz_hold, align 8
  %955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %956 = icmp eq %union.rec* %955, null
  br i1 %956, label %957, label %959

; <label>:957                                     ; preds = %951
  %958 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1007

; <label>:959                                     ; preds = %951
  %960 = load %union.rec*, %union.rec** @zz_res, align 8
  %961 = icmp eq %union.rec* %960, null
  br i1 %961, label %962, label %964

; <label>:962                                     ; preds = %959
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1005

; <label>:964                                     ; preds = %959
  %965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %966 = bitcast %union.rec* %965 to %struct.word_type*
  %967 = getelementptr inbounds %struct.word_type, %struct.word_type* %966, i32 0, i32 0
  %968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %967, i32 0, i64 1
  %969 = getelementptr inbounds %struct.LIST, %struct.LIST* %968, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %969, align 8
  store %union.rec* %970, %union.rec** @zz_tmp, align 8
  %971 = load %union.rec*, %union.rec** @zz_res, align 8
  %972 = bitcast %union.rec* %971 to %struct.word_type*
  %973 = getelementptr inbounds %struct.word_type, %struct.word_type* %972, i32 0, i32 0
  %974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %973, i32 0, i64 1
  %975 = getelementptr inbounds %struct.LIST, %struct.LIST* %974, i32 0, i32 0
  %976 = load %union.rec*, %union.rec** %975, align 8
  %977 = load %union.rec*, %union.rec** @zz_hold, align 8
  %978 = bitcast %union.rec* %977 to %struct.word_type*
  %979 = getelementptr inbounds %struct.word_type, %struct.word_type* %978, i32 0, i32 0
  %980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %979, i32 0, i64 1
  %981 = getelementptr inbounds %struct.LIST, %struct.LIST* %980, i32 0, i32 0
  store %union.rec* %976, %union.rec** %981, align 8
  %982 = load %union.rec*, %union.rec** @zz_hold, align 8
  %983 = load %union.rec*, %union.rec** @zz_res, align 8
  %984 = bitcast %union.rec* %983 to %struct.word_type*
  %985 = getelementptr inbounds %struct.word_type, %struct.word_type* %984, i32 0, i32 0
  %986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %985, i32 0, i64 1
  %987 = getelementptr inbounds %struct.LIST, %struct.LIST* %986, i32 0, i32 0
  %988 = load %union.rec*, %union.rec** %987, align 8
  %989 = bitcast %union.rec* %988 to %struct.word_type*
  %990 = getelementptr inbounds %struct.word_type, %struct.word_type* %989, i32 0, i32 0
  %991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %990, i32 0, i64 1
  %992 = getelementptr inbounds %struct.LIST, %struct.LIST* %991, i32 0, i32 1
  store %union.rec* %982, %union.rec** %992, align 8
  %993 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %994 = load %union.rec*, %union.rec** @zz_res, align 8
  %995 = bitcast %union.rec* %994 to %struct.word_type*
  %996 = getelementptr inbounds %struct.word_type, %struct.word_type* %995, i32 0, i32 0
  %997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %996, i32 0, i64 1
  %998 = getelementptr inbounds %struct.LIST, %struct.LIST* %997, i32 0, i32 0
  store %union.rec* %993, %union.rec** %998, align 8
  %999 = load %union.rec*, %union.rec** @zz_res, align 8
  %1000 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1001 = bitcast %union.rec* %1000 to %struct.word_type*
  %1002 = getelementptr inbounds %struct.word_type, %struct.word_type* %1001, i32 0, i32 0
  %1003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1002, i32 0, i64 1
  %1004 = getelementptr inbounds %struct.LIST, %struct.LIST* %1003, i32 0, i32 1
  store %union.rec* %999, %union.rec** %1004, align 8
  br label %1005

; <label>:1005                                    ; preds = %964, %962
  %1006 = phi %union.rec* [ %963, %962 ], [ %999, %964 ]
  br label %1007

; <label>:1007                                    ; preds = %1005, %957
  %1008 = phi %union.rec* [ %958, %957 ], [ %1006, %1005 ]
  br label %1009

; <label>:1009                                    ; preds = %1007
  %1010 = load %union.rec*, %union.rec** %link, align 8
  %1011 = bitcast %union.rec* %1010 to %struct.word_type*
  %1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %1011, i32 0, i32 0
  %1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1012, i32 0, i64 0
  %1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %1013, i32 0, i32 1
  %1015 = load %union.rec*, %union.rec** %1014, align 8
  store %union.rec* %1015, %union.rec** %link, align 8
  br label %809

; <label>:1016                                    ; preds = %809
  br label %2209

; <label>:1017                                    ; preds = %0
  %1018 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1018, %union.rec** %res, align 8
  br label %2209

; <label>:1019                                    ; preds = %0
  %1020 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %1021 = zext i8 %1020 to i32
  store i32 %1021, i32* @zz_size, align 4
  %1022 = sext i32 %1021 to i64
  %1023 = icmp uge i64 %1022, 265
  br i1 %1023, label %1024, label %1027

; <label>:1024                                    ; preds = %1019
  %1025 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1026 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1025)
  br label %1052

; <label>:1027                                    ; preds = %1019
  %1028 = load i32, i32* @zz_size, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1029
  %1031 = load %union.rec*, %union.rec** %1030, align 8
  %1032 = icmp eq %union.rec* %1031, null
  br i1 %1032, label %1033, label %1037

; <label>:1033                                    ; preds = %1027
  %1034 = load i32, i32* @zz_size, align 4
  %1035 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1036 = call %union.rec* @GetMemory(i32 %1034, %struct.FILE_POS* %1035)
  store %union.rec* %1036, %union.rec** @zz_hold, align 8
  br label %1051

; <label>:1037                                    ; preds = %1027
  %1038 = load i32, i32* @zz_size, align 4
  %1039 = sext i32 %1038 to i64
  %1040 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1039
  %1041 = load %union.rec*, %union.rec** %1040, align 8
  store %union.rec* %1041, %union.rec** @zz_hold, align 8
  store %union.rec* %1041, %union.rec** @zz_hold, align 8
  %1042 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1043 = bitcast %union.rec* %1042 to %struct.word_type*
  %1044 = getelementptr inbounds %struct.word_type, %struct.word_type* %1043, i32 0, i32 0
  %1045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1044, i32 0, i64 0
  %1046 = getelementptr inbounds %struct.LIST, %struct.LIST* %1045, i32 0, i32 0
  %1047 = load %union.rec*, %union.rec** %1046, align 8
  %1048 = load i32, i32* @zz_size, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1049
  store %union.rec* %1047, %union.rec** %1050, align 8
  br label %1051

; <label>:1051                                    ; preds = %1037, %1033
  br label %1052

; <label>:1052                                    ; preds = %1051, %1024
  %1053 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1054 = bitcast %union.rec* %1053 to %struct.word_type*
  %1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %1054, i32 0, i32 1
  %1056 = bitcast %union.FIRST_UNION* %1055 to %struct.anon*
  %1057 = getelementptr inbounds %struct.anon, %struct.anon* %1056, i32 0, i32 0
  store i8 10, i8* %1057, align 1
  %1058 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 0
  %1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1061, i32 0, i64 1
  %1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %1062, i32 0, i32 1
  store %union.rec* %1058, %union.rec** %1063, align 8
  %1064 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1065 = bitcast %union.rec* %1064 to %struct.word_type*
  %1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %1065, i32 0, i32 0
  %1067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1066, i32 0, i64 1
  %1068 = getelementptr inbounds %struct.LIST, %struct.LIST* %1067, i32 0, i32 0
  store %union.rec* %1058, %union.rec** %1068, align 8
  %1069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1070 = bitcast %union.rec* %1069 to %struct.word_type*
  %1071 = getelementptr inbounds %struct.word_type, %struct.word_type* %1070, i32 0, i32 0
  %1072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1071, i32 0, i64 0
  %1073 = getelementptr inbounds %struct.LIST, %struct.LIST* %1072, i32 0, i32 1
  store %union.rec* %1058, %union.rec** %1073, align 8
  %1074 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1075 = bitcast %union.rec* %1074 to %struct.word_type*
  %1076 = getelementptr inbounds %struct.word_type, %struct.word_type* %1075, i32 0, i32 0
  %1077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1076, i32 0, i64 0
  %1078 = getelementptr inbounds %struct.LIST, %struct.LIST* %1077, i32 0, i32 0
  store %union.rec* %1058, %union.rec** %1078, align 8
  store %union.rec* %1058, %union.rec** %res, align 8
  %1079 = load %union.rec*, %union.rec** %1, align 8
  %1080 = bitcast %union.rec* %1079 to %struct.closure_type*
  %1081 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1080, i32 0, i32 5
  %1082 = load %union.rec*, %union.rec** %1081, align 8
  %1083 = load %union.rec*, %union.rec** %res, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.closure_type*
  %1085 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1084, i32 0, i32 5
  store %union.rec* %1082, %union.rec** %1085, align 8
  %1086 = load %union.rec*, %union.rec** %1, align 8
  %1087 = bitcast %union.rec* %1086 to %struct.word_type*
  %1088 = getelementptr inbounds %struct.word_type, %struct.word_type* %1087, i32 0, i32 0
  %1089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1088, i32 0, i64 0
  %1090 = getelementptr inbounds %struct.LIST, %struct.LIST* %1089, i32 0, i32 1
  %1091 = load %union.rec*, %union.rec** %1090, align 8
  %1092 = load %union.rec*, %union.rec** %1, align 8
  %1093 = icmp ne %union.rec* %1091, %1092
  br i1 %1093, label %1097, label %1094

; <label>:1094                                    ; preds = %1052
  %1095 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1096 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1095, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i32 0, i32 0))
  br label %1097

; <label>:1097                                    ; preds = %1094, %1052
  %1098 = load %union.rec*, %union.rec** %1, align 8
  %1099 = bitcast %union.rec* %1098 to %struct.word_type*
  %1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %1099, i32 0, i32 0
  %1101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1100, i32 0, i64 0
  %1102 = getelementptr inbounds %struct.LIST, %struct.LIST* %1101, i32 0, i32 1
  %1103 = load %union.rec*, %union.rec** %1102, align 8
  %1104 = bitcast %union.rec* %1103 to %struct.word_type*
  %1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %1104, i32 0, i32 0
  %1106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1105, i32 0, i64 1
  %1107 = getelementptr inbounds %struct.LIST, %struct.LIST* %1106, i32 0, i32 0
  %1108 = load %union.rec*, %union.rec** %1107, align 8
  store %union.rec* %1108, %union.rec** %y, align 8
  br label %1109

; <label>:1109                                    ; preds = %1119, %1097
  %1110 = load %union.rec*, %union.rec** %y, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.word_type*
  %1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %1111, i32 0, i32 1
  %1113 = bitcast %union.FIRST_UNION* %1112 to %struct.anon*
  %1114 = getelementptr inbounds %struct.anon, %struct.anon* %1113, i32 0, i32 0
  %1115 = load i8, i8* %1114, align 1
  %1116 = zext i8 %1115 to i32
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1126

; <label>:1118                                    ; preds = %1109
  br label %1119

; <label>:1119                                    ; preds = %1118
  %1120 = load %union.rec*, %union.rec** %y, align 8
  %1121 = bitcast %union.rec* %1120 to %struct.word_type*
  %1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %1121, i32 0, i32 0
  %1123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1122, i32 0, i64 1
  %1124 = getelementptr inbounds %struct.LIST, %struct.LIST* %1123, i32 0, i32 0
  %1125 = load %union.rec*, %union.rec** %1124, align 8
  store %union.rec* %1125, %union.rec** %y, align 8
  br label %1109

; <label>:1126                                    ; preds = %1109
  %1127 = load %union.rec*, %union.rec** %y, align 8
  %1128 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %1129 = call %union.rec* @CopyObject(%union.rec* %1127, %struct.FILE_POS* %1128)
  store %union.rec* %1129, %union.rec** %tmp, align 8
  %1130 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1131 = zext i8 %1130 to i32
  store i32 %1131, i32* @zz_size, align 4
  %1132 = sext i32 %1131 to i64
  %1133 = icmp uge i64 %1132, 265
  br i1 %1133, label %1134, label %1137

; <label>:1134                                    ; preds = %1126
  %1135 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1136 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1135)
  br label %1162

; <label>:1137                                    ; preds = %1126
  %1138 = load i32, i32* @zz_size, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1139
  %1141 = load %union.rec*, %union.rec** %1140, align 8
  %1142 = icmp eq %union.rec* %1141, null
  br i1 %1142, label %1143, label %1147

; <label>:1143                                    ; preds = %1137
  %1144 = load i32, i32* @zz_size, align 4
  %1145 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1146 = call %union.rec* @GetMemory(i32 %1144, %struct.FILE_POS* %1145)
  store %union.rec* %1146, %union.rec** @zz_hold, align 8
  br label %1161

; <label>:1147                                    ; preds = %1137
  %1148 = load i32, i32* @zz_size, align 4
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1149
  %1151 = load %union.rec*, %union.rec** %1150, align 8
  store %union.rec* %1151, %union.rec** @zz_hold, align 8
  store %union.rec* %1151, %union.rec** @zz_hold, align 8
  %1152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1153 = bitcast %union.rec* %1152 to %struct.word_type*
  %1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %1153, i32 0, i32 0
  %1155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1154, i32 0, i64 0
  %1156 = getelementptr inbounds %struct.LIST, %struct.LIST* %1155, i32 0, i32 0
  %1157 = load %union.rec*, %union.rec** %1156, align 8
  %1158 = load i32, i32* @zz_size, align 4
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1159
  store %union.rec* %1157, %union.rec** %1160, align 8
  br label %1161

; <label>:1161                                    ; preds = %1147, %1143
  br label %1162

; <label>:1162                                    ; preds = %1161, %1134
  %1163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1164 = bitcast %union.rec* %1163 to %struct.word_type*
  %1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %1164, i32 0, i32 1
  %1166 = bitcast %union.FIRST_UNION* %1165 to %struct.anon*
  %1167 = getelementptr inbounds %struct.anon, %struct.anon* %1166, i32 0, i32 0
  store i8 0, i8* %1167, align 1
  %1168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1170 = bitcast %union.rec* %1169 to %struct.word_type*
  %1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %1170, i32 0, i32 0
  %1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1171, i32 0, i64 1
  %1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %1172, i32 0, i32 1
  store %union.rec* %1168, %union.rec** %1173, align 8
  %1174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1175 = bitcast %union.rec* %1174 to %struct.word_type*
  %1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %1175, i32 0, i32 0
  %1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1176, i32 0, i64 1
  %1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %1177, i32 0, i32 0
  store %union.rec* %1168, %union.rec** %1178, align 8
  %1179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.word_type*
  %1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %1180, i32 0, i32 0
  %1182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1181, i32 0, i64 0
  %1183 = getelementptr inbounds %struct.LIST, %struct.LIST* %1182, i32 0, i32 1
  store %union.rec* %1168, %union.rec** %1183, align 8
  %1184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1185 = bitcast %union.rec* %1184 to %struct.word_type*
  %1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %1185, i32 0, i32 0
  %1187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1186, i32 0, i64 0
  %1188 = getelementptr inbounds %struct.LIST, %struct.LIST* %1187, i32 0, i32 0
  store %union.rec* %1168, %union.rec** %1188, align 8
  store %union.rec* %1168, %union.rec** @xx_link, align 8
  %1189 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1189, %union.rec** @zz_res, align 8
  %1190 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1190, %union.rec** @zz_hold, align 8
  %1191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1192 = icmp eq %union.rec* %1191, null
  br i1 %1192, label %1193, label %1195

; <label>:1193                                    ; preds = %1162
  %1194 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1243

; <label>:1195                                    ; preds = %1162
  %1196 = load %union.rec*, %union.rec** @zz_res, align 8
  %1197 = icmp eq %union.rec* %1196, null
  br i1 %1197, label %1198, label %1200

; <label>:1198                                    ; preds = %1195
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1241

; <label>:1200                                    ; preds = %1195
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1202 = bitcast %union.rec* %1201 to %struct.word_type*
  %1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %1202, i32 0, i32 0
  %1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1203, i32 0, i64 0
  %1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %1204, i32 0, i32 0
  %1206 = load %union.rec*, %union.rec** %1205, align 8
  store %union.rec* %1206, %union.rec** @zz_tmp, align 8
  %1207 = load %union.rec*, %union.rec** @zz_res, align 8
  %1208 = bitcast %union.rec* %1207 to %struct.word_type*
  %1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %1208, i32 0, i32 0
  %1210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1209, i32 0, i64 0
  %1211 = getelementptr inbounds %struct.LIST, %struct.LIST* %1210, i32 0, i32 0
  %1212 = load %union.rec*, %union.rec** %1211, align 8
  %1213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1214 = bitcast %union.rec* %1213 to %struct.word_type*
  %1215 = getelementptr inbounds %struct.word_type, %struct.word_type* %1214, i32 0, i32 0
  %1216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1215, i32 0, i64 0
  %1217 = getelementptr inbounds %struct.LIST, %struct.LIST* %1216, i32 0, i32 0
  store %union.rec* %1212, %union.rec** %1217, align 8
  %1218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1219 = load %union.rec*, %union.rec** @zz_res, align 8
  %1220 = bitcast %union.rec* %1219 to %struct.word_type*
  %1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %1220, i32 0, i32 0
  %1222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1221, i32 0, i64 0
  %1223 = getelementptr inbounds %struct.LIST, %struct.LIST* %1222, i32 0, i32 0
  %1224 = load %union.rec*, %union.rec** %1223, align 8
  %1225 = bitcast %union.rec* %1224 to %struct.word_type*
  %1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %1225, i32 0, i32 0
  %1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1226, i32 0, i64 0
  %1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %1227, i32 0, i32 1
  store %union.rec* %1218, %union.rec** %1228, align 8
  %1229 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1230 = load %union.rec*, %union.rec** @zz_res, align 8
  %1231 = bitcast %union.rec* %1230 to %struct.word_type*
  %1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %1231, i32 0, i32 0
  %1233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1232, i32 0, i64 0
  %1234 = getelementptr inbounds %struct.LIST, %struct.LIST* %1233, i32 0, i32 0
  store %union.rec* %1229, %union.rec** %1234, align 8
  %1235 = load %union.rec*, %union.rec** @zz_res, align 8
  %1236 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1237 = bitcast %union.rec* %1236 to %struct.word_type*
  %1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %1237, i32 0, i32 0
  %1239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1238, i32 0, i64 0
  %1240 = getelementptr inbounds %struct.LIST, %struct.LIST* %1239, i32 0, i32 1
  store %union.rec* %1235, %union.rec** %1240, align 8
  br label %1241

; <label>:1241                                    ; preds = %1200, %1198
  %1242 = phi %union.rec* [ %1199, %1198 ], [ %1235, %1200 ]
  br label %1243

; <label>:1243                                    ; preds = %1241, %1193
  %1244 = phi %union.rec* [ %1194, %1193 ], [ %1242, %1241 ]
  %1245 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1245, %union.rec** @zz_res, align 8
  %1246 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1246, %union.rec** @zz_hold, align 8
  %1247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1248 = icmp eq %union.rec* %1247, null
  br i1 %1248, label %1249, label %1251

; <label>:1249                                    ; preds = %1243
  %1250 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1299

; <label>:1251                                    ; preds = %1243
  %1252 = load %union.rec*, %union.rec** @zz_res, align 8
  %1253 = icmp eq %union.rec* %1252, null
  br i1 %1253, label %1254, label %1256

; <label>:1254                                    ; preds = %1251
  %1255 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1297

; <label>:1256                                    ; preds = %1251
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 0
  %1260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1259, i32 0, i64 1
  %1261 = getelementptr inbounds %struct.LIST, %struct.LIST* %1260, i32 0, i32 0
  %1262 = load %union.rec*, %union.rec** %1261, align 8
  store %union.rec* %1262, %union.rec** @zz_tmp, align 8
  %1263 = load %union.rec*, %union.rec** @zz_res, align 8
  %1264 = bitcast %union.rec* %1263 to %struct.word_type*
  %1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %1264, i32 0, i32 0
  %1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1265, i32 0, i64 1
  %1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %1266, i32 0, i32 0
  %1268 = load %union.rec*, %union.rec** %1267, align 8
  %1269 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1270 = bitcast %union.rec* %1269 to %struct.word_type*
  %1271 = getelementptr inbounds %struct.word_type, %struct.word_type* %1270, i32 0, i32 0
  %1272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1271, i32 0, i64 1
  %1273 = getelementptr inbounds %struct.LIST, %struct.LIST* %1272, i32 0, i32 0
  store %union.rec* %1268, %union.rec** %1273, align 8
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1275 = load %union.rec*, %union.rec** @zz_res, align 8
  %1276 = bitcast %union.rec* %1275 to %struct.word_type*
  %1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %1276, i32 0, i32 0
  %1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1277, i32 0, i64 1
  %1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %1278, i32 0, i32 0
  %1280 = load %union.rec*, %union.rec** %1279, align 8
  %1281 = bitcast %union.rec* %1280 to %struct.word_type*
  %1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %1281, i32 0, i32 0
  %1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1282, i32 0, i64 1
  %1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %1283, i32 0, i32 1
  store %union.rec* %1274, %union.rec** %1284, align 8
  %1285 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1286 = load %union.rec*, %union.rec** @zz_res, align 8
  %1287 = bitcast %union.rec* %1286 to %struct.word_type*
  %1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %1287, i32 0, i32 0
  %1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1288, i32 0, i64 1
  %1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %1289, i32 0, i32 0
  store %union.rec* %1285, %union.rec** %1290, align 8
  %1291 = load %union.rec*, %union.rec** @zz_res, align 8
  %1292 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 0
  %1295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1294, i32 0, i64 1
  %1296 = getelementptr inbounds %struct.LIST, %struct.LIST* %1295, i32 0, i32 1
  store %union.rec* %1291, %union.rec** %1296, align 8
  br label %1297

; <label>:1297                                    ; preds = %1256, %1254
  %1298 = phi %union.rec* [ %1255, %1254 ], [ %1291, %1256 ]
  br label %1299

; <label>:1299                                    ; preds = %1297, %1249
  %1300 = phi %union.rec* [ %1250, %1249 ], [ %1298, %1297 ]
  br label %2209

; <label>:1301                                    ; preds = %0
  %1302 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %1303 = zext i8 %1302 to i32
  store i32 %1303, i32* @zz_size, align 4
  %1304 = sext i32 %1303 to i64
  %1305 = icmp uge i64 %1304, 265
  br i1 %1305, label %1306, label %1309

; <label>:1306                                    ; preds = %1301
  %1307 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1308 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1307)
  br label %1334

; <label>:1309                                    ; preds = %1301
  %1310 = load i32, i32* @zz_size, align 4
  %1311 = sext i32 %1310 to i64
  %1312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1311
  %1313 = load %union.rec*, %union.rec** %1312, align 8
  %1314 = icmp eq %union.rec* %1313, null
  br i1 %1314, label %1315, label %1319

; <label>:1315                                    ; preds = %1309
  %1316 = load i32, i32* @zz_size, align 4
  %1317 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1318 = call %union.rec* @GetMemory(i32 %1316, %struct.FILE_POS* %1317)
  store %union.rec* %1318, %union.rec** @zz_hold, align 8
  br label %1333

; <label>:1319                                    ; preds = %1309
  %1320 = load i32, i32* @zz_size, align 4
  %1321 = sext i32 %1320 to i64
  %1322 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1321
  %1323 = load %union.rec*, %union.rec** %1322, align 8
  store %union.rec* %1323, %union.rec** @zz_hold, align 8
  store %union.rec* %1323, %union.rec** @zz_hold, align 8
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1326, i32 0, i64 0
  %1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %1327, i32 0, i32 0
  %1329 = load %union.rec*, %union.rec** %1328, align 8
  %1330 = load i32, i32* @zz_size, align 4
  %1331 = sext i32 %1330 to i64
  %1332 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1331
  store %union.rec* %1329, %union.rec** %1332, align 8
  br label %1333

; <label>:1333                                    ; preds = %1319, %1315
  br label %1334

; <label>:1334                                    ; preds = %1333, %1306
  %1335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1336 = bitcast %union.rec* %1335 to %struct.word_type*
  %1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %1336, i32 0, i32 1
  %1338 = bitcast %union.FIRST_UNION* %1337 to %struct.anon*
  %1339 = getelementptr inbounds %struct.anon, %struct.anon* %1338, i32 0, i32 0
  store i8 2, i8* %1339, align 1
  %1340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1342 = bitcast %union.rec* %1341 to %struct.word_type*
  %1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %1342, i32 0, i32 0
  %1344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1343, i32 0, i64 1
  %1345 = getelementptr inbounds %struct.LIST, %struct.LIST* %1344, i32 0, i32 1
  store %union.rec* %1340, %union.rec** %1345, align 8
  %1346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1347 = bitcast %union.rec* %1346 to %struct.word_type*
  %1348 = getelementptr inbounds %struct.word_type, %struct.word_type* %1347, i32 0, i32 0
  %1349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1348, i32 0, i64 1
  %1350 = getelementptr inbounds %struct.LIST, %struct.LIST* %1349, i32 0, i32 0
  store %union.rec* %1340, %union.rec** %1350, align 8
  %1351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1352 = bitcast %union.rec* %1351 to %struct.word_type*
  %1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %1352, i32 0, i32 0
  %1354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1353, i32 0, i64 0
  %1355 = getelementptr inbounds %struct.LIST, %struct.LIST* %1354, i32 0, i32 1
  store %union.rec* %1340, %union.rec** %1355, align 8
  %1356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1357 = bitcast %union.rec* %1356 to %struct.word_type*
  %1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %1357, i32 0, i32 0
  %1359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1358, i32 0, i64 0
  %1360 = getelementptr inbounds %struct.LIST, %struct.LIST* %1359, i32 0, i32 0
  store %union.rec* %1340, %union.rec** %1360, align 8
  store %union.rec* %1340, %union.rec** %res, align 8
  %1361 = load %union.rec*, %union.rec** %1, align 8
  %1362 = bitcast %union.rec* %1361 to %struct.word_type*
  %1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %1362, i32 0, i32 0
  %1364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1363, i32 0, i64 0
  %1365 = getelementptr inbounds %struct.LIST, %struct.LIST* %1364, i32 0, i32 1
  %1366 = load %union.rec*, %union.rec** %1365, align 8
  store %union.rec* %1366, %union.rec** %link, align 8
  br label %1367

; <label>:1367                                    ; preds = %1582, %1334
  %1368 = load %union.rec*, %union.rec** %link, align 8
  %1369 = load %union.rec*, %union.rec** %1, align 8
  %1370 = icmp ne %union.rec* %1368, %1369
  br i1 %1370, label %1371, label %1589

; <label>:1371                                    ; preds = %1367
  %1372 = load %union.rec*, %union.rec** %link, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 1
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 0
  %1377 = load %union.rec*, %union.rec** %1376, align 8
  store %union.rec* %1377, %union.rec** %y, align 8
  br label %1378

; <label>:1378                                    ; preds = %1388, %1371
  %1379 = load %union.rec*, %union.rec** %y, align 8
  %1380 = bitcast %union.rec* %1379 to %struct.word_type*
  %1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %1380, i32 0, i32 1
  %1382 = bitcast %union.FIRST_UNION* %1381 to %struct.anon*
  %1383 = getelementptr inbounds %struct.anon, %struct.anon* %1382, i32 0, i32 0
  %1384 = load i8, i8* %1383, align 1
  %1385 = zext i8 %1384 to i32
  %1386 = icmp eq i32 %1385, 0
  br i1 %1386, label %1387, label %1395

; <label>:1387                                    ; preds = %1378
  br label %1388

; <label>:1388                                    ; preds = %1387
  %1389 = load %union.rec*, %union.rec** %y, align 8
  %1390 = bitcast %union.rec* %1389 to %struct.word_type*
  %1391 = getelementptr inbounds %struct.word_type, %struct.word_type* %1390, i32 0, i32 0
  %1392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1391, i32 0, i64 1
  %1393 = getelementptr inbounds %struct.LIST, %struct.LIST* %1392, i32 0, i32 0
  %1394 = load %union.rec*, %union.rec** %1393, align 8
  store %union.rec* %1394, %union.rec** %y, align 8
  br label %1378

; <label>:1395                                    ; preds = %1378
  %1396 = load %union.rec*, %union.rec** %y, align 8
  %1397 = bitcast %union.rec* %1396 to %struct.word_type*
  %1398 = getelementptr inbounds %struct.word_type, %struct.word_type* %1397, i32 0, i32 1
  %1399 = bitcast %union.FIRST_UNION* %1398 to %struct.anon*
  %1400 = getelementptr inbounds %struct.anon, %struct.anon* %1399, i32 0, i32 0
  %1401 = load i8, i8* %1400, align 1
  %1402 = zext i8 %1401 to i32
  %1403 = icmp ne i32 %1402, 2
  br i1 %1403, label %1407, label %1404

; <label>:1404                                    ; preds = %1395
  %1405 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1406 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1405, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i32 0, i32 0))
  br label %1407

; <label>:1407                                    ; preds = %1404, %1395
  %1408 = load %union.rec*, %union.rec** %y, align 8
  %1409 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %1410 = call %union.rec* @CopyObject(%union.rec* %1408, %struct.FILE_POS* %1409)
  store %union.rec* %1410, %union.rec** %tmp, align 8
  %1411 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1412 = zext i8 %1411 to i32
  store i32 %1412, i32* @zz_size, align 4
  %1413 = sext i32 %1412 to i64
  %1414 = icmp uge i64 %1413, 265
  br i1 %1414, label %1415, label %1418

; <label>:1415                                    ; preds = %1407
  %1416 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1417 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1416)
  br label %1443

; <label>:1418                                    ; preds = %1407
  %1419 = load i32, i32* @zz_size, align 4
  %1420 = sext i32 %1419 to i64
  %1421 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1420
  %1422 = load %union.rec*, %union.rec** %1421, align 8
  %1423 = icmp eq %union.rec* %1422, null
  br i1 %1423, label %1424, label %1428

; <label>:1424                                    ; preds = %1418
  %1425 = load i32, i32* @zz_size, align 4
  %1426 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1427 = call %union.rec* @GetMemory(i32 %1425, %struct.FILE_POS* %1426)
  store %union.rec* %1427, %union.rec** @zz_hold, align 8
  br label %1442

; <label>:1428                                    ; preds = %1418
  %1429 = load i32, i32* @zz_size, align 4
  %1430 = sext i32 %1429 to i64
  %1431 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1430
  %1432 = load %union.rec*, %union.rec** %1431, align 8
  store %union.rec* %1432, %union.rec** @zz_hold, align 8
  store %union.rec* %1432, %union.rec** @zz_hold, align 8
  %1433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1434 = bitcast %union.rec* %1433 to %struct.word_type*
  %1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %1434, i32 0, i32 0
  %1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1435, i32 0, i64 0
  %1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %1436, i32 0, i32 0
  %1438 = load %union.rec*, %union.rec** %1437, align 8
  %1439 = load i32, i32* @zz_size, align 4
  %1440 = sext i32 %1439 to i64
  %1441 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1440
  store %union.rec* %1438, %union.rec** %1441, align 8
  br label %1442

; <label>:1442                                    ; preds = %1428, %1424
  br label %1443

; <label>:1443                                    ; preds = %1442, %1415
  %1444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1445 = bitcast %union.rec* %1444 to %struct.word_type*
  %1446 = getelementptr inbounds %struct.word_type, %struct.word_type* %1445, i32 0, i32 1
  %1447 = bitcast %union.FIRST_UNION* %1446 to %struct.anon*
  %1448 = getelementptr inbounds %struct.anon, %struct.anon* %1447, i32 0, i32 0
  store i8 0, i8* %1448, align 1
  %1449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1451 = bitcast %union.rec* %1450 to %struct.word_type*
  %1452 = getelementptr inbounds %struct.word_type, %struct.word_type* %1451, i32 0, i32 0
  %1453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1452, i32 0, i64 1
  %1454 = getelementptr inbounds %struct.LIST, %struct.LIST* %1453, i32 0, i32 1
  store %union.rec* %1449, %union.rec** %1454, align 8
  %1455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1456 = bitcast %union.rec* %1455 to %struct.word_type*
  %1457 = getelementptr inbounds %struct.word_type, %struct.word_type* %1456, i32 0, i32 0
  %1458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1457, i32 0, i64 1
  %1459 = getelementptr inbounds %struct.LIST, %struct.LIST* %1458, i32 0, i32 0
  store %union.rec* %1449, %union.rec** %1459, align 8
  %1460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1461 = bitcast %union.rec* %1460 to %struct.word_type*
  %1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %1461, i32 0, i32 0
  %1463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1462, i32 0, i64 0
  %1464 = getelementptr inbounds %struct.LIST, %struct.LIST* %1463, i32 0, i32 1
  store %union.rec* %1449, %union.rec** %1464, align 8
  %1465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1466 = bitcast %union.rec* %1465 to %struct.word_type*
  %1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %1466, i32 0, i32 0
  %1468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1467, i32 0, i64 0
  %1469 = getelementptr inbounds %struct.LIST, %struct.LIST* %1468, i32 0, i32 0
  store %union.rec* %1449, %union.rec** %1469, align 8
  store %union.rec* %1449, %union.rec** @xx_link, align 8
  %1470 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1470, %union.rec** @zz_res, align 8
  %1471 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1471, %union.rec** @zz_hold, align 8
  %1472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1473 = icmp eq %union.rec* %1472, null
  br i1 %1473, label %1474, label %1476

; <label>:1474                                    ; preds = %1443
  %1475 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1524

; <label>:1476                                    ; preds = %1443
  %1477 = load %union.rec*, %union.rec** @zz_res, align 8
  %1478 = icmp eq %union.rec* %1477, null
  br i1 %1478, label %1479, label %1481

; <label>:1479                                    ; preds = %1476
  %1480 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1522

; <label>:1481                                    ; preds = %1476
  %1482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1483 = bitcast %union.rec* %1482 to %struct.word_type*
  %1484 = getelementptr inbounds %struct.word_type, %struct.word_type* %1483, i32 0, i32 0
  %1485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1484, i32 0, i64 0
  %1486 = getelementptr inbounds %struct.LIST, %struct.LIST* %1485, i32 0, i32 0
  %1487 = load %union.rec*, %union.rec** %1486, align 8
  store %union.rec* %1487, %union.rec** @zz_tmp, align 8
  %1488 = load %union.rec*, %union.rec** @zz_res, align 8
  %1489 = bitcast %union.rec* %1488 to %struct.word_type*
  %1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %1489, i32 0, i32 0
  %1491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1490, i32 0, i64 0
  %1492 = getelementptr inbounds %struct.LIST, %struct.LIST* %1491, i32 0, i32 0
  %1493 = load %union.rec*, %union.rec** %1492, align 8
  %1494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1495 = bitcast %union.rec* %1494 to %struct.word_type*
  %1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %1495, i32 0, i32 0
  %1497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1496, i32 0, i64 0
  %1498 = getelementptr inbounds %struct.LIST, %struct.LIST* %1497, i32 0, i32 0
  store %union.rec* %1493, %union.rec** %1498, align 8
  %1499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1500 = load %union.rec*, %union.rec** @zz_res, align 8
  %1501 = bitcast %union.rec* %1500 to %struct.word_type*
  %1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1502, i32 0, i64 0
  %1504 = getelementptr inbounds %struct.LIST, %struct.LIST* %1503, i32 0, i32 0
  %1505 = load %union.rec*, %union.rec** %1504, align 8
  %1506 = bitcast %union.rec* %1505 to %struct.word_type*
  %1507 = getelementptr inbounds %struct.word_type, %struct.word_type* %1506, i32 0, i32 0
  %1508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1507, i32 0, i64 0
  %1509 = getelementptr inbounds %struct.LIST, %struct.LIST* %1508, i32 0, i32 1
  store %union.rec* %1499, %union.rec** %1509, align 8
  %1510 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1511 = load %union.rec*, %union.rec** @zz_res, align 8
  %1512 = bitcast %union.rec* %1511 to %struct.word_type*
  %1513 = getelementptr inbounds %struct.word_type, %struct.word_type* %1512, i32 0, i32 0
  %1514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1513, i32 0, i64 0
  %1515 = getelementptr inbounds %struct.LIST, %struct.LIST* %1514, i32 0, i32 0
  store %union.rec* %1510, %union.rec** %1515, align 8
  %1516 = load %union.rec*, %union.rec** @zz_res, align 8
  %1517 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1518 = bitcast %union.rec* %1517 to %struct.word_type*
  %1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %1518, i32 0, i32 0
  %1520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1519, i32 0, i64 0
  %1521 = getelementptr inbounds %struct.LIST, %struct.LIST* %1520, i32 0, i32 1
  store %union.rec* %1516, %union.rec** %1521, align 8
  br label %1522

; <label>:1522                                    ; preds = %1481, %1479
  %1523 = phi %union.rec* [ %1480, %1479 ], [ %1516, %1481 ]
  br label %1524

; <label>:1524                                    ; preds = %1522, %1474
  %1525 = phi %union.rec* [ %1475, %1474 ], [ %1523, %1522 ]
  %1526 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1526, %union.rec** @zz_res, align 8
  %1527 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1527, %union.rec** @zz_hold, align 8
  %1528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1529 = icmp eq %union.rec* %1528, null
  br i1 %1529, label %1530, label %1532

; <label>:1530                                    ; preds = %1524
  %1531 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1580

; <label>:1532                                    ; preds = %1524
  %1533 = load %union.rec*, %union.rec** @zz_res, align 8
  %1534 = icmp eq %union.rec* %1533, null
  br i1 %1534, label %1535, label %1537

; <label>:1535                                    ; preds = %1532
  %1536 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1578

; <label>:1537                                    ; preds = %1532
  %1538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1539 = bitcast %union.rec* %1538 to %struct.word_type*
  %1540 = getelementptr inbounds %struct.word_type, %struct.word_type* %1539, i32 0, i32 0
  %1541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1540, i32 0, i64 1
  %1542 = getelementptr inbounds %struct.LIST, %struct.LIST* %1541, i32 0, i32 0
  %1543 = load %union.rec*, %union.rec** %1542, align 8
  store %union.rec* %1543, %union.rec** @zz_tmp, align 8
  %1544 = load %union.rec*, %union.rec** @zz_res, align 8
  %1545 = bitcast %union.rec* %1544 to %struct.word_type*
  %1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1546, i32 0, i64 1
  %1548 = getelementptr inbounds %struct.LIST, %struct.LIST* %1547, i32 0, i32 0
  %1549 = load %union.rec*, %union.rec** %1548, align 8
  %1550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1551 = bitcast %union.rec* %1550 to %struct.word_type*
  %1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %1551, i32 0, i32 0
  %1553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1552, i32 0, i64 1
  %1554 = getelementptr inbounds %struct.LIST, %struct.LIST* %1553, i32 0, i32 0
  store %union.rec* %1549, %union.rec** %1554, align 8
  %1555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1556 = load %union.rec*, %union.rec** @zz_res, align 8
  %1557 = bitcast %union.rec* %1556 to %struct.word_type*
  %1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %1557, i32 0, i32 0
  %1559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1558, i32 0, i64 1
  %1560 = getelementptr inbounds %struct.LIST, %struct.LIST* %1559, i32 0, i32 0
  %1561 = load %union.rec*, %union.rec** %1560, align 8
  %1562 = bitcast %union.rec* %1561 to %struct.word_type*
  %1563 = getelementptr inbounds %struct.word_type, %struct.word_type* %1562, i32 0, i32 0
  %1564 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1563, i32 0, i64 1
  %1565 = getelementptr inbounds %struct.LIST, %struct.LIST* %1564, i32 0, i32 1
  store %union.rec* %1555, %union.rec** %1565, align 8
  %1566 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1567 = load %union.rec*, %union.rec** @zz_res, align 8
  %1568 = bitcast %union.rec* %1567 to %struct.word_type*
  %1569 = getelementptr inbounds %struct.word_type, %struct.word_type* %1568, i32 0, i32 0
  %1570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1569, i32 0, i64 1
  %1571 = getelementptr inbounds %struct.LIST, %struct.LIST* %1570, i32 0, i32 0
  store %union.rec* %1566, %union.rec** %1571, align 8
  %1572 = load %union.rec*, %union.rec** @zz_res, align 8
  %1573 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1574 = bitcast %union.rec* %1573 to %struct.word_type*
  %1575 = getelementptr inbounds %struct.word_type, %struct.word_type* %1574, i32 0, i32 0
  %1576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1575, i32 0, i64 1
  %1577 = getelementptr inbounds %struct.LIST, %struct.LIST* %1576, i32 0, i32 1
  store %union.rec* %1572, %union.rec** %1577, align 8
  br label %1578

; <label>:1578                                    ; preds = %1537, %1535
  %1579 = phi %union.rec* [ %1536, %1535 ], [ %1572, %1537 ]
  br label %1580

; <label>:1580                                    ; preds = %1578, %1530
  %1581 = phi %union.rec* [ %1531, %1530 ], [ %1579, %1578 ]
  br label %1582

; <label>:1582                                    ; preds = %1580
  %1583 = load %union.rec*, %union.rec** %link, align 8
  %1584 = bitcast %union.rec* %1583 to %struct.word_type*
  %1585 = getelementptr inbounds %struct.word_type, %struct.word_type* %1584, i32 0, i32 0
  %1586 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1585, i32 0, i64 0
  %1587 = getelementptr inbounds %struct.LIST, %struct.LIST* %1586, i32 0, i32 1
  %1588 = load %union.rec*, %union.rec** %1587, align 8
  store %union.rec* %1588, %union.rec** %link, align 8
  br label %1367

; <label>:1589                                    ; preds = %1367
  %1590 = load %union.rec*, %union.rec** %1, align 8
  %1591 = bitcast %union.rec* %1590 to %struct.closure_type*
  %1592 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1591, i32 0, i32 5
  %1593 = load %union.rec*, %union.rec** %1592, align 8
  %1594 = load %union.rec*, %union.rec** %res, align 8
  %1595 = bitcast %union.rec* %1594 to %struct.closure_type*
  %1596 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1595, i32 0, i32 5
  store %union.rec* %1593, %union.rec** %1596, align 8
  %1597 = load %union.rec*, %union.rec** %1, align 8
  %1598 = bitcast %union.rec* %1597 to %struct.closure_type*
  %1599 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1598, i32 0, i32 4
  %1600 = bitcast %union.FOURTH_UNION* %1599 to %struct.STYLE*
  %1601 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1600, i32 0, i32 0
  %1602 = bitcast %union.anon* %1601 to %struct.GAP*
  %1603 = bitcast %struct.GAP* %1602 to i16*
  %1604 = load i16, i16* %1603, align 4
  %1605 = lshr i16 %1604, 7
  %1606 = and i16 %1605, 1
  %1607 = zext i16 %1606 to i32
  %1608 = load %union.rec*, %union.rec** %res, align 8
  %1609 = bitcast %union.rec* %1608 to %struct.closure_type*
  %1610 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1609, i32 0, i32 4
  %1611 = bitcast %union.FOURTH_UNION* %1610 to %struct.STYLE*
  %1612 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1611, i32 0, i32 0
  %1613 = bitcast %union.anon* %1612 to %struct.GAP*
  %1614 = bitcast %struct.GAP* %1613 to i16*
  %1615 = trunc i32 %1607 to i16
  %1616 = load i16, i16* %1614, align 4
  %1617 = and i16 %1615, 1
  %1618 = shl i16 %1617, 7
  %1619 = and i16 %1616, -129
  %1620 = or i16 %1619, %1618
  store i16 %1620, i16* %1614, align 4
  %1621 = zext i16 %1617 to i32
  %1622 = load %union.rec*, %union.rec** %1, align 8
  %1623 = bitcast %union.rec* %1622 to %struct.closure_type*
  %1624 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1623, i32 0, i32 4
  %1625 = bitcast %union.FOURTH_UNION* %1624 to %struct.STYLE*
  %1626 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1625, i32 0, i32 0
  %1627 = bitcast %union.anon* %1626 to %struct.GAP*
  %1628 = bitcast %struct.GAP* %1627 to i16*
  %1629 = load i16, i16* %1628, align 4
  %1630 = lshr i16 %1629, 8
  %1631 = and i16 %1630, 1
  %1632 = zext i16 %1631 to i32
  %1633 = load %union.rec*, %union.rec** %res, align 8
  %1634 = bitcast %union.rec* %1633 to %struct.closure_type*
  %1635 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1634, i32 0, i32 4
  %1636 = bitcast %union.FOURTH_UNION* %1635 to %struct.STYLE*
  %1637 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1636, i32 0, i32 0
  %1638 = bitcast %union.anon* %1637 to %struct.GAP*
  %1639 = bitcast %struct.GAP* %1638 to i16*
  %1640 = trunc i32 %1632 to i16
  %1641 = load i16, i16* %1639, align 4
  %1642 = and i16 %1640, 1
  %1643 = shl i16 %1642, 8
  %1644 = and i16 %1641, -257
  %1645 = or i16 %1644, %1643
  store i16 %1645, i16* %1639, align 4
  %1646 = zext i16 %1642 to i32
  %1647 = load %union.rec*, %union.rec** %1, align 8
  %1648 = bitcast %union.rec* %1647 to %struct.closure_type*
  %1649 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1648, i32 0, i32 4
  %1650 = bitcast %union.FOURTH_UNION* %1649 to %struct.STYLE*
  %1651 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1650, i32 0, i32 0
  %1652 = bitcast %union.anon* %1651 to %struct.GAP*
  %1653 = bitcast %struct.GAP* %1652 to i16*
  %1654 = load i16, i16* %1653, align 4
  %1655 = lshr i16 %1654, 9
  %1656 = and i16 %1655, 1
  %1657 = zext i16 %1656 to i32
  %1658 = load %union.rec*, %union.rec** %res, align 8
  %1659 = bitcast %union.rec* %1658 to %struct.closure_type*
  %1660 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1659, i32 0, i32 4
  %1661 = bitcast %union.FOURTH_UNION* %1660 to %struct.STYLE*
  %1662 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1661, i32 0, i32 0
  %1663 = bitcast %union.anon* %1662 to %struct.GAP*
  %1664 = bitcast %struct.GAP* %1663 to i16*
  %1665 = trunc i32 %1657 to i16
  %1666 = load i16, i16* %1664, align 4
  %1667 = and i16 %1665, 1
  %1668 = shl i16 %1667, 9
  %1669 = and i16 %1666, -513
  %1670 = or i16 %1669, %1668
  store i16 %1670, i16* %1664, align 4
  %1671 = zext i16 %1667 to i32
  %1672 = load %union.rec*, %union.rec** %1, align 8
  %1673 = bitcast %union.rec* %1672 to %struct.closure_type*
  %1674 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1673, i32 0, i32 4
  %1675 = bitcast %union.FOURTH_UNION* %1674 to %struct.STYLE*
  %1676 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1675, i32 0, i32 0
  %1677 = bitcast %union.anon* %1676 to %struct.GAP*
  %1678 = bitcast %struct.GAP* %1677 to i16*
  %1679 = load i16, i16* %1678, align 4
  %1680 = lshr i16 %1679, 10
  %1681 = and i16 %1680, 7
  %1682 = zext i16 %1681 to i32
  %1683 = load %union.rec*, %union.rec** %res, align 8
  %1684 = bitcast %union.rec* %1683 to %struct.closure_type*
  %1685 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1684, i32 0, i32 4
  %1686 = bitcast %union.FOURTH_UNION* %1685 to %struct.STYLE*
  %1687 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1686, i32 0, i32 0
  %1688 = bitcast %union.anon* %1687 to %struct.GAP*
  %1689 = bitcast %struct.GAP* %1688 to i16*
  %1690 = trunc i32 %1682 to i16
  %1691 = load i16, i16* %1689, align 4
  %1692 = and i16 %1690, 7
  %1693 = shl i16 %1692, 10
  %1694 = and i16 %1691, -7169
  %1695 = or i16 %1694, %1693
  store i16 %1695, i16* %1689, align 4
  %1696 = zext i16 %1692 to i32
  %1697 = load %union.rec*, %union.rec** %1, align 8
  %1698 = bitcast %union.rec* %1697 to %struct.closure_type*
  %1699 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1698, i32 0, i32 4
  %1700 = bitcast %union.FOURTH_UNION* %1699 to %struct.STYLE*
  %1701 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1700, i32 0, i32 0
  %1702 = bitcast %union.anon* %1701 to %struct.GAP*
  %1703 = bitcast %struct.GAP* %1702 to i16*
  %1704 = load i16, i16* %1703, align 4
  %1705 = lshr i16 %1704, 13
  %1706 = zext i16 %1705 to i32
  %1707 = load %union.rec*, %union.rec** %res, align 8
  %1708 = bitcast %union.rec* %1707 to %struct.closure_type*
  %1709 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1708, i32 0, i32 4
  %1710 = bitcast %union.FOURTH_UNION* %1709 to %struct.STYLE*
  %1711 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1710, i32 0, i32 0
  %1712 = bitcast %union.anon* %1711 to %struct.GAP*
  %1713 = bitcast %struct.GAP* %1712 to i16*
  %1714 = trunc i32 %1706 to i16
  %1715 = load i16, i16* %1713, align 4
  %1716 = and i16 %1714, 7
  %1717 = shl i16 %1716, 13
  %1718 = and i16 %1715, 8191
  %1719 = or i16 %1718, %1717
  store i16 %1719, i16* %1713, align 4
  %1720 = zext i16 %1716 to i32
  %1721 = load %union.rec*, %union.rec** %1, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.closure_type*
  %1723 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1722, i32 0, i32 4
  %1724 = bitcast %union.FOURTH_UNION* %1723 to %struct.STYLE*
  %1725 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1724, i32 0, i32 0
  %1726 = bitcast %union.anon* %1725 to %struct.GAP*
  %1727 = getelementptr inbounds %struct.GAP, %struct.GAP* %1726, i32 0, i32 1
  %1728 = load i16, i16* %1727, align 2
  %1729 = load %union.rec*, %union.rec** %res, align 8
  %1730 = bitcast %union.rec* %1729 to %struct.closure_type*
  %1731 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1730, i32 0, i32 4
  %1732 = bitcast %union.FOURTH_UNION* %1731 to %struct.STYLE*
  %1733 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1732, i32 0, i32 0
  %1734 = bitcast %union.anon* %1733 to %struct.GAP*
  %1735 = getelementptr inbounds %struct.GAP, %struct.GAP* %1734, i32 0, i32 1
  store i16 %1728, i16* %1735, align 2
  %1736 = load %union.rec*, %union.rec** %1, align 8
  %1737 = bitcast %union.rec* %1736 to %struct.closure_type*
  %1738 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1737, i32 0, i32 4
  %1739 = bitcast %union.FOURTH_UNION* %1738 to %struct.STYLE*
  %1740 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1739, i32 0, i32 1
  %1741 = bitcast %union.anon.10* %1740 to %struct.anon.11*
  %1742 = bitcast %struct.anon.11* %1741 to i8*
  %1743 = load i8, i8* %1742, align 4
  %1744 = and i8 %1743, 3
  %1745 = zext i8 %1744 to i32
  %1746 = load %union.rec*, %union.rec** %res, align 8
  %1747 = bitcast %union.rec* %1746 to %struct.closure_type*
  %1748 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1747, i32 0, i32 4
  %1749 = bitcast %union.FOURTH_UNION* %1748 to %struct.STYLE*
  %1750 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1749, i32 0, i32 1
  %1751 = bitcast %union.anon.10* %1750 to %struct.anon.11*
  %1752 = bitcast %struct.anon.11* %1751 to i8*
  %1753 = trunc i32 %1745 to i8
  %1754 = load i8, i8* %1752, align 4
  %1755 = and i8 %1753, 3
  %1756 = and i8 %1754, -4
  %1757 = or i8 %1756, %1755
  store i8 %1757, i8* %1752, align 4
  %1758 = zext i8 %1755 to i32
  %1759 = load %union.rec*, %union.rec** %1, align 8
  %1760 = bitcast %union.rec* %1759 to %struct.closure_type*
  %1761 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1760, i32 0, i32 4
  %1762 = bitcast %union.FOURTH_UNION* %1761 to %struct.STYLE*
  %1763 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1762, i32 0, i32 1
  %1764 = bitcast %union.anon.10* %1763 to %struct.anon.11*
  %1765 = bitcast %struct.anon.11* %1764 to i8*
  %1766 = load i8, i8* %1765, align 4
  %1767 = lshr i8 %1766, 2
  %1768 = and i8 %1767, 3
  %1769 = zext i8 %1768 to i32
  %1770 = load %union.rec*, %union.rec** %res, align 8
  %1771 = bitcast %union.rec* %1770 to %struct.closure_type*
  %1772 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1771, i32 0, i32 4
  %1773 = bitcast %union.FOURTH_UNION* %1772 to %struct.STYLE*
  %1774 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1773, i32 0, i32 1
  %1775 = bitcast %union.anon.10* %1774 to %struct.anon.11*
  %1776 = bitcast %struct.anon.11* %1775 to i8*
  %1777 = trunc i32 %1769 to i8
  %1778 = load i8, i8* %1776, align 4
  %1779 = and i8 %1777, 3
  %1780 = shl i8 %1779, 2
  %1781 = and i8 %1778, -13
  %1782 = or i8 %1781, %1780
  store i8 %1782, i8* %1776, align 4
  %1783 = zext i8 %1779 to i32
  %1784 = load %union.rec*, %union.rec** %1, align 8
  %1785 = bitcast %union.rec* %1784 to %struct.closure_type*
  %1786 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1785, i32 0, i32 4
  %1787 = bitcast %union.FOURTH_UNION* %1786 to %struct.STYLE*
  %1788 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1787, i32 0, i32 1
  %1789 = bitcast %union.anon.10* %1788 to %struct.anon.11*
  %1790 = bitcast %struct.anon.11* %1789 to i8*
  %1791 = load i8, i8* %1790, align 4
  %1792 = lshr i8 %1791, 4
  %1793 = and i8 %1792, 7
  %1794 = zext i8 %1793 to i32
  %1795 = load %union.rec*, %union.rec** %res, align 8
  %1796 = bitcast %union.rec* %1795 to %struct.closure_type*
  %1797 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1796, i32 0, i32 4
  %1798 = bitcast %union.FOURTH_UNION* %1797 to %struct.STYLE*
  %1799 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1798, i32 0, i32 1
  %1800 = bitcast %union.anon.10* %1799 to %struct.anon.11*
  %1801 = bitcast %struct.anon.11* %1800 to i8*
  %1802 = trunc i32 %1794 to i8
  %1803 = load i8, i8* %1801, align 4
  %1804 = and i8 %1802, 7
  %1805 = shl i8 %1804, 4
  %1806 = and i8 %1803, -113
  %1807 = or i8 %1806, %1805
  store i8 %1807, i8* %1801, align 4
  %1808 = zext i8 %1804 to i32
  %1809 = load %union.rec*, %union.rec** %1, align 8
  %1810 = bitcast %union.rec* %1809 to %struct.closure_type*
  %1811 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1810, i32 0, i32 4
  %1812 = bitcast %union.FOURTH_UNION* %1811 to %struct.STYLE*
  %1813 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1812, i32 0, i32 0
  %1814 = bitcast %union.anon* %1813 to %struct.anon.9*
  %1815 = bitcast %struct.anon.9* %1814 to i8*
  %1816 = load i8, i8* %1815, align 4
  %1817 = lshr i8 %1816, 3
  %1818 = and i8 %1817, 1
  %1819 = zext i8 %1818 to i32
  %1820 = load %union.rec*, %union.rec** %res, align 8
  %1821 = bitcast %union.rec* %1820 to %struct.closure_type*
  %1822 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1821, i32 0, i32 4
  %1823 = bitcast %union.FOURTH_UNION* %1822 to %struct.STYLE*
  %1824 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1823, i32 0, i32 0
  %1825 = bitcast %union.anon* %1824 to %struct.anon.9*
  %1826 = bitcast %struct.anon.9* %1825 to i8*
  %1827 = trunc i32 %1819 to i8
  %1828 = load i8, i8* %1826, align 4
  %1829 = and i8 %1827, 1
  %1830 = shl i8 %1829, 3
  %1831 = and i8 %1828, -9
  %1832 = or i8 %1831, %1830
  store i8 %1832, i8* %1826, align 4
  %1833 = zext i8 %1829 to i32
  %1834 = load %union.rec*, %union.rec** %1, align 8
  %1835 = bitcast %union.rec* %1834 to %struct.closure_type*
  %1836 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1835, i32 0, i32 4
  %1837 = bitcast %union.FOURTH_UNION* %1836 to %struct.STYLE*
  %1838 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1837, i32 0, i32 1
  %1839 = bitcast %union.anon.10* %1838 to %struct.GAP*
  %1840 = bitcast %struct.GAP* %1839 to i16*
  %1841 = load i16, i16* %1840, align 4
  %1842 = lshr i16 %1841, 7
  %1843 = and i16 %1842, 1
  %1844 = zext i16 %1843 to i32
  %1845 = load %union.rec*, %union.rec** %res, align 8
  %1846 = bitcast %union.rec* %1845 to %struct.closure_type*
  %1847 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1846, i32 0, i32 4
  %1848 = bitcast %union.FOURTH_UNION* %1847 to %struct.STYLE*
  %1849 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1848, i32 0, i32 1
  %1850 = bitcast %union.anon.10* %1849 to %struct.GAP*
  %1851 = bitcast %struct.GAP* %1850 to i16*
  %1852 = trunc i32 %1844 to i16
  %1853 = load i16, i16* %1851, align 4
  %1854 = and i16 %1852, 1
  %1855 = shl i16 %1854, 7
  %1856 = and i16 %1853, -129
  %1857 = or i16 %1856, %1855
  store i16 %1857, i16* %1851, align 4
  %1858 = zext i16 %1854 to i32
  %1859 = load %union.rec*, %union.rec** %1, align 8
  %1860 = bitcast %union.rec* %1859 to %struct.closure_type*
  %1861 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1860, i32 0, i32 4
  %1862 = bitcast %union.FOURTH_UNION* %1861 to %struct.STYLE*
  %1863 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1862, i32 0, i32 1
  %1864 = bitcast %union.anon.10* %1863 to %struct.GAP*
  %1865 = bitcast %struct.GAP* %1864 to i16*
  %1866 = load i16, i16* %1865, align 4
  %1867 = lshr i16 %1866, 8
  %1868 = and i16 %1867, 1
  %1869 = zext i16 %1868 to i32
  %1870 = load %union.rec*, %union.rec** %res, align 8
  %1871 = bitcast %union.rec* %1870 to %struct.closure_type*
  %1872 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1871, i32 0, i32 4
  %1873 = bitcast %union.FOURTH_UNION* %1872 to %struct.STYLE*
  %1874 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1873, i32 0, i32 1
  %1875 = bitcast %union.anon.10* %1874 to %struct.GAP*
  %1876 = bitcast %struct.GAP* %1875 to i16*
  %1877 = trunc i32 %1869 to i16
  %1878 = load i16, i16* %1876, align 4
  %1879 = and i16 %1877, 1
  %1880 = shl i16 %1879, 8
  %1881 = and i16 %1878, -257
  %1882 = or i16 %1881, %1880
  store i16 %1882, i16* %1876, align 4
  %1883 = zext i16 %1879 to i32
  %1884 = load %union.rec*, %union.rec** %1, align 8
  %1885 = bitcast %union.rec* %1884 to %struct.closure_type*
  %1886 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1885, i32 0, i32 4
  %1887 = bitcast %union.FOURTH_UNION* %1886 to %struct.STYLE*
  %1888 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1887, i32 0, i32 1
  %1889 = bitcast %union.anon.10* %1888 to %struct.GAP*
  %1890 = bitcast %struct.GAP* %1889 to i16*
  %1891 = load i16, i16* %1890, align 4
  %1892 = lshr i16 %1891, 9
  %1893 = and i16 %1892, 1
  %1894 = zext i16 %1893 to i32
  %1895 = load %union.rec*, %union.rec** %res, align 8
  %1896 = bitcast %union.rec* %1895 to %struct.closure_type*
  %1897 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1896, i32 0, i32 4
  %1898 = bitcast %union.FOURTH_UNION* %1897 to %struct.STYLE*
  %1899 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1898, i32 0, i32 1
  %1900 = bitcast %union.anon.10* %1899 to %struct.GAP*
  %1901 = bitcast %struct.GAP* %1900 to i16*
  %1902 = trunc i32 %1894 to i16
  %1903 = load i16, i16* %1901, align 4
  %1904 = and i16 %1902, 1
  %1905 = shl i16 %1904, 9
  %1906 = and i16 %1903, -513
  %1907 = or i16 %1906, %1905
  store i16 %1907, i16* %1901, align 4
  %1908 = zext i16 %1904 to i32
  %1909 = load %union.rec*, %union.rec** %1, align 8
  %1910 = bitcast %union.rec* %1909 to %struct.closure_type*
  %1911 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1910, i32 0, i32 4
  %1912 = bitcast %union.FOURTH_UNION* %1911 to %struct.STYLE*
  %1913 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1912, i32 0, i32 1
  %1914 = bitcast %union.anon.10* %1913 to %struct.GAP*
  %1915 = bitcast %struct.GAP* %1914 to i16*
  %1916 = load i16, i16* %1915, align 4
  %1917 = lshr i16 %1916, 10
  %1918 = and i16 %1917, 7
  %1919 = zext i16 %1918 to i32
  %1920 = load %union.rec*, %union.rec** %res, align 8
  %1921 = bitcast %union.rec* %1920 to %struct.closure_type*
  %1922 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1921, i32 0, i32 4
  %1923 = bitcast %union.FOURTH_UNION* %1922 to %struct.STYLE*
  %1924 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1923, i32 0, i32 1
  %1925 = bitcast %union.anon.10* %1924 to %struct.GAP*
  %1926 = bitcast %struct.GAP* %1925 to i16*
  %1927 = trunc i32 %1919 to i16
  %1928 = load i16, i16* %1926, align 4
  %1929 = and i16 %1927, 7
  %1930 = shl i16 %1929, 10
  %1931 = and i16 %1928, -7169
  %1932 = or i16 %1931, %1930
  store i16 %1932, i16* %1926, align 4
  %1933 = zext i16 %1929 to i32
  %1934 = load %union.rec*, %union.rec** %1, align 8
  %1935 = bitcast %union.rec* %1934 to %struct.closure_type*
  %1936 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1935, i32 0, i32 4
  %1937 = bitcast %union.FOURTH_UNION* %1936 to %struct.STYLE*
  %1938 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1937, i32 0, i32 1
  %1939 = bitcast %union.anon.10* %1938 to %struct.GAP*
  %1940 = bitcast %struct.GAP* %1939 to i16*
  %1941 = load i16, i16* %1940, align 4
  %1942 = lshr i16 %1941, 13
  %1943 = zext i16 %1942 to i32
  %1944 = load %union.rec*, %union.rec** %res, align 8
  %1945 = bitcast %union.rec* %1944 to %struct.closure_type*
  %1946 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1945, i32 0, i32 4
  %1947 = bitcast %union.FOURTH_UNION* %1946 to %struct.STYLE*
  %1948 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1947, i32 0, i32 1
  %1949 = bitcast %union.anon.10* %1948 to %struct.GAP*
  %1950 = bitcast %struct.GAP* %1949 to i16*
  %1951 = trunc i32 %1943 to i16
  %1952 = load i16, i16* %1950, align 4
  %1953 = and i16 %1951, 7
  %1954 = shl i16 %1953, 13
  %1955 = and i16 %1952, 8191
  %1956 = or i16 %1955, %1954
  store i16 %1956, i16* %1950, align 4
  %1957 = zext i16 %1953 to i32
  %1958 = load %union.rec*, %union.rec** %1, align 8
  %1959 = bitcast %union.rec* %1958 to %struct.closure_type*
  %1960 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1959, i32 0, i32 4
  %1961 = bitcast %union.FOURTH_UNION* %1960 to %struct.STYLE*
  %1962 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1961, i32 0, i32 1
  %1963 = bitcast %union.anon.10* %1962 to %struct.GAP*
  %1964 = getelementptr inbounds %struct.GAP, %struct.GAP* %1963, i32 0, i32 1
  %1965 = load i16, i16* %1964, align 2
  %1966 = load %union.rec*, %union.rec** %res, align 8
  %1967 = bitcast %union.rec* %1966 to %struct.closure_type*
  %1968 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1967, i32 0, i32 4
  %1969 = bitcast %union.FOURTH_UNION* %1968 to %struct.STYLE*
  %1970 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1969, i32 0, i32 1
  %1971 = bitcast %union.anon.10* %1970 to %struct.GAP*
  %1972 = getelementptr inbounds %struct.GAP, %struct.GAP* %1971, i32 0, i32 1
  store i16 %1965, i16* %1972, align 2
  %1973 = load %union.rec*, %union.rec** %1, align 8
  %1974 = bitcast %union.rec* %1973 to %struct.closure_type*
  %1975 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1974, i32 0, i32 4
  %1976 = bitcast %union.FOURTH_UNION* %1975 to %struct.STYLE*
  %1977 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1976, i32 0, i32 4
  %1978 = load i32, i32* %1977, align 4
  %1979 = and i32 %1978, 4095
  %1980 = load %union.rec*, %union.rec** %res, align 8
  %1981 = bitcast %union.rec* %1980 to %struct.closure_type*
  %1982 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1981, i32 0, i32 4
  %1983 = bitcast %union.FOURTH_UNION* %1982 to %struct.STYLE*
  %1984 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1983, i32 0, i32 4
  %1985 = load i32, i32* %1984, align 4
  %1986 = and i32 %1979, 4095
  %1987 = and i32 %1985, -4096
  %1988 = or i32 %1987, %1986
  store i32 %1988, i32* %1984, align 4
  %1989 = load %union.rec*, %union.rec** %1, align 8
  %1990 = bitcast %union.rec* %1989 to %struct.closure_type*
  %1991 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1990, i32 0, i32 4
  %1992 = bitcast %union.FOURTH_UNION* %1991 to %struct.STYLE*
  %1993 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1992, i32 0, i32 4
  %1994 = load i32, i32* %1993, align 4
  %1995 = lshr i32 %1994, 12
  %1996 = and i32 %1995, 1023
  %1997 = load %union.rec*, %union.rec** %res, align 8
  %1998 = bitcast %union.rec* %1997 to %struct.closure_type*
  %1999 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1998, i32 0, i32 4
  %2000 = bitcast %union.FOURTH_UNION* %1999 to %struct.STYLE*
  %2001 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2000, i32 0, i32 4
  %2002 = load i32, i32* %2001, align 4
  %2003 = and i32 %1996, 1023
  %2004 = shl i32 %2003, 12
  %2005 = and i32 %2002, -4190209
  %2006 = or i32 %2005, %2004
  store i32 %2006, i32* %2001, align 4
  %2007 = load %union.rec*, %union.rec** %1, align 8
  %2008 = bitcast %union.rec* %2007 to %struct.closure_type*
  %2009 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2008, i32 0, i32 4
  %2010 = bitcast %union.FOURTH_UNION* %2009 to %struct.STYLE*
  %2011 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2010, i32 0, i32 4
  %2012 = load i32, i32* %2011, align 4
  %2013 = lshr i32 %2012, 22
  %2014 = and i32 %2013, 3
  %2015 = load %union.rec*, %union.rec** %res, align 8
  %2016 = bitcast %union.rec* %2015 to %struct.closure_type*
  %2017 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2016, i32 0, i32 4
  %2018 = bitcast %union.FOURTH_UNION* %2017 to %struct.STYLE*
  %2019 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2018, i32 0, i32 4
  %2020 = load i32, i32* %2019, align 4
  %2021 = and i32 %2014, 3
  %2022 = shl i32 %2021, 22
  %2023 = and i32 %2020, -12582913
  %2024 = or i32 %2023, %2022
  store i32 %2024, i32* %2019, align 4
  %2025 = load %union.rec*, %union.rec** %1, align 8
  %2026 = bitcast %union.rec* %2025 to %struct.closure_type*
  %2027 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2026, i32 0, i32 4
  %2028 = bitcast %union.FOURTH_UNION* %2027 to %struct.STYLE*
  %2029 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2028, i32 0, i32 4
  %2030 = load i32, i32* %2029, align 4
  %2031 = lshr i32 %2030, 24
  %2032 = and i32 %2031, 63
  %2033 = load %union.rec*, %union.rec** %res, align 8
  %2034 = bitcast %union.rec* %2033 to %struct.closure_type*
  %2035 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2034, i32 0, i32 4
  %2036 = bitcast %union.FOURTH_UNION* %2035 to %struct.STYLE*
  %2037 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2036, i32 0, i32 4
  %2038 = load i32, i32* %2037, align 4
  %2039 = and i32 %2032, 63
  %2040 = shl i32 %2039, 24
  %2041 = and i32 %2038, -1056964609
  %2042 = or i32 %2041, %2040
  store i32 %2042, i32* %2037, align 4
  %2043 = load %union.rec*, %union.rec** %1, align 8
  %2044 = bitcast %union.rec* %2043 to %struct.closure_type*
  %2045 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2044, i32 0, i32 4
  %2046 = bitcast %union.FOURTH_UNION* %2045 to %struct.STYLE*
  %2047 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2046, i32 0, i32 4
  %2048 = load i32, i32* %2047, align 4
  %2049 = lshr i32 %2048, 31
  %2050 = load %union.rec*, %union.rec** %res, align 8
  %2051 = bitcast %union.rec* %2050 to %struct.closure_type*
  %2052 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2051, i32 0, i32 4
  %2053 = bitcast %union.FOURTH_UNION* %2052 to %struct.STYLE*
  %2054 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2053, i32 0, i32 4
  %2055 = load i32, i32* %2054, align 4
  %2056 = and i32 %2049, 1
  %2057 = shl i32 %2056, 31
  %2058 = and i32 %2055, 2147483647
  %2059 = or i32 %2058, %2057
  store i32 %2059, i32* %2054, align 4
  %2060 = load %union.rec*, %union.rec** %1, align 8
  %2061 = bitcast %union.rec* %2060 to %struct.closure_type*
  %2062 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2061, i32 0, i32 4
  %2063 = bitcast %union.FOURTH_UNION* %2062 to %struct.STYLE*
  %2064 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2063, i32 0, i32 4
  %2065 = load i32, i32* %2064, align 4
  %2066 = lshr i32 %2065, 30
  %2067 = and i32 %2066, 1
  %2068 = load %union.rec*, %union.rec** %res, align 8
  %2069 = bitcast %union.rec* %2068 to %struct.closure_type*
  %2070 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2069, i32 0, i32 4
  %2071 = bitcast %union.FOURTH_UNION* %2070 to %struct.STYLE*
  %2072 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2071, i32 0, i32 4
  %2073 = load i32, i32* %2072, align 4
  %2074 = and i32 %2067, 1
  %2075 = shl i32 %2074, 30
  %2076 = and i32 %2073, -1073741825
  %2077 = or i32 %2076, %2075
  store i32 %2077, i32* %2072, align 4
  %2078 = load %union.rec*, %union.rec** %1, align 8
  %2079 = bitcast %union.rec* %2078 to %struct.closure_type*
  %2080 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2079, i32 0, i32 4
  %2081 = bitcast %union.FOURTH_UNION* %2080 to %struct.STYLE*
  %2082 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2081, i32 0, i32 0
  %2083 = bitcast %union.anon* %2082 to %struct.anon.9*
  %2084 = bitcast %struct.anon.9* %2083 to i8*
  %2085 = load i8, i8* %2084, align 4
  %2086 = and i8 %2085, 1
  %2087 = zext i8 %2086 to i32
  %2088 = load %union.rec*, %union.rec** %res, align 8
  %2089 = bitcast %union.rec* %2088 to %struct.closure_type*
  %2090 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2089, i32 0, i32 4
  %2091 = bitcast %union.FOURTH_UNION* %2090 to %struct.STYLE*
  %2092 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2091, i32 0, i32 0
  %2093 = bitcast %union.anon* %2092 to %struct.anon.9*
  %2094 = bitcast %struct.anon.9* %2093 to i8*
  %2095 = trunc i32 %2087 to i8
  %2096 = load i8, i8* %2094, align 4
  %2097 = and i8 %2095, 1
  %2098 = and i8 %2096, -2
  %2099 = or i8 %2098, %2097
  store i8 %2099, i8* %2094, align 4
  %2100 = zext i8 %2097 to i32
  %2101 = load %union.rec*, %union.rec** %1, align 8
  %2102 = bitcast %union.rec* %2101 to %struct.closure_type*
  %2103 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2102, i32 0, i32 4
  %2104 = bitcast %union.FOURTH_UNION* %2103 to %struct.STYLE*
  %2105 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2104, i32 0, i32 0
  %2106 = bitcast %union.anon* %2105 to %struct.anon.9*
  %2107 = bitcast %struct.anon.9* %2106 to i8*
  %2108 = load i8, i8* %2107, align 4
  %2109 = lshr i8 %2108, 1
  %2110 = and i8 %2109, 1
  %2111 = zext i8 %2110 to i32
  %2112 = load %union.rec*, %union.rec** %res, align 8
  %2113 = bitcast %union.rec* %2112 to %struct.closure_type*
  %2114 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2113, i32 0, i32 4
  %2115 = bitcast %union.FOURTH_UNION* %2114 to %struct.STYLE*
  %2116 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2115, i32 0, i32 0
  %2117 = bitcast %union.anon* %2116 to %struct.anon.9*
  %2118 = bitcast %struct.anon.9* %2117 to i8*
  %2119 = trunc i32 %2111 to i8
  %2120 = load i8, i8* %2118, align 4
  %2121 = and i8 %2119, 1
  %2122 = shl i8 %2121, 1
  %2123 = and i8 %2120, -3
  %2124 = or i8 %2123, %2122
  store i8 %2124, i8* %2118, align 4
  %2125 = zext i8 %2121 to i32
  %2126 = load %union.rec*, %union.rec** %1, align 8
  %2127 = bitcast %union.rec* %2126 to %struct.closure_type*
  %2128 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2127, i32 0, i32 4
  %2129 = bitcast %union.FOURTH_UNION* %2128 to %struct.STYLE*
  %2130 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2129, i32 0, i32 0
  %2131 = bitcast %union.anon* %2130 to %struct.anon.9*
  %2132 = bitcast %struct.anon.9* %2131 to i8*
  %2133 = load i8, i8* %2132, align 4
  %2134 = lshr i8 %2133, 2
  %2135 = and i8 %2134, 1
  %2136 = zext i8 %2135 to i32
  %2137 = load %union.rec*, %union.rec** %res, align 8
  %2138 = bitcast %union.rec* %2137 to %struct.closure_type*
  %2139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2138, i32 0, i32 4
  %2140 = bitcast %union.FOURTH_UNION* %2139 to %struct.STYLE*
  %2141 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2140, i32 0, i32 0
  %2142 = bitcast %union.anon* %2141 to %struct.anon.9*
  %2143 = bitcast %struct.anon.9* %2142 to i8*
  %2144 = trunc i32 %2136 to i8
  %2145 = load i8, i8* %2143, align 4
  %2146 = and i8 %2144, 1
  %2147 = shl i8 %2146, 2
  %2148 = and i8 %2145, -5
  %2149 = or i8 %2148, %2147
  store i8 %2149, i8* %2143, align 4
  %2150 = zext i8 %2146 to i32
  %2151 = load %union.rec*, %union.rec** %1, align 8
  %2152 = bitcast %union.rec* %2151 to %struct.closure_type*
  %2153 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2152, i32 0, i32 4
  %2154 = bitcast %union.FOURTH_UNION* %2153 to %struct.STYLE*
  %2155 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2154, i32 0, i32 0
  %2156 = bitcast %union.anon* %2155 to %struct.anon.9*
  %2157 = bitcast %struct.anon.9* %2156 to i8*
  %2158 = load i8, i8* %2157, align 4
  %2159 = lshr i8 %2158, 4
  %2160 = and i8 %2159, 7
  %2161 = zext i8 %2160 to i32
  %2162 = load %union.rec*, %union.rec** %res, align 8
  %2163 = bitcast %union.rec* %2162 to %struct.closure_type*
  %2164 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2163, i32 0, i32 4
  %2165 = bitcast %union.FOURTH_UNION* %2164 to %struct.STYLE*
  %2166 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2165, i32 0, i32 0
  %2167 = bitcast %union.anon* %2166 to %struct.anon.9*
  %2168 = bitcast %struct.anon.9* %2167 to i8*
  %2169 = trunc i32 %2161 to i8
  %2170 = load i8, i8* %2168, align 4
  %2171 = and i8 %2169, 7
  %2172 = shl i8 %2171, 4
  %2173 = and i8 %2170, -113
  %2174 = or i8 %2173, %2172
  store i8 %2174, i8* %2168, align 4
  %2175 = zext i8 %2171 to i32
  %2176 = load %union.rec*, %union.rec** %1, align 8
  %2177 = bitcast %union.rec* %2176 to %struct.closure_type*
  %2178 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2177, i32 0, i32 4
  %2179 = bitcast %union.FOURTH_UNION* %2178 to %struct.STYLE*
  %2180 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2179, i32 0, i32 2
  %2181 = load i16, i16* %2180, align 2
  %2182 = load %union.rec*, %union.rec** %res, align 8
  %2183 = bitcast %union.rec* %2182 to %struct.closure_type*
  %2184 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2183, i32 0, i32 4
  %2185 = bitcast %union.FOURTH_UNION* %2184 to %struct.STYLE*
  %2186 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2185, i32 0, i32 2
  store i16 %2181, i16* %2186, align 2
  %2187 = load %union.rec*, %union.rec** %1, align 8
  %2188 = bitcast %union.rec* %2187 to %struct.closure_type*
  %2189 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2188, i32 0, i32 4
  %2190 = bitcast %union.FOURTH_UNION* %2189 to %struct.STYLE*
  %2191 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2190, i32 0, i32 3
  %2192 = load i16, i16* %2191, align 2
  %2193 = load %union.rec*, %union.rec** %res, align 8
  %2194 = bitcast %union.rec* %2193 to %struct.closure_type*
  %2195 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2194, i32 0, i32 4
  %2196 = bitcast %union.FOURTH_UNION* %2195 to %struct.STYLE*
  %2197 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2196, i32 0, i32 3
  store i16 %2192, i16* %2197, align 2
  br label %2209

; <label>:2198                                    ; preds = %0
  %2199 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2200 = load %union.rec*, %union.rec** %1, align 8
  %2201 = bitcast %union.rec* %2200 to %struct.word_type*
  %2202 = getelementptr inbounds %struct.word_type, %struct.word_type* %2201, i32 0, i32 1
  %2203 = bitcast %union.FIRST_UNION* %2202 to %struct.anon*
  %2204 = getelementptr inbounds %struct.anon, %struct.anon* %2203, i32 0, i32 0
  %2205 = load i8, i8* %2204, align 1
  %2206 = zext i8 %2205 to i32
  %2207 = call i8* @Image(i32 %2206)
  %2208 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.FILE_POS* %2199, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.7, i32 0, i32 0), i8* %2207)
  store %union.rec* null, %union.rec** %res, align 8
  br label %2209

; <label>:2209                                    ; preds = %2198, %1589, %1299, %1017, %1016, %728, %437, %56
  %2210 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %2211 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2212 = icmp eq %struct.FILE_POS* %2210, %2211
  br i1 %2212, label %2213, label %2258

; <label>:2213                                    ; preds = %2209
  %2214 = load %union.rec*, %union.rec** %1, align 8
  %2215 = bitcast %union.rec* %2214 to %struct.word_type*
  %2216 = getelementptr inbounds %struct.word_type, %struct.word_type* %2215, i32 0, i32 1
  %2217 = bitcast %union.FIRST_UNION* %2216 to %struct.FILE_POS*
  %2218 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2217, i32 0, i32 2
  %2219 = load i16, i16* %2218, align 2
  %2220 = load %union.rec*, %union.rec** %res, align 8
  %2221 = bitcast %union.rec* %2220 to %struct.word_type*
  %2222 = getelementptr inbounds %struct.word_type, %struct.word_type* %2221, i32 0, i32 1
  %2223 = bitcast %union.FIRST_UNION* %2222 to %struct.FILE_POS*
  %2224 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2223, i32 0, i32 2
  store i16 %2219, i16* %2224, align 2
  %2225 = load %union.rec*, %union.rec** %1, align 8
  %2226 = bitcast %union.rec* %2225 to %struct.word_type*
  %2227 = getelementptr inbounds %struct.word_type, %struct.word_type* %2226, i32 0, i32 1
  %2228 = bitcast %union.FIRST_UNION* %2227 to %struct.FILE_POS*
  %2229 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2228, i32 0, i32 3
  %2230 = load i32, i32* %2229, align 4
  %2231 = and i32 %2230, 1048575
  %2232 = load %union.rec*, %union.rec** %res, align 8
  %2233 = bitcast %union.rec* %2232 to %struct.word_type*
  %2234 = getelementptr inbounds %struct.word_type, %struct.word_type* %2233, i32 0, i32 1
  %2235 = bitcast %union.FIRST_UNION* %2234 to %struct.FILE_POS*
  %2236 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2235, i32 0, i32 3
  %2237 = load i32, i32* %2236, align 4
  %2238 = and i32 %2231, 1048575
  %2239 = and i32 %2237, -1048576
  %2240 = or i32 %2239, %2238
  store i32 %2240, i32* %2236, align 4
  %2241 = load %union.rec*, %union.rec** %1, align 8
  %2242 = bitcast %union.rec* %2241 to %struct.word_type*
  %2243 = getelementptr inbounds %struct.word_type, %struct.word_type* %2242, i32 0, i32 1
  %2244 = bitcast %union.FIRST_UNION* %2243 to %struct.FILE_POS*
  %2245 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2244, i32 0, i32 3
  %2246 = load i32, i32* %2245, align 4
  %2247 = lshr i32 %2246, 20
  %2248 = load %union.rec*, %union.rec** %res, align 8
  %2249 = bitcast %union.rec* %2248 to %struct.word_type*
  %2250 = getelementptr inbounds %struct.word_type, %struct.word_type* %2249, i32 0, i32 1
  %2251 = bitcast %union.FIRST_UNION* %2250 to %struct.FILE_POS*
  %2252 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2251, i32 0, i32 3
  %2253 = load i32, i32* %2252, align 4
  %2254 = and i32 %2247, 4095
  %2255 = shl i32 %2254, 20
  %2256 = and i32 %2253, 1048575
  %2257 = or i32 %2256, %2255
  store i32 %2257, i32* %2252, align 4
  br label %2294

; <label>:2258                                    ; preds = %2209
  %2259 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %2260 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2259, i32 0, i32 2
  %2261 = load i16, i16* %2260, align 2
  %2262 = load %union.rec*, %union.rec** %res, align 8
  %2263 = bitcast %union.rec* %2262 to %struct.word_type*
  %2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %2263, i32 0, i32 1
  %2265 = bitcast %union.FIRST_UNION* %2264 to %struct.FILE_POS*
  %2266 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2265, i32 0, i32 2
  store i16 %2261, i16* %2266, align 2
  %2267 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %2268 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2267, i32 0, i32 3
  %2269 = load i32, i32* %2268, align 4
  %2270 = and i32 %2269, 1048575
  %2271 = load %union.rec*, %union.rec** %res, align 8
  %2272 = bitcast %union.rec* %2271 to %struct.word_type*
  %2273 = getelementptr inbounds %struct.word_type, %struct.word_type* %2272, i32 0, i32 1
  %2274 = bitcast %union.FIRST_UNION* %2273 to %struct.FILE_POS*
  %2275 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2274, i32 0, i32 3
  %2276 = load i32, i32* %2275, align 4
  %2277 = and i32 %2270, 1048575
  %2278 = and i32 %2276, -1048576
  %2279 = or i32 %2278, %2277
  store i32 %2279, i32* %2275, align 4
  %2280 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %2281 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2280, i32 0, i32 3
  %2282 = load i32, i32* %2281, align 4
  %2283 = lshr i32 %2282, 20
  %2284 = load %union.rec*, %union.rec** %res, align 8
  %2285 = bitcast %union.rec* %2284 to %struct.word_type*
  %2286 = getelementptr inbounds %struct.word_type, %struct.word_type* %2285, i32 0, i32 1
  %2287 = bitcast %union.FIRST_UNION* %2286 to %struct.FILE_POS*
  %2288 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2287, i32 0, i32 3
  %2289 = load i32, i32* %2288, align 4
  %2290 = and i32 %2283, 4095
  %2291 = shl i32 %2290, 20
  %2292 = and i32 %2289, 1048575
  %2293 = or i32 %2292, %2291
  store i32 %2293, i32* %2288, align 4
  br label %2294

; <label>:2294                                    ; preds = %2258, %2213
  %2295 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %2295
}

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define %union.rec* @InsertObject(%union.rec* %x, %union.rec** %ins, %struct.STYLE* %style) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec**, align 8
  %3 = alloca %struct.STYLE*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec** %ins, %union.rec*** %2, align 8
  store %struct.STYLE* %style, %struct.STYLE** %3, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  switch i32 %10, label %1507 [
    i32 11, label %11
    i32 12, label %11
    i32 5, label %936
    i32 20, label %936
    i32 21, label %936
    i32 22, label %936
    i32 23, label %936
    i32 8, label %936
    i32 6, label %936
    i32 7, label %936
    i32 4, label %936
    i32 2, label %936
    i32 94, label %936
    i32 95, label %936
    i32 45, label %936
    i32 46, label %936
    i32 18, label %938
    i32 19, label %938
    i32 16, label %938
    i32 15, label %938
    i32 9, label %938
    i32 24, label %993
    i32 25, label %993
    i32 47, label %993
    i32 48, label %993
    i32 49, label %993
    i32 36, label %993
    i32 37, label %993
    i32 38, label %993
    i32 39, label %993
    i32 40, label %993
    i32 41, label %993
    i32 30, label %993
    i32 31, label %993
    i32 32, label %993
    i32 33, label %993
    i32 96, label %993
    i32 97, label %993
    i32 98, label %993
    i32 99, label %993
    i32 50, label %993
    i32 51, label %993
    i32 34, label %993
    i32 35, label %993
    i32 26, label %993
    i32 27, label %993
    i32 28, label %993
    i32 29, label %993
    i32 44, label %993
    i32 42, label %993
    i32 43, label %993
    i32 17, label %1028
  ]

; <label>:11                                      ; preds = %0, %0
  %12 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %13 = zext i8 %12 to i32
  store i32 %13, i32* @zz_size, align 4
  %14 = sext i32 %13 to i64
  %15 = icmp uge i64 %14, 265
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %11
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %17)
  br label %44

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* @zz_size, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %21
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = icmp eq %union.rec* %23, null
  br i1 %24, label %25, label %29

; <label>:25                                      ; preds = %19
  %26 = load i32, i32* @zz_size, align 4
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %28 = call %union.rec* @GetMemory(i32 %26, %struct.FILE_POS* %27)
  store %union.rec* %28, %union.rec** @zz_hold, align 8
  br label %43

; <label>:29                                      ; preds = %19
  %30 = load i32, i32* @zz_size, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %31
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 0
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %38, align 8
  %40 = load i32, i32* @zz_size, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %41
  store %union.rec* %39, %union.rec** %42, align 8
  br label %43

; <label>:43                                      ; preds = %29, %25
  br label %44

; <label>:44                                      ; preds = %43, %16
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  store i8 17, i8* %49, align 1
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 1
  store %union.rec* %50, %union.rec** %55, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 0
  %59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %58, i32 0, i64 1
  %60 = getelementptr inbounds %struct.LIST, %struct.LIST* %59, i32 0, i32 0
  store %union.rec* %50, %union.rec** %60, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 0
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  store %union.rec* %50, %union.rec** %65, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 0
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  store %union.rec* %50, %union.rec** %70, align 8
  store %union.rec* %50, %union.rec** %res, align 8
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 1
  %74 = bitcast %union.FIRST_UNION* %73 to %struct.FILE_POS*
  %75 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %74, i32 0, i32 2
  %76 = load i16, i16* %75, align 2
  %77 = load %union.rec*, %union.rec** %res, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.FILE_POS*
  %81 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %80, i32 0, i32 2
  store i16 %76, i16* %81, align 2
  %82 = load %union.rec*, %union.rec** %1, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 1
  %85 = bitcast %union.FIRST_UNION* %84 to %struct.FILE_POS*
  %86 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 4
  %88 = and i32 %87, 1048575
  %89 = load %union.rec*, %union.rec** %res, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.FILE_POS*
  %93 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = and i32 %88, 1048575
  %96 = and i32 %94, -1048576
  %97 = or i32 %96, %95
  store i32 %97, i32* %93, align 4
  %98 = load %union.rec*, %union.rec** %1, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 1
  %101 = bitcast %union.FIRST_UNION* %100 to %struct.FILE_POS*
  %102 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = lshr i32 %103, 20
  %105 = load %union.rec*, %union.rec** %res, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.FILE_POS*
  %109 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 4
  %111 = and i32 %104, 4095
  %112 = shl i32 %111, 20
  %113 = and i32 %110, 1048575
  %114 = or i32 %113, %112
  store i32 %114, i32* %109, align 4
  %115 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %115, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 1
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 1
  %121 = load %union.rec*, %union.rec** %120, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = icmp eq %union.rec* %121, %122
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %44
  br label %166

; <label>:125                                     ; preds = %44
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 0
  %129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %128, i32 0, i64 1
  %130 = getelementptr inbounds %struct.LIST, %struct.LIST* %129, i32 0, i32 1
  %131 = load %union.rec*, %union.rec** %130, align 8
  store %union.rec* %131, %union.rec** @zz_res, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 1
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %136, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 1
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 0
  store %union.rec* %137, %union.rec** %142, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 0
  %147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %146, i32 0, i64 1
  %148 = getelementptr inbounds %struct.LIST, %struct.LIST* %147, i32 0, i32 0
  %149 = load %union.rec*, %union.rec** %148, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 1
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 1
  store %union.rec* %143, %union.rec** %153, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 0
  %158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %157, i32 0, i64 1
  %159 = getelementptr inbounds %struct.LIST, %struct.LIST* %158, i32 0, i32 1
  store %union.rec* %154, %union.rec** %159, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  store %union.rec* %154, %union.rec** %164, align 8
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %166

; <label>:166                                     ; preds = %125, %124
  %167 = phi %union.rec* [ null, %124 ], [ %165, %125 ]
  store %union.rec* %167, %union.rec** @xx_tmp, align 8
  %168 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %168, %union.rec** @zz_res, align 8
  %169 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %169, %union.rec** @zz_hold, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %171 = icmp eq %union.rec* %170, null
  br i1 %171, label %172, label %174

; <label>:172                                     ; preds = %166
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %222

; <label>:174                                     ; preds = %166
  %175 = load %union.rec*, %union.rec** @zz_res, align 8
  %176 = icmp eq %union.rec* %175, null
  br i1 %176, label %177, label %179

; <label>:177                                     ; preds = %174
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %220

; <label>:179                                     ; preds = %174
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %182, i32 0, i64 1
  %184 = getelementptr inbounds %struct.LIST, %struct.LIST* %183, i32 0, i32 0
  %185 = load %union.rec*, %union.rec** %184, align 8
  store %union.rec* %185, %union.rec** @zz_tmp, align 8
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 0
  %189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %188, i32 0, i64 1
  %190 = getelementptr inbounds %struct.LIST, %struct.LIST* %189, i32 0, i32 0
  %191 = load %union.rec*, %union.rec** %190, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 1
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 0
  store %union.rec* %191, %union.rec** %196, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = load %union.rec*, %union.rec** @zz_res, align 8
  %199 = bitcast %union.rec* %198 to %struct.word_type*
  %200 = getelementptr inbounds %struct.word_type, %struct.word_type* %199, i32 0, i32 0
  %201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %200, i32 0, i64 1
  %202 = getelementptr inbounds %struct.LIST, %struct.LIST* %201, i32 0, i32 0
  %203 = load %union.rec*, %union.rec** %202, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 0
  %206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %205, i32 0, i64 1
  %207 = getelementptr inbounds %struct.LIST, %struct.LIST* %206, i32 0, i32 1
  store %union.rec* %197, %union.rec** %207, align 8
  %208 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 1
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 0
  store %union.rec* %208, %union.rec** %213, align 8
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %215 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 0
  %218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %217, i32 0, i64 1
  %219 = getelementptr inbounds %struct.LIST, %struct.LIST* %218, i32 0, i32 1
  store %union.rec* %214, %union.rec** %219, align 8
  br label %220

; <label>:220                                     ; preds = %179, %177
  %221 = phi %union.rec* [ %178, %177 ], [ %214, %179 ]
  br label %222

; <label>:222                                     ; preds = %220, %172
  %223 = phi %union.rec* [ %173, %172 ], [ %221, %220 ]
  %224 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %225 = zext i8 %224 to i32
  store i32 %225, i32* @zz_size, align 4
  %226 = sext i32 %225 to i64
  %227 = icmp uge i64 %226, 265
  br i1 %227, label %228, label %231

; <label>:228                                     ; preds = %222
  %229 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %230 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %229)
  br label %256

; <label>:231                                     ; preds = %222
  %232 = load i32, i32* @zz_size, align 4
  %233 = sext i32 %232 to i64
  %234 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %233
  %235 = load %union.rec*, %union.rec** %234, align 8
  %236 = icmp eq %union.rec* %235, null
  br i1 %236, label %237, label %241

; <label>:237                                     ; preds = %231
  %238 = load i32, i32* @zz_size, align 4
  %239 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %240 = call %union.rec* @GetMemory(i32 %238, %struct.FILE_POS* %239)
  store %union.rec* %240, %union.rec** @zz_hold, align 8
  br label %255

; <label>:241                                     ; preds = %231
  %242 = load i32, i32* @zz_size, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %243
  %245 = load %union.rec*, %union.rec** %244, align 8
  store %union.rec* %245, %union.rec** @zz_hold, align 8
  store %union.rec* %245, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 0
  %249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %248, i32 0, i64 0
  %250 = getelementptr inbounds %struct.LIST, %struct.LIST* %249, i32 0, i32 0
  %251 = load %union.rec*, %union.rec** %250, align 8
  %252 = load i32, i32* @zz_size, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %253
  store %union.rec* %251, %union.rec** %254, align 8
  br label %255

; <label>:255                                     ; preds = %241, %237
  br label %256

; <label>:256                                     ; preds = %255, %228
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 1
  %260 = bitcast %union.FIRST_UNION* %259 to %struct.anon*
  %261 = getelementptr inbounds %struct.anon, %struct.anon* %260, i32 0, i32 0
  store i8 0, i8* %261, align 1
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 0
  %266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %265, i32 0, i64 1
  %267 = getelementptr inbounds %struct.LIST, %struct.LIST* %266, i32 0, i32 1
  store %union.rec* %262, %union.rec** %267, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = bitcast %union.rec* %268 to %struct.word_type*
  %270 = getelementptr inbounds %struct.word_type, %struct.word_type* %269, i32 0, i32 0
  %271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %270, i32 0, i64 1
  %272 = getelementptr inbounds %struct.LIST, %struct.LIST* %271, i32 0, i32 0
  store %union.rec* %262, %union.rec** %272, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 0
  %276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %275, i32 0, i64 0
  %277 = getelementptr inbounds %struct.LIST, %struct.LIST* %276, i32 0, i32 1
  store %union.rec* %262, %union.rec** %277, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = bitcast %union.rec* %278 to %struct.word_type*
  %280 = getelementptr inbounds %struct.word_type, %struct.word_type* %279, i32 0, i32 0
  %281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %280, i32 0, i64 0
  %282 = getelementptr inbounds %struct.LIST, %struct.LIST* %281, i32 0, i32 0
  store %union.rec* %262, %union.rec** %282, align 8
  store %union.rec* %262, %union.rec** @xx_link, align 8
  %283 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %283, %union.rec** @zz_res, align 8
  %284 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %286 = icmp eq %union.rec* %285, null
  br i1 %286, label %287, label %289

; <label>:287                                     ; preds = %256
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %337

; <label>:289                                     ; preds = %256
  %290 = load %union.rec*, %union.rec** @zz_res, align 8
  %291 = icmp eq %union.rec* %290, null
  br i1 %291, label %292, label %294

; <label>:292                                     ; preds = %289
  %293 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %335

; <label>:294                                     ; preds = %289
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 0
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 0
  %300 = load %union.rec*, %union.rec** %299, align 8
  store %union.rec* %300, %union.rec** @zz_tmp, align 8
  %301 = load %union.rec*, %union.rec** @zz_res, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %303, i32 0, i64 0
  %305 = getelementptr inbounds %struct.LIST, %struct.LIST* %304, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %305, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  store %union.rec* %306, %union.rec** %311, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %313 = load %union.rec*, %union.rec** @zz_res, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 0
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 0
  %318 = load %union.rec*, %union.rec** %317, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 0
  %321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %320, i32 0, i64 0
  %322 = getelementptr inbounds %struct.LIST, %struct.LIST* %321, i32 0, i32 1
  store %union.rec* %312, %union.rec** %322, align 8
  %323 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %324 = load %union.rec*, %union.rec** @zz_res, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 0
  %327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %326, i32 0, i64 0
  %328 = getelementptr inbounds %struct.LIST, %struct.LIST* %327, i32 0, i32 0
  store %union.rec* %323, %union.rec** %328, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 0
  %333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %332, i32 0, i64 0
  %334 = getelementptr inbounds %struct.LIST, %struct.LIST* %333, i32 0, i32 1
  store %union.rec* %329, %union.rec** %334, align 8
  br label %335

; <label>:335                                     ; preds = %294, %292
  %336 = phi %union.rec* [ %293, %292 ], [ %329, %294 ]
  br label %337

; <label>:337                                     ; preds = %335, %287
  %338 = phi %union.rec* [ %288, %287 ], [ %336, %335 ]
  %339 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %339, %union.rec** @zz_res, align 8
  %340 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %340, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = icmp eq %union.rec* %341, null
  br i1 %342, label %343, label %345

; <label>:343                                     ; preds = %337
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %393

; <label>:345                                     ; preds = %337
  %346 = load %union.rec*, %union.rec** @zz_res, align 8
  %347 = icmp eq %union.rec* %346, null
  br i1 %347, label %348, label %350

; <label>:348                                     ; preds = %345
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %391

; <label>:350                                     ; preds = %345
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = bitcast %union.rec* %351 to %struct.word_type*
  %353 = getelementptr inbounds %struct.word_type, %struct.word_type* %352, i32 0, i32 0
  %354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %353, i32 0, i64 1
  %355 = getelementptr inbounds %struct.LIST, %struct.LIST* %354, i32 0, i32 0
  %356 = load %union.rec*, %union.rec** %355, align 8
  store %union.rec* %356, %union.rec** @zz_tmp, align 8
  %357 = load %union.rec*, %union.rec** @zz_res, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 1
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 0
  %362 = load %union.rec*, %union.rec** %361, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %365, i32 0, i64 1
  %367 = getelementptr inbounds %struct.LIST, %struct.LIST* %366, i32 0, i32 0
  store %union.rec* %362, %union.rec** %367, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = load %union.rec*, %union.rec** @zz_res, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 1
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 0
  %374 = load %union.rec*, %union.rec** %373, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 0
  %377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %376, i32 0, i64 1
  %378 = getelementptr inbounds %struct.LIST, %struct.LIST* %377, i32 0, i32 1
  store %union.rec* %368, %union.rec** %378, align 8
  %379 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %381 = bitcast %union.rec* %380 to %struct.word_type*
  %382 = getelementptr inbounds %struct.word_type, %struct.word_type* %381, i32 0, i32 0
  %383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %382, i32 0, i64 1
  %384 = getelementptr inbounds %struct.LIST, %struct.LIST* %383, i32 0, i32 0
  store %union.rec* %379, %union.rec** %384, align 8
  %385 = load %union.rec*, %union.rec** @zz_res, align 8
  %386 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 0
  %389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %388, i32 0, i64 1
  %390 = getelementptr inbounds %struct.LIST, %struct.LIST* %389, i32 0, i32 1
  store %union.rec* %385, %union.rec** %390, align 8
  br label %391

; <label>:391                                     ; preds = %350, %348
  %392 = phi %union.rec* [ %349, %348 ], [ %385, %350 ]
  br label %393

; <label>:393                                     ; preds = %391, %343
  %394 = phi %union.rec* [ %344, %343 ], [ %392, %391 ]
  %395 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %396 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %395, i32 0, i32 0
  %397 = bitcast %union.anon* %396 to %struct.GAP*
  %398 = bitcast %struct.GAP* %397 to i16*
  %399 = load i16, i16* %398, align 4
  %400 = lshr i16 %399, 7
  %401 = and i16 %400, 1
  %402 = zext i16 %401 to i32
  %403 = load %union.rec*, %union.rec** %res, align 8
  %404 = bitcast %union.rec* %403 to %struct.closure_type*
  %405 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %404, i32 0, i32 4
  %406 = bitcast %union.FOURTH_UNION* %405 to %struct.STYLE*
  %407 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %406, i32 0, i32 0
  %408 = bitcast %union.anon* %407 to %struct.GAP*
  %409 = bitcast %struct.GAP* %408 to i16*
  %410 = trunc i32 %402 to i16
  %411 = load i16, i16* %409, align 4
  %412 = and i16 %410, 1
  %413 = shl i16 %412, 7
  %414 = and i16 %411, -129
  %415 = or i16 %414, %413
  store i16 %415, i16* %409, align 4
  %416 = zext i16 %412 to i32
  %417 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %418 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %417, i32 0, i32 0
  %419 = bitcast %union.anon* %418 to %struct.GAP*
  %420 = bitcast %struct.GAP* %419 to i16*
  %421 = load i16, i16* %420, align 4
  %422 = lshr i16 %421, 8
  %423 = and i16 %422, 1
  %424 = zext i16 %423 to i32
  %425 = load %union.rec*, %union.rec** %res, align 8
  %426 = bitcast %union.rec* %425 to %struct.closure_type*
  %427 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %426, i32 0, i32 4
  %428 = bitcast %union.FOURTH_UNION* %427 to %struct.STYLE*
  %429 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %428, i32 0, i32 0
  %430 = bitcast %union.anon* %429 to %struct.GAP*
  %431 = bitcast %struct.GAP* %430 to i16*
  %432 = trunc i32 %424 to i16
  %433 = load i16, i16* %431, align 4
  %434 = and i16 %432, 1
  %435 = shl i16 %434, 8
  %436 = and i16 %433, -257
  %437 = or i16 %436, %435
  store i16 %437, i16* %431, align 4
  %438 = zext i16 %434 to i32
  %439 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %440 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %439, i32 0, i32 0
  %441 = bitcast %union.anon* %440 to %struct.GAP*
  %442 = bitcast %struct.GAP* %441 to i16*
  %443 = load i16, i16* %442, align 4
  %444 = lshr i16 %443, 9
  %445 = and i16 %444, 1
  %446 = zext i16 %445 to i32
  %447 = load %union.rec*, %union.rec** %res, align 8
  %448 = bitcast %union.rec* %447 to %struct.closure_type*
  %449 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %448, i32 0, i32 4
  %450 = bitcast %union.FOURTH_UNION* %449 to %struct.STYLE*
  %451 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %450, i32 0, i32 0
  %452 = bitcast %union.anon* %451 to %struct.GAP*
  %453 = bitcast %struct.GAP* %452 to i16*
  %454 = trunc i32 %446 to i16
  %455 = load i16, i16* %453, align 4
  %456 = and i16 %454, 1
  %457 = shl i16 %456, 9
  %458 = and i16 %455, -513
  %459 = or i16 %458, %457
  store i16 %459, i16* %453, align 4
  %460 = zext i16 %456 to i32
  %461 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %462 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %461, i32 0, i32 0
  %463 = bitcast %union.anon* %462 to %struct.GAP*
  %464 = bitcast %struct.GAP* %463 to i16*
  %465 = load i16, i16* %464, align 4
  %466 = lshr i16 %465, 10
  %467 = and i16 %466, 7
  %468 = zext i16 %467 to i32
  %469 = load %union.rec*, %union.rec** %res, align 8
  %470 = bitcast %union.rec* %469 to %struct.closure_type*
  %471 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %470, i32 0, i32 4
  %472 = bitcast %union.FOURTH_UNION* %471 to %struct.STYLE*
  %473 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %472, i32 0, i32 0
  %474 = bitcast %union.anon* %473 to %struct.GAP*
  %475 = bitcast %struct.GAP* %474 to i16*
  %476 = trunc i32 %468 to i16
  %477 = load i16, i16* %475, align 4
  %478 = and i16 %476, 7
  %479 = shl i16 %478, 10
  %480 = and i16 %477, -7169
  %481 = or i16 %480, %479
  store i16 %481, i16* %475, align 4
  %482 = zext i16 %478 to i32
  %483 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %484 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %483, i32 0, i32 0
  %485 = bitcast %union.anon* %484 to %struct.GAP*
  %486 = bitcast %struct.GAP* %485 to i16*
  %487 = load i16, i16* %486, align 4
  %488 = lshr i16 %487, 13
  %489 = zext i16 %488 to i32
  %490 = load %union.rec*, %union.rec** %res, align 8
  %491 = bitcast %union.rec* %490 to %struct.closure_type*
  %492 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %491, i32 0, i32 4
  %493 = bitcast %union.FOURTH_UNION* %492 to %struct.STYLE*
  %494 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %493, i32 0, i32 0
  %495 = bitcast %union.anon* %494 to %struct.GAP*
  %496 = bitcast %struct.GAP* %495 to i16*
  %497 = trunc i32 %489 to i16
  %498 = load i16, i16* %496, align 4
  %499 = and i16 %497, 7
  %500 = shl i16 %499, 13
  %501 = and i16 %498, 8191
  %502 = or i16 %501, %500
  store i16 %502, i16* %496, align 4
  %503 = zext i16 %499 to i32
  %504 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %505 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %504, i32 0, i32 0
  %506 = bitcast %union.anon* %505 to %struct.GAP*
  %507 = getelementptr inbounds %struct.GAP, %struct.GAP* %506, i32 0, i32 1
  %508 = load i16, i16* %507, align 2
  %509 = load %union.rec*, %union.rec** %res, align 8
  %510 = bitcast %union.rec* %509 to %struct.closure_type*
  %511 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %510, i32 0, i32 4
  %512 = bitcast %union.FOURTH_UNION* %511 to %struct.STYLE*
  %513 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %512, i32 0, i32 0
  %514 = bitcast %union.anon* %513 to %struct.GAP*
  %515 = getelementptr inbounds %struct.GAP, %struct.GAP* %514, i32 0, i32 1
  store i16 %508, i16* %515, align 2
  %516 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %517 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %516, i32 0, i32 1
  %518 = bitcast %union.anon.10* %517 to %struct.anon.11*
  %519 = bitcast %struct.anon.11* %518 to i8*
  %520 = load i8, i8* %519, align 4
  %521 = and i8 %520, 3
  %522 = zext i8 %521 to i32
  %523 = load %union.rec*, %union.rec** %res, align 8
  %524 = bitcast %union.rec* %523 to %struct.closure_type*
  %525 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %524, i32 0, i32 4
  %526 = bitcast %union.FOURTH_UNION* %525 to %struct.STYLE*
  %527 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %526, i32 0, i32 1
  %528 = bitcast %union.anon.10* %527 to %struct.anon.11*
  %529 = bitcast %struct.anon.11* %528 to i8*
  %530 = trunc i32 %522 to i8
  %531 = load i8, i8* %529, align 4
  %532 = and i8 %530, 3
  %533 = and i8 %531, -4
  %534 = or i8 %533, %532
  store i8 %534, i8* %529, align 4
  %535 = zext i8 %532 to i32
  %536 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %537 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %536, i32 0, i32 1
  %538 = bitcast %union.anon.10* %537 to %struct.anon.11*
  %539 = bitcast %struct.anon.11* %538 to i8*
  %540 = load i8, i8* %539, align 4
  %541 = lshr i8 %540, 2
  %542 = and i8 %541, 3
  %543 = zext i8 %542 to i32
  %544 = load %union.rec*, %union.rec** %res, align 8
  %545 = bitcast %union.rec* %544 to %struct.closure_type*
  %546 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %545, i32 0, i32 4
  %547 = bitcast %union.FOURTH_UNION* %546 to %struct.STYLE*
  %548 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %547, i32 0, i32 1
  %549 = bitcast %union.anon.10* %548 to %struct.anon.11*
  %550 = bitcast %struct.anon.11* %549 to i8*
  %551 = trunc i32 %543 to i8
  %552 = load i8, i8* %550, align 4
  %553 = and i8 %551, 3
  %554 = shl i8 %553, 2
  %555 = and i8 %552, -13
  %556 = or i8 %555, %554
  store i8 %556, i8* %550, align 4
  %557 = zext i8 %553 to i32
  %558 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %559 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %558, i32 0, i32 1
  %560 = bitcast %union.anon.10* %559 to %struct.anon.11*
  %561 = bitcast %struct.anon.11* %560 to i8*
  %562 = load i8, i8* %561, align 4
  %563 = lshr i8 %562, 4
  %564 = and i8 %563, 7
  %565 = zext i8 %564 to i32
  %566 = load %union.rec*, %union.rec** %res, align 8
  %567 = bitcast %union.rec* %566 to %struct.closure_type*
  %568 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %567, i32 0, i32 4
  %569 = bitcast %union.FOURTH_UNION* %568 to %struct.STYLE*
  %570 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %569, i32 0, i32 1
  %571 = bitcast %union.anon.10* %570 to %struct.anon.11*
  %572 = bitcast %struct.anon.11* %571 to i8*
  %573 = trunc i32 %565 to i8
  %574 = load i8, i8* %572, align 4
  %575 = and i8 %573, 7
  %576 = shl i8 %575, 4
  %577 = and i8 %574, -113
  %578 = or i8 %577, %576
  store i8 %578, i8* %572, align 4
  %579 = zext i8 %575 to i32
  %580 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %581 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %580, i32 0, i32 0
  %582 = bitcast %union.anon* %581 to %struct.anon.9*
  %583 = bitcast %struct.anon.9* %582 to i8*
  %584 = load i8, i8* %583, align 4
  %585 = lshr i8 %584, 3
  %586 = and i8 %585, 1
  %587 = zext i8 %586 to i32
  %588 = load %union.rec*, %union.rec** %res, align 8
  %589 = bitcast %union.rec* %588 to %struct.closure_type*
  %590 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %589, i32 0, i32 4
  %591 = bitcast %union.FOURTH_UNION* %590 to %struct.STYLE*
  %592 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %591, i32 0, i32 0
  %593 = bitcast %union.anon* %592 to %struct.anon.9*
  %594 = bitcast %struct.anon.9* %593 to i8*
  %595 = trunc i32 %587 to i8
  %596 = load i8, i8* %594, align 4
  %597 = and i8 %595, 1
  %598 = shl i8 %597, 3
  %599 = and i8 %596, -9
  %600 = or i8 %599, %598
  store i8 %600, i8* %594, align 4
  %601 = zext i8 %597 to i32
  %602 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %603 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %602, i32 0, i32 1
  %604 = bitcast %union.anon.10* %603 to %struct.GAP*
  %605 = bitcast %struct.GAP* %604 to i16*
  %606 = load i16, i16* %605, align 4
  %607 = lshr i16 %606, 7
  %608 = and i16 %607, 1
  %609 = zext i16 %608 to i32
  %610 = load %union.rec*, %union.rec** %res, align 8
  %611 = bitcast %union.rec* %610 to %struct.closure_type*
  %612 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %611, i32 0, i32 4
  %613 = bitcast %union.FOURTH_UNION* %612 to %struct.STYLE*
  %614 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %613, i32 0, i32 1
  %615 = bitcast %union.anon.10* %614 to %struct.GAP*
  %616 = bitcast %struct.GAP* %615 to i16*
  %617 = trunc i32 %609 to i16
  %618 = load i16, i16* %616, align 4
  %619 = and i16 %617, 1
  %620 = shl i16 %619, 7
  %621 = and i16 %618, -129
  %622 = or i16 %621, %620
  store i16 %622, i16* %616, align 4
  %623 = zext i16 %619 to i32
  %624 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %625 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %624, i32 0, i32 1
  %626 = bitcast %union.anon.10* %625 to %struct.GAP*
  %627 = bitcast %struct.GAP* %626 to i16*
  %628 = load i16, i16* %627, align 4
  %629 = lshr i16 %628, 8
  %630 = and i16 %629, 1
  %631 = zext i16 %630 to i32
  %632 = load %union.rec*, %union.rec** %res, align 8
  %633 = bitcast %union.rec* %632 to %struct.closure_type*
  %634 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %633, i32 0, i32 4
  %635 = bitcast %union.FOURTH_UNION* %634 to %struct.STYLE*
  %636 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %635, i32 0, i32 1
  %637 = bitcast %union.anon.10* %636 to %struct.GAP*
  %638 = bitcast %struct.GAP* %637 to i16*
  %639 = trunc i32 %631 to i16
  %640 = load i16, i16* %638, align 4
  %641 = and i16 %639, 1
  %642 = shl i16 %641, 8
  %643 = and i16 %640, -257
  %644 = or i16 %643, %642
  store i16 %644, i16* %638, align 4
  %645 = zext i16 %641 to i32
  %646 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %647 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %646, i32 0, i32 1
  %648 = bitcast %union.anon.10* %647 to %struct.GAP*
  %649 = bitcast %struct.GAP* %648 to i16*
  %650 = load i16, i16* %649, align 4
  %651 = lshr i16 %650, 9
  %652 = and i16 %651, 1
  %653 = zext i16 %652 to i32
  %654 = load %union.rec*, %union.rec** %res, align 8
  %655 = bitcast %union.rec* %654 to %struct.closure_type*
  %656 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %655, i32 0, i32 4
  %657 = bitcast %union.FOURTH_UNION* %656 to %struct.STYLE*
  %658 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %657, i32 0, i32 1
  %659 = bitcast %union.anon.10* %658 to %struct.GAP*
  %660 = bitcast %struct.GAP* %659 to i16*
  %661 = trunc i32 %653 to i16
  %662 = load i16, i16* %660, align 4
  %663 = and i16 %661, 1
  %664 = shl i16 %663, 9
  %665 = and i16 %662, -513
  %666 = or i16 %665, %664
  store i16 %666, i16* %660, align 4
  %667 = zext i16 %663 to i32
  %668 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %669 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %668, i32 0, i32 1
  %670 = bitcast %union.anon.10* %669 to %struct.GAP*
  %671 = bitcast %struct.GAP* %670 to i16*
  %672 = load i16, i16* %671, align 4
  %673 = lshr i16 %672, 10
  %674 = and i16 %673, 7
  %675 = zext i16 %674 to i32
  %676 = load %union.rec*, %union.rec** %res, align 8
  %677 = bitcast %union.rec* %676 to %struct.closure_type*
  %678 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %677, i32 0, i32 4
  %679 = bitcast %union.FOURTH_UNION* %678 to %struct.STYLE*
  %680 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %679, i32 0, i32 1
  %681 = bitcast %union.anon.10* %680 to %struct.GAP*
  %682 = bitcast %struct.GAP* %681 to i16*
  %683 = trunc i32 %675 to i16
  %684 = load i16, i16* %682, align 4
  %685 = and i16 %683, 7
  %686 = shl i16 %685, 10
  %687 = and i16 %684, -7169
  %688 = or i16 %687, %686
  store i16 %688, i16* %682, align 4
  %689 = zext i16 %685 to i32
  %690 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %691 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %690, i32 0, i32 1
  %692 = bitcast %union.anon.10* %691 to %struct.GAP*
  %693 = bitcast %struct.GAP* %692 to i16*
  %694 = load i16, i16* %693, align 4
  %695 = lshr i16 %694, 13
  %696 = zext i16 %695 to i32
  %697 = load %union.rec*, %union.rec** %res, align 8
  %698 = bitcast %union.rec* %697 to %struct.closure_type*
  %699 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %698, i32 0, i32 4
  %700 = bitcast %union.FOURTH_UNION* %699 to %struct.STYLE*
  %701 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %700, i32 0, i32 1
  %702 = bitcast %union.anon.10* %701 to %struct.GAP*
  %703 = bitcast %struct.GAP* %702 to i16*
  %704 = trunc i32 %696 to i16
  %705 = load i16, i16* %703, align 4
  %706 = and i16 %704, 7
  %707 = shl i16 %706, 13
  %708 = and i16 %705, 8191
  %709 = or i16 %708, %707
  store i16 %709, i16* %703, align 4
  %710 = zext i16 %706 to i32
  %711 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %712 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %711, i32 0, i32 1
  %713 = bitcast %union.anon.10* %712 to %struct.GAP*
  %714 = getelementptr inbounds %struct.GAP, %struct.GAP* %713, i32 0, i32 1
  %715 = load i16, i16* %714, align 2
  %716 = load %union.rec*, %union.rec** %res, align 8
  %717 = bitcast %union.rec* %716 to %struct.closure_type*
  %718 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %717, i32 0, i32 4
  %719 = bitcast %union.FOURTH_UNION* %718 to %struct.STYLE*
  %720 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %719, i32 0, i32 1
  %721 = bitcast %union.anon.10* %720 to %struct.GAP*
  %722 = getelementptr inbounds %struct.GAP, %struct.GAP* %721, i32 0, i32 1
  store i16 %715, i16* %722, align 2
  %723 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %724 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %723, i32 0, i32 4
  %725 = load i32, i32* %724, align 4
  %726 = and i32 %725, 4095
  %727 = load %union.rec*, %union.rec** %res, align 8
  %728 = bitcast %union.rec* %727 to %struct.closure_type*
  %729 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %728, i32 0, i32 4
  %730 = bitcast %union.FOURTH_UNION* %729 to %struct.STYLE*
  %731 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %730, i32 0, i32 4
  %732 = load i32, i32* %731, align 4
  %733 = and i32 %726, 4095
  %734 = and i32 %732, -4096
  %735 = or i32 %734, %733
  store i32 %735, i32* %731, align 4
  %736 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %737 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %736, i32 0, i32 4
  %738 = load i32, i32* %737, align 4
  %739 = lshr i32 %738, 12
  %740 = and i32 %739, 1023
  %741 = load %union.rec*, %union.rec** %res, align 8
  %742 = bitcast %union.rec* %741 to %struct.closure_type*
  %743 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %742, i32 0, i32 4
  %744 = bitcast %union.FOURTH_UNION* %743 to %struct.STYLE*
  %745 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %744, i32 0, i32 4
  %746 = load i32, i32* %745, align 4
  %747 = and i32 %740, 1023
  %748 = shl i32 %747, 12
  %749 = and i32 %746, -4190209
  %750 = or i32 %749, %748
  store i32 %750, i32* %745, align 4
  %751 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %752 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %751, i32 0, i32 4
  %753 = load i32, i32* %752, align 4
  %754 = lshr i32 %753, 22
  %755 = and i32 %754, 3
  %756 = load %union.rec*, %union.rec** %res, align 8
  %757 = bitcast %union.rec* %756 to %struct.closure_type*
  %758 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %757, i32 0, i32 4
  %759 = bitcast %union.FOURTH_UNION* %758 to %struct.STYLE*
  %760 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %759, i32 0, i32 4
  %761 = load i32, i32* %760, align 4
  %762 = and i32 %755, 3
  %763 = shl i32 %762, 22
  %764 = and i32 %761, -12582913
  %765 = or i32 %764, %763
  store i32 %765, i32* %760, align 4
  %766 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %767 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %766, i32 0, i32 4
  %768 = load i32, i32* %767, align 4
  %769 = lshr i32 %768, 24
  %770 = and i32 %769, 63
  %771 = load %union.rec*, %union.rec** %res, align 8
  %772 = bitcast %union.rec* %771 to %struct.closure_type*
  %773 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %772, i32 0, i32 4
  %774 = bitcast %union.FOURTH_UNION* %773 to %struct.STYLE*
  %775 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %774, i32 0, i32 4
  %776 = load i32, i32* %775, align 4
  %777 = and i32 %770, 63
  %778 = shl i32 %777, 24
  %779 = and i32 %776, -1056964609
  %780 = or i32 %779, %778
  store i32 %780, i32* %775, align 4
  %781 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %782 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %781, i32 0, i32 4
  %783 = load i32, i32* %782, align 4
  %784 = lshr i32 %783, 31
  %785 = load %union.rec*, %union.rec** %res, align 8
  %786 = bitcast %union.rec* %785 to %struct.closure_type*
  %787 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %786, i32 0, i32 4
  %788 = bitcast %union.FOURTH_UNION* %787 to %struct.STYLE*
  %789 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %788, i32 0, i32 4
  %790 = load i32, i32* %789, align 4
  %791 = and i32 %784, 1
  %792 = shl i32 %791, 31
  %793 = and i32 %790, 2147483647
  %794 = or i32 %793, %792
  store i32 %794, i32* %789, align 4
  %795 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %796 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %795, i32 0, i32 4
  %797 = load i32, i32* %796, align 4
  %798 = lshr i32 %797, 30
  %799 = and i32 %798, 1
  %800 = load %union.rec*, %union.rec** %res, align 8
  %801 = bitcast %union.rec* %800 to %struct.closure_type*
  %802 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %801, i32 0, i32 4
  %803 = bitcast %union.FOURTH_UNION* %802 to %struct.STYLE*
  %804 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %803, i32 0, i32 4
  %805 = load i32, i32* %804, align 4
  %806 = and i32 %799, 1
  %807 = shl i32 %806, 30
  %808 = and i32 %805, -1073741825
  %809 = or i32 %808, %807
  store i32 %809, i32* %804, align 4
  %810 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %811 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %810, i32 0, i32 0
  %812 = bitcast %union.anon* %811 to %struct.anon.9*
  %813 = bitcast %struct.anon.9* %812 to i8*
  %814 = load i8, i8* %813, align 4
  %815 = and i8 %814, 1
  %816 = zext i8 %815 to i32
  %817 = load %union.rec*, %union.rec** %res, align 8
  %818 = bitcast %union.rec* %817 to %struct.closure_type*
  %819 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %818, i32 0, i32 4
  %820 = bitcast %union.FOURTH_UNION* %819 to %struct.STYLE*
  %821 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %820, i32 0, i32 0
  %822 = bitcast %union.anon* %821 to %struct.anon.9*
  %823 = bitcast %struct.anon.9* %822 to i8*
  %824 = trunc i32 %816 to i8
  %825 = load i8, i8* %823, align 4
  %826 = and i8 %824, 1
  %827 = and i8 %825, -2
  %828 = or i8 %827, %826
  store i8 %828, i8* %823, align 4
  %829 = zext i8 %826 to i32
  %830 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %831 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %830, i32 0, i32 0
  %832 = bitcast %union.anon* %831 to %struct.anon.9*
  %833 = bitcast %struct.anon.9* %832 to i8*
  %834 = load i8, i8* %833, align 4
  %835 = lshr i8 %834, 1
  %836 = and i8 %835, 1
  %837 = zext i8 %836 to i32
  %838 = load %union.rec*, %union.rec** %res, align 8
  %839 = bitcast %union.rec* %838 to %struct.closure_type*
  %840 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %839, i32 0, i32 4
  %841 = bitcast %union.FOURTH_UNION* %840 to %struct.STYLE*
  %842 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %841, i32 0, i32 0
  %843 = bitcast %union.anon* %842 to %struct.anon.9*
  %844 = bitcast %struct.anon.9* %843 to i8*
  %845 = trunc i32 %837 to i8
  %846 = load i8, i8* %844, align 4
  %847 = and i8 %845, 1
  %848 = shl i8 %847, 1
  %849 = and i8 %846, -3
  %850 = or i8 %849, %848
  store i8 %850, i8* %844, align 4
  %851 = zext i8 %847 to i32
  %852 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %853 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %852, i32 0, i32 0
  %854 = bitcast %union.anon* %853 to %struct.anon.9*
  %855 = bitcast %struct.anon.9* %854 to i8*
  %856 = load i8, i8* %855, align 4
  %857 = lshr i8 %856, 2
  %858 = and i8 %857, 1
  %859 = zext i8 %858 to i32
  %860 = load %union.rec*, %union.rec** %res, align 8
  %861 = bitcast %union.rec* %860 to %struct.closure_type*
  %862 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %861, i32 0, i32 4
  %863 = bitcast %union.FOURTH_UNION* %862 to %struct.STYLE*
  %864 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %863, i32 0, i32 0
  %865 = bitcast %union.anon* %864 to %struct.anon.9*
  %866 = bitcast %struct.anon.9* %865 to i8*
  %867 = trunc i32 %859 to i8
  %868 = load i8, i8* %866, align 4
  %869 = and i8 %867, 1
  %870 = shl i8 %869, 2
  %871 = and i8 %868, -5
  %872 = or i8 %871, %870
  store i8 %872, i8* %866, align 4
  %873 = zext i8 %869 to i32
  %874 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %875 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %874, i32 0, i32 0
  %876 = bitcast %union.anon* %875 to %struct.anon.9*
  %877 = bitcast %struct.anon.9* %876 to i8*
  %878 = load i8, i8* %877, align 4
  %879 = lshr i8 %878, 4
  %880 = and i8 %879, 7
  %881 = zext i8 %880 to i32
  %882 = load %union.rec*, %union.rec** %res, align 8
  %883 = bitcast %union.rec* %882 to %struct.closure_type*
  %884 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %883, i32 0, i32 4
  %885 = bitcast %union.FOURTH_UNION* %884 to %struct.STYLE*
  %886 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %885, i32 0, i32 0
  %887 = bitcast %union.anon* %886 to %struct.anon.9*
  %888 = bitcast %struct.anon.9* %887 to i8*
  %889 = trunc i32 %881 to i8
  %890 = load i8, i8* %888, align 4
  %891 = and i8 %889, 7
  %892 = shl i8 %891, 4
  %893 = and i8 %890, -113
  %894 = or i8 %893, %892
  store i8 %894, i8* %888, align 4
  %895 = zext i8 %891 to i32
  %896 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %897 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %896, i32 0, i32 2
  %898 = load i16, i16* %897, align 2
  %899 = load %union.rec*, %union.rec** %res, align 8
  %900 = bitcast %union.rec* %899 to %struct.closure_type*
  %901 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %900, i32 0, i32 4
  %902 = bitcast %union.FOURTH_UNION* %901 to %struct.STYLE*
  %903 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %902, i32 0, i32 2
  store i16 %898, i16* %903, align 2
  %904 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %905 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %904, i32 0, i32 3
  %906 = load i16, i16* %905, align 2
  %907 = load %union.rec*, %union.rec** %res, align 8
  %908 = bitcast %union.rec* %907 to %struct.closure_type*
  %909 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %908, i32 0, i32 4
  %910 = bitcast %union.FOURTH_UNION* %909 to %struct.STYLE*
  %911 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %910, i32 0, i32 3
  store i16 %906, i16* %911, align 2
  %912 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %913 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %912, i32 0, i32 0
  %914 = bitcast %union.anon* %913 to %struct.anon.9*
  %915 = bitcast %struct.anon.9* %914 to i8*
  %916 = load i8, i8* %915, align 4
  %917 = lshr i8 %916, 2
  %918 = and i8 %917, 1
  %919 = zext i8 %918 to i32
  %920 = load %union.rec*, %union.rec** %res, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 2
  %923 = bitcast %union.SECOND_UNION* %922 to %struct.anon.2*
  %924 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %923, i32 0, i32 2
  %925 = trunc i32 %919 to i16
  %926 = load i16, i16* %924, align 2
  %927 = and i16 %925, 1
  %928 = shl i16 %927, 11
  %929 = and i16 %926, -2049
  %930 = or i16 %929, %928
  store i16 %930, i16* %924, align 2
  %931 = zext i16 %927 to i32
  %932 = load %union.rec*, %union.rec** %res, align 8
  %933 = load %union.rec**, %union.rec*** %2, align 8
  %934 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %935 = call %union.rec* @InsertObject(%union.rec* %932, %union.rec** %933, %struct.STYLE* %934)
  store %union.rec* %935, %union.rec** %res, align 8
  br label %1519

; <label>:936                                     ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %937 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %937, %union.rec** %res, align 8
  br label %1519

; <label>:938                                     ; preds = %0, %0, %0, %0, %0
  %939 = load %union.rec*, %union.rec** %1, align 8
  %940 = bitcast %union.rec* %939 to %struct.word_type*
  %941 = getelementptr inbounds %struct.word_type, %struct.word_type* %940, i32 0, i32 0
  %942 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %941, i32 0, i64 0
  %943 = getelementptr inbounds %struct.LIST, %struct.LIST* %942, i32 0, i32 1
  %944 = load %union.rec*, %union.rec** %943, align 8
  store %union.rec* %944, %union.rec** %link, align 8
  br label %945

; <label>:945                                     ; preds = %984, %938
  %946 = load %union.rec*, %union.rec** %link, align 8
  %947 = load %union.rec*, %union.rec** %1, align 8
  %948 = icmp ne %union.rec* %946, %947
  br i1 %948, label %949, label %953

; <label>:949                                     ; preds = %945
  %950 = load %union.rec**, %union.rec*** %2, align 8
  %951 = load %union.rec*, %union.rec** %950, align 8
  %952 = icmp ne %union.rec* %951, null
  br label %953

; <label>:953                                     ; preds = %949, %945
  %954 = phi i1 [ false, %945 ], [ %952, %949 ]
  br i1 %954, label %955, label %991

; <label>:955                                     ; preds = %953
  %956 = load %union.rec*, %union.rec** %link, align 8
  %957 = bitcast %union.rec* %956 to %struct.word_type*
  %958 = getelementptr inbounds %struct.word_type, %struct.word_type* %957, i32 0, i32 0
  %959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %958, i32 0, i64 1
  %960 = getelementptr inbounds %struct.LIST, %struct.LIST* %959, i32 0, i32 0
  %961 = load %union.rec*, %union.rec** %960, align 8
  store %union.rec* %961, %union.rec** %y, align 8
  br label %962

; <label>:962                                     ; preds = %972, %955
  %963 = load %union.rec*, %union.rec** %y, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 1
  %966 = bitcast %union.FIRST_UNION* %965 to %struct.anon*
  %967 = getelementptr inbounds %struct.anon, %struct.anon* %966, i32 0, i32 0
  %968 = load i8, i8* %967, align 1
  %969 = zext i8 %968 to i32
  %970 = icmp eq i32 %969, 0
  br i1 %970, label %971, label %979

; <label>:971                                     ; preds = %962
  br label %972

; <label>:972                                     ; preds = %971
  %973 = load %union.rec*, %union.rec** %y, align 8
  %974 = bitcast %union.rec* %973 to %struct.word_type*
  %975 = getelementptr inbounds %struct.word_type, %struct.word_type* %974, i32 0, i32 0
  %976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %975, i32 0, i64 1
  %977 = getelementptr inbounds %struct.LIST, %struct.LIST* %976, i32 0, i32 0
  %978 = load %union.rec*, %union.rec** %977, align 8
  store %union.rec* %978, %union.rec** %y, align 8
  br label %962

; <label>:979                                     ; preds = %962
  %980 = load %union.rec*, %union.rec** %y, align 8
  %981 = load %union.rec**, %union.rec*** %2, align 8
  %982 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %983 = call %union.rec* @InsertObject(%union.rec* %980, %union.rec** %981, %struct.STYLE* %982)
  store %union.rec* %983, %union.rec** %y, align 8
  br label %984

; <label>:984                                     ; preds = %979
  %985 = load %union.rec*, %union.rec** %link, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 0
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 1
  %990 = load %union.rec*, %union.rec** %989, align 8
  store %union.rec* %990, %union.rec** %link, align 8
  br label %945

; <label>:991                                     ; preds = %953
  %992 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %992, %union.rec** %res, align 8
  br label %1519

; <label>:993                                     ; preds = %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0, %0
  %994 = load %union.rec*, %union.rec** %1, align 8
  %995 = bitcast %union.rec* %994 to %struct.word_type*
  %996 = getelementptr inbounds %struct.word_type, %struct.word_type* %995, i32 0, i32 0
  %997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %996, i32 0, i64 0
  %998 = getelementptr inbounds %struct.LIST, %struct.LIST* %997, i32 0, i32 0
  %999 = load %union.rec*, %union.rec** %998, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 0
  %1002 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1001, i32 0, i64 1
  %1003 = getelementptr inbounds %struct.LIST, %struct.LIST* %1002, i32 0, i32 0
  %1004 = load %union.rec*, %union.rec** %1003, align 8
  store %union.rec* %1004, %union.rec** %y, align 8
  br label %1005

; <label>:1005                                    ; preds = %1015, %993
  %1006 = load %union.rec*, %union.rec** %y, align 8
  %1007 = bitcast %union.rec* %1006 to %struct.word_type*
  %1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %1007, i32 0, i32 1
  %1009 = bitcast %union.FIRST_UNION* %1008 to %struct.anon*
  %1010 = getelementptr inbounds %struct.anon, %struct.anon* %1009, i32 0, i32 0
  %1011 = load i8, i8* %1010, align 1
  %1012 = zext i8 %1011 to i32
  %1013 = icmp eq i32 %1012, 0
  br i1 %1013, label %1014, label %1022

; <label>:1014                                    ; preds = %1005
  br label %1015

; <label>:1015                                    ; preds = %1014
  %1016 = load %union.rec*, %union.rec** %y, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 0
  %1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1018, i32 0, i64 1
  %1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %1019, i32 0, i32 0
  %1021 = load %union.rec*, %union.rec** %1020, align 8
  store %union.rec* %1021, %union.rec** %y, align 8
  br label %1005

; <label>:1022                                    ; preds = %1005
  %1023 = load %union.rec*, %union.rec** %y, align 8
  %1024 = load %union.rec**, %union.rec*** %2, align 8
  %1025 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %1026 = call %union.rec* @InsertObject(%union.rec* %1023, %union.rec** %1024, %struct.STYLE* %1025)
  store %union.rec* %1026, %union.rec** %y, align 8
  %1027 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1027, %union.rec** %res, align 8
  br label %1519

; <label>:1028                                    ; preds = %0
  %1029 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %1030 = zext i8 %1029 to i32
  store i32 %1030, i32* @zz_size, align 4
  %1031 = sext i32 %1030 to i64
  %1032 = icmp uge i64 %1031, 265
  br i1 %1032, label %1033, label %1036

; <label>:1033                                    ; preds = %1028
  %1034 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1035 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1034)
  br label %1061

; <label>:1036                                    ; preds = %1028
  %1037 = load i32, i32* @zz_size, align 4
  %1038 = sext i32 %1037 to i64
  %1039 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1038
  %1040 = load %union.rec*, %union.rec** %1039, align 8
  %1041 = icmp eq %union.rec* %1040, null
  br i1 %1041, label %1042, label %1046

; <label>:1042                                    ; preds = %1036
  %1043 = load i32, i32* @zz_size, align 4
  %1044 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1045 = call %union.rec* @GetMemory(i32 %1043, %struct.FILE_POS* %1044)
  store %union.rec* %1045, %union.rec** @zz_hold, align 8
  br label %1060

; <label>:1046                                    ; preds = %1036
  %1047 = load i32, i32* @zz_size, align 4
  %1048 = sext i32 %1047 to i64
  %1049 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1048
  %1050 = load %union.rec*, %union.rec** %1049, align 8
  store %union.rec* %1050, %union.rec** @zz_hold, align 8
  store %union.rec* %1050, %union.rec** @zz_hold, align 8
  %1051 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1052 = bitcast %union.rec* %1051 to %struct.word_type*
  %1053 = getelementptr inbounds %struct.word_type, %struct.word_type* %1052, i32 0, i32 0
  %1054 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1053, i32 0, i64 0
  %1055 = getelementptr inbounds %struct.LIST, %struct.LIST* %1054, i32 0, i32 0
  %1056 = load %union.rec*, %union.rec** %1055, align 8
  %1057 = load i32, i32* @zz_size, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1058
  store %union.rec* %1056, %union.rec** %1059, align 8
  br label %1060

; <label>:1060                                    ; preds = %1046, %1042
  br label %1061

; <label>:1061                                    ; preds = %1060, %1033
  %1062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1063 = bitcast %union.rec* %1062 to %struct.word_type*
  %1064 = getelementptr inbounds %struct.word_type, %struct.word_type* %1063, i32 0, i32 1
  %1065 = bitcast %union.FIRST_UNION* %1064 to %struct.anon*
  %1066 = getelementptr inbounds %struct.anon, %struct.anon* %1065, i32 0, i32 0
  store i8 1, i8* %1066, align 1
  %1067 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1069 = bitcast %union.rec* %1068 to %struct.word_type*
  %1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %1069, i32 0, i32 0
  %1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1070, i32 0, i64 1
  %1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %1071, i32 0, i32 1
  store %union.rec* %1067, %union.rec** %1072, align 8
  %1073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1074 = bitcast %union.rec* %1073 to %struct.word_type*
  %1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %1074, i32 0, i32 0
  %1076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1075, i32 0, i64 1
  %1077 = getelementptr inbounds %struct.LIST, %struct.LIST* %1076, i32 0, i32 0
  store %union.rec* %1067, %union.rec** %1077, align 8
  %1078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1079 = bitcast %union.rec* %1078 to %struct.word_type*
  %1080 = getelementptr inbounds %struct.word_type, %struct.word_type* %1079, i32 0, i32 0
  %1081 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1080, i32 0, i64 0
  %1082 = getelementptr inbounds %struct.LIST, %struct.LIST* %1081, i32 0, i32 1
  store %union.rec* %1067, %union.rec** %1082, align 8
  %1083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 0
  %1086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1085, i32 0, i64 0
  %1087 = getelementptr inbounds %struct.LIST, %struct.LIST* %1086, i32 0, i32 0
  store %union.rec* %1067, %union.rec** %1087, align 8
  store %union.rec* %1067, %union.rec** %g, align 8
  %1088 = load %union.rec*, %union.rec** %g, align 8
  %1089 = bitcast %union.rec* %1088 to %struct.gapobj_type*
  %1090 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1089, i32 0, i32 3
  %1091 = bitcast %struct.GAP* %1090 to i16*
  %1092 = load i16, i16* %1091, align 4
  %1093 = and i16 %1092, -129
  store i16 %1093, i16* %1091, align 4
  %1094 = load %union.rec*, %union.rec** %g, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.gapobj_type*
  %1096 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1095, i32 0, i32 3
  %1097 = bitcast %struct.GAP* %1096 to i16*
  %1098 = load i16, i16* %1097, align 4
  %1099 = and i16 %1098, -257
  store i16 %1099, i16* %1097, align 4
  %1100 = load %union.rec*, %union.rec** %g, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.gapobj_type*
  %1102 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1101, i32 0, i32 3
  %1103 = bitcast %struct.GAP* %1102 to i16*
  %1104 = load i16, i16* %1103, align 4
  %1105 = and i16 %1104, -513
  %1106 = or i16 %1105, 512
  store i16 %1106, i16* %1103, align 4
  %1107 = load %union.rec*, %union.rec** %g, align 8
  %1108 = bitcast %union.rec* %1107 to %struct.gapobj_type*
  %1109 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1108, i32 0, i32 3
  %1110 = bitcast %struct.GAP* %1109 to i16*
  %1111 = load i16, i16* %1110, align 4
  %1112 = and i16 %1111, -7169
  %1113 = or i16 %1112, 1024
  store i16 %1113, i16* %1110, align 4
  %1114 = load %union.rec*, %union.rec** %g, align 8
  %1115 = bitcast %union.rec* %1114 to %struct.gapobj_type*
  %1116 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1115, i32 0, i32 3
  %1117 = bitcast %struct.GAP* %1116 to i16*
  %1118 = load i16, i16* %1117, align 4
  %1119 = and i16 %1118, 8191
  %1120 = or i16 %1119, 8192
  store i16 %1120, i16* %1117, align 4
  %1121 = load %union.rec*, %union.rec** %g, align 8
  %1122 = bitcast %union.rec* %1121 to %struct.gapobj_type*
  %1123 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1122, i32 0, i32 3
  %1124 = getelementptr inbounds %struct.GAP, %struct.GAP* %1123, i32 0, i32 1
  store i16 0, i16* %1124, align 2
  %1125 = load %union.rec*, %union.rec** %g, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 2
  %1128 = bitcast %union.SECOND_UNION* %1127 to %struct.anon.0*
  %1129 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1128, i32 0, i32 2
  store i8 0, i8* %1129, align 1
  %1130 = load %union.rec*, %union.rec** %g, align 8
  %1131 = bitcast %union.rec* %1130 to %struct.word_type*
  %1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %1131, i32 0, i32 2
  %1133 = bitcast %union.SECOND_UNION* %1132 to %struct.anon.0*
  %1134 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1133, i32 0, i32 1
  store i8 0, i8* %1134, align 1
  %1135 = load %union.rec*, %union.rec** %g, align 8
  %1136 = bitcast %union.rec* %1135 to %struct.word_type*
  %1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %1136, i32 0, i32 2
  %1138 = bitcast %union.SECOND_UNION* %1137 to %struct.anon.1*
  %1139 = bitcast %struct.anon.1* %1138 to i32*
  %1140 = load i32, i32* %1139, align 4
  %1141 = and i32 %1140, -1610612737
  %1142 = or i32 %1141, 536870912
  store i32 %1142, i32* %1139, align 4
  %1143 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1144 = zext i8 %1143 to i32
  store i32 %1144, i32* @zz_size, align 4
  %1145 = sext i32 %1144 to i64
  %1146 = icmp uge i64 %1145, 265
  br i1 %1146, label %1147, label %1150

; <label>:1147                                    ; preds = %1061
  %1148 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1148)
  br label %1175

; <label>:1150                                    ; preds = %1061
  %1151 = load i32, i32* @zz_size, align 4
  %1152 = sext i32 %1151 to i64
  %1153 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1152
  %1154 = load %union.rec*, %union.rec** %1153, align 8
  %1155 = icmp eq %union.rec* %1154, null
  br i1 %1155, label %1156, label %1160

; <label>:1156                                    ; preds = %1150
  %1157 = load i32, i32* @zz_size, align 4
  %1158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1159 = call %union.rec* @GetMemory(i32 %1157, %struct.FILE_POS* %1158)
  store %union.rec* %1159, %union.rec** @zz_hold, align 8
  br label %1174

; <label>:1160                                    ; preds = %1150
  %1161 = load i32, i32* @zz_size, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1162
  %1164 = load %union.rec*, %union.rec** %1163, align 8
  store %union.rec* %1164, %union.rec** @zz_hold, align 8
  store %union.rec* %1164, %union.rec** @zz_hold, align 8
  %1165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1166 = bitcast %union.rec* %1165 to %struct.word_type*
  %1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %1166, i32 0, i32 0
  %1168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1167, i32 0, i64 0
  %1169 = getelementptr inbounds %struct.LIST, %struct.LIST* %1168, i32 0, i32 0
  %1170 = load %union.rec*, %union.rec** %1169, align 8
  %1171 = load i32, i32* @zz_size, align 4
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1172
  store %union.rec* %1170, %union.rec** %1173, align 8
  br label %1174

; <label>:1174                                    ; preds = %1160, %1156
  br label %1175

; <label>:1175                                    ; preds = %1174, %1147
  %1176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1177 = bitcast %union.rec* %1176 to %struct.word_type*
  %1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %1177, i32 0, i32 1
  %1179 = bitcast %union.FIRST_UNION* %1178 to %struct.anon*
  %1180 = getelementptr inbounds %struct.anon, %struct.anon* %1179, i32 0, i32 0
  store i8 0, i8* %1180, align 1
  %1181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1183 = bitcast %union.rec* %1182 to %struct.word_type*
  %1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %1183, i32 0, i32 0
  %1185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1184, i32 0, i64 1
  %1186 = getelementptr inbounds %struct.LIST, %struct.LIST* %1185, i32 0, i32 1
  store %union.rec* %1181, %union.rec** %1186, align 8
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1189, i32 0, i64 1
  %1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %1190, i32 0, i32 0
  store %union.rec* %1181, %union.rec** %1191, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1193 = bitcast %union.rec* %1192 to %struct.word_type*
  %1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1194, i32 0, i64 0
  %1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %1195, i32 0, i32 1
  store %union.rec* %1181, %union.rec** %1196, align 8
  %1197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1198 = bitcast %union.rec* %1197 to %struct.word_type*
  %1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %1198, i32 0, i32 0
  %1200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1199, i32 0, i64 0
  %1201 = getelementptr inbounds %struct.LIST, %struct.LIST* %1200, i32 0, i32 0
  store %union.rec* %1181, %union.rec** %1201, align 8
  store %union.rec* %1181, %union.rec** @xx_link, align 8
  %1202 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1202, %union.rec** @zz_res, align 8
  %1203 = load %union.rec*, %union.rec** %1, align 8
  %1204 = bitcast %union.rec* %1203 to %struct.word_type*
  %1205 = getelementptr inbounds %struct.word_type, %struct.word_type* %1204, i32 0, i32 0
  %1206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1205, i32 0, i64 0
  %1207 = getelementptr inbounds %struct.LIST, %struct.LIST* %1206, i32 0, i32 1
  %1208 = load %union.rec*, %union.rec** %1207, align 8
  store %union.rec* %1208, %union.rec** @zz_hold, align 8
  %1209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1210 = icmp eq %union.rec* %1209, null
  br i1 %1210, label %1211, label %1213

; <label>:1211                                    ; preds = %1175
  %1212 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1261

; <label>:1213                                    ; preds = %1175
  %1214 = load %union.rec*, %union.rec** @zz_res, align 8
  %1215 = icmp eq %union.rec* %1214, null
  br i1 %1215, label %1216, label %1218

; <label>:1216                                    ; preds = %1213
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1259

; <label>:1218                                    ; preds = %1213
  %1219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1220 = bitcast %union.rec* %1219 to %struct.word_type*
  %1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %1220, i32 0, i32 0
  %1222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1221, i32 0, i64 0
  %1223 = getelementptr inbounds %struct.LIST, %struct.LIST* %1222, i32 0, i32 0
  %1224 = load %union.rec*, %union.rec** %1223, align 8
  store %union.rec* %1224, %union.rec** @zz_tmp, align 8
  %1225 = load %union.rec*, %union.rec** @zz_res, align 8
  %1226 = bitcast %union.rec* %1225 to %struct.word_type*
  %1227 = getelementptr inbounds %struct.word_type, %struct.word_type* %1226, i32 0, i32 0
  %1228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1227, i32 0, i64 0
  %1229 = getelementptr inbounds %struct.LIST, %struct.LIST* %1228, i32 0, i32 0
  %1230 = load %union.rec*, %union.rec** %1229, align 8
  %1231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1232 = bitcast %union.rec* %1231 to %struct.word_type*
  %1233 = getelementptr inbounds %struct.word_type, %struct.word_type* %1232, i32 0, i32 0
  %1234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1233, i32 0, i64 0
  %1235 = getelementptr inbounds %struct.LIST, %struct.LIST* %1234, i32 0, i32 0
  store %union.rec* %1230, %union.rec** %1235, align 8
  %1236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1237 = load %union.rec*, %union.rec** @zz_res, align 8
  %1238 = bitcast %union.rec* %1237 to %struct.word_type*
  %1239 = getelementptr inbounds %struct.word_type, %struct.word_type* %1238, i32 0, i32 0
  %1240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1239, i32 0, i64 0
  %1241 = getelementptr inbounds %struct.LIST, %struct.LIST* %1240, i32 0, i32 0
  %1242 = load %union.rec*, %union.rec** %1241, align 8
  %1243 = bitcast %union.rec* %1242 to %struct.word_type*
  %1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %1243, i32 0, i32 0
  %1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1244, i32 0, i64 0
  %1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %1245, i32 0, i32 1
  store %union.rec* %1236, %union.rec** %1246, align 8
  %1247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1248 = load %union.rec*, %union.rec** @zz_res, align 8
  %1249 = bitcast %union.rec* %1248 to %struct.word_type*
  %1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1250, i32 0, i64 0
  %1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %1251, i32 0, i32 0
  store %union.rec* %1247, %union.rec** %1252, align 8
  %1253 = load %union.rec*, %union.rec** @zz_res, align 8
  %1254 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1255 = bitcast %union.rec* %1254 to %struct.word_type*
  %1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %1255, i32 0, i32 0
  %1257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1256, i32 0, i64 0
  %1258 = getelementptr inbounds %struct.LIST, %struct.LIST* %1257, i32 0, i32 1
  store %union.rec* %1253, %union.rec** %1258, align 8
  br label %1259

; <label>:1259                                    ; preds = %1218, %1216
  %1260 = phi %union.rec* [ %1217, %1216 ], [ %1253, %1218 ]
  br label %1261

; <label>:1261                                    ; preds = %1259, %1211
  %1262 = phi %union.rec* [ %1212, %1211 ], [ %1260, %1259 ]
  %1263 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1263, %union.rec** @zz_res, align 8
  %1264 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %1264, %union.rec** @zz_hold, align 8
  %1265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1266 = icmp eq %union.rec* %1265, null
  br i1 %1266, label %1267, label %1269

; <label>:1267                                    ; preds = %1261
  %1268 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1317

; <label>:1269                                    ; preds = %1261
  %1270 = load %union.rec*, %union.rec** @zz_res, align 8
  %1271 = icmp eq %union.rec* %1270, null
  br i1 %1271, label %1272, label %1274

; <label>:1272                                    ; preds = %1269
  %1273 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1315

; <label>:1274                                    ; preds = %1269
  %1275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1276 = bitcast %union.rec* %1275 to %struct.word_type*
  %1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %1276, i32 0, i32 0
  %1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1277, i32 0, i64 1
  %1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %1278, i32 0, i32 0
  %1280 = load %union.rec*, %union.rec** %1279, align 8
  store %union.rec* %1280, %union.rec** @zz_tmp, align 8
  %1281 = load %union.rec*, %union.rec** @zz_res, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 0
  %1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1283, i32 0, i64 1
  %1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %1284, i32 0, i32 0
  %1286 = load %union.rec*, %union.rec** %1285, align 8
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1288 = bitcast %union.rec* %1287 to %struct.word_type*
  %1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %1288, i32 0, i32 0
  %1290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1289, i32 0, i64 1
  %1291 = getelementptr inbounds %struct.LIST, %struct.LIST* %1290, i32 0, i32 0
  store %union.rec* %1286, %union.rec** %1291, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1293 = load %union.rec*, %union.rec** @zz_res, align 8
  %1294 = bitcast %union.rec* %1293 to %struct.word_type*
  %1295 = getelementptr inbounds %struct.word_type, %struct.word_type* %1294, i32 0, i32 0
  %1296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1295, i32 0, i64 1
  %1297 = getelementptr inbounds %struct.LIST, %struct.LIST* %1296, i32 0, i32 0
  %1298 = load %union.rec*, %union.rec** %1297, align 8
  %1299 = bitcast %union.rec* %1298 to %struct.word_type*
  %1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %1299, i32 0, i32 0
  %1301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1300, i32 0, i64 1
  %1302 = getelementptr inbounds %struct.LIST, %struct.LIST* %1301, i32 0, i32 1
  store %union.rec* %1292, %union.rec** %1302, align 8
  %1303 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1304 = load %union.rec*, %union.rec** @zz_res, align 8
  %1305 = bitcast %union.rec* %1304 to %struct.word_type*
  %1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %1305, i32 0, i32 0
  %1307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1306, i32 0, i64 1
  %1308 = getelementptr inbounds %struct.LIST, %struct.LIST* %1307, i32 0, i32 0
  store %union.rec* %1303, %union.rec** %1308, align 8
  %1309 = load %union.rec*, %union.rec** @zz_res, align 8
  %1310 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1311 = bitcast %union.rec* %1310 to %struct.word_type*
  %1312 = getelementptr inbounds %struct.word_type, %struct.word_type* %1311, i32 0, i32 0
  %1313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1312, i32 0, i64 1
  %1314 = getelementptr inbounds %struct.LIST, %struct.LIST* %1313, i32 0, i32 1
  store %union.rec* %1309, %union.rec** %1314, align 8
  br label %1315

; <label>:1315                                    ; preds = %1274, %1272
  %1316 = phi %union.rec* [ %1273, %1272 ], [ %1309, %1274 ]
  br label %1317

; <label>:1317                                    ; preds = %1315, %1267
  %1318 = phi %union.rec* [ %1268, %1267 ], [ %1316, %1315 ]
  %1319 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1320 = zext i8 %1319 to i32
  store i32 %1320, i32* @zz_size, align 4
  %1321 = sext i32 %1320 to i64
  %1322 = icmp uge i64 %1321, 265
  br i1 %1322, label %1323, label %1326

; <label>:1323                                    ; preds = %1317
  %1324 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1325 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1324)
  br label %1351

; <label>:1326                                    ; preds = %1317
  %1327 = load i32, i32* @zz_size, align 4
  %1328 = sext i32 %1327 to i64
  %1329 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1328
  %1330 = load %union.rec*, %union.rec** %1329, align 8
  %1331 = icmp eq %union.rec* %1330, null
  br i1 %1331, label %1332, label %1336

; <label>:1332                                    ; preds = %1326
  %1333 = load i32, i32* @zz_size, align 4
  %1334 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1335 = call %union.rec* @GetMemory(i32 %1333, %struct.FILE_POS* %1334)
  store %union.rec* %1335, %union.rec** @zz_hold, align 8
  br label %1350

; <label>:1336                                    ; preds = %1326
  %1337 = load i32, i32* @zz_size, align 4
  %1338 = sext i32 %1337 to i64
  %1339 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1338
  %1340 = load %union.rec*, %union.rec** %1339, align 8
  store %union.rec* %1340, %union.rec** @zz_hold, align 8
  store %union.rec* %1340, %union.rec** @zz_hold, align 8
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1342 = bitcast %union.rec* %1341 to %struct.word_type*
  %1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %1342, i32 0, i32 0
  %1344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1343, i32 0, i64 0
  %1345 = getelementptr inbounds %struct.LIST, %struct.LIST* %1344, i32 0, i32 0
  %1346 = load %union.rec*, %union.rec** %1345, align 8
  %1347 = load i32, i32* @zz_size, align 4
  %1348 = sext i32 %1347 to i64
  %1349 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1348
  store %union.rec* %1346, %union.rec** %1349, align 8
  br label %1350

; <label>:1350                                    ; preds = %1336, %1332
  br label %1351

; <label>:1351                                    ; preds = %1350, %1323
  %1352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1353 = bitcast %union.rec* %1352 to %struct.word_type*
  %1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %1353, i32 0, i32 1
  %1355 = bitcast %union.FIRST_UNION* %1354 to %struct.anon*
  %1356 = getelementptr inbounds %struct.anon, %struct.anon* %1355, i32 0, i32 0
  store i8 0, i8* %1356, align 1
  %1357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1359 = bitcast %union.rec* %1358 to %struct.word_type*
  %1360 = getelementptr inbounds %struct.word_type, %struct.word_type* %1359, i32 0, i32 0
  %1361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1360, i32 0, i64 1
  %1362 = getelementptr inbounds %struct.LIST, %struct.LIST* %1361, i32 0, i32 1
  store %union.rec* %1357, %union.rec** %1362, align 8
  %1363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1364 = bitcast %union.rec* %1363 to %struct.word_type*
  %1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %1364, i32 0, i32 0
  %1366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1365, i32 0, i64 1
  %1367 = getelementptr inbounds %struct.LIST, %struct.LIST* %1366, i32 0, i32 0
  store %union.rec* %1357, %union.rec** %1367, align 8
  %1368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1369 = bitcast %union.rec* %1368 to %struct.word_type*
  %1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %1369, i32 0, i32 0
  %1371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1370, i32 0, i64 0
  %1372 = getelementptr inbounds %struct.LIST, %struct.LIST* %1371, i32 0, i32 1
  store %union.rec* %1357, %union.rec** %1372, align 8
  %1373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1374 = bitcast %union.rec* %1373 to %struct.word_type*
  %1375 = getelementptr inbounds %struct.word_type, %struct.word_type* %1374, i32 0, i32 0
  %1376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1375, i32 0, i64 0
  %1377 = getelementptr inbounds %struct.LIST, %struct.LIST* %1376, i32 0, i32 0
  store %union.rec* %1357, %union.rec** %1377, align 8
  store %union.rec* %1357, %union.rec** @xx_link, align 8
  %1378 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1378, %union.rec** @zz_res, align 8
  %1379 = load %union.rec*, %union.rec** %1, align 8
  %1380 = bitcast %union.rec* %1379 to %struct.word_type*
  %1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %1380, i32 0, i32 0
  %1382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1381, i32 0, i64 0
  %1383 = getelementptr inbounds %struct.LIST, %struct.LIST* %1382, i32 0, i32 1
  %1384 = load %union.rec*, %union.rec** %1383, align 8
  store %union.rec* %1384, %union.rec** @zz_hold, align 8
  %1385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1386 = icmp eq %union.rec* %1385, null
  br i1 %1386, label %1387, label %1389

; <label>:1387                                    ; preds = %1351
  %1388 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1437

; <label>:1389                                    ; preds = %1351
  %1390 = load %union.rec*, %union.rec** @zz_res, align 8
  %1391 = icmp eq %union.rec* %1390, null
  br i1 %1391, label %1392, label %1394

; <label>:1392                                    ; preds = %1389
  %1393 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1435

; <label>:1394                                    ; preds = %1389
  %1395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1396 = bitcast %union.rec* %1395 to %struct.word_type*
  %1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %1396, i32 0, i32 0
  %1398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1397, i32 0, i64 0
  %1399 = getelementptr inbounds %struct.LIST, %struct.LIST* %1398, i32 0, i32 0
  %1400 = load %union.rec*, %union.rec** %1399, align 8
  store %union.rec* %1400, %union.rec** @zz_tmp, align 8
  %1401 = load %union.rec*, %union.rec** @zz_res, align 8
  %1402 = bitcast %union.rec* %1401 to %struct.word_type*
  %1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %1402, i32 0, i32 0
  %1404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1403, i32 0, i64 0
  %1405 = getelementptr inbounds %struct.LIST, %struct.LIST* %1404, i32 0, i32 0
  %1406 = load %union.rec*, %union.rec** %1405, align 8
  %1407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1408 = bitcast %union.rec* %1407 to %struct.word_type*
  %1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %1408, i32 0, i32 0
  %1410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1409, i32 0, i64 0
  %1411 = getelementptr inbounds %struct.LIST, %struct.LIST* %1410, i32 0, i32 0
  store %union.rec* %1406, %union.rec** %1411, align 8
  %1412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1413 = load %union.rec*, %union.rec** @zz_res, align 8
  %1414 = bitcast %union.rec* %1413 to %struct.word_type*
  %1415 = getelementptr inbounds %struct.word_type, %struct.word_type* %1414, i32 0, i32 0
  %1416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1415, i32 0, i64 0
  %1417 = getelementptr inbounds %struct.LIST, %struct.LIST* %1416, i32 0, i32 0
  %1418 = load %union.rec*, %union.rec** %1417, align 8
  %1419 = bitcast %union.rec* %1418 to %struct.word_type*
  %1420 = getelementptr inbounds %struct.word_type, %struct.word_type* %1419, i32 0, i32 0
  %1421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1420, i32 0, i64 0
  %1422 = getelementptr inbounds %struct.LIST, %struct.LIST* %1421, i32 0, i32 1
  store %union.rec* %1412, %union.rec** %1422, align 8
  %1423 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1424 = load %union.rec*, %union.rec** @zz_res, align 8
  %1425 = bitcast %union.rec* %1424 to %struct.word_type*
  %1426 = getelementptr inbounds %struct.word_type, %struct.word_type* %1425, i32 0, i32 0
  %1427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1426, i32 0, i64 0
  %1428 = getelementptr inbounds %struct.LIST, %struct.LIST* %1427, i32 0, i32 0
  store %union.rec* %1423, %union.rec** %1428, align 8
  %1429 = load %union.rec*, %union.rec** @zz_res, align 8
  %1430 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1431 = bitcast %union.rec* %1430 to %struct.word_type*
  %1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %1431, i32 0, i32 0
  %1433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1432, i32 0, i64 0
  %1434 = getelementptr inbounds %struct.LIST, %struct.LIST* %1433, i32 0, i32 1
  store %union.rec* %1429, %union.rec** %1434, align 8
  br label %1435

; <label>:1435                                    ; preds = %1394, %1392
  %1436 = phi %union.rec* [ %1393, %1392 ], [ %1429, %1394 ]
  br label %1437

; <label>:1437                                    ; preds = %1435, %1387
  %1438 = phi %union.rec* [ %1388, %1387 ], [ %1436, %1435 ]
  %1439 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1439, %union.rec** @zz_res, align 8
  %1440 = load %union.rec**, %union.rec*** %2, align 8
  %1441 = load %union.rec*, %union.rec** %1440, align 8
  store %union.rec* %1441, %union.rec** @zz_hold, align 8
  %1442 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1443 = icmp eq %union.rec* %1442, null
  br i1 %1443, label %1444, label %1446

; <label>:1444                                    ; preds = %1437
  %1445 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1494

; <label>:1446                                    ; preds = %1437
  %1447 = load %union.rec*, %union.rec** @zz_res, align 8
  %1448 = icmp eq %union.rec* %1447, null
  br i1 %1448, label %1449, label %1451

; <label>:1449                                    ; preds = %1446
  %1450 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1492

; <label>:1451                                    ; preds = %1446
  %1452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1453 = bitcast %union.rec* %1452 to %struct.word_type*
  %1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %1453, i32 0, i32 0
  %1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1454, i32 0, i64 1
  %1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %1455, i32 0, i32 0
  %1457 = load %union.rec*, %union.rec** %1456, align 8
  store %union.rec* %1457, %union.rec** @zz_tmp, align 8
  %1458 = load %union.rec*, %union.rec** @zz_res, align 8
  %1459 = bitcast %union.rec* %1458 to %struct.word_type*
  %1460 = getelementptr inbounds %struct.word_type, %struct.word_type* %1459, i32 0, i32 0
  %1461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1460, i32 0, i64 1
  %1462 = getelementptr inbounds %struct.LIST, %struct.LIST* %1461, i32 0, i32 0
  %1463 = load %union.rec*, %union.rec** %1462, align 8
  %1464 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1465 = bitcast %union.rec* %1464 to %struct.word_type*
  %1466 = getelementptr inbounds %struct.word_type, %struct.word_type* %1465, i32 0, i32 0
  %1467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1466, i32 0, i64 1
  %1468 = getelementptr inbounds %struct.LIST, %struct.LIST* %1467, i32 0, i32 0
  store %union.rec* %1463, %union.rec** %1468, align 8
  %1469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1470 = load %union.rec*, %union.rec** @zz_res, align 8
  %1471 = bitcast %union.rec* %1470 to %struct.word_type*
  %1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %1471, i32 0, i32 0
  %1473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1472, i32 0, i64 1
  %1474 = getelementptr inbounds %struct.LIST, %struct.LIST* %1473, i32 0, i32 0
  %1475 = load %union.rec*, %union.rec** %1474, align 8
  %1476 = bitcast %union.rec* %1475 to %struct.word_type*
  %1477 = getelementptr inbounds %struct.word_type, %struct.word_type* %1476, i32 0, i32 0
  %1478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1477, i32 0, i64 1
  %1479 = getelementptr inbounds %struct.LIST, %struct.LIST* %1478, i32 0, i32 1
  store %union.rec* %1469, %union.rec** %1479, align 8
  %1480 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1481 = load %union.rec*, %union.rec** @zz_res, align 8
  %1482 = bitcast %union.rec* %1481 to %struct.word_type*
  %1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %1482, i32 0, i32 0
  %1484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1483, i32 0, i64 1
  %1485 = getelementptr inbounds %struct.LIST, %struct.LIST* %1484, i32 0, i32 0
  store %union.rec* %1480, %union.rec** %1485, align 8
  %1486 = load %union.rec*, %union.rec** @zz_res, align 8
  %1487 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1488 = bitcast %union.rec* %1487 to %struct.word_type*
  %1489 = getelementptr inbounds %struct.word_type, %struct.word_type* %1488, i32 0, i32 0
  %1490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1489, i32 0, i64 1
  %1491 = getelementptr inbounds %struct.LIST, %struct.LIST* %1490, i32 0, i32 1
  store %union.rec* %1486, %union.rec** %1491, align 8
  br label %1492

; <label>:1492                                    ; preds = %1451, %1449
  %1493 = phi %union.rec* [ %1450, %1449 ], [ %1486, %1451 ]
  br label %1494

; <label>:1494                                    ; preds = %1492, %1444
  %1495 = phi %union.rec* [ %1445, %1444 ], [ %1493, %1492 ]
  %1496 = load %union.rec**, %union.rec*** %2, align 8
  %1497 = load %union.rec*, %union.rec** %1496, align 8
  %1498 = bitcast %union.rec* %1497 to %struct.word_type*
  %1499 = getelementptr inbounds %struct.word_type, %struct.word_type* %1498, i32 0, i32 2
  %1500 = bitcast %union.SECOND_UNION* %1499 to %struct.anon.1*
  %1501 = bitcast %struct.anon.1* %1500 to i32*
  %1502 = load i32, i32* %1501, align 4
  %1503 = and i32 %1502, -1610612737
  %1504 = or i32 %1503, 536870912
  store i32 %1504, i32* %1501, align 4
  %1505 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* null, %union.rec** %1505, align 8
  %1506 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1506, %union.rec** %res, align 8
  br label %1519

; <label>:1507                                    ; preds = %0
  %1508 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1509 = load %union.rec*, %union.rec** %1, align 8
  %1510 = bitcast %union.rec* %1509 to %struct.word_type*
  %1511 = getelementptr inbounds %struct.word_type, %struct.word_type* %1510, i32 0, i32 1
  %1512 = bitcast %union.FIRST_UNION* %1511 to %struct.anon*
  %1513 = getelementptr inbounds %struct.anon, %struct.anon* %1512, i32 0, i32 0
  %1514 = load i8, i8* %1513, align 1
  %1515 = zext i8 %1514 to i32
  %1516 = call i8* @Image(i32 %1515)
  %1517 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.FILE_POS* %1508, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i32 0, i32 0), i8* %1516)
  %1518 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1518, %union.rec** %res, align 8
  br label %1519

; <label>:1519                                    ; preds = %1507, %1494, %1022, %991, %936, %393
  %1520 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1520
}

; Function Attrs: nounwind uwtable
define %union.rec* @Meld(%union.rec* %x, %union.rec* %y) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %table = alloca [32 x [32 x i8]], align 16
  %dir = alloca [32 x [32 x i8]], align 16
  %xcomp = alloca [32 x %union.rec*], align 16
  %ycomp = alloca [32 x %union.rec*], align 16
  %xgaps = alloca [32 x %union.rec*], align 16
  %ygaps = alloca [32 x %union.rec*], align 16
  %is_equal = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %jn = alloca i32, align 4
  %xlen = alloca i32, align 4
  %ylen = alloca i32, align 4
  %xi = alloca i32, align 4
  %yi = alloca i32, align 4
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 17
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %2, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 1
  %18 = bitcast %union.FIRST_UNION* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 17
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %14
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i32 0, i32 0))
  br label %26

; <label>:26                                      ; preds = %23, %14
  store i32 0, i32* %xlen, align 4
  %27 = load i32, i32* %xlen, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %28
  store %union.rec* null, %union.rec** %29, align 8
  %30 = load i32, i32* %xlen, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %xlen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 0
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %36, align 8
  store %union.rec* %37, %union.rec** %link, align 8
  br label %38

; <label>:38                                      ; preds = %127, %26
  %39 = load %union.rec*, %union.rec** %link, align 8
  %40 = load %union.rec*, %union.rec** %1, align 8
  %41 = icmp ne %union.rec* %39, %40
  br i1 %41, label %42, label %134

; <label>:42                                      ; preds = %38
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %z, align 8
  br label %49

; <label>:49                                      ; preds = %59, %42
  %50 = load %union.rec*, %union.rec** %z, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 1
  %53 = bitcast %union.FIRST_UNION* %52 to %struct.anon*
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 0
  %55 = load i8, i8* %54, align 1
  %56 = zext i8 %55 to i32
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %66

; <label>:58                                      ; preds = %49
  br label %59

; <label>:59                                      ; preds = %58
  %60 = load %union.rec*, %union.rec** %z, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 1
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %64, align 8
  store %union.rec* %65, %union.rec** %z, align 8
  br label %49

; <label>:66                                      ; preds = %49
  %67 = load %union.rec*, %union.rec** %z, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 1
  br i1 %74, label %75, label %91

; <label>:75                                      ; preds = %66
  %76 = load i32, i32* %jn, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %88

; <label>:78                                      ; preds = %75
  %79 = load %union.rec*, %union.rec** %z, align 8
  %80 = bitcast %union.rec* %79 to %struct.gapobj_type*
  %81 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %80, i32 0, i32 3
  %82 = bitcast %struct.GAP* %81 to i16*
  %83 = load i16, i16* %82, align 4
  %84 = lshr i16 %83, 9
  %85 = and i16 %84, 1
  %86 = zext i16 %85 to i32
  %87 = icmp ne i32 %86, 0
  br label %88

; <label>:88                                      ; preds = %78, %75
  %89 = phi i1 [ false, %75 ], [ %87, %78 ]
  %90 = zext i1 %89 to i32
  store i32 %90, i32* %jn, align 4
  br label %126

; <label>:91                                      ; preds = %66
  %92 = load %union.rec*, %union.rec** %z, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 1
  %95 = bitcast %union.FIRST_UNION* %94 to %struct.anon*
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 9
  br i1 %99, label %100, label %104

; <label>:100                                     ; preds = %91
  %101 = load %union.rec*, %union.rec** %z, align 8
  %102 = call i32 @SplitIsDefinite(%union.rec* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %124, label %125

; <label>:104                                     ; preds = %91
  %105 = load %union.rec*, %union.rec** %z, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.anon*
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp sge i32 %111, 9
  br i1 %112, label %113, label %122

; <label>:113                                     ; preds = %104
  %114 = load %union.rec*, %union.rec** %z, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 1
  %117 = bitcast %union.FIRST_UNION* %116 to %struct.anon*
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %117, i32 0, i32 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp sle i32 %120, 99
  br label %122

; <label>:122                                     ; preds = %113, %104
  %123 = phi i1 [ false, %104 ], [ %121, %113 ]
  br i1 %123, label %124, label %125

; <label>:124                                     ; preds = %122, %100
  br label %134

; <label>:125                                     ; preds = %122, %100
  br label %126

; <label>:126                                     ; preds = %125, %88
  br label %127

; <label>:127                                     ; preds = %126
  %128 = load %union.rec*, %union.rec** %link, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 1
  %133 = load %union.rec*, %union.rec** %132, align 8
  store %union.rec* %133, %union.rec** %link, align 8
  br label %38

; <label>:134                                     ; preds = %124, %38
  br label %135

; <label>:135                                     ; preds = %268, %134
  %136 = load %union.rec*, %union.rec** %link, align 8
  %137 = load %union.rec*, %union.rec** %1, align 8
  %138 = icmp ne %union.rec* %136, %137
  br i1 %138, label %139, label %269

; <label>:139                                     ; preds = %135
  %140 = load i32, i32* %xlen, align 4
  %141 = icmp sge i32 %140, 32
  br i1 %141, label %142, label %148

; <label>:142                                     ; preds = %139
  %143 = load %union.rec*, %union.rec** %1, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 1
  %146 = bitcast %union.FIRST_UNION* %145 to %struct.FILE_POS*
  %147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 7, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %146, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 31)
  br label %148

; <label>:148                                     ; preds = %142, %139
  %149 = load %union.rec*, %union.rec** %z, align 8
  %150 = load i32, i32* %xlen, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %151
  store %union.rec* %149, %union.rec** %152, align 8
  %153 = load %union.rec*, %union.rec** %g, align 8
  %154 = load i32, i32* %xlen, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xgaps, i32 0, i64 %155
  store %union.rec* %153, %union.rec** %156, align 8
  %157 = load i32, i32* %xlen, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %xlen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %159 = load %union.rec*, %union.rec** %link, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 0
  %162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %161, i32 0, i64 0
  %163 = getelementptr inbounds %struct.LIST, %struct.LIST* %162, i32 0, i32 1
  %164 = load %union.rec*, %union.rec** %163, align 8
  store %union.rec* %164, %union.rec** %link, align 8
  br label %165

; <label>:165                                     ; preds = %261, %148
  %166 = load %union.rec*, %union.rec** %link, align 8
  %167 = load %union.rec*, %union.rec** %1, align 8
  %168 = icmp ne %union.rec* %166, %167
  br i1 %168, label %169, label %268

; <label>:169                                     ; preds = %165
  %170 = load %union.rec*, %union.rec** %link, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 0
  %173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %172, i32 0, i64 1
  %174 = getelementptr inbounds %struct.LIST, %struct.LIST* %173, i32 0, i32 0
  %175 = load %union.rec*, %union.rec** %174, align 8
  store %union.rec* %175, %union.rec** %z, align 8
  br label %176

; <label>:176                                     ; preds = %186, %169
  %177 = load %union.rec*, %union.rec** %z, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 1
  %180 = bitcast %union.FIRST_UNION* %179 to %struct.anon*
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %180, i32 0, i32 0
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i32
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %193

; <label>:185                                     ; preds = %176
  br label %186

; <label>:186                                     ; preds = %185
  %187 = load %union.rec*, %union.rec** %z, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 0
  %190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %189, i32 0, i64 1
  %191 = getelementptr inbounds %struct.LIST, %struct.LIST* %190, i32 0, i32 0
  %192 = load %union.rec*, %union.rec** %191, align 8
  store %union.rec* %192, %union.rec** %z, align 8
  br label %176

; <label>:193                                     ; preds = %176
  %194 = load %union.rec*, %union.rec** %z, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 1
  %197 = bitcast %union.FIRST_UNION* %196 to %struct.anon*
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 0
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  %201 = icmp eq i32 %200, 1
  br i1 %201, label %202, label %219

; <label>:202                                     ; preds = %193
  %203 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %203, %union.rec** %g, align 8
  %204 = load i32, i32* %jn, align 4
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %216

; <label>:206                                     ; preds = %202
  %207 = load %union.rec*, %union.rec** %z, align 8
  %208 = bitcast %union.rec* %207 to %struct.gapobj_type*
  %209 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %208, i32 0, i32 3
  %210 = bitcast %struct.GAP* %209 to i16*
  %211 = load i16, i16* %210, align 4
  %212 = lshr i16 %211, 9
  %213 = and i16 %212, 1
  %214 = zext i16 %213 to i32
  %215 = icmp ne i32 %214, 0
  br label %216

; <label>:216                                     ; preds = %206, %202
  %217 = phi i1 [ false, %202 ], [ %215, %206 ]
  %218 = zext i1 %217 to i32
  store i32 %218, i32* %jn, align 4
  br label %260

; <label>:219                                     ; preds = %193
  %220 = load %union.rec*, %union.rec** %z, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 1
  %223 = bitcast %union.FIRST_UNION* %222 to %struct.anon*
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 9
  br i1 %227, label %228, label %232

; <label>:228                                     ; preds = %219
  %229 = load %union.rec*, %union.rec** %z, align 8
  %230 = call i32 @SplitIsDefinite(%union.rec* %229)
  %231 = icmp ne i32 %230, 0
  br i1 %231, label %252, label %259

; <label>:232                                     ; preds = %219
  %233 = load %union.rec*, %union.rec** %z, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 1
  %236 = bitcast %union.FIRST_UNION* %235 to %struct.anon*
  %237 = getelementptr inbounds %struct.anon, %struct.anon* %236, i32 0, i32 0
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp sge i32 %239, 9
  br i1 %240, label %241, label %250

; <label>:241                                     ; preds = %232
  %242 = load %union.rec*, %union.rec** %z, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 1
  %245 = bitcast %union.FIRST_UNION* %244 to %struct.anon*
  %246 = getelementptr inbounds %struct.anon, %struct.anon* %245, i32 0, i32 0
  %247 = load i8, i8* %246, align 1
  %248 = zext i8 %247 to i32
  %249 = icmp sle i32 %248, 99
  br label %250

; <label>:250                                     ; preds = %241, %232
  %251 = phi i1 [ false, %232 ], [ %249, %241 ]
  br i1 %251, label %252, label %259

; <label>:252                                     ; preds = %250, %228
  %253 = load %union.rec*, %union.rec** %g, align 8
  %254 = icmp ne %union.rec* %253, null
  br i1 %254, label %258, label %255

; <label>:255                                     ; preds = %252
  %256 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %257 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %256, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %258

; <label>:258                                     ; preds = %255, %252
  br label %268

; <label>:259                                     ; preds = %250, %228
  br label %260

; <label>:260                                     ; preds = %259, %216
  br label %261

; <label>:261                                     ; preds = %260
  %262 = load %union.rec*, %union.rec** %link, align 8
  %263 = bitcast %union.rec* %262 to %struct.word_type*
  %264 = getelementptr inbounds %struct.word_type, %struct.word_type* %263, i32 0, i32 0
  %265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %264, i32 0, i64 0
  %266 = getelementptr inbounds %struct.LIST, %struct.LIST* %265, i32 0, i32 1
  %267 = load %union.rec*, %union.rec** %266, align 8
  store %union.rec* %267, %union.rec** %link, align 8
  br label %165

; <label>:268                                     ; preds = %258, %165
  br label %135

; <label>:269                                     ; preds = %135
  store i32 0, i32* %ylen, align 4
  %270 = load i32, i32* %ylen, align 4
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %271
  store %union.rec* null, %union.rec** %272, align 8
  %273 = load i32, i32* %ylen, align 4
  %274 = add nsw i32 %273, 1
  store i32 %274, i32* %ylen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %275 = load %union.rec*, %union.rec** %2, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 0
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 1
  %280 = load %union.rec*, %union.rec** %279, align 8
  store %union.rec* %280, %union.rec** %link, align 8
  br label %281

; <label>:281                                     ; preds = %370, %269
  %282 = load %union.rec*, %union.rec** %link, align 8
  %283 = load %union.rec*, %union.rec** %2, align 8
  %284 = icmp ne %union.rec* %282, %283
  br i1 %284, label %285, label %377

; <label>:285                                     ; preds = %281
  %286 = load %union.rec*, %union.rec** %link, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 1
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 0
  %291 = load %union.rec*, %union.rec** %290, align 8
  store %union.rec* %291, %union.rec** %z, align 8
  br label %292

; <label>:292                                     ; preds = %302, %285
  %293 = load %union.rec*, %union.rec** %z, align 8
  %294 = bitcast %union.rec* %293 to %struct.word_type*
  %295 = getelementptr inbounds %struct.word_type, %struct.word_type* %294, i32 0, i32 1
  %296 = bitcast %union.FIRST_UNION* %295 to %struct.anon*
  %297 = getelementptr inbounds %struct.anon, %struct.anon* %296, i32 0, i32 0
  %298 = load i8, i8* %297, align 1
  %299 = zext i8 %298 to i32
  %300 = icmp eq i32 %299, 0
  br i1 %300, label %301, label %309

; <label>:301                                     ; preds = %292
  br label %302

; <label>:302                                     ; preds = %301
  %303 = load %union.rec*, %union.rec** %z, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %305, i32 0, i64 1
  %307 = getelementptr inbounds %struct.LIST, %struct.LIST* %306, i32 0, i32 0
  %308 = load %union.rec*, %union.rec** %307, align 8
  store %union.rec* %308, %union.rec** %z, align 8
  br label %292

; <label>:309                                     ; preds = %292
  %310 = load %union.rec*, %union.rec** %z, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 1
  %313 = bitcast %union.FIRST_UNION* %312 to %struct.anon*
  %314 = getelementptr inbounds %struct.anon, %struct.anon* %313, i32 0, i32 0
  %315 = load i8, i8* %314, align 1
  %316 = zext i8 %315 to i32
  %317 = icmp eq i32 %316, 1
  br i1 %317, label %318, label %334

; <label>:318                                     ; preds = %309
  %319 = load i32, i32* %jn, align 4
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %331

; <label>:321                                     ; preds = %318
  %322 = load %union.rec*, %union.rec** %z, align 8
  %323 = bitcast %union.rec* %322 to %struct.gapobj_type*
  %324 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %323, i32 0, i32 3
  %325 = bitcast %struct.GAP* %324 to i16*
  %326 = load i16, i16* %325, align 4
  %327 = lshr i16 %326, 9
  %328 = and i16 %327, 1
  %329 = zext i16 %328 to i32
  %330 = icmp ne i32 %329, 0
  br label %331

; <label>:331                                     ; preds = %321, %318
  %332 = phi i1 [ false, %318 ], [ %330, %321 ]
  %333 = zext i1 %332 to i32
  store i32 %333, i32* %jn, align 4
  br label %369

; <label>:334                                     ; preds = %309
  %335 = load %union.rec*, %union.rec** %z, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 1
  %338 = bitcast %union.FIRST_UNION* %337 to %struct.anon*
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %338, i32 0, i32 0
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = icmp eq i32 %341, 9
  br i1 %342, label %343, label %347

; <label>:343                                     ; preds = %334
  %344 = load %union.rec*, %union.rec** %z, align 8
  %345 = call i32 @SplitIsDefinite(%union.rec* %344)
  %346 = icmp ne i32 %345, 0
  br i1 %346, label %367, label %368

; <label>:347                                     ; preds = %334
  %348 = load %union.rec*, %union.rec** %z, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 1
  %351 = bitcast %union.FIRST_UNION* %350 to %struct.anon*
  %352 = getelementptr inbounds %struct.anon, %struct.anon* %351, i32 0, i32 0
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp sge i32 %354, 9
  br i1 %355, label %356, label %365

; <label>:356                                     ; preds = %347
  %357 = load %union.rec*, %union.rec** %z, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 1
  %360 = bitcast %union.FIRST_UNION* %359 to %struct.anon*
  %361 = getelementptr inbounds %struct.anon, %struct.anon* %360, i32 0, i32 0
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = icmp sle i32 %363, 99
  br label %365

; <label>:365                                     ; preds = %356, %347
  %366 = phi i1 [ false, %347 ], [ %364, %356 ]
  br i1 %366, label %367, label %368

; <label>:367                                     ; preds = %365, %343
  br label %377

; <label>:368                                     ; preds = %365, %343
  br label %369

; <label>:369                                     ; preds = %368, %331
  br label %370

; <label>:370                                     ; preds = %369
  %371 = load %union.rec*, %union.rec** %link, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 0
  %374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %373, i32 0, i64 0
  %375 = getelementptr inbounds %struct.LIST, %struct.LIST* %374, i32 0, i32 1
  %376 = load %union.rec*, %union.rec** %375, align 8
  store %union.rec* %376, %union.rec** %link, align 8
  br label %281

; <label>:377                                     ; preds = %367, %281
  br label %378

; <label>:378                                     ; preds = %511, %377
  %379 = load %union.rec*, %union.rec** %link, align 8
  %380 = load %union.rec*, %union.rec** %2, align 8
  %381 = icmp ne %union.rec* %379, %380
  br i1 %381, label %382, label %512

; <label>:382                                     ; preds = %378
  %383 = load i32, i32* %ylen, align 4
  %384 = icmp sge i32 %383, 32
  br i1 %384, label %385, label %391

; <label>:385                                     ; preds = %382
  %386 = load %union.rec*, %union.rec** %2, align 8
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 1
  %389 = bitcast %union.FIRST_UNION* %388 to %struct.FILE_POS*
  %390 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 7, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %389, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0), i32 31)
  br label %391

; <label>:391                                     ; preds = %385, %382
  %392 = load %union.rec*, %union.rec** %z, align 8
  %393 = load i32, i32* %ylen, align 4
  %394 = sext i32 %393 to i64
  %395 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %394
  store %union.rec* %392, %union.rec** %395, align 8
  %396 = load %union.rec*, %union.rec** %g, align 8
  %397 = load i32, i32* %ylen, align 4
  %398 = sext i32 %397 to i64
  %399 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ygaps, i32 0, i64 %398
  store %union.rec* %396, %union.rec** %399, align 8
  %400 = load i32, i32* %ylen, align 4
  %401 = add nsw i32 %400, 1
  store i32 %401, i32* %ylen, align 4
  store %union.rec* null, %union.rec** %g, align 8
  store i32 1, i32* %jn, align 4
  %402 = load %union.rec*, %union.rec** %link, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 0
  %405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %404, i32 0, i64 0
  %406 = getelementptr inbounds %struct.LIST, %struct.LIST* %405, i32 0, i32 1
  %407 = load %union.rec*, %union.rec** %406, align 8
  store %union.rec* %407, %union.rec** %link, align 8
  br label %408

; <label>:408                                     ; preds = %504, %391
  %409 = load %union.rec*, %union.rec** %link, align 8
  %410 = load %union.rec*, %union.rec** %2, align 8
  %411 = icmp ne %union.rec* %409, %410
  br i1 %411, label %412, label %511

; <label>:412                                     ; preds = %408
  %413 = load %union.rec*, %union.rec** %link, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 0
  %416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %415, i32 0, i64 1
  %417 = getelementptr inbounds %struct.LIST, %struct.LIST* %416, i32 0, i32 0
  %418 = load %union.rec*, %union.rec** %417, align 8
  store %union.rec* %418, %union.rec** %z, align 8
  br label %419

; <label>:419                                     ; preds = %429, %412
  %420 = load %union.rec*, %union.rec** %z, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 1
  %423 = bitcast %union.FIRST_UNION* %422 to %struct.anon*
  %424 = getelementptr inbounds %struct.anon, %struct.anon* %423, i32 0, i32 0
  %425 = load i8, i8* %424, align 1
  %426 = zext i8 %425 to i32
  %427 = icmp eq i32 %426, 0
  br i1 %427, label %428, label %436

; <label>:428                                     ; preds = %419
  br label %429

; <label>:429                                     ; preds = %428
  %430 = load %union.rec*, %union.rec** %z, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 0
  %433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %432, i32 0, i64 1
  %434 = getelementptr inbounds %struct.LIST, %struct.LIST* %433, i32 0, i32 0
  %435 = load %union.rec*, %union.rec** %434, align 8
  store %union.rec* %435, %union.rec** %z, align 8
  br label %419

; <label>:436                                     ; preds = %419
  %437 = load %union.rec*, %union.rec** %z, align 8
  %438 = bitcast %union.rec* %437 to %struct.word_type*
  %439 = getelementptr inbounds %struct.word_type, %struct.word_type* %438, i32 0, i32 1
  %440 = bitcast %union.FIRST_UNION* %439 to %struct.anon*
  %441 = getelementptr inbounds %struct.anon, %struct.anon* %440, i32 0, i32 0
  %442 = load i8, i8* %441, align 1
  %443 = zext i8 %442 to i32
  %444 = icmp eq i32 %443, 1
  br i1 %444, label %445, label %462

; <label>:445                                     ; preds = %436
  %446 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %446, %union.rec** %g, align 8
  %447 = load i32, i32* %jn, align 4
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %449, label %459

; <label>:449                                     ; preds = %445
  %450 = load %union.rec*, %union.rec** %z, align 8
  %451 = bitcast %union.rec* %450 to %struct.gapobj_type*
  %452 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %451, i32 0, i32 3
  %453 = bitcast %struct.GAP* %452 to i16*
  %454 = load i16, i16* %453, align 4
  %455 = lshr i16 %454, 9
  %456 = and i16 %455, 1
  %457 = zext i16 %456 to i32
  %458 = icmp ne i32 %457, 0
  br label %459

; <label>:459                                     ; preds = %449, %445
  %460 = phi i1 [ false, %445 ], [ %458, %449 ]
  %461 = zext i1 %460 to i32
  store i32 %461, i32* %jn, align 4
  br label %503

; <label>:462                                     ; preds = %436
  %463 = load %union.rec*, %union.rec** %z, align 8
  %464 = bitcast %union.rec* %463 to %struct.word_type*
  %465 = getelementptr inbounds %struct.word_type, %struct.word_type* %464, i32 0, i32 1
  %466 = bitcast %union.FIRST_UNION* %465 to %struct.anon*
  %467 = getelementptr inbounds %struct.anon, %struct.anon* %466, i32 0, i32 0
  %468 = load i8, i8* %467, align 1
  %469 = zext i8 %468 to i32
  %470 = icmp eq i32 %469, 9
  br i1 %470, label %471, label %475

; <label>:471                                     ; preds = %462
  %472 = load %union.rec*, %union.rec** %z, align 8
  %473 = call i32 @SplitIsDefinite(%union.rec* %472)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %495, label %502

; <label>:475                                     ; preds = %462
  %476 = load %union.rec*, %union.rec** %z, align 8
  %477 = bitcast %union.rec* %476 to %struct.word_type*
  %478 = getelementptr inbounds %struct.word_type, %struct.word_type* %477, i32 0, i32 1
  %479 = bitcast %union.FIRST_UNION* %478 to %struct.anon*
  %480 = getelementptr inbounds %struct.anon, %struct.anon* %479, i32 0, i32 0
  %481 = load i8, i8* %480, align 1
  %482 = zext i8 %481 to i32
  %483 = icmp sge i32 %482, 9
  br i1 %483, label %484, label %493

; <label>:484                                     ; preds = %475
  %485 = load %union.rec*, %union.rec** %z, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 1
  %488 = bitcast %union.FIRST_UNION* %487 to %struct.anon*
  %489 = getelementptr inbounds %struct.anon, %struct.anon* %488, i32 0, i32 0
  %490 = load i8, i8* %489, align 1
  %491 = zext i8 %490 to i32
  %492 = icmp sle i32 %491, 99
  br label %493

; <label>:493                                     ; preds = %484, %475
  %494 = phi i1 [ false, %475 ], [ %492, %484 ]
  br i1 %494, label %495, label %502

; <label>:495                                     ; preds = %493, %471
  %496 = load %union.rec*, %union.rec** %g, align 8
  %497 = icmp ne %union.rec* %496, null
  br i1 %497, label %501, label %498

; <label>:498                                     ; preds = %495
  %499 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %500 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %499, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.13, i32 0, i32 0))
  br label %501

; <label>:501                                     ; preds = %498, %495
  br label %511

; <label>:502                                     ; preds = %493, %471
  br label %503

; <label>:503                                     ; preds = %502, %459
  br label %504

; <label>:504                                     ; preds = %503
  %505 = load %union.rec*, %union.rec** %link, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %507, i32 0, i64 0
  %509 = getelementptr inbounds %struct.LIST, %struct.LIST* %508, i32 0, i32 1
  %510 = load %union.rec*, %union.rec** %509, align 8
  store %union.rec* %510, %union.rec** %link, align 8
  br label %408

; <label>:511                                     ; preds = %501, %408
  br label %378

; <label>:512                                     ; preds = %378
  %513 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 0
  %514 = getelementptr inbounds [32 x i8], [32 x i8]* %513, i32 0, i64 0
  store i8 0, i8* %514, align 1
  %515 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 0
  %516 = getelementptr inbounds [32 x i8], [32 x i8]* %515, i32 0, i64 0
  store i8 0, i8* %516, align 1
  store i32 1, i32* %xi, align 4
  br label %517

; <label>:517                                     ; preds = %530, %512
  %518 = load i32, i32* %xi, align 4
  %519 = load i32, i32* %xlen, align 4
  %520 = icmp slt i32 %518, %519
  br i1 %520, label %521, label %533

; <label>:521                                     ; preds = %517
  %522 = load i32, i32* %xi, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %523
  %525 = getelementptr inbounds [32 x i8], [32 x i8]* %524, i32 0, i64 0
  store i8 0, i8* %525, align 1
  %526 = load i32, i32* %xi, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %527
  %529 = getelementptr inbounds [32 x i8], [32 x i8]* %528, i32 0, i64 0
  store i8 1, i8* %529, align 1
  br label %530

; <label>:530                                     ; preds = %521
  %531 = load i32, i32* %xi, align 4
  %532 = add nsw i32 %531, 1
  store i32 %532, i32* %xi, align 4
  br label %517

; <label>:533                                     ; preds = %517
  store i32 1, i32* %yi, align 4
  br label %534

; <label>:534                                     ; preds = %547, %533
  %535 = load i32, i32* %yi, align 4
  %536 = load i32, i32* %ylen, align 4
  %537 = icmp slt i32 %535, %536
  br i1 %537, label %538, label %550

; <label>:538                                     ; preds = %534
  %539 = load i32, i32* %yi, align 4
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 0
  %542 = getelementptr inbounds [32 x i8], [32 x i8]* %541, i32 0, i64 %540
  store i8 0, i8* %542, align 1
  %543 = load i32, i32* %yi, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 0
  %546 = getelementptr inbounds [32 x i8], [32 x i8]* %545, i32 0, i64 %544
  store i8 2, i8* %546, align 1
  br label %547

; <label>:547                                     ; preds = %538
  %548 = load i32, i32* %yi, align 4
  %549 = add nsw i32 %548, 1
  store i32 %549, i32* %yi, align 4
  br label %534

; <label>:550                                     ; preds = %534
  store i32 1, i32* %xi, align 4
  br label %551

; <label>:551                                     ; preds = %747, %550
  %552 = load i32, i32* %xi, align 4
  %553 = load i32, i32* %xlen, align 4
  %554 = icmp slt i32 %552, %553
  br i1 %554, label %555, label %750

; <label>:555                                     ; preds = %551
  store i32 1, i32* %yi, align 4
  br label %556

; <label>:556                                     ; preds = %743, %555
  %557 = load i32, i32* %yi, align 4
  %558 = load i32, i32* %ylen, align 4
  %559 = icmp slt i32 %557, %558
  br i1 %559, label %560, label %746

; <label>:560                                     ; preds = %556
  %561 = load i32, i32* %xi, align 4
  %562 = sext i32 %561 to i64
  %563 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %562
  %564 = load %union.rec*, %union.rec** %563, align 8
  %565 = bitcast %union.rec* %564 to %struct.word_type*
  %566 = getelementptr inbounds %struct.word_type, %struct.word_type* %565, i32 0, i32 1
  %567 = bitcast %union.FIRST_UNION* %566 to %struct.anon*
  %568 = getelementptr inbounds %struct.anon, %struct.anon* %567, i32 0, i32 0
  %569 = load i8, i8* %568, align 1
  %570 = zext i8 %569 to i32
  %571 = icmp eq i32 %570, 11
  br i1 %571, label %584, label %572

; <label>:572                                     ; preds = %560
  %573 = load i32, i32* %xi, align 4
  %574 = sext i32 %573 to i64
  %575 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %574
  %576 = load %union.rec*, %union.rec** %575, align 8
  %577 = bitcast %union.rec* %576 to %struct.word_type*
  %578 = getelementptr inbounds %struct.word_type, %struct.word_type* %577, i32 0, i32 1
  %579 = bitcast %union.FIRST_UNION* %578 to %struct.anon*
  %580 = getelementptr inbounds %struct.anon, %struct.anon* %579, i32 0, i32 0
  %581 = load i8, i8* %580, align 1
  %582 = zext i8 %581 to i32
  %583 = icmp eq i32 %582, 12
  br i1 %583, label %584, label %628

; <label>:584                                     ; preds = %572, %560
  %585 = load i32, i32* %yi, align 4
  %586 = sext i32 %585 to i64
  %587 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %586
  %588 = load %union.rec*, %union.rec** %587, align 8
  %589 = bitcast %union.rec* %588 to %struct.word_type*
  %590 = getelementptr inbounds %struct.word_type, %struct.word_type* %589, i32 0, i32 1
  %591 = bitcast %union.FIRST_UNION* %590 to %struct.anon*
  %592 = getelementptr inbounds %struct.anon, %struct.anon* %591, i32 0, i32 0
  %593 = load i8, i8* %592, align 1
  %594 = zext i8 %593 to i32
  %595 = icmp eq i32 %594, 11
  br i1 %595, label %608, label %596

; <label>:596                                     ; preds = %584
  %597 = load i32, i32* %yi, align 4
  %598 = sext i32 %597 to i64
  %599 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %598
  %600 = load %union.rec*, %union.rec** %599, align 8
  %601 = bitcast %union.rec* %600 to %struct.word_type*
  %602 = getelementptr inbounds %struct.word_type, %struct.word_type* %601, i32 0, i32 1
  %603 = bitcast %union.FIRST_UNION* %602 to %struct.anon*
  %604 = getelementptr inbounds %struct.anon, %struct.anon* %603, i32 0, i32 0
  %605 = load i8, i8* %604, align 1
  %606 = zext i8 %605 to i32
  %607 = icmp eq i32 %606, 12
  br i1 %607, label %608, label %625

; <label>:608                                     ; preds = %596, %584
  %609 = load i32, i32* %xi, align 4
  %610 = sext i32 %609 to i64
  %611 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %610
  %612 = load %union.rec*, %union.rec** %611, align 8
  %613 = bitcast %union.rec* %612 to %struct.word_type*
  %614 = getelementptr inbounds %struct.word_type, %struct.word_type* %613, i32 0, i32 4
  %615 = getelementptr inbounds [4 x i8], [4 x i8]* %614, i32 0, i32 0
  %616 = load i32, i32* %yi, align 4
  %617 = sext i32 %616 to i64
  %618 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %617
  %619 = load %union.rec*, %union.rec** %618, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 4
  %622 = getelementptr inbounds [4 x i8], [4 x i8]* %621, i32 0, i32 0
  %623 = call i32 @strcmp(i8* %615, i8* %622) #4
  %624 = icmp eq i32 %623, 0
  br label %625

; <label>:625                                     ; preds = %608, %596
  %626 = phi i1 [ false, %596 ], [ %624, %608 ]
  %627 = zext i1 %626 to i32
  store i32 %627, i32* %is_equal, align 4
  br label %651

; <label>:628                                     ; preds = %572
  %629 = load i32, i32* %xi, align 4
  %630 = sext i32 %629 to i64
  %631 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %630
  %632 = load %union.rec*, %union.rec** %631, align 8
  %633 = bitcast %union.rec* %632 to %struct.word_type*
  %634 = getelementptr inbounds %struct.word_type, %struct.word_type* %633, i32 0, i32 1
  %635 = bitcast %union.FIRST_UNION* %634 to %struct.anon*
  %636 = getelementptr inbounds %struct.anon, %struct.anon* %635, i32 0, i32 0
  %637 = load i8, i8* %636, align 1
  %638 = zext i8 %637 to i32
  %639 = load i32, i32* %yi, align 4
  %640 = sext i32 %639 to i64
  %641 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %640
  %642 = load %union.rec*, %union.rec** %641, align 8
  %643 = bitcast %union.rec* %642 to %struct.word_type*
  %644 = getelementptr inbounds %struct.word_type, %struct.word_type* %643, i32 0, i32 1
  %645 = bitcast %union.FIRST_UNION* %644 to %struct.anon*
  %646 = getelementptr inbounds %struct.anon, %struct.anon* %645, i32 0, i32 0
  %647 = load i8, i8* %646, align 1
  %648 = zext i8 %647 to i32
  %649 = icmp eq i32 %638, %648
  %650 = zext i1 %649 to i32
  store i32 %650, i32* %is_equal, align 4
  br label %651

; <label>:651                                     ; preds = %628, %625
  %652 = load i32, i32* %is_equal, align 4
  %653 = icmp ne i32 %652, 0
  br i1 %653, label %654, label %679

; <label>:654                                     ; preds = %651
  %655 = load i32, i32* %yi, align 4
  %656 = sub nsw i32 %655, 1
  %657 = sext i32 %656 to i64
  %658 = load i32, i32* %xi, align 4
  %659 = sub nsw i32 %658, 1
  %660 = sext i32 %659 to i64
  %661 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %660
  %662 = getelementptr inbounds [32 x i8], [32 x i8]* %661, i32 0, i64 %657
  %663 = load i8, i8* %662, align 1
  %664 = sext i8 %663 to i32
  %665 = add nsw i32 1, %664
  %666 = trunc i32 %665 to i8
  %667 = load i32, i32* %yi, align 4
  %668 = sext i32 %667 to i64
  %669 = load i32, i32* %xi, align 4
  %670 = sext i32 %669 to i64
  %671 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %670
  %672 = getelementptr inbounds [32 x i8], [32 x i8]* %671, i32 0, i64 %668
  store i8 %666, i8* %672, align 1
  %673 = load i32, i32* %yi, align 4
  %674 = sext i32 %673 to i64
  %675 = load i32, i32* %xi, align 4
  %676 = sext i32 %675 to i64
  %677 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %676
  %678 = getelementptr inbounds [32 x i8], [32 x i8]* %677, i32 0, i64 %674
  store i8 3, i8* %678, align 1
  br label %742

; <label>:679                                     ; preds = %651
  %680 = load i32, i32* %yi, align 4
  %681 = sext i32 %680 to i64
  %682 = load i32, i32* %xi, align 4
  %683 = sub nsw i32 %682, 1
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %684
  %686 = getelementptr inbounds [32 x i8], [32 x i8]* %685, i32 0, i64 %681
  %687 = load i8, i8* %686, align 1
  %688 = sext i8 %687 to i32
  %689 = load i32, i32* %yi, align 4
  %690 = sub nsw i32 %689, 1
  %691 = sext i32 %690 to i64
  %692 = load i32, i32* %xi, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %693
  %695 = getelementptr inbounds [32 x i8], [32 x i8]* %694, i32 0, i64 %691
  %696 = load i8, i8* %695, align 1
  %697 = sext i8 %696 to i32
  %698 = icmp sgt i32 %688, %697
  br i1 %698, label %699, label %720

; <label>:699                                     ; preds = %679
  %700 = load i32, i32* %yi, align 4
  %701 = sext i32 %700 to i64
  %702 = load i32, i32* %xi, align 4
  %703 = sub nsw i32 %702, 1
  %704 = sext i32 %703 to i64
  %705 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %704
  %706 = getelementptr inbounds [32 x i8], [32 x i8]* %705, i32 0, i64 %701
  %707 = load i8, i8* %706, align 1
  %708 = load i32, i32* %yi, align 4
  %709 = sext i32 %708 to i64
  %710 = load i32, i32* %xi, align 4
  %711 = sext i32 %710 to i64
  %712 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %711
  %713 = getelementptr inbounds [32 x i8], [32 x i8]* %712, i32 0, i64 %709
  store i8 %707, i8* %713, align 1
  %714 = load i32, i32* %yi, align 4
  %715 = sext i32 %714 to i64
  %716 = load i32, i32* %xi, align 4
  %717 = sext i32 %716 to i64
  %718 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %717
  %719 = getelementptr inbounds [32 x i8], [32 x i8]* %718, i32 0, i64 %715
  store i8 1, i8* %719, align 1
  br label %741

; <label>:720                                     ; preds = %679
  %721 = load i32, i32* %yi, align 4
  %722 = sub nsw i32 %721, 1
  %723 = sext i32 %722 to i64
  %724 = load i32, i32* %xi, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %725
  %727 = getelementptr inbounds [32 x i8], [32 x i8]* %726, i32 0, i64 %723
  %728 = load i8, i8* %727, align 1
  %729 = load i32, i32* %yi, align 4
  %730 = sext i32 %729 to i64
  %731 = load i32, i32* %xi, align 4
  %732 = sext i32 %731 to i64
  %733 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %table, i32 0, i64 %732
  %734 = getelementptr inbounds [32 x i8], [32 x i8]* %733, i32 0, i64 %730
  store i8 %728, i8* %734, align 1
  %735 = load i32, i32* %yi, align 4
  %736 = sext i32 %735 to i64
  %737 = load i32, i32* %xi, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %738
  %740 = getelementptr inbounds [32 x i8], [32 x i8]* %739, i32 0, i64 %736
  store i8 2, i8* %740, align 1
  br label %741

; <label>:741                                     ; preds = %720, %699
  br label %742

; <label>:742                                     ; preds = %741, %654
  br label %743

; <label>:743                                     ; preds = %742
  %744 = load i32, i32* %yi, align 4
  %745 = add nsw i32 %744, 1
  store i32 %745, i32* %yi, align 4
  br label %556

; <label>:746                                     ; preds = %556
  br label %747

; <label>:747                                     ; preds = %746
  %748 = load i32, i32* %xi, align 4
  %749 = add nsw i32 %748, 1
  store i32 %749, i32* %xi, align 4
  br label %551

; <label>:750                                     ; preds = %551
  %751 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %752 = zext i8 %751 to i32
  store i32 %752, i32* @zz_size, align 4
  %753 = sext i32 %752 to i64
  %754 = icmp uge i64 %753, 265
  br i1 %754, label %755, label %758

; <label>:755                                     ; preds = %750
  %756 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %757 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %756)
  br label %783

; <label>:758                                     ; preds = %750
  %759 = load i32, i32* @zz_size, align 4
  %760 = sext i32 %759 to i64
  %761 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %760
  %762 = load %union.rec*, %union.rec** %761, align 8
  %763 = icmp eq %union.rec* %762, null
  br i1 %763, label %764, label %768

; <label>:764                                     ; preds = %758
  %765 = load i32, i32* @zz_size, align 4
  %766 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %767 = call %union.rec* @GetMemory(i32 %765, %struct.FILE_POS* %766)
  store %union.rec* %767, %union.rec** @zz_hold, align 8
  br label %782

; <label>:768                                     ; preds = %758
  %769 = load i32, i32* @zz_size, align 4
  %770 = sext i32 %769 to i64
  %771 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %770
  %772 = load %union.rec*, %union.rec** %771, align 8
  store %union.rec* %772, %union.rec** @zz_hold, align 8
  store %union.rec* %772, %union.rec** @zz_hold, align 8
  %773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 0
  %776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %775, i32 0, i64 0
  %777 = getelementptr inbounds %struct.LIST, %struct.LIST* %776, i32 0, i32 0
  %778 = load %union.rec*, %union.rec** %777, align 8
  %779 = load i32, i32* @zz_size, align 4
  %780 = sext i32 %779 to i64
  %781 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %780
  store %union.rec* %778, %union.rec** %781, align 8
  br label %782

; <label>:782                                     ; preds = %768, %764
  br label %783

; <label>:783                                     ; preds = %782, %755
  %784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %785 = bitcast %union.rec* %784 to %struct.word_type*
  %786 = getelementptr inbounds %struct.word_type, %struct.word_type* %785, i32 0, i32 1
  %787 = bitcast %union.FIRST_UNION* %786 to %struct.anon*
  %788 = getelementptr inbounds %struct.anon, %struct.anon* %787, i32 0, i32 0
  store i8 17, i8* %788, align 1
  %789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 1
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 1
  store %union.rec* %789, %union.rec** %794, align 8
  %795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %796 = bitcast %union.rec* %795 to %struct.word_type*
  %797 = getelementptr inbounds %struct.word_type, %struct.word_type* %796, i32 0, i32 0
  %798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %797, i32 0, i64 1
  %799 = getelementptr inbounds %struct.LIST, %struct.LIST* %798, i32 0, i32 0
  store %union.rec* %789, %union.rec** %799, align 8
  %800 = load %union.rec*, %union.rec** @zz_hold, align 8
  %801 = bitcast %union.rec* %800 to %struct.word_type*
  %802 = getelementptr inbounds %struct.word_type, %struct.word_type* %801, i32 0, i32 0
  %803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %802, i32 0, i64 0
  %804 = getelementptr inbounds %struct.LIST, %struct.LIST* %803, i32 0, i32 1
  store %union.rec* %789, %union.rec** %804, align 8
  %805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %806 = bitcast %union.rec* %805 to %struct.word_type*
  %807 = getelementptr inbounds %struct.word_type, %struct.word_type* %806, i32 0, i32 0
  %808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %807, i32 0, i64 0
  %809 = getelementptr inbounds %struct.LIST, %struct.LIST* %808, i32 0, i32 0
  store %union.rec* %789, %union.rec** %809, align 8
  store %union.rec* %789, %union.rec** %res, align 8
  %810 = load %union.rec*, %union.rec** %1, align 8
  %811 = bitcast %union.rec* %810 to %struct.closure_type*
  %812 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %811, i32 0, i32 4
  %813 = bitcast %union.FOURTH_UNION* %812 to %struct.STYLE*
  %814 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %813, i32 0, i32 0
  %815 = bitcast %union.anon* %814 to %struct.GAP*
  %816 = bitcast %struct.GAP* %815 to i16*
  %817 = load i16, i16* %816, align 4
  %818 = lshr i16 %817, 7
  %819 = and i16 %818, 1
  %820 = zext i16 %819 to i32
  %821 = load %union.rec*, %union.rec** %res, align 8
  %822 = bitcast %union.rec* %821 to %struct.closure_type*
  %823 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %822, i32 0, i32 4
  %824 = bitcast %union.FOURTH_UNION* %823 to %struct.STYLE*
  %825 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %824, i32 0, i32 0
  %826 = bitcast %union.anon* %825 to %struct.GAP*
  %827 = bitcast %struct.GAP* %826 to i16*
  %828 = trunc i32 %820 to i16
  %829 = load i16, i16* %827, align 4
  %830 = and i16 %828, 1
  %831 = shl i16 %830, 7
  %832 = and i16 %829, -129
  %833 = or i16 %832, %831
  store i16 %833, i16* %827, align 4
  %834 = zext i16 %830 to i32
  %835 = load %union.rec*, %union.rec** %1, align 8
  %836 = bitcast %union.rec* %835 to %struct.closure_type*
  %837 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %836, i32 0, i32 4
  %838 = bitcast %union.FOURTH_UNION* %837 to %struct.STYLE*
  %839 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %838, i32 0, i32 0
  %840 = bitcast %union.anon* %839 to %struct.GAP*
  %841 = bitcast %struct.GAP* %840 to i16*
  %842 = load i16, i16* %841, align 4
  %843 = lshr i16 %842, 8
  %844 = and i16 %843, 1
  %845 = zext i16 %844 to i32
  %846 = load %union.rec*, %union.rec** %res, align 8
  %847 = bitcast %union.rec* %846 to %struct.closure_type*
  %848 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %847, i32 0, i32 4
  %849 = bitcast %union.FOURTH_UNION* %848 to %struct.STYLE*
  %850 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %849, i32 0, i32 0
  %851 = bitcast %union.anon* %850 to %struct.GAP*
  %852 = bitcast %struct.GAP* %851 to i16*
  %853 = trunc i32 %845 to i16
  %854 = load i16, i16* %852, align 4
  %855 = and i16 %853, 1
  %856 = shl i16 %855, 8
  %857 = and i16 %854, -257
  %858 = or i16 %857, %856
  store i16 %858, i16* %852, align 4
  %859 = zext i16 %855 to i32
  %860 = load %union.rec*, %union.rec** %1, align 8
  %861 = bitcast %union.rec* %860 to %struct.closure_type*
  %862 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %861, i32 0, i32 4
  %863 = bitcast %union.FOURTH_UNION* %862 to %struct.STYLE*
  %864 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %863, i32 0, i32 0
  %865 = bitcast %union.anon* %864 to %struct.GAP*
  %866 = bitcast %struct.GAP* %865 to i16*
  %867 = load i16, i16* %866, align 4
  %868 = lshr i16 %867, 9
  %869 = and i16 %868, 1
  %870 = zext i16 %869 to i32
  %871 = load %union.rec*, %union.rec** %res, align 8
  %872 = bitcast %union.rec* %871 to %struct.closure_type*
  %873 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %872, i32 0, i32 4
  %874 = bitcast %union.FOURTH_UNION* %873 to %struct.STYLE*
  %875 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %874, i32 0, i32 0
  %876 = bitcast %union.anon* %875 to %struct.GAP*
  %877 = bitcast %struct.GAP* %876 to i16*
  %878 = trunc i32 %870 to i16
  %879 = load i16, i16* %877, align 4
  %880 = and i16 %878, 1
  %881 = shl i16 %880, 9
  %882 = and i16 %879, -513
  %883 = or i16 %882, %881
  store i16 %883, i16* %877, align 4
  %884 = zext i16 %880 to i32
  %885 = load %union.rec*, %union.rec** %1, align 8
  %886 = bitcast %union.rec* %885 to %struct.closure_type*
  %887 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %886, i32 0, i32 4
  %888 = bitcast %union.FOURTH_UNION* %887 to %struct.STYLE*
  %889 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %888, i32 0, i32 0
  %890 = bitcast %union.anon* %889 to %struct.GAP*
  %891 = bitcast %struct.GAP* %890 to i16*
  %892 = load i16, i16* %891, align 4
  %893 = lshr i16 %892, 10
  %894 = and i16 %893, 7
  %895 = zext i16 %894 to i32
  %896 = load %union.rec*, %union.rec** %res, align 8
  %897 = bitcast %union.rec* %896 to %struct.closure_type*
  %898 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %897, i32 0, i32 4
  %899 = bitcast %union.FOURTH_UNION* %898 to %struct.STYLE*
  %900 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %899, i32 0, i32 0
  %901 = bitcast %union.anon* %900 to %struct.GAP*
  %902 = bitcast %struct.GAP* %901 to i16*
  %903 = trunc i32 %895 to i16
  %904 = load i16, i16* %902, align 4
  %905 = and i16 %903, 7
  %906 = shl i16 %905, 10
  %907 = and i16 %904, -7169
  %908 = or i16 %907, %906
  store i16 %908, i16* %902, align 4
  %909 = zext i16 %905 to i32
  %910 = load %union.rec*, %union.rec** %1, align 8
  %911 = bitcast %union.rec* %910 to %struct.closure_type*
  %912 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %911, i32 0, i32 4
  %913 = bitcast %union.FOURTH_UNION* %912 to %struct.STYLE*
  %914 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %913, i32 0, i32 0
  %915 = bitcast %union.anon* %914 to %struct.GAP*
  %916 = bitcast %struct.GAP* %915 to i16*
  %917 = load i16, i16* %916, align 4
  %918 = lshr i16 %917, 13
  %919 = zext i16 %918 to i32
  %920 = load %union.rec*, %union.rec** %res, align 8
  %921 = bitcast %union.rec* %920 to %struct.closure_type*
  %922 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %921, i32 0, i32 4
  %923 = bitcast %union.FOURTH_UNION* %922 to %struct.STYLE*
  %924 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %923, i32 0, i32 0
  %925 = bitcast %union.anon* %924 to %struct.GAP*
  %926 = bitcast %struct.GAP* %925 to i16*
  %927 = trunc i32 %919 to i16
  %928 = load i16, i16* %926, align 4
  %929 = and i16 %927, 7
  %930 = shl i16 %929, 13
  %931 = and i16 %928, 8191
  %932 = or i16 %931, %930
  store i16 %932, i16* %926, align 4
  %933 = zext i16 %929 to i32
  %934 = load %union.rec*, %union.rec** %1, align 8
  %935 = bitcast %union.rec* %934 to %struct.closure_type*
  %936 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %935, i32 0, i32 4
  %937 = bitcast %union.FOURTH_UNION* %936 to %struct.STYLE*
  %938 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %937, i32 0, i32 0
  %939 = bitcast %union.anon* %938 to %struct.GAP*
  %940 = getelementptr inbounds %struct.GAP, %struct.GAP* %939, i32 0, i32 1
  %941 = load i16, i16* %940, align 2
  %942 = load %union.rec*, %union.rec** %res, align 8
  %943 = bitcast %union.rec* %942 to %struct.closure_type*
  %944 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %943, i32 0, i32 4
  %945 = bitcast %union.FOURTH_UNION* %944 to %struct.STYLE*
  %946 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %945, i32 0, i32 0
  %947 = bitcast %union.anon* %946 to %struct.GAP*
  %948 = getelementptr inbounds %struct.GAP, %struct.GAP* %947, i32 0, i32 1
  store i16 %941, i16* %948, align 2
  %949 = load %union.rec*, %union.rec** %1, align 8
  %950 = bitcast %union.rec* %949 to %struct.closure_type*
  %951 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %950, i32 0, i32 4
  %952 = bitcast %union.FOURTH_UNION* %951 to %struct.STYLE*
  %953 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %952, i32 0, i32 1
  %954 = bitcast %union.anon.10* %953 to %struct.anon.11*
  %955 = bitcast %struct.anon.11* %954 to i8*
  %956 = load i8, i8* %955, align 4
  %957 = and i8 %956, 3
  %958 = zext i8 %957 to i32
  %959 = load %union.rec*, %union.rec** %res, align 8
  %960 = bitcast %union.rec* %959 to %struct.closure_type*
  %961 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %960, i32 0, i32 4
  %962 = bitcast %union.FOURTH_UNION* %961 to %struct.STYLE*
  %963 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %962, i32 0, i32 1
  %964 = bitcast %union.anon.10* %963 to %struct.anon.11*
  %965 = bitcast %struct.anon.11* %964 to i8*
  %966 = trunc i32 %958 to i8
  %967 = load i8, i8* %965, align 4
  %968 = and i8 %966, 3
  %969 = and i8 %967, -4
  %970 = or i8 %969, %968
  store i8 %970, i8* %965, align 4
  %971 = zext i8 %968 to i32
  %972 = load %union.rec*, %union.rec** %1, align 8
  %973 = bitcast %union.rec* %972 to %struct.closure_type*
  %974 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %973, i32 0, i32 4
  %975 = bitcast %union.FOURTH_UNION* %974 to %struct.STYLE*
  %976 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %975, i32 0, i32 1
  %977 = bitcast %union.anon.10* %976 to %struct.anon.11*
  %978 = bitcast %struct.anon.11* %977 to i8*
  %979 = load i8, i8* %978, align 4
  %980 = lshr i8 %979, 2
  %981 = and i8 %980, 3
  %982 = zext i8 %981 to i32
  %983 = load %union.rec*, %union.rec** %res, align 8
  %984 = bitcast %union.rec* %983 to %struct.closure_type*
  %985 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %984, i32 0, i32 4
  %986 = bitcast %union.FOURTH_UNION* %985 to %struct.STYLE*
  %987 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %986, i32 0, i32 1
  %988 = bitcast %union.anon.10* %987 to %struct.anon.11*
  %989 = bitcast %struct.anon.11* %988 to i8*
  %990 = trunc i32 %982 to i8
  %991 = load i8, i8* %989, align 4
  %992 = and i8 %990, 3
  %993 = shl i8 %992, 2
  %994 = and i8 %991, -13
  %995 = or i8 %994, %993
  store i8 %995, i8* %989, align 4
  %996 = zext i8 %992 to i32
  %997 = load %union.rec*, %union.rec** %1, align 8
  %998 = bitcast %union.rec* %997 to %struct.closure_type*
  %999 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %998, i32 0, i32 4
  %1000 = bitcast %union.FOURTH_UNION* %999 to %struct.STYLE*
  %1001 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1000, i32 0, i32 1
  %1002 = bitcast %union.anon.10* %1001 to %struct.anon.11*
  %1003 = bitcast %struct.anon.11* %1002 to i8*
  %1004 = load i8, i8* %1003, align 4
  %1005 = lshr i8 %1004, 4
  %1006 = and i8 %1005, 7
  %1007 = zext i8 %1006 to i32
  %1008 = load %union.rec*, %union.rec** %res, align 8
  %1009 = bitcast %union.rec* %1008 to %struct.closure_type*
  %1010 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1009, i32 0, i32 4
  %1011 = bitcast %union.FOURTH_UNION* %1010 to %struct.STYLE*
  %1012 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1011, i32 0, i32 1
  %1013 = bitcast %union.anon.10* %1012 to %struct.anon.11*
  %1014 = bitcast %struct.anon.11* %1013 to i8*
  %1015 = trunc i32 %1007 to i8
  %1016 = load i8, i8* %1014, align 4
  %1017 = and i8 %1015, 7
  %1018 = shl i8 %1017, 4
  %1019 = and i8 %1016, -113
  %1020 = or i8 %1019, %1018
  store i8 %1020, i8* %1014, align 4
  %1021 = zext i8 %1017 to i32
  %1022 = load %union.rec*, %union.rec** %1, align 8
  %1023 = bitcast %union.rec* %1022 to %struct.closure_type*
  %1024 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1023, i32 0, i32 4
  %1025 = bitcast %union.FOURTH_UNION* %1024 to %struct.STYLE*
  %1026 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1025, i32 0, i32 0
  %1027 = bitcast %union.anon* %1026 to %struct.anon.9*
  %1028 = bitcast %struct.anon.9* %1027 to i8*
  %1029 = load i8, i8* %1028, align 4
  %1030 = lshr i8 %1029, 3
  %1031 = and i8 %1030, 1
  %1032 = zext i8 %1031 to i32
  %1033 = load %union.rec*, %union.rec** %res, align 8
  %1034 = bitcast %union.rec* %1033 to %struct.closure_type*
  %1035 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1034, i32 0, i32 4
  %1036 = bitcast %union.FOURTH_UNION* %1035 to %struct.STYLE*
  %1037 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1036, i32 0, i32 0
  %1038 = bitcast %union.anon* %1037 to %struct.anon.9*
  %1039 = bitcast %struct.anon.9* %1038 to i8*
  %1040 = trunc i32 %1032 to i8
  %1041 = load i8, i8* %1039, align 4
  %1042 = and i8 %1040, 1
  %1043 = shl i8 %1042, 3
  %1044 = and i8 %1041, -9
  %1045 = or i8 %1044, %1043
  store i8 %1045, i8* %1039, align 4
  %1046 = zext i8 %1042 to i32
  %1047 = load %union.rec*, %union.rec** %1, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.closure_type*
  %1049 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1048, i32 0, i32 4
  %1050 = bitcast %union.FOURTH_UNION* %1049 to %struct.STYLE*
  %1051 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1050, i32 0, i32 1
  %1052 = bitcast %union.anon.10* %1051 to %struct.GAP*
  %1053 = bitcast %struct.GAP* %1052 to i16*
  %1054 = load i16, i16* %1053, align 4
  %1055 = lshr i16 %1054, 7
  %1056 = and i16 %1055, 1
  %1057 = zext i16 %1056 to i32
  %1058 = load %union.rec*, %union.rec** %res, align 8
  %1059 = bitcast %union.rec* %1058 to %struct.closure_type*
  %1060 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1059, i32 0, i32 4
  %1061 = bitcast %union.FOURTH_UNION* %1060 to %struct.STYLE*
  %1062 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1061, i32 0, i32 1
  %1063 = bitcast %union.anon.10* %1062 to %struct.GAP*
  %1064 = bitcast %struct.GAP* %1063 to i16*
  %1065 = trunc i32 %1057 to i16
  %1066 = load i16, i16* %1064, align 4
  %1067 = and i16 %1065, 1
  %1068 = shl i16 %1067, 7
  %1069 = and i16 %1066, -129
  %1070 = or i16 %1069, %1068
  store i16 %1070, i16* %1064, align 4
  %1071 = zext i16 %1067 to i32
  %1072 = load %union.rec*, %union.rec** %1, align 8
  %1073 = bitcast %union.rec* %1072 to %struct.closure_type*
  %1074 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1073, i32 0, i32 4
  %1075 = bitcast %union.FOURTH_UNION* %1074 to %struct.STYLE*
  %1076 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1075, i32 0, i32 1
  %1077 = bitcast %union.anon.10* %1076 to %struct.GAP*
  %1078 = bitcast %struct.GAP* %1077 to i16*
  %1079 = load i16, i16* %1078, align 4
  %1080 = lshr i16 %1079, 8
  %1081 = and i16 %1080, 1
  %1082 = zext i16 %1081 to i32
  %1083 = load %union.rec*, %union.rec** %res, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.closure_type*
  %1085 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1084, i32 0, i32 4
  %1086 = bitcast %union.FOURTH_UNION* %1085 to %struct.STYLE*
  %1087 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1086, i32 0, i32 1
  %1088 = bitcast %union.anon.10* %1087 to %struct.GAP*
  %1089 = bitcast %struct.GAP* %1088 to i16*
  %1090 = trunc i32 %1082 to i16
  %1091 = load i16, i16* %1089, align 4
  %1092 = and i16 %1090, 1
  %1093 = shl i16 %1092, 8
  %1094 = and i16 %1091, -257
  %1095 = or i16 %1094, %1093
  store i16 %1095, i16* %1089, align 4
  %1096 = zext i16 %1092 to i32
  %1097 = load %union.rec*, %union.rec** %1, align 8
  %1098 = bitcast %union.rec* %1097 to %struct.closure_type*
  %1099 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1098, i32 0, i32 4
  %1100 = bitcast %union.FOURTH_UNION* %1099 to %struct.STYLE*
  %1101 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1100, i32 0, i32 1
  %1102 = bitcast %union.anon.10* %1101 to %struct.GAP*
  %1103 = bitcast %struct.GAP* %1102 to i16*
  %1104 = load i16, i16* %1103, align 4
  %1105 = lshr i16 %1104, 9
  %1106 = and i16 %1105, 1
  %1107 = zext i16 %1106 to i32
  %1108 = load %union.rec*, %union.rec** %res, align 8
  %1109 = bitcast %union.rec* %1108 to %struct.closure_type*
  %1110 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1109, i32 0, i32 4
  %1111 = bitcast %union.FOURTH_UNION* %1110 to %struct.STYLE*
  %1112 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1111, i32 0, i32 1
  %1113 = bitcast %union.anon.10* %1112 to %struct.GAP*
  %1114 = bitcast %struct.GAP* %1113 to i16*
  %1115 = trunc i32 %1107 to i16
  %1116 = load i16, i16* %1114, align 4
  %1117 = and i16 %1115, 1
  %1118 = shl i16 %1117, 9
  %1119 = and i16 %1116, -513
  %1120 = or i16 %1119, %1118
  store i16 %1120, i16* %1114, align 4
  %1121 = zext i16 %1117 to i32
  %1122 = load %union.rec*, %union.rec** %1, align 8
  %1123 = bitcast %union.rec* %1122 to %struct.closure_type*
  %1124 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1123, i32 0, i32 4
  %1125 = bitcast %union.FOURTH_UNION* %1124 to %struct.STYLE*
  %1126 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1125, i32 0, i32 1
  %1127 = bitcast %union.anon.10* %1126 to %struct.GAP*
  %1128 = bitcast %struct.GAP* %1127 to i16*
  %1129 = load i16, i16* %1128, align 4
  %1130 = lshr i16 %1129, 10
  %1131 = and i16 %1130, 7
  %1132 = zext i16 %1131 to i32
  %1133 = load %union.rec*, %union.rec** %res, align 8
  %1134 = bitcast %union.rec* %1133 to %struct.closure_type*
  %1135 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1134, i32 0, i32 4
  %1136 = bitcast %union.FOURTH_UNION* %1135 to %struct.STYLE*
  %1137 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1136, i32 0, i32 1
  %1138 = bitcast %union.anon.10* %1137 to %struct.GAP*
  %1139 = bitcast %struct.GAP* %1138 to i16*
  %1140 = trunc i32 %1132 to i16
  %1141 = load i16, i16* %1139, align 4
  %1142 = and i16 %1140, 7
  %1143 = shl i16 %1142, 10
  %1144 = and i16 %1141, -7169
  %1145 = or i16 %1144, %1143
  store i16 %1145, i16* %1139, align 4
  %1146 = zext i16 %1142 to i32
  %1147 = load %union.rec*, %union.rec** %1, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.closure_type*
  %1149 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1148, i32 0, i32 4
  %1150 = bitcast %union.FOURTH_UNION* %1149 to %struct.STYLE*
  %1151 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1150, i32 0, i32 1
  %1152 = bitcast %union.anon.10* %1151 to %struct.GAP*
  %1153 = bitcast %struct.GAP* %1152 to i16*
  %1154 = load i16, i16* %1153, align 4
  %1155 = lshr i16 %1154, 13
  %1156 = zext i16 %1155 to i32
  %1157 = load %union.rec*, %union.rec** %res, align 8
  %1158 = bitcast %union.rec* %1157 to %struct.closure_type*
  %1159 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1158, i32 0, i32 4
  %1160 = bitcast %union.FOURTH_UNION* %1159 to %struct.STYLE*
  %1161 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1160, i32 0, i32 1
  %1162 = bitcast %union.anon.10* %1161 to %struct.GAP*
  %1163 = bitcast %struct.GAP* %1162 to i16*
  %1164 = trunc i32 %1156 to i16
  %1165 = load i16, i16* %1163, align 4
  %1166 = and i16 %1164, 7
  %1167 = shl i16 %1166, 13
  %1168 = and i16 %1165, 8191
  %1169 = or i16 %1168, %1167
  store i16 %1169, i16* %1163, align 4
  %1170 = zext i16 %1166 to i32
  %1171 = load %union.rec*, %union.rec** %1, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.closure_type*
  %1173 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1172, i32 0, i32 4
  %1174 = bitcast %union.FOURTH_UNION* %1173 to %struct.STYLE*
  %1175 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1174, i32 0, i32 1
  %1176 = bitcast %union.anon.10* %1175 to %struct.GAP*
  %1177 = getelementptr inbounds %struct.GAP, %struct.GAP* %1176, i32 0, i32 1
  %1178 = load i16, i16* %1177, align 2
  %1179 = load %union.rec*, %union.rec** %res, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.closure_type*
  %1181 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1180, i32 0, i32 4
  %1182 = bitcast %union.FOURTH_UNION* %1181 to %struct.STYLE*
  %1183 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1182, i32 0, i32 1
  %1184 = bitcast %union.anon.10* %1183 to %struct.GAP*
  %1185 = getelementptr inbounds %struct.GAP, %struct.GAP* %1184, i32 0, i32 1
  store i16 %1178, i16* %1185, align 2
  %1186 = load %union.rec*, %union.rec** %1, align 8
  %1187 = bitcast %union.rec* %1186 to %struct.closure_type*
  %1188 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1187, i32 0, i32 4
  %1189 = bitcast %union.FOURTH_UNION* %1188 to %struct.STYLE*
  %1190 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1189, i32 0, i32 4
  %1191 = load i32, i32* %1190, align 4
  %1192 = and i32 %1191, 4095
  %1193 = load %union.rec*, %union.rec** %res, align 8
  %1194 = bitcast %union.rec* %1193 to %struct.closure_type*
  %1195 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1194, i32 0, i32 4
  %1196 = bitcast %union.FOURTH_UNION* %1195 to %struct.STYLE*
  %1197 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1196, i32 0, i32 4
  %1198 = load i32, i32* %1197, align 4
  %1199 = and i32 %1192, 4095
  %1200 = and i32 %1198, -4096
  %1201 = or i32 %1200, %1199
  store i32 %1201, i32* %1197, align 4
  %1202 = load %union.rec*, %union.rec** %1, align 8
  %1203 = bitcast %union.rec* %1202 to %struct.closure_type*
  %1204 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1203, i32 0, i32 4
  %1205 = bitcast %union.FOURTH_UNION* %1204 to %struct.STYLE*
  %1206 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1205, i32 0, i32 4
  %1207 = load i32, i32* %1206, align 4
  %1208 = lshr i32 %1207, 12
  %1209 = and i32 %1208, 1023
  %1210 = load %union.rec*, %union.rec** %res, align 8
  %1211 = bitcast %union.rec* %1210 to %struct.closure_type*
  %1212 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1211, i32 0, i32 4
  %1213 = bitcast %union.FOURTH_UNION* %1212 to %struct.STYLE*
  %1214 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1213, i32 0, i32 4
  %1215 = load i32, i32* %1214, align 4
  %1216 = and i32 %1209, 1023
  %1217 = shl i32 %1216, 12
  %1218 = and i32 %1215, -4190209
  %1219 = or i32 %1218, %1217
  store i32 %1219, i32* %1214, align 4
  %1220 = load %union.rec*, %union.rec** %1, align 8
  %1221 = bitcast %union.rec* %1220 to %struct.closure_type*
  %1222 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1221, i32 0, i32 4
  %1223 = bitcast %union.FOURTH_UNION* %1222 to %struct.STYLE*
  %1224 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1223, i32 0, i32 4
  %1225 = load i32, i32* %1224, align 4
  %1226 = lshr i32 %1225, 22
  %1227 = and i32 %1226, 3
  %1228 = load %union.rec*, %union.rec** %res, align 8
  %1229 = bitcast %union.rec* %1228 to %struct.closure_type*
  %1230 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1229, i32 0, i32 4
  %1231 = bitcast %union.FOURTH_UNION* %1230 to %struct.STYLE*
  %1232 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1231, i32 0, i32 4
  %1233 = load i32, i32* %1232, align 4
  %1234 = and i32 %1227, 3
  %1235 = shl i32 %1234, 22
  %1236 = and i32 %1233, -12582913
  %1237 = or i32 %1236, %1235
  store i32 %1237, i32* %1232, align 4
  %1238 = load %union.rec*, %union.rec** %1, align 8
  %1239 = bitcast %union.rec* %1238 to %struct.closure_type*
  %1240 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1239, i32 0, i32 4
  %1241 = bitcast %union.FOURTH_UNION* %1240 to %struct.STYLE*
  %1242 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1241, i32 0, i32 4
  %1243 = load i32, i32* %1242, align 4
  %1244 = lshr i32 %1243, 24
  %1245 = and i32 %1244, 63
  %1246 = load %union.rec*, %union.rec** %res, align 8
  %1247 = bitcast %union.rec* %1246 to %struct.closure_type*
  %1248 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1247, i32 0, i32 4
  %1249 = bitcast %union.FOURTH_UNION* %1248 to %struct.STYLE*
  %1250 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1249, i32 0, i32 4
  %1251 = load i32, i32* %1250, align 4
  %1252 = and i32 %1245, 63
  %1253 = shl i32 %1252, 24
  %1254 = and i32 %1251, -1056964609
  %1255 = or i32 %1254, %1253
  store i32 %1255, i32* %1250, align 4
  %1256 = load %union.rec*, %union.rec** %1, align 8
  %1257 = bitcast %union.rec* %1256 to %struct.closure_type*
  %1258 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1257, i32 0, i32 4
  %1259 = bitcast %union.FOURTH_UNION* %1258 to %struct.STYLE*
  %1260 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1259, i32 0, i32 4
  %1261 = load i32, i32* %1260, align 4
  %1262 = lshr i32 %1261, 31
  %1263 = load %union.rec*, %union.rec** %res, align 8
  %1264 = bitcast %union.rec* %1263 to %struct.closure_type*
  %1265 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1264, i32 0, i32 4
  %1266 = bitcast %union.FOURTH_UNION* %1265 to %struct.STYLE*
  %1267 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1266, i32 0, i32 4
  %1268 = load i32, i32* %1267, align 4
  %1269 = and i32 %1262, 1
  %1270 = shl i32 %1269, 31
  %1271 = and i32 %1268, 2147483647
  %1272 = or i32 %1271, %1270
  store i32 %1272, i32* %1267, align 4
  %1273 = load %union.rec*, %union.rec** %1, align 8
  %1274 = bitcast %union.rec* %1273 to %struct.closure_type*
  %1275 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1274, i32 0, i32 4
  %1276 = bitcast %union.FOURTH_UNION* %1275 to %struct.STYLE*
  %1277 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1276, i32 0, i32 4
  %1278 = load i32, i32* %1277, align 4
  %1279 = lshr i32 %1278, 30
  %1280 = and i32 %1279, 1
  %1281 = load %union.rec*, %union.rec** %res, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.closure_type*
  %1283 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1282, i32 0, i32 4
  %1284 = bitcast %union.FOURTH_UNION* %1283 to %struct.STYLE*
  %1285 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1284, i32 0, i32 4
  %1286 = load i32, i32* %1285, align 4
  %1287 = and i32 %1280, 1
  %1288 = shl i32 %1287, 30
  %1289 = and i32 %1286, -1073741825
  %1290 = or i32 %1289, %1288
  store i32 %1290, i32* %1285, align 4
  %1291 = load %union.rec*, %union.rec** %1, align 8
  %1292 = bitcast %union.rec* %1291 to %struct.closure_type*
  %1293 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1292, i32 0, i32 4
  %1294 = bitcast %union.FOURTH_UNION* %1293 to %struct.STYLE*
  %1295 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1294, i32 0, i32 0
  %1296 = bitcast %union.anon* %1295 to %struct.anon.9*
  %1297 = bitcast %struct.anon.9* %1296 to i8*
  %1298 = load i8, i8* %1297, align 4
  %1299 = and i8 %1298, 1
  %1300 = zext i8 %1299 to i32
  %1301 = load %union.rec*, %union.rec** %res, align 8
  %1302 = bitcast %union.rec* %1301 to %struct.closure_type*
  %1303 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1302, i32 0, i32 4
  %1304 = bitcast %union.FOURTH_UNION* %1303 to %struct.STYLE*
  %1305 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1304, i32 0, i32 0
  %1306 = bitcast %union.anon* %1305 to %struct.anon.9*
  %1307 = bitcast %struct.anon.9* %1306 to i8*
  %1308 = trunc i32 %1300 to i8
  %1309 = load i8, i8* %1307, align 4
  %1310 = and i8 %1308, 1
  %1311 = and i8 %1309, -2
  %1312 = or i8 %1311, %1310
  store i8 %1312, i8* %1307, align 4
  %1313 = zext i8 %1310 to i32
  %1314 = load %union.rec*, %union.rec** %1, align 8
  %1315 = bitcast %union.rec* %1314 to %struct.closure_type*
  %1316 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1315, i32 0, i32 4
  %1317 = bitcast %union.FOURTH_UNION* %1316 to %struct.STYLE*
  %1318 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1317, i32 0, i32 0
  %1319 = bitcast %union.anon* %1318 to %struct.anon.9*
  %1320 = bitcast %struct.anon.9* %1319 to i8*
  %1321 = load i8, i8* %1320, align 4
  %1322 = lshr i8 %1321, 1
  %1323 = and i8 %1322, 1
  %1324 = zext i8 %1323 to i32
  %1325 = load %union.rec*, %union.rec** %res, align 8
  %1326 = bitcast %union.rec* %1325 to %struct.closure_type*
  %1327 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1326, i32 0, i32 4
  %1328 = bitcast %union.FOURTH_UNION* %1327 to %struct.STYLE*
  %1329 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1328, i32 0, i32 0
  %1330 = bitcast %union.anon* %1329 to %struct.anon.9*
  %1331 = bitcast %struct.anon.9* %1330 to i8*
  %1332 = trunc i32 %1324 to i8
  %1333 = load i8, i8* %1331, align 4
  %1334 = and i8 %1332, 1
  %1335 = shl i8 %1334, 1
  %1336 = and i8 %1333, -3
  %1337 = or i8 %1336, %1335
  store i8 %1337, i8* %1331, align 4
  %1338 = zext i8 %1334 to i32
  %1339 = load %union.rec*, %union.rec** %1, align 8
  %1340 = bitcast %union.rec* %1339 to %struct.closure_type*
  %1341 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1340, i32 0, i32 4
  %1342 = bitcast %union.FOURTH_UNION* %1341 to %struct.STYLE*
  %1343 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1342, i32 0, i32 0
  %1344 = bitcast %union.anon* %1343 to %struct.anon.9*
  %1345 = bitcast %struct.anon.9* %1344 to i8*
  %1346 = load i8, i8* %1345, align 4
  %1347 = lshr i8 %1346, 2
  %1348 = and i8 %1347, 1
  %1349 = zext i8 %1348 to i32
  %1350 = load %union.rec*, %union.rec** %res, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.closure_type*
  %1352 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1351, i32 0, i32 4
  %1353 = bitcast %union.FOURTH_UNION* %1352 to %struct.STYLE*
  %1354 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1353, i32 0, i32 0
  %1355 = bitcast %union.anon* %1354 to %struct.anon.9*
  %1356 = bitcast %struct.anon.9* %1355 to i8*
  %1357 = trunc i32 %1349 to i8
  %1358 = load i8, i8* %1356, align 4
  %1359 = and i8 %1357, 1
  %1360 = shl i8 %1359, 2
  %1361 = and i8 %1358, -5
  %1362 = or i8 %1361, %1360
  store i8 %1362, i8* %1356, align 4
  %1363 = zext i8 %1359 to i32
  %1364 = load %union.rec*, %union.rec** %1, align 8
  %1365 = bitcast %union.rec* %1364 to %struct.closure_type*
  %1366 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1365, i32 0, i32 4
  %1367 = bitcast %union.FOURTH_UNION* %1366 to %struct.STYLE*
  %1368 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1367, i32 0, i32 0
  %1369 = bitcast %union.anon* %1368 to %struct.anon.9*
  %1370 = bitcast %struct.anon.9* %1369 to i8*
  %1371 = load i8, i8* %1370, align 4
  %1372 = lshr i8 %1371, 4
  %1373 = and i8 %1372, 7
  %1374 = zext i8 %1373 to i32
  %1375 = load %union.rec*, %union.rec** %res, align 8
  %1376 = bitcast %union.rec* %1375 to %struct.closure_type*
  %1377 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1376, i32 0, i32 4
  %1378 = bitcast %union.FOURTH_UNION* %1377 to %struct.STYLE*
  %1379 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1378, i32 0, i32 0
  %1380 = bitcast %union.anon* %1379 to %struct.anon.9*
  %1381 = bitcast %struct.anon.9* %1380 to i8*
  %1382 = trunc i32 %1374 to i8
  %1383 = load i8, i8* %1381, align 4
  %1384 = and i8 %1382, 7
  %1385 = shl i8 %1384, 4
  %1386 = and i8 %1383, -113
  %1387 = or i8 %1386, %1385
  store i8 %1387, i8* %1381, align 4
  %1388 = zext i8 %1384 to i32
  %1389 = load %union.rec*, %union.rec** %1, align 8
  %1390 = bitcast %union.rec* %1389 to %struct.closure_type*
  %1391 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1390, i32 0, i32 4
  %1392 = bitcast %union.FOURTH_UNION* %1391 to %struct.STYLE*
  %1393 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1392, i32 0, i32 2
  %1394 = load i16, i16* %1393, align 2
  %1395 = load %union.rec*, %union.rec** %res, align 8
  %1396 = bitcast %union.rec* %1395 to %struct.closure_type*
  %1397 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1396, i32 0, i32 4
  %1398 = bitcast %union.FOURTH_UNION* %1397 to %struct.STYLE*
  %1399 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1398, i32 0, i32 2
  store i16 %1394, i16* %1399, align 2
  %1400 = load %union.rec*, %union.rec** %1, align 8
  %1401 = bitcast %union.rec* %1400 to %struct.closure_type*
  %1402 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1401, i32 0, i32 4
  %1403 = bitcast %union.FOURTH_UNION* %1402 to %struct.STYLE*
  %1404 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1403, i32 0, i32 3
  %1405 = load i16, i16* %1404, align 2
  %1406 = load %union.rec*, %union.rec** %res, align 8
  %1407 = bitcast %union.rec* %1406 to %struct.closure_type*
  %1408 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1407, i32 0, i32 4
  %1409 = bitcast %union.FOURTH_UNION* %1408 to %struct.STYLE*
  %1410 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1409, i32 0, i32 3
  store i16 %1405, i16* %1410, align 2
  %1411 = load i32, i32* %xlen, align 4
  %1412 = sub nsw i32 %1411, 1
  store i32 %1412, i32* %xi, align 4
  %1413 = load i32, i32* %ylen, align 4
  %1414 = sub nsw i32 %1413, 1
  store i32 %1414, i32* %yi, align 4
  br label %1415

; <label>:1415                                    ; preds = %2704, %783
  %1416 = load i32, i32* %yi, align 4
  %1417 = sext i32 %1416 to i64
  %1418 = load i32, i32* %xi, align 4
  %1419 = sext i32 %1418 to i64
  %1420 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %1419
  %1421 = getelementptr inbounds [32 x i8], [32 x i8]* %1420, i32 0, i64 %1417
  %1422 = load i8, i8* %1421, align 1
  %1423 = sext i8 %1422 to i32
  %1424 = icmp ne i32 %1423, 0
  br i1 %1424, label %1425, label %2705

; <label>:1425                                    ; preds = %1415
  %1426 = load i32, i32* %yi, align 4
  %1427 = sext i32 %1426 to i64
  %1428 = load i32, i32* %xi, align 4
  %1429 = sext i32 %1428 to i64
  %1430 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %1429
  %1431 = getelementptr inbounds [32 x i8], [32 x i8]* %1430, i32 0, i64 %1427
  %1432 = load i8, i8* %1431, align 1
  %1433 = sext i8 %1432 to i32
  switch i32 %1433, label %1994 [
    i32 3, label %1434
    i32 2, label %1622
    i32 1, label %1808
  ]

; <label>:1434                                    ; preds = %1425
  %1435 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1436 = zext i8 %1435 to i32
  store i32 %1436, i32* @zz_size, align 4
  %1437 = sext i32 %1436 to i64
  %1438 = icmp uge i64 %1437, 265
  br i1 %1438, label %1439, label %1442

; <label>:1439                                    ; preds = %1434
  %1440 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1441 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1440)
  br label %1467

; <label>:1442                                    ; preds = %1434
  %1443 = load i32, i32* @zz_size, align 4
  %1444 = sext i32 %1443 to i64
  %1445 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1444
  %1446 = load %union.rec*, %union.rec** %1445, align 8
  %1447 = icmp eq %union.rec* %1446, null
  br i1 %1447, label %1448, label %1452

; <label>:1448                                    ; preds = %1442
  %1449 = load i32, i32* @zz_size, align 4
  %1450 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1451 = call %union.rec* @GetMemory(i32 %1449, %struct.FILE_POS* %1450)
  store %union.rec* %1451, %union.rec** @zz_hold, align 8
  br label %1466

; <label>:1452                                    ; preds = %1442
  %1453 = load i32, i32* @zz_size, align 4
  %1454 = sext i32 %1453 to i64
  %1455 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1454
  %1456 = load %union.rec*, %union.rec** %1455, align 8
  store %union.rec* %1456, %union.rec** @zz_hold, align 8
  store %union.rec* %1456, %union.rec** @zz_hold, align 8
  %1457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 0
  %1460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1459, i32 0, i64 0
  %1461 = getelementptr inbounds %struct.LIST, %struct.LIST* %1460, i32 0, i32 0
  %1462 = load %union.rec*, %union.rec** %1461, align 8
  %1463 = load i32, i32* @zz_size, align 4
  %1464 = sext i32 %1463 to i64
  %1465 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1464
  store %union.rec* %1462, %union.rec** %1465, align 8
  br label %1466

; <label>:1466                                    ; preds = %1452, %1448
  br label %1467

; <label>:1467                                    ; preds = %1466, %1439
  %1468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1469 = bitcast %union.rec* %1468 to %struct.word_type*
  %1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %1469, i32 0, i32 1
  %1471 = bitcast %union.FIRST_UNION* %1470 to %struct.anon*
  %1472 = getelementptr inbounds %struct.anon, %struct.anon* %1471, i32 0, i32 0
  store i8 0, i8* %1472, align 1
  %1473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1475 = bitcast %union.rec* %1474 to %struct.word_type*
  %1476 = getelementptr inbounds %struct.word_type, %struct.word_type* %1475, i32 0, i32 0
  %1477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1476, i32 0, i64 1
  %1478 = getelementptr inbounds %struct.LIST, %struct.LIST* %1477, i32 0, i32 1
  store %union.rec* %1473, %union.rec** %1478, align 8
  %1479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1480 = bitcast %union.rec* %1479 to %struct.word_type*
  %1481 = getelementptr inbounds %struct.word_type, %struct.word_type* %1480, i32 0, i32 0
  %1482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1481, i32 0, i64 1
  %1483 = getelementptr inbounds %struct.LIST, %struct.LIST* %1482, i32 0, i32 0
  store %union.rec* %1473, %union.rec** %1483, align 8
  %1484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1485 = bitcast %union.rec* %1484 to %struct.word_type*
  %1486 = getelementptr inbounds %struct.word_type, %struct.word_type* %1485, i32 0, i32 0
  %1487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1486, i32 0, i64 0
  %1488 = getelementptr inbounds %struct.LIST, %struct.LIST* %1487, i32 0, i32 1
  store %union.rec* %1473, %union.rec** %1488, align 8
  %1489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1490 = bitcast %union.rec* %1489 to %struct.word_type*
  %1491 = getelementptr inbounds %struct.word_type, %struct.word_type* %1490, i32 0, i32 0
  %1492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1491, i32 0, i64 0
  %1493 = getelementptr inbounds %struct.LIST, %struct.LIST* %1492, i32 0, i32 0
  store %union.rec* %1473, %union.rec** %1493, align 8
  store %union.rec* %1473, %union.rec** @xx_link, align 8
  %1494 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1494, %union.rec** @zz_res, align 8
  %1495 = load %union.rec*, %union.rec** %res, align 8
  %1496 = bitcast %union.rec* %1495 to %struct.word_type*
  %1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %1496, i32 0, i32 0
  %1498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1497, i32 0, i64 0
  %1499 = getelementptr inbounds %struct.LIST, %struct.LIST* %1498, i32 0, i32 1
  %1500 = load %union.rec*, %union.rec** %1499, align 8
  store %union.rec* %1500, %union.rec** @zz_hold, align 8
  %1501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1502 = icmp eq %union.rec* %1501, null
  br i1 %1502, label %1503, label %1505

; <label>:1503                                    ; preds = %1467
  %1504 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1553

; <label>:1505                                    ; preds = %1467
  %1506 = load %union.rec*, %union.rec** @zz_res, align 8
  %1507 = icmp eq %union.rec* %1506, null
  br i1 %1507, label %1508, label %1510

; <label>:1508                                    ; preds = %1505
  %1509 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1551

; <label>:1510                                    ; preds = %1505
  %1511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1512 = bitcast %union.rec* %1511 to %struct.word_type*
  %1513 = getelementptr inbounds %struct.word_type, %struct.word_type* %1512, i32 0, i32 0
  %1514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1513, i32 0, i64 0
  %1515 = getelementptr inbounds %struct.LIST, %struct.LIST* %1514, i32 0, i32 0
  %1516 = load %union.rec*, %union.rec** %1515, align 8
  store %union.rec* %1516, %union.rec** @zz_tmp, align 8
  %1517 = load %union.rec*, %union.rec** @zz_res, align 8
  %1518 = bitcast %union.rec* %1517 to %struct.word_type*
  %1519 = getelementptr inbounds %struct.word_type, %struct.word_type* %1518, i32 0, i32 0
  %1520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1519, i32 0, i64 0
  %1521 = getelementptr inbounds %struct.LIST, %struct.LIST* %1520, i32 0, i32 0
  %1522 = load %union.rec*, %union.rec** %1521, align 8
  %1523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1524 = bitcast %union.rec* %1523 to %struct.word_type*
  %1525 = getelementptr inbounds %struct.word_type, %struct.word_type* %1524, i32 0, i32 0
  %1526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1525, i32 0, i64 0
  %1527 = getelementptr inbounds %struct.LIST, %struct.LIST* %1526, i32 0, i32 0
  store %union.rec* %1522, %union.rec** %1527, align 8
  %1528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1529 = load %union.rec*, %union.rec** @zz_res, align 8
  %1530 = bitcast %union.rec* %1529 to %struct.word_type*
  %1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %1530, i32 0, i32 0
  %1532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1531, i32 0, i64 0
  %1533 = getelementptr inbounds %struct.LIST, %struct.LIST* %1532, i32 0, i32 0
  %1534 = load %union.rec*, %union.rec** %1533, align 8
  %1535 = bitcast %union.rec* %1534 to %struct.word_type*
  %1536 = getelementptr inbounds %struct.word_type, %struct.word_type* %1535, i32 0, i32 0
  %1537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1536, i32 0, i64 0
  %1538 = getelementptr inbounds %struct.LIST, %struct.LIST* %1537, i32 0, i32 1
  store %union.rec* %1528, %union.rec** %1538, align 8
  %1539 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1540 = load %union.rec*, %union.rec** @zz_res, align 8
  %1541 = bitcast %union.rec* %1540 to %struct.word_type*
  %1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %1541, i32 0, i32 0
  %1543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1542, i32 0, i64 0
  %1544 = getelementptr inbounds %struct.LIST, %struct.LIST* %1543, i32 0, i32 0
  store %union.rec* %1539, %union.rec** %1544, align 8
  %1545 = load %union.rec*, %union.rec** @zz_res, align 8
  %1546 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1547 = bitcast %union.rec* %1546 to %struct.word_type*
  %1548 = getelementptr inbounds %struct.word_type, %struct.word_type* %1547, i32 0, i32 0
  %1549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1548, i32 0, i64 0
  %1550 = getelementptr inbounds %struct.LIST, %struct.LIST* %1549, i32 0, i32 1
  store %union.rec* %1545, %union.rec** %1550, align 8
  br label %1551

; <label>:1551                                    ; preds = %1510, %1508
  %1552 = phi %union.rec* [ %1509, %1508 ], [ %1545, %1510 ]
  br label %1553

; <label>:1553                                    ; preds = %1551, %1503
  %1554 = phi %union.rec* [ %1504, %1503 ], [ %1552, %1551 ]
  %1555 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1555, %union.rec** @zz_res, align 8
  %1556 = load i32, i32* %xi, align 4
  %1557 = sext i32 %1556 to i64
  %1558 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %1557
  %1559 = load %union.rec*, %union.rec** %1558, align 8
  store %union.rec* %1559, %union.rec** @zz_hold, align 8
  %1560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1561 = icmp eq %union.rec* %1560, null
  br i1 %1561, label %1562, label %1564

; <label>:1562                                    ; preds = %1553
  %1563 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1612

; <label>:1564                                    ; preds = %1553
  %1565 = load %union.rec*, %union.rec** @zz_res, align 8
  %1566 = icmp eq %union.rec* %1565, null
  br i1 %1566, label %1567, label %1569

; <label>:1567                                    ; preds = %1564
  %1568 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1610

; <label>:1569                                    ; preds = %1564
  %1570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1571 = bitcast %union.rec* %1570 to %struct.word_type*
  %1572 = getelementptr inbounds %struct.word_type, %struct.word_type* %1571, i32 0, i32 0
  %1573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1572, i32 0, i64 1
  %1574 = getelementptr inbounds %struct.LIST, %struct.LIST* %1573, i32 0, i32 0
  %1575 = load %union.rec*, %union.rec** %1574, align 8
  store %union.rec* %1575, %union.rec** @zz_tmp, align 8
  %1576 = load %union.rec*, %union.rec** @zz_res, align 8
  %1577 = bitcast %union.rec* %1576 to %struct.word_type*
  %1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %1577, i32 0, i32 0
  %1579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1578, i32 0, i64 1
  %1580 = getelementptr inbounds %struct.LIST, %struct.LIST* %1579, i32 0, i32 0
  %1581 = load %union.rec*, %union.rec** %1580, align 8
  %1582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1583 = bitcast %union.rec* %1582 to %struct.word_type*
  %1584 = getelementptr inbounds %struct.word_type, %struct.word_type* %1583, i32 0, i32 0
  %1585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1584, i32 0, i64 1
  %1586 = getelementptr inbounds %struct.LIST, %struct.LIST* %1585, i32 0, i32 0
  store %union.rec* %1581, %union.rec** %1586, align 8
  %1587 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1588 = load %union.rec*, %union.rec** @zz_res, align 8
  %1589 = bitcast %union.rec* %1588 to %struct.word_type*
  %1590 = getelementptr inbounds %struct.word_type, %struct.word_type* %1589, i32 0, i32 0
  %1591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1590, i32 0, i64 1
  %1592 = getelementptr inbounds %struct.LIST, %struct.LIST* %1591, i32 0, i32 0
  %1593 = load %union.rec*, %union.rec** %1592, align 8
  %1594 = bitcast %union.rec* %1593 to %struct.word_type*
  %1595 = getelementptr inbounds %struct.word_type, %struct.word_type* %1594, i32 0, i32 0
  %1596 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1595, i32 0, i64 1
  %1597 = getelementptr inbounds %struct.LIST, %struct.LIST* %1596, i32 0, i32 1
  store %union.rec* %1587, %union.rec** %1597, align 8
  %1598 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1599 = load %union.rec*, %union.rec** @zz_res, align 8
  %1600 = bitcast %union.rec* %1599 to %struct.word_type*
  %1601 = getelementptr inbounds %struct.word_type, %struct.word_type* %1600, i32 0, i32 0
  %1602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1601, i32 0, i64 1
  %1603 = getelementptr inbounds %struct.LIST, %struct.LIST* %1602, i32 0, i32 0
  store %union.rec* %1598, %union.rec** %1603, align 8
  %1604 = load %union.rec*, %union.rec** @zz_res, align 8
  %1605 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1606 = bitcast %union.rec* %1605 to %struct.word_type*
  %1607 = getelementptr inbounds %struct.word_type, %struct.word_type* %1606, i32 0, i32 0
  %1608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1607, i32 0, i64 1
  %1609 = getelementptr inbounds %struct.LIST, %struct.LIST* %1608, i32 0, i32 1
  store %union.rec* %1604, %union.rec** %1609, align 8
  br label %1610

; <label>:1610                                    ; preds = %1569, %1567
  %1611 = phi %union.rec* [ %1568, %1567 ], [ %1604, %1569 ]
  br label %1612

; <label>:1612                                    ; preds = %1610, %1562
  %1613 = phi %union.rec* [ %1563, %1562 ], [ %1611, %1610 ]
  %1614 = load i32, i32* %xi, align 4
  %1615 = sext i32 %1614 to i64
  %1616 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xgaps, i32 0, i64 %1615
  %1617 = load %union.rec*, %union.rec** %1616, align 8
  store %union.rec* %1617, %union.rec** %g, align 8
  %1618 = load i32, i32* %xi, align 4
  %1619 = add nsw i32 %1618, -1
  store i32 %1619, i32* %xi, align 4
  %1620 = load i32, i32* %yi, align 4
  %1621 = add nsw i32 %1620, -1
  store i32 %1621, i32* %yi, align 4
  br label %1994

; <label>:1622                                    ; preds = %1425
  %1623 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1624 = zext i8 %1623 to i32
  store i32 %1624, i32* @zz_size, align 4
  %1625 = sext i32 %1624 to i64
  %1626 = icmp uge i64 %1625, 265
  br i1 %1626, label %1627, label %1630

; <label>:1627                                    ; preds = %1622
  %1628 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1629 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1628)
  br label %1655

; <label>:1630                                    ; preds = %1622
  %1631 = load i32, i32* @zz_size, align 4
  %1632 = sext i32 %1631 to i64
  %1633 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1632
  %1634 = load %union.rec*, %union.rec** %1633, align 8
  %1635 = icmp eq %union.rec* %1634, null
  br i1 %1635, label %1636, label %1640

; <label>:1636                                    ; preds = %1630
  %1637 = load i32, i32* @zz_size, align 4
  %1638 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1639 = call %union.rec* @GetMemory(i32 %1637, %struct.FILE_POS* %1638)
  store %union.rec* %1639, %union.rec** @zz_hold, align 8
  br label %1654

; <label>:1640                                    ; preds = %1630
  %1641 = load i32, i32* @zz_size, align 4
  %1642 = sext i32 %1641 to i64
  %1643 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1642
  %1644 = load %union.rec*, %union.rec** %1643, align 8
  store %union.rec* %1644, %union.rec** @zz_hold, align 8
  store %union.rec* %1644, %union.rec** @zz_hold, align 8
  %1645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1646 = bitcast %union.rec* %1645 to %struct.word_type*
  %1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %1646, i32 0, i32 0
  %1648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1647, i32 0, i64 0
  %1649 = getelementptr inbounds %struct.LIST, %struct.LIST* %1648, i32 0, i32 0
  %1650 = load %union.rec*, %union.rec** %1649, align 8
  %1651 = load i32, i32* @zz_size, align 4
  %1652 = sext i32 %1651 to i64
  %1653 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1652
  store %union.rec* %1650, %union.rec** %1653, align 8
  br label %1654

; <label>:1654                                    ; preds = %1640, %1636
  br label %1655

; <label>:1655                                    ; preds = %1654, %1627
  %1656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1657 = bitcast %union.rec* %1656 to %struct.word_type*
  %1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %1657, i32 0, i32 1
  %1659 = bitcast %union.FIRST_UNION* %1658 to %struct.anon*
  %1660 = getelementptr inbounds %struct.anon, %struct.anon* %1659, i32 0, i32 0
  store i8 0, i8* %1660, align 1
  %1661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1663 = bitcast %union.rec* %1662 to %struct.word_type*
  %1664 = getelementptr inbounds %struct.word_type, %struct.word_type* %1663, i32 0, i32 0
  %1665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1664, i32 0, i64 1
  %1666 = getelementptr inbounds %struct.LIST, %struct.LIST* %1665, i32 0, i32 1
  store %union.rec* %1661, %union.rec** %1666, align 8
  %1667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1668 = bitcast %union.rec* %1667 to %struct.word_type*
  %1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %1668, i32 0, i32 0
  %1670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1669, i32 0, i64 1
  %1671 = getelementptr inbounds %struct.LIST, %struct.LIST* %1670, i32 0, i32 0
  store %union.rec* %1661, %union.rec** %1671, align 8
  %1672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1673 = bitcast %union.rec* %1672 to %struct.word_type*
  %1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %1673, i32 0, i32 0
  %1675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1674, i32 0, i64 0
  %1676 = getelementptr inbounds %struct.LIST, %struct.LIST* %1675, i32 0, i32 1
  store %union.rec* %1661, %union.rec** %1676, align 8
  %1677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1678 = bitcast %union.rec* %1677 to %struct.word_type*
  %1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %1678, i32 0, i32 0
  %1680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1679, i32 0, i64 0
  %1681 = getelementptr inbounds %struct.LIST, %struct.LIST* %1680, i32 0, i32 0
  store %union.rec* %1661, %union.rec** %1681, align 8
  store %union.rec* %1661, %union.rec** @xx_link, align 8
  %1682 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1682, %union.rec** @zz_res, align 8
  %1683 = load %union.rec*, %union.rec** %res, align 8
  %1684 = bitcast %union.rec* %1683 to %struct.word_type*
  %1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %1684, i32 0, i32 0
  %1686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1685, i32 0, i64 0
  %1687 = getelementptr inbounds %struct.LIST, %struct.LIST* %1686, i32 0, i32 1
  %1688 = load %union.rec*, %union.rec** %1687, align 8
  store %union.rec* %1688, %union.rec** @zz_hold, align 8
  %1689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1690 = icmp eq %union.rec* %1689, null
  br i1 %1690, label %1691, label %1693

; <label>:1691                                    ; preds = %1655
  %1692 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1741

; <label>:1693                                    ; preds = %1655
  %1694 = load %union.rec*, %union.rec** @zz_res, align 8
  %1695 = icmp eq %union.rec* %1694, null
  br i1 %1695, label %1696, label %1698

; <label>:1696                                    ; preds = %1693
  %1697 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1739

; <label>:1698                                    ; preds = %1693
  %1699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1700 = bitcast %union.rec* %1699 to %struct.word_type*
  %1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %1700, i32 0, i32 0
  %1702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1701, i32 0, i64 0
  %1703 = getelementptr inbounds %struct.LIST, %struct.LIST* %1702, i32 0, i32 0
  %1704 = load %union.rec*, %union.rec** %1703, align 8
  store %union.rec* %1704, %union.rec** @zz_tmp, align 8
  %1705 = load %union.rec*, %union.rec** @zz_res, align 8
  %1706 = bitcast %union.rec* %1705 to %struct.word_type*
  %1707 = getelementptr inbounds %struct.word_type, %struct.word_type* %1706, i32 0, i32 0
  %1708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1707, i32 0, i64 0
  %1709 = getelementptr inbounds %struct.LIST, %struct.LIST* %1708, i32 0, i32 0
  %1710 = load %union.rec*, %union.rec** %1709, align 8
  %1711 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1712 = bitcast %union.rec* %1711 to %struct.word_type*
  %1713 = getelementptr inbounds %struct.word_type, %struct.word_type* %1712, i32 0, i32 0
  %1714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1713, i32 0, i64 0
  %1715 = getelementptr inbounds %struct.LIST, %struct.LIST* %1714, i32 0, i32 0
  store %union.rec* %1710, %union.rec** %1715, align 8
  %1716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1717 = load %union.rec*, %union.rec** @zz_res, align 8
  %1718 = bitcast %union.rec* %1717 to %struct.word_type*
  %1719 = getelementptr inbounds %struct.word_type, %struct.word_type* %1718, i32 0, i32 0
  %1720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1719, i32 0, i64 0
  %1721 = getelementptr inbounds %struct.LIST, %struct.LIST* %1720, i32 0, i32 0
  %1722 = load %union.rec*, %union.rec** %1721, align 8
  %1723 = bitcast %union.rec* %1722 to %struct.word_type*
  %1724 = getelementptr inbounds %struct.word_type, %struct.word_type* %1723, i32 0, i32 0
  %1725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1724, i32 0, i64 0
  %1726 = getelementptr inbounds %struct.LIST, %struct.LIST* %1725, i32 0, i32 1
  store %union.rec* %1716, %union.rec** %1726, align 8
  %1727 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1728 = load %union.rec*, %union.rec** @zz_res, align 8
  %1729 = bitcast %union.rec* %1728 to %struct.word_type*
  %1730 = getelementptr inbounds %struct.word_type, %struct.word_type* %1729, i32 0, i32 0
  %1731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1730, i32 0, i64 0
  %1732 = getelementptr inbounds %struct.LIST, %struct.LIST* %1731, i32 0, i32 0
  store %union.rec* %1727, %union.rec** %1732, align 8
  %1733 = load %union.rec*, %union.rec** @zz_res, align 8
  %1734 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1735 = bitcast %union.rec* %1734 to %struct.word_type*
  %1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %1735, i32 0, i32 0
  %1737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1736, i32 0, i64 0
  %1738 = getelementptr inbounds %struct.LIST, %struct.LIST* %1737, i32 0, i32 1
  store %union.rec* %1733, %union.rec** %1738, align 8
  br label %1739

; <label>:1739                                    ; preds = %1698, %1696
  %1740 = phi %union.rec* [ %1697, %1696 ], [ %1733, %1698 ]
  br label %1741

; <label>:1741                                    ; preds = %1739, %1691
  %1742 = phi %union.rec* [ %1692, %1691 ], [ %1740, %1739 ]
  %1743 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1743, %union.rec** @zz_res, align 8
  %1744 = load i32, i32* %yi, align 4
  %1745 = sext i32 %1744 to i64
  %1746 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ycomp, i32 0, i64 %1745
  %1747 = load %union.rec*, %union.rec** %1746, align 8
  store %union.rec* %1747, %union.rec** @zz_hold, align 8
  %1748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1749 = icmp eq %union.rec* %1748, null
  br i1 %1749, label %1750, label %1752

; <label>:1750                                    ; preds = %1741
  %1751 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1800

; <label>:1752                                    ; preds = %1741
  %1753 = load %union.rec*, %union.rec** @zz_res, align 8
  %1754 = icmp eq %union.rec* %1753, null
  br i1 %1754, label %1755, label %1757

; <label>:1755                                    ; preds = %1752
  %1756 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1798

; <label>:1757                                    ; preds = %1752
  %1758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1759 = bitcast %union.rec* %1758 to %struct.word_type*
  %1760 = getelementptr inbounds %struct.word_type, %struct.word_type* %1759, i32 0, i32 0
  %1761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1760, i32 0, i64 1
  %1762 = getelementptr inbounds %struct.LIST, %struct.LIST* %1761, i32 0, i32 0
  %1763 = load %union.rec*, %union.rec** %1762, align 8
  store %union.rec* %1763, %union.rec** @zz_tmp, align 8
  %1764 = load %union.rec*, %union.rec** @zz_res, align 8
  %1765 = bitcast %union.rec* %1764 to %struct.word_type*
  %1766 = getelementptr inbounds %struct.word_type, %struct.word_type* %1765, i32 0, i32 0
  %1767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1766, i32 0, i64 1
  %1768 = getelementptr inbounds %struct.LIST, %struct.LIST* %1767, i32 0, i32 0
  %1769 = load %union.rec*, %union.rec** %1768, align 8
  %1770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1771 = bitcast %union.rec* %1770 to %struct.word_type*
  %1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %1771, i32 0, i32 0
  %1773 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1772, i32 0, i64 1
  %1774 = getelementptr inbounds %struct.LIST, %struct.LIST* %1773, i32 0, i32 0
  store %union.rec* %1769, %union.rec** %1774, align 8
  %1775 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1776 = load %union.rec*, %union.rec** @zz_res, align 8
  %1777 = bitcast %union.rec* %1776 to %struct.word_type*
  %1778 = getelementptr inbounds %struct.word_type, %struct.word_type* %1777, i32 0, i32 0
  %1779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1778, i32 0, i64 1
  %1780 = getelementptr inbounds %struct.LIST, %struct.LIST* %1779, i32 0, i32 0
  %1781 = load %union.rec*, %union.rec** %1780, align 8
  %1782 = bitcast %union.rec* %1781 to %struct.word_type*
  %1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %1782, i32 0, i32 0
  %1784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1783, i32 0, i64 1
  %1785 = getelementptr inbounds %struct.LIST, %struct.LIST* %1784, i32 0, i32 1
  store %union.rec* %1775, %union.rec** %1785, align 8
  %1786 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1787 = load %union.rec*, %union.rec** @zz_res, align 8
  %1788 = bitcast %union.rec* %1787 to %struct.word_type*
  %1789 = getelementptr inbounds %struct.word_type, %struct.word_type* %1788, i32 0, i32 0
  %1790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1789, i32 0, i64 1
  %1791 = getelementptr inbounds %struct.LIST, %struct.LIST* %1790, i32 0, i32 0
  store %union.rec* %1786, %union.rec** %1791, align 8
  %1792 = load %union.rec*, %union.rec** @zz_res, align 8
  %1793 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1794 = bitcast %union.rec* %1793 to %struct.word_type*
  %1795 = getelementptr inbounds %struct.word_type, %struct.word_type* %1794, i32 0, i32 0
  %1796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1795, i32 0, i64 1
  %1797 = getelementptr inbounds %struct.LIST, %struct.LIST* %1796, i32 0, i32 1
  store %union.rec* %1792, %union.rec** %1797, align 8
  br label %1798

; <label>:1798                                    ; preds = %1757, %1755
  %1799 = phi %union.rec* [ %1756, %1755 ], [ %1792, %1757 ]
  br label %1800

; <label>:1800                                    ; preds = %1798, %1750
  %1801 = phi %union.rec* [ %1751, %1750 ], [ %1799, %1798 ]
  %1802 = load i32, i32* %yi, align 4
  %1803 = sext i32 %1802 to i64
  %1804 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %ygaps, i32 0, i64 %1803
  %1805 = load %union.rec*, %union.rec** %1804, align 8
  store %union.rec* %1805, %union.rec** %g, align 8
  %1806 = load i32, i32* %yi, align 4
  %1807 = add nsw i32 %1806, -1
  store i32 %1807, i32* %yi, align 4
  br label %1994

; <label>:1808                                    ; preds = %1425
  %1809 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1810 = zext i8 %1809 to i32
  store i32 %1810, i32* @zz_size, align 4
  %1811 = sext i32 %1810 to i64
  %1812 = icmp uge i64 %1811, 265
  br i1 %1812, label %1813, label %1816

; <label>:1813                                    ; preds = %1808
  %1814 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1815 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %1814)
  br label %1841

; <label>:1816                                    ; preds = %1808
  %1817 = load i32, i32* @zz_size, align 4
  %1818 = sext i32 %1817 to i64
  %1819 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1818
  %1820 = load %union.rec*, %union.rec** %1819, align 8
  %1821 = icmp eq %union.rec* %1820, null
  br i1 %1821, label %1822, label %1826

; <label>:1822                                    ; preds = %1816
  %1823 = load i32, i32* @zz_size, align 4
  %1824 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1825 = call %union.rec* @GetMemory(i32 %1823, %struct.FILE_POS* %1824)
  store %union.rec* %1825, %union.rec** @zz_hold, align 8
  br label %1840

; <label>:1826                                    ; preds = %1816
  %1827 = load i32, i32* @zz_size, align 4
  %1828 = sext i32 %1827 to i64
  %1829 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1828
  %1830 = load %union.rec*, %union.rec** %1829, align 8
  store %union.rec* %1830, %union.rec** @zz_hold, align 8
  store %union.rec* %1830, %union.rec** @zz_hold, align 8
  %1831 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1832 = bitcast %union.rec* %1831 to %struct.word_type*
  %1833 = getelementptr inbounds %struct.word_type, %struct.word_type* %1832, i32 0, i32 0
  %1834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1833, i32 0, i64 0
  %1835 = getelementptr inbounds %struct.LIST, %struct.LIST* %1834, i32 0, i32 0
  %1836 = load %union.rec*, %union.rec** %1835, align 8
  %1837 = load i32, i32* @zz_size, align 4
  %1838 = sext i32 %1837 to i64
  %1839 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1838
  store %union.rec* %1836, %union.rec** %1839, align 8
  br label %1840

; <label>:1840                                    ; preds = %1826, %1822
  br label %1841

; <label>:1841                                    ; preds = %1840, %1813
  %1842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1843 = bitcast %union.rec* %1842 to %struct.word_type*
  %1844 = getelementptr inbounds %struct.word_type, %struct.word_type* %1843, i32 0, i32 1
  %1845 = bitcast %union.FIRST_UNION* %1844 to %struct.anon*
  %1846 = getelementptr inbounds %struct.anon, %struct.anon* %1845, i32 0, i32 0
  store i8 0, i8* %1846, align 1
  %1847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1849 = bitcast %union.rec* %1848 to %struct.word_type*
  %1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %1849, i32 0, i32 0
  %1851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1850, i32 0, i64 1
  %1852 = getelementptr inbounds %struct.LIST, %struct.LIST* %1851, i32 0, i32 1
  store %union.rec* %1847, %union.rec** %1852, align 8
  %1853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1854 = bitcast %union.rec* %1853 to %struct.word_type*
  %1855 = getelementptr inbounds %struct.word_type, %struct.word_type* %1854, i32 0, i32 0
  %1856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1855, i32 0, i64 1
  %1857 = getelementptr inbounds %struct.LIST, %struct.LIST* %1856, i32 0, i32 0
  store %union.rec* %1847, %union.rec** %1857, align 8
  %1858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1859 = bitcast %union.rec* %1858 to %struct.word_type*
  %1860 = getelementptr inbounds %struct.word_type, %struct.word_type* %1859, i32 0, i32 0
  %1861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1860, i32 0, i64 0
  %1862 = getelementptr inbounds %struct.LIST, %struct.LIST* %1861, i32 0, i32 1
  store %union.rec* %1847, %union.rec** %1862, align 8
  %1863 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.word_type*
  %1865 = getelementptr inbounds %struct.word_type, %struct.word_type* %1864, i32 0, i32 0
  %1866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1865, i32 0, i64 0
  %1867 = getelementptr inbounds %struct.LIST, %struct.LIST* %1866, i32 0, i32 0
  store %union.rec* %1847, %union.rec** %1867, align 8
  store %union.rec* %1847, %union.rec** @xx_link, align 8
  %1868 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1868, %union.rec** @zz_res, align 8
  %1869 = load %union.rec*, %union.rec** %res, align 8
  %1870 = bitcast %union.rec* %1869 to %struct.word_type*
  %1871 = getelementptr inbounds %struct.word_type, %struct.word_type* %1870, i32 0, i32 0
  %1872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1871, i32 0, i64 0
  %1873 = getelementptr inbounds %struct.LIST, %struct.LIST* %1872, i32 0, i32 1
  %1874 = load %union.rec*, %union.rec** %1873, align 8
  store %union.rec* %1874, %union.rec** @zz_hold, align 8
  %1875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1876 = icmp eq %union.rec* %1875, null
  br i1 %1876, label %1877, label %1879

; <label>:1877                                    ; preds = %1841
  %1878 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1927

; <label>:1879                                    ; preds = %1841
  %1880 = load %union.rec*, %union.rec** @zz_res, align 8
  %1881 = icmp eq %union.rec* %1880, null
  br i1 %1881, label %1882, label %1884

; <label>:1882                                    ; preds = %1879
  %1883 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1925

; <label>:1884                                    ; preds = %1879
  %1885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1886 = bitcast %union.rec* %1885 to %struct.word_type*
  %1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %1886, i32 0, i32 0
  %1888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1887, i32 0, i64 0
  %1889 = getelementptr inbounds %struct.LIST, %struct.LIST* %1888, i32 0, i32 0
  %1890 = load %union.rec*, %union.rec** %1889, align 8
  store %union.rec* %1890, %union.rec** @zz_tmp, align 8
  %1891 = load %union.rec*, %union.rec** @zz_res, align 8
  %1892 = bitcast %union.rec* %1891 to %struct.word_type*
  %1893 = getelementptr inbounds %struct.word_type, %struct.word_type* %1892, i32 0, i32 0
  %1894 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1893, i32 0, i64 0
  %1895 = getelementptr inbounds %struct.LIST, %struct.LIST* %1894, i32 0, i32 0
  %1896 = load %union.rec*, %union.rec** %1895, align 8
  %1897 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1898 = bitcast %union.rec* %1897 to %struct.word_type*
  %1899 = getelementptr inbounds %struct.word_type, %struct.word_type* %1898, i32 0, i32 0
  %1900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1899, i32 0, i64 0
  %1901 = getelementptr inbounds %struct.LIST, %struct.LIST* %1900, i32 0, i32 0
  store %union.rec* %1896, %union.rec** %1901, align 8
  %1902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1903 = load %union.rec*, %union.rec** @zz_res, align 8
  %1904 = bitcast %union.rec* %1903 to %struct.word_type*
  %1905 = getelementptr inbounds %struct.word_type, %struct.word_type* %1904, i32 0, i32 0
  %1906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1905, i32 0, i64 0
  %1907 = getelementptr inbounds %struct.LIST, %struct.LIST* %1906, i32 0, i32 0
  %1908 = load %union.rec*, %union.rec** %1907, align 8
  %1909 = bitcast %union.rec* %1908 to %struct.word_type*
  %1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %1909, i32 0, i32 0
  %1911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1910, i32 0, i64 0
  %1912 = getelementptr inbounds %struct.LIST, %struct.LIST* %1911, i32 0, i32 1
  store %union.rec* %1902, %union.rec** %1912, align 8
  %1913 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1914 = load %union.rec*, %union.rec** @zz_res, align 8
  %1915 = bitcast %union.rec* %1914 to %struct.word_type*
  %1916 = getelementptr inbounds %struct.word_type, %struct.word_type* %1915, i32 0, i32 0
  %1917 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1916, i32 0, i64 0
  %1918 = getelementptr inbounds %struct.LIST, %struct.LIST* %1917, i32 0, i32 0
  store %union.rec* %1913, %union.rec** %1918, align 8
  %1919 = load %union.rec*, %union.rec** @zz_res, align 8
  %1920 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1921 = bitcast %union.rec* %1920 to %struct.word_type*
  %1922 = getelementptr inbounds %struct.word_type, %struct.word_type* %1921, i32 0, i32 0
  %1923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1922, i32 0, i64 0
  %1924 = getelementptr inbounds %struct.LIST, %struct.LIST* %1923, i32 0, i32 1
  store %union.rec* %1919, %union.rec** %1924, align 8
  br label %1925

; <label>:1925                                    ; preds = %1884, %1882
  %1926 = phi %union.rec* [ %1883, %1882 ], [ %1919, %1884 ]
  br label %1927

; <label>:1927                                    ; preds = %1925, %1877
  %1928 = phi %union.rec* [ %1878, %1877 ], [ %1926, %1925 ]
  %1929 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1929, %union.rec** @zz_res, align 8
  %1930 = load i32, i32* %xi, align 4
  %1931 = sext i32 %1930 to i64
  %1932 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xcomp, i32 0, i64 %1931
  %1933 = load %union.rec*, %union.rec** %1932, align 8
  store %union.rec* %1933, %union.rec** @zz_hold, align 8
  %1934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1935 = icmp eq %union.rec* %1934, null
  br i1 %1935, label %1936, label %1938

; <label>:1936                                    ; preds = %1927
  %1937 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1986

; <label>:1938                                    ; preds = %1927
  %1939 = load %union.rec*, %union.rec** @zz_res, align 8
  %1940 = icmp eq %union.rec* %1939, null
  br i1 %1940, label %1941, label %1943

; <label>:1941                                    ; preds = %1938
  %1942 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1984

; <label>:1943                                    ; preds = %1938
  %1944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1945 = bitcast %union.rec* %1944 to %struct.word_type*
  %1946 = getelementptr inbounds %struct.word_type, %struct.word_type* %1945, i32 0, i32 0
  %1947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1946, i32 0, i64 1
  %1948 = getelementptr inbounds %struct.LIST, %struct.LIST* %1947, i32 0, i32 0
  %1949 = load %union.rec*, %union.rec** %1948, align 8
  store %union.rec* %1949, %union.rec** @zz_tmp, align 8
  %1950 = load %union.rec*, %union.rec** @zz_res, align 8
  %1951 = bitcast %union.rec* %1950 to %struct.word_type*
  %1952 = getelementptr inbounds %struct.word_type, %struct.word_type* %1951, i32 0, i32 0
  %1953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1952, i32 0, i64 1
  %1954 = getelementptr inbounds %struct.LIST, %struct.LIST* %1953, i32 0, i32 0
  %1955 = load %union.rec*, %union.rec** %1954, align 8
  %1956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1957 = bitcast %union.rec* %1956 to %struct.word_type*
  %1958 = getelementptr inbounds %struct.word_type, %struct.word_type* %1957, i32 0, i32 0
  %1959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1958, i32 0, i64 1
  %1960 = getelementptr inbounds %struct.LIST, %struct.LIST* %1959, i32 0, i32 0
  store %union.rec* %1955, %union.rec** %1960, align 8
  %1961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1962 = load %union.rec*, %union.rec** @zz_res, align 8
  %1963 = bitcast %union.rec* %1962 to %struct.word_type*
  %1964 = getelementptr inbounds %struct.word_type, %struct.word_type* %1963, i32 0, i32 0
  %1965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1964, i32 0, i64 1
  %1966 = getelementptr inbounds %struct.LIST, %struct.LIST* %1965, i32 0, i32 0
  %1967 = load %union.rec*, %union.rec** %1966, align 8
  %1968 = bitcast %union.rec* %1967 to %struct.word_type*
  %1969 = getelementptr inbounds %struct.word_type, %struct.word_type* %1968, i32 0, i32 0
  %1970 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1969, i32 0, i64 1
  %1971 = getelementptr inbounds %struct.LIST, %struct.LIST* %1970, i32 0, i32 1
  store %union.rec* %1961, %union.rec** %1971, align 8
  %1972 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1973 = load %union.rec*, %union.rec** @zz_res, align 8
  %1974 = bitcast %union.rec* %1973 to %struct.word_type*
  %1975 = getelementptr inbounds %struct.word_type, %struct.word_type* %1974, i32 0, i32 0
  %1976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1975, i32 0, i64 1
  %1977 = getelementptr inbounds %struct.LIST, %struct.LIST* %1976, i32 0, i32 0
  store %union.rec* %1972, %union.rec** %1977, align 8
  %1978 = load %union.rec*, %union.rec** @zz_res, align 8
  %1979 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1980 = bitcast %union.rec* %1979 to %struct.word_type*
  %1981 = getelementptr inbounds %struct.word_type, %struct.word_type* %1980, i32 0, i32 0
  %1982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1981, i32 0, i64 1
  %1983 = getelementptr inbounds %struct.LIST, %struct.LIST* %1982, i32 0, i32 1
  store %union.rec* %1978, %union.rec** %1983, align 8
  br label %1984

; <label>:1984                                    ; preds = %1943, %1941
  %1985 = phi %union.rec* [ %1942, %1941 ], [ %1978, %1943 ]
  br label %1986

; <label>:1986                                    ; preds = %1984, %1936
  %1987 = phi %union.rec* [ %1937, %1936 ], [ %1985, %1984 ]
  %1988 = load i32, i32* %xi, align 4
  %1989 = sext i32 %1988 to i64
  %1990 = getelementptr inbounds [32 x %union.rec*], [32 x %union.rec*]* %xgaps, i32 0, i64 %1989
  %1991 = load %union.rec*, %union.rec** %1990, align 8
  store %union.rec* %1991, %union.rec** %g, align 8
  %1992 = load i32, i32* %xi, align 4
  %1993 = add nsw i32 %1992, -1
  store i32 %1993, i32* %xi, align 4
  br label %1994

; <label>:1994                                    ; preds = %1986, %1425, %1800, %1612
  %1995 = load i32, i32* %yi, align 4
  %1996 = sext i32 %1995 to i64
  %1997 = load i32, i32* %xi, align 4
  %1998 = sext i32 %1997 to i64
  %1999 = getelementptr inbounds [32 x [32 x i8]], [32 x [32 x i8]]* %dir, i32 0, i64 %1998
  %2000 = getelementptr inbounds [32 x i8], [32 x i8]* %1999, i32 0, i64 %1996
  %2001 = load i8, i8* %2000, align 1
  %2002 = sext i8 %2001 to i32
  %2003 = icmp ne i32 %2002, 0
  br i1 %2003, label %2004, label %2704

; <label>:2004                                    ; preds = %1994
  %2005 = load %union.rec*, %union.rec** %g, align 8
  %2006 = icmp eq %union.rec* %2005, null
  br i1 %2006, label %2007, label %2509

; <label>:2007                                    ; preds = %2004
  %2008 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %2009 = zext i8 %2008 to i32
  store i32 %2009, i32* @zz_size, align 4
  %2010 = sext i32 %2009 to i64
  %2011 = icmp uge i64 %2010, 265
  br i1 %2011, label %2012, label %2015

; <label>:2012                                    ; preds = %2007
  %2013 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2014 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2013)
  br label %2040

; <label>:2015                                    ; preds = %2007
  %2016 = load i32, i32* @zz_size, align 4
  %2017 = sext i32 %2016 to i64
  %2018 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2017
  %2019 = load %union.rec*, %union.rec** %2018, align 8
  %2020 = icmp eq %union.rec* %2019, null
  br i1 %2020, label %2021, label %2025

; <label>:2021                                    ; preds = %2015
  %2022 = load i32, i32* @zz_size, align 4
  %2023 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2024 = call %union.rec* @GetMemory(i32 %2022, %struct.FILE_POS* %2023)
  store %union.rec* %2024, %union.rec** @zz_hold, align 8
  br label %2039

; <label>:2025                                    ; preds = %2015
  %2026 = load i32, i32* @zz_size, align 4
  %2027 = sext i32 %2026 to i64
  %2028 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2027
  %2029 = load %union.rec*, %union.rec** %2028, align 8
  store %union.rec* %2029, %union.rec** @zz_hold, align 8
  store %union.rec* %2029, %union.rec** @zz_hold, align 8
  %2030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2031 = bitcast %union.rec* %2030 to %struct.word_type*
  %2032 = getelementptr inbounds %struct.word_type, %struct.word_type* %2031, i32 0, i32 0
  %2033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2032, i32 0, i64 0
  %2034 = getelementptr inbounds %struct.LIST, %struct.LIST* %2033, i32 0, i32 0
  %2035 = load %union.rec*, %union.rec** %2034, align 8
  %2036 = load i32, i32* @zz_size, align 4
  %2037 = sext i32 %2036 to i64
  %2038 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2037
  store %union.rec* %2035, %union.rec** %2038, align 8
  br label %2039

; <label>:2039                                    ; preds = %2025, %2021
  br label %2040

; <label>:2040                                    ; preds = %2039, %2012
  %2041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2042 = bitcast %union.rec* %2041 to %struct.word_type*
  %2043 = getelementptr inbounds %struct.word_type, %struct.word_type* %2042, i32 0, i32 1
  %2044 = bitcast %union.FIRST_UNION* %2043 to %struct.anon*
  %2045 = getelementptr inbounds %struct.anon, %struct.anon* %2044, i32 0, i32 0
  store i8 1, i8* %2045, align 1
  %2046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2048 = bitcast %union.rec* %2047 to %struct.word_type*
  %2049 = getelementptr inbounds %struct.word_type, %struct.word_type* %2048, i32 0, i32 0
  %2050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2049, i32 0, i64 1
  %2051 = getelementptr inbounds %struct.LIST, %struct.LIST* %2050, i32 0, i32 1
  store %union.rec* %2046, %union.rec** %2051, align 8
  %2052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2053 = bitcast %union.rec* %2052 to %struct.word_type*
  %2054 = getelementptr inbounds %struct.word_type, %struct.word_type* %2053, i32 0, i32 0
  %2055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2054, i32 0, i64 1
  %2056 = getelementptr inbounds %struct.LIST, %struct.LIST* %2055, i32 0, i32 0
  store %union.rec* %2046, %union.rec** %2056, align 8
  %2057 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2058 = bitcast %union.rec* %2057 to %struct.word_type*
  %2059 = getelementptr inbounds %struct.word_type, %struct.word_type* %2058, i32 0, i32 0
  %2060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2059, i32 0, i64 0
  %2061 = getelementptr inbounds %struct.LIST, %struct.LIST* %2060, i32 0, i32 1
  store %union.rec* %2046, %union.rec** %2061, align 8
  %2062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2063 = bitcast %union.rec* %2062 to %struct.word_type*
  %2064 = getelementptr inbounds %struct.word_type, %struct.word_type* %2063, i32 0, i32 0
  %2065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2064, i32 0, i64 0
  %2066 = getelementptr inbounds %struct.LIST, %struct.LIST* %2065, i32 0, i32 0
  store %union.rec* %2046, %union.rec** %2066, align 8
  store %union.rec* %2046, %union.rec** %g, align 8
  %2067 = load %union.rec*, %union.rec** %g, align 8
  %2068 = bitcast %union.rec* %2067 to %struct.word_type*
  %2069 = getelementptr inbounds %struct.word_type, %struct.word_type* %2068, i32 0, i32 2
  %2070 = bitcast %union.SECOND_UNION* %2069 to %struct.anon.0*
  %2071 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2070, i32 0, i32 1
  store i8 1, i8* %2071, align 1
  %2072 = load %union.rec*, %union.rec** %g, align 8
  %2073 = bitcast %union.rec* %2072 to %struct.word_type*
  %2074 = getelementptr inbounds %struct.word_type, %struct.word_type* %2073, i32 0, i32 2
  %2075 = bitcast %union.SECOND_UNION* %2074 to %struct.anon.0*
  %2076 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2075, i32 0, i32 2
  store i8 0, i8* %2076, align 1
  %2077 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2078 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2077, i32 0, i32 2
  %2079 = load i16, i16* %2078, align 2
  %2080 = load %union.rec*, %union.rec** %g, align 8
  %2081 = bitcast %union.rec* %2080 to %struct.word_type*
  %2082 = getelementptr inbounds %struct.word_type, %struct.word_type* %2081, i32 0, i32 1
  %2083 = bitcast %union.FIRST_UNION* %2082 to %struct.FILE_POS*
  %2084 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2083, i32 0, i32 2
  store i16 %2079, i16* %2084, align 2
  %2085 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2086 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2085, i32 0, i32 3
  %2087 = load i32, i32* %2086, align 4
  %2088 = and i32 %2087, 1048575
  %2089 = load %union.rec*, %union.rec** %g, align 8
  %2090 = bitcast %union.rec* %2089 to %struct.word_type*
  %2091 = getelementptr inbounds %struct.word_type, %struct.word_type* %2090, i32 0, i32 1
  %2092 = bitcast %union.FIRST_UNION* %2091 to %struct.FILE_POS*
  %2093 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2092, i32 0, i32 3
  %2094 = load i32, i32* %2093, align 4
  %2095 = and i32 %2088, 1048575
  %2096 = and i32 %2094, -1048576
  %2097 = or i32 %2096, %2095
  store i32 %2097, i32* %2093, align 4
  %2098 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2099 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2098, i32 0, i32 3
  %2100 = load i32, i32* %2099, align 4
  %2101 = lshr i32 %2100, 20
  %2102 = load %union.rec*, %union.rec** %g, align 8
  %2103 = bitcast %union.rec* %2102 to %struct.word_type*
  %2104 = getelementptr inbounds %struct.word_type, %struct.word_type* %2103, i32 0, i32 1
  %2105 = bitcast %union.FIRST_UNION* %2104 to %struct.FILE_POS*
  %2106 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2105, i32 0, i32 3
  %2107 = load i32, i32* %2106, align 4
  %2108 = and i32 %2101, 4095
  %2109 = shl i32 %2108, 20
  %2110 = and i32 %2107, 1048575
  %2111 = or i32 %2110, %2109
  store i32 %2111, i32* %2106, align 4
  %2112 = load %union.rec*, %union.rec** %g, align 8
  %2113 = bitcast %union.rec* %2112 to %struct.gapobj_type*
  %2114 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2113, i32 0, i32 3
  %2115 = bitcast %struct.GAP* %2114 to i16*
  %2116 = load i16, i16* %2115, align 4
  %2117 = and i16 %2116, -129
  store i16 %2117, i16* %2115, align 4
  %2118 = load %union.rec*, %union.rec** %g, align 8
  %2119 = bitcast %union.rec* %2118 to %struct.gapobj_type*
  %2120 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2119, i32 0, i32 3
  %2121 = bitcast %struct.GAP* %2120 to i16*
  %2122 = load i16, i16* %2121, align 4
  %2123 = and i16 %2122, -257
  store i16 %2123, i16* %2121, align 4
  %2124 = load %union.rec*, %union.rec** %g, align 8
  %2125 = bitcast %union.rec* %2124 to %struct.gapobj_type*
  %2126 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2125, i32 0, i32 3
  %2127 = bitcast %struct.GAP* %2126 to i16*
  %2128 = load i16, i16* %2127, align 4
  %2129 = and i16 %2128, -513
  %2130 = or i16 %2129, 512
  store i16 %2130, i16* %2127, align 4
  %2131 = load %union.rec*, %union.rec** %g, align 8
  %2132 = bitcast %union.rec* %2131 to %struct.gapobj_type*
  %2133 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2132, i32 0, i32 3
  %2134 = bitcast %struct.GAP* %2133 to i16*
  %2135 = load i16, i16* %2134, align 4
  %2136 = and i16 %2135, -7169
  %2137 = or i16 %2136, 1024
  store i16 %2137, i16* %2134, align 4
  %2138 = load %union.rec*, %union.rec** %g, align 8
  %2139 = bitcast %union.rec* %2138 to %struct.gapobj_type*
  %2140 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2139, i32 0, i32 3
  %2141 = bitcast %struct.GAP* %2140 to i16*
  %2142 = load i16, i16* %2141, align 4
  %2143 = and i16 %2142, 8191
  %2144 = or i16 %2143, 8192
  store i16 %2144, i16* %2141, align 4
  %2145 = load %union.rec*, %union.rec** %res, align 8
  %2146 = bitcast %union.rec* %2145 to %struct.closure_type*
  %2147 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2146, i32 0, i32 4
  %2148 = bitcast %union.FOURTH_UNION* %2147 to %struct.STYLE*
  %2149 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %2148, i32 0, i32 1
  %2150 = bitcast %union.anon.10* %2149 to %struct.GAP*
  %2151 = getelementptr inbounds %struct.GAP, %struct.GAP* %2150, i32 0, i32 1
  %2152 = load i16, i16* %2151, align 2
  %2153 = load %union.rec*, %union.rec** %g, align 8
  %2154 = bitcast %union.rec* %2153 to %struct.gapobj_type*
  %2155 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2154, i32 0, i32 3
  %2156 = getelementptr inbounds %struct.GAP, %struct.GAP* %2155, i32 0, i32 1
  store i16 %2152, i16* %2156, align 2
  %2157 = load %union.rec*, %union.rec** %g, align 8
  %2158 = bitcast %union.rec* %2157 to %struct.word_type*
  %2159 = getelementptr inbounds %struct.word_type, %struct.word_type* %2158, i32 0, i32 1
  %2160 = bitcast %union.FIRST_UNION* %2159 to %struct.FILE_POS*
  %2161 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i32 0, i32 0), %struct.FILE_POS* %2160)
  store %union.rec* %2161, %union.rec** %tmp, align 8
  %2162 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2163 = zext i8 %2162 to i32
  store i32 %2163, i32* @zz_size, align 4
  %2164 = sext i32 %2163 to i64
  %2165 = icmp uge i64 %2164, 265
  br i1 %2165, label %2166, label %2169

; <label>:2166                                    ; preds = %2040
  %2167 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2168 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2167)
  br label %2194

; <label>:2169                                    ; preds = %2040
  %2170 = load i32, i32* @zz_size, align 4
  %2171 = sext i32 %2170 to i64
  %2172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2171
  %2173 = load %union.rec*, %union.rec** %2172, align 8
  %2174 = icmp eq %union.rec* %2173, null
  br i1 %2174, label %2175, label %2179

; <label>:2175                                    ; preds = %2169
  %2176 = load i32, i32* @zz_size, align 4
  %2177 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2178 = call %union.rec* @GetMemory(i32 %2176, %struct.FILE_POS* %2177)
  store %union.rec* %2178, %union.rec** @zz_hold, align 8
  br label %2193

; <label>:2179                                    ; preds = %2169
  %2180 = load i32, i32* @zz_size, align 4
  %2181 = sext i32 %2180 to i64
  %2182 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2181
  %2183 = load %union.rec*, %union.rec** %2182, align 8
  store %union.rec* %2183, %union.rec** @zz_hold, align 8
  store %union.rec* %2183, %union.rec** @zz_hold, align 8
  %2184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2185 = bitcast %union.rec* %2184 to %struct.word_type*
  %2186 = getelementptr inbounds %struct.word_type, %struct.word_type* %2185, i32 0, i32 0
  %2187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2186, i32 0, i64 0
  %2188 = getelementptr inbounds %struct.LIST, %struct.LIST* %2187, i32 0, i32 0
  %2189 = load %union.rec*, %union.rec** %2188, align 8
  %2190 = load i32, i32* @zz_size, align 4
  %2191 = sext i32 %2190 to i64
  %2192 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2191
  store %union.rec* %2189, %union.rec** %2192, align 8
  br label %2193

; <label>:2193                                    ; preds = %2179, %2175
  br label %2194

; <label>:2194                                    ; preds = %2193, %2166
  %2195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.word_type*
  %2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %2196, i32 0, i32 1
  %2198 = bitcast %union.FIRST_UNION* %2197 to %struct.anon*
  %2199 = getelementptr inbounds %struct.anon, %struct.anon* %2198, i32 0, i32 0
  store i8 0, i8* %2199, align 1
  %2200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2202 = bitcast %union.rec* %2201 to %struct.word_type*
  %2203 = getelementptr inbounds %struct.word_type, %struct.word_type* %2202, i32 0, i32 0
  %2204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2203, i32 0, i64 1
  %2205 = getelementptr inbounds %struct.LIST, %struct.LIST* %2204, i32 0, i32 1
  store %union.rec* %2200, %union.rec** %2205, align 8
  %2206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2207 = bitcast %union.rec* %2206 to %struct.word_type*
  %2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %2207, i32 0, i32 0
  %2209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2208, i32 0, i64 1
  %2210 = getelementptr inbounds %struct.LIST, %struct.LIST* %2209, i32 0, i32 0
  store %union.rec* %2200, %union.rec** %2210, align 8
  %2211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2212 = bitcast %union.rec* %2211 to %struct.word_type*
  %2213 = getelementptr inbounds %struct.word_type, %struct.word_type* %2212, i32 0, i32 0
  %2214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2213, i32 0, i64 0
  %2215 = getelementptr inbounds %struct.LIST, %struct.LIST* %2214, i32 0, i32 1
  store %union.rec* %2200, %union.rec** %2215, align 8
  %2216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2217 = bitcast %union.rec* %2216 to %struct.word_type*
  %2218 = getelementptr inbounds %struct.word_type, %struct.word_type* %2217, i32 0, i32 0
  %2219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2218, i32 0, i64 0
  %2220 = getelementptr inbounds %struct.LIST, %struct.LIST* %2219, i32 0, i32 0
  store %union.rec* %2200, %union.rec** %2220, align 8
  store %union.rec* %2200, %union.rec** @xx_link, align 8
  %2221 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2221, %union.rec** @zz_res, align 8
  %2222 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %2222, %union.rec** @zz_hold, align 8
  %2223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2224 = icmp eq %union.rec* %2223, null
  br i1 %2224, label %2225, label %2227

; <label>:2225                                    ; preds = %2194
  %2226 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2275

; <label>:2227                                    ; preds = %2194
  %2228 = load %union.rec*, %union.rec** @zz_res, align 8
  %2229 = icmp eq %union.rec* %2228, null
  br i1 %2229, label %2230, label %2232

; <label>:2230                                    ; preds = %2227
  %2231 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2273

; <label>:2232                                    ; preds = %2227
  %2233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2234 = bitcast %union.rec* %2233 to %struct.word_type*
  %2235 = getelementptr inbounds %struct.word_type, %struct.word_type* %2234, i32 0, i32 0
  %2236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2235, i32 0, i64 0
  %2237 = getelementptr inbounds %struct.LIST, %struct.LIST* %2236, i32 0, i32 0
  %2238 = load %union.rec*, %union.rec** %2237, align 8
  store %union.rec* %2238, %union.rec** @zz_tmp, align 8
  %2239 = load %union.rec*, %union.rec** @zz_res, align 8
  %2240 = bitcast %union.rec* %2239 to %struct.word_type*
  %2241 = getelementptr inbounds %struct.word_type, %struct.word_type* %2240, i32 0, i32 0
  %2242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2241, i32 0, i64 0
  %2243 = getelementptr inbounds %struct.LIST, %struct.LIST* %2242, i32 0, i32 0
  %2244 = load %union.rec*, %union.rec** %2243, align 8
  %2245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2246 = bitcast %union.rec* %2245 to %struct.word_type*
  %2247 = getelementptr inbounds %struct.word_type, %struct.word_type* %2246, i32 0, i32 0
  %2248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2247, i32 0, i64 0
  %2249 = getelementptr inbounds %struct.LIST, %struct.LIST* %2248, i32 0, i32 0
  store %union.rec* %2244, %union.rec** %2249, align 8
  %2250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2251 = load %union.rec*, %union.rec** @zz_res, align 8
  %2252 = bitcast %union.rec* %2251 to %struct.word_type*
  %2253 = getelementptr inbounds %struct.word_type, %struct.word_type* %2252, i32 0, i32 0
  %2254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2253, i32 0, i64 0
  %2255 = getelementptr inbounds %struct.LIST, %struct.LIST* %2254, i32 0, i32 0
  %2256 = load %union.rec*, %union.rec** %2255, align 8
  %2257 = bitcast %union.rec* %2256 to %struct.word_type*
  %2258 = getelementptr inbounds %struct.word_type, %struct.word_type* %2257, i32 0, i32 0
  %2259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2258, i32 0, i64 0
  %2260 = getelementptr inbounds %struct.LIST, %struct.LIST* %2259, i32 0, i32 1
  store %union.rec* %2250, %union.rec** %2260, align 8
  %2261 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2262 = load %union.rec*, %union.rec** @zz_res, align 8
  %2263 = bitcast %union.rec* %2262 to %struct.word_type*
  %2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %2263, i32 0, i32 0
  %2265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2264, i32 0, i64 0
  %2266 = getelementptr inbounds %struct.LIST, %struct.LIST* %2265, i32 0, i32 0
  store %union.rec* %2261, %union.rec** %2266, align 8
  %2267 = load %union.rec*, %union.rec** @zz_res, align 8
  %2268 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2269 = bitcast %union.rec* %2268 to %struct.word_type*
  %2270 = getelementptr inbounds %struct.word_type, %struct.word_type* %2269, i32 0, i32 0
  %2271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2270, i32 0, i64 0
  %2272 = getelementptr inbounds %struct.LIST, %struct.LIST* %2271, i32 0, i32 1
  store %union.rec* %2267, %union.rec** %2272, align 8
  br label %2273

; <label>:2273                                    ; preds = %2232, %2230
  %2274 = phi %union.rec* [ %2231, %2230 ], [ %2267, %2232 ]
  br label %2275

; <label>:2275                                    ; preds = %2273, %2225
  %2276 = phi %union.rec* [ %2226, %2225 ], [ %2274, %2273 ]
  %2277 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2277, %union.rec** @zz_res, align 8
  %2278 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2278, %union.rec** @zz_hold, align 8
  %2279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2280 = icmp eq %union.rec* %2279, null
  br i1 %2280, label %2281, label %2283

; <label>:2281                                    ; preds = %2275
  %2282 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2331

; <label>:2283                                    ; preds = %2275
  %2284 = load %union.rec*, %union.rec** @zz_res, align 8
  %2285 = icmp eq %union.rec* %2284, null
  br i1 %2285, label %2286, label %2288

; <label>:2286                                    ; preds = %2283
  %2287 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2329

; <label>:2288                                    ; preds = %2283
  %2289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2290 = bitcast %union.rec* %2289 to %struct.word_type*
  %2291 = getelementptr inbounds %struct.word_type, %struct.word_type* %2290, i32 0, i32 0
  %2292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2291, i32 0, i64 1
  %2293 = getelementptr inbounds %struct.LIST, %struct.LIST* %2292, i32 0, i32 0
  %2294 = load %union.rec*, %union.rec** %2293, align 8
  store %union.rec* %2294, %union.rec** @zz_tmp, align 8
  %2295 = load %union.rec*, %union.rec** @zz_res, align 8
  %2296 = bitcast %union.rec* %2295 to %struct.word_type*
  %2297 = getelementptr inbounds %struct.word_type, %struct.word_type* %2296, i32 0, i32 0
  %2298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2297, i32 0, i64 1
  %2299 = getelementptr inbounds %struct.LIST, %struct.LIST* %2298, i32 0, i32 0
  %2300 = load %union.rec*, %union.rec** %2299, align 8
  %2301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2302 = bitcast %union.rec* %2301 to %struct.word_type*
  %2303 = getelementptr inbounds %struct.word_type, %struct.word_type* %2302, i32 0, i32 0
  %2304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2303, i32 0, i64 1
  %2305 = getelementptr inbounds %struct.LIST, %struct.LIST* %2304, i32 0, i32 0
  store %union.rec* %2300, %union.rec** %2305, align 8
  %2306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2307 = load %union.rec*, %union.rec** @zz_res, align 8
  %2308 = bitcast %union.rec* %2307 to %struct.word_type*
  %2309 = getelementptr inbounds %struct.word_type, %struct.word_type* %2308, i32 0, i32 0
  %2310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2309, i32 0, i64 1
  %2311 = getelementptr inbounds %struct.LIST, %struct.LIST* %2310, i32 0, i32 0
  %2312 = load %union.rec*, %union.rec** %2311, align 8
  %2313 = bitcast %union.rec* %2312 to %struct.word_type*
  %2314 = getelementptr inbounds %struct.word_type, %struct.word_type* %2313, i32 0, i32 0
  %2315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2314, i32 0, i64 1
  %2316 = getelementptr inbounds %struct.LIST, %struct.LIST* %2315, i32 0, i32 1
  store %union.rec* %2306, %union.rec** %2316, align 8
  %2317 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2318 = load %union.rec*, %union.rec** @zz_res, align 8
  %2319 = bitcast %union.rec* %2318 to %struct.word_type*
  %2320 = getelementptr inbounds %struct.word_type, %struct.word_type* %2319, i32 0, i32 0
  %2321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2320, i32 0, i64 1
  %2322 = getelementptr inbounds %struct.LIST, %struct.LIST* %2321, i32 0, i32 0
  store %union.rec* %2317, %union.rec** %2322, align 8
  %2323 = load %union.rec*, %union.rec** @zz_res, align 8
  %2324 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2325 = bitcast %union.rec* %2324 to %struct.word_type*
  %2326 = getelementptr inbounds %struct.word_type, %struct.word_type* %2325, i32 0, i32 0
  %2327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2326, i32 0, i64 1
  %2328 = getelementptr inbounds %struct.LIST, %struct.LIST* %2327, i32 0, i32 1
  store %union.rec* %2323, %union.rec** %2328, align 8
  br label %2329

; <label>:2329                                    ; preds = %2288, %2286
  %2330 = phi %union.rec* [ %2287, %2286 ], [ %2323, %2288 ]
  br label %2331

; <label>:2331                                    ; preds = %2329, %2281
  %2332 = phi %union.rec* [ %2282, %2281 ], [ %2330, %2329 ]
  %2333 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2334 = zext i8 %2333 to i32
  store i32 %2334, i32* @zz_size, align 4
  %2335 = sext i32 %2334 to i64
  %2336 = icmp uge i64 %2335, 265
  br i1 %2336, label %2337, label %2340

; <label>:2337                                    ; preds = %2331
  %2338 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2339 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2338)
  br label %2365

; <label>:2340                                    ; preds = %2331
  %2341 = load i32, i32* @zz_size, align 4
  %2342 = sext i32 %2341 to i64
  %2343 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2342
  %2344 = load %union.rec*, %union.rec** %2343, align 8
  %2345 = icmp eq %union.rec* %2344, null
  br i1 %2345, label %2346, label %2350

; <label>:2346                                    ; preds = %2340
  %2347 = load i32, i32* @zz_size, align 4
  %2348 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2349 = call %union.rec* @GetMemory(i32 %2347, %struct.FILE_POS* %2348)
  store %union.rec* %2349, %union.rec** @zz_hold, align 8
  br label %2364

; <label>:2350                                    ; preds = %2340
  %2351 = load i32, i32* @zz_size, align 4
  %2352 = sext i32 %2351 to i64
  %2353 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2352
  %2354 = load %union.rec*, %union.rec** %2353, align 8
  store %union.rec* %2354, %union.rec** @zz_hold, align 8
  store %union.rec* %2354, %union.rec** @zz_hold, align 8
  %2355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2356 = bitcast %union.rec* %2355 to %struct.word_type*
  %2357 = getelementptr inbounds %struct.word_type, %struct.word_type* %2356, i32 0, i32 0
  %2358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2357, i32 0, i64 0
  %2359 = getelementptr inbounds %struct.LIST, %struct.LIST* %2358, i32 0, i32 0
  %2360 = load %union.rec*, %union.rec** %2359, align 8
  %2361 = load i32, i32* @zz_size, align 4
  %2362 = sext i32 %2361 to i64
  %2363 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2362
  store %union.rec* %2360, %union.rec** %2363, align 8
  br label %2364

; <label>:2364                                    ; preds = %2350, %2346
  br label %2365

; <label>:2365                                    ; preds = %2364, %2337
  %2366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2367 = bitcast %union.rec* %2366 to %struct.word_type*
  %2368 = getelementptr inbounds %struct.word_type, %struct.word_type* %2367, i32 0, i32 1
  %2369 = bitcast %union.FIRST_UNION* %2368 to %struct.anon*
  %2370 = getelementptr inbounds %struct.anon, %struct.anon* %2369, i32 0, i32 0
  store i8 0, i8* %2370, align 1
  %2371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2373 = bitcast %union.rec* %2372 to %struct.word_type*
  %2374 = getelementptr inbounds %struct.word_type, %struct.word_type* %2373, i32 0, i32 0
  %2375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2374, i32 0, i64 1
  %2376 = getelementptr inbounds %struct.LIST, %struct.LIST* %2375, i32 0, i32 1
  store %union.rec* %2371, %union.rec** %2376, align 8
  %2377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2378 = bitcast %union.rec* %2377 to %struct.word_type*
  %2379 = getelementptr inbounds %struct.word_type, %struct.word_type* %2378, i32 0, i32 0
  %2380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2379, i32 0, i64 1
  %2381 = getelementptr inbounds %struct.LIST, %struct.LIST* %2380, i32 0, i32 0
  store %union.rec* %2371, %union.rec** %2381, align 8
  %2382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2383 = bitcast %union.rec* %2382 to %struct.word_type*
  %2384 = getelementptr inbounds %struct.word_type, %struct.word_type* %2383, i32 0, i32 0
  %2385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2384, i32 0, i64 0
  %2386 = getelementptr inbounds %struct.LIST, %struct.LIST* %2385, i32 0, i32 1
  store %union.rec* %2371, %union.rec** %2386, align 8
  %2387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2388 = bitcast %union.rec* %2387 to %struct.word_type*
  %2389 = getelementptr inbounds %struct.word_type, %struct.word_type* %2388, i32 0, i32 0
  %2390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2389, i32 0, i64 0
  %2391 = getelementptr inbounds %struct.LIST, %struct.LIST* %2390, i32 0, i32 0
  store %union.rec* %2371, %union.rec** %2391, align 8
  store %union.rec* %2371, %union.rec** @xx_link, align 8
  %2392 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2392, %union.rec** @zz_res, align 8
  %2393 = load %union.rec*, %union.rec** %res, align 8
  %2394 = bitcast %union.rec* %2393 to %struct.word_type*
  %2395 = getelementptr inbounds %struct.word_type, %struct.word_type* %2394, i32 0, i32 0
  %2396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2395, i32 0, i64 0
  %2397 = getelementptr inbounds %struct.LIST, %struct.LIST* %2396, i32 0, i32 1
  %2398 = load %union.rec*, %union.rec** %2397, align 8
  store %union.rec* %2398, %union.rec** @zz_hold, align 8
  %2399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2400 = icmp eq %union.rec* %2399, null
  br i1 %2400, label %2401, label %2403

; <label>:2401                                    ; preds = %2365
  %2402 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2451

; <label>:2403                                    ; preds = %2365
  %2404 = load %union.rec*, %union.rec** @zz_res, align 8
  %2405 = icmp eq %union.rec* %2404, null
  br i1 %2405, label %2406, label %2408

; <label>:2406                                    ; preds = %2403
  %2407 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2449

; <label>:2408                                    ; preds = %2403
  %2409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2410 = bitcast %union.rec* %2409 to %struct.word_type*
  %2411 = getelementptr inbounds %struct.word_type, %struct.word_type* %2410, i32 0, i32 0
  %2412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2411, i32 0, i64 0
  %2413 = getelementptr inbounds %struct.LIST, %struct.LIST* %2412, i32 0, i32 0
  %2414 = load %union.rec*, %union.rec** %2413, align 8
  store %union.rec* %2414, %union.rec** @zz_tmp, align 8
  %2415 = load %union.rec*, %union.rec** @zz_res, align 8
  %2416 = bitcast %union.rec* %2415 to %struct.word_type*
  %2417 = getelementptr inbounds %struct.word_type, %struct.word_type* %2416, i32 0, i32 0
  %2418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2417, i32 0, i64 0
  %2419 = getelementptr inbounds %struct.LIST, %struct.LIST* %2418, i32 0, i32 0
  %2420 = load %union.rec*, %union.rec** %2419, align 8
  %2421 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2422 = bitcast %union.rec* %2421 to %struct.word_type*
  %2423 = getelementptr inbounds %struct.word_type, %struct.word_type* %2422, i32 0, i32 0
  %2424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2423, i32 0, i64 0
  %2425 = getelementptr inbounds %struct.LIST, %struct.LIST* %2424, i32 0, i32 0
  store %union.rec* %2420, %union.rec** %2425, align 8
  %2426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2427 = load %union.rec*, %union.rec** @zz_res, align 8
  %2428 = bitcast %union.rec* %2427 to %struct.word_type*
  %2429 = getelementptr inbounds %struct.word_type, %struct.word_type* %2428, i32 0, i32 0
  %2430 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2429, i32 0, i64 0
  %2431 = getelementptr inbounds %struct.LIST, %struct.LIST* %2430, i32 0, i32 0
  %2432 = load %union.rec*, %union.rec** %2431, align 8
  %2433 = bitcast %union.rec* %2432 to %struct.word_type*
  %2434 = getelementptr inbounds %struct.word_type, %struct.word_type* %2433, i32 0, i32 0
  %2435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2434, i32 0, i64 0
  %2436 = getelementptr inbounds %struct.LIST, %struct.LIST* %2435, i32 0, i32 1
  store %union.rec* %2426, %union.rec** %2436, align 8
  %2437 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2438 = load %union.rec*, %union.rec** @zz_res, align 8
  %2439 = bitcast %union.rec* %2438 to %struct.word_type*
  %2440 = getelementptr inbounds %struct.word_type, %struct.word_type* %2439, i32 0, i32 0
  %2441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2440, i32 0, i64 0
  %2442 = getelementptr inbounds %struct.LIST, %struct.LIST* %2441, i32 0, i32 0
  store %union.rec* %2437, %union.rec** %2442, align 8
  %2443 = load %union.rec*, %union.rec** @zz_res, align 8
  %2444 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2445 = bitcast %union.rec* %2444 to %struct.word_type*
  %2446 = getelementptr inbounds %struct.word_type, %struct.word_type* %2445, i32 0, i32 0
  %2447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2446, i32 0, i64 0
  %2448 = getelementptr inbounds %struct.LIST, %struct.LIST* %2447, i32 0, i32 1
  store %union.rec* %2443, %union.rec** %2448, align 8
  br label %2449

; <label>:2449                                    ; preds = %2408, %2406
  %2450 = phi %union.rec* [ %2407, %2406 ], [ %2443, %2408 ]
  br label %2451

; <label>:2451                                    ; preds = %2449, %2401
  %2452 = phi %union.rec* [ %2402, %2401 ], [ %2450, %2449 ]
  %2453 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2453, %union.rec** @zz_res, align 8
  %2454 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %2454, %union.rec** @zz_hold, align 8
  %2455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2456 = icmp eq %union.rec* %2455, null
  br i1 %2456, label %2457, label %2459

; <label>:2457                                    ; preds = %2451
  %2458 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2507

; <label>:2459                                    ; preds = %2451
  %2460 = load %union.rec*, %union.rec** @zz_res, align 8
  %2461 = icmp eq %union.rec* %2460, null
  br i1 %2461, label %2462, label %2464

; <label>:2462                                    ; preds = %2459
  %2463 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2505

; <label>:2464                                    ; preds = %2459
  %2465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2466 = bitcast %union.rec* %2465 to %struct.word_type*
  %2467 = getelementptr inbounds %struct.word_type, %struct.word_type* %2466, i32 0, i32 0
  %2468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2467, i32 0, i64 1
  %2469 = getelementptr inbounds %struct.LIST, %struct.LIST* %2468, i32 0, i32 0
  %2470 = load %union.rec*, %union.rec** %2469, align 8
  store %union.rec* %2470, %union.rec** @zz_tmp, align 8
  %2471 = load %union.rec*, %union.rec** @zz_res, align 8
  %2472 = bitcast %union.rec* %2471 to %struct.word_type*
  %2473 = getelementptr inbounds %struct.word_type, %struct.word_type* %2472, i32 0, i32 0
  %2474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2473, i32 0, i64 1
  %2475 = getelementptr inbounds %struct.LIST, %struct.LIST* %2474, i32 0, i32 0
  %2476 = load %union.rec*, %union.rec** %2475, align 8
  %2477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2478 = bitcast %union.rec* %2477 to %struct.word_type*
  %2479 = getelementptr inbounds %struct.word_type, %struct.word_type* %2478, i32 0, i32 0
  %2480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2479, i32 0, i64 1
  %2481 = getelementptr inbounds %struct.LIST, %struct.LIST* %2480, i32 0, i32 0
  store %union.rec* %2476, %union.rec** %2481, align 8
  %2482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2483 = load %union.rec*, %union.rec** @zz_res, align 8
  %2484 = bitcast %union.rec* %2483 to %struct.word_type*
  %2485 = getelementptr inbounds %struct.word_type, %struct.word_type* %2484, i32 0, i32 0
  %2486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2485, i32 0, i64 1
  %2487 = getelementptr inbounds %struct.LIST, %struct.LIST* %2486, i32 0, i32 0
  %2488 = load %union.rec*, %union.rec** %2487, align 8
  %2489 = bitcast %union.rec* %2488 to %struct.word_type*
  %2490 = getelementptr inbounds %struct.word_type, %struct.word_type* %2489, i32 0, i32 0
  %2491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2490, i32 0, i64 1
  %2492 = getelementptr inbounds %struct.LIST, %struct.LIST* %2491, i32 0, i32 1
  store %union.rec* %2482, %union.rec** %2492, align 8
  %2493 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2494 = load %union.rec*, %union.rec** @zz_res, align 8
  %2495 = bitcast %union.rec* %2494 to %struct.word_type*
  %2496 = getelementptr inbounds %struct.word_type, %struct.word_type* %2495, i32 0, i32 0
  %2497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2496, i32 0, i64 1
  %2498 = getelementptr inbounds %struct.LIST, %struct.LIST* %2497, i32 0, i32 0
  store %union.rec* %2493, %union.rec** %2498, align 8
  %2499 = load %union.rec*, %union.rec** @zz_res, align 8
  %2500 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2501 = bitcast %union.rec* %2500 to %struct.word_type*
  %2502 = getelementptr inbounds %struct.word_type, %struct.word_type* %2501, i32 0, i32 0
  %2503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2502, i32 0, i64 1
  %2504 = getelementptr inbounds %struct.LIST, %struct.LIST* %2503, i32 0, i32 1
  store %union.rec* %2499, %union.rec** %2504, align 8
  br label %2505

; <label>:2505                                    ; preds = %2464, %2462
  %2506 = phi %union.rec* [ %2463, %2462 ], [ %2499, %2464 ]
  br label %2507

; <label>:2507                                    ; preds = %2505, %2457
  %2508 = phi %union.rec* [ %2458, %2457 ], [ %2506, %2505 ]
  br label %2703

; <label>:2509                                    ; preds = %2004
  %2510 = load %union.rec*, %union.rec** %g, align 8
  %2511 = bitcast %union.rec* %2510 to %struct.word_type*
  %2512 = getelementptr inbounds %struct.word_type, %struct.word_type* %2511, i32 0, i32 0
  %2513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2512, i32 0, i64 1
  %2514 = getelementptr inbounds %struct.LIST, %struct.LIST* %2513, i32 0, i32 1
  %2515 = load %union.rec*, %union.rec** %2514, align 8
  %2516 = load %union.rec*, %union.rec** %g, align 8
  %2517 = bitcast %union.rec* %2516 to %struct.word_type*
  %2518 = getelementptr inbounds %struct.word_type, %struct.word_type* %2517, i32 0, i32 0
  %2519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2518, i32 0, i64 1
  %2520 = getelementptr inbounds %struct.LIST, %struct.LIST* %2519, i32 0, i32 0
  %2521 = load %union.rec*, %union.rec** %2520, align 8
  %2522 = icmp eq %union.rec* %2515, %2521
  br i1 %2522, label %2526, label %2523

; <label>:2523                                    ; preds = %2509
  %2524 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2525 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2524, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.15, i32 0, i32 0))
  br label %2526

; <label>:2526                                    ; preds = %2523, %2509
  %2527 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2528 = zext i8 %2527 to i32
  store i32 %2528, i32* @zz_size, align 4
  %2529 = sext i32 %2528 to i64
  %2530 = icmp uge i64 %2529, 265
  br i1 %2530, label %2531, label %2534

; <label>:2531                                    ; preds = %2526
  %2532 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2533 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %2532)
  br label %2559

; <label>:2534                                    ; preds = %2526
  %2535 = load i32, i32* @zz_size, align 4
  %2536 = sext i32 %2535 to i64
  %2537 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2536
  %2538 = load %union.rec*, %union.rec** %2537, align 8
  %2539 = icmp eq %union.rec* %2538, null
  br i1 %2539, label %2540, label %2544

; <label>:2540                                    ; preds = %2534
  %2541 = load i32, i32* @zz_size, align 4
  %2542 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2543 = call %union.rec* @GetMemory(i32 %2541, %struct.FILE_POS* %2542)
  store %union.rec* %2543, %union.rec** @zz_hold, align 8
  br label %2558

; <label>:2544                                    ; preds = %2534
  %2545 = load i32, i32* @zz_size, align 4
  %2546 = sext i32 %2545 to i64
  %2547 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2546
  %2548 = load %union.rec*, %union.rec** %2547, align 8
  store %union.rec* %2548, %union.rec** @zz_hold, align 8
  store %union.rec* %2548, %union.rec** @zz_hold, align 8
  %2549 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2550 = bitcast %union.rec* %2549 to %struct.word_type*
  %2551 = getelementptr inbounds %struct.word_type, %struct.word_type* %2550, i32 0, i32 0
  %2552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2551, i32 0, i64 0
  %2553 = getelementptr inbounds %struct.LIST, %struct.LIST* %2552, i32 0, i32 0
  %2554 = load %union.rec*, %union.rec** %2553, align 8
  %2555 = load i32, i32* @zz_size, align 4
  %2556 = sext i32 %2555 to i64
  %2557 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2556
  store %union.rec* %2554, %union.rec** %2557, align 8
  br label %2558

; <label>:2558                                    ; preds = %2544, %2540
  br label %2559

; <label>:2559                                    ; preds = %2558, %2531
  %2560 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2561 = bitcast %union.rec* %2560 to %struct.word_type*
  %2562 = getelementptr inbounds %struct.word_type, %struct.word_type* %2561, i32 0, i32 1
  %2563 = bitcast %union.FIRST_UNION* %2562 to %struct.anon*
  %2564 = getelementptr inbounds %struct.anon, %struct.anon* %2563, i32 0, i32 0
  store i8 0, i8* %2564, align 1
  %2565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2567 = bitcast %union.rec* %2566 to %struct.word_type*
  %2568 = getelementptr inbounds %struct.word_type, %struct.word_type* %2567, i32 0, i32 0
  %2569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2568, i32 0, i64 1
  %2570 = getelementptr inbounds %struct.LIST, %struct.LIST* %2569, i32 0, i32 1
  store %union.rec* %2565, %union.rec** %2570, align 8
  %2571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2572 = bitcast %union.rec* %2571 to %struct.word_type*
  %2573 = getelementptr inbounds %struct.word_type, %struct.word_type* %2572, i32 0, i32 0
  %2574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2573, i32 0, i64 1
  %2575 = getelementptr inbounds %struct.LIST, %struct.LIST* %2574, i32 0, i32 0
  store %union.rec* %2565, %union.rec** %2575, align 8
  %2576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2577 = bitcast %union.rec* %2576 to %struct.word_type*
  %2578 = getelementptr inbounds %struct.word_type, %struct.word_type* %2577, i32 0, i32 0
  %2579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2578, i32 0, i64 0
  %2580 = getelementptr inbounds %struct.LIST, %struct.LIST* %2579, i32 0, i32 1
  store %union.rec* %2565, %union.rec** %2580, align 8
  %2581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2582 = bitcast %union.rec* %2581 to %struct.word_type*
  %2583 = getelementptr inbounds %struct.word_type, %struct.word_type* %2582, i32 0, i32 0
  %2584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2583, i32 0, i64 0
  %2585 = getelementptr inbounds %struct.LIST, %struct.LIST* %2584, i32 0, i32 0
  store %union.rec* %2565, %union.rec** %2585, align 8
  store %union.rec* %2565, %union.rec** @xx_link, align 8
  %2586 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2586, %union.rec** @zz_res, align 8
  %2587 = load %union.rec*, %union.rec** %res, align 8
  %2588 = bitcast %union.rec* %2587 to %struct.word_type*
  %2589 = getelementptr inbounds %struct.word_type, %struct.word_type* %2588, i32 0, i32 0
  %2590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2589, i32 0, i64 0
  %2591 = getelementptr inbounds %struct.LIST, %struct.LIST* %2590, i32 0, i32 1
  %2592 = load %union.rec*, %union.rec** %2591, align 8
  store %union.rec* %2592, %union.rec** @zz_hold, align 8
  %2593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2594 = icmp eq %union.rec* %2593, null
  br i1 %2594, label %2595, label %2597

; <label>:2595                                    ; preds = %2559
  %2596 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2645

; <label>:2597                                    ; preds = %2559
  %2598 = load %union.rec*, %union.rec** @zz_res, align 8
  %2599 = icmp eq %union.rec* %2598, null
  br i1 %2599, label %2600, label %2602

; <label>:2600                                    ; preds = %2597
  %2601 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2643

; <label>:2602                                    ; preds = %2597
  %2603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2604 = bitcast %union.rec* %2603 to %struct.word_type*
  %2605 = getelementptr inbounds %struct.word_type, %struct.word_type* %2604, i32 0, i32 0
  %2606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2605, i32 0, i64 0
  %2607 = getelementptr inbounds %struct.LIST, %struct.LIST* %2606, i32 0, i32 0
  %2608 = load %union.rec*, %union.rec** %2607, align 8
  store %union.rec* %2608, %union.rec** @zz_tmp, align 8
  %2609 = load %union.rec*, %union.rec** @zz_res, align 8
  %2610 = bitcast %union.rec* %2609 to %struct.word_type*
  %2611 = getelementptr inbounds %struct.word_type, %struct.word_type* %2610, i32 0, i32 0
  %2612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2611, i32 0, i64 0
  %2613 = getelementptr inbounds %struct.LIST, %struct.LIST* %2612, i32 0, i32 0
  %2614 = load %union.rec*, %union.rec** %2613, align 8
  %2615 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2616 = bitcast %union.rec* %2615 to %struct.word_type*
  %2617 = getelementptr inbounds %struct.word_type, %struct.word_type* %2616, i32 0, i32 0
  %2618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2617, i32 0, i64 0
  %2619 = getelementptr inbounds %struct.LIST, %struct.LIST* %2618, i32 0, i32 0
  store %union.rec* %2614, %union.rec** %2619, align 8
  %2620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2621 = load %union.rec*, %union.rec** @zz_res, align 8
  %2622 = bitcast %union.rec* %2621 to %struct.word_type*
  %2623 = getelementptr inbounds %struct.word_type, %struct.word_type* %2622, i32 0, i32 0
  %2624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2623, i32 0, i64 0
  %2625 = getelementptr inbounds %struct.LIST, %struct.LIST* %2624, i32 0, i32 0
  %2626 = load %union.rec*, %union.rec** %2625, align 8
  %2627 = bitcast %union.rec* %2626 to %struct.word_type*
  %2628 = getelementptr inbounds %struct.word_type, %struct.word_type* %2627, i32 0, i32 0
  %2629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2628, i32 0, i64 0
  %2630 = getelementptr inbounds %struct.LIST, %struct.LIST* %2629, i32 0, i32 1
  store %union.rec* %2620, %union.rec** %2630, align 8
  %2631 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2632 = load %union.rec*, %union.rec** @zz_res, align 8
  %2633 = bitcast %union.rec* %2632 to %struct.word_type*
  %2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %2633, i32 0, i32 0
  %2635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2634, i32 0, i64 0
  %2636 = getelementptr inbounds %struct.LIST, %struct.LIST* %2635, i32 0, i32 0
  store %union.rec* %2631, %union.rec** %2636, align 8
  %2637 = load %union.rec*, %union.rec** @zz_res, align 8
  %2638 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2639 = bitcast %union.rec* %2638 to %struct.word_type*
  %2640 = getelementptr inbounds %struct.word_type, %struct.word_type* %2639, i32 0, i32 0
  %2641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2640, i32 0, i64 0
  %2642 = getelementptr inbounds %struct.LIST, %struct.LIST* %2641, i32 0, i32 1
  store %union.rec* %2637, %union.rec** %2642, align 8
  br label %2643

; <label>:2643                                    ; preds = %2602, %2600
  %2644 = phi %union.rec* [ %2601, %2600 ], [ %2637, %2602 ]
  br label %2645

; <label>:2645                                    ; preds = %2643, %2595
  %2646 = phi %union.rec* [ %2596, %2595 ], [ %2644, %2643 ]
  %2647 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2647, %union.rec** @zz_res, align 8
  %2648 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %2648, %union.rec** @zz_hold, align 8
  %2649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2650 = icmp eq %union.rec* %2649, null
  br i1 %2650, label %2651, label %2653

; <label>:2651                                    ; preds = %2645
  %2652 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2701

; <label>:2653                                    ; preds = %2645
  %2654 = load %union.rec*, %union.rec** @zz_res, align 8
  %2655 = icmp eq %union.rec* %2654, null
  br i1 %2655, label %2656, label %2658

; <label>:2656                                    ; preds = %2653
  %2657 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2699

; <label>:2658                                    ; preds = %2653
  %2659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2660 = bitcast %union.rec* %2659 to %struct.word_type*
  %2661 = getelementptr inbounds %struct.word_type, %struct.word_type* %2660, i32 0, i32 0
  %2662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2661, i32 0, i64 1
  %2663 = getelementptr inbounds %struct.LIST, %struct.LIST* %2662, i32 0, i32 0
  %2664 = load %union.rec*, %union.rec** %2663, align 8
  store %union.rec* %2664, %union.rec** @zz_tmp, align 8
  %2665 = load %union.rec*, %union.rec** @zz_res, align 8
  %2666 = bitcast %union.rec* %2665 to %struct.word_type*
  %2667 = getelementptr inbounds %struct.word_type, %struct.word_type* %2666, i32 0, i32 0
  %2668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2667, i32 0, i64 1
  %2669 = getelementptr inbounds %struct.LIST, %struct.LIST* %2668, i32 0, i32 0
  %2670 = load %union.rec*, %union.rec** %2669, align 8
  %2671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2672 = bitcast %union.rec* %2671 to %struct.word_type*
  %2673 = getelementptr inbounds %struct.word_type, %struct.word_type* %2672, i32 0, i32 0
  %2674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2673, i32 0, i64 1
  %2675 = getelementptr inbounds %struct.LIST, %struct.LIST* %2674, i32 0, i32 0
  store %union.rec* %2670, %union.rec** %2675, align 8
  %2676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2677 = load %union.rec*, %union.rec** @zz_res, align 8
  %2678 = bitcast %union.rec* %2677 to %struct.word_type*
  %2679 = getelementptr inbounds %struct.word_type, %struct.word_type* %2678, i32 0, i32 0
  %2680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2679, i32 0, i64 1
  %2681 = getelementptr inbounds %struct.LIST, %struct.LIST* %2680, i32 0, i32 0
  %2682 = load %union.rec*, %union.rec** %2681, align 8
  %2683 = bitcast %union.rec* %2682 to %struct.word_type*
  %2684 = getelementptr inbounds %struct.word_type, %struct.word_type* %2683, i32 0, i32 0
  %2685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2684, i32 0, i64 1
  %2686 = getelementptr inbounds %struct.LIST, %struct.LIST* %2685, i32 0, i32 1
  store %union.rec* %2676, %union.rec** %2686, align 8
  %2687 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2688 = load %union.rec*, %union.rec** @zz_res, align 8
  %2689 = bitcast %union.rec* %2688 to %struct.word_type*
  %2690 = getelementptr inbounds %struct.word_type, %struct.word_type* %2689, i32 0, i32 0
  %2691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2690, i32 0, i64 1
  %2692 = getelementptr inbounds %struct.LIST, %struct.LIST* %2691, i32 0, i32 0
  store %union.rec* %2687, %union.rec** %2692, align 8
  %2693 = load %union.rec*, %union.rec** @zz_res, align 8
  %2694 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2695 = bitcast %union.rec* %2694 to %struct.word_type*
  %2696 = getelementptr inbounds %struct.word_type, %struct.word_type* %2695, i32 0, i32 0
  %2697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2696, i32 0, i64 1
  %2698 = getelementptr inbounds %struct.LIST, %struct.LIST* %2697, i32 0, i32 1
  store %union.rec* %2693, %union.rec** %2698, align 8
  br label %2699

; <label>:2699                                    ; preds = %2658, %2656
  %2700 = phi %union.rec* [ %2657, %2656 ], [ %2693, %2658 ]
  br label %2701

; <label>:2701                                    ; preds = %2699, %2651
  %2702 = phi %union.rec* [ %2652, %2651 ], [ %2700, %2699 ]
  br label %2703

; <label>:2703                                    ; preds = %2701, %2507
  br label %2704

; <label>:2704                                    ; preds = %2703, %1994
  br label %1415

; <label>:2705                                    ; preds = %1415
  %2706 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %2706
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
