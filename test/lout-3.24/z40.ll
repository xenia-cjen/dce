; ModuleID = 'z40.c'
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
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }

@filter_count = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@filter_active = internal global %union.rec* null, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"louti\00", align 1
@FilterInSym = external global %union.rec*, align 8
@.str.2 = private unnamed_addr constant [5 x i8] c"lout\00", align 1
@FilterOutSym = external global %union.rec*, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c"lout.err\00", align 1
@FilterErrSym = external global %union.rec*, align 8
@filter_in_filename = internal global %union.rec* null, align 8
@filter_out_filename = internal global %union.rec* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"%s%d\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [37 x i8] c"cannot open temporary filter file %s\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.7 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.8 = private unnamed_addr constant [29 x i8] c"FilterSetFileNames: type(x)!\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"FilterSetFileNames: x has no children!\00", align 1
@.str.10 = private unnamed_addr constant [29 x i8] c"FilterSetFileNames: type(y)!\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"FilterSetFileNames: type(y) (2)!\00", align 1
@.str.12 = private unnamed_addr constant [24 x i8] c"FilterExecute: type(x)!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"FilterExecute: type(env)!\00", align 1
@SafeExecution = external global i32, align 4
@.str.14 = private unnamed_addr constant [39 x i8] c"safe execution prohibiting command: %s\00", align 1
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.18 = private unnamed_addr constant [40 x i8] c"failure (non-zero status) of filter: %s\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"FilterWrite: type(x)!\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"cannot read filter temporary file %s\00", align 1
@.str.21 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.23 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.26 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@xx_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @FilterInit() #0 {
  store i32 0, i32* @filter_count, align 4
  %1 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %2 = zext i8 %1 to i32
  store i32 %2, i32* @zz_size, align 4
  %3 = sext i32 %2 to i64
  %4 = icmp uge i64 %3, 265
  br i1 %4, label %5, label %8

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %6)
  br label %33

; <label>:8                                       ; preds = %0
  %9 = load i32, i32* @zz_size, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %10
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = icmp eq %union.rec* %12, null
  br i1 %13, label %14, label %18

; <label>:14                                      ; preds = %8
  %15 = load i32, i32* @zz_size, align 4
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %17 = call %union.rec* @GetMemory(i32 %15, %struct.FILE_POS* %16)
  store %union.rec* %17, %union.rec** @zz_hold, align 8
  br label %32

; <label>:18                                      ; preds = %8
  %19 = load i32, i32* @zz_size, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %20
  %22 = load %union.rec*, %union.rec** %21, align 8
  store %union.rec* %22, %union.rec** @zz_hold, align 8
  store %union.rec* %22, %union.rec** @zz_hold, align 8
  %23 = load %union.rec*, %union.rec** @zz_hold, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %27, align 8
  %29 = load i32, i32* @zz_size, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %30
  store %union.rec* %28, %union.rec** %31, align 8
  br label %32

; <label>:32                                      ; preds = %18, %14
  br label %33

; <label>:33                                      ; preds = %32, %5
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 1
  %37 = bitcast %union.FIRST_UNION* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  store i8 17, i8* %38, align 1
  %39 = load %union.rec*, %union.rec** @zz_hold, align 8
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 0
  %43 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %42, i32 0, i64 1
  %44 = getelementptr inbounds %struct.LIST, %struct.LIST* %43, i32 0, i32 1
  store %union.rec* %39, %union.rec** %44, align 8
  %45 = load %union.rec*, %union.rec** @zz_hold, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  store %union.rec* %39, %union.rec** %49, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 0
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 1
  store %union.rec* %39, %union.rec** %54, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 0
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 0
  store %union.rec* %39, %union.rec** %59, align 8
  store %union.rec* %39, %union.rec** @filter_active, align 8
  %60 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %61 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %60)
  %62 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %63 = bitcast %union.rec* %62 to %struct.symbol_type*
  %64 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %63, i32 0, i32 4
  store %union.rec* %61, %union.rec** %64, align 8
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %66 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), %struct.FILE_POS* %65)
  %67 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %68 = bitcast %union.rec* %67 to %struct.symbol_type*
  %69 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %68, i32 0, i32 4
  store %union.rec* %66, %union.rec** %69, align 8
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %71 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), %struct.FILE_POS* %70)
  %72 = load %union.rec*, %union.rec** @FilterErrSym, align 8
  %73 = bitcast %union.rec* %72 to %struct.symbol_type*
  %74 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %73, i32 0, i32 4
  store %union.rec* %71, %union.rec** %74, align 8
  %75 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %76 = bitcast %union.rec* %75 to %struct.symbol_type*
  %77 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %76, i32 0, i32 4
  %78 = load %union.rec*, %union.rec** %77, align 8
  store %union.rec* %78, %union.rec** @filter_in_filename, align 8
  %79 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %80 = bitcast %union.rec* %79 to %struct.symbol_type*
  %81 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %80, i32 0, i32 4
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** @filter_out_filename, align 8
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @FilterCreate(i32 %use_begin, %union.rec* %act, %struct.FILE_POS* %xfpos) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.FILE_POS*, align 8
  %buff = alloca [2048 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %x = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %junk = alloca %union.rec*, align 8
  store i32 %use_begin, i32* %1, align 4
  store %union.rec* %act, %union.rec** %2, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %3, align 8
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 57), align 1
  %5 = zext i8 %4 to i32
  store i32 %5, i32* @zz_size, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp uge i64 %6, 265
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %9)
  br label %36

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* @zz_size, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %13
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = icmp eq %union.rec* %15, null
  br i1 %16, label %17, label %21

; <label>:17                                      ; preds = %11
  %18 = load i32, i32* @zz_size, align 4
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %20 = call %union.rec* @GetMemory(i32 %18, %struct.FILE_POS* %19)
  store %union.rec* %20, %union.rec** @zz_hold, align 8
  br label %35

; <label>:21                                      ; preds = %11
  %22 = load i32, i32* @zz_size, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %23
  %25 = load %union.rec*, %union.rec** %24, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  store %union.rec* %25, %union.rec** @zz_hold, align 8
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 0
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = load i32, i32* @zz_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %33
  store %union.rec* %31, %union.rec** %34, align 8
  br label %35

; <label>:35                                      ; preds = %21, %17
  br label %36

; <label>:36                                      ; preds = %35, %8
  %37 = load %union.rec*, %union.rec** @zz_hold, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 1
  %40 = bitcast %union.FIRST_UNION* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  store i8 57, i8* %41, align 1
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  store %union.rec* %42, %union.rec** %47, align 8
  %48 = load %union.rec*, %union.rec** @zz_hold, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  store %union.rec* %42, %union.rec** %52, align 8
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %55, i32 0, i64 0
  %57 = getelementptr inbounds %struct.LIST, %struct.LIST* %56, i32 0, i32 1
  store %union.rec* %42, %union.rec** %57, align 8
  %58 = load %union.rec*, %union.rec** @zz_hold, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 0
  %61 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %60, i32 0, i64 0
  %62 = getelementptr inbounds %struct.LIST, %struct.LIST* %61, i32 0, i32 0
  store %union.rec* %42, %union.rec** %62, align 8
  store %union.rec* %42, %union.rec** %res, align 8
  %63 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %64 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %63, i32 0, i32 2
  %65 = load i16, i16* %64, align 2
  %66 = load %union.rec*, %union.rec** %res, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 1
  %69 = bitcast %union.FIRST_UNION* %68 to %struct.FILE_POS*
  %70 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %69, i32 0, i32 2
  store i16 %65, i16* %70, align 2
  %71 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %72 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 1048575
  %75 = load %union.rec*, %union.rec** %res, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 1
  %78 = bitcast %union.FIRST_UNION* %77 to %struct.FILE_POS*
  %79 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = and i32 %74, 1048575
  %82 = and i32 %80, -1048576
  %83 = or i32 %82, %81
  store i32 %83, i32* %79, align 4
  %84 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %85 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = lshr i32 %86, 20
  %88 = load %union.rec*, %union.rec** %res, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 1
  %91 = bitcast %union.FIRST_UNION* %90 to %struct.FILE_POS*
  %92 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %87, 4095
  %95 = shl i32 %94, 20
  %96 = and i32 %93, 1048575
  %97 = or i32 %96, %95
  store i32 %97, i32* %92, align 4
  %98 = load i32, i32* @filter_count, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* @filter_count, align 4
  %100 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %101 = load i32, i32* @filter_count, align 4
  %102 = call i32 (i8*, i8*, ...) @sprintf(i8* %100, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i32 0, i32 0), i32 %101) #4
  %103 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %104 = call %struct._IO_FILE* @fopen(i8* %103, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0))
  store %struct._IO_FILE* %104, %struct._IO_FILE** %fp, align 8
  %105 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %106 = icmp eq %struct._IO_FILE* %105, null
  br i1 %106, label %107, label %111

; <label>:107                                     ; preds = %36
  %108 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %110 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 1, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %108, i8* %109)
  br label %111

