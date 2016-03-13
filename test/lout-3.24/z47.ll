; ModuleID = 'z47.c'
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
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@stat_reads = internal global i32 0, align 4
@stat_read_hits = internal global i32 0, align 4
@stat_writes = internal global i32 0, align 4
@stat_write_hits = internal global i32 0, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@env_cache = internal global %union.rec* null, align 8
@cache_count = internal global i32 0, align 4
@tab = internal global [211 x %union.rec*] zeroinitializer, align 16
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define void @EnvInit() #0 {
  %i = alloca i32, align 4
  store i32 0, i32* @stat_reads, align 4
  store i32 0, i32* @stat_read_hits, align 4
  store i32 0, i32* @stat_writes, align 4
  store i32 0, i32* @stat_write_hits, align 4
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
  store %union.rec* %39, %union.rec** @env_cache, align 8
  store i32 0, i32* @cache_count, align 4
  store i32 0, i32* %i, align 4
  br label %60

; <label>:60                                      ; preds = %67, %33
  %61 = load i32, i32* %i, align 4
  %62 = icmp slt i32 %61, 211
  br i1 %62, label %63, label %70

; <label>:63                                      ; preds = %60
  %64 = load i32, i32* %i, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %65
  store %union.rec* null, %union.rec** %66, align 8
  br label %67

; <label>:67                                      ; preds = %63
  %68 = load i32, i32* %i, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i, align 4
  br label %60

; <label>:70                                      ; preds = %60
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define i32 @EnvWriteRetrieve(%union.rec* %env, i16 zeroext %fnum, i32* %offset, i32* %lnum) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i16, align 2
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %pos = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  store i16 %fnum, i16* %3, align 2
  store i32* %offset, i32** %4, align 8
  store i32* %lnum, i32** %5, align 8
  %6 = load i32, i32* @stat_writes, align 4
  %7 = add nsw i32 %6, 1
  store i32 %7, i32* @stat_writes, align 4
  %8 = load %union.rec*, %union.rec** %2, align 8
  %9 = ptrtoint %union.rec* %8 to i32
  %10 = load i16, i16* %3, align 2
  %11 = zext i16 %10 to i32
  %12 = add i32 %9, %11
  %13 = urem i32 %12, 211
  store i32 %13, i32* %pos, align 4
  %14 = load i32, i32* %pos, align 4
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %15
  %17 = load %union.rec*, %union.rec** %16, align 8
  %18 = icmp ne %union.rec* %17, null
  br i1 %18, label %19, label %258

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* %pos, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %21
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %27, align 8
  store %union.rec* %28, %union.rec** %link, align 8
  br label %29

; <label>:29                                      ; preds = %250, %19
  %30 = load %union.rec*, %union.rec** %link, align 8
  %31 = load i32, i32* %pos, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %32
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = icmp ne %union.rec* %30, %34
  br i1 %35, label %36, label %257

; <label>:36                                      ; preds = %29
  %37 = load %union.rec*, %union.rec** %link, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 1
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %y, align 8
  br label %43

; <label>:43                                      ; preds = %53, %36
  %44 = load %union.rec*, %union.rec** %y, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 1
  %47 = bitcast %union.FIRST_UNION* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %43
  br label %53

; <label>:53                                      ; preds = %52
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** %y, align 8
  br label %43

; <label>:60                                      ; preds = %43
  %61 = load %union.rec*, %union.rec** %y, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 0
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  %66 = load %union.rec*, %union.rec** %65, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 1
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %70, align 8
  store %union.rec* %71, %union.rec** %z, align 8
  br label %72

; <label>:72                                      ; preds = %82, %60
  %73 = load %union.rec*, %union.rec** %z, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 1
  %76 = bitcast %union.FIRST_UNION* %75 to %struct.anon*
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

; <label>:81                                      ; preds = %72
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load %union.rec*, %union.rec** %z, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  store %union.rec* %88, %union.rec** %z, align 8
  br label %72

; <label>:89                                      ; preds = %72
  %90 = load %union.rec*, %union.rec** %y, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 1
  %93 = bitcast %union.FIRST_UNION* %92 to %struct.FILE_POS*
  %94 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %93, i32 0, i32 2
  %95 = load i16, i16* %94, align 2
  %96 = zext i16 %95 to i32
  %97 = load i16, i16* %3, align 2
  %98 = zext i16 %97 to i32
  %99 = icmp eq i32 %96, %98
  br i1 %99, label %100, label %249

; <label>:100                                     ; preds = %89
  %101 = load %union.rec*, %union.rec** %z, align 8
  %102 = load %union.rec*, %union.rec** %2, align 8
  %103 = icmp eq %union.rec* %101, %102
  br i1 %103, label %104, label %249

; <label>:104                                     ; preds = %100
  %105 = load %union.rec*, %union.rec** %y, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 2
  %108 = bitcast %union.SECOND_UNION* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 2
  %110 = load i16, i16* %109, align 2
  %111 = lshr i16 %110, 1
  %112 = and i16 %111, 1
  %113 = zext i16 %112 to i32
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %249, label %115

; <label>:115                                     ; preds = %104
  %116 = load %union.rec*, %union.rec** %y, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 1
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 0
  %121 = load %union.rec*, %union.rec** %120, align 8
  store %union.rec* %121, %union.rec** @xx_link, align 8
  %122 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %122, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 0
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 1
  %128 = load %union.rec*, %union.rec** %127, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = icmp eq %union.rec* %128, %129
  br i1 %130, label %131, label %132

; <label>:131                                     ; preds = %115
  br label %173

; <label>:132                                     ; preds = %115
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 0
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 1
  %138 = load %union.rec*, %union.rec** %137, align 8
  store %union.rec* %138, %union.rec** @zz_res, align 8
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 0
  %142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %141, i32 0, i64 0
  %143 = getelementptr inbounds %struct.LIST, %struct.LIST* %142, i32 0, i32 0
  %144 = load %union.rec*, %union.rec** %143, align 8
  %145 = load %union.rec*, %union.rec** @zz_res, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 0
  %148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %147, i32 0, i64 0
  %149 = getelementptr inbounds %struct.LIST, %struct.LIST* %148, i32 0, i32 0
  store %union.rec* %144, %union.rec** %149, align 8
  %150 = load %union.rec*, %union.rec** @zz_res, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %153, i32 0, i64 0
  %155 = getelementptr inbounds %struct.LIST, %struct.LIST* %154, i32 0, i32 0
  %156 = load %union.rec*, %union.rec** %155, align 8
  %157 = bitcast %union.rec* %156 to %struct.word_type*
  %158 = getelementptr inbounds %struct.word_type, %struct.word_type* %157, i32 0, i32 0
  %159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %158, i32 0, i64 0
  %160 = getelementptr inbounds %struct.LIST, %struct.LIST* %159, i32 0, i32 1
  store %union.rec* %150, %union.rec** %160, align 8
  %161 = load %union.rec*, %union.rec** @zz_hold, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 0
  %165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %164, i32 0, i64 0
  %166 = getelementptr inbounds %struct.LIST, %struct.LIST* %165, i32 0, i32 1
  store %union.rec* %161, %union.rec** %166, align 8
  %167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 0
  %170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %169, i32 0, i64 0
  %171 = getelementptr inbounds %struct.LIST, %struct.LIST* %170, i32 0, i32 0
  store %union.rec* %161, %union.rec** %171, align 8
  %172 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %173

; <label>:173                                     ; preds = %132, %131
  %174 = phi %union.rec* [ null, %131 ], [ %172, %132 ]
  %175 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %175, %union.rec** @zz_res, align 8
  %176 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %176, %union.rec** @zz_hold, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %178 = icmp eq %union.rec* %177, null
  br i1 %178, label %179, label %181

; <label>:179                                     ; preds = %173
  %180 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %229

; <label>:181                                     ; preds = %173
  %182 = load %union.rec*, %union.rec** @zz_res, align 8
  %183 = icmp eq %union.rec* %182, null
  br i1 %183, label %184, label %186

; <label>:184                                     ; preds = %181
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %227

; <label>:186                                     ; preds = %181
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 0
  %190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %189, i32 0, i64 0
  %191 = getelementptr inbounds %struct.LIST, %struct.LIST* %190, i32 0, i32 0
  %192 = load %union.rec*, %union.rec** %191, align 8
  store %union.rec* %192, %union.rec** @zz_tmp, align 8
  %193 = load %union.rec*, %union.rec** @zz_res, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 0
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %197, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 0
  %202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %201, i32 0, i64 0
  %203 = getelementptr inbounds %struct.LIST, %struct.LIST* %202, i32 0, i32 0
  store %union.rec* %198, %union.rec** %203, align 8
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 0
  %208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %207, i32 0, i64 0
  %209 = getelementptr inbounds %struct.LIST, %struct.LIST* %208, i32 0, i32 0
  %210 = load %union.rec*, %union.rec** %209, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 0
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 1
  store %union.rec* %204, %union.rec** %214, align 8
  %215 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %216 = load %union.rec*, %union.rec** @zz_res, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 0
  %219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %218, i32 0, i64 0
  %220 = getelementptr inbounds %struct.LIST, %struct.LIST* %219, i32 0, i32 0
  store %union.rec* %215, %union.rec** %220, align 8
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  %222 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 0
  %225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %224, i32 0, i64 0
  %226 = getelementptr inbounds %struct.LIST, %struct.LIST* %225, i32 0, i32 1
  store %union.rec* %221, %union.rec** %226, align 8
  br label %227

; <label>:227                                     ; preds = %186, %184
  %228 = phi %union.rec* [ %185, %184 ], [ %221, %186 ]
  br label %229

; <label>:229                                     ; preds = %227, %179
  %230 = phi %union.rec* [ %180, %179 ], [ %228, %227 ]
  %231 = load %union.rec*, %union.rec** %y, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 3
  %234 = bitcast %union.THIRD_UNION* %233 to %struct.anon.6*
  %235 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %235, i32 0, i64 1
  %237 = load i32, i32* %236, align 4
  %238 = load i32*, i32** %4, align 8
  store i32 %237, i32* %238, align 4
  %239 = load %union.rec*, %union.rec** %y, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 1
  %242 = bitcast %union.FIRST_UNION* %241 to %struct.FILE_POS*
  %243 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %242, i32 0, i32 3
  %244 = load i32, i32* %243, align 4
  %245 = and i32 %244, 1048575
  %246 = load i32*, i32** %5, align 8
  store i32 %245, i32* %246, align 4
  %247 = load i32, i32* @stat_write_hits, align 4
  %248 = add nsw i32 %247, 1
  store i32 %248, i32* @stat_write_hits, align 4
  store i32 1, i32* %1
  br label %259

; <label>:249                                     ; preds = %104, %100, %89
  br label %250

; <label>:250                                     ; preds = %249
  %251 = load %union.rec*, %union.rec** %link, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 0
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 1
  %256 = load %union.rec*, %union.rec** %255, align 8
  store %union.rec* %256, %union.rec** %link, align 8
  br label %29

; <label>:257                                     ; preds = %29
  br label %258

; <label>:258                                     ; preds = %257, %0
  store i32 0, i32* %1
  br label %259

; <label>:259                                     ; preds = %258, %229
  %260 = load i32, i32* %1
  ret i32 %260
}

; Function Attrs: nounwind uwtable
define void @EnvWriteInsert(%union.rec* %env, i16 zeroext %fnum, i32 %offset, i32 %lnum) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %pos = alloca i32, align 4
  %loser = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  store %union.rec* %env, %union.rec** %1, align 8
  store i16 %fnum, i16* %2, align 2
  store i32 %offset, i32* %3, align 4
  store i32 %lnum, i32* %4, align 4
  %5 = load i32, i32* @cache_count, align 4
  %6 = icmp sge i32 %5, 180
  br i1 %6, label %7, label %381

; <label>:7                                       ; preds = %0
  %8 = load %union.rec*, %union.rec** @env_cache, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10, i32 0, i64 0
  %12 = getelementptr inbounds %struct.LIST, %struct.LIST* %11, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %12, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 1
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  store %union.rec* %18, %union.rec** %loser, align 8
  br label %19

; <label>:19                                      ; preds = %29, %7
  %20 = load %union.rec*, %union.rec** %loser, align 8
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
  %30 = load %union.rec*, %union.rec** %loser, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 1
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %loser, align 8
  br label %19

; <label>:36                                      ; preds = %19
  %37 = load %union.rec*, %union.rec** %loser, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 1
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** @xx_link, align 8
  %43 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %43, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 0
  %47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %46, i32 0, i64 1
  %48 = getelementptr inbounds %struct.LIST, %struct.LIST* %47, i32 0, i32 1
  %49 = load %union.rec*, %union.rec** %48, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = icmp eq %union.rec* %49, %50
  br i1 %51, label %52, label %53

; <label>:52                                      ; preds = %36
  br label %94

; <label>:53                                      ; preds = %36
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** @zz_res, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 1
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %64, align 8
  %66 = load %union.rec*, %union.rec** @zz_res, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 1
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  store %union.rec* %65, %union.rec** %70, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  %72 = load %union.rec*, %union.rec** @zz_hold, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %74, i32 0, i64 1
  %76 = getelementptr inbounds %struct.LIST, %struct.LIST* %75, i32 0, i32 0
  %77 = load %union.rec*, %union.rec** %76, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 1
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 1
  store %union.rec* %71, %union.rec** %81, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 1
  store %union.rec* %82, %union.rec** %87, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %90, i32 0, i64 1
  %92 = getelementptr inbounds %struct.LIST, %struct.LIST* %91, i32 0, i32 0
  store %union.rec* %82, %union.rec** %92, align 8
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %94

; <label>:94                                      ; preds = %53, %52
  %95 = phi %union.rec* [ null, %52 ], [ %93, %53 ]
  %96 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 0
  %100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %99, i32 0, i64 0
  %101 = getelementptr inbounds %struct.LIST, %struct.LIST* %100, i32 0, i32 1
  %102 = load %union.rec*, %union.rec** %101, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = icmp eq %union.rec* %102, %103
  br i1 %104, label %105, label %106

; <label>:105                                     ; preds = %94
  br label %147

; <label>:106                                     ; preds = %94
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %109, i32 0, i64 0
  %111 = getelementptr inbounds %struct.LIST, %struct.LIST* %110, i32 0, i32 1
  %112 = load %union.rec*, %union.rec** %111, align 8
  store %union.rec* %112, %union.rec** @zz_res, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 0
  %118 = load %union.rec*, %union.rec** %117, align 8
  %119 = load %union.rec*, %union.rec** @zz_res, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %121, i32 0, i64 0
  %123 = getelementptr inbounds %struct.LIST, %struct.LIST* %122, i32 0, i32 0
  store %union.rec* %118, %union.rec** %123, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %127, i32 0, i64 0
  %129 = getelementptr inbounds %struct.LIST, %struct.LIST* %128, i32 0, i32 0
  %130 = load %union.rec*, %union.rec** %129, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 0
  %133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %132, i32 0, i64 0
  %134 = getelementptr inbounds %struct.LIST, %struct.LIST* %133, i32 0, i32 1
  store %union.rec* %124, %union.rec** %134, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 0
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 1
  store %union.rec* %135, %union.rec** %140, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 0
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 0
  store %union.rec* %135, %union.rec** %145, align 8
  %146 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %147

; <label>:147                                     ; preds = %106, %105
  %148 = phi %union.rec* [ null, %105 ], [ %146, %106 ]
  %149 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %149, %union.rec** @zz_hold, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %150, %union.rec** @zz_hold, align 8
  %151 = load %union.rec*, %union.rec** @zz_hold, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 1
  %154 = bitcast %union.FIRST_UNION* %153 to %struct.anon*
  %155 = getelementptr inbounds %struct.anon, %struct.anon* %154, i32 0, i32 0
  %156 = load i8, i8* %155, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp eq i32 %157, 11
  br i1 %158, label %168, label %159

; <label>:159                                     ; preds = %147
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 1
  %163 = bitcast %union.FIRST_UNION* %162 to %struct.anon*
  %164 = getelementptr inbounds %struct.anon, %struct.anon* %163, i32 0, i32 0
  %165 = load i8, i8* %164, align 1
  %166 = zext i8 %165 to i32
  %167 = icmp eq i32 %166, 12
  br i1 %167, label %168, label %176

; <label>:168                                     ; preds = %159, %147
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 1
  %172 = bitcast %union.FIRST_UNION* %171 to %struct.anon*
  %173 = getelementptr inbounds %struct.anon, %struct.anon* %172, i32 0, i32 1
  %174 = load i8, i8* %173, align 1
  %175 = zext i8 %174 to i32
  br label %187

