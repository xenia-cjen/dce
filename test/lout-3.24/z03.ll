; ModuleID = 'z03.c'
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
%struct.anon.14 = type { i32, i32, [1 x %struct.filetab_rec] }
%struct.filetab_rec = type { %union.rec*, %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }

@no_fpos = global %struct.FILE_POS* bitcast ({ i8, i8, i16, i8, i8, i8, i8 }* @no_file_pos to %struct.FILE_POS*), align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@file_type = internal global [11 x %union.rec*] zeroinitializer, align 16
@file_path = internal global [8 x %union.rec*] zeroinitializer, align 16
@file_tab = internal global %struct.anon.14* null, align 8
@empty_path = internal global %union.rec* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"DefineFile: ftype!\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.5 = private unnamed_addr constant [44 x i8] c"database file %s where source file expected\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c".li\00", align 1
@.str.7 = private unnamed_addr constant [50 x i8] c"database index file %s where source file expected\00", align 1
@.str.8 = private unnamed_addr constant [27 x i8] c"file name %s%s is too long\00", align 1
@.str.9 = private unnamed_addr constant [46 x i8] c"DatabaseFileNum: filter file position unknown\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"DatabaseFileNum: unexpected file type\00", align 1
@.str.11 = private unnamed_addr constant [23 x i8] c"FileName: x == nilobj!\00", align 1
@FullFileName.ffbuff = internal global [2 x [512 x i8]] zeroinitializer, align 16
@FullFileName.ffbp = internal global i32 1, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c".lt\00", align 1
@bp = internal global i32 1, align 4
@buff = internal global [2 x [512 x i8]] zeroinitializer, align 16
@.str.13 = private unnamed_addr constant [2 x i8] c":\00", align 1
@.str.14 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"EchoFileSource: x == nilobj!\00", align 1
@MsgCat = external global i8*, align 8
@.str.16 = private unnamed_addr constant [7 x i8] c"filter\00", align 1
@.str.17 = private unnamed_addr constant [5 x i8] c"file\00", align 1
@.str.18 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c" (\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"from\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"line\00", align 1
@.str.22 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c")\00", align 1
@.str.24 = private unnamed_addr constant [2 x i8] c",\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"PosOfFile: file_tab entry is nilobj!\00", align 1
@file_mode = internal global [11 x i8*] [i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0)], align 16
@.str.26 = private unnamed_addr constant [20 x i8] c"OpenIncGraphicFile!\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@compress_suffixes = internal global [6 x i8*] [i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.44, i32 0, i32 0)], align 16
@.str.28 = private unnamed_addr constant [18 x i8] c"gunzip -c %s > %s\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"lout.eps\00", align 1
@SafeExecution = external global i32, align 4
@.str.30 = private unnamed_addr constant [39 x i8] c"safe execution prohibiting command: %s\00", align 1
@no_file_pos = internal global { i8, i8, i16, i8, i8, i8, i8 } zeroinitializer, align 4
@.str.31 = private unnamed_addr constant [44 x i8] c"run out of memory when enlarging file table\00", align 1
@.str.32 = private unnamed_addr constant [31 x i8] c"too many files (maximum is %d)\00", align 1
@.str.33 = private unnamed_addr constant [39 x i8] c"EchoFilePos: file_tab entry is nilobj!\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"file position %s... is too long to print\00", align 1
@.str.35 = private unnamed_addr constant [2 x i8] c"/\00", align 1
@.str.36 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external global %struct._IO_FILE*, align 8
@.str.37 = private unnamed_addr constant [34 x i8] c"file path name %s%s%s is too long\00", align 1
@.str.38 = private unnamed_addr constant [27 x i8] c"files %s and %s both exist\00", align 1
@.str.39 = private unnamed_addr constant [4 x i8] c".gz\00", align 1
@.str.40 = private unnamed_addr constant [4 x i8] c"-gz\00", align 1
@.str.41 = private unnamed_addr constant [3 x i8] c".z\00", align 1
@.str.42 = private unnamed_addr constant [3 x i8] c"-z\00", align 1
@.str.43 = private unnamed_addr constant [3 x i8] c"_z\00", align 1
@.str.44 = private unnamed_addr constant [3 x i8] c".Z\00", align 1

; Function Attrs: nounwind uwtable
define void @InitFiles() #0 {
  %i = alloca i32, align 4
  %tmp = alloca %union.rec*, align 8
  store i32 0, i32* %i, align 4
  br label %1

; <label>:1                                       ; preds = %67, %0
  %2 = load i32, i32* %i, align 4
  %3 = icmp slt i32 %2, 11
  br i1 %3, label %4, label %70

; <label>:4                                       ; preds = %1
  %5 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %6 = zext i8 %5 to i32
  store i32 %6, i32* @zz_size, align 4
  %7 = sext i32 %6 to i64
  %8 = icmp uge i64 %7, 265
  br i1 %8, label %9, label %12

; <label>:9                                       ; preds = %4
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %10)
  br label %37

; <label>:12                                      ; preds = %4
  %13 = load i32, i32* @zz_size, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %14
  %16 = load %union.rec*, %union.rec** %15, align 8
  %17 = icmp eq %union.rec* %16, null
  br i1 %17, label %18, label %22

; <label>:18                                      ; preds = %12
  %19 = load i32, i32* @zz_size, align 4
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %21 = call %union.rec* @GetMemory(i32 %19, %struct.FILE_POS* %20)
  store %union.rec* %21, %union.rec** @zz_hold, align 8
  br label %36

; <label>:22                                      ; preds = %12
  %23 = load i32, i32* @zz_size, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %24
  %26 = load %union.rec*, %union.rec** %25, align 8
  store %union.rec* %26, %union.rec** @zz_hold, align 8
  store %union.rec* %26, %union.rec** @zz_hold, align 8
  %27 = load %union.rec*, %union.rec** @zz_hold, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %29, i32 0, i64 0
  %31 = getelementptr inbounds %struct.LIST, %struct.LIST* %30, i32 0, i32 0
  %32 = load %union.rec*, %union.rec** %31, align 8
  %33 = load i32, i32* @zz_size, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %34
  store %union.rec* %32, %union.rec** %35, align 8
  br label %36

; <label>:36                                      ; preds = %22, %18
  br label %37

; <label>:37                                      ; preds = %36, %9
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 1
  %41 = bitcast %union.FIRST_UNION* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 0
  store i8 17, i8* %42, align 1
  %43 = load %union.rec*, %union.rec** @zz_hold, align 8
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 0
  %47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %46, i32 0, i64 1
  %48 = getelementptr inbounds %struct.LIST, %struct.LIST* %47, i32 0, i32 1
  store %union.rec* %43, %union.rec** %48, align 8
  %49 = load %union.rec*, %union.rec** @zz_hold, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %51, i32 0, i64 1
  %53 = getelementptr inbounds %struct.LIST, %struct.LIST* %52, i32 0, i32 0
  store %union.rec* %43, %union.rec** %53, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 0
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  store %union.rec* %43, %union.rec** %58, align 8
  %59 = load %union.rec*, %union.rec** @zz_hold, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 0
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 0
  store %union.rec* %43, %union.rec** %63, align 8
  %64 = load i32, i32* %i, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [11 x %union.rec*], [11 x %union.rec*]* @file_type, i32 0, i64 %65
  store %union.rec* %43, %union.rec** %66, align 8
  br label %67

; <label>:67                                      ; preds = %37
  %68 = load i32, i32* %i, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %i, align 4
  br label %1

; <label>:70                                      ; preds = %1
  store i32 0, i32* %i, align 4
  br label %71

; <label>:71                                      ; preds = %137, %70
  %72 = load i32, i32* %i, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %140

; <label>:74                                      ; preds = %71
  %75 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %76 = zext i8 %75 to i32
  store i32 %76, i32* @zz_size, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp uge i64 %77, 265
  br i1 %78, label %79, label %82

; <label>:79                                      ; preds = %74
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %81 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %80)
  br label %107

; <label>:82                                      ; preds = %74
  %83 = load i32, i32* @zz_size, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %84
  %86 = load %union.rec*, %union.rec** %85, align 8
  %87 = icmp eq %union.rec* %86, null
  br i1 %87, label %88, label %92

; <label>:88                                      ; preds = %82
  %89 = load i32, i32* @zz_size, align 4
  %90 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %91 = call %union.rec* @GetMemory(i32 %89, %struct.FILE_POS* %90)
  store %union.rec* %91, %union.rec** @zz_hold, align 8
  br label %106

; <label>:92                                      ; preds = %82
  %93 = load i32, i32* @zz_size, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %94
  %96 = load %union.rec*, %union.rec** %95, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  store %union.rec* %96, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 0
  %100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %99, i32 0, i64 0
  %101 = getelementptr inbounds %struct.LIST, %struct.LIST* %100, i32 0, i32 0
  %102 = load %union.rec*, %union.rec** %101, align 8
  %103 = load i32, i32* @zz_size, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %104
  store %union.rec* %102, %union.rec** %105, align 8
  br label %106

; <label>:106                                     ; preds = %92, %88
  br label %107

; <label>:107                                     ; preds = %106, %79
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 1
  %111 = bitcast %union.FIRST_UNION* %110 to %struct.anon*
  %112 = getelementptr inbounds %struct.anon, %struct.anon* %111, i32 0, i32 0
  store i8 17, i8* %112, align 1
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = load %union.rec*, %union.rec** @zz_hold, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 1
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 1
  store %union.rec* %113, %union.rec** %118, align 8
  %119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %121, i32 0, i64 1
  %123 = getelementptr inbounds %struct.LIST, %struct.LIST* %122, i32 0, i32 0
  store %union.rec* %113, %union.rec** %123, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 0
  %127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %126, i32 0, i64 0
  %128 = getelementptr inbounds %struct.LIST, %struct.LIST* %127, i32 0, i32 1
  store %union.rec* %113, %union.rec** %128, align 8
  %129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 0
  %132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %131, i32 0, i64 0
  %133 = getelementptr inbounds %struct.LIST, %struct.LIST* %132, i32 0, i32 0
  store %union.rec* %113, %union.rec** %133, align 8
  %134 = load i32, i32* %i, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %135
  store %union.rec* %113, %union.rec** %136, align 8
  br label %137

; <label>:137                                     ; preds = %107
  %138 = load i32, i32* %i, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %i, align 4
  br label %71

; <label>:140                                     ; preds = %71
  %141 = call %struct.anon.14* @ftab_new(i32 3)
  store %struct.anon.14* %141, %struct.anon.14** @file_tab, align 8
  %142 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %143 = zext i8 %142 to i32
  store i32 %143, i32* @zz_size, align 4
  %144 = sext i32 %143 to i64
  %145 = icmp uge i64 %144, 265
  br i1 %145, label %146, label %149

; <label>:146                                     ; preds = %140
  %147 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %148 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %147)
  br label %174

; <label>:149                                     ; preds = %140
  %150 = load i32, i32* @zz_size, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %151
  %153 = load %union.rec*, %union.rec** %152, align 8
  %154 = icmp eq %union.rec* %153, null
  br i1 %154, label %155, label %159

; <label>:155                                     ; preds = %149
  %156 = load i32, i32* @zz_size, align 4
  %157 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %158 = call %union.rec* @GetMemory(i32 %156, %struct.FILE_POS* %157)
  store %union.rec* %158, %union.rec** @zz_hold, align 8
  br label %173

; <label>:159                                     ; preds = %149
  %160 = load i32, i32* @zz_size, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %161
  %163 = load %union.rec*, %union.rec** %162, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %166, i32 0, i64 0
  %168 = getelementptr inbounds %struct.LIST, %struct.LIST* %167, i32 0, i32 0
  %169 = load %union.rec*, %union.rec** %168, align 8
  %170 = load i32, i32* @zz_size, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %171
  store %union.rec* %169, %union.rec** %172, align 8
  br label %173

; <label>:173                                     ; preds = %159, %155
  br label %174

; <label>:174                                     ; preds = %173, %146
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 1
  %178 = bitcast %union.FIRST_UNION* %177 to %struct.anon*
  %179 = getelementptr inbounds %struct.anon, %struct.anon* %178, i32 0, i32 0
  store i8 17, i8* %179, align 1
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %182 = bitcast %union.rec* %181 to %struct.word_type*
  %183 = getelementptr inbounds %struct.word_type, %struct.word_type* %182, i32 0, i32 0
  %184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %183, i32 0, i64 1
  %185 = getelementptr inbounds %struct.LIST, %struct.LIST* %184, i32 0, i32 1
  store %union.rec* %180, %union.rec** %185, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 0
  %189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %188, i32 0, i64 1
  %190 = getelementptr inbounds %struct.LIST, %struct.LIST* %189, i32 0, i32 0
  store %union.rec* %180, %union.rec** %190, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 0
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 1
  store %union.rec* %180, %union.rec** %195, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 0
  %199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %198, i32 0, i64 0
  %200 = getelementptr inbounds %struct.LIST, %struct.LIST* %199, i32 0, i32 0
  store %union.rec* %180, %union.rec** %200, align 8
  store %union.rec* %180, %union.rec** @empty_path, align 8
  %201 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %202 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %201)
  store %union.rec* %202, %union.rec** %tmp, align 8
  %203 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %204 = zext i8 %203 to i32
  store i32 %204, i32* @zz_size, align 4
  %205 = sext i32 %204 to i64
  %206 = icmp uge i64 %205, 265
  br i1 %206, label %207, label %210

; <label>:207                                     ; preds = %174
  %208 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %209 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %208)
  br label %235

; <label>:210                                     ; preds = %174
  %211 = load i32, i32* @zz_size, align 4
  %212 = sext i32 %211 to i64
  %213 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %212
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = icmp eq %union.rec* %214, null
  br i1 %215, label %216, label %220

; <label>:216                                     ; preds = %210
  %217 = load i32, i32* @zz_size, align 4
  %218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %219 = call %union.rec* @GetMemory(i32 %217, %struct.FILE_POS* %218)
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  br label %234

; <label>:220                                     ; preds = %210
  %221 = load i32, i32* @zz_size, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %222
  %224 = load %union.rec*, %union.rec** %223, align 8
  store %union.rec* %224, %union.rec** @zz_hold, align 8
  store %union.rec* %224, %union.rec** @zz_hold, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load i32, i32* @zz_size, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %232
  store %union.rec* %230, %union.rec** %233, align 8
  br label %234

; <label>:234                                     ; preds = %220, %216
  br label %235

; <label>:235                                     ; preds = %234, %207
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 1
  %239 = bitcast %union.FIRST_UNION* %238 to %struct.anon*
  %240 = getelementptr inbounds %struct.anon, %struct.anon* %239, i32 0, i32 0
  store i8 0, i8* %240, align 1
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 1
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 1
  store %union.rec* %241, %union.rec** %246, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 0
  %250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %249, i32 0, i64 1
  %251 = getelementptr inbounds %struct.LIST, %struct.LIST* %250, i32 0, i32 0
  store %union.rec* %241, %union.rec** %251, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %253 = bitcast %union.rec* %252 to %struct.word_type*
  %254 = getelementptr inbounds %struct.word_type, %struct.word_type* %253, i32 0, i32 0
  %255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %254, i32 0, i64 0
  %256 = getelementptr inbounds %struct.LIST, %struct.LIST* %255, i32 0, i32 1
  store %union.rec* %241, %union.rec** %256, align 8
  %257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  store %union.rec* %241, %union.rec** %261, align 8
  store %union.rec* %241, %union.rec** @xx_link, align 8
  %262 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %262, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** @empty_path, align 8
  store %union.rec* %263, %union.rec** @zz_hold, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = icmp eq %union.rec* %264, null
  br i1 %265, label %266, label %268

; <label>:266                                     ; preds = %235
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %316