; <label>:111                                     ; preds = %107, %36
  %112 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %113 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %114 = call %union.rec* @MakeWord(i32 11, i8* %112, %struct.FILE_POS* %113)
  store %union.rec* %114, %union.rec** %x, align 8
  %115 = load i32, i32* %1, align 4
  %116 = load %union.rec*, %union.rec** %x, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 2
  %119 = bitcast %union.SECOND_UNION* %118 to %struct.anon.1*
  %120 = bitcast %struct.anon.1* %119 to i32*
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %115, 1023
  %123 = shl i32 %122, 12
  %124 = and i32 %121, -4190209
  %125 = or i32 %124, %123
  store i32 %125, i32* %120, align 4
  %126 = load %union.rec*, %union.rec** %2, align 8
  %127 = load %union.rec*, %union.rec** %x, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 3
  %130 = bitcast %union.THIRD_UNION* %129 to %union.rec**
  store %union.rec* %126, %union.rec** %130, align 8
  %131 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %132 = zext i8 %131 to i32
  store i32 %132, i32* @zz_size, align 4
  %133 = sext i32 %132 to i64
  %134 = icmp uge i64 %133, 265
  br i1 %134, label %135, label %138

; <label>:135                                     ; preds = %111
  %136 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %137 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %136)
  br label %163

; <label>:138                                     ; preds = %111
  %139 = load i32, i32* @zz_size, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %140
  %142 = load %union.rec*, %union.rec** %141, align 8
  %143 = icmp eq %union.rec* %142, null
  br i1 %143, label %144, label %148

; <label>:144                                     ; preds = %138
  %145 = load i32, i32* @zz_size, align 4
  %146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %147 = call %union.rec* @GetMemory(i32 %145, %struct.FILE_POS* %146)
  store %union.rec* %147, %union.rec** @zz_hold, align 8
  br label %162

; <label>:148                                     ; preds = %138
  %149 = load i32, i32* @zz_size, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %150
  %152 = load %union.rec*, %union.rec** %151, align 8
  store %union.rec* %152, %union.rec** @zz_hold, align 8
  store %union.rec* %152, %union.rec** @zz_hold, align 8
  %153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 0
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %157, align 8
  %159 = load i32, i32* @zz_size, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %160
  store %union.rec* %158, %union.rec** %161, align 8
  br label %162

; <label>:162                                     ; preds = %148, %144
  br label %163

; <label>:163                                     ; preds = %162, %135
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 1
  %167 = bitcast %union.FIRST_UNION* %166 to %struct.anon*
  %168 = getelementptr inbounds %struct.anon, %struct.anon* %167, i32 0, i32 0
  store i8 0, i8* %168, align 1
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 0
  %173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %172, i32 0, i64 1
  %174 = getelementptr inbounds %struct.LIST, %struct.LIST* %173, i32 0, i32 1
  store %union.rec* %169, %union.rec** %174, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 0
  %178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %177, i32 0, i64 1
  %179 = getelementptr inbounds %struct.LIST, %struct.LIST* %178, i32 0, i32 0
  store %union.rec* %169, %union.rec** %179, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %182, i32 0, i64 0
  %184 = getelementptr inbounds %struct.LIST, %struct.LIST* %183, i32 0, i32 1
  store %union.rec* %169, %union.rec** %184, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 0
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  store %union.rec* %169, %union.rec** %189, align 8
  store %union.rec* %169, %union.rec** @xx_link, align 8
  %190 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %190, %union.rec** @zz_res, align 8
  %191 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %191, %union.rec** @zz_hold, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = icmp eq %union.rec* %192, null
  br i1 %193, label %194, label %196

; <label>:194                                     ; preds = %163
  %195 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %244

; <label>:196                                     ; preds = %163
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = icmp eq %union.rec* %197, null
  br i1 %198, label %199, label %201

; <label>:199                                     ; preds = %196
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %242

; <label>:201                                     ; preds = %196
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 0
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 0
  %207 = load %union.rec*, %union.rec** %206, align 8
  store %union.rec* %207, %union.rec** @zz_tmp, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 0
  %211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %210, i32 0, i64 0
  %212 = getelementptr inbounds %struct.LIST, %struct.LIST* %211, i32 0, i32 0
  %213 = load %union.rec*, %union.rec** %212, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 0
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 0
  store %union.rec* %213, %union.rec** %218, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %222, i32 0, i64 0
  %224 = getelementptr inbounds %struct.LIST, %struct.LIST* %223, i32 0, i32 0
  %225 = load %union.rec*, %union.rec** %224, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 1
  store %union.rec* %219, %union.rec** %229, align 8
  %230 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 0
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  store %union.rec* %230, %union.rec** %235, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %237 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 0
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 1
  store %union.rec* %236, %union.rec** %241, align 8
  br label %242

; <label>:242                                     ; preds = %201, %199
  %243 = phi %union.rec* [ %200, %199 ], [ %236, %201 ]
  br label %244

; <label>:244                                     ; preds = %242, %194
  %245 = phi %union.rec* [ %195, %194 ], [ %243, %242 ]
  %246 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %246, %union.rec** @zz_res, align 8
  %247 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %247, %union.rec** @zz_hold, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = icmp eq %union.rec* %248, null
  br i1 %249, label %250, label %252

; <label>:250                                     ; preds = %244
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %300

; <label>:252                                     ; preds = %244
  %253 = load %union.rec*, %union.rec** @zz_res, align 8
  %254 = icmp eq %union.rec* %253, null
  br i1 %254, label %255, label %257

; <label>:255                                     ; preds = %252
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %298

; <label>:257                                     ; preds = %252
  %258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 0
  %261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %260, i32 0, i64 1
  %262 = getelementptr inbounds %struct.LIST, %struct.LIST* %261, i32 0, i32 0
  %263 = load %union.rec*, %union.rec** %262, align 8
  store %union.rec* %263, %union.rec** @zz_tmp, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %265 = bitcast %union.rec* %264 to %struct.word_type*
  %266 = getelementptr inbounds %struct.word_type, %struct.word_type* %265, i32 0, i32 0
  %267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %266, i32 0, i64 1
  %268 = getelementptr inbounds %struct.LIST, %struct.LIST* %267, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %268, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = bitcast %union.rec* %270 to %struct.word_type*
  %272 = getelementptr inbounds %struct.word_type, %struct.word_type* %271, i32 0, i32 0
  %273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %272, i32 0, i64 1
  %274 = getelementptr inbounds %struct.LIST, %struct.LIST* %273, i32 0, i32 0
  store %union.rec* %269, %union.rec** %274, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = load %union.rec*, %union.rec** @zz_res, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 0
  %279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %278, i32 0, i64 1
  %280 = getelementptr inbounds %struct.LIST, %struct.LIST* %279, i32 0, i32 0
  %281 = load %union.rec*, %union.rec** %280, align 8
  %282 = bitcast %union.rec* %281 to %struct.word_type*
  %283 = getelementptr inbounds %struct.word_type, %struct.word_type* %282, i32 0, i32 0
  %284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %283, i32 0, i64 1
  %285 = getelementptr inbounds %struct.LIST, %struct.LIST* %284, i32 0, i32 1
  store %union.rec* %275, %union.rec** %285, align 8
  %286 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 1
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  store %union.rec* %286, %union.rec** %291, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %293 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %294 = bitcast %union.rec* %293 to %struct.word_type*
  %295 = getelementptr inbounds %struct.word_type, %struct.word_type* %294, i32 0, i32 0
  %296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %295, i32 0, i64 1
  %297 = getelementptr inbounds %struct.LIST, %struct.LIST* %296, i32 0, i32 1
  store %union.rec* %292, %union.rec** %297, align 8
  br label %298

; <label>:298                                     ; preds = %257, %255
  %299 = phi %union.rec* [ %256, %255 ], [ %292, %257 ]
  br label %300

; <label>:300                                     ; preds = %298, %250
  %301 = phi %union.rec* [ %251, %250 ], [ %299, %298 ]
  %302 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %303 = zext i8 %302 to i32
  store i32 %303, i32* @zz_size, align 4
  %304 = sext i32 %303 to i64
  %305 = icmp uge i64 %304, 265
  br i1 %305, label %306, label %309

; <label>:306                                     ; preds = %300
  %307 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %308 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %307)
  br label %334

; <label>:309                                     ; preds = %300
  %310 = load i32, i32* @zz_size, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %311
  %313 = load %union.rec*, %union.rec** %312, align 8
  %314 = icmp eq %union.rec* %313, null
  br i1 %314, label %315, label %319

; <label>:315                                     ; preds = %309
  %316 = load i32, i32* @zz_size, align 4
  %317 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %318 = call %union.rec* @GetMemory(i32 %316, %struct.FILE_POS* %317)
  store %union.rec* %318, %union.rec** @zz_hold, align 8
  br label %333

; <label>:319                                     ; preds = %309
  %320 = load i32, i32* @zz_size, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %321
  %323 = load %union.rec*, %union.rec** %322, align 8
  store %union.rec* %323, %union.rec** @zz_hold, align 8
  store %union.rec* %323, %union.rec** @zz_hold, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 0
  %327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %326, i32 0, i64 0
  %328 = getelementptr inbounds %struct.LIST, %struct.LIST* %327, i32 0, i32 0
  %329 = load %union.rec*, %union.rec** %328, align 8
  %330 = load i32, i32* @zz_size, align 4
  %331 = sext i32 %330 to i64
  %332 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %331
  store %union.rec* %329, %union.rec** %332, align 8
  br label %333

