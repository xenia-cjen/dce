; ModuleID = 'z11.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.STYLE = type { %union.anon, %union.anon.0, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.0 = type { %struct.GAP }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.4 }
%struct.anon.4 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.2 = type { i8, i8, i32 }
%struct.anon = type { i8, [3 x i8] }
%struct.anon.1 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"invalid left parameter of %s\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.4 = private unnamed_addr constant [37 x i8] c"this unit not allowed with %s symbol\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.8 = private unnamed_addr constant [22 x i8] c"changespace: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c"compress\00", align 1
@.str.11 = private unnamed_addr constant [9 x i8] c"separate\00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"troff\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"tex\00", align 1
@.str.14 = private unnamed_addr constant [33 x i8] c"unknown option to %s symbol (%s)\00", align 1
@.str.15 = private unnamed_addr constant [50 x i8] c"spacing %s is not compatible with current spacing\00", align 1
@.str.16 = private unnamed_addr constant [7 x i8] c"hyphen\00", align 1
@.str.17 = private unnamed_addr constant [9 x i8] c"nohyphen\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"adjust\00", align 1
@.str.19 = private unnamed_addr constant [8 x i8] c"outdent\00", align 1
@.str.20 = private unnamed_addr constant [7 x i8] c"ragged\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"cragged\00", align 1
@.str.22 = private unnamed_addr constant [8 x i8] c"rragged\00", align 1
@.str.23 = private unnamed_addr constant [8 x i8] c"oragged\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"lines\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"clines\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"rlines\00", align 1
@.str.27 = private unnamed_addr constant [17 x i8] c"unbreakablefirst\00", align 1
@.str.28 = private unnamed_addr constant [15 x i8] c"breakablefirst\00", align 1
@.str.29 = private unnamed_addr constant [16 x i8] c"unbreakablelast\00", align 1
@.str.30 = private unnamed_addr constant [14 x i8] c"breakablelast\00", align 1
@.str.31 = private unnamed_addr constant [55 x i8] c"line spacing %s is not compatible with current spacing\00", align 1

; Function Attrs: nounwind uwtable
define void @SpaceChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon.2*
  %7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  switch i32 %9, label %121 [
    i32 5, label %10
    i32 11, label %11
    i32 12, label %11
    i32 17, label %22
  ]

; <label>:10                                      ; preds = %0
  br label %127

; <label>:11                                      ; preds = %0, %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 4
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i32 0, i32 0
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %11
  %19 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %20 = load %union.rec*, %union.rec** %2, align 8
  call void @changespace(%struct.STYLE* %19, %union.rec* %20)
  br label %21

; <label>:21                                      ; preds = %18, %11
  br label %127

; <label>:22                                      ; preds = %0
  %23 = load %union.rec*, %union.rec** %2, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %27, align 8
  store %union.rec* %28, %union.rec** %link, align 8
  br label %29

; <label>:29                                      ; preds = %113, %22
  %30 = load %union.rec*, %union.rec** %link, align 8
  %31 = load %union.rec*, %union.rec** %2, align 8
  %32 = icmp ne %union.rec* %30, %31
  br i1 %32, label %33, label %120

; <label>:33                                      ; preds = %29
  %34 = load %union.rec*, %union.rec** %link, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 1
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %38, align 8
  store %union.rec* %39, %union.rec** %y, align 8
  br label %40

; <label>:40                                      ; preds = %50, %33
  %41 = load %union.rec*, %union.rec** %y, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 1
  %44 = bitcast %union.FIRST_UNION* %43 to %struct.anon.2*
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

; <label>:49                                      ; preds = %40
  br label %50

; <label>:50                                      ; preds = %49
  %51 = load %union.rec*, %union.rec** %y, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %55, align 8
  store %union.rec* %56, %union.rec** %y, align 8
  br label %40

; <label>:57                                      ; preds = %40
  %58 = load %union.rec*, %union.rec** %y, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 1
  %61 = bitcast %union.FIRST_UNION* %60 to %struct.anon.2*
  %62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %75, label %66

; <label>:66                                      ; preds = %57
  %67 = load %union.rec*, %union.rec** %y, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon.2*
  %71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %66, %57
  br label %113

; <label>:76                                      ; preds = %66
  %77 = load %union.rec*, %union.rec** %y, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon.2*
  %81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 11
  br i1 %84, label %94, label %85

; <label>:85                                      ; preds = %76
  %86 = load %union.rec*, %union.rec** %y, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.anon.2*
  %90 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 12
  br i1 %93, label %94, label %105

; <label>:94                                      ; preds = %85, %76
  %95 = load %union.rec*, %union.rec** %y, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 4
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %97, i32 0, i32 0
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

; <label>:101                                     ; preds = %94
  %102 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %103 = load %union.rec*, %union.rec** %y, align 8
  call void @changespace(%struct.STYLE* %102, %union.rec* %103)
  br label %104

; <label>:104                                     ; preds = %101, %94
  br label %111

; <label>:105                                     ; preds = %85
  %106 = load %union.rec*, %union.rec** %2, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 1
  %109 = bitcast %union.FIRST_UNION* %108 to %struct.FILE_POS*
  %110 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  br label %111

; <label>:111                                     ; preds = %105, %104
  br label %112

; <label>:112                                     ; preds = %111
  br label %113

; <label>:113                                     ; preds = %112, %75
  %114 = load %union.rec*, %union.rec** %link, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 0
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 1
  %119 = load %union.rec*, %union.rec** %118, align 8
  store %union.rec* %119, %union.rec** %link, align 8
  br label %29

; <label>:120                                     ; preds = %29
  br label %127

; <label>:121                                     ; preds = %0
  %122 = load %union.rec*, %union.rec** %2, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 1
  %125 = bitcast %union.FIRST_UNION* %124 to %struct.FILE_POS*
  %126 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 4, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0))
  br label %127

