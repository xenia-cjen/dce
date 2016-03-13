; ModuleID = 'z09.c'
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
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"SearchEnv: env!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"SearchEnv: type(y) != CLOSURE!\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"SearchEnv: LastDown(y) == y!\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"SetEnv: x==nilobj or not CLOSURE!\00", align 1
@.str.5 = private unnamed_addr constant [37 x i8] c"SetEnv: y!=nilobj && type(y) != ENV!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.6 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"AttachEnv: type(env) != ENV!\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"AttachEnv: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [28 x i8] c"GetEnv: type(x) != CLOSURE!\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"GetEnv: LastDown(x) == x!\00", align 1
@.str.11 = private unnamed_addr constant [26 x i8] c"GetEnv: type(env) != ENV!\00", align 1
@.str.12 = private unnamed_addr constant [31 x i8] c"DetachEnv: type(x) != CLOSURE!\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"DetachEnv: LastDown(x) == x!\00", align 1
@.str.14 = private unnamed_addr constant [29 x i8] c"DetachEnv: type(env) != ENV!\00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"ClosureExpand given non-CLOSURE!\00", align 1
@.str.16 = private unnamed_addr constant [32 x i8] c"ClosureExpand given predefined!\00", align 1
@.str.17 = private unnamed_addr constant [26 x i8] c"ExpandCLosure: Down(par)!\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"??\00", align 1
@xx_tmp = external global %union.rec*, align 8
@.str.19 = private unnamed_addr constant [40 x i8] c"no value for parameter %s of symbol %s:\00", align 1
@.str.20 = private unnamed_addr constant [32 x i8] c"symbol with import list misused\00", align 1
@.str.21 = private unnamed_addr constant [25 x i8] c"ClosureExpand: *res_env!\00", align 1
@.str.22 = private unnamed_addr constant [34 x i8] c"ParameterCheck given non-CLOSURE!\00", align 1
@.str.23 = private unnamed_addr constant [27 x i8] c"ParameterCheck: Down(par)!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @SearchEnv(%union.rec* %env, %union.rec* %sym) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  store %union.rec* %sym, %union.rec** %3, align 8
  br label %4

; <label>:4                                       ; preds = %144, %0
  %5 = load %union.rec*, %union.rec** %2, align 8
  %6 = icmp ne %union.rec* %5, null
  br i1 %6, label %7, label %16

; <label>:7                                       ; preds = %4
  %8 = load %union.rec*, %union.rec** %2, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 1
  %11 = bitcast %union.FIRST_UNION* %10 to %struct.anon*
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 82
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %7, %4
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %17, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  br label %19

; <label>:19                                      ; preds = %16, %7
  %20 = load %union.rec*, %union.rec** %2, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 0
  %23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %22, i32 0, i64 0
  %24 = getelementptr inbounds %struct.LIST, %struct.LIST* %23, i32 0, i32 1
  %25 = load %union.rec*, %union.rec** %24, align 8
  %26 = load %union.rec*, %union.rec** %2, align 8
  %27 = icmp eq %union.rec* %25, %26
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %19
  store %union.rec* null, %union.rec** %1
  br label %145

; <label>:29                                      ; preds = %19
  %30 = load %union.rec*, %union.rec** %2, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 0
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 1
  %35 = load %union.rec*, %union.rec** %34, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 1
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** %y, align 8
  br label %41

; <label>:41                                      ; preds = %51, %29
  %42 = load %union.rec*, %union.rec** %y, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 1
  %45 = bitcast %union.FIRST_UNION* %44 to %struct.anon*
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %58

; <label>:50                                      ; preds = %41
  br label %51

; <label>:51                                      ; preds = %50
  %52 = load %union.rec*, %union.rec** %y, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 1
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %56, align 8
  store %union.rec* %57, %union.rec** %y, align 8
  br label %41

; <label>:58                                      ; preds = %41
  %59 = load %union.rec*, %union.rec** %y, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 1
  %62 = bitcast %union.FIRST_UNION* %61 to %struct.anon*
  %63 = getelementptr inbounds %struct.anon, %struct.anon* %62, i32 0, i32 0
  %64 = load i8, i8* %63, align 1
  %65 = zext i8 %64 to i32
  %66 = icmp eq i32 %65, 2
  br i1 %66, label %70, label %67

; <label>:67                                      ; preds = %58
  %68 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %69 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %68, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %70

; <label>:70                                      ; preds = %67, %58
  %71 = load %union.rec*, %union.rec** %y, align 8
  %72 = bitcast %union.rec* %71 to %struct.closure_type*
  %73 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %72, i32 0, i32 5
  %74 = load %union.rec*, %union.rec** %73, align 8
  %75 = load %union.rec*, %union.rec** %3, align 8
  %76 = icmp eq %union.rec* %74, %75
  br i1 %76, label %77, label %79

; <label>:77                                      ; preds = %70
  %78 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %78, %union.rec** %1
  br label %145

; <label>:79                                      ; preds = %70
  %80 = load %union.rec*, %union.rec** %y, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 0
  %83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %82, i32 0, i64 0
  %84 = getelementptr inbounds %struct.LIST, %struct.LIST* %83, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %84, align 8
  %86 = load %union.rec*, %union.rec** %y, align 8
  %87 = icmp ne %union.rec* %85, %86
  br i1 %87, label %91, label %88

; <label>:88                                      ; preds = %79
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %90 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %89, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i32 0, i32 0))
  br label %91

; <label>:91                                      ; preds = %88, %79
  %92 = load %union.rec*, %union.rec** %2, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 0
  %95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %94, i32 0, i64 0
  %96 = getelementptr inbounds %struct.LIST, %struct.LIST* %95, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %96, align 8
  %98 = load %union.rec*, %union.rec** %2, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 0
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 1
  %103 = load %union.rec*, %union.rec** %102, align 8
  %104 = icmp ne %union.rec* %97, %103
  br i1 %104, label %105, label %112

; <label>:105                                     ; preds = %91
  %106 = load %union.rec*, %union.rec** %2, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 0
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %110, align 8
  br label %119

; <label>:112                                     ; preds = %91
  %113 = load %union.rec*, %union.rec** %y, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %117, align 8
  br label %119

; <label>:119                                     ; preds = %112, %105
  %120 = phi %union.rec* [ %111, %105 ], [ %118, %112 ]
  store %union.rec* %120, %union.rec** %link, align 8
  %121 = load %union.rec*, %union.rec** %link, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 1
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 0
  %126 = load %union.rec*, %union.rec** %125, align 8
  store %union.rec* %126, %union.rec** %2, align 8
  br label %127

; <label>:127                                     ; preds = %137, %119
  %128 = load %union.rec*, %union.rec** %2, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 1
  %131 = bitcast %union.FIRST_UNION* %130 to %struct.anon*
  %132 = getelementptr inbounds %struct.anon, %struct.anon* %131, i32 0, i32 0
  %133 = load i8, i8* %132, align 1
  %134 = zext i8 %133 to i32
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %144

; <label>:136                                     ; preds = %127
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load %union.rec*, %union.rec** %2, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 1
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %142, align 8
  store %union.rec* %143, %union.rec** %2, align 8
  br label %127

; <label>:144                                     ; preds = %127
  br label %4

; <label>:145                                     ; preds = %77, %28
  %146 = load %union.rec*, %union.rec** %1
  ret %union.rec* %146
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define %union.rec* @SetEnv(%union.rec* %x, %union.rec* %y) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = icmp ne %union.rec* %3, null
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %0
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 1
  %9 = bitcast %union.FIRST_UNION* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %5, %0
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %14, %5
  %18 = load %union.rec*, %union.rec** %2, align 8
  %19 = icmp eq %union.rec* %18, null
  br i1 %19, label %32, label %20

; <label>:20                                      ; preds = %17
  %21 = load %union.rec*, %union.rec** %2, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 1
  %24 = bitcast %union.FIRST_UNION* %23 to %struct.anon*
  %25 = getelementptr inbounds %struct.anon, %struct.anon* %24, i32 0, i32 0
  %26 = load i8, i8* %25, align 1
  %27 = zext i8 %26 to i32
  %28 = icmp eq i32 %27, 82
  br i1 %28, label %32, label %29

; <label>:29                                      ; preds = %20
  %30 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %31 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %30, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.5, i32 0, i32 0))
  br label %32

; <label>:32                                      ; preds = %29, %20, %17
  %33 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %34 = zext i8 %33 to i32
  store i32 %34, i32* @zz_size, align 4
  %35 = sext i32 %34 to i64
  %36 = icmp uge i64 %35, 265
  br i1 %36, label %37, label %40

; <label>:37                                      ; preds = %32
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %38)
  br label %65

; <label>:40                                      ; preds = %32
  %41 = load i32, i32* @zz_size, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %42
  %44 = load %union.rec*, %union.rec** %43, align 8
  %45 = icmp eq %union.rec* %44, null
  br i1 %45, label %46, label %50

; <label>:46                                      ; preds = %40
  %47 = load i32, i32* @zz_size, align 4
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %49 = call %union.rec* @GetMemory(i32 %47, %struct.FILE_POS* %48)
  store %union.rec* %49, %union.rec** @zz_hold, align 8
  br label %64

; <label>:50                                      ; preds = %40
  %51 = load i32, i32* @zz_size, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %52
  %54 = load %union.rec*, %union.rec** %53, align 8
  store %union.rec* %54, %union.rec** @zz_hold, align 8
  store %union.rec* %54, %union.rec** @zz_hold, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 0
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %59, align 8
  %61 = load i32, i32* @zz_size, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %62
  store %union.rec* %60, %union.rec** %63, align 8
  br label %64

; <label>:64                                      ; preds = %50, %46
  br label %65

; <label>:65                                      ; preds = %64, %37
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 1
  %69 = bitcast %union.FIRST_UNION* %68 to %struct.anon*
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 0
  store i8 82, i8* %70, align 1
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %74, i32 0, i64 1
  %76 = getelementptr inbounds %struct.LIST, %struct.LIST* %75, i32 0, i32 1
  store %union.rec* %71, %union.rec** %76, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 1
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 0
  store %union.rec* %71, %union.rec** %81, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 0
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 1
  store %union.rec* %71, %union.rec** %86, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %89, i32 0, i64 0
  %91 = getelementptr inbounds %struct.LIST, %struct.LIST* %90, i32 0, i32 0
  store %union.rec* %71, %union.rec** %91, align 8
  store %union.rec* %71, %union.rec** %res, align 8
  %92 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %93 = zext i8 %92 to i32
  store i32 %93, i32* @zz_size, align 4
  %94 = sext i32 %93 to i64
  %95 = icmp uge i64 %94, 265
  br i1 %95, label %96, label %99

; <label>:96                                      ; preds = %65
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %98 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %97)
  br label %124

; <label>:99                                      ; preds = %65
  %100 = load i32, i32* @zz_size, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %101
  %103 = load %union.rec*, %union.rec** %102, align 8
  %104 = icmp eq %union.rec* %103, null
  br i1 %104, label %105, label %109

; <label>:105                                     ; preds = %99
  %106 = load i32, i32* @zz_size, align 4
  %107 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %108 = call %union.rec* @GetMemory(i32 %106, %struct.FILE_POS* %107)
  store %union.rec* %108, %union.rec** @zz_hold, align 8
  br label %123

; <label>:109                                     ; preds = %99
  %110 = load i32, i32* @zz_size, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %111
  %113 = load %union.rec*, %union.rec** %112, align 8
  store %union.rec* %113, %union.rec** @zz_hold, align 8
  store %union.rec* %113, %union.rec** @zz_hold, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 0
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %118, align 8
  %120 = load i32, i32* @zz_size, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %121
  store %union.rec* %119, %union.rec** %122, align 8
  br label %123

; <label>:123                                     ; preds = %109, %105
  br label %124

; <label>:124                                     ; preds = %123, %96
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 1
  %128 = bitcast %union.FIRST_UNION* %127 to %struct.anon*
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 0
  store i8 0, i8* %129, align 1
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 1
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 1
  store %union.rec* %130, %union.rec** %135, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 1
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 0
  store %union.rec* %130, %union.rec** %140, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 0
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 1
  store %union.rec* %130, %union.rec** %145, align 8
  %146 = load %union.rec*, %union.rec** @zz_hold, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 0
  %149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %148, i32 0, i64 0
  %150 = getelementptr inbounds %struct.LIST, %struct.LIST* %149, i32 0, i32 0
  store %union.rec* %130, %union.rec** %150, align 8
  store %union.rec* %130, %union.rec** @xx_link, align 8
  %151 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %151, %union.rec** @zz_res, align 8
  %152 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %152, %union.rec** @zz_hold, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %154 = icmp eq %union.rec* %153, null
  br i1 %154, label %155, label %157

; <label>:155                                     ; preds = %124
  %156 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %205

; <label>:157                                     ; preds = %124
  %158 = load %union.rec*, %union.rec** @zz_res, align 8
  %159 = icmp eq %union.rec* %158, null
  br i1 %159, label %160, label %162

; <label>:160                                     ; preds = %157
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %203

; <label>:162                                     ; preds = %157
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = bitcast %union.rec* %163 to %struct.word_type*
  %165 = getelementptr inbounds %struct.word_type, %struct.word_type* %164, i32 0, i32 0
  %166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %165, i32 0, i64 0
  %167 = getelementptr inbounds %struct.LIST, %struct.LIST* %166, i32 0, i32 0
  %168 = load %union.rec*, %union.rec** %167, align 8
  store %union.rec* %168, %union.rec** @zz_tmp, align 8
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 0
  %172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %171, i32 0, i64 0
  %173 = getelementptr inbounds %struct.LIST, %struct.LIST* %172, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %173, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 0
  %178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %177, i32 0, i64 0
  %179 = getelementptr inbounds %struct.LIST, %struct.LIST* %178, i32 0, i32 0
  store %union.rec* %174, %union.rec** %179, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = load %union.rec*, %union.rec** @zz_res, align 8
  %182 = bitcast %union.rec* %181 to %struct.word_type*
  %183 = getelementptr inbounds %struct.word_type, %struct.word_type* %182, i32 0, i32 0
  %184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %183, i32 0, i64 0
  %185 = getelementptr inbounds %struct.LIST, %struct.LIST* %184, i32 0, i32 0
  %186 = load %union.rec*, %union.rec** %185, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 0
  %189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %188, i32 0, i64 0
  %190 = getelementptr inbounds %struct.LIST, %struct.LIST* %189, i32 0, i32 1
  store %union.rec* %180, %union.rec** %190, align 8
  %191 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 0
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 0
  store %union.rec* %191, %union.rec** %196, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %199 = bitcast %union.rec* %198 to %struct.word_type*
  %200 = getelementptr inbounds %struct.word_type, %struct.word_type* %199, i32 0, i32 0
  %201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %200, i32 0, i64 0
  %202 = getelementptr inbounds %struct.LIST, %struct.LIST* %201, i32 0, i32 1
  store %union.rec* %197, %union.rec** %202, align 8
  br label %203

; <label>:203                                     ; preds = %162, %160
  %204 = phi %union.rec* [ %161, %160 ], [ %197, %162 ]
  br label %205

; <label>:205                                     ; preds = %203, %155
  %206 = phi %union.rec* [ %156, %155 ], [ %204, %203 ]
  %207 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %207, %union.rec** @zz_res, align 8
  %208 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = icmp eq %union.rec* %209, null
  br i1 %210, label %211, label %213

; <label>:211                                     ; preds = %205
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %261

; <label>:213                                     ; preds = %205
  %214 = load %union.rec*, %union.rec** @zz_res, align 8
  %215 = icmp eq %union.rec* %214, null
  br i1 %215, label %216, label %218

; <label>:216                                     ; preds = %213
  %217 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %259