; <label>:268                                     ; preds = %235
  %269 = load %union.rec*, %union.rec** @zz_res, align 8
  %270 = icmp eq %union.rec* %269, null
  br i1 %270, label %271, label %273

; <label>:271                                     ; preds = %268
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %314

; <label>:273                                     ; preds = %268
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 0
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 0
  %279 = load %union.rec*, %union.rec** %278, align 8
  store %union.rec* %279, %union.rec** @zz_tmp, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 0
  %283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %282, i32 0, i64 0
  %284 = getelementptr inbounds %struct.LIST, %struct.LIST* %283, i32 0, i32 0
  %285 = load %union.rec*, %union.rec** %284, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 0
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 0
  store %union.rec* %285, %union.rec** %290, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %294, i32 0, i64 0
  %296 = getelementptr inbounds %struct.LIST, %struct.LIST* %295, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %296, align 8
  %298 = bitcast %union.rec* %297 to %struct.word_type*
  %299 = getelementptr inbounds %struct.word_type, %struct.word_type* %298, i32 0, i32 0
  %300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %299, i32 0, i64 0
  %301 = getelementptr inbounds %struct.LIST, %struct.LIST* %300, i32 0, i32 1
  store %union.rec* %291, %union.rec** %301, align 8
  %302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %305, i32 0, i64 0
  %307 = getelementptr inbounds %struct.LIST, %struct.LIST* %306, i32 0, i32 0
  store %union.rec* %302, %union.rec** %307, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  %309 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 0
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 1
  store %union.rec* %308, %union.rec** %313, align 8
  br label %314

; <label>:314                                     ; preds = %273, %271
  %315 = phi %union.rec* [ %272, %271 ], [ %308, %273 ]
  br label %316

; <label>:316                                     ; preds = %314, %266
  %317 = phi %union.rec* [ %267, %266 ], [ %315, %314 ]
  %318 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %318, %union.rec** @zz_res, align 8
  %319 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %319, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %321 = icmp eq %union.rec* %320, null
  br i1 %321, label %322, label %324

; <label>:322                                     ; preds = %316
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %372

; <label>:324                                     ; preds = %316
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %326 = icmp eq %union.rec* %325, null
  br i1 %326, label %327, label %329

; <label>:327                                     ; preds = %324
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %370

; <label>:329                                     ; preds = %324
  %330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 0
  %333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %332, i32 0, i64 1
  %334 = getelementptr inbounds %struct.LIST, %struct.LIST* %333, i32 0, i32 0
  %335 = load %union.rec*, %union.rec** %334, align 8
  store %union.rec* %335, %union.rec** @zz_tmp, align 8
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  %337 = bitcast %union.rec* %336 to %struct.word_type*
  %338 = getelementptr inbounds %struct.word_type, %struct.word_type* %337, i32 0, i32 0
  %339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %338, i32 0, i64 1
  %340 = getelementptr inbounds %struct.LIST, %struct.LIST* %339, i32 0, i32 0
  %341 = load %union.rec*, %union.rec** %340, align 8
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 0
  %345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %344, i32 0, i64 1
  %346 = getelementptr inbounds %struct.LIST, %struct.LIST* %345, i32 0, i32 0
  store %union.rec* %341, %union.rec** %346, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = load %union.rec*, %union.rec** @zz_res, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 0
  %351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %350, i32 0, i64 1
  %352 = getelementptr inbounds %struct.LIST, %struct.LIST* %351, i32 0, i32 0
  %353 = load %union.rec*, %union.rec** %352, align 8
  %354 = bitcast %union.rec* %353 to %struct.word_type*
  %355 = getelementptr inbounds %struct.word_type, %struct.word_type* %354, i32 0, i32 0
  %356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %355, i32 0, i64 1
  %357 = getelementptr inbounds %struct.LIST, %struct.LIST* %356, i32 0, i32 1
  store %union.rec* %347, %union.rec** %357, align 8
  %358 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %359 = load %union.rec*, %union.rec** @zz_res, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 0
  %362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %361, i32 0, i64 1
  %363 = getelementptr inbounds %struct.LIST, %struct.LIST* %362, i32 0, i32 0
  store %union.rec* %358, %union.rec** %363, align 8
  %364 = load %union.rec*, %union.rec** @zz_res, align 8
  %365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 0
  %368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %367, i32 0, i64 1
  %369 = getelementptr inbounds %struct.LIST, %struct.LIST* %368, i32 0, i32 1
  store %union.rec* %364, %union.rec** %369, align 8
  br label %370

; <label>:370                                     ; preds = %329, %327
  %371 = phi %union.rec* [ %328, %327 ], [ %364, %329 ]
  br label %372

; <label>:372                                     ; preds = %370, %322
  %373 = phi %union.rec* [ %323, %322 ], [ %371, %370 ]
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ftab_new(i32 %newsize) #0 {
  %1 = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 16
  %5 = add i64 8, %4
  %6 = call noalias i8* @malloc(i64 %5) #4
  %7 = bitcast i8* %6 to %struct.anon.14*
  store %struct.anon.14* %7, %struct.anon.14** %S, align 8
  %8 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %9 = icmp eq %struct.anon.14* %8, null
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  %15 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %16 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %18 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %17, i32 0, i32 1
  store i32 0, i32* %18, align 4
  store i32 0, i32* %i, align 4
  br label %19

; <label>:19                                      ; preds = %36, %13
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %27 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %26, i32 0, i32 2
  %28 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %27, i32 0, i64 %25
  %29 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %28, i32 0, i32 1
  store %union.rec* null, %union.rec** %29, align 8
  %30 = load i32, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %33 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %32, i32 0, i32 2
  %34 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %33, i32 0, i64 %31
  %35 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %34, i32 0, i32 0
  store %union.rec* null, %union.rec** %35, align 8
  br label %36

; <label>:36                                      ; preds = %23
  %37 = load i32, i32* %i, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %i, align 4
  br label %19

; <label>:39                                      ; preds = %19
  %40 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %40
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @AddToPath(i32 %fpath, %union.rec* %dirname) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  store i32 %fpath, i32* %1, align 4
  store %union.rec* %dirname, %union.rec** %2, align 8
  %3 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %4 = zext i8 %3 to i32
  store i32 %4, i32* @zz_size, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %5, 265
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %8)
  br label %35

; <label>:10                                      ; preds = %0
  %11 = load i32, i32* @zz_size, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %12
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = icmp eq %union.rec* %14, null
  br i1 %15, label %16, label %20

; <label>:16                                      ; preds = %10
  %17 = load i32, i32* @zz_size, align 4
  %18 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %19 = call %union.rec* @GetMemory(i32 %17, %struct.FILE_POS* %18)
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  br label %34

; <label>:20                                      ; preds = %10
  %21 = load i32, i32* @zz_size, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %22
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  store %union.rec* %24, %union.rec** @zz_hold, align 8
  %25 = load %union.rec*, %union.rec** @zz_hold, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 0
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load i32, i32* @zz_size, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %32
  store %union.rec* %30, %union.rec** %33, align 8
  br label %34

; <label>:34                                      ; preds = %20, %16
  br label %35

; <label>:35                                      ; preds = %34, %7
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  store i8 0, i8* %40, align 1
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %42 = load %union.rec*, %union.rec** @zz_hold, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 1
  store %union.rec* %41, %union.rec** %46, align 8
  %47 = load %union.rec*, %union.rec** @zz_hold, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  store %union.rec* %41, %union.rec** %51, align 8
  %52 = load %union.rec*, %union.rec** @zz_hold, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 0
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  store %union.rec* %41, %union.rec** %56, align 8
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 0
  %60 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %59, i32 0, i64 0
  %61 = getelementptr inbounds %struct.LIST, %struct.LIST* %60, i32 0, i32 0
  store %union.rec* %41, %union.rec** %61, align 8
  store %union.rec* %41, %union.rec** @xx_link, align 8
  %62 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %62, %union.rec** @zz_res, align 8
  %63 = load i32, i32* %1, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %64
  %66 = load %union.rec*, %union.rec** %65, align 8
  store %union.rec* %66, %union.rec** @zz_hold, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = icmp eq %union.rec* %67, null
  br i1 %68, label %69, label %71

; <label>:69                                      ; preds = %35
  %70 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %119

; <label>:71                                      ; preds = %35
  %72 = load %union.rec*, %union.rec** @zz_res, align 8
  %73 = icmp eq %union.rec* %72, null
  br i1 %73, label %74, label %76

; <label>:74                                      ; preds = %71
  %75 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %117

; <label>:76                                      ; preds = %71
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 0
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 0
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** @zz_tmp, align 8
  %83 = load %union.rec*, %union.rec** @zz_res, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 0
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 0
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 0
  store %union.rec* %88, %union.rec** %93, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_res, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 0
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %99, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 0
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 1
  store %union.rec* %94, %union.rec** %104, align 8
  %105 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %106 = load %union.rec*, %union.rec** @zz_res, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 0
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  store %union.rec* %105, %union.rec** %110, align 8
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  %112 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 0
  %115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %114, i32 0, i64 0
  %116 = getelementptr inbounds %struct.LIST, %struct.LIST* %115, i32 0, i32 1
  store %union.rec* %111, %union.rec** %116, align 8
  br label %117

; <label>:117                                     ; preds = %76, %74
  %118 = phi %union.rec* [ %75, %74 ], [ %111, %76 ]
  br label %119

; <label>:119                                     ; preds = %117, %69
  %120 = phi %union.rec* [ %70, %69 ], [ %118, %117 ]
  %121 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %121, %union.rec** @zz_res, align 8
  %122 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %122, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = icmp eq %union.rec* %123, null
  br i1 %124, label %125, label %127

; <label>:125                                     ; preds = %119
  %126 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %175

; <label>:127                                     ; preds = %119
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  %129 = icmp eq %union.rec* %128, null
  br i1 %129, label %130, label %132

; <label>:130                                     ; preds = %127
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %173

; <label>:132                                     ; preds = %127
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 1
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 0
  %138 = load %union.rec*, %union.rec** %137, align 8
  store %union.rec* %138, %union.rec** @zz_tmp, align 8
  %139 = load %union.rec*, %union.rec** @zz_res, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 0
  %142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %141, i32 0, i64 1
  %143 = getelementptr inbounds %struct.LIST, %struct.LIST* %142, i32 0, i32 0
  %144 = load %union.rec*, %union.rec** %143, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 0
  %148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %147, i32 0, i64 1
  %149 = getelementptr inbounds %struct.LIST, %struct.LIST* %148, i32 0, i32 0
  store %union.rec* %144, %union.rec** %149, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %153, i32 0, i64 1
  %155 = getelementptr inbounds %struct.LIST, %struct.LIST* %154, i32 0, i32 0
  %156 = load %union.rec*, %union.rec** %155, align 8
  %157 = bitcast %union.rec* %156 to %struct.word_type*
  %158 = getelementptr inbounds %struct.word_type, %struct.word_type* %157, i32 0, i32 0
  %159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %158, i32 0, i64 1
  %160 = getelementptr inbounds %struct.LIST, %struct.LIST* %159, i32 0, i32 1
  store %union.rec* %150, %union.rec** %160, align 8
  %161 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %162 = load %union.rec*, %union.rec** @zz_res, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 0
  %165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %164, i32 0, i64 1
  %166 = getelementptr inbounds %struct.LIST, %struct.LIST* %165, i32 0, i32 0
  store %union.rec* %161, %union.rec** %166, align 8
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  %168 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 0
  %171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %170, i32 0, i64 1
  %172 = getelementptr inbounds %struct.LIST, %struct.LIST* %171, i32 0, i32 1
  store %union.rec* %167, %union.rec** %172, align 8
  br label %173

; <label>:173                                     ; preds = %132, %130
  %174 = phi %union.rec* [ %131, %130 ], [ %167, %132 ]
  br label %175

; <label>:175                                     ; preds = %173, %125
  %176 = phi %union.rec* [ %126, %125 ], [ %174, %173 ]
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @DefineFile(i8* %str, i8* %suffix, %struct.FILE_POS* %xfpos, i32 %ftype, i32 %fpath) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.FILE_POS*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %i = alloca i32, align 4
  %fname = alloca %union.rec*, align 8
  store i8* %str, i8** %1, align 8
  store i8* %suffix, i8** %2, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %3, align 8
  store i32 %ftype, i32* %4, align 4
  store i32 %fpath, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 11
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = load i32, i32* %4, align 4
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %44

; <label>:14                                      ; preds = %11
  %15 = load i8*, i8** %1, align 8
  %16 = call i64 @strlen(i8* %15) #5
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %i, align 4
  %18 = icmp sge i32 %17, 3
  br i1 %18, label %19, label %44

; <label>:19                                      ; preds = %14
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = sub i64 %21, 3
  %23 = load i8*, i8** %1, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 %22
  %25 = call i32 @strcmp(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #5
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

; <label>:27                                      ; preds = %19
  %28 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %29 = load i8*, i8** %1, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 3, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %28, i8* %29)
  br label %31

; <label>:31                                      ; preds = %27, %19
  %32 = load i32, i32* %i, align 4
  %33 = sext i32 %32 to i64
  %34 = sub i64 %33, 3
  %35 = load i8*, i8** %1, align 8
  %36 = getelementptr inbounds i8, i8* %35, i64 %34
  %37 = call i32 @strcmp(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

; <label>:39                                      ; preds = %31
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %41 = load i8*, i8** %1, align 8
  %42 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %40, i8* %41)
  br label %43

; <label>:43                                      ; preds = %39, %31
  br label %44

; <label>:44                                      ; preds = %43, %14, %11
  %45 = load i8*, i8** %1, align 8
  %46 = call i64 @strlen(i8* %45) #5
  %47 = load i8*, i8** %2, align 8
  %48 = call i64 @strlen(i8* %47) #5
  %49 = add i64 %46, %48
  %50 = icmp uge i64 %49, 2048
  br i1 %50, label %51, label %56

; <label>:51                                      ; preds = %44
  %52 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %53 = load i8*, i8** %1, align 8
  %54 = load i8*, i8** %2, align 8
  %55 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 5, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %52, i8* %53, i8* %54)
  br label %56

; <label>:56                                      ; preds = %51, %44
  %57 = load i8*, i8** %1, align 8
  %58 = load i8*, i8** %2, align 8
  %59 = load %struct.FILE_POS*, %struct.FILE_POS** %3, align 8
  %60 = call %union.rec* @MakeWordTwo(i32 11, i8* %57, i8* %58, %struct.FILE_POS* %59)
  store %union.rec* %60, %union.rec** %fname, align 8
  %61 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* @zz_size, align 4
  %63 = sext i32 %62 to i64
  %64 = icmp uge i64 %63, 265
  br i1 %64, label %65, label %68

; <label>:65                                      ; preds = %56
  %66 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %67 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %66)
  br label %93

; <label>:68                                      ; preds = %56
  %69 = load i32, i32* @zz_size, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %70
  %72 = load %union.rec*, %union.rec** %71, align 8
  %73 = icmp eq %union.rec* %72, null
  br i1 %73, label %74, label %78

; <label>:74                                      ; preds = %68
  %75 = load i32, i32* @zz_size, align 4
  %76 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %77 = call %union.rec* @GetMemory(i32 %75, %struct.FILE_POS* %76)
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  br label %92

; <label>:78                                      ; preds = %68
  %79 = load i32, i32* @zz_size, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %80
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  %83 = load %union.rec*, %union.rec** @zz_hold, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 0
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  %89 = load i32, i32* @zz_size, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %90
  store %union.rec* %88, %union.rec** %91, align 8
  br label %92

; <label>:92                                      ; preds = %78, %74
  br label %93