; <label>:333                                     ; preds = %319, %315
  br label %334

; <label>:334                                     ; preds = %333, %306
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 1
  %338 = bitcast %union.FIRST_UNION* %337 to %struct.anon*
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %338, i32 0, i32 0
  store i8 0, i8* %339, align 1
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = bitcast %union.rec* %341 to %struct.word_type*
  %343 = getelementptr inbounds %struct.word_type, %struct.word_type* %342, i32 0, i32 0
  %344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %343, i32 0, i64 1
  %345 = getelementptr inbounds %struct.LIST, %struct.LIST* %344, i32 0, i32 1
  store %union.rec* %340, %union.rec** %345, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 1
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 0
  store %union.rec* %340, %union.rec** %350, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = bitcast %union.rec* %351 to %struct.word_type*
  %353 = getelementptr inbounds %struct.word_type, %struct.word_type* %352, i32 0, i32 0
  %354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %353, i32 0, i64 0
  %355 = getelementptr inbounds %struct.LIST, %struct.LIST* %354, i32 0, i32 1
  store %union.rec* %340, %union.rec** %355, align 8
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %358, i32 0, i64 0
  %360 = getelementptr inbounds %struct.LIST, %struct.LIST* %359, i32 0, i32 0
  store %union.rec* %340, %union.rec** %360, align 8
  store %union.rec* %340, %union.rec** @xx_link, align 8
  %361 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %361, %union.rec** @zz_res, align 8
  %362 = load %union.rec*, %union.rec** @filter_active, align 8
  store %union.rec* %362, %union.rec** @zz_hold, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = icmp eq %union.rec* %363, null
  br i1 %364, label %365, label %367

; <label>:365                                     ; preds = %334
  %366 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %415

; <label>:367                                     ; preds = %334
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %369 = icmp eq %union.rec* %368, null
  br i1 %369, label %370, label %372

; <label>:370                                     ; preds = %367
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %413

; <label>:372                                     ; preds = %367
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 0
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 0
  %378 = load %union.rec*, %union.rec** %377, align 8
  store %union.rec* %378, %union.rec** @zz_tmp, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 0
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %383, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 0
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 0
  store %union.rec* %384, %union.rec** %389, align 8
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_res, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 0
  %394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %393, i32 0, i64 0
  %395 = getelementptr inbounds %struct.LIST, %struct.LIST* %394, i32 0, i32 0
  %396 = load %union.rec*, %union.rec** %395, align 8
  %397 = bitcast %union.rec* %396 to %struct.word_type*
  %398 = getelementptr inbounds %struct.word_type, %struct.word_type* %397, i32 0, i32 0
  %399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %398, i32 0, i64 0
  %400 = getelementptr inbounds %struct.LIST, %struct.LIST* %399, i32 0, i32 1
  store %union.rec* %390, %union.rec** %400, align 8
  %401 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %402 = load %union.rec*, %union.rec** @zz_res, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 0
  %405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %404, i32 0, i64 0
  %406 = getelementptr inbounds %struct.LIST, %struct.LIST* %405, i32 0, i32 0
  store %union.rec* %401, %union.rec** %406, align 8
  %407 = load %union.rec*, %union.rec** @zz_res, align 8
  %408 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 0
  %411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %410, i32 0, i64 0
  %412 = getelementptr inbounds %struct.LIST, %struct.LIST* %411, i32 0, i32 1
  store %union.rec* %407, %union.rec** %412, align 8
  br label %413

; <label>:413                                     ; preds = %372, %370
  %414 = phi %union.rec* [ %371, %370 ], [ %407, %372 ]
  br label %415

; <label>:415                                     ; preds = %413, %365
  %416 = phi %union.rec* [ %366, %365 ], [ %414, %413 ]
  %417 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %417, %union.rec** @zz_res, align 8
  %418 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %418, %union.rec** @zz_hold, align 8
  %419 = load %union.rec*, %union.rec** @zz_hold, align 8
  %420 = icmp eq %union.rec* %419, null
  br i1 %420, label %421, label %423

; <label>:421                                     ; preds = %415
  %422 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %471

; <label>:423                                     ; preds = %415
  %424 = load %union.rec*, %union.rec** @zz_res, align 8
  %425 = icmp eq %union.rec* %424, null
  br i1 %425, label %426, label %428

; <label>:426                                     ; preds = %423
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %469

; <label>:428                                     ; preds = %423
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %430 = bitcast %union.rec* %429 to %struct.word_type*
  %431 = getelementptr inbounds %struct.word_type, %struct.word_type* %430, i32 0, i32 0
  %432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %431, i32 0, i64 1
  %433 = getelementptr inbounds %struct.LIST, %struct.LIST* %432, i32 0, i32 0
  %434 = load %union.rec*, %union.rec** %433, align 8
  store %union.rec* %434, %union.rec** @zz_tmp, align 8
  %435 = load %union.rec*, %union.rec** @zz_res, align 8
  %436 = bitcast %union.rec* %435 to %struct.word_type*
  %437 = getelementptr inbounds %struct.word_type, %struct.word_type* %436, i32 0, i32 0
  %438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %437, i32 0, i64 1
  %439 = getelementptr inbounds %struct.LIST, %struct.LIST* %438, i32 0, i32 0
  %440 = load %union.rec*, %union.rec** %439, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %442 = bitcast %union.rec* %441 to %struct.word_type*
  %443 = getelementptr inbounds %struct.word_type, %struct.word_type* %442, i32 0, i32 0
  %444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %443, i32 0, i64 1
  %445 = getelementptr inbounds %struct.LIST, %struct.LIST* %444, i32 0, i32 0
  store %union.rec* %440, %union.rec** %445, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %447 = load %union.rec*, %union.rec** @zz_res, align 8
  %448 = bitcast %union.rec* %447 to %struct.word_type*
  %449 = getelementptr inbounds %struct.word_type, %struct.word_type* %448, i32 0, i32 0
  %450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %449, i32 0, i64 1
  %451 = getelementptr inbounds %struct.LIST, %struct.LIST* %450, i32 0, i32 0
  %452 = load %union.rec*, %union.rec** %451, align 8
  %453 = bitcast %union.rec* %452 to %struct.word_type*
  %454 = getelementptr inbounds %struct.word_type, %struct.word_type* %453, i32 0, i32 0
  %455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %454, i32 0, i64 1
  %456 = getelementptr inbounds %struct.LIST, %struct.LIST* %455, i32 0, i32 1
  store %union.rec* %446, %union.rec** %456, align 8
  %457 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %458 = load %union.rec*, %union.rec** @zz_res, align 8
  %459 = bitcast %union.rec* %458 to %struct.word_type*
  %460 = getelementptr inbounds %struct.word_type, %struct.word_type* %459, i32 0, i32 0
  %461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %460, i32 0, i64 1
  %462 = getelementptr inbounds %struct.LIST, %struct.LIST* %461, i32 0, i32 0
  store %union.rec* %457, %union.rec** %462, align 8
  %463 = load %union.rec*, %union.rec** @zz_res, align 8
  %464 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %465 = bitcast %union.rec* %464 to %struct.word_type*
  %466 = getelementptr inbounds %struct.word_type, %struct.word_type* %465, i32 0, i32 0
  %467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %466, i32 0, i64 1
  %468 = getelementptr inbounds %struct.LIST, %struct.LIST* %467, i32 0, i32 1
  store %union.rec* %463, %union.rec** %468, align 8
  br label %469

; <label>:469                                     ; preds = %428, %426
  %470 = phi %union.rec* [ %427, %426 ], [ %463, %428 ]
  br label %471

; <label>:471                                     ; preds = %469, %421
  %472 = phi %union.rec* [ %422, %421 ], [ %470, %469 ]
  %473 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %474 = load i32, i32* %1, align 4
  %475 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %476 = call %union.rec* @LexScanVerbatim(%struct._IO_FILE* %473, i32 %474, %struct.FILE_POS* %475, i32 0)
  store %union.rec* %476, %union.rec** %junk, align 8
  %477 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %478 = call i32 @fclose(%struct._IO_FILE* %477)
  %479 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %480 = load i32, i32* @filter_count, align 4
  %481 = call i32 (i8*, i8*, ...) @sprintf(i8* %479, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i32 0, i32 0), i32 %480) #4
  %482 = getelementptr inbounds [2048 x i8], [2048 x i8]* %buff, i32 0, i32 0
  %483 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %484 = call %union.rec* @MakeWord(i32 11, i8* %482, %struct.FILE_POS* %483)
  store %union.rec* %484, %union.rec** %x, align 8
  %485 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %486 = zext i8 %485 to i32
  store i32 %486, i32* @zz_size, align 4
  %487 = sext i32 %486 to i64
  %488 = icmp uge i64 %487, 265
  br i1 %488, label %489, label %492

; <label>:489                                     ; preds = %471
  %490 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %491 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %490)
  br label %517

; <label>:492                                     ; preds = %471
  %493 = load i32, i32* @zz_size, align 4
  %494 = sext i32 %493 to i64
  %495 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %494
  %496 = load %union.rec*, %union.rec** %495, align 8
  %497 = icmp eq %union.rec* %496, null
  br i1 %497, label %498, label %502