; <label>:218                                     ; preds = %213
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 1
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 0
  %224 = load %union.rec*, %union.rec** %223, align 8
  store %union.rec* %224, %union.rec** @zz_tmp, align 8
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 1
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 1
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  store %union.rec* %230, %union.rec** %235, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_res, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 1
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %241, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 1
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 1
  store %union.rec* %236, %union.rec** %246, align 8
  %247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 1
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 0
  store %union.rec* %247, %union.rec** %252, align 8
  %253 = load %union.rec*, %union.rec** @zz_res, align 8
  %254 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 1
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 1
  store %union.rec* %253, %union.rec** %258, align 8
  br label %259

; <label>:259                                     ; preds = %218, %216
  %260 = phi %union.rec* [ %217, %216 ], [ %253, %218 ]
  br label %261

; <label>:261                                     ; preds = %259, %211
  %262 = phi %union.rec* [ %212, %211 ], [ %260, %259 ]
  %263 = load %union.rec*, %union.rec** %2, align 8
  %264 = icmp ne %union.rec* %263, null
  br i1 %264, label %265, label %437

; <label>:265                                     ; preds = %261
  %266 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %267 = zext i8 %266 to i32
  store i32 %267, i32* @zz_size, align 4
  %268 = sext i32 %267 to i64
  %269 = icmp uge i64 %268, 265
  br i1 %269, label %270, label %273

; <label>:270                                     ; preds = %265
  %271 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %272 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %271)
  br label %298

; <label>:273                                     ; preds = %265
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
  %382 = load %union.rec*, %union.rec** %2, align 8
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

; <label>:437                                     ; preds = %435, %261
  %438 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %438
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @AttachEnv(%union.rec* %env, %union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = icmp ne %union.rec* %3, null
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %0
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 1
  %9 = bitcast %union.FIRST_UNION* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 82
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %5, %0
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %15, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.7, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %14, %5
  %18 = load %union.rec*, %union.rec** %2, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 1
  %21 = bitcast %union.FIRST_UNION* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %38, label %26

; <label>:26                                      ; preds = %17
  %27 = load %union.rec*, %union.rec** %2, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 1
  %30 = bitcast %union.FIRST_UNION* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 81
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %26
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %36, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i32 0, i32 0))
  br label %38

; <label>:38                                      ; preds = %35, %26, %17
  %39 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %40 = zext i8 %39 to i32
  store i32 %40, i32* @zz_size, align 4
  %41 = sext i32 %40 to i64
  %42 = icmp uge i64 %41, 265
  br i1 %42, label %43, label %46

; <label>:43                                      ; preds = %38
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %45 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %44)
  br label %71

; <label>:46                                      ; preds = %38
  %47 = load i32, i32* @zz_size, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %48
  %50 = load %union.rec*, %union.rec** %49, align 8
  %51 = icmp eq %union.rec* %50, null
  br i1 %51, label %52, label %56

; <label>:52                                      ; preds = %46
  %53 = load i32, i32* @zz_size, align 4
  %54 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %55 = call %union.rec* @GetMemory(i32 %53, %struct.FILE_POS* %54)
  store %union.rec* %55, %union.rec** @zz_hold, align 8
  br label %70

; <label>:56                                      ; preds = %46
  %57 = load i32, i32* @zz_size, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %58
  %60 = load %union.rec*, %union.rec** %59, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  store %union.rec* %60, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 0
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 0
  %66 = load %union.rec*, %union.rec** %65, align 8
  %67 = load i32, i32* @zz_size, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %68
  store %union.rec* %66, %union.rec** %69, align 8
  br label %70

; <label>:70                                      ; preds = %56, %52
  br label %71

; <label>:71                                      ; preds = %70, %43
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 1
  %75 = bitcast %union.FIRST_UNION* %74 to %struct.anon*
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  store i8 0, i8* %76, align 1
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 1
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 1
  store %union.rec* %77, %union.rec** %82, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  store %union.rec* %77, %union.rec** %87, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %90, i32 0, i64 0
  %92 = getelementptr inbounds %struct.LIST, %struct.LIST* %91, i32 0, i32 1
  store %union.rec* %77, %union.rec** %92, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 0
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 0
  store %union.rec* %77, %union.rec** %97, align 8
  store %union.rec* %77, %union.rec** @xx_link, align 8
  %98 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %98, %union.rec** @zz_res, align 8
  %99 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = icmp eq %union.rec* %100, null
  br i1 %101, label %102, label %104

; <label>:102                                     ; preds = %71
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %152

; <label>:104                                     ; preds = %71
  %105 = load %union.rec*, %union.rec** @zz_res, align 8
  %106 = icmp eq %union.rec* %105, null
  br i1 %106, label %107, label %109

; <label>:107                                     ; preds = %104
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %150

; <label>:109                                     ; preds = %104
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 0
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %114, align 8
  store %union.rec* %115, %union.rec** @zz_tmp, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 0
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %120, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 0
  %125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %124, i32 0, i64 0
  %126 = getelementptr inbounds %struct.LIST, %struct.LIST* %125, i32 0, i32 0
  store %union.rec* %121, %union.rec** %126, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 0
  %133 = load %union.rec*, %union.rec** %132, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 0
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 1
  store %union.rec* %127, %union.rec** %137, align 8
  %138 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 0
  %142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %141, i32 0, i64 0
  %143 = getelementptr inbounds %struct.LIST, %struct.LIST* %142, i32 0, i32 0
  store %union.rec* %138, %union.rec** %143, align 8
  %144 = load %union.rec*, %union.rec** @zz_res, align 8
  %145 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 0
  %148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %147, i32 0, i64 0
  %149 = getelementptr inbounds %struct.LIST, %struct.LIST* %148, i32 0, i32 1
  store %union.rec* %144, %union.rec** %149, align 8
  br label %150

; <label>:150                                     ; preds = %109, %107
  %151 = phi %union.rec* [ %108, %107 ], [ %144, %109 ]
  br label %152

; <label>:152                                     ; preds = %150, %102
  %153 = phi %union.rec* [ %103, %102 ], [ %151, %150 ]
  %154 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %154, %union.rec** @zz_res, align 8
  %155 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %155, %union.rec** @zz_hold, align 8
  %156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %157 = icmp eq %union.rec* %156, null
  br i1 %157, label %158, label %160

; <label>:158                                     ; preds = %152
  %159 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %208

; <label>:160                                     ; preds = %152
  %161 = load %union.rec*, %union.rec** @zz_res, align 8
  %162 = icmp eq %union.rec* %161, null
  br i1 %162, label %163, label %165

; <label>:163                                     ; preds = %160
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %206

; <label>:165                                     ; preds = %160
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 1
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %170, align 8
  store %union.rec* %171, %union.rec** @zz_tmp, align 8
  %172 = load %union.rec*, %union.rec** @zz_res, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 0
  %175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %174, i32 0, i64 1
  %176 = getelementptr inbounds %struct.LIST, %struct.LIST* %175, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %176, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 0
  %181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %180, i32 0, i64 1
  %182 = getelementptr inbounds %struct.LIST, %struct.LIST* %181, i32 0, i32 0
  store %union.rec* %177, %union.rec** %182, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %184 = load %union.rec*, %union.rec** @zz_res, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 0
  %187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %186, i32 0, i64 1
  %188 = getelementptr inbounds %struct.LIST, %struct.LIST* %187, i32 0, i32 0
  %189 = load %union.rec*, %union.rec** %188, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %191, i32 0, i64 1
  %193 = getelementptr inbounds %struct.LIST, %struct.LIST* %192, i32 0, i32 1
  store %union.rec* %183, %union.rec** %193, align 8
  %194 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %197, i32 0, i64 1
  %199 = getelementptr inbounds %struct.LIST, %struct.LIST* %198, i32 0, i32 0
  store %union.rec* %194, %union.rec** %199, align 8
  %200 = load %union.rec*, %union.rec** @zz_res, align 8
  %201 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %203, i32 0, i64 1
  %205 = getelementptr inbounds %struct.LIST, %struct.LIST* %204, i32 0, i32 1
  store %union.rec* %200, %union.rec** %205, align 8
  br label %206

; <label>:206                                     ; preds = %165, %163
  %207 = phi %union.rec* [ %164, %163 ], [ %200, %165 ]
  br label %208

; <label>:208                                     ; preds = %206, %158
  %209 = phi %union.rec* [ %159, %158 ], [ %207, %206 ]
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @GetEnv(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 0
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = icmp ne %union.rec* %19, %20
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %13
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %23, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %22, %13
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 1
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** %env, align 8
  br label %37

; <label>:37                                      ; preds = %47, %25
  %38 = load %union.rec*, %union.rec** %env, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 1
  %41 = bitcast %union.FIRST_UNION* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

; <label>:46                                      ; preds = %37
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load %union.rec*, %union.rec** %env, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %env, align 8
  br label %37

; <label>:54                                      ; preds = %37
  %55 = load %union.rec*, %union.rec** %env, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 82
  br i1 %62, label %66, label %63

; <label>:63                                      ; preds = %54
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.11, i32 0, i32 0))
  br label %66

; <label>:66                                      ; preds = %63, %54
  %67 = load %union.rec*, %union.rec** %env, align 8
  ret %union.rec* %67
}

; Function Attrs: nounwind uwtable
define %union.rec* @DetachEnv(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.12, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 0
  %17 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %16, i32 0, i64 0
  %18 = getelementptr inbounds %struct.LIST, %struct.LIST* %17, i32 0, i32 0
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = icmp ne %union.rec* %19, %20
  br i1 %21, label %25, label %22

; <label>:22                                      ; preds = %13
  %23 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.13, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %22, %13
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 1
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** %env, align 8
  br label %37

; <label>:37                                      ; preds = %47, %25
  %38 = load %union.rec*, %union.rec** %env, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 1
  %41 = bitcast %union.FIRST_UNION* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %54

; <label>:46                                      ; preds = %37
  br label %47

; <label>:47                                      ; preds = %46
  %48 = load %union.rec*, %union.rec** %env, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %env, align 8
  br label %37

; <label>:54                                      ; preds = %37
  %55 = load %union.rec*, %union.rec** %1, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 0
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %59, align 8
  store %union.rec* %60, %union.rec** @xx_link, align 8
  %61 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %61, %union.rec** @zz_hold, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 1
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 1
  %67 = load %union.rec*, %union.rec** %66, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %69 = icmp eq %union.rec* %67, %68
  br i1 %69, label %70, label %71

; <label>:70                                      ; preds = %54
  br label %112

; <label>:71                                      ; preds = %54
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %74, i32 0, i64 1
  %76 = getelementptr inbounds %struct.LIST, %struct.LIST* %75, i32 0, i32 1
  %77 = load %union.rec*, %union.rec** %76, align 8
  store %union.rec* %77, %union.rec** @zz_res, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 1
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %82, align 8
  %84 = load %union.rec*, %union.rec** @zz_res, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 0
  %87 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %86, i32 0, i64 1
  %88 = getelementptr inbounds %struct.LIST, %struct.LIST* %87, i32 0, i32 0
  store %union.rec* %83, %union.rec** %88, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %90 = load %union.rec*, %union.rec** @zz_hold, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 0
  %93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %92, i32 0, i64 1
  %94 = getelementptr inbounds %struct.LIST, %struct.LIST* %93, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %94, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 1
  store %union.rec* %89, %union.rec** %99, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 1
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 1
  store %union.rec* %100, %union.rec** %105, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  store %union.rec* %100, %union.rec** %110, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %112

; <label>:112                                     ; preds = %71, %70
  %113 = phi %union.rec* [ null, %70 ], [ %111, %71 ]
  %114 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %114, %union.rec** @zz_hold, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 0
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 1
  %120 = load %union.rec*, %union.rec** %119, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = icmp eq %union.rec* %120, %121
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %112
  br label %165

; <label>:124                                     ; preds = %112
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %127, i32 0, i64 0
  %129 = getelementptr inbounds %struct.LIST, %struct.LIST* %128, i32 0, i32 1
  %130 = load %union.rec*, %union.rec** %129, align 8
  store %union.rec* %130, %union.rec** @zz_res, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 0
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %135, align 8
  %137 = load %union.rec*, %union.rec** @zz_res, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 0
  %140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %139, i32 0, i64 0
  %141 = getelementptr inbounds %struct.LIST, %struct.LIST* %140, i32 0, i32 0
  store %union.rec* %136, %union.rec** %141, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 0
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %147, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %150, i32 0, i64 0
  %152 = getelementptr inbounds %struct.LIST, %struct.LIST* %151, i32 0, i32 1
  store %union.rec* %142, %union.rec** %152, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 0
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 1
  store %union.rec* %153, %union.rec** %158, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 0
  %162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %161, i32 0, i64 0
  %163 = getelementptr inbounds %struct.LIST, %struct.LIST* %162, i32 0, i32 0
  store %union.rec* %153, %union.rec** %163, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %165

; <label>:165                                     ; preds = %124, %123
  %166 = phi %union.rec* [ null, %123 ], [ %164, %124 ]
  %167 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %168, %union.rec** @zz_hold, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 1
  %172 = bitcast %union.FIRST_UNION* %171 to %struct.anon*
  %173 = getelementptr inbounds %struct.anon, %struct.anon* %172, i32 0, i32 0
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  %176 = icmp eq i32 %175, 11
  br i1 %176, label %186, label %177

; <label>:177                                     ; preds = %165
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 1
  %181 = bitcast %union.FIRST_UNION* %180 to %struct.anon*
  %182 = getelementptr inbounds %struct.anon, %struct.anon* %181, i32 0, i32 0
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 12
  br i1 %185, label %186, label %194

; <label>:186                                     ; preds = %177, %165
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 1
  %190 = bitcast %union.FIRST_UNION* %189 to %struct.anon*
  %191 = getelementptr inbounds %struct.anon, %struct.anon* %190, i32 0, i32 1
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  br label %205

; <label>:194                                     ; preds = %177
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 1
  %198 = bitcast %union.FIRST_UNION* %197 to %struct.anon*
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i64
  %202 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %201
  %203 = load i8, i8* %202, align 1
  %204 = zext i8 %203 to i32
  br label %205

; <label>:205                                     ; preds = %194, %186
  %206 = phi i32 [ %193, %186 ], [ %204, %194 ]
  store i32 %206, i32* @zz_size, align 4
  %207 = load i32, i32* @zz_size, align 4
  %208 = sext i32 %207 to i64
  %209 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %208
  %210 = load %union.rec*, %union.rec** %209, align 8
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 0
  %214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %213, i32 0, i64 0
  %215 = getelementptr inbounds %struct.LIST, %struct.LIST* %214, i32 0, i32 0
  store %union.rec* %210, %union.rec** %215, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = load i32, i32* @zz_size, align 4
  %218 = sext i32 %217 to i64
  %219 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %218
  store %union.rec* %216, %union.rec** %219, align 8
  %220 = load %union.rec*, %union.rec** %env, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 1
  %223 = bitcast %union.FIRST_UNION* %222 to %struct.anon*
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp eq i32 %226, 82
  br i1 %227, label %231, label %228

; <label>:228                                     ; preds = %205
  %229 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %230 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %229, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.14, i32 0, i32 0))
  br label %231

; <label>:231                                     ; preds = %228, %205
  %232 = load %union.rec*, %union.rec** %env, align 8
  ret %union.rec* %232
}

; Function Attrs: nounwind uwtable
define %union.rec* @ClosureExpand(%union.rec* %x, %union.rec* %env, i32 %crs_wanted, %union.rec** %crs, %union.rec** %res_env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.rec**, align 8
  %5 = alloca %union.rec**, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %prnt_env = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  store i32 %crs_wanted, i32* %3, align 4
  store %union.rec** %crs, %union.rec*** %4, align 8
  store %union.rec** %res_env, %union.rec*** %5, align 8
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 1
  %9 = bitcast %union.FIRST_UNION* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 2
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %15, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %14, %0
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.closure_type*
  %20 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %19, i32 0, i32 5
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = bitcast %union.rec* %21 to %struct.symbol_type*
  %23 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %22, i32 0, i32 12
  %24 = load i16, i16* %23, align 2
  %25 = zext i16 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %30, label %27

; <label>:27                                      ; preds = %17
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %29 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %28, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.16, i32 0, i32 0))
  br label %30