; <label>:176                                     ; preds = %159
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 1
  %180 = bitcast %union.FIRST_UNION* %179 to %struct.anon*
  %181 = getelementptr inbounds %struct.anon, %struct.anon* %180, i32 0, i32 0
  %182 = load i8, i8* %181, align 1
  %183 = zext i8 %182 to i64
  %184 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %183
  %185 = load i8, i8* %184, align 1
  %186 = zext i8 %185 to i32
  br label %187

; <label>:187                                     ; preds = %176, %168
  %188 = phi i32 [ %175, %168 ], [ %186, %176 ]
  store i32 %188, i32* @zz_size, align 4
  %189 = load i32, i32* @zz_size, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %190
  %192 = load %union.rec*, %union.rec** %191, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 0
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 0
  store %union.rec* %192, %union.rec** %197, align 8
  %198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %199 = load i32, i32* @zz_size, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %200
  store %union.rec* %198, %union.rec** %201, align 8
  %202 = load %union.rec*, %union.rec** %loser, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 1
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 1
  %207 = load %union.rec*, %union.rec** %206, align 8
  store %union.rec* %207, %union.rec** @xx_link, align 8
  %208 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 1
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 1
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %216 = icmp eq %union.rec* %214, %215
  br i1 %216, label %217, label %218

; <label>:217                                     ; preds = %187
  br label %259

; <label>:218                                     ; preds = %187
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 1
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 1
  %224 = load %union.rec*, %union.rec** %223, align 8
  store %union.rec* %224, %union.rec** @zz_res, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 1
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec*, %union.rec** @zz_res, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 1
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  store %union.rec* %230, %union.rec** %235, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
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
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 1
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 1
  store %union.rec* %247, %union.rec** %252, align 8
  %253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 1
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 0
  store %union.rec* %247, %union.rec** %257, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %259

; <label>:259                                     ; preds = %218, %217
  %260 = phi %union.rec* [ null, %217 ], [ %258, %218 ]
  store %union.rec* %260, %union.rec** @xx_tmp, align 8
  %261 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %261, %union.rec** @zz_hold, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %263 = bitcast %union.rec* %262 to %struct.word_type*
  %264 = getelementptr inbounds %struct.word_type, %struct.word_type* %263, i32 0, i32 0
  %265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %264, i32 0, i64 0
  %266 = getelementptr inbounds %struct.LIST, %struct.LIST* %265, i32 0, i32 1
  %267 = load %union.rec*, %union.rec** %266, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = icmp eq %union.rec* %267, %268
  br i1 %269, label %270, label %271

; <label>:270                                     ; preds = %259
  br label %312

; <label>:271                                     ; preds = %259
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 0
  %275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %274, i32 0, i64 0
  %276 = getelementptr inbounds %struct.LIST, %struct.LIST* %275, i32 0, i32 1
  %277 = load %union.rec*, %union.rec** %276, align 8
  store %union.rec* %277, %union.rec** @zz_res, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = bitcast %union.rec* %278 to %struct.word_type*
  %280 = getelementptr inbounds %struct.word_type, %struct.word_type* %279, i32 0, i32 0
  %281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %280, i32 0, i64 0
  %282 = getelementptr inbounds %struct.LIST, %struct.LIST* %281, i32 0, i32 0
  %283 = load %union.rec*, %union.rec** %282, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %286, i32 0, i64 0
  %288 = getelementptr inbounds %struct.LIST, %struct.LIST* %287, i32 0, i32 0
  store %union.rec* %283, %union.rec** %288, align 8
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 0
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 0
  %295 = load %union.rec*, %union.rec** %294, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 0
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 1
  store %union.rec* %289, %union.rec** %299, align 8
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %303, i32 0, i64 0
  %305 = getelementptr inbounds %struct.LIST, %struct.LIST* %304, i32 0, i32 1
  store %union.rec* %300, %union.rec** %305, align 8
  %306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %307 = bitcast %union.rec* %306 to %struct.word_type*
  %308 = getelementptr inbounds %struct.word_type, %struct.word_type* %307, i32 0, i32 0
  %309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %308, i32 0, i64 0
  %310 = getelementptr inbounds %struct.LIST, %struct.LIST* %309, i32 0, i32 0
  store %union.rec* %300, %union.rec** %310, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %312

; <label>:312                                     ; preds = %271, %270
  %313 = phi %union.rec* [ null, %270 ], [ %311, %271 ]
  %314 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %314, %union.rec** @zz_hold, align 8
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %315, %union.rec** @zz_hold, align 8
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %317 = bitcast %union.rec* %316 to %struct.word_type*
  %318 = getelementptr inbounds %struct.word_type, %struct.word_type* %317, i32 0, i32 1
  %319 = bitcast %union.FIRST_UNION* %318 to %struct.anon*
  %320 = getelementptr inbounds %struct.anon, %struct.anon* %319, i32 0, i32 0
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp eq i32 %322, 11
  br i1 %323, label %333, label %324

; <label>:324                                     ; preds = %312
  %325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 1
  %328 = bitcast %union.FIRST_UNION* %327 to %struct.anon*
  %329 = getelementptr inbounds %struct.anon, %struct.anon* %328, i32 0, i32 0
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp eq i32 %331, 12
  br i1 %332, label %333, label %341

; <label>:333                                     ; preds = %324, %312
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 1
  %337 = bitcast %union.FIRST_UNION* %336 to %struct.anon*
  %338 = getelementptr inbounds %struct.anon, %struct.anon* %337, i32 0, i32 1
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  br label %352

; <label>:341                                     ; preds = %324
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 1
  %345 = bitcast %union.FIRST_UNION* %344 to %struct.anon*
  %346 = getelementptr inbounds %struct.anon, %struct.anon* %345, i32 0, i32 0
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i64
  %349 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %348
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  br label %352

; <label>:352                                     ; preds = %341, %333
  %353 = phi i32 [ %340, %333 ], [ %351, %341 ]
  store i32 %353, i32* @zz_size, align 4
  %354 = load i32, i32* @zz_size, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %355
  %357 = load %union.rec*, %union.rec** %356, align 8
  %358 = load %union.rec*, %union.rec** @zz_hold, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 0
  %361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %360, i32 0, i64 0
  %362 = getelementptr inbounds %struct.LIST, %struct.LIST* %361, i32 0, i32 0
  store %union.rec* %357, %union.rec** %362, align 8
  %363 = load %union.rec*, %union.rec** @zz_hold, align 8
  %364 = load i32, i32* @zz_size, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %365
  store %union.rec* %363, %union.rec** %366, align 8
  %367 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 1
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 1
  %372 = load %union.rec*, %union.rec** %371, align 8
  %373 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %374 = icmp eq %union.rec* %372, %373
  br i1 %374, label %375, label %378

; <label>:375                                     ; preds = %352
  %376 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %377 = call i32 @DisposeObject(%union.rec* %376)
  br label %378

; <label>:378                                     ; preds = %375, %352
  %379 = load i32, i32* @cache_count, align 4
  %380 = add nsw i32 %379, -1
  store i32 %380, i32* @cache_count, align 4
  br label %381

; <label>:381                                     ; preds = %378, %0
  %382 = load %union.rec*, %union.rec** %1, align 8
  %383 = ptrtoint %union.rec* %382 to i32
  %384 = load i16, i16* %2, align 2
  %385 = zext i16 %384 to i32
  %386 = add i32 %383, %385
  %387 = urem i32 %386, 211
  store i32 %387, i32* %pos, align 4
  %388 = load i32, i32* %pos, align 4
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %389
  %391 = load %union.rec*, %union.rec** %390, align 8
  %392 = icmp eq %union.rec* %391, null
  br i1 %392, label %393, label %456

; <label>:393                                     ; preds = %381
  %394 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %395 = zext i8 %394 to i32
  store i32 %395, i32* @zz_size, align 4
  %396 = sext i32 %395 to i64
  %397 = icmp uge i64 %396, 265
  br i1 %397, label %398, label %401

; <label>:398                                     ; preds = %393
  %399 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %400 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %399)
  br label %426

; <label>:401                                     ; preds = %393
  %402 = load i32, i32* @zz_size, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %403
  %405 = load %union.rec*, %union.rec** %404, align 8
  %406 = icmp eq %union.rec* %405, null
  br i1 %406, label %407, label %411

; <label>:407                                     ; preds = %401
  %408 = load i32, i32* @zz_size, align 4
  %409 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %410 = call %union.rec* @GetMemory(i32 %408, %struct.FILE_POS* %409)
  store %union.rec* %410, %union.rec** @zz_hold, align 8
  br label %425

; <label>:411                                     ; preds = %401
  %412 = load i32, i32* @zz_size, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %413
  %415 = load %union.rec*, %union.rec** %414, align 8
  store %union.rec* %415, %union.rec** @zz_hold, align 8
  store %union.rec* %415, %union.rec** @zz_hold, align 8
  %416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %417 = bitcast %union.rec* %416 to %struct.word_type*
  %418 = getelementptr inbounds %struct.word_type, %struct.word_type* %417, i32 0, i32 0
  %419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %418, i32 0, i64 0
  %420 = getelementptr inbounds %struct.LIST, %struct.LIST* %419, i32 0, i32 0
  %421 = load %union.rec*, %union.rec** %420, align 8
  %422 = load i32, i32* @zz_size, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %423
  store %union.rec* %421, %union.rec** %424, align 8
  br label %425

; <label>:425                                     ; preds = %411, %407
  br label %426

; <label>:426                                     ; preds = %425, %398
  %427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %428 = bitcast %union.rec* %427 to %struct.word_type*
  %429 = getelementptr inbounds %struct.word_type, %struct.word_type* %428, i32 0, i32 1
  %430 = bitcast %union.FIRST_UNION* %429 to %struct.anon*
  %431 = getelementptr inbounds %struct.anon, %struct.anon* %430, i32 0, i32 0
  store i8 17, i8* %431, align 1
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 0
  %436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %435, i32 0, i64 1
  %437 = getelementptr inbounds %struct.LIST, %struct.LIST* %436, i32 0, i32 1
  store %union.rec* %432, %union.rec** %437, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %439 = bitcast %union.rec* %438 to %struct.word_type*
  %440 = getelementptr inbounds %struct.word_type, %struct.word_type* %439, i32 0, i32 0
  %441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %440, i32 0, i64 1
  %442 = getelementptr inbounds %struct.LIST, %struct.LIST* %441, i32 0, i32 0
  store %union.rec* %432, %union.rec** %442, align 8
  %443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %444 = bitcast %union.rec* %443 to %struct.word_type*
  %445 = getelementptr inbounds %struct.word_type, %struct.word_type* %444, i32 0, i32 0
  %446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %445, i32 0, i64 0
  %447 = getelementptr inbounds %struct.LIST, %struct.LIST* %446, i32 0, i32 1
  store %union.rec* %432, %union.rec** %447, align 8
  %448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %450, i32 0, i64 0
  %452 = getelementptr inbounds %struct.LIST, %struct.LIST* %451, i32 0, i32 0
  store %union.rec* %432, %union.rec** %452, align 8
  %453 = load i32, i32* %pos, align 4
  %454 = zext i32 %453 to i64
  %455 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %454
  store %union.rec* %432, %union.rec** %455, align 8
  br label %456

; <label>:456                                     ; preds = %426, %381
  %457 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %458 = zext i8 %457 to i32
  store i32 %458, i32* @zz_size, align 4
  %459 = sext i32 %458 to i64
  %460 = icmp uge i64 %459, 265
  br i1 %460, label %461, label %464

; <label>:461                                     ; preds = %456
  %462 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %463 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %462)
  br label %489

; <label>:464                                     ; preds = %456
  %465 = load i32, i32* @zz_size, align 4
  %466 = sext i32 %465 to i64
  %467 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %466
  %468 = load %union.rec*, %union.rec** %467, align 8
  %469 = icmp eq %union.rec* %468, null
  br i1 %469, label %470, label %474

; <label>:470                                     ; preds = %464
  %471 = load i32, i32* @zz_size, align 4
  %472 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %473 = call %union.rec* @GetMemory(i32 %471, %struct.FILE_POS* %472)
  store %union.rec* %473, %union.rec** @zz_hold, align 8
  br label %488

; <label>:474                                     ; preds = %464
  %475 = load i32, i32* @zz_size, align 4
  %476 = sext i32 %475 to i64
  %477 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %476
  %478 = load %union.rec*, %union.rec** %477, align 8
  store %union.rec* %478, %union.rec** @zz_hold, align 8
  store %union.rec* %478, %union.rec** @zz_hold, align 8
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 0
  %482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %481, i32 0, i64 0
  %483 = getelementptr inbounds %struct.LIST, %struct.LIST* %482, i32 0, i32 0
  %484 = load %union.rec*, %union.rec** %483, align 8
  %485 = load i32, i32* @zz_size, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %486
  store %union.rec* %484, %union.rec** %487, align 8
  br label %488

; <label>:488                                     ; preds = %474, %470
  br label %489

; <label>:489                                     ; preds = %488, %461
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %491 = bitcast %union.rec* %490 to %struct.word_type*
  %492 = getelementptr inbounds %struct.word_type, %struct.word_type* %491, i32 0, i32 1
  %493 = bitcast %union.FIRST_UNION* %492 to %struct.anon*
  %494 = getelementptr inbounds %struct.anon, %struct.anon* %493, i32 0, i32 0
  store i8 17, i8* %494, align 1
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %497 = bitcast %union.rec* %496 to %struct.word_type*
  %498 = getelementptr inbounds %struct.word_type, %struct.word_type* %497, i32 0, i32 0
  %499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %498, i32 0, i64 1
  %500 = getelementptr inbounds %struct.LIST, %struct.LIST* %499, i32 0, i32 1
  store %union.rec* %495, %union.rec** %500, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %502 = bitcast %union.rec* %501 to %struct.word_type*
  %503 = getelementptr inbounds %struct.word_type, %struct.word_type* %502, i32 0, i32 0
  %504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %503, i32 0, i64 1
  %505 = getelementptr inbounds %struct.LIST, %struct.LIST* %504, i32 0, i32 0
  store %union.rec* %495, %union.rec** %505, align 8
  %506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %507 = bitcast %union.rec* %506 to %struct.word_type*
  %508 = getelementptr inbounds %struct.word_type, %struct.word_type* %507, i32 0, i32 0
  %509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %508, i32 0, i64 0
  %510 = getelementptr inbounds %struct.LIST, %struct.LIST* %509, i32 0, i32 1
  store %union.rec* %495, %union.rec** %510, align 8
  %511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 0
  %514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %513, i32 0, i64 0
  %515 = getelementptr inbounds %struct.LIST, %struct.LIST* %514, i32 0, i32 0
  store %union.rec* %495, %union.rec** %515, align 8
  store %union.rec* %495, %union.rec** %x, align 8
  %516 = load i16, i16* %2, align 2
  %517 = load %union.rec*, %union.rec** %x, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 1
  %520 = bitcast %union.FIRST_UNION* %519 to %struct.FILE_POS*
  %521 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %520, i32 0, i32 2
  store i16 %516, i16* %521, align 2
  %522 = load i32, i32* %3, align 4
  %523 = load %union.rec*, %union.rec** %x, align 8
  %524 = bitcast %union.rec* %523 to %struct.word_type*
  %525 = getelementptr inbounds %struct.word_type, %struct.word_type* %524, i32 0, i32 3
  %526 = bitcast %union.THIRD_UNION* %525 to %struct.anon.6*
  %527 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %526, i32 0, i32 0
  %528 = getelementptr inbounds [2 x i32], [2 x i32]* %527, i32 0, i64 1
  store i32 %522, i32* %528, align 4
  %529 = load i32, i32* %4, align 4
  %530 = load %union.rec*, %union.rec** %x, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 1
  %533 = bitcast %union.FIRST_UNION* %532 to %struct.FILE_POS*
  %534 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %533, i32 0, i32 3
  %535 = load i32, i32* %534, align 4
  %536 = and i32 %529, 1048575
  %537 = and i32 %535, -1048576
  %538 = or i32 %537, %536
  store i32 %538, i32* %534, align 4
  %539 = load %union.rec*, %union.rec** %x, align 8
  %540 = bitcast %union.rec* %539 to %struct.word_type*
  %541 = getelementptr inbounds %struct.word_type, %struct.word_type* %540, i32 0, i32 2
  %542 = bitcast %union.SECOND_UNION* %541 to %struct.anon.2*
  %543 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %542, i32 0, i32 2
  %544 = load i16, i16* %543, align 2
  %545 = and i16 %544, -3
  store i16 %545, i16* %543, align 2
  %546 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %547 = zext i8 %546 to i32
  store i32 %547, i32* @zz_size, align 4
  %548 = sext i32 %547 to i64
  %549 = icmp uge i64 %548, 265
  br i1 %549, label %550, label %553