; <label>:498                                     ; preds = %492
  %499 = load i32, i32* @zz_size, align 4
  %500 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %501 = call %union.rec* @GetMemory(i32 %499, %struct.FILE_POS* %500)
  store %union.rec* %501, %union.rec** @zz_hold, align 8
  br label %516

; <label>:502                                     ; preds = %492
  %503 = load i32, i32* @zz_size, align 4
  %504 = sext i32 %503 to i64
  %505 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %504
  %506 = load %union.rec*, %union.rec** %505, align 8
  store %union.rec* %506, %union.rec** @zz_hold, align 8
  store %union.rec* %506, %union.rec** @zz_hold, align 8
  %507 = load %union.rec*, %union.rec** @zz_hold, align 8
  %508 = bitcast %union.rec* %507 to %struct.word_type*
  %509 = getelementptr inbounds %struct.word_type, %struct.word_type* %508, i32 0, i32 0
  %510 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %509, i32 0, i64 0
  %511 = getelementptr inbounds %struct.LIST, %struct.LIST* %510, i32 0, i32 0
  %512 = load %union.rec*, %union.rec** %511, align 8
  %513 = load i32, i32* @zz_size, align 4
  %514 = sext i32 %513 to i64
  %515 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %514
  store %union.rec* %512, %union.rec** %515, align 8
  br label %516

; <label>:516                                     ; preds = %502, %498
  br label %517

; <label>:517                                     ; preds = %516, %489
  %518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %519 = bitcast %union.rec* %518 to %struct.word_type*
  %520 = getelementptr inbounds %struct.word_type, %struct.word_type* %519, i32 0, i32 1
  %521 = bitcast %union.FIRST_UNION* %520 to %struct.anon*
  %522 = getelementptr inbounds %struct.anon, %struct.anon* %521, i32 0, i32 0
  store i8 0, i8* %522, align 1
  %523 = load %union.rec*, %union.rec** @zz_hold, align 8
  %524 = load %union.rec*, %union.rec** @zz_hold, align 8
  %525 = bitcast %union.rec* %524 to %struct.word_type*
  %526 = getelementptr inbounds %struct.word_type, %struct.word_type* %525, i32 0, i32 0
  %527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %526, i32 0, i64 1
  %528 = getelementptr inbounds %struct.LIST, %struct.LIST* %527, i32 0, i32 1
  store %union.rec* %523, %union.rec** %528, align 8
  %529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %530 = bitcast %union.rec* %529 to %struct.word_type*
  %531 = getelementptr inbounds %struct.word_type, %struct.word_type* %530, i32 0, i32 0
  %532 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %531, i32 0, i64 1
  %533 = getelementptr inbounds %struct.LIST, %struct.LIST* %532, i32 0, i32 0
  store %union.rec* %523, %union.rec** %533, align 8
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %535 = bitcast %union.rec* %534 to %struct.word_type*
  %536 = getelementptr inbounds %struct.word_type, %struct.word_type* %535, i32 0, i32 0
  %537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %536, i32 0, i64 0
  %538 = getelementptr inbounds %struct.LIST, %struct.LIST* %537, i32 0, i32 1
  store %union.rec* %523, %union.rec** %538, align 8
  %539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %540 = bitcast %union.rec* %539 to %struct.word_type*
  %541 = getelementptr inbounds %struct.word_type, %struct.word_type* %540, i32 0, i32 0
  %542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %541, i32 0, i64 0
  %543 = getelementptr inbounds %struct.LIST, %struct.LIST* %542, i32 0, i32 0
  store %union.rec* %523, %union.rec** %543, align 8
  store %union.rec* %523, %union.rec** @xx_link, align 8
  %544 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %544, %union.rec** @zz_res, align 8
  %545 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %545, %union.rec** @zz_hold, align 8
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %547 = icmp eq %union.rec* %546, null
  br i1 %547, label %548, label %550

; <label>:548                                     ; preds = %517
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %598

; <label>:550                                     ; preds = %517
  %551 = load %union.rec*, %union.rec** @zz_res, align 8
  %552 = icmp eq %union.rec* %551, null
  br i1 %552, label %553, label %555

; <label>:553                                     ; preds = %550
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %596

; <label>:555                                     ; preds = %550
  %556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %557 = bitcast %union.rec* %556 to %struct.word_type*
  %558 = getelementptr inbounds %struct.word_type, %struct.word_type* %557, i32 0, i32 0
  %559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %558, i32 0, i64 0
  %560 = getelementptr inbounds %struct.LIST, %struct.LIST* %559, i32 0, i32 0
  %561 = load %union.rec*, %union.rec** %560, align 8
  store %union.rec* %561, %union.rec** @zz_tmp, align 8
  %562 = load %union.rec*, %union.rec** @zz_res, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 0
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  %567 = load %union.rec*, %union.rec** %566, align 8
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %569 = bitcast %union.rec* %568 to %struct.word_type*
  %570 = getelementptr inbounds %struct.word_type, %struct.word_type* %569, i32 0, i32 0
  %571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %570, i32 0, i64 0
  %572 = getelementptr inbounds %struct.LIST, %struct.LIST* %571, i32 0, i32 0
  store %union.rec* %567, %union.rec** %572, align 8
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = load %union.rec*, %union.rec** @zz_res, align 8
  %575 = bitcast %union.rec* %574 to %struct.word_type*
  %576 = getelementptr inbounds %struct.word_type, %struct.word_type* %575, i32 0, i32 0
  %577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %576, i32 0, i64 0
  %578 = getelementptr inbounds %struct.LIST, %struct.LIST* %577, i32 0, i32 0
  %579 = load %union.rec*, %union.rec** %578, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 0
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 1
  store %union.rec* %573, %union.rec** %583, align 8
  %584 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %585 = load %union.rec*, %union.rec** @zz_res, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 0
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 0
  store %union.rec* %584, %union.rec** %589, align 8
  %590 = load %union.rec*, %union.rec** @zz_res, align 8
  %591 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 0
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 1
  store %union.rec* %590, %union.rec** %595, align 8
  br label %596

; <label>:596                                     ; preds = %555, %553
  %597 = phi %union.rec* [ %554, %553 ], [ %590, %555 ]
  br label %598

; <label>:598                                     ; preds = %596, %548
  %599 = phi %union.rec* [ %549, %548 ], [ %597, %596 ]
  %600 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %600, %union.rec** @zz_res, align 8
  %601 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %601, %union.rec** @zz_hold, align 8
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %603 = icmp eq %union.rec* %602, null
  br i1 %603, label %604, label %606

; <label>:604                                     ; preds = %598
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %654

; <label>:606                                     ; preds = %598
  %607 = load %union.rec*, %union.rec** @zz_res, align 8
  %608 = icmp eq %union.rec* %607, null
  br i1 %608, label %609, label %611

; <label>:609                                     ; preds = %606
  %610 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %652

; <label>:611                                     ; preds = %606
  %612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %613 = bitcast %union.rec* %612 to %struct.word_type*
  %614 = getelementptr inbounds %struct.word_type, %struct.word_type* %613, i32 0, i32 0
  %615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %614, i32 0, i64 1
  %616 = getelementptr inbounds %struct.LIST, %struct.LIST* %615, i32 0, i32 0
  %617 = load %union.rec*, %union.rec** %616, align 8
  store %union.rec* %617, %union.rec** @zz_tmp, align 8
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  %619 = bitcast %union.rec* %618 to %struct.word_type*
  %620 = getelementptr inbounds %struct.word_type, %struct.word_type* %619, i32 0, i32 0
  %621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %620, i32 0, i64 1
  %622 = getelementptr inbounds %struct.LIST, %struct.LIST* %621, i32 0, i32 0
  %623 = load %union.rec*, %union.rec** %622, align 8
  %624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %625 = bitcast %union.rec* %624 to %struct.word_type*
  %626 = getelementptr inbounds %struct.word_type, %struct.word_type* %625, i32 0, i32 0
  %627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %626, i32 0, i64 1
  %628 = getelementptr inbounds %struct.LIST, %struct.LIST* %627, i32 0, i32 0
  store %union.rec* %623, %union.rec** %628, align 8
  %629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %630 = load %union.rec*, %union.rec** @zz_res, align 8
  %631 = bitcast %union.rec* %630 to %struct.word_type*
  %632 = getelementptr inbounds %struct.word_type, %struct.word_type* %631, i32 0, i32 0
  %633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %632, i32 0, i64 1
  %634 = getelementptr inbounds %struct.LIST, %struct.LIST* %633, i32 0, i32 0
  %635 = load %union.rec*, %union.rec** %634, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 0
  %638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %637, i32 0, i64 1
  %639 = getelementptr inbounds %struct.LIST, %struct.LIST* %638, i32 0, i32 1
  store %union.rec* %629, %union.rec** %639, align 8
  %640 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %641 = load %union.rec*, %union.rec** @zz_res, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 1
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 0
  store %union.rec* %640, %union.rec** %645, align 8
  %646 = load %union.rec*, %union.rec** @zz_res, align 8
  %647 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %648 = bitcast %union.rec* %647 to %struct.word_type*
  %649 = getelementptr inbounds %struct.word_type, %struct.word_type* %648, i32 0, i32 0
  %650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %649, i32 0, i64 1
  %651 = getelementptr inbounds %struct.LIST, %struct.LIST* %650, i32 0, i32 1
  store %union.rec* %646, %union.rec** %651, align 8
  br label %652

