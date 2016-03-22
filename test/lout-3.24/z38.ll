; ModuleID = 'z38.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.mapvec = type { %union.rec*, i16, i32, i32, %union.rec*, [256 x %union.rec*], [353 x i8], [4 x [256 x i8]] }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.4 = type { i16, i16 }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.anon.0 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@.str = private unnamed_addr constant [2 x i8] c"-\00", align 1
@maptop = internal global i32 1, align 4
@MapTable = common global [20 x %struct.mapvec*] zeroinitializer, align 16
@zz_hold = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@notdef_word = internal global %union.rec* null, align 8
@.str.1 = private unnamed_addr constant [8 x i8] c".notdef\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.2 = private unnamed_addr constant [28 x i8] c"too many character mappings\00", align 1
@.str.3 = private unnamed_addr constant [49 x i8] c"run out of memory when loading character mapping\00", align 1
@.str.4 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"cannot open character mapping file %s\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c"vec\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"%d %o %s\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"character code(s) missing in mapping file (line %d)\00", align 1
@.str.9 = private unnamed_addr constant [59 x i8] c"decimal and octal codes disagree in mapping file (line %d)\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"-none-\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c"code %d too small (min is 1) in mapping file (line %d)\00", align 1
@.str.12 = private unnamed_addr constant [47 x i8] c"code %d out of order in mapping file (line %d)\00", align 1
@.str.13 = private unnamed_addr constant [43 x i8] c"code %d repeated in mapping file (line %d)\00", align 1
@.str.14 = private unnamed_addr constant [56 x i8] c"code %d too large (max is %d) in mapping file (line %d)\00", align 1
@.str.15 = private unnamed_addr constant [11 x i8] c"%d %o %s%n\00", align 1
@.str.16 = private unnamed_addr constant [12 x i8] c"%s %[^;];%n\00", align 1
@.str.17 = private unnamed_addr constant [3 x i8] c"UC\00", align 1
@.str.18 = private unnamed_addr constant [3 x i8] c"LC\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"UA\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"AC\00", align 1
@.str.21 = private unnamed_addr constant [53 x i8] c"unknown mapping name %s in mapping file %s (line %d)\00", align 1
@.str.22 = private unnamed_addr constant [50 x i8] c"unknown character %s in mapping file %s (line %d)\00", align 1
@.str.23 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.24 = private unnamed_addr constant [33 x i8] c"MapEncodingName: m out of range!\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"MapEnsurePrinted: not seen_recoded!\00", align 1
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.26 = private unnamed_addr constant [19 x i8] c"%%%%+ encoding %s\0A\00", align 1
@MapSmallCaps.font_change_word = internal global %union.rec* null, align 8
@.str.27 = private unnamed_addr constant [32 x i8] c"MapSmallCaps: !is_word(type(x))\00", align 1
@.str.28 = private unnamed_addr constant [36 x i8] c"MapSmallCaps: mapping out of range!\00", align 1
@.str.29 = private unnamed_addr constant [5 x i8] c"0.7f\00", align 1
@.str.30 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define i32 @MapLoad(%union.rec* %file_name, i32 %recoded) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %map = alloca %struct.mapvec*, align 8
  %res = alloca i32, align 4
  %i = alloca i32, align 4
  %m = alloca i32, align 4
  %curr_line_num = alloca i32, align 4
  %line_pos = alloca i32, align 4
  %prev_code = alloca i32, align 4
  %dc = alloca i32, align 4
  %oc = alloca i32, align 4
  %count = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %cn = alloca [512 x i8], align 16
  %ch = alloca i8, align 1
  %mapname = alloca [512 x i8], align 16
  %mapval = alloca [512 x i8], align 16
  store %union.rec* %file_name, %union.rec** %2, align 8
  store i32 %recoded, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 4
  %7 = getelementptr inbounds [4 x i8], [4 x i8]* %6, i32 0, i32 0
  %8 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i32 0, i32 0)) #4
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i32 0, i32* %1
  br label %546

; <label>:11                                      ; preds = %0
  store i32 1, i32* %res, align 4
  br label %12

; <label>:12                                      ; preds = %106, %11
  %13 = load i32, i32* %res, align 4
  %14 = load i32, i32* @maptop, align 4
  %15 = icmp ult i32 %13, %14
  br i1 %15, label %16, label %109

; <label>:16                                      ; preds = %12
  %17 = load i32, i32* %res, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %18
  %20 = load %struct.mapvec*, %struct.mapvec** %19, align 8
  %21 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %20, i32 0, i32 0
  %22 = load %union.rec*, %union.rec** %21, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 4
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i32 0, i32 0
  %26 = load %union.rec*, %union.rec** %2, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 4
  %29 = getelementptr inbounds [4 x i8], [4 x i8]* %28, i32 0, i32 0
  %30 = call i32 @strcmp(i8* %25, i8* %29) #4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %105

; <label>:32                                      ; preds = %16
  %33 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %33, %union.rec** @zz_hold, align 8
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %34, %union.rec** @zz_hold, align 8
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 1
  %38 = bitcast %union.FIRST_UNION* %37 to %struct.anon*
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 11
  br i1 %42, label %52, label %43

; <label>:43                                      ; preds = %32
  %44 = load %union.rec*, %union.rec** @zz_hold, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 1
  %47 = bitcast %union.FIRST_UNION* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp eq i32 %50, 12
  br i1 %51, label %52, label %60

; <label>:52                                      ; preds = %43, %32
  %53 = load %union.rec*, %union.rec** @zz_hold, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 1
  %56 = bitcast %union.FIRST_UNION* %55 to %struct.anon*
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 1
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  br label %71

; <label>:60                                      ; preds = %43
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 1
  %64 = bitcast %union.FIRST_UNION* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i64
  %68 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %67
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  br label %71

; <label>:71                                      ; preds = %60, %52
  %72 = phi i32 [ %59, %52 ], [ %70, %60 ]
  store i32 %72, i32* @zz_size, align 4
  %73 = load i32, i32* @zz_size, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %74
  %76 = load %union.rec*, %union.rec** %75, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 0
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 0
  store %union.rec* %76, %union.rec** %81, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = load i32, i32* @zz_size, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %84
  store %union.rec* %82, %union.rec** %85, align 8
  %86 = load i32, i32* %res, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %87
  %89 = load %struct.mapvec*, %struct.mapvec** %88, align 8
  %90 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %96, label %93

; <label>:93                                      ; preds = %71
  %94 = load i32, i32* %3, align 4
  %95 = icmp ne i32 %94, 0
  br label %96

; <label>:96                                      ; preds = %93, %71
  %97 = phi i1 [ true, %71 ], [ %95, %93 ]
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* %res, align 4
  %100 = zext i32 %99 to i64
  %101 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %100
  %102 = load %struct.mapvec*, %struct.mapvec** %101, align 8
  %103 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %102, i32 0, i32 2
  store i32 %98, i32* %103, align 4
  %104 = load i32, i32* %res, align 4
  store i32 %104, i32* %1
  br label %546

; <label>:105                                     ; preds = %16
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load i32, i32* %res, align 4
  %108 = add i32 %107, 1
  store i32 %108, i32* %res, align 4
  br label %12

; <label>:109                                     ; preds = %12
  %110 = load %union.rec*, %union.rec** @notdef_word, align 8
  %111 = icmp eq %union.rec* %110, null
  br i1 %111, label %112, label %115

; <label>:112                                     ; preds = %109
  %113 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %114 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %113)
  store %union.rec* %114, %union.rec** @notdef_word, align 8
  br label %115

; <label>:115                                     ; preds = %112, %109
  %116 = load i32, i32* @maptop, align 4
  %117 = icmp eq i32 %116, 20
  br i1 %117, label %118, label %124

; <label>:118                                     ; preds = %115
  %119 = load %union.rec*, %union.rec** %2, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 1
  %122 = bitcast %union.FIRST_UNION* %121 to %struct.FILE_POS*
  %123 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 1, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %122)
  br label %124

; <label>:124                                     ; preds = %118, %115
  %125 = call noalias i8* @malloc(i64 3464) #5
  %126 = bitcast i8* %125 to %struct.mapvec*
  store %struct.mapvec* %126, %struct.mapvec** %map, align 8
  %127 = load i32, i32* @maptop, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* @maptop, align 4
  store i32 %127, i32* %res, align 4
  %129 = zext i32 %127 to i64
  %130 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %129
  store %struct.mapvec* %126, %struct.mapvec** %130, align 8
  %131 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %132 = icmp eq %struct.mapvec* %131, null
  br i1 %132, label %133, label %139

; <label>:133                                     ; preds = %124
  %134 = load %union.rec*, %union.rec** %2, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 1
  %137 = bitcast %union.FIRST_UNION* %136 to %struct.FILE_POS*
  %138 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 2, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %137)
  br label %139

; <label>:139                                     ; preds = %133, %124
  %140 = load %union.rec*, %union.rec** %2, align 8
  %141 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %142 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %141, i32 0, i32 0
  store %union.rec* %140, %union.rec** %142, align 8
  %143 = load %union.rec*, %union.rec** %2, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 4
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %145, i32 0, i32 0
  %147 = load %union.rec*, %union.rec** %2, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 1
  %150 = bitcast %union.FIRST_UNION* %149 to %struct.FILE_POS*
  %151 = call zeroext i16 @DefineFile(i8* %146, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.4, i32 0, i32 0), %struct.FILE_POS* %150, i32 9, i32 7)
  %152 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %153 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %152, i32 0, i32 1
  store i16 %151, i16* %153, align 2
  %154 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %155 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %154, i32 0, i32 1
  %156 = load i16, i16* %155, align 2
  %157 = call %struct._IO_FILE* @OpenFile(i16 zeroext %156, i32 0, i32 0)
  store %struct._IO_FILE* %157, %struct._IO_FILE** %fp, align 8
  %158 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %159 = icmp eq %struct._IO_FILE* %158, null
  br i1 %159, label %160, label %170

; <label>:160                                     ; preds = %139
  %161 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %162 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %161, i32 0, i32 1
  %163 = load i16, i16* %162, align 2
  %164 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %163)
  %165 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %166 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %165, i32 0, i32 1
  %167 = load i16, i16* %166, align 2
  %168 = call i8* @FileName(i16 zeroext %167)
  %169 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 3, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %164, i8* %168)
  br label %170

; <label>:170                                     ; preds = %160, %139
  %171 = load i32, i32* %3, align 4
  %172 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %173 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %172, i32 0, i32 2
  store i32 %171, i32* %173, align 4
  %174 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %175 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %174, i32 0, i32 3
  store i32 0, i32* %175, align 4
  %176 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %177 = call i8* @strcpy(i8* %176, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i32 0, i32 0)) #5
  %178 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %179 = load i32, i32* @maptop, align 4
  %180 = call i8* @StringInt(i32 %179)
  %181 = call i8* @strcat(i8* %178, i8* %180) #5
  %182 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %183 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %184 = call %union.rec* @MakeWord(i32 11, i8* %182, %struct.FILE_POS* %183)
  %185 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %186 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %185, i32 0, i32 4
  store %union.rec* %184, %union.rec** %186, align 8
  store i32 0, i32* %m, align 4
  br label %187

; <label>:187                                     ; preds = %207, %170
  %188 = load i32, i32* %m, align 4
  %189 = icmp slt i32 %188, 4
  br i1 %189, label %190, label %210

; <label>:190                                     ; preds = %187
  store i32 0, i32* %i, align 4
  br label %191

; <label>:191                                     ; preds = %203, %190
  %192 = load i32, i32* %i, align 4
  %193 = icmp slt i32 %192, 256
  br i1 %193, label %194, label %206

; <label>:194                                     ; preds = %191
  %195 = load i32, i32* %i, align 4
  %196 = sext i32 %195 to i64
  %197 = load i32, i32* %m, align 4
  %198 = sext i32 %197 to i64
  %199 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %200 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %199, i32 0, i32 7
  %201 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %200, i32 0, i64 %198
  %202 = getelementptr inbounds [256 x i8], [256 x i8]* %201, i32 0, i64 %196
  store i8 0, i8* %202, align 1
  br label %203

; <label>:203                                     ; preds = %194
  %204 = load i32, i32* %i, align 4
  %205 = add nsw i32 %204, 1
  store i32 %205, i32* %i, align 4
  br label %191

; <label>:206                                     ; preds = %191
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load i32, i32* %m, align 4
  %209 = add nsw i32 %208, 1
  store i32 %209, i32* %m, align 4
  br label %187

; <label>:210                                     ; preds = %187
  store i32 0, i32* %i, align 4
  br label %211

; <label>:211                                     ; preds = %223, %210
  %212 = load i32, i32* %i, align 4
  %213 = icmp slt i32 %212, 256
  br i1 %213, label %214, label %226

; <label>:214                                     ; preds = %211
  %215 = load i32, i32* %i, align 4
  %216 = trunc i32 %215 to i8
  %217 = load i32, i32* %i, align 4
  %218 = sext i32 %217 to i64
  %219 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %220 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %219, i32 0, i32 7
  %221 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %220, i32 0, i64 2
  %222 = getelementptr inbounds [256 x i8], [256 x i8]* %221, i32 0, i64 %218
  store i8 %216, i8* %222, align 1
  br label %223

; <label>:223                                     ; preds = %214
  %224 = load i32, i32* %i, align 4
  %225 = add nsw i32 %224, 1
  store i32 %225, i32* %i, align 4
  br label %211

; <label>:226                                     ; preds = %211
  store i32 0, i32* %i, align 4
  br label %227

; <label>:227                                     ; preds = %237, %226
  %228 = load i32, i32* %i, align 4
  %229 = icmp slt i32 %228, 256
  br i1 %229, label %230, label %240

; <label>:230                                     ; preds = %227
  %231 = load %union.rec*, %union.rec** @notdef_word, align 8
  %232 = load i32, i32* %i, align 4
  %233 = sext i32 %232 to i64
  %234 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %235 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %234, i32 0, i32 5
  %236 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %235, i32 0, i64 %233
  store %union.rec* %231, %union.rec** %236, align 8
  br label %237

; <label>:237                                     ; preds = %230
  %238 = load i32, i32* %i, align 4
  %239 = add nsw i32 %238, 1
  store i32 %239, i32* %i, align 4
  br label %227

; <label>:240                                     ; preds = %227
  store i32 0, i32* %i, align 4
  br label %241

; <label>:241                                     ; preds = %250, %240
  %242 = load i32, i32* %i, align 4
  %243 = icmp slt i32 %242, 353
  br i1 %243, label %244, label %253

; <label>:244                                     ; preds = %241
  %245 = load i32, i32* %i, align 4
  %246 = sext i32 %245 to i64
  %247 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %248 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %247, i32 0, i32 6
  %249 = getelementptr inbounds [353 x i8], [353 x i8]* %248, i32 0, i64 %246
  store i8 0, i8* %249, align 1
  br label %250

; <label>:250                                     ; preds = %244
  %251 = load i32, i32* %i, align 4
  %252 = add nsw i32 %251, 1
  store i32 %252, i32* %i, align 4
  br label %241

; <label>:253                                     ; preds = %241
  store i32 -1, i32* %prev_code, align 4
  store i32 0, i32* %curr_line_num, align 4
  br label %254

; <label>:254                                     ; preds = %408, %304, %253
  %255 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %256 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %257 = call i8* @fgets(i8* %255, i32 512, %struct._IO_FILE* %256)
  %258 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %259 = icmp eq i8* %257, %258
  br i1 %259, label %260, label %409

; <label>:260                                     ; preds = %254
  %261 = load i32, i32* %curr_line_num, align 4
  %262 = add nsw i32 %261, 1
  store i32 %262, i32* %curr_line_num, align 4
  store i32 0, i32* %i, align 4
  br label %263

; <label>:263                                     ; preds = %280, %260
  %264 = load i32, i32* %i, align 4
  %265 = sext i32 %264 to i64
  %266 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %265
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  %269 = icmp eq i32 %268, 32
  br i1 %269, label %277, label %270

; <label>:270                                     ; preds = %263
  %271 = load i32, i32* %i, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %272
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp eq i32 %275, 9
  br label %277

; <label>:277                                     ; preds = %270, %263
  %278 = phi i1 [ true, %263 ], [ %276, %270 ]
  br i1 %278, label %279, label %283

; <label>:279                                     ; preds = %277
  br label %280

; <label>:280                                     ; preds = %279
  %281 = load i32, i32* %i, align 4
  %282 = add nsw i32 %281, 1
  store i32 %282, i32* %i, align 4
  br label %263

; <label>:283                                     ; preds = %277
  %284 = load i32, i32* %i, align 4
  %285 = sext i32 %284 to i64
  %286 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %285
  %287 = load i8, i8* %286, align 1
  %288 = zext i8 %287 to i32
  %289 = icmp eq i32 %288, 35
  br i1 %289, label %304, label %290

; <label>:290                                     ; preds = %283
  %291 = load i32, i32* %i, align 4
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %292
  %294 = load i8, i8* %293, align 1
  %295 = zext i8 %294 to i32
  %296 = icmp eq i32 %295, 10
  br i1 %296, label %304, label %297

; <label>:297                                     ; preds = %290
  %298 = load i32, i32* %i, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %299
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp eq i32 %302, 0
  br i1 %303, label %304, label %305

; <label>:304                                     ; preds = %297, %290, %283
  br label %254

; <label>:305                                     ; preds = %297
  %306 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %307 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %308 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %306, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i32 0, i32 0), i32* %dc, i32* %oc, i8* %307) #5
  store i32 %308, i32* %count, align 4
  %309 = load i32, i32* %count, align 4
  %310 = icmp slt i32 %309, 2
  br i1 %310, label %311, label %317

; <label>:311                                     ; preds = %305
  %312 = load %union.rec*, %union.rec** %2, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 1
  %315 = bitcast %union.FIRST_UNION* %314 to %struct.FILE_POS*
  %316 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %315)
  br label %317

; <label>:317                                     ; preds = %311, %305
  %318 = load i32, i32* %dc, align 4
  %319 = load i32, i32* %oc, align 4
  %320 = icmp ne i32 %318, %319
  br i1 %320, label %321, label %327

; <label>:321                                     ; preds = %317
  %322 = load %union.rec*, %union.rec** %2, align 8
  %323 = bitcast %union.rec* %322 to %struct.word_type*
  %324 = getelementptr inbounds %struct.word_type, %struct.word_type* %323, i32 0, i32 1
  %325 = bitcast %union.FIRST_UNION* %324 to %struct.FILE_POS*
  %326 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 5, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %325)
  br label %327

; <label>:327                                     ; preds = %321, %317
  %328 = load i32, i32* %dc, align 4
  %329 = icmp slt i32 %328, 1
  br i1 %329, label %330, label %342

; <label>:330                                     ; preds = %327
  %331 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %332 = call i32 @strcmp(i8* %331, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #4
  %333 = icmp eq i32 %332, 0
  br i1 %333, label %342, label %334

; <label>:334                                     ; preds = %330
  %335 = load %union.rec*, %union.rec** %2, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 1
  %338 = bitcast %union.FIRST_UNION* %337 to %struct.FILE_POS*
  %339 = load i32, i32* %dc, align 4
  %340 = load i32, i32* %curr_line_num, align 4
  %341 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 6, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %338, i32 %339, i32 %340)
  br label %342

; <label>:342                                     ; preds = %334, %330, %327
  %343 = load i32, i32* %dc, align 4
  %344 = load i32, i32* %prev_code, align 4
  %345 = icmp slt i32 %343, %344
  br i1 %345, label %346, label %354

; <label>:346                                     ; preds = %342
  %347 = load %union.rec*, %union.rec** %2, align 8
  %348 = bitcast %union.rec* %347 to %struct.word_type*
  %349 = getelementptr inbounds %struct.word_type, %struct.word_type* %348, i32 0, i32 1
  %350 = bitcast %union.FIRST_UNION* %349 to %struct.FILE_POS*
  %351 = load i32, i32* %dc, align 4
  %352 = load i32, i32* %curr_line_num, align 4
  %353 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 7, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.12, i32 0, i32 0), i32 1, %struct.FILE_POS* %350, i32 %351, i32 %352)
  br label %354

; <label>:354                                     ; preds = %346, %342
  %355 = load i32, i32* %dc, align 4
  %356 = load i32, i32* %prev_code, align 4
  %357 = icmp eq i32 %355, %356
  br i1 %357, label %358, label %366

; <label>:358                                     ; preds = %354
  %359 = load %union.rec*, %union.rec** %2, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 1
  %362 = bitcast %union.FIRST_UNION* %361 to %struct.FILE_POS*
  %363 = load i32, i32* %dc, align 4
  %364 = load i32, i32* %curr_line_num, align 4
  %365 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 8, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.13, i32 0, i32 0), i32 1, %struct.FILE_POS* %362, i32 %363, i32 %364)
  br label %366

; <label>:366                                     ; preds = %358, %354
  %367 = load i32, i32* %dc, align 4
  %368 = icmp sgt i32 %367, 256
  br i1 %368, label %369, label %377

; <label>:369                                     ; preds = %366
  %370 = load %union.rec*, %union.rec** %2, align 8
  %371 = bitcast %union.rec* %370 to %struct.word_type*
  %372 = getelementptr inbounds %struct.word_type, %struct.word_type* %371, i32 0, i32 1
  %373 = bitcast %union.FIRST_UNION* %372 to %struct.FILE_POS*
  %374 = load i32, i32* %dc, align 4
  %375 = load i32, i32* %curr_line_num, align 4
  %376 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 9, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.14, i32 0, i32 0), i32 1, %struct.FILE_POS* %373, i32 %374, i32 256, i32 %375)
  br label %377

; <label>:377                                     ; preds = %369, %366
  %378 = load i32, i32* %dc, align 4
  store i32 %378, i32* %prev_code, align 4
  %379 = load i32, i32* %count, align 4
  %380 = icmp sge i32 %379, 3
  br i1 %380, label %381, label %408

; <label>:381                                     ; preds = %377
  %382 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %383 = call i32 @strcmp(i8* %382, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0)) #4
  %384 = icmp eq i32 %383, 0
  br i1 %384, label %408, label %385

; <label>:385                                     ; preds = %381
  %386 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %387 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %388 = call zeroext i8 @NameRetrieve(i8* %386, %struct.mapvec* %387)
  store i8 %388, i8* %ch, align 1
  %389 = zext i8 %388 to i32
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %391, label %403

; <label>:391                                     ; preds = %385
  %392 = load i8, i8* %ch, align 1
  %393 = zext i8 %392 to i64
  %394 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %395 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %394, i32 0, i32 5
  %396 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %395, i32 0, i64 %393
  %397 = load %union.rec*, %union.rec** %396, align 8
  %398 = load i32, i32* %dc, align 4
  %399 = sext i32 %398 to i64
  %400 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %401 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %400, i32 0, i32 5
  %402 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %401, i32 0, i64 %399
  store %union.rec* %397, %union.rec** %402, align 8
  br label %407

; <label>:403                                     ; preds = %385
  %404 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %405 = load i32, i32* %dc, align 4
  %406 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  call void @NameInsert(i8* %404, i32 %405, %struct.mapvec* %406)
  br label %407

; <label>:407                                     ; preds = %403, %391
  br label %408

; <label>:408                                     ; preds = %407, %381, %377
  br label %254

; <label>:409                                     ; preds = %254
  %410 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  call void @rewind(%struct._IO_FILE* %410)
  store i32 0, i32* %curr_line_num, align 4
  br label %411

; <label>:411                                     ; preds = %541, %461, %409
  %412 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %413 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %414 = call i8* @fgets(i8* %412, i32 512, %struct._IO_FILE* %413)
  %415 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %416 = icmp eq i8* %414, %415
  br i1 %416, label %417, label %542

; <label>:417                                     ; preds = %411
  %418 = load i32, i32* %curr_line_num, align 4
  %419 = add nsw i32 %418, 1
  store i32 %419, i32* %curr_line_num, align 4
  store i32 0, i32* %i, align 4
  br label %420

; <label>:420                                     ; preds = %437, %417
  %421 = load i32, i32* %i, align 4
  %422 = sext i32 %421 to i64
  %423 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %422
  %424 = load i8, i8* %423, align 1
  %425 = zext i8 %424 to i32
  %426 = icmp eq i32 %425, 32
  br i1 %426, label %434, label %427

; <label>:427                                     ; preds = %420
  %428 = load i32, i32* %i, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %429
  %431 = load i8, i8* %430, align 1
  %432 = zext i8 %431 to i32
  %433 = icmp eq i32 %432, 9
  br label %434

; <label>:434                                     ; preds = %427, %420
  %435 = phi i1 [ true, %420 ], [ %433, %427 ]
  br i1 %435, label %436, label %440

; <label>:436                                     ; preds = %434
  br label %437

; <label>:437                                     ; preds = %436
  %438 = load i32, i32* %i, align 4
  %439 = add nsw i32 %438, 1
  store i32 %439, i32* %i, align 4
  br label %420

; <label>:440                                     ; preds = %434
  %441 = load i32, i32* %i, align 4
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %442
  %444 = load i8, i8* %443, align 1
  %445 = zext i8 %444 to i32
  %446 = icmp eq i32 %445, 35
  br i1 %446, label %461, label %447

; <label>:447                                     ; preds = %440
  %448 = load i32, i32* %i, align 4
  %449 = sext i32 %448 to i64
  %450 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %449
  %451 = load i8, i8* %450, align 1
  %452 = zext i8 %451 to i32
  %453 = icmp eq i32 %452, 10
  br i1 %453, label %461, label %454

; <label>:454                                     ; preds = %447
  %455 = load i32, i32* %i, align 4
  %456 = sext i32 %455 to i64
  %457 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %456
  %458 = load i8, i8* %457, align 1
  %459 = zext i8 %458 to i32
  %460 = icmp eq i32 %459, 0
  br i1 %460, label %461, label %462

; <label>:461                                     ; preds = %454, %447, %440
  br label %411

; <label>:462                                     ; preds = %454
  %463 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %464 = getelementptr inbounds [512 x i8], [512 x i8]* %cn, i32 0, i32 0
  %465 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %463, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.15, i32 0, i32 0), i32* %dc, i32* %oc, i8* %464, i32* %line_pos) #5
  store i32 %465, i32* %count, align 4
  br label %466

; <label>:466                                     ; preds = %531, %462
  %467 = load i32, i32* %line_pos, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %468
  %470 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %471 = getelementptr inbounds [512 x i8], [512 x i8]* %mapval, i32 0, i32 0
  %472 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %469, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.16, i32 0, i32 0), i8* %470, i8* %471, i32* %i) #5
  %473 = icmp eq i32 %472, 2
  br i1 %473, label %474, label %541

; <label>:474                                     ; preds = %466
  %475 = load i32, i32* %i, align 4
  %476 = load i32, i32* %line_pos, align 4
  %477 = add nsw i32 %476, %475
  store i32 %477, i32* %line_pos, align 4
  %478 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %479 = call i32 @strcmp(i8* %478, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.17, i32 0, i32 0)) #4
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %481, label %482

; <label>:481                                     ; preds = %474
  store i32 0, i32* %m, align 4
  br label %512

; <label>:482                                     ; preds = %474
  %483 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %484 = call i32 @strcmp(i8* %483, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.18, i32 0, i32 0)) #4
  %485 = icmp eq i32 %484, 0
  br i1 %485, label %486, label %487

; <label>:486                                     ; preds = %482
  store i32 1, i32* %m, align 4
  br label %511

; <label>:487                                     ; preds = %482
  %488 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %489 = call i32 @strcmp(i8* %488, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0)) #4
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %491, label %492

; <label>:491                                     ; preds = %487
  store i32 2, i32* %m, align 4
  br label %510

; <label>:492                                     ; preds = %487
  %493 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %494 = call i32 @strcmp(i8* %493, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.20, i32 0, i32 0)) #4
  %495 = icmp eq i32 %494, 0
  br i1 %495, label %496, label %497

; <label>:496                                     ; preds = %492
  store i32 3, i32* %m, align 4
  br label %509

; <label>:497                                     ; preds = %492
  %498 = load %union.rec*, %union.rec** %2, align 8
  %499 = bitcast %union.rec* %498 to %struct.word_type*
  %500 = getelementptr inbounds %struct.word_type, %struct.word_type* %499, i32 0, i32 1
  %501 = bitcast %union.FIRST_UNION* %500 to %struct.FILE_POS*
  %502 = getelementptr inbounds [512 x i8], [512 x i8]* %mapname, i32 0, i32 0
  %503 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %504 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %503, i32 0, i32 1
  %505 = load i16, i16* %504, align 2
  %506 = call i8* @FileName(i16 zeroext %505)
  %507 = load i32, i32* %curr_line_num, align 4
  %508 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 10, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.21, i32 0, i32 0), i32 1, %struct.FILE_POS* %501, i8* %502, i8* %506, i32 %507)
  br label %509

; <label>:509                                     ; preds = %497, %496
  br label %510

; <label>:510                                     ; preds = %509, %491
  br label %511

; <label>:511                                     ; preds = %510, %486
  br label %512

; <label>:512                                     ; preds = %511, %481
  %513 = getelementptr inbounds [512 x i8], [512 x i8]* %mapval, i32 0, i32 0
  %514 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %515 = call zeroext i8 @NameRetrieve(i8* %513, %struct.mapvec* %514)
  store i8 %515, i8* %ch, align 1
  %516 = load i8, i8* %ch, align 1
  %517 = zext i8 %516 to i32
  %518 = icmp eq i32 %517, 0
  br i1 %518, label %519, label %531

; <label>:519                                     ; preds = %512
  %520 = load %union.rec*, %union.rec** %2, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 1
  %523 = bitcast %union.FIRST_UNION* %522 to %struct.FILE_POS*
  %524 = getelementptr inbounds [512 x i8], [512 x i8]* %mapval, i32 0, i32 0
  %525 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %526 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %525, i32 0, i32 1
  %527 = load i16, i16* %526, align 2
  %528 = call i8* @FileName(i16 zeroext %527)
  %529 = load i32, i32* %curr_line_num, align 4
  %530 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 38, i32 11, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %523, i8* %524, i8* %528, i32 %529)
  br label %531

; <label>:531                                     ; preds = %519, %512
  %532 = load i8, i8* %ch, align 1
  %533 = load i32, i32* %dc, align 4
  %534 = sext i32 %533 to i64
  %535 = load i32, i32* %m, align 4
  %536 = sext i32 %535 to i64
  %537 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %538 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %537, i32 0, i32 7
  %539 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %538, i32 0, i64 %536
  %540 = getelementptr inbounds [256 x i8], [256 x i8]* %539, i32 0, i64 %534
  store i8 %532, i8* %540, align 1
  br label %466

; <label>:541                                     ; preds = %466
  br label %411

; <label>:542                                     ; preds = %411
  %543 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %544 = call i32 @fclose(%struct._IO_FILE* %543)
  %545 = load i32, i32* %res, align 4
  store i32 %545, i32* %1
  br label %546

; <label>:546                                     ; preds = %542, %96, %10
  %547 = load i32, i32* %1
  ret i32 %547
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #2

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #2

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #2

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #2

declare i8* @FileName(i16 zeroext) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @StringInt(i32) #2

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #2

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal zeroext i8 @NameRetrieve(i8* %cname, %struct.mapvec* %map) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mapvec*, align 8
  %pos = alloca i32, align 4
  %ch = alloca i8, align 1
  %p = alloca i8*, align 8
  store i8* %cname, i8** %2, align 8
  store %struct.mapvec* %map, %struct.mapvec** %3, align 8
  %4 = load i8*, i8** %2, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %p, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = mul nsw i32 2, %8
  store i32 %9, i32* %pos, align 4
  br label %10

; <label>:10                                      ; preds = %15, %0
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %10
  br label %15

; <label>:15                                      ; preds = %14
  %16 = load i8*, i8** %p, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %p, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %pos, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %pos, align 4
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load i32, i32* %pos, align 4
  %24 = srem i32 %23, 353
  store i32 %24, i32* %pos, align 4
  br label %25

; <label>:25                                      ; preds = %49, %22
  %26 = load i32, i32* %pos, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.mapvec*, %struct.mapvec** %3, align 8
  %29 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %28, i32 0, i32 6
  %30 = getelementptr inbounds [353 x i8], [353 x i8]* %29, i32 0, i64 %27
  %31 = load i8, i8* %30, align 1
  store i8 %31, i8* %ch, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %53

; <label>:34                                      ; preds = %25
  %35 = load i8, i8* %ch, align 1
  %36 = zext i8 %35 to i64
  %37 = load %struct.mapvec*, %struct.mapvec** %3, align 8
  %38 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %37, i32 0, i32 5
  %39 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %38, i32 0, i64 %36
  %40 = load %union.rec*, %union.rec** %39, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 4
  %43 = getelementptr inbounds [4 x i8], [4 x i8]* %42, i32 0, i32 0
  %44 = load i8*, i8** %2, align 8
  %45 = call i32 @strcmp(i8* %43, i8* %44) #4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %49

; <label>:47                                      ; preds = %34
  %48 = load i8, i8* %ch, align 1
  store i8 %48, i8* %1
  br label %55

; <label>:49                                      ; preds = %34
  %50 = load i32, i32* %pos, align 4
  %51 = add nsw i32 %50, 1
  %52 = srem i32 %51, 353
  store i32 %52, i32* %pos, align 4
  br label %25

; <label>:53                                      ; preds = %25
  %54 = load i8, i8* %ch, align 1
  store i8 %54, i8* %1
  br label %55

; <label>:55                                      ; preds = %53, %47
  %56 = load i8, i8* %1
  ret i8 %56
}

; Function Attrs: nounwind uwtable
define internal void @NameInsert(i8* %cname, i32 %ccode, %struct.mapvec* %map) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.mapvec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %cname, i8** %1, align 8
  store i32 %ccode, i32* %2, align 4
  store %struct.mapvec* %map, %struct.mapvec** %3, align 8
  %4 = load i8*, i8** %1, align 8
  store i8* %4, i8** %p, align 8
  %5 = load i8*, i8** %p, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %p, align 8
  %7 = load i8, i8* %5, align 1
  %8 = zext i8 %7 to i32
  %9 = mul nsw i32 2, %8
  store i32 %9, i32* %pos, align 4
  br label %10

; <label>:10                                      ; preds = %15, %0
  %11 = load i8*, i8** %p, align 8
  %12 = load i8, i8* %11, align 1
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %22

; <label>:14                                      ; preds = %10
  br label %15

; <label>:15                                      ; preds = %14
  %16 = load i8*, i8** %p, align 8
  %17 = getelementptr inbounds i8, i8* %16, i32 1
  store i8* %17, i8** %p, align 8
  %18 = load i8, i8* %16, align 1
  %19 = zext i8 %18 to i32
  %20 = load i32, i32* %pos, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %pos, align 4
  br label %10

; <label>:22                                      ; preds = %10
  %23 = load i32, i32* %pos, align 4
  %24 = srem i32 %23, 353
  store i32 %24, i32* %pos, align 4
  br label %25

; <label>:25                                      ; preds = %34, %22
  %26 = load i32, i32* %pos, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.mapvec*, %struct.mapvec** %3, align 8
  %29 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %28, i32 0, i32 6
  %30 = getelementptr inbounds [353 x i8], [353 x i8]* %29, i32 0, i64 %27
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

; <label>:34                                      ; preds = %25
  %35 = load i32, i32* %pos, align 4
  %36 = add nsw i32 %35, 1
  %37 = srem i32 %36, 353
  store i32 %37, i32* %pos, align 4
  br label %25

; <label>:38                                      ; preds = %25
  %39 = load i8*, i8** %1, align 8
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %41 = call %union.rec* @MakeWord(i32 11, i8* %39, %struct.FILE_POS* %40)
  %42 = load i32, i32* %2, align 4
  %43 = sext i32 %42 to i64
  %44 = load %struct.mapvec*, %struct.mapvec** %3, align 8
  %45 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %44, i32 0, i32 5
  %46 = getelementptr inbounds [256 x %union.rec*], [256 x %union.rec*]* %45, i32 0, i64 %43
  store %union.rec* %41, %union.rec** %46, align 8
  %47 = load i32, i32* %2, align 4
  %48 = trunc i32 %47 to i8
  %49 = load i32, i32* %pos, align 4
  %50 = sext i32 %49 to i64
  %51 = load %struct.mapvec*, %struct.mapvec** %3, align 8
  %52 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %51, i32 0, i32 6
  %53 = getelementptr inbounds [353 x i8], [353 x i8]* %52, i32 0, i64 %50
  store i8 %48, i8* %53, align 1
  ret void
}

declare void @rewind(%struct._IO_FILE*) #2

declare i32 @fclose(%struct._IO_FILE*) #2