; <label>:93                                      ; preds = %92, %65
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 1
  %97 = bitcast %union.FIRST_UNION* %96 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  store i8 0, i8* %98, align 1
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 1
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 1
  store %union.rec* %99, %union.rec** %104, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 1
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 0
  store %union.rec* %99, %union.rec** %109, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 0
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 1
  store %union.rec* %99, %union.rec** %114, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 0
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  store %union.rec* %99, %union.rec** %119, align 8
  store %union.rec* %99, %union.rec** @xx_link, align 8
  %120 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %120, %union.rec** @zz_res, align 8
  %121 = load i32, i32* %4, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [11 x %union.rec*], [11 x %union.rec*]* @file_type, i32 0, i64 %122
  %124 = load %union.rec*, %union.rec** %123, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = icmp eq %union.rec* %125, null
  br i1 %126, label %127, label %129

; <label>:127                                     ; preds = %93
  %128 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %177

; <label>:129                                     ; preds = %93
  %130 = load %union.rec*, %union.rec** @zz_res, align 8
  %131 = icmp eq %union.rec* %130, null
  br i1 %131, label %132, label %134

; <label>:132                                     ; preds = %129
  %133 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %175

; <label>:134                                     ; preds = %129
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 0
  %138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %137, i32 0, i64 0
  %139 = getelementptr inbounds %struct.LIST, %struct.LIST* %138, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %139, align 8
  store %union.rec* %140, %union.rec** @zz_tmp, align 8
  %141 = load %union.rec*, %union.rec** @zz_res, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 0
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %145, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %149, i32 0, i64 0
  %151 = getelementptr inbounds %struct.LIST, %struct.LIST* %150, i32 0, i32 0
  store %union.rec* %146, %union.rec** %151, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %153 = load %union.rec*, %union.rec** @zz_res, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 0
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %157, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 0
  %161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %160, i32 0, i64 0
  %162 = getelementptr inbounds %struct.LIST, %struct.LIST* %161, i32 0, i32 1
  store %union.rec* %152, %union.rec** %162, align 8
  %163 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %164 = load %union.rec*, %union.rec** @zz_res, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 0
  %167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %166, i32 0, i64 0
  %168 = getelementptr inbounds %struct.LIST, %struct.LIST* %167, i32 0, i32 0
  store %union.rec* %163, %union.rec** %168, align 8
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  %170 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 0
  %173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %172, i32 0, i64 0
  %174 = getelementptr inbounds %struct.LIST, %struct.LIST* %173, i32 0, i32 1
  store %union.rec* %169, %union.rec** %174, align 8
  br label %175

; <label>:175                                     ; preds = %134, %132
  %176 = phi %union.rec* [ %133, %132 ], [ %169, %134 ]
  br label %177

; <label>:177                                     ; preds = %175, %127
  %178 = phi %union.rec* [ %128, %127 ], [ %176, %175 ]
  %179 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %179, %union.rec** @zz_res, align 8
  %180 = load %union.rec*, %union.rec** %fname, align 8
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
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 1
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 0
  %196 = load %union.rec*, %union.rec** %195, align 8
  store %union.rec* %196, %union.rec** @zz_tmp, align 8
  %197 = load %union.rec*, %union.rec** @zz_res, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 1
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 0
  %202 = load %union.rec*, %union.rec** %201, align 8
  %203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 0
  %206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %205, i32 0, i64 1
  %207 = getelementptr inbounds %struct.LIST, %struct.LIST* %206, i32 0, i32 0
  store %union.rec* %202, %union.rec** %207, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_res, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 1
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 0
  %217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %216, i32 0, i64 1
  %218 = getelementptr inbounds %struct.LIST, %struct.LIST* %217, i32 0, i32 1
  store %union.rec* %208, %union.rec** %218, align 8
  %219 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %220 = load %union.rec*, %union.rec** @zz_res, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %222, i32 0, i64 1
  %224 = getelementptr inbounds %struct.LIST, %struct.LIST* %223, i32 0, i32 0
  store %union.rec* %219, %union.rec** %224, align 8
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %226 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 1
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 1
  store %union.rec* %225, %union.rec** %230, align 8
  br label %231

; <label>:231                                     ; preds = %190, %188
  %232 = phi %union.rec* [ %189, %188 ], [ %225, %190 ]
  br label %233

; <label>:233                                     ; preds = %231, %183
  %234 = phi %union.rec* [ %184, %183 ], [ %232, %231 ]
  %235 = load i32, i32* %5, align 4
  %236 = load %union.rec*, %union.rec** %fname, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 3
  %239 = bitcast %union.THIRD_UNION* %238 to %struct.anon.6*
  %240 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %239, i32 0, i32 0
  %241 = getelementptr inbounds [2 x i32], [2 x i32]* %240, i32 0, i64 0
  store i32 %235, i32* %241, align 4
  %242 = load %union.rec*, %union.rec** %fname, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 3
  %245 = bitcast %union.THIRD_UNION* %244 to %struct.anon.6*
  %246 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %245, i32 0, i32 1
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %246, i32 0, i64 0
  store i32 0, i32* %247, align 4
  %248 = load %union.rec*, %union.rec** %fname, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 3
  %251 = bitcast %union.THIRD_UNION* %250 to %struct.anon.6*
  %252 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %251, i32 0, i32 1
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %252, i32 0, i64 1
  store i32 0, i32* %253, align 4
  %254 = load i32, i32* %4, align 4
  %255 = load %union.rec*, %union.rec** %fname, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 2
  %258 = bitcast %union.SECOND_UNION* %257 to %struct.anon.1*
  %259 = bitcast %struct.anon.1* %258 to i32*
  %260 = load i32, i32* %259, align 4
  %261 = and i32 %254, 1023
  %262 = shl i32 %261, 12
  %263 = and i32 %260, -4190209
  %264 = or i32 %263, %262
  store i32 %264, i32* %259, align 4
  %265 = load %union.rec*, %union.rec** %fname, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 2
  %268 = bitcast %union.SECOND_UNION* %267 to %struct.anon.1*
  %269 = bitcast %struct.anon.1* %268 to i32*
  %270 = load i32, i32* %269, align 4
  %271 = and i32 %270, 2147483647
  store i32 %271, i32* %269, align 4
  %272 = load %union.rec*, %union.rec** %fname, align 8
  call void @ftab_insert(%union.rec* %272, %struct.anon.14** @file_tab)
  %273 = load %union.rec*, %union.rec** %fname, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 2
  %276 = bitcast %union.SECOND_UNION* %275 to %struct.anon.1*
  %277 = bitcast %struct.anon.1* %276 to i32*
  %278 = load i32, i32* %277, align 4
  %279 = and i32 %278, 4095
  %280 = trunc i32 %279 to i16
  ret i16 %280
}

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare %union.rec* @MakeWordTwo(i32, i8*, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal void @ftab_insert(%union.rec* %x, %struct.anon.14** %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.anon.14**, align 8
  %pos = alloca i32, align 4
  %num = alloca i32, align 4
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.anon.14** %S, %struct.anon.14*** %2, align 8
  %3 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %4 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %8 = load %struct.anon.14*, %struct.anon.14** %7, align 8
  %9 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %0
  %14 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %15 = load %struct.anon.14*, %struct.anon.14** %14, align 8
  %16 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %17 = load %struct.anon.14*, %struct.anon.14** %16, align 8
  %18 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 2, %19
  %21 = call %struct.anon.14* @ftab_rehash(%struct.anon.14* %15, i32 %20)
  %22 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  store %struct.anon.14* %21, %struct.anon.14** %22, align 8
  br label %23

; <label>:23                                      ; preds = %13, %0
  %24 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %25 = load %struct.anon.14*, %struct.anon.14** %24, align 8
  %26 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  store i32 %28, i32* %num, align 4
  %29 = load i32, i32* %num, align 4
  %30 = icmp sgt i32 %29, 65535
  br i1 %30, label %31, label %37

; <label>:31                                      ; preds = %23
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 1
  %35 = bitcast %union.FIRST_UNION* %34 to %struct.FILE_POS*
  %36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 2, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.32, i32 0, i32 0), i32 1, %struct.FILE_POS* %35, i32 65535)
  br label %37

; <label>:37                                      ; preds = %31, %23
  %38 = load %union.rec*, %union.rec** %1, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 4
  %41 = getelementptr inbounds [4 x i8], [4 x i8]* %40, i32 0, i32 0
  store i8* %41, i8** %p, align 8
  %42 = load i8*, i8** %p, align 8
  %43 = getelementptr inbounds i8, i8* %42, i32 1
  store i8* %43, i8** %p, align 8
  %44 = load i8, i8* %42, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %pos, align 4
  br label %46

; <label>:46                                      ; preds = %50, %37
  %47 = load i8*, i8** %p, align 8
  %48 = load i8, i8* %47, align 1
  %49 = icmp ne i8 %48, 0
  br i1 %49, label %50, label %57

; <label>:50                                      ; preds = %46
  %51 = load i8*, i8** %p, align 8
  %52 = getelementptr inbounds i8, i8* %51, i32 1
  store i8* %52, i8** %p, align 8
  %53 = load i8, i8* %51, align 1
  %54 = zext i8 %53 to i32
  %55 = load i32, i32* %pos, align 4
  %56 = add nsw i32 %55, %54
  store i32 %56, i32* %pos, align 4
  br label %46

; <label>:57                                      ; preds = %46
  %58 = load i32, i32* %pos, align 4
  %59 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %60 = load %struct.anon.14*, %struct.anon.14** %59, align 8
  %61 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = srem i32 %58, %62
  store i32 %63, i32* %pos, align 4
  %64 = load i32, i32* %pos, align 4
  %65 = sext i32 %64 to i64
  %66 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %67 = load %struct.anon.14*, %struct.anon.14** %66, align 8
  %68 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %67, i32 0, i32 2
  %69 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %68, i32 0, i64 %65
  %70 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %69, i32 0, i32 1
  %71 = load %union.rec*, %union.rec** %70, align 8
  %72 = icmp eq %union.rec* %71, null
  br i1 %72, label %73, label %140

; <label>:73                                      ; preds = %57
  %74 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %75 = zext i8 %74 to i32
  store i32 %75, i32* @zz_size, align 4
  %76 = sext i32 %75 to i64
  %77 = icmp uge i64 %76, 265
  br i1 %77, label %78, label %81

; <label>:78                                      ; preds = %73
  %79 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %80 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %79)
  br label %106

; <label>:81                                      ; preds = %73
  %82 = load i32, i32* @zz_size, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %83
  %85 = load %union.rec*, %union.rec** %84, align 8
  %86 = icmp eq %union.rec* %85, null
  br i1 %86, label %87, label %91

; <label>:87                                      ; preds = %81
  %88 = load i32, i32* @zz_size, align 4
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %90 = call %union.rec* @GetMemory(i32 %88, %struct.FILE_POS* %89)
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  br label %105

; <label>:91                                      ; preds = %81
  %92 = load i32, i32* @zz_size, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %93
  %95 = load %union.rec*, %union.rec** %94, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  store %union.rec* %95, %union.rec** @zz_hold, align 8
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 0
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %100, align 8
  %102 = load i32, i32* @zz_size, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %103
  store %union.rec* %101, %union.rec** %104, align 8
  br label %105

; <label>:105                                     ; preds = %91, %87
  br label %106

; <label>:106                                     ; preds = %105, %78
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 1
  %110 = bitcast %union.FIRST_UNION* %109 to %struct.anon*
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %110, i32 0, i32 0
  store i8 17, i8* %111, align 1
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 1
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 1
  store %union.rec* %112, %union.rec** %117, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 1
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 0
  store %union.rec* %112, %union.rec** %122, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 0
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 1
  store %union.rec* %112, %union.rec** %127, align 8
  %128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 0
  store %union.rec* %112, %union.rec** %132, align 8
  %133 = load i32, i32* %pos, align 4
  %134 = sext i32 %133 to i64
  %135 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %136 = load %struct.anon.14*, %struct.anon.14** %135, align 8
  %137 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %136, i32 0, i32 2
  %138 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %137, i32 0, i64 %134
  %139 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %138, i32 0, i32 1
  store %union.rec* %112, %union.rec** %139, align 8
  br label %140

; <label>:140                                     ; preds = %106, %57
  %141 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %142 = zext i8 %141 to i32
  store i32 %142, i32* @zz_size, align 4
  %143 = sext i32 %142 to i64
  %144 = icmp uge i64 %143, 265
  br i1 %144, label %145, label %148

; <label>:145                                     ; preds = %140
  %146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %147 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %146)
  br label %173

; <label>:148                                     ; preds = %140
  %149 = load i32, i32* @zz_size, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %150
  %152 = load %union.rec*, %union.rec** %151, align 8
  %153 = icmp eq %union.rec* %152, null
  br i1 %153, label %154, label %158

; <label>:154                                     ; preds = %148
  %155 = load i32, i32* @zz_size, align 4
  %156 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %157 = call %union.rec* @GetMemory(i32 %155, %struct.FILE_POS* %156)
  store %union.rec* %157, %union.rec** @zz_hold, align 8
  br label %172

; <label>:158                                     ; preds = %148
  %159 = load i32, i32* @zz_size, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %160
  %162 = load %union.rec*, %union.rec** %161, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = bitcast %union.rec* %163 to %struct.word_type*
  %165 = getelementptr inbounds %struct.word_type, %struct.word_type* %164, i32 0, i32 0
  %166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %165, i32 0, i64 0
  %167 = getelementptr inbounds %struct.LIST, %struct.LIST* %166, i32 0, i32 0
  %168 = load %union.rec*, %union.rec** %167, align 8
  %169 = load i32, i32* @zz_size, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %170
  store %union.rec* %168, %union.rec** %171, align 8
  br label %172

; <label>:172                                     ; preds = %158, %154
  br label %173

; <label>:173                                     ; preds = %172, %145
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 1
  %177 = bitcast %union.FIRST_UNION* %176 to %struct.anon*
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %177, i32 0, i32 0
  store i8 0, i8* %178, align 1
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %182, i32 0, i64 1
  %184 = getelementptr inbounds %struct.LIST, %struct.LIST* %183, i32 0, i32 1
  store %union.rec* %179, %union.rec** %184, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 1
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  store %union.rec* %179, %union.rec** %189, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 0
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 1
  store %union.rec* %179, %union.rec** %194, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %197, i32 0, i64 0
  %199 = getelementptr inbounds %struct.LIST, %struct.LIST* %198, i32 0, i32 0
  store %union.rec* %179, %union.rec** %199, align 8
  store %union.rec* %179, %union.rec** @xx_link, align 8
  %200 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %200, %union.rec** @zz_res, align 8
  %201 = load i32, i32* %pos, align 4
  %202 = sext i32 %201 to i64
  %203 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %204 = load %struct.anon.14*, %struct.anon.14** %203, align 8
  %205 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %204, i32 0, i32 2
  %206 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %205, i32 0, i64 %202
  %207 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %206, i32 0, i32 1
  %208 = load %union.rec*, %union.rec** %207, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = icmp eq %union.rec* %209, null
  br i1 %210, label %211, label %213

; <label>:211                                     ; preds = %173
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %261

; <label>:213                                     ; preds = %173
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
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 0
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 0
  %224 = load %union.rec*, %union.rec** %223, align 8
  store %union.rec* %224, %union.rec** @zz_tmp, align 8
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 0
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  store %union.rec* %230, %union.rec** %235, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = load %union.rec*, %union.rec** @zz_res, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 0
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %241, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 0
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 1
  store %union.rec* %236, %union.rec** %246, align 8
  %247 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 0
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 0
  store %union.rec* %247, %union.rec** %252, align 8
  %253 = load %union.rec*, %union.rec** @zz_res, align 8
  %254 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 0
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 1
  store %union.rec* %253, %union.rec** %258, align 8
  br label %259

; <label>:259                                     ; preds = %218, %216
  %260 = phi %union.rec* [ %217, %216 ], [ %253, %218 ]
  br label %261