; <label>:550                                     ; preds = %489
  %551 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %552 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %551)
  br label %578

; <label>:553                                     ; preds = %489
  %554 = load i32, i32* @zz_size, align 4
  %555 = sext i32 %554 to i64
  %556 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %555
  %557 = load %union.rec*, %union.rec** %556, align 8
  %558 = icmp eq %union.rec* %557, null
  br i1 %558, label %559, label %563

; <label>:559                                     ; preds = %553
  %560 = load i32, i32* @zz_size, align 4
  %561 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %562 = call %union.rec* @GetMemory(i32 %560, %struct.FILE_POS* %561)
  store %union.rec* %562, %union.rec** @zz_hold, align 8
  br label %577

; <label>:563                                     ; preds = %553
  %564 = load i32, i32* @zz_size, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %565
  %567 = load %union.rec*, %union.rec** %566, align 8
  store %union.rec* %567, %union.rec** @zz_hold, align 8
  store %union.rec* %567, %union.rec** @zz_hold, align 8
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %569 = bitcast %union.rec* %568 to %struct.word_type*
  %570 = getelementptr inbounds %struct.word_type, %struct.word_type* %569, i32 0, i32 0
  %571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %570, i32 0, i64 0
  %572 = getelementptr inbounds %struct.LIST, %struct.LIST* %571, i32 0, i32 0
  %573 = load %union.rec*, %union.rec** %572, align 8
  %574 = load i32, i32* @zz_size, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %575
  store %union.rec* %573, %union.rec** %576, align 8
  br label %577

; <label>:577                                     ; preds = %563, %559
  br label %578

; <label>:578                                     ; preds = %577, %550
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 1
  %582 = bitcast %union.FIRST_UNION* %581 to %struct.anon*
  %583 = getelementptr inbounds %struct.anon, %struct.anon* %582, i32 0, i32 0
  store i8 0, i8* %583, align 1
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 1
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 1
  store %union.rec* %584, %union.rec** %589, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %591 = bitcast %union.rec* %590 to %struct.word_type*
  %592 = getelementptr inbounds %struct.word_type, %struct.word_type* %591, i32 0, i32 0
  %593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %592, i32 0, i64 1
  %594 = getelementptr inbounds %struct.LIST, %struct.LIST* %593, i32 0, i32 0
  store %union.rec* %584, %union.rec** %594, align 8
  %595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 0
  %598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %597, i32 0, i64 0
  %599 = getelementptr inbounds %struct.LIST, %struct.LIST* %598, i32 0, i32 1
  store %union.rec* %584, %union.rec** %599, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %601 = bitcast %union.rec* %600 to %struct.word_type*
  %602 = getelementptr inbounds %struct.word_type, %struct.word_type* %601, i32 0, i32 0
  %603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %602, i32 0, i64 0
  %604 = getelementptr inbounds %struct.LIST, %struct.LIST* %603, i32 0, i32 0
  store %union.rec* %584, %union.rec** %604, align 8
  store %union.rec* %584, %union.rec** @xx_link, align 8
  %605 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %605, %union.rec** @zz_res, align 8
  %606 = load i32, i32* %pos, align 4
  %607 = zext i32 %606 to i64
  %608 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %607
  %609 = load %union.rec*, %union.rec** %608, align 8
  store %union.rec* %609, %union.rec** @zz_hold, align 8
  %610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %611 = icmp eq %union.rec* %610, null
  br i1 %611, label %612, label %614

; <label>:612                                     ; preds = %578
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %662

; <label>:614                                     ; preds = %578
  %615 = load %union.rec*, %union.rec** @zz_res, align 8
  %616 = icmp eq %union.rec* %615, null
  br i1 %616, label %617, label %619

; <label>:617                                     ; preds = %614
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %660

; <label>:619                                     ; preds = %614
  %620 = load %union.rec*, %union.rec** @zz_hold, align 8
  %621 = bitcast %union.rec* %620 to %struct.word_type*
  %622 = getelementptr inbounds %struct.word_type, %struct.word_type* %621, i32 0, i32 0
  %623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %622, i32 0, i64 0
  %624 = getelementptr inbounds %struct.LIST, %struct.LIST* %623, i32 0, i32 0
  %625 = load %union.rec*, %union.rec** %624, align 8
  store %union.rec* %625, %union.rec** @zz_tmp, align 8
  %626 = load %union.rec*, %union.rec** @zz_res, align 8
  %627 = bitcast %union.rec* %626 to %struct.word_type*
  %628 = getelementptr inbounds %struct.word_type, %struct.word_type* %627, i32 0, i32 0
  %629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %628, i32 0, i64 0
  %630 = getelementptr inbounds %struct.LIST, %struct.LIST* %629, i32 0, i32 0
  %631 = load %union.rec*, %union.rec** %630, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %633 = bitcast %union.rec* %632 to %struct.word_type*
  %634 = getelementptr inbounds %struct.word_type, %struct.word_type* %633, i32 0, i32 0
  %635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %634, i32 0, i64 0
  %636 = getelementptr inbounds %struct.LIST, %struct.LIST* %635, i32 0, i32 0
  store %union.rec* %631, %union.rec** %636, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %638 = load %union.rec*, %union.rec** @zz_res, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 0
  %641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %640, i32 0, i64 0
  %642 = getelementptr inbounds %struct.LIST, %struct.LIST* %641, i32 0, i32 0
  %643 = load %union.rec*, %union.rec** %642, align 8
  %644 = bitcast %union.rec* %643 to %struct.word_type*
  %645 = getelementptr inbounds %struct.word_type, %struct.word_type* %644, i32 0, i32 0
  %646 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %645, i32 0, i64 0
  %647 = getelementptr inbounds %struct.LIST, %struct.LIST* %646, i32 0, i32 1
  store %union.rec* %637, %union.rec** %647, align 8
  %648 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %649 = load %union.rec*, %union.rec** @zz_res, align 8
  %650 = bitcast %union.rec* %649 to %struct.word_type*
  %651 = getelementptr inbounds %struct.word_type, %struct.word_type* %650, i32 0, i32 0
  %652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %651, i32 0, i64 0
  %653 = getelementptr inbounds %struct.LIST, %struct.LIST* %652, i32 0, i32 0
  store %union.rec* %648, %union.rec** %653, align 8
  %654 = load %union.rec*, %union.rec** @zz_res, align 8
  %655 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %656 = bitcast %union.rec* %655 to %struct.word_type*
  %657 = getelementptr inbounds %struct.word_type, %struct.word_type* %656, i32 0, i32 0
  %658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %657, i32 0, i64 0
  %659 = getelementptr inbounds %struct.LIST, %struct.LIST* %658, i32 0, i32 1
  store %union.rec* %654, %union.rec** %659, align 8
  br label %660

; <label>:660                                     ; preds = %619, %617
  %661 = phi %union.rec* [ %618, %617 ], [ %654, %619 ]
  br label %662

; <label>:662                                     ; preds = %660, %612
  %663 = phi %union.rec* [ %613, %612 ], [ %661, %660 ]
  %664 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %664, %union.rec** @zz_res, align 8
  %665 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %665, %union.rec** @zz_hold, align 8
  %666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %667 = icmp eq %union.rec* %666, null
  br i1 %667, label %668, label %670

; <label>:668                                     ; preds = %662
  %669 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %718

; <label>:670                                     ; preds = %662
  %671 = load %union.rec*, %union.rec** @zz_res, align 8
  %672 = icmp eq %union.rec* %671, null
  br i1 %672, label %673, label %675

; <label>:673                                     ; preds = %670
  %674 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %716

; <label>:675                                     ; preds = %670
  %676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 0
  %679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %678, i32 0, i64 1
  %680 = getelementptr inbounds %struct.LIST, %struct.LIST* %679, i32 0, i32 0
  %681 = load %union.rec*, %union.rec** %680, align 8
  store %union.rec* %681, %union.rec** @zz_tmp, align 8
  %682 = load %union.rec*, %union.rec** @zz_res, align 8
  %683 = bitcast %union.rec* %682 to %struct.word_type*
  %684 = getelementptr inbounds %struct.word_type, %struct.word_type* %683, i32 0, i32 0
  %685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %684, i32 0, i64 1
  %686 = getelementptr inbounds %struct.LIST, %struct.LIST* %685, i32 0, i32 0
  %687 = load %union.rec*, %union.rec** %686, align 8
  %688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %689 = bitcast %union.rec* %688 to %struct.word_type*
  %690 = getelementptr inbounds %struct.word_type, %struct.word_type* %689, i32 0, i32 0
  %691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %690, i32 0, i64 1
  %692 = getelementptr inbounds %struct.LIST, %struct.LIST* %691, i32 0, i32 0
  store %union.rec* %687, %union.rec** %692, align 8
  %693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %695 = bitcast %union.rec* %694 to %struct.word_type*
  %696 = getelementptr inbounds %struct.word_type, %struct.word_type* %695, i32 0, i32 0
  %697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %696, i32 0, i64 1
  %698 = getelementptr inbounds %struct.LIST, %struct.LIST* %697, i32 0, i32 0
  %699 = load %union.rec*, %union.rec** %698, align 8
  %700 = bitcast %union.rec* %699 to %struct.word_type*
  %701 = getelementptr inbounds %struct.word_type, %struct.word_type* %700, i32 0, i32 0
  %702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %701, i32 0, i64 1
  %703 = getelementptr inbounds %struct.LIST, %struct.LIST* %702, i32 0, i32 1
  store %union.rec* %693, %union.rec** %703, align 8
  %704 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %705 = load %union.rec*, %union.rec** @zz_res, align 8
  %706 = bitcast %union.rec* %705 to %struct.word_type*
  %707 = getelementptr inbounds %struct.word_type, %struct.word_type* %706, i32 0, i32 0
  %708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %707, i32 0, i64 1
  %709 = getelementptr inbounds %struct.LIST, %struct.LIST* %708, i32 0, i32 0
  store %union.rec* %704, %union.rec** %709, align 8
  %710 = load %union.rec*, %union.rec** @zz_res, align 8
  %711 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %712 = bitcast %union.rec* %711 to %struct.word_type*
  %713 = getelementptr inbounds %struct.word_type, %struct.word_type* %712, i32 0, i32 0
  %714 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %713, i32 0, i64 1
  %715 = getelementptr inbounds %struct.LIST, %struct.LIST* %714, i32 0, i32 1
  store %union.rec* %710, %union.rec** %715, align 8
  br label %716

; <label>:716                                     ; preds = %675, %673
  %717 = phi %union.rec* [ %674, %673 ], [ %710, %675 ]
  br label %718

; <label>:718                                     ; preds = %716, %668
  %719 = phi %union.rec* [ %669, %668 ], [ %717, %716 ]
  %720 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %721 = zext i8 %720 to i32
  store i32 %721, i32* @zz_size, align 4
  %722 = sext i32 %721 to i64
  %723 = icmp uge i64 %722, 265
  br i1 %723, label %724, label %727

; <label>:724                                     ; preds = %718
  %725 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %726 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %725)
  br label %752

; <label>:727                                     ; preds = %718
  %728 = load i32, i32* @zz_size, align 4
  %729 = sext i32 %728 to i64
  %730 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %729
  %731 = load %union.rec*, %union.rec** %730, align 8
  %732 = icmp eq %union.rec* %731, null
  br i1 %732, label %733, label %737

; <label>:733                                     ; preds = %727
  %734 = load i32, i32* @zz_size, align 4
  %735 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %736 = call %union.rec* @GetMemory(i32 %734, %struct.FILE_POS* %735)
  store %union.rec* %736, %union.rec** @zz_hold, align 8
  br label %751

; <label>:737                                     ; preds = %727
  %738 = load i32, i32* @zz_size, align 4
  %739 = sext i32 %738 to i64
  %740 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %739
  %741 = load %union.rec*, %union.rec** %740, align 8
  store %union.rec* %741, %union.rec** @zz_hold, align 8
  store %union.rec* %741, %union.rec** @zz_hold, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %743 = bitcast %union.rec* %742 to %struct.word_type*
  %744 = getelementptr inbounds %struct.word_type, %struct.word_type* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %744, i32 0, i64 0
  %746 = getelementptr inbounds %struct.LIST, %struct.LIST* %745, i32 0, i32 0
  %747 = load %union.rec*, %union.rec** %746, align 8
  %748 = load i32, i32* @zz_size, align 4
  %749 = sext i32 %748 to i64
  %750 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %749
  store %union.rec* %747, %union.rec** %750, align 8
  br label %751

; <label>:751                                     ; preds = %737, %733
  br label %752

; <label>:752                                     ; preds = %751, %724
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %754 = bitcast %union.rec* %753 to %struct.word_type*
  %755 = getelementptr inbounds %struct.word_type, %struct.word_type* %754, i32 0, i32 1
  %756 = bitcast %union.FIRST_UNION* %755 to %struct.anon*
  %757 = getelementptr inbounds %struct.anon, %struct.anon* %756, i32 0, i32 0
  store i8 0, i8* %757, align 1
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %760 = bitcast %union.rec* %759 to %struct.word_type*
  %761 = getelementptr inbounds %struct.word_type, %struct.word_type* %760, i32 0, i32 0
  %762 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %761, i32 0, i64 1
  %763 = getelementptr inbounds %struct.LIST, %struct.LIST* %762, i32 0, i32 1
  store %union.rec* %758, %union.rec** %763, align 8
  %764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %765 = bitcast %union.rec* %764 to %struct.word_type*
  %766 = getelementptr inbounds %struct.word_type, %struct.word_type* %765, i32 0, i32 0
  %767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %766, i32 0, i64 1
  %768 = getelementptr inbounds %struct.LIST, %struct.LIST* %767, i32 0, i32 0
  store %union.rec* %758, %union.rec** %768, align 8
  %769 = load %union.rec*, %union.rec** @zz_hold, align 8
  %770 = bitcast %union.rec* %769 to %struct.word_type*
  %771 = getelementptr inbounds %struct.word_type, %struct.word_type* %770, i32 0, i32 0
  %772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %771, i32 0, i64 0
  %773 = getelementptr inbounds %struct.LIST, %struct.LIST* %772, i32 0, i32 1
  store %union.rec* %758, %union.rec** %773, align 8
  %774 = load %union.rec*, %union.rec** @zz_hold, align 8
  %775 = bitcast %union.rec* %774 to %struct.word_type*
  %776 = getelementptr inbounds %struct.word_type, %struct.word_type* %775, i32 0, i32 0
  %777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %776, i32 0, i64 0
  %778 = getelementptr inbounds %struct.LIST, %struct.LIST* %777, i32 0, i32 0
  store %union.rec* %758, %union.rec** %778, align 8
  store %union.rec* %758, %union.rec** @xx_link, align 8
  %779 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %779, %union.rec** @zz_res, align 8
  %780 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %780, %union.rec** @zz_hold, align 8
  %781 = load %union.rec*, %union.rec** @zz_hold, align 8
  %782 = icmp eq %union.rec* %781, null
  br i1 %782, label %783, label %785

; <label>:783                                     ; preds = %752
  %784 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %833

; <label>:785                                     ; preds = %752
  %786 = load %union.rec*, %union.rec** @zz_res, align 8
  %787 = icmp eq %union.rec* %786, null
  br i1 %787, label %788, label %790

; <label>:788                                     ; preds = %785
  %789 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %831