; Function Attrs: nounwind uwtable
define zeroext i8 @MapCharEncoding(i8* %str, i32 %m) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store i8* %str, i8** %1, align 8
  store i32 %m, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %4
  %6 = load %struct.mapvec*, %struct.mapvec** %5, align 8
  store %struct.mapvec* %6, %struct.mapvec** %map, align 8
  %7 = load i8*, i8** %1, align 8
  %8 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %9 = call zeroext i8 @NameRetrieve(i8* %7, %struct.mapvec* %8)
  ret i8 %9
}

; Function Attrs: nounwind uwtable
define i8* @MapEncodingName(i32 %m) #0 {
  %1 = alloca i32, align 4
  store i32 %m, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = load i32, i32* @maptop, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %8, label %5

; <label>:5                                       ; preds = %0
  %6 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %7 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.24, i32 0, i32 0))
  br label %8

; <label>:8                                       ; preds = %5, %0
  %9 = load i32, i32* %1, align 4
  %10 = zext i32 %9 to i64
  %11 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %10
  %12 = load %struct.mapvec*, %struct.mapvec** %11, align 8
  %13 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %12, i32 0, i32 4
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 4
  %17 = getelementptr inbounds [4 x i8], [4 x i8]* %16, i32 0, i32 0
  ret i8* %17
}

; Function Attrs: nounwind uwtable
define void @MapEnsurePrinted(i32 %m, i32 %curr_page) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store i32 %m, i32* %1, align 4
  store i32 %curr_page, i32* %2, align 4
  %3 = load i32, i32* %1, align 4
  %4 = zext i32 %3 to i64
  %5 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %4
  %6 = load %struct.mapvec*, %struct.mapvec** %5, align 8
  store %struct.mapvec* %6, %struct.mapvec** %map, align 8
  %7 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %8 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.25, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %16 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

; <label>:20                                      ; preds = %14
  %21 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %22 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 1
  br i1 %24, label %25, label %33

; <label>:25                                      ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %28 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 4
  %29 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %30 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %29, i32 0, i32 14
  %31 = load void (i32)*, void (i32)** %30, align 8
  %32 = load i32, i32* %1, align 4
  call void %31(i32 %32)
  br label %33

; <label>:33                                      ; preds = %25, %20, %14
  ret void
}

; Function Attrs: nounwind uwtable
define void @MapPrintEncodings() #0 {
  %m = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store i32 1, i32* %m, align 4
  br label %1

; <label>:1                                       ; preds = %25, %0
  %2 = load i32, i32* %m, align 4
  %3 = load i32, i32* @maptop, align 4
  %4 = icmp ult i32 %2, %3
  br i1 %4, label %5, label %28

; <label>:5                                       ; preds = %1
  %6 = load i32, i32* %m, align 4
  %7 = zext i32 %6 to i64
  %8 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %7
  %9 = load %struct.mapvec*, %struct.mapvec** %8, align 8
  %10 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %24

; <label>:13                                      ; preds = %5
  %14 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %15 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %14, i32 0, i32 14
  %16 = load void (i32)*, void (i32)** %15, align 8
  %17 = load i32, i32* %m, align 4
  call void %16(i32 %17)
  %18 = load i32, i32* %m, align 4
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %19
  %21 = load %struct.mapvec*, %struct.mapvec** %20, align 8
  store %struct.mapvec* %21, %struct.mapvec** %map, align 8
  %22 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %23 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %22, i32 0, i32 3
  store i32 1, i32* %23, align 4
  br label %24

; <label>:24                                      ; preds = %13, %5
  br label %25

; <label>:25                                      ; preds = %24
  %26 = load i32, i32* %m, align 4
  %27 = add i32 %26, 1
  store i32 %27, i32* %m, align 4
  br label %1

; <label>:28                                      ; preds = %1
  ret void
}

; Function Attrs: nounwind uwtable
define void @MapPrintPSResources(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %m = alloca i32, align 4
  %map = alloca %struct.mapvec*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i32 1, i32* %m, align 4
  br label %2

; <label>:2                                       ; preds = %28, %0
  %3 = load i32, i32* %m, align 4
  %4 = load i32, i32* @maptop, align 4
  %5 = icmp ult i32 %3, %4
  br i1 %5, label %6, label %31

; <label>:6                                       ; preds = %2
  %7 = load i32, i32* %m, align 4
  %8 = zext i32 %7 to i64
  %9 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %8
  %10 = load %struct.mapvec*, %struct.mapvec** %9, align 8
  %11 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %27

; <label>:14                                      ; preds = %6
  %15 = load i32, i32* %m, align 4
  %16 = zext i32 %15 to i64
  %17 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %16
  %18 = load %struct.mapvec*, %struct.mapvec** %17, align 8
  store %struct.mapvec* %18, %struct.mapvec** %map, align 8
  %19 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %20 = load %struct.mapvec*, %struct.mapvec** %map, align 8
  %21 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %20, i32 0, i32 4
  %22 = load %union.rec*, %union.rec** %21, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 4
  %25 = getelementptr inbounds [4 x i8], [4 x i8]* %24, i32 0, i32 0
  %26 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %19, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.26, i32 0, i32 0), i8* %25)
  br label %27

; <label>:27                                      ; preds = %14, %6
  br label %28

; <label>:28                                      ; preds = %27
  %29 = load i32, i32* %m, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %m, align 4
  br label %2

; <label>:31                                      ; preds = %2
  ret void
}

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #2

; Function Attrs: nounwind uwtable
define %union.rec* @MapSmallCaps(%union.rec* %x, %struct.STYLE* %style) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.STYLE*, align 8
  %m = alloca i32, align 4
  %i = alloca i32, align 4
  %new_y = alloca %union.rec*, align 8
  %new_x = alloca %union.rec*, align 8
  %new_acat = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %uc = alloca i8*, align 8
  %p = alloca i8*, align 8
  %q = alloca i8*, align 8
  %small_font = alloca i32, align 4
  %vshift = alloca i32, align 4
  %state = alloca i32, align 4
  %new_style = alloca %struct.STYLE, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  store %struct.STYLE* %style, %struct.STYLE** %3, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %24, label %12

; <label>:12                                      ; preds = %0
  %13 = load %union.rec*, %union.rec** %2, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.anon*
  %17 = getelementptr inbounds %struct.anon, %struct.anon* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 12
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %12
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %23 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.27, i32 0, i32 0))
  br label %24

; <label>:24                                      ; preds = %21, %12, %0
  %25 = load %union.rec*, %union.rec** %2, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 2
  %28 = bitcast %union.SECOND_UNION* %27 to %struct.anon.4*
  %29 = bitcast %struct.anon.4* %28 to i16*
  %30 = load i16, i16* %29, align 4
  %31 = and i16 %30, 4095
  %32 = zext i16 %31 to i32
  %33 = load %union.rec*, %union.rec** %2, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 1
  %36 = bitcast %union.FIRST_UNION* %35 to %struct.FILE_POS*
  %37 = call i32 @FontMapping(i32 %32, %struct.FILE_POS* %36)
  store i32 %37, i32* %m, align 4
  %38 = load i32, i32* %m, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

; <label>:40                                      ; preds = %24
  %41 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %41, %union.rec** %1
  br label %3450

; <label>:42                                      ; preds = %24
  %43 = load i32, i32* %m, align 4
  %44 = icmp ule i32 1, %43
  br i1 %44, label %45, label %49

; <label>:45                                      ; preds = %42
  %46 = load i32, i32* %m, align 4
  %47 = load i32, i32* @maptop, align 4
  %48 = icmp ult i32 %46, %47
  br i1 %48, label %52, label %49

; <label>:49                                      ; preds = %45, %42
  %50 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %51 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.23, i32 0, i32 0), i32 0, %struct.FILE_POS* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.28, i32 0, i32 0))
  br label %52

; <label>:52                                      ; preds = %49, %45
  %53 = load i32, i32* %m, align 4
  %54 = zext i32 %53 to i64
  %55 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %54
  %56 = load %struct.mapvec*, %struct.mapvec** %55, align 8
  %57 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %56, i32 0, i32 7
  %58 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %57, i32 0, i64 0
  %59 = getelementptr inbounds [256 x i8], [256 x i8]* %58, i32 0, i32 0
  store i8* %59, i8** %uc, align 8
  %60 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %61 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %113, label %64

; <label>:64                                      ; preds = %52
  store i32 0, i32* %i, align 4
  br label %65

; <label>:65                                      ; preds = %108, %64
  %66 = load i32, i32* %i, align 4
  %67 = sext i32 %66 to i64
  %68 = load %union.rec*, %union.rec** %2, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 4
  %71 = getelementptr inbounds [4 x i8], [4 x i8]* %70, i32 0, i64 %67
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %111

; <label>:75                                      ; preds = %65
  %76 = load i32, i32* %i, align 4
  %77 = sext i32 %76 to i64
  %78 = load %union.rec*, %union.rec** %2, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 4
  %81 = getelementptr inbounds [4 x i8], [4 x i8]* %80, i32 0, i64 %77
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i64
  %84 = load i8*, i8** %uc, align 8
  %85 = getelementptr inbounds i8, i8* %84, i64 %83
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %107

; <label>:89                                      ; preds = %75
  %90 = load i32, i32* %i, align 4
  %91 = sext i32 %90 to i64
  %92 = load %union.rec*, %union.rec** %2, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 4
  %95 = getelementptr inbounds [4 x i8], [4 x i8]* %94, i32 0, i64 %91
  %96 = load i8, i8* %95, align 1
  %97 = zext i8 %96 to i64
  %98 = load i8*, i8** %uc, align 8
  %99 = getelementptr inbounds i8, i8* %98, i64 %97
  %100 = load i8, i8* %99, align 1
  %101 = load i32, i32* %i, align 4
  %102 = sext i32 %101 to i64
  %103 = load %union.rec*, %union.rec** %2, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 4
  %106 = getelementptr inbounds [4 x i8], [4 x i8]* %105, i32 0, i64 %102
  store i8 %100, i8* %106, align 1
  br label %107

; <label>:107                                     ; preds = %89, %75
  br label %108

; <label>:108                                     ; preds = %107
  %109 = load i32, i32* %i, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %i, align 4
  br label %65

; <label>:111                                     ; preds = %65
  %112 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %112, %union.rec** %1
  br label %3450

; <label>:113                                     ; preds = %52
  %114 = load %union.rec*, %union.rec** @MapSmallCaps.font_change_word, align 8
  %115 = icmp eq %union.rec* %114, null
  br i1 %115, label %116, label %119

; <label>:116                                     ; preds = %113
  %117 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %118 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.29, i32 0, i32 0), %struct.FILE_POS* %117)
  store %union.rec* %118, %union.rec** @MapSmallCaps.font_change_word, align 8
  br label %119

; <label>:119                                     ; preds = %116, %113
  store i32 0, i32* %state, align 4
  %120 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %120, i8** %q, align 8
  %121 = load %union.rec*, %union.rec** %2, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 4
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i32 0, i32 0
  store i8* %124, i8** %p, align 8
  br label %125

; <label>:125                                     ; preds = %2579, %119
  %126 = load i8*, i8** %p, align 8
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %2582

; <label>:130                                     ; preds = %125
  %131 = load i32, i32* %state, align 4
  switch i32 %131, label %2578 [
    i32 0, label %132
    i32 1, label %576
    i32 2, label %1581
    i32 3, label %2164
    i32 4, label %2372
  ]

; <label>:132                                     ; preds = %130
  %133 = load i8*, i8** %p, align 8
  %134 = load i8, i8* %133, align 1
  %135 = zext i8 %134 to i64
  %136 = load i8*, i8** %uc, align 8
  %137 = getelementptr inbounds i8, i8* %136, i64 %135
  %138 = load i8, i8* %137, align 1
  %139 = zext i8 %138 to i32
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %570

; <label>:141                                     ; preds = %132
  %142 = load i8*, i8** %p, align 8
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i64
  %145 = load i8*, i8** %uc, align 8
  %146 = getelementptr inbounds i8, i8* %145, i64 %144
  %147 = load i8, i8* %146, align 1
  %148 = load i8*, i8** %q, align 8
  %149 = getelementptr inbounds i8, i8* %148, i32 1
  store i8* %149, i8** %q, align 8
  store i8 %147, i8* %148, align 1
  %150 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %151 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %150, i32 0, i32 0
  %152 = bitcast %union.anon* %151 to %struct.GAP*
  %153 = bitcast %struct.GAP* %152 to i16*
  %154 = load i16, i16* %153, align 4
  %155 = lshr i16 %154, 7
  %156 = and i16 %155, 1
  %157 = zext i16 %156 to i32
  %158 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %159 = bitcast %union.anon* %158 to %struct.GAP*
  %160 = bitcast %struct.GAP* %159 to i16*
  %161 = trunc i32 %157 to i16
  %162 = load i16, i16* %160, align 4
  %163 = and i16 %161, 1
  %164 = shl i16 %163, 7
  %165 = and i16 %162, -129
  %166 = or i16 %165, %164
  store i16 %166, i16* %160, align 4
  %167 = zext i16 %163 to i32
  %168 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %169 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %168, i32 0, i32 0
  %170 = bitcast %union.anon* %169 to %struct.GAP*
  %171 = bitcast %struct.GAP* %170 to i16*
  %172 = load i16, i16* %171, align 4
  %173 = lshr i16 %172, 8
  %174 = and i16 %173, 1
  %175 = zext i16 %174 to i32
  %176 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %177 = bitcast %union.anon* %176 to %struct.GAP*
  %178 = bitcast %struct.GAP* %177 to i16*
  %179 = trunc i32 %175 to i16
  %180 = load i16, i16* %178, align 4
  %181 = and i16 %179, 1
  %182 = shl i16 %181, 8
  %183 = and i16 %180, -257
  %184 = or i16 %183, %182
  store i16 %184, i16* %178, align 4
  %185 = zext i16 %181 to i32
  %186 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %187 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %186, i32 0, i32 0
  %188 = bitcast %union.anon* %187 to %struct.GAP*
  %189 = bitcast %struct.GAP* %188 to i16*
  %190 = load i16, i16* %189, align 4
  %191 = lshr i16 %190, 9
  %192 = and i16 %191, 1
  %193 = zext i16 %192 to i32
  %194 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %195 = bitcast %union.anon* %194 to %struct.GAP*
  %196 = bitcast %struct.GAP* %195 to i16*
  %197 = trunc i32 %193 to i16
  %198 = load i16, i16* %196, align 4
  %199 = and i16 %197, 1
  %200 = shl i16 %199, 9
  %201 = and i16 %198, -513
  %202 = or i16 %201, %200
  store i16 %202, i16* %196, align 4
  %203 = zext i16 %199 to i32
  %204 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %205 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %204, i32 0, i32 0
  %206 = bitcast %union.anon* %205 to %struct.GAP*
  %207 = bitcast %struct.GAP* %206 to i16*
  %208 = load i16, i16* %207, align 4
  %209 = lshr i16 %208, 10
  %210 = and i16 %209, 7
  %211 = zext i16 %210 to i32
  %212 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %213 = bitcast %union.anon* %212 to %struct.GAP*
  %214 = bitcast %struct.GAP* %213 to i16*
  %215 = trunc i32 %211 to i16
  %216 = load i16, i16* %214, align 4
  %217 = and i16 %215, 7
  %218 = shl i16 %217, 10
  %219 = and i16 %216, -7169
  %220 = or i16 %219, %218
  store i16 %220, i16* %214, align 4
  %221 = zext i16 %217 to i32
  %222 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %223 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %222, i32 0, i32 0
  %224 = bitcast %union.anon* %223 to %struct.GAP*
  %225 = bitcast %struct.GAP* %224 to i16*
  %226 = load i16, i16* %225, align 4
  %227 = lshr i16 %226, 13
  %228 = zext i16 %227 to i32
  %229 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %230 = bitcast %union.anon* %229 to %struct.GAP*
  %231 = bitcast %struct.GAP* %230 to i16*
  %232 = trunc i32 %228 to i16
  %233 = load i16, i16* %231, align 4
  %234 = and i16 %232, 7
  %235 = shl i16 %234, 13
  %236 = and i16 %233, 8191
  %237 = or i16 %236, %235
  store i16 %237, i16* %231, align 4
  %238 = zext i16 %234 to i32
  %239 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %240 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %239, i32 0, i32 0
  %241 = bitcast %union.anon* %240 to %struct.GAP*
  %242 = getelementptr inbounds %struct.GAP, %struct.GAP* %241, i32 0, i32 1
  %243 = load i16, i16* %242, align 2
  %244 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %245 = bitcast %union.anon* %244 to %struct.GAP*
  %246 = getelementptr inbounds %struct.GAP, %struct.GAP* %245, i32 0, i32 1
  store i16 %243, i16* %246, align 2
  %247 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %248 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %247, i32 0, i32 1
  %249 = bitcast %union.anon.10* %248 to %struct.anon.11*
  %250 = bitcast %struct.anon.11* %249 to i8*
  %251 = load i8, i8* %250, align 4
  %252 = and i8 %251, 3
  %253 = zext i8 %252 to i32
  %254 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %255 = bitcast %union.anon.10* %254 to %struct.anon.11*
  %256 = bitcast %struct.anon.11* %255 to i8*
  %257 = trunc i32 %253 to i8
  %258 = load i8, i8* %256, align 4
  %259 = and i8 %257, 3
  %260 = and i8 %258, -4
  %261 = or i8 %260, %259
  store i8 %261, i8* %256, align 4
  %262 = zext i8 %259 to i32
  %263 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %264 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %263, i32 0, i32 1
  %265 = bitcast %union.anon.10* %264 to %struct.anon.11*
  %266 = bitcast %struct.anon.11* %265 to i8*
  %267 = load i8, i8* %266, align 4
  %268 = lshr i8 %267, 2
  %269 = and i8 %268, 3
  %270 = zext i8 %269 to i32
  %271 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %272 = bitcast %union.anon.10* %271 to %struct.anon.11*
  %273 = bitcast %struct.anon.11* %272 to i8*
  %274 = trunc i32 %270 to i8
  %275 = load i8, i8* %273, align 4
  %276 = and i8 %274, 3
  %277 = shl i8 %276, 2
  %278 = and i8 %275, -13
  %279 = or i8 %278, %277
  store i8 %279, i8* %273, align 4
  %280 = zext i8 %276 to i32
  %281 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %282 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %281, i32 0, i32 1
  %283 = bitcast %union.anon.10* %282 to %struct.anon.11*
  %284 = bitcast %struct.anon.11* %283 to i8*
  %285 = load i8, i8* %284, align 4
  %286 = lshr i8 %285, 4
  %287 = and i8 %286, 7
  %288 = zext i8 %287 to i32
  %289 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %290 = bitcast %union.anon.10* %289 to %struct.anon.11*
  %291 = bitcast %struct.anon.11* %290 to i8*
  %292 = trunc i32 %288 to i8
  %293 = load i8, i8* %291, align 4
  %294 = and i8 %292, 7
  %295 = shl i8 %294, 4
  %296 = and i8 %293, -113
  %297 = or i8 %296, %295
  store i8 %297, i8* %291, align 4
  %298 = zext i8 %294 to i32
  %299 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %300 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %299, i32 0, i32 0
  %301 = bitcast %union.anon* %300 to %struct.anon.9*
  %302 = bitcast %struct.anon.9* %301 to i8*
  %303 = load i8, i8* %302, align 4
  %304 = lshr i8 %303, 3
  %305 = and i8 %304, 1
  %306 = zext i8 %305 to i32
  %307 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %308 = bitcast %union.anon* %307 to %struct.anon.9*
  %309 = bitcast %struct.anon.9* %308 to i8*
  %310 = trunc i32 %306 to i8
  %311 = load i8, i8* %309, align 4
  %312 = and i8 %310, 1
  %313 = shl i8 %312, 3
  %314 = and i8 %311, -9
  %315 = or i8 %314, %313
  store i8 %315, i8* %309, align 4
  %316 = zext i8 %312 to i32
  %317 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %318 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %317, i32 0, i32 1
  %319 = bitcast %union.anon.10* %318 to %struct.GAP*
  %320 = bitcast %struct.GAP* %319 to i16*
  %321 = load i16, i16* %320, align 4
  %322 = lshr i16 %321, 7
  %323 = and i16 %322, 1
  %324 = zext i16 %323 to i32
  %325 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %326 = bitcast %union.anon.10* %325 to %struct.GAP*
  %327 = bitcast %struct.GAP* %326 to i16*
  %328 = trunc i32 %324 to i16
  %329 = load i16, i16* %327, align 4
  %330 = and i16 %328, 1
  %331 = shl i16 %330, 7
  %332 = and i16 %329, -129
  %333 = or i16 %332, %331
  store i16 %333, i16* %327, align 4
  %334 = zext i16 %330 to i32
  %335 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %336 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %335, i32 0, i32 1
  %337 = bitcast %union.anon.10* %336 to %struct.GAP*
  %338 = bitcast %struct.GAP* %337 to i16*
  %339 = load i16, i16* %338, align 4
  %340 = lshr i16 %339, 8
  %341 = and i16 %340, 1
  %342 = zext i16 %341 to i32
  %343 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %344 = bitcast %union.anon.10* %343 to %struct.GAP*
  %345 = bitcast %struct.GAP* %344 to i16*
  %346 = trunc i32 %342 to i16
  %347 = load i16, i16* %345, align 4
  %348 = and i16 %346, 1
  %349 = shl i16 %348, 8
  %350 = and i16 %347, -257
  %351 = or i16 %350, %349
  store i16 %351, i16* %345, align 4
  %352 = zext i16 %348 to i32
  %353 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %354 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %353, i32 0, i32 1
  %355 = bitcast %union.anon.10* %354 to %struct.GAP*
  %356 = bitcast %struct.GAP* %355 to i16*
  %357 = load i16, i16* %356, align 4
  %358 = lshr i16 %357, 9
  %359 = and i16 %358, 1
  %360 = zext i16 %359 to i32
  %361 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %362 = bitcast %union.anon.10* %361 to %struct.GAP*
  %363 = bitcast %struct.GAP* %362 to i16*
  %364 = trunc i32 %360 to i16
  %365 = load i16, i16* %363, align 4
  %366 = and i16 %364, 1
  %367 = shl i16 %366, 9
  %368 = and i16 %365, -513
  %369 = or i16 %368, %367
  store i16 %369, i16* %363, align 4
  %370 = zext i16 %366 to i32
  %371 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %372 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %371, i32 0, i32 1
  %373 = bitcast %union.anon.10* %372 to %struct.GAP*
  %374 = bitcast %struct.GAP* %373 to i16*
  %375 = load i16, i16* %374, align 4
  %376 = lshr i16 %375, 10
  %377 = and i16 %376, 7
  %378 = zext i16 %377 to i32
  %379 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %380 = bitcast %union.anon.10* %379 to %struct.GAP*
  %381 = bitcast %struct.GAP* %380 to i16*
  %382 = trunc i32 %378 to i16
  %383 = load i16, i16* %381, align 4
  %384 = and i16 %382, 7
  %385 = shl i16 %384, 10
  %386 = and i16 %383, -7169
  %387 = or i16 %386, %385
  store i16 %387, i16* %381, align 4
  %388 = zext i16 %384 to i32
  %389 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %390 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %389, i32 0, i32 1
  %391 = bitcast %union.anon.10* %390 to %struct.GAP*
  %392 = bitcast %struct.GAP* %391 to i16*
  %393 = load i16, i16* %392, align 4
  %394 = lshr i16 %393, 13
  %395 = zext i16 %394 to i32
  %396 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %397 = bitcast %union.anon.10* %396 to %struct.GAP*
  %398 = bitcast %struct.GAP* %397 to i16*
  %399 = trunc i32 %395 to i16
  %400 = load i16, i16* %398, align 4
  %401 = and i16 %399, 7
  %402 = shl i16 %401, 13
  %403 = and i16 %400, 8191
  %404 = or i16 %403, %402
  store i16 %404, i16* %398, align 4
  %405 = zext i16 %401 to i32
  %406 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %407 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %406, i32 0, i32 1
  %408 = bitcast %union.anon.10* %407 to %struct.GAP*
  %409 = getelementptr inbounds %struct.GAP, %struct.GAP* %408, i32 0, i32 1
  %410 = load i16, i16* %409, align 2
  %411 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %412 = bitcast %union.anon.10* %411 to %struct.GAP*
  %413 = getelementptr inbounds %struct.GAP, %struct.GAP* %412, i32 0, i32 1
  store i16 %410, i16* %413, align 2
  %414 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %415 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %414, i32 0, i32 4
  %416 = load i32, i32* %415, align 4
  %417 = and i32 %416, 4095
  %418 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %419 = load i32, i32* %418, align 4
  %420 = and i32 %417, 4095
  %421 = and i32 %419, -4096
  %422 = or i32 %421, %420
  store i32 %422, i32* %418, align 4
  %423 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %424 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %423, i32 0, i32 4
  %425 = load i32, i32* %424, align 4
  %426 = lshr i32 %425, 12
  %427 = and i32 %426, 1023
  %428 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %429 = load i32, i32* %428, align 4
  %430 = and i32 %427, 1023
  %431 = shl i32 %430, 12
  %432 = and i32 %429, -4190209
  %433 = or i32 %432, %431
  store i32 %433, i32* %428, align 4
  %434 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %435 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %434, i32 0, i32 4
  %436 = load i32, i32* %435, align 4
  %437 = lshr i32 %436, 22
  %438 = and i32 %437, 3
  %439 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %440 = load i32, i32* %439, align 4
  %441 = and i32 %438, 3
  %442 = shl i32 %441, 22
  %443 = and i32 %440, -12582913
  %444 = or i32 %443, %442
  store i32 %444, i32* %439, align 4
  %445 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %446 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %445, i32 0, i32 4
  %447 = load i32, i32* %446, align 4
  %448 = lshr i32 %447, 24
  %449 = and i32 %448, 63
  %450 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %451 = load i32, i32* %450, align 4
  %452 = and i32 %449, 63
  %453 = shl i32 %452, 24
  %454 = and i32 %451, -1056964609
  %455 = or i32 %454, %453
  store i32 %455, i32* %450, align 4
  %456 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %457 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %456, i32 0, i32 4
  %458 = load i32, i32* %457, align 4
  %459 = lshr i32 %458, 31
  %460 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %461 = load i32, i32* %460, align 4
  %462 = and i32 %459, 1
  %463 = shl i32 %462, 31
  %464 = and i32 %461, 2147483647
  %465 = or i32 %464, %463
  store i32 %465, i32* %460, align 4
  %466 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %467 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %466, i32 0, i32 4
  %468 = load i32, i32* %467, align 4
  %469 = lshr i32 %468, 30
  %470 = and i32 %469, 1
  %471 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %472 = load i32, i32* %471, align 4
  %473 = and i32 %470, 1
  %474 = shl i32 %473, 30
  %475 = and i32 %472, -1073741825
  %476 = or i32 %475, %474
  store i32 %476, i32* %471, align 4
  %477 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %478 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %477, i32 0, i32 0
  %479 = bitcast %union.anon* %478 to %struct.anon.9*
  %480 = bitcast %struct.anon.9* %479 to i8*
  %481 = load i8, i8* %480, align 4
  %482 = and i8 %481, 1
  %483 = zext i8 %482 to i32
  %484 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %485 = bitcast %union.anon* %484 to %struct.anon.9*
  %486 = bitcast %struct.anon.9* %485 to i8*
  %487 = trunc i32 %483 to i8
  %488 = load i8, i8* %486, align 4
  %489 = and i8 %487, 1
  %490 = and i8 %488, -2
  %491 = or i8 %490, %489
  store i8 %491, i8* %486, align 4
  %492 = zext i8 %489 to i32
  %493 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %494 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %493, i32 0, i32 0
  %495 = bitcast %union.anon* %494 to %struct.anon.9*
  %496 = bitcast %struct.anon.9* %495 to i8*
  %497 = load i8, i8* %496, align 4
  %498 = lshr i8 %497, 1
  %499 = and i8 %498, 1
  %500 = zext i8 %499 to i32
  %501 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %502 = bitcast %union.anon* %501 to %struct.anon.9*
  %503 = bitcast %struct.anon.9* %502 to i8*
  %504 = trunc i32 %500 to i8
  %505 = load i8, i8* %503, align 4
  %506 = and i8 %504, 1
  %507 = shl i8 %506, 1
  %508 = and i8 %505, -3
  %509 = or i8 %508, %507
  store i8 %509, i8* %503, align 4
  %510 = zext i8 %506 to i32
  %511 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %512 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %511, i32 0, i32 0
  %513 = bitcast %union.anon* %512 to %struct.anon.9*
  %514 = bitcast %struct.anon.9* %513 to i8*
  %515 = load i8, i8* %514, align 4
  %516 = lshr i8 %515, 2
  %517 = and i8 %516, 1
  %518 = zext i8 %517 to i32
  %519 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %520 = bitcast %union.anon* %519 to %struct.anon.9*
  %521 = bitcast %struct.anon.9* %520 to i8*
  %522 = trunc i32 %518 to i8
  %523 = load i8, i8* %521, align 4
  %524 = and i8 %522, 1
  %525 = shl i8 %524, 2
  %526 = and i8 %523, -5
  %527 = or i8 %526, %525
  store i8 %527, i8* %521, align 4
  %528 = zext i8 %524 to i32
  %529 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %530 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %529, i32 0, i32 0
  %531 = bitcast %union.anon* %530 to %struct.anon.9*
  %532 = bitcast %struct.anon.9* %531 to i8*
  %533 = load i8, i8* %532, align 4
  %534 = lshr i8 %533, 4
  %535 = and i8 %534, 7
  %536 = zext i8 %535 to i32
  %537 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %538 = bitcast %union.anon* %537 to %struct.anon.9*
  %539 = bitcast %struct.anon.9* %538 to i8*
  %540 = trunc i32 %536 to i8
  %541 = load i8, i8* %539, align 4
  %542 = and i8 %540, 7
  %543 = shl i8 %542, 4
  %544 = and i8 %541, -113
  %545 = or i8 %544, %543
  store i8 %545, i8* %539, align 4
  %546 = zext i8 %542 to i32
  %547 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %548 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %547, i32 0, i32 2
  %549 = load i16, i16* %548, align 2
  %550 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 2
  store i16 %549, i16* %550, align 2
  %551 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %552 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %551, i32 0, i32 3
  %553 = load i16, i16* %552, align 2
  %554 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 3
  store i16 %553, i16* %554, align 2
  %555 = load %union.rec*, %union.rec** @MapSmallCaps.font_change_word, align 8
  call void @FontChange(%struct.STYLE* %new_style, %union.rec* %555)
  %556 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %557 = load i32, i32* %556, align 4
  %558 = and i32 %557, 4095
  store i32 %558, i32* %small_font, align 4
  %559 = load %union.rec*, %union.rec** %2, align 8
  %560 = bitcast %union.rec* %559 to %struct.word_type*
  %561 = getelementptr inbounds %struct.word_type, %struct.word_type* %560, i32 0, i32 2
  %562 = bitcast %union.SECOND_UNION* %561 to %struct.anon.1*
  %563 = bitcast %struct.anon.1* %562 to i32*
  %564 = load i32, i32* %563, align 4
  %565 = and i32 %564, 4095
  %566 = call i32 @FontHalfXHeight(i32 %565)
  %567 = load i32, i32* %small_font, align 4
  %568 = call i32 @FontHalfXHeight(i32 %567)
  %569 = sub nsw i32 %566, %568
  store i32 %569, i32* %vshift, align 4
  store i32 2, i32* %state, align 4
  br label %575

; <label>:570                                     ; preds = %132
  %571 = load i8*, i8** %p, align 8
  %572 = load i8, i8* %571, align 1
  %573 = load i8*, i8** %q, align 8
  %574 = getelementptr inbounds i8, i8* %573, i32 1
  store i8* %574, i8** %q, align 8
  store i8 %572, i8* %573, align 1
  store i32 1, i32* %state, align 4
  br label %575

; <label>:575                                     ; preds = %570, %141
  br label %2578

; <label>:576                                     ; preds = %130
  %577 = load i8*, i8** %p, align 8
  %578 = load i8, i8* %577, align 1
  %579 = zext i8 %578 to i64
  %580 = load i8*, i8** %uc, align 8
  %581 = getelementptr inbounds i8, i8* %580, i64 %579
  %582 = load i8, i8* %581, align 1
  %583 = zext i8 %582 to i32
  %584 = icmp ne i32 %583, 0
  br i1 %584, label %585, label %1575