; <label>:261                                     ; preds = %259, %211
  %262 = phi %union.rec* [ %212, %211 ], [ %260, %259 ]
  %263 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %263, %union.rec** @zz_res, align 8
  %264 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %264, %union.rec** @zz_hold, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %266 = icmp eq %union.rec* %265, null
  br i1 %266, label %267, label %269

; <label>:267                                     ; preds = %261
  %268 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %317

; <label>:269                                     ; preds = %261
  %270 = load %union.rec*, %union.rec** @zz_res, align 8
  %271 = icmp eq %union.rec* %270, null
  br i1 %271, label %272, label %274

; <label>:272                                     ; preds = %269
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %315

; <label>:274                                     ; preds = %269
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 1
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %279, align 8
  store %union.rec* %280, %union.rec** @zz_tmp, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  %282 = bitcast %union.rec* %281 to %struct.word_type*
  %283 = getelementptr inbounds %struct.word_type, %struct.word_type* %282, i32 0, i32 0
  %284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %283, i32 0, i64 1
  %285 = getelementptr inbounds %struct.LIST, %struct.LIST* %284, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %285, align 8
  %287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 0
  %290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %289, i32 0, i64 1
  %291 = getelementptr inbounds %struct.LIST, %struct.LIST* %290, i32 0, i32 0
  store %union.rec* %286, %union.rec** %291, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = load %union.rec*, %union.rec** @zz_res, align 8
  %294 = bitcast %union.rec* %293 to %struct.word_type*
  %295 = getelementptr inbounds %struct.word_type, %struct.word_type* %294, i32 0, i32 0
  %296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %295, i32 0, i64 1
  %297 = getelementptr inbounds %struct.LIST, %struct.LIST* %296, i32 0, i32 0
  %298 = load %union.rec*, %union.rec** %297, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 0
  %301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %300, i32 0, i64 1
  %302 = getelementptr inbounds %struct.LIST, %struct.LIST* %301, i32 0, i32 1
  store %union.rec* %292, %union.rec** %302, align 8
  %303 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 1
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 0
  store %union.rec* %303, %union.rec** %308, align 8
  %309 = load %union.rec*, %union.rec** @zz_res, align 8
  %310 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 0
  %313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %312, i32 0, i64 1
  %314 = getelementptr inbounds %struct.LIST, %struct.LIST* %313, i32 0, i32 1
  store %union.rec* %309, %union.rec** %314, align 8
  br label %315

; <label>:315                                     ; preds = %274, %272
  %316 = phi %union.rec* [ %273, %272 ], [ %309, %274 ]
  br label %317

; <label>:317                                     ; preds = %315, %267
  %318 = phi %union.rec* [ %268, %267 ], [ %316, %315 ]
  %319 = load i32, i32* %num, align 4
  %320 = load %union.rec*, %union.rec** %1, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 2
  %323 = bitcast %union.SECOND_UNION* %322 to %struct.anon.1*
  %324 = bitcast %struct.anon.1* %323 to i32*
  %325 = load i32, i32* %324, align 4
  %326 = and i32 %319, 4095
  %327 = and i32 %325, -4096
  %328 = or i32 %327, %326
  store i32 %328, i32* %324, align 4
  %329 = load %union.rec*, %union.rec** %1, align 8
  %330 = load i32, i32* %num, align 4
  %331 = sext i32 %330 to i64
  %332 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %333 = load %struct.anon.14*, %struct.anon.14** %332, align 8
  %334 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %333, i32 0, i32 2
  %335 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %334, i32 0, i64 %331
  %336 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %335, i32 0, i32 0
  store %union.rec* %329, %union.rec** %336, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i16 @FirstFile(i32 %ftype) #0 {
  %1 = alloca i32, align 4
  %i = alloca i16, align 2
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store i32 %ftype, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [11 x %union.rec*], [11 x %union.rec*]* @file_type, i32 0, i64 %3
  %5 = load %union.rec*, %union.rec** %4, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 0
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %10, %union.rec** %link, align 8
  %11 = load %union.rec*, %union.rec** %link, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 1
  %14 = bitcast %union.FIRST_UNION* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 17
  br i1 %18, label %19, label %20

; <label>:19                                      ; preds = %0
  store i16 0, i16* %i, align 2
  br label %53

; <label>:20                                      ; preds = %0
  %21 = load %union.rec*, %union.rec** %link, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 0
  %24 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %23, i32 0, i64 1
  %25 = getelementptr inbounds %struct.LIST, %struct.LIST* %24, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %25, align 8
  store %union.rec* %26, %union.rec** %y, align 8
  br label %27

; <label>:27                                      ; preds = %37, %20
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
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 2
  %48 = bitcast %union.SECOND_UNION* %47 to %struct.anon.1*
  %49 = bitcast %struct.anon.1* %48 to i32*
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 4095
  %52 = trunc i32 %51 to i16
  store i16 %52, i16* %i, align 2
  br label %53

; <label>:53                                      ; preds = %44, %19
  %54 = load i16, i16* %i, align 2
  ret i16 %54
}

; Function Attrs: nounwind uwtable
define zeroext i16 @NextFile(i16 zeroext %i) #0 {
  %1 = alloca i16, align 2
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store i16 %i, i16* %1, align 2
  %2 = load i16, i16* %1, align 2
  %3 = zext i16 %2 to i64
  %4 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %5, i32 0, i64 %3
  %7 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %6, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10, i32 0, i64 1
  %12 = getelementptr inbounds %struct.LIST, %struct.LIST* %11, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %12, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 0
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 1
  %18 = load %union.rec*, %union.rec** %17, align 8
  store %union.rec* %18, %union.rec** %link, align 8
  %19 = load %union.rec*, %union.rec** %link, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 1
  %22 = bitcast %union.FIRST_UNION* %21 to %struct.anon*
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 17
  br i1 %26, label %27, label %28

; <label>:27                                      ; preds = %0
  store i16 0, i16* %1, align 2
  br label %61

; <label>:28                                      ; preds = %0
  %29 = load %union.rec*, %union.rec** %link, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 1
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %y, align 8
  br label %35

; <label>:35                                      ; preds = %45, %28
  %36 = load %union.rec*, %union.rec** %y, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

; <label>:44                                      ; preds = %35
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load %union.rec*, %union.rec** %y, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 1
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %50, align 8
  store %union.rec* %51, %union.rec** %y, align 8
  br label %35

; <label>:52                                      ; preds = %35
  %53 = load %union.rec*, %union.rec** %y, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 2
  %56 = bitcast %union.SECOND_UNION* %55 to %struct.anon.1*
  %57 = bitcast %struct.anon.1* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = and i32 %58, 4095
  %60 = trunc i32 %59 to i16
  store i16 %60, i16* %1, align 2
  br label %61

; <label>:61                                      ; preds = %52, %27
  %62 = load i16, i16* %1, align 2
  ret i16 %62
}

; Function Attrs: nounwind uwtable
define zeroext i16 @FileNum(i8* %str, i8* %suffix) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %i = alloca i32, align 4
  %fname = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  store i8* %str, i8** %1, align 8
  store i8* %suffix, i8** %2, align 8
  %3 = load i8*, i8** %1, align 8
  %4 = call i64 @strlen(i8* %3) #5
  %5 = load i8*, i8** %2, align 8
  %6 = call i64 @strlen(i8* %5) #5
  %7 = add i64 %4, %6
  %8 = icmp uge i64 %7, 512
  br i1 %8, label %9, label %14

; <label>:9                                       ; preds = %0
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %11 = load i8*, i8** %1, align 8
  %12 = load i8*, i8** %2, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %10, i8* %11, i8* %12)
  br label %14

; <label>:14                                      ; preds = %9, %0
  %15 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %16 = load i8*, i8** %1, align 8
  %17 = call i8* @strcpy(i8* %15, i8* %16) #4
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %19 = load i8*, i8** %2, align 8
  %20 = call i8* @strcat(i8* %18, i8* %19) #4
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %22 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %23 = call %union.rec* @ftab_retrieve(i8* %21, %struct.anon.14* %22)
  store %union.rec* %23, %union.rec** %fname, align 8
  %24 = load %union.rec*, %union.rec** %fname, align 8
  %25 = icmp eq %union.rec* %24, null
  br i1 %25, label %26, label %27

; <label>:26                                      ; preds = %14
  br label %35

; <label>:27                                      ; preds = %14
  %28 = load %union.rec*, %union.rec** %fname, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 2
  %31 = bitcast %union.SECOND_UNION* %30 to %struct.anon.1*
  %32 = bitcast %struct.anon.1* %31 to i32*
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 4095
  br label %35

; <label>:35                                      ; preds = %27, %26
  %36 = phi i32 [ 0, %26 ], [ %34, %27 ]
  store i32 %36, i32* %i, align 4
  %37 = load i32, i32* %i, align 4
  %38 = trunc i32 %37 to i16
  ret i16 %38
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

; Function Attrs: nounwind uwtable
define internal %union.rec* @ftab_retrieve(i8* %str, %struct.anon.14* %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.anon.14*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %2, align 8
  store %struct.anon.14* %S, %struct.anon.14** %3, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %p, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  store i32 %8, i32* %pos, align 4
  br label %9

; <label>:9                                       ; preds = %13, %0
  %10 = load i8*, i8** %p, align 8
  %11 = load i8, i8* %10, align 1
  %12 = icmp ne i8 %11, 0
  br i1 %12, label %13, label %20

; <label>:13                                      ; preds = %9
  %14 = load i8*, i8** %p, align 8
  %15 = getelementptr inbounds i8, i8* %14, i32 1
  store i8* %15, i8** %p, align 8
  %16 = load i8, i8* %14, align 1
  %17 = zext i8 %16 to i32
  %18 = load i32, i32* %pos, align 4
  %19 = add nsw i32 %18, %17
  store i32 %19, i32* %pos, align 4
  br label %9

; <label>:20                                      ; preds = %9
  %21 = load i32, i32* %pos, align 4
  %22 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %23 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  store i32 %25, i32* %pos, align 4
  %26 = load i32, i32* %pos, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.anon.14*, %struct.anon.14** %3, align 8
  %29 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %28, i32 0, i32 2
  %30 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %29, i32 0, i64 %27
  %31 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %30, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %31, align 8
  store %union.rec* %32, %union.rec** %x, align 8
  %33 = load %union.rec*, %union.rec** %x, align 8
  %34 = icmp eq %union.rec* %33, null
  br i1 %34, label %35, label %36

; <label>:35                                      ; preds = %20
  store %union.rec* null, %union.rec** %1
  br label %90

; <label>:36                                      ; preds = %20
  %37 = load %union.rec*, %union.rec** %x, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 0
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 1
  %42 = load %union.rec*, %union.rec** %41, align 8
  store %union.rec* %42, %union.rec** %link, align 8
  br label %43

; <label>:43                                      ; preds = %82, %36
  %44 = load %union.rec*, %union.rec** %link, align 8
  %45 = load %union.rec*, %union.rec** %x, align 8
  %46 = icmp ne %union.rec* %44, %45
  br i1 %46, label %47, label %89

; <label>:47                                      ; preds = %43
  %48 = load %union.rec*, %union.rec** %link, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %52, align 8
  store %union.rec* %53, %union.rec** %y, align 8
  br label %54

; <label>:54                                      ; preds = %64, %47
  %55 = load %union.rec*, %union.rec** %y, align 8
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
  %65 = load %union.rec*, %union.rec** %y, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 1
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %y, align 8
  br label %54

; <label>:71                                      ; preds = %54
  %72 = load i8*, i8** %2, align 8
  %73 = load %union.rec*, %union.rec** %y, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 4
  %76 = getelementptr inbounds [4 x i8], [4 x i8]* %75, i32 0, i32 0
  %77 = call i32 @strcmp(i8* %72, i8* %76) #5
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %81

; <label>:79                                      ; preds = %71
  %80 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %80, %union.rec** %1
  br label %90

; <label>:81                                      ; preds = %71
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load %union.rec*, %union.rec** %link, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 0
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 1
  %88 = load %union.rec*, %union.rec** %87, align 8
  store %union.rec* %88, %union.rec** %link, align 8
  br label %43

; <label>:89                                      ; preds = %43
  store %union.rec* null, %union.rec** %1
  br label %90

; <label>:90                                      ; preds = %89, %79, %35
  %91 = load %union.rec*, %union.rec** %1
  ret %union.rec* %91
}

; Function Attrs: nounwind uwtable
define zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %xfpos) #0 {
  %1 = alloca %struct.FILE_POS*, align 8
  %x = alloca %union.rec*, align 8
  %fnum = alloca i16, align 2
  %str = alloca i8*, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %1, align 8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %3 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2, i32 0, i32 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i64
  %6 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %7 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 2
  %8 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %7, i32 0, i64 %5
  %9 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %8, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %10, %union.rec** %x, align 8
  %11 = load %union.rec*, %union.rec** %x, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 2
  %14 = bitcast %union.SECOND_UNION* %13 to %struct.anon.1*
  %15 = bitcast %struct.anon.1* %14 to i32*
  %16 = load i32, i32* %15, align 4
  %17 = lshr i32 %16, 12
  %18 = and i32 %17, 1023
  switch i32 %18, label %72 [
    i32 0, label %19
    i32 1, label %19
    i32 3, label %34
    i32 10, label %54
  ]

; <label>:19                                      ; preds = %0, %0
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %21 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %20, i32 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = call i8* @FileName(i16 zeroext %22)
  store i8* %23, i8** %str, align 8
  %24 = load i8*, i8** %str, align 8
  %25 = call zeroext i16 @FileNum(i8* %24, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0))
  store i16 %25, i16* %fnum, align 2
  %26 = load i16, i16* %fnum, align 2
  %27 = zext i16 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %19
  %30 = load i8*, i8** %str, align 8
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %32 = call zeroext i16 @DefineFile(i8* %30, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %31, i32 3, i32 0)
  store i16 %32, i16* %fnum, align 2
  br label %33

; <label>:33                                      ; preds = %29, %19
  br label %75

; <label>:34                                      ; preds = %0
  %35 = load %union.rec*, %union.rec** %x, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 1
  %38 = bitcast %union.FIRST_UNION* %37 to %struct.FILE_POS*
  %39 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %38, i32 0, i32 2
  %40 = load i16, i16* %39, align 2
  %41 = zext i16 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %47

; <label>:43                                      ; preds = %34
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %45 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 2
  store i16 %46, i16* %fnum, align 2
  br label %53

; <label>:47                                      ; preds = %34
  %48 = load %union.rec*, %union.rec** %x, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 1
  %51 = bitcast %union.FIRST_UNION* %50 to %struct.FILE_POS*
  %52 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %51)
  store i16 %52, i16* %fnum, align 2
  br label %53

; <label>:53                                      ; preds = %47, %43
  br label %75

; <label>:54                                      ; preds = %0
  %55 = load %union.rec*, %union.rec** %x, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.FILE_POS*
  %59 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %58, i32 0, i32 2
  %60 = load i16, i16* %59, align 2
  %61 = zext i16 %60 to i32
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %54
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.9, i32 0, i32 0), i32 0, %struct.FILE_POS* %64)
  br label %66

; <label>:66                                      ; preds = %63, %54
  %67 = load %union.rec*, %union.rec** %x, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.FILE_POS*
  %71 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %70)
  store i16 %71, i16* %fnum, align 2
  br label %75

; <label>:72                                      ; preds = %0
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %74 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 8, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i32 0, i32 0), i32 0, %struct.FILE_POS* %73)
  store i16 0, i16* %fnum, align 2
  br label %75

; <label>:75                                      ; preds = %72, %66, %53, %33
  %76 = load i16, i16* %fnum, align 2
  ret i16 %76
}