; <label>:30                                      ; preds = %27, %17
  %31 = load %union.rec*, %union.rec** %1, align 8
  %32 = bitcast %union.rec* %31 to %struct.closure_type*
  %33 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %32, i32 0, i32 5
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 2
  %37 = bitcast %union.SECOND_UNION* %36 to %struct.anon.5*
  %38 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %37, i32 0, i32 1
  %39 = bitcast [3 x i8]* %38 to i24*
  %40 = load i24, i24* %39, align 1
  %41 = lshr i24 %40, 1
  %42 = and i24 %41, 1
  %43 = zext i24 %42 to i32
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %30
  %46 = load %union.rec*, %union.rec** %1, align 8
  call void @CrossAddTag(%union.rec* %46)
  br label %47

; <label>:47                                      ; preds = %45, %30
  %48 = load i32, i32* %3, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %548

; <label>:50                                      ; preds = %47
  %51 = load %union.rec*, %union.rec** %1, align 8
  %52 = bitcast %union.rec* %51 to %struct.closure_type*
  %53 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %52, i32 0, i32 5
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 2
  %57 = bitcast %union.SECOND_UNION* %56 to %struct.anon.5*
  %58 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %57, i32 0, i32 1
  %59 = bitcast [3 x i8]* %58 to i24*
  %60 = load i24, i24* %59, align 1
  %61 = lshr i24 %60, 1
  %62 = and i24 %61, 1
  %63 = zext i24 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %548

; <label>:65                                      ; preds = %50
  %66 = load %union.rec*, %union.rec** %1, align 8
  %67 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %68 = call %union.rec* @CopyObject(%union.rec* %66, %struct.FILE_POS* %67)
  store %union.rec* %68, %union.rec** %tmp, align 8
  %69 = load %union.rec*, %union.rec** %2, align 8
  %70 = load %union.rec*, %union.rec** %tmp, align 8
  call void @AttachEnv(%union.rec* %69, %union.rec* %70)
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = bitcast %union.rec* %71 to %struct.closure_type*
  %73 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %72, i32 0, i32 5
  %74 = load %union.rec*, %union.rec** %73, align 8
  %75 = load %union.rec*, %union.rec** %tmp, align 8
  %76 = call %union.rec* @CrossMake(%union.rec* %74, %union.rec* %75, i32 131)
  store %union.rec* %76, %union.rec** %y, align 8
  %77 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 131), align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* @zz_size, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %79, 265
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %65
  %82 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %82)
  br label %109

; <label>:84                                      ; preds = %65
  %85 = load i32, i32* @zz_size, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %86
  %88 = load %union.rec*, %union.rec** %87, align 8
  %89 = icmp eq %union.rec* %88, null
  br i1 %89, label %90, label %94

; <label>:90                                      ; preds = %84
  %91 = load i32, i32* @zz_size, align 4
  %92 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %93 = call %union.rec* @GetMemory(i32 %91, %struct.FILE_POS* %92)
  store %union.rec* %93, %union.rec** @zz_hold, align 8
  br label %108

; <label>:94                                      ; preds = %84
  %95 = load i32, i32* @zz_size, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %96
  %98 = load %union.rec*, %union.rec** %97, align 8
  store %union.rec* %98, %union.rec** @zz_hold, align 8
  store %union.rec* %98, %union.rec** @zz_hold, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %101, i32 0, i64 0
  %103 = getelementptr inbounds %struct.LIST, %struct.LIST* %102, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %103, align 8
  %105 = load i32, i32* @zz_size, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %106
  store %union.rec* %104, %union.rec** %107, align 8
  br label %108

; <label>:108                                     ; preds = %94, %90
  br label %109

; <label>:109                                     ; preds = %108, %81
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 1
  %113 = bitcast %union.FIRST_UNION* %112 to %struct.anon*
  %114 = getelementptr inbounds %struct.anon, %struct.anon* %113, i32 0, i32 0
  store i8 -125, i8* %114, align 1
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 1
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 1
  store %union.rec* %115, %union.rec** %120, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 1
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 0
  store %union.rec* %115, %union.rec** %125, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 0
  %129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %128, i32 0, i64 0
  %130 = getelementptr inbounds %struct.LIST, %struct.LIST* %129, i32 0, i32 1
  store %union.rec* %115, %union.rec** %130, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 0
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 0
  store %union.rec* %115, %union.rec** %135, align 8
  store %union.rec* %115, %union.rec** %tmp, align 8
  %136 = load %union.rec*, %union.rec** %y, align 8
  %137 = load %union.rec*, %union.rec** %tmp, align 8
  %138 = bitcast %union.rec* %137 to %struct.closure_type*
  %139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %138, i32 0, i32 5
  store %union.rec* %136, %union.rec** %139, align 8
  %140 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %141 = zext i8 %140 to i32
  store i32 %141, i32* @zz_size, align 4
  %142 = sext i32 %141 to i64
  %143 = icmp uge i64 %142, 265
  br i1 %143, label %144, label %147

; <label>:144                                     ; preds = %109
  %145 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %145)
  br label %172

; <label>:147                                     ; preds = %109
  %148 = load i32, i32* @zz_size, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %149
  %151 = load %union.rec*, %union.rec** %150, align 8
  %152 = icmp eq %union.rec* %151, null
  br i1 %152, label %153, label %157

; <label>:153                                     ; preds = %147
  %154 = load i32, i32* @zz_size, align 4
  %155 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %156 = call %union.rec* @GetMemory(i32 %154, %struct.FILE_POS* %155)
  store %union.rec* %156, %union.rec** @zz_hold, align 8
  br label %171

; <label>:157                                     ; preds = %147
  %158 = load i32, i32* @zz_size, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %159
  %161 = load %union.rec*, %union.rec** %160, align 8
  store %union.rec* %161, %union.rec** @zz_hold, align 8
  store %union.rec* %161, %union.rec** @zz_hold, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 0
  %165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %164, i32 0, i64 0
  %166 = getelementptr inbounds %struct.LIST, %struct.LIST* %165, i32 0, i32 0
  %167 = load %union.rec*, %union.rec** %166, align 8
  %168 = load i32, i32* @zz_size, align 4
  %169 = sext i32 %168 to i64
  %170 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %169
  store %union.rec* %167, %union.rec** %170, align 8
  br label %171

; <label>:171                                     ; preds = %157, %153
  br label %172

; <label>:172                                     ; preds = %171, %144
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 1
  %176 = bitcast %union.FIRST_UNION* %175 to %struct.anon*
  %177 = getelementptr inbounds %struct.anon, %struct.anon* %176, i32 0, i32 0
  store i8 0, i8* %177, align 1
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 1
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 1
  store %union.rec* %178, %union.rec** %183, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 0
  %187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %186, i32 0, i64 1
  %188 = getelementptr inbounds %struct.LIST, %struct.LIST* %187, i32 0, i32 0
  store %union.rec* %178, %union.rec** %188, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %191, i32 0, i64 0
  %193 = getelementptr inbounds %struct.LIST, %struct.LIST* %192, i32 0, i32 1
  store %union.rec* %178, %union.rec** %193, align 8
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 0
  %197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %196, i32 0, i64 0
  %198 = getelementptr inbounds %struct.LIST, %struct.LIST* %197, i32 0, i32 0
  store %union.rec* %178, %union.rec** %198, align 8
  store %union.rec* %178, %union.rec** @xx_link, align 8
  %199 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %199, %union.rec** @zz_res, align 8
  %200 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %200, %union.rec** @zz_hold, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %202 = icmp eq %union.rec* %201, null
  br i1 %202, label %203, label %205

; <label>:203                                     ; preds = %172
  %204 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %253

; <label>:205                                     ; preds = %172
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  %207 = icmp eq %union.rec* %206, null
  br i1 %207, label %208, label %210

; <label>:208                                     ; preds = %205
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %251

; <label>:210                                     ; preds = %205
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 0
  %214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %213, i32 0, i64 0
  %215 = getelementptr inbounds %struct.LIST, %struct.LIST* %214, i32 0, i32 0
  %216 = load %union.rec*, %union.rec** %215, align 8
  store %union.rec* %216, %union.rec** @zz_tmp, align 8
  %217 = load %union.rec*, %union.rec** @zz_res, align 8
  %218 = bitcast %union.rec* %217 to %struct.word_type*
  %219 = getelementptr inbounds %struct.word_type, %struct.word_type* %218, i32 0, i32 0
  %220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %219, i32 0, i64 0
  %221 = getelementptr inbounds %struct.LIST, %struct.LIST* %220, i32 0, i32 0
  %222 = load %union.rec*, %union.rec** %221, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 0
  %226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %225, i32 0, i64 0
  %227 = getelementptr inbounds %struct.LIST, %struct.LIST* %226, i32 0, i32 0
  store %union.rec* %222, %union.rec** %227, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %229 = load %union.rec*, %union.rec** @zz_res, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 0
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 0
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 1
  store %union.rec* %228, %union.rec** %238, align 8
  %239 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %240 = load %union.rec*, %union.rec** @zz_res, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 0
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 0
  store %union.rec* %239, %union.rec** %244, align 8
  %245 = load %union.rec*, %union.rec** @zz_res, align 8
  %246 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 0
  %249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %248, i32 0, i64 0
  %250 = getelementptr inbounds %struct.LIST, %struct.LIST* %249, i32 0, i32 1
  store %union.rec* %245, %union.rec** %250, align 8
  br label %251

; <label>:251                                     ; preds = %210, %208
  %252 = phi %union.rec* [ %209, %208 ], [ %245, %210 ]
  br label %253

; <label>:253                                     ; preds = %251, %203
  %254 = phi %union.rec* [ %204, %203 ], [ %252, %251 ]
  %255 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %255, %union.rec** @zz_res, align 8
  %256 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %256, %union.rec** @zz_hold, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = icmp eq %union.rec* %257, null
  br i1 %258, label %259, label %261

; <label>:259                                     ; preds = %253
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %309

; <label>:261                                     ; preds = %253
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = icmp eq %union.rec* %262, null
  br i1 %263, label %264, label %266

; <label>:264                                     ; preds = %261
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %307

; <label>:266                                     ; preds = %261
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 0
  %270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %269, i32 0, i64 1
  %271 = getelementptr inbounds %struct.LIST, %struct.LIST* %270, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %271, align 8
  store %union.rec* %272, %union.rec** @zz_tmp, align 8
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 0
  %276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %275, i32 0, i64 1
  %277 = getelementptr inbounds %struct.LIST, %struct.LIST* %276, i32 0, i32 0
  %278 = load %union.rec*, %union.rec** %277, align 8
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %281, i32 0, i64 1
  %283 = getelementptr inbounds %struct.LIST, %struct.LIST* %282, i32 0, i32 0
  store %union.rec* %278, %union.rec** %283, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 0
  %288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %287, i32 0, i64 1
  %289 = getelementptr inbounds %struct.LIST, %struct.LIST* %288, i32 0, i32 0
  %290 = load %union.rec*, %union.rec** %289, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 1
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 1
  store %union.rec* %284, %union.rec** %294, align 8
  %295 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 1
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 0
  store %union.rec* %295, %union.rec** %300, align 8
  %301 = load %union.rec*, %union.rec** @zz_res, align 8
  %302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %303 = bitcast %union.rec* %302 to %struct.word_type*
  %304 = getelementptr inbounds %struct.word_type, %struct.word_type* %303, i32 0, i32 0
  %305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %304, i32 0, i64 1
  %306 = getelementptr inbounds %struct.LIST, %struct.LIST* %305, i32 0, i32 1
  store %union.rec* %301, %union.rec** %306, align 8
  br label %307

; <label>:307                                     ; preds = %266, %264
  %308 = phi %union.rec* [ %265, %264 ], [ %301, %266 ]
  br label %309

; <label>:309                                     ; preds = %307, %259
  %310 = phi %union.rec* [ %260, %259 ], [ %308, %307 ]
  %311 = load %union.rec**, %union.rec*** %4, align 8
  %312 = load %union.rec*, %union.rec** %311, align 8
  %313 = icmp eq %union.rec* %312, null
  br i1 %313, label %314, label %375

; <label>:314                                     ; preds = %309
  %315 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 148), align 1
  %316 = zext i8 %315 to i32
  store i32 %316, i32* @zz_size, align 4
  %317 = sext i32 %316 to i64
  %318 = icmp uge i64 %317, 265
  br i1 %318, label %319, label %322

; <label>:319                                     ; preds = %314
  %320 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %321 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %320)
  br label %347

; <label>:322                                     ; preds = %314
  %323 = load i32, i32* @zz_size, align 4
  %324 = sext i32 %323 to i64
  %325 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %324
  %326 = load %union.rec*, %union.rec** %325, align 8
  %327 = icmp eq %union.rec* %326, null
  br i1 %327, label %328, label %332

; <label>:328                                     ; preds = %322
  %329 = load i32, i32* @zz_size, align 4
  %330 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %331 = call %union.rec* @GetMemory(i32 %329, %struct.FILE_POS* %330)
  store %union.rec* %331, %union.rec** @zz_hold, align 8
  br label %346

; <label>:332                                     ; preds = %322
  %333 = load i32, i32* @zz_size, align 4
  %334 = sext i32 %333 to i64
  %335 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %334
  %336 = load %union.rec*, %union.rec** %335, align 8
  store %union.rec* %336, %union.rec** @zz_hold, align 8
  store %union.rec* %336, %union.rec** @zz_hold, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 0
  %340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %339, i32 0, i64 0
  %341 = getelementptr inbounds %struct.LIST, %struct.LIST* %340, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %341, align 8
  %343 = load i32, i32* @zz_size, align 4
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %344
  store %union.rec* %342, %union.rec** %345, align 8
  br label %346

; <label>:346                                     ; preds = %332, %328
  br label %347

; <label>:347                                     ; preds = %346, %319
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 1
  %351 = bitcast %union.FIRST_UNION* %350 to %struct.anon*
  %352 = getelementptr inbounds %struct.anon, %struct.anon* %351, i32 0, i32 0
  store i8 -108, i8* %352, align 1
  %353 = load %union.rec*, %union.rec** @zz_hold, align 8
  %354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 0
  %357 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %356, i32 0, i64 1
  %358 = getelementptr inbounds %struct.LIST, %struct.LIST* %357, i32 0, i32 1
  store %union.rec* %353, %union.rec** %358, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 0
  %362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %361, i32 0, i64 1
  %363 = getelementptr inbounds %struct.LIST, %struct.LIST* %362, i32 0, i32 0
  store %union.rec* %353, %union.rec** %363, align 8
  %364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %365 = bitcast %union.rec* %364 to %struct.word_type*
  %366 = getelementptr inbounds %struct.word_type, %struct.word_type* %365, i32 0, i32 0
  %367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %366, i32 0, i64 0
  %368 = getelementptr inbounds %struct.LIST, %struct.LIST* %367, i32 0, i32 1
  store %union.rec* %353, %union.rec** %368, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 0
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 0
  store %union.rec* %353, %union.rec** %373, align 8
  %374 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %353, %union.rec** %374, align 8
  br label %375

; <label>:375                                     ; preds = %347, %309
  %376 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %377 = zext i8 %376 to i32
  store i32 %377, i32* @zz_size, align 4
  %378 = sext i32 %377 to i64
  %379 = icmp uge i64 %378, 265
  br i1 %379, label %380, label %383

; <label>:380                                     ; preds = %375
  %381 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %382 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %381)
  br label %408