; <label>:585                                     ; preds = %576
  %586 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %587 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %586, i32 0, i32 0
  %588 = bitcast %union.anon* %587 to %struct.GAP*
  %589 = bitcast %struct.GAP* %588 to i16*
  %590 = load i16, i16* %589, align 4
  %591 = lshr i16 %590, 7
  %592 = and i16 %591, 1
  %593 = zext i16 %592 to i32
  %594 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %595 = bitcast %union.anon* %594 to %struct.GAP*
  %596 = bitcast %struct.GAP* %595 to i16*
  %597 = trunc i32 %593 to i16
  %598 = load i16, i16* %596, align 4
  %599 = and i16 %597, 1
  %600 = shl i16 %599, 7
  %601 = and i16 %598, -129
  %602 = or i16 %601, %600
  store i16 %602, i16* %596, align 4
  %603 = zext i16 %599 to i32
  %604 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %605 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %604, i32 0, i32 0
  %606 = bitcast %union.anon* %605 to %struct.GAP*
  %607 = bitcast %struct.GAP* %606 to i16*
  %608 = load i16, i16* %607, align 4
  %609 = lshr i16 %608, 8
  %610 = and i16 %609, 1
  %611 = zext i16 %610 to i32
  %612 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %613 = bitcast %union.anon* %612 to %struct.GAP*
  %614 = bitcast %struct.GAP* %613 to i16*
  %615 = trunc i32 %611 to i16
  %616 = load i16, i16* %614, align 4
  %617 = and i16 %615, 1
  %618 = shl i16 %617, 8
  %619 = and i16 %616, -257
  %620 = or i16 %619, %618
  store i16 %620, i16* %614, align 4
  %621 = zext i16 %617 to i32
  %622 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %623 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %622, i32 0, i32 0
  %624 = bitcast %union.anon* %623 to %struct.GAP*
  %625 = bitcast %struct.GAP* %624 to i16*
  %626 = load i16, i16* %625, align 4
  %627 = lshr i16 %626, 9
  %628 = and i16 %627, 1
  %629 = zext i16 %628 to i32
  %630 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %631 = bitcast %union.anon* %630 to %struct.GAP*
  %632 = bitcast %struct.GAP* %631 to i16*
  %633 = trunc i32 %629 to i16
  %634 = load i16, i16* %632, align 4
  %635 = and i16 %633, 1
  %636 = shl i16 %635, 9
  %637 = and i16 %634, -513
  %638 = or i16 %637, %636
  store i16 %638, i16* %632, align 4
  %639 = zext i16 %635 to i32
  %640 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %641 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %640, i32 0, i32 0
  %642 = bitcast %union.anon* %641 to %struct.GAP*
  %643 = bitcast %struct.GAP* %642 to i16*
  %644 = load i16, i16* %643, align 4
  %645 = lshr i16 %644, 10
  %646 = and i16 %645, 7
  %647 = zext i16 %646 to i32
  %648 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %649 = bitcast %union.anon* %648 to %struct.GAP*
  %650 = bitcast %struct.GAP* %649 to i16*
  %651 = trunc i32 %647 to i16
  %652 = load i16, i16* %650, align 4
  %653 = and i16 %651, 7
  %654 = shl i16 %653, 10
  %655 = and i16 %652, -7169
  %656 = or i16 %655, %654
  store i16 %656, i16* %650, align 4
  %657 = zext i16 %653 to i32
  %658 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %659 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %658, i32 0, i32 0
  %660 = bitcast %union.anon* %659 to %struct.GAP*
  %661 = bitcast %struct.GAP* %660 to i16*
  %662 = load i16, i16* %661, align 4
  %663 = lshr i16 %662, 13
  %664 = zext i16 %663 to i32
  %665 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %666 = bitcast %union.anon* %665 to %struct.GAP*
  %667 = bitcast %struct.GAP* %666 to i16*
  %668 = trunc i32 %664 to i16
  %669 = load i16, i16* %667, align 4
  %670 = and i16 %668, 7
  %671 = shl i16 %670, 13
  %672 = and i16 %669, 8191
  %673 = or i16 %672, %671
  store i16 %673, i16* %667, align 4
  %674 = zext i16 %670 to i32
  %675 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %676 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %675, i32 0, i32 0
  %677 = bitcast %union.anon* %676 to %struct.GAP*
  %678 = getelementptr inbounds %struct.GAP, %struct.GAP* %677, i32 0, i32 1
  %679 = load i16, i16* %678, align 2
  %680 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %681 = bitcast %union.anon* %680 to %struct.GAP*
  %682 = getelementptr inbounds %struct.GAP, %struct.GAP* %681, i32 0, i32 1
  store i16 %679, i16* %682, align 2
  %683 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %684 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %683, i32 0, i32 1
  %685 = bitcast %union.anon.10* %684 to %struct.anon.11*
  %686 = bitcast %struct.anon.11* %685 to i8*
  %687 = load i8, i8* %686, align 4
  %688 = and i8 %687, 3
  %689 = zext i8 %688 to i32
  %690 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %691 = bitcast %union.anon.10* %690 to %struct.anon.11*
  %692 = bitcast %struct.anon.11* %691 to i8*
  %693 = trunc i32 %689 to i8
  %694 = load i8, i8* %692, align 4
  %695 = and i8 %693, 3
  %696 = and i8 %694, -4
  %697 = or i8 %696, %695
  store i8 %697, i8* %692, align 4
  %698 = zext i8 %695 to i32
  %699 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %700 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %699, i32 0, i32 1
  %701 = bitcast %union.anon.10* %700 to %struct.anon.11*
  %702 = bitcast %struct.anon.11* %701 to i8*
  %703 = load i8, i8* %702, align 4
  %704 = lshr i8 %703, 2
  %705 = and i8 %704, 3
  %706 = zext i8 %705 to i32
  %707 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %708 = bitcast %union.anon.10* %707 to %struct.anon.11*
  %709 = bitcast %struct.anon.11* %708 to i8*
  %710 = trunc i32 %706 to i8
  %711 = load i8, i8* %709, align 4
  %712 = and i8 %710, 3
  %713 = shl i8 %712, 2
  %714 = and i8 %711, -13
  %715 = or i8 %714, %713
  store i8 %715, i8* %709, align 4
  %716 = zext i8 %712 to i32
  %717 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %718 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %717, i32 0, i32 1
  %719 = bitcast %union.anon.10* %718 to %struct.anon.11*
  %720 = bitcast %struct.anon.11* %719 to i8*
  %721 = load i8, i8* %720, align 4
  %722 = lshr i8 %721, 4
  %723 = and i8 %722, 7
  %724 = zext i8 %723 to i32
  %725 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %726 = bitcast %union.anon.10* %725 to %struct.anon.11*
  %727 = bitcast %struct.anon.11* %726 to i8*
  %728 = trunc i32 %724 to i8
  %729 = load i8, i8* %727, align 4
  %730 = and i8 %728, 7
  %731 = shl i8 %730, 4
  %732 = and i8 %729, -113
  %733 = or i8 %732, %731
  store i8 %733, i8* %727, align 4
  %734 = zext i8 %730 to i32
  %735 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %736 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %735, i32 0, i32 0
  %737 = bitcast %union.anon* %736 to %struct.anon.9*
  %738 = bitcast %struct.anon.9* %737 to i8*
  %739 = load i8, i8* %738, align 4
  %740 = lshr i8 %739, 3
  %741 = and i8 %740, 1
  %742 = zext i8 %741 to i32
  %743 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %744 = bitcast %union.anon* %743 to %struct.anon.9*
  %745 = bitcast %struct.anon.9* %744 to i8*
  %746 = trunc i32 %742 to i8
  %747 = load i8, i8* %745, align 4
  %748 = and i8 %746, 1
  %749 = shl i8 %748, 3
  %750 = and i8 %747, -9
  %751 = or i8 %750, %749
  store i8 %751, i8* %745, align 4
  %752 = zext i8 %748 to i32
  %753 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %754 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %753, i32 0, i32 1
  %755 = bitcast %union.anon.10* %754 to %struct.GAP*
  %756 = bitcast %struct.GAP* %755 to i16*
  %757 = load i16, i16* %756, align 4
  %758 = lshr i16 %757, 7
  %759 = and i16 %758, 1
  %760 = zext i16 %759 to i32
  %761 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %762 = bitcast %union.anon.10* %761 to %struct.GAP*
  %763 = bitcast %struct.GAP* %762 to i16*
  %764 = trunc i32 %760 to i16
  %765 = load i16, i16* %763, align 4
  %766 = and i16 %764, 1
  %767 = shl i16 %766, 7
  %768 = and i16 %765, -129
  %769 = or i16 %768, %767
  store i16 %769, i16* %763, align 4
  %770 = zext i16 %766 to i32
  %771 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %772 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %771, i32 0, i32 1
  %773 = bitcast %union.anon.10* %772 to %struct.GAP*
  %774 = bitcast %struct.GAP* %773 to i16*
  %775 = load i16, i16* %774, align 4
  %776 = lshr i16 %775, 8
  %777 = and i16 %776, 1
  %778 = zext i16 %777 to i32
  %779 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %780 = bitcast %union.anon.10* %779 to %struct.GAP*
  %781 = bitcast %struct.GAP* %780 to i16*
  %782 = trunc i32 %778 to i16
  %783 = load i16, i16* %781, align 4
  %784 = and i16 %782, 1
  %785 = shl i16 %784, 8
  %786 = and i16 %783, -257
  %787 = or i16 %786, %785
  store i16 %787, i16* %781, align 4
  %788 = zext i16 %784 to i32
  %789 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %790 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %789, i32 0, i32 1
  %791 = bitcast %union.anon.10* %790 to %struct.GAP*
  %792 = bitcast %struct.GAP* %791 to i16*
  %793 = load i16, i16* %792, align 4
  %794 = lshr i16 %793, 9
  %795 = and i16 %794, 1
  %796 = zext i16 %795 to i32
  %797 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %798 = bitcast %union.anon.10* %797 to %struct.GAP*
  %799 = bitcast %struct.GAP* %798 to i16*
  %800 = trunc i32 %796 to i16
  %801 = load i16, i16* %799, align 4
  %802 = and i16 %800, 1
  %803 = shl i16 %802, 9
  %804 = and i16 %801, -513
  %805 = or i16 %804, %803
  store i16 %805, i16* %799, align 4
  %806 = zext i16 %802 to i32
  %807 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %808 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %807, i32 0, i32 1
  %809 = bitcast %union.anon.10* %808 to %struct.GAP*
  %810 = bitcast %struct.GAP* %809 to i16*
  %811 = load i16, i16* %810, align 4
  %812 = lshr i16 %811, 10
  %813 = and i16 %812, 7
  %814 = zext i16 %813 to i32
  %815 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %816 = bitcast %union.anon.10* %815 to %struct.GAP*
  %817 = bitcast %struct.GAP* %816 to i16*
  %818 = trunc i32 %814 to i16
  %819 = load i16, i16* %817, align 4
  %820 = and i16 %818, 7
  %821 = shl i16 %820, 10
  %822 = and i16 %819, -7169
  %823 = or i16 %822, %821
  store i16 %823, i16* %817, align 4
  %824 = zext i16 %820 to i32
  %825 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %826 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %825, i32 0, i32 1
  %827 = bitcast %union.anon.10* %826 to %struct.GAP*
  %828 = bitcast %struct.GAP* %827 to i16*
  %829 = load i16, i16* %828, align 4
  %830 = lshr i16 %829, 13
  %831 = zext i16 %830 to i32
  %832 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %833 = bitcast %union.anon.10* %832 to %struct.GAP*
  %834 = bitcast %struct.GAP* %833 to i16*
  %835 = trunc i32 %831 to i16
  %836 = load i16, i16* %834, align 4
  %837 = and i16 %835, 7
  %838 = shl i16 %837, 13
  %839 = and i16 %836, 8191
  %840 = or i16 %839, %838
  store i16 %840, i16* %834, align 4
  %841 = zext i16 %837 to i32
  %842 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %843 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %842, i32 0, i32 1
  %844 = bitcast %union.anon.10* %843 to %struct.GAP*
  %845 = getelementptr inbounds %struct.GAP, %struct.GAP* %844, i32 0, i32 1
  %846 = load i16, i16* %845, align 2
  %847 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 1
  %848 = bitcast %union.anon.10* %847 to %struct.GAP*
  %849 = getelementptr inbounds %struct.GAP, %struct.GAP* %848, i32 0, i32 1
  store i16 %846, i16* %849, align 2
  %850 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %851 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %850, i32 0, i32 4
  %852 = load i32, i32* %851, align 4
  %853 = and i32 %852, 4095
  %854 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %855 = load i32, i32* %854, align 4
  %856 = and i32 %853, 4095
  %857 = and i32 %855, -4096
  %858 = or i32 %857, %856
  store i32 %858, i32* %854, align 4
  %859 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %860 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %859, i32 0, i32 4
  %861 = load i32, i32* %860, align 4
  %862 = lshr i32 %861, 12
  %863 = and i32 %862, 1023
  %864 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %865 = load i32, i32* %864, align 4
  %866 = and i32 %863, 1023
  %867 = shl i32 %866, 12
  %868 = and i32 %865, -4190209
  %869 = or i32 %868, %867
  store i32 %869, i32* %864, align 4
  %870 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %871 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %870, i32 0, i32 4
  %872 = load i32, i32* %871, align 4
  %873 = lshr i32 %872, 22
  %874 = and i32 %873, 3
  %875 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %876 = load i32, i32* %875, align 4
  %877 = and i32 %874, 3
  %878 = shl i32 %877, 22
  %879 = and i32 %876, -12582913
  %880 = or i32 %879, %878
  store i32 %880, i32* %875, align 4
  %881 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %882 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %881, i32 0, i32 4
  %883 = load i32, i32* %882, align 4
  %884 = lshr i32 %883, 24
  %885 = and i32 %884, 63
  %886 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %887 = load i32, i32* %886, align 4
  %888 = and i32 %885, 63
  %889 = shl i32 %888, 24
  %890 = and i32 %887, -1056964609
  %891 = or i32 %890, %889
  store i32 %891, i32* %886, align 4
  %892 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %893 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %892, i32 0, i32 4
  %894 = load i32, i32* %893, align 4
  %895 = lshr i32 %894, 31
  %896 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %897 = load i32, i32* %896, align 4
  %898 = and i32 %895, 1
  %899 = shl i32 %898, 31
  %900 = and i32 %897, 2147483647
  %901 = or i32 %900, %899
  store i32 %901, i32* %896, align 4
  %902 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %903 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %902, i32 0, i32 4
  %904 = load i32, i32* %903, align 4
  %905 = lshr i32 %904, 30
  %906 = and i32 %905, 1
  %907 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %908 = load i32, i32* %907, align 4
  %909 = and i32 %906, 1
  %910 = shl i32 %909, 30
  %911 = and i32 %908, -1073741825
  %912 = or i32 %911, %910
  store i32 %912, i32* %907, align 4
  %913 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %914 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %913, i32 0, i32 0
  %915 = bitcast %union.anon* %914 to %struct.anon.9*
  %916 = bitcast %struct.anon.9* %915 to i8*
  %917 = load i8, i8* %916, align 4
  %918 = and i8 %917, 1
  %919 = zext i8 %918 to i32
  %920 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %921 = bitcast %union.anon* %920 to %struct.anon.9*
  %922 = bitcast %struct.anon.9* %921 to i8*
  %923 = trunc i32 %919 to i8
  %924 = load i8, i8* %922, align 4
  %925 = and i8 %923, 1
  %926 = and i8 %924, -2
  %927 = or i8 %926, %925
  store i8 %927, i8* %922, align 4
  %928 = zext i8 %925 to i32
  %929 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %930 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %929, i32 0, i32 0
  %931 = bitcast %union.anon* %930 to %struct.anon.9*
  %932 = bitcast %struct.anon.9* %931 to i8*
  %933 = load i8, i8* %932, align 4
  %934 = lshr i8 %933, 1
  %935 = and i8 %934, 1
  %936 = zext i8 %935 to i32
  %937 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %938 = bitcast %union.anon* %937 to %struct.anon.9*
  %939 = bitcast %struct.anon.9* %938 to i8*
  %940 = trunc i32 %936 to i8
  %941 = load i8, i8* %939, align 4
  %942 = and i8 %940, 1
  %943 = shl i8 %942, 1
  %944 = and i8 %941, -3
  %945 = or i8 %944, %943
  store i8 %945, i8* %939, align 4
  %946 = zext i8 %942 to i32
  %947 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %948 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %947, i32 0, i32 0
  %949 = bitcast %union.anon* %948 to %struct.anon.9*
  %950 = bitcast %struct.anon.9* %949 to i8*
  %951 = load i8, i8* %950, align 4
  %952 = lshr i8 %951, 2
  %953 = and i8 %952, 1
  %954 = zext i8 %953 to i32
  %955 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %956 = bitcast %union.anon* %955 to %struct.anon.9*
  %957 = bitcast %struct.anon.9* %956 to i8*
  %958 = trunc i32 %954 to i8
  %959 = load i8, i8* %957, align 4
  %960 = and i8 %958, 1
  %961 = shl i8 %960, 2
  %962 = and i8 %959, -5
  %963 = or i8 %962, %961
  store i8 %963, i8* %957, align 4
  %964 = zext i8 %960 to i32
  %965 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %966 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %965, i32 0, i32 0
  %967 = bitcast %union.anon* %966 to %struct.anon.9*
  %968 = bitcast %struct.anon.9* %967 to i8*
  %969 = load i8, i8* %968, align 4
  %970 = lshr i8 %969, 4
  %971 = and i8 %970, 7
  %972 = zext i8 %971 to i32
  %973 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 0
  %974 = bitcast %union.anon* %973 to %struct.anon.9*
  %975 = bitcast %struct.anon.9* %974 to i8*
  %976 = trunc i32 %972 to i8
  %977 = load i8, i8* %975, align 4
  %978 = and i8 %976, 7
  %979 = shl i8 %978, 4
  %980 = and i8 %977, -113
  %981 = or i8 %980, %979
  store i8 %981, i8* %975, align 4
  %982 = zext i8 %978 to i32
  %983 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %984 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %983, i32 0, i32 2
  %985 = load i16, i16* %984, align 2
  %986 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 2
  store i16 %985, i16* %986, align 2
  %987 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %988 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %987, i32 0, i32 3
  %989 = load i16, i16* %988, align 2
  %990 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 3
  store i16 %989, i16* %990, align 2
  %991 = load %union.rec*, %union.rec** @MapSmallCaps.font_change_word, align 8
  call void @FontChange(%struct.STYLE* %new_style, %union.rec* %991)
  %992 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %new_style, i32 0, i32 4
  %993 = load i32, i32* %992, align 4
  %994 = and i32 %993, 4095
  store i32 %994, i32* %small_font, align 4
  %995 = load %union.rec*, %union.rec** %2, align 8
  %996 = bitcast %union.rec* %995 to %struct.word_type*
  %997 = getelementptr inbounds %struct.word_type, %struct.word_type* %996, i32 0, i32 2
  %998 = bitcast %union.SECOND_UNION* %997 to %struct.anon.1*
  %999 = bitcast %struct.anon.1* %998 to i32*
  %1000 = load i32, i32* %999, align 4
  %1001 = and i32 %1000, 4095
  %1002 = call i32 @FontHalfXHeight(i32 %1001)
  %1003 = load i32, i32* %small_font, align 4
  %1004 = call i32 @FontHalfXHeight(i32 %1003)
  %1005 = sub nsw i32 %1002, %1004
  store i32 %1005, i32* %vshift, align 4
  %1006 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1007 = load i8*, i8** %q, align 8
  %1008 = load %union.rec*, %union.rec** %2, align 8
  %1009 = load %union.rec*, %union.rec** %2, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 2
  %1012 = bitcast %union.SECOND_UNION* %1011 to %struct.anon.1*
  %1013 = bitcast %struct.anon.1* %1012 to i32*
  %1014 = load i32, i32* %1013, align 4
  %1015 = and i32 %1014, 4095
  %1016 = call %union.rec* @DoWord(i8* %1006, i8* %1007, %union.rec* %1008, i32 %1015)
  store %union.rec* %1016, %union.rec** %new_y, align 8
  %1017 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 24), align 1
  %1018 = zext i8 %1017 to i32
  store i32 %1018, i32* @zz_size, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = icmp uge i64 %1019, 265
  br i1 %1020, label %1021, label %1024

; <label>:1021                                    ; preds = %585
  %1022 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1023 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1022)
  br label %1049

; <label>:1024                                    ; preds = %585
  %1025 = load i32, i32* @zz_size, align 4
  %1026 = sext i32 %1025 to i64
  %1027 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1026
  %1028 = load %union.rec*, %union.rec** %1027, align 8
  %1029 = icmp eq %union.rec* %1028, null
  br i1 %1029, label %1030, label %1034

; <label>:1030                                    ; preds = %1024
  %1031 = load i32, i32* @zz_size, align 4
  %1032 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1033 = call %union.rec* @GetMemory(i32 %1031, %struct.FILE_POS* %1032)
  store %union.rec* %1033, %union.rec** @zz_hold, align 8
  br label %1048

; <label>:1034                                    ; preds = %1024
  %1035 = load i32, i32* @zz_size, align 4
  %1036 = sext i32 %1035 to i64
  %1037 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1036
  %1038 = load %union.rec*, %union.rec** %1037, align 8
  store %union.rec* %1038, %union.rec** @zz_hold, align 8
  store %union.rec* %1038, %union.rec** @zz_hold, align 8
  %1039 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1040 = bitcast %union.rec* %1039 to %struct.word_type*
  %1041 = getelementptr inbounds %struct.word_type, %struct.word_type* %1040, i32 0, i32 0
  %1042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1041, i32 0, i64 0
  %1043 = getelementptr inbounds %struct.LIST, %struct.LIST* %1042, i32 0, i32 0
  %1044 = load %union.rec*, %union.rec** %1043, align 8
  %1045 = load i32, i32* @zz_size, align 4
  %1046 = sext i32 %1045 to i64
  %1047 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1046
  store %union.rec* %1044, %union.rec** %1047, align 8
  br label %1048

; <label>:1048                                    ; preds = %1034, %1030
  br label %1049

; <label>:1049                                    ; preds = %1048, %1021
  %1050 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1051 = bitcast %union.rec* %1050 to %struct.word_type*
  %1052 = getelementptr inbounds %struct.word_type, %struct.word_type* %1051, i32 0, i32 1
  %1053 = bitcast %union.FIRST_UNION* %1052 to %struct.anon*
  %1054 = getelementptr inbounds %struct.anon, %struct.anon* %1053, i32 0, i32 0
  store i8 24, i8* %1054, align 1
  %1055 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1057 = bitcast %union.rec* %1056 to %struct.word_type*
  %1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %1057, i32 0, i32 0
  %1059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1058, i32 0, i64 1
  %1060 = getelementptr inbounds %struct.LIST, %struct.LIST* %1059, i32 0, i32 1
  store %union.rec* %1055, %union.rec** %1060, align 8
  %1061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1062 = bitcast %union.rec* %1061 to %struct.word_type*
  %1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %1062, i32 0, i32 0
  %1064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1063, i32 0, i64 1
  %1065 = getelementptr inbounds %struct.LIST, %struct.LIST* %1064, i32 0, i32 0
  store %union.rec* %1055, %union.rec** %1065, align 8
  %1066 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1067 = bitcast %union.rec* %1066 to %struct.word_type*
  %1068 = getelementptr inbounds %struct.word_type, %struct.word_type* %1067, i32 0, i32 0
  %1069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1068, i32 0, i64 0
  %1070 = getelementptr inbounds %struct.LIST, %struct.LIST* %1069, i32 0, i32 1
  store %union.rec* %1055, %union.rec** %1070, align 8
  %1071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1072 = bitcast %union.rec* %1071 to %struct.word_type*
  %1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %1072, i32 0, i32 0
  %1074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1073, i32 0, i64 0
  %1075 = getelementptr inbounds %struct.LIST, %struct.LIST* %1074, i32 0, i32 0
  store %union.rec* %1055, %union.rec** %1075, align 8
  store %union.rec* %1055, %union.rec** %new_x, align 8
  %1076 = load %union.rec*, %union.rec** %2, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 1
  %1079 = bitcast %union.FIRST_UNION* %1078 to %struct.FILE_POS*
  %1080 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1079, i32 0, i32 2
  %1081 = load i16, i16* %1080, align 2
  %1082 = load %union.rec*, %union.rec** %new_x, align 8
  %1083 = bitcast %union.rec* %1082 to %struct.word_type*
  %1084 = getelementptr inbounds %struct.word_type, %struct.word_type* %1083, i32 0, i32 1
  %1085 = bitcast %union.FIRST_UNION* %1084 to %struct.FILE_POS*
  %1086 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1085, i32 0, i32 2
  store i16 %1081, i16* %1086, align 2
  %1087 = load %union.rec*, %union.rec** %2, align 8
  %1088 = bitcast %union.rec* %1087 to %struct.word_type*
  %1089 = getelementptr inbounds %struct.word_type, %struct.word_type* %1088, i32 0, i32 1
  %1090 = bitcast %union.FIRST_UNION* %1089 to %struct.FILE_POS*
  %1091 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1090, i32 0, i32 3
  %1092 = load i32, i32* %1091, align 4
  %1093 = and i32 %1092, 1048575
  %1094 = load %union.rec*, %union.rec** %new_x, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 1
  %1097 = bitcast %union.FIRST_UNION* %1096 to %struct.FILE_POS*
  %1098 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1097, i32 0, i32 3
  %1099 = load i32, i32* %1098, align 4
  %1100 = and i32 %1093, 1048575
  %1101 = and i32 %1099, -1048576
  %1102 = or i32 %1101, %1100
  store i32 %1102, i32* %1098, align 4
  %1103 = load %union.rec*, %union.rec** %2, align 8
  %1104 = bitcast %union.rec* %1103 to %struct.word_type*
  %1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %1104, i32 0, i32 1
  %1106 = bitcast %union.FIRST_UNION* %1105 to %struct.FILE_POS*
  %1107 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1106, i32 0, i32 3
  %1108 = load i32, i32* %1107, align 4
  %1109 = lshr i32 %1108, 20
  %1110 = load %union.rec*, %union.rec** %new_x, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.word_type*
  %1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %1111, i32 0, i32 1
  %1113 = bitcast %union.FIRST_UNION* %1112 to %struct.FILE_POS*
  %1114 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1113, i32 0, i32 3
  %1115 = load i32, i32* %1114, align 4
  %1116 = and i32 %1109, 4095
  %1117 = shl i32 %1116, 20
  %1118 = and i32 %1115, 1048575
  %1119 = or i32 %1118, %1117
  store i32 %1119, i32* %1114, align 4
  %1120 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1121 = zext i8 %1120 to i32
  store i32 %1121, i32* @zz_size, align 4
  %1122 = sext i32 %1121 to i64
  %1123 = icmp uge i64 %1122, 265
  br i1 %1123, label %1124, label %1127

; <label>:1124                                    ; preds = %1049
  %1125 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1126 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1125)
  br label %1152

; <label>:1127                                    ; preds = %1049
  %1128 = load i32, i32* @zz_size, align 4
  %1129 = sext i32 %1128 to i64
  %1130 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1129
  %1131 = load %union.rec*, %union.rec** %1130, align 8
  %1132 = icmp eq %union.rec* %1131, null
  br i1 %1132, label %1133, label %1137

; <label>:1133                                    ; preds = %1127
  %1134 = load i32, i32* @zz_size, align 4
  %1135 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1136 = call %union.rec* @GetMemory(i32 %1134, %struct.FILE_POS* %1135)
  store %union.rec* %1136, %union.rec** @zz_hold, align 8
  br label %1151

; <label>:1137                                    ; preds = %1127
  %1138 = load i32, i32* @zz_size, align 4
  %1139 = sext i32 %1138 to i64
  %1140 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1139
  %1141 = load %union.rec*, %union.rec** %1140, align 8
  store %union.rec* %1141, %union.rec** @zz_hold, align 8
  store %union.rec* %1141, %union.rec** @zz_hold, align 8
  %1142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1143 = bitcast %union.rec* %1142 to %struct.word_type*
  %1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %1143, i32 0, i32 0
  %1145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1144, i32 0, i64 0
  %1146 = getelementptr inbounds %struct.LIST, %struct.LIST* %1145, i32 0, i32 0
  %1147 = load %union.rec*, %union.rec** %1146, align 8
  %1148 = load i32, i32* @zz_size, align 4
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1149
  store %union.rec* %1147, %union.rec** %1150, align 8
  br label %1151

; <label>:1151                                    ; preds = %1137, %1133
  br label %1152

; <label>:1152                                    ; preds = %1151, %1124
  %1153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1154 = bitcast %union.rec* %1153 to %struct.word_type*
  %1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %1154, i32 0, i32 1
  %1156 = bitcast %union.FIRST_UNION* %1155 to %struct.anon*
  %1157 = getelementptr inbounds %struct.anon, %struct.anon* %1156, i32 0, i32 0
  store i8 17, i8* %1157, align 1
  %1158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1160 = bitcast %union.rec* %1159 to %struct.word_type*
  %1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %1160, i32 0, i32 0
  %1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1161, i32 0, i64 1
  %1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %1162, i32 0, i32 1
  store %union.rec* %1158, %union.rec** %1163, align 8
  %1164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1165 = bitcast %union.rec* %1164 to %struct.word_type*
  %1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %1165, i32 0, i32 0
  %1167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1166, i32 0, i64 1
  %1168 = getelementptr inbounds %struct.LIST, %struct.LIST* %1167, i32 0, i32 0
  store %union.rec* %1158, %union.rec** %1168, align 8
  %1169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1170 = bitcast %union.rec* %1169 to %struct.word_type*
  %1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %1170, i32 0, i32 0
  %1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1171, i32 0, i64 0
  %1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %1172, i32 0, i32 1
  store %union.rec* %1158, %union.rec** %1173, align 8
  %1174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1175 = bitcast %union.rec* %1174 to %struct.word_type*
  %1176 = getelementptr inbounds %struct.word_type, %struct.word_type* %1175, i32 0, i32 0
  %1177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1176, i32 0, i64 0
  %1178 = getelementptr inbounds %struct.LIST, %struct.LIST* %1177, i32 0, i32 0
  store %union.rec* %1158, %union.rec** %1178, align 8
  store %union.rec* %1158, %union.rec** %new_acat, align 8
  %1179 = load %union.rec*, %union.rec** %2, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.word_type*
  %1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %1180, i32 0, i32 1
  %1182 = bitcast %union.FIRST_UNION* %1181 to %struct.FILE_POS*
  %1183 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1182, i32 0, i32 2
  %1184 = load i16, i16* %1183, align 2
  %1185 = load %union.rec*, %union.rec** %new_acat, align 8
  %1186 = bitcast %union.rec* %1185 to %struct.word_type*
  %1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %1186, i32 0, i32 1
  %1188 = bitcast %union.FIRST_UNION* %1187 to %struct.FILE_POS*
  %1189 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1188, i32 0, i32 2
  store i16 %1184, i16* %1189, align 2
  %1190 = load %union.rec*, %union.rec** %2, align 8
  %1191 = bitcast %union.rec* %1190 to %struct.word_type*
  %1192 = getelementptr inbounds %struct.word_type, %struct.word_type* %1191, i32 0, i32 1
  %1193 = bitcast %union.FIRST_UNION* %1192 to %struct.FILE_POS*
  %1194 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1193, i32 0, i32 3
  %1195 = load i32, i32* %1194, align 4
  %1196 = and i32 %1195, 1048575
  %1197 = load %union.rec*, %union.rec** %new_acat, align 8
  %1198 = bitcast %union.rec* %1197 to %struct.word_type*
  %1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %1198, i32 0, i32 1
  %1200 = bitcast %union.FIRST_UNION* %1199 to %struct.FILE_POS*
  %1201 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1200, i32 0, i32 3
  %1202 = load i32, i32* %1201, align 4
  %1203 = and i32 %1196, 1048575
  %1204 = and i32 %1202, -1048576
  %1205 = or i32 %1204, %1203
  store i32 %1205, i32* %1201, align 4
  %1206 = load %union.rec*, %union.rec** %2, align 8
  %1207 = bitcast %union.rec* %1206 to %struct.word_type*
  %1208 = getelementptr inbounds %struct.word_type, %struct.word_type* %1207, i32 0, i32 1
  %1209 = bitcast %union.FIRST_UNION* %1208 to %struct.FILE_POS*
  %1210 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1209, i32 0, i32 3
  %1211 = load i32, i32* %1210, align 4
  %1212 = lshr i32 %1211, 20
  %1213 = load %union.rec*, %union.rec** %new_acat, align 8
  %1214 = bitcast %union.rec* %1213 to %struct.word_type*
  %1215 = getelementptr inbounds %struct.word_type, %struct.word_type* %1214, i32 0, i32 1
  %1216 = bitcast %union.FIRST_UNION* %1215 to %struct.FILE_POS*
  %1217 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1216, i32 0, i32 3
  %1218 = load i32, i32* %1217, align 4
  %1219 = and i32 %1212, 4095
  %1220 = shl i32 %1219, 20
  %1221 = and i32 %1218, 1048575
  %1222 = or i32 %1221, %1220
  store i32 %1222, i32* %1217, align 4
  %1223 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1224 = zext i8 %1223 to i32
  store i32 %1224, i32* @zz_size, align 4
  %1225 = sext i32 %1224 to i64
  %1226 = icmp uge i64 %1225, 265
  br i1 %1226, label %1227, label %1230

; <label>:1227                                    ; preds = %1152
  %1228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1229 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1228)
  br label %1255

; <label>:1230                                    ; preds = %1152
  %1231 = load i32, i32* @zz_size, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1232
  %1234 = load %union.rec*, %union.rec** %1233, align 8
  %1235 = icmp eq %union.rec* %1234, null
  br i1 %1235, label %1236, label %1240

; <label>:1236                                    ; preds = %1230
  %1237 = load i32, i32* @zz_size, align 4
  %1238 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1239 = call %union.rec* @GetMemory(i32 %1237, %struct.FILE_POS* %1238)
  store %union.rec* %1239, %union.rec** @zz_hold, align 8
  br label %1254

; <label>:1240                                    ; preds = %1230
  %1241 = load i32, i32* @zz_size, align 4
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1242
  %1244 = load %union.rec*, %union.rec** %1243, align 8
  store %union.rec* %1244, %union.rec** @zz_hold, align 8
  store %union.rec* %1244, %union.rec** @zz_hold, align 8
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1246 = bitcast %union.rec* %1245 to %struct.word_type*
  %1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %1246, i32 0, i32 0
  %1248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1247, i32 0, i64 0
  %1249 = getelementptr inbounds %struct.LIST, %struct.LIST* %1248, i32 0, i32 0
  %1250 = load %union.rec*, %union.rec** %1249, align 8
  %1251 = load i32, i32* @zz_size, align 4
  %1252 = sext i32 %1251 to i64
  %1253 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1252
  store %union.rec* %1250, %union.rec** %1253, align 8
  br label %1254

; <label>:1254                                    ; preds = %1240, %1236
  br label %1255

; <label>:1255                                    ; preds = %1254, %1227
  %1256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1257 = bitcast %union.rec* %1256 to %struct.word_type*
  %1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %1257, i32 0, i32 1
  %1259 = bitcast %union.FIRST_UNION* %1258 to %struct.anon*
  %1260 = getelementptr inbounds %struct.anon, %struct.anon* %1259, i32 0, i32 0
  store i8 0, i8* %1260, align 1
  %1261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1263 = bitcast %union.rec* %1262 to %struct.word_type*
  %1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %1263, i32 0, i32 0
  %1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1264, i32 0, i64 1
  %1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %1265, i32 0, i32 1
  store %union.rec* %1261, %union.rec** %1266, align 8
  %1267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1268 = bitcast %union.rec* %1267 to %struct.word_type*
  %1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %1268, i32 0, i32 0
  %1270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1269, i32 0, i64 1
  %1271 = getelementptr inbounds %struct.LIST, %struct.LIST* %1270, i32 0, i32 0
  store %union.rec* %1261, %union.rec** %1271, align 8
  %1272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1273 = bitcast %union.rec* %1272 to %struct.word_type*
  %1274 = getelementptr inbounds %struct.word_type, %struct.word_type* %1273, i32 0, i32 0
  %1275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1274, i32 0, i64 0
  %1276 = getelementptr inbounds %struct.LIST, %struct.LIST* %1275, i32 0, i32 1
  store %union.rec* %1261, %union.rec** %1276, align 8
  %1277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1278 = bitcast %union.rec* %1277 to %struct.word_type*
  %1279 = getelementptr inbounds %struct.word_type, %struct.word_type* %1278, i32 0, i32 0
  %1280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1279, i32 0, i64 0
  %1281 = getelementptr inbounds %struct.LIST, %struct.LIST* %1280, i32 0, i32 0
  store %union.rec* %1261, %union.rec** %1281, align 8
  store %union.rec* %1261, %union.rec** @xx_link, align 8
  %1282 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1282, %union.rec** @zz_res, align 8
  %1283 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %1283, %union.rec** @zz_hold, align 8
  %1284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1285 = icmp eq %union.rec* %1284, null
  br i1 %1285, label %1286, label %1288

; <label>:1286                                    ; preds = %1255
  %1287 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1336

; <label>:1288                                    ; preds = %1255
  %1289 = load %union.rec*, %union.rec** @zz_res, align 8
  %1290 = icmp eq %union.rec* %1289, null
  br i1 %1290, label %1291, label %1293

; <label>:1291                                    ; preds = %1288
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1334

; <label>:1293                                    ; preds = %1288
  %1294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1295 = bitcast %union.rec* %1294 to %struct.word_type*
  %1296 = getelementptr inbounds %struct.word_type, %struct.word_type* %1295, i32 0, i32 0
  %1297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1296, i32 0, i64 0
  %1298 = getelementptr inbounds %struct.LIST, %struct.LIST* %1297, i32 0, i32 0
  %1299 = load %union.rec*, %union.rec** %1298, align 8
  store %union.rec* %1299, %union.rec** @zz_tmp, align 8
  %1300 = load %union.rec*, %union.rec** @zz_res, align 8
  %1301 = bitcast %union.rec* %1300 to %struct.word_type*
  %1302 = getelementptr inbounds %struct.word_type, %struct.word_type* %1301, i32 0, i32 0
  %1303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1302, i32 0, i64 0
  %1304 = getelementptr inbounds %struct.LIST, %struct.LIST* %1303, i32 0, i32 0
  %1305 = load %union.rec*, %union.rec** %1304, align 8
  %1306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1307 = bitcast %union.rec* %1306 to %struct.word_type*
  %1308 = getelementptr inbounds %struct.word_type, %struct.word_type* %1307, i32 0, i32 0
  %1309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1308, i32 0, i64 0
  %1310 = getelementptr inbounds %struct.LIST, %struct.LIST* %1309, i32 0, i32 0
  store %union.rec* %1305, %union.rec** %1310, align 8
  %1311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1312 = load %union.rec*, %union.rec** @zz_res, align 8
  %1313 = bitcast %union.rec* %1312 to %struct.word_type*
  %1314 = getelementptr inbounds %struct.word_type, %struct.word_type* %1313, i32 0, i32 0
  %1315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1314, i32 0, i64 0
  %1316 = getelementptr inbounds %struct.LIST, %struct.LIST* %1315, i32 0, i32 0
  %1317 = load %union.rec*, %union.rec** %1316, align 8
  %1318 = bitcast %union.rec* %1317 to %struct.word_type*
  %1319 = getelementptr inbounds %struct.word_type, %struct.word_type* %1318, i32 0, i32 0
  %1320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1319, i32 0, i64 0
  %1321 = getelementptr inbounds %struct.LIST, %struct.LIST* %1320, i32 0, i32 1
  store %union.rec* %1311, %union.rec** %1321, align 8
  %1322 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1323 = load %union.rec*, %union.rec** @zz_res, align 8
  %1324 = bitcast %union.rec* %1323 to %struct.word_type*
  %1325 = getelementptr inbounds %struct.word_type, %struct.word_type* %1324, i32 0, i32 0
  %1326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1325, i32 0, i64 0
  %1327 = getelementptr inbounds %struct.LIST, %struct.LIST* %1326, i32 0, i32 0
  store %union.rec* %1322, %union.rec** %1327, align 8
  %1328 = load %union.rec*, %union.rec** @zz_res, align 8
  %1329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1330 = bitcast %union.rec* %1329 to %struct.word_type*
  %1331 = getelementptr inbounds %struct.word_type, %struct.word_type* %1330, i32 0, i32 0
  %1332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1331, i32 0, i64 0
  %1333 = getelementptr inbounds %struct.LIST, %struct.LIST* %1332, i32 0, i32 1
  store %union.rec* %1328, %union.rec** %1333, align 8
  br label %1334

; <label>:1334                                    ; preds = %1293, %1291
  %1335 = phi %union.rec* [ %1292, %1291 ], [ %1328, %1293 ]
  br label %1336

; <label>:1336                                    ; preds = %1334, %1286
  %1337 = phi %union.rec* [ %1287, %1286 ], [ %1335, %1334 ]
  %1338 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1338, %union.rec** @zz_res, align 8
  %1339 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %1339, %union.rec** @zz_hold, align 8
  %1340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1341 = icmp eq %union.rec* %1340, null
  br i1 %1341, label %1342, label %1344