; <label>:790                                     ; preds = %785
  %791 = load %union.rec*, %union.rec** @zz_hold, align 8
  %792 = bitcast %union.rec* %791 to %struct.word_type*
  %793 = getelementptr inbounds %struct.word_type, %struct.word_type* %792, i32 0, i32 0
  %794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %793, i32 0, i64 0
  %795 = getelementptr inbounds %struct.LIST, %struct.LIST* %794, i32 0, i32 0
  %796 = load %union.rec*, %union.rec** %795, align 8
  store %union.rec* %796, %union.rec** @zz_tmp, align 8
  %797 = load %union.rec*, %union.rec** @zz_res, align 8
  %798 = bitcast %union.rec* %797 to %struct.word_type*
  %799 = getelementptr inbounds %struct.word_type, %struct.word_type* %798, i32 0, i32 0
  %800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %799, i32 0, i64 0
  %801 = getelementptr inbounds %struct.LIST, %struct.LIST* %800, i32 0, i32 0
  %802 = load %union.rec*, %union.rec** %801, align 8
  %803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %804 = bitcast %union.rec* %803 to %struct.word_type*
  %805 = getelementptr inbounds %struct.word_type, %struct.word_type* %804, i32 0, i32 0
  %806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %805, i32 0, i64 0
  %807 = getelementptr inbounds %struct.LIST, %struct.LIST* %806, i32 0, i32 0
  store %union.rec* %802, %union.rec** %807, align 8
  %808 = load %union.rec*, %union.rec** @zz_hold, align 8
  %809 = load %union.rec*, %union.rec** @zz_res, align 8
  %810 = bitcast %union.rec* %809 to %struct.word_type*
  %811 = getelementptr inbounds %struct.word_type, %struct.word_type* %810, i32 0, i32 0
  %812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %811, i32 0, i64 0
  %813 = getelementptr inbounds %struct.LIST, %struct.LIST* %812, i32 0, i32 0
  %814 = load %union.rec*, %union.rec** %813, align 8
  %815 = bitcast %union.rec* %814 to %struct.word_type*
  %816 = getelementptr inbounds %struct.word_type, %struct.word_type* %815, i32 0, i32 0
  %817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %816, i32 0, i64 0
  %818 = getelementptr inbounds %struct.LIST, %struct.LIST* %817, i32 0, i32 1
  store %union.rec* %808, %union.rec** %818, align 8
  %819 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %820 = load %union.rec*, %union.rec** @zz_res, align 8
  %821 = bitcast %union.rec* %820 to %struct.word_type*
  %822 = getelementptr inbounds %struct.word_type, %struct.word_type* %821, i32 0, i32 0
  %823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %822, i32 0, i64 0
  %824 = getelementptr inbounds %struct.LIST, %struct.LIST* %823, i32 0, i32 0
  store %union.rec* %819, %union.rec** %824, align 8
  %825 = load %union.rec*, %union.rec** @zz_res, align 8
  %826 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %827 = bitcast %union.rec* %826 to %struct.word_type*
  %828 = getelementptr inbounds %struct.word_type, %struct.word_type* %827, i32 0, i32 0
  %829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %828, i32 0, i64 0
  %830 = getelementptr inbounds %struct.LIST, %struct.LIST* %829, i32 0, i32 1
  store %union.rec* %825, %union.rec** %830, align 8
  br label %831

; <label>:831                                     ; preds = %790, %788
  %832 = phi %union.rec* [ %789, %788 ], [ %825, %790 ]
  br label %833

; <label>:833                                     ; preds = %831, %783
  %834 = phi %union.rec* [ %784, %783 ], [ %832, %831 ]
  %835 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %835, %union.rec** @zz_res, align 8
  %836 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %836, %union.rec** @zz_hold, align 8
  %837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %838 = icmp eq %union.rec* %837, null
  br i1 %838, label %839, label %841

; <label>:839                                     ; preds = %833
  %840 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %889

; <label>:841                                     ; preds = %833
  %842 = load %union.rec*, %union.rec** @zz_res, align 8
  %843 = icmp eq %union.rec* %842, null
  br i1 %843, label %844, label %846

; <label>:844                                     ; preds = %841
  %845 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %887

; <label>:846                                     ; preds = %841
  %847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %848 = bitcast %union.rec* %847 to %struct.word_type*
  %849 = getelementptr inbounds %struct.word_type, %struct.word_type* %848, i32 0, i32 0
  %850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %849, i32 0, i64 1
  %851 = getelementptr inbounds %struct.LIST, %struct.LIST* %850, i32 0, i32 0
  %852 = load %union.rec*, %union.rec** %851, align 8
  store %union.rec* %852, %union.rec** @zz_tmp, align 8
  %853 = load %union.rec*, %union.rec** @zz_res, align 8
  %854 = bitcast %union.rec* %853 to %struct.word_type*
  %855 = getelementptr inbounds %struct.word_type, %struct.word_type* %854, i32 0, i32 0
  %856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %855, i32 0, i64 1
  %857 = getelementptr inbounds %struct.LIST, %struct.LIST* %856, i32 0, i32 0
  %858 = load %union.rec*, %union.rec** %857, align 8
  %859 = load %union.rec*, %union.rec** @zz_hold, align 8
  %860 = bitcast %union.rec* %859 to %struct.word_type*
  %861 = getelementptr inbounds %struct.word_type, %struct.word_type* %860, i32 0, i32 0
  %862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %861, i32 0, i64 1
  %863 = getelementptr inbounds %struct.LIST, %struct.LIST* %862, i32 0, i32 0
  store %union.rec* %858, %union.rec** %863, align 8
  %864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %865 = load %union.rec*, %union.rec** @zz_res, align 8
  %866 = bitcast %union.rec* %865 to %struct.word_type*
  %867 = getelementptr inbounds %struct.word_type, %struct.word_type* %866, i32 0, i32 0
  %868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %867, i32 0, i64 1
  %869 = getelementptr inbounds %struct.LIST, %struct.LIST* %868, i32 0, i32 0
  %870 = load %union.rec*, %union.rec** %869, align 8
  %871 = bitcast %union.rec* %870 to %struct.word_type*
  %872 = getelementptr inbounds %struct.word_type, %struct.word_type* %871, i32 0, i32 0
  %873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %872, i32 0, i64 1
  %874 = getelementptr inbounds %struct.LIST, %struct.LIST* %873, i32 0, i32 1
  store %union.rec* %864, %union.rec** %874, align 8
  %875 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %876 = load %union.rec*, %union.rec** @zz_res, align 8
  %877 = bitcast %union.rec* %876 to %struct.word_type*
  %878 = getelementptr inbounds %struct.word_type, %struct.word_type* %877, i32 0, i32 0
  %879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %878, i32 0, i64 1
  %880 = getelementptr inbounds %struct.LIST, %struct.LIST* %879, i32 0, i32 0
  store %union.rec* %875, %union.rec** %880, align 8
  %881 = load %union.rec*, %union.rec** @zz_res, align 8
  %882 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %883 = bitcast %union.rec* %882 to %struct.word_type*
  %884 = getelementptr inbounds %struct.word_type, %struct.word_type* %883, i32 0, i32 0
  %885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %884, i32 0, i64 1
  %886 = getelementptr inbounds %struct.LIST, %struct.LIST* %885, i32 0, i32 1
  store %union.rec* %881, %union.rec** %886, align 8
  br label %887

; <label>:887                                     ; preds = %846, %844
  %888 = phi %union.rec* [ %845, %844 ], [ %881, %846 ]
  br label %889

; <label>:889                                     ; preds = %887, %839
  %890 = phi %union.rec* [ %840, %839 ], [ %888, %887 ]
  %891 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %892 = zext i8 %891 to i32
  store i32 %892, i32* @zz_size, align 4
  %893 = sext i32 %892 to i64
  %894 = icmp uge i64 %893, 265
  br i1 %894, label %895, label %898

; <label>:895                                     ; preds = %889
  %896 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %897 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %896)
  br label %923

; <label>:898                                     ; preds = %889
  %899 = load i32, i32* @zz_size, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %900
  %902 = load %union.rec*, %union.rec** %901, align 8
  %903 = icmp eq %union.rec* %902, null
  br i1 %903, label %904, label %908

; <label>:904                                     ; preds = %898
  %905 = load i32, i32* @zz_size, align 4
  %906 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %907 = call %union.rec* @GetMemory(i32 %905, %struct.FILE_POS* %906)
  store %union.rec* %907, %union.rec** @zz_hold, align 8
  br label %922

; <label>:908                                     ; preds = %898
  %909 = load i32, i32* @zz_size, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %910
  %912 = load %union.rec*, %union.rec** %911, align 8
  store %union.rec* %912, %union.rec** @zz_hold, align 8
  store %union.rec* %912, %union.rec** @zz_hold, align 8
  %913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %914 = bitcast %union.rec* %913 to %struct.word_type*
  %915 = getelementptr inbounds %struct.word_type, %struct.word_type* %914, i32 0, i32 0
  %916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %915, i32 0, i64 0
  %917 = getelementptr inbounds %struct.LIST, %struct.LIST* %916, i32 0, i32 0
  %918 = load %union.rec*, %union.rec** %917, align 8
  %919 = load i32, i32* @zz_size, align 4
  %920 = sext i32 %919 to i64
  %921 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %920
  store %union.rec* %918, %union.rec** %921, align 8
  br label %922

; <label>:922                                     ; preds = %908, %904
  br label %923

; <label>:923                                     ; preds = %922, %895
  %924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %925 = bitcast %union.rec* %924 to %struct.word_type*
  %926 = getelementptr inbounds %struct.word_type, %struct.word_type* %925, i32 0, i32 1
  %927 = bitcast %union.FIRST_UNION* %926 to %struct.anon*
  %928 = getelementptr inbounds %struct.anon, %struct.anon* %927, i32 0, i32 0
  store i8 0, i8* %928, align 1
  %929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %930 = load %union.rec*, %union.rec** @zz_hold, align 8
  %931 = bitcast %union.rec* %930 to %struct.word_type*
  %932 = getelementptr inbounds %struct.word_type, %struct.word_type* %931, i32 0, i32 0
  %933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %932, i32 0, i64 1
  %934 = getelementptr inbounds %struct.LIST, %struct.LIST* %933, i32 0, i32 1
  store %union.rec* %929, %union.rec** %934, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %936 = bitcast %union.rec* %935 to %struct.word_type*
  %937 = getelementptr inbounds %struct.word_type, %struct.word_type* %936, i32 0, i32 0
  %938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %937, i32 0, i64 1
  %939 = getelementptr inbounds %struct.LIST, %struct.LIST* %938, i32 0, i32 0
  store %union.rec* %929, %union.rec** %939, align 8
  %940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %941 = bitcast %union.rec* %940 to %struct.word_type*
  %942 = getelementptr inbounds %struct.word_type, %struct.word_type* %941, i32 0, i32 0
  %943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %942, i32 0, i64 0
  %944 = getelementptr inbounds %struct.LIST, %struct.LIST* %943, i32 0, i32 1
  store %union.rec* %929, %union.rec** %944, align 8
  %945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %946 = bitcast %union.rec* %945 to %struct.word_type*
  %947 = getelementptr inbounds %struct.word_type, %struct.word_type* %946, i32 0, i32 0
  %948 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %947, i32 0, i64 0
  %949 = getelementptr inbounds %struct.LIST, %struct.LIST* %948, i32 0, i32 0
  store %union.rec* %929, %union.rec** %949, align 8
  store %union.rec* %929, %union.rec** @xx_link, align 8
  %950 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %950, %union.rec** @zz_res, align 8
  %951 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %951, %union.rec** @zz_hold, align 8
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %953 = icmp eq %union.rec* %952, null
  br i1 %953, label %954, label %956

; <label>:954                                     ; preds = %923
  %955 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1004

; <label>:956                                     ; preds = %923
  %957 = load %union.rec*, %union.rec** @zz_res, align 8
  %958 = icmp eq %union.rec* %957, null
  br i1 %958, label %959, label %961

; <label>:959                                     ; preds = %956
  %960 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1002

; <label>:961                                     ; preds = %956
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 0
  %965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %964, i32 0, i64 0
  %966 = getelementptr inbounds %struct.LIST, %struct.LIST* %965, i32 0, i32 0
  %967 = load %union.rec*, %union.rec** %966, align 8
  store %union.rec* %967, %union.rec** @zz_tmp, align 8
  %968 = load %union.rec*, %union.rec** @zz_res, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 0
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 0
  %973 = load %union.rec*, %union.rec** %972, align 8
  %974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 0
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 0
  store %union.rec* %973, %union.rec** %978, align 8
  %979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %980 = load %union.rec*, %union.rec** @zz_res, align 8
  %981 = bitcast %union.rec* %980 to %struct.word_type*
  %982 = getelementptr inbounds %struct.word_type, %struct.word_type* %981, i32 0, i32 0
  %983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %982, i32 0, i64 0
  %984 = getelementptr inbounds %struct.LIST, %struct.LIST* %983, i32 0, i32 0
  %985 = load %union.rec*, %union.rec** %984, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 0
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 1
  store %union.rec* %979, %union.rec** %989, align 8
  %990 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %991 = load %union.rec*, %union.rec** @zz_res, align 8
  %992 = bitcast %union.rec* %991 to %struct.word_type*
  %993 = getelementptr inbounds %struct.word_type, %struct.word_type* %992, i32 0, i32 0
  %994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %993, i32 0, i64 0
  %995 = getelementptr inbounds %struct.LIST, %struct.LIST* %994, i32 0, i32 0
  store %union.rec* %990, %union.rec** %995, align 8
  %996 = load %union.rec*, %union.rec** @zz_res, align 8
  %997 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %998 = bitcast %union.rec* %997 to %struct.word_type*
  %999 = getelementptr inbounds %struct.word_type, %struct.word_type* %998, i32 0, i32 0
  %1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %999, i32 0, i64 0
  %1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %1000, i32 0, i32 1
  store %union.rec* %996, %union.rec** %1001, align 8
  br label %1002

; <label>:1002                                    ; preds = %961, %959
  %1003 = phi %union.rec* [ %960, %959 ], [ %996, %961 ]
  br label %1004

; <label>:1004                                    ; preds = %1002, %954
  %1005 = phi %union.rec* [ %955, %954 ], [ %1003, %1002 ]
  %1006 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1006, %union.rec** @zz_res, align 8
  %1007 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1007, %union.rec** @zz_hold, align 8
  %1008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1009 = icmp eq %union.rec* %1008, null
  br i1 %1009, label %1010, label %1012

; <label>:1010                                    ; preds = %1004
  %1011 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1060

; <label>:1012                                    ; preds = %1004
  %1013 = load %union.rec*, %union.rec** @zz_res, align 8
  %1014 = icmp eq %union.rec* %1013, null
  br i1 %1014, label %1015, label %1017

; <label>:1015                                    ; preds = %1012
  %1016 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1058

; <label>:1017                                    ; preds = %1012
  %1018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1019 = bitcast %union.rec* %1018 to %struct.word_type*
  %1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %1019, i32 0, i32 0
  %1021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1020, i32 0, i64 1
  %1022 = getelementptr inbounds %struct.LIST, %struct.LIST* %1021, i32 0, i32 0
  %1023 = load %union.rec*, %union.rec** %1022, align 8
  store %union.rec* %1023, %union.rec** @zz_tmp, align 8
  %1024 = load %union.rec*, %union.rec** @zz_res, align 8
  %1025 = bitcast %union.rec* %1024 to %struct.word_type*
  %1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1026, i32 0, i64 1
  %1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %1027, i32 0, i32 0
  %1029 = load %union.rec*, %union.rec** %1028, align 8
  %1030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.word_type*
  %1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %1031, i32 0, i32 0
  %1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1032, i32 0, i64 1
  %1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %1033, i32 0, i32 0
  store %union.rec* %1029, %union.rec** %1034, align 8
  %1035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1036 = load %union.rec*, %union.rec** @zz_res, align 8
  %1037 = bitcast %union.rec* %1036 to %struct.word_type*
  %1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1038, i32 0, i64 1
  %1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %1039, i32 0, i32 0
  %1041 = load %union.rec*, %union.rec** %1040, align 8
  %1042 = bitcast %union.rec* %1041 to %struct.word_type*
  %1043 = getelementptr inbounds %struct.word_type, %struct.word_type* %1042, i32 0, i32 0
  %1044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1043, i32 0, i64 1
  %1045 = getelementptr inbounds %struct.LIST, %struct.LIST* %1044, i32 0, i32 1
  store %union.rec* %1035, %union.rec** %1045, align 8
  %1046 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1047 = load %union.rec*, %union.rec** @zz_res, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.word_type*
  %1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %1048, i32 0, i32 0
  %1050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1049, i32 0, i64 1
  %1051 = getelementptr inbounds %struct.LIST, %struct.LIST* %1050, i32 0, i32 0
  store %union.rec* %1046, %union.rec** %1051, align 8
  %1052 = load %union.rec*, %union.rec** @zz_res, align 8
  %1053 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1054 = bitcast %union.rec* %1053 to %struct.word_type*
  %1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %1054, i32 0, i32 0
  %1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1055, i32 0, i64 1
  %1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %1056, i32 0, i32 1
  store %union.rec* %1052, %union.rec** %1057, align 8
  br label %1058