; <label>:127                                     ; preds = %121, %120, %21, %10
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal void @changespace(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon.2*
  %7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %23, label %11

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon.2*
  %16 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %11
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.8, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %20, %11, %0
  %24 = load %union.rec*, %union.rec** %2, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 4
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i32 0, i64 0
  %28 = load i8, i8* %27, align 1
  %29 = zext i8 %28 to i32
  %30 = icmp sge i32 %29, 97
  br i1 %30, label %31, label %128

; <label>:31                                      ; preds = %23
  %32 = load %union.rec*, %union.rec** %2, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 4
  %35 = getelementptr inbounds [4 x i8], [4 x i8]* %34, i32 0, i64 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sle i32 %37, 122
  br i1 %38, label %39, label %128

; <label>:39                                      ; preds = %31
  %40 = load %union.rec*, %union.rec** %2, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 4
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %42, i32 0, i32 0
  %44 = call i32 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #3
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

; <label>:46                                      ; preds = %39
  %47 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %48 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %47, i32 0, i32 0
  %49 = bitcast %union.anon* %48 to %struct.anon*
  %50 = bitcast %struct.anon* %49 to i8*
  %51 = load i8, i8* %50, align 4
  %52 = and i8 %51, -113
  store i8 %52, i8* %50, align 4
  br label %127

; <label>:53                                      ; preds = %39
  %54 = load %union.rec*, %union.rec** %2, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 4
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %56, i32 0, i32 0
  %58 = call i32 @strcmp(i8* %57, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.10, i32 0, i32 0)) #3
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

; <label>:60                                      ; preds = %53
  %61 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %62 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %61, i32 0, i32 0
  %63 = bitcast %union.anon* %62 to %struct.anon*
  %64 = bitcast %struct.anon* %63 to i8*
  %65 = load i8, i8* %64, align 4
  %66 = and i8 %65, -113
  %67 = or i8 %66, 16
  store i8 %67, i8* %64, align 4
  br label %126

; <label>:68                                      ; preds = %53
  %69 = load %union.rec*, %union.rec** %2, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 4
  %72 = getelementptr inbounds [4 x i8], [4 x i8]* %71, i32 0, i32 0
  %73 = call i32 @strcmp(i8* %72, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i32 0, i32 0)) #3
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %83

; <label>:75                                      ; preds = %68
  %76 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %77 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %76, i32 0, i32 0
  %78 = bitcast %union.anon* %77 to %struct.anon*
  %79 = bitcast %struct.anon* %78 to i8*
  %80 = load i8, i8* %79, align 4
  %81 = and i8 %80, -113
  %82 = or i8 %81, 32
  store i8 %82, i8* %79, align 4
  br label %125

; <label>:83                                      ; preds = %68
  %84 = load %union.rec*, %union.rec** %2, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 4
  %87 = getelementptr inbounds [4 x i8], [4 x i8]* %86, i32 0, i32 0
  %88 = call i32 @strcmp(i8* %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %98

; <label>:90                                      ; preds = %83
  %91 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %92 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %91, i32 0, i32 0
  %93 = bitcast %union.anon* %92 to %struct.anon*
  %94 = bitcast %struct.anon* %93 to i8*
  %95 = load i8, i8* %94, align 4
  %96 = and i8 %95, -113
  %97 = or i8 %96, 48
  store i8 %97, i8* %94, align 4
  br label %124

; <label>:98                                      ; preds = %83
  %99 = load %union.rec*, %union.rec** %2, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 4
  %102 = getelementptr inbounds [4 x i8], [4 x i8]* %101, i32 0, i32 0
  %103 = call i32 @strcmp(i8* %102, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.13, i32 0, i32 0)) #3
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

; <label>:105                                     ; preds = %98
  %106 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %107 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %106, i32 0, i32 0
  %108 = bitcast %union.anon* %107 to %struct.anon*
  %109 = bitcast %struct.anon* %108 to i8*
  %110 = load i8, i8* %109, align 4
  %111 = and i8 %110, -113
  %112 = or i8 %111, 64
  store i8 %112, i8* %109, align 4
  br label %123

; <label>:113                                     ; preds = %98
  %114 = load %union.rec*, %union.rec** %2, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 1
  %117 = bitcast %union.FIRST_UNION* %116 to %struct.FILE_POS*
  %118 = load %union.rec*, %union.rec** %2, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 4
  %121 = getelementptr inbounds [4 x i8], [4 x i8]* %120, i32 0, i32 0
  %122 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 1, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* %121)
  br label %123

; <label>:123                                     ; preds = %113, %105
  br label %124

; <label>:124                                     ; preds = %123, %90
  br label %125

; <label>:125                                     ; preds = %124, %75
  br label %126

; <label>:126                                     ; preds = %125, %60
  br label %127

; <label>:127                                     ; preds = %126, %46
  br label %246

; <label>:128                                     ; preds = %31, %23
  %129 = load %union.rec*, %union.rec** %2, align 8
  %130 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  call void @GetGap(%union.rec* %129, %struct.STYLE* %130, %struct.GAP* %res_gap, i32* %gap_inc)
  %131 = load i32, i32* %gap_inc, align 4
  %132 = icmp ne i32 %131, 158
  br i1 %132, label %133, label %158

; <label>:133                                     ; preds = %128
  %134 = bitcast %struct.GAP* %res_gap to i16*
  %135 = load i16, i16* %134, align 4
  %136 = lshr i16 %135, 10
  %137 = and i16 %136, 7
  %138 = zext i16 %137 to i32
  %139 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %140 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %139, i32 0, i32 1
  %141 = bitcast %union.anon.0* %140 to %struct.GAP*
  %142 = bitcast %struct.GAP* %141 to i16*
  %143 = load i16, i16* %142, align 4
  %144 = lshr i16 %143, 10
  %145 = and i16 %144, 7
  %146 = zext i16 %145 to i32
  %147 = icmp ne i32 %138, %146
  br i1 %147, label %148, label %158