; <label>:1342                                    ; preds = %1336
  %1343 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1392

; <label>:1344                                    ; preds = %1336
  %1345 = load %union.rec*, %union.rec** @zz_res, align 8
  %1346 = icmp eq %union.rec* %1345, null
  br i1 %1346, label %1347, label %1349

; <label>:1347                                    ; preds = %1344
  %1348 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1390

; <label>:1349                                    ; preds = %1344
  %1350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.word_type*
  %1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %1351, i32 0, i32 0
  %1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1352, i32 0, i64 1
  %1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %1353, i32 0, i32 0
  %1355 = load %union.rec*, %union.rec** %1354, align 8
  store %union.rec* %1355, %union.rec** @zz_tmp, align 8
  %1356 = load %union.rec*, %union.rec** @zz_res, align 8
  %1357 = bitcast %union.rec* %1356 to %struct.word_type*
  %1358 = getelementptr inbounds %struct.word_type, %struct.word_type* %1357, i32 0, i32 0
  %1359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1358, i32 0, i64 1
  %1360 = getelementptr inbounds %struct.LIST, %struct.LIST* %1359, i32 0, i32 0
  %1361 = load %union.rec*, %union.rec** %1360, align 8
  %1362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1363 = bitcast %union.rec* %1362 to %struct.word_type*
  %1364 = getelementptr inbounds %struct.word_type, %struct.word_type* %1363, i32 0, i32 0
  %1365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1364, i32 0, i64 1
  %1366 = getelementptr inbounds %struct.LIST, %struct.LIST* %1365, i32 0, i32 0
  store %union.rec* %1361, %union.rec** %1366, align 8
  %1367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1368 = load %union.rec*, %union.rec** @zz_res, align 8
  %1369 = bitcast %union.rec* %1368 to %struct.word_type*
  %1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %1369, i32 0, i32 0
  %1371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1370, i32 0, i64 1
  %1372 = getelementptr inbounds %struct.LIST, %struct.LIST* %1371, i32 0, i32 0
  %1373 = load %union.rec*, %union.rec** %1372, align 8
  %1374 = bitcast %union.rec* %1373 to %struct.word_type*
  %1375 = getelementptr inbounds %struct.word_type, %struct.word_type* %1374, i32 0, i32 0
  %1376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1375, i32 0, i64 1
  %1377 = getelementptr inbounds %struct.LIST, %struct.LIST* %1376, i32 0, i32 1
  store %union.rec* %1367, %union.rec** %1377, align 8
  %1378 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1379 = load %union.rec*, %union.rec** @zz_res, align 8
  %1380 = bitcast %union.rec* %1379 to %struct.word_type*
  %1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %1380, i32 0, i32 0
  %1382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1381, i32 0, i64 1
  %1383 = getelementptr inbounds %struct.LIST, %struct.LIST* %1382, i32 0, i32 0
  store %union.rec* %1378, %union.rec** %1383, align 8
  %1384 = load %union.rec*, %union.rec** @zz_res, align 8
  %1385 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1386 = bitcast %union.rec* %1385 to %struct.word_type*
  %1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %1386, i32 0, i32 0
  %1388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1387, i32 0, i64 1
  %1389 = getelementptr inbounds %struct.LIST, %struct.LIST* %1388, i32 0, i32 1
  store %union.rec* %1384, %union.rec** %1389, align 8
  br label %1390

; <label>:1390                                    ; preds = %1349, %1347
  %1391 = phi %union.rec* [ %1348, %1347 ], [ %1384, %1349 ]
  br label %1392

; <label>:1392                                    ; preds = %1390, %1342
  %1393 = phi %union.rec* [ %1343, %1342 ], [ %1391, %1390 ]
  %1394 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1395 = zext i8 %1394 to i32
  store i32 %1395, i32* @zz_size, align 4
  %1396 = sext i32 %1395 to i64
  %1397 = icmp uge i64 %1396, 265
  br i1 %1397, label %1398, label %1401

; <label>:1398                                    ; preds = %1392
  %1399 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1400 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1399)
  br label %1426

; <label>:1401                                    ; preds = %1392
  %1402 = load i32, i32* @zz_size, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1403
  %1405 = load %union.rec*, %union.rec** %1404, align 8
  %1406 = icmp eq %union.rec* %1405, null
  br i1 %1406, label %1407, label %1411

; <label>:1407                                    ; preds = %1401
  %1408 = load i32, i32* @zz_size, align 4
  %1409 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1410 = call %union.rec* @GetMemory(i32 %1408, %struct.FILE_POS* %1409)
  store %union.rec* %1410, %union.rec** @zz_hold, align 8
  br label %1425

; <label>:1411                                    ; preds = %1401
  %1412 = load i32, i32* @zz_size, align 4
  %1413 = sext i32 %1412 to i64
  %1414 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1413
  %1415 = load %union.rec*, %union.rec** %1414, align 8
  store %union.rec* %1415, %union.rec** @zz_hold, align 8
  store %union.rec* %1415, %union.rec** @zz_hold, align 8
  %1416 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1417 = bitcast %union.rec* %1416 to %struct.word_type*
  %1418 = getelementptr inbounds %struct.word_type, %struct.word_type* %1417, i32 0, i32 0
  %1419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1418, i32 0, i64 0
  %1420 = getelementptr inbounds %struct.LIST, %struct.LIST* %1419, i32 0, i32 0
  %1421 = load %union.rec*, %union.rec** %1420, align 8
  %1422 = load i32, i32* @zz_size, align 4
  %1423 = sext i32 %1422 to i64
  %1424 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1423
  store %union.rec* %1421, %union.rec** %1424, align 8
  br label %1425

; <label>:1425                                    ; preds = %1411, %1407
  br label %1426

; <label>:1426                                    ; preds = %1425, %1398
  %1427 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1428 = bitcast %union.rec* %1427 to %struct.word_type*
  %1429 = getelementptr inbounds %struct.word_type, %struct.word_type* %1428, i32 0, i32 1
  %1430 = bitcast %union.FIRST_UNION* %1429 to %struct.anon*
  %1431 = getelementptr inbounds %struct.anon, %struct.anon* %1430, i32 0, i32 0
  store i8 0, i8* %1431, align 1
  %1432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1434 = bitcast %union.rec* %1433 to %struct.word_type*
  %1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %1434, i32 0, i32 0
  %1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1435, i32 0, i64 1
  %1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %1436, i32 0, i32 1
  store %union.rec* %1432, %union.rec** %1437, align 8
  %1438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1439 = bitcast %union.rec* %1438 to %struct.word_type*
  %1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %1439, i32 0, i32 0
  %1441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1440, i32 0, i64 1
  %1442 = getelementptr inbounds %struct.LIST, %struct.LIST* %1441, i32 0, i32 0
  store %union.rec* %1432, %union.rec** %1442, align 8
  %1443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1444 = bitcast %union.rec* %1443 to %struct.word_type*
  %1445 = getelementptr inbounds %struct.word_type, %struct.word_type* %1444, i32 0, i32 0
  %1446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1445, i32 0, i64 0
  %1447 = getelementptr inbounds %struct.LIST, %struct.LIST* %1446, i32 0, i32 1
  store %union.rec* %1432, %union.rec** %1447, align 8
  %1448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1449 = bitcast %union.rec* %1448 to %struct.word_type*
  %1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %1449, i32 0, i32 0
  %1451 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1450, i32 0, i64 0
  %1452 = getelementptr inbounds %struct.LIST, %struct.LIST* %1451, i32 0, i32 0
  store %union.rec* %1432, %union.rec** %1452, align 8
  store %union.rec* %1432, %union.rec** @xx_link, align 8
  %1453 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1453, %union.rec** @zz_res, align 8
  %1454 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %1454, %union.rec** @zz_hold, align 8
  %1455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1456 = icmp eq %union.rec* %1455, null
  br i1 %1456, label %1457, label %1459

; <label>:1457                                    ; preds = %1426
  %1458 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1507

; <label>:1459                                    ; preds = %1426
  %1460 = load %union.rec*, %union.rec** @zz_res, align 8
  %1461 = icmp eq %union.rec* %1460, null
  br i1 %1461, label %1462, label %1464

; <label>:1462                                    ; preds = %1459
  %1463 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1505

; <label>:1464                                    ; preds = %1459
  %1465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1466 = bitcast %union.rec* %1465 to %struct.word_type*
  %1467 = getelementptr inbounds %struct.word_type, %struct.word_type* %1466, i32 0, i32 0
  %1468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1467, i32 0, i64 0
  %1469 = getelementptr inbounds %struct.LIST, %struct.LIST* %1468, i32 0, i32 0
  %1470 = load %union.rec*, %union.rec** %1469, align 8
  store %union.rec* %1470, %union.rec** @zz_tmp, align 8
  %1471 = load %union.rec*, %union.rec** @zz_res, align 8
  %1472 = bitcast %union.rec* %1471 to %struct.word_type*
  %1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %1472, i32 0, i32 0
  %1474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1473, i32 0, i64 0
  %1475 = getelementptr inbounds %struct.LIST, %struct.LIST* %1474, i32 0, i32 0
  %1476 = load %union.rec*, %union.rec** %1475, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1478 = bitcast %union.rec* %1477 to %struct.word_type*
  %1479 = getelementptr inbounds %struct.word_type, %struct.word_type* %1478, i32 0, i32 0
  %1480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1479, i32 0, i64 0
  %1481 = getelementptr inbounds %struct.LIST, %struct.LIST* %1480, i32 0, i32 0
  store %union.rec* %1476, %union.rec** %1481, align 8
  %1482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1483 = load %union.rec*, %union.rec** @zz_res, align 8
  %1484 = bitcast %union.rec* %1483 to %struct.word_type*
  %1485 = getelementptr inbounds %struct.word_type, %struct.word_type* %1484, i32 0, i32 0
  %1486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1485, i32 0, i64 0
  %1487 = getelementptr inbounds %struct.LIST, %struct.LIST* %1486, i32 0, i32 0
  %1488 = load %union.rec*, %union.rec** %1487, align 8
  %1489 = bitcast %union.rec* %1488 to %struct.word_type*
  %1490 = getelementptr inbounds %struct.word_type, %struct.word_type* %1489, i32 0, i32 0
  %1491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1490, i32 0, i64 0
  %1492 = getelementptr inbounds %struct.LIST, %struct.LIST* %1491, i32 0, i32 1
  store %union.rec* %1482, %union.rec** %1492, align 8
  %1493 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1494 = load %union.rec*, %union.rec** @zz_res, align 8
  %1495 = bitcast %union.rec* %1494 to %struct.word_type*
  %1496 = getelementptr inbounds %struct.word_type, %struct.word_type* %1495, i32 0, i32 0
  %1497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1496, i32 0, i64 0
  %1498 = getelementptr inbounds %struct.LIST, %struct.LIST* %1497, i32 0, i32 0
  store %union.rec* %1493, %union.rec** %1498, align 8
  %1499 = load %union.rec*, %union.rec** @zz_res, align 8
  %1500 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1501 = bitcast %union.rec* %1500 to %struct.word_type*
  %1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1502, i32 0, i64 0
  %1504 = getelementptr inbounds %struct.LIST, %struct.LIST* %1503, i32 0, i32 1
  store %union.rec* %1499, %union.rec** %1504, align 8
  br label %1505

; <label>:1505                                    ; preds = %1464, %1462
  %1506 = phi %union.rec* [ %1463, %1462 ], [ %1499, %1464 ]
  br label %1507

; <label>:1507                                    ; preds = %1505, %1457
  %1508 = phi %union.rec* [ %1458, %1457 ], [ %1506, %1505 ]
  %1509 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1509, %union.rec** @zz_res, align 8
  %1510 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %1510, %union.rec** @zz_hold, align 8
  %1511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1512 = icmp eq %union.rec* %1511, null
  br i1 %1512, label %1513, label %1515

; <label>:1513                                    ; preds = %1507
  %1514 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1563

; <label>:1515                                    ; preds = %1507
  %1516 = load %union.rec*, %union.rec** @zz_res, align 8
  %1517 = icmp eq %union.rec* %1516, null
  br i1 %1517, label %1518, label %1520

; <label>:1518                                    ; preds = %1515
  %1519 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1561

; <label>:1520                                    ; preds = %1515
  %1521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1522 = bitcast %union.rec* %1521 to %struct.word_type*
  %1523 = getelementptr inbounds %struct.word_type, %struct.word_type* %1522, i32 0, i32 0
  %1524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1523, i32 0, i64 1
  %1525 = getelementptr inbounds %struct.LIST, %struct.LIST* %1524, i32 0, i32 0
  %1526 = load %union.rec*, %union.rec** %1525, align 8
  store %union.rec* %1526, %union.rec** @zz_tmp, align 8
  %1527 = load %union.rec*, %union.rec** @zz_res, align 8
  %1528 = bitcast %union.rec* %1527 to %struct.word_type*
  %1529 = getelementptr inbounds %struct.word_type, %struct.word_type* %1528, i32 0, i32 0
  %1530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1529, i32 0, i64 1
  %1531 = getelementptr inbounds %struct.LIST, %struct.LIST* %1530, i32 0, i32 0
  %1532 = load %union.rec*, %union.rec** %1531, align 8
  %1533 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1534 = bitcast %union.rec* %1533 to %struct.word_type*
  %1535 = getelementptr inbounds %struct.word_type, %struct.word_type* %1534, i32 0, i32 0
  %1536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1535, i32 0, i64 1
  %1537 = getelementptr inbounds %struct.LIST, %struct.LIST* %1536, i32 0, i32 0
  store %union.rec* %1532, %union.rec** %1537, align 8
  %1538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1539 = load %union.rec*, %union.rec** @zz_res, align 8
  %1540 = bitcast %union.rec* %1539 to %struct.word_type*
  %1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %1540, i32 0, i32 0
  %1542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1541, i32 0, i64 1
  %1543 = getelementptr inbounds %struct.LIST, %struct.LIST* %1542, i32 0, i32 0
  %1544 = load %union.rec*, %union.rec** %1543, align 8
  %1545 = bitcast %union.rec* %1544 to %struct.word_type*
  %1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1546, i32 0, i64 1
  %1548 = getelementptr inbounds %struct.LIST, %struct.LIST* %1547, i32 0, i32 1
  store %union.rec* %1538, %union.rec** %1548, align 8
  %1549 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1550 = load %union.rec*, %union.rec** @zz_res, align 8
  %1551 = bitcast %union.rec* %1550 to %struct.word_type*
  %1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %1551, i32 0, i32 0
  %1553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1552, i32 0, i64 1
  %1554 = getelementptr inbounds %struct.LIST, %struct.LIST* %1553, i32 0, i32 0
  store %union.rec* %1549, %union.rec** %1554, align 8
  %1555 = load %union.rec*, %union.rec** @zz_res, align 8
  %1556 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1557 = bitcast %union.rec* %1556 to %struct.word_type*
  %1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %1557, i32 0, i32 0
  %1559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1558, i32 0, i64 1
  %1560 = getelementptr inbounds %struct.LIST, %struct.LIST* %1559, i32 0, i32 1
  store %union.rec* %1555, %union.rec** %1560, align 8
  br label %1561

; <label>:1561                                    ; preds = %1520, %1518
  %1562 = phi %union.rec* [ %1519, %1518 ], [ %1555, %1520 ]
  br label %1563

; <label>:1563                                    ; preds = %1561, %1513
  %1564 = phi %union.rec* [ %1514, %1513 ], [ %1562, %1561 ]
  %1565 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %1565)
  %1566 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %1566, i8** %q, align 8
  %1567 = load i8*, i8** %p, align 8
  %1568 = load i8, i8* %1567, align 1
  %1569 = zext i8 %1568 to i64
  %1570 = load i8*, i8** %uc, align 8
  %1571 = getelementptr inbounds i8, i8* %1570, i64 %1569
  %1572 = load i8, i8* %1571, align 1
  %1573 = load i8*, i8** %q, align 8
  %1574 = getelementptr inbounds i8, i8* %1573, i32 1
  store i8* %1574, i8** %q, align 8
  store i8 %1572, i8* %1573, align 1
  store i32 4, i32* %state, align 4
  br label %1580

; <label>:1575                                    ; preds = %576
  %1576 = load i8*, i8** %p, align 8
  %1577 = load i8, i8* %1576, align 1
  %1578 = load i8*, i8** %q, align 8
  %1579 = getelementptr inbounds i8, i8* %1578, i32 1
  store i8* %1579, i8** %q, align 8
  store i8 %1577, i8* %1578, align 1
  br label %1580

; <label>:1580                                    ; preds = %1575, %1563
  br label %2578

; <label>:1581                                    ; preds = %130
  %1582 = load i8*, i8** %p, align 8
  %1583 = load i8, i8* %1582, align 1
  %1584 = zext i8 %1583 to i64
  %1585 = load i8*, i8** %uc, align 8
  %1586 = getelementptr inbounds i8, i8* %1585, i64 %1584
  %1587 = load i8, i8* %1586, align 1
  %1588 = zext i8 %1587 to i32
  %1589 = icmp ne i32 %1588, 0
  br i1 %1589, label %1590, label %1599

; <label>:1590                                    ; preds = %1581
  %1591 = load i8*, i8** %p, align 8
  %1592 = load i8, i8* %1591, align 1
  %1593 = zext i8 %1592 to i64
  %1594 = load i8*, i8** %uc, align 8
  %1595 = getelementptr inbounds i8, i8* %1594, i64 %1593
  %1596 = load i8, i8* %1595, align 1
  %1597 = load i8*, i8** %q, align 8
  %1598 = getelementptr inbounds i8, i8* %1597, i32 1
  store i8* %1598, i8** %q, align 8
  store i8 %1596, i8* %1597, align 1
  br label %2163

; <label>:1599                                    ; preds = %1581
  %1600 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1601 = load i8*, i8** %q, align 8
  %1602 = load %union.rec*, %union.rec** %2, align 8
  %1603 = load i32, i32* %small_font, align 4
  %1604 = call %union.rec* @DoWord(i8* %1600, i8* %1601, %union.rec* %1602, i32 %1603)
  store %union.rec* %1604, %union.rec** %tmp, align 8
  %1605 = load %union.rec*, %union.rec** %2, align 8
  %1606 = load i32, i32* %vshift, align 4
  %1607 = load %union.rec*, %union.rec** %tmp, align 8
  %1608 = call %union.rec* @DoVShift(%union.rec* %1605, i32 %1606, %union.rec* %1607)
  store %union.rec* %1608, %union.rec** %new_y, align 8
  %1609 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 24), align 1
  %1610 = zext i8 %1609 to i32
  store i32 %1610, i32* @zz_size, align 4
  %1611 = sext i32 %1610 to i64
  %1612 = icmp uge i64 %1611, 265
  br i1 %1612, label %1613, label %1616

; <label>:1613                                    ; preds = %1599
  %1614 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1615 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1614)
  br label %1641

; <label>:1616                                    ; preds = %1599
  %1617 = load i32, i32* @zz_size, align 4
  %1618 = sext i32 %1617 to i64
  %1619 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1618
  %1620 = load %union.rec*, %union.rec** %1619, align 8
  %1621 = icmp eq %union.rec* %1620, null
  br i1 %1621, label %1622, label %1626

; <label>:1622                                    ; preds = %1616
  %1623 = load i32, i32* @zz_size, align 4
  %1624 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1625 = call %union.rec* @GetMemory(i32 %1623, %struct.FILE_POS* %1624)
  store %union.rec* %1625, %union.rec** @zz_hold, align 8
  br label %1640

; <label>:1626                                    ; preds = %1616
  %1627 = load i32, i32* @zz_size, align 4
  %1628 = sext i32 %1627 to i64
  %1629 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1628
  %1630 = load %union.rec*, %union.rec** %1629, align 8
  store %union.rec* %1630, %union.rec** @zz_hold, align 8
  store %union.rec* %1630, %union.rec** @zz_hold, align 8
  %1631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1632 = bitcast %union.rec* %1631 to %struct.word_type*
  %1633 = getelementptr inbounds %struct.word_type, %struct.word_type* %1632, i32 0, i32 0
  %1634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1633, i32 0, i64 0
  %1635 = getelementptr inbounds %struct.LIST, %struct.LIST* %1634, i32 0, i32 0
  %1636 = load %union.rec*, %union.rec** %1635, align 8
  %1637 = load i32, i32* @zz_size, align 4
  %1638 = sext i32 %1637 to i64
  %1639 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1638
  store %union.rec* %1636, %union.rec** %1639, align 8
  br label %1640

; <label>:1640                                    ; preds = %1626, %1622
  br label %1641

; <label>:1641                                    ; preds = %1640, %1613
  %1642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1643 = bitcast %union.rec* %1642 to %struct.word_type*
  %1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %1643, i32 0, i32 1
  %1645 = bitcast %union.FIRST_UNION* %1644 to %struct.anon*
  %1646 = getelementptr inbounds %struct.anon, %struct.anon* %1645, i32 0, i32 0
  store i8 24, i8* %1646, align 1
  %1647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1648 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1649 = bitcast %union.rec* %1648 to %struct.word_type*
  %1650 = getelementptr inbounds %struct.word_type, %struct.word_type* %1649, i32 0, i32 0
  %1651 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1650, i32 0, i64 1
  %1652 = getelementptr inbounds %struct.LIST, %struct.LIST* %1651, i32 0, i32 1
  store %union.rec* %1647, %union.rec** %1652, align 8
  %1653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1654 = bitcast %union.rec* %1653 to %struct.word_type*
  %1655 = getelementptr inbounds %struct.word_type, %struct.word_type* %1654, i32 0, i32 0
  %1656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1655, i32 0, i64 1
  %1657 = getelementptr inbounds %struct.LIST, %struct.LIST* %1656, i32 0, i32 0
  store %union.rec* %1647, %union.rec** %1657, align 8
  %1658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1659 = bitcast %union.rec* %1658 to %struct.word_type*
  %1660 = getelementptr inbounds %struct.word_type, %struct.word_type* %1659, i32 0, i32 0
  %1661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1660, i32 0, i64 0
  %1662 = getelementptr inbounds %struct.LIST, %struct.LIST* %1661, i32 0, i32 1
  store %union.rec* %1647, %union.rec** %1662, align 8
  %1663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1664 = bitcast %union.rec* %1663 to %struct.word_type*
  %1665 = getelementptr inbounds %struct.word_type, %struct.word_type* %1664, i32 0, i32 0
  %1666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1665, i32 0, i64 0
  %1667 = getelementptr inbounds %struct.LIST, %struct.LIST* %1666, i32 0, i32 0
  store %union.rec* %1647, %union.rec** %1667, align 8
  store %union.rec* %1647, %union.rec** %new_x, align 8
  %1668 = load %union.rec*, %union.rec** %2, align 8
  %1669 = bitcast %union.rec* %1668 to %struct.word_type*
  %1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %1669, i32 0, i32 1
  %1671 = bitcast %union.FIRST_UNION* %1670 to %struct.FILE_POS*
  %1672 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1671, i32 0, i32 2
  %1673 = load i16, i16* %1672, align 2
  %1674 = load %union.rec*, %union.rec** %new_x, align 8
  %1675 = bitcast %union.rec* %1674 to %struct.word_type*
  %1676 = getelementptr inbounds %struct.word_type, %struct.word_type* %1675, i32 0, i32 1
  %1677 = bitcast %union.FIRST_UNION* %1676 to %struct.FILE_POS*
  %1678 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1677, i32 0, i32 2
  store i16 %1673, i16* %1678, align 2
  %1679 = load %union.rec*, %union.rec** %2, align 8
  %1680 = bitcast %union.rec* %1679 to %struct.word_type*
  %1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %1680, i32 0, i32 1
  %1682 = bitcast %union.FIRST_UNION* %1681 to %struct.FILE_POS*
  %1683 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1682, i32 0, i32 3
  %1684 = load i32, i32* %1683, align 4
  %1685 = and i32 %1684, 1048575
  %1686 = load %union.rec*, %union.rec** %new_x, align 8
  %1687 = bitcast %union.rec* %1686 to %struct.word_type*
  %1688 = getelementptr inbounds %struct.word_type, %struct.word_type* %1687, i32 0, i32 1
  %1689 = bitcast %union.FIRST_UNION* %1688 to %struct.FILE_POS*
  %1690 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1689, i32 0, i32 3
  %1691 = load i32, i32* %1690, align 4
  %1692 = and i32 %1685, 1048575
  %1693 = and i32 %1691, -1048576
  %1694 = or i32 %1693, %1692
  store i32 %1694, i32* %1690, align 4
  %1695 = load %union.rec*, %union.rec** %2, align 8
  %1696 = bitcast %union.rec* %1695 to %struct.word_type*
  %1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %1696, i32 0, i32 1
  %1698 = bitcast %union.FIRST_UNION* %1697 to %struct.FILE_POS*
  %1699 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1698, i32 0, i32 3
  %1700 = load i32, i32* %1699, align 4
  %1701 = lshr i32 %1700, 20
  %1702 = load %union.rec*, %union.rec** %new_x, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.word_type*
  %1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %1703, i32 0, i32 1
  %1705 = bitcast %union.FIRST_UNION* %1704 to %struct.FILE_POS*
  %1706 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1705, i32 0, i32 3
  %1707 = load i32, i32* %1706, align 4
  %1708 = and i32 %1701, 4095
  %1709 = shl i32 %1708, 20
  %1710 = and i32 %1707, 1048575
  %1711 = or i32 %1710, %1709
  store i32 %1711, i32* %1706, align 4
  %1712 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1713 = zext i8 %1712 to i32
  store i32 %1713, i32* @zz_size, align 4
  %1714 = sext i32 %1713 to i64
  %1715 = icmp uge i64 %1714, 265
  br i1 %1715, label %1716, label %1719

; <label>:1716                                    ; preds = %1641
  %1717 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1718 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1717)
  br label %1744

; <label>:1719                                    ; preds = %1641
  %1720 = load i32, i32* @zz_size, align 4
  %1721 = sext i32 %1720 to i64
  %1722 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1721
  %1723 = load %union.rec*, %union.rec** %1722, align 8
  %1724 = icmp eq %union.rec* %1723, null
  br i1 %1724, label %1725, label %1729

; <label>:1725                                    ; preds = %1719
  %1726 = load i32, i32* @zz_size, align 4
  %1727 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1728 = call %union.rec* @GetMemory(i32 %1726, %struct.FILE_POS* %1727)
  store %union.rec* %1728, %union.rec** @zz_hold, align 8
  br label %1743

; <label>:1729                                    ; preds = %1719
  %1730 = load i32, i32* @zz_size, align 4
  %1731 = sext i32 %1730 to i64
  %1732 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1731
  %1733 = load %union.rec*, %union.rec** %1732, align 8
  store %union.rec* %1733, %union.rec** @zz_hold, align 8
  store %union.rec* %1733, %union.rec** @zz_hold, align 8
  %1734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1735 = bitcast %union.rec* %1734 to %struct.word_type*
  %1736 = getelementptr inbounds %struct.word_type, %struct.word_type* %1735, i32 0, i32 0
  %1737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1736, i32 0, i64 0
  %1738 = getelementptr inbounds %struct.LIST, %struct.LIST* %1737, i32 0, i32 0
  %1739 = load %union.rec*, %union.rec** %1738, align 8
  %1740 = load i32, i32* @zz_size, align 4
  %1741 = sext i32 %1740 to i64
  %1742 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1741
  store %union.rec* %1739, %union.rec** %1742, align 8
  br label %1743

; <label>:1743                                    ; preds = %1729, %1725
  br label %1744

; <label>:1744                                    ; preds = %1743, %1716
  %1745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1746 = bitcast %union.rec* %1745 to %struct.word_type*
  %1747 = getelementptr inbounds %struct.word_type, %struct.word_type* %1746, i32 0, i32 1
  %1748 = bitcast %union.FIRST_UNION* %1747 to %struct.anon*
  %1749 = getelementptr inbounds %struct.anon, %struct.anon* %1748, i32 0, i32 0
  store i8 17, i8* %1749, align 1
  %1750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1751 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1752 = bitcast %union.rec* %1751 to %struct.word_type*
  %1753 = getelementptr inbounds %struct.word_type, %struct.word_type* %1752, i32 0, i32 0
  %1754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1753, i32 0, i64 1
  %1755 = getelementptr inbounds %struct.LIST, %struct.LIST* %1754, i32 0, i32 1
  store %union.rec* %1750, %union.rec** %1755, align 8
  %1756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1757 = bitcast %union.rec* %1756 to %struct.word_type*
  %1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %1757, i32 0, i32 0
  %1759 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1758, i32 0, i64 1
  %1760 = getelementptr inbounds %struct.LIST, %struct.LIST* %1759, i32 0, i32 0
  store %union.rec* %1750, %union.rec** %1760, align 8
  %1761 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1762 = bitcast %union.rec* %1761 to %struct.word_type*
  %1763 = getelementptr inbounds %struct.word_type, %struct.word_type* %1762, i32 0, i32 0
  %1764 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1763, i32 0, i64 0
  %1765 = getelementptr inbounds %struct.LIST, %struct.LIST* %1764, i32 0, i32 1
  store %union.rec* %1750, %union.rec** %1765, align 8
  %1766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1767 = bitcast %union.rec* %1766 to %struct.word_type*
  %1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %1767, i32 0, i32 0
  %1769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1768, i32 0, i64 0
  %1770 = getelementptr inbounds %struct.LIST, %struct.LIST* %1769, i32 0, i32 0
  store %union.rec* %1750, %union.rec** %1770, align 8
  store %union.rec* %1750, %union.rec** %new_acat, align 8
  %1771 = load %union.rec*, %union.rec** %2, align 8
  %1772 = bitcast %union.rec* %1771 to %struct.word_type*
  %1773 = getelementptr inbounds %struct.word_type, %struct.word_type* %1772, i32 0, i32 1
  %1774 = bitcast %union.FIRST_UNION* %1773 to %struct.FILE_POS*
  %1775 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1774, i32 0, i32 2
  %1776 = load i16, i16* %1775, align 2
  %1777 = load %union.rec*, %union.rec** %new_acat, align 8
  %1778 = bitcast %union.rec* %1777 to %struct.word_type*
  %1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %1778, i32 0, i32 1
  %1780 = bitcast %union.FIRST_UNION* %1779 to %struct.FILE_POS*
  %1781 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1780, i32 0, i32 2
  store i16 %1776, i16* %1781, align 2
  %1782 = load %union.rec*, %union.rec** %2, align 8
  %1783 = bitcast %union.rec* %1782 to %struct.word_type*
  %1784 = getelementptr inbounds %struct.word_type, %struct.word_type* %1783, i32 0, i32 1
  %1785 = bitcast %union.FIRST_UNION* %1784 to %struct.FILE_POS*
  %1786 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1785, i32 0, i32 3
  %1787 = load i32, i32* %1786, align 4
  %1788 = and i32 %1787, 1048575
  %1789 = load %union.rec*, %union.rec** %new_acat, align 8
  %1790 = bitcast %union.rec* %1789 to %struct.word_type*
  %1791 = getelementptr inbounds %struct.word_type, %struct.word_type* %1790, i32 0, i32 1
  %1792 = bitcast %union.FIRST_UNION* %1791 to %struct.FILE_POS*
  %1793 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1792, i32 0, i32 3
  %1794 = load i32, i32* %1793, align 4
  %1795 = and i32 %1788, 1048575
  %1796 = and i32 %1794, -1048576
  %1797 = or i32 %1796, %1795
  store i32 %1797, i32* %1793, align 4
  %1798 = load %union.rec*, %union.rec** %2, align 8
  %1799 = bitcast %union.rec* %1798 to %struct.word_type*
  %1800 = getelementptr inbounds %struct.word_type, %struct.word_type* %1799, i32 0, i32 1
  %1801 = bitcast %union.FIRST_UNION* %1800 to %struct.FILE_POS*
  %1802 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1801, i32 0, i32 3
  %1803 = load i32, i32* %1802, align 4
  %1804 = lshr i32 %1803, 20
  %1805 = load %union.rec*, %union.rec** %new_acat, align 8
  %1806 = bitcast %union.rec* %1805 to %struct.word_type*
  %1807 = getelementptr inbounds %struct.word_type, %struct.word_type* %1806, i32 0, i32 1
  %1808 = bitcast %union.FIRST_UNION* %1807 to %struct.FILE_POS*
  %1809 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1808, i32 0, i32 3
  %1810 = load i32, i32* %1809, align 4
  %1811 = and i32 %1804, 4095
  %1812 = shl i32 %1811, 20
  %1813 = and i32 %1810, 1048575
  %1814 = or i32 %1813, %1812
  store i32 %1814, i32* %1809, align 4
  %1815 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1816 = zext i8 %1815 to i32
  store i32 %1816, i32* @zz_size, align 4
  %1817 = sext i32 %1816 to i64
  %1818 = icmp uge i64 %1817, 265
  br i1 %1818, label %1819, label %1822

; <label>:1819                                    ; preds = %1744
  %1820 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1821 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1820)
  br label %1847

; <label>:1822                                    ; preds = %1744
  %1823 = load i32, i32* @zz_size, align 4
  %1824 = sext i32 %1823 to i64
  %1825 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1824
  %1826 = load %union.rec*, %union.rec** %1825, align 8
  %1827 = icmp eq %union.rec* %1826, null
  br i1 %1827, label %1828, label %1832

; <label>:1828                                    ; preds = %1822
  %1829 = load i32, i32* @zz_size, align 4
  %1830 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1831 = call %union.rec* @GetMemory(i32 %1829, %struct.FILE_POS* %1830)
  store %union.rec* %1831, %union.rec** @zz_hold, align 8
  br label %1846

; <label>:1832                                    ; preds = %1822
  %1833 = load i32, i32* @zz_size, align 4
  %1834 = sext i32 %1833 to i64
  %1835 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1834
  %1836 = load %union.rec*, %union.rec** %1835, align 8
  store %union.rec* %1836, %union.rec** @zz_hold, align 8
  store %union.rec* %1836, %union.rec** @zz_hold, align 8
  %1837 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1838 = bitcast %union.rec* %1837 to %struct.word_type*
  %1839 = getelementptr inbounds %struct.word_type, %struct.word_type* %1838, i32 0, i32 0
  %1840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1839, i32 0, i64 0
  %1841 = getelementptr inbounds %struct.LIST, %struct.LIST* %1840, i32 0, i32 0
  %1842 = load %union.rec*, %union.rec** %1841, align 8
  %1843 = load i32, i32* @zz_size, align 4
  %1844 = sext i32 %1843 to i64
  %1845 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1844
  store %union.rec* %1842, %union.rec** %1845, align 8
  br label %1846

; <label>:1846                                    ; preds = %1832, %1828
  br label %1847

; <label>:1847                                    ; preds = %1846, %1819
  %1848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1849 = bitcast %union.rec* %1848 to %struct.word_type*
  %1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %1849, i32 0, i32 1
  %1851 = bitcast %union.FIRST_UNION* %1850 to %struct.anon*
  %1852 = getelementptr inbounds %struct.anon, %struct.anon* %1851, i32 0, i32 0
  store i8 0, i8* %1852, align 1
  %1853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1855 = bitcast %union.rec* %1854 to %struct.word_type*
  %1856 = getelementptr inbounds %struct.word_type, %struct.word_type* %1855, i32 0, i32 0
  %1857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1856, i32 0, i64 1
  %1858 = getelementptr inbounds %struct.LIST, %struct.LIST* %1857, i32 0, i32 1
  store %union.rec* %1853, %union.rec** %1858, align 8
  %1859 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1860 = bitcast %union.rec* %1859 to %struct.word_type*
  %1861 = getelementptr inbounds %struct.word_type, %struct.word_type* %1860, i32 0, i32 0
  %1862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1861, i32 0, i64 1
  %1863 = getelementptr inbounds %struct.LIST, %struct.LIST* %1862, i32 0, i32 0
  store %union.rec* %1853, %union.rec** %1863, align 8
  %1864 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1865 = bitcast %union.rec* %1864 to %struct.word_type*
  %1866 = getelementptr inbounds %struct.word_type, %struct.word_type* %1865, i32 0, i32 0
  %1867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1866, i32 0, i64 0
  %1868 = getelementptr inbounds %struct.LIST, %struct.LIST* %1867, i32 0, i32 1
  store %union.rec* %1853, %union.rec** %1868, align 8
  %1869 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1870 = bitcast %union.rec* %1869 to %struct.word_type*
  %1871 = getelementptr inbounds %struct.word_type, %struct.word_type* %1870, i32 0, i32 0
  %1872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1871, i32 0, i64 0
  %1873 = getelementptr inbounds %struct.LIST, %struct.LIST* %1872, i32 0, i32 0
  store %union.rec* %1853, %union.rec** %1873, align 8
  store %union.rec* %1853, %union.rec** @xx_link, align 8
  %1874 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1874, %union.rec** @zz_res, align 8
  %1875 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %1875, %union.rec** @zz_hold, align 8
  %1876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1877 = icmp eq %union.rec* %1876, null
  br i1 %1877, label %1878, label %1880