; <label>:652                                     ; preds = %611, %609
  %653 = phi %union.rec* [ %610, %609 ], [ %646, %611 ]
  br label %654

; <label>:654                                     ; preds = %652, %604
  %655 = phi %union.rec* [ %605, %604 ], [ %653, %652 ]
  %656 = load %union.rec*, %union.rec** %2, align 8
  %657 = bitcast %union.rec* %656 to %struct.word_type*
  %658 = getelementptr inbounds %struct.word_type, %struct.word_type* %657, i32 0, i32 2
  %659 = bitcast %union.SECOND_UNION* %658 to %struct.anon.5*
  %660 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %659, i32 0, i32 1
  %661 = bitcast [3 x i8]* %660 to i24*
  %662 = load i24, i24* %661, align 1
  %663 = lshr i24 %662, 8
  %664 = and i24 %663, 1
  %665 = zext i24 %664 to i32
  %666 = icmp ne i32 %665, 0
  br i1 %666, label %667, label %669

; <label>:667                                     ; preds = %654
  %668 = load %union.rec*, %union.rec** %2, align 8
  call void @PushScope(%union.rec* %668, i32 0, i32 1)
  br label %669

; <label>:669                                     ; preds = %667, %654
  %670 = call %union.rec* @GetScopeSnapshot()
  store %union.rec* %670, %union.rec** %x, align 8
  %671 = load %union.rec*, %union.rec** %2, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 2
  %674 = bitcast %union.SECOND_UNION* %673 to %struct.anon.5*
  %675 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %674, i32 0, i32 1
  %676 = bitcast [3 x i8]* %675 to i24*
  %677 = load i24, i24* %676, align 1
  %678 = lshr i24 %677, 8
  %679 = and i24 %678, 1
  %680 = zext i24 %679 to i32
  %681 = icmp ne i32 %680, 0
  br i1 %681, label %682, label %683

; <label>:682                                     ; preds = %669
  call void @PopScope()
  br label %683

; <label>:683                                     ; preds = %682, %669
  %684 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %685 = zext i8 %684 to i32
  store i32 %685, i32* @zz_size, align 4
  %686 = sext i32 %685 to i64
  %687 = icmp uge i64 %686, 265
  br i1 %687, label %688, label %691

; <label>:688                                     ; preds = %683
  %689 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %690 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %689)
  br label %716

; <label>:691                                     ; preds = %683
  %692 = load i32, i32* @zz_size, align 4
  %693 = sext i32 %692 to i64
  %694 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %693
  %695 = load %union.rec*, %union.rec** %694, align 8
  %696 = icmp eq %union.rec* %695, null
  br i1 %696, label %697, label %701

; <label>:697                                     ; preds = %691
  %698 = load i32, i32* @zz_size, align 4
  %699 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %700 = call %union.rec* @GetMemory(i32 %698, %struct.FILE_POS* %699)
  store %union.rec* %700, %union.rec** @zz_hold, align 8
  br label %715

; <label>:701                                     ; preds = %691
  %702 = load i32, i32* @zz_size, align 4
  %703 = sext i32 %702 to i64
  %704 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %703
  %705 = load %union.rec*, %union.rec** %704, align 8
  store %union.rec* %705, %union.rec** @zz_hold, align 8
  store %union.rec* %705, %union.rec** @zz_hold, align 8
  %706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %707 = bitcast %union.rec* %706 to %struct.word_type*
  %708 = getelementptr inbounds %struct.word_type, %struct.word_type* %707, i32 0, i32 0
  %709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %708, i32 0, i64 0
  %710 = getelementptr inbounds %struct.LIST, %struct.LIST* %709, i32 0, i32 0
  %711 = load %union.rec*, %union.rec** %710, align 8
  %712 = load i32, i32* @zz_size, align 4
  %713 = sext i32 %712 to i64
  %714 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %713
  store %union.rec* %711, %union.rec** %714, align 8
  br label %715

; <label>:715                                     ; preds = %701, %697
  br label %716

; <label>:716                                     ; preds = %715, %688
  %717 = load %union.rec*, %union.rec** @zz_hold, align 8
  %718 = bitcast %union.rec* %717 to %struct.word_type*
  %719 = getelementptr inbounds %struct.word_type, %struct.word_type* %718, i32 0, i32 1
  %720 = bitcast %union.FIRST_UNION* %719 to %struct.anon*
  %721 = getelementptr inbounds %struct.anon, %struct.anon* %720, i32 0, i32 0
  store i8 0, i8* %721, align 1
  %722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %724 = bitcast %union.rec* %723 to %struct.word_type*
  %725 = getelementptr inbounds %struct.word_type, %struct.word_type* %724, i32 0, i32 0
  %726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %725, i32 0, i64 1
  %727 = getelementptr inbounds %struct.LIST, %struct.LIST* %726, i32 0, i32 1
  store %union.rec* %722, %union.rec** %727, align 8
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = bitcast %union.rec* %728 to %struct.word_type*
  %730 = getelementptr inbounds %struct.word_type, %struct.word_type* %729, i32 0, i32 0
  %731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %730, i32 0, i64 1
  %732 = getelementptr inbounds %struct.LIST, %struct.LIST* %731, i32 0, i32 0
  store %union.rec* %722, %union.rec** %732, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %734 = bitcast %union.rec* %733 to %struct.word_type*
  %735 = getelementptr inbounds %struct.word_type, %struct.word_type* %734, i32 0, i32 0
  %736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %735, i32 0, i64 0
  %737 = getelementptr inbounds %struct.LIST, %struct.LIST* %736, i32 0, i32 1
  store %union.rec* %722, %union.rec** %737, align 8
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %739 = bitcast %union.rec* %738 to %struct.word_type*
  %740 = getelementptr inbounds %struct.word_type, %struct.word_type* %739, i32 0, i32 0
  %741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %740, i32 0, i64 0
  %742 = getelementptr inbounds %struct.LIST, %struct.LIST* %741, i32 0, i32 0
  store %union.rec* %722, %union.rec** %742, align 8
  store %union.rec* %722, %union.rec** @xx_link, align 8
  %743 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %743, %union.rec** @zz_res, align 8
  %744 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %744, %union.rec** @zz_hold, align 8
  %745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %746 = icmp eq %union.rec* %745, null
  br i1 %746, label %747, label %749

; <label>:747                                     ; preds = %716
  %748 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %797

; <label>:749                                     ; preds = %716
  %750 = load %union.rec*, %union.rec** @zz_res, align 8
  %751 = icmp eq %union.rec* %750, null
  br i1 %751, label %752, label %754

; <label>:752                                     ; preds = %749
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %795

; <label>:754                                     ; preds = %749
  %755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %756 = bitcast %union.rec* %755 to %struct.word_type*
  %757 = getelementptr inbounds %struct.word_type, %struct.word_type* %756, i32 0, i32 0
  %758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %757, i32 0, i64 0
  %759 = getelementptr inbounds %struct.LIST, %struct.LIST* %758, i32 0, i32 0
  %760 = load %union.rec*, %union.rec** %759, align 8
  store %union.rec* %760, %union.rec** @zz_tmp, align 8
  %761 = load %union.rec*, %union.rec** @zz_res, align 8
  %762 = bitcast %union.rec* %761 to %struct.word_type*
  %763 = getelementptr inbounds %struct.word_type, %struct.word_type* %762, i32 0, i32 0
  %764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %763, i32 0, i64 0
  %765 = getelementptr inbounds %struct.LIST, %struct.LIST* %764, i32 0, i32 0
  %766 = load %union.rec*, %union.rec** %765, align 8
  %767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %768 = bitcast %union.rec* %767 to %struct.word_type*
  %769 = getelementptr inbounds %struct.word_type, %struct.word_type* %768, i32 0, i32 0
  %770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %769, i32 0, i64 0
  %771 = getelementptr inbounds %struct.LIST, %struct.LIST* %770, i32 0, i32 0
  store %union.rec* %766, %union.rec** %771, align 8
  %772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %773 = load %union.rec*, %union.rec** @zz_res, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 0
  %776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %775, i32 0, i64 0
  %777 = getelementptr inbounds %struct.LIST, %struct.LIST* %776, i32 0, i32 0
  %778 = load %union.rec*, %union.rec** %777, align 8
  %779 = bitcast %union.rec* %778 to %struct.word_type*
  %780 = getelementptr inbounds %struct.word_type, %struct.word_type* %779, i32 0, i32 0
  %781 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %780, i32 0, i64 0
  %782 = getelementptr inbounds %struct.LIST, %struct.LIST* %781, i32 0, i32 1
  store %union.rec* %772, %union.rec** %782, align 8
  %783 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %784 = load %union.rec*, %union.rec** @zz_res, align 8
  %785 = bitcast %union.rec* %784 to %struct.word_type*
  %786 = getelementptr inbounds %struct.word_type, %struct.word_type* %785, i32 0, i32 0
  %787 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %786, i32 0, i64 0
  %788 = getelementptr inbounds %struct.LIST, %struct.LIST* %787, i32 0, i32 0
  store %union.rec* %783, %union.rec** %788, align 8
  %789 = load %union.rec*, %union.rec** @zz_res, align 8
  %790 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 0
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 1
  store %union.rec* %789, %union.rec** %794, align 8
  br label %795