; <label>:1058                                    ; preds = %1017, %1015
  %1059 = phi %union.rec* [ %1016, %1015 ], [ %1052, %1017 ]
  br label %1060

; <label>:1060                                    ; preds = %1058, %1010
  %1061 = phi %union.rec* [ %1011, %1010 ], [ %1059, %1058 ]
  %1062 = load i32, i32* @cache_count, align 4
  %1063 = add nsw i32 %1062, 1
  store i32 %1063, i32* @cache_count, align 4
  ret void
}

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind uwtable
define i32 @EnvReadRetrieve(i16 zeroext %fnum, i32 %offset, %union.rec** %env) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i16, align 2
  %3 = alloca i32, align 4
  %4 = alloca %union.rec**, align 8
  %pos = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  store i16 %fnum, i16* %2, align 2
  store i32 %offset, i32* %3, align 4
  store %union.rec** %env, %union.rec*** %4, align 8
  %5 = load i32, i32* @stat_reads, align 4
  %6 = add nsw i32 %5, 1
  store i32 %6, i32* @stat_reads, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i16, i16* %2, align 2
  %9 = zext i16 %8 to i32
  %10 = add nsw i32 %7, %9
  %11 = srem i32 %10, 211
  store i32 %11, i32* %pos, align 4
  %12 = load i32, i32* %pos, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %13
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = icmp ne %union.rec* %15, null
  br i1 %16, label %17, label %279

; <label>:17                                      ; preds = %0
  %18 = load i32, i32* %pos, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %19
  %21 = load %union.rec*, %union.rec** %20, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %23, i32 0, i64 0
  %25 = getelementptr inbounds %struct.LIST, %struct.LIST* %24, i32 0, i32 1
  %26 = load %union.rec*, %union.rec** %25, align 8
  store %union.rec* %26, %union.rec** %link, align 8
  br label %27

; <label>:27                                      ; preds = %271, %17
  %28 = load %union.rec*, %union.rec** %link, align 8
  %29 = load i32, i32* %pos, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %30
  %32 = load %union.rec*, %union.rec** %31, align 8
  %33 = icmp ne %union.rec* %28, %32
  br i1 %33, label %34, label %278

; <label>:34                                      ; preds = %27
  %35 = load %union.rec*, %union.rec** %link, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 1
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** %y, align 8
  br label %41

; <label>:41                                      ; preds = %51, %34
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
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 0
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 1
  %64 = load %union.rec*, %union.rec** %63, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %68, align 8
  store %union.rec* %69, %union.rec** %z, align 8
  br label %70

; <label>:70                                      ; preds = %80, %58
  %71 = load %union.rec*, %union.rec** %z, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 1
  %74 = bitcast %union.FIRST_UNION* %73 to %struct.anon*
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %87

; <label>:79                                      ; preds = %70
  br label %80

; <label>:80                                      ; preds = %79
  %81 = load %union.rec*, %union.rec** %z, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 1
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %85, align 8
  store %union.rec* %86, %union.rec** %z, align 8
  br label %70

; <label>:87                                      ; preds = %70
  %88 = load %union.rec*, %union.rec** %y, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 1
  %91 = bitcast %union.FIRST_UNION* %90 to %struct.FILE_POS*
  %92 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %91, i32 0, i32 2
  %93 = load i16, i16* %92, align 2
  %94 = zext i16 %93 to i32
  %95 = load i16, i16* %2, align 2
  %96 = zext i16 %95 to i32
  %97 = icmp eq i32 %94, %96
  br i1 %97, label %98, label %270

; <label>:98                                      ; preds = %87
  %99 = load %union.rec*, %union.rec** %y, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 3
  %102 = bitcast %union.THIRD_UNION* %101 to %struct.anon.6*
  %103 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %103, i32 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %3, align 4
  %107 = icmp eq i32 %105, %106
  br i1 %107, label %108, label %270

; <label>:108                                     ; preds = %98
  %109 = load %union.rec*, %union.rec** %y, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 2
  %112 = bitcast %union.SECOND_UNION* %111 to %struct.anon.2*
  %113 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %112, i32 0, i32 2
  %114 = load i16, i16* %113, align 2
  %115 = lshr i16 %114, 1
  %116 = and i16 %115, 1
  %117 = zext i16 %116 to i32
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %270

; <label>:119                                     ; preds = %108
  %120 = load %union.rec*, %union.rec** %y, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 1
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 0
  %125 = load %union.rec*, %union.rec** %124, align 8
  store %union.rec* %125, %union.rec** @xx_link, align 8
  %126 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %126, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 0
  %130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %129, i32 0, i64 0
  %131 = getelementptr inbounds %struct.LIST, %struct.LIST* %130, i32 0, i32 1
  %132 = load %union.rec*, %union.rec** %131, align 8
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = icmp eq %union.rec* %132, %133
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %119
  br label %177

; <label>:136                                     ; preds = %119
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 0
  %140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %139, i32 0, i64 0
  %141 = getelementptr inbounds %struct.LIST, %struct.LIST* %140, i32 0, i32 1
  %142 = load %union.rec*, %union.rec** %141, align 8
  store %union.rec* %142, %union.rec** @zz_res, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 0
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %147, align 8
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 0
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 0
  store %union.rec* %148, %union.rec** %153, align 8
  %154 = load %union.rec*, %union.rec** @zz_res, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 0
  %158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %157, i32 0, i64 0
  %159 = getelementptr inbounds %struct.LIST, %struct.LIST* %158, i32 0, i32 0
  %160 = load %union.rec*, %union.rec** %159, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 0
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 1
  store %union.rec* %154, %union.rec** %164, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 0
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 1
  store %union.rec* %165, %union.rec** %170, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %173, i32 0, i64 0
  %175 = getelementptr inbounds %struct.LIST, %struct.LIST* %174, i32 0, i32 0
  store %union.rec* %165, %union.rec** %175, align 8
  %176 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %177

; <label>:177                                     ; preds = %136, %135
  %178 = phi %union.rec* [ null, %135 ], [ %176, %136 ]
  %179 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %179, %union.rec** @zz_res, align 8
  %180 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %180, %union.rec** @zz_hold, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %182 = icmp eq %union.rec* %181, null
  br i1 %182, label %183, label %185

; <label>:183                                     ; preds = %177
  %184 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %233

; <label>:185                                     ; preds = %177
  %186 = load %union.rec*, %union.rec** @zz_res, align 8
  %187 = icmp eq %union.rec* %186, null
  br i1 %187, label %188, label %190

; <label>:188                                     ; preds = %185
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %231

; <label>:190                                     ; preds = %185
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 0
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 0
  %196 = load %union.rec*, %union.rec** %195, align 8
  store %union.rec* %196, %union.rec** @zz_tmp, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 0
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 0
  %202 = load %union.rec*, %union.rec** %201, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 0
  %206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %205, i32 0, i64 0
  %207 = getelementptr inbounds %struct.LIST, %struct.LIST* %206, i32 0, i32 0
  store %union.rec* %202, %union.rec** %207, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 0
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 0
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 1
  store %union.rec* %208, %union.rec** %218, align 8
  %219 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %222, i32 0, i64 0
  %224 = getelementptr inbounds %struct.LIST, %struct.LIST* %223, i32 0, i32 0
  store %union.rec* %219, %union.rec** %224, align 8
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %226 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 0
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 1
  store %union.rec* %225, %union.rec** %230, align 8
  br label %231

; <label>:231                                     ; preds = %190, %188
  %232 = phi %union.rec* [ %189, %188 ], [ %225, %190 ]
  br label %233

; <label>:233                                     ; preds = %231, %183
  %234 = phi %union.rec* [ %184, %183 ], [ %232, %231 ]
  %235 = load %union.rec*, %union.rec** %y, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 0
  %238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %237, i32 0, i64 0
  %239 = getelementptr inbounds %struct.LIST, %struct.LIST* %238, i32 0, i32 1
  %240 = load %union.rec*, %union.rec** %239, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 1
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 0
  %245 = load %union.rec*, %union.rec** %244, align 8
  %246 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %245, %union.rec** %246, align 8
  br label %247

; <label>:247                                     ; preds = %258, %233
  %248 = load %union.rec**, %union.rec*** %4, align 8
  %249 = load %union.rec*, %union.rec** %248, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 1
  %252 = bitcast %union.FIRST_UNION* %251 to %struct.anon*
  %253 = getelementptr inbounds %struct.anon, %struct.anon* %252, i32 0, i32 0
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %267

; <label>:257                                     ; preds = %247
  br label %258

; <label>:258                                     ; preds = %257
  %259 = load %union.rec**, %union.rec*** %4, align 8
  %260 = load %union.rec*, %union.rec** %259, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 0
  %263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %262, i32 0, i64 1
  %264 = getelementptr inbounds %struct.LIST, %struct.LIST* %263, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %264, align 8
  %266 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %265, %union.rec** %266, align 8
  br label %247

; <label>:267                                     ; preds = %247
  %268 = load i32, i32* @stat_read_hits, align 4
  %269 = add nsw i32 %268, 1
  store i32 %269, i32* @stat_read_hits, align 4
  store i32 1, i32* %1
  br label %280

; <label>:270                                     ; preds = %108, %98, %87
  br label %271

; <label>:271                                     ; preds = %270
  %272 = load %union.rec*, %union.rec** %link, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 0
  %275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %274, i32 0, i64 0
  %276 = getelementptr inbounds %struct.LIST, %struct.LIST* %275, i32 0, i32 1
  %277 = load %union.rec*, %union.rec** %276, align 8
  store %union.rec* %277, %union.rec** %link, align 8
  br label %27

; <label>:278                                     ; preds = %27
  br label %279

; <label>:279                                     ; preds = %278, %0
  store i32 0, i32* %1
  br label %280

; <label>:280                                     ; preds = %279, %267
  %281 = load i32, i32* %1
  ret i32 %281
}

; Function Attrs: nounwind uwtable
define void @EnvReadInsert(i16 zeroext %fnum, i32 %offset, %union.rec* %env) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %x = alloca %union.rec*, align 8
  %loser = alloca %union.rec*, align 8
  store i16 %fnum, i16* %1, align 2
  store i32 %offset, i32* %2, align 4
  store %union.rec* %env, %union.rec** %3, align 8
  %4 = load i32, i32* @cache_count, align 4
  %5 = icmp sge i32 %4, 180
  br i1 %5, label %6, label %380

; <label>:6                                       ; preds = %0
  %7 = load %union.rec*, %union.rec** @env_cache, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 0
  %10 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %9, i32 0, i64 0
  %11 = getelementptr inbounds %struct.LIST, %struct.LIST* %10, i32 0, i32 1
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %14, i32 0, i64 1
  %16 = getelementptr inbounds %struct.LIST, %struct.LIST* %15, i32 0, i32 0
  %17 = load %union.rec*, %union.rec** %16, align 8
  store %union.rec* %17, %union.rec** %loser, align 8
  br label %18

; <label>:18                                      ; preds = %28, %6
  %19 = load %union.rec*, %union.rec** %loser, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 1
  %22 = bitcast %union.FIRST_UNION* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

; <label>:27                                      ; preds = %18
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load %union.rec*, %union.rec** %loser, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 1
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %loser, align 8
  br label %18

; <label>:35                                      ; preds = %18
  %36 = load %union.rec*, %union.rec** %loser, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 1
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** @xx_link, align 8
  %42 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %42, %union.rec** @zz_hold, align 8
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = icmp eq %union.rec* %48, %49
  br i1 %50, label %51, label %52

; <label>:51                                      ; preds = %35
  br label %93

; <label>:52                                      ; preds = %35
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %55, i32 0, i64 1
  %57 = getelementptr inbounds %struct.LIST, %struct.LIST* %56, i32 0, i32 1
  %58 = load %union.rec*, %union.rec** %57, align 8
  store %union.rec* %58, %union.rec** @zz_res, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 1
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 0
  %64 = load %union.rec*, %union.rec** %63, align 8
  %65 = load %union.rec*, %union.rec** @zz_res, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 1
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  store %union.rec* %64, %union.rec** %69, align 8
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 1
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %75, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 1
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  store %union.rec* %70, %union.rec** %80, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 1
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 1
  store %union.rec* %81, %union.rec** %86, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %89, i32 0, i64 1
  %91 = getelementptr inbounds %struct.LIST, %struct.LIST* %90, i32 0, i32 0
  store %union.rec* %81, %union.rec** %91, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %93

; <label>:93                                      ; preds = %52, %51
  %94 = phi %union.rec* [ null, %51 ], [ %92, %52 ]
  %95 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 0
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %100, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = icmp eq %union.rec* %101, %102
  br i1 %103, label %104, label %105

; <label>:104                                     ; preds = %93
  br label %146

; <label>:105                                     ; preds = %93
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 0
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 1
  %111 = load %union.rec*, %union.rec** %110, align 8
  store %union.rec* %111, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 0
  %115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %114, i32 0, i64 0
  %116 = getelementptr inbounds %struct.LIST, %struct.LIST* %115, i32 0, i32 0
  %117 = load %union.rec*, %union.rec** %116, align 8
  %118 = load %union.rec*, %union.rec** @zz_res, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 0
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 0
  store %union.rec* %117, %union.rec** %122, align 8
  %123 = load %union.rec*, %union.rec** @zz_res, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 0
  %127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %126, i32 0, i64 0
  %128 = getelementptr inbounds %struct.LIST, %struct.LIST* %127, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %128, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 0
  %132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %131, i32 0, i64 0
  %133 = getelementptr inbounds %struct.LIST, %struct.LIST* %132, i32 0, i32 1
  store %union.rec* %123, %union.rec** %133, align 8
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 0
  %138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %137, i32 0, i64 0
  %139 = getelementptr inbounds %struct.LIST, %struct.LIST* %138, i32 0, i32 1
  store %union.rec* %134, %union.rec** %139, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %141 = bitcast %union.rec* %140 to %struct.word_type*
  %142 = getelementptr inbounds %struct.word_type, %struct.word_type* %141, i32 0, i32 0
  %143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %142, i32 0, i64 0
  %144 = getelementptr inbounds %struct.LIST, %struct.LIST* %143, i32 0, i32 0
  store %union.rec* %134, %union.rec** %144, align 8
  %145 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %146

; <label>:146                                     ; preds = %105, %104
  %147 = phi %union.rec* [ null, %104 ], [ %145, %105 ]
  %148 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %148, %union.rec** @zz_hold, align 8
  %149 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %149, %union.rec** @zz_hold, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 1
  %153 = bitcast %union.FIRST_UNION* %152 to %struct.anon*
  %154 = getelementptr inbounds %struct.anon, %struct.anon* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 11
  br i1 %157, label %167, label %158

; <label>:158                                     ; preds = %146
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 1
  %162 = bitcast %union.FIRST_UNION* %161 to %struct.anon*
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 0
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 12
  br i1 %166, label %167, label %175

; <label>:167                                     ; preds = %158, %146
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 1
  %171 = bitcast %union.FIRST_UNION* %170 to %struct.anon*
  %172 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  br label %186

; <label>:175                                     ; preds = %158
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 1
  %179 = bitcast %union.FIRST_UNION* %178 to %struct.anon*
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i64
  %183 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %182
  %184 = load i8, i8* %183, align 1
  %185 = zext i8 %184 to i32
  br label %186

; <label>:186                                     ; preds = %175, %167
  %187 = phi i32 [ %174, %167 ], [ %185, %175 ]
  store i32 %187, i32* @zz_size, align 4
  %188 = load i32, i32* @zz_size, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %189
  %191 = load %union.rec*, %union.rec** %190, align 8
  %192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 0
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 0
  store %union.rec* %191, %union.rec** %196, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = load i32, i32* @zz_size, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %199
  store %union.rec* %197, %union.rec** %200, align 8
  %201 = load %union.rec*, %union.rec** %loser, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %203, i32 0, i64 1
  %205 = getelementptr inbounds %struct.LIST, %struct.LIST* %204, i32 0, i32 1
  %206 = load %union.rec*, %union.rec** %205, align 8
  store %union.rec* %206, %union.rec** @xx_link, align 8
  %207 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %207, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 0
  %211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %210, i32 0, i64 1
  %212 = getelementptr inbounds %struct.LIST, %struct.LIST* %211, i32 0, i32 1
  %213 = load %union.rec*, %union.rec** %212, align 8
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = icmp eq %union.rec* %213, %214
  br i1 %215, label %216, label %217