; <label>:383                                     ; preds = %375
  %384 = load i32, i32* @zz_size, align 4
  %385 = sext i32 %384 to i64
  %386 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %385
  %387 = load %union.rec*, %union.rec** %386, align 8
  %388 = icmp eq %union.rec* %387, null
  br i1 %388, label %389, label %393

; <label>:389                                     ; preds = %383
  %390 = load i32, i32* @zz_size, align 4
  %391 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %392 = call %union.rec* @GetMemory(i32 %390, %struct.FILE_POS* %391)
  store %union.rec* %392, %union.rec** @zz_hold, align 8
  br label %407

; <label>:393                                     ; preds = %383
  %394 = load i32, i32* @zz_size, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %395
  %397 = load %union.rec*, %union.rec** %396, align 8
  store %union.rec* %397, %union.rec** @zz_hold, align 8
  store %union.rec* %397, %union.rec** @zz_hold, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 0
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 0
  %403 = load %union.rec*, %union.rec** %402, align 8
  %404 = load i32, i32* @zz_size, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %405
  store %union.rec* %403, %union.rec** %406, align 8
  br label %407

; <label>:407                                     ; preds = %393, %389
  br label %408

; <label>:408                                     ; preds = %407, %380
  %409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %410 = bitcast %union.rec* %409 to %struct.word_type*
  %411 = getelementptr inbounds %struct.word_type, %struct.word_type* %410, i32 0, i32 1
  %412 = bitcast %union.FIRST_UNION* %411 to %struct.anon*
  %413 = getelementptr inbounds %struct.anon, %struct.anon* %412, i32 0, i32 0
  store i8 0, i8* %413, align 1
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %416 = bitcast %union.rec* %415 to %struct.word_type*
  %417 = getelementptr inbounds %struct.word_type, %struct.word_type* %416, i32 0, i32 0
  %418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %417, i32 0, i64 1
  %419 = getelementptr inbounds %struct.LIST, %struct.LIST* %418, i32 0, i32 1
  store %union.rec* %414, %union.rec** %419, align 8
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 0
  %423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %422, i32 0, i64 1
  %424 = getelementptr inbounds %struct.LIST, %struct.LIST* %423, i32 0, i32 0
  store %union.rec* %414, %union.rec** %424, align 8
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %426 = bitcast %union.rec* %425 to %struct.word_type*
  %427 = getelementptr inbounds %struct.word_type, %struct.word_type* %426, i32 0, i32 0
  %428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %427, i32 0, i64 0
  %429 = getelementptr inbounds %struct.LIST, %struct.LIST* %428, i32 0, i32 1
  store %union.rec* %414, %union.rec** %429, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 0
  %433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %432, i32 0, i64 0
  %434 = getelementptr inbounds %struct.LIST, %struct.LIST* %433, i32 0, i32 0
  store %union.rec* %414, %union.rec** %434, align 8
  store %union.rec* %414, %union.rec** @xx_link, align 8
  %435 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %435, %union.rec** @zz_res, align 8
  %436 = load %union.rec**, %union.rec*** %4, align 8
  %437 = load %union.rec*, %union.rec** %436, align 8
  store %union.rec* %437, %union.rec** @zz_hold, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %439 = icmp eq %union.rec* %438, null
  br i1 %439, label %440, label %442

; <label>:440                                     ; preds = %408
  %441 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %490

; <label>:442                                     ; preds = %408
  %443 = load %union.rec*, %union.rec** @zz_res, align 8
  %444 = icmp eq %union.rec* %443, null
  br i1 %444, label %445, label %447

; <label>:445                                     ; preds = %442
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %488

; <label>:447                                     ; preds = %442
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %450, i32 0, i64 0
  %452 = getelementptr inbounds %struct.LIST, %struct.LIST* %451, i32 0, i32 0
  %453 = load %union.rec*, %union.rec** %452, align 8
  store %union.rec* %453, %union.rec** @zz_tmp, align 8
  %454 = load %union.rec*, %union.rec** @zz_res, align 8
  %455 = bitcast %union.rec* %454 to %struct.word_type*
  %456 = getelementptr inbounds %struct.word_type, %struct.word_type* %455, i32 0, i32 0
  %457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %456, i32 0, i64 0
  %458 = getelementptr inbounds %struct.LIST, %struct.LIST* %457, i32 0, i32 0
  %459 = load %union.rec*, %union.rec** %458, align 8
  %460 = load %union.rec*, %union.rec** @zz_hold, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 0
  %463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %462, i32 0, i64 0
  %464 = getelementptr inbounds %struct.LIST, %struct.LIST* %463, i32 0, i32 0
  store %union.rec* %459, %union.rec** %464, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %466 = load %union.rec*, %union.rec** @zz_res, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %468, i32 0, i64 0
  %470 = getelementptr inbounds %struct.LIST, %struct.LIST* %469, i32 0, i32 0
  %471 = load %union.rec*, %union.rec** %470, align 8
  %472 = bitcast %union.rec* %471 to %struct.word_type*
  %473 = getelementptr inbounds %struct.word_type, %struct.word_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %473, i32 0, i64 0
  %475 = getelementptr inbounds %struct.LIST, %struct.LIST* %474, i32 0, i32 1
  store %union.rec* %465, %union.rec** %475, align 8
  %476 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %477 = load %union.rec*, %union.rec** @zz_res, align 8
  %478 = bitcast %union.rec* %477 to %struct.word_type*
  %479 = getelementptr inbounds %struct.word_type, %struct.word_type* %478, i32 0, i32 0
  %480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %479, i32 0, i64 0
  %481 = getelementptr inbounds %struct.LIST, %struct.LIST* %480, i32 0, i32 0
  store %union.rec* %476, %union.rec** %481, align 8
  %482 = load %union.rec*, %union.rec** @zz_res, align 8
  %483 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %484 = bitcast %union.rec* %483 to %struct.word_type*
  %485 = getelementptr inbounds %struct.word_type, %struct.word_type* %484, i32 0, i32 0
  %486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %485, i32 0, i64 0
  %487 = getelementptr inbounds %struct.LIST, %struct.LIST* %486, i32 0, i32 1
  store %union.rec* %482, %union.rec** %487, align 8
  br label %488

; <label>:488                                     ; preds = %447, %445
  %489 = phi %union.rec* [ %446, %445 ], [ %482, %447 ]
  br label %490

; <label>:490                                     ; preds = %488, %440
  %491 = phi %union.rec* [ %441, %440 ], [ %489, %488 ]
  %492 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %492, %union.rec** @zz_res, align 8
  %493 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = icmp eq %union.rec* %494, null
  br i1 %495, label %496, label %498

; <label>:496                                     ; preds = %490
  %497 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %546

; <label>:498                                     ; preds = %490
  %499 = load %union.rec*, %union.rec** @zz_res, align 8
  %500 = icmp eq %union.rec* %499, null
  br i1 %500, label %501, label %503

; <label>:501                                     ; preds = %498
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %544

; <label>:503                                     ; preds = %498
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 0
  %507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %506, i32 0, i64 1
  %508 = getelementptr inbounds %struct.LIST, %struct.LIST* %507, i32 0, i32 0
  %509 = load %union.rec*, %union.rec** %508, align 8
  store %union.rec* %509, %union.rec** @zz_tmp, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 0
  %513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %512, i32 0, i64 1
  %514 = getelementptr inbounds %struct.LIST, %struct.LIST* %513, i32 0, i32 0
  %515 = load %union.rec*, %union.rec** %514, align 8
  %516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %518, i32 0, i64 1
  %520 = getelementptr inbounds %struct.LIST, %struct.LIST* %519, i32 0, i32 0
  store %union.rec* %515, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %522 = load %union.rec*, %union.rec** @zz_res, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 1
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 0
  %527 = load %union.rec*, %union.rec** %526, align 8
  %528 = bitcast %union.rec* %527 to %struct.word_type*
  %529 = getelementptr inbounds %struct.word_type, %struct.word_type* %528, i32 0, i32 0
  %530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %529, i32 0, i64 1
  %531 = getelementptr inbounds %struct.LIST, %struct.LIST* %530, i32 0, i32 1
  store %union.rec* %521, %union.rec** %531, align 8
  %532 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %533 = load %union.rec*, %union.rec** @zz_res, align 8
  %534 = bitcast %union.rec* %533 to %struct.word_type*
  %535 = getelementptr inbounds %struct.word_type, %struct.word_type* %534, i32 0, i32 0
  %536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %535, i32 0, i64 1
  %537 = getelementptr inbounds %struct.LIST, %struct.LIST* %536, i32 0, i32 0
  store %union.rec* %532, %union.rec** %537, align 8
  %538 = load %union.rec*, %union.rec** @zz_res, align 8
  %539 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %540 = bitcast %union.rec* %539 to %struct.word_type*
  %541 = getelementptr inbounds %struct.word_type, %struct.word_type* %540, i32 0, i32 0
  %542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %541, i32 0, i64 1
  %543 = getelementptr inbounds %struct.LIST, %struct.LIST* %542, i32 0, i32 1
  store %union.rec* %538, %union.rec** %543, align 8
  br label %544

; <label>:544                                     ; preds = %503, %501
  %545 = phi %union.rec* [ %502, %501 ], [ %538, %503 ]
  br label %546

; <label>:546                                     ; preds = %544, %496
  %547 = phi %union.rec* [ %497, %496 ], [ %545, %544 ]
  br label %548

; <label>:548                                     ; preds = %546, %50, %47
  %549 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* null, %union.rec** %549, align 8
  store %union.rec* null, %union.rec** %res, align 8
  %550 = load %union.rec*, %union.rec** %1, align 8
  %551 = bitcast %union.rec* %550 to %struct.closure_type*
  %552 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %551, i32 0, i32 5
  %553 = load %union.rec*, %union.rec** %552, align 8
  %554 = bitcast %union.rec* %553 to %struct.word_type*
  %555 = getelementptr inbounds %struct.word_type, %struct.word_type* %554, i32 0, i32 1
  %556 = bitcast %union.FIRST_UNION* %555 to %struct.anon*
  %557 = getelementptr inbounds %struct.anon, %struct.anon* %556, i32 0, i32 0
  %558 = load i8, i8* %557, align 1
  %559 = zext i8 %558 to i32
  %560 = icmp sge i32 %559, 144
  br i1 %560, label %561, label %1289

; <label>:561                                     ; preds = %548
  %562 = load %union.rec*, %union.rec** %1, align 8
  %563 = bitcast %union.rec* %562 to %struct.closure_type*
  %564 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %563, i32 0, i32 5
  %565 = load %union.rec*, %union.rec** %564, align 8
  %566 = bitcast %union.rec* %565 to %struct.word_type*
  %567 = getelementptr inbounds %struct.word_type, %struct.word_type* %566, i32 0, i32 1
  %568 = bitcast %union.FIRST_UNION* %567 to %struct.anon*
  %569 = getelementptr inbounds %struct.anon, %struct.anon* %568, i32 0, i32 0
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i32
  %572 = icmp sle i32 %571, 146
  br i1 %572, label %573, label %1289

; <label>:573                                     ; preds = %561
  %574 = load %union.rec*, %union.rec** %2, align 8
  %575 = load %union.rec*, %union.rec** %1, align 8
  %576 = bitcast %union.rec* %575 to %struct.closure_type*
  %577 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %576, i32 0, i32 5
  %578 = load %union.rec*, %union.rec** %577, align 8
  %579 = bitcast %union.rec* %578 to %struct.symbol_type*
  %580 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %579, i32 0, i32 3
  %581 = load %union.rec*, %union.rec** %580, align 8
  %582 = call %union.rec* @SearchEnv(%union.rec* %574, %union.rec* %581)
  store %union.rec* %582, %union.rec** %prnt, align 8
  %583 = load %union.rec*, %union.rec** %prnt, align 8
  %584 = icmp ne %union.rec* %583, null
  br i1 %584, label %585, label %1254

; <label>:585                                     ; preds = %573
  %586 = load %union.rec*, %union.rec** %prnt, align 8
  %587 = call %union.rec* @GetEnv(%union.rec* %586)
  store %union.rec* %587, %union.rec** %prnt_env, align 8
  %588 = load %union.rec*, %union.rec** %prnt, align 8
  %589 = bitcast %union.rec* %588 to %struct.word_type*
  %590 = getelementptr inbounds %struct.word_type, %struct.word_type* %589, i32 0, i32 0
  %591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %590, i32 0, i64 0
  %592 = getelementptr inbounds %struct.LIST, %struct.LIST* %591, i32 0, i32 1
  %593 = load %union.rec*, %union.rec** %592, align 8
  store %union.rec* %593, %union.rec** %link, align 8
  br label %594

; <label>:594                                     ; preds = %1246, %585
  %595 = load %union.rec*, %union.rec** %link, align 8
  %596 = load %union.rec*, %union.rec** %prnt, align 8
  %597 = icmp ne %union.rec* %595, %596
  br i1 %597, label %598, label %1253

; <label>:598                                     ; preds = %594
  %599 = load %union.rec*, %union.rec** %link, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 1
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 0
  %604 = load %union.rec*, %union.rec** %603, align 8
  store %union.rec* %604, %union.rec** %par, align 8
  br label %605

; <label>:605                                     ; preds = %615, %598
  %606 = load %union.rec*, %union.rec** %par, align 8
  %607 = bitcast %union.rec* %606 to %struct.word_type*
  %608 = getelementptr inbounds %struct.word_type, %struct.word_type* %607, i32 0, i32 1
  %609 = bitcast %union.FIRST_UNION* %608 to %struct.anon*
  %610 = getelementptr inbounds %struct.anon, %struct.anon* %609, i32 0, i32 0
  %611 = load i8, i8* %610, align 1
  %612 = zext i8 %611 to i32
  %613 = icmp eq i32 %612, 0
  br i1 %613, label %614, label %622

; <label>:614                                     ; preds = %605
  br label %615

; <label>:615                                     ; preds = %614
  %616 = load %union.rec*, %union.rec** %par, align 8
  %617 = bitcast %union.rec* %616 to %struct.word_type*
  %618 = getelementptr inbounds %struct.word_type, %struct.word_type* %617, i32 0, i32 0
  %619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %618, i32 0, i64 1
  %620 = getelementptr inbounds %struct.LIST, %struct.LIST* %619, i32 0, i32 0
  %621 = load %union.rec*, %union.rec** %620, align 8
  store %union.rec* %621, %union.rec** %par, align 8
  br label %605

; <label>:622                                     ; preds = %605
  %623 = load %union.rec*, %union.rec** %par, align 8
  %624 = bitcast %union.rec* %623 to %struct.word_type*
  %625 = getelementptr inbounds %struct.word_type, %struct.word_type* %624, i32 0, i32 1
  %626 = bitcast %union.FIRST_UNION* %625 to %struct.anon*
  %627 = getelementptr inbounds %struct.anon, %struct.anon* %626, i32 0, i32 0
  %628 = load i8, i8* %627, align 1
  %629 = zext i8 %628 to i32
  %630 = icmp eq i32 %629, 10
  br i1 %630, label %631, label %1245

; <label>:631                                     ; preds = %622
  %632 = load %union.rec*, %union.rec** %par, align 8
  %633 = bitcast %union.rec* %632 to %struct.closure_type*
  %634 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %633, i32 0, i32 5
  %635 = load %union.rec*, %union.rec** %634, align 8
  %636 = load %union.rec*, %union.rec** %1, align 8
  %637 = bitcast %union.rec* %636 to %struct.closure_type*
  %638 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %637, i32 0, i32 5
  %639 = load %union.rec*, %union.rec** %638, align 8
  %640 = icmp eq %union.rec* %635, %639
  br i1 %640, label %641, label %1245