; <label>:795                                     ; preds = %754, %752
  %796 = phi %union.rec* [ %753, %752 ], [ %789, %754 ]
  br label %797

; <label>:797                                     ; preds = %795, %747
  %798 = phi %union.rec* [ %748, %747 ], [ %796, %795 ]
  %799 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %799, %union.rec** @zz_res, align 8
  %800 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %800, %union.rec** @zz_hold, align 8
  %801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %802 = icmp eq %union.rec* %801, null
  br i1 %802, label %803, label %805

; <label>:803                                     ; preds = %797
  %804 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %853

; <label>:805                                     ; preds = %797
  %806 = load %union.rec*, %union.rec** @zz_res, align 8
  %807 = icmp eq %union.rec* %806, null
  br i1 %807, label %808, label %810

; <label>:808                                     ; preds = %805
  %809 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %851

; <label>:810                                     ; preds = %805
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 0
  %814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %813, i32 0, i64 1
  %815 = getelementptr inbounds %struct.LIST, %struct.LIST* %814, i32 0, i32 0
  %816 = load %union.rec*, %union.rec** %815, align 8
  store %union.rec* %816, %union.rec** @zz_tmp, align 8
  %817 = load %union.rec*, %union.rec** @zz_res, align 8
  %818 = bitcast %union.rec* %817 to %struct.word_type*
  %819 = getelementptr inbounds %struct.word_type, %struct.word_type* %818, i32 0, i32 0
  %820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %819, i32 0, i64 1
  %821 = getelementptr inbounds %struct.LIST, %struct.LIST* %820, i32 0, i32 0
  %822 = load %union.rec*, %union.rec** %821, align 8
  %823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %824 = bitcast %union.rec* %823 to %struct.word_type*
  %825 = getelementptr inbounds %struct.word_type, %struct.word_type* %824, i32 0, i32 0
  %826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %825, i32 0, i64 1
  %827 = getelementptr inbounds %struct.LIST, %struct.LIST* %826, i32 0, i32 0
  store %union.rec* %822, %union.rec** %827, align 8
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %829 = load %union.rec*, %union.rec** @zz_res, align 8
  %830 = bitcast %union.rec* %829 to %struct.word_type*
  %831 = getelementptr inbounds %struct.word_type, %struct.word_type* %830, i32 0, i32 0
  %832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %831, i32 0, i64 1
  %833 = getelementptr inbounds %struct.LIST, %struct.LIST* %832, i32 0, i32 0
  %834 = load %union.rec*, %union.rec** %833, align 8
  %835 = bitcast %union.rec* %834 to %struct.word_type*
  %836 = getelementptr inbounds %struct.word_type, %struct.word_type* %835, i32 0, i32 0
  %837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %836, i32 0, i64 1
  %838 = getelementptr inbounds %struct.LIST, %struct.LIST* %837, i32 0, i32 1
  store %union.rec* %828, %union.rec** %838, align 8
  %839 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %840 = load %union.rec*, %union.rec** @zz_res, align 8
  %841 = bitcast %union.rec* %840 to %struct.word_type*
  %842 = getelementptr inbounds %struct.word_type, %struct.word_type* %841, i32 0, i32 0
  %843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %842, i32 0, i64 1
  %844 = getelementptr inbounds %struct.LIST, %struct.LIST* %843, i32 0, i32 0
  store %union.rec* %839, %union.rec** %844, align 8
  %845 = load %union.rec*, %union.rec** @zz_res, align 8
  %846 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %847 = bitcast %union.rec* %846 to %struct.word_type*
  %848 = getelementptr inbounds %struct.word_type, %struct.word_type* %847, i32 0, i32 0
  %849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %848, i32 0, i64 1
  %850 = getelementptr inbounds %struct.LIST, %struct.LIST* %849, i32 0, i32 1
  store %union.rec* %845, %union.rec** %850, align 8
  br label %851

; <label>:851                                     ; preds = %810, %808
  %852 = phi %union.rec* [ %809, %808 ], [ %845, %810 ]
  br label %853

; <label>:853                                     ; preds = %851, %803
  %854 = phi %union.rec* [ %804, %803 ], [ %852, %851 ]
  %855 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %855
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare %union.rec* @LexScanVerbatim(%struct._IO_FILE*, i32, %struct.FILE_POS*, i32) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @PushScope(%union.rec*, i32, i32) #1

declare %union.rec* @GetScopeSnapshot() #1

declare void @PopScope() #1

; Function Attrs: nounwind uwtable
define void @FilterSetFileNames(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 1
  %5 = bitcast %union.FIRST_UNION* %4 to %struct.anon*
  %6 = getelementptr inbounds %struct.anon, %struct.anon* %5, i32 0, i32 0
  %7 = load i8, i8* %6, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 57
  br i1 %9, label %13, label %10

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.8, i32 0, i32 0))
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
  %24 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %23, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0))
  br label %25

; <label>:25                                      ; preds = %22, %13
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %30, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 1
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 0
  %36 = load %union.rec*, %union.rec** %35, align 8
  store %union.rec* %36, %union.rec** %y, align 8
  br label %37

; <label>:37                                      ; preds = %47, %25
  %38 = load %union.rec*, %union.rec** %y, align 8
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
  %48 = load %union.rec*, %union.rec** %y, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %y, align 8
  br label %37

; <label>:54                                      ; preds = %37
  %55 = load %union.rec*, %union.rec** %y, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.anon*
  %59 = getelementptr inbounds %struct.anon, %struct.anon* %58, i32 0, i32 0
  %60 = load i8, i8* %59, align 1
  %61 = zext i8 %60 to i32
  %62 = icmp eq i32 %61, 11
  br i1 %62, label %66, label %63

; <label>:63                                      ; preds = %54
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.10, i32 0, i32 0))
  br label %66

; <label>:66                                      ; preds = %63, %54
  %67 = load %union.rec*, %union.rec** %y, align 8
  %68 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %69 = bitcast %union.rec* %68 to %struct.symbol_type*
  %70 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %69, i32 0, i32 4
  store %union.rec* %67, %union.rec** %70, align 8
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 0
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %75, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 0
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %80, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 1
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %85, align 8
  store %union.rec* %86, %union.rec** %y, align 8
  br label %87

; <label>:87                                      ; preds = %97, %66
  %88 = load %union.rec*, %union.rec** %y, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 1
  %91 = bitcast %union.FIRST_UNION* %90 to %struct.anon*
  %92 = getelementptr inbounds %struct.anon, %struct.anon* %91, i32 0, i32 0
  %93 = load i8, i8* %92, align 1
  %94 = zext i8 %93 to i32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %104

; <label>:96                                      ; preds = %87
  br label %97

; <label>:97                                      ; preds = %96
  %98 = load %union.rec*, %union.rec** %y, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %102, align 8
  store %union.rec* %103, %union.rec** %y, align 8
  br label %87

; <label>:104                                     ; preds = %87
  %105 = load %union.rec*, %union.rec** %y, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.anon*
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 11
  br i1 %112, label %116, label %113

; <label>:113                                     ; preds = %104
  %114 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %115 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %114, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0))
  br label %116

; <label>:116                                     ; preds = %113, %104
  %117 = load %union.rec*, %union.rec** %y, align 8
  %118 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %119 = bitcast %union.rec* %118 to %struct.symbol_type*
  %120 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %119, i32 0, i32 4
  store %union.rec* %117, %union.rec** %120, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @FilterExecute(%union.rec* %x, i8* %command, %union.rec* %env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %union.rec*, align 8
  %status = alloca i32, align 4
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %scope_snapshot = alloca %union.rec*, align 8
  %line = alloca [2048 x i8], align 16
  %err_fp = alloca %struct._IO_FILE*, align 8
  %filter_out_file = alloca i16, align 2
  store %union.rec* %x, %union.rec** %1, align 8
  store i8* %command, i8** %2, align 8
  store %union.rec* %env, %union.rec** %3, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 57
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.12, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load %union.rec*, %union.rec** %3, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 1
  %19 = bitcast %union.FIRST_UNION* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 82
  br i1 %23, label %27, label %24

; <label>:24                                      ; preds = %15
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %26 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %25, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %27

; <label>:27                                      ; preds = %24, %15
  %28 = load %union.rec*, %union.rec** @filter_in_filename, align 8
  %29 = load %union.rec*, %union.rec** @FilterInSym, align 8
  %30 = bitcast %union.rec* %29 to %struct.symbol_type*
  %31 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %30, i32 0, i32 4
  store %union.rec* %28, %union.rec** %31, align 8
  %32 = load i32, i32* @SafeExecution, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %46

; <label>:34                                      ; preds = %27
  %35 = load %union.rec*, %union.rec** %1, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 1
  %38 = bitcast %union.FIRST_UNION* %37 to %struct.FILE_POS*
  %39 = load i8*, i8** %2, align 8
  %40 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 2, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %38, i8* %39)
  %41 = load %union.rec*, %union.rec** %1, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 1
  %44 = bitcast %union.FIRST_UNION* %43 to %struct.FILE_POS*
  %45 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %struct.FILE_POS* %44)
  store %union.rec* %45, %union.rec** %res, align 8
  br label %156