; Function Attrs: nounwind uwtable
define i8* @FileName(i16 zeroext %fnum) #0 {
  %1 = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  store i16 %fnum, i16* %1, align 2
  %2 = load i16, i16* %1, align 2
  %3 = zext i16 %2 to i64
  %4 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %5, i32 0, i64 %3
  %7 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %6, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %7, align 8
  store %union.rec* %8, %union.rec** %x, align 8
  %9 = load %union.rec*, %union.rec** %x, align 8
  %10 = icmp ne %union.rec* %9, null
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %x, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 0
  %18 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %17, i32 0, i64 0
  %19 = getelementptr inbounds %struct.LIST, %struct.LIST* %18, i32 0, i32 1
  %20 = load %union.rec*, %union.rec** %19, align 8
  %21 = load %union.rec*, %union.rec** %x, align 8
  %22 = icmp ne %union.rec* %20, %21
  br i1 %22, label %23, label %53

; <label>:23                                      ; preds = %14
  %24 = load %union.rec*, %union.rec** %x, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 0
  %27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %26, i32 0, i64 0
  %28 = getelementptr inbounds %struct.LIST, %struct.LIST* %27, i32 0, i32 1
  %29 = load %union.rec*, %union.rec** %28, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 1
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 0
  %34 = load %union.rec*, %union.rec** %33, align 8
  store %union.rec* %34, %union.rec** %x, align 8
  br label %35

; <label>:35                                      ; preds = %45, %23
  %36 = load %union.rec*, %union.rec** %x, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.anon*
  %40 = getelementptr inbounds %struct.anon, %struct.anon* %39, i32 0, i32 0
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %52

; <label>:44                                      ; preds = %35
  br label %45

; <label>:45                                      ; preds = %44
  %46 = load %union.rec*, %union.rec** %x, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 1
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %50, align 8
  store %union.rec* %51, %union.rec** %x, align 8
  br label %35

; <label>:52                                      ; preds = %35
  br label %53

; <label>:53                                      ; preds = %52, %14
  %54 = load %union.rec*, %union.rec** %x, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 4
  %57 = getelementptr inbounds [4 x i8], [4 x i8]* %56, i32 0, i32 0
  ret i8* %57
}

; Function Attrs: nounwind uwtable
define i8* @FullFileName(i16 zeroext %fnum) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  store i16 %fnum, i16* %2, align 2
  %3 = load i16, i16* %2, align 2
  %4 = zext i16 %3 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %6 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %7 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %6, i32 0, i64 %4
  %8 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %7, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %8, align 8
  store %union.rec* %9, %union.rec** %x, align 8
  %10 = load %union.rec*, %union.rec** %x, align 8
  %11 = icmp ne %union.rec* %10, null
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.11, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load %union.rec*, %union.rec** %x, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 2
  %19 = bitcast %union.SECOND_UNION* %18 to %struct.anon.1*
  %20 = bitcast %struct.anon.1* %19 to i32*
  %21 = load i32, i32* %20, align 4
  %22 = lshr i32 %21, 31
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %85

; <label>:24                                      ; preds = %15
  %25 = load %union.rec*, %union.rec** %x, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 0
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load %union.rec*, %union.rec** %x, align 8
  %32 = icmp ne %union.rec* %30, %31
  br i1 %32, label %33, label %63

; <label>:33                                      ; preds = %24
  %34 = load %union.rec*, %union.rec** %x, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 0
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %38, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 0
  %42 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %41, i32 0, i64 1
  %43 = getelementptr inbounds %struct.LIST, %struct.LIST* %42, i32 0, i32 0
  %44 = load %union.rec*, %union.rec** %43, align 8
  store %union.rec* %44, %union.rec** %x, align 8
  br label %45

; <label>:45                                      ; preds = %55, %33
  %46 = load %union.rec*, %union.rec** %x, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 1
  %49 = bitcast %union.FIRST_UNION* %48 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i32
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %62

; <label>:54                                      ; preds = %45
  br label %55

; <label>:55                                      ; preds = %54
  %56 = load %union.rec*, %union.rec** %x, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 0
  %59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %58, i32 0, i64 1
  %60 = getelementptr inbounds %struct.LIST, %struct.LIST* %59, i32 0, i32 0
  %61 = load %union.rec*, %union.rec** %60, align 8
  store %union.rec* %61, %union.rec** %x, align 8
  br label %45

; <label>:62                                      ; preds = %45
  br label %63

; <label>:63                                      ; preds = %62, %24
  %64 = load i32, i32* @FullFileName.ffbp, align 4
  %65 = add nsw i32 %64, 1
  %66 = srem i32 %65, 2
  store i32 %66, i32* @FullFileName.ffbp, align 4
  %67 = load i32, i32* @FullFileName.ffbp, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @FullFileName.ffbuff, i32 0, i64 %68
  %70 = getelementptr inbounds [512 x i8], [512 x i8]* %69, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %x, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 4
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %73, i32 0, i32 0
  %75 = call i8* @strcpy(i8* %70, i8* %74) #4
  %76 = load i32, i32* @FullFileName.ffbp, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @FullFileName.ffbuff, i32 0, i64 %77
  %79 = getelementptr inbounds [512 x i8], [512 x i8]* %78, i32 0, i32 0
  %80 = call i8* @strcat(i8* %79, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %81 = load i32, i32* @FullFileName.ffbp, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @FullFileName.ffbuff, i32 0, i64 %82
  %84 = getelementptr inbounds [512 x i8], [512 x i8]* %83, i32 0, i32 0
  store i8* %84, i8** %1
  br label %129

; <label>:85                                      ; preds = %15
  %86 = load %union.rec*, %union.rec** %x, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 0
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 1
  %91 = load %union.rec*, %union.rec** %90, align 8
  %92 = load %union.rec*, %union.rec** %x, align 8
  %93 = icmp ne %union.rec* %91, %92
  br i1 %93, label %94, label %124

; <label>:94                                      ; preds = %85
  %95 = load %union.rec*, %union.rec** %x, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 0
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 1
  %100 = load %union.rec*, %union.rec** %99, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 1
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 0
  %105 = load %union.rec*, %union.rec** %104, align 8
  store %union.rec* %105, %union.rec** %x, align 8
  br label %106

; <label>:106                                     ; preds = %116, %94
  %107 = load %union.rec*, %union.rec** %x, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 1
  %110 = bitcast %union.FIRST_UNION* %109 to %struct.anon*
  %111 = getelementptr inbounds %struct.anon, %struct.anon* %110, i32 0, i32 0
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %123

; <label>:115                                     ; preds = %106
  br label %116

; <label>:116                                     ; preds = %115
  %117 = load %union.rec*, %union.rec** %x, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 0
  %120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %119, i32 0, i64 1
  %121 = getelementptr inbounds %struct.LIST, %struct.LIST* %120, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %121, align 8
  store %union.rec* %122, %union.rec** %x, align 8
  br label %106

; <label>:123                                     ; preds = %106
  br label %124

; <label>:124                                     ; preds = %123, %85
  %125 = load %union.rec*, %union.rec** %x, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 4
  %128 = getelementptr inbounds [4 x i8], [4 x i8]* %127, i32 0, i32 0
  store i8* %128, i8** %1
  br label %129

; <label>:129                                     ; preds = %124, %63
  %130 = load i8*, i8** %1
  ret i8* %130
}

; Function Attrs: nounwind uwtable
define i8* @EchoFilePos(%struct.FILE_POS* %pos) #0 {
  %1 = alloca %struct.FILE_POS*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %1, align 8
  %2 = load i32, i32* @bp, align 4
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 2
  store i32 %4, i32* @bp, align 4
  %5 = load i32, i32* @bp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %6
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %11 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %17

; <label>:15                                      ; preds = %0
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  call void @append_fpos(%struct.FILE_POS* %16)
  br label %17

; <label>:17                                      ; preds = %15, %0
  %18 = load i32, i32* @bp, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %19
  %21 = getelementptr inbounds [512 x i8], [512 x i8]* %20, i32 0, i32 0
  ret i8* %21
}

; Function Attrs: nounwind uwtable
define internal void @append_fpos(%struct.FILE_POS* %pos) #0 {
  %1 = alloca %struct.FILE_POS*, align 8
  %x = alloca %union.rec*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %1, align 8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %3 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2, i32 0, i32 2
  %4 = load i16, i16* %3, align 2
  %5 = zext i16 %4 to i64
  %6 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %7 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 2
  %8 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %7, i32 0, i64 %5
  %9 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %8, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %10, %union.rec** %x, align 8
  %11 = load %union.rec*, %union.rec** %x, align 8
  %12 = icmp ne %union.rec* %11, null
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %0
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.33, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %0
  %17 = load %union.rec*, %union.rec** %x, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 1
  %20 = bitcast %union.FIRST_UNION* %19 to %struct.FILE_POS*
  %21 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %20, i32 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %55

; <label>:25                                      ; preds = %16
  %26 = load %union.rec*, %union.rec** %x, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 1
  %29 = bitcast %union.FIRST_UNION* %28 to %struct.FILE_POS*
  call void @append_fpos(%struct.FILE_POS* %29)
  %30 = load i32, i32* @bp, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %31
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %32, i32 0, i32 0
  %34 = call i64 @strlen(i8* %33) #5
  %35 = add i64 %34, 2
  %36 = icmp uge i64 %35, 512
  br i1 %36, label %37, label %44

; <label>:37                                      ; preds = %25
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %39 = load i32, i32* @bp, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %40
  %42 = getelementptr inbounds [512 x i8], [512 x i8]* %41, i32 0, i32 0
  %43 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct.FILE_POS* %38, i8* %42)
  br label %44

; <label>:44                                      ; preds = %37, %25
  %45 = load i32, i32* @bp, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %46
  %48 = getelementptr inbounds [512 x i8], [512 x i8]* %47, i32 0, i32 0
  %49 = call i8* @strcat(i8* %48, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %50 = load i32, i32* @bp, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %51
  %53 = getelementptr inbounds [512 x i8], [512 x i8]* %52, i32 0, i32 0
  %54 = call i8* @strcat(i8* %53, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0)) #4
  br label %55

; <label>:55                                      ; preds = %44, %16
  %56 = load i32, i32* @bp, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %57
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %58, i32 0, i32 0
  %60 = call i64 @strlen(i8* %59) #5
  %61 = load %union.rec*, %union.rec** %x, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 4
  %64 = getelementptr inbounds [4 x i8], [4 x i8]* %63, i32 0, i32 0
  %65 = call i64 @strlen(i8* %64) #5
  %66 = add i64 %60, %65
  %67 = add i64 %66, 13
  %68 = icmp uge i64 %67, 512
  br i1 %68, label %69, label %76

; <label>:69                                      ; preds = %55
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %71 = load i32, i32* @bp, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %72
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %73, i32 0, i32 0
  %75 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 10, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct.FILE_POS* %70, i8* %74)
  br label %76