; <label>:148                                     ; preds = %133
  %149 = load %union.rec*, %union.rec** %2, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 1
  %152 = bitcast %union.FIRST_UNION* %151 to %struct.FILE_POS*
  %153 = load %union.rec*, %union.rec** %2, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 4
  %156 = getelementptr inbounds [4 x i8], [4 x i8]* %155, i32 0, i32 0
  %157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %152, i8* %156)
  br label %245

; <label>:158                                     ; preds = %133, %128
  %159 = bitcast %struct.GAP* %res_gap to i16*
  %160 = load i16, i16* %159, align 4
  %161 = lshr i16 %160, 10
  %162 = and i16 %161, 7
  %163 = zext i16 %162 to i32
  %164 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %165 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %164, i32 0, i32 1
  %166 = bitcast %union.anon.0* %165 to %struct.GAP*
  %167 = bitcast %struct.GAP* %166 to i16*
  %168 = trunc i32 %163 to i16
  %169 = load i16, i16* %167, align 4
  %170 = and i16 %168, 7
  %171 = shl i16 %170, 10
  %172 = and i16 %169, -7169
  %173 = or i16 %172, %171
  store i16 %173, i16* %167, align 4
  %174 = zext i16 %170 to i32
  %175 = bitcast %struct.GAP* %res_gap to i16*
  %176 = load i16, i16* %175, align 4
  %177 = lshr i16 %176, 13
  %178 = zext i16 %177 to i32
  %179 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %180 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %179, i32 0, i32 1
  %181 = bitcast %union.anon.0* %180 to %struct.GAP*
  %182 = bitcast %struct.GAP* %181 to i16*
  %183 = trunc i32 %178 to i16
  %184 = load i16, i16* %182, align 4
  %185 = and i16 %183, 7
  %186 = shl i16 %185, 13
  %187 = and i16 %184, 8191
  %188 = or i16 %187, %186
  store i16 %188, i16* %182, align 4
  %189 = zext i16 %185 to i32
  %190 = load i32, i32* %gap_inc, align 4
  %191 = icmp eq i32 %190, 158
  br i1 %191, label %192, label %196

; <label>:192                                     ; preds = %158
  %193 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %194 = load i16, i16* %193, align 2
  %195 = sext i16 %194 to i32
  br label %238

; <label>:196                                     ; preds = %158
  %197 = load i32, i32* %gap_inc, align 4
  %198 = icmp eq i32 %197, 159
  br i1 %198, label %199, label %210

; <label>:199                                     ; preds = %196
  %200 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %201 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %200, i32 0, i32 1
  %202 = bitcast %union.anon.0* %201 to %struct.GAP*
  %203 = getelementptr inbounds %struct.GAP, %struct.GAP* %202, i32 0, i32 1
  %204 = load i16, i16* %203, align 2
  %205 = sext i16 %204 to i32
  %206 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %207 = load i16, i16* %206, align 2
  %208 = sext i16 %207 to i32
  %209 = add nsw i32 %205, %208
  br label %236

; <label>:210                                     ; preds = %196
  %211 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %212 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %211, i32 0, i32 1
  %213 = bitcast %union.anon.0* %212 to %struct.GAP*
  %214 = getelementptr inbounds %struct.GAP, %struct.GAP* %213, i32 0, i32 1
  %215 = load i16, i16* %214, align 2
  %216 = sext i16 %215 to i32
  %217 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %218 = load i16, i16* %217, align 2
  %219 = sext i16 %218 to i32
  %220 = sub nsw i32 %216, %219
  %221 = icmp slt i32 %220, 0
  br i1 %221, label %222, label %223

; <label>:222                                     ; preds = %210
  br label %234

; <label>:223                                     ; preds = %210
  %224 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %225 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %224, i32 0, i32 1
  %226 = bitcast %union.anon.0* %225 to %struct.GAP*
  %227 = getelementptr inbounds %struct.GAP, %struct.GAP* %226, i32 0, i32 1
  %228 = load i16, i16* %227, align 2
  %229 = sext i16 %228 to i32
  %230 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %231 = load i16, i16* %230, align 2
  %232 = sext i16 %231 to i32
  %233 = sub nsw i32 %229, %232
  br label %234

; <label>:234                                     ; preds = %223, %222
  %235 = phi i32 [ 0, %222 ], [ %233, %223 ]
  br label %236

; <label>:236                                     ; preds = %234, %199
  %237 = phi i32 [ %209, %199 ], [ %235, %234 ]
  br label %238

; <label>:238                                     ; preds = %236, %192
  %239 = phi i32 [ %195, %192 ], [ %237, %236 ]
  %240 = trunc i32 %239 to i16
  %241 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %242 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %241, i32 0, i32 1
  %243 = bitcast %union.anon.0* %242 to %struct.GAP*
  %244 = getelementptr inbounds %struct.GAP, %struct.GAP* %243, i32 0, i32 1
  store i16 %240, i16* %244, align 2
  br label %245

; <label>:245                                     ; preds = %238, %148
  br label %246

; <label>:246                                     ; preds = %245, %127
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind uwtable
define void @BreakChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon.2*
  %7 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  switch i32 %9, label %121 [
    i32 5, label %10
    i32 11, label %11
    i32 12, label %11
    i32 17, label %22
  ]

; <label>:10                                      ; preds = %0
  br label %127