; <label>:216                                     ; preds = %186
  br label %258

; <label>:217                                     ; preds = %186
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %220, i32 0, i64 1
  %222 = getelementptr inbounds %struct.LIST, %struct.LIST* %221, i32 0, i32 1
  %223 = load %union.rec*, %union.rec** %222, align 8
  store %union.rec* %223, %union.rec** @zz_res, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 1
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %228, align 8
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  %231 = bitcast %union.rec* %230 to %struct.word_type*
  %232 = getelementptr inbounds %struct.word_type, %struct.word_type* %231, i32 0, i32 0
  %233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %232, i32 0, i64 1
  %234 = getelementptr inbounds %struct.LIST, %struct.LIST* %233, i32 0, i32 0
  store %union.rec* %229, %union.rec** %234, align 8
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 1
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %240, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 1
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 1
  store %union.rec* %235, %union.rec** %245, align 8
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 0
  %250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %249, i32 0, i64 1
  %251 = getelementptr inbounds %struct.LIST, %struct.LIST* %250, i32 0, i32 1
  store %union.rec* %246, %union.rec** %251, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %253 = bitcast %union.rec* %252 to %struct.word_type*
  %254 = getelementptr inbounds %struct.word_type, %struct.word_type* %253, i32 0, i32 0
  %255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %254, i32 0, i64 1
  %256 = getelementptr inbounds %struct.LIST, %struct.LIST* %255, i32 0, i32 0
  store %union.rec* %246, %union.rec** %256, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %258

; <label>:258                                     ; preds = %217, %216
  %259 = phi %union.rec* [ null, %216 ], [ %257, %217 ]
  store %union.rec* %259, %union.rec** @xx_tmp, align 8
  %260 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %260, %union.rec** @zz_hold, align 8
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 0
  %264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %263, i32 0, i64 0
  %265 = getelementptr inbounds %struct.LIST, %struct.LIST* %264, i32 0, i32 1
  %266 = load %union.rec*, %union.rec** %265, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = icmp eq %union.rec* %266, %267
  br i1 %268, label %269, label %270

; <label>:269                                     ; preds = %258
  br label %311

; <label>:270                                     ; preds = %258
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 0
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 1
  %276 = load %union.rec*, %union.rec** %275, align 8
  store %union.rec* %276, %union.rec** @zz_res, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 0
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 0
  %282 = load %union.rec*, %union.rec** %281, align 8
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 0
  %286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %285, i32 0, i64 0
  %287 = getelementptr inbounds %struct.LIST, %struct.LIST* %286, i32 0, i32 0
  store %union.rec* %282, %union.rec** %287, align 8
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 0
  %292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %291, i32 0, i64 0
  %293 = getelementptr inbounds %struct.LIST, %struct.LIST* %292, i32 0, i32 0
  %294 = load %union.rec*, %union.rec** %293, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 0
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 1
  store %union.rec* %288, %union.rec** %298, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 0
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 1
  store %union.rec* %299, %union.rec** %304, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 0
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 0
  store %union.rec* %299, %union.rec** %309, align 8
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %311

; <label>:311                                     ; preds = %270, %269
  %312 = phi %union.rec* [ null, %269 ], [ %310, %270 ]
  %313 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %313, %union.rec** @zz_hold, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %314, %union.rec** @zz_hold, align 8
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 1
  %318 = bitcast %union.FIRST_UNION* %317 to %struct.anon*
  %319 = getelementptr inbounds %struct.anon, %struct.anon* %318, i32 0, i32 0
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  %322 = icmp eq i32 %321, 11
  br i1 %322, label %332, label %323

; <label>:323                                     ; preds = %311
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 1
  %327 = bitcast %union.FIRST_UNION* %326 to %struct.anon*
  %328 = getelementptr inbounds %struct.anon, %struct.anon* %327, i32 0, i32 0
  %329 = load i8, i8* %328, align 1
  %330 = zext i8 %329 to i32
  %331 = icmp eq i32 %330, 12
  br i1 %331, label %332, label %340

; <label>:332                                     ; preds = %323, %311
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 1
  %336 = bitcast %union.FIRST_UNION* %335 to %struct.anon*
  %337 = getelementptr inbounds %struct.anon, %struct.anon* %336, i32 0, i32 1
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  br label %351

; <label>:340                                     ; preds = %323
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = bitcast %union.rec* %341 to %struct.word_type*
  %343 = getelementptr inbounds %struct.word_type, %struct.word_type* %342, i32 0, i32 1
  %344 = bitcast %union.FIRST_UNION* %343 to %struct.anon*
  %345 = getelementptr inbounds %struct.anon, %struct.anon* %344, i32 0, i32 0
  %346 = load i8, i8* %345, align 1
  %347 = zext i8 %346 to i64
  %348 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %347
  %349 = load i8, i8* %348, align 1
  %350 = zext i8 %349 to i32
  br label %351

; <label>:351                                     ; preds = %340, %332
  %352 = phi i32 [ %339, %332 ], [ %350, %340 ]
  store i32 %352, i32* @zz_size, align 4
  %353 = load i32, i32* @zz_size, align 4
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %354
  %356 = load %union.rec*, %union.rec** %355, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 0
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 0
  store %union.rec* %356, %union.rec** %361, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %363 = load i32, i32* @zz_size, align 4
  %364 = sext i32 %363 to i64
  %365 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %364
  store %union.rec* %362, %union.rec** %365, align 8
  %366 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %367 = bitcast %union.rec* %366 to %struct.word_type*
  %368 = getelementptr inbounds %struct.word_type, %struct.word_type* %367, i32 0, i32 0
  %369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %368, i32 0, i64 1
  %370 = getelementptr inbounds %struct.LIST, %struct.LIST* %369, i32 0, i32 1
  %371 = load %union.rec*, %union.rec** %370, align 8
  %372 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %373 = icmp eq %union.rec* %371, %372
  br i1 %373, label %374, label %377

; <label>:374                                     ; preds = %351
  %375 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %376 = call i32 @DisposeObject(%union.rec* %375)
  br label %377

; <label>:377                                     ; preds = %374, %351
  %378 = load i32, i32* @cache_count, align 4
  %379 = add nsw i32 %378, -1
  store i32 %379, i32* @cache_count, align 4
  br label %380

; <label>:380                                     ; preds = %377, %0
  %381 = load i32, i32* %2, align 4
  %382 = load i16, i16* %1, align 2
  %383 = zext i16 %382 to i32
  %384 = add nsw i32 %381, %383
  %385 = srem i32 %384, 211
  store i32 %385, i32* %pos, align 4
  %386 = load i32, i32* %pos, align 4
  %387 = sext i32 %386 to i64
  %388 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %387
  %389 = load %union.rec*, %union.rec** %388, align 8
  %390 = icmp eq %union.rec* %389, null
  br i1 %390, label %391, label %454

; <label>:391                                     ; preds = %380
  %392 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %393 = zext i8 %392 to i32
  store i32 %393, i32* @zz_size, align 4
  %394 = sext i32 %393 to i64
  %395 = icmp uge i64 %394, 265
  br i1 %395, label %396, label %399

; <label>:396                                     ; preds = %391
  %397 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %398 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %397)
  br label %424

; <label>:399                                     ; preds = %391
  %400 = load i32, i32* @zz_size, align 4
  %401 = sext i32 %400 to i64
  %402 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %401
  %403 = load %union.rec*, %union.rec** %402, align 8
  %404 = icmp eq %union.rec* %403, null
  br i1 %404, label %405, label %409

; <label>:405                                     ; preds = %399
  %406 = load i32, i32* @zz_size, align 4
  %407 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %408 = call %union.rec* @GetMemory(i32 %406, %struct.FILE_POS* %407)
  store %union.rec* %408, %union.rec** @zz_hold, align 8
  br label %423

; <label>:409                                     ; preds = %399
  %410 = load i32, i32* @zz_size, align 4
  %411 = sext i32 %410 to i64
  %412 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %411
  %413 = load %union.rec*, %union.rec** %412, align 8
  store %union.rec* %413, %union.rec** @zz_hold, align 8
  store %union.rec* %413, %union.rec** @zz_hold, align 8
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 0
  %417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %416, i32 0, i64 0
  %418 = getelementptr inbounds %struct.LIST, %struct.LIST* %417, i32 0, i32 0
  %419 = load %union.rec*, %union.rec** %418, align 8
  %420 = load i32, i32* @zz_size, align 4
  %421 = sext i32 %420 to i64
  %422 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %421
  store %union.rec* %419, %union.rec** %422, align 8
  br label %423

; <label>:423                                     ; preds = %409, %405
  br label %424

; <label>:424                                     ; preds = %423, %396
  %425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %426 = bitcast %union.rec* %425 to %struct.word_type*
  %427 = getelementptr inbounds %struct.word_type, %struct.word_type* %426, i32 0, i32 1
  %428 = bitcast %union.FIRST_UNION* %427 to %struct.anon*
  %429 = getelementptr inbounds %struct.anon, %struct.anon* %428, i32 0, i32 0
  store i8 17, i8* %429, align 1
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 0
  %434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %433, i32 0, i64 1
  %435 = getelementptr inbounds %struct.LIST, %struct.LIST* %434, i32 0, i32 1
  store %union.rec* %430, %union.rec** %435, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 1
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 0
  store %union.rec* %430, %union.rec** %440, align 8
  %441 = load %union.rec*, %union.rec** @zz_hold, align 8
  %442 = bitcast %union.rec* %441 to %struct.word_type*
  %443 = getelementptr inbounds %struct.word_type, %struct.word_type* %442, i32 0, i32 0
  %444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %443, i32 0, i64 0
  %445 = getelementptr inbounds %struct.LIST, %struct.LIST* %444, i32 0, i32 1
  store %union.rec* %430, %union.rec** %445, align 8
  %446 = load %union.rec*, %union.rec** @zz_hold, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 0
  %449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %448, i32 0, i64 0
  %450 = getelementptr inbounds %struct.LIST, %struct.LIST* %449, i32 0, i32 0
  store %union.rec* %430, %union.rec** %450, align 8
  %451 = load i32, i32* %pos, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %452
  store %union.rec* %430, %union.rec** %453, align 8
  br label %454

; <label>:454                                     ; preds = %424, %380
  %455 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %456 = zext i8 %455 to i32
  store i32 %456, i32* @zz_size, align 4
  %457 = sext i32 %456 to i64
  %458 = icmp uge i64 %457, 265
  br i1 %458, label %459, label %462

; <label>:459                                     ; preds = %454
  %460 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %461 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %460)
  br label %487

; <label>:462                                     ; preds = %454
  %463 = load i32, i32* @zz_size, align 4
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %464
  %466 = load %union.rec*, %union.rec** %465, align 8
  %467 = icmp eq %union.rec* %466, null
  br i1 %467, label %468, label %472

; <label>:468                                     ; preds = %462
  %469 = load i32, i32* @zz_size, align 4
  %470 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %471 = call %union.rec* @GetMemory(i32 %469, %struct.FILE_POS* %470)
  store %union.rec* %471, %union.rec** @zz_hold, align 8
  br label %486

; <label>:472                                     ; preds = %462
  %473 = load i32, i32* @zz_size, align 4
  %474 = sext i32 %473 to i64
  %475 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %474
  %476 = load %union.rec*, %union.rec** %475, align 8
  store %union.rec* %476, %union.rec** @zz_hold, align 8
  store %union.rec* %476, %union.rec** @zz_hold, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %478 = bitcast %union.rec* %477 to %struct.word_type*
  %479 = getelementptr inbounds %struct.word_type, %struct.word_type* %478, i32 0, i32 0
  %480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %479, i32 0, i64 0
  %481 = getelementptr inbounds %struct.LIST, %struct.LIST* %480, i32 0, i32 0
  %482 = load %union.rec*, %union.rec** %481, align 8
  %483 = load i32, i32* @zz_size, align 4
  %484 = sext i32 %483 to i64
  %485 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %484
  store %union.rec* %482, %union.rec** %485, align 8
  br label %486

; <label>:486                                     ; preds = %472, %468
  br label %487

; <label>:487                                     ; preds = %486, %459
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %489 = bitcast %union.rec* %488 to %struct.word_type*
  %490 = getelementptr inbounds %struct.word_type, %struct.word_type* %489, i32 0, i32 1
  %491 = bitcast %union.FIRST_UNION* %490 to %struct.anon*
  %492 = getelementptr inbounds %struct.anon, %struct.anon* %491, i32 0, i32 0
  store i8 17, i8* %492, align 1
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = bitcast %union.rec* %494 to %struct.word_type*
  %496 = getelementptr inbounds %struct.word_type, %struct.word_type* %495, i32 0, i32 0
  %497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %496, i32 0, i64 1
  %498 = getelementptr inbounds %struct.LIST, %struct.LIST* %497, i32 0, i32 1
  store %union.rec* %493, %union.rec** %498, align 8
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 1
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 0
  store %union.rec* %493, %union.rec** %503, align 8
  %504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 0
  %507 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %506, i32 0, i64 0
  %508 = getelementptr inbounds %struct.LIST, %struct.LIST* %507, i32 0, i32 1
  store %union.rec* %493, %union.rec** %508, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %510 = bitcast %union.rec* %509 to %struct.word_type*
  %511 = getelementptr inbounds %struct.word_type, %struct.word_type* %510, i32 0, i32 0
  %512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %511, i32 0, i64 0
  %513 = getelementptr inbounds %struct.LIST, %struct.LIST* %512, i32 0, i32 0
  store %union.rec* %493, %union.rec** %513, align 8
  store %union.rec* %493, %union.rec** %x, align 8
  %514 = load i16, i16* %1, align 2
  %515 = load %union.rec*, %union.rec** %x, align 8
  %516 = bitcast %union.rec* %515 to %struct.word_type*
  %517 = getelementptr inbounds %struct.word_type, %struct.word_type* %516, i32 0, i32 1
  %518 = bitcast %union.FIRST_UNION* %517 to %struct.FILE_POS*
  %519 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %518, i32 0, i32 2
  store i16 %514, i16* %519, align 2
  %520 = load i32, i32* %2, align 4
  %521 = load %union.rec*, %union.rec** %x, align 8
  %522 = bitcast %union.rec* %521 to %struct.word_type*
  %523 = getelementptr inbounds %struct.word_type, %struct.word_type* %522, i32 0, i32 3
  %524 = bitcast %union.THIRD_UNION* %523 to %struct.anon.6*
  %525 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %524, i32 0, i32 0
  %526 = getelementptr inbounds [2 x i32], [2 x i32]* %525, i32 0, i64 1
  store i32 %520, i32* %526, align 4
  %527 = load %union.rec*, %union.rec** %x, align 8
  %528 = bitcast %union.rec* %527 to %struct.word_type*
  %529 = getelementptr inbounds %struct.word_type, %struct.word_type* %528, i32 0, i32 2
  %530 = bitcast %union.SECOND_UNION* %529 to %struct.anon.2*
  %531 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %530, i32 0, i32 2
  %532 = load i16, i16* %531, align 2
  %533 = and i16 %532, -3
  %534 = or i16 %533, 2
  store i16 %534, i16* %531, align 2
  %535 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %536 = zext i8 %535 to i32
  store i32 %536, i32* @zz_size, align 4
  %537 = sext i32 %536 to i64
  %538 = icmp uge i64 %537, 265
  br i1 %538, label %539, label %542

; <label>:539                                     ; preds = %487
  %540 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %541 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %540)
  br label %567

; <label>:542                                     ; preds = %487
  %543 = load i32, i32* @zz_size, align 4
  %544 = sext i32 %543 to i64
  %545 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %544
  %546 = load %union.rec*, %union.rec** %545, align 8
  %547 = icmp eq %union.rec* %546, null
  br i1 %547, label %548, label %552

; <label>:548                                     ; preds = %542
  %549 = load i32, i32* @zz_size, align 4
  %550 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %551 = call %union.rec* @GetMemory(i32 %549, %struct.FILE_POS* %550)
  store %union.rec* %551, %union.rec** @zz_hold, align 8
  br label %566