; <label>:46                                      ; preds = %27
  %47 = load i8*, i8** %2, align 8
  %48 = call i32 @system(i8* %47)
  store i32 %48, i32* %status, align 4
  %49 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %49, %struct._IO_FILE** %err_fp, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %err_fp, align 8
  %51 = icmp ne %struct._IO_FILE* %50, null
  br i1 %51, label %52, label %82

; <label>:52                                      ; preds = %46
  br label %53

; <label>:53                                      ; preds = %71, %52
  %54 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** %err_fp, align 8
  %56 = call i8* @fgets(i8* %54, i32 2048, %struct._IO_FILE* %55)
  %57 = icmp ne i8* %56, null
  br i1 %57, label %58, label %78

; <label>:58                                      ; preds = %53
  %59 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %60 = call i64 @strlen(i8* %59) #5
  %61 = sub i64 %60, 1
  %62 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = sext i8 %63 to i32
  %65 = icmp eq i32 %64, 10
  br i1 %65, label %66, label %71

; <label>:66                                      ; preds = %58
  %67 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %68 = call i64 @strlen(i8* %67) #5
  %69 = sub i64 %68, 1
  %70 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i64 %69
  store i8 0, i8* %70, align 1
  br label %71

; <label>:71                                      ; preds = %66, %58
  %72 = load %union.rec*, %union.rec** %1, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 1
  %75 = bitcast %union.FIRST_UNION* %74 to %struct.FILE_POS*
  %76 = getelementptr inbounds [2048 x i8], [2048 x i8]* %line, i32 0, i32 0
  %77 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct.FILE_POS* %75, i8* %76)
  br label %53

; <label>:78                                      ; preds = %53
  %79 = load %struct._IO_FILE*, %struct._IO_FILE** %err_fp, align 8
  %80 = call i32 @fclose(%struct._IO_FILE* %79)
  %81 = call i32 @remove(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i32 0, i32 0)) #4
  br label %82

; <label>:82                                      ; preds = %78, %46
  %83 = load i32, i32* %status, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

; <label>:85                                      ; preds = %82
  %86 = load %union.rec*, %union.rec** %1, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.FILE_POS*
  %90 = load i8*, i8** %2, align 8
  %91 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 4, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.18, i32 0, i32 0), i32 1, %struct.FILE_POS* %89, i8* %90)
  br label %92

; <label>:92                                      ; preds = %85, %82
  %93 = load %union.rec*, %union.rec** %1, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 0
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %97, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %102, align 8
  store %union.rec* %103, %union.rec** %scope_snapshot, align 8
  br label %104

; <label>:104                                     ; preds = %114, %92
  %105 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.anon*
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %121

; <label>:113                                     ; preds = %104
  br label %114

; <label>:114                                     ; preds = %113
  %115 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  store %union.rec* %120, %union.rec** %scope_snapshot, align 8
  br label %104

; <label>:121                                     ; preds = %104
  %122 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  call void @LoadScopeSnapshot(%union.rec* %122)
  %123 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %124 = bitcast %union.rec* %123 to %struct.symbol_type*
  %125 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %124, i32 0, i32 4
  %126 = load %union.rec*, %union.rec** %125, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 4
  %129 = getelementptr inbounds [4 x i8], [4 x i8]* %128, i32 0, i32 0
  %130 = load %union.rec*, %union.rec** %1, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 1
  %133 = bitcast %union.FIRST_UNION* %132 to %struct.FILE_POS*
  %134 = call zeroext i16 @DefineFile(i8* %129, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.15, i32 0, i32 0), %struct.FILE_POS* %133, i32 10, i32 0)
  store i16 %134, i16* %filter_out_file, align 2
  %135 = load i16, i16* %filter_out_file, align 2
  call void @LexPush(i16 zeroext %135, i32 0, i32 10, i32 1, i32 0)
  %136 = load %union.rec*, %union.rec** %1, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 1
  %139 = bitcast %union.FIRST_UNION* %138 to %struct.FILE_POS*
  %140 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %141 = call %union.rec* @NewToken(i8 zeroext 104, %struct.FILE_POS* %139, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, %union.rec* %140)
  store %union.rec* %141, %union.rec** %t, align 8
  %142 = call %union.rec* @Parse(%union.rec** %t, %union.rec* null, i32 0, i32 0)
  store %union.rec* %142, %union.rec** %res, align 8
  call void @LexPop()
  %143 = load %union.rec*, %union.rec** %scope_snapshot, align 8
  call void @ClearScopeSnapshot(%union.rec* %143)
  %144 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %145 = bitcast %union.rec* %144 to %struct.symbol_type*
  %146 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %145, i32 0, i32 4
  %147 = load %union.rec*, %union.rec** %146, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 4
  %150 = getelementptr inbounds [4 x i8], [4 x i8]* %149, i32 0, i32 0
  %151 = call i32 @remove(i8* %150) #4
  %152 = load %union.rec*, %union.rec** @filter_out_filename, align 8
  %153 = load %union.rec*, %union.rec** @FilterOutSym, align 8
  %154 = bitcast %union.rec* %153 to %struct.symbol_type*
  %155 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %154, i32 0, i32 4
  store %union.rec* %152, %union.rec** %155, align 8
  br label %156

; <label>:156                                     ; preds = %121, %34
  %157 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %157
}

declare i32 @system(i8*) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

; Function Attrs: nounwind
declare i32 @remove(i8*) #2

declare void @LoadScopeSnapshot(%union.rec*) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #1

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare void @LexPop() #1

declare void @ClearScopeSnapshot(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @FilterWrite(%union.rec* %x, %struct._IO_FILE* %fp, i32* %linecount) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct._IO_FILE*, align 8
  %3 = alloca i32*, align 8
  %in_fp = alloca %struct._IO_FILE*, align 8
  %y = alloca %union.rec*, align 8
  %ch = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %2, align 8
  store i32* %linecount, i32** %3, align 8
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 57
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.7, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 0
  %19 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %18, i32 0, i64 0
  %20 = getelementptr inbounds %struct.LIST, %struct.LIST* %19, i32 0, i32 1
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %23, i32 0, i64 1
  %25 = getelementptr inbounds %struct.LIST, %struct.LIST* %24, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %25, align 8
  store %union.rec* %26, %union.rec** %y, align 8
  br label %27

; <label>:27                                      ; preds = %37, %15
  %28 = load %union.rec*, %union.rec** %y, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 1
  %31 = bitcast %union.FIRST_UNION* %30 to %struct.anon*
  %32 = getelementptr inbounds %struct.anon, %struct.anon* %31, i32 0, i32 0
  %33 = load i8, i8* %32, align 1
  %34 = zext i8 %33 to i32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %44

; <label>:36                                      ; preds = %27
  br label %37

; <label>:37                                      ; preds = %36
  %38 = load %union.rec*, %union.rec** %y, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 1
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  store %union.rec* %43, %union.rec** %y, align 8
  br label %27

; <label>:44                                      ; preds = %27
  %45 = load %union.rec*, %union.rec** %y, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 4
  %48 = getelementptr inbounds [4 x i8], [4 x i8]* %47, i32 0, i32 0
  %49 = call %struct._IO_FILE* @fopen(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i32 0, i32 0))
  store %struct._IO_FILE* %49, %struct._IO_FILE** %in_fp, align 8
  %50 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %51 = icmp eq %struct._IO_FILE* %50, null
  br i1 %51, label %52, label %62

; <label>:52                                      ; preds = %44
  %53 = load %union.rec*, %union.rec** %1, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 1
  %56 = bitcast %union.FIRST_UNION* %55 to %struct.FILE_POS*
  %57 = load %union.rec*, %union.rec** %y, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 4
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %59, i32 0, i32 0
  %61 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 40, i32 5, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %56, i8* %60)
  br label %62

; <label>:62                                      ; preds = %52, %44
  %63 = load %union.rec*, %union.rec** %y, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 2
  %66 = bitcast %union.SECOND_UNION* %65 to %struct.anon.1*
  %67 = bitcast %struct.anon.1* %66 to i32*
  %68 = load i32, i32* %67, align 4
  %69 = lshr i32 %68, 12
  %70 = and i32 %69, 1023
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %108

; <label>:72                                      ; preds = %62
  %73 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %74 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %73)
  %75 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %76 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %75)
  %77 = load i32*, i32** %3, align 8
  %78 = load i32, i32* %77, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 4
  br label %80

; <label>:80                                      ; preds = %94, %72
  %81 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %82 = call i32 @_IO_getc(%struct._IO_FILE* %81)
  store i32 %82, i32* %ch, align 4
  %83 = icmp ne i32 %82, -1
  br i1 %83, label %84, label %95

; <label>:84                                      ; preds = %80
  %85 = load i32, i32* %ch, align 4
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %87 = call i32 @_IO_putc(i32 %85, %struct._IO_FILE* %86)
  %88 = load i32, i32* %ch, align 4
  %89 = icmp eq i32 %88, 10
  br i1 %89, label %90, label %94