; <label>:1878                                    ; preds = %1847
  %1879 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1928

; <label>:1880                                    ; preds = %1847
  %1881 = load %union.rec*, %union.rec** @zz_res, align 8
  %1882 = icmp eq %union.rec* %1881, null
  br i1 %1882, label %1883, label %1885

; <label>:1883                                    ; preds = %1880
  %1884 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1926

; <label>:1885                                    ; preds = %1880
  %1886 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1887 = bitcast %union.rec* %1886 to %struct.word_type*
  %1888 = getelementptr inbounds %struct.word_type, %struct.word_type* %1887, i32 0, i32 0
  %1889 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1888, i32 0, i64 0
  %1890 = getelementptr inbounds %struct.LIST, %struct.LIST* %1889, i32 0, i32 0
  %1891 = load %union.rec*, %union.rec** %1890, align 8
  store %union.rec* %1891, %union.rec** @zz_tmp, align 8
  %1892 = load %union.rec*, %union.rec** @zz_res, align 8
  %1893 = bitcast %union.rec* %1892 to %struct.word_type*
  %1894 = getelementptr inbounds %struct.word_type, %struct.word_type* %1893, i32 0, i32 0
  %1895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1894, i32 0, i64 0
  %1896 = getelementptr inbounds %struct.LIST, %struct.LIST* %1895, i32 0, i32 0
  %1897 = load %union.rec*, %union.rec** %1896, align 8
  %1898 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1899 = bitcast %union.rec* %1898 to %struct.word_type*
  %1900 = getelementptr inbounds %struct.word_type, %struct.word_type* %1899, i32 0, i32 0
  %1901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1900, i32 0, i64 0
  %1902 = getelementptr inbounds %struct.LIST, %struct.LIST* %1901, i32 0, i32 0
  store %union.rec* %1897, %union.rec** %1902, align 8
  %1903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1904 = load %union.rec*, %union.rec** @zz_res, align 8
  %1905 = bitcast %union.rec* %1904 to %struct.word_type*
  %1906 = getelementptr inbounds %struct.word_type, %struct.word_type* %1905, i32 0, i32 0
  %1907 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1906, i32 0, i64 0
  %1908 = getelementptr inbounds %struct.LIST, %struct.LIST* %1907, i32 0, i32 0
  %1909 = load %union.rec*, %union.rec** %1908, align 8
  %1910 = bitcast %union.rec* %1909 to %struct.word_type*
  %1911 = getelementptr inbounds %struct.word_type, %struct.word_type* %1910, i32 0, i32 0
  %1912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1911, i32 0, i64 0
  %1913 = getelementptr inbounds %struct.LIST, %struct.LIST* %1912, i32 0, i32 1
  store %union.rec* %1903, %union.rec** %1913, align 8
  %1914 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1915 = load %union.rec*, %union.rec** @zz_res, align 8
  %1916 = bitcast %union.rec* %1915 to %struct.word_type*
  %1917 = getelementptr inbounds %struct.word_type, %struct.word_type* %1916, i32 0, i32 0
  %1918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1917, i32 0, i64 0
  %1919 = getelementptr inbounds %struct.LIST, %struct.LIST* %1918, i32 0, i32 0
  store %union.rec* %1914, %union.rec** %1919, align 8
  %1920 = load %union.rec*, %union.rec** @zz_res, align 8
  %1921 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1922 = bitcast %union.rec* %1921 to %struct.word_type*
  %1923 = getelementptr inbounds %struct.word_type, %struct.word_type* %1922, i32 0, i32 0
  %1924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1923, i32 0, i64 0
  %1925 = getelementptr inbounds %struct.LIST, %struct.LIST* %1924, i32 0, i32 1
  store %union.rec* %1920, %union.rec** %1925, align 8
  br label %1926

; <label>:1926                                    ; preds = %1885, %1883
  %1927 = phi %union.rec* [ %1884, %1883 ], [ %1920, %1885 ]
  br label %1928

; <label>:1928                                    ; preds = %1926, %1878
  %1929 = phi %union.rec* [ %1879, %1878 ], [ %1927, %1926 ]
  %1930 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1930, %union.rec** @zz_res, align 8
  %1931 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %1931, %union.rec** @zz_hold, align 8
  %1932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1933 = icmp eq %union.rec* %1932, null
  br i1 %1933, label %1934, label %1936

; <label>:1934                                    ; preds = %1928
  %1935 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1984

; <label>:1936                                    ; preds = %1928
  %1937 = load %union.rec*, %union.rec** @zz_res, align 8
  %1938 = icmp eq %union.rec* %1937, null
  br i1 %1938, label %1939, label %1941

; <label>:1939                                    ; preds = %1936
  %1940 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1982

; <label>:1941                                    ; preds = %1936
  %1942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1943 = bitcast %union.rec* %1942 to %struct.word_type*
  %1944 = getelementptr inbounds %struct.word_type, %struct.word_type* %1943, i32 0, i32 0
  %1945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1944, i32 0, i64 1
  %1946 = getelementptr inbounds %struct.LIST, %struct.LIST* %1945, i32 0, i32 0
  %1947 = load %union.rec*, %union.rec** %1946, align 8
  store %union.rec* %1947, %union.rec** @zz_tmp, align 8
  %1948 = load %union.rec*, %union.rec** @zz_res, align 8
  %1949 = bitcast %union.rec* %1948 to %struct.word_type*
  %1950 = getelementptr inbounds %struct.word_type, %struct.word_type* %1949, i32 0, i32 0
  %1951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1950, i32 0, i64 1
  %1952 = getelementptr inbounds %struct.LIST, %struct.LIST* %1951, i32 0, i32 0
  %1953 = load %union.rec*, %union.rec** %1952, align 8
  %1954 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1955 = bitcast %union.rec* %1954 to %struct.word_type*
  %1956 = getelementptr inbounds %struct.word_type, %struct.word_type* %1955, i32 0, i32 0
  %1957 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1956, i32 0, i64 1
  %1958 = getelementptr inbounds %struct.LIST, %struct.LIST* %1957, i32 0, i32 0
  store %union.rec* %1953, %union.rec** %1958, align 8
  %1959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1960 = load %union.rec*, %union.rec** @zz_res, align 8
  %1961 = bitcast %union.rec* %1960 to %struct.word_type*
  %1962 = getelementptr inbounds %struct.word_type, %struct.word_type* %1961, i32 0, i32 0
  %1963 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1962, i32 0, i64 1
  %1964 = getelementptr inbounds %struct.LIST, %struct.LIST* %1963, i32 0, i32 0
  %1965 = load %union.rec*, %union.rec** %1964, align 8
  %1966 = bitcast %union.rec* %1965 to %struct.word_type*
  %1967 = getelementptr inbounds %struct.word_type, %struct.word_type* %1966, i32 0, i32 0
  %1968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1967, i32 0, i64 1
  %1969 = getelementptr inbounds %struct.LIST, %struct.LIST* %1968, i32 0, i32 1
  store %union.rec* %1959, %union.rec** %1969, align 8
  %1970 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1971 = load %union.rec*, %union.rec** @zz_res, align 8
  %1972 = bitcast %union.rec* %1971 to %struct.word_type*
  %1973 = getelementptr inbounds %struct.word_type, %struct.word_type* %1972, i32 0, i32 0
  %1974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1973, i32 0, i64 1
  %1975 = getelementptr inbounds %struct.LIST, %struct.LIST* %1974, i32 0, i32 0
  store %union.rec* %1970, %union.rec** %1975, align 8
  %1976 = load %union.rec*, %union.rec** @zz_res, align 8
  %1977 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1978 = bitcast %union.rec* %1977 to %struct.word_type*
  %1979 = getelementptr inbounds %struct.word_type, %struct.word_type* %1978, i32 0, i32 0
  %1980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1979, i32 0, i64 1
  %1981 = getelementptr inbounds %struct.LIST, %struct.LIST* %1980, i32 0, i32 1
  store %union.rec* %1976, %union.rec** %1981, align 8
  br label %1982

; <label>:1982                                    ; preds = %1941, %1939
  %1983 = phi %union.rec* [ %1940, %1939 ], [ %1976, %1941 ]
  br label %1984

; <label>:1984                                    ; preds = %1982, %1934
  %1985 = phi %union.rec* [ %1935, %1934 ], [ %1983, %1982 ]
  %1986 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1987 = zext i8 %1986 to i32
  store i32 %1987, i32* @zz_size, align 4
  %1988 = sext i32 %1987 to i64
  %1989 = icmp uge i64 %1988, 265
  br i1 %1989, label %1990, label %1993

; <label>:1990                                    ; preds = %1984
  %1991 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1992 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %1991)
  br label %2018

; <label>:1993                                    ; preds = %1984
  %1994 = load i32, i32* @zz_size, align 4
  %1995 = sext i32 %1994 to i64
  %1996 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1995
  %1997 = load %union.rec*, %union.rec** %1996, align 8
  %1998 = icmp eq %union.rec* %1997, null
  br i1 %1998, label %1999, label %2003

; <label>:1999                                    ; preds = %1993
  %2000 = load i32, i32* @zz_size, align 4
  %2001 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2002 = call %union.rec* @GetMemory(i32 %2000, %struct.FILE_POS* %2001)
  store %union.rec* %2002, %union.rec** @zz_hold, align 8
  br label %2017

; <label>:2003                                    ; preds = %1993
  %2004 = load i32, i32* @zz_size, align 4
  %2005 = sext i32 %2004 to i64
  %2006 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2005
  %2007 = load %union.rec*, %union.rec** %2006, align 8
  store %union.rec* %2007, %union.rec** @zz_hold, align 8
  store %union.rec* %2007, %union.rec** @zz_hold, align 8
  %2008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2009 = bitcast %union.rec* %2008 to %struct.word_type*
  %2010 = getelementptr inbounds %struct.word_type, %struct.word_type* %2009, i32 0, i32 0
  %2011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2010, i32 0, i64 0
  %2012 = getelementptr inbounds %struct.LIST, %struct.LIST* %2011, i32 0, i32 0
  %2013 = load %union.rec*, %union.rec** %2012, align 8
  %2014 = load i32, i32* @zz_size, align 4
  %2015 = sext i32 %2014 to i64
  %2016 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2015
  store %union.rec* %2013, %union.rec** %2016, align 8
  br label %2017

; <label>:2017                                    ; preds = %2003, %1999
  br label %2018

; <label>:2018                                    ; preds = %2017, %1990
  %2019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2020 = bitcast %union.rec* %2019 to %struct.word_type*
  %2021 = getelementptr inbounds %struct.word_type, %struct.word_type* %2020, i32 0, i32 1
  %2022 = bitcast %union.FIRST_UNION* %2021 to %struct.anon*
  %2023 = getelementptr inbounds %struct.anon, %struct.anon* %2022, i32 0, i32 0
  store i8 0, i8* %2023, align 1
  %2024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2026 = bitcast %union.rec* %2025 to %struct.word_type*
  %2027 = getelementptr inbounds %struct.word_type, %struct.word_type* %2026, i32 0, i32 0
  %2028 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2027, i32 0, i64 1
  %2029 = getelementptr inbounds %struct.LIST, %struct.LIST* %2028, i32 0, i32 1
  store %union.rec* %2024, %union.rec** %2029, align 8
  %2030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2031 = bitcast %union.rec* %2030 to %struct.word_type*
  %2032 = getelementptr inbounds %struct.word_type, %struct.word_type* %2031, i32 0, i32 0
  %2033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2032, i32 0, i64 1
  %2034 = getelementptr inbounds %struct.LIST, %struct.LIST* %2033, i32 0, i32 0
  store %union.rec* %2024, %union.rec** %2034, align 8
  %2035 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2036 = bitcast %union.rec* %2035 to %struct.word_type*
  %2037 = getelementptr inbounds %struct.word_type, %struct.word_type* %2036, i32 0, i32 0
  %2038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2037, i32 0, i64 0
  %2039 = getelementptr inbounds %struct.LIST, %struct.LIST* %2038, i32 0, i32 1
  store %union.rec* %2024, %union.rec** %2039, align 8
  %2040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2041 = bitcast %union.rec* %2040 to %struct.word_type*
  %2042 = getelementptr inbounds %struct.word_type, %struct.word_type* %2041, i32 0, i32 0
  %2043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2042, i32 0, i64 0
  %2044 = getelementptr inbounds %struct.LIST, %struct.LIST* %2043, i32 0, i32 0
  store %union.rec* %2024, %union.rec** %2044, align 8
  store %union.rec* %2024, %union.rec** @xx_link, align 8
  %2045 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2045, %union.rec** @zz_res, align 8
  %2046 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %2046, %union.rec** @zz_hold, align 8
  %2047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2048 = icmp eq %union.rec* %2047, null
  br i1 %2048, label %2049, label %2051

; <label>:2049                                    ; preds = %2018
  %2050 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2099

; <label>:2051                                    ; preds = %2018
  %2052 = load %union.rec*, %union.rec** @zz_res, align 8
  %2053 = icmp eq %union.rec* %2052, null
  br i1 %2053, label %2054, label %2056

; <label>:2054                                    ; preds = %2051
  %2055 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2097

; <label>:2056                                    ; preds = %2051
  %2057 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2058 = bitcast %union.rec* %2057 to %struct.word_type*
  %2059 = getelementptr inbounds %struct.word_type, %struct.word_type* %2058, i32 0, i32 0
  %2060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2059, i32 0, i64 0
  %2061 = getelementptr inbounds %struct.LIST, %struct.LIST* %2060, i32 0, i32 0
  %2062 = load %union.rec*, %union.rec** %2061, align 8
  store %union.rec* %2062, %union.rec** @zz_tmp, align 8
  %2063 = load %union.rec*, %union.rec** @zz_res, align 8
  %2064 = bitcast %union.rec* %2063 to %struct.word_type*
  %2065 = getelementptr inbounds %struct.word_type, %struct.word_type* %2064, i32 0, i32 0
  %2066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2065, i32 0, i64 0
  %2067 = getelementptr inbounds %struct.LIST, %struct.LIST* %2066, i32 0, i32 0
  %2068 = load %union.rec*, %union.rec** %2067, align 8
  %2069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2070 = bitcast %union.rec* %2069 to %struct.word_type*
  %2071 = getelementptr inbounds %struct.word_type, %struct.word_type* %2070, i32 0, i32 0
  %2072 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2071, i32 0, i64 0
  %2073 = getelementptr inbounds %struct.LIST, %struct.LIST* %2072, i32 0, i32 0
  store %union.rec* %2068, %union.rec** %2073, align 8
  %2074 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2075 = load %union.rec*, %union.rec** @zz_res, align 8
  %2076 = bitcast %union.rec* %2075 to %struct.word_type*
  %2077 = getelementptr inbounds %struct.word_type, %struct.word_type* %2076, i32 0, i32 0
  %2078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2077, i32 0, i64 0
  %2079 = getelementptr inbounds %struct.LIST, %struct.LIST* %2078, i32 0, i32 0
  %2080 = load %union.rec*, %union.rec** %2079, align 8
  %2081 = bitcast %union.rec* %2080 to %struct.word_type*
  %2082 = getelementptr inbounds %struct.word_type, %struct.word_type* %2081, i32 0, i32 0
  %2083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2082, i32 0, i64 0
  %2084 = getelementptr inbounds %struct.LIST, %struct.LIST* %2083, i32 0, i32 1
  store %union.rec* %2074, %union.rec** %2084, align 8
  %2085 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2086 = load %union.rec*, %union.rec** @zz_res, align 8
  %2087 = bitcast %union.rec* %2086 to %struct.word_type*
  %2088 = getelementptr inbounds %struct.word_type, %struct.word_type* %2087, i32 0, i32 0
  %2089 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2088, i32 0, i64 0
  %2090 = getelementptr inbounds %struct.LIST, %struct.LIST* %2089, i32 0, i32 0
  store %union.rec* %2085, %union.rec** %2090, align 8
  %2091 = load %union.rec*, %union.rec** @zz_res, align 8
  %2092 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2093 = bitcast %union.rec* %2092 to %struct.word_type*
  %2094 = getelementptr inbounds %struct.word_type, %struct.word_type* %2093, i32 0, i32 0
  %2095 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2094, i32 0, i64 0
  %2096 = getelementptr inbounds %struct.LIST, %struct.LIST* %2095, i32 0, i32 1
  store %union.rec* %2091, %union.rec** %2096, align 8
  br label %2097

; <label>:2097                                    ; preds = %2056, %2054
  %2098 = phi %union.rec* [ %2055, %2054 ], [ %2091, %2056 ]
  br label %2099

; <label>:2099                                    ; preds = %2097, %2049
  %2100 = phi %union.rec* [ %2050, %2049 ], [ %2098, %2097 ]
  %2101 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2101, %union.rec** @zz_res, align 8
  %2102 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %2102, %union.rec** @zz_hold, align 8
  %2103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2104 = icmp eq %union.rec* %2103, null
  br i1 %2104, label %2105, label %2107

; <label>:2105                                    ; preds = %2099
  %2106 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2155

; <label>:2107                                    ; preds = %2099
  %2108 = load %union.rec*, %union.rec** @zz_res, align 8
  %2109 = icmp eq %union.rec* %2108, null
  br i1 %2109, label %2110, label %2112

; <label>:2110                                    ; preds = %2107
  %2111 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2153

; <label>:2112                                    ; preds = %2107
  %2113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2114 = bitcast %union.rec* %2113 to %struct.word_type*
  %2115 = getelementptr inbounds %struct.word_type, %struct.word_type* %2114, i32 0, i32 0
  %2116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2115, i32 0, i64 1
  %2117 = getelementptr inbounds %struct.LIST, %struct.LIST* %2116, i32 0, i32 0
  %2118 = load %union.rec*, %union.rec** %2117, align 8
  store %union.rec* %2118, %union.rec** @zz_tmp, align 8
  %2119 = load %union.rec*, %union.rec** @zz_res, align 8
  %2120 = bitcast %union.rec* %2119 to %struct.word_type*
  %2121 = getelementptr inbounds %struct.word_type, %struct.word_type* %2120, i32 0, i32 0
  %2122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2121, i32 0, i64 1
  %2123 = getelementptr inbounds %struct.LIST, %struct.LIST* %2122, i32 0, i32 0
  %2124 = load %union.rec*, %union.rec** %2123, align 8
  %2125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2126 = bitcast %union.rec* %2125 to %struct.word_type*
  %2127 = getelementptr inbounds %struct.word_type, %struct.word_type* %2126, i32 0, i32 0
  %2128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2127, i32 0, i64 1
  %2129 = getelementptr inbounds %struct.LIST, %struct.LIST* %2128, i32 0, i32 0
  store %union.rec* %2124, %union.rec** %2129, align 8
  %2130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2131 = load %union.rec*, %union.rec** @zz_res, align 8
  %2132 = bitcast %union.rec* %2131 to %struct.word_type*
  %2133 = getelementptr inbounds %struct.word_type, %struct.word_type* %2132, i32 0, i32 0
  %2134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2133, i32 0, i64 1
  %2135 = getelementptr inbounds %struct.LIST, %struct.LIST* %2134, i32 0, i32 0
  %2136 = load %union.rec*, %union.rec** %2135, align 8
  %2137 = bitcast %union.rec* %2136 to %struct.word_type*
  %2138 = getelementptr inbounds %struct.word_type, %struct.word_type* %2137, i32 0, i32 0
  %2139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2138, i32 0, i64 1
  %2140 = getelementptr inbounds %struct.LIST, %struct.LIST* %2139, i32 0, i32 1
  store %union.rec* %2130, %union.rec** %2140, align 8
  %2141 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2142 = load %union.rec*, %union.rec** @zz_res, align 8
  %2143 = bitcast %union.rec* %2142 to %struct.word_type*
  %2144 = getelementptr inbounds %struct.word_type, %struct.word_type* %2143, i32 0, i32 0
  %2145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2144, i32 0, i64 1
  %2146 = getelementptr inbounds %struct.LIST, %struct.LIST* %2145, i32 0, i32 0
  store %union.rec* %2141, %union.rec** %2146, align 8
  %2147 = load %union.rec*, %union.rec** @zz_res, align 8
  %2148 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2149 = bitcast %union.rec* %2148 to %struct.word_type*
  %2150 = getelementptr inbounds %struct.word_type, %struct.word_type* %2149, i32 0, i32 0
  %2151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2150, i32 0, i64 1
  %2152 = getelementptr inbounds %struct.LIST, %struct.LIST* %2151, i32 0, i32 1
  store %union.rec* %2147, %union.rec** %2152, align 8
  br label %2153

; <label>:2153                                    ; preds = %2112, %2110
  %2154 = phi %union.rec* [ %2111, %2110 ], [ %2147, %2112 ]
  br label %2155

; <label>:2155                                    ; preds = %2153, %2105
  %2156 = phi %union.rec* [ %2106, %2105 ], [ %2154, %2153 ]
  %2157 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %2157)
  %2158 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %2158, i8** %q, align 8
  %2159 = load i8*, i8** %p, align 8
  %2160 = load i8, i8* %2159, align 1
  %2161 = load i8*, i8** %q, align 8
  %2162 = getelementptr inbounds i8, i8* %2161, i32 1
  store i8* %2162, i8** %q, align 8
  store i8 %2160, i8* %2161, align 1
  store i32 3, i32* %state, align 4
  br label %2163

; <label>:2163                                    ; preds = %2155, %1590
  br label %2578

; <label>:2164                                    ; preds = %130
  %2165 = load i8*, i8** %p, align 8
  %2166 = load i8, i8* %2165, align 1
  %2167 = zext i8 %2166 to i64
  %2168 = load i8*, i8** %uc, align 8
  %2169 = getelementptr inbounds i8, i8* %2168, i64 %2167
  %2170 = load i8, i8* %2169, align 1
  %2171 = zext i8 %2170 to i32
  %2172 = icmp ne i32 %2171, 0
  br i1 %2172, label %2173, label %2366

; <label>:2173                                    ; preds = %2164
  %2174 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2175 = load i8*, i8** %q, align 8
  %2176 = load %union.rec*, %union.rec** %2, align 8
  %2177 = load %union.rec*, %union.rec** %2, align 8
  %2178 = bitcast %union.rec* %2177 to %struct.word_type*
  %2179 = getelementptr inbounds %struct.word_type, %struct.word_type* %2178, i32 0, i32 2
  %2180 = bitcast %union.SECOND_UNION* %2179 to %struct.anon.1*
  %2181 = bitcast %struct.anon.1* %2180 to i32*
  %2182 = load i32, i32* %2181, align 4
  %2183 = and i32 %2182, 4095
  %2184 = call %union.rec* @DoWord(i8* %2174, i8* %2175, %union.rec* %2176, i32 %2183)
  store %union.rec* %2184, %union.rec** %new_y, align 8
  %2185 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2186 = zext i8 %2185 to i32
  store i32 %2186, i32* @zz_size, align 4
  %2187 = sext i32 %2186 to i64
  %2188 = icmp uge i64 %2187, 265
  br i1 %2188, label %2189, label %2192

; <label>:2189                                    ; preds = %2173
  %2190 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2191 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %2190)
  br label %2217

; <label>:2192                                    ; preds = %2173
  %2193 = load i32, i32* @zz_size, align 4
  %2194 = sext i32 %2193 to i64
  %2195 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2194
  %2196 = load %union.rec*, %union.rec** %2195, align 8
  %2197 = icmp eq %union.rec* %2196, null
  br i1 %2197, label %2198, label %2202

; <label>:2198                                    ; preds = %2192
  %2199 = load i32, i32* @zz_size, align 4
  %2200 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2201 = call %union.rec* @GetMemory(i32 %2199, %struct.FILE_POS* %2200)
  store %union.rec* %2201, %union.rec** @zz_hold, align 8
  br label %2216

; <label>:2202                                    ; preds = %2192
  %2203 = load i32, i32* @zz_size, align 4
  %2204 = sext i32 %2203 to i64
  %2205 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2204
  %2206 = load %union.rec*, %union.rec** %2205, align 8
  store %union.rec* %2206, %union.rec** @zz_hold, align 8
  store %union.rec* %2206, %union.rec** @zz_hold, align 8
  %2207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2208 = bitcast %union.rec* %2207 to %struct.word_type*
  %2209 = getelementptr inbounds %struct.word_type, %struct.word_type* %2208, i32 0, i32 0
  %2210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2209, i32 0, i64 0
  %2211 = getelementptr inbounds %struct.LIST, %struct.LIST* %2210, i32 0, i32 0
  %2212 = load %union.rec*, %union.rec** %2211, align 8
  %2213 = load i32, i32* @zz_size, align 4
  %2214 = sext i32 %2213 to i64
  %2215 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2214
  store %union.rec* %2212, %union.rec** %2215, align 8
  br label %2216

; <label>:2216                                    ; preds = %2202, %2198
  br label %2217

; <label>:2217                                    ; preds = %2216, %2189
  %2218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2219 = bitcast %union.rec* %2218 to %struct.word_type*
  %2220 = getelementptr inbounds %struct.word_type, %struct.word_type* %2219, i32 0, i32 1
  %2221 = bitcast %union.FIRST_UNION* %2220 to %struct.anon*
  %2222 = getelementptr inbounds %struct.anon, %struct.anon* %2221, i32 0, i32 0
  store i8 0, i8* %2222, align 1
  %2223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2225 = bitcast %union.rec* %2224 to %struct.word_type*
  %2226 = getelementptr inbounds %struct.word_type, %struct.word_type* %2225, i32 0, i32 0
  %2227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2226, i32 0, i64 1
  %2228 = getelementptr inbounds %struct.LIST, %struct.LIST* %2227, i32 0, i32 1
  store %union.rec* %2223, %union.rec** %2228, align 8
  %2229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2230 = bitcast %union.rec* %2229 to %struct.word_type*
  %2231 = getelementptr inbounds %struct.word_type, %struct.word_type* %2230, i32 0, i32 0
  %2232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2231, i32 0, i64 1
  %2233 = getelementptr inbounds %struct.LIST, %struct.LIST* %2232, i32 0, i32 0
  store %union.rec* %2223, %union.rec** %2233, align 8
  %2234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2235 = bitcast %union.rec* %2234 to %struct.word_type*
  %2236 = getelementptr inbounds %struct.word_type, %struct.word_type* %2235, i32 0, i32 0
  %2237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2236, i32 0, i64 0
  %2238 = getelementptr inbounds %struct.LIST, %struct.LIST* %2237, i32 0, i32 1
  store %union.rec* %2223, %union.rec** %2238, align 8
  %2239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2240 = bitcast %union.rec* %2239 to %struct.word_type*
  %2241 = getelementptr inbounds %struct.word_type, %struct.word_type* %2240, i32 0, i32 0
  %2242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2241, i32 0, i64 0
  %2243 = getelementptr inbounds %struct.LIST, %struct.LIST* %2242, i32 0, i32 0
  store %union.rec* %2223, %union.rec** %2243, align 8
  store %union.rec* %2223, %union.rec** @xx_link, align 8
  %2244 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2244, %union.rec** @zz_res, align 8
  %2245 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %2245, %union.rec** @zz_hold, align 8
  %2246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2247 = icmp eq %union.rec* %2246, null
  br i1 %2247, label %2248, label %2250

; <label>:2248                                    ; preds = %2217
  %2249 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2298

; <label>:2250                                    ; preds = %2217
  %2251 = load %union.rec*, %union.rec** @zz_res, align 8
  %2252 = icmp eq %union.rec* %2251, null
  br i1 %2252, label %2253, label %2255

; <label>:2253                                    ; preds = %2250
  %2254 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2296

; <label>:2255                                    ; preds = %2250
  %2256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2257 = bitcast %union.rec* %2256 to %struct.word_type*
  %2258 = getelementptr inbounds %struct.word_type, %struct.word_type* %2257, i32 0, i32 0
  %2259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2258, i32 0, i64 0
  %2260 = getelementptr inbounds %struct.LIST, %struct.LIST* %2259, i32 0, i32 0
  %2261 = load %union.rec*, %union.rec** %2260, align 8
  store %union.rec* %2261, %union.rec** @zz_tmp, align 8
  %2262 = load %union.rec*, %union.rec** @zz_res, align 8
  %2263 = bitcast %union.rec* %2262 to %struct.word_type*
  %2264 = getelementptr inbounds %struct.word_type, %struct.word_type* %2263, i32 0, i32 0
  %2265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2264, i32 0, i64 0
  %2266 = getelementptr inbounds %struct.LIST, %struct.LIST* %2265, i32 0, i32 0
  %2267 = load %union.rec*, %union.rec** %2266, align 8
  %2268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2269 = bitcast %union.rec* %2268 to %struct.word_type*
  %2270 = getelementptr inbounds %struct.word_type, %struct.word_type* %2269, i32 0, i32 0
  %2271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2270, i32 0, i64 0
  %2272 = getelementptr inbounds %struct.LIST, %struct.LIST* %2271, i32 0, i32 0
  store %union.rec* %2267, %union.rec** %2272, align 8
  %2273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2274 = load %union.rec*, %union.rec** @zz_res, align 8
  %2275 = bitcast %union.rec* %2274 to %struct.word_type*
  %2276 = getelementptr inbounds %struct.word_type, %struct.word_type* %2275, i32 0, i32 0
  %2277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2276, i32 0, i64 0
  %2278 = getelementptr inbounds %struct.LIST, %struct.LIST* %2277, i32 0, i32 0
  %2279 = load %union.rec*, %union.rec** %2278, align 8
  %2280 = bitcast %union.rec* %2279 to %struct.word_type*
  %2281 = getelementptr inbounds %struct.word_type, %struct.word_type* %2280, i32 0, i32 0
  %2282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2281, i32 0, i64 0
  %2283 = getelementptr inbounds %struct.LIST, %struct.LIST* %2282, i32 0, i32 1
  store %union.rec* %2273, %union.rec** %2283, align 8
  %2284 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2285 = load %union.rec*, %union.rec** @zz_res, align 8
  %2286 = bitcast %union.rec* %2285 to %struct.word_type*
  %2287 = getelementptr inbounds %struct.word_type, %struct.word_type* %2286, i32 0, i32 0
  %2288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2287, i32 0, i64 0
  %2289 = getelementptr inbounds %struct.LIST, %struct.LIST* %2288, i32 0, i32 0
  store %union.rec* %2284, %union.rec** %2289, align 8
  %2290 = load %union.rec*, %union.rec** @zz_res, align 8
  %2291 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2292 = bitcast %union.rec* %2291 to %struct.word_type*
  %2293 = getelementptr inbounds %struct.word_type, %struct.word_type* %2292, i32 0, i32 0
  %2294 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2293, i32 0, i64 0
  %2295 = getelementptr inbounds %struct.LIST, %struct.LIST* %2294, i32 0, i32 1
  store %union.rec* %2290, %union.rec** %2295, align 8
  br label %2296

; <label>:2296                                    ; preds = %2255, %2253
  %2297 = phi %union.rec* [ %2254, %2253 ], [ %2290, %2255 ]
  br label %2298

; <label>:2298                                    ; preds = %2296, %2248
  %2299 = phi %union.rec* [ %2249, %2248 ], [ %2297, %2296 ]
  %2300 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2300, %union.rec** @zz_res, align 8
  %2301 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %2301, %union.rec** @zz_hold, align 8
  %2302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2303 = icmp eq %union.rec* %2302, null
  br i1 %2303, label %2304, label %2306

; <label>:2304                                    ; preds = %2298
  %2305 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2354

; <label>:2306                                    ; preds = %2298
  %2307 = load %union.rec*, %union.rec** @zz_res, align 8
  %2308 = icmp eq %union.rec* %2307, null
  br i1 %2308, label %2309, label %2311

; <label>:2309                                    ; preds = %2306
  %2310 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2352

; <label>:2311                                    ; preds = %2306
  %2312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2313 = bitcast %union.rec* %2312 to %struct.word_type*
  %2314 = getelementptr inbounds %struct.word_type, %struct.word_type* %2313, i32 0, i32 0
  %2315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2314, i32 0, i64 1
  %2316 = getelementptr inbounds %struct.LIST, %struct.LIST* %2315, i32 0, i32 0
  %2317 = load %union.rec*, %union.rec** %2316, align 8
  store %union.rec* %2317, %union.rec** @zz_tmp, align 8
  %2318 = load %union.rec*, %union.rec** @zz_res, align 8
  %2319 = bitcast %union.rec* %2318 to %struct.word_type*
  %2320 = getelementptr inbounds %struct.word_type, %struct.word_type* %2319, i32 0, i32 0
  %2321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2320, i32 0, i64 1
  %2322 = getelementptr inbounds %struct.LIST, %struct.LIST* %2321, i32 0, i32 0
  %2323 = load %union.rec*, %union.rec** %2322, align 8
  %2324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2325 = bitcast %union.rec* %2324 to %struct.word_type*
  %2326 = getelementptr inbounds %struct.word_type, %struct.word_type* %2325, i32 0, i32 0
  %2327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2326, i32 0, i64 1
  %2328 = getelementptr inbounds %struct.LIST, %struct.LIST* %2327, i32 0, i32 0
  store %union.rec* %2323, %union.rec** %2328, align 8
  %2329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2330 = load %union.rec*, %union.rec** @zz_res, align 8
  %2331 = bitcast %union.rec* %2330 to %struct.word_type*
  %2332 = getelementptr inbounds %struct.word_type, %struct.word_type* %2331, i32 0, i32 0
  %2333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2332, i32 0, i64 1
  %2334 = getelementptr inbounds %struct.LIST, %struct.LIST* %2333, i32 0, i32 0
  %2335 = load %union.rec*, %union.rec** %2334, align 8
  %2336 = bitcast %union.rec* %2335 to %struct.word_type*
  %2337 = getelementptr inbounds %struct.word_type, %struct.word_type* %2336, i32 0, i32 0
  %2338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2337, i32 0, i64 1
  %2339 = getelementptr inbounds %struct.LIST, %struct.LIST* %2338, i32 0, i32 1
  store %union.rec* %2329, %union.rec** %2339, align 8
  %2340 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2341 = load %union.rec*, %union.rec** @zz_res, align 8
  %2342 = bitcast %union.rec* %2341 to %struct.word_type*
  %2343 = getelementptr inbounds %struct.word_type, %struct.word_type* %2342, i32 0, i32 0
  %2344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2343, i32 0, i64 1
  %2345 = getelementptr inbounds %struct.LIST, %struct.LIST* %2344, i32 0, i32 0
  store %union.rec* %2340, %union.rec** %2345, align 8
  %2346 = load %union.rec*, %union.rec** @zz_res, align 8
  %2347 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2348 = bitcast %union.rec* %2347 to %struct.word_type*
  %2349 = getelementptr inbounds %struct.word_type, %struct.word_type* %2348, i32 0, i32 0
  %2350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2349, i32 0, i64 1
  %2351 = getelementptr inbounds %struct.LIST, %struct.LIST* %2350, i32 0, i32 1
  store %union.rec* %2346, %union.rec** %2351, align 8
  br label %2352

; <label>:2352                                    ; preds = %2311, %2309
  %2353 = phi %union.rec* [ %2310, %2309 ], [ %2346, %2311 ]
  br label %2354

; <label>:2354                                    ; preds = %2352, %2304
  %2355 = phi %union.rec* [ %2305, %2304 ], [ %2353, %2352 ]
  %2356 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %2356)
  %2357 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %2357, i8** %q, align 8
  %2358 = load i8*, i8** %p, align 8
  %2359 = load i8, i8* %2358, align 1
  %2360 = zext i8 %2359 to i64
  %2361 = load i8*, i8** %uc, align 8
  %2362 = getelementptr inbounds i8, i8* %2361, i64 %2360
  %2363 = load i8, i8* %2362, align 1
  %2364 = load i8*, i8** %q, align 8
  %2365 = getelementptr inbounds i8, i8* %2364, i32 1
  store i8* %2365, i8** %q, align 8
  store i8 %2363, i8* %2364, align 1
  store i32 4, i32* %state, align 4
  br label %2371

; <label>:2366                                    ; preds = %2164
  %2367 = load i8*, i8** %p, align 8
  %2368 = load i8, i8* %2367, align 1
  %2369 = load i8*, i8** %q, align 8
  %2370 = getelementptr inbounds i8, i8* %2369, i32 1
  store i8* %2370, i8** %q, align 8
  store i8 %2368, i8* %2369, align 1
  br label %2371

; <label>:2371                                    ; preds = %2366, %2354
  br label %2578