; <label>:552                                     ; preds = %542
  %553 = load i32, i32* @zz_size, align 4
  %554 = sext i32 %553 to i64
  %555 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %554
  %556 = load %union.rec*, %union.rec** %555, align 8
  store %union.rec* %556, %union.rec** @zz_hold, align 8
  store %union.rec* %556, %union.rec** @zz_hold, align 8
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %558 = bitcast %union.rec* %557 to %struct.word_type*
  %559 = getelementptr inbounds %struct.word_type, %struct.word_type* %558, i32 0, i32 0
  %560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %559, i32 0, i64 0
  %561 = getelementptr inbounds %struct.LIST, %struct.LIST* %560, i32 0, i32 0
  %562 = load %union.rec*, %union.rec** %561, align 8
  %563 = load i32, i32* @zz_size, align 4
  %564 = sext i32 %563 to i64
  %565 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %564
  store %union.rec* %562, %union.rec** %565, align 8
  br label %566

; <label>:566                                     ; preds = %552, %548
  br label %567

; <label>:567                                     ; preds = %566, %539
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %569 = bitcast %union.rec* %568 to %struct.word_type*
  %570 = getelementptr inbounds %struct.word_type, %struct.word_type* %569, i32 0, i32 1
  %571 = bitcast %union.FIRST_UNION* %570 to %struct.anon*
  %572 = getelementptr inbounds %struct.anon, %struct.anon* %571, i32 0, i32 0
  store i8 0, i8* %572, align 1
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %575 = bitcast %union.rec* %574 to %struct.word_type*
  %576 = getelementptr inbounds %struct.word_type, %struct.word_type* %575, i32 0, i32 0
  %577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %576, i32 0, i64 1
  %578 = getelementptr inbounds %struct.LIST, %struct.LIST* %577, i32 0, i32 1
  store %union.rec* %573, %union.rec** %578, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 1
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 0
  store %union.rec* %573, %union.rec** %583, align 8
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %585 = bitcast %union.rec* %584 to %struct.word_type*
  %586 = getelementptr inbounds %struct.word_type, %struct.word_type* %585, i32 0, i32 0
  %587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %586, i32 0, i64 0
  %588 = getelementptr inbounds %struct.LIST, %struct.LIST* %587, i32 0, i32 1
  store %union.rec* %573, %union.rec** %588, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 0
  %592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %591, i32 0, i64 0
  %593 = getelementptr inbounds %struct.LIST, %struct.LIST* %592, i32 0, i32 0
  store %union.rec* %573, %union.rec** %593, align 8
  store %union.rec* %573, %union.rec** @xx_link, align 8
  %594 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %594, %union.rec** @zz_res, align 8
  %595 = load i32, i32* %pos, align 4
  %596 = sext i32 %595 to i64
  %597 = getelementptr inbounds [211 x %union.rec*], [211 x %union.rec*]* @tab, i32 0, i64 %596
  %598 = load %union.rec*, %union.rec** %597, align 8
  store %union.rec* %598, %union.rec** @zz_hold, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = icmp eq %union.rec* %599, null
  br i1 %600, label %601, label %603

; <label>:601                                     ; preds = %567
  %602 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %651

; <label>:603                                     ; preds = %567
  %604 = load %union.rec*, %union.rec** @zz_res, align 8
  %605 = icmp eq %union.rec* %604, null
  br i1 %605, label %606, label %608

; <label>:606                                     ; preds = %603
  %607 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %649

; <label>:608                                     ; preds = %603
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %610 = bitcast %union.rec* %609 to %struct.word_type*
  %611 = getelementptr inbounds %struct.word_type, %struct.word_type* %610, i32 0, i32 0
  %612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %611, i32 0, i64 0
  %613 = getelementptr inbounds %struct.LIST, %struct.LIST* %612, i32 0, i32 0
  %614 = load %union.rec*, %union.rec** %613, align 8
  store %union.rec* %614, %union.rec** @zz_tmp, align 8
  %615 = load %union.rec*, %union.rec** @zz_res, align 8
  %616 = bitcast %union.rec* %615 to %struct.word_type*
  %617 = getelementptr inbounds %struct.word_type, %struct.word_type* %616, i32 0, i32 0
  %618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %617, i32 0, i64 0
  %619 = getelementptr inbounds %struct.LIST, %struct.LIST* %618, i32 0, i32 0
  %620 = load %union.rec*, %union.rec** %619, align 8
  %621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 0
  %624 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %623, i32 0, i64 0
  %625 = getelementptr inbounds %struct.LIST, %struct.LIST* %624, i32 0, i32 0
  store %union.rec* %620, %union.rec** %625, align 8
  %626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %627 = load %union.rec*, %union.rec** @zz_res, align 8
  %628 = bitcast %union.rec* %627 to %struct.word_type*
  %629 = getelementptr inbounds %struct.word_type, %struct.word_type* %628, i32 0, i32 0
  %630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %629, i32 0, i64 0
  %631 = getelementptr inbounds %struct.LIST, %struct.LIST* %630, i32 0, i32 0
  %632 = load %union.rec*, %union.rec** %631, align 8
  %633 = bitcast %union.rec* %632 to %struct.word_type*
  %634 = getelementptr inbounds %struct.word_type, %struct.word_type* %633, i32 0, i32 0
  %635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %634, i32 0, i64 0
  %636 = getelementptr inbounds %struct.LIST, %struct.LIST* %635, i32 0, i32 1
  store %union.rec* %626, %union.rec** %636, align 8
  %637 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %638 = load %union.rec*, %union.rec** @zz_res, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 0
  %641 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %640, i32 0, i64 0
  %642 = getelementptr inbounds %struct.LIST, %struct.LIST* %641, i32 0, i32 0
  store %union.rec* %637, %union.rec** %642, align 8
  %643 = load %union.rec*, %union.rec** @zz_res, align 8
  %644 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %645 = bitcast %union.rec* %644 to %struct.word_type*
  %646 = getelementptr inbounds %struct.word_type, %struct.word_type* %645, i32 0, i32 0
  %647 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %646, i32 0, i64 0
  %648 = getelementptr inbounds %struct.LIST, %struct.LIST* %647, i32 0, i32 1
  store %union.rec* %643, %union.rec** %648, align 8
  br label %649

; <label>:649                                     ; preds = %608, %606
  %650 = phi %union.rec* [ %607, %606 ], [ %643, %608 ]
  br label %651

; <label>:651                                     ; preds = %649, %601
  %652 = phi %union.rec* [ %602, %601 ], [ %650, %649 ]
  %653 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %653, %union.rec** @zz_res, align 8
  %654 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %654, %union.rec** @zz_hold, align 8
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %656 = icmp eq %union.rec* %655, null
  br i1 %656, label %657, label %659

; <label>:657                                     ; preds = %651
  %658 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %707

; <label>:659                                     ; preds = %651
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  %661 = icmp eq %union.rec* %660, null
  br i1 %661, label %662, label %664

; <label>:662                                     ; preds = %659
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %705

; <label>:664                                     ; preds = %659
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 0
  %668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %667, i32 0, i64 1
  %669 = getelementptr inbounds %struct.LIST, %struct.LIST* %668, i32 0, i32 0
  %670 = load %union.rec*, %union.rec** %669, align 8
  store %union.rec* %670, %union.rec** @zz_tmp, align 8
  %671 = load %union.rec*, %union.rec** @zz_res, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 0
  %674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %673, i32 0, i64 1
  %675 = getelementptr inbounds %struct.LIST, %struct.LIST* %674, i32 0, i32 0
  %676 = load %union.rec*, %union.rec** %675, align 8
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 0
  %680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %679, i32 0, i64 1
  %681 = getelementptr inbounds %struct.LIST, %struct.LIST* %680, i32 0, i32 0
  store %union.rec* %676, %union.rec** %681, align 8
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %683 = load %union.rec*, %union.rec** @zz_res, align 8
  %684 = bitcast %union.rec* %683 to %struct.word_type*
  %685 = getelementptr inbounds %struct.word_type, %struct.word_type* %684, i32 0, i32 0
  %686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %685, i32 0, i64 1
  %687 = getelementptr inbounds %struct.LIST, %struct.LIST* %686, i32 0, i32 0
  %688 = load %union.rec*, %union.rec** %687, align 8
  %689 = bitcast %union.rec* %688 to %struct.word_type*
  %690 = getelementptr inbounds %struct.word_type, %struct.word_type* %689, i32 0, i32 0
  %691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %690, i32 0, i64 1
  %692 = getelementptr inbounds %struct.LIST, %struct.LIST* %691, i32 0, i32 1
  store %union.rec* %682, %union.rec** %692, align 8
  %693 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %694 = load %union.rec*, %union.rec** @zz_res, align 8
  %695 = bitcast %union.rec* %694 to %struct.word_type*
  %696 = getelementptr inbounds %struct.word_type, %struct.word_type* %695, i32 0, i32 0
  %697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %696, i32 0, i64 1
  %698 = getelementptr inbounds %struct.LIST, %struct.LIST* %697, i32 0, i32 0
  store %union.rec* %693, %union.rec** %698, align 8
  %699 = load %union.rec*, %union.rec** @zz_res, align 8
  %700 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 0
  %703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %702, i32 0, i64 1
  %704 = getelementptr inbounds %struct.LIST, %struct.LIST* %703, i32 0, i32 1
  store %union.rec* %699, %union.rec** %704, align 8
  br label %705

; <label>:705                                     ; preds = %664, %662
  %706 = phi %union.rec* [ %663, %662 ], [ %699, %664 ]
  br label %707

; <label>:707                                     ; preds = %705, %657
  %708 = phi %union.rec* [ %658, %657 ], [ %706, %705 ]
  %709 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %710 = zext i8 %709 to i32
  store i32 %710, i32* @zz_size, align 4
  %711 = sext i32 %710 to i64
  %712 = icmp uge i64 %711, 265
  br i1 %712, label %713, label %716

; <label>:713                                     ; preds = %707
  %714 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %715 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %714)
  br label %741

; <label>:716                                     ; preds = %707
  %717 = load i32, i32* @zz_size, align 4
  %718 = sext i32 %717 to i64
  %719 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %718
  %720 = load %union.rec*, %union.rec** %719, align 8
  %721 = icmp eq %union.rec* %720, null
  br i1 %721, label %722, label %726

; <label>:722                                     ; preds = %716
  %723 = load i32, i32* @zz_size, align 4
  %724 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %725 = call %union.rec* @GetMemory(i32 %723, %struct.FILE_POS* %724)
  store %union.rec* %725, %union.rec** @zz_hold, align 8
  br label %740

; <label>:726                                     ; preds = %716
  %727 = load i32, i32* @zz_size, align 4
  %728 = sext i32 %727 to i64
  %729 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %728
  %730 = load %union.rec*, %union.rec** %729, align 8
  store %union.rec* %730, %union.rec** @zz_hold, align 8
  store %union.rec* %730, %union.rec** @zz_hold, align 8
  %731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %732 = bitcast %union.rec* %731 to %struct.word_type*
  %733 = getelementptr inbounds %struct.word_type, %struct.word_type* %732, i32 0, i32 0
  %734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %733, i32 0, i64 0
  %735 = getelementptr inbounds %struct.LIST, %struct.LIST* %734, i32 0, i32 0
  %736 = load %union.rec*, %union.rec** %735, align 8
  %737 = load i32, i32* @zz_size, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %738
  store %union.rec* %736, %union.rec** %739, align 8
  br label %740

; <label>:740                                     ; preds = %726, %722
  br label %741

; <label>:741                                     ; preds = %740, %713
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %743 = bitcast %union.rec* %742 to %struct.word_type*
  %744 = getelementptr inbounds %struct.word_type, %struct.word_type* %743, i32 0, i32 1
  %745 = bitcast %union.FIRST_UNION* %744 to %struct.anon*
  %746 = getelementptr inbounds %struct.anon, %struct.anon* %745, i32 0, i32 0
  store i8 0, i8* %746, align 1
  %747 = load %union.rec*, %union.rec** @zz_hold, align 8
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %749 = bitcast %union.rec* %748 to %struct.word_type*
  %750 = getelementptr inbounds %struct.word_type, %struct.word_type* %749, i32 0, i32 0
  %751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %750, i32 0, i64 1
  %752 = getelementptr inbounds %struct.LIST, %struct.LIST* %751, i32 0, i32 1
  store %union.rec* %747, %union.rec** %752, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %754 = bitcast %union.rec* %753 to %struct.word_type*
  %755 = getelementptr inbounds %struct.word_type, %struct.word_type* %754, i32 0, i32 0
  %756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %755, i32 0, i64 1
  %757 = getelementptr inbounds %struct.LIST, %struct.LIST* %756, i32 0, i32 0
  store %union.rec* %747, %union.rec** %757, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %759 = bitcast %union.rec* %758 to %struct.word_type*
  %760 = getelementptr inbounds %struct.word_type, %struct.word_type* %759, i32 0, i32 0
  %761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %760, i32 0, i64 0
  %762 = getelementptr inbounds %struct.LIST, %struct.LIST* %761, i32 0, i32 1
  store %union.rec* %747, %union.rec** %762, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %764 = bitcast %union.rec* %763 to %struct.word_type*
  %765 = getelementptr inbounds %struct.word_type, %struct.word_type* %764, i32 0, i32 0
  %766 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %765, i32 0, i64 0
  %767 = getelementptr inbounds %struct.LIST, %struct.LIST* %766, i32 0, i32 0
  store %union.rec* %747, %union.rec** %767, align 8
  store %union.rec* %747, %union.rec** @xx_link, align 8
  %768 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %768, %union.rec** @zz_res, align 8
  %769 = load %union.rec*, %union.rec** @env_cache, align 8
  store %union.rec* %769, %union.rec** @zz_hold, align 8
  %770 = load %union.rec*, %union.rec** @zz_hold, align 8
  %771 = icmp eq %union.rec* %770, null
  br i1 %771, label %772, label %774

; <label>:772                                     ; preds = %741
  %773 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %822

; <label>:774                                     ; preds = %741
  %775 = load %union.rec*, %union.rec** @zz_res, align 8
  %776 = icmp eq %union.rec* %775, null
  br i1 %776, label %777, label %779

; <label>:777                                     ; preds = %774
  %778 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %820

; <label>:779                                     ; preds = %774
  %780 = load %union.rec*, %union.rec** @zz_hold, align 8
  %781 = bitcast %union.rec* %780 to %struct.word_type*
  %782 = getelementptr inbounds %struct.word_type, %struct.word_type* %781, i32 0, i32 0
  %783 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %782, i32 0, i64 0
  %784 = getelementptr inbounds %struct.LIST, %struct.LIST* %783, i32 0, i32 0
  %785 = load %union.rec*, %union.rec** %784, align 8
  store %union.rec* %785, %union.rec** @zz_tmp, align 8
  %786 = load %union.rec*, %union.rec** @zz_res, align 8
  %787 = bitcast %union.rec* %786 to %struct.word_type*
  %788 = getelementptr inbounds %struct.word_type, %struct.word_type* %787, i32 0, i32 0
  %789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %788, i32 0, i64 0
  %790 = getelementptr inbounds %struct.LIST, %struct.LIST* %789, i32 0, i32 0
  %791 = load %union.rec*, %union.rec** %790, align 8
  %792 = load %union.rec*, %union.rec** @zz_hold, align 8
  %793 = bitcast %union.rec* %792 to %struct.word_type*
  %794 = getelementptr inbounds %struct.word_type, %struct.word_type* %793, i32 0, i32 0
  %795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %794, i32 0, i64 0
  %796 = getelementptr inbounds %struct.LIST, %struct.LIST* %795, i32 0, i32 0
  store %union.rec* %791, %union.rec** %796, align 8
  %797 = load %union.rec*, %union.rec** @zz_hold, align 8
  %798 = load %union.rec*, %union.rec** @zz_res, align 8
  %799 = bitcast %union.rec* %798 to %struct.word_type*
  %800 = getelementptr inbounds %struct.word_type, %struct.word_type* %799, i32 0, i32 0
  %801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %800, i32 0, i64 0
  %802 = getelementptr inbounds %struct.LIST, %struct.LIST* %801, i32 0, i32 0
  %803 = load %union.rec*, %union.rec** %802, align 8
  %804 = bitcast %union.rec* %803 to %struct.word_type*
  %805 = getelementptr inbounds %struct.word_type, %struct.word_type* %804, i32 0, i32 0
  %806 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %805, i32 0, i64 0
  %807 = getelementptr inbounds %struct.LIST, %struct.LIST* %806, i32 0, i32 1
  store %union.rec* %797, %union.rec** %807, align 8
  %808 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %809 = load %union.rec*, %union.rec** @zz_res, align 8
  %810 = bitcast %union.rec* %809 to %struct.word_type*
  %811 = getelementptr inbounds %struct.word_type, %struct.word_type* %810, i32 0, i32 0
  %812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %811, i32 0, i64 0
  %813 = getelementptr inbounds %struct.LIST, %struct.LIST* %812, i32 0, i32 0
  store %union.rec* %808, %union.rec** %813, align 8
  %814 = load %union.rec*, %union.rec** @zz_res, align 8
  %815 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %816 = bitcast %union.rec* %815 to %struct.word_type*
  %817 = getelementptr inbounds %struct.word_type, %struct.word_type* %816, i32 0, i32 0
  %818 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %817, i32 0, i64 0
  %819 = getelementptr inbounds %struct.LIST, %struct.LIST* %818, i32 0, i32 1
  store %union.rec* %814, %union.rec** %819, align 8
  br label %820