; <label>:90                                      ; preds = %84
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* %91, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %91, align 4
  br label %94

; <label>:94                                      ; preds = %90, %84
  br label %80

; <label>:95                                      ; preds = %80
  %96 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %97 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %96)
  %98 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %99 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0), %struct._IO_FILE* %98)
  %100 = load %union.rec*, %union.rec** %y, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 3
  %103 = bitcast %union.THIRD_UNION* %102 to %union.rec**
  %104 = load %union.rec*, %union.rec** %103, align 8
  %105 = call i8* @SymName(%union.rec* %104)
  %106 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %107 = call i32 @fputs(i8* %105, %struct._IO_FILE* %106)
  br label %134

; <label>:108                                     ; preds = %62
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %110 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %109)
  %111 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %112 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %111)
  %113 = load i32*, i32** %3, align 8
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

; <label>:116                                     ; preds = %130, %108
  %117 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %118 = call i32 @_IO_getc(%struct._IO_FILE* %117)
  store i32 %118, i32* %ch, align 4
  %119 = icmp ne i32 %118, -1
  br i1 %119, label %120, label %131

; <label>:120                                     ; preds = %116
  %121 = load i32, i32* %ch, align 4
  %122 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %123 = call i32 @_IO_putc(i32 %121, %struct._IO_FILE* %122)
  %124 = load i32, i32* %ch, align 4
  %125 = icmp eq i32 %124, 10
  br i1 %125, label %126, label %130

; <label>:126                                     ; preds = %120
  %127 = load i32*, i32** %3, align 8
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  br label %130

; <label>:130                                     ; preds = %126, %120
  br label %116

; <label>:131                                     ; preds = %116
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %133 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.26, i32 0, i32 0), %struct._IO_FILE* %132)
  br label %134

; <label>:134                                     ; preds = %131, %95
  %135 = load %struct._IO_FILE*, %struct._IO_FILE** %2, align 8
  %136 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.22, i32 0, i32 0), %struct._IO_FILE* %135)
  %137 = load i32*, i32** %3, align 8
  %138 = load i32, i32* %137, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %137, align 4
  %140 = load %struct._IO_FILE*, %struct._IO_FILE** %in_fp, align 8
  %141 = call i32 @fclose(%struct._IO_FILE* %140)
  ret void
}

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

declare i8* @SymName(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @FilterScavenge(i32 %all) #0 {
  %1 = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %nextlink = alloca %union.rec*, align 8
  store i32 %all, i32* %1, align 4
  %2 = load %union.rec*, %union.rec** @filter_active, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  store %union.rec* %7, %union.rec** %link, align 8
  br label %8

; <label>:8                                       ; preds = %238, %0
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load %union.rec*, %union.rec** @filter_active, align 8
  %11 = icmp ne %union.rec* %9, %10
  br i1 %11, label %12, label %240

; <label>:12                                      ; preds = %8
  %13 = load %union.rec*, %union.rec** %link, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 1
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  store %union.rec* %18, %union.rec** %y, align 8
  br label %19

; <label>:19                                      ; preds = %29, %12
  %20 = load %union.rec*, %union.rec** %y, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %36

; <label>:28                                      ; preds = %19
  br label %29

; <label>:29                                      ; preds = %28
  %30 = load %union.rec*, %union.rec** %y, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 1
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %y, align 8
  br label %19

; <label>:36                                      ; preds = %19
  %37 = load %union.rec*, %union.rec** %link, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 0
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %nextlink, align 8
  %43 = load i32, i32* %1, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %59, label %45

; <label>:45                                      ; preds = %36
  %46 = load %union.rec*, %union.rec** %y, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 1
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = load %union.rec*, %union.rec** %y, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 1
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 0
  %57 = load %union.rec*, %union.rec** %56, align 8
  %58 = icmp eq %union.rec* %51, %57
  br i1 %58, label %59, label %237

; <label>:59                                      ; preds = %45, %36
  %60 = load %union.rec*, %union.rec** %y, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 4
  %63 = getelementptr inbounds [4 x i8], [4 x i8]* %62, i32 0, i32 0
  %64 = call i32 @remove(i8* %63) #4
  %65 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %65, %union.rec** @xx_link, align 8
  %66 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %66, %union.rec** @zz_hold, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 0
  %70 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %69, i32 0, i64 1
  %71 = getelementptr inbounds %struct.LIST, %struct.LIST* %70, i32 0, i32 1
  %72 = load %union.rec*, %union.rec** %71, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = icmp eq %union.rec* %72, %73
  br i1 %74, label %75, label %76

; <label>:75                                      ; preds = %59
  br label %117

; <label>:76                                      ; preds = %59
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 1
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 1
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** @zz_res, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  %89 = load %union.rec*, %union.rec** @zz_res, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 1
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 0
  store %union.rec* %88, %union.rec** %93, align 8
  %94 = load %union.rec*, %union.rec** @zz_res, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %99, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 1
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 1
  store %union.rec* %94, %union.rec** %104, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 1
  store %union.rec* %105, %union.rec** %110, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 0
  %114 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %113, i32 0, i64 1
  %115 = getelementptr inbounds %struct.LIST, %struct.LIST* %114, i32 0, i32 0
  store %union.rec* %105, %union.rec** %115, align 8
  %116 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %117

; <label>:117                                     ; preds = %76, %75
  %118 = phi %union.rec* [ null, %75 ], [ %116, %76 ]
  store %union.rec* %118, %union.rec** @xx_tmp, align 8
  %119 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %119, %union.rec** @zz_hold, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 0
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 1
  %125 = load %union.rec*, %union.rec** %124, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = icmp eq %union.rec* %125, %126
  br i1 %127, label %128, label %129

; <label>:128                                     ; preds = %117
  br label %170

; <label>:129                                     ; preds = %117
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 0
  %133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %132, i32 0, i64 0
  %134 = getelementptr inbounds %struct.LIST, %struct.LIST* %133, i32 0, i32 1
  %135 = load %union.rec*, %union.rec** %134, align 8
  store %union.rec* %135, %union.rec** @zz_res, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 0
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %140, align 8
  %142 = load %union.rec*, %union.rec** @zz_res, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 0
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 0
  store %union.rec* %141, %union.rec** %146, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %150, i32 0, i64 0
  %152 = getelementptr inbounds %struct.LIST, %struct.LIST* %151, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %152, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 0
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 1
  store %union.rec* %147, %union.rec** %157, align 8
  %158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 0
  %162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %161, i32 0, i64 0
  %163 = getelementptr inbounds %struct.LIST, %struct.LIST* %162, i32 0, i32 1
  store %union.rec* %158, %union.rec** %163, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %166, i32 0, i64 0
  %168 = getelementptr inbounds %struct.LIST, %struct.LIST* %167, i32 0, i32 0
  store %union.rec* %158, %union.rec** %168, align 8
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %170

; <label>:170                                     ; preds = %129, %128
  %171 = phi %union.rec* [ null, %128 ], [ %169, %129 ]
  %172 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %173, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 1
  %177 = bitcast %union.FIRST_UNION* %176 to %struct.anon*
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %177, i32 0, i32 0
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 11
  br i1 %181, label %191, label %182

; <label>:182                                     ; preds = %170
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 1
  %186 = bitcast %union.FIRST_UNION* %185 to %struct.anon*
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 12
  br i1 %190, label %191, label %199

; <label>:191                                     ; preds = %182, %170
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 1
  %195 = bitcast %union.FIRST_UNION* %194 to %struct.anon*
  %196 = getelementptr inbounds %struct.anon, %struct.anon* %195, i32 0, i32 1
  %197 = load i8, i8* %196, align 1
  %198 = zext i8 %197 to i32
  br label %210

; <label>:199                                     ; preds = %182
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 1
  %203 = bitcast %union.FIRST_UNION* %202 to %struct.anon*
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i64
  %207 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %206
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  br label %210

; <label>:210                                     ; preds = %199, %191
  %211 = phi i32 [ %198, %191 ], [ %209, %199 ]
  store i32 %211, i32* @zz_size, align 4
  %212 = load i32, i32* @zz_size, align 4
  %213 = sext i32 %212 to i64
  %214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %213
  %215 = load %union.rec*, %union.rec** %214, align 8
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 0
  %219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %218, i32 0, i64 0
  %220 = getelementptr inbounds %struct.LIST, %struct.LIST* %219, i32 0, i32 0
  store %union.rec* %215, %union.rec** %220, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %222 = load i32, i32* @zz_size, align 4
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %223
  store %union.rec* %221, %union.rec** %224, align 8
  %225 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 1
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 1
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %232 = icmp eq %union.rec* %230, %231
  br i1 %232, label %233, label %236

; <label>:233                                     ; preds = %210
  %234 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %235 = call i32 @DisposeObject(%union.rec* %234)
  br label %236

; <label>:236                                     ; preds = %233, %210
  br label %237

; <label>:237                                     ; preds = %236, %45
  br label %238

; <label>:238                                     ; preds = %237
  %239 = load %union.rec*, %union.rec** %nextlink, align 8
  store %union.rec* %239, %union.rec** %link, align 8
  br label %8

; <label>:240                                     ; preds = %8
  ret void
}

declare i32 @DisposeObject(%union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