; <label>:641                                     ; preds = %631
  %642 = load %union.rec*, %union.rec** %par, align 8
  %643 = bitcast %union.rec* %642 to %struct.word_type*
  %644 = getelementptr inbounds %struct.word_type, %struct.word_type* %643, i32 0, i32 0
  %645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %644, i32 0, i64 0
  %646 = getelementptr inbounds %struct.LIST, %struct.LIST* %645, i32 0, i32 1
  %647 = load %union.rec*, %union.rec** %646, align 8
  %648 = load %union.rec*, %union.rec** %par, align 8
  %649 = icmp ne %union.rec* %647, %648
  br i1 %649, label %653, label %650

; <label>:650                                     ; preds = %641
  %651 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %652 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %651, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.17, i32 0, i32 0))
  br label %653

; <label>:653                                     ; preds = %650, %641
  %654 = load %union.rec*, %union.rec** %par, align 8
  %655 = bitcast %union.rec* %654 to %struct.word_type*
  %656 = getelementptr inbounds %struct.word_type, %struct.word_type* %655, i32 0, i32 0
  %657 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %656, i32 0, i64 0
  %658 = getelementptr inbounds %struct.LIST, %struct.LIST* %657, i32 0, i32 1
  %659 = load %union.rec*, %union.rec** %658, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 0
  %662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %661, i32 0, i64 1
  %663 = getelementptr inbounds %struct.LIST, %struct.LIST* %662, i32 0, i32 0
  %664 = load %union.rec*, %union.rec** %663, align 8
  store %union.rec* %664, %union.rec** %res, align 8
  br label %665

; <label>:665                                     ; preds = %675, %653
  %666 = load %union.rec*, %union.rec** %res, align 8
  %667 = bitcast %union.rec* %666 to %struct.word_type*
  %668 = getelementptr inbounds %struct.word_type, %struct.word_type* %667, i32 0, i32 1
  %669 = bitcast %union.FIRST_UNION* %668 to %struct.anon*
  %670 = getelementptr inbounds %struct.anon, %struct.anon* %669, i32 0, i32 0
  %671 = load i8, i8* %670, align 1
  %672 = zext i8 %671 to i32
  %673 = icmp eq i32 %672, 0
  br i1 %673, label %674, label %682

; <label>:674                                     ; preds = %665
  br label %675

; <label>:675                                     ; preds = %674
  %676 = load %union.rec*, %union.rec** %res, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 0
  %679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %678, i32 0, i64 1
  %680 = getelementptr inbounds %struct.LIST, %struct.LIST* %679, i32 0, i32 0
  %681 = load %union.rec*, %union.rec** %680, align 8
  store %union.rec* %681, %union.rec** %res, align 8
  br label %665

; <label>:682                                     ; preds = %665
  %683 = load %union.rec*, %union.rec** %par, align 8
  %684 = bitcast %union.rec* %683 to %struct.closure_type*
  %685 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %684, i32 0, i32 5
  %686 = load %union.rec*, %union.rec** %685, align 8
  %687 = bitcast %union.rec* %686 to %struct.symbol_type*
  %688 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %687, i32 0, i32 3
  %689 = load %union.rec*, %union.rec** %688, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 2
  %692 = bitcast %union.SECOND_UNION* %691 to %struct.anon.5*
  %693 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %692, i32 0, i32 1
  %694 = bitcast [3 x i8]* %693 to i24*
  %695 = load i24, i24* %694, align 1
  %696 = lshr i24 %695, 15
  %697 = and i24 %696, 1
  %698 = zext i24 %697 to i32
  %699 = icmp ne i32 %698, 0
  br i1 %699, label %712, label %700

; <label>:700                                     ; preds = %682
  %701 = load %union.rec*, %union.rec** %par, align 8
  %702 = bitcast %union.rec* %701 to %struct.closure_type*
  %703 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %702, i32 0, i32 5
  %704 = load %union.rec*, %union.rec** %703, align 8
  %705 = bitcast %union.rec* %704 to %struct.symbol_type*
  %706 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %705, i32 0, i32 16
  %707 = load i8, i8* %706, align 2
  %708 = lshr i8 %707, 4
  %709 = and i8 %708, 1
  %710 = zext i8 %709 to i32
  %711 = icmp ne i32 %710, 0
  br i1 %711, label %712, label %716

; <label>:712                                     ; preds = %700, %682
  %713 = load %union.rec*, %union.rec** %res, align 8
  %714 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %715 = call %union.rec* @CopyObject(%union.rec* %713, %struct.FILE_POS* %714)
  store %union.rec* %715, %union.rec** %res, align 8
  br label %1058

; <label>:716                                     ; preds = %700
  %717 = load %union.rec*, %union.rec** %par, align 8
  %718 = bitcast %union.rec* %717 to %struct.word_type*
  %719 = getelementptr inbounds %struct.word_type, %struct.word_type* %718, i32 0, i32 0
  %720 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %719, i32 0, i64 0
  %721 = getelementptr inbounds %struct.LIST, %struct.LIST* %720, i32 0, i32 1
  %722 = load %union.rec*, %union.rec** %721, align 8
  store %union.rec* %722, %union.rec** @xx_link, align 8
  %723 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %723, %union.rec** @zz_hold, align 8
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = bitcast %union.rec* %724 to %struct.word_type*
  %726 = getelementptr inbounds %struct.word_type, %struct.word_type* %725, i32 0, i32 0
  %727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %726, i32 0, i64 1
  %728 = getelementptr inbounds %struct.LIST, %struct.LIST* %727, i32 0, i32 1
  %729 = load %union.rec*, %union.rec** %728, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %731 = icmp eq %union.rec* %729, %730
  br i1 %731, label %732, label %733

; <label>:732                                     ; preds = %716
  br label %774

; <label>:733                                     ; preds = %716
  %734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %735 = bitcast %union.rec* %734 to %struct.word_type*
  %736 = getelementptr inbounds %struct.word_type, %struct.word_type* %735, i32 0, i32 0
  %737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %736, i32 0, i64 1
  %738 = getelementptr inbounds %struct.LIST, %struct.LIST* %737, i32 0, i32 1
  %739 = load %union.rec*, %union.rec** %738, align 8
  store %union.rec* %739, %union.rec** @zz_res, align 8
  %740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 0
  %743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %742, i32 0, i64 1
  %744 = getelementptr inbounds %struct.LIST, %struct.LIST* %743, i32 0, i32 0
  %745 = load %union.rec*, %union.rec** %744, align 8
  %746 = load %union.rec*, %union.rec** @zz_res, align 8
  %747 = bitcast %union.rec* %746 to %struct.word_type*
  %748 = getelementptr inbounds %struct.word_type, %struct.word_type* %747, i32 0, i32 0
  %749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %748, i32 0, i64 1
  %750 = getelementptr inbounds %struct.LIST, %struct.LIST* %749, i32 0, i32 0
  store %union.rec* %745, %union.rec** %750, align 8
  %751 = load %union.rec*, %union.rec** @zz_res, align 8
  %752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %753 = bitcast %union.rec* %752 to %struct.word_type*
  %754 = getelementptr inbounds %struct.word_type, %struct.word_type* %753, i32 0, i32 0
  %755 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %754, i32 0, i64 1
  %756 = getelementptr inbounds %struct.LIST, %struct.LIST* %755, i32 0, i32 0
  %757 = load %union.rec*, %union.rec** %756, align 8
  %758 = bitcast %union.rec* %757 to %struct.word_type*
  %759 = getelementptr inbounds %struct.word_type, %struct.word_type* %758, i32 0, i32 0
  %760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %759, i32 0, i64 1
  %761 = getelementptr inbounds %struct.LIST, %struct.LIST* %760, i32 0, i32 1
  store %union.rec* %751, %union.rec** %761, align 8
  %762 = load %union.rec*, %union.rec** @zz_hold, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %764 = bitcast %union.rec* %763 to %struct.word_type*
  %765 = getelementptr inbounds %struct.word_type, %struct.word_type* %764, i32 0, i32 0
  %766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %765, i32 0, i64 1
  %767 = getelementptr inbounds %struct.LIST, %struct.LIST* %766, i32 0, i32 1
  store %union.rec* %762, %union.rec** %767, align 8
  %768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %769 = bitcast %union.rec* %768 to %struct.word_type*
  %770 = getelementptr inbounds %struct.word_type, %struct.word_type* %769, i32 0, i32 0
  %771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %770, i32 0, i64 1
  %772 = getelementptr inbounds %struct.LIST, %struct.LIST* %771, i32 0, i32 0
  store %union.rec* %762, %union.rec** %772, align 8
  %773 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %774

; <label>:774                                     ; preds = %733, %732
  %775 = phi %union.rec* [ null, %732 ], [ %773, %733 ]
  %776 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %776, %union.rec** @zz_hold, align 8
  %777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 0
  %780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %779, i32 0, i64 0
  %781 = getelementptr inbounds %struct.LIST, %struct.LIST* %780, i32 0, i32 1
  %782 = load %union.rec*, %union.rec** %781, align 8
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %784 = icmp eq %union.rec* %782, %783
  br i1 %784, label %785, label %786

; <label>:785                                     ; preds = %774
  br label %827

; <label>:786                                     ; preds = %774
  %787 = load %union.rec*, %union.rec** @zz_hold, align 8
  %788 = bitcast %union.rec* %787 to %struct.word_type*
  %789 = getelementptr inbounds %struct.word_type, %struct.word_type* %788, i32 0, i32 0
  %790 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %789, i32 0, i64 0
  %791 = getelementptr inbounds %struct.LIST, %struct.LIST* %790, i32 0, i32 1
  %792 = load %union.rec*, %union.rec** %791, align 8
  store %union.rec* %792, %union.rec** @zz_res, align 8
  %793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %794 = bitcast %union.rec* %793 to %struct.word_type*
  %795 = getelementptr inbounds %struct.word_type, %struct.word_type* %794, i32 0, i32 0
  %796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %795, i32 0, i64 0
  %797 = getelementptr inbounds %struct.LIST, %struct.LIST* %796, i32 0, i32 0
  %798 = load %union.rec*, %union.rec** %797, align 8
  %799 = load %union.rec*, %union.rec** @zz_res, align 8
  %800 = bitcast %union.rec* %799 to %struct.word_type*
  %801 = getelementptr inbounds %struct.word_type, %struct.word_type* %800, i32 0, i32 0
  %802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %801, i32 0, i64 0
  %803 = getelementptr inbounds %struct.LIST, %struct.LIST* %802, i32 0, i32 0
  store %union.rec* %798, %union.rec** %803, align 8
  %804 = load %union.rec*, %union.rec** @zz_res, align 8
  %805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %806 = bitcast %union.rec* %805 to %struct.word_type*
  %807 = getelementptr inbounds %struct.word_type, %struct.word_type* %806, i32 0, i32 0
  %808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %807, i32 0, i64 0
  %809 = getelementptr inbounds %struct.LIST, %struct.LIST* %808, i32 0, i32 0
  %810 = load %union.rec*, %union.rec** %809, align 8
  %811 = bitcast %union.rec* %810 to %struct.word_type*
  %812 = getelementptr inbounds %struct.word_type, %struct.word_type* %811, i32 0, i32 0
  %813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %812, i32 0, i64 0
  %814 = getelementptr inbounds %struct.LIST, %struct.LIST* %813, i32 0, i32 1
  store %union.rec* %804, %union.rec** %814, align 8
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %817 = bitcast %union.rec* %816 to %struct.word_type*
  %818 = getelementptr inbounds %struct.word_type, %struct.word_type* %817, i32 0, i32 0
  %819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %818, i32 0, i64 0
  %820 = getelementptr inbounds %struct.LIST, %struct.LIST* %819, i32 0, i32 1
  store %union.rec* %815, %union.rec** %820, align 8
  %821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 0
  %824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %823, i32 0, i64 0
  %825 = getelementptr inbounds %struct.LIST, %struct.LIST* %824, i32 0, i32 0
  store %union.rec* %815, %union.rec** %825, align 8
  %826 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %827

; <label>:827                                     ; preds = %786, %785
  %828 = phi %union.rec* [ null, %785 ], [ %826, %786 ]
  %829 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %829, %union.rec** @zz_hold, align 8
  %830 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %830, %union.rec** @zz_hold, align 8
  %831 = load %union.rec*, %union.rec** @zz_hold, align 8
  %832 = bitcast %union.rec* %831 to %struct.word_type*
  %833 = getelementptr inbounds %struct.word_type, %struct.word_type* %832, i32 0, i32 1
  %834 = bitcast %union.FIRST_UNION* %833 to %struct.anon*
  %835 = getelementptr inbounds %struct.anon, %struct.anon* %834, i32 0, i32 0
  %836 = load i8, i8* %835, align 1
  %837 = zext i8 %836 to i32
  %838 = icmp eq i32 %837, 11
  br i1 %838, label %848, label %839

; <label>:839                                     ; preds = %827
  %840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %841 = bitcast %union.rec* %840 to %struct.word_type*
  %842 = getelementptr inbounds %struct.word_type, %struct.word_type* %841, i32 0, i32 1
  %843 = bitcast %union.FIRST_UNION* %842 to %struct.anon*
  %844 = getelementptr inbounds %struct.anon, %struct.anon* %843, i32 0, i32 0
  %845 = load i8, i8* %844, align 1
  %846 = zext i8 %845 to i32
  %847 = icmp eq i32 %846, 12
  br i1 %847, label %848, label %856

; <label>:848                                     ; preds = %839, %827
  %849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 1
  %852 = bitcast %union.FIRST_UNION* %851 to %struct.anon*
  %853 = getelementptr inbounds %struct.anon, %struct.anon* %852, i32 0, i32 1
  %854 = load i8, i8* %853, align 1
  %855 = zext i8 %854 to i32
  br label %867

; <label>:856                                     ; preds = %839
  %857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %858 = bitcast %union.rec* %857 to %struct.word_type*
  %859 = getelementptr inbounds %struct.word_type, %struct.word_type* %858, i32 0, i32 1
  %860 = bitcast %union.FIRST_UNION* %859 to %struct.anon*
  %861 = getelementptr inbounds %struct.anon, %struct.anon* %860, i32 0, i32 0
  %862 = load i8, i8* %861, align 1
  %863 = zext i8 %862 to i64
  %864 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %863
  %865 = load i8, i8* %864, align 1
  %866 = zext i8 %865 to i32
  br label %867

; <label>:867                                     ; preds = %856, %848
  %868 = phi i32 [ %855, %848 ], [ %866, %856 ]
  store i32 %868, i32* @zz_size, align 4
  %869 = load i32, i32* @zz_size, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %870
  %872 = load %union.rec*, %union.rec** %871, align 8
  %873 = load %union.rec*, %union.rec** @zz_hold, align 8
  %874 = bitcast %union.rec* %873 to %struct.word_type*
  %875 = getelementptr inbounds %struct.word_type, %struct.word_type* %874, i32 0, i32 0
  %876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %875, i32 0, i64 0
  %877 = getelementptr inbounds %struct.LIST, %struct.LIST* %876, i32 0, i32 0
  store %union.rec* %872, %union.rec** %877, align 8
  %878 = load %union.rec*, %union.rec** @zz_hold, align 8
  %879 = load i32, i32* @zz_size, align 4
  %880 = sext i32 %879 to i64
  %881 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %880
  store %union.rec* %878, %union.rec** %881, align 8
  %882 = load %union.rec*, %union.rec** %res, align 8
  %883 = bitcast %union.rec* %882 to %struct.word_type*
  %884 = getelementptr inbounds %struct.word_type, %struct.word_type* %883, i32 0, i32 1
  %885 = bitcast %union.FIRST_UNION* %884 to %struct.FILE_POS*
  %886 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.FILE_POS* %885)
  store %union.rec* %886, %union.rec** %y, align 8
  %887 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %888 = zext i8 %887 to i32
  store i32 %888, i32* @zz_size, align 4
  %889 = sext i32 %888 to i64
  %890 = icmp uge i64 %889, 265
  br i1 %890, label %891, label %894

; <label>:891                                     ; preds = %867
  %892 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %893 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %892)
  br label %919