; <label>:820                                     ; preds = %779, %777
  %821 = phi %union.rec* [ %778, %777 ], [ %814, %779 ]
  br label %822

; <label>:822                                     ; preds = %820, %772
  %823 = phi %union.rec* [ %773, %772 ], [ %821, %820 ]
  %824 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %824, %union.rec** @zz_res, align 8
  %825 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %825, %union.rec** @zz_hold, align 8
  %826 = load %union.rec*, %union.rec** @zz_hold, align 8
  %827 = icmp eq %union.rec* %826, null
  br i1 %827, label %828, label %830

; <label>:828                                     ; preds = %822
  %829 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %878

; <label>:830                                     ; preds = %822
  %831 = load %union.rec*, %union.rec** @zz_res, align 8
  %832 = icmp eq %union.rec* %831, null
  br i1 %832, label %833, label %835

; <label>:833                                     ; preds = %830
  %834 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %876

; <label>:835                                     ; preds = %830
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %837 = bitcast %union.rec* %836 to %struct.word_type*
  %838 = getelementptr inbounds %struct.word_type, %struct.word_type* %837, i32 0, i32 0
  %839 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %838, i32 0, i64 1
  %840 = getelementptr inbounds %struct.LIST, %struct.LIST* %839, i32 0, i32 0
  %841 = load %union.rec*, %union.rec** %840, align 8
  store %union.rec* %841, %union.rec** @zz_tmp, align 8
  %842 = load %union.rec*, %union.rec** @zz_res, align 8
  %843 = bitcast %union.rec* %842 to %struct.word_type*
  %844 = getelementptr inbounds %struct.word_type, %struct.word_type* %843, i32 0, i32 0
  %845 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %844, i32 0, i64 1
  %846 = getelementptr inbounds %struct.LIST, %struct.LIST* %845, i32 0, i32 0
  %847 = load %union.rec*, %union.rec** %846, align 8
  %848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %849 = bitcast %union.rec* %848 to %struct.word_type*
  %850 = getelementptr inbounds %struct.word_type, %struct.word_type* %849, i32 0, i32 0
  %851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %850, i32 0, i64 1
  %852 = getelementptr inbounds %struct.LIST, %struct.LIST* %851, i32 0, i32 0
  store %union.rec* %847, %union.rec** %852, align 8
  %853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %854 = load %union.rec*, %union.rec** @zz_res, align 8
  %855 = bitcast %union.rec* %854 to %struct.word_type*
  %856 = getelementptr inbounds %struct.word_type, %struct.word_type* %855, i32 0, i32 0
  %857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %856, i32 0, i64 1
  %858 = getelementptr inbounds %struct.LIST, %struct.LIST* %857, i32 0, i32 0
  %859 = load %union.rec*, %union.rec** %858, align 8
  %860 = bitcast %union.rec* %859 to %struct.word_type*
  %861 = getelementptr inbounds %struct.word_type, %struct.word_type* %860, i32 0, i32 0
  %862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %861, i32 0, i64 1
  %863 = getelementptr inbounds %struct.LIST, %struct.LIST* %862, i32 0, i32 1
  store %union.rec* %853, %union.rec** %863, align 8
  %864 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %865 = load %union.rec*, %union.rec** @zz_res, align 8
  %866 = bitcast %union.rec* %865 to %struct.word_type*
  %867 = getelementptr inbounds %struct.word_type, %struct.word_type* %866, i32 0, i32 0
  %868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %867, i32 0, i64 1
  %869 = getelementptr inbounds %struct.LIST, %struct.LIST* %868, i32 0, i32 0
  store %union.rec* %864, %union.rec** %869, align 8
  %870 = load %union.rec*, %union.rec** @zz_res, align 8
  %871 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 0
  %874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %873, i32 0, i64 1
  %875 = getelementptr inbounds %struct.LIST, %struct.LIST* %874, i32 0, i32 1
  store %union.rec* %870, %union.rec** %875, align 8
  br label %876

; <label>:876                                     ; preds = %835, %833
  %877 = phi %union.rec* [ %834, %833 ], [ %870, %835 ]
  br label %878

; <label>:878                                     ; preds = %876, %828
  %879 = phi %union.rec* [ %829, %828 ], [ %877, %876 ]
  %880 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %881 = zext i8 %880 to i32
  store i32 %881, i32* @zz_size, align 4
  %882 = sext i32 %881 to i64
  %883 = icmp uge i64 %882, 265
  br i1 %883, label %884, label %887

; <label>:884                                     ; preds = %878
  %885 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %886 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %885)
  br label %912

; <label>:887                                     ; preds = %878
  %888 = load i32, i32* @zz_size, align 4
  %889 = sext i32 %888 to i64
  %890 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %889
  %891 = load %union.rec*, %union.rec** %890, align 8
  %892 = icmp eq %union.rec* %891, null
  br i1 %892, label %893, label %897

; <label>:893                                     ; preds = %887
  %894 = load i32, i32* @zz_size, align 4
  %895 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %896 = call %union.rec* @GetMemory(i32 %894, %struct.FILE_POS* %895)
  store %union.rec* %896, %union.rec** @zz_hold, align 8
  br label %911

; <label>:897                                     ; preds = %887
  %898 = load i32, i32* @zz_size, align 4
  %899 = sext i32 %898 to i64
  %900 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %899
  %901 = load %union.rec*, %union.rec** %900, align 8
  store %union.rec* %901, %union.rec** @zz_hold, align 8
  store %union.rec* %901, %union.rec** @zz_hold, align 8
  %902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %903 = bitcast %union.rec* %902 to %struct.word_type*
  %904 = getelementptr inbounds %struct.word_type, %struct.word_type* %903, i32 0, i32 0
  %905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %904, i32 0, i64 0
  %906 = getelementptr inbounds %struct.LIST, %struct.LIST* %905, i32 0, i32 0
  %907 = load %union.rec*, %union.rec** %906, align 8
  %908 = load i32, i32* @zz_size, align 4
  %909 = sext i32 %908 to i64
  %910 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %909
  store %union.rec* %907, %union.rec** %910, align 8
  br label %911

; <label>:911                                     ; preds = %897, %893
  br label %912

; <label>:912                                     ; preds = %911, %884
  %913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %914 = bitcast %union.rec* %913 to %struct.word_type*
  %915 = getelementptr inbounds %struct.word_type, %struct.word_type* %914, i32 0, i32 1
  %916 = bitcast %union.FIRST_UNION* %915 to %struct.anon*
  %917 = getelementptr inbounds %struct.anon, %struct.anon* %916, i32 0, i32 0
  store i8 0, i8* %917, align 1
  %918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %920 = bitcast %union.rec* %919 to %struct.word_type*
  %921 = getelementptr inbounds %struct.word_type, %struct.word_type* %920, i32 0, i32 0
  %922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %921, i32 0, i64 1
  %923 = getelementptr inbounds %struct.LIST, %struct.LIST* %922, i32 0, i32 1
  store %union.rec* %918, %union.rec** %923, align 8
  %924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %925 = bitcast %union.rec* %924 to %struct.word_type*
  %926 = getelementptr inbounds %struct.word_type, %struct.word_type* %925, i32 0, i32 0
  %927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %926, i32 0, i64 1
  %928 = getelementptr inbounds %struct.LIST, %struct.LIST* %927, i32 0, i32 0
  store %union.rec* %918, %union.rec** %928, align 8
  %929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %930 = bitcast %union.rec* %929 to %struct.word_type*
  %931 = getelementptr inbounds %struct.word_type, %struct.word_type* %930, i32 0, i32 0
  %932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %931, i32 0, i64 0
  %933 = getelementptr inbounds %struct.LIST, %struct.LIST* %932, i32 0, i32 1
  store %union.rec* %918, %union.rec** %933, align 8
  %934 = load %union.rec*, %union.rec** @zz_hold, align 8
  %935 = bitcast %union.rec* %934 to %struct.word_type*
  %936 = getelementptr inbounds %struct.word_type, %struct.word_type* %935, i32 0, i32 0
  %937 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %936, i32 0, i64 0
  %938 = getelementptr inbounds %struct.LIST, %struct.LIST* %937, i32 0, i32 0
  store %union.rec* %918, %union.rec** %938, align 8
  store %union.rec* %918, %union.rec** @xx_link, align 8
  %939 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %939, %union.rec** @zz_res, align 8
  %940 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %940, %union.rec** @zz_hold, align 8
  %941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %942 = icmp eq %union.rec* %941, null
  br i1 %942, label %943, label %945

; <label>:943                                     ; preds = %912
  %944 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %993

; <label>:945                                     ; preds = %912
  %946 = load %union.rec*, %union.rec** @zz_res, align 8
  %947 = icmp eq %union.rec* %946, null
  br i1 %947, label %948, label %950

; <label>:948                                     ; preds = %945
  %949 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %991

; <label>:950                                     ; preds = %945
  %951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %952 = bitcast %union.rec* %951 to %struct.word_type*
  %953 = getelementptr inbounds %struct.word_type, %struct.word_type* %952, i32 0, i32 0
  %954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %953, i32 0, i64 0
  %955 = getelementptr inbounds %struct.LIST, %struct.LIST* %954, i32 0, i32 0
  %956 = load %union.rec*, %union.rec** %955, align 8
  store %union.rec* %956, %union.rec** @zz_tmp, align 8
  %957 = load %union.rec*, %union.rec** @zz_res, align 8
  %958 = bitcast %union.rec* %957 to %struct.word_type*
  %959 = getelementptr inbounds %struct.word_type, %struct.word_type* %958, i32 0, i32 0
  %960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %959, i32 0, i64 0
  %961 = getelementptr inbounds %struct.LIST, %struct.LIST* %960, i32 0, i32 0
  %962 = load %union.rec*, %union.rec** %961, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 0
  %966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %965, i32 0, i64 0
  %967 = getelementptr inbounds %struct.LIST, %struct.LIST* %966, i32 0, i32 0
  store %union.rec* %962, %union.rec** %967, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = load %union.rec*, %union.rec** @zz_res, align 8
  %970 = bitcast %union.rec* %969 to %struct.word_type*
  %971 = getelementptr inbounds %struct.word_type, %struct.word_type* %970, i32 0, i32 0
  %972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %971, i32 0, i64 0
  %973 = getelementptr inbounds %struct.LIST, %struct.LIST* %972, i32 0, i32 0
  %974 = load %union.rec*, %union.rec** %973, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 0
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 1
  store %union.rec* %968, %union.rec** %978, align 8
  %979 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %980 = load %union.rec*, %union.rec** @zz_res, align 8
  %981 = bitcast %union.rec* %980 to %struct.word_type*
  %982 = getelementptr inbounds %struct.word_type, %struct.word_type* %981, i32 0, i32 0
  %983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %982, i32 0, i64 0
  %984 = getelementptr inbounds %struct.LIST, %struct.LIST* %983, i32 0, i32 0
  store %union.rec* %979, %union.rec** %984, align 8
  %985 = load %union.rec*, %union.rec** @zz_res, align 8
  %986 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %987 = bitcast %union.rec* %986 to %struct.word_type*
  %988 = getelementptr inbounds %struct.word_type, %struct.word_type* %987, i32 0, i32 0
  %989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %988, i32 0, i64 0
  %990 = getelementptr inbounds %struct.LIST, %struct.LIST* %989, i32 0, i32 1
  store %union.rec* %985, %union.rec** %990, align 8
  br label %991

; <label>:991                                     ; preds = %950, %948
  %992 = phi %union.rec* [ %949, %948 ], [ %985, %950 ]
  br label %993

; <label>:993                                     ; preds = %991, %943
  %994 = phi %union.rec* [ %944, %943 ], [ %992, %991 ]
  %995 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %995, %union.rec** @zz_res, align 8
  %996 = load %union.rec*, %union.rec** %3, align 8
  store %union.rec* %996, %union.rec** @zz_hold, align 8
  %997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %998 = icmp eq %union.rec* %997, null
  br i1 %998, label %999, label %1001

; <label>:999                                     ; preds = %993
  %1000 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1049

; <label>:1001                                    ; preds = %993
  %1002 = load %union.rec*, %union.rec** @zz_res, align 8
  %1003 = icmp eq %union.rec* %1002, null
  br i1 %1003, label %1004, label %1006

; <label>:1004                                    ; preds = %1001
  %1005 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1047

; <label>:1006                                    ; preds = %1001
  %1007 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1008 = bitcast %union.rec* %1007 to %struct.word_type*
  %1009 = getelementptr inbounds %struct.word_type, %struct.word_type* %1008, i32 0, i32 0
  %1010 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1009, i32 0, i64 1
  %1011 = getelementptr inbounds %struct.LIST, %struct.LIST* %1010, i32 0, i32 0
  %1012 = load %union.rec*, %union.rec** %1011, align 8
  store %union.rec* %1012, %union.rec** @zz_tmp, align 8
  %1013 = load %union.rec*, %union.rec** @zz_res, align 8
  %1014 = bitcast %union.rec* %1013 to %struct.word_type*
  %1015 = getelementptr inbounds %struct.word_type, %struct.word_type* %1014, i32 0, i32 0
  %1016 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1015, i32 0, i64 1
  %1017 = getelementptr inbounds %struct.LIST, %struct.LIST* %1016, i32 0, i32 0
  %1018 = load %union.rec*, %union.rec** %1017, align 8
  %1019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1020 = bitcast %union.rec* %1019 to %struct.word_type*
  %1021 = getelementptr inbounds %struct.word_type, %struct.word_type* %1020, i32 0, i32 0
  %1022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1021, i32 0, i64 1
  %1023 = getelementptr inbounds %struct.LIST, %struct.LIST* %1022, i32 0, i32 0
  store %union.rec* %1018, %union.rec** %1023, align 8
  %1024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1025 = load %union.rec*, %union.rec** @zz_res, align 8
  %1026 = bitcast %union.rec* %1025 to %struct.word_type*
  %1027 = getelementptr inbounds %struct.word_type, %struct.word_type* %1026, i32 0, i32 0
  %1028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1027, i32 0, i64 1
  %1029 = getelementptr inbounds %struct.LIST, %struct.LIST* %1028, i32 0, i32 0
  %1030 = load %union.rec*, %union.rec** %1029, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.word_type*
  %1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %1031, i32 0, i32 0
  %1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1032, i32 0, i64 1
  %1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %1033, i32 0, i32 1
  store %union.rec* %1024, %union.rec** %1034, align 8
  %1035 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1036 = load %union.rec*, %union.rec** @zz_res, align 8
  %1037 = bitcast %union.rec* %1036 to %struct.word_type*
  %1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1038, i32 0, i64 1
  %1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %1039, i32 0, i32 0
  store %union.rec* %1035, %union.rec** %1040, align 8
  %1041 = load %union.rec*, %union.rec** @zz_res, align 8
  %1042 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1043 = bitcast %union.rec* %1042 to %struct.word_type*
  %1044 = getelementptr inbounds %struct.word_type, %struct.word_type* %1043, i32 0, i32 0
  %1045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1044, i32 0, i64 1
  %1046 = getelementptr inbounds %struct.LIST, %struct.LIST* %1045, i32 0, i32 1
  store %union.rec* %1041, %union.rec** %1046, align 8
  br label %1047

; <label>:1047                                    ; preds = %1006, %1004
  %1048 = phi %union.rec* [ %1005, %1004 ], [ %1041, %1006 ]
  br label %1049

; <label>:1049                                    ; preds = %1047, %999
  %1050 = phi %union.rec* [ %1000, %999 ], [ %1048, %1047 ]
  %1051 = load i32, i32* @cache_count, align 4
  %1052 = add nsw i32 %1051, 1
  store i32 %1052, i32* @cache_count, align 4
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