; <label>:11                                      ; preds = %0, %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 4
  %15 = getelementptr inbounds [4 x i8], [4 x i8]* %14, i32 0, i32 0
  %16 = call i32 @strcmp(i8* %15, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %11
  %19 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %20 = load %union.rec*, %union.rec** %2, align 8
  call void @changebreak(%struct.STYLE* %19, %union.rec* %20)
  br label %21

; <label>:21                                      ; preds = %18, %11
  br label %127

; <label>:22                                      ; preds = %0
  %23 = load %union.rec*, %union.rec** %2, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %27, align 8
  store %union.rec* %28, %union.rec** %link, align 8
  br label %29

; <label>:29                                      ; preds = %113, %22
  %30 = load %union.rec*, %union.rec** %link, align 8
  %31 = load %union.rec*, %union.rec** %2, align 8
  %32 = icmp ne %union.rec* %30, %31
  br i1 %32, label %33, label %120

; <label>:33                                      ; preds = %29
  %34 = load %union.rec*, %union.rec** %link, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 1
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %38, align 8
  store %union.rec* %39, %union.rec** %y, align 8
  br label %40

; <label>:40                                      ; preds = %50, %33
  %41 = load %union.rec*, %union.rec** %y, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 1
  %44 = bitcast %union.FIRST_UNION* %43 to %struct.anon.2*
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

; <label>:49                                      ; preds = %40
  br label %50

; <label>:50                                      ; preds = %49
  %51 = load %union.rec*, %union.rec** %y, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %55, align 8
  store %union.rec* %56, %union.rec** %y, align 8
  br label %40

; <label>:57                                      ; preds = %40
  %58 = load %union.rec*, %union.rec** %y, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 1
  %61 = bitcast %union.FIRST_UNION* %60 to %struct.anon.2*
  %62 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 1
  br i1 %65, label %75, label %66

; <label>:66                                      ; preds = %57
  %67 = load %union.rec*, %union.rec** %y, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon.2*
  %71 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 5
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %66, %57
  br label %113

; <label>:76                                      ; preds = %66
  %77 = load %union.rec*, %union.rec** %y, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon.2*
  %81 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 11
  br i1 %84, label %94, label %85

; <label>:85                                      ; preds = %76
  %86 = load %union.rec*, %union.rec** %y, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.anon.2*
  %90 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 12
  br i1 %93, label %94, label %105

; <label>:94                                      ; preds = %85, %76
  %95 = load %union.rec*, %union.rec** %y, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 4
  %98 = getelementptr inbounds [4 x i8], [4 x i8]* %97, i32 0, i32 0
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i32 0, i32 0)) #3
  %100 = icmp eq i32 %99, 0
  br i1 %100, label %104, label %101

; <label>:101                                     ; preds = %94
  %102 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %103 = load %union.rec*, %union.rec** %y, align 8
  call void @changebreak(%struct.STYLE* %102, %union.rec* %103)
  br label %104

; <label>:104                                     ; preds = %101, %94
  br label %111

; <label>:105                                     ; preds = %85
  %106 = load %union.rec*, %union.rec** %2, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 1
  %109 = bitcast %union.FIRST_UNION* %108 to %struct.FILE_POS*
  %110 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %109, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %111

; <label>:111                                     ; preds = %105, %104
  br label %112

; <label>:112                                     ; preds = %111
  br label %113

; <label>:113                                     ; preds = %112, %75
  %114 = load %union.rec*, %union.rec** %link, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 0
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 1
  %119 = load %union.rec*, %union.rec** %118, align 8
  store %union.rec* %119, %union.rec** %link, align 8
  br label %29

; <label>:120                                     ; preds = %29
  br label %127

; <label>:121                                     ; preds = %0
  %122 = load %union.rec*, %union.rec** %2, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 1
  %125 = bitcast %union.FIRST_UNION* %124 to %struct.FILE_POS*
  %126 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 8, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0), i32 2, %struct.FILE_POS* %125, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0))
  br label %127

; <label>:127                                     ; preds = %121, %120, %21, %10
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @changebreak(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 4
  %6 = getelementptr inbounds [4 x i8], [4 x i8]* %5, i32 0, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp sge i32 %8, 97
  br i1 %9, label %10, label %321

; <label>:10                                      ; preds = %0
  %11 = load %union.rec*, %union.rec** %2, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 4
  %14 = getelementptr inbounds [4 x i8], [4 x i8]* %13, i32 0, i64 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp sle i32 %16, 122
  br i1 %17, label %18, label %321

; <label>:18                                      ; preds = %10
  %19 = load %union.rec*, %union.rec** %2, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 4
  %22 = getelementptr inbounds [4 x i8], [4 x i8]* %21, i32 0, i32 0
  %23 = call i32 @strcmp(i8* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #3
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %33

; <label>:25                                      ; preds = %18
  %26 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %27 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %26, i32 0, i32 1
  %28 = bitcast %union.anon.0* %27 to %struct.anon.1*
  %29 = bitcast %struct.anon.1* %28 to i8*
  %30 = load i8, i8* %29, align 4
  %31 = and i8 %30, -4
  %32 = or i8 %31, 2
  store i8 %32, i8* %29, align 4
  br label %320

; <label>:33                                      ; preds = %18
  %34 = load %union.rec*, %union.rec** %2, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 4
  %37 = getelementptr inbounds [4 x i8], [4 x i8]* %36, i32 0, i32 0
  %38 = call i32 @strcmp(i8* %37, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.17, i32 0, i32 0)) #3
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %33
  %41 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %42 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %41, i32 0, i32 1
  %43 = bitcast %union.anon.0* %42 to %struct.anon.1*
  %44 = bitcast %struct.anon.1* %43 to i8*
  %45 = load i8, i8* %44, align 4
  %46 = and i8 %45, -4
  %47 = or i8 %46, 1
  store i8 %47, i8* %44, align 4
  br label %319

; <label>:48                                      ; preds = %33
  %49 = load %union.rec*, %union.rec** %2, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 4
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %51, i32 0, i32 0
  %53 = call i32 @strcmp(i8* %52, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %70

; <label>:55                                      ; preds = %48
  %56 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %57 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %56, i32 0, i32 1
  %58 = bitcast %union.anon.0* %57 to %struct.anon.1*
  %59 = bitcast %struct.anon.1* %58 to i8*
  %60 = load i8, i8* %59, align 4
  %61 = and i8 %60, -13
  %62 = or i8 %61, 8
  store i8 %62, i8* %59, align 4
  %63 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %64 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %63, i32 0, i32 1
  %65 = bitcast %union.anon.0* %64 to %struct.anon.1*
  %66 = bitcast %struct.anon.1* %65 to i8*
  %67 = load i8, i8* %66, align 4
  %68 = and i8 %67, -113
  %69 = or i8 %68, 16
  store i8 %69, i8* %66, align 4
  br label %318

; <label>:70                                      ; preds = %48
  %71 = load %union.rec*, %union.rec** %2, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 4
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %73, i32 0, i32 0
  %75 = call i32 @strcmp(i8* %74, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.19, i32 0, i32 0)) #3
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %77, label %92

; <label>:77                                      ; preds = %70
  %78 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %79 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %78, i32 0, i32 1
  %80 = bitcast %union.anon.0* %79 to %struct.anon.1*
  %81 = bitcast %struct.anon.1* %80 to i8*
  %82 = load i8, i8* %81, align 4
  %83 = and i8 %82, -13
  %84 = or i8 %83, 8
  store i8 %84, i8* %81, align 4
  %85 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %86 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %85, i32 0, i32 1
  %87 = bitcast %union.anon.0* %86 to %struct.anon.1*
  %88 = bitcast %struct.anon.1* %87 to i8*
  %89 = load i8, i8* %88, align 4
  %90 = and i8 %89, -113
  %91 = or i8 %90, 32
  store i8 %91, i8* %88, align 4
  br label %317

; <label>:92                                      ; preds = %70
  %93 = load %union.rec*, %union.rec** %2, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 4
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %95, i32 0, i32 0
  %97 = call i32 @strcmp(i8* %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.20, i32 0, i32 0)) #3
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %114