; <label>:894                                     ; preds = %867
  %895 = load i32, i32* @zz_size, align 4
  %896 = sext i32 %895 to i64
  %897 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %896
  %898 = load %union.rec*, %union.rec** %897, align 8
  %899 = icmp eq %union.rec* %898, null
  br i1 %899, label %900, label %904

; <label>:900                                     ; preds = %894
  %901 = load i32, i32* @zz_size, align 4
  %902 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %903 = call %union.rec* @GetMemory(i32 %901, %struct.FILE_POS* %902)
  store %union.rec* %903, %union.rec** @zz_hold, align 8
  br label %918

; <label>:904                                     ; preds = %894
  %905 = load i32, i32* @zz_size, align 4
  %906 = sext i32 %905 to i64
  %907 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %906
  %908 = load %union.rec*, %union.rec** %907, align 8
  store %union.rec* %908, %union.rec** @zz_hold, align 8
  store %union.rec* %908, %union.rec** @zz_hold, align 8
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %910 = bitcast %union.rec* %909 to %struct.word_type*
  %911 = getelementptr inbounds %struct.word_type, %struct.word_type* %910, i32 0, i32 0
  %912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %911, i32 0, i64 0
  %913 = getelementptr inbounds %struct.LIST, %struct.LIST* %912, i32 0, i32 0
  %914 = load %union.rec*, %union.rec** %913, align 8
  %915 = load i32, i32* @zz_size, align 4
  %916 = sext i32 %915 to i64
  %917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %916
  store %union.rec* %914, %union.rec** %917, align 8
  br label %918

; <label>:918                                     ; preds = %904, %900
  br label %919

; <label>:919                                     ; preds = %918, %891
  %920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 1
  %923 = bitcast %union.FIRST_UNION* %922 to %struct.anon*
  %924 = getelementptr inbounds %struct.anon, %struct.anon* %923, i32 0, i32 0
  store i8 0, i8* %924, align 1
  %925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %926 = load %union.rec*, %union.rec** @zz_hold, align 8
  %927 = bitcast %union.rec* %926 to %struct.word_type*
  %928 = getelementptr inbounds %struct.word_type, %struct.word_type* %927, i32 0, i32 0
  %929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %928, i32 0, i64 1
  %930 = getelementptr inbounds %struct.LIST, %struct.LIST* %929, i32 0, i32 1
  store %union.rec* %925, %union.rec** %930, align 8
  %931 = load %union.rec*, %union.rec** @zz_hold, align 8
  %932 = bitcast %union.rec* %931 to %struct.word_type*
  %933 = getelementptr inbounds %struct.word_type, %struct.word_type* %932, i32 0, i32 0
  %934 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %933, i32 0, i64 1
  %935 = getelementptr inbounds %struct.LIST, %struct.LIST* %934, i32 0, i32 0
  store %union.rec* %925, %union.rec** %935, align 8
  %936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %937 = bitcast %union.rec* %936 to %struct.word_type*
  %938 = getelementptr inbounds %struct.word_type, %struct.word_type* %937, i32 0, i32 0
  %939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %938, i32 0, i64 0
  %940 = getelementptr inbounds %struct.LIST, %struct.LIST* %939, i32 0, i32 1
  store %union.rec* %925, %union.rec** %940, align 8
  %941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %942 = bitcast %union.rec* %941 to %struct.word_type*
  %943 = getelementptr inbounds %struct.word_type, %struct.word_type* %942, i32 0, i32 0
  %944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %943, i32 0, i64 0
  %945 = getelementptr inbounds %struct.LIST, %struct.LIST* %944, i32 0, i32 0
  store %union.rec* %925, %union.rec** %945, align 8
  store %union.rec* %925, %union.rec** @xx_link, align 8
  %946 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %946, %union.rec** @zz_res, align 8
  %947 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %947, %union.rec** @zz_hold, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %949 = icmp eq %union.rec* %948, null
  br i1 %949, label %950, label %952

; <label>:950                                     ; preds = %919
  %951 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1000

; <label>:952                                     ; preds = %919
  %953 = load %union.rec*, %union.rec** @zz_res, align 8
  %954 = icmp eq %union.rec* %953, null
  br i1 %954, label %955, label %957

; <label>:955                                     ; preds = %952
  %956 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %998

; <label>:957                                     ; preds = %952
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 0
  %961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %960, i32 0, i64 0
  %962 = getelementptr inbounds %struct.LIST, %struct.LIST* %961, i32 0, i32 0
  %963 = load %union.rec*, %union.rec** %962, align 8
  store %union.rec* %963, %union.rec** @zz_tmp, align 8
  %964 = load %union.rec*, %union.rec** @zz_res, align 8
  %965 = bitcast %union.rec* %964 to %struct.word_type*
  %966 = getelementptr inbounds %struct.word_type, %struct.word_type* %965, i32 0, i32 0
  %967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %966, i32 0, i64 0
  %968 = getelementptr inbounds %struct.LIST, %struct.LIST* %967, i32 0, i32 0
  %969 = load %union.rec*, %union.rec** %968, align 8
  %970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 0
  %973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %972, i32 0, i64 0
  %974 = getelementptr inbounds %struct.LIST, %struct.LIST* %973, i32 0, i32 0
  store %union.rec* %969, %union.rec** %974, align 8
  %975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %976 = load %union.rec*, %union.rec** @zz_res, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %978, i32 0, i64 0
  %980 = getelementptr inbounds %struct.LIST, %struct.LIST* %979, i32 0, i32 0
  %981 = load %union.rec*, %union.rec** %980, align 8
  %982 = bitcast %union.rec* %981 to %struct.word_type*
  %983 = getelementptr inbounds %struct.word_type, %struct.word_type* %982, i32 0, i32 0
  %984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %983, i32 0, i64 0
  %985 = getelementptr inbounds %struct.LIST, %struct.LIST* %984, i32 0, i32 1
  store %union.rec* %975, %union.rec** %985, align 8
  %986 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %987 = load %union.rec*, %union.rec** @zz_res, align 8
  %988 = bitcast %union.rec* %987 to %struct.word_type*
  %989 = getelementptr inbounds %struct.word_type, %struct.word_type* %988, i32 0, i32 0
  %990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %989, i32 0, i64 0
  %991 = getelementptr inbounds %struct.LIST, %struct.LIST* %990, i32 0, i32 0
  store %union.rec* %986, %union.rec** %991, align 8
  %992 = load %union.rec*, %union.rec** @zz_res, align 8
  %993 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 0
  %996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %995, i32 0, i64 0
  %997 = getelementptr inbounds %struct.LIST, %struct.LIST* %996, i32 0, i32 1
  store %union.rec* %992, %union.rec** %997, align 8
  br label %998

; <label>:998                                     ; preds = %957, %955
  %999 = phi %union.rec* [ %956, %955 ], [ %992, %957 ]
  br label %1000

; <label>:1000                                    ; preds = %998, %950
  %1001 = phi %union.rec* [ %951, %950 ], [ %999, %998 ]
  %1002 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1002, %union.rec** @zz_res, align 8
  %1003 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1003, %union.rec** @zz_hold, align 8
  %1004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1005 = icmp eq %union.rec* %1004, null
  br i1 %1005, label %1006, label %1008

; <label>:1006                                    ; preds = %1000
  %1007 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1056

; <label>:1008                                    ; preds = %1000
  %1009 = load %union.rec*, %union.rec** @zz_res, align 8
  %1010 = icmp eq %union.rec* %1009, null
  br i1 %1010, label %1011, label %1013

; <label>:1011                                    ; preds = %1008
  %1012 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1054

; <label>:1013                                    ; preds = %1008
  %1014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1015 = bitcast %union.rec* %1014 to %struct.word_type*
  %1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1016, i32 0, i64 1
  %1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %1017, i32 0, i32 0
  %1019 = load %union.rec*, %union.rec** %1018, align 8
  store %union.rec* %1019, %union.rec** @zz_tmp, align 8
  %1020 = load %union.rec*, %union.rec** @zz_res, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 0
  %1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1022, i32 0, i64 1
  %1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %1023, i32 0, i32 0
  %1025 = load %union.rec*, %union.rec** %1024, align 8
  %1026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 1
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 0
  store %union.rec* %1025, %union.rec** %1030, align 8
  %1031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1032 = load %union.rec*, %union.rec** @zz_res, align 8
  %1033 = bitcast %union.rec* %1032 to %struct.word_type*
  %1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %1033, i32 0, i32 0
  %1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1034, i32 0, i64 1
  %1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %1035, i32 0, i32 0
  %1037 = load %union.rec*, %union.rec** %1036, align 8
  %1038 = bitcast %union.rec* %1037 to %struct.word_type*
  %1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %1038, i32 0, i32 0
  %1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1039, i32 0, i64 1
  %1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %1040, i32 0, i32 1
  store %union.rec* %1031, %union.rec** %1041, align 8
  %1042 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1043 = load %union.rec*, %union.rec** @zz_res, align 8
  %1044 = bitcast %union.rec* %1043 to %struct.word_type*
  %1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %1044, i32 0, i32 0
  %1046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1045, i32 0, i64 1
  %1047 = getelementptr inbounds %struct.LIST, %struct.LIST* %1046, i32 0, i32 0
  store %union.rec* %1042, %union.rec** %1047, align 8
  %1048 = load %union.rec*, %union.rec** @zz_res, align 8
  %1049 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1050 = bitcast %union.rec* %1049 to %struct.word_type*
  %1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %1050, i32 0, i32 0
  %1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1051, i32 0, i64 1
  %1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %1052, i32 0, i32 1
  store %union.rec* %1048, %union.rec** %1053, align 8
  br label %1054

; <label>:1054                                    ; preds = %1013, %1011
  %1055 = phi %union.rec* [ %1012, %1011 ], [ %1048, %1013 ]
  br label %1056

; <label>:1056                                    ; preds = %1054, %1006
  %1057 = phi %union.rec* [ %1007, %1006 ], [ %1055, %1054 ]
  br label %1058

; <label>:1058                                    ; preds = %1056, %712
  %1059 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1059, %union.rec** @zz_hold, align 8
  %1060 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1061 = bitcast %union.rec* %1060 to %struct.word_type*
  %1062 = getelementptr inbounds %struct.word_type, %struct.word_type* %1061, i32 0, i32 0
  %1063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1062, i32 0, i64 1
  %1064 = getelementptr inbounds %struct.LIST, %struct.LIST* %1063, i32 0, i32 1
  %1065 = load %union.rec*, %union.rec** %1064, align 8
  %1066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1067 = icmp eq %union.rec* %1065, %1066
  br i1 %1067, label %1068, label %1069

; <label>:1068                                    ; preds = %1058
  br label %1110

; <label>:1069                                    ; preds = %1058
  %1070 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1071 = bitcast %union.rec* %1070 to %struct.word_type*
  %1072 = getelementptr inbounds %struct.word_type, %struct.word_type* %1071, i32 0, i32 0
  %1073 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1072, i32 0, i64 1
  %1074 = getelementptr inbounds %struct.LIST, %struct.LIST* %1073, i32 0, i32 1
  %1075 = load %union.rec*, %union.rec** %1074, align 8
  store %union.rec* %1075, %union.rec** @zz_res, align 8
  %1076 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 0
  %1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1078, i32 0, i64 1
  %1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %1079, i32 0, i32 0
  %1081 = load %union.rec*, %union.rec** %1080, align 8
  %1082 = load %union.rec*, %union.rec** @zz_res, align 8
  %1083 = bitcast %union.rec* %1082 to %struct.word_type*
  %1084 = getelementptr inbounds %struct.word_type, %struct.word_type* %1083, i32 0, i32 0
  %1085 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1084, i32 0, i64 1
  %1086 = getelementptr inbounds %struct.LIST, %struct.LIST* %1085, i32 0, i32 0
  store %union.rec* %1081, %union.rec** %1086, align 8
  %1087 = load %union.rec*, %union.rec** @zz_res, align 8
  %1088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1089 = bitcast %union.rec* %1088 to %struct.word_type*
  %1090 = getelementptr inbounds %struct.word_type, %struct.word_type* %1089, i32 0, i32 0
  %1091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1090, i32 0, i64 1
  %1092 = getelementptr inbounds %struct.LIST, %struct.LIST* %1091, i32 0, i32 0
  %1093 = load %union.rec*, %union.rec** %1092, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.word_type*
  %1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %1094, i32 0, i32 0
  %1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1095, i32 0, i64 1
  %1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %1096, i32 0, i32 1
  store %union.rec* %1087, %union.rec** %1097, align 8
  %1098 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1100 = bitcast %union.rec* %1099 to %struct.word_type*
  %1101 = getelementptr inbounds %struct.word_type, %struct.word_type* %1100, i32 0, i32 0
  %1102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1101, i32 0, i64 1
  %1103 = getelementptr inbounds %struct.LIST, %struct.LIST* %1102, i32 0, i32 1
  store %union.rec* %1098, %union.rec** %1103, align 8
  %1104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 0
  %1107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1106, i32 0, i64 1
  %1108 = getelementptr inbounds %struct.LIST, %struct.LIST* %1107, i32 0, i32 0
  store %union.rec* %1098, %union.rec** %1108, align 8
  %1109 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1110

; <label>:1110                                    ; preds = %1069, %1068
  %1111 = phi %union.rec* [ null, %1068 ], [ %1109, %1069 ]
  store %union.rec* %1111, %union.rec** @xx_tmp, align 8
  %1112 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1112, %union.rec** @zz_res, align 8
  %1113 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1113, %union.rec** @zz_hold, align 8
  %1114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1115 = icmp eq %union.rec* %1114, null
  br i1 %1115, label %1116, label %1118

; <label>:1116                                    ; preds = %1110
  %1117 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1166

; <label>:1118                                    ; preds = %1110
  %1119 = load %union.rec*, %union.rec** @zz_res, align 8
  %1120 = icmp eq %union.rec* %1119, null
  br i1 %1120, label %1121, label %1123

; <label>:1121                                    ; preds = %1118
  %1122 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1164

; <label>:1123                                    ; preds = %1118
  %1124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1125 = bitcast %union.rec* %1124 to %struct.word_type*
  %1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %1125, i32 0, i32 0
  %1127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1126, i32 0, i64 1
  %1128 = getelementptr inbounds %struct.LIST, %struct.LIST* %1127, i32 0, i32 0
  %1129 = load %union.rec*, %union.rec** %1128, align 8
  store %union.rec* %1129, %union.rec** @zz_tmp, align 8
  %1130 = load %union.rec*, %union.rec** @zz_res, align 8
  %1131 = bitcast %union.rec* %1130 to %struct.word_type*
  %1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %1131, i32 0, i32 0
  %1133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1132, i32 0, i64 1
  %1134 = getelementptr inbounds %struct.LIST, %struct.LIST* %1133, i32 0, i32 0
  %1135 = load %union.rec*, %union.rec** %1134, align 8
  %1136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1137 = bitcast %union.rec* %1136 to %struct.word_type*
  %1138 = getelementptr inbounds %struct.word_type, %struct.word_type* %1137, i32 0, i32 0
  %1139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1138, i32 0, i64 1
  %1140 = getelementptr inbounds %struct.LIST, %struct.LIST* %1139, i32 0, i32 0
  store %union.rec* %1135, %union.rec** %1140, align 8
  %1141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1142 = load %union.rec*, %union.rec** @zz_res, align 8
  %1143 = bitcast %union.rec* %1142 to %struct.word_type*
  %1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %1143, i32 0, i32 0
  %1145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1144, i32 0, i64 1
  %1146 = getelementptr inbounds %struct.LIST, %struct.LIST* %1145, i32 0, i32 0
  %1147 = load %union.rec*, %union.rec** %1146, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.word_type*
  %1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %1148, i32 0, i32 0
  %1150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1149, i32 0, i64 1
  %1151 = getelementptr inbounds %struct.LIST, %struct.LIST* %1150, i32 0, i32 1
  store %union.rec* %1141, %union.rec** %1151, align 8
  %1152 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1153 = load %union.rec*, %union.rec** @zz_res, align 8
  %1154 = bitcast %union.rec* %1153 to %struct.word_type*
  %1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %1154, i32 0, i32 0
  %1156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1155, i32 0, i64 1
  %1157 = getelementptr inbounds %struct.LIST, %struct.LIST* %1156, i32 0, i32 0
  store %union.rec* %1152, %union.rec** %1157, align 8
  %1158 = load %union.rec*, %union.rec** @zz_res, align 8
  %1159 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1160 = bitcast %union.rec* %1159 to %struct.word_type*
  %1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %1160, i32 0, i32 0
  %1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1161, i32 0, i64 1
  %1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %1162, i32 0, i32 1
  store %union.rec* %1158, %union.rec** %1163, align 8
  br label %1164