; <label>:2372                                    ; preds = %130
  %2373 = load i8*, i8** %p, align 8
  %2374 = load i8, i8* %2373, align 1
  %2375 = zext i8 %2374 to i64
  %2376 = load i8*, i8** %uc, align 8
  %2377 = getelementptr inbounds i8, i8* %2376, i64 %2375
  %2378 = load i8, i8* %2377, align 1
  %2379 = zext i8 %2378 to i32
  %2380 = icmp ne i32 %2379, 0
  br i1 %2380, label %2381, label %2390

; <label>:2381                                    ; preds = %2372
  %2382 = load i8*, i8** %p, align 8
  %2383 = load i8, i8* %2382, align 1
  %2384 = zext i8 %2383 to i64
  %2385 = load i8*, i8** %uc, align 8
  %2386 = getelementptr inbounds i8, i8* %2385, i64 %2384
  %2387 = load i8, i8* %2386, align 1
  %2388 = load i8*, i8** %q, align 8
  %2389 = getelementptr inbounds i8, i8* %2388, i32 1
  store i8* %2389, i8** %q, align 8
  store i8 %2387, i8* %2388, align 1
  br label %2577

; <label>:2390                                    ; preds = %2372
  %2391 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2392 = load i8*, i8** %q, align 8
  %2393 = load %union.rec*, %union.rec** %2, align 8
  %2394 = load i32, i32* %small_font, align 4
  %2395 = call %union.rec* @DoWord(i8* %2391, i8* %2392, %union.rec* %2393, i32 %2394)
  store %union.rec* %2395, %union.rec** %tmp, align 8
  %2396 = load %union.rec*, %union.rec** %2, align 8
  %2397 = load i32, i32* %vshift, align 4
  %2398 = load %union.rec*, %union.rec** %tmp, align 8
  %2399 = call %union.rec* @DoVShift(%union.rec* %2396, i32 %2397, %union.rec* %2398)
  store %union.rec* %2399, %union.rec** %new_y, align 8
  %2400 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2401 = zext i8 %2400 to i32
  store i32 %2401, i32* @zz_size, align 4
  %2402 = sext i32 %2401 to i64
  %2403 = icmp uge i64 %2402, 265
  br i1 %2403, label %2404, label %2407

; <label>:2404                                    ; preds = %2390
  %2405 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2406 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %2405)
  br label %2432

; <label>:2407                                    ; preds = %2390
  %2408 = load i32, i32* @zz_size, align 4
  %2409 = sext i32 %2408 to i64
  %2410 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2409
  %2411 = load %union.rec*, %union.rec** %2410, align 8
  %2412 = icmp eq %union.rec* %2411, null
  br i1 %2412, label %2413, label %2417

; <label>:2413                                    ; preds = %2407
  %2414 = load i32, i32* @zz_size, align 4
  %2415 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2416 = call %union.rec* @GetMemory(i32 %2414, %struct.FILE_POS* %2415)
  store %union.rec* %2416, %union.rec** @zz_hold, align 8
  br label %2431

; <label>:2417                                    ; preds = %2407
  %2418 = load i32, i32* @zz_size, align 4
  %2419 = sext i32 %2418 to i64
  %2420 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2419
  %2421 = load %union.rec*, %union.rec** %2420, align 8
  store %union.rec* %2421, %union.rec** @zz_hold, align 8
  store %union.rec* %2421, %union.rec** @zz_hold, align 8
  %2422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2423 = bitcast %union.rec* %2422 to %struct.word_type*
  %2424 = getelementptr inbounds %struct.word_type, %struct.word_type* %2423, i32 0, i32 0
  %2425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2424, i32 0, i64 0
  %2426 = getelementptr inbounds %struct.LIST, %struct.LIST* %2425, i32 0, i32 0
  %2427 = load %union.rec*, %union.rec** %2426, align 8
  %2428 = load i32, i32* @zz_size, align 4
  %2429 = sext i32 %2428 to i64
  %2430 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2429
  store %union.rec* %2427, %union.rec** %2430, align 8
  br label %2431

; <label>:2431                                    ; preds = %2417, %2413
  br label %2432

; <label>:2432                                    ; preds = %2431, %2404
  %2433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2434 = bitcast %union.rec* %2433 to %struct.word_type*
  %2435 = getelementptr inbounds %struct.word_type, %struct.word_type* %2434, i32 0, i32 1
  %2436 = bitcast %union.FIRST_UNION* %2435 to %struct.anon*
  %2437 = getelementptr inbounds %struct.anon, %struct.anon* %2436, i32 0, i32 0
  store i8 0, i8* %2437, align 1
  %2438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2439 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2440 = bitcast %union.rec* %2439 to %struct.word_type*
  %2441 = getelementptr inbounds %struct.word_type, %struct.word_type* %2440, i32 0, i32 0
  %2442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2441, i32 0, i64 1
  %2443 = getelementptr inbounds %struct.LIST, %struct.LIST* %2442, i32 0, i32 1
  store %union.rec* %2438, %union.rec** %2443, align 8
  %2444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2445 = bitcast %union.rec* %2444 to %struct.word_type*
  %2446 = getelementptr inbounds %struct.word_type, %struct.word_type* %2445, i32 0, i32 0
  %2447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2446, i32 0, i64 1
  %2448 = getelementptr inbounds %struct.LIST, %struct.LIST* %2447, i32 0, i32 0
  store %union.rec* %2438, %union.rec** %2448, align 8
  %2449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2450 = bitcast %union.rec* %2449 to %struct.word_type*
  %2451 = getelementptr inbounds %struct.word_type, %struct.word_type* %2450, i32 0, i32 0
  %2452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2451, i32 0, i64 0
  %2453 = getelementptr inbounds %struct.LIST, %struct.LIST* %2452, i32 0, i32 1
  store %union.rec* %2438, %union.rec** %2453, align 8
  %2454 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2455 = bitcast %union.rec* %2454 to %struct.word_type*
  %2456 = getelementptr inbounds %struct.word_type, %struct.word_type* %2455, i32 0, i32 0
  %2457 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2456, i32 0, i64 0
  %2458 = getelementptr inbounds %struct.LIST, %struct.LIST* %2457, i32 0, i32 0
  store %union.rec* %2438, %union.rec** %2458, align 8
  store %union.rec* %2438, %union.rec** @xx_link, align 8
  %2459 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2459, %union.rec** @zz_res, align 8
  %2460 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %2460, %union.rec** @zz_hold, align 8
  %2461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2462 = icmp eq %union.rec* %2461, null
  br i1 %2462, label %2463, label %2465

; <label>:2463                                    ; preds = %2432
  %2464 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2513

; <label>:2465                                    ; preds = %2432
  %2466 = load %union.rec*, %union.rec** @zz_res, align 8
  %2467 = icmp eq %union.rec* %2466, null
  br i1 %2467, label %2468, label %2470

; <label>:2468                                    ; preds = %2465
  %2469 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2511

; <label>:2470                                    ; preds = %2465
  %2471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2472 = bitcast %union.rec* %2471 to %struct.word_type*
  %2473 = getelementptr inbounds %struct.word_type, %struct.word_type* %2472, i32 0, i32 0
  %2474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2473, i32 0, i64 0
  %2475 = getelementptr inbounds %struct.LIST, %struct.LIST* %2474, i32 0, i32 0
  %2476 = load %union.rec*, %union.rec** %2475, align 8
  store %union.rec* %2476, %union.rec** @zz_tmp, align 8
  %2477 = load %union.rec*, %union.rec** @zz_res, align 8
  %2478 = bitcast %union.rec* %2477 to %struct.word_type*
  %2479 = getelementptr inbounds %struct.word_type, %struct.word_type* %2478, i32 0, i32 0
  %2480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2479, i32 0, i64 0
  %2481 = getelementptr inbounds %struct.LIST, %struct.LIST* %2480, i32 0, i32 0
  %2482 = load %union.rec*, %union.rec** %2481, align 8
  %2483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2484 = bitcast %union.rec* %2483 to %struct.word_type*
  %2485 = getelementptr inbounds %struct.word_type, %struct.word_type* %2484, i32 0, i32 0
  %2486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2485, i32 0, i64 0
  %2487 = getelementptr inbounds %struct.LIST, %struct.LIST* %2486, i32 0, i32 0
  store %union.rec* %2482, %union.rec** %2487, align 8
  %2488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2489 = load %union.rec*, %union.rec** @zz_res, align 8
  %2490 = bitcast %union.rec* %2489 to %struct.word_type*
  %2491 = getelementptr inbounds %struct.word_type, %struct.word_type* %2490, i32 0, i32 0
  %2492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2491, i32 0, i64 0
  %2493 = getelementptr inbounds %struct.LIST, %struct.LIST* %2492, i32 0, i32 0
  %2494 = load %union.rec*, %union.rec** %2493, align 8
  %2495 = bitcast %union.rec* %2494 to %struct.word_type*
  %2496 = getelementptr inbounds %struct.word_type, %struct.word_type* %2495, i32 0, i32 0
  %2497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2496, i32 0, i64 0
  %2498 = getelementptr inbounds %struct.LIST, %struct.LIST* %2497, i32 0, i32 1
  store %union.rec* %2488, %union.rec** %2498, align 8
  %2499 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2500 = load %union.rec*, %union.rec** @zz_res, align 8
  %2501 = bitcast %union.rec* %2500 to %struct.word_type*
  %2502 = getelementptr inbounds %struct.word_type, %struct.word_type* %2501, i32 0, i32 0
  %2503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2502, i32 0, i64 0
  %2504 = getelementptr inbounds %struct.LIST, %struct.LIST* %2503, i32 0, i32 0
  store %union.rec* %2499, %union.rec** %2504, align 8
  %2505 = load %union.rec*, %union.rec** @zz_res, align 8
  %2506 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2507 = bitcast %union.rec* %2506 to %struct.word_type*
  %2508 = getelementptr inbounds %struct.word_type, %struct.word_type* %2507, i32 0, i32 0
  %2509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2508, i32 0, i64 0
  %2510 = getelementptr inbounds %struct.LIST, %struct.LIST* %2509, i32 0, i32 1
  store %union.rec* %2505, %union.rec** %2510, align 8
  br label %2511

; <label>:2511                                    ; preds = %2470, %2468
  %2512 = phi %union.rec* [ %2469, %2468 ], [ %2505, %2470 ]
  br label %2513

; <label>:2513                                    ; preds = %2511, %2463
  %2514 = phi %union.rec* [ %2464, %2463 ], [ %2512, %2511 ]
  %2515 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2515, %union.rec** @zz_res, align 8
  %2516 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %2516, %union.rec** @zz_hold, align 8
  %2517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2518 = icmp eq %union.rec* %2517, null
  br i1 %2518, label %2519, label %2521

; <label>:2519                                    ; preds = %2513
  %2520 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2569

; <label>:2521                                    ; preds = %2513
  %2522 = load %union.rec*, %union.rec** @zz_res, align 8
  %2523 = icmp eq %union.rec* %2522, null
  br i1 %2523, label %2524, label %2526

; <label>:2524                                    ; preds = %2521
  %2525 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2567

; <label>:2526                                    ; preds = %2521
  %2527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2528 = bitcast %union.rec* %2527 to %struct.word_type*
  %2529 = getelementptr inbounds %struct.word_type, %struct.word_type* %2528, i32 0, i32 0
  %2530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2529, i32 0, i64 1
  %2531 = getelementptr inbounds %struct.LIST, %struct.LIST* %2530, i32 0, i32 0
  %2532 = load %union.rec*, %union.rec** %2531, align 8
  store %union.rec* %2532, %union.rec** @zz_tmp, align 8
  %2533 = load %union.rec*, %union.rec** @zz_res, align 8
  %2534 = bitcast %union.rec* %2533 to %struct.word_type*
  %2535 = getelementptr inbounds %struct.word_type, %struct.word_type* %2534, i32 0, i32 0
  %2536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2535, i32 0, i64 1
  %2537 = getelementptr inbounds %struct.LIST, %struct.LIST* %2536, i32 0, i32 0
  %2538 = load %union.rec*, %union.rec** %2537, align 8
  %2539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2540 = bitcast %union.rec* %2539 to %struct.word_type*
  %2541 = getelementptr inbounds %struct.word_type, %struct.word_type* %2540, i32 0, i32 0
  %2542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2541, i32 0, i64 1
  %2543 = getelementptr inbounds %struct.LIST, %struct.LIST* %2542, i32 0, i32 0
  store %union.rec* %2538, %union.rec** %2543, align 8
  %2544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2545 = load %union.rec*, %union.rec** @zz_res, align 8
  %2546 = bitcast %union.rec* %2545 to %struct.word_type*
  %2547 = getelementptr inbounds %struct.word_type, %struct.word_type* %2546, i32 0, i32 0
  %2548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2547, i32 0, i64 1
  %2549 = getelementptr inbounds %struct.LIST, %struct.LIST* %2548, i32 0, i32 0
  %2550 = load %union.rec*, %union.rec** %2549, align 8
  %2551 = bitcast %union.rec* %2550 to %struct.word_type*
  %2552 = getelementptr inbounds %struct.word_type, %struct.word_type* %2551, i32 0, i32 0
  %2553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2552, i32 0, i64 1
  %2554 = getelementptr inbounds %struct.LIST, %struct.LIST* %2553, i32 0, i32 1
  store %union.rec* %2544, %union.rec** %2554, align 8
  %2555 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2556 = load %union.rec*, %union.rec** @zz_res, align 8
  %2557 = bitcast %union.rec* %2556 to %struct.word_type*
  %2558 = getelementptr inbounds %struct.word_type, %struct.word_type* %2557, i32 0, i32 0
  %2559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2558, i32 0, i64 1
  %2560 = getelementptr inbounds %struct.LIST, %struct.LIST* %2559, i32 0, i32 0
  store %union.rec* %2555, %union.rec** %2560, align 8
  %2561 = load %union.rec*, %union.rec** @zz_res, align 8
  %2562 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2563 = bitcast %union.rec* %2562 to %struct.word_type*
  %2564 = getelementptr inbounds %struct.word_type, %struct.word_type* %2563, i32 0, i32 0
  %2565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2564, i32 0, i64 1
  %2566 = getelementptr inbounds %struct.LIST, %struct.LIST* %2565, i32 0, i32 1
  store %union.rec* %2561, %union.rec** %2566, align 8
  br label %2567

; <label>:2567                                    ; preds = %2526, %2524
  %2568 = phi %union.rec* [ %2525, %2524 ], [ %2561, %2526 ]
  br label %2569

; <label>:2569                                    ; preds = %2567, %2519
  %2570 = phi %union.rec* [ %2520, %2519 ], [ %2568, %2567 ]
  %2571 = load %union.rec*, %union.rec** %new_acat, align 8
  call void @DoAddGap(%union.rec* %2571)
  %2572 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %2572, i8** %q, align 8
  %2573 = load i8*, i8** %p, align 8
  %2574 = load i8, i8* %2573, align 1
  %2575 = load i8*, i8** %q, align 8
  %2576 = getelementptr inbounds i8, i8* %2575, i32 1
  store i8* %2576, i8** %q, align 8
  store i8 %2574, i8* %2575, align 1
  store i32 3, i32* %state, align 4
  br label %2577

; <label>:2577                                    ; preds = %2569, %2381
  br label %2578

; <label>:2578                                    ; preds = %130, %2577, %2371, %2163, %1580, %575
  br label %2579

; <label>:2579                                    ; preds = %2578
  %2580 = load i8*, i8** %p, align 8
  %2581 = getelementptr inbounds i8, i8* %2580, i32 1
  store i8* %2581, i8** %p, align 8
  br label %125

; <label>:2582                                    ; preds = %125
  %2583 = load i32, i32* %state, align 4
  switch i32 %2583, label %3448 [
    i32 0, label %2584
    i32 1, label %2584
    i32 2, label %2585
    i32 3, label %2758
    i32 4, label %3104
  ]

; <label>:2584                                    ; preds = %2582, %2582
  br label %3448

; <label>:2585                                    ; preds = %2582
  %2586 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2587 = load i8*, i8** %q, align 8
  %2588 = load %union.rec*, %union.rec** %2, align 8
  %2589 = load i32, i32* %small_font, align 4
  %2590 = call %union.rec* @DoWord(i8* %2586, i8* %2587, %union.rec* %2588, i32 %2589)
  store %union.rec* %2590, %union.rec** %tmp, align 8
  %2591 = load %union.rec*, %union.rec** %2, align 8
  %2592 = load i32, i32* %vshift, align 4
  %2593 = load %union.rec*, %union.rec** %tmp, align 8
  %2594 = call %union.rec* @DoVShift(%union.rec* %2591, i32 %2592, %union.rec* %2593)
  store %union.rec* %2594, %union.rec** %new_x, align 8
  %2595 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %2595, %union.rec** @zz_hold, align 8
  %2596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2597 = bitcast %union.rec* %2596 to %struct.word_type*
  %2598 = getelementptr inbounds %struct.word_type, %struct.word_type* %2597, i32 0, i32 0
  %2599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2598, i32 0, i64 1
  %2600 = getelementptr inbounds %struct.LIST, %struct.LIST* %2599, i32 0, i32 1
  %2601 = load %union.rec*, %union.rec** %2600, align 8
  %2602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2603 = icmp eq %union.rec* %2601, %2602
  br i1 %2603, label %2604, label %2605

; <label>:2604                                    ; preds = %2585
  br label %2646

; <label>:2605                                    ; preds = %2585
  %2606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2607 = bitcast %union.rec* %2606 to %struct.word_type*
  %2608 = getelementptr inbounds %struct.word_type, %struct.word_type* %2607, i32 0, i32 0
  %2609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2608, i32 0, i64 1
  %2610 = getelementptr inbounds %struct.LIST, %struct.LIST* %2609, i32 0, i32 1
  %2611 = load %union.rec*, %union.rec** %2610, align 8
  store %union.rec* %2611, %union.rec** @zz_res, align 8
  %2612 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2613 = bitcast %union.rec* %2612 to %struct.word_type*
  %2614 = getelementptr inbounds %struct.word_type, %struct.word_type* %2613, i32 0, i32 0
  %2615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2614, i32 0, i64 1
  %2616 = getelementptr inbounds %struct.LIST, %struct.LIST* %2615, i32 0, i32 0
  %2617 = load %union.rec*, %union.rec** %2616, align 8
  %2618 = load %union.rec*, %union.rec** @zz_res, align 8
  %2619 = bitcast %union.rec* %2618 to %struct.word_type*
  %2620 = getelementptr inbounds %struct.word_type, %struct.word_type* %2619, i32 0, i32 0
  %2621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2620, i32 0, i64 1
  %2622 = getelementptr inbounds %struct.LIST, %struct.LIST* %2621, i32 0, i32 0
  store %union.rec* %2617, %union.rec** %2622, align 8
  %2623 = load %union.rec*, %union.rec** @zz_res, align 8
  %2624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2625 = bitcast %union.rec* %2624 to %struct.word_type*
  %2626 = getelementptr inbounds %struct.word_type, %struct.word_type* %2625, i32 0, i32 0
  %2627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2626, i32 0, i64 1
  %2628 = getelementptr inbounds %struct.LIST, %struct.LIST* %2627, i32 0, i32 0
  %2629 = load %union.rec*, %union.rec** %2628, align 8
  %2630 = bitcast %union.rec* %2629 to %struct.word_type*
  %2631 = getelementptr inbounds %struct.word_type, %struct.word_type* %2630, i32 0, i32 0
  %2632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2631, i32 0, i64 1
  %2633 = getelementptr inbounds %struct.LIST, %struct.LIST* %2632, i32 0, i32 1
  store %union.rec* %2623, %union.rec** %2633, align 8
  %2634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2636 = bitcast %union.rec* %2635 to %struct.word_type*
  %2637 = getelementptr inbounds %struct.word_type, %struct.word_type* %2636, i32 0, i32 0
  %2638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2637, i32 0, i64 1
  %2639 = getelementptr inbounds %struct.LIST, %struct.LIST* %2638, i32 0, i32 1
  store %union.rec* %2634, %union.rec** %2639, align 8
  %2640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2641 = bitcast %union.rec* %2640 to %struct.word_type*
  %2642 = getelementptr inbounds %struct.word_type, %struct.word_type* %2641, i32 0, i32 0
  %2643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2642, i32 0, i64 1
  %2644 = getelementptr inbounds %struct.LIST, %struct.LIST* %2643, i32 0, i32 0
  store %union.rec* %2634, %union.rec** %2644, align 8
  %2645 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2646

; <label>:2646                                    ; preds = %2605, %2604
  %2647 = phi %union.rec* [ null, %2604 ], [ %2645, %2605 ]
  store %union.rec* %2647, %union.rec** @xx_tmp, align 8
  %2648 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %2648, %union.rec** @zz_res, align 8
  %2649 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %2649, %union.rec** @zz_hold, align 8
  %2650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2651 = icmp eq %union.rec* %2650, null
  br i1 %2651, label %2652, label %2654

; <label>:2652                                    ; preds = %2646
  %2653 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2702

; <label>:2654                                    ; preds = %2646
  %2655 = load %union.rec*, %union.rec** @zz_res, align 8
  %2656 = icmp eq %union.rec* %2655, null
  br i1 %2656, label %2657, label %2659

; <label>:2657                                    ; preds = %2654
  %2658 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2700

; <label>:2659                                    ; preds = %2654
  %2660 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2661 = bitcast %union.rec* %2660 to %struct.word_type*
  %2662 = getelementptr inbounds %struct.word_type, %struct.word_type* %2661, i32 0, i32 0
  %2663 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2662, i32 0, i64 1
  %2664 = getelementptr inbounds %struct.LIST, %struct.LIST* %2663, i32 0, i32 0
  %2665 = load %union.rec*, %union.rec** %2664, align 8
  store %union.rec* %2665, %union.rec** @zz_tmp, align 8
  %2666 = load %union.rec*, %union.rec** @zz_res, align 8
  %2667 = bitcast %union.rec* %2666 to %struct.word_type*
  %2668 = getelementptr inbounds %struct.word_type, %struct.word_type* %2667, i32 0, i32 0
  %2669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2668, i32 0, i64 1
  %2670 = getelementptr inbounds %struct.LIST, %struct.LIST* %2669, i32 0, i32 0
  %2671 = load %union.rec*, %union.rec** %2670, align 8
  %2672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2673 = bitcast %union.rec* %2672 to %struct.word_type*
  %2674 = getelementptr inbounds %struct.word_type, %struct.word_type* %2673, i32 0, i32 0
  %2675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2674, i32 0, i64 1
  %2676 = getelementptr inbounds %struct.LIST, %struct.LIST* %2675, i32 0, i32 0
  store %union.rec* %2671, %union.rec** %2676, align 8
  %2677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2678 = load %union.rec*, %union.rec** @zz_res, align 8
  %2679 = bitcast %union.rec* %2678 to %struct.word_type*
  %2680 = getelementptr inbounds %struct.word_type, %struct.word_type* %2679, i32 0, i32 0
  %2681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2680, i32 0, i64 1
  %2682 = getelementptr inbounds %struct.LIST, %struct.LIST* %2681, i32 0, i32 0
  %2683 = load %union.rec*, %union.rec** %2682, align 8
  %2684 = bitcast %union.rec* %2683 to %struct.word_type*
  %2685 = getelementptr inbounds %struct.word_type, %struct.word_type* %2684, i32 0, i32 0
  %2686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2685, i32 0, i64 1
  %2687 = getelementptr inbounds %struct.LIST, %struct.LIST* %2686, i32 0, i32 1
  store %union.rec* %2677, %union.rec** %2687, align 8
  %2688 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2689 = load %union.rec*, %union.rec** @zz_res, align 8
  %2690 = bitcast %union.rec* %2689 to %struct.word_type*
  %2691 = getelementptr inbounds %struct.word_type, %struct.word_type* %2690, i32 0, i32 0
  %2692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2691, i32 0, i64 1
  %2693 = getelementptr inbounds %struct.LIST, %struct.LIST* %2692, i32 0, i32 0
  store %union.rec* %2688, %union.rec** %2693, align 8
  %2694 = load %union.rec*, %union.rec** @zz_res, align 8
  %2695 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2696 = bitcast %union.rec* %2695 to %struct.word_type*
  %2697 = getelementptr inbounds %struct.word_type, %struct.word_type* %2696, i32 0, i32 0
  %2698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2697, i32 0, i64 1
  %2699 = getelementptr inbounds %struct.LIST, %struct.LIST* %2698, i32 0, i32 1
  store %union.rec* %2694, %union.rec** %2699, align 8
  br label %2700

; <label>:2700                                    ; preds = %2659, %2657
  %2701 = phi %union.rec* [ %2658, %2657 ], [ %2694, %2659 ]
  br label %2702

; <label>:2702                                    ; preds = %2700, %2652
  %2703 = phi %union.rec* [ %2653, %2652 ], [ %2701, %2700 ]
  %2704 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %2704, %union.rec** @zz_hold, align 8
  %2705 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2705, %union.rec** @zz_hold, align 8
  %2706 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2707 = bitcast %union.rec* %2706 to %struct.word_type*
  %2708 = getelementptr inbounds %struct.word_type, %struct.word_type* %2707, i32 0, i32 1
  %2709 = bitcast %union.FIRST_UNION* %2708 to %struct.anon*
  %2710 = getelementptr inbounds %struct.anon, %struct.anon* %2709, i32 0, i32 0
  %2711 = load i8, i8* %2710, align 1
  %2712 = zext i8 %2711 to i32
  %2713 = icmp eq i32 %2712, 11
  br i1 %2713, label %2723, label %2714

; <label>:2714                                    ; preds = %2702
  %2715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2716 = bitcast %union.rec* %2715 to %struct.word_type*
  %2717 = getelementptr inbounds %struct.word_type, %struct.word_type* %2716, i32 0, i32 1
  %2718 = bitcast %union.FIRST_UNION* %2717 to %struct.anon*
  %2719 = getelementptr inbounds %struct.anon, %struct.anon* %2718, i32 0, i32 0
  %2720 = load i8, i8* %2719, align 1
  %2721 = zext i8 %2720 to i32
  %2722 = icmp eq i32 %2721, 12
  br i1 %2722, label %2723, label %2731

; <label>:2723                                    ; preds = %2714, %2702
  %2724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2725 = bitcast %union.rec* %2724 to %struct.word_type*
  %2726 = getelementptr inbounds %struct.word_type, %struct.word_type* %2725, i32 0, i32 1
  %2727 = bitcast %union.FIRST_UNION* %2726 to %struct.anon*
  %2728 = getelementptr inbounds %struct.anon, %struct.anon* %2727, i32 0, i32 1
  %2729 = load i8, i8* %2728, align 1
  %2730 = zext i8 %2729 to i32
  br label %2742

; <label>:2731                                    ; preds = %2714
  %2732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2733 = bitcast %union.rec* %2732 to %struct.word_type*
  %2734 = getelementptr inbounds %struct.word_type, %struct.word_type* %2733, i32 0, i32 1
  %2735 = bitcast %union.FIRST_UNION* %2734 to %struct.anon*
  %2736 = getelementptr inbounds %struct.anon, %struct.anon* %2735, i32 0, i32 0
  %2737 = load i8, i8* %2736, align 1
  %2738 = zext i8 %2737 to i64
  %2739 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2738
  %2740 = load i8, i8* %2739, align 1
  %2741 = zext i8 %2740 to i32
  br label %2742

; <label>:2742                                    ; preds = %2731, %2723
  %2743 = phi i32 [ %2730, %2723 ], [ %2741, %2731 ]
  store i32 %2743, i32* @zz_size, align 4
  %2744 = load i32, i32* @zz_size, align 4
  %2745 = sext i32 %2744 to i64
  %2746 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2745
  %2747 = load %union.rec*, %union.rec** %2746, align 8
  %2748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2749 = bitcast %union.rec* %2748 to %struct.word_type*
  %2750 = getelementptr inbounds %struct.word_type, %struct.word_type* %2749, i32 0, i32 0
  %2751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2750, i32 0, i64 0
  %2752 = getelementptr inbounds %struct.LIST, %struct.LIST* %2751, i32 0, i32 0
  store %union.rec* %2747, %union.rec** %2752, align 8
  %2753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2754 = load i32, i32* @zz_size, align 4
  %2755 = sext i32 %2754 to i64
  %2756 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2755
  store %union.rec* %2753, %union.rec** %2756, align 8
  %2757 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %2757, %union.rec** %2, align 8
  br label %3448

; <label>:2758                                    ; preds = %2582
  %2759 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %2760 = load i8*, i8** %q, align 8
  %2761 = load %union.rec*, %union.rec** %2, align 8
  %2762 = load %union.rec*, %union.rec** %2, align 8
  %2763 = bitcast %union.rec* %2762 to %struct.word_type*
  %2764 = getelementptr inbounds %struct.word_type, %struct.word_type* %2763, i32 0, i32 2
  %2765 = bitcast %union.SECOND_UNION* %2764 to %struct.anon.1*
  %2766 = bitcast %struct.anon.1* %2765 to i32*
  %2767 = load i32, i32* %2766, align 4
  %2768 = and i32 %2767, 4095
  %2769 = call %union.rec* @DoWord(i8* %2759, i8* %2760, %union.rec* %2761, i32 %2768)
  store %union.rec* %2769, %union.rec** %new_y, align 8
  %2770 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2771 = zext i8 %2770 to i32
  store i32 %2771, i32* @zz_size, align 4
  %2772 = sext i32 %2771 to i64
  %2773 = icmp uge i64 %2772, 265
  br i1 %2773, label %2774, label %2777

; <label>:2774                                    ; preds = %2758
  %2775 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2776 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %2775)
  br label %2802

; <label>:2777                                    ; preds = %2758
  %2778 = load i32, i32* @zz_size, align 4
  %2779 = sext i32 %2778 to i64
  %2780 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2779
  %2781 = load %union.rec*, %union.rec** %2780, align 8
  %2782 = icmp eq %union.rec* %2781, null
  br i1 %2782, label %2783, label %2787

; <label>:2783                                    ; preds = %2777
  %2784 = load i32, i32* @zz_size, align 4
  %2785 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2786 = call %union.rec* @GetMemory(i32 %2784, %struct.FILE_POS* %2785)
  store %union.rec* %2786, %union.rec** @zz_hold, align 8
  br label %2801

; <label>:2787                                    ; preds = %2777
  %2788 = load i32, i32* @zz_size, align 4
  %2789 = sext i32 %2788 to i64
  %2790 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2789
  %2791 = load %union.rec*, %union.rec** %2790, align 8
  store %union.rec* %2791, %union.rec** @zz_hold, align 8
  store %union.rec* %2791, %union.rec** @zz_hold, align 8
  %2792 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2793 = bitcast %union.rec* %2792 to %struct.word_type*
  %2794 = getelementptr inbounds %struct.word_type, %struct.word_type* %2793, i32 0, i32 0
  %2795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2794, i32 0, i64 0
  %2796 = getelementptr inbounds %struct.LIST, %struct.LIST* %2795, i32 0, i32 0
  %2797 = load %union.rec*, %union.rec** %2796, align 8
  %2798 = load i32, i32* @zz_size, align 4
  %2799 = sext i32 %2798 to i64
  %2800 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2799
  store %union.rec* %2797, %union.rec** %2800, align 8
  br label %2801

; <label>:2801                                    ; preds = %2787, %2783
  br label %2802

; <label>:2802                                    ; preds = %2801, %2774
  %2803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2804 = bitcast %union.rec* %2803 to %struct.word_type*
  %2805 = getelementptr inbounds %struct.word_type, %struct.word_type* %2804, i32 0, i32 1
  %2806 = bitcast %union.FIRST_UNION* %2805 to %struct.anon*
  %2807 = getelementptr inbounds %struct.anon, %struct.anon* %2806, i32 0, i32 0
  store i8 0, i8* %2807, align 1
  %2808 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2809 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2810 = bitcast %union.rec* %2809 to %struct.word_type*
  %2811 = getelementptr inbounds %struct.word_type, %struct.word_type* %2810, i32 0, i32 0
  %2812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2811, i32 0, i64 1
  %2813 = getelementptr inbounds %struct.LIST, %struct.LIST* %2812, i32 0, i32 1
  store %union.rec* %2808, %union.rec** %2813, align 8
  %2814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2815 = bitcast %union.rec* %2814 to %struct.word_type*
  %2816 = getelementptr inbounds %struct.word_type, %struct.word_type* %2815, i32 0, i32 0
  %2817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2816, i32 0, i64 1
  %2818 = getelementptr inbounds %struct.LIST, %struct.LIST* %2817, i32 0, i32 0
  store %union.rec* %2808, %union.rec** %2818, align 8
  %2819 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2820 = bitcast %union.rec* %2819 to %struct.word_type*
  %2821 = getelementptr inbounds %struct.word_type, %struct.word_type* %2820, i32 0, i32 0
  %2822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2821, i32 0, i64 0
  %2823 = getelementptr inbounds %struct.LIST, %struct.LIST* %2822, i32 0, i32 1
  store %union.rec* %2808, %union.rec** %2823, align 8
  %2824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2825 = bitcast %union.rec* %2824 to %struct.word_type*
  %2826 = getelementptr inbounds %struct.word_type, %struct.word_type* %2825, i32 0, i32 0
  %2827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2826, i32 0, i64 0
  %2828 = getelementptr inbounds %struct.LIST, %struct.LIST* %2827, i32 0, i32 0
  store %union.rec* %2808, %union.rec** %2828, align 8
  store %union.rec* %2808, %union.rec** @xx_link, align 8
  %2829 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2829, %union.rec** @zz_res, align 8
  %2830 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %2830, %union.rec** @zz_hold, align 8
  %2831 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2832 = icmp eq %union.rec* %2831, null
  br i1 %2832, label %2833, label %2835

; <label>:2833                                    ; preds = %2802
  %2834 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2883

; <label>:2835                                    ; preds = %2802
  %2836 = load %union.rec*, %union.rec** @zz_res, align 8
  %2837 = icmp eq %union.rec* %2836, null
  br i1 %2837, label %2838, label %2840

; <label>:2838                                    ; preds = %2835
  %2839 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2881

; <label>:2840                                    ; preds = %2835
  %2841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2842 = bitcast %union.rec* %2841 to %struct.word_type*
  %2843 = getelementptr inbounds %struct.word_type, %struct.word_type* %2842, i32 0, i32 0
  %2844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2843, i32 0, i64 0
  %2845 = getelementptr inbounds %struct.LIST, %struct.LIST* %2844, i32 0, i32 0
  %2846 = load %union.rec*, %union.rec** %2845, align 8
  store %union.rec* %2846, %union.rec** @zz_tmp, align 8
  %2847 = load %union.rec*, %union.rec** @zz_res, align 8
  %2848 = bitcast %union.rec* %2847 to %struct.word_type*
  %2849 = getelementptr inbounds %struct.word_type, %struct.word_type* %2848, i32 0, i32 0
  %2850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2849, i32 0, i64 0
  %2851 = getelementptr inbounds %struct.LIST, %struct.LIST* %2850, i32 0, i32 0
  %2852 = load %union.rec*, %union.rec** %2851, align 8
  %2853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2854 = bitcast %union.rec* %2853 to %struct.word_type*
  %2855 = getelementptr inbounds %struct.word_type, %struct.word_type* %2854, i32 0, i32 0
  %2856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2855, i32 0, i64 0
  %2857 = getelementptr inbounds %struct.LIST, %struct.LIST* %2856, i32 0, i32 0
  store %union.rec* %2852, %union.rec** %2857, align 8
  %2858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2859 = load %union.rec*, %union.rec** @zz_res, align 8
  %2860 = bitcast %union.rec* %2859 to %struct.word_type*
  %2861 = getelementptr inbounds %struct.word_type, %struct.word_type* %2860, i32 0, i32 0
  %2862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2861, i32 0, i64 0
  %2863 = getelementptr inbounds %struct.LIST, %struct.LIST* %2862, i32 0, i32 0
  %2864 = load %union.rec*, %union.rec** %2863, align 8
  %2865 = bitcast %union.rec* %2864 to %struct.word_type*
  %2866 = getelementptr inbounds %struct.word_type, %struct.word_type* %2865, i32 0, i32 0
  %2867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2866, i32 0, i64 0
  %2868 = getelementptr inbounds %struct.LIST, %struct.LIST* %2867, i32 0, i32 1
  store %union.rec* %2858, %union.rec** %2868, align 8
  %2869 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2870 = load %union.rec*, %union.rec** @zz_res, align 8
  %2871 = bitcast %union.rec* %2870 to %struct.word_type*
  %2872 = getelementptr inbounds %struct.word_type, %struct.word_type* %2871, i32 0, i32 0
  %2873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2872, i32 0, i64 0
  %2874 = getelementptr inbounds %struct.LIST, %struct.LIST* %2873, i32 0, i32 0
  store %union.rec* %2869, %union.rec** %2874, align 8
  %2875 = load %union.rec*, %union.rec** @zz_res, align 8
  %2876 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2877 = bitcast %union.rec* %2876 to %struct.word_type*
  %2878 = getelementptr inbounds %struct.word_type, %struct.word_type* %2877, i32 0, i32 0
  %2879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2878, i32 0, i64 0
  %2880 = getelementptr inbounds %struct.LIST, %struct.LIST* %2879, i32 0, i32 1
  store %union.rec* %2875, %union.rec** %2880, align 8
  br label %2881