; <label>:99                                      ; preds = %92
  %100 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %101 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %100, i32 0, i32 1
  %102 = bitcast %union.anon.0* %101 to %struct.anon.1*
  %103 = bitcast %struct.anon.1* %102 to i8*
  %104 = load i8, i8* %103, align 4
  %105 = and i8 %104, -13
  %106 = or i8 %105, 8
  store i8 %106, i8* %103, align 4
  %107 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %108 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %107, i32 0, i32 1
  %109 = bitcast %union.anon.0* %108 to %struct.anon.1*
  %110 = bitcast %struct.anon.1* %109 to i8*
  %111 = load i8, i8* %110, align 4
  %112 = and i8 %111, -113
  %113 = or i8 %112, 64
  store i8 %113, i8* %110, align 4
  br label %316

; <label>:114                                     ; preds = %92
  %115 = load %union.rec*, %union.rec** %2, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 4
  %118 = getelementptr inbounds [4 x i8], [4 x i8]* %117, i32 0, i32 0
  %119 = call i32 @strcmp(i8* %118, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.21, i32 0, i32 0)) #3
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %136

; <label>:121                                     ; preds = %114
  %122 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %123 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %122, i32 0, i32 1
  %124 = bitcast %union.anon.0* %123 to %struct.anon.1*
  %125 = bitcast %struct.anon.1* %124 to i8*
  %126 = load i8, i8* %125, align 4
  %127 = and i8 %126, -13
  %128 = or i8 %127, 8
  store i8 %128, i8* %125, align 4
  %129 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %130 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %129, i32 0, i32 1
  %131 = bitcast %union.anon.0* %130 to %struct.anon.1*
  %132 = bitcast %struct.anon.1* %131 to i8*
  %133 = load i8, i8* %132, align 4
  %134 = and i8 %133, -113
  %135 = or i8 %134, 80
  store i8 %135, i8* %132, align 4
  br label %315

; <label>:136                                     ; preds = %114
  %137 = load %union.rec*, %union.rec** %2, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 4
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %139, i32 0, i32 0
  %141 = call i32 @strcmp(i8* %140, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.22, i32 0, i32 0)) #3
  %142 = icmp eq i32 %141, 0
  br i1 %142, label %143, label %158

; <label>:143                                     ; preds = %136
  %144 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %145 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %144, i32 0, i32 1
  %146 = bitcast %union.anon.0* %145 to %struct.anon.1*
  %147 = bitcast %struct.anon.1* %146 to i8*
  %148 = load i8, i8* %147, align 4
  %149 = and i8 %148, -13
  %150 = or i8 %149, 8
  store i8 %150, i8* %147, align 4
  %151 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %152 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %151, i32 0, i32 1
  %153 = bitcast %union.anon.0* %152 to %struct.anon.1*
  %154 = bitcast %struct.anon.1* %153 to i8*
  %155 = load i8, i8* %154, align 4
  %156 = and i8 %155, -113
  %157 = or i8 %156, 96
  store i8 %157, i8* %154, align 4
  br label %314

; <label>:158                                     ; preds = %136
  %159 = load %union.rec*, %union.rec** %2, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 4
  %162 = getelementptr inbounds [4 x i8], [4 x i8]* %161, i32 0, i32 0
  %163 = call i32 @strcmp(i8* %162, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.23, i32 0, i32 0)) #3
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %180

; <label>:165                                     ; preds = %158
  %166 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %167 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %166, i32 0, i32 1
  %168 = bitcast %union.anon.0* %167 to %struct.anon.1*
  %169 = bitcast %struct.anon.1* %168 to i8*
  %170 = load i8, i8* %169, align 4
  %171 = and i8 %170, -13
  %172 = or i8 %171, 8
  store i8 %172, i8* %169, align 4
  %173 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %174 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %173, i32 0, i32 1
  %175 = bitcast %union.anon.0* %174 to %struct.anon.1*
  %176 = bitcast %struct.anon.1* %175 to i8*
  %177 = load i8, i8* %176, align 4
  %178 = and i8 %177, -113
  %179 = or i8 %178, 48
  store i8 %179, i8* %176, align 4
  br label %313

; <label>:180                                     ; preds = %158
  %181 = load %union.rec*, %union.rec** %2, align 8
  %182 = bitcast %union.rec* %181 to %struct.word_type*
  %183 = getelementptr inbounds %struct.word_type, %struct.word_type* %182, i32 0, i32 4
  %184 = getelementptr inbounds [4 x i8], [4 x i8]* %183, i32 0, i32 0
  %185 = call i32 @strcmp(i8* %184, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0)) #3
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %187, label %202