; <label>:1164                                    ; preds = %1123, %1121
  %1165 = phi %union.rec* [ %1122, %1121 ], [ %1158, %1123 ]
  br label %1166

; <label>:1166                                    ; preds = %1164, %1116
  %1167 = phi %union.rec* [ %1117, %1116 ], [ %1165, %1164 ]
  %1168 = load %union.rec*, %union.rec** %1, align 8
  %1169 = bitcast %union.rec* %1168 to %struct.closure_type*
  %1170 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1169, i32 0, i32 5
  %1171 = load %union.rec*, %union.rec** %1170, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.word_type*
  %1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %1172, i32 0, i32 1
  %1174 = bitcast %union.FIRST_UNION* %1173 to %struct.anon*
  %1175 = getelementptr inbounds %struct.anon, %struct.anon* %1174, i32 0, i32 0
  %1176 = load i8, i8* %1175, align 1
  %1177 = zext i8 %1176 to i32
  %1178 = icmp eq i32 %1177, 146
  br i1 %1178, label %1179, label %1203

; <label>:1179                                    ; preds = %1166
  %1180 = load %union.rec*, %union.rec** %1, align 8
  %1181 = bitcast %union.rec* %1180 to %struct.closure_type*
  %1182 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1181, i32 0, i32 5
  %1183 = load %union.rec*, %union.rec** %1182, align 8
  %1184 = bitcast %union.rec* %1183 to %struct.symbol_type*
  %1185 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1184, i32 0, i32 3
  %1186 = load %union.rec*, %union.rec** %1185, align 8
  %1187 = bitcast %union.rec* %1186 to %struct.word_type*
  %1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %1187, i32 0, i32 2
  %1189 = bitcast %union.SECOND_UNION* %1188 to %struct.anon.5*
  %1190 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1189, i32 0, i32 1
  %1191 = bitcast [3 x i8]* %1190 to i24*
  %1192 = load i24, i24* %1191, align 1
  %1193 = lshr i24 %1192, 8
  %1194 = and i24 %1193, 1
  %1195 = zext i24 %1194 to i32
  %1196 = icmp ne i32 %1195, 0
  br i1 %1196, label %1197, label %1203

; <label>:1197                                    ; preds = %1179
  %1198 = load %union.rec*, %union.rec** %prnt, align 8
  %1199 = call %union.rec* @SetEnv(%union.rec* %1198, %union.rec* null)
  %1200 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %1199, %union.rec** %1200, align 8
  %1201 = load %union.rec*, %union.rec** %1, align 8
  %1202 = call i32 @DisposeObject(%union.rec* %1201)
  br label %1244

; <label>:1203                                    ; preds = %1179, %1166
  %1204 = load %union.rec*, %union.rec** %1, align 8
  %1205 = bitcast %union.rec* %1204 to %struct.closure_type*
  %1206 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1205, i32 0, i32 5
  %1207 = load %union.rec*, %union.rec** %1206, align 8
  %1208 = bitcast %union.rec* %1207 to %struct.word_type*
  %1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %1208, i32 0, i32 1
  %1210 = bitcast %union.FIRST_UNION* %1209 to %struct.anon*
  %1211 = getelementptr inbounds %struct.anon, %struct.anon* %1210, i32 0, i32 0
  %1212 = load i8, i8* %1211, align 1
  %1213 = zext i8 %1212 to i32
  %1214 = icmp eq i32 %1213, 145
  br i1 %1214, label %1215, label %1236

; <label>:1215                                    ; preds = %1203
  %1216 = load %union.rec*, %union.rec** %1, align 8
  %1217 = bitcast %union.rec* %1216 to %struct.closure_type*
  %1218 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1217, i32 0, i32 5
  %1219 = load %union.rec*, %union.rec** %1218, align 8
  %1220 = bitcast %union.rec* %1219 to %struct.word_type*
  %1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %1220, i32 0, i32 2
  %1222 = bitcast %union.SECOND_UNION* %1221 to %struct.anon.5*
  %1223 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1222, i32 0, i32 1
  %1224 = bitcast [3 x i8]* %1223 to i24*
  %1225 = load i24, i24* %1224, align 1
  %1226 = lshr i24 %1225, 22
  %1227 = and i24 %1226, 1
  %1228 = zext i24 %1227 to i32
  %1229 = icmp ne i32 %1228, 0
  br i1 %1229, label %1230, label %1236

; <label>:1230                                    ; preds = %1215
  %1231 = load %union.rec*, %union.rec** %2, align 8
  %1232 = load %union.rec*, %union.rec** %1, align 8
  call void @AttachEnv(%union.rec* %1231, %union.rec* %1232)
  %1233 = load %union.rec*, %union.rec** %1, align 8
  %1234 = call %union.rec* @SetEnv(%union.rec* %1233, %union.rec* null)
  %1235 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %1234, %union.rec** %1235, align 8
  br label %1243

; <label>:1236                                    ; preds = %1215, %1203
  %1237 = load %union.rec*, %union.rec** %2, align 8
  %1238 = load %union.rec*, %union.rec** %1, align 8
  call void @AttachEnv(%union.rec* %1237, %union.rec* %1238)
  %1239 = load %union.rec*, %union.rec** %1, align 8
  %1240 = load %union.rec*, %union.rec** %prnt_env, align 8
  %1241 = call %union.rec* @SetEnv(%union.rec* %1239, %union.rec* %1240)
  %1242 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %1241, %union.rec** %1242, align 8
  br label %1243

; <label>:1243                                    ; preds = %1236, %1230
  br label %1244

; <label>:1244                                    ; preds = %1243, %1197
  br label %1253

; <label>:1245                                    ; preds = %631, %622
  br label %1246

; <label>:1246                                    ; preds = %1245
  %1247 = load %union.rec*, %union.rec** %link, align 8
  %1248 = bitcast %union.rec* %1247 to %struct.word_type*
  %1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %1248, i32 0, i32 0
  %1250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1249, i32 0, i64 0
  %1251 = getelementptr inbounds %struct.LIST, %struct.LIST* %1250, i32 0, i32 1
  %1252 = load %union.rec*, %union.rec** %1251, align 8
  store %union.rec* %1252, %union.rec** %link, align 8
  br label %594

; <label>:1253                                    ; preds = %1244, %594
  br label %1288

; <label>:1254                                    ; preds = %573
  %1255 = load %union.rec*, %union.rec** %1, align 8
  %1256 = bitcast %union.rec* %1255 to %struct.closure_type*
  %1257 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1256, i32 0, i32 5
  %1258 = load %union.rec*, %union.rec** %1257, align 8
  %1259 = bitcast %union.rec* %1258 to %struct.symbol_type*
  %1260 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1259, i32 0, i32 4
  %1261 = load %union.rec*, %union.rec** %1260, align 8
  %1262 = icmp eq %union.rec* %1261, null
  br i1 %1262, label %1263, label %1287

; <label>:1263                                    ; preds = %1254
  %1264 = load %union.rec*, %union.rec** %1, align 8
  %1265 = bitcast %union.rec* %1264 to %struct.word_type*
  %1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %1265, i32 0, i32 1
  %1267 = bitcast %union.FIRST_UNION* %1266 to %struct.FILE_POS*
  %1268 = load %union.rec*, %union.rec** %1, align 8
  %1269 = bitcast %union.rec* %1268 to %struct.closure_type*
  %1270 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1269, i32 0, i32 5
  %1271 = load %union.rec*, %union.rec** %1270, align 8
  %1272 = call i8* @SymName(%union.rec* %1271)
  %1273 = load %union.rec*, %union.rec** %1, align 8
  %1274 = bitcast %union.rec* %1273 to %struct.closure_type*
  %1275 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1274, i32 0, i32 5
  %1276 = load %union.rec*, %union.rec** %1275, align 8
  %1277 = bitcast %union.rec* %1276 to %struct.symbol_type*
  %1278 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1277, i32 0, i32 3
  %1279 = load %union.rec*, %union.rec** %1278, align 8
  %1280 = call i8* @SymName(%union.rec* %1279)
  %1281 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 9, i32 2, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %1267, i8* %1272, i8* %1280)
  %1282 = load %union.rec*, %union.rec** %1, align 8
  %1283 = bitcast %union.rec* %1282 to %struct.word_type*
  %1284 = getelementptr inbounds %struct.word_type, %struct.word_type* %1283, i32 0, i32 1
  %1285 = bitcast %union.FIRST_UNION* %1284 to %struct.FILE_POS*
  %1286 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 9, i32 1, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %1285)
  br label %1287

; <label>:1287                                    ; preds = %1263, %1254
  br label %1288

; <label>:1288                                    ; preds = %1287, %1253
  br label %1289

; <label>:1289                                    ; preds = %1288, %561, %548
  %1290 = load %union.rec*, %union.rec** %res, align 8
  %1291 = icmp eq %union.rec* %1290, null
  br i1 %1291, label %1292, label %1435

; <label>:1292                                    ; preds = %1289
  %1293 = load %union.rec*, %union.rec** %1, align 8
  %1294 = bitcast %union.rec* %1293 to %struct.closure_type*
  %1295 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1294, i32 0, i32 5
  %1296 = load %union.rec*, %union.rec** %1295, align 8
  %1297 = bitcast %union.rec* %1296 to %struct.symbol_type*
  %1298 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1297, i32 0, i32 4
  %1299 = load %union.rec*, %union.rec** %1298, align 8
  %1300 = icmp eq %union.rec* %1299, null
  br i1 %1300, label %1301, label %1307

; <label>:1301                                    ; preds = %1292
  %1302 = load %union.rec*, %union.rec** %1, align 8
  %1303 = bitcast %union.rec* %1302 to %struct.word_type*
  %1304 = getelementptr inbounds %struct.word_type, %struct.word_type* %1303, i32 0, i32 1
  %1305 = bitcast %union.FIRST_UNION* %1304 to %struct.FILE_POS*
  %1306 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0), %struct.FILE_POS* %1305)
  store %union.rec* %1306, %union.rec** %res, align 8
  br label %1320

; <label>:1307                                    ; preds = %1292
  %1308 = load %union.rec*, %union.rec** %1, align 8
  %1309 = bitcast %union.rec* %1308 to %struct.closure_type*
  %1310 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1309, i32 0, i32 5
  %1311 = load %union.rec*, %union.rec** %1310, align 8
  %1312 = bitcast %union.rec* %1311 to %struct.symbol_type*
  %1313 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1312, i32 0, i32 4
  %1314 = load %union.rec*, %union.rec** %1313, align 8
  %1315 = load %union.rec*, %union.rec** %1, align 8
  %1316 = bitcast %union.rec* %1315 to %struct.word_type*
  %1317 = getelementptr inbounds %struct.word_type, %struct.word_type* %1316, i32 0, i32 1
  %1318 = bitcast %union.FIRST_UNION* %1317 to %struct.FILE_POS*
  %1319 = call %union.rec* @CopyObject(%union.rec* %1314, %struct.FILE_POS* %1318)
  store %union.rec* %1319, %union.rec** %res, align 8
  br label %1320

; <label>:1320                                    ; preds = %1307, %1301
  %1321 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1321, %union.rec** @zz_hold, align 8
  %1322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1323 = bitcast %union.rec* %1322 to %struct.word_type*
  %1324 = getelementptr inbounds %struct.word_type, %struct.word_type* %1323, i32 0, i32 0
  %1325 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1324, i32 0, i64 1
  %1326 = getelementptr inbounds %struct.LIST, %struct.LIST* %1325, i32 0, i32 1
  %1327 = load %union.rec*, %union.rec** %1326, align 8
  %1328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1329 = icmp eq %union.rec* %1327, %1328
  br i1 %1329, label %1330, label %1331

; <label>:1330                                    ; preds = %1320
  br label %1372

; <label>:1331                                    ; preds = %1320
  %1332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1333 = bitcast %union.rec* %1332 to %struct.word_type*
  %1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %1333, i32 0, i32 0
  %1335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1334, i32 0, i64 1
  %1336 = getelementptr inbounds %struct.LIST, %struct.LIST* %1335, i32 0, i32 1
  %1337 = load %union.rec*, %union.rec** %1336, align 8
  store %union.rec* %1337, %union.rec** @zz_res, align 8
  %1338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1339 = bitcast %union.rec* %1338 to %struct.word_type*
  %1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %1339, i32 0, i32 0
  %1341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1340, i32 0, i64 1
  %1342 = getelementptr inbounds %struct.LIST, %struct.LIST* %1341, i32 0, i32 0
  %1343 = load %union.rec*, %union.rec** %1342, align 8
  %1344 = load %union.rec*, %union.rec** @zz_res, align 8
  %1345 = bitcast %union.rec* %1344 to %struct.word_type*
  %1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %1345, i32 0, i32 0
  %1347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1346, i32 0, i64 1
  %1348 = getelementptr inbounds %struct.LIST, %struct.LIST* %1347, i32 0, i32 0
  store %union.rec* %1343, %union.rec** %1348, align 8
  %1349 = load %union.rec*, %union.rec** @zz_res, align 8
  %1350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.word_type*
  %1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %1351, i32 0, i32 0
  %1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1352, i32 0, i64 1
  %1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %1353, i32 0, i32 0
  %1355 = load %union.rec*, %union.rec** %1354, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 1
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 1
  store %union.rec* %1349, %union.rec** %1359, align 8
  %1360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1362 = bitcast %union.rec* %1361 to %struct.word_type*
  %1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %1362, i32 0, i32 0
  %1364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1363, i32 0, i64 1
  %1365 = getelementptr inbounds %struct.LIST, %struct.LIST* %1364, i32 0, i32 1
  store %union.rec* %1360, %union.rec** %1365, align 8
  %1366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1367 = bitcast %union.rec* %1366 to %struct.word_type*
  %1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %1367, i32 0, i32 0
  %1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1368, i32 0, i64 1
  %1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %1369, i32 0, i32 0
  store %union.rec* %1360, %union.rec** %1370, align 8
  %1371 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1372

; <label>:1372                                    ; preds = %1331, %1330
  %1373 = phi %union.rec* [ null, %1330 ], [ %1371, %1331 ]
  store %union.rec* %1373, %union.rec** @xx_tmp, align 8
  %1374 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1374, %union.rec** @zz_res, align 8
  %1375 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1375, %union.rec** @zz_hold, align 8
  %1376 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1377 = icmp eq %union.rec* %1376, null
  br i1 %1377, label %1378, label %1380

; <label>:1378                                    ; preds = %1372
  %1379 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1428

; <label>:1380                                    ; preds = %1372
  %1381 = load %union.rec*, %union.rec** @zz_res, align 8
  %1382 = icmp eq %union.rec* %1381, null
  br i1 %1382, label %1383, label %1385

; <label>:1383                                    ; preds = %1380
  %1384 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1426