; <label>:2881                                    ; preds = %2840, %2838
  %2882 = phi %union.rec* [ %2839, %2838 ], [ %2875, %2840 ]
  br label %2883

; <label>:2883                                    ; preds = %2881, %2833
  %2884 = phi %union.rec* [ %2834, %2833 ], [ %2882, %2881 ]
  %2885 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2885, %union.rec** @zz_res, align 8
  %2886 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %2886, %union.rec** @zz_hold, align 8
  %2887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2888 = icmp eq %union.rec* %2887, null
  br i1 %2888, label %2889, label %2891

; <label>:2889                                    ; preds = %2883
  %2890 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2939

; <label>:2891                                    ; preds = %2883
  %2892 = load %union.rec*, %union.rec** @zz_res, align 8
  %2893 = icmp eq %union.rec* %2892, null
  br i1 %2893, label %2894, label %2896

; <label>:2894                                    ; preds = %2891
  %2895 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2937

; <label>:2896                                    ; preds = %2891
  %2897 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2898 = bitcast %union.rec* %2897 to %struct.word_type*
  %2899 = getelementptr inbounds %struct.word_type, %struct.word_type* %2898, i32 0, i32 0
  %2900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2899, i32 0, i64 1
  %2901 = getelementptr inbounds %struct.LIST, %struct.LIST* %2900, i32 0, i32 0
  %2902 = load %union.rec*, %union.rec** %2901, align 8
  store %union.rec* %2902, %union.rec** @zz_tmp, align 8
  %2903 = load %union.rec*, %union.rec** @zz_res, align 8
  %2904 = bitcast %union.rec* %2903 to %struct.word_type*
  %2905 = getelementptr inbounds %struct.word_type, %struct.word_type* %2904, i32 0, i32 0
  %2906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2905, i32 0, i64 1
  %2907 = getelementptr inbounds %struct.LIST, %struct.LIST* %2906, i32 0, i32 0
  %2908 = load %union.rec*, %union.rec** %2907, align 8
  %2909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2910 = bitcast %union.rec* %2909 to %struct.word_type*
  %2911 = getelementptr inbounds %struct.word_type, %struct.word_type* %2910, i32 0, i32 0
  %2912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2911, i32 0, i64 1
  %2913 = getelementptr inbounds %struct.LIST, %struct.LIST* %2912, i32 0, i32 0
  store %union.rec* %2908, %union.rec** %2913, align 8
  %2914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2915 = load %union.rec*, %union.rec** @zz_res, align 8
  %2916 = bitcast %union.rec* %2915 to %struct.word_type*
  %2917 = getelementptr inbounds %struct.word_type, %struct.word_type* %2916, i32 0, i32 0
  %2918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2917, i32 0, i64 1
  %2919 = getelementptr inbounds %struct.LIST, %struct.LIST* %2918, i32 0, i32 0
  %2920 = load %union.rec*, %union.rec** %2919, align 8
  %2921 = bitcast %union.rec* %2920 to %struct.word_type*
  %2922 = getelementptr inbounds %struct.word_type, %struct.word_type* %2921, i32 0, i32 0
  %2923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2922, i32 0, i64 1
  %2924 = getelementptr inbounds %struct.LIST, %struct.LIST* %2923, i32 0, i32 1
  store %union.rec* %2914, %union.rec** %2924, align 8
  %2925 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2926 = load %union.rec*, %union.rec** @zz_res, align 8
  %2927 = bitcast %union.rec* %2926 to %struct.word_type*
  %2928 = getelementptr inbounds %struct.word_type, %struct.word_type* %2927, i32 0, i32 0
  %2929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2928, i32 0, i64 1
  %2930 = getelementptr inbounds %struct.LIST, %struct.LIST* %2929, i32 0, i32 0
  store %union.rec* %2925, %union.rec** %2930, align 8
  %2931 = load %union.rec*, %union.rec** @zz_res, align 8
  %2932 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2933 = bitcast %union.rec* %2932 to %struct.word_type*
  %2934 = getelementptr inbounds %struct.word_type, %struct.word_type* %2933, i32 0, i32 0
  %2935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2934, i32 0, i64 1
  %2936 = getelementptr inbounds %struct.LIST, %struct.LIST* %2935, i32 0, i32 1
  store %union.rec* %2931, %union.rec** %2936, align 8
  br label %2937

; <label>:2937                                    ; preds = %2896, %2894
  %2938 = phi %union.rec* [ %2895, %2894 ], [ %2931, %2896 ]
  br label %2939

; <label>:2939                                    ; preds = %2937, %2889
  %2940 = phi %union.rec* [ %2890, %2889 ], [ %2938, %2937 ]
  %2941 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %2941, %union.rec** @zz_hold, align 8
  %2942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2943 = bitcast %union.rec* %2942 to %struct.word_type*
  %2944 = getelementptr inbounds %struct.word_type, %struct.word_type* %2943, i32 0, i32 0
  %2945 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2944, i32 0, i64 1
  %2946 = getelementptr inbounds %struct.LIST, %struct.LIST* %2945, i32 0, i32 1
  %2947 = load %union.rec*, %union.rec** %2946, align 8
  %2948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2949 = icmp eq %union.rec* %2947, %2948
  br i1 %2949, label %2950, label %2951

; <label>:2950                                    ; preds = %2939
  br label %2992

; <label>:2951                                    ; preds = %2939
  %2952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2953 = bitcast %union.rec* %2952 to %struct.word_type*
  %2954 = getelementptr inbounds %struct.word_type, %struct.word_type* %2953, i32 0, i32 0
  %2955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2954, i32 0, i64 1
  %2956 = getelementptr inbounds %struct.LIST, %struct.LIST* %2955, i32 0, i32 1
  %2957 = load %union.rec*, %union.rec** %2956, align 8
  store %union.rec* %2957, %union.rec** @zz_res, align 8
  %2958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2959 = bitcast %union.rec* %2958 to %struct.word_type*
  %2960 = getelementptr inbounds %struct.word_type, %struct.word_type* %2959, i32 0, i32 0
  %2961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2960, i32 0, i64 1
  %2962 = getelementptr inbounds %struct.LIST, %struct.LIST* %2961, i32 0, i32 0
  %2963 = load %union.rec*, %union.rec** %2962, align 8
  %2964 = load %union.rec*, %union.rec** @zz_res, align 8
  %2965 = bitcast %union.rec* %2964 to %struct.word_type*
  %2966 = getelementptr inbounds %struct.word_type, %struct.word_type* %2965, i32 0, i32 0
  %2967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2966, i32 0, i64 1
  %2968 = getelementptr inbounds %struct.LIST, %struct.LIST* %2967, i32 0, i32 0
  store %union.rec* %2963, %union.rec** %2968, align 8
  %2969 = load %union.rec*, %union.rec** @zz_res, align 8
  %2970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2971 = bitcast %union.rec* %2970 to %struct.word_type*
  %2972 = getelementptr inbounds %struct.word_type, %struct.word_type* %2971, i32 0, i32 0
  %2973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2972, i32 0, i64 1
  %2974 = getelementptr inbounds %struct.LIST, %struct.LIST* %2973, i32 0, i32 0
  %2975 = load %union.rec*, %union.rec** %2974, align 8
  %2976 = bitcast %union.rec* %2975 to %struct.word_type*
  %2977 = getelementptr inbounds %struct.word_type, %struct.word_type* %2976, i32 0, i32 0
  %2978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2977, i32 0, i64 1
  %2979 = getelementptr inbounds %struct.LIST, %struct.LIST* %2978, i32 0, i32 1
  store %union.rec* %2969, %union.rec** %2979, align 8
  %2980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2982 = bitcast %union.rec* %2981 to %struct.word_type*
  %2983 = getelementptr inbounds %struct.word_type, %struct.word_type* %2982, i32 0, i32 0
  %2984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2983, i32 0, i64 1
  %2985 = getelementptr inbounds %struct.LIST, %struct.LIST* %2984, i32 0, i32 1
  store %union.rec* %2980, %union.rec** %2985, align 8
  %2986 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2987 = bitcast %union.rec* %2986 to %struct.word_type*
  %2988 = getelementptr inbounds %struct.word_type, %struct.word_type* %2987, i32 0, i32 0
  %2989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2988, i32 0, i64 1
  %2990 = getelementptr inbounds %struct.LIST, %struct.LIST* %2989, i32 0, i32 0
  store %union.rec* %2980, %union.rec** %2990, align 8
  %2991 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2992

; <label>:2992                                    ; preds = %2951, %2950
  %2993 = phi %union.rec* [ null, %2950 ], [ %2991, %2951 ]
  store %union.rec* %2993, %union.rec** @xx_tmp, align 8
  %2994 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %2994, %union.rec** @zz_res, align 8
  %2995 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %2995, %union.rec** @zz_hold, align 8
  %2996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2997 = icmp eq %union.rec* %2996, null
  br i1 %2997, label %2998, label %3000

; <label>:2998                                    ; preds = %2992
  %2999 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3048

; <label>:3000                                    ; preds = %2992
  %3001 = load %union.rec*, %union.rec** @zz_res, align 8
  %3002 = icmp eq %union.rec* %3001, null
  br i1 %3002, label %3003, label %3005

; <label>:3003                                    ; preds = %3000
  %3004 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3046

; <label>:3005                                    ; preds = %3000
  %3006 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3007 = bitcast %union.rec* %3006 to %struct.word_type*
  %3008 = getelementptr inbounds %struct.word_type, %struct.word_type* %3007, i32 0, i32 0
  %3009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3008, i32 0, i64 1
  %3010 = getelementptr inbounds %struct.LIST, %struct.LIST* %3009, i32 0, i32 0
  %3011 = load %union.rec*, %union.rec** %3010, align 8
  store %union.rec* %3011, %union.rec** @zz_tmp, align 8
  %3012 = load %union.rec*, %union.rec** @zz_res, align 8
  %3013 = bitcast %union.rec* %3012 to %struct.word_type*
  %3014 = getelementptr inbounds %struct.word_type, %struct.word_type* %3013, i32 0, i32 0
  %3015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3014, i32 0, i64 1
  %3016 = getelementptr inbounds %struct.LIST, %struct.LIST* %3015, i32 0, i32 0
  %3017 = load %union.rec*, %union.rec** %3016, align 8
  %3018 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3019 = bitcast %union.rec* %3018 to %struct.word_type*
  %3020 = getelementptr inbounds %struct.word_type, %struct.word_type* %3019, i32 0, i32 0
  %3021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3020, i32 0, i64 1
  %3022 = getelementptr inbounds %struct.LIST, %struct.LIST* %3021, i32 0, i32 0
  store %union.rec* %3017, %union.rec** %3022, align 8
  %3023 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3024 = load %union.rec*, %union.rec** @zz_res, align 8
  %3025 = bitcast %union.rec* %3024 to %struct.word_type*
  %3026 = getelementptr inbounds %struct.word_type, %struct.word_type* %3025, i32 0, i32 0
  %3027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3026, i32 0, i64 1
  %3028 = getelementptr inbounds %struct.LIST, %struct.LIST* %3027, i32 0, i32 0
  %3029 = load %union.rec*, %union.rec** %3028, align 8
  %3030 = bitcast %union.rec* %3029 to %struct.word_type*
  %3031 = getelementptr inbounds %struct.word_type, %struct.word_type* %3030, i32 0, i32 0
  %3032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3031, i32 0, i64 1
  %3033 = getelementptr inbounds %struct.LIST, %struct.LIST* %3032, i32 0, i32 1
  store %union.rec* %3023, %union.rec** %3033, align 8
  %3034 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3035 = load %union.rec*, %union.rec** @zz_res, align 8
  %3036 = bitcast %union.rec* %3035 to %struct.word_type*
  %3037 = getelementptr inbounds %struct.word_type, %struct.word_type* %3036, i32 0, i32 0
  %3038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3037, i32 0, i64 1
  %3039 = getelementptr inbounds %struct.LIST, %struct.LIST* %3038, i32 0, i32 0
  store %union.rec* %3034, %union.rec** %3039, align 8
  %3040 = load %union.rec*, %union.rec** @zz_res, align 8
  %3041 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3042 = bitcast %union.rec* %3041 to %struct.word_type*
  %3043 = getelementptr inbounds %struct.word_type, %struct.word_type* %3042, i32 0, i32 0
  %3044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3043, i32 0, i64 1
  %3045 = getelementptr inbounds %struct.LIST, %struct.LIST* %3044, i32 0, i32 1
  store %union.rec* %3040, %union.rec** %3045, align 8
  br label %3046

; <label>:3046                                    ; preds = %3005, %3003
  %3047 = phi %union.rec* [ %3004, %3003 ], [ %3040, %3005 ]
  br label %3048

; <label>:3048                                    ; preds = %3046, %2998
  %3049 = phi %union.rec* [ %2999, %2998 ], [ %3047, %3046 ]
  %3050 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %3050, %union.rec** @zz_hold, align 8
  %3051 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3051, %union.rec** @zz_hold, align 8
  %3052 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3053 = bitcast %union.rec* %3052 to %struct.word_type*
  %3054 = getelementptr inbounds %struct.word_type, %struct.word_type* %3053, i32 0, i32 1
  %3055 = bitcast %union.FIRST_UNION* %3054 to %struct.anon*
  %3056 = getelementptr inbounds %struct.anon, %struct.anon* %3055, i32 0, i32 0
  %3057 = load i8, i8* %3056, align 1
  %3058 = zext i8 %3057 to i32
  %3059 = icmp eq i32 %3058, 11
  br i1 %3059, label %3069, label %3060

; <label>:3060                                    ; preds = %3048
  %3061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3062 = bitcast %union.rec* %3061 to %struct.word_type*
  %3063 = getelementptr inbounds %struct.word_type, %struct.word_type* %3062, i32 0, i32 1
  %3064 = bitcast %union.FIRST_UNION* %3063 to %struct.anon*
  %3065 = getelementptr inbounds %struct.anon, %struct.anon* %3064, i32 0, i32 0
  %3066 = load i8, i8* %3065, align 1
  %3067 = zext i8 %3066 to i32
  %3068 = icmp eq i32 %3067, 12
  br i1 %3068, label %3069, label %3077

; <label>:3069                                    ; preds = %3060, %3048
  %3070 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3071 = bitcast %union.rec* %3070 to %struct.word_type*
  %3072 = getelementptr inbounds %struct.word_type, %struct.word_type* %3071, i32 0, i32 1
  %3073 = bitcast %union.FIRST_UNION* %3072 to %struct.anon*
  %3074 = getelementptr inbounds %struct.anon, %struct.anon* %3073, i32 0, i32 1
  %3075 = load i8, i8* %3074, align 1
  %3076 = zext i8 %3075 to i32
  br label %3088

; <label>:3077                                    ; preds = %3060
  %3078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3079 = bitcast %union.rec* %3078 to %struct.word_type*
  %3080 = getelementptr inbounds %struct.word_type, %struct.word_type* %3079, i32 0, i32 1
  %3081 = bitcast %union.FIRST_UNION* %3080 to %struct.anon*
  %3082 = getelementptr inbounds %struct.anon, %struct.anon* %3081, i32 0, i32 0
  %3083 = load i8, i8* %3082, align 1
  %3084 = zext i8 %3083 to i64
  %3085 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3084
  %3086 = load i8, i8* %3085, align 1
  %3087 = zext i8 %3086 to i32
  br label %3088

; <label>:3088                                    ; preds = %3077, %3069
  %3089 = phi i32 [ %3076, %3069 ], [ %3087, %3077 ]
  store i32 %3089, i32* @zz_size, align 4
  %3090 = load i32, i32* @zz_size, align 4
  %3091 = sext i32 %3090 to i64
  %3092 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3091
  %3093 = load %union.rec*, %union.rec** %3092, align 8
  %3094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3095 = bitcast %union.rec* %3094 to %struct.word_type*
  %3096 = getelementptr inbounds %struct.word_type, %struct.word_type* %3095, i32 0, i32 0
  %3097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3096, i32 0, i64 0
  %3098 = getelementptr inbounds %struct.LIST, %struct.LIST* %3097, i32 0, i32 0
  store %union.rec* %3093, %union.rec** %3098, align 8
  %3099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3100 = load i32, i32* @zz_size, align 4
  %3101 = sext i32 %3100 to i64
  %3102 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3101
  store %union.rec* %3099, %union.rec** %3102, align 8
  %3103 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %3103, %union.rec** %2, align 8
  br label %3448

; <label>:3104                                    ; preds = %2582
  %3105 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %3106 = load i8*, i8** %q, align 8
  %3107 = load %union.rec*, %union.rec** %2, align 8
  %3108 = load i32, i32* %small_font, align 4
  %3109 = call %union.rec* @DoWord(i8* %3105, i8* %3106, %union.rec* %3107, i32 %3108)
  store %union.rec* %3109, %union.rec** %tmp, align 8
  %3110 = load %union.rec*, %union.rec** %2, align 8
  %3111 = load i32, i32* %vshift, align 4
  %3112 = load %union.rec*, %union.rec** %tmp, align 8
  %3113 = call %union.rec* @DoVShift(%union.rec* %3110, i32 %3111, %union.rec* %3112)
  store %union.rec* %3113, %union.rec** %new_y, align 8
  %3114 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %3115 = zext i8 %3114 to i32
  store i32 %3115, i32* @zz_size, align 4
  %3116 = sext i32 %3115 to i64
  %3117 = icmp uge i64 %3116, 265
  br i1 %3117, label %3118, label %3121

; <label>:3118                                    ; preds = %3104
  %3119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3120 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %3119)
  br label %3146

; <label>:3121                                    ; preds = %3104
  %3122 = load i32, i32* @zz_size, align 4
  %3123 = sext i32 %3122 to i64
  %3124 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3123
  %3125 = load %union.rec*, %union.rec** %3124, align 8
  %3126 = icmp eq %union.rec* %3125, null
  br i1 %3126, label %3127, label %3131

; <label>:3127                                    ; preds = %3121
  %3128 = load i32, i32* @zz_size, align 4
  %3129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3130 = call %union.rec* @GetMemory(i32 %3128, %struct.FILE_POS* %3129)
  store %union.rec* %3130, %union.rec** @zz_hold, align 8
  br label %3145

; <label>:3131                                    ; preds = %3121
  %3132 = load i32, i32* @zz_size, align 4
  %3133 = sext i32 %3132 to i64
  %3134 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3133
  %3135 = load %union.rec*, %union.rec** %3134, align 8
  store %union.rec* %3135, %union.rec** @zz_hold, align 8
  store %union.rec* %3135, %union.rec** @zz_hold, align 8
  %3136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3137 = bitcast %union.rec* %3136 to %struct.word_type*
  %3138 = getelementptr inbounds %struct.word_type, %struct.word_type* %3137, i32 0, i32 0
  %3139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3138, i32 0, i64 0
  %3140 = getelementptr inbounds %struct.LIST, %struct.LIST* %3139, i32 0, i32 0
  %3141 = load %union.rec*, %union.rec** %3140, align 8
  %3142 = load i32, i32* @zz_size, align 4
  %3143 = sext i32 %3142 to i64
  %3144 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3143
  store %union.rec* %3141, %union.rec** %3144, align 8
  br label %3145

; <label>:3145                                    ; preds = %3131, %3127
  br label %3146

; <label>:3146                                    ; preds = %3145, %3118
  %3147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3148 = bitcast %union.rec* %3147 to %struct.word_type*
  %3149 = getelementptr inbounds %struct.word_type, %struct.word_type* %3148, i32 0, i32 1
  %3150 = bitcast %union.FIRST_UNION* %3149 to %struct.anon*
  %3151 = getelementptr inbounds %struct.anon, %struct.anon* %3150, i32 0, i32 0
  store i8 0, i8* %3151, align 1
  %3152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3154 = bitcast %union.rec* %3153 to %struct.word_type*
  %3155 = getelementptr inbounds %struct.word_type, %struct.word_type* %3154, i32 0, i32 0
  %3156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3155, i32 0, i64 1
  %3157 = getelementptr inbounds %struct.LIST, %struct.LIST* %3156, i32 0, i32 1
  store %union.rec* %3152, %union.rec** %3157, align 8
  %3158 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3159 = bitcast %union.rec* %3158 to %struct.word_type*
  %3160 = getelementptr inbounds %struct.word_type, %struct.word_type* %3159, i32 0, i32 0
  %3161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3160, i32 0, i64 1
  %3162 = getelementptr inbounds %struct.LIST, %struct.LIST* %3161, i32 0, i32 0
  store %union.rec* %3152, %union.rec** %3162, align 8
  %3163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3164 = bitcast %union.rec* %3163 to %struct.word_type*
  %3165 = getelementptr inbounds %struct.word_type, %struct.word_type* %3164, i32 0, i32 0
  %3166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3165, i32 0, i64 0
  %3167 = getelementptr inbounds %struct.LIST, %struct.LIST* %3166, i32 0, i32 1
  store %union.rec* %3152, %union.rec** %3167, align 8
  %3168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3169 = bitcast %union.rec* %3168 to %struct.word_type*
  %3170 = getelementptr inbounds %struct.word_type, %struct.word_type* %3169, i32 0, i32 0
  %3171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3170, i32 0, i64 0
  %3172 = getelementptr inbounds %struct.LIST, %struct.LIST* %3171, i32 0, i32 0
  store %union.rec* %3152, %union.rec** %3172, align 8
  store %union.rec* %3152, %union.rec** @xx_link, align 8
  %3173 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3173, %union.rec** @zz_res, align 8
  %3174 = load %union.rec*, %union.rec** %new_acat, align 8
  store %union.rec* %3174, %union.rec** @zz_hold, align 8
  %3175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3176 = icmp eq %union.rec* %3175, null
  br i1 %3176, label %3177, label %3179

; <label>:3177                                    ; preds = %3146
  %3178 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3227

; <label>:3179                                    ; preds = %3146
  %3180 = load %union.rec*, %union.rec** @zz_res, align 8
  %3181 = icmp eq %union.rec* %3180, null
  br i1 %3181, label %3182, label %3184

; <label>:3182                                    ; preds = %3179
  %3183 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3225

; <label>:3184                                    ; preds = %3179
  %3185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3186 = bitcast %union.rec* %3185 to %struct.word_type*
  %3187 = getelementptr inbounds %struct.word_type, %struct.word_type* %3186, i32 0, i32 0
  %3188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3187, i32 0, i64 0
  %3189 = getelementptr inbounds %struct.LIST, %struct.LIST* %3188, i32 0, i32 0
  %3190 = load %union.rec*, %union.rec** %3189, align 8
  store %union.rec* %3190, %union.rec** @zz_tmp, align 8
  %3191 = load %union.rec*, %union.rec** @zz_res, align 8
  %3192 = bitcast %union.rec* %3191 to %struct.word_type*
  %3193 = getelementptr inbounds %struct.word_type, %struct.word_type* %3192, i32 0, i32 0
  %3194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3193, i32 0, i64 0
  %3195 = getelementptr inbounds %struct.LIST, %struct.LIST* %3194, i32 0, i32 0
  %3196 = load %union.rec*, %union.rec** %3195, align 8
  %3197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3198 = bitcast %union.rec* %3197 to %struct.word_type*
  %3199 = getelementptr inbounds %struct.word_type, %struct.word_type* %3198, i32 0, i32 0
  %3200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3199, i32 0, i64 0
  %3201 = getelementptr inbounds %struct.LIST, %struct.LIST* %3200, i32 0, i32 0
  store %union.rec* %3196, %union.rec** %3201, align 8
  %3202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3203 = load %union.rec*, %union.rec** @zz_res, align 8
  %3204 = bitcast %union.rec* %3203 to %struct.word_type*
  %3205 = getelementptr inbounds %struct.word_type, %struct.word_type* %3204, i32 0, i32 0
  %3206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3205, i32 0, i64 0
  %3207 = getelementptr inbounds %struct.LIST, %struct.LIST* %3206, i32 0, i32 0
  %3208 = load %union.rec*, %union.rec** %3207, align 8
  %3209 = bitcast %union.rec* %3208 to %struct.word_type*
  %3210 = getelementptr inbounds %struct.word_type, %struct.word_type* %3209, i32 0, i32 0
  %3211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3210, i32 0, i64 0
  %3212 = getelementptr inbounds %struct.LIST, %struct.LIST* %3211, i32 0, i32 1
  store %union.rec* %3202, %union.rec** %3212, align 8
  %3213 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3214 = load %union.rec*, %union.rec** @zz_res, align 8
  %3215 = bitcast %union.rec* %3214 to %struct.word_type*
  %3216 = getelementptr inbounds %struct.word_type, %struct.word_type* %3215, i32 0, i32 0
  %3217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3216, i32 0, i64 0
  %3218 = getelementptr inbounds %struct.LIST, %struct.LIST* %3217, i32 0, i32 0
  store %union.rec* %3213, %union.rec** %3218, align 8
  %3219 = load %union.rec*, %union.rec** @zz_res, align 8
  %3220 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3221 = bitcast %union.rec* %3220 to %struct.word_type*
  %3222 = getelementptr inbounds %struct.word_type, %struct.word_type* %3221, i32 0, i32 0
  %3223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3222, i32 0, i64 0
  %3224 = getelementptr inbounds %struct.LIST, %struct.LIST* %3223, i32 0, i32 1
  store %union.rec* %3219, %union.rec** %3224, align 8
  br label %3225

; <label>:3225                                    ; preds = %3184, %3182
  %3226 = phi %union.rec* [ %3183, %3182 ], [ %3219, %3184 ]
  br label %3227

; <label>:3227                                    ; preds = %3225, %3177
  %3228 = phi %union.rec* [ %3178, %3177 ], [ %3226, %3225 ]
  %3229 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3229, %union.rec** @zz_res, align 8
  %3230 = load %union.rec*, %union.rec** %new_y, align 8
  store %union.rec* %3230, %union.rec** @zz_hold, align 8
  %3231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3232 = icmp eq %union.rec* %3231, null
  br i1 %3232, label %3233, label %3235

; <label>:3233                                    ; preds = %3227
  %3234 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3283

; <label>:3235                                    ; preds = %3227
  %3236 = load %union.rec*, %union.rec** @zz_res, align 8
  %3237 = icmp eq %union.rec* %3236, null
  br i1 %3237, label %3238, label %3240

; <label>:3238                                    ; preds = %3235
  %3239 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3281

; <label>:3240                                    ; preds = %3235
  %3241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3242 = bitcast %union.rec* %3241 to %struct.word_type*
  %3243 = getelementptr inbounds %struct.word_type, %struct.word_type* %3242, i32 0, i32 0
  %3244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3243, i32 0, i64 1
  %3245 = getelementptr inbounds %struct.LIST, %struct.LIST* %3244, i32 0, i32 0
  %3246 = load %union.rec*, %union.rec** %3245, align 8
  store %union.rec* %3246, %union.rec** @zz_tmp, align 8
  %3247 = load %union.rec*, %union.rec** @zz_res, align 8
  %3248 = bitcast %union.rec* %3247 to %struct.word_type*
  %3249 = getelementptr inbounds %struct.word_type, %struct.word_type* %3248, i32 0, i32 0
  %3250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3249, i32 0, i64 1
  %3251 = getelementptr inbounds %struct.LIST, %struct.LIST* %3250, i32 0, i32 0
  %3252 = load %union.rec*, %union.rec** %3251, align 8
  %3253 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3254 = bitcast %union.rec* %3253 to %struct.word_type*
  %3255 = getelementptr inbounds %struct.word_type, %struct.word_type* %3254, i32 0, i32 0
  %3256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3255, i32 0, i64 1
  %3257 = getelementptr inbounds %struct.LIST, %struct.LIST* %3256, i32 0, i32 0
  store %union.rec* %3252, %union.rec** %3257, align 8
  %3258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3259 = load %union.rec*, %union.rec** @zz_res, align 8
  %3260 = bitcast %union.rec* %3259 to %struct.word_type*
  %3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %3260, i32 0, i32 0
  %3262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3261, i32 0, i64 1
  %3263 = getelementptr inbounds %struct.LIST, %struct.LIST* %3262, i32 0, i32 0
  %3264 = load %union.rec*, %union.rec** %3263, align 8
  %3265 = bitcast %union.rec* %3264 to %struct.word_type*
  %3266 = getelementptr inbounds %struct.word_type, %struct.word_type* %3265, i32 0, i32 0
  %3267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3266, i32 0, i64 1
  %3268 = getelementptr inbounds %struct.LIST, %struct.LIST* %3267, i32 0, i32 1
  store %union.rec* %3258, %union.rec** %3268, align 8
  %3269 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3270 = load %union.rec*, %union.rec** @zz_res, align 8
  %3271 = bitcast %union.rec* %3270 to %struct.word_type*
  %3272 = getelementptr inbounds %struct.word_type, %struct.word_type* %3271, i32 0, i32 0
  %3273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3272, i32 0, i64 1
  %3274 = getelementptr inbounds %struct.LIST, %struct.LIST* %3273, i32 0, i32 0
  store %union.rec* %3269, %union.rec** %3274, align 8
  %3275 = load %union.rec*, %union.rec** @zz_res, align 8
  %3276 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3277 = bitcast %union.rec* %3276 to %struct.word_type*
  %3278 = getelementptr inbounds %struct.word_type, %struct.word_type* %3277, i32 0, i32 0
  %3279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3278, i32 0, i64 1
  %3280 = getelementptr inbounds %struct.LIST, %struct.LIST* %3279, i32 0, i32 1
  store %union.rec* %3275, %union.rec** %3280, align 8
  br label %3281

; <label>:3281                                    ; preds = %3240, %3238
  %3282 = phi %union.rec* [ %3239, %3238 ], [ %3275, %3240 ]
  br label %3283

; <label>:3283                                    ; preds = %3281, %3233
  %3284 = phi %union.rec* [ %3234, %3233 ], [ %3282, %3281 ]
  %3285 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %3285, %union.rec** @zz_hold, align 8
  %3286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3287 = bitcast %union.rec* %3286 to %struct.word_type*
  %3288 = getelementptr inbounds %struct.word_type, %struct.word_type* %3287, i32 0, i32 0
  %3289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3288, i32 0, i64 1
  %3290 = getelementptr inbounds %struct.LIST, %struct.LIST* %3289, i32 0, i32 1
  %3291 = load %union.rec*, %union.rec** %3290, align 8
  %3292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3293 = icmp eq %union.rec* %3291, %3292
  br i1 %3293, label %3294, label %3295

; <label>:3294                                    ; preds = %3283
  br label %3336

; <label>:3295                                    ; preds = %3283
  %3296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3297 = bitcast %union.rec* %3296 to %struct.word_type*
  %3298 = getelementptr inbounds %struct.word_type, %struct.word_type* %3297, i32 0, i32 0
  %3299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3298, i32 0, i64 1
  %3300 = getelementptr inbounds %struct.LIST, %struct.LIST* %3299, i32 0, i32 1
  %3301 = load %union.rec*, %union.rec** %3300, align 8
  store %union.rec* %3301, %union.rec** @zz_res, align 8
  %3302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3303 = bitcast %union.rec* %3302 to %struct.word_type*
  %3304 = getelementptr inbounds %struct.word_type, %struct.word_type* %3303, i32 0, i32 0
  %3305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3304, i32 0, i64 1
  %3306 = getelementptr inbounds %struct.LIST, %struct.LIST* %3305, i32 0, i32 0
  %3307 = load %union.rec*, %union.rec** %3306, align 8
  %3308 = load %union.rec*, %union.rec** @zz_res, align 8
  %3309 = bitcast %union.rec* %3308 to %struct.word_type*
  %3310 = getelementptr inbounds %struct.word_type, %struct.word_type* %3309, i32 0, i32 0
  %3311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3310, i32 0, i64 1
  %3312 = getelementptr inbounds %struct.LIST, %struct.LIST* %3311, i32 0, i32 0
  store %union.rec* %3307, %union.rec** %3312, align 8
  %3313 = load %union.rec*, %union.rec** @zz_res, align 8
  %3314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3315 = bitcast %union.rec* %3314 to %struct.word_type*
  %3316 = getelementptr inbounds %struct.word_type, %struct.word_type* %3315, i32 0, i32 0
  %3317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3316, i32 0, i64 1
  %3318 = getelementptr inbounds %struct.LIST, %struct.LIST* %3317, i32 0, i32 0
  %3319 = load %union.rec*, %union.rec** %3318, align 8
  %3320 = bitcast %union.rec* %3319 to %struct.word_type*
  %3321 = getelementptr inbounds %struct.word_type, %struct.word_type* %3320, i32 0, i32 0
  %3322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3321, i32 0, i64 1
  %3323 = getelementptr inbounds %struct.LIST, %struct.LIST* %3322, i32 0, i32 1
  store %union.rec* %3313, %union.rec** %3323, align 8
  %3324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3326 = bitcast %union.rec* %3325 to %struct.word_type*
  %3327 = getelementptr inbounds %struct.word_type, %struct.word_type* %3326, i32 0, i32 0
  %3328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3327, i32 0, i64 1
  %3329 = getelementptr inbounds %struct.LIST, %struct.LIST* %3328, i32 0, i32 1
  store %union.rec* %3324, %union.rec** %3329, align 8
  %3330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3331 = bitcast %union.rec* %3330 to %struct.word_type*
  %3332 = getelementptr inbounds %struct.word_type, %struct.word_type* %3331, i32 0, i32 0
  %3333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3332, i32 0, i64 1
  %3334 = getelementptr inbounds %struct.LIST, %struct.LIST* %3333, i32 0, i32 0
  store %union.rec* %3324, %union.rec** %3334, align 8
  %3335 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3336

; <label>:3336                                    ; preds = %3295, %3294
  %3337 = phi %union.rec* [ null, %3294 ], [ %3335, %3295 ]
  store %union.rec* %3337, %union.rec** @xx_tmp, align 8
  %3338 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %3338, %union.rec** @zz_res, align 8
  %3339 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %3339, %union.rec** @zz_hold, align 8
  %3340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3341 = icmp eq %union.rec* %3340, null
  br i1 %3341, label %3342, label %3344

; <label>:3342                                    ; preds = %3336
  %3343 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3392

; <label>:3344                                    ; preds = %3336
  %3345 = load %union.rec*, %union.rec** @zz_res, align 8
  %3346 = icmp eq %union.rec* %3345, null
  br i1 %3346, label %3347, label %3349

; <label>:3347                                    ; preds = %3344
  %3348 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3390

; <label>:3349                                    ; preds = %3344
  %3350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3351 = bitcast %union.rec* %3350 to %struct.word_type*
  %3352 = getelementptr inbounds %struct.word_type, %struct.word_type* %3351, i32 0, i32 0
  %3353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3352, i32 0, i64 1
  %3354 = getelementptr inbounds %struct.LIST, %struct.LIST* %3353, i32 0, i32 0
  %3355 = load %union.rec*, %union.rec** %3354, align 8
  store %union.rec* %3355, %union.rec** @zz_tmp, align 8
  %3356 = load %union.rec*, %union.rec** @zz_res, align 8
  %3357 = bitcast %union.rec* %3356 to %struct.word_type*
  %3358 = getelementptr inbounds %struct.word_type, %struct.word_type* %3357, i32 0, i32 0
  %3359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3358, i32 0, i64 1
  %3360 = getelementptr inbounds %struct.LIST, %struct.LIST* %3359, i32 0, i32 0
  %3361 = load %union.rec*, %union.rec** %3360, align 8
  %3362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3363 = bitcast %union.rec* %3362 to %struct.word_type*
  %3364 = getelementptr inbounds %struct.word_type, %struct.word_type* %3363, i32 0, i32 0
  %3365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3364, i32 0, i64 1
  %3366 = getelementptr inbounds %struct.LIST, %struct.LIST* %3365, i32 0, i32 0
  store %union.rec* %3361, %union.rec** %3366, align 8
  %3367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3368 = load %union.rec*, %union.rec** @zz_res, align 8
  %3369 = bitcast %union.rec* %3368 to %struct.word_type*
  %3370 = getelementptr inbounds %struct.word_type, %struct.word_type* %3369, i32 0, i32 0
  %3371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3370, i32 0, i64 1
  %3372 = getelementptr inbounds %struct.LIST, %struct.LIST* %3371, i32 0, i32 0
  %3373 = load %union.rec*, %union.rec** %3372, align 8
  %3374 = bitcast %union.rec* %3373 to %struct.word_type*
  %3375 = getelementptr inbounds %struct.word_type, %struct.word_type* %3374, i32 0, i32 0
  %3376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3375, i32 0, i64 1
  %3377 = getelementptr inbounds %struct.LIST, %struct.LIST* %3376, i32 0, i32 1
  store %union.rec* %3367, %union.rec** %3377, align 8
  %3378 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3379 = load %union.rec*, %union.rec** @zz_res, align 8
  %3380 = bitcast %union.rec* %3379 to %struct.word_type*
  %3381 = getelementptr inbounds %struct.word_type, %struct.word_type* %3380, i32 0, i32 0
  %3382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3381, i32 0, i64 1
  %3383 = getelementptr inbounds %struct.LIST, %struct.LIST* %3382, i32 0, i32 0
  store %union.rec* %3378, %union.rec** %3383, align 8
  %3384 = load %union.rec*, %union.rec** @zz_res, align 8
  %3385 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3386 = bitcast %union.rec* %3385 to %struct.word_type*
  %3387 = getelementptr inbounds %struct.word_type, %struct.word_type* %3386, i32 0, i32 0
  %3388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3387, i32 0, i64 1
  %3389 = getelementptr inbounds %struct.LIST, %struct.LIST* %3388, i32 0, i32 1
  store %union.rec* %3384, %union.rec** %3389, align 8
  br label %3390