; <label>:76                                      ; preds = %69, %55
  %77 = load i32, i32* @bp, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %78
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %79, i32 0, i32 0
  %81 = call i8* @strcat(i8* %80, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %82 = load i32, i32* @bp, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %83
  %85 = getelementptr inbounds [512 x i8], [512 x i8]* %84, i32 0, i32 0
  %86 = call i8* @strcat(i8* %85, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %87 = load i32, i32* @bp, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %88
  %90 = getelementptr inbounds [512 x i8], [512 x i8]* %89, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %x, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 4
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %93, i32 0, i32 0
  %95 = call i8* @strcat(i8* %90, i8* %94) #4
  %96 = load i32, i32* @bp, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %97
  %99 = getelementptr inbounds [512 x i8], [512 x i8]* %98, i32 0, i32 0
  %100 = call i8* @strcat(i8* %99, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %101 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %102 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, 1048575
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %137

; <label>:106                                     ; preds = %76
  %107 = load i32, i32* @bp, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %108
  %110 = getelementptr inbounds [512 x i8], [512 x i8]* %109, i32 0, i32 0
  %111 = call i8* @strcat(i8* %110, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %112 = load i32, i32* @bp, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %113
  %115 = getelementptr inbounds [512 x i8], [512 x i8]* %114, i32 0, i32 0
  %116 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %117 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %118, 1048575
  %120 = call i8* @StringInt(i32 %119)
  %121 = call i8* @strcat(i8* %115, i8* %120) #4
  %122 = load i32, i32* @bp, align 4
  %123 = sext i32 %122 to i64
  %124 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %123
  %125 = getelementptr inbounds [512 x i8], [512 x i8]* %124, i32 0, i32 0
  %126 = call i8* @strcat(i8* %125, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #4
  %127 = load i32, i32* @bp, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %128
  %130 = getelementptr inbounds [512 x i8], [512 x i8]* %129, i32 0, i32 0
  %131 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %132 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 20
  %135 = call i8* @StringInt(i32 %134)
  %136 = call i8* @strcat(i8* %130, i8* %135) #4
  br label %137

; <label>:137                                     ; preds = %106, %76
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @EchoAltFilePos(%struct.FILE_POS* %pos) #0 {
  %1 = alloca %struct.FILE_POS*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %1, align 8
  %2 = load i32, i32* @bp, align 4
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 2
  store i32 %4, i32* @bp, align 4
  %5 = load i32, i32* @bp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %6
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %11 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %62

; <label>:15                                      ; preds = %0
  %16 = load i32, i32* @bp, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %17
  %19 = getelementptr inbounds [512 x i8], [512 x i8]* %18, i32 0, i32 0
  %20 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %21 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %20, i32 0, i32 2
  %22 = load i16, i16* %21, align 2
  %23 = call i8* @FullFileName(i16 zeroext %22)
  %24 = call i8* @strcat(i8* %19, i8* %23) #4
  %25 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %26 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, 1048575
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %61

; <label>:30                                      ; preds = %15
  %31 = load i32, i32* @bp, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %32
  %34 = getelementptr inbounds [512 x i8], [512 x i8]* %33, i32 0, i32 0
  %35 = call i8* @strcat(i8* %34, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %36 = load i32, i32* @bp, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %37
  %39 = getelementptr inbounds [512 x i8], [512 x i8]* %38, i32 0, i32 0
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %41 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = and i32 %42, 1048575
  %44 = call i8* @StringInt(i32 %43)
  %45 = call i8* @strcat(i8* %39, i8* %44) #4
  %46 = load i32, i32* @bp, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %47
  %49 = getelementptr inbounds [512 x i8], [512 x i8]* %48, i32 0, i32 0
  %50 = call i8* @strcat(i8* %49, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %51 = load i32, i32* @bp, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %52
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %53, i32 0, i32 0
  %55 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %56 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = lshr i32 %57, 20
  %59 = call i8* @StringInt(i32 %58)
  %60 = call i8* @strcat(i8* %54, i8* %59) #4
  br label %61

; <label>:61                                      ; preds = %30, %15
  br label %62

; <label>:62                                      ; preds = %61, %0
  %63 = load i32, i32* @bp, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %64
  %66 = getelementptr inbounds [512 x i8], [512 x i8]* %65, i32 0, i32 0
  ret i8* %66
}

declare i8* @StringInt(i32) #1

; Function Attrs: nounwind uwtable
define i8* @EchoFileSource(i16 zeroext %fnum) #0 {
  %1 = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  %nextx = alloca %union.rec*, align 8
  store i16 %fnum, i16* %1, align 2
  %2 = load i32, i32* @bp, align 4
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 2
  store i32 %4, i32* @bp, align 4
  %5 = load i32, i32* @bp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %6
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %10 = load i16, i16* %1, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %219

; <label>:13                                      ; preds = %0
  %14 = load i32, i32* @bp, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %15
  %17 = getelementptr inbounds [512 x i8], [512 x i8]* %16, i32 0, i32 0
  %18 = call i8* @strcat(i8* %17, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %19 = load i16, i16* %1, align 2
  %20 = zext i16 %19 to i64
  %21 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %22 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %21, i32 0, i32 2
  %23 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %22, i32 0, i64 %20
  %24 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %23, i32 0, i32 0
  %25 = load %union.rec*, %union.rec** %24, align 8
  store %union.rec* %25, %union.rec** %x, align 8
  %26 = load %union.rec*, %union.rec** %x, align 8
  %27 = icmp ne %union.rec* %26, null
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %13
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %31

; <label>:31                                      ; preds = %28, %13
  %32 = load %union.rec*, %union.rec** %x, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 2
  %35 = bitcast %union.SECOND_UNION* %34 to %struct.anon.1*
  %36 = bitcast %struct.anon.1* %35 to i32*
  %37 = load i32, i32* %36, align 4
  %38 = lshr i32 %37, 12
  %39 = and i32 %38, 1023
  %40 = icmp eq i32 %39, 10
  br i1 %40, label %41, label %60

; <label>:41                                      ; preds = %31
  %42 = load i32, i32* @bp, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %43
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %44, i32 0, i32 0
  %46 = load i8*, i8** @MsgCat, align 8
  %47 = icmp ne i8* %46, null
  br i1 %47, label %48, label %51

; <label>:48                                      ; preds = %41
  %49 = load i8*, i8** @MsgCat, align 8
  %50 = call i8* @catgets(i8* %49, i32 3, i32 11, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0)) #4
  br label %52

; <label>:51                                      ; preds = %41
  br label %52

; <label>:52                                      ; preds = %51, %48
  %53 = phi i8* [ %50, %48 ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i32 0, i32 0), %51 ]
  %54 = call i8* @strcat(i8* %45, i8* %53) #4
  %55 = load i32, i32* @bp, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %56
  %58 = getelementptr inbounds [512 x i8], [512 x i8]* %57, i32 0, i32 0
  %59 = call i8* @strcat(i8* %58, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  br label %60

; <label>:60                                      ; preds = %52, %31
  %61 = load i32, i32* @bp, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %62
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %63, i32 0, i32 0
  %65 = load i8*, i8** @MsgCat, align 8
  %66 = icmp ne i8* %65, null
  br i1 %66, label %67, label %70

; <label>:67                                      ; preds = %60
  %68 = load i8*, i8** @MsgCat, align 8
  %69 = call i8* @catgets(i8* %68, i32 3, i32 12, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0)) #4
  br label %71

; <label>:70                                      ; preds = %60
  br label %71

; <label>:71                                      ; preds = %70, %67
  %72 = phi i8* [ %69, %67 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.17, i32 0, i32 0), %70 ]
  %73 = call i8* @strcat(i8* %64, i8* %72) #4
  %74 = load i32, i32* @bp, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %75
  %77 = getelementptr inbounds [512 x i8], [512 x i8]* %76, i32 0, i32 0
  %78 = call i8* @strcat(i8* %77, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %79 = load i32, i32* @bp, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %80
  %82 = getelementptr inbounds [512 x i8], [512 x i8]* %81, i32 0, i32 0
  %83 = call i8* @strcat(i8* %82, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %84 = load i32, i32* @bp, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %85
  %87 = getelementptr inbounds [512 x i8], [512 x i8]* %86, i32 0, i32 0
  %88 = load i16, i16* %1, align 2
  %89 = call i8* @FullFileName(i16 zeroext %88)
  %90 = call i8* @strcat(i8* %87, i8* %89) #4
  %91 = load i32, i32* @bp, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %92
  %94 = getelementptr inbounds [512 x i8], [512 x i8]* %93, i32 0, i32 0
  %95 = call i8* @strcat(i8* %94, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %96 = load %union.rec*, %union.rec** %x, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 1
  %99 = bitcast %union.FIRST_UNION* %98 to %struct.FILE_POS*
  %100 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %99, i32 0, i32 2
  %101 = load i16, i16* %100, align 2
  %102 = zext i16 %101 to i32
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %218

; <label>:104                                     ; preds = %71
  %105 = load i32, i32* @bp, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %106
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %107, i32 0, i32 0
  %109 = call i8* @strcat(i8* %108, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #4
  br label %110

; <label>:110                                     ; preds = %205, %104
  %111 = load %union.rec*, %union.rec** %x, align 8
  %112 = bitcast %union.rec* %111 to %struct.word_type*
  %113 = getelementptr inbounds %struct.word_type, %struct.word_type* %112, i32 0, i32 1
  %114 = bitcast %union.FIRST_UNION* %113 to %struct.FILE_POS*
  %115 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %114, i32 0, i32 2
  %116 = load i16, i16* %115, align 2
  %117 = zext i16 %116 to i64
  %118 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %119 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %118, i32 0, i32 2
  %120 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %119, i32 0, i64 %117
  %121 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %120, i32 0, i32 0
  %122 = load %union.rec*, %union.rec** %121, align 8
  store %union.rec* %122, %union.rec** %nextx, align 8
  %123 = load i32, i32* @bp, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %124
  %126 = getelementptr inbounds [512 x i8], [512 x i8]* %125, i32 0, i32 0
  %127 = load i8*, i8** @MsgCat, align 8
  %128 = icmp ne i8* %127, null
  br i1 %128, label %129, label %132

; <label>:129                                     ; preds = %110
  %130 = load i8*, i8** @MsgCat, align 8
  %131 = call i8* @catgets(i8* %130, i32 3, i32 13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)) #4
  br label %133

; <label>:132                                     ; preds = %110
  br label %133

; <label>:133                                     ; preds = %132, %129
  %134 = phi i8* [ %131, %129 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), %132 ]
  %135 = call i8* @strcat(i8* %126, i8* %134) #4
  %136 = load i32, i32* @bp, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %137
  %139 = getelementptr inbounds [512 x i8], [512 x i8]* %138, i32 0, i32 0
  %140 = call i8* @strcat(i8* %139, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %141 = load i32, i32* @bp, align 4
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %142
  %144 = getelementptr inbounds [512 x i8], [512 x i8]* %143, i32 0, i32 0
  %145 = call i8* @strcat(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %146 = load i32, i32* @bp, align 4
  %147 = sext i32 %146 to i64
  %148 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %147
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %148, i32 0, i32 0
  %150 = load %union.rec*, %union.rec** %nextx, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 4
  %153 = getelementptr inbounds [4 x i8], [4 x i8]* %152, i32 0, i32 0
  %154 = call i8* @strcat(i8* %149, i8* %153) #4
  %155 = load i32, i32* @bp, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %156
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %157, i32 0, i32 0
  %159 = call i8* @strcat(i8* %158, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %160 = load i32, i32* @bp, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %161
  %163 = getelementptr inbounds [512 x i8], [512 x i8]* %162, i32 0, i32 0
  %164 = call i8* @strcat(i8* %163, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %165 = load i32, i32* @bp, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %166
  %168 = getelementptr inbounds [512 x i8], [512 x i8]* %167, i32 0, i32 0
  %169 = load i8*, i8** @MsgCat, align 8
  %170 = icmp ne i8* %169, null
  br i1 %170, label %171, label %174

; <label>:171                                     ; preds = %133
  %172 = load i8*, i8** @MsgCat, align 8
  %173 = call i8* @catgets(i8* %172, i32 3, i32 14, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0)) #4
  br label %175

; <label>:174                                     ; preds = %133
  br label %175

; <label>:175                                     ; preds = %174, %171
  %176 = phi i8* [ %173, %171 ], [ getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), %174 ]
  %177 = call i8* @strcat(i8* %168, i8* %176) #4
  %178 = load i32, i32* @bp, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %179
  %181 = getelementptr inbounds [512 x i8], [512 x i8]* %180, i32 0, i32 0
  %182 = call i8* @strcat(i8* %181, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.14, i32 0, i32 0)) #4
  %183 = load i32, i32* @bp, align 4
  %184 = sext i32 %183 to i64
  %185 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %184
  %186 = getelementptr inbounds [512 x i8], [512 x i8]* %185, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %x, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 1
  %190 = bitcast %union.FIRST_UNION* %189 to %struct.FILE_POS*
  %191 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %190, i32 0, i32 3
  %192 = load i32, i32* %191, align 4
  %193 = and i32 %192, 1048575
  %194 = call i8* @StringInt(i32 %193)
  %195 = call i8* @strcat(i8* %186, i8* %194) #4
  %196 = load %union.rec*, %union.rec** %nextx, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 1
  %199 = bitcast %union.FIRST_UNION* %198 to %struct.FILE_POS*
  %200 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %199, i32 0, i32 2
  %201 = load i16, i16* %200, align 2
  %202 = zext i16 %201 to i32
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %204, label %205

; <label>:204                                     ; preds = %175
  br label %212

; <label>:205                                     ; preds = %175
  %206 = load i32, i32* @bp, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %207
  %209 = getelementptr inbounds [512 x i8], [512 x i8]* %208, i32 0, i32 0
  %210 = call i8* @strcat(i8* %209, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.22, i32 0, i32 0)) #4
  %211 = load %union.rec*, %union.rec** %nextx, align 8
  store %union.rec* %211, %union.rec** %x, align 8
  br label %110

; <label>:212                                     ; preds = %204
  %213 = load i32, i32* @bp, align 4
  %214 = sext i32 %213 to i64
  %215 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %214
  %216 = getelementptr inbounds [512 x i8], [512 x i8]* %215, i32 0, i32 0
  %217 = call i8* @strcat(i8* %216, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.23, i32 0, i32 0)) #4
  br label %218

; <label>:218                                     ; preds = %212, %71
  br label %219

; <label>:219                                     ; preds = %218, %0
  %220 = load i32, i32* @bp, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %221
  %223 = getelementptr inbounds [512 x i8], [512 x i8]* %222, i32 0, i32 0
  ret i8* %223
}

; Function Attrs: nounwind
declare i8* @catgets(i8*, i32, i32, i8*) #3

; Function Attrs: nounwind uwtable
define i8* @EchoFileLine(%struct.FILE_POS* %pos) #0 {
  %1 = alloca %struct.FILE_POS*, align 8
  store %struct.FILE_POS* %pos, %struct.FILE_POS** %1, align 8
  %2 = load i32, i32* @bp, align 4
  %3 = add nsw i32 %2, 1
  %4 = srem i32 %3, 2
  store i32 %4, i32* @bp, align 4
  %5 = load i32, i32* @bp, align 4
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %6
  %8 = getelementptr inbounds [512 x i8], [512 x i8]* %7, i32 0, i32 0
  %9 = call i8* @strcpy(i8* %8, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0)) #4
  %10 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %11 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %10, i32 0, i32 2
  %12 = load i16, i16* %11, align 2
  %13 = zext i16 %12 to i32
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %15, label %47

; <label>:15                                      ; preds = %0
  %16 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %17 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1048575
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %47

; <label>:21                                      ; preds = %15
  %22 = load i32, i32* @bp, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %23
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %24, i32 0, i32 0
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %27 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1048575
  %30 = call i8* @StringInt(i32 %29)
  %31 = call i8* @strcat(i8* %25, i8* %30) #4
  %32 = load i32, i32* @bp, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %33
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %34, i32 0, i32 0
  %36 = call i8* @strcat(i8* %35, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.24, i32 0, i32 0)) #4
  %37 = load i32, i32* @bp, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %38
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %39, i32 0, i32 0
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** %1, align 8
  %42 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = lshr i32 %43, 20
  %45 = call i8* @StringInt(i32 %44)
  %46 = call i8* @strcat(i8* %40, i8* %45) #4
  br label %47

; <label>:47                                      ; preds = %21, %15, %0
  %48 = load i32, i32* @bp, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x [512 x i8]], [2 x [512 x i8]]* @buff, i32 0, i64 %49
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %50, i32 0, i32 0
  ret i8* %51
}

; Function Attrs: nounwind uwtable
define %struct.FILE_POS* @PosOfFile(i16 zeroext %fnum) #0 {
  %1 = alloca i16, align 2
  %x = alloca %union.rec*, align 8
  store i16 %fnum, i16* %1, align 2
  %2 = load i16, i16* %1, align 2
  %3 = zext i16 %2 to i64
  %4 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %5, i32 0, i64 %3
  %7 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %6, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %7, align 8
  store %union.rec* %8, %union.rec** %x, align 8
  %9 = load %union.rec*, %union.rec** %x, align 8
  %10 = icmp ne %union.rec* %9, null
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.25, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %x, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 1
  %18 = bitcast %union.FIRST_UNION* %17 to %struct.FILE_POS*
  ret %struct.FILE_POS* %18
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @OpenFile(i16 zeroext %fnum, i32 %check_ld, i32 %check_lt) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %fname = alloca %union.rec*, align 8
  %full_name = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %used_source_suffix = alloca i32, align 4
  store i16 %fnum, i16* %1, align 2
  store i32 %check_ld, i32* %2, align 4
  store i32 %check_lt, i32* %3, align 4
  %4 = load i16, i16* %1, align 2
  %5 = zext i16 %4 to i64
  %6 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %7 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %6, i32 0, i32 2
  %8 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %7, i32 0, i64 %5
  %9 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %8, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %9, align 8
  store %union.rec* %10, %union.rec** %fname, align 8
  %11 = load %union.rec*, %union.rec** %fname, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 0
  %14 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %13, i32 0, i64 0
  %15 = getelementptr inbounds %struct.LIST, %struct.LIST* %14, i32 0, i32 1
  %16 = load %union.rec*, %union.rec** %15, align 8
  %17 = load %union.rec*, %union.rec** %fname, align 8
  %18 = icmp ne %union.rec* %16, %17
  br i1 %18, label %19, label %65

; <label>:19                                      ; preds = %0
  %20 = load %union.rec*, %union.rec** %fname, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 0
  %23 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %22, i32 0, i64 0
  %24 = getelementptr inbounds %struct.LIST, %struct.LIST* %23, i32 0, i32 1
  %25 = load %union.rec*, %union.rec** %24, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 1
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  store %union.rec* %30, %union.rec** %y, align 8
  br label %31

; <label>:31                                      ; preds = %41, %19
  %32 = load %union.rec*, %union.rec** %y, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 1
  %35 = bitcast %union.FIRST_UNION* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %48

; <label>:40                                      ; preds = %31
  br label %41

; <label>:41                                      ; preds = %40
  %42 = load %union.rec*, %union.rec** %y, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %46, align 8
  store %union.rec* %47, %union.rec** %y, align 8
  br label %31

; <label>:48                                      ; preds = %31
  %49 = load %union.rec*, %union.rec** %y, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 4
  %52 = getelementptr inbounds [4 x i8], [4 x i8]* %51, i32 0, i32 0
  %53 = load %union.rec*, %union.rec** %fname, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 2
  %56 = bitcast %union.SECOND_UNION* %55 to %struct.anon.1*
  %57 = bitcast %struct.anon.1* %56 to i32*
  %58 = load i32, i32* %57, align 4
  %59 = lshr i32 %58, 12
  %60 = and i32 %59, 1023
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds [11 x i8*], [11 x i8*]* @file_mode, i32 0, i64 %61
  %63 = load i8*, i8** %62, align 8
  %64 = call %struct._IO_FILE* @fopen(i8* %52, i8* %63)
  store %struct._IO_FILE* %64, %struct._IO_FILE** %fp, align 8
  br label %284