; <label>:1385                                    ; preds = %1380
  %1386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1387 = bitcast %union.rec* %1386 to %struct.word_type*
  %1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %1387, i32 0, i32 0
  %1389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1388, i32 0, i64 1
  %1390 = getelementptr inbounds %struct.LIST, %struct.LIST* %1389, i32 0, i32 0
  %1391 = load %union.rec*, %union.rec** %1390, align 8
  store %union.rec* %1391, %union.rec** @zz_tmp, align 8
  %1392 = load %union.rec*, %union.rec** @zz_res, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.word_type*
  %1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %1393, i32 0, i32 0
  %1395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1394, i32 0, i64 1
  %1396 = getelementptr inbounds %struct.LIST, %struct.LIST* %1395, i32 0, i32 0
  %1397 = load %union.rec*, %union.rec** %1396, align 8
  %1398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1399 = bitcast %union.rec* %1398 to %struct.word_type*
  %1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %1399, i32 0, i32 0
  %1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1400, i32 0, i64 1
  %1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %1401, i32 0, i32 0
  store %union.rec* %1397, %union.rec** %1402, align 8
  %1403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1404 = load %union.rec*, %union.rec** @zz_res, align 8
  %1405 = bitcast %union.rec* %1404 to %struct.word_type*
  %1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %1405, i32 0, i32 0
  %1407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1406, i32 0, i64 1
  %1408 = getelementptr inbounds %struct.LIST, %struct.LIST* %1407, i32 0, i32 0
  %1409 = load %union.rec*, %union.rec** %1408, align 8
  %1410 = bitcast %union.rec* %1409 to %struct.word_type*
  %1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %1410, i32 0, i32 0
  %1412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1411, i32 0, i64 1
  %1413 = getelementptr inbounds %struct.LIST, %struct.LIST* %1412, i32 0, i32 1
  store %union.rec* %1403, %union.rec** %1413, align 8
  %1414 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1415 = load %union.rec*, %union.rec** @zz_res, align 8
  %1416 = bitcast %union.rec* %1415 to %struct.word_type*
  %1417 = getelementptr inbounds %struct.word_type, %struct.word_type* %1416, i32 0, i32 0
  %1418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1417, i32 0, i64 1
  %1419 = getelementptr inbounds %struct.LIST, %struct.LIST* %1418, i32 0, i32 0
  store %union.rec* %1414, %union.rec** %1419, align 8
  %1420 = load %union.rec*, %union.rec** @zz_res, align 8
  %1421 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1422 = bitcast %union.rec* %1421 to %struct.word_type*
  %1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %1422, i32 0, i32 0
  %1424 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1423, i32 0, i64 1
  %1425 = getelementptr inbounds %struct.LIST, %struct.LIST* %1424, i32 0, i32 1
  store %union.rec* %1420, %union.rec** %1425, align 8
  br label %1426

; <label>:1426                                    ; preds = %1385, %1383
  %1427 = phi %union.rec* [ %1384, %1383 ], [ %1420, %1385 ]
  br label %1428

; <label>:1428                                    ; preds = %1426, %1378
  %1429 = phi %union.rec* [ %1379, %1378 ], [ %1427, %1426 ]
  %1430 = load %union.rec*, %union.rec** %2, align 8
  %1431 = load %union.rec*, %union.rec** %1, align 8
  call void @AttachEnv(%union.rec* %1430, %union.rec* %1431)
  %1432 = load %union.rec*, %union.rec** %1, align 8
  %1433 = call %union.rec* @SetEnv(%union.rec* %1432, %union.rec* null)
  %1434 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %1433, %union.rec** %1434, align 8
  br label %1435

; <label>:1435                                    ; preds = %1428, %1289
  %1436 = load %union.rec**, %union.rec*** %5, align 8
  %1437 = load %union.rec*, %union.rec** %1436, align 8
  %1438 = icmp ne %union.rec* %1437, null
  br i1 %1438, label %1439, label %1449

; <label>:1439                                    ; preds = %1435
  %1440 = load %union.rec**, %union.rec*** %5, align 8
  %1441 = load %union.rec*, %union.rec** %1440, align 8
  %1442 = bitcast %union.rec* %1441 to %struct.word_type*
  %1443 = getelementptr inbounds %struct.word_type, %struct.word_type* %1442, i32 0, i32 1
  %1444 = bitcast %union.FIRST_UNION* %1443 to %struct.anon*
  %1445 = getelementptr inbounds %struct.anon, %struct.anon* %1444, i32 0, i32 0
  %1446 = load i8, i8* %1445, align 1
  %1447 = zext i8 %1446 to i32
  %1448 = icmp eq i32 %1447, 82
  br i1 %1448, label %1452, label %1449

; <label>:1449                                    ; preds = %1439, %1435
  %1450 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1451 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1450, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.21, i32 0, i32 0))
  br label %1452

; <label>:1452                                    ; preds = %1449, %1439
  %1453 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1453
}

declare void @CrossAddTag(%union.rec*) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @CrossMake(%union.rec*, %union.rec*, i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i8* @SymName(%union.rec*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @ParameterCheck(%union.rec* %x, %union.rec* %env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %prnt_env = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  store %union.rec* %env, %union.rec** %3, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.22, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load %union.rec*, %union.rec** %3, align 8
  %17 = load %union.rec*, %union.rec** %2, align 8
  %18 = bitcast %union.rec* %17 to %struct.closure_type*
  %19 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %18, i32 0, i32 5
  %20 = load %union.rec*, %union.rec** %19, align 8
  %21 = bitcast %union.rec* %20 to %struct.symbol_type*
  %22 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %21, i32 0, i32 3
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = call %union.rec* @SearchEnv(%union.rec* %16, %union.rec* %23)
  store %union.rec* %24, %union.rec** %prnt, align 8
  %25 = load %union.rec*, %union.rec** %prnt, align 8
  %26 = icmp eq %union.rec* %25, null
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %15
  store %union.rec* null, %union.rec** %1
  br label %237

; <label>:28                                      ; preds = %15
  %29 = load %union.rec*, %union.rec** %prnt, align 8
  %30 = call %union.rec* @GetEnv(%union.rec* %29)
  store %union.rec* %30, %union.rec** %prnt_env, align 8
  %31 = load %union.rec*, %union.rec** %prnt, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 0
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** %link, align 8
  br label %37

; <label>:37                                      ; preds = %152, %28
  %38 = load %union.rec*, %union.rec** %link, align 8
  %39 = load %union.rec*, %union.rec** %prnt, align 8
  %40 = icmp ne %union.rec* %38, %39
  br i1 %40, label %41, label %159

; <label>:41                                      ; preds = %37
  %42 = load %union.rec*, %union.rec** %link, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %46, align 8
  store %union.rec* %47, %union.rec** %par, align 8
  br label %48

; <label>:48                                      ; preds = %58, %41
  %49 = load %union.rec*, %union.rec** %par, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 1
  %52 = bitcast %union.FIRST_UNION* %51 to %struct.anon*
  %53 = getelementptr inbounds %struct.anon, %struct.anon* %52, i32 0, i32 0
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %65

; <label>:57                                      ; preds = %48
  br label %58

; <label>:58                                      ; preds = %57
  %59 = load %union.rec*, %union.rec** %par, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 1
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %63, align 8
  store %union.rec* %64, %union.rec** %par, align 8
  br label %48

; <label>:65                                      ; preds = %48
  %66 = load %union.rec*, %union.rec** %par, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 1
  %69 = bitcast %union.FIRST_UNION* %68 to %struct.anon*
  %70 = getelementptr inbounds %struct.anon, %struct.anon* %69, i32 0, i32 0
  %71 = load i8, i8* %70, align 1
  %72 = zext i8 %71 to i32
  %73 = icmp eq i32 %72, 10
  br i1 %73, label %74, label %151

; <label>:74                                      ; preds = %65
  %75 = load %union.rec*, %union.rec** %par, align 8
  %76 = bitcast %union.rec* %75 to %struct.closure_type*
  %77 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %76, i32 0, i32 5
  %78 = load %union.rec*, %union.rec** %77, align 8
  %79 = load %union.rec*, %union.rec** %2, align 8
  %80 = bitcast %union.rec* %79 to %struct.closure_type*
  %81 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %80, i32 0, i32 5
  %82 = load %union.rec*, %union.rec** %81, align 8
  %83 = icmp eq %union.rec* %78, %82
  br i1 %83, label %84, label %151

; <label>:84                                      ; preds = %74
  %85 = load %union.rec*, %union.rec** %par, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %87, i32 0, i64 0
  %89 = getelementptr inbounds %struct.LIST, %struct.LIST* %88, i32 0, i32 1
  %90 = load %union.rec*, %union.rec** %89, align 8
  %91 = load %union.rec*, %union.rec** %par, align 8
  %92 = icmp ne %union.rec* %90, %91
  br i1 %92, label %96, label %93

; <label>:93                                      ; preds = %84
  %94 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %95 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %94, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.23, i32 0, i32 0))
  br label %96

; <label>:96                                      ; preds = %93, %84
  %97 = load %union.rec*, %union.rec** %par, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 0
  %100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %99, i32 0, i64 0
  %101 = getelementptr inbounds %struct.LIST, %struct.LIST* %100, i32 0, i32 1
  %102 = load %union.rec*, %union.rec** %101, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 0
  %105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %104, i32 0, i64 1
  %106 = getelementptr inbounds %struct.LIST, %struct.LIST* %105, i32 0, i32 0
  %107 = load %union.rec*, %union.rec** %106, align 8
  store %union.rec* %107, %union.rec** %y, align 8
  br label %108

; <label>:108                                     ; preds = %118, %96
  %109 = load %union.rec*, %union.rec** %y, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 1
  %112 = bitcast %union.FIRST_UNION* %111 to %struct.anon*
  %113 = getelementptr inbounds %struct.anon, %struct.anon* %112, i32 0, i32 0
  %114 = load i8, i8* %113, align 1
  %115 = zext i8 %114 to i32
  %116 = icmp eq i32 %115, 0
  br i1 %116, label %117, label %125

; <label>:117                                     ; preds = %108
  br label %118

; <label>:118                                     ; preds = %117
  %119 = load %union.rec*, %union.rec** %y, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %121, i32 0, i64 1
  %123 = getelementptr inbounds %struct.LIST, %struct.LIST* %122, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %123, align 8
  store %union.rec* %124, %union.rec** %y, align 8
  br label %108

; <label>:125                                     ; preds = %108
  %126 = load %union.rec*, %union.rec** %y, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 1
  %129 = bitcast %union.FIRST_UNION* %128 to %struct.anon*
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %129, i32 0, i32 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 11
  br i1 %133, label %143, label %134

; <label>:134                                     ; preds = %125
  %135 = load %union.rec*, %union.rec** %y, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 1
  %138 = bitcast %union.FIRST_UNION* %137 to %struct.anon*
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %138, i32 0, i32 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp eq i32 %141, 12
  br i1 %142, label %143, label %147

; <label>:143                                     ; preds = %134, %125
  %144 = load %union.rec*, %union.rec** %y, align 8
  %145 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %146 = call %union.rec* @CopyObject(%union.rec* %144, %struct.FILE_POS* %145)
  br label %148

; <label>:147                                     ; preds = %134
  br label %148

; <label>:148                                     ; preds = %147, %143
  %149 = phi %union.rec* [ %146, %143 ], [ null, %147 ]
  store %union.rec* %149, %union.rec** %res, align 8
  %150 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %150, %union.rec** %1
  br label %237

; <label>:151                                     ; preds = %74, %65
  br label %152

; <label>:152                                     ; preds = %151
  %153 = load %union.rec*, %union.rec** %link, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 0
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 1
  %158 = load %union.rec*, %union.rec** %157, align 8
  store %union.rec* %158, %union.rec** %link, align 8
  br label %37

; <label>:159                                     ; preds = %37
  %160 = load %union.rec*, %union.rec** %2, align 8
  %161 = bitcast %union.rec* %160 to %struct.closure_type*
  %162 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %161, i32 0, i32 5
  %163 = load %union.rec*, %union.rec** %162, align 8
  %164 = bitcast %union.rec* %163 to %struct.symbol_type*
  %165 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %164, i32 0, i32 4
  %166 = load %union.rec*, %union.rec** %165, align 8
  store %union.rec* %166, %union.rec** %y, align 8
  %167 = load %union.rec*, %union.rec** %y, align 8
  %168 = icmp eq %union.rec* %167, null
  br i1 %168, label %169, label %170

; <label>:169                                     ; preds = %159
  store %union.rec* null, %union.rec** %res, align 8
  br label %235

; <label>:170                                     ; preds = %159
  %171 = load %union.rec*, %union.rec** %y, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 1
  %174 = bitcast %union.FIRST_UNION* %173 to %struct.anon*
  %175 = getelementptr inbounds %struct.anon, %struct.anon* %174, i32 0, i32 0
  %176 = load i8, i8* %175, align 1
  %177 = zext i8 %176 to i32
  %178 = icmp eq i32 %177, 11
  br i1 %178, label %188, label %179

; <label>:179                                     ; preds = %170
  %180 = load %union.rec*, %union.rec** %y, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 1
  %183 = bitcast %union.FIRST_UNION* %182 to %struct.anon*
  %184 = getelementptr inbounds %struct.anon, %struct.anon* %183, i32 0, i32 0
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  %187 = icmp eq i32 %186, 12
  br i1 %187, label %188, label %195

; <label>:188                                     ; preds = %179, %170
  %189 = load %union.rec*, %union.rec** %y, align 8
  %190 = load %union.rec*, %union.rec** %y, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 1
  %193 = bitcast %union.FIRST_UNION* %192 to %struct.FILE_POS*
  %194 = call %union.rec* @CopyObject(%union.rec* %189, %struct.FILE_POS* %193)
  store %union.rec* %194, %union.rec** %res, align 8
  br label %234

; <label>:195                                     ; preds = %179
  %196 = load %union.rec*, %union.rec** %y, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 1
  %199 = bitcast %union.FIRST_UNION* %198 to %struct.anon*
  %200 = getelementptr inbounds %struct.anon, %struct.anon* %199, i32 0, i32 0
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %204, label %232

; <label>:204                                     ; preds = %195
  %205 = load %union.rec*, %union.rec** %y, align 8
  %206 = bitcast %union.rec* %205 to %struct.closure_type*
  %207 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %206, i32 0, i32 5
  %208 = load %union.rec*, %union.rec** %207, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 1
  %211 = bitcast %union.FIRST_UNION* %210 to %struct.anon*
  %212 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 0
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp sge i32 %214, 144
  br i1 %215, label %216, label %232

; <label>:216                                     ; preds = %204
  %217 = load %union.rec*, %union.rec** %y, align 8
  %218 = bitcast %union.rec* %217 to %struct.closure_type*
  %219 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %218, i32 0, i32 5
  %220 = load %union.rec*, %union.rec** %219, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 1
  %223 = bitcast %union.FIRST_UNION* %222 to %struct.anon*
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 0
  %225 = load i8, i8* %224, align 1
  %226 = zext i8 %225 to i32
  %227 = icmp sle i32 %226, 146
  br i1 %227, label %228, label %232

; <label>:228                                     ; preds = %216
  %229 = load %union.rec*, %union.rec** %y, align 8
  %230 = load %union.rec*, %union.rec** %prnt_env, align 8
  %231 = call %union.rec* @ParameterCheck(%union.rec* %229, %union.rec* %230)
  store %union.rec* %231, %union.rec** %res, align 8
  br label %233

; <label>:232                                     ; preds = %216, %204, %195
  store %union.rec* null, %union.rec** %res, align 8
  br label %233

; <label>:233                                     ; preds = %232, %228
  br label %234

; <label>:234                                     ; preds = %233, %188
  br label %235

; <label>:235                                     ; preds = %234, %169
  %236 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %236, %union.rec** %1
  br label %237

; <label>:237                                     ; preds = %235, %148, %27
  %238 = load %union.rec*, %union.rec** %1
  ret %union.rec* %238
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