; <label>:3390                                    ; preds = %3349, %3347
  %3391 = phi %union.rec* [ %3348, %3347 ], [ %3384, %3349 ]
  br label %3392

; <label>:3392                                    ; preds = %3390, %3342
  %3393 = phi %union.rec* [ %3343, %3342 ], [ %3391, %3390 ]
  %3394 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %3394, %union.rec** @zz_hold, align 8
  %3395 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3395, %union.rec** @zz_hold, align 8
  %3396 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3397 = bitcast %union.rec* %3396 to %struct.word_type*
  %3398 = getelementptr inbounds %struct.word_type, %struct.word_type* %3397, i32 0, i32 1
  %3399 = bitcast %union.FIRST_UNION* %3398 to %struct.anon*
  %3400 = getelementptr inbounds %struct.anon, %struct.anon* %3399, i32 0, i32 0
  %3401 = load i8, i8* %3400, align 1
  %3402 = zext i8 %3401 to i32
  %3403 = icmp eq i32 %3402, 11
  br i1 %3403, label %3413, label %3404

; <label>:3404                                    ; preds = %3392
  %3405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3406 = bitcast %union.rec* %3405 to %struct.word_type*
  %3407 = getelementptr inbounds %struct.word_type, %struct.word_type* %3406, i32 0, i32 1
  %3408 = bitcast %union.FIRST_UNION* %3407 to %struct.anon*
  %3409 = getelementptr inbounds %struct.anon, %struct.anon* %3408, i32 0, i32 0
  %3410 = load i8, i8* %3409, align 1
  %3411 = zext i8 %3410 to i32
  %3412 = icmp eq i32 %3411, 12
  br i1 %3412, label %3413, label %3421

; <label>:3413                                    ; preds = %3404, %3392
  %3414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3415 = bitcast %union.rec* %3414 to %struct.word_type*
  %3416 = getelementptr inbounds %struct.word_type, %struct.word_type* %3415, i32 0, i32 1
  %3417 = bitcast %union.FIRST_UNION* %3416 to %struct.anon*
  %3418 = getelementptr inbounds %struct.anon, %struct.anon* %3417, i32 0, i32 1
  %3419 = load i8, i8* %3418, align 1
  %3420 = zext i8 %3419 to i32
  br label %3432

; <label>:3421                                    ; preds = %3404
  %3422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3423 = bitcast %union.rec* %3422 to %struct.word_type*
  %3424 = getelementptr inbounds %struct.word_type, %struct.word_type* %3423, i32 0, i32 1
  %3425 = bitcast %union.FIRST_UNION* %3424 to %struct.anon*
  %3426 = getelementptr inbounds %struct.anon, %struct.anon* %3425, i32 0, i32 0
  %3427 = load i8, i8* %3426, align 1
  %3428 = zext i8 %3427 to i64
  %3429 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3428
  %3430 = load i8, i8* %3429, align 1
  %3431 = zext i8 %3430 to i32
  br label %3432

; <label>:3432                                    ; preds = %3421, %3413
  %3433 = phi i32 [ %3420, %3413 ], [ %3431, %3421 ]
  store i32 %3433, i32* @zz_size, align 4
  %3434 = load i32, i32* @zz_size, align 4
  %3435 = sext i32 %3434 to i64
  %3436 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3435
  %3437 = load %union.rec*, %union.rec** %3436, align 8
  %3438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3439 = bitcast %union.rec* %3438 to %struct.word_type*
  %3440 = getelementptr inbounds %struct.word_type, %struct.word_type* %3439, i32 0, i32 0
  %3441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3440, i32 0, i64 0
  %3442 = getelementptr inbounds %struct.LIST, %struct.LIST* %3441, i32 0, i32 0
  store %union.rec* %3437, %union.rec** %3442, align 8
  %3443 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3444 = load i32, i32* @zz_size, align 4
  %3445 = sext i32 %3444 to i64
  %3446 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3445
  store %union.rec* %3443, %union.rec** %3446, align 8
  %3447 = load %union.rec*, %union.rec** %new_x, align 8
  store %union.rec* %3447, %union.rec** %2, align 8
  br label %3448

; <label>:3448                                    ; preds = %2582, %3432, %3088, %2742, %2584
  %3449 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %3449, %union.rec** %1
  br label %3450

; <label>:3450                                    ; preds = %3448, %111, %40
  %3451 = load %union.rec*, %union.rec** %1
  ret %union.rec* %3451
}

declare i32 @FontMapping(i32, %struct.FILE_POS*) #2

declare void @FontChange(%struct.STYLE*, %union.rec*) #2

declare i32 @FontHalfXHeight(i32) #2

; Function Attrs: nounwind uwtable
define internal %union.rec* @DoWord(i8* %buff, i8* %q, %union.rec* %x, i32 %fnum) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %union.rec*, align 8
  %4 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i8* %buff, i8** %1, align 8
  store i8* %q, i8** %2, align 8
  store %union.rec* %x, %union.rec** %3, align 8
  store i32 %fnum, i32* %4, align 4
  %5 = load i8*, i8** %2, align 8
  %6 = getelementptr inbounds i8, i8* %5, i32 1
  store i8* %6, i8** %2, align 8
  store i8 0, i8* %5, align 1
  %7 = load %union.rec*, %union.rec** %3, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 1
  %10 = bitcast %union.FIRST_UNION* %9 to %struct.anon*
  %11 = getelementptr inbounds %struct.anon, %struct.anon* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = load i8*, i8** %1, align 8
  %15 = load %union.rec*, %union.rec** %3, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 1
  %18 = bitcast %union.FIRST_UNION* %17 to %struct.FILE_POS*
  %19 = call %union.rec* @MakeWord(i32 %13, i8* %14, %struct.FILE_POS* %18)
  store %union.rec* %19, %union.rec** %res, align 8
  %20 = load i32, i32* %4, align 4
  %21 = load %union.rec*, %union.rec** %res, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 2
  %24 = bitcast %union.SECOND_UNION* %23 to %struct.anon.1*
  %25 = bitcast %struct.anon.1* %24 to i32*
  %26 = load i32, i32* %25, align 4
  %27 = and i32 %20, 4095
  %28 = and i32 %26, -4096
  %29 = or i32 %28, %27
  store i32 %29, i32* %25, align 4
  %30 = load %union.rec*, %union.rec** %3, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 2
  %33 = bitcast %union.SECOND_UNION* %32 to %struct.anon.1*
  %34 = bitcast %struct.anon.1* %33 to i32*
  %35 = load i32, i32* %34, align 4
  %36 = lshr i32 %35, 12
  %37 = and i32 %36, 1023
  %38 = load %union.rec*, %union.rec** %res, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 2
  %41 = bitcast %union.SECOND_UNION* %40 to %struct.anon.1*
  %42 = bitcast %struct.anon.1* %41 to i32*
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %37, 1023
  %45 = shl i32 %44, 12
  %46 = and i32 %43, -4190209
  %47 = or i32 %46, %45
  store i32 %47, i32* %42, align 4
  %48 = load %union.rec*, %union.rec** %3, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 2
  %51 = bitcast %union.SECOND_UNION* %50 to %struct.anon.1*
  %52 = bitcast %struct.anon.1* %51 to i32*
  %53 = load i32, i32* %52, align 4
  %54 = lshr i32 %53, 22
  %55 = and i32 %54, 1
  %56 = load %union.rec*, %union.rec** %res, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 2
  %59 = bitcast %union.SECOND_UNION* %58 to %struct.anon.1*
  %60 = bitcast %struct.anon.1* %59 to i32*
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %55, 1
  %63 = shl i32 %62, 22
  %64 = and i32 %61, -4194305
  %65 = or i32 %64, %63
  store i32 %65, i32* %60, align 4
  %66 = load %union.rec*, %union.rec** %3, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 2
  %69 = bitcast %union.SECOND_UNION* %68 to %struct.anon.1*
  %70 = bitcast %struct.anon.1* %69 to i32*
  %71 = load i32, i32* %70, align 4
  %72 = lshr i32 %71, 23
  %73 = and i32 %72, 63
  %74 = load %union.rec*, %union.rec** %res, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 2
  %77 = bitcast %union.SECOND_UNION* %76 to %struct.anon.1*
  %78 = bitcast %struct.anon.1* %77 to i32*
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %73, 63
  %81 = shl i32 %80, 23
  %82 = and i32 %79, -528482305
  %83 = or i32 %82, %81
  store i32 %83, i32* %78, align 4
  %84 = load %union.rec*, %union.rec** %3, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 2
  %87 = bitcast %union.SECOND_UNION* %86 to %struct.anon.1*
  %88 = bitcast %struct.anon.1* %87 to i32*
  %89 = load i32, i32* %88, align 4
  %90 = lshr i32 %89, 31
  %91 = load %union.rec*, %union.rec** %res, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 2
  %94 = bitcast %union.SECOND_UNION* %93 to %struct.anon.1*
  %95 = bitcast %struct.anon.1* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %90, 1
  %98 = shl i32 %97, 31
  %99 = and i32 %96, 2147483647
  %100 = or i32 %99, %98
  store i32 %100, i32* %95, align 4
  %101 = load %union.rec*, %union.rec** %res, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 2
  %104 = bitcast %union.SECOND_UNION* %103 to %struct.anon.1*
  %105 = bitcast %struct.anon.1* %104 to i32*
  %106 = load i32, i32* %105, align 4
  %107 = and i32 %106, -1610612737
  %108 = or i32 %107, 536870912
  store i32 %108, i32* %105, align 4
  %109 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %109
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind uwtable
define internal void @DoAddGap(%union.rec* %new_acat) #0 {
  %1 = alloca %union.rec*, align 8
  %new_g = alloca %union.rec*, align 8
  store %union.rec* %new_acat, %union.rec** %1, align 8
  %2 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %3 = zext i8 %2 to i32
  store i32 %3, i32* @zz_size, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp uge i64 %4, 265
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
  br label %34

; <label>:9                                       ; preds = %0
  %10 = load i32, i32* @zz_size, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %11
  %13 = load %union.rec*, %union.rec** %12, align 8
  %14 = icmp eq %union.rec* %13, null
  br i1 %14, label %15, label %19

; <label>:15                                      ; preds = %9
  %16 = load i32, i32* @zz_size, align 4
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = call %union.rec* @GetMemory(i32 %16, %struct.FILE_POS* %17)
  store %union.rec* %18, %union.rec** @zz_hold, align 8
  br label %33

; <label>:19                                      ; preds = %9
  %20 = load i32, i32* @zz_size, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %21
  %23 = load %union.rec*, %union.rec** %22, align 8
  store %union.rec* %23, %union.rec** @zz_hold, align 8
  store %union.rec* %23, %union.rec** @zz_hold, align 8
  %24 = load %union.rec*, %union.rec** @zz_hold, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 0
  %27 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %26, i32 0, i64 0
  %28 = getelementptr inbounds %struct.LIST, %struct.LIST* %27, i32 0, i32 0
  %29 = load %union.rec*, %union.rec** %28, align 8
  %30 = load i32, i32* @zz_size, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %31
  store %union.rec* %29, %union.rec** %32, align 8
  br label %33

; <label>:33                                      ; preds = %19, %15
  br label %34

; <label>:34                                      ; preds = %33, %6
  %35 = load %union.rec*, %union.rec** @zz_hold, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 1
  %38 = bitcast %union.FIRST_UNION* %37 to %struct.anon*
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  store i8 1, i8* %39, align 1
  %40 = load %union.rec*, %union.rec** @zz_hold, align 8
  %41 = load %union.rec*, %union.rec** @zz_hold, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 0
  %44 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %43, i32 0, i64 1
  %45 = getelementptr inbounds %struct.LIST, %struct.LIST* %44, i32 0, i32 1
  store %union.rec* %40, %union.rec** %45, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 1
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  store %union.rec* %40, %union.rec** %50, align 8
  %51 = load %union.rec*, %union.rec** @zz_hold, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 0
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 1
  store %union.rec* %40, %union.rec** %55, align 8
  %56 = load %union.rec*, %union.rec** @zz_hold, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 0
  %59 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %58, i32 0, i64 0
  %60 = getelementptr inbounds %struct.LIST, %struct.LIST* %59, i32 0, i32 0
  store %union.rec* %40, %union.rec** %60, align 8
  store %union.rec* %40, %union.rec** %new_g, align 8
  %61 = load %union.rec*, %union.rec** %1, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 1
  %64 = bitcast %union.FIRST_UNION* %63 to %struct.FILE_POS*
  %65 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %64, i32 0, i32 2
  %66 = load i16, i16* %65, align 2
  %67 = load %union.rec*, %union.rec** %new_g, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.FILE_POS*
  %71 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %70, i32 0, i32 2
  store i16 %66, i16* %71, align 2
  %72 = load %union.rec*, %union.rec** %1, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 1
  %75 = bitcast %union.FIRST_UNION* %74 to %struct.FILE_POS*
  %76 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %75, i32 0, i32 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 1048575
  %79 = load %union.rec*, %union.rec** %new_g, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 1
  %82 = bitcast %union.FIRST_UNION* %81 to %struct.FILE_POS*
  %83 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = and i32 %78, 1048575
  %86 = and i32 %84, -1048576
  %87 = or i32 %86, %85
  store i32 %87, i32* %83, align 4
  %88 = load %union.rec*, %union.rec** %1, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 1
  %91 = bitcast %union.FIRST_UNION* %90 to %struct.FILE_POS*
  %92 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = lshr i32 %93, 20
  %95 = load %union.rec*, %union.rec** %new_g, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 1
  %98 = bitcast %union.FIRST_UNION* %97 to %struct.FILE_POS*
  %99 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %98, i32 0, i32 3
  %100 = load i32, i32* %99, align 4
  %101 = and i32 %94, 4095
  %102 = shl i32 %101, 20
  %103 = and i32 %100, 1048575
  %104 = or i32 %103, %102
  store i32 %104, i32* %99, align 4
  %105 = load %union.rec*, %union.rec** %new_g, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 2
  %108 = bitcast %union.SECOND_UNION* %107 to %struct.anon.0*
  %109 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %108, i32 0, i32 2
  store i8 0, i8* %109, align 1
  %110 = load %union.rec*, %union.rec** %new_g, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 2
  %113 = bitcast %union.SECOND_UNION* %112 to %struct.anon.0*
  %114 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %113, i32 0, i32 1
  store i8 0, i8* %114, align 1
  %115 = load %union.rec*, %union.rec** %new_g, align 8
  %116 = bitcast %union.rec* %115 to %struct.gapobj_type*
  %117 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %116, i32 0, i32 3
  %118 = bitcast %struct.GAP* %117 to i16*
  %119 = load i16, i16* %118, align 4
  %120 = and i16 %119, -129
  %121 = or i16 %120, 128
  store i16 %121, i16* %118, align 4
  %122 = load %union.rec*, %union.rec** %new_g, align 8
  %123 = bitcast %union.rec* %122 to %struct.gapobj_type*
  %124 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %123, i32 0, i32 3
  %125 = bitcast %struct.GAP* %124 to i16*
  %126 = load i16, i16* %125, align 4
  %127 = and i16 %126, -257
  store i16 %127, i16* %125, align 4
  %128 = load %union.rec*, %union.rec** %new_g, align 8
  %129 = bitcast %union.rec* %128 to %struct.gapobj_type*
  %130 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %129, i32 0, i32 3
  %131 = bitcast %struct.GAP* %130 to i16*
  %132 = load i16, i16* %131, align 4
  %133 = and i16 %132, -513
  %134 = or i16 %133, 512
  store i16 %134, i16* %131, align 4
  %135 = load %union.rec*, %union.rec** %new_g, align 8
  %136 = bitcast %union.rec* %135 to %struct.gapobj_type*
  %137 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %136, i32 0, i32 3
  %138 = bitcast %struct.GAP* %137 to i16*
  %139 = load i16, i16* %138, align 4
  %140 = and i16 %139, -7169
  %141 = or i16 %140, 1024
  store i16 %141, i16* %138, align 4
  %142 = load %union.rec*, %union.rec** %new_g, align 8
  %143 = bitcast %union.rec* %142 to %struct.gapobj_type*
  %144 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %143, i32 0, i32 3
  %145 = bitcast %struct.GAP* %144 to i16*
  %146 = load i16, i16* %145, align 4
  %147 = and i16 %146, 8191
  %148 = or i16 %147, 8192
  store i16 %148, i16* %145, align 4
  %149 = load %union.rec*, %union.rec** %new_g, align 8
  %150 = bitcast %union.rec* %149 to %struct.gapobj_type*
  %151 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %150, i32 0, i32 3
  %152 = getelementptr inbounds %struct.GAP, %struct.GAP* %151, i32 0, i32 1
  store i16 0, i16* %152, align 2
  %153 = load %union.rec*, %union.rec** %new_g, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 2
  %156 = bitcast %union.SECOND_UNION* %155 to %struct.anon.1*
  %157 = bitcast %struct.anon.1* %156 to i32*
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, -1610612737
  %160 = or i32 %159, 536870912
  store i32 %160, i32* %157, align 4
  %161 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %162 = zext i8 %161 to i32
  store i32 %162, i32* @zz_size, align 4
  %163 = sext i32 %162 to i64
  %164 = icmp uge i64 %163, 265
  br i1 %164, label %165, label %168

; <label>:165                                     ; preds = %34
  %166 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %167 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %166)
  br label %193

; <label>:168                                     ; preds = %34
  %169 = load i32, i32* @zz_size, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %170
  %172 = load %union.rec*, %union.rec** %171, align 8
  %173 = icmp eq %union.rec* %172, null
  br i1 %173, label %174, label %178

; <label>:174                                     ; preds = %168
  %175 = load i32, i32* @zz_size, align 4
  %176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %177 = call %union.rec* @GetMemory(i32 %175, %struct.FILE_POS* %176)
  store %union.rec* %177, %union.rec** @zz_hold, align 8
  br label %192

; <label>:178                                     ; preds = %168
  %179 = load i32, i32* @zz_size, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %180
  %182 = load %union.rec*, %union.rec** %181, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 0
  %186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %185, i32 0, i64 0
  %187 = getelementptr inbounds %struct.LIST, %struct.LIST* %186, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %187, align 8
  %189 = load i32, i32* @zz_size, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %190
  store %union.rec* %188, %union.rec** %191, align 8
  br label %192

; <label>:192                                     ; preds = %178, %174
  br label %193

; <label>:193                                     ; preds = %192, %165
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 1
  %197 = bitcast %union.FIRST_UNION* %196 to %struct.anon*
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 0
  store i8 0, i8* %198, align 1
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
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 0
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 1
  store %union.rec* %199, %union.rec** %214, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 0
  %218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %217, i32 0, i64 0
  %219 = getelementptr inbounds %struct.LIST, %struct.LIST* %218, i32 0, i32 0
  store %union.rec* %199, %union.rec** %219, align 8
  store %union.rec* %199, %union.rec** @xx_link, align 8
  %220 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %220, %union.rec** @zz_res, align 8
  %221 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %223 = icmp eq %union.rec* %222, null
  br i1 %223, label %224, label %226

; <label>:224                                     ; preds = %193
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %274

; <label>:226                                     ; preds = %193
  %227 = load %union.rec*, %union.rec** @zz_res, align 8
  %228 = icmp eq %union.rec* %227, null
  br i1 %228, label %229, label %231

; <label>:229                                     ; preds = %226
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %272

; <label>:231                                     ; preds = %226
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = bitcast %union.rec* %232 to %struct.word_type*
  %234 = getelementptr inbounds %struct.word_type, %struct.word_type* %233, i32 0, i32 0
  %235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %234, i32 0, i64 0
  %236 = getelementptr inbounds %struct.LIST, %struct.LIST* %235, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %236, align 8
  store %union.rec* %237, %union.rec** @zz_tmp, align 8
  %238 = load %union.rec*, %union.rec** @zz_res, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 0
  %241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %240, i32 0, i64 0
  %242 = getelementptr inbounds %struct.LIST, %struct.LIST* %241, i32 0, i32 0
  %243 = load %union.rec*, %union.rec** %242, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %245 = bitcast %union.rec* %244 to %struct.word_type*
  %246 = getelementptr inbounds %struct.word_type, %struct.word_type* %245, i32 0, i32 0
  %247 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %246, i32 0, i64 0
  %248 = getelementptr inbounds %struct.LIST, %struct.LIST* %247, i32 0, i32 0
  store %union.rec* %243, %union.rec** %248, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %250 = load %union.rec*, %union.rec** @zz_res, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %252, i32 0, i64 0
  %254 = getelementptr inbounds %struct.LIST, %struct.LIST* %253, i32 0, i32 0
  %255 = load %union.rec*, %union.rec** %254, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 0
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 1
  store %union.rec* %249, %union.rec** %259, align 8
  %260 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %261 = load %union.rec*, %union.rec** @zz_res, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 0
  %264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %263, i32 0, i64 0
  %265 = getelementptr inbounds %struct.LIST, %struct.LIST* %264, i32 0, i32 0
  store %union.rec* %260, %union.rec** %265, align 8
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %267 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 0
  %270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %269, i32 0, i64 0
  %271 = getelementptr inbounds %struct.LIST, %struct.LIST* %270, i32 0, i32 1
  store %union.rec* %266, %union.rec** %271, align 8
  br label %272

; <label>:272                                     ; preds = %231, %229
  %273 = phi %union.rec* [ %230, %229 ], [ %266, %231 ]
  br label %274

; <label>:274                                     ; preds = %272, %224
  %275 = phi %union.rec* [ %225, %224 ], [ %273, %272 ]
  %276 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %276, %union.rec** @zz_res, align 8
  %277 = load %union.rec*, %union.rec** %new_g, align 8
  store %union.rec* %277, %union.rec** @zz_hold, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = icmp eq %union.rec* %278, null
  br i1 %279, label %280, label %282

; <label>:280                                     ; preds = %274
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %330

; <label>:282                                     ; preds = %274
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %284 = icmp eq %union.rec* %283, null
  br i1 %284, label %285, label %287

; <label>:285                                     ; preds = %282
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %328

; <label>:287                                     ; preds = %282
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %290, i32 0, i64 1
  %292 = getelementptr inbounds %struct.LIST, %struct.LIST* %291, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %292, align 8
  store %union.rec* %293, %union.rec** @zz_tmp, align 8
  %294 = load %union.rec*, %union.rec** @zz_res, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 1
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 0
  %299 = load %union.rec*, %union.rec** %298, align 8
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 1
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 0
  store %union.rec* %299, %union.rec** %304, align 8
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %307 = bitcast %union.rec* %306 to %struct.word_type*
  %308 = getelementptr inbounds %struct.word_type, %struct.word_type* %307, i32 0, i32 0
  %309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %308, i32 0, i64 1
  %310 = getelementptr inbounds %struct.LIST, %struct.LIST* %309, i32 0, i32 0
  %311 = load %union.rec*, %union.rec** %310, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 0
  %314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %313, i32 0, i64 1
  %315 = getelementptr inbounds %struct.LIST, %struct.LIST* %314, i32 0, i32 1
  store %union.rec* %305, %union.rec** %315, align 8
  %316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %317 = load %union.rec*, %union.rec** @zz_res, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 1
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 0
  store %union.rec* %316, %union.rec** %321, align 8
  %322 = load %union.rec*, %union.rec** @zz_res, align 8
  %323 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 1
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 1
  store %union.rec* %322, %union.rec** %327, align 8
  br label %328

; <label>:328                                     ; preds = %287, %285
  %329 = phi %union.rec* [ %286, %285 ], [ %322, %287 ]
  br label %330

; <label>:330                                     ; preds = %328, %280
  %331 = phi %union.rec* [ %281, %280 ], [ %329, %328 ]
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @DoVShift(%union.rec* %x, i32 %vshift, %union.rec* %chld) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %vshift, i32* %2, align 4
  store %union.rec* %chld, %union.rec** %3, align 8
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 29), align 1
  %5 = zext i8 %4 to i32
  store i32 %5, i32* @zz_size, align 4
  %6 = sext i32 %5 to i64
  %7 = icmp uge i64 %6, 265
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %9)
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
  store i8 29, i8* %41, align 1
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
  %63 = load %union.rec*, %union.rec** %1, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 1
  %66 = bitcast %union.FIRST_UNION* %65 to %struct.FILE_POS*
  %67 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %66, i32 0, i32 2
  %68 = load i16, i16* %67, align 2
  %69 = load %union.rec*, %union.rec** %res, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 1
  %72 = bitcast %union.FIRST_UNION* %71 to %struct.FILE_POS*
  %73 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %72, i32 0, i32 2
  store i16 %68, i16* %73, align 2
  %74 = load %union.rec*, %union.rec** %1, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 1
  %77 = bitcast %union.FIRST_UNION* %76 to %struct.FILE_POS*
  %78 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %77, i32 0, i32 3
  %79 = load i32, i32* %78, align 4
  %80 = and i32 %79, 1048575
  %81 = load %union.rec*, %union.rec** %res, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 1
  %84 = bitcast %union.FIRST_UNION* %83 to %struct.FILE_POS*
  %85 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 4
  %87 = and i32 %80, 1048575
  %88 = and i32 %86, -1048576
  %89 = or i32 %88, %87
  store i32 %89, i32* %85, align 4
  %90 = load %union.rec*, %union.rec** %1, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 1
  %93 = bitcast %union.FIRST_UNION* %92 to %struct.FILE_POS*
  %94 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %93, i32 0, i32 3
  %95 = load i32, i32* %94, align 4
  %96 = lshr i32 %95, 20
  %97 = load %union.rec*, %union.rec** %res, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 1
  %100 = bitcast %union.FIRST_UNION* %99 to %struct.FILE_POS*
  %101 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = and i32 %96, 4095
  %104 = shl i32 %103, 20
  %105 = and i32 %102, 1048575
  %106 = or i32 %105, %104
  store i32 %106, i32* %101, align 4
  %107 = load %union.rec*, %union.rec** %res, align 8
  %108 = bitcast %union.rec* %107 to %struct.closure_type*
  %109 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %108, i32 0, i32 4
  %110 = bitcast %union.FOURTH_UNION* %109 to %struct.STYLE*
  %111 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %110, i32 0, i32 1
  %112 = bitcast %union.anon.10* %111 to %struct.GAP*
  %113 = getelementptr inbounds %struct.GAP, %struct.GAP* %112, i32 0, i32 1
  store i16 160, i16* %113, align 2
  %114 = load %union.rec*, %union.rec** %res, align 8
  %115 = bitcast %union.rec* %114 to %struct.closure_type*
  %116 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %115, i32 0, i32 4
  %117 = bitcast %union.FOURTH_UNION* %116 to %struct.STYLE*
  %118 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %117, i32 0, i32 0
  %119 = bitcast %union.anon* %118 to %struct.GAP*
  %120 = bitcast %struct.GAP* %119 to i16*
  %121 = load i16, i16* %120, align 4
  %122 = and i16 %121, -7169
  %123 = or i16 %122, 1024
  store i16 %123, i16* %120, align 4
  %124 = load %union.rec*, %union.rec** %res, align 8
  %125 = bitcast %union.rec* %124 to %struct.closure_type*
  %126 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %125, i32 0, i32 4
  %127 = bitcast %union.FOURTH_UNION* %126 to %struct.STYLE*
  %128 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %127, i32 0, i32 0
  %129 = bitcast %union.anon* %128 to %struct.GAP*
  %130 = bitcast %struct.GAP* %129 to i16*
  %131 = load i16, i16* %130, align 4
  %132 = and i16 %131, 8191
  %133 = or i16 %132, 8192
  store i16 %133, i16* %130, align 4
  %134 = load i32, i32* %2, align 4
  %135 = trunc i32 %134 to i16
  %136 = load %union.rec*, %union.rec** %res, align 8
  %137 = bitcast %union.rec* %136 to %struct.closure_type*
  %138 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %137, i32 0, i32 4
  %139 = bitcast %union.FOURTH_UNION* %138 to %struct.STYLE*
  %140 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %139, i32 0, i32 0
  %141 = bitcast %union.anon* %140 to %struct.GAP*
  %142 = getelementptr inbounds %struct.GAP, %struct.GAP* %141, i32 0, i32 1
  store i16 %135, i16* %142, align 2
  %143 = load %union.rec*, %union.rec** %res, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 2
  %146 = bitcast %union.SECOND_UNION* %145 to %struct.anon.1*
  %147 = bitcast %struct.anon.1* %146 to i32*
  %148 = load i32, i32* %147, align 4
  %149 = and i32 %148, -1610612737
  %150 = or i32 %149, 536870912
  store i32 %150, i32* %147, align 4
  %151 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %152 = zext i8 %151 to i32
  store i32 %152, i32* @zz_size, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp uge i64 %153, 265
  br i1 %154, label %155, label %158

; <label>:155                                     ; preds = %36
  %156 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.30, i32 0, i32 0), i32 1, %struct.FILE_POS* %156)
  br label %183

; <label>:158                                     ; preds = %36
  %159 = load i32, i32* @zz_size, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %160
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = icmp eq %union.rec* %162, null
  br i1 %163, label %164, label %168

; <label>:164                                     ; preds = %158
  %165 = load i32, i32* @zz_size, align 4
  %166 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %167 = call %union.rec* @GetMemory(i32 %165, %struct.FILE_POS* %166)
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  br label %182

; <label>:168                                     ; preds = %158
  %169 = load i32, i32* @zz_size, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %170
  %172 = load %union.rec*, %union.rec** %171, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %175, i32 0, i64 0
  %177 = getelementptr inbounds %struct.LIST, %struct.LIST* %176, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %177, align 8
  %179 = load i32, i32* @zz_size, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %180
  store %union.rec* %178, %union.rec** %181, align 8
  br label %182

; <label>:182                                     ; preds = %168, %164
  br label %183

; <label>:183                                     ; preds = %182, %155
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 1
  %187 = bitcast %union.FIRST_UNION* %186 to %struct.anon*
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 0
  store i8 0, i8* %188, align 1
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 1
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 1
  store %union.rec* %189, %union.rec** %194, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %197, i32 0, i64 1
  %199 = getelementptr inbounds %struct.LIST, %struct.LIST* %198, i32 0, i32 0
  store %union.rec* %189, %union.rec** %199, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 0
  %203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %202, i32 0, i64 0
  %204 = getelementptr inbounds %struct.LIST, %struct.LIST* %203, i32 0, i32 1
  store %union.rec* %189, %union.rec** %204, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 0
  %208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %207, i32 0, i64 0
  %209 = getelementptr inbounds %struct.LIST, %struct.LIST* %208, i32 0, i32 0
  store %union.rec* %189, %union.rec** %209, align 8
  store %union.rec* %189, %union.rec** @xx_link, align 8
  %210 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %210, %union.rec** @zz_res, align 8
  %211 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %211, %union.rec** @zz_hold, align 8
  %212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %213 = icmp eq %union.rec* %212, null
  br i1 %213, label %214, label %216

; <label>:214                                     ; preds = %183
  %215 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %264

; <label>:216                                     ; preds = %183
  %217 = load %union.rec*, %union.rec** @zz_res, align 8
  %218 = icmp eq %union.rec* %217, null
  br i1 %218, label %219, label %221

; <label>:219                                     ; preds = %216
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %262

; <label>:221                                     ; preds = %216
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 0
  %225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %224, i32 0, i64 0
  %226 = getelementptr inbounds %struct.LIST, %struct.LIST* %225, i32 0, i32 0
  %227 = load %union.rec*, %union.rec** %226, align 8
  store %union.rec* %227, %union.rec** @zz_tmp, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %230, i32 0, i64 0
  %232 = getelementptr inbounds %struct.LIST, %struct.LIST* %231, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %232, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 0
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 0
  store %union.rec* %233, %union.rec** %238, align 8
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = load %union.rec*, %union.rec** @zz_res, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 0
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 0
  %245 = load %union.rec*, %union.rec** %244, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 0
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 1
  store %union.rec* %239, %union.rec** %249, align 8
  %250 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %251 = load %union.rec*, %union.rec** @zz_res, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 0
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 0
  store %union.rec* %250, %union.rec** %255, align 8
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  %257 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 1
  store %union.rec* %256, %union.rec** %261, align 8
  br label %262

; <label>:262                                     ; preds = %221, %219
  %263 = phi %union.rec* [ %220, %219 ], [ %256, %221 ]
  br label %264

; <label>:264                                     ; preds = %262, %214
  %265 = phi %union.rec* [ %215, %214 ], [ %263, %262 ]
  %266 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %266, %union.rec** @zz_res, align 8
  %267 = load %union.rec*, %union.rec** %3, align 8
  store %union.rec* %267, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = icmp eq %union.rec* %268, null
  br i1 %269, label %270, label %272

; <label>:270                                     ; preds = %264
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %320

; <label>:272                                     ; preds = %264
  %273 = load %union.rec*, %union.rec** @zz_res, align 8
  %274 = icmp eq %union.rec* %273, null
  br i1 %274, label %275, label %277

; <label>:275                                     ; preds = %272
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %318

; <label>:277                                     ; preds = %272
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = bitcast %union.rec* %278 to %struct.word_type*
  %280 = getelementptr inbounds %struct.word_type, %struct.word_type* %279, i32 0, i32 0
  %281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %280, i32 0, i64 1
  %282 = getelementptr inbounds %struct.LIST, %struct.LIST* %281, i32 0, i32 0
  %283 = load %union.rec*, %union.rec** %282, align 8
  store %union.rec* %283, %union.rec** @zz_tmp, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %286, i32 0, i64 1
  %288 = getelementptr inbounds %struct.LIST, %struct.LIST* %287, i32 0, i32 0
  %289 = load %union.rec*, %union.rec** %288, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 1
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 0
  store %union.rec* %289, %union.rec** %294, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 1
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %300, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %303, i32 0, i64 1
  %305 = getelementptr inbounds %struct.LIST, %struct.LIST* %304, i32 0, i32 1
  store %union.rec* %295, %union.rec** %305, align 8
  %306 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 1
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  store %union.rec* %306, %union.rec** %311, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 1
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 1
  store %union.rec* %312, %union.rec** %317, align 8
  br label %318

; <label>:318                                     ; preds = %277, %275
  %319 = phi %union.rec* [ %276, %275 ], [ %312, %277 ]
  br label %320

; <label>:320                                     ; preds = %318, %270
  %321 = phi %union.rec* [ %271, %270 ], [ %319, %318 ]
  %322 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %322
}

; Function Attrs: nounwind uwtable
define i32 @MapIsLowerCase(i8 zeroext %ch, i32 %m) #0 {
  %1 = alloca i8, align 1
  %2 = alloca i32, align 4
  %res = alloca i32, align 4
  store i8 %ch, i8* %1, align 1
  store i32 %m, i32* %2, align 4
  %3 = load i8, i8* %1, align 1
  %4 = zext i8 %3 to i64
  %5 = load i32, i32* %2, align 4
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds [20 x %struct.mapvec*], [20 x %struct.mapvec*]* @MapTable, i32 0, i64 %6
  %8 = load %struct.mapvec*, %struct.mapvec** %7, align 8
  %9 = getelementptr inbounds %struct.mapvec, %struct.mapvec* %8, i32 0, i32 7
  %10 = getelementptr inbounds [4 x [256 x i8]], [4 x [256 x i8]]* %9, i32 0, i64 0
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i32 0, i64 %4
  %12 = load i8, i8* %11, align 1
  %13 = zext i8 %12 to i32
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %res, align 4
  %16 = load i32, i32* %res, align 4
  ret i32 %16
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