; <label>:65                                      ; preds = %0
  %66 = load %union.rec*, %union.rec** %fname, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 4
  %69 = getelementptr inbounds [4 x i8], [4 x i8]* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %fname, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 3
  %73 = bitcast %union.THIRD_UNION* %72 to %struct.anon.6*
  %74 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %73, i32 0, i32 0
  %75 = getelementptr inbounds [2 x i32], [2 x i32]* %74, i32 0, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %77
  %79 = load %union.rec*, %union.rec** %78, align 8
  %80 = load i32, i32* %2, align 4
  %81 = load i32, i32* %3, align 4
  %82 = load %union.rec*, %union.rec** %fname, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 1
  %85 = bitcast %union.FIRST_UNION* %84 to %struct.FILE_POS*
  %86 = load %union.rec*, %union.rec** %fname, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 2
  %89 = bitcast %union.SECOND_UNION* %88 to %struct.anon.1*
  %90 = bitcast %struct.anon.1* %89 to i32*
  %91 = load i32, i32* %90, align 4
  %92 = lshr i32 %91, 12
  %93 = and i32 %92, 1023
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds [11 x i8*], [11 x i8*]* @file_mode, i32 0, i64 %94
  %96 = load i8*, i8** %95, align 8
  %97 = call %struct._IO_FILE* @SearchPath(i8* %69, %union.rec* %79, i32 %80, i32 %81, %union.rec** %full_name, %struct.FILE_POS* %85, i8* %96, i32* %used_source_suffix)
  store %struct._IO_FILE* %97, %struct._IO_FILE** %fp, align 8
  %98 = load %union.rec*, %union.rec** %full_name, align 8
  %99 = icmp ne %union.rec* %98, null
  br i1 %99, label %100, label %272

; <label>:100                                     ; preds = %65
  %101 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %102 = zext i8 %101 to i32
  store i32 %102, i32* @zz_size, align 4
  %103 = sext i32 %102 to i64
  %104 = icmp uge i64 %103, 265
  br i1 %104, label %105, label %108

; <label>:105                                     ; preds = %100
  %106 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %107 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %106)
  br label %133

; <label>:108                                     ; preds = %100
  %109 = load i32, i32* @zz_size, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %110
  %112 = load %union.rec*, %union.rec** %111, align 8
  %113 = icmp eq %union.rec* %112, null
  br i1 %113, label %114, label %118

; <label>:114                                     ; preds = %108
  %115 = load i32, i32* @zz_size, align 4
  %116 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %117 = call %union.rec* @GetMemory(i32 %115, %struct.FILE_POS* %116)
  store %union.rec* %117, %union.rec** @zz_hold, align 8
  br label %132

; <label>:118                                     ; preds = %108
  %119 = load i32, i32* @zz_size, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %120
  %122 = load %union.rec*, %union.rec** %121, align 8
  store %union.rec* %122, %union.rec** @zz_hold, align 8
  store %union.rec* %122, %union.rec** @zz_hold, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 0
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %127, align 8
  %129 = load i32, i32* @zz_size, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %130
  store %union.rec* %128, %union.rec** %131, align 8
  br label %132

; <label>:132                                     ; preds = %118, %114
  br label %133

; <label>:133                                     ; preds = %132, %105
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 1
  %137 = bitcast %union.FIRST_UNION* %136 to %struct.anon*
  %138 = getelementptr inbounds %struct.anon, %struct.anon* %137, i32 0, i32 0
  store i8 0, i8* %138, align 1
  %139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %141 = bitcast %union.rec* %140 to %struct.word_type*
  %142 = getelementptr inbounds %struct.word_type, %struct.word_type* %141, i32 0, i32 0
  %143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %142, i32 0, i64 1
  %144 = getelementptr inbounds %struct.LIST, %struct.LIST* %143, i32 0, i32 1
  store %union.rec* %139, %union.rec** %144, align 8
  %145 = load %union.rec*, %union.rec** @zz_hold, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 0
  %148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %147, i32 0, i64 1
  %149 = getelementptr inbounds %struct.LIST, %struct.LIST* %148, i32 0, i32 0
  store %union.rec* %139, %union.rec** %149, align 8
  %150 = load %union.rec*, %union.rec** @zz_hold, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %152, i32 0, i64 0
  %154 = getelementptr inbounds %struct.LIST, %struct.LIST* %153, i32 0, i32 1
  store %union.rec* %139, %union.rec** %154, align 8
  %155 = load %union.rec*, %union.rec** @zz_hold, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 0
  %158 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %157, i32 0, i64 0
  %159 = getelementptr inbounds %struct.LIST, %struct.LIST* %158, i32 0, i32 0
  store %union.rec* %139, %union.rec** %159, align 8
  store %union.rec* %139, %union.rec** @xx_link, align 8
  %160 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %160, %union.rec** @zz_res, align 8
  %161 = load %union.rec*, %union.rec** %fname, align 8
  store %union.rec* %161, %union.rec** @zz_hold, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = icmp eq %union.rec* %162, null
  br i1 %163, label %164, label %166

; <label>:164                                     ; preds = %133
  %165 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %214

; <label>:166                                     ; preds = %133
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  %168 = icmp eq %union.rec* %167, null
  br i1 %168, label %169, label %171

; <label>:169                                     ; preds = %166
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %212

; <label>:171                                     ; preds = %166
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 0
  %175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %174, i32 0, i64 0
  %176 = getelementptr inbounds %struct.LIST, %struct.LIST* %175, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %176, align 8
  store %union.rec* %177, %union.rec** @zz_tmp, align 8
  %178 = load %union.rec*, %union.rec** @zz_res, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 0
  %181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %180, i32 0, i64 0
  %182 = getelementptr inbounds %struct.LIST, %struct.LIST* %181, i32 0, i32 0
  %183 = load %union.rec*, %union.rec** %182, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 0
  %187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %186, i32 0, i64 0
  %188 = getelementptr inbounds %struct.LIST, %struct.LIST* %187, i32 0, i32 0
  store %union.rec* %183, %union.rec** %188, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_res, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 0
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 0
  %195 = load %union.rec*, %union.rec** %194, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %197, i32 0, i64 0
  %199 = getelementptr inbounds %struct.LIST, %struct.LIST* %198, i32 0, i32 1
  store %union.rec* %189, %union.rec** %199, align 8
  %200 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %203, i32 0, i64 0
  %205 = getelementptr inbounds %struct.LIST, %struct.LIST* %204, i32 0, i32 0
  store %union.rec* %200, %union.rec** %205, align 8
  %206 = load %union.rec*, %union.rec** @zz_res, align 8
  %207 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %208 = bitcast %union.rec* %207 to %struct.word_type*
  %209 = getelementptr inbounds %struct.word_type, %struct.word_type* %208, i32 0, i32 0
  %210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %209, i32 0, i64 0
  %211 = getelementptr inbounds %struct.LIST, %struct.LIST* %210, i32 0, i32 1
  store %union.rec* %206, %union.rec** %211, align 8
  br label %212

; <label>:212                                     ; preds = %171, %169
  %213 = phi %union.rec* [ %170, %169 ], [ %206, %171 ]
  br label %214

; <label>:214                                     ; preds = %212, %164
  %215 = phi %union.rec* [ %165, %164 ], [ %213, %212 ]
  %216 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %216, %union.rec** @zz_res, align 8
  %217 = load %union.rec*, %union.rec** %full_name, align 8
  store %union.rec* %217, %union.rec** @zz_hold, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = icmp eq %union.rec* %218, null
  br i1 %219, label %220, label %222

; <label>:220                                     ; preds = %214
  %221 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %270

; <label>:222                                     ; preds = %214
  %223 = load %union.rec*, %union.rec** @zz_res, align 8
  %224 = icmp eq %union.rec* %223, null
  br i1 %224, label %225, label %227

; <label>:225                                     ; preds = %222
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %268

; <label>:227                                     ; preds = %222
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %230, i32 0, i64 1
  %232 = getelementptr inbounds %struct.LIST, %struct.LIST* %231, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %232, align 8
  store %union.rec* %233, %union.rec** @zz_tmp, align 8
  %234 = load %union.rec*, %union.rec** @zz_res, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 1
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %238, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 1
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 0
  store %union.rec* %239, %union.rec** %244, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 0
  %249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %248, i32 0, i64 1
  %250 = getelementptr inbounds %struct.LIST, %struct.LIST* %249, i32 0, i32 0
  %251 = load %union.rec*, %union.rec** %250, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 1
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 1
  store %union.rec* %245, %union.rec** %255, align 8
  %256 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 1
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  store %union.rec* %256, %union.rec** %261, align 8
  %262 = load %union.rec*, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 0
  %266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %265, i32 0, i64 1
  %267 = getelementptr inbounds %struct.LIST, %struct.LIST* %266, i32 0, i32 1
  store %union.rec* %262, %union.rec** %267, align 8
  br label %268

; <label>:268                                     ; preds = %227, %225
  %269 = phi %union.rec* [ %226, %225 ], [ %262, %227 ]
  br label %270

; <label>:270                                     ; preds = %268, %220
  %271 = phi %union.rec* [ %221, %220 ], [ %269, %268 ]
  br label %272

; <label>:272                                     ; preds = %270, %65
  %273 = load i32, i32* %used_source_suffix, align 4
  %274 = load %union.rec*, %union.rec** %fname, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 2
  %277 = bitcast %union.SECOND_UNION* %276 to %struct.anon.1*
  %278 = bitcast %struct.anon.1* %277 to i32*
  %279 = load i32, i32* %278, align 4
  %280 = and i32 %273, 1
  %281 = shl i32 %280, 31
  %282 = and i32 %279, 2147483647
  %283 = or i32 %282, %281
  store i32 %283, i32* %278, align 4
  br label %284

; <label>:284                                     ; preds = %272, %48
  %285 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %285
}

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define internal %struct._IO_FILE* @SearchPath(i8* %str, %union.rec* %fpath, i32 %check_ld, i32 %check_lt, %union.rec** %full_name, %struct.FILE_POS* %xfpos, i8* %read_mode, i32* %used_source_suffix) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %union.rec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %union.rec**, align 8
  %7 = alloca %struct.FILE_POS*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32*, align 8
  %buff = alloca [512 x i8], align 16
  %buff2 = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %cpath = alloca %union.rec*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %fp2 = alloca %struct._IO_FILE*, align 8
  %indexstat = alloca %struct.stat, align 8
  %datastat = alloca %struct.stat, align 8
  store i8* %str, i8** %2, align 8
  store %union.rec* %fpath, %union.rec** %3, align 8
  store i32 %check_ld, i32* %4, align 4
  store i32 %check_lt, i32* %5, align 4
  store %union.rec** %full_name, %union.rec*** %6, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %7, align 8
  store i8* %read_mode, i8** %8, align 8
  store i32* %used_source_suffix, i32** %9, align 8
  %10 = load i32*, i32** %9, align 8
  store i32 0, i32* %10, align 4
  %11 = load i8*, i8** %2, align 8
  %12 = call i32 @strcmp(i8* %11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.36, i32 0, i32 0)) #5
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %0
  %15 = load %union.rec**, %union.rec*** %6, align 8
  store %union.rec* null, %union.rec** %15, align 8
  %16 = load %struct._IO_FILE*, %struct._IO_FILE** @stdin, align 8
  store %struct._IO_FILE* %16, %struct._IO_FILE** %1
  br label %228

; <label>:17                                      ; preds = %0
  %18 = load i8*, i8** %2, align 8
  %19 = call i32 @StringBeginsWith(i8* %18, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0))
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

; <label>:21                                      ; preds = %17
  %22 = load %union.rec*, %union.rec** @empty_path, align 8
  br label %25

; <label>:23                                      ; preds = %17
  %24 = load %union.rec*, %union.rec** %3, align 8
  br label %25

; <label>:25                                      ; preds = %23, %21
  %26 = phi %union.rec* [ %22, %21 ], [ %24, %23 ]
  store %union.rec* %26, %union.rec** %cpath, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  %27 = load %union.rec*, %union.rec** %cpath, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %29, i32 0, i64 0
  %31 = getelementptr inbounds %struct.LIST, %struct.LIST* %30, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %31, align 8
  store %union.rec* %32, %union.rec** %link, align 8
  br label %33

; <label>:33                                      ; preds = %202, %25
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %35 = icmp eq %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %40

; <label>:36                                      ; preds = %33
  %37 = load %union.rec*, %union.rec** %link, align 8
  %38 = load %union.rec*, %union.rec** %cpath, align 8
  %39 = icmp ne %union.rec* %37, %38
  br label %40

; <label>:40                                      ; preds = %36, %33
  %41 = phi i1 [ false, %33 ], [ %39, %36 ]
  br i1 %41, label %42, label %209

; <label>:42                                      ; preds = %40
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 1
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 0
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %y, align 8
  br label %49

; <label>:49                                      ; preds = %59, %42
  %50 = load %union.rec*, %union.rec** %y, align 8
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
  %60 = load %union.rec*, %union.rec** %y, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 1
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %64, align 8
  store %union.rec* %65, %union.rec** %y, align 8
  br label %49

; <label>:66                                      ; preds = %49
  %67 = load %union.rec*, %union.rec** %y, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 4
  %70 = getelementptr inbounds [4 x i8], [4 x i8]* %69, i32 0, i32 0
  %71 = call i64 @strlen(i8* %70) #5
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %77

; <label>:73                                      ; preds = %66
  %74 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %75 = load i8*, i8** %2, align 8
  %76 = call i8* @strcpy(i8* %74, i8* %75) #4
  br label %111

; <label>:77                                      ; preds = %66
  %78 = load %union.rec*, %union.rec** %y, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 4
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %80, i32 0, i32 0
  %82 = call i64 @strlen(i8* %81) #5
  %83 = add i64 %82, 1
  %84 = load i8*, i8** %2, align 8
  %85 = call i64 @strlen(i8* %84) #5
  %86 = add i64 %83, %85
  %87 = icmp uge i64 %86, 512
  br i1 %87, label %88, label %99

; <label>:88                                      ; preds = %77
  %89 = load %union.rec*, %union.rec** %y, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.FILE_POS*
  %93 = load %union.rec*, %union.rec** %y, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 4
  %96 = getelementptr inbounds [4 x i8], [4 x i8]* %95, i32 0, i32 0
  %97 = load i8*, i8** %2, align 8
  %98 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 15, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %92, i8* %96, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0), i8* %97)
  br label %99

; <label>:99                                      ; preds = %88, %77
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %101 = load %union.rec*, %union.rec** %y, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 4
  %104 = getelementptr inbounds [4 x i8], [4 x i8]* %103, i32 0, i32 0
  %105 = call i8* @strcpy(i8* %100, i8* %104) #4
  %106 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %107 = call i8* @strcat(i8* %106, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.35, i32 0, i32 0)) #4
  %108 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %109 = load i8*, i8** %2, align 8
  %110 = call i8* @strcat(i8* %108, i8* %109) #4
  br label %111

; <label>:111                                     ; preds = %99, %73
  %112 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %113 = load i8*, i8** %8, align 8
  %114 = call %struct._IO_FILE* @fopen(i8* %112, i8* %113)
  store %struct._IO_FILE* %114, %struct._IO_FILE** %fp, align 8
  %115 = load i32, i32* %4, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %138

; <label>:117                                     ; preds = %111
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %119 = icmp eq %struct._IO_FILE* %118, null
  br i1 %119, label %120, label %138