; <label>:187                                     ; preds = %180
  %188 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %189 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %188, i32 0, i32 1
  %190 = bitcast %union.anon.0* %189 to %struct.anon.1*
  %191 = bitcast %struct.anon.1* %190 to i8*
  %192 = load i8, i8* %191, align 4
  %193 = and i8 %192, -13
  %194 = or i8 %193, 4
  store i8 %194, i8* %191, align 4
  %195 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %196 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %195, i32 0, i32 1
  %197 = bitcast %union.anon.0* %196 to %struct.anon.1*
  %198 = bitcast %struct.anon.1* %197 to i8*
  %199 = load i8, i8* %198, align 4
  %200 = and i8 %199, -113
  %201 = or i8 %200, 64
  store i8 %201, i8* %198, align 4
  br label %312

; <label>:202                                     ; preds = %180
  %203 = load %union.rec*, %union.rec** %2, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 4
  %206 = getelementptr inbounds [4 x i8], [4 x i8]* %205, i32 0, i32 0
  %207 = call i32 @strcmp(i8* %206, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0)) #3
  %208 = icmp eq i32 %207, 0
  br i1 %208, label %209, label %224

; <label>:209                                     ; preds = %202
  %210 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %211 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %210, i32 0, i32 1
  %212 = bitcast %union.anon.0* %211 to %struct.anon.1*
  %213 = bitcast %struct.anon.1* %212 to i8*
  %214 = load i8, i8* %213, align 4
  %215 = and i8 %214, -13
  %216 = or i8 %215, 4
  store i8 %216, i8* %213, align 4
  %217 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %218 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %217, i32 0, i32 1
  %219 = bitcast %union.anon.0* %218 to %struct.anon.1*
  %220 = bitcast %struct.anon.1* %219 to i8*
  %221 = load i8, i8* %220, align 4
  %222 = and i8 %221, -113
  %223 = or i8 %222, 80
  store i8 %223, i8* %220, align 4
  br label %311

; <label>:224                                     ; preds = %202
  %225 = load %union.rec*, %union.rec** %2, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 4
  %228 = getelementptr inbounds [4 x i8], [4 x i8]* %227, i32 0, i32 0
  %229 = call i32 @strcmp(i8* %228, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)) #3
  %230 = icmp eq i32 %229, 0
  br i1 %230, label %231, label %246

; <label>:231                                     ; preds = %224
  %232 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %233 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %232, i32 0, i32 1
  %234 = bitcast %union.anon.0* %233 to %struct.anon.1*
  %235 = bitcast %struct.anon.1* %234 to i8*
  %236 = load i8, i8* %235, align 4
  %237 = and i8 %236, -13
  %238 = or i8 %237, 4
  store i8 %238, i8* %235, align 4
  %239 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %240 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %239, i32 0, i32 1
  %241 = bitcast %union.anon.0* %240 to %struct.anon.1*
  %242 = bitcast %struct.anon.1* %241 to i8*
  %243 = load i8, i8* %242, align 4
  %244 = and i8 %243, -113
  %245 = or i8 %244, 96
  store i8 %245, i8* %242, align 4
  br label %310

; <label>:246                                     ; preds = %224
  %247 = load %union.rec*, %union.rec** %2, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 4
  %250 = getelementptr inbounds [4 x i8], [4 x i8]* %249, i32 0, i32 0
  %251 = call i32 @strcmp(i8* %250, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.27, i32 0, i32 0)) #3
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %259

; <label>:253                                     ; preds = %246
  %254 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %255 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %254, i32 0, i32 4
  %256 = load i32, i32* %255, align 4
  %257 = and i32 %256, 2147483647
  %258 = or i32 %257, -2147483648
  store i32 %258, i32* %255, align 4
  br label %309

; <label>:259                                     ; preds = %246
  %260 = load %union.rec*, %union.rec** %2, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 4
  %263 = getelementptr inbounds [4 x i8], [4 x i8]* %262, i32 0, i32 0
  %264 = call i32 @strcmp(i8* %263, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.28, i32 0, i32 0)) #3
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %266, label %271

; <label>:266                                     ; preds = %259
  %267 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %268 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %267, i32 0, i32 4
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %269, 2147483647
  store i32 %270, i32* %268, align 4
  br label %308

; <label>:271                                     ; preds = %259
  %272 = load %union.rec*, %union.rec** %2, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 4
  %275 = getelementptr inbounds [4 x i8], [4 x i8]* %274, i32 0, i32 0
  %276 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.29, i32 0, i32 0)) #3
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %284

; <label>:278                                     ; preds = %271
  %279 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %280 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %279, i32 0, i32 4
  %281 = load i32, i32* %280, align 4
  %282 = and i32 %281, -1073741825
  %283 = or i32 %282, 1073741824
  store i32 %283, i32* %280, align 4
  br label %307

; <label>:284                                     ; preds = %271
  %285 = load %union.rec*, %union.rec** %2, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 4
  %288 = getelementptr inbounds [4 x i8], [4 x i8]* %287, i32 0, i32 0
  %289 = call i32 @strcmp(i8* %288, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.30, i32 0, i32 0)) #3
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %296

; <label>:291                                     ; preds = %284
  %292 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %293 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %292, i32 0, i32 4
  %294 = load i32, i32* %293, align 4
  %295 = and i32 %294, -1073741825
  store i32 %295, i32* %293, align 4
  br label %306

; <label>:296                                     ; preds = %284
  %297 = load %union.rec*, %union.rec** %2, align 8
  %298 = bitcast %union.rec* %297 to %struct.word_type*
  %299 = getelementptr inbounds %struct.word_type, %struct.word_type* %298, i32 0, i32 1
  %300 = bitcast %union.FIRST_UNION* %299 to %struct.FILE_POS*
  %301 = load %union.rec*, %union.rec** %2, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 4
  %304 = getelementptr inbounds [4 x i8], [4 x i8]* %303, i32 0, i32 0
  %305 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 5, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %300, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8* %304)
  br label %306

; <label>:306                                     ; preds = %296, %291
  br label %307

; <label>:307                                     ; preds = %306, %278
  br label %308

; <label>:308                                     ; preds = %307, %266
  br label %309

; <label>:309                                     ; preds = %308, %253
  br label %310

; <label>:310                                     ; preds = %309, %231
  br label %311

; <label>:311                                     ; preds = %310, %209
  br label %312

; <label>:312                                     ; preds = %311, %187
  br label %313

; <label>:313                                     ; preds = %312, %165
  br label %314

; <label>:314                                     ; preds = %313, %143
  br label %315

; <label>:315                                     ; preds = %314, %121
  br label %316

; <label>:316                                     ; preds = %315, %99
  br label %317

; <label>:317                                     ; preds = %316, %77
  br label %318

; <label>:318                                     ; preds = %317, %55
  br label %319

; <label>:319                                     ; preds = %318, %40
  br label %320

; <label>:320                                     ; preds = %319, %25
  br label %439

; <label>:321                                     ; preds = %10, %0
  %322 = load %union.rec*, %union.rec** %2, align 8
  %323 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  call void @GetGap(%union.rec* %322, %struct.STYLE* %323, %struct.GAP* %res_gap, i32* %gap_inc)
  %324 = load i32, i32* %gap_inc, align 4
  %325 = icmp ne i32 %324, 158
  br i1 %325, label %326, label %351

; <label>:326                                     ; preds = %321
  %327 = bitcast %struct.GAP* %res_gap to i16*
  %328 = load i16, i16* %327, align 4
  %329 = lshr i16 %328, 10
  %330 = and i16 %329, 7
  %331 = zext i16 %330 to i32
  %332 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %333 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %332, i32 0, i32 0
  %334 = bitcast %union.anon* %333 to %struct.GAP*
  %335 = bitcast %struct.GAP* %334 to i16*
  %336 = load i16, i16* %335, align 4
  %337 = lshr i16 %336, 10
  %338 = and i16 %337, 7
  %339 = zext i16 %338 to i32
  %340 = icmp ne i32 %331, %339
  br i1 %340, label %341, label %351

; <label>:341                                     ; preds = %326
  %342 = load %union.rec*, %union.rec** %2, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 1
  %345 = bitcast %union.FIRST_UNION* %344 to %struct.FILE_POS*
  %346 = load %union.rec*, %union.rec** %2, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 4
  %349 = getelementptr inbounds [4 x i8], [4 x i8]* %348, i32 0, i32 0
  %350 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.31, i32 0, i32 0), i32 2, %struct.FILE_POS* %345, i8* %349)
  br label %438

; <label>:351                                     ; preds = %326, %321
  %352 = bitcast %struct.GAP* %res_gap to i16*
  %353 = load i16, i16* %352, align 4
  %354 = lshr i16 %353, 10
  %355 = and i16 %354, 7
  %356 = zext i16 %355 to i32
  %357 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %358 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %357, i32 0, i32 0
  %359 = bitcast %union.anon* %358 to %struct.GAP*
  %360 = bitcast %struct.GAP* %359 to i16*
  %361 = trunc i32 %356 to i16
  %362 = load i16, i16* %360, align 4
  %363 = and i16 %361, 7
  %364 = shl i16 %363, 10
  %365 = and i16 %362, -7169
  %366 = or i16 %365, %364
  store i16 %366, i16* %360, align 4
  %367 = zext i16 %363 to i32
  %368 = bitcast %struct.GAP* %res_gap to i16*
  %369 = load i16, i16* %368, align 4
  %370 = lshr i16 %369, 13
  %371 = zext i16 %370 to i32
  %372 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %373 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %372, i32 0, i32 0
  %374 = bitcast %union.anon* %373 to %struct.GAP*
  %375 = bitcast %struct.GAP* %374 to i16*
  %376 = trunc i32 %371 to i16
  %377 = load i16, i16* %375, align 4
  %378 = and i16 %376, 7
  %379 = shl i16 %378, 13
  %380 = and i16 %377, 8191
  %381 = or i16 %380, %379
  store i16 %381, i16* %375, align 4
  %382 = zext i16 %378 to i32
  %383 = load i32, i32* %gap_inc, align 4
  %384 = icmp eq i32 %383, 158
  br i1 %384, label %385, label %389

; <label>:385                                     ; preds = %351
  %386 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %387 = load i16, i16* %386, align 2
  %388 = sext i16 %387 to i32
  br label %431

; <label>:389                                     ; preds = %351
  %390 = load i32, i32* %gap_inc, align 4
  %391 = icmp eq i32 %390, 159
  br i1 %391, label %392, label %403

; <label>:392                                     ; preds = %389
  %393 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %394 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %393, i32 0, i32 0
  %395 = bitcast %union.anon* %394 to %struct.GAP*
  %396 = getelementptr inbounds %struct.GAP, %struct.GAP* %395, i32 0, i32 1
  %397 = load i16, i16* %396, align 2
  %398 = sext i16 %397 to i32
  %399 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %400 = load i16, i16* %399, align 2
  %401 = sext i16 %400 to i32
  %402 = add nsw i32 %398, %401
  br label %429

; <label>:403                                     ; preds = %389
  %404 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %405 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %404, i32 0, i32 0
  %406 = bitcast %union.anon* %405 to %struct.GAP*
  %407 = getelementptr inbounds %struct.GAP, %struct.GAP* %406, i32 0, i32 1
  %408 = load i16, i16* %407, align 2
  %409 = sext i16 %408 to i32
  %410 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %411 = load i16, i16* %410, align 2
  %412 = sext i16 %411 to i32
  %413 = sub nsw i32 %409, %412
  %414 = icmp slt i32 %413, 0
  br i1 %414, label %415, label %416

; <label>:415                                     ; preds = %403
  br label %427