; <label>:120                                     ; preds = %117
  %121 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %122 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %123 = call i8* @strcpy(i8* %121, i8* %122) #4
  %124 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %125 = call i64 @strlen(i8* %124) #5
  %126 = sub i64 %125, 3
  %127 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i64 %126
  %128 = call i8* @strcpy(i8* %127, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  %129 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %130 = call %struct._IO_FILE* @fopen(i8* %129, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %130, %struct._IO_FILE** %fp2, align 8
  %131 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %132 = icmp ne %struct._IO_FILE* %131, null
  br i1 %132, label %133, label %137

; <label>:133                                     ; preds = %120
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %135 = call i32 @fclose(%struct._IO_FILE* %134)
  %136 = load %union.rec**, %union.rec*** %6, align 8
  store %union.rec* null, %union.rec** %136, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %1
  br label %228

; <label>:137                                     ; preds = %120
  br label %138

; <label>:138                                     ; preds = %137, %117, %111
  %139 = load i32, i32* %4, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %176

; <label>:141                                     ; preds = %138
  %142 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %143 = icmp ne %struct._IO_FILE* %142, null
  br i1 %143, label %144, label %176

; <label>:144                                     ; preds = %141
  %145 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %146 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %147 = call i8* @strcpy(i8* %145, i8* %146) #4
  %148 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %149 = call i64 @strlen(i8* %148) #5
  %150 = sub i64 %149, 3
  %151 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i64 %150
  %152 = call i8* @strcpy(i8* %151, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i32 0, i32 0)) #4
  %153 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %154 = call i32 @stat(i8* %153, %struct.stat* %indexstat) #4
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %175

; <label>:156                                     ; preds = %144
  %157 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %158 = call i32 @stat(i8* %157, %struct.stat* %datastat) #4
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %175

; <label>:160                                     ; preds = %156
  %161 = getelementptr inbounds %struct.stat, %struct.stat* %datastat, i32 0, i32 12
  %162 = getelementptr inbounds %struct.timespec, %struct.timespec* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = getelementptr inbounds %struct.stat, %struct.stat* %indexstat, i32 0, i32 12
  %165 = getelementptr inbounds %struct.timespec, %struct.timespec* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = icmp sgt i64 %163, %166
  br i1 %167, label %168, label %174

; <label>:168                                     ; preds = %160
  %169 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %170 = call i32 @fclose(%struct._IO_FILE* %169)
  %171 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %172 = call i32 @remove(i8* %171) #4
  %173 = load %union.rec**, %union.rec*** %6, align 8
  store %union.rec* null, %union.rec** %173, align 8
  store %struct._IO_FILE* null, %struct._IO_FILE** %1
  br label %228

; <label>:174                                     ; preds = %160
  br label %175

; <label>:175                                     ; preds = %174, %156, %144
  br label %176

; <label>:176                                     ; preds = %175, %141, %138
  %177 = load i32, i32* %5, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %201

; <label>:179                                     ; preds = %176
  %180 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %181 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %182 = call i8* @strcpy(i8* %180, i8* %181) #4
  %183 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %184 = call i8* @strcat(i8* %183, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i32 0, i32 0)) #4
  %185 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %186 = call %struct._IO_FILE* @fopen(i8* %185, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %186, %struct._IO_FILE** %fp2, align 8
  %187 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  %188 = icmp ne %struct._IO_FILE* %187, null
  br i1 %188, label %189, label %200

; <label>:189                                     ; preds = %179
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %191 = icmp ne %struct._IO_FILE* %190, null
  br i1 %191, label %192, label %197

; <label>:192                                     ; preds = %189
  %193 = load %struct.FILE_POS*, %struct.FILE_POS** %7, align 8
  %194 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %195 = getelementptr inbounds [512 x i8], [512 x i8]* %buff2, i32 0, i32 0
  %196 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.38, i32 0, i32 0), i32 1, %struct.FILE_POS* %193, i8* %194, i8* %195)
  br label %197

; <label>:197                                     ; preds = %192, %189
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** %fp2, align 8
  store %struct._IO_FILE* %198, %struct._IO_FILE** %fp, align 8
  %199 = load i32*, i32** %9, align 8
  store i32 1, i32* %199, align 4
  br label %200

; <label>:200                                     ; preds = %197, %179
  br label %201

; <label>:201                                     ; preds = %200, %176
  br label %202

; <label>:202                                     ; preds = %201
  %203 = load %union.rec*, %union.rec** %link, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 0
  %206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %205, i32 0, i64 0
  %207 = getelementptr inbounds %struct.LIST, %struct.LIST* %206, i32 0, i32 1
  %208 = load %union.rec*, %union.rec** %207, align 8
  store %union.rec* %208, %union.rec** %link, align 8
  br label %33

; <label>:209                                     ; preds = %40
  %210 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %211 = icmp eq %struct._IO_FILE* %210, null
  br i1 %211, label %219, label %212

; <label>:212                                     ; preds = %209
  %213 = load %union.rec*, %union.rec** %y, align 8
  %214 = bitcast %union.rec* %213 to %struct.word_type*
  %215 = getelementptr inbounds %struct.word_type, %struct.word_type* %214, i32 0, i32 4
  %216 = getelementptr inbounds [4 x i8], [4 x i8]* %215, i32 0, i32 0
  %217 = call i64 @strlen(i8* %216) #5
  %218 = icmp eq i64 %217, 0
  br i1 %218, label %219, label %220

; <label>:219                                     ; preds = %212, %209
  br label %224

; <label>:220                                     ; preds = %212
  %221 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %222 = load %struct.FILE_POS*, %struct.FILE_POS** %7, align 8
  %223 = call %union.rec* @MakeWord(i32 11, i8* %221, %struct.FILE_POS* %222)
  br label %224

; <label>:224                                     ; preds = %220, %219
  %225 = phi %union.rec* [ null, %219 ], [ %223, %220 ]
  %226 = load %union.rec**, %union.rec*** %6, align 8
  store %union.rec* %225, %union.rec** %226, align 8
  %227 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  store %struct._IO_FILE* %227, %struct._IO_FILE** %1
  br label %228

; <label>:228                                     ; preds = %224, %168, %133, %14
  %229 = load %struct._IO_FILE*, %struct._IO_FILE** %1
  ret %struct._IO_FILE* %229
}

; Function Attrs: nounwind uwtable
define %struct._IO_FILE* @OpenIncGraphicFile(i8* %str, i8 zeroext %typ, %union.rec** %full_name, %struct.FILE_POS* %xfpos, i32* %compressed) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8, align 1
  %3 = alloca %union.rec**, align 8
  %4 = alloca %struct.FILE_POS*, align 8
  %5 = alloca i32*, align 8
  %fp = alloca %struct._IO_FILE*, align 8
  %p = alloca i32, align 4
  %i = alloca i32, align 4
  %used_source_suffix = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  store i8* %str, i8** %1, align 8
  store i8 %typ, i8* %2, align 1
  store %union.rec** %full_name, %union.rec*** %3, align 8
  store %struct.FILE_POS* %xfpos, %struct.FILE_POS** %4, align 8
  store i32* %compressed, i32** %5, align 8
  %6 = load i8, i8* %2, align 1
  %7 = zext i8 %6 to i32
  %8 = icmp eq i32 %7, 94
  br i1 %8, label %16, label %9

; <label>:9                                       ; preds = %0
  %10 = load i8, i8* %2, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp eq i32 %11, 95
  br i1 %12, label %16, label %13

; <label>:13                                      ; preds = %9
  %14 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %15 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i32 0, i32 0), i32 0, %struct.FILE_POS* %14, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.26, i32 0, i32 0))
  br label %16

; <label>:16                                      ; preds = %13, %9, %0
  %17 = load i8, i8* %2, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 94
  %20 = select i1 %19, i32 1, i32 2
  store i32 %20, i32* %p, align 4
  %21 = load i8*, i8** %1, align 8
  %22 = load i32, i32* %p, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [8 x %union.rec*], [8 x %union.rec*]* @file_path, i32 0, i64 %23
  %25 = load %union.rec*, %union.rec** %24, align 8
  %26 = load %union.rec**, %union.rec*** %3, align 8
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %28 = call %struct._IO_FILE* @SearchPath(i8* %21, %union.rec* %25, i32 0, i32 0, %union.rec** %26, %struct.FILE_POS* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0), i32* %used_source_suffix)
  store %struct._IO_FILE* %28, %struct._IO_FILE** %fp, align 8
  %29 = load %union.rec**, %union.rec*** %3, align 8
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = icmp eq %union.rec* %30, null
  br i1 %31, label %32, label %37

; <label>:32                                      ; preds = %16
  %33 = load i8*, i8** %1, align 8
  %34 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %35 = call %union.rec* @MakeWord(i32 11, i8* %33, %struct.FILE_POS* %34)
  %36 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %35, %union.rec** %36, align 8
  br label %37

; <label>:37                                      ; preds = %32, %16
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %39 = icmp eq %struct._IO_FILE* %38, null
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %37
  %41 = load i32*, i32** %5, align 8
  store i32 0, i32* %41, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %92

; <label>:42                                      ; preds = %37
  store i32 0, i32* %i, align 4
  br label %43

; <label>:43                                      ; preds = %60, %42
  %44 = load i32, i32* %i, align 4
  %45 = icmp slt i32 %44, 6
  br i1 %45, label %46, label %63

; <label>:46                                      ; preds = %43
  %47 = load %union.rec**, %union.rec*** %3, align 8
  %48 = load %union.rec*, %union.rec** %47, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 4
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %50, i32 0, i32 0
  %52 = load i32, i32* %i, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [6 x i8*], [6 x i8*]* @compress_suffixes, i32 0, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = call i32 @StringEndsWith(i8* %51, i8* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

; <label>:58                                      ; preds = %46
  br label %63

; <label>:59                                      ; preds = %46
  br label %60

; <label>:60                                      ; preds = %59
  %61 = load i32, i32* %i, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %i, align 4
  br label %43

; <label>:63                                      ; preds = %58, %43
  %64 = load i32, i32* %i, align 4
  %65 = icmp slt i32 %64, 6
  br i1 %65, label %66, label %89

; <label>:66                                      ; preds = %63
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %68 = call i32 @fclose(%struct._IO_FILE* %67)
  %69 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %70 = load %union.rec**, %union.rec*** %3, align 8
  %71 = load %union.rec*, %union.rec** %70, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 4
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %73, i32 0, i32 0
  %75 = call i32 (i8*, i8*, ...) @sprintf(i8* %69, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.28, i32 0, i32 0), i8* %74, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0)) #4
  %76 = load i32, i32* @SafeExecution, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

; <label>:78                                      ; preds = %66
  %79 = load %struct.FILE_POS*, %struct.FILE_POS** %4, align 8
  %80 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %81 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 3, i32 17, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.30, i32 0, i32 0), i32 2, %struct.FILE_POS* %79, i8* %80)
  %82 = load i32*, i32** %5, align 8
  store i32 0, i32* %82, align 4
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %88

; <label>:83                                      ; preds = %66
  %84 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %85 = call i32 @system(i8* %84)
  %86 = call %struct._IO_FILE* @fopen(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  store %struct._IO_FILE* %86, %struct._IO_FILE** %fp, align 8
  %87 = load i32*, i32** %5, align 8
  store i32 1, i32* %87, align 4
  br label %88

; <label>:88                                      ; preds = %83, %78
  br label %91

; <label>:89                                      ; preds = %63
  %90 = load i32*, i32** %5, align 8
  store i32 0, i32* %90, align 4
  br label %91

; <label>:91                                      ; preds = %89, %88
  br label %92

; <label>:92                                      ; preds = %91, %40
  %93 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  ret %struct._IO_FILE* %93
}

declare i32 @StringEndsWith(i8*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

declare i32 @system(i8*) #1

; Function Attrs: nounwind uwtable
define void @FileSetUpdated(i16 zeroext %fnum, i32 %newlines) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i32, align 4
  store i16 %fnum, i16* %1, align 2
  store i32 %newlines, i32* %2, align 4
  %3 = load i16, i16* %1, align 2
  %4 = zext i16 %3 to i64
  %5 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %6 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %5, i32 0, i32 2
  %7 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %6, i32 0, i64 %4
  %8 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %7, i32 0, i32 0
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 3
  %12 = bitcast %union.THIRD_UNION* %11 to %struct.anon.6*
  %13 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %12, i32 0, i32 1
  %14 = getelementptr inbounds [2 x i32], [2 x i32]* %13, i32 0, i64 0
  store i32 1, i32* %14, align 4
  %15 = load i32, i32* %2, align 4
  %16 = load i16, i16* %1, align 2
  %17 = zext i16 %16 to i64
  %18 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %19 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %18, i32 0, i32 2
  %20 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %19, i32 0, i64 %17
  %21 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %20, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %21, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 3
  %25 = bitcast %union.THIRD_UNION* %24 to %struct.anon.6*
  %26 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %25, i32 0, i32 1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i32 0, i64 1
  store i32 %15, i32* %27, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FileGetLineCount(i16 zeroext %fnum) #0 {
  %1 = alloca i16, align 2
  %res = alloca i32, align 4
  store i16 %fnum, i16* %1, align 2
  %2 = load i16, i16* %1, align 2
  %3 = zext i16 %2 to i64
  %4 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %5, i32 0, i64 %3
  %7 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %6, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 3
  %11 = bitcast %union.THIRD_UNION* %10 to %struct.anon.6*
  %12 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %11, i32 0, i32 1
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i32 0, i64 1
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %res, align 4
  %15 = load i32, i32* %res, align 4
  ret i32 %15
}

; Function Attrs: nounwind uwtable
define i32 @FileTestUpdated(i16 zeroext %fnum) #0 {
  %1 = alloca i16, align 2
  store i16 %fnum, i16* %1, align 2
  %2 = load i16, i16* %1, align 2
  %3 = zext i16 %2 to i64
  %4 = load %struct.anon.14*, %struct.anon.14** @file_tab, align 8
  %5 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %4, i32 0, i32 2
  %6 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %5, i32 0, i64 %3
  %7 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %6, i32 0, i32 0
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 3
  %11 = bitcast %union.THIRD_UNION* %10 to %struct.anon.6*
  %12 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %11, i32 0, i32 1
  %13 = getelementptr inbounds [2 x i32], [2 x i32]* %12, i32 0, i64 0
  %14 = load i32, i32* %13, align 4
  ret i32 %14
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @ftab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
  %1 = alloca %struct.anon.14*, align 8
  %2 = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store %struct.anon.14* %S, %struct.anon.14** %1, align 8
  store i32 %newsize, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.anon.14* @ftab_new(i32 %3)
  store %struct.anon.14* %4, %struct.anon.14** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %19, %0
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %8 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %22

; <label>:11                                      ; preds = %5
  %12 = load i32, i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %15 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %15, i32 0, i64 %13
  %17 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  call void @ftab_insert(%union.rec* %18, %struct.anon.14** %NewS)
  br label %19

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* %i, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %i, align 4
  br label %5

; <label>:22                                      ; preds = %5
  store i32 0, i32* %i, align 4
  br label %23

; <label>:23                                      ; preds = %48, %22
  %24 = load i32, i32* %i, align 4
  %25 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %26 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %51

; <label>:29                                      ; preds = %23
  %30 = load i32, i32* %i, align 4
  %31 = sext i32 %30 to i64
  %32 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %33 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %32, i32 0, i32 2
  %34 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %33, i32 0, i64 %31
  %35 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %34, i32 0, i32 1
  %36 = load %union.rec*, %union.rec** %35, align 8
  %37 = icmp ne %union.rec* %36, null
  br i1 %37, label %38, label %47

; <label>:38                                      ; preds = %29
  %39 = load i32, i32* %i, align 4
  %40 = sext i32 %39 to i64
  %41 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %42 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %41, i32 0, i32 2
  %43 = getelementptr inbounds [1 x %struct.filetab_rec], [1 x %struct.filetab_rec]* %42, i32 0, i64 %40
  %44 = getelementptr inbounds %struct.filetab_rec, %struct.filetab_rec* %43, i32 0, i32 1
  %45 = load %union.rec*, %union.rec** %44, align 8
  %46 = call i32 @DisposeObject(%union.rec* %45)
  br label %47

; <label>:47                                      ; preds = %38, %29
  br label %48

; <label>:48                                      ; preds = %47
  %49 = load i32, i32* %i, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %i, align 4
  br label %23

; <label>:51                                      ; preds = %23
  %52 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %53 = bitcast %struct.anon.14* %52 to i8*
  call void @free(i8* %53) #4
  %54 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %54
}

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @StringBeginsWith(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @stat(i8*, %struct.stat*) #3

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