; <label>:416                                     ; preds = %403
  %417 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %418 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %417, i32 0, i32 0
  %419 = bitcast %union.anon* %418 to %struct.GAP*
  %420 = getelementptr inbounds %struct.GAP, %struct.GAP* %419, i32 0, i32 1
  %421 = load i16, i16* %420, align 2
  %422 = sext i16 %421 to i32
  %423 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %424 = load i16, i16* %423, align 2
  %425 = sext i16 %424 to i32
  %426 = sub nsw i32 %422, %425
  br label %427

; <label>:427                                     ; preds = %416, %415
  %428 = phi i32 [ 0, %415 ], [ %426, %416 ]
  br label %429

; <label>:429                                     ; preds = %427, %392
  %430 = phi i32 [ %402, %392 ], [ %428, %427 ]
  br label %431

; <label>:431                                     ; preds = %429, %385
  %432 = phi i32 [ %388, %385 ], [ %430, %429 ]
  %433 = trunc i32 %432 to i16
  %434 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %435 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %434, i32 0, i32 0
  %436 = bitcast %union.anon* %435 to %struct.GAP*
  %437 = getelementptr inbounds %struct.GAP, %struct.GAP* %436, i32 0, i32 1
  store i16 %433, i16* %437, align 2
  br label %438

; <label>:438                                     ; preds = %431, %341
  br label %439

; <label>:439                                     ; preds = %438, %320
  ret void
}

; Function Attrs: nounwind uwtable
define void @YUnitChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  call void @GetGap(%union.rec* %3, %struct.STYLE* %4, %struct.GAP* %res_gap, i32* %gap_inc)
  %5 = bitcast %struct.GAP* %res_gap to i16*
  %6 = load i16, i16* %5, align 4
  %7 = lshr i16 %6, 10
  %8 = and i16 %7, 7
  %9 = zext i16 %8 to i32
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.FILE_POS*
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 9, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct.FILE_POS* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i32 0, i32 0))
  br label %65

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* %gap_inc, align 4
  %19 = icmp eq i32 %18, 158
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %22 = load i16, i16* %21, align 2
  %23 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %24 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %23, i32 0, i32 2
  store i16 %22, i16* %24, align 2
  br label %64

; <label>:25                                      ; preds = %17
  %26 = load i32, i32* %gap_inc, align 4
  %27 = icmp eq i32 %26, 159
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %25
  %29 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %33 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %32, i32 0, i32 2
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, %31
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %33, align 2
  br label %63

; <label>:38                                      ; preds = %25
  %39 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %40 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %42, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %38
  br label %58

; <label>:49                                      ; preds = %38
  %50 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %51 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %50, i32 0, i32 2
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = sub nsw i32 %53, %56
  br label %58

; <label>:58                                      ; preds = %49, %48
  %59 = phi i32 [ 0, %48 ], [ %57, %49 ]
  %60 = trunc i32 %59 to i16
  %61 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %62 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %61, i32 0, i32 2
  store i16 %60, i16* %62, align 2
  br label %63

; <label>:63                                      ; preds = %58, %28
  br label %64

; <label>:64                                      ; preds = %63, %20
  br label %65

; <label>:65                                      ; preds = %64, %11
  ret void
}

declare void @GetGap(%union.rec*, %struct.STYLE*, %struct.GAP*, i32*) #2

; Function Attrs: nounwind uwtable
define void @ZUnitChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %res_gap = alloca %struct.GAP, align 4
  %gap_inc = alloca i32, align 4
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  call void @GetGap(%union.rec* %3, %struct.STYLE* %4, %struct.GAP* %res_gap, i32* %gap_inc)
  %5 = bitcast %struct.GAP* %res_gap to i16*
  %6 = load i16, i16* %5, align 4
  %7 = lshr i16 %6, 10
  %8 = and i16 %7, 7
  %9 = zext i16 %8 to i32
  %10 = icmp ne i32 %9, 1
  br i1 %10, label %11, label %17

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.FILE_POS*
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 11, i32 10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct.FILE_POS* %15, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i32 0, i32 0))
  br label %65

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* %gap_inc, align 4
  %19 = icmp eq i32 %18, 158
  br i1 %19, label %20, label %25

; <label>:20                                      ; preds = %17
  %21 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %22 = load i16, i16* %21, align 2
  %23 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %24 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %23, i32 0, i32 3
  store i16 %22, i16* %24, align 2
  br label %64

; <label>:25                                      ; preds = %17
  %26 = load i32, i32* %gap_inc, align 4
  %27 = icmp eq i32 %26, 159
  br i1 %27, label %28, label %38

; <label>:28                                      ; preds = %25
  %29 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %30 = load i16, i16* %29, align 2
  %31 = sext i16 %30 to i32
  %32 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %33 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %32, i32 0, i32 3
  %34 = load i16, i16* %33, align 2
  %35 = sext i16 %34 to i32
  %36 = add nsw i32 %35, %31
  %37 = trunc i32 %36 to i16
  store i16 %37, i16* %33, align 2
  br label %63

; <label>:38                                      ; preds = %25
  %39 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %40 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %39, i32 0, i32 3
  %41 = load i16, i16* %40, align 2
  %42 = sext i16 %41 to i32
  %43 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %44 = load i16, i16* %43, align 2
  %45 = sext i16 %44 to i32
  %46 = sub nsw i32 %42, %45
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %38
  br label %58

; <label>:49                                      ; preds = %38
  %50 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %51 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %50, i32 0, i32 3
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = getelementptr inbounds %struct.GAP, %struct.GAP* %res_gap, i32 0, i32 1
  %55 = load i16, i16* %54, align 2
  %56 = sext i16 %55 to i32
  %57 = sub nsw i32 %53, %56
  br label %58

; <label>:58                                      ; preds = %49, %48
  %59 = phi i32 [ 0, %48 ], [ %57, %49 ]
  %60 = trunc i32 %59 to i16
  %61 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %62 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %61, i32 0, i32 3
  store i16 %60, i16* %62, align 2
  br label %63

; <label>:63                                      ; preds = %58, %28
  br label %64

; <label>:64                                      ; preds = %63, %20
  br label %65

; <label>:65                                      ; preds = %64, %11
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
