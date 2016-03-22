; ModuleID = 'z10.c'
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
%struct.anon.14 = type { i32, i32, [1 x %struct.crossref_rec*] }
%struct.crossref_rec = type { %struct.crossref_rec*, %union.rec*, i16, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.cr_type = type { [2 x %struct.LIST], i8, i8, i16, %union.rec*, i32, i32, i32, i32, %union.rec*, %union.rec*, i16 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.anon.8 = type { i8, i16, i32, i32 }

@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@RootCross = internal global %union.rec* null, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"automatically generated tag %s&%d is too long\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@xx_tmp = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"CrossExpand: x!\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"CrossExpand: #args!\00", align 1
@nbt = internal global [2 x %union.rec*] zeroinitializer, align 16
@nft = internal global [2 x %union.rec*] zeroinitializer, align 16
@ntarget = internal global %union.rec* null, align 8
@nenclose = internal global %union.rec* null, align 8
@.str.7 = private unnamed_addr constant [35 x i8] c"ClosureExpand: type(y) != CLOSURE!\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"preceding\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"foll_or_prec\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"following\00", align 1
@.str.11 = private unnamed_addr constant [52 x i8] c"value of right parameter of %s is not a simple word\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.13 = private unnamed_addr constant [48 x i8] c"value of right parameter of %s is an empty word\00", align 1
@MomentSym = external global %union.rec*, align 8
@.str.14 = private unnamed_addr constant [4 x i8] c"now\00", align 1
@.str.15 = private unnamed_addr constant [54 x i8] c"symbol %s used in cross reference has no %s parameter\00", align 1
@.str.16 = private unnamed_addr constant [5 x i8] c"@Tag\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"CrossExpand: db!\00", align 1
@OldCrossDb = external global %union.rec*, align 8
@.str.18 = private unnamed_addr constant [38 x i8] c"CrossExpand/CROSS_FOLL: cs == nilobj!\00", align 1
@.str.19 = private unnamed_addr constant [34 x i8] c"CrossExpand/CROSS_FOLL: type(cs)!\00", align 1
@crossref_tab = internal global %struct.anon.14* null, align 8
@.str.20 = private unnamed_addr constant [46 x i8] c"automatically generated tag %s_%d is too long\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"_\00", align 1
@AllowCrossDb = external global i32, align 4
@.str.22 = private unnamed_addr constant [18 x i8] c"CrossExpand ctype\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"unresolved cross reference %s%s%s\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.24 = private unnamed_addr constant [35 x i8] c"CrossExpand: type(res) != CLOSURE!\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"CrossExpand: actual(res) != sym!\00", align 1
@.str.26 = private unnamed_addr constant [24 x i8] c"CrossSequence: type(x)!\00", align 1
@.str.27 = private unnamed_addr constant [26 x i8] c"CrossSequence: type(tmp)!\00", align 1
@.str.28 = private unnamed_addr constant [19 x i8] c"CrossSequence: cs!\00", align 1
@.str.29 = private unnamed_addr constant [36 x i8] c"CrossSequence/GALL_FOLL: type(val)!\00", align 1
@.str.30 = private unnamed_addr constant [27 x i8] c"%s parameter is not a word\00", align 1
@.str.31 = private unnamed_addr constant [5 x i8] c"@Key\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"badkey\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"%s parameter is an empty word\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"no %s galley target precedes this %s%s%s\00", align 1
@.str.35 = private unnamed_addr constant [52 x i8] c"no %s galley target follows or precedes this %s%s%s\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.37 = private unnamed_addr constant [25 x i8] c"CrossSequence: gall_tag!\00", align 1
@NewCrossDb = external global %union.rec*, align 8
@.str.38 = private unnamed_addr constant [28 x i8] c"CrossSequence: GALL_TARG y!\00", align 1
@.str.39 = private unnamed_addr constant [24 x i8] c"CrossSequence: cs_type!\00", align 1
@.str.40 = private unnamed_addr constant [27 x i8] c"no %s precedes this %s%s%s\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.42 = private unnamed_addr constant [31 x i8] c"tag of %s is not a simple word\00", align 1
@.str.43 = private unnamed_addr constant [19 x i8] c"CrossSeq: Up(tag)!\00", align 1
@.str.44 = private unnamed_addr constant [27 x i8] c"CrossSequence: target_val!\00", align 1
@.str.45 = private unnamed_addr constant [26 x i8] c"CrossSequence: Down(PAR)!\00", align 1
@.str.46 = private unnamed_addr constant [4 x i8] c"???\00", align 1
@.str.47 = private unnamed_addr constant [33 x i8] c"CrossSeq: non-WORD or empty tag!\00", align 1
@.str.48 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.49 = private unnamed_addr constant [15 x i8] c"CrossSequence:\00", align 1
@.str.50 = private unnamed_addr constant [22 x i8] c"CrossClose: type(cs)!\00", align 1
@.str.51 = private unnamed_addr constant [25 x i8] c"CrossClose: GALL_TARG y!\00", align 1
@.str.52 = private unnamed_addr constant [26 x i8] c"no %s follows this %s%s%s\00", align 1
@.str.53 = private unnamed_addr constant [26 x i8] c"and more undefined %s%s%s\00", align 1
@.str.54 = private unnamed_addr constant [38 x i8] c"no %s follows or precedes this %s%s%s\00", align 1
@.str.55 = private unnamed_addr constant [38 x i8] c"no %s precedes or follows this %s%s%s\00", align 1
@.str.56 = private unnamed_addr constant [29 x i8] c"CrossClose: unknown cs_type!\00", align 1
@.str.57 = private unnamed_addr constant [54 x i8] c"automatically generated tag is too long (contains %s)\00", align 1
@.str.58 = private unnamed_addr constant [12 x i8] c"%d.%d.%s.%d\00", align 1
@.str.59 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging crossref table\00", align 1

; Function Attrs: nounwind uwtable
define void @CrossInit(%union.rec* %sym) #0 {
  %1 = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  %2 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 140), align 1
  %3 = zext i8 %2 to i32
  store i32 %3, i32* @zz_size, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp uge i64 %4, 265
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
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
  store i8 -116, i8* %39, align 1
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
  store %union.rec* %40, %union.rec** %cs, align 8
  %61 = load %union.rec*, %union.rec** %cs, align 8
  %62 = bitcast %union.rec* %61 to %struct.cr_type*
  %63 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %62, i32 0, i32 2
  store i8 0, i8* %63, align 1
  %64 = load %union.rec*, %union.rec** %cs, align 8
  %65 = bitcast %union.rec* %64 to %struct.cr_type*
  %66 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %65, i32 0, i32 5
  store i32 0, i32* %66, align 4
  %67 = load %union.rec*, %union.rec** %cs, align 8
  %68 = bitcast %union.rec* %67 to %struct.cr_type*
  %69 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %68, i32 0, i32 8
  store i32 0, i32* %69, align 4
  %70 = load %union.rec*, %union.rec** %cs, align 8
  %71 = bitcast %union.rec* %70 to %struct.cr_type*
  %72 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %71, i32 0, i32 10
  store %union.rec* null, %union.rec** %72, align 8
  %73 = load %union.rec*, %union.rec** %cs, align 8
  %74 = bitcast %union.rec* %73 to %struct.cr_type*
  %75 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %74, i32 0, i32 11
  store i16 0, i16* %75, align 2
  %76 = load %union.rec*, %union.rec** %1, align 8
  %77 = load %union.rec*, %union.rec** %cs, align 8
  %78 = bitcast %union.rec* %77 to %struct.cr_type*
  %79 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %78, i32 0, i32 9
  store %union.rec* %76, %union.rec** %79, align 8
  %80 = load %union.rec*, %union.rec** %cs, align 8
  %81 = load %union.rec*, %union.rec** %1, align 8
  %82 = bitcast %union.rec* %81 to %struct.symbol_type*
  %83 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %82, i32 0, i32 8
  store %union.rec* %80, %union.rec** %83, align 8
  %84 = load %union.rec*, %union.rec** @RootCross, align 8
  %85 = icmp eq %union.rec* %84, null
  br i1 %85, label %86, label %146

; <label>:86                                      ; preds = %34
  %87 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 141), align 1
  %88 = zext i8 %87 to i32
  store i32 %88, i32* @zz_size, align 4
  %89 = sext i32 %88 to i64
  %90 = icmp uge i64 %89, 265
  br i1 %90, label %91, label %94

; <label>:91                                      ; preds = %86
  %92 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %93 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %92)
  br label %119

; <label>:94                                      ; preds = %86
  %95 = load i32, i32* @zz_size, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %96
  %98 = load %union.rec*, %union.rec** %97, align 8
  %99 = icmp eq %union.rec* %98, null
  br i1 %99, label %100, label %104

; <label>:100                                     ; preds = %94
  %101 = load i32, i32* @zz_size, align 4
  %102 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %103 = call %union.rec* @GetMemory(i32 %101, %struct.FILE_POS* %102)
  store %union.rec* %103, %union.rec** @zz_hold, align 8
  br label %118

; <label>:104                                     ; preds = %94
  %105 = load i32, i32* @zz_size, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %106
  %108 = load %union.rec*, %union.rec** %107, align 8
  store %union.rec* %108, %union.rec** @zz_hold, align 8
  store %union.rec* %108, %union.rec** @zz_hold, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %111, i32 0, i64 0
  %113 = getelementptr inbounds %struct.LIST, %struct.LIST* %112, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %113, align 8
  %115 = load i32, i32* @zz_size, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %116
  store %union.rec* %114, %union.rec** %117, align 8
  br label %118

; <label>:118                                     ; preds = %104, %100
  br label %119

; <label>:119                                     ; preds = %118, %91
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 1
  %123 = bitcast %union.FIRST_UNION* %122 to %struct.anon*
  %124 = getelementptr inbounds %struct.anon, %struct.anon* %123, i32 0, i32 0
  store i8 -115, i8* %124, align 1
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 0
  %129 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %128, i32 0, i64 1
  %130 = getelementptr inbounds %struct.LIST, %struct.LIST* %129, i32 0, i32 1
  store %union.rec* %125, %union.rec** %130, align 8
  %131 = load %union.rec*, %union.rec** @zz_hold, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 1
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 0
  store %union.rec* %125, %union.rec** %135, align 8
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 0
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 1
  store %union.rec* %125, %union.rec** %140, align 8
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 0
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 0
  store %union.rec* %125, %union.rec** %145, align 8
  store %union.rec* %125, %union.rec** @RootCross, align 8
  br label %146

; <label>:146                                     ; preds = %119, %34
  %147 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %148 = zext i8 %147 to i32
  store i32 %148, i32* @zz_size, align 4
  %149 = sext i32 %148 to i64
  %150 = icmp uge i64 %149, 265
  br i1 %150, label %151, label %154

; <label>:151                                     ; preds = %146
  %152 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %153 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %152)
  br label %179

; <label>:154                                     ; preds = %146
  %155 = load i32, i32* @zz_size, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %156
  %158 = load %union.rec*, %union.rec** %157, align 8
  %159 = icmp eq %union.rec* %158, null
  br i1 %159, label %160, label %164

; <label>:160                                     ; preds = %154
  %161 = load i32, i32* @zz_size, align 4
  %162 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %163 = call %union.rec* @GetMemory(i32 %161, %struct.FILE_POS* %162)
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  br label %178

; <label>:164                                     ; preds = %154
  %165 = load i32, i32* @zz_size, align 4
  %166 = sext i32 %165 to i64
  %167 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %166
  %168 = load %union.rec*, %union.rec** %167, align 8
  store %union.rec* %168, %union.rec** @zz_hold, align 8
  store %union.rec* %168, %union.rec** @zz_hold, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 0
  %172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %171, i32 0, i64 0
  %173 = getelementptr inbounds %struct.LIST, %struct.LIST* %172, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %173, align 8
  %175 = load i32, i32* @zz_size, align 4
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %176
  store %union.rec* %174, %union.rec** %177, align 8
  br label %178

; <label>:178                                     ; preds = %164, %160
  br label %179

; <label>:179                                     ; preds = %178, %151
  %180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 1
  %183 = bitcast %union.FIRST_UNION* %182 to %struct.anon*
  %184 = getelementptr inbounds %struct.anon, %struct.anon* %183, i32 0, i32 0
  store i8 0, i8* %184, align 1
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 0
  %189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %188, i32 0, i64 1
  %190 = getelementptr inbounds %struct.LIST, %struct.LIST* %189, i32 0, i32 1
  store %union.rec* %185, %union.rec** %190, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 1
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 0
  store %union.rec* %185, %union.rec** %195, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 0
  %199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %198, i32 0, i64 0
  %200 = getelementptr inbounds %struct.LIST, %struct.LIST* %199, i32 0, i32 1
  store %union.rec* %185, %union.rec** %200, align 8
  %201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %203, i32 0, i64 0
  %205 = getelementptr inbounds %struct.LIST, %struct.LIST* %204, i32 0, i32 0
  store %union.rec* %185, %union.rec** %205, align 8
  store %union.rec* %185, %union.rec** @xx_link, align 8
  %206 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %206, %union.rec** @zz_res, align 8
  %207 = load %union.rec*, %union.rec** @RootCross, align 8
  store %union.rec* %207, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = icmp eq %union.rec* %208, null
  br i1 %209, label %210, label %212

; <label>:210                                     ; preds = %179
  %211 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %260

; <label>:212                                     ; preds = %179
  %213 = load %union.rec*, %union.rec** @zz_res, align 8
  %214 = icmp eq %union.rec* %213, null
  br i1 %214, label %215, label %217

; <label>:215                                     ; preds = %212
  %216 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %258

; <label>:217                                     ; preds = %212
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %220, i32 0, i64 0
  %222 = getelementptr inbounds %struct.LIST, %struct.LIST* %221, i32 0, i32 0
  %223 = load %union.rec*, %union.rec** %222, align 8
  store %union.rec* %223, %union.rec** @zz_tmp, align 8
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %228, align 8
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %231 = bitcast %union.rec* %230 to %struct.word_type*
  %232 = getelementptr inbounds %struct.word_type, %struct.word_type* %231, i32 0, i32 0
  %233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %232, i32 0, i64 0
  %234 = getelementptr inbounds %struct.LIST, %struct.LIST* %233, i32 0, i32 0
  store %union.rec* %229, %union.rec** %234, align 8
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 0
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %240, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 0
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 1
  store %union.rec* %235, %union.rec** %245, align 8
  %246 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %247 = load %union.rec*, %union.rec** @zz_res, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 0
  %250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %249, i32 0, i64 0
  %251 = getelementptr inbounds %struct.LIST, %struct.LIST* %250, i32 0, i32 0
  store %union.rec* %246, %union.rec** %251, align 8
  %252 = load %union.rec*, %union.rec** @zz_res, align 8
  %253 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 0
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 1
  store %union.rec* %252, %union.rec** %257, align 8
  br label %258

; <label>:258                                     ; preds = %217, %215
  %259 = phi %union.rec* [ %216, %215 ], [ %252, %217 ]
  br label %260

; <label>:260                                     ; preds = %258, %210
  %261 = phi %union.rec* [ %211, %210 ], [ %259, %258 ]
  %262 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %262, %union.rec** @zz_res, align 8
  %263 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %263, %union.rec** @zz_hold, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = icmp eq %union.rec* %264, null
  br i1 %265, label %266, label %268

; <label>:266                                     ; preds = %260
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %316

; <label>:268                                     ; preds = %260
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
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 1
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 0
  %279 = load %union.rec*, %union.rec** %278, align 8
  store %union.rec* %279, %union.rec** @zz_tmp, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 0
  %283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %282, i32 0, i64 1
  %284 = getelementptr inbounds %struct.LIST, %struct.LIST* %283, i32 0, i32 0
  %285 = load %union.rec*, %union.rec** %284, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 1
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 0
  store %union.rec* %285, %union.rec** %290, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %292 = load %union.rec*, %union.rec** @zz_res, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 0
  %295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %294, i32 0, i64 1
  %296 = getelementptr inbounds %struct.LIST, %struct.LIST* %295, i32 0, i32 0
  %297 = load %union.rec*, %union.rec** %296, align 8
  %298 = bitcast %union.rec* %297 to %struct.word_type*
  %299 = getelementptr inbounds %struct.word_type, %struct.word_type* %298, i32 0, i32 0
  %300 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %299, i32 0, i64 1
  %301 = getelementptr inbounds %struct.LIST, %struct.LIST* %300, i32 0, i32 1
  store %union.rec* %291, %union.rec** %301, align 8
  %302 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %303 = load %union.rec*, %union.rec** @zz_res, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %305, i32 0, i64 1
  %307 = getelementptr inbounds %struct.LIST, %struct.LIST* %306, i32 0, i32 0
  store %union.rec* %302, %union.rec** %307, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  %309 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 1
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 1
  store %union.rec* %308, %union.rec** %313, align 8
  br label %314

; <label>:314                                     ; preds = %273, %271
  %315 = phi %union.rec* [ %272, %271 ], [ %308, %273 ]
  br label %316

; <label>:316                                     ; preds = %314, %266
  %317 = phi %union.rec* [ %267, %266 ], [ %315, %314 ]
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define %union.rec* @CrossMake(%union.rec* %sym, %union.rec* %val, i32 %ctype) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %v1 = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  store %union.rec* %val, %union.rec** %2, align 8
  store i32 %ctype, i32* %3, align 4
  %4 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 6), align 1
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
  store i8 6, i8* %41, align 1
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
  %63 = load i32, i32* %3, align 4
  %64 = trunc i32 %63 to i8
  %65 = load %union.rec*, %union.rec** %res, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 2
  %68 = bitcast %union.SECOND_UNION* %67 to %struct.anon.2*
  %69 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %68, i32 0, i32 1
  store i8 %64, i8* %69, align 1
  %70 = load %union.rec*, %union.rec** %res, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 2
  %73 = bitcast %union.SECOND_UNION* %72 to %struct.anon.2*
  %74 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %73, i32 0, i32 2
  %75 = load i16, i16* %74, align 2
  %76 = and i16 %75, -5
  store i16 %76, i16* %74, align 2
  %77 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %78 = zext i8 %77 to i32
  store i32 %78, i32* @zz_size, align 4
  %79 = sext i32 %78 to i64
  %80 = icmp uge i64 %79, 265
  br i1 %80, label %81, label %84

; <label>:81                                      ; preds = %36
  %82 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %83 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %82)
  br label %109

; <label>:84                                      ; preds = %36
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
  store i8 2, i8* %114, align 1
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
  store %union.rec* %115, %union.rec** %v1, align 8
  %136 = load %union.rec*, %union.rec** %1, align 8
  %137 = load %union.rec*, %union.rec** %v1, align 8
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
  %146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %145)
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
  %200 = load %union.rec*, %union.rec** %res, align 8
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
  %256 = load %union.rec*, %union.rec** %v1, align 8
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
  %311 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %312 = zext i8 %311 to i32
  store i32 %312, i32* @zz_size, align 4
  %313 = sext i32 %312 to i64
  %314 = icmp uge i64 %313, 265
  br i1 %314, label %315, label %318

; <label>:315                                     ; preds = %309
  %316 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %317 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %316)
  br label %343

; <label>:318                                     ; preds = %309
  %319 = load i32, i32* @zz_size, align 4
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %320
  %322 = load %union.rec*, %union.rec** %321, align 8
  %323 = icmp eq %union.rec* %322, null
  br i1 %323, label %324, label %328

; <label>:324                                     ; preds = %318
  %325 = load i32, i32* @zz_size, align 4
  %326 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %327 = call %union.rec* @GetMemory(i32 %325, %struct.FILE_POS* %326)
  store %union.rec* %327, %union.rec** @zz_hold, align 8
  br label %342

; <label>:328                                     ; preds = %318
  %329 = load i32, i32* @zz_size, align 4
  %330 = sext i32 %329 to i64
  %331 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %330
  %332 = load %union.rec*, %union.rec** %331, align 8
  store %union.rec* %332, %union.rec** @zz_hold, align 8
  store %union.rec* %332, %union.rec** @zz_hold, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 0
  %336 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %335, i32 0, i64 0
  %337 = getelementptr inbounds %struct.LIST, %struct.LIST* %336, i32 0, i32 0
  %338 = load %union.rec*, %union.rec** %337, align 8
  %339 = load i32, i32* @zz_size, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %340
  store %union.rec* %338, %union.rec** %341, align 8
  br label %342

; <label>:342                                     ; preds = %328, %324
  br label %343

; <label>:343                                     ; preds = %342, %315
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 1
  %347 = bitcast %union.FIRST_UNION* %346 to %struct.anon*
  %348 = getelementptr inbounds %struct.anon, %struct.anon* %347, i32 0, i32 0
  store i8 0, i8* %348, align 1
  %349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 1
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 1
  store %union.rec* %349, %union.rec** %354, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %356 = bitcast %union.rec* %355 to %struct.word_type*
  %357 = getelementptr inbounds %struct.word_type, %struct.word_type* %356, i32 0, i32 0
  %358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %357, i32 0, i64 1
  %359 = getelementptr inbounds %struct.LIST, %struct.LIST* %358, i32 0, i32 0
  store %union.rec* %349, %union.rec** %359, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 0
  %363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %362, i32 0, i64 0
  %364 = getelementptr inbounds %struct.LIST, %struct.LIST* %363, i32 0, i32 1
  store %union.rec* %349, %union.rec** %364, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 0
  %368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %367, i32 0, i64 0
  %369 = getelementptr inbounds %struct.LIST, %struct.LIST* %368, i32 0, i32 0
  store %union.rec* %349, %union.rec** %369, align 8
  store %union.rec* %349, %union.rec** @xx_link, align 8
  %370 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %370, %union.rec** @zz_res, align 8
  %371 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %371, %union.rec** @zz_hold, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %373 = icmp eq %union.rec* %372, null
  br i1 %373, label %374, label %376

; <label>:374                                     ; preds = %343
  %375 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %424

; <label>:376                                     ; preds = %343
  %377 = load %union.rec*, %union.rec** @zz_res, align 8
  %378 = icmp eq %union.rec* %377, null
  br i1 %378, label %379, label %381

; <label>:379                                     ; preds = %376
  %380 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %422

; <label>:381                                     ; preds = %376
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 0
  %385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %384, i32 0, i64 0
  %386 = getelementptr inbounds %struct.LIST, %struct.LIST* %385, i32 0, i32 0
  %387 = load %union.rec*, %union.rec** %386, align 8
  store %union.rec* %387, %union.rec** @zz_tmp, align 8
  %388 = load %union.rec*, %union.rec** @zz_res, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 0
  %391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %390, i32 0, i64 0
  %392 = getelementptr inbounds %struct.LIST, %struct.LIST* %391, i32 0, i32 0
  %393 = load %union.rec*, %union.rec** %392, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = bitcast %union.rec* %394 to %struct.word_type*
  %396 = getelementptr inbounds %struct.word_type, %struct.word_type* %395, i32 0, i32 0
  %397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %396, i32 0, i64 0
  %398 = getelementptr inbounds %struct.LIST, %struct.LIST* %397, i32 0, i32 0
  store %union.rec* %393, %union.rec** %398, align 8
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %400 = load %union.rec*, %union.rec** @zz_res, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 0
  %405 = load %union.rec*, %union.rec** %404, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 0
  %408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %407, i32 0, i64 0
  %409 = getelementptr inbounds %struct.LIST, %struct.LIST* %408, i32 0, i32 1
  store %union.rec* %399, %union.rec** %409, align 8
  %410 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 0
  %414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %413, i32 0, i64 0
  %415 = getelementptr inbounds %struct.LIST, %struct.LIST* %414, i32 0, i32 0
  store %union.rec* %410, %union.rec** %415, align 8
  %416 = load %union.rec*, %union.rec** @zz_res, align 8
  %417 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %418 = bitcast %union.rec* %417 to %struct.word_type*
  %419 = getelementptr inbounds %struct.word_type, %struct.word_type* %418, i32 0, i32 0
  %420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %419, i32 0, i64 0
  %421 = getelementptr inbounds %struct.LIST, %struct.LIST* %420, i32 0, i32 1
  store %union.rec* %416, %union.rec** %421, align 8
  br label %422

; <label>:422                                     ; preds = %381, %379
  %423 = phi %union.rec* [ %380, %379 ], [ %416, %381 ]
  br label %424

; <label>:424                                     ; preds = %422, %374
  %425 = phi %union.rec* [ %375, %374 ], [ %423, %422 ]
  %426 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %426, %union.rec** @zz_res, align 8
  %427 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %427, %union.rec** @zz_hold, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = icmp eq %union.rec* %428, null
  br i1 %429, label %430, label %432

; <label>:430                                     ; preds = %424
  %431 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %480

; <label>:432                                     ; preds = %424
  %433 = load %union.rec*, %union.rec** @zz_res, align 8
  %434 = icmp eq %union.rec* %433, null
  br i1 %434, label %435, label %437

; <label>:435                                     ; preds = %432
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %478

; <label>:437                                     ; preds = %432
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %439 = bitcast %union.rec* %438 to %struct.word_type*
  %440 = getelementptr inbounds %struct.word_type, %struct.word_type* %439, i32 0, i32 0
  %441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %440, i32 0, i64 1
  %442 = getelementptr inbounds %struct.LIST, %struct.LIST* %441, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %442, align 8
  store %union.rec* %443, %union.rec** @zz_tmp, align 8
  %444 = load %union.rec*, %union.rec** @zz_res, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 0
  %447 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %446, i32 0, i64 1
  %448 = getelementptr inbounds %struct.LIST, %struct.LIST* %447, i32 0, i32 0
  %449 = load %union.rec*, %union.rec** %448, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %451 = bitcast %union.rec* %450 to %struct.word_type*
  %452 = getelementptr inbounds %struct.word_type, %struct.word_type* %451, i32 0, i32 0
  %453 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %452, i32 0, i64 1
  %454 = getelementptr inbounds %struct.LIST, %struct.LIST* %453, i32 0, i32 0
  store %union.rec* %449, %union.rec** %454, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = load %union.rec*, %union.rec** @zz_res, align 8
  %457 = bitcast %union.rec* %456 to %struct.word_type*
  %458 = getelementptr inbounds %struct.word_type, %struct.word_type* %457, i32 0, i32 0
  %459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %458, i32 0, i64 1
  %460 = getelementptr inbounds %struct.LIST, %struct.LIST* %459, i32 0, i32 0
  %461 = load %union.rec*, %union.rec** %460, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 0
  %464 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %463, i32 0, i64 1
  %465 = getelementptr inbounds %struct.LIST, %struct.LIST* %464, i32 0, i32 1
  store %union.rec* %455, %union.rec** %465, align 8
  %466 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 0
  %470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %469, i32 0, i64 1
  %471 = getelementptr inbounds %struct.LIST, %struct.LIST* %470, i32 0, i32 0
  store %union.rec* %466, %union.rec** %471, align 8
  %472 = load %union.rec*, %union.rec** @zz_res, align 8
  %473 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %474 = bitcast %union.rec* %473 to %struct.word_type*
  %475 = getelementptr inbounds %struct.word_type, %struct.word_type* %474, i32 0, i32 0
  %476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %475, i32 0, i64 1
  %477 = getelementptr inbounds %struct.LIST, %struct.LIST* %476, i32 0, i32 1
  store %union.rec* %472, %union.rec** %477, align 8
  br label %478

; <label>:478                                     ; preds = %437, %435
  %479 = phi %union.rec* [ %436, %435 ], [ %472, %437 ]
  br label %480

; <label>:480                                     ; preds = %478, %430
  %481 = phi %union.rec* [ %431, %430 ], [ %479, %478 ]
  %482 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %482
}

; Function Attrs: nounwind uwtable
define %union.rec* @GallTargEval(%union.rec* %sym, %struct.FILE_POS* %dfpos) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.FILE_POS*, align 8
  %cs = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %str = alloca i8*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  store %struct.FILE_POS* %dfpos, %struct.FILE_POS** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.symbol_type*
  %5 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %4, i32 0, i32 8
  %6 = load %union.rec*, %union.rec** %5, align 8
  %7 = icmp eq %union.rec* %6, null
  br i1 %7, label %8, label %10

; <label>:8                                       ; preds = %0
  %9 = load %union.rec*, %union.rec** %1, align 8
  call void @CrossInit(%union.rec* %9)
  br label %10

; <label>:10                                      ; preds = %8, %0
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.symbol_type*
  %13 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %12, i32 0, i32 8
  %14 = load %union.rec*, %union.rec** %13, align 8
  store %union.rec* %14, %union.rec** %cs, align 8
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %16 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %15, i32 0, i32 2
  %17 = load i16, i16* %16, align 2
  %18 = zext i16 %17 to i32
  %19 = load %union.rec*, %union.rec** %cs, align 8
  %20 = bitcast %union.rec* %19 to %struct.cr_type*
  %21 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %20, i32 0, i32 11
  %22 = load i16, i16* %21, align 2
  %23 = zext i16 %22 to i32
  %24 = icmp ne i32 %18, %23
  br i1 %24, label %25, label %35

; <label>:25                                      ; preds = %10
  %26 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %27 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %26, i32 0, i32 2
  %28 = load i16, i16* %27, align 2
  %29 = load %union.rec*, %union.rec** %cs, align 8
  %30 = bitcast %union.rec* %29 to %struct.cr_type*
  %31 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %30, i32 0, i32 11
  store i16 %28, i16* %31, align 2
  %32 = load %union.rec*, %union.rec** %cs, align 8
  %33 = bitcast %union.rec* %32 to %struct.cr_type*
  %34 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %33, i32 0, i32 8
  store i32 0, i32* %34, align 4
  br label %35

; <label>:35                                      ; preds = %25, %10
  %36 = load %union.rec*, %union.rec** %cs, align 8
  %37 = bitcast %union.rec* %36 to %struct.cr_type*
  %38 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %37, i32 0, i32 11
  %39 = load i16, i16* %38, align 2
  %40 = call i8* @FileName(i16 zeroext %39)
  store i8* %40, i8** %str, align 8
  %41 = load %union.rec*, %union.rec** %cs, align 8
  %42 = bitcast %union.rec* %41 to %struct.cr_type*
  %43 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %42, i32 0, i32 8
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load i8*, i8** %str, align 8
  %47 = call i64 @strlen(i8* %46) #4
  %48 = add i64 %47, 6
  %49 = icmp uge i64 %48, 512
  br i1 %49, label %50, label %58

; <label>:50                                      ; preds = %35
  %51 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %52 = load i8*, i8** %str, align 8
  %53 = load %union.rec*, %union.rec** %cs, align 8
  %54 = bitcast %union.rec* %53 to %struct.cr_type*
  %55 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 2, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.FILE_POS* %51, i8* %52, i32 %56)
  br label %58

; <label>:58                                      ; preds = %50, %35
  %59 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %60 = load i8*, i8** %str, align 8
  %61 = call i8* @strcpy(i8* %59, i8* %60) #5
  %62 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %63 = call i8* @strcat(i8* %62, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i32 0, i32 0)) #5
  %64 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %65 = load %union.rec*, %union.rec** %cs, align 8
  %66 = bitcast %union.rec* %65 to %struct.cr_type*
  %67 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %66, i32 0, i32 8
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @StringInt(i32 %68)
  %70 = call i8* @strcat(i8* %64, i8* %69) #5
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** %2, align 8
  %74 = call %union.rec* @MakeWord(i32 11, i8* %72, %struct.FILE_POS* %73)
  %75 = call %union.rec* @CrossMake(%union.rec* %71, %union.rec* %74, i32 132)
  store %union.rec* %75, %union.rec** %res, align 8
  %76 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %76
}

declare i8* @FileName(i16 zeroext) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @StringInt(i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @CrossAddTag(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %ppar = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 0
  %5 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %4, i32 0, i64 0
  %6 = getelementptr inbounds %struct.LIST, %struct.LIST* %5, i32 0, i32 1
  %7 = load %union.rec*, %union.rec** %6, align 8
  store %union.rec* %7, %union.rec** %link, align 8
  br label %8

; <label>:8                                       ; preds = %289, %0
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load %union.rec*, %union.rec** %1, align 8
  %11 = icmp ne %union.rec* %9, %10
  br i1 %11, label %12, label %296

; <label>:12                                      ; preds = %8
  %13 = load %union.rec*, %union.rec** %link, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 0
  %16 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %15, i32 0, i64 1
  %17 = getelementptr inbounds %struct.LIST, %struct.LIST* %16, i32 0, i32 0
  %18 = load %union.rec*, %union.rec** %17, align 8
  store %union.rec* %18, %union.rec** %par, align 8
  br label %19

; <label>:19                                      ; preds = %29, %12
  %20 = load %union.rec*, %union.rec** %par, align 8
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
  %30 = load %union.rec*, %union.rec** %par, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 1
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %par, align 8
  br label %19

; <label>:36                                      ; preds = %19
  %37 = load %union.rec*, %union.rec** %par, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 1
  %40 = bitcast %union.FIRST_UNION* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 10
  br i1 %44, label %45, label %288

; <label>:45                                      ; preds = %36
  %46 = load %union.rec*, %union.rec** %par, align 8
  %47 = bitcast %union.rec* %46 to %struct.closure_type*
  %48 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %47, i32 0, i32 5
  %49 = load %union.rec*, %union.rec** %48, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 2
  %52 = bitcast %union.SECOND_UNION* %51 to %struct.anon.5*
  %53 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %52, i32 0, i32 1
  %54 = bitcast [3 x i8]* %53 to i24*
  %55 = load i24, i24* %54, align 1
  %56 = and i24 %55, 1
  %57 = zext i24 %56 to i32
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %288

; <label>:59                                      ; preds = %45
  %60 = load %union.rec*, %union.rec** %par, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 0
  %63 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %62, i32 0, i64 0
  %64 = getelementptr inbounds %struct.LIST, %struct.LIST* %63, i32 0, i32 1
  %65 = load %union.rec*, %union.rec** %64, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 0
  %68 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %67, i32 0, i64 1
  %69 = getelementptr inbounds %struct.LIST, %struct.LIST* %68, i32 0, i32 0
  %70 = load %union.rec*, %union.rec** %69, align 8
  store %union.rec* %70, %union.rec** %y, align 8
  br label %71

; <label>:71                                      ; preds = %81, %59
  %72 = load %union.rec*, %union.rec** %y, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 1
  %75 = bitcast %union.FIRST_UNION* %74 to %struct.anon*
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %88

; <label>:80                                      ; preds = %71
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load %union.rec*, %union.rec** %y, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 1
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** %y, align 8
  br label %71

; <label>:88                                      ; preds = %71
  %89 = load %union.rec*, %union.rec** %y, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 11
  br i1 %96, label %106, label %97

; <label>:97                                      ; preds = %88
  %98 = load %union.rec*, %union.rec** %y, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 1
  %101 = bitcast %union.FIRST_UNION* %100 to %struct.anon*
  %102 = getelementptr inbounds %struct.anon, %struct.anon* %101, i32 0, i32 0
  %103 = load i8, i8* %102, align 1
  %104 = zext i8 %103 to i32
  %105 = icmp eq i32 %104, 12
  br i1 %105, label %106, label %287

; <label>:106                                     ; preds = %97, %88
  %107 = load %union.rec*, %union.rec** %y, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 4
  %110 = getelementptr inbounds [4 x i8], [4 x i8]* %109, i32 0, i32 0
  %111 = call i32 @strcmp(i8* %110, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %287

; <label>:113                                     ; preds = %106
  %114 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %114, %union.rec** @xx_link, align 8
  %115 = load %union.rec*, %union.rec** @xx_link, align 8
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

; <label>:124                                     ; preds = %113
  br label %166

; <label>:125                                     ; preds = %113
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
  %168 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %168, %union.rec** @zz_hold, align 8
  %169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 0
  %172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %171, i32 0, i64 0
  %173 = getelementptr inbounds %struct.LIST, %struct.LIST* %172, i32 0, i32 1
  %174 = load %union.rec*, %union.rec** %173, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = icmp eq %union.rec* %174, %175
  br i1 %176, label %177, label %178

; <label>:177                                     ; preds = %166
  br label %219

; <label>:178                                     ; preds = %166
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 0
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 1
  %184 = load %union.rec*, %union.rec** %183, align 8
  store %union.rec* %184, %union.rec** @zz_res, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 0
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  %190 = load %union.rec*, %union.rec** %189, align 8
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 0
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 0
  store %union.rec* %190, %union.rec** %195, align 8
  %196 = load %union.rec*, %union.rec** @zz_res, align 8
  %197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 0
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 0
  %202 = load %union.rec*, %union.rec** %201, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 0
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 1
  store %union.rec* %196, %union.rec** %206, align 8
  %207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 0
  %211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %210, i32 0, i64 0
  %212 = getelementptr inbounds %struct.LIST, %struct.LIST* %211, i32 0, i32 1
  store %union.rec* %207, %union.rec** %212, align 8
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %214 = bitcast %union.rec* %213 to %struct.word_type*
  %215 = getelementptr inbounds %struct.word_type, %struct.word_type* %214, i32 0, i32 0
  %216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %215, i32 0, i64 0
  %217 = getelementptr inbounds %struct.LIST, %struct.LIST* %216, i32 0, i32 0
  store %union.rec* %207, %union.rec** %217, align 8
  %218 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %219

; <label>:219                                     ; preds = %178, %177
  %220 = phi %union.rec* [ null, %177 ], [ %218, %178 ]
  %221 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %221, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 1
  %226 = bitcast %union.FIRST_UNION* %225 to %struct.anon*
  %227 = getelementptr inbounds %struct.anon, %struct.anon* %226, i32 0, i32 0
  %228 = load i8, i8* %227, align 1
  %229 = zext i8 %228 to i32
  %230 = icmp eq i32 %229, 11
  br i1 %230, label %240, label %231

; <label>:231                                     ; preds = %219
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = bitcast %union.rec* %232 to %struct.word_type*
  %234 = getelementptr inbounds %struct.word_type, %struct.word_type* %233, i32 0, i32 1
  %235 = bitcast %union.FIRST_UNION* %234 to %struct.anon*
  %236 = getelementptr inbounds %struct.anon, %struct.anon* %235, i32 0, i32 0
  %237 = load i8, i8* %236, align 1
  %238 = zext i8 %237 to i32
  %239 = icmp eq i32 %238, 12
  br i1 %239, label %240, label %248

; <label>:240                                     ; preds = %231, %219
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 1
  %244 = bitcast %union.FIRST_UNION* %243 to %struct.anon*
  %245 = getelementptr inbounds %struct.anon, %struct.anon* %244, i32 0, i32 1
  %246 = load i8, i8* %245, align 1
  %247 = zext i8 %246 to i32
  br label %259

; <label>:248                                     ; preds = %231
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 1
  %252 = bitcast %union.FIRST_UNION* %251 to %struct.anon*
  %253 = getelementptr inbounds %struct.anon, %struct.anon* %252, i32 0, i32 0
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i64
  %256 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %255
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  br label %259

; <label>:259                                     ; preds = %248, %240
  %260 = phi i32 [ %247, %240 ], [ %258, %248 ]
  store i32 %260, i32* @zz_size, align 4
  %261 = load i32, i32* @zz_size, align 4
  %262 = sext i32 %261 to i64
  %263 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %262
  %264 = load %union.rec*, %union.rec** %263, align 8
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 0
  %268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %267, i32 0, i64 0
  %269 = getelementptr inbounds %struct.LIST, %struct.LIST* %268, i32 0, i32 0
  store %union.rec* %264, %union.rec** %269, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = load i32, i32* @zz_size, align 4
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %272
  store %union.rec* %270, %union.rec** %273, align 8
  %274 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 1
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 1
  %279 = load %union.rec*, %union.rec** %278, align 8
  %280 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %281 = icmp eq %union.rec* %279, %280
  br i1 %281, label %282, label %285

; <label>:282                                     ; preds = %259
  %283 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %284 = call i32 @DisposeObject(%union.rec* %283)
  br label %285

; <label>:285                                     ; preds = %282, %259
  %286 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %286, %union.rec** %link, align 8
  br label %287

; <label>:287                                     ; preds = %285, %106, %97
  br label %296

; <label>:288                                     ; preds = %45, %36
  br label %289

; <label>:289                                     ; preds = %288
  %290 = load %union.rec*, %union.rec** %link, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 0
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 1
  %295 = load %union.rec*, %union.rec** %294, align 8
  store %union.rec* %295, %union.rec** %link, align 8
  br label %8

; <label>:296                                     ; preds = %287, %8
  %297 = load %union.rec*, %union.rec** %link, align 8
  %298 = load %union.rec*, %union.rec** %1, align 8
  %299 = icmp eq %union.rec* %297, %298
  br i1 %299, label %300, label %935

; <label>:300                                     ; preds = %296
  store %union.rec* null, %union.rec** %ppar, align 8
  %301 = load %union.rec*, %union.rec** %1, align 8
  %302 = bitcast %union.rec* %301 to %struct.closure_type*
  %303 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %302, i32 0, i32 5
  %304 = load %union.rec*, %union.rec** %303, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 0
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 1
  %309 = load %union.rec*, %union.rec** %308, align 8
  store %union.rec* %309, %union.rec** %link, align 8
  br label %310

; <label>:310                                     ; preds = %373, %300
  %311 = load %union.rec*, %union.rec** %link, align 8
  %312 = load %union.rec*, %union.rec** %1, align 8
  %313 = bitcast %union.rec* %312 to %struct.closure_type*
  %314 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %313, i32 0, i32 5
  %315 = load %union.rec*, %union.rec** %314, align 8
  %316 = icmp ne %union.rec* %311, %315
  br i1 %316, label %317, label %380

; <label>:317                                     ; preds = %310
  %318 = load %union.rec*, %union.rec** %link, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 0
  %321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %320, i32 0, i64 1
  %322 = getelementptr inbounds %struct.LIST, %struct.LIST* %321, i32 0, i32 0
  %323 = load %union.rec*, %union.rec** %322, align 8
  store %union.rec* %323, %union.rec** %y, align 8
  br label %324

; <label>:324                                     ; preds = %334, %317
  %325 = load %union.rec*, %union.rec** %y, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 1
  %328 = bitcast %union.FIRST_UNION* %327 to %struct.anon*
  %329 = getelementptr inbounds %struct.anon, %struct.anon* %328, i32 0, i32 0
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %341

; <label>:333                                     ; preds = %324
  br label %334

; <label>:334                                     ; preds = %333
  %335 = load %union.rec*, %union.rec** %y, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 0
  %338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %337, i32 0, i64 1
  %339 = getelementptr inbounds %struct.LIST, %struct.LIST* %338, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %339, align 8
  store %union.rec* %340, %union.rec** %y, align 8
  br label %324

; <label>:341                                     ; preds = %324
  %342 = load %union.rec*, %union.rec** %y, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 1
  %345 = bitcast %union.FIRST_UNION* %344 to %struct.anon*
  %346 = getelementptr inbounds %struct.anon, %struct.anon* %345, i32 0, i32 0
  %347 = load i8, i8* %346, align 1
  %348 = zext i8 %347 to i32
  %349 = icmp sge i32 %348, 144
  br i1 %349, label %350, label %372

; <label>:350                                     ; preds = %341
  %351 = load %union.rec*, %union.rec** %y, align 8
  %352 = bitcast %union.rec* %351 to %struct.word_type*
  %353 = getelementptr inbounds %struct.word_type, %struct.word_type* %352, i32 0, i32 1
  %354 = bitcast %union.FIRST_UNION* %353 to %struct.anon*
  %355 = getelementptr inbounds %struct.anon, %struct.anon* %354, i32 0, i32 0
  %356 = load i8, i8* %355, align 1
  %357 = zext i8 %356 to i32
  %358 = icmp sle i32 %357, 146
  br i1 %358, label %359, label %372

; <label>:359                                     ; preds = %350
  %360 = load %union.rec*, %union.rec** %y, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 2
  %363 = bitcast %union.SECOND_UNION* %362 to %struct.anon.5*
  %364 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %363, i32 0, i32 1
  %365 = bitcast [3 x i8]* %364 to i24*
  %366 = load i24, i24* %365, align 1
  %367 = and i24 %366, 1
  %368 = zext i24 %367 to i32
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %372

; <label>:370                                     ; preds = %359
  %371 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %371, %union.rec** %ppar, align 8
  br label %380

; <label>:372                                     ; preds = %359, %350, %341
  br label %373

; <label>:373                                     ; preds = %372
  %374 = load %union.rec*, %union.rec** %link, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 0
  %377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %376, i32 0, i64 0
  %378 = getelementptr inbounds %struct.LIST, %struct.LIST* %377, i32 0, i32 1
  %379 = load %union.rec*, %union.rec** %378, align 8
  store %union.rec* %379, %union.rec** %link, align 8
  br label %310

; <label>:380                                     ; preds = %370, %310
  %381 = load %union.rec*, %union.rec** %ppar, align 8
  %382 = icmp ne %union.rec* %381, null
  br i1 %382, label %383, label %934

; <label>:383                                     ; preds = %380
  %384 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %385 = zext i8 %384 to i32
  store i32 %385, i32* @zz_size, align 4
  %386 = sext i32 %385 to i64
  %387 = icmp uge i64 %386, 265
  br i1 %387, label %388, label %391

; <label>:388                                     ; preds = %383
  %389 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %390 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %389)
  br label %416

; <label>:391                                     ; preds = %383
  %392 = load i32, i32* @zz_size, align 4
  %393 = sext i32 %392 to i64
  %394 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %393
  %395 = load %union.rec*, %union.rec** %394, align 8
  %396 = icmp eq %union.rec* %395, null
  br i1 %396, label %397, label %401

; <label>:397                                     ; preds = %391
  %398 = load i32, i32* @zz_size, align 4
  %399 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %400 = call %union.rec* @GetMemory(i32 %398, %struct.FILE_POS* %399)
  store %union.rec* %400, %union.rec** @zz_hold, align 8
  br label %415

; <label>:401                                     ; preds = %391
  %402 = load i32, i32* @zz_size, align 4
  %403 = sext i32 %402 to i64
  %404 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %403
  %405 = load %union.rec*, %union.rec** %404, align 8
  store %union.rec* %405, %union.rec** @zz_hold, align 8
  store %union.rec* %405, %union.rec** @zz_hold, align 8
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 0
  %409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %408, i32 0, i64 0
  %410 = getelementptr inbounds %struct.LIST, %struct.LIST* %409, i32 0, i32 0
  %411 = load %union.rec*, %union.rec** %410, align 8
  %412 = load i32, i32* @zz_size, align 4
  %413 = sext i32 %412 to i64
  %414 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %413
  store %union.rec* %411, %union.rec** %414, align 8
  br label %415

; <label>:415                                     ; preds = %401, %397
  br label %416

; <label>:416                                     ; preds = %415, %388
  %417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %418 = bitcast %union.rec* %417 to %struct.word_type*
  %419 = getelementptr inbounds %struct.word_type, %struct.word_type* %418, i32 0, i32 1
  %420 = bitcast %union.FIRST_UNION* %419 to %struct.anon*
  %421 = getelementptr inbounds %struct.anon, %struct.anon* %420, i32 0, i32 0
  store i8 10, i8* %421, align 1
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 0
  %426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %425, i32 0, i64 1
  %427 = getelementptr inbounds %struct.LIST, %struct.LIST* %426, i32 0, i32 1
  store %union.rec* %422, %union.rec** %427, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = bitcast %union.rec* %428 to %struct.word_type*
  %430 = getelementptr inbounds %struct.word_type, %struct.word_type* %429, i32 0, i32 0
  %431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %430, i32 0, i64 1
  %432 = getelementptr inbounds %struct.LIST, %struct.LIST* %431, i32 0, i32 0
  store %union.rec* %422, %union.rec** %432, align 8
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 0
  %436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %435, i32 0, i64 0
  %437 = getelementptr inbounds %struct.LIST, %struct.LIST* %436, i32 0, i32 1
  store %union.rec* %422, %union.rec** %437, align 8
  %438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %439 = bitcast %union.rec* %438 to %struct.word_type*
  %440 = getelementptr inbounds %struct.word_type, %struct.word_type* %439, i32 0, i32 0
  %441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %440, i32 0, i64 0
  %442 = getelementptr inbounds %struct.LIST, %struct.LIST* %441, i32 0, i32 0
  store %union.rec* %422, %union.rec** %442, align 8
  store %union.rec* %422, %union.rec** %par, align 8
  %443 = load %union.rec*, %union.rec** %ppar, align 8
  %444 = load %union.rec*, %union.rec** %par, align 8
  %445 = bitcast %union.rec* %444 to %struct.closure_type*
  %446 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %445, i32 0, i32 5
  store %union.rec* %443, %union.rec** %446, align 8
  %447 = load %union.rec*, %union.rec** %1, align 8
  %448 = call %union.rec* @CrossGenTag(%union.rec* %447)
  store %union.rec* %448, %union.rec** %y, align 8
  %449 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %450 = zext i8 %449 to i32
  store i32 %450, i32* @zz_size, align 4
  %451 = sext i32 %450 to i64
  %452 = icmp uge i64 %451, 265
  br i1 %452, label %453, label %456

; <label>:453                                     ; preds = %416
  %454 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %455 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %454)
  br label %481

; <label>:456                                     ; preds = %416
  %457 = load i32, i32* @zz_size, align 4
  %458 = sext i32 %457 to i64
  %459 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %458
  %460 = load %union.rec*, %union.rec** %459, align 8
  %461 = icmp eq %union.rec* %460, null
  br i1 %461, label %462, label %466

; <label>:462                                     ; preds = %456
  %463 = load i32, i32* @zz_size, align 4
  %464 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %465 = call %union.rec* @GetMemory(i32 %463, %struct.FILE_POS* %464)
  store %union.rec* %465, %union.rec** @zz_hold, align 8
  br label %480

; <label>:466                                     ; preds = %456
  %467 = load i32, i32* @zz_size, align 4
  %468 = sext i32 %467 to i64
  %469 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %468
  %470 = load %union.rec*, %union.rec** %469, align 8
  store %union.rec* %470, %union.rec** @zz_hold, align 8
  store %union.rec* %470, %union.rec** @zz_hold, align 8
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  %472 = bitcast %union.rec* %471 to %struct.word_type*
  %473 = getelementptr inbounds %struct.word_type, %struct.word_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %473, i32 0, i64 0
  %475 = getelementptr inbounds %struct.LIST, %struct.LIST* %474, i32 0, i32 0
  %476 = load %union.rec*, %union.rec** %475, align 8
  %477 = load i32, i32* @zz_size, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %478
  store %union.rec* %476, %union.rec** %479, align 8
  br label %480

; <label>:480                                     ; preds = %466, %462
  br label %481

; <label>:481                                     ; preds = %480, %453
  %482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %483 = bitcast %union.rec* %482 to %struct.word_type*
  %484 = getelementptr inbounds %struct.word_type, %struct.word_type* %483, i32 0, i32 1
  %485 = bitcast %union.FIRST_UNION* %484 to %struct.anon*
  %486 = getelementptr inbounds %struct.anon, %struct.anon* %485, i32 0, i32 0
  store i8 0, i8* %486, align 1
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %488 = load %union.rec*, %union.rec** @zz_hold, align 8
  %489 = bitcast %union.rec* %488 to %struct.word_type*
  %490 = getelementptr inbounds %struct.word_type, %struct.word_type* %489, i32 0, i32 0
  %491 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %490, i32 0, i64 1
  %492 = getelementptr inbounds %struct.LIST, %struct.LIST* %491, i32 0, i32 1
  store %union.rec* %487, %union.rec** %492, align 8
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = bitcast %union.rec* %493 to %struct.word_type*
  %495 = getelementptr inbounds %struct.word_type, %struct.word_type* %494, i32 0, i32 0
  %496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %495, i32 0, i64 1
  %497 = getelementptr inbounds %struct.LIST, %struct.LIST* %496, i32 0, i32 0
  store %union.rec* %487, %union.rec** %497, align 8
  %498 = load %union.rec*, %union.rec** @zz_hold, align 8
  %499 = bitcast %union.rec* %498 to %struct.word_type*
  %500 = getelementptr inbounds %struct.word_type, %struct.word_type* %499, i32 0, i32 0
  %501 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %500, i32 0, i64 0
  %502 = getelementptr inbounds %struct.LIST, %struct.LIST* %501, i32 0, i32 1
  store %union.rec* %487, %union.rec** %502, align 8
  %503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %504 = bitcast %union.rec* %503 to %struct.word_type*
  %505 = getelementptr inbounds %struct.word_type, %struct.word_type* %504, i32 0, i32 0
  %506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %505, i32 0, i64 0
  %507 = getelementptr inbounds %struct.LIST, %struct.LIST* %506, i32 0, i32 0
  store %union.rec* %487, %union.rec** %507, align 8
  store %union.rec* %487, %union.rec** @xx_link, align 8
  %508 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %508, %union.rec** @zz_res, align 8
  %509 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %509, %union.rec** @zz_hold, align 8
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = icmp eq %union.rec* %510, null
  br i1 %511, label %512, label %514

; <label>:512                                     ; preds = %481
  %513 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %562

; <label>:514                                     ; preds = %481
  %515 = load %union.rec*, %union.rec** @zz_res, align 8
  %516 = icmp eq %union.rec* %515, null
  br i1 %516, label %517, label %519

; <label>:517                                     ; preds = %514
  %518 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %560

; <label>:519                                     ; preds = %514
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 0
  %523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %522, i32 0, i64 0
  %524 = getelementptr inbounds %struct.LIST, %struct.LIST* %523, i32 0, i32 0
  %525 = load %union.rec*, %union.rec** %524, align 8
  store %union.rec* %525, %union.rec** @zz_tmp, align 8
  %526 = load %union.rec*, %union.rec** @zz_res, align 8
  %527 = bitcast %union.rec* %526 to %struct.word_type*
  %528 = getelementptr inbounds %struct.word_type, %struct.word_type* %527, i32 0, i32 0
  %529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %528, i32 0, i64 0
  %530 = getelementptr inbounds %struct.LIST, %struct.LIST* %529, i32 0, i32 0
  %531 = load %union.rec*, %union.rec** %530, align 8
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %533 = bitcast %union.rec* %532 to %struct.word_type*
  %534 = getelementptr inbounds %struct.word_type, %struct.word_type* %533, i32 0, i32 0
  %535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %534, i32 0, i64 0
  %536 = getelementptr inbounds %struct.LIST, %struct.LIST* %535, i32 0, i32 0
  store %union.rec* %531, %union.rec** %536, align 8
  %537 = load %union.rec*, %union.rec** @zz_hold, align 8
  %538 = load %union.rec*, %union.rec** @zz_res, align 8
  %539 = bitcast %union.rec* %538 to %struct.word_type*
  %540 = getelementptr inbounds %struct.word_type, %struct.word_type* %539, i32 0, i32 0
  %541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %540, i32 0, i64 0
  %542 = getelementptr inbounds %struct.LIST, %struct.LIST* %541, i32 0, i32 0
  %543 = load %union.rec*, %union.rec** %542, align 8
  %544 = bitcast %union.rec* %543 to %struct.word_type*
  %545 = getelementptr inbounds %struct.word_type, %struct.word_type* %544, i32 0, i32 0
  %546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %545, i32 0, i64 0
  %547 = getelementptr inbounds %struct.LIST, %struct.LIST* %546, i32 0, i32 1
  store %union.rec* %537, %union.rec** %547, align 8
  %548 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %549 = load %union.rec*, %union.rec** @zz_res, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 0
  %552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %551, i32 0, i64 0
  %553 = getelementptr inbounds %struct.LIST, %struct.LIST* %552, i32 0, i32 0
  store %union.rec* %548, %union.rec** %553, align 8
  %554 = load %union.rec*, %union.rec** @zz_res, align 8
  %555 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %556 = bitcast %union.rec* %555 to %struct.word_type*
  %557 = getelementptr inbounds %struct.word_type, %struct.word_type* %556, i32 0, i32 0
  %558 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %557, i32 0, i64 0
  %559 = getelementptr inbounds %struct.LIST, %struct.LIST* %558, i32 0, i32 1
  store %union.rec* %554, %union.rec** %559, align 8
  br label %560

; <label>:560                                     ; preds = %519, %517
  %561 = phi %union.rec* [ %518, %517 ], [ %554, %519 ]
  br label %562

; <label>:562                                     ; preds = %560, %512
  %563 = phi %union.rec* [ %513, %512 ], [ %561, %560 ]
  %564 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %564, %union.rec** @zz_res, align 8
  %565 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %565, %union.rec** @zz_hold, align 8
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %567 = icmp eq %union.rec* %566, null
  br i1 %567, label %568, label %570

; <label>:568                                     ; preds = %562
  %569 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %618

; <label>:570                                     ; preds = %562
  %571 = load %union.rec*, %union.rec** @zz_res, align 8
  %572 = icmp eq %union.rec* %571, null
  br i1 %572, label %573, label %575

; <label>:573                                     ; preds = %570
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %616

; <label>:575                                     ; preds = %570
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %577 = bitcast %union.rec* %576 to %struct.word_type*
  %578 = getelementptr inbounds %struct.word_type, %struct.word_type* %577, i32 0, i32 0
  %579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %578, i32 0, i64 1
  %580 = getelementptr inbounds %struct.LIST, %struct.LIST* %579, i32 0, i32 0
  %581 = load %union.rec*, %union.rec** %580, align 8
  store %union.rec* %581, %union.rec** @zz_tmp, align 8
  %582 = load %union.rec*, %union.rec** @zz_res, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 0
  %585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %584, i32 0, i64 1
  %586 = getelementptr inbounds %struct.LIST, %struct.LIST* %585, i32 0, i32 0
  %587 = load %union.rec*, %union.rec** %586, align 8
  %588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %589 = bitcast %union.rec* %588 to %struct.word_type*
  %590 = getelementptr inbounds %struct.word_type, %struct.word_type* %589, i32 0, i32 0
  %591 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %590, i32 0, i64 1
  %592 = getelementptr inbounds %struct.LIST, %struct.LIST* %591, i32 0, i32 0
  store %union.rec* %587, %union.rec** %592, align 8
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %594 = load %union.rec*, %union.rec** @zz_res, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 0
  %597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %596, i32 0, i64 1
  %598 = getelementptr inbounds %struct.LIST, %struct.LIST* %597, i32 0, i32 0
  %599 = load %union.rec*, %union.rec** %598, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 1
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 1
  store %union.rec* %593, %union.rec** %603, align 8
  %604 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %605 = load %union.rec*, %union.rec** @zz_res, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 1
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 0
  store %union.rec* %604, %union.rec** %609, align 8
  %610 = load %union.rec*, %union.rec** @zz_res, align 8
  %611 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %612 = bitcast %union.rec* %611 to %struct.word_type*
  %613 = getelementptr inbounds %struct.word_type, %struct.word_type* %612, i32 0, i32 0
  %614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %613, i32 0, i64 1
  %615 = getelementptr inbounds %struct.LIST, %struct.LIST* %614, i32 0, i32 1
  store %union.rec* %610, %union.rec** %615, align 8
  br label %616

; <label>:616                                     ; preds = %575, %573
  %617 = phi %union.rec* [ %574, %573 ], [ %610, %575 ]
  br label %618

; <label>:618                                     ; preds = %616, %568
  %619 = phi %union.rec* [ %569, %568 ], [ %617, %616 ]
  %620 = load %union.rec*, %union.rec** %ppar, align 8
  %621 = bitcast %union.rec* %620 to %struct.word_type*
  %622 = getelementptr inbounds %struct.word_type, %struct.word_type* %621, i32 0, i32 1
  %623 = bitcast %union.FIRST_UNION* %622 to %struct.anon*
  %624 = getelementptr inbounds %struct.anon, %struct.anon* %623, i32 0, i32 0
  %625 = load i8, i8* %624, align 1
  %626 = zext i8 %625 to i32
  switch i32 %626, label %762 [
    i32 144, label %627
    i32 145, label %634
    i32 146, label %708
  ]

; <label>:627                                     ; preds = %618
  %628 = load %union.rec*, %union.rec** %1, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 0
  %631 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %630, i32 0, i64 0
  %632 = getelementptr inbounds %struct.LIST, %struct.LIST* %631, i32 0, i32 1
  %633 = load %union.rec*, %union.rec** %632, align 8
  store %union.rec* %633, %union.rec** %link, align 8
  br label %762

; <label>:634                                     ; preds = %618
  %635 = load %union.rec*, %union.rec** %1, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 0
  %638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %637, i32 0, i64 0
  %639 = getelementptr inbounds %struct.LIST, %struct.LIST* %638, i32 0, i32 1
  %640 = load %union.rec*, %union.rec** %639, align 8
  store %union.rec* %640, %union.rec** %link, align 8
  %641 = load %union.rec*, %union.rec** %1, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 0
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 1
  %646 = load %union.rec*, %union.rec** %645, align 8
  %647 = load %union.rec*, %union.rec** %1, align 8
  %648 = icmp ne %union.rec* %646, %647
  br i1 %648, label %649, label %707

; <label>:649                                     ; preds = %634
  %650 = load %union.rec*, %union.rec** %1, align 8
  %651 = bitcast %union.rec* %650 to %struct.word_type*
  %652 = getelementptr inbounds %struct.word_type, %struct.word_type* %651, i32 0, i32 0
  %653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %652, i32 0, i64 0
  %654 = getelementptr inbounds %struct.LIST, %struct.LIST* %653, i32 0, i32 1
  %655 = load %union.rec*, %union.rec** %654, align 8
  %656 = bitcast %union.rec* %655 to %struct.word_type*
  %657 = getelementptr inbounds %struct.word_type, %struct.word_type* %656, i32 0, i32 0
  %658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %657, i32 0, i64 1
  %659 = getelementptr inbounds %struct.LIST, %struct.LIST* %658, i32 0, i32 0
  %660 = load %union.rec*, %union.rec** %659, align 8
  store %union.rec* %660, %union.rec** %y, align 8
  br label %661

; <label>:661                                     ; preds = %671, %649
  %662 = load %union.rec*, %union.rec** %y, align 8
  %663 = bitcast %union.rec* %662 to %struct.word_type*
  %664 = getelementptr inbounds %struct.word_type, %struct.word_type* %663, i32 0, i32 1
  %665 = bitcast %union.FIRST_UNION* %664 to %struct.anon*
  %666 = getelementptr inbounds %struct.anon, %struct.anon* %665, i32 0, i32 0
  %667 = load i8, i8* %666, align 1
  %668 = zext i8 %667 to i32
  %669 = icmp eq i32 %668, 0
  br i1 %669, label %670, label %678

; <label>:670                                     ; preds = %661
  br label %671

; <label>:671                                     ; preds = %670
  %672 = load %union.rec*, %union.rec** %y, align 8
  %673 = bitcast %union.rec* %672 to %struct.word_type*
  %674 = getelementptr inbounds %struct.word_type, %struct.word_type* %673, i32 0, i32 0
  %675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %674, i32 0, i64 1
  %676 = getelementptr inbounds %struct.LIST, %struct.LIST* %675, i32 0, i32 0
  %677 = load %union.rec*, %union.rec** %676, align 8
  store %union.rec* %677, %union.rec** %y, align 8
  br label %661

; <label>:678                                     ; preds = %661
  %679 = load %union.rec*, %union.rec** %y, align 8
  %680 = bitcast %union.rec* %679 to %struct.word_type*
  %681 = getelementptr inbounds %struct.word_type, %struct.word_type* %680, i32 0, i32 1
  %682 = bitcast %union.FIRST_UNION* %681 to %struct.anon*
  %683 = getelementptr inbounds %struct.anon, %struct.anon* %682, i32 0, i32 0
  %684 = load i8, i8* %683, align 1
  %685 = zext i8 %684 to i32
  %686 = icmp eq i32 %685, 10
  br i1 %686, label %687, label %706

; <label>:687                                     ; preds = %678
  %688 = load %union.rec*, %union.rec** %y, align 8
  %689 = bitcast %union.rec* %688 to %struct.closure_type*
  %690 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %689, i32 0, i32 5
  %691 = load %union.rec*, %union.rec** %690, align 8
  %692 = bitcast %union.rec* %691 to %struct.word_type*
  %693 = getelementptr inbounds %struct.word_type, %struct.word_type* %692, i32 0, i32 1
  %694 = bitcast %union.FIRST_UNION* %693 to %struct.anon*
  %695 = getelementptr inbounds %struct.anon, %struct.anon* %694, i32 0, i32 0
  %696 = load i8, i8* %695, align 1
  %697 = zext i8 %696 to i32
  %698 = icmp eq i32 %697, 144
  br i1 %698, label %699, label %706

; <label>:699                                     ; preds = %687
  %700 = load %union.rec*, %union.rec** %link, align 8
  %701 = bitcast %union.rec* %700 to %struct.word_type*
  %702 = getelementptr inbounds %struct.word_type, %struct.word_type* %701, i32 0, i32 0
  %703 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %702, i32 0, i64 0
  %704 = getelementptr inbounds %struct.LIST, %struct.LIST* %703, i32 0, i32 1
  %705 = load %union.rec*, %union.rec** %704, align 8
  store %union.rec* %705, %union.rec** %link, align 8
  br label %706

; <label>:706                                     ; preds = %699, %687, %678
  br label %707

; <label>:707                                     ; preds = %706, %634
  br label %762

; <label>:708                                     ; preds = %618
  %709 = load %union.rec*, %union.rec** %1, align 8
  %710 = bitcast %union.rec* %709 to %struct.word_type*
  %711 = getelementptr inbounds %struct.word_type, %struct.word_type* %710, i32 0, i32 0
  %712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %711, i32 0, i64 0
  %713 = getelementptr inbounds %struct.LIST, %struct.LIST* %712, i32 0, i32 1
  %714 = load %union.rec*, %union.rec** %713, align 8
  store %union.rec* %714, %union.rec** %link, align 8
  br label %715

; <label>:715                                     ; preds = %754, %708
  %716 = load %union.rec*, %union.rec** %link, align 8
  %717 = load %union.rec*, %union.rec** %1, align 8
  %718 = icmp ne %union.rec* %716, %717
  br i1 %718, label %719, label %761

; <label>:719                                     ; preds = %715
  %720 = load %union.rec*, %union.rec** %link, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 0
  %723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %722, i32 0, i64 1
  %724 = getelementptr inbounds %struct.LIST, %struct.LIST* %723, i32 0, i32 0
  %725 = load %union.rec*, %union.rec** %724, align 8
  store %union.rec* %725, %union.rec** %y, align 8
  br label %726

; <label>:726                                     ; preds = %736, %719
  %727 = load %union.rec*, %union.rec** %y, align 8
  %728 = bitcast %union.rec* %727 to %struct.word_type*
  %729 = getelementptr inbounds %struct.word_type, %struct.word_type* %728, i32 0, i32 1
  %730 = bitcast %union.FIRST_UNION* %729 to %struct.anon*
  %731 = getelementptr inbounds %struct.anon, %struct.anon* %730, i32 0, i32 0
  %732 = load i8, i8* %731, align 1
  %733 = zext i8 %732 to i32
  %734 = icmp eq i32 %733, 0
  br i1 %734, label %735, label %743

; <label>:735                                     ; preds = %726
  br label %736

; <label>:736                                     ; preds = %735
  %737 = load %union.rec*, %union.rec** %y, align 8
  %738 = bitcast %union.rec* %737 to %struct.word_type*
  %739 = getelementptr inbounds %struct.word_type, %struct.word_type* %738, i32 0, i32 0
  %740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %739, i32 0, i64 1
  %741 = getelementptr inbounds %struct.LIST, %struct.LIST* %740, i32 0, i32 0
  %742 = load %union.rec*, %union.rec** %741, align 8
  store %union.rec* %742, %union.rec** %y, align 8
  br label %726

; <label>:743                                     ; preds = %726
  %744 = load %union.rec*, %union.rec** %y, align 8
  %745 = bitcast %union.rec* %744 to %struct.word_type*
  %746 = getelementptr inbounds %struct.word_type, %struct.word_type* %745, i32 0, i32 1
  %747 = bitcast %union.FIRST_UNION* %746 to %struct.anon*
  %748 = getelementptr inbounds %struct.anon, %struct.anon* %747, i32 0, i32 0
  %749 = load i8, i8* %748, align 1
  %750 = zext i8 %749 to i32
  %751 = icmp ne i32 %750, 10
  br i1 %751, label %752, label %753

; <label>:752                                     ; preds = %743
  br label %761

; <label>:753                                     ; preds = %743
  br label %754

; <label>:754                                     ; preds = %753
  %755 = load %union.rec*, %union.rec** %link, align 8
  %756 = bitcast %union.rec* %755 to %struct.word_type*
  %757 = getelementptr inbounds %struct.word_type, %struct.word_type* %756, i32 0, i32 0
  %758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %757, i32 0, i64 0
  %759 = getelementptr inbounds %struct.LIST, %struct.LIST* %758, i32 0, i32 1
  %760 = load %union.rec*, %union.rec** %759, align 8
  store %union.rec* %760, %union.rec** %link, align 8
  br label %715

; <label>:761                                     ; preds = %752, %715
  br label %762

; <label>:762                                     ; preds = %618, %761, %707, %627
  %763 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %764 = zext i8 %763 to i32
  store i32 %764, i32* @zz_size, align 4
  %765 = sext i32 %764 to i64
  %766 = icmp uge i64 %765, 265
  br i1 %766, label %767, label %770

; <label>:767                                     ; preds = %762
  %768 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %769 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %768)
  br label %795

; <label>:770                                     ; preds = %762
  %771 = load i32, i32* @zz_size, align 4
  %772 = sext i32 %771 to i64
  %773 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %772
  %774 = load %union.rec*, %union.rec** %773, align 8
  %775 = icmp eq %union.rec* %774, null
  br i1 %775, label %776, label %780

; <label>:776                                     ; preds = %770
  %777 = load i32, i32* @zz_size, align 4
  %778 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %779 = call %union.rec* @GetMemory(i32 %777, %struct.FILE_POS* %778)
  store %union.rec* %779, %union.rec** @zz_hold, align 8
  br label %794

; <label>:780                                     ; preds = %770
  %781 = load i32, i32* @zz_size, align 4
  %782 = sext i32 %781 to i64
  %783 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %782
  %784 = load %union.rec*, %union.rec** %783, align 8
  store %union.rec* %784, %union.rec** @zz_hold, align 8
  store %union.rec* %784, %union.rec** @zz_hold, align 8
  %785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %786 = bitcast %union.rec* %785 to %struct.word_type*
  %787 = getelementptr inbounds %struct.word_type, %struct.word_type* %786, i32 0, i32 0
  %788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %787, i32 0, i64 0
  %789 = getelementptr inbounds %struct.LIST, %struct.LIST* %788, i32 0, i32 0
  %790 = load %union.rec*, %union.rec** %789, align 8
  %791 = load i32, i32* @zz_size, align 4
  %792 = sext i32 %791 to i64
  %793 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %792
  store %union.rec* %790, %union.rec** %793, align 8
  br label %794

; <label>:794                                     ; preds = %780, %776
  br label %795

; <label>:795                                     ; preds = %794, %767
  %796 = load %union.rec*, %union.rec** @zz_hold, align 8
  %797 = bitcast %union.rec* %796 to %struct.word_type*
  %798 = getelementptr inbounds %struct.word_type, %struct.word_type* %797, i32 0, i32 1
  %799 = bitcast %union.FIRST_UNION* %798 to %struct.anon*
  %800 = getelementptr inbounds %struct.anon, %struct.anon* %799, i32 0, i32 0
  store i8 0, i8* %800, align 1
  %801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %803 = bitcast %union.rec* %802 to %struct.word_type*
  %804 = getelementptr inbounds %struct.word_type, %struct.word_type* %803, i32 0, i32 0
  %805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %804, i32 0, i64 1
  %806 = getelementptr inbounds %struct.LIST, %struct.LIST* %805, i32 0, i32 1
  store %union.rec* %801, %union.rec** %806, align 8
  %807 = load %union.rec*, %union.rec** @zz_hold, align 8
  %808 = bitcast %union.rec* %807 to %struct.word_type*
  %809 = getelementptr inbounds %struct.word_type, %struct.word_type* %808, i32 0, i32 0
  %810 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %809, i32 0, i64 1
  %811 = getelementptr inbounds %struct.LIST, %struct.LIST* %810, i32 0, i32 0
  store %union.rec* %801, %union.rec** %811, align 8
  %812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %813 = bitcast %union.rec* %812 to %struct.word_type*
  %814 = getelementptr inbounds %struct.word_type, %struct.word_type* %813, i32 0, i32 0
  %815 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %814, i32 0, i64 0
  %816 = getelementptr inbounds %struct.LIST, %struct.LIST* %815, i32 0, i32 1
  store %union.rec* %801, %union.rec** %816, align 8
  %817 = load %union.rec*, %union.rec** @zz_hold, align 8
  %818 = bitcast %union.rec* %817 to %struct.word_type*
  %819 = getelementptr inbounds %struct.word_type, %struct.word_type* %818, i32 0, i32 0
  %820 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %819, i32 0, i64 0
  %821 = getelementptr inbounds %struct.LIST, %struct.LIST* %820, i32 0, i32 0
  store %union.rec* %801, %union.rec** %821, align 8
  store %union.rec* %801, %union.rec** @xx_link, align 8
  %822 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %822, %union.rec** @zz_res, align 8
  %823 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %823, %union.rec** @zz_hold, align 8
  %824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %825 = icmp eq %union.rec* %824, null
  br i1 %825, label %826, label %828

; <label>:826                                     ; preds = %795
  %827 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %876

; <label>:828                                     ; preds = %795
  %829 = load %union.rec*, %union.rec** @zz_res, align 8
  %830 = icmp eq %union.rec* %829, null
  br i1 %830, label %831, label %833

; <label>:831                                     ; preds = %828
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %874

; <label>:833                                     ; preds = %828
  %834 = load %union.rec*, %union.rec** @zz_hold, align 8
  %835 = bitcast %union.rec* %834 to %struct.word_type*
  %836 = getelementptr inbounds %struct.word_type, %struct.word_type* %835, i32 0, i32 0
  %837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %836, i32 0, i64 0
  %838 = getelementptr inbounds %struct.LIST, %struct.LIST* %837, i32 0, i32 0
  %839 = load %union.rec*, %union.rec** %838, align 8
  store %union.rec* %839, %union.rec** @zz_tmp, align 8
  %840 = load %union.rec*, %union.rec** @zz_res, align 8
  %841 = bitcast %union.rec* %840 to %struct.word_type*
  %842 = getelementptr inbounds %struct.word_type, %struct.word_type* %841, i32 0, i32 0
  %843 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %842, i32 0, i64 0
  %844 = getelementptr inbounds %struct.LIST, %struct.LIST* %843, i32 0, i32 0
  %845 = load %union.rec*, %union.rec** %844, align 8
  %846 = load %union.rec*, %union.rec** @zz_hold, align 8
  %847 = bitcast %union.rec* %846 to %struct.word_type*
  %848 = getelementptr inbounds %struct.word_type, %struct.word_type* %847, i32 0, i32 0
  %849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %848, i32 0, i64 0
  %850 = getelementptr inbounds %struct.LIST, %struct.LIST* %849, i32 0, i32 0
  store %union.rec* %845, %union.rec** %850, align 8
  %851 = load %union.rec*, %union.rec** @zz_hold, align 8
  %852 = load %union.rec*, %union.rec** @zz_res, align 8
  %853 = bitcast %union.rec* %852 to %struct.word_type*
  %854 = getelementptr inbounds %struct.word_type, %struct.word_type* %853, i32 0, i32 0
  %855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %854, i32 0, i64 0
  %856 = getelementptr inbounds %struct.LIST, %struct.LIST* %855, i32 0, i32 0
  %857 = load %union.rec*, %union.rec** %856, align 8
  %858 = bitcast %union.rec* %857 to %struct.word_type*
  %859 = getelementptr inbounds %struct.word_type, %struct.word_type* %858, i32 0, i32 0
  %860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %859, i32 0, i64 0
  %861 = getelementptr inbounds %struct.LIST, %struct.LIST* %860, i32 0, i32 1
  store %union.rec* %851, %union.rec** %861, align 8
  %862 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %863 = load %union.rec*, %union.rec** @zz_res, align 8
  %864 = bitcast %union.rec* %863 to %struct.word_type*
  %865 = getelementptr inbounds %struct.word_type, %struct.word_type* %864, i32 0, i32 0
  %866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %865, i32 0, i64 0
  %867 = getelementptr inbounds %struct.LIST, %struct.LIST* %866, i32 0, i32 0
  store %union.rec* %862, %union.rec** %867, align 8
  %868 = load %union.rec*, %union.rec** @zz_res, align 8
  %869 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %870 = bitcast %union.rec* %869 to %struct.word_type*
  %871 = getelementptr inbounds %struct.word_type, %struct.word_type* %870, i32 0, i32 0
  %872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %871, i32 0, i64 0
  %873 = getelementptr inbounds %struct.LIST, %struct.LIST* %872, i32 0, i32 1
  store %union.rec* %868, %union.rec** %873, align 8
  br label %874

; <label>:874                                     ; preds = %833, %831
  %875 = phi %union.rec* [ %832, %831 ], [ %868, %833 ]
  br label %876

; <label>:876                                     ; preds = %874, %826
  %877 = phi %union.rec* [ %827, %826 ], [ %875, %874 ]
  %878 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %878, %union.rec** @zz_res, align 8
  %879 = load %union.rec*, %union.rec** %par, align 8
  store %union.rec* %879, %union.rec** @zz_hold, align 8
  %880 = load %union.rec*, %union.rec** @zz_hold, align 8
  %881 = icmp eq %union.rec* %880, null
  br i1 %881, label %882, label %884

; <label>:882                                     ; preds = %876
  %883 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %932

; <label>:884                                     ; preds = %876
  %885 = load %union.rec*, %union.rec** @zz_res, align 8
  %886 = icmp eq %union.rec* %885, null
  br i1 %886, label %887, label %889

; <label>:887                                     ; preds = %884
  %888 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %930

; <label>:889                                     ; preds = %884
  %890 = load %union.rec*, %union.rec** @zz_hold, align 8
  %891 = bitcast %union.rec* %890 to %struct.word_type*
  %892 = getelementptr inbounds %struct.word_type, %struct.word_type* %891, i32 0, i32 0
  %893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %892, i32 0, i64 1
  %894 = getelementptr inbounds %struct.LIST, %struct.LIST* %893, i32 0, i32 0
  %895 = load %union.rec*, %union.rec** %894, align 8
  store %union.rec* %895, %union.rec** @zz_tmp, align 8
  %896 = load %union.rec*, %union.rec** @zz_res, align 8
  %897 = bitcast %union.rec* %896 to %struct.word_type*
  %898 = getelementptr inbounds %struct.word_type, %struct.word_type* %897, i32 0, i32 0
  %899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %898, i32 0, i64 1
  %900 = getelementptr inbounds %struct.LIST, %struct.LIST* %899, i32 0, i32 0
  %901 = load %union.rec*, %union.rec** %900, align 8
  %902 = load %union.rec*, %union.rec** @zz_hold, align 8
  %903 = bitcast %union.rec* %902 to %struct.word_type*
  %904 = getelementptr inbounds %struct.word_type, %struct.word_type* %903, i32 0, i32 0
  %905 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %904, i32 0, i64 1
  %906 = getelementptr inbounds %struct.LIST, %struct.LIST* %905, i32 0, i32 0
  store %union.rec* %901, %union.rec** %906, align 8
  %907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %908 = load %union.rec*, %union.rec** @zz_res, align 8
  %909 = bitcast %union.rec* %908 to %struct.word_type*
  %910 = getelementptr inbounds %struct.word_type, %struct.word_type* %909, i32 0, i32 0
  %911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %910, i32 0, i64 1
  %912 = getelementptr inbounds %struct.LIST, %struct.LIST* %911, i32 0, i32 0
  %913 = load %union.rec*, %union.rec** %912, align 8
  %914 = bitcast %union.rec* %913 to %struct.word_type*
  %915 = getelementptr inbounds %struct.word_type, %struct.word_type* %914, i32 0, i32 0
  %916 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %915, i32 0, i64 1
  %917 = getelementptr inbounds %struct.LIST, %struct.LIST* %916, i32 0, i32 1
  store %union.rec* %907, %union.rec** %917, align 8
  %918 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %919 = load %union.rec*, %union.rec** @zz_res, align 8
  %920 = bitcast %union.rec* %919 to %struct.word_type*
  %921 = getelementptr inbounds %struct.word_type, %struct.word_type* %920, i32 0, i32 0
  %922 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %921, i32 0, i64 1
  %923 = getelementptr inbounds %struct.LIST, %struct.LIST* %922, i32 0, i32 0
  store %union.rec* %918, %union.rec** %923, align 8
  %924 = load %union.rec*, %union.rec** @zz_res, align 8
  %925 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %926 = bitcast %union.rec* %925 to %struct.word_type*
  %927 = getelementptr inbounds %struct.word_type, %struct.word_type* %926, i32 0, i32 0
  %928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %927, i32 0, i64 1
  %929 = getelementptr inbounds %struct.LIST, %struct.LIST* %928, i32 0, i32 1
  store %union.rec* %924, %union.rec** %929, align 8
  br label %930

; <label>:930                                     ; preds = %889, %887
  %931 = phi %union.rec* [ %888, %887 ], [ %924, %889 ]
  br label %932

; <label>:932                                     ; preds = %930, %882
  %933 = phi %union.rec* [ %883, %882 ], [ %931, %930 ]
  br label %934

; <label>:934                                     ; preds = %932, %380
  br label %935

; <label>:935                                     ; preds = %934, %296
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @CrossGenTag(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %file_name = alloca i8*, align 8
  %sym = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %fnum = alloca i16, align 2
  %seq = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.closure_type*
  %4 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3, i32 0, i32 5
  %5 = load %union.rec*, %union.rec** %4, align 8
  store %union.rec* %5, %union.rec** %sym, align 8
  %6 = load %union.rec*, %union.rec** %sym, align 8
  %7 = bitcast %union.rec* %6 to %struct.symbol_type*
  %8 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %7, i32 0, i32 8
  %9 = load %union.rec*, %union.rec** %8, align 8
  %10 = icmp eq %union.rec* %9, null
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %12)
  br label %13

; <label>:13                                      ; preds = %11, %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 1
  %17 = bitcast %union.FIRST_UNION* %16 to %struct.FILE_POS*
  %18 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %17, i32 0, i32 2
  %19 = load i16, i16* %18, align 2
  store i16 %19, i16* %fnum, align 2
  %20 = load i16, i16* %fnum, align 2
  %21 = call i8* @FileName(i16 zeroext %20)
  store i8* %21, i8** %file_name, align 8
  %22 = load %union.rec*, %union.rec** %sym, align 8
  %23 = load i16, i16* %fnum, align 2
  %24 = call i32 @crtab_getnext(%union.rec* %22, i16 zeroext %23, %struct.anon.14** @crossref_tab)
  store i32 %24, i32* %seq, align 4
  %25 = load i8*, i8** %file_name, align 8
  %26 = call i64 @strlen(i8* %25) #4
  %27 = add i64 %26, 20
  %28 = icmp uge i64 %27, 512
  br i1 %28, label %29, label %36

; <label>:29                                      ; preds = %13
  %30 = load %union.rec*, %union.rec** %1, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 1
  %33 = bitcast %union.FIRST_UNION* %32 to %struct.FILE_POS*
  %34 = load i8*, i8** %file_name, align 8
  %35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 3, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.57, i32 0, i32 0), i32 1, %struct.FILE_POS* %33, i8* %34)
  br label %36

; <label>:36                                      ; preds = %29, %13
  %37 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %38 = load %union.rec*, %union.rec** %sym, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 1
  %41 = bitcast %union.FIRST_UNION* %40 to %struct.FILE_POS*
  %42 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %41, i32 0, i32 2
  %43 = load i16, i16* %42, align 2
  %44 = zext i16 %43 to i32
  %45 = load %union.rec*, %union.rec** %sym, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.FILE_POS*
  %49 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = and i32 %50, 1048575
  %52 = load i8*, i8** %file_name, align 8
  %53 = load i32, i32* %seq, align 4
  %54 = call i32 (i8*, i8*, ...) @sprintf(i8* %37, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.58, i32 0, i32 0), i32 %44, i32 %51, i8* %52, i32 %53) #5
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %1, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 1
  %59 = bitcast %union.FIRST_UNION* %58 to %struct.FILE_POS*
  %60 = call %union.rec* @MakeWord(i32 12, i8* %55, %struct.FILE_POS* %59)
  store %union.rec* %60, %union.rec** %res, align 8
  %61 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %61
}

; Function Attrs: nounwind uwtable
define %union.rec* @CrossExpand(%union.rec* %x, %union.rec* %env, %struct.STYLE* %style, %union.rec** %crs, %union.rec** %res_env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.STYLE*, align 8
  %4 = alloca %union.rec**, align 8
  %5 = alloca %union.rec**, align 8
  %sym = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %db = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %ctype = alloca i32, align 4
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %seq = alloca [512 x i8], align 16
  %str = alloca i8*, align 8
  %fnum = alloca i16, align 2
  %dfnum = alloca i16, align 2
  %tagerror = alloca i32, align 4
  %cont = alloca i64, align 8
  %dfpos = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %new_seq = alloca i32, align 4
  %envt = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  store %struct.STYLE* %style, %struct.STYLE** %3, align 8
  store %union.rec** %crs, %union.rec*** %4, align 8
  store %union.rec** %res_env, %union.rec*** %5, align 8
  store i32 0, i32* %tagerror, align 4
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 1
  %9 = bitcast %union.FIRST_UNION* %8 to %struct.anon*
  %10 = getelementptr inbounds %struct.anon, %struct.anon* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 6
  br i1 %13, label %26, label %14

; <label>:14                                      ; preds = %0
  %15 = load %union.rec*, %union.rec** %1, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 1
  %18 = bitcast %union.FIRST_UNION* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 7
  br i1 %22, label %26, label %23

; <label>:23                                      ; preds = %14
  %24 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i32 0, i32 0))
  br label %26

; <label>:26                                      ; preds = %23, %14, %0
  %27 = load %union.rec*, %union.rec** %1, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %29, i32 0, i64 0
  %31 = getelementptr inbounds %struct.LIST, %struct.LIST* %30, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %31, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 0
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %36, align 8
  %38 = load %union.rec*, %union.rec** %1, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 0
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  %44 = icmp eq %union.rec* %37, %43
  br i1 %44, label %48, label %45

; <label>:45                                      ; preds = %26
  %46 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %47 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %46, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0))
  br label %48

; <label>:48                                      ; preds = %45, %26
  %49 = load %union.rec*, %union.rec** %1, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %51, i32 0, i64 0
  %53 = getelementptr inbounds %struct.LIST, %struct.LIST* %52, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** %tag, align 8
  br label %60

; <label>:60                                      ; preds = %70, %48
  %61 = load %union.rec*, %union.rec** %tag, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 1
  %64 = bitcast %union.FIRST_UNION* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %77

; <label>:69                                      ; preds = %60
  br label %70

; <label>:70                                      ; preds = %69
  %71 = load %union.rec*, %union.rec** %tag, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 1
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %75, align 8
  store %union.rec* %76, %union.rec** %tag, align 8
  br label %60

; <label>:77                                      ; preds = %60
  %78 = load %union.rec*, %union.rec** %tag, align 8
  %79 = load %union.rec*, %union.rec** %2, align 8
  %80 = load %struct.STYLE*, %struct.STYLE** %3, align 8
  %81 = load %union.rec**, %union.rec*** %4, align 8
  %82 = call %union.rec* @Manifest(%union.rec* %78, %union.rec* %79, %struct.STYLE* %80, %union.rec** getelementptr inbounds ([2 x %union.rec*], [2 x %union.rec*]* @nbt, i32 0, i32 0), %union.rec** getelementptr inbounds ([2 x %union.rec*], [2 x %union.rec*]* @nft, i32 0, i32 0), %union.rec** @ntarget, %union.rec** %81, i32 0, i32 0, %union.rec** @nenclose, i32 0)
  store %union.rec* %82, %union.rec** %tag, align 8
  %83 = load %union.rec*, %union.rec** %tag, align 8
  %84 = call %union.rec* @ReplaceWithTidy(%union.rec* %83, i32 1)
  store %union.rec* %84, %union.rec** %tag, align 8
  %85 = load %union.rec*, %union.rec** %1, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %87, i32 0, i64 0
  %89 = getelementptr inbounds %struct.LIST, %struct.LIST* %88, i32 0, i32 1
  %90 = load %union.rec*, %union.rec** %89, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 0
  %93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %92, i32 0, i64 1
  %94 = getelementptr inbounds %struct.LIST, %struct.LIST* %93, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %94, align 8
  store %union.rec* %95, %union.rec** %y, align 8
  br label %96

; <label>:96                                      ; preds = %106, %77
  %97 = load %union.rec*, %union.rec** %y, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 1
  %100 = bitcast %union.FIRST_UNION* %99 to %struct.anon*
  %101 = getelementptr inbounds %struct.anon, %struct.anon* %100, i32 0, i32 0
  %102 = load i8, i8* %101, align 1
  %103 = zext i8 %102 to i32
  %104 = icmp eq i32 %103, 0
  br i1 %104, label %105, label %113

; <label>:105                                     ; preds = %96
  br label %106

; <label>:106                                     ; preds = %105
  %107 = load %union.rec*, %union.rec** %y, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %109, i32 0, i64 1
  %111 = getelementptr inbounds %struct.LIST, %struct.LIST* %110, i32 0, i32 0
  %112 = load %union.rec*, %union.rec** %111, align 8
  store %union.rec* %112, %union.rec** %y, align 8
  br label %96

; <label>:113                                     ; preds = %96
  %114 = load %union.rec*, %union.rec** %y, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 1
  %117 = bitcast %union.FIRST_UNION* %116 to %struct.anon*
  %118 = getelementptr inbounds %struct.anon, %struct.anon* %117, i32 0, i32 0
  %119 = load i8, i8* %118, align 1
  %120 = zext i8 %119 to i32
  %121 = icmp eq i32 %120, 2
  br i1 %121, label %125, label %122

; <label>:122                                     ; preds = %113
  %123 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %124 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i32 0, i32 0))
  br label %125

; <label>:125                                     ; preds = %122, %113
  %126 = load %union.rec*, %union.rec** %y, align 8
  %127 = bitcast %union.rec* %126 to %struct.closure_type*
  %128 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %127, i32 0, i32 5
  %129 = load %union.rec*, %union.rec** %128, align 8
  store %union.rec* %129, %union.rec** %sym, align 8
  %130 = load %union.rec*, %union.rec** %tag, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 1
  %133 = bitcast %union.FIRST_UNION* %132 to %struct.anon*
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 0
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  %137 = icmp eq i32 %136, 11
  br i1 %137, label %148, label %138

; <label>:138                                     ; preds = %125
  %139 = load %union.rec*, %union.rec** %tag, align 8
  %140 = bitcast %union.rec* %139 to %struct.word_type*
  %141 = getelementptr inbounds %struct.word_type, %struct.word_type* %140, i32 0, i32 1
  %142 = bitcast %union.FIRST_UNION* %141 to %struct.anon*
  %143 = getelementptr inbounds %struct.anon, %struct.anon* %142, i32 0, i32 0
  %144 = load i8, i8* %143, align 1
  %145 = zext i8 %144 to i32
  %146 = icmp eq i32 %145, 12
  br i1 %146, label %148, label %147

; <label>:147                                     ; preds = %138
  br label %186

; <label>:148                                     ; preds = %138, %125
  %149 = load %union.rec*, %union.rec** %tag, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 4
  %152 = getelementptr inbounds [4 x i8], [4 x i8]* %151, i32 0, i32 0
  %153 = call i32 @strcmp(i8* %152, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %156

; <label>:155                                     ; preds = %148
  br label %184

; <label>:156                                     ; preds = %148
  %157 = load %union.rec*, %union.rec** %tag, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 4
  %160 = getelementptr inbounds [4 x i8], [4 x i8]* %159, i32 0, i32 0
  %161 = call i32 @strcmp(i8* %160, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0)) #4
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

; <label>:163                                     ; preds = %156
  br label %182

; <label>:164                                     ; preds = %156
  %165 = load %union.rec*, %union.rec** %tag, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 4
  %168 = getelementptr inbounds [4 x i8], [4 x i8]* %167, i32 0, i32 0
  %169 = call i32 @strcmp(i8* %168, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0)) #4
  %170 = icmp eq i32 %169, 0
  br i1 %170, label %171, label %172

; <label>:171                                     ; preds = %164
  br label %180

; <label>:172                                     ; preds = %164
  %173 = load %union.rec*, %union.rec** %tag, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 4
  %176 = getelementptr inbounds [4 x i8], [4 x i8]* %175, i32 0, i32 0
  %177 = call i32 @strcmp(i8* %176, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0)) #4
  %178 = icmp eq i32 %177, 0
  %179 = select i1 %178, i32 127, i32 126
  br label %180

; <label>:180                                     ; preds = %172, %171
  %181 = phi i32 [ 128, %171 ], [ %179, %172 ]
  br label %182

; <label>:182                                     ; preds = %180, %163
  %183 = phi i32 [ 134, %163 ], [ %181, %180 ]
  br label %184

; <label>:184                                     ; preds = %182, %155
  %185 = phi i32 [ 2, %155 ], [ %183, %182 ]
  br label %186

; <label>:186                                     ; preds = %184, %147
  %187 = phi i32 [ 1, %147 ], [ %185, %184 ]
  store i32 %187, i32* %ctype, align 4
  store %union.rec* null, %union.rec** %res, align 8
  %188 = load i32, i32* %ctype, align 4
  switch i32 %188, label %940 [
    i32 1, label %189
    i32 2, label %195
    i32 126, label %201
    i32 134, label %355
    i32 127, label %355
    i32 128, label %355
  ]

; <label>:189                                     ; preds = %186
  %190 = load %union.rec*, %union.rec** %tag, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 1
  %193 = bitcast %union.FIRST_UNION* %192 to %struct.FILE_POS*
  %194 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %193, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  br label %943

; <label>:195                                     ; preds = %186
  %196 = load %union.rec*, %union.rec** %tag, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 1
  %199 = bitcast %union.FIRST_UNION* %198 to %struct.FILE_POS*
  %200 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 5, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %199, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0))
  br label %943

; <label>:201                                     ; preds = %186
  %202 = load %union.rec*, %union.rec** %sym, align 8
  %203 = bitcast %union.rec* %202 to %struct.symbol_type*
  %204 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %203, i32 0, i32 8
  %205 = load %union.rec*, %union.rec** %204, align 8
  %206 = icmp eq %union.rec* %205, null
  br i1 %206, label %207, label %209

; <label>:207                                     ; preds = %201
  %208 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %208)
  br label %209

; <label>:209                                     ; preds = %207, %201
  %210 = load %union.rec*, %union.rec** %sym, align 8
  %211 = bitcast %union.rec* %210 to %struct.symbol_type*
  %212 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %211, i32 0, i32 8
  %213 = load %union.rec*, %union.rec** %212, align 8
  store %union.rec* %213, %union.rec** %cs, align 8
  %214 = load %union.rec*, %union.rec** %sym, align 8
  %215 = load %union.rec*, %union.rec** @MomentSym, align 8
  %216 = icmp eq %union.rec* %214, %215
  br i1 %216, label %217, label %226

; <label>:217                                     ; preds = %209
  %218 = load %union.rec*, %union.rec** %tag, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 4
  %221 = getelementptr inbounds [4 x i8], [4 x i8]* %220, i32 0, i32 0
  %222 = call i32 @strcmp(i8* %221, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.14, i32 0, i32 0)) #4
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %226

; <label>:224                                     ; preds = %217
  %225 = call %union.rec* @StartMoment()
  store %union.rec* %225, %union.rec** %res, align 8
  br label %354

; <label>:226                                     ; preds = %217, %209
  %227 = load %union.rec*, %union.rec** %sym, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 2
  %230 = bitcast %union.SECOND_UNION* %229 to %struct.anon.5*
  %231 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %230, i32 0, i32 1
  %232 = bitcast [3 x i8]* %231 to i24*
  %233 = load i24, i24* %232, align 1
  %234 = lshr i24 %233, 1
  %235 = and i24 %234, 1
  %236 = zext i24 %235 to i32
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %246, label %238

; <label>:238                                     ; preds = %226
  %239 = load %union.rec*, %union.rec** %1, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 1
  %242 = bitcast %union.FIRST_UNION* %241 to %struct.FILE_POS*
  %243 = load %union.rec*, %union.rec** %sym, align 8
  %244 = call i8* @SymName(%union.rec* %243)
  %245 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 6, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %242, i8* %244, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %tagerror, align 4
  br label %246

; <label>:246                                     ; preds = %238, %226
  %247 = load %union.rec*, %union.rec** %cs, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 0
  %250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %249, i32 0, i64 1
  %251 = getelementptr inbounds %struct.LIST, %struct.LIST* %250, i32 0, i32 1
  %252 = load %union.rec*, %union.rec** %251, align 8
  %253 = bitcast %union.rec* %252 to %struct.word_type*
  %254 = getelementptr inbounds %struct.word_type, %struct.word_type* %253, i32 0, i32 0
  %255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %254, i32 0, i64 1
  %256 = getelementptr inbounds %struct.LIST, %struct.LIST* %255, i32 0, i32 1
  %257 = load %union.rec*, %union.rec** %256, align 8
  store %union.rec* %257, %union.rec** %link, align 8
  br label %258

; <label>:258                                     ; preds = %346, %246
  %259 = load %union.rec*, %union.rec** %link, align 8
  %260 = load %union.rec*, %union.rec** %cs, align 8
  %261 = icmp ne %union.rec* %259, %260
  br i1 %261, label %262, label %353

; <label>:262                                     ; preds = %258
  %263 = load %union.rec*, %union.rec** %link, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 0
  %266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %265, i32 0, i64 0
  %267 = getelementptr inbounds %struct.LIST, %struct.LIST* %266, i32 0, i32 0
  %268 = load %union.rec*, %union.rec** %267, align 8
  store %union.rec* %268, %union.rec** %db, align 8
  br label %269

; <label>:269                                     ; preds = %279, %262
  %270 = load %union.rec*, %union.rec** %db, align 8
  %271 = bitcast %union.rec* %270 to %struct.word_type*
  %272 = getelementptr inbounds %struct.word_type, %struct.word_type* %271, i32 0, i32 1
  %273 = bitcast %union.FIRST_UNION* %272 to %struct.anon*
  %274 = getelementptr inbounds %struct.anon, %struct.anon* %273, i32 0, i32 0
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %278, label %286

; <label>:278                                     ; preds = %269
  br label %279

; <label>:279                                     ; preds = %278
  %280 = load %union.rec*, %union.rec** %db, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 0
  %283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %282, i32 0, i64 0
  %284 = getelementptr inbounds %struct.LIST, %struct.LIST* %283, i32 0, i32 0
  %285 = load %union.rec*, %union.rec** %284, align 8
  store %union.rec* %285, %union.rec** %db, align 8
  br label %269

; <label>:286                                     ; preds = %269
  %287 = load %union.rec*, %union.rec** %db, align 8
  %288 = bitcast %union.rec* %287 to %struct.word_type*
  %289 = getelementptr inbounds %struct.word_type, %struct.word_type* %288, i32 0, i32 1
  %290 = bitcast %union.FIRST_UNION* %289 to %struct.anon*
  %291 = getelementptr inbounds %struct.anon, %struct.anon* %290, i32 0, i32 0
  %292 = load i8, i8* %291, align 1
  %293 = zext i8 %292 to i32
  %294 = icmp eq i32 %293, 11
  br i1 %294, label %307, label %295

; <label>:295                                     ; preds = %286
  %296 = load %union.rec*, %union.rec** %db, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 1
  %299 = bitcast %union.FIRST_UNION* %298 to %struct.anon*
  %300 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 0
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp eq i32 %302, 12
  br i1 %303, label %307, label %304

; <label>:304                                     ; preds = %295
  %305 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %306 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %305, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i32 0, i32 0))
  br label %307

; <label>:307                                     ; preds = %304, %295, %286
  %308 = load %union.rec*, %union.rec** %db, align 8
  %309 = load %union.rec*, %union.rec** %sym, align 8
  %310 = load %union.rec*, %union.rec** %tag, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 4
  %313 = getelementptr inbounds [4 x i8], [4 x i8]* %312, i32 0, i32 0
  %314 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %315 = call i32 @DbRetrieve(%union.rec* %308, i32 0, %union.rec* %309, i8* %313, i8* %314, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %317, label %345

; <label>:317                                     ; preds = %307
  call void @SwitchScope(%union.rec* null)
  store i32 0, i32* %count, align 4
  %318 = load %union.rec*, %union.rec** %db, align 8
  %319 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %320 = icmp ne %union.rec* %318, %319
  br i1 %320, label %321, label %323

; <label>:321                                     ; preds = %317
  %322 = load %union.rec*, %union.rec** %2, align 8
  call void @SetScope(%union.rec* %322, i32* %count, i32 0)
  br label %324

; <label>:323                                     ; preds = %317
  br label %324

; <label>:324                                     ; preds = %323, %321
  %325 = load i16, i16* %dfnum, align 2
  %326 = load i64, i64* %dfpos, align 8
  %327 = load i32, i32* %dlnum, align 4
  %328 = call %union.rec* @ReadFromFile(i16 zeroext %325, i64 %326, i32 %327)
  store %union.rec* %328, %union.rec** %res, align 8
  store i32 1, i32* %i, align 4
  br label %329

; <label>:329                                     ; preds = %334, %324
  %330 = load i32, i32* %i, align 4
  %331 = load i32, i32* %count, align 4
  %332 = icmp sle i32 %330, %331
  br i1 %332, label %333, label %337

; <label>:333                                     ; preds = %329
  call void @PopScope()
  br label %334

; <label>:334                                     ; preds = %333
  %335 = load i32, i32* %i, align 4
  %336 = add nsw i32 %335, 1
  store i32 %336, i32* %i, align 4
  br label %329

; <label>:337                                     ; preds = %329
  call void @UnSwitchScope(%union.rec* null)
  %338 = load %union.rec*, %union.rec** %db, align 8
  %339 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %340 = icmp ne %union.rec* %338, %339
  br i1 %340, label %341, label %344

; <label>:341                                     ; preds = %337
  %342 = load %union.rec*, %union.rec** %2, align 8
  %343 = load %union.rec*, %union.rec** %res, align 8
  call void @AttachEnv(%union.rec* %342, %union.rec* %343)
  br label %344

; <label>:344                                     ; preds = %341, %337
  br label %353

; <label>:345                                     ; preds = %307
  br label %346

; <label>:346                                     ; preds = %345
  %347 = load %union.rec*, %union.rec** %link, align 8
  %348 = bitcast %union.rec* %347 to %struct.word_type*
  %349 = getelementptr inbounds %struct.word_type, %struct.word_type* %348, i32 0, i32 0
  %350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %349, i32 0, i64 1
  %351 = getelementptr inbounds %struct.LIST, %struct.LIST* %350, i32 0, i32 1
  %352 = load %union.rec*, %union.rec** %351, align 8
  store %union.rec* %352, %union.rec** %link, align 8
  br label %258

; <label>:353                                     ; preds = %344, %258
  br label %354

; <label>:354                                     ; preds = %353, %224
  br label %943

; <label>:355                                     ; preds = %186, %186, %186
  %356 = load %union.rec*, %union.rec** %sym, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 2
  %359 = bitcast %union.SECOND_UNION* %358 to %struct.anon.5*
  %360 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %359, i32 0, i32 1
  %361 = bitcast [3 x i8]* %360 to i24*
  %362 = load i24, i24* %361, align 1
  %363 = lshr i24 %362, 1
  %364 = and i24 %363, 1
  %365 = zext i24 %364 to i32
  %366 = icmp ne i32 %365, 0
  br i1 %366, label %367, label %931

; <label>:367                                     ; preds = %355
  %368 = load %union.rec*, %union.rec** %sym, align 8
  %369 = bitcast %union.rec* %368 to %struct.symbol_type*
  %370 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %369, i32 0, i32 8
  %371 = load %union.rec*, %union.rec** %370, align 8
  %372 = icmp eq %union.rec* %371, null
  br i1 %372, label %373, label %375

; <label>:373                                     ; preds = %367
  %374 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %374)
  br label %375

; <label>:375                                     ; preds = %373, %367
  %376 = load %union.rec*, %union.rec** %sym, align 8
  %377 = bitcast %union.rec* %376 to %struct.symbol_type*
  %378 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %377, i32 0, i32 8
  %379 = load %union.rec*, %union.rec** %378, align 8
  store %union.rec* %379, %union.rec** %cs, align 8
  %380 = load %union.rec*, %union.rec** %cs, align 8
  %381 = icmp ne %union.rec* %380, null
  br i1 %381, label %385, label %382

; <label>:382                                     ; preds = %375
  %383 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %384 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %383, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.18, i32 0, i32 0))
  br label %385

; <label>:385                                     ; preds = %382, %375
  %386 = load %union.rec*, %union.rec** %cs, align 8
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 1
  %389 = bitcast %union.FIRST_UNION* %388 to %struct.anon*
  %390 = getelementptr inbounds %struct.anon, %struct.anon* %389, i32 0, i32 0
  %391 = load i8, i8* %390, align 1
  %392 = zext i8 %391 to i32
  %393 = icmp eq i32 %392, 140
  br i1 %393, label %397, label %394

; <label>:394                                     ; preds = %385
  %395 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %396 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %395, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.19, i32 0, i32 0))
  br label %397

; <label>:397                                     ; preds = %394, %385
  %398 = load %union.rec*, %union.rec** %tag, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 1
  %401 = bitcast %union.FIRST_UNION* %400 to %struct.FILE_POS*
  %402 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %401, i32 0, i32 2
  %403 = load i16, i16* %402, align 2
  store i16 %403, i16* %fnum, align 2
  %404 = load %union.rec*, %union.rec** %sym, align 8
  %405 = load i16, i16* %fnum, align 2
  %406 = call i32 @crtab_getnext(%union.rec* %404, i16 zeroext %405, %struct.anon.14** @crossref_tab)
  store i32 %406, i32* %new_seq, align 4
  %407 = load i16, i16* %fnum, align 2
  %408 = call i8* @FileName(i16 zeroext %407)
  store i8* %408, i8** %str, align 8
  %409 = load i8*, i8** %str, align 8
  %410 = call i64 @strlen(i8* %409) #4
  %411 = add i64 %410, 5
  %412 = icmp uge i64 %411, 512
  br i1 %412, label %413, label %421

; <label>:413                                     ; preds = %397
  %414 = load %union.rec*, %union.rec** %1, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 1
  %417 = bitcast %union.FIRST_UNION* %416 to %struct.FILE_POS*
  %418 = load i8*, i8** %str, align 8
  %419 = load i32, i32* %new_seq, align 4
  %420 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 7, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.20, i32 0, i32 0), i32 1, %struct.FILE_POS* %417, i8* %418, i32 %419)
  br label %421

; <label>:421                                     ; preds = %413, %397
  %422 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %423 = load i8*, i8** %str, align 8
  %424 = call i8* @strcpy(i8* %422, i8* %423) #5
  %425 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %426 = call i8* @strcat(i8* %425, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.21, i32 0, i32 0)) #5
  %427 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %428 = load i32, i32* %new_seq, align 4
  %429 = call i8* @StringInt(i32 %428)
  %430 = call i8* @strcat(i8* %427, i8* %429) #5
  %431 = load %union.rec*, %union.rec** %sym, align 8
  %432 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %433 = load %union.rec*, %union.rec** %tag, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 1
  %436 = bitcast %union.FIRST_UNION* %435 to %struct.FILE_POS*
  %437 = call %union.rec* @MakeWord(i32 11, i8* %432, %struct.FILE_POS* %436)
  %438 = load i32, i32* %ctype, align 4
  %439 = call %union.rec* @CrossMake(%union.rec* %431, %union.rec* %437, i32 %438)
  store %union.rec* %439, %union.rec** %tmp, align 8
  %440 = load i32, i32* %ctype, align 4
  %441 = sext i32 %440 to i64
  %442 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %441
  %443 = load i8, i8* %442, align 1
  %444 = zext i8 %443 to i32
  store i32 %444, i32* @zz_size, align 4
  %445 = sext i32 %444 to i64
  %446 = icmp uge i64 %445, 265
  br i1 %446, label %447, label %450

; <label>:447                                     ; preds = %421
  %448 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %449 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %448)
  br label %475

; <label>:450                                     ; preds = %421
  %451 = load i32, i32* @zz_size, align 4
  %452 = sext i32 %451 to i64
  %453 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %452
  %454 = load %union.rec*, %union.rec** %453, align 8
  %455 = icmp eq %union.rec* %454, null
  br i1 %455, label %456, label %460

; <label>:456                                     ; preds = %450
  %457 = load i32, i32* @zz_size, align 4
  %458 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %459 = call %union.rec* @GetMemory(i32 %457, %struct.FILE_POS* %458)
  store %union.rec* %459, %union.rec** @zz_hold, align 8
  br label %474

; <label>:460                                     ; preds = %450
  %461 = load i32, i32* @zz_size, align 4
  %462 = sext i32 %461 to i64
  %463 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %462
  %464 = load %union.rec*, %union.rec** %463, align 8
  store %union.rec* %464, %union.rec** @zz_hold, align 8
  store %union.rec* %464, %union.rec** @zz_hold, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %466 = bitcast %union.rec* %465 to %struct.word_type*
  %467 = getelementptr inbounds %struct.word_type, %struct.word_type* %466, i32 0, i32 0
  %468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %467, i32 0, i64 0
  %469 = getelementptr inbounds %struct.LIST, %struct.LIST* %468, i32 0, i32 0
  %470 = load %union.rec*, %union.rec** %469, align 8
  %471 = load i32, i32* @zz_size, align 4
  %472 = sext i32 %471 to i64
  %473 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %472
  store %union.rec* %470, %union.rec** %473, align 8
  br label %474

; <label>:474                                     ; preds = %460, %456
  br label %475

; <label>:475                                     ; preds = %474, %447
  %476 = load i32, i32* %ctype, align 4
  %477 = trunc i32 %476 to i8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 1
  %481 = bitcast %union.FIRST_UNION* %480 to %struct.anon*
  %482 = getelementptr inbounds %struct.anon, %struct.anon* %481, i32 0, i32 0
  store i8 %477, i8* %482, align 1
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 0
  %487 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %486, i32 0, i64 1
  %488 = getelementptr inbounds %struct.LIST, %struct.LIST* %487, i32 0, i32 1
  store %union.rec* %483, %union.rec** %488, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = bitcast %union.rec* %489 to %struct.word_type*
  %491 = getelementptr inbounds %struct.word_type, %struct.word_type* %490, i32 0, i32 0
  %492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %491, i32 0, i64 1
  %493 = getelementptr inbounds %struct.LIST, %struct.LIST* %492, i32 0, i32 0
  store %union.rec* %483, %union.rec** %493, align 8
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = bitcast %union.rec* %494 to %struct.word_type*
  %496 = getelementptr inbounds %struct.word_type, %struct.word_type* %495, i32 0, i32 0
  %497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %496, i32 0, i64 0
  %498 = getelementptr inbounds %struct.LIST, %struct.LIST* %497, i32 0, i32 1
  store %union.rec* %483, %union.rec** %498, align 8
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 0
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 0
  store %union.rec* %483, %union.rec** %503, align 8
  store %union.rec* %483, %union.rec** %index, align 8
  %504 = load %union.rec*, %union.rec** %tmp, align 8
  %505 = load %union.rec*, %union.rec** %index, align 8
  %506 = bitcast %union.rec* %505 to %struct.closure_type*
  %507 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %506, i32 0, i32 5
  store %union.rec* %504, %union.rec** %507, align 8
  %508 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %509 = zext i8 %508 to i32
  store i32 %509, i32* @zz_size, align 4
  %510 = sext i32 %509 to i64
  %511 = icmp uge i64 %510, 265
  br i1 %511, label %512, label %515

; <label>:512                                     ; preds = %475
  %513 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %514 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %513)
  br label %540

; <label>:515                                     ; preds = %475
  %516 = load i32, i32* @zz_size, align 4
  %517 = sext i32 %516 to i64
  %518 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %517
  %519 = load %union.rec*, %union.rec** %518, align 8
  %520 = icmp eq %union.rec* %519, null
  br i1 %520, label %521, label %525

; <label>:521                                     ; preds = %515
  %522 = load i32, i32* @zz_size, align 4
  %523 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %524 = call %union.rec* @GetMemory(i32 %522, %struct.FILE_POS* %523)
  store %union.rec* %524, %union.rec** @zz_hold, align 8
  br label %539

; <label>:525                                     ; preds = %515
  %526 = load i32, i32* @zz_size, align 4
  %527 = sext i32 %526 to i64
  %528 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %527
  %529 = load %union.rec*, %union.rec** %528, align 8
  store %union.rec* %529, %union.rec** @zz_hold, align 8
  store %union.rec* %529, %union.rec** @zz_hold, align 8
  %530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 0
  %533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %532, i32 0, i64 0
  %534 = getelementptr inbounds %struct.LIST, %struct.LIST* %533, i32 0, i32 0
  %535 = load %union.rec*, %union.rec** %534, align 8
  %536 = load i32, i32* @zz_size, align 4
  %537 = sext i32 %536 to i64
  %538 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %537
  store %union.rec* %535, %union.rec** %538, align 8
  br label %539

; <label>:539                                     ; preds = %525, %521
  br label %540

; <label>:540                                     ; preds = %539, %512
  %541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %542 = bitcast %union.rec* %541 to %struct.word_type*
  %543 = getelementptr inbounds %struct.word_type, %struct.word_type* %542, i32 0, i32 1
  %544 = bitcast %union.FIRST_UNION* %543 to %struct.anon*
  %545 = getelementptr inbounds %struct.anon, %struct.anon* %544, i32 0, i32 0
  store i8 0, i8* %545, align 1
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %548 = bitcast %union.rec* %547 to %struct.word_type*
  %549 = getelementptr inbounds %struct.word_type, %struct.word_type* %548, i32 0, i32 0
  %550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %549, i32 0, i64 1
  %551 = getelementptr inbounds %struct.LIST, %struct.LIST* %550, i32 0, i32 1
  store %union.rec* %546, %union.rec** %551, align 8
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 0
  %555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %554, i32 0, i64 1
  %556 = getelementptr inbounds %struct.LIST, %struct.LIST* %555, i32 0, i32 0
  store %union.rec* %546, %union.rec** %556, align 8
  %557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %558 = bitcast %union.rec* %557 to %struct.word_type*
  %559 = getelementptr inbounds %struct.word_type, %struct.word_type* %558, i32 0, i32 0
  %560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %559, i32 0, i64 0
  %561 = getelementptr inbounds %struct.LIST, %struct.LIST* %560, i32 0, i32 1
  store %union.rec* %546, %union.rec** %561, align 8
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 0
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  store %union.rec* %546, %union.rec** %566, align 8
  store %union.rec* %546, %union.rec** @xx_link, align 8
  %567 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %567, %union.rec** @zz_res, align 8
  %568 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %568, %union.rec** @zz_hold, align 8
  %569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %570 = icmp eq %union.rec* %569, null
  br i1 %570, label %571, label %573

; <label>:571                                     ; preds = %540
  %572 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %621

; <label>:573                                     ; preds = %540
  %574 = load %union.rec*, %union.rec** @zz_res, align 8
  %575 = icmp eq %union.rec* %574, null
  br i1 %575, label %576, label %578

; <label>:576                                     ; preds = %573
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %619

; <label>:578                                     ; preds = %573
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 0
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 0
  %584 = load %union.rec*, %union.rec** %583, align 8
  store %union.rec* %584, %union.rec** @zz_tmp, align 8
  %585 = load %union.rec*, %union.rec** @zz_res, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 0
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 0
  %590 = load %union.rec*, %union.rec** %589, align 8
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 0
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 0
  store %union.rec* %590, %union.rec** %595, align 8
  %596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %597 = load %union.rec*, %union.rec** @zz_res, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 0
  %600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %599, i32 0, i64 0
  %601 = getelementptr inbounds %struct.LIST, %struct.LIST* %600, i32 0, i32 0
  %602 = load %union.rec*, %union.rec** %601, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 0
  %605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %604, i32 0, i64 0
  %606 = getelementptr inbounds %struct.LIST, %struct.LIST* %605, i32 0, i32 1
  store %union.rec* %596, %union.rec** %606, align 8
  %607 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %608 = load %union.rec*, %union.rec** @zz_res, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 0
  %611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %610, i32 0, i64 0
  %612 = getelementptr inbounds %struct.LIST, %struct.LIST* %611, i32 0, i32 0
  store %union.rec* %607, %union.rec** %612, align 8
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  %614 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %615 = bitcast %union.rec* %614 to %struct.word_type*
  %616 = getelementptr inbounds %struct.word_type, %struct.word_type* %615, i32 0, i32 0
  %617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %616, i32 0, i64 0
  %618 = getelementptr inbounds %struct.LIST, %struct.LIST* %617, i32 0, i32 1
  store %union.rec* %613, %union.rec** %618, align 8
  br label %619

; <label>:619                                     ; preds = %578, %576
  %620 = phi %union.rec* [ %577, %576 ], [ %613, %578 ]
  br label %621

; <label>:621                                     ; preds = %619, %571
  %622 = phi %union.rec* [ %572, %571 ], [ %620, %619 ]
  %623 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %623, %union.rec** @zz_res, align 8
  %624 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %624, %union.rec** @zz_hold, align 8
  %625 = load %union.rec*, %union.rec** @zz_hold, align 8
  %626 = icmp eq %union.rec* %625, null
  br i1 %626, label %627, label %629

; <label>:627                                     ; preds = %621
  %628 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %677

; <label>:629                                     ; preds = %621
  %630 = load %union.rec*, %union.rec** @zz_res, align 8
  %631 = icmp eq %union.rec* %630, null
  br i1 %631, label %632, label %634

; <label>:632                                     ; preds = %629
  %633 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %675

; <label>:634                                     ; preds = %629
  %635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 0
  %638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %637, i32 0, i64 1
  %639 = getelementptr inbounds %struct.LIST, %struct.LIST* %638, i32 0, i32 0
  %640 = load %union.rec*, %union.rec** %639, align 8
  store %union.rec* %640, %union.rec** @zz_tmp, align 8
  %641 = load %union.rec*, %union.rec** @zz_res, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 1
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 0
  %646 = load %union.rec*, %union.rec** %645, align 8
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %648 = bitcast %union.rec* %647 to %struct.word_type*
  %649 = getelementptr inbounds %struct.word_type, %struct.word_type* %648, i32 0, i32 0
  %650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %649, i32 0, i64 1
  %651 = getelementptr inbounds %struct.LIST, %struct.LIST* %650, i32 0, i32 0
  store %union.rec* %646, %union.rec** %651, align 8
  %652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %653 = load %union.rec*, %union.rec** @zz_res, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 0
  %656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %655, i32 0, i64 1
  %657 = getelementptr inbounds %struct.LIST, %struct.LIST* %656, i32 0, i32 0
  %658 = load %union.rec*, %union.rec** %657, align 8
  %659 = bitcast %union.rec* %658 to %struct.word_type*
  %660 = getelementptr inbounds %struct.word_type, %struct.word_type* %659, i32 0, i32 0
  %661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %660, i32 0, i64 1
  %662 = getelementptr inbounds %struct.LIST, %struct.LIST* %661, i32 0, i32 1
  store %union.rec* %652, %union.rec** %662, align 8
  %663 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %664 = load %union.rec*, %union.rec** @zz_res, align 8
  %665 = bitcast %union.rec* %664 to %struct.word_type*
  %666 = getelementptr inbounds %struct.word_type, %struct.word_type* %665, i32 0, i32 0
  %667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %666, i32 0, i64 1
  %668 = getelementptr inbounds %struct.LIST, %struct.LIST* %667, i32 0, i32 0
  store %union.rec* %663, %union.rec** %668, align 8
  %669 = load %union.rec*, %union.rec** @zz_res, align 8
  %670 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 0
  %673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %672, i32 0, i64 1
  %674 = getelementptr inbounds %struct.LIST, %struct.LIST* %673, i32 0, i32 1
  store %union.rec* %669, %union.rec** %674, align 8
  br label %675

; <label>:675                                     ; preds = %634, %632
  %676 = phi %union.rec* [ %633, %632 ], [ %669, %634 ]
  br label %677

; <label>:677                                     ; preds = %675, %627
  %678 = phi %union.rec* [ %628, %627 ], [ %676, %675 ]
  %679 = load %union.rec**, %union.rec*** %4, align 8
  %680 = load %union.rec*, %union.rec** %679, align 8
  %681 = icmp eq %union.rec* %680, null
  br i1 %681, label %682, label %743

; <label>:682                                     ; preds = %677
  %683 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 148), align 1
  %684 = zext i8 %683 to i32
  store i32 %684, i32* @zz_size, align 4
  %685 = sext i32 %684 to i64
  %686 = icmp uge i64 %685, 265
  br i1 %686, label %687, label %690

; <label>:687                                     ; preds = %682
  %688 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %689 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %688)
  br label %715

; <label>:690                                     ; preds = %682
  %691 = load i32, i32* @zz_size, align 4
  %692 = sext i32 %691 to i64
  %693 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %692
  %694 = load %union.rec*, %union.rec** %693, align 8
  %695 = icmp eq %union.rec* %694, null
  br i1 %695, label %696, label %700

; <label>:696                                     ; preds = %690
  %697 = load i32, i32* @zz_size, align 4
  %698 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %699 = call %union.rec* @GetMemory(i32 %697, %struct.FILE_POS* %698)
  store %union.rec* %699, %union.rec** @zz_hold, align 8
  br label %714

; <label>:700                                     ; preds = %690
  %701 = load i32, i32* @zz_size, align 4
  %702 = sext i32 %701 to i64
  %703 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %702
  %704 = load %union.rec*, %union.rec** %703, align 8
  store %union.rec* %704, %union.rec** @zz_hold, align 8
  store %union.rec* %704, %union.rec** @zz_hold, align 8
  %705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %706 = bitcast %union.rec* %705 to %struct.word_type*
  %707 = getelementptr inbounds %struct.word_type, %struct.word_type* %706, i32 0, i32 0
  %708 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %707, i32 0, i64 0
  %709 = getelementptr inbounds %struct.LIST, %struct.LIST* %708, i32 0, i32 0
  %710 = load %union.rec*, %union.rec** %709, align 8
  %711 = load i32, i32* @zz_size, align 4
  %712 = sext i32 %711 to i64
  %713 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %712
  store %union.rec* %710, %union.rec** %713, align 8
  br label %714

; <label>:714                                     ; preds = %700, %696
  br label %715

; <label>:715                                     ; preds = %714, %687
  %716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %717 = bitcast %union.rec* %716 to %struct.word_type*
  %718 = getelementptr inbounds %struct.word_type, %struct.word_type* %717, i32 0, i32 1
  %719 = bitcast %union.FIRST_UNION* %718 to %struct.anon*
  %720 = getelementptr inbounds %struct.anon, %struct.anon* %719, i32 0, i32 0
  store i8 -108, i8* %720, align 1
  %721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %722 = load %union.rec*, %union.rec** @zz_hold, align 8
  %723 = bitcast %union.rec* %722 to %struct.word_type*
  %724 = getelementptr inbounds %struct.word_type, %struct.word_type* %723, i32 0, i32 0
  %725 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %724, i32 0, i64 1
  %726 = getelementptr inbounds %struct.LIST, %struct.LIST* %725, i32 0, i32 1
  store %union.rec* %721, %union.rec** %726, align 8
  %727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %728 = bitcast %union.rec* %727 to %struct.word_type*
  %729 = getelementptr inbounds %struct.word_type, %struct.word_type* %728, i32 0, i32 0
  %730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %729, i32 0, i64 1
  %731 = getelementptr inbounds %struct.LIST, %struct.LIST* %730, i32 0, i32 0
  store %union.rec* %721, %union.rec** %731, align 8
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %733 = bitcast %union.rec* %732 to %struct.word_type*
  %734 = getelementptr inbounds %struct.word_type, %struct.word_type* %733, i32 0, i32 0
  %735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %734, i32 0, i64 0
  %736 = getelementptr inbounds %struct.LIST, %struct.LIST* %735, i32 0, i32 1
  store %union.rec* %721, %union.rec** %736, align 8
  %737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %738 = bitcast %union.rec* %737 to %struct.word_type*
  %739 = getelementptr inbounds %struct.word_type, %struct.word_type* %738, i32 0, i32 0
  %740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %739, i32 0, i64 0
  %741 = getelementptr inbounds %struct.LIST, %struct.LIST* %740, i32 0, i32 0
  store %union.rec* %721, %union.rec** %741, align 8
  %742 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %721, %union.rec** %742, align 8
  br label %743

; <label>:743                                     ; preds = %715, %677
  %744 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %745 = zext i8 %744 to i32
  store i32 %745, i32* @zz_size, align 4
  %746 = sext i32 %745 to i64
  %747 = icmp uge i64 %746, 265
  br i1 %747, label %748, label %751

; <label>:748                                     ; preds = %743
  %749 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %750 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %749)
  br label %776

; <label>:751                                     ; preds = %743
  %752 = load i32, i32* @zz_size, align 4
  %753 = sext i32 %752 to i64
  %754 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %753
  %755 = load %union.rec*, %union.rec** %754, align 8
  %756 = icmp eq %union.rec* %755, null
  br i1 %756, label %757, label %761

; <label>:757                                     ; preds = %751
  %758 = load i32, i32* @zz_size, align 4
  %759 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %760 = call %union.rec* @GetMemory(i32 %758, %struct.FILE_POS* %759)
  store %union.rec* %760, %union.rec** @zz_hold, align 8
  br label %775

; <label>:761                                     ; preds = %751
  %762 = load i32, i32* @zz_size, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %763
  %765 = load %union.rec*, %union.rec** %764, align 8
  store %union.rec* %765, %union.rec** @zz_hold, align 8
  store %union.rec* %765, %union.rec** @zz_hold, align 8
  %766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %767 = bitcast %union.rec* %766 to %struct.word_type*
  %768 = getelementptr inbounds %struct.word_type, %struct.word_type* %767, i32 0, i32 0
  %769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %768, i32 0, i64 0
  %770 = getelementptr inbounds %struct.LIST, %struct.LIST* %769, i32 0, i32 0
  %771 = load %union.rec*, %union.rec** %770, align 8
  %772 = load i32, i32* @zz_size, align 4
  %773 = sext i32 %772 to i64
  %774 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %773
  store %union.rec* %771, %union.rec** %774, align 8
  br label %775

; <label>:775                                     ; preds = %761, %757
  br label %776

; <label>:776                                     ; preds = %775, %748
  %777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 1
  %780 = bitcast %union.FIRST_UNION* %779 to %struct.anon*
  %781 = getelementptr inbounds %struct.anon, %struct.anon* %780, i32 0, i32 0
  store i8 0, i8* %781, align 1
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
  store %union.rec* %782, %union.rec** @xx_link, align 8
  %803 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %803, %union.rec** @zz_res, align 8
  %804 = load %union.rec**, %union.rec*** %4, align 8
  %805 = load %union.rec*, %union.rec** %804, align 8
  store %union.rec* %805, %union.rec** @zz_hold, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = icmp eq %union.rec* %806, null
  br i1 %807, label %808, label %810

; <label>:808                                     ; preds = %776
  %809 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %858

; <label>:810                                     ; preds = %776
  %811 = load %union.rec*, %union.rec** @zz_res, align 8
  %812 = icmp eq %union.rec* %811, null
  br i1 %812, label %813, label %815

; <label>:813                                     ; preds = %810
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %856

; <label>:815                                     ; preds = %810
  %816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %817 = bitcast %union.rec* %816 to %struct.word_type*
  %818 = getelementptr inbounds %struct.word_type, %struct.word_type* %817, i32 0, i32 0
  %819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %818, i32 0, i64 0
  %820 = getelementptr inbounds %struct.LIST, %struct.LIST* %819, i32 0, i32 0
  %821 = load %union.rec*, %union.rec** %820, align 8
  store %union.rec* %821, %union.rec** @zz_tmp, align 8
  %822 = load %union.rec*, %union.rec** @zz_res, align 8
  %823 = bitcast %union.rec* %822 to %struct.word_type*
  %824 = getelementptr inbounds %struct.word_type, %struct.word_type* %823, i32 0, i32 0
  %825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %824, i32 0, i64 0
  %826 = getelementptr inbounds %struct.LIST, %struct.LIST* %825, i32 0, i32 0
  %827 = load %union.rec*, %union.rec** %826, align 8
  %828 = load %union.rec*, %union.rec** @zz_hold, align 8
  %829 = bitcast %union.rec* %828 to %struct.word_type*
  %830 = getelementptr inbounds %struct.word_type, %struct.word_type* %829, i32 0, i32 0
  %831 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %830, i32 0, i64 0
  %832 = getelementptr inbounds %struct.LIST, %struct.LIST* %831, i32 0, i32 0
  store %union.rec* %827, %union.rec** %832, align 8
  %833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %834 = load %union.rec*, %union.rec** @zz_res, align 8
  %835 = bitcast %union.rec* %834 to %struct.word_type*
  %836 = getelementptr inbounds %struct.word_type, %struct.word_type* %835, i32 0, i32 0
  %837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %836, i32 0, i64 0
  %838 = getelementptr inbounds %struct.LIST, %struct.LIST* %837, i32 0, i32 0
  %839 = load %union.rec*, %union.rec** %838, align 8
  %840 = bitcast %union.rec* %839 to %struct.word_type*
  %841 = getelementptr inbounds %struct.word_type, %struct.word_type* %840, i32 0, i32 0
  %842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %841, i32 0, i64 0
  %843 = getelementptr inbounds %struct.LIST, %struct.LIST* %842, i32 0, i32 1
  store %union.rec* %833, %union.rec** %843, align 8
  %844 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %845 = load %union.rec*, %union.rec** @zz_res, align 8
  %846 = bitcast %union.rec* %845 to %struct.word_type*
  %847 = getelementptr inbounds %struct.word_type, %struct.word_type* %846, i32 0, i32 0
  %848 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %847, i32 0, i64 0
  %849 = getelementptr inbounds %struct.LIST, %struct.LIST* %848, i32 0, i32 0
  store %union.rec* %844, %union.rec** %849, align 8
  %850 = load %union.rec*, %union.rec** @zz_res, align 8
  %851 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %852 = bitcast %union.rec* %851 to %struct.word_type*
  %853 = getelementptr inbounds %struct.word_type, %struct.word_type* %852, i32 0, i32 0
  %854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %853, i32 0, i64 0
  %855 = getelementptr inbounds %struct.LIST, %struct.LIST* %854, i32 0, i32 1
  store %union.rec* %850, %union.rec** %855, align 8
  br label %856

; <label>:856                                     ; preds = %815, %813
  %857 = phi %union.rec* [ %814, %813 ], [ %850, %815 ]
  br label %858

; <label>:858                                     ; preds = %856, %808
  %859 = phi %union.rec* [ %809, %808 ], [ %857, %856 ]
  %860 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %860, %union.rec** @zz_res, align 8
  %861 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %861, %union.rec** @zz_hold, align 8
  %862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %863 = icmp eq %union.rec* %862, null
  br i1 %863, label %864, label %866

; <label>:864                                     ; preds = %858
  %865 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %914

; <label>:866                                     ; preds = %858
  %867 = load %union.rec*, %union.rec** @zz_res, align 8
  %868 = icmp eq %union.rec* %867, null
  br i1 %868, label %869, label %871

; <label>:869                                     ; preds = %866
  %870 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %912

; <label>:871                                     ; preds = %866
  %872 = load %union.rec*, %union.rec** @zz_hold, align 8
  %873 = bitcast %union.rec* %872 to %struct.word_type*
  %874 = getelementptr inbounds %struct.word_type, %struct.word_type* %873, i32 0, i32 0
  %875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %874, i32 0, i64 1
  %876 = getelementptr inbounds %struct.LIST, %struct.LIST* %875, i32 0, i32 0
  %877 = load %union.rec*, %union.rec** %876, align 8
  store %union.rec* %877, %union.rec** @zz_tmp, align 8
  %878 = load %union.rec*, %union.rec** @zz_res, align 8
  %879 = bitcast %union.rec* %878 to %struct.word_type*
  %880 = getelementptr inbounds %struct.word_type, %struct.word_type* %879, i32 0, i32 0
  %881 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %880, i32 0, i64 1
  %882 = getelementptr inbounds %struct.LIST, %struct.LIST* %881, i32 0, i32 0
  %883 = load %union.rec*, %union.rec** %882, align 8
  %884 = load %union.rec*, %union.rec** @zz_hold, align 8
  %885 = bitcast %union.rec* %884 to %struct.word_type*
  %886 = getelementptr inbounds %struct.word_type, %struct.word_type* %885, i32 0, i32 0
  %887 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %886, i32 0, i64 1
  %888 = getelementptr inbounds %struct.LIST, %struct.LIST* %887, i32 0, i32 0
  store %union.rec* %883, %union.rec** %888, align 8
  %889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %890 = load %union.rec*, %union.rec** @zz_res, align 8
  %891 = bitcast %union.rec* %890 to %struct.word_type*
  %892 = getelementptr inbounds %struct.word_type, %struct.word_type* %891, i32 0, i32 0
  %893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %892, i32 0, i64 1
  %894 = getelementptr inbounds %struct.LIST, %struct.LIST* %893, i32 0, i32 0
  %895 = load %union.rec*, %union.rec** %894, align 8
  %896 = bitcast %union.rec* %895 to %struct.word_type*
  %897 = getelementptr inbounds %struct.word_type, %struct.word_type* %896, i32 0, i32 0
  %898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %897, i32 0, i64 1
  %899 = getelementptr inbounds %struct.LIST, %struct.LIST* %898, i32 0, i32 1
  store %union.rec* %889, %union.rec** %899, align 8
  %900 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %901 = load %union.rec*, %union.rec** @zz_res, align 8
  %902 = bitcast %union.rec* %901 to %struct.word_type*
  %903 = getelementptr inbounds %struct.word_type, %struct.word_type* %902, i32 0, i32 0
  %904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %903, i32 0, i64 1
  %905 = getelementptr inbounds %struct.LIST, %struct.LIST* %904, i32 0, i32 0
  store %union.rec* %900, %union.rec** %905, align 8
  %906 = load %union.rec*, %union.rec** @zz_res, align 8
  %907 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %908 = bitcast %union.rec* %907 to %struct.word_type*
  %909 = getelementptr inbounds %struct.word_type, %struct.word_type* %908, i32 0, i32 0
  %910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %909, i32 0, i64 1
  %911 = getelementptr inbounds %struct.LIST, %struct.LIST* %910, i32 0, i32 1
  store %union.rec* %906, %union.rec** %911, align 8
  br label %912

; <label>:912                                     ; preds = %871, %869
  %913 = phi %union.rec* [ %870, %869 ], [ %906, %871 ]
  br label %914

; <label>:914                                     ; preds = %912, %864
  %915 = phi %union.rec* [ %865, %864 ], [ %913, %912 ]
  %916 = load i32, i32* @AllowCrossDb, align 4
  %917 = icmp ne i32 %916, 0
  br i1 %917, label %918, label %930

; <label>:918                                     ; preds = %914
  %919 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %920 = load %union.rec*, %union.rec** %sym, align 8
  %921 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %922 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %923 = call i32 @DbRetrieve(%union.rec* %919, i32 0, %union.rec* %920, i8* %921, i8* %922, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %924 = icmp ne i32 %923, 0
  br i1 %924, label %925, label %930

; <label>:925                                     ; preds = %918
  call void @SwitchScope(%union.rec* null)
  %926 = load i16, i16* %dfnum, align 2
  %927 = load i64, i64* %dfpos, align 8
  %928 = load i32, i32* %dlnum, align 4
  %929 = call %union.rec* @ReadFromFile(i16 zeroext %926, i64 %927, i32 %928)
  store %union.rec* %929, %union.rec** %res, align 8
  call void @UnSwitchScope(%union.rec* null)
  br label %930

; <label>:930                                     ; preds = %925, %918, %914
  br label %939

; <label>:931                                     ; preds = %355
  %932 = load %union.rec*, %union.rec** %1, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 1
  %935 = bitcast %union.FIRST_UNION* %934 to %struct.FILE_POS*
  %936 = load %union.rec*, %union.rec** %sym, align 8
  %937 = call i8* @SymName(%union.rec* %936)
  %938 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 8, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %935, i8* %937, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.16, i32 0, i32 0))
  store i32 1, i32* %tagerror, align 4
  br label %939

; <label>:939                                     ; preds = %931, %930
  br label %943

; <label>:940                                     ; preds = %186
  %941 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %942 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %941, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.22, i32 0, i32 0))
  br label %943

; <label>:943                                     ; preds = %940, %939, %354, %195, %189
  %944 = load %union.rec*, %union.rec** %res, align 8
  %945 = icmp eq %union.rec* %944, null
  br i1 %945, label %946, label %1345

; <label>:946                                     ; preds = %943
  %947 = load i32, i32* %ctype, align 4
  %948 = icmp sgt i32 %947, 1
  br i1 %948, label %949, label %964

; <label>:949                                     ; preds = %946
  %950 = load i32, i32* %tagerror, align 4
  %951 = icmp ne i32 %950, 0
  br i1 %951, label %964, label %952

; <label>:952                                     ; preds = %949
  %953 = load %union.rec*, %union.rec** %1, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 1
  %956 = bitcast %union.FIRST_UNION* %955 to %struct.FILE_POS*
  %957 = load %union.rec*, %union.rec** %sym, align 8
  %958 = call i8* @SymName(%union.rec* %957)
  %959 = load %union.rec*, %union.rec** %tag, align 8
  %960 = bitcast %union.rec* %959 to %struct.word_type*
  %961 = getelementptr inbounds %struct.word_type, %struct.word_type* %960, i32 0, i32 4
  %962 = getelementptr inbounds [4 x i8], [4 x i8]* %961, i32 0, i32 0
  %963 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 9, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0), i32 2, %struct.FILE_POS* %956, i8* %958, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* %962)
  br label %964

; <label>:964                                     ; preds = %952, %949, %946
  %965 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %966 = zext i8 %965 to i32
  store i32 %966, i32* @zz_size, align 4
  %967 = sext i32 %966 to i64
  %968 = icmp uge i64 %967, 265
  br i1 %968, label %969, label %972

; <label>:969                                     ; preds = %964
  %970 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %971 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %970)
  br label %997

; <label>:972                                     ; preds = %964
  %973 = load i32, i32* @zz_size, align 4
  %974 = sext i32 %973 to i64
  %975 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %974
  %976 = load %union.rec*, %union.rec** %975, align 8
  %977 = icmp eq %union.rec* %976, null
  br i1 %977, label %978, label %982

; <label>:978                                     ; preds = %972
  %979 = load i32, i32* @zz_size, align 4
  %980 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %981 = call %union.rec* @GetMemory(i32 %979, %struct.FILE_POS* %980)
  store %union.rec* %981, %union.rec** @zz_hold, align 8
  br label %996

; <label>:982                                     ; preds = %972
  %983 = load i32, i32* @zz_size, align 4
  %984 = sext i32 %983 to i64
  %985 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %984
  %986 = load %union.rec*, %union.rec** %985, align 8
  store %union.rec* %986, %union.rec** @zz_hold, align 8
  store %union.rec* %986, %union.rec** @zz_hold, align 8
  %987 = load %union.rec*, %union.rec** @zz_hold, align 8
  %988 = bitcast %union.rec* %987 to %struct.word_type*
  %989 = getelementptr inbounds %struct.word_type, %struct.word_type* %988, i32 0, i32 0
  %990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %989, i32 0, i64 0
  %991 = getelementptr inbounds %struct.LIST, %struct.LIST* %990, i32 0, i32 0
  %992 = load %union.rec*, %union.rec** %991, align 8
  %993 = load i32, i32* @zz_size, align 4
  %994 = sext i32 %993 to i64
  %995 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %994
  store %union.rec* %992, %union.rec** %995, align 8
  br label %996

; <label>:996                                     ; preds = %982, %978
  br label %997

; <label>:997                                     ; preds = %996, %969
  %998 = load %union.rec*, %union.rec** @zz_hold, align 8
  %999 = bitcast %union.rec* %998 to %struct.word_type*
  %1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %999, i32 0, i32 1
  %1001 = bitcast %union.FIRST_UNION* %1000 to %struct.anon*
  %1002 = getelementptr inbounds %struct.anon, %struct.anon* %1001, i32 0, i32 0
  store i8 2, i8* %1002, align 1
  %1003 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1005 = bitcast %union.rec* %1004 to %struct.word_type*
  %1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %1005, i32 0, i32 0
  %1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1006, i32 0, i64 1
  %1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %1007, i32 0, i32 1
  store %union.rec* %1003, %union.rec** %1008, align 8
  %1009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 0
  %1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1011, i32 0, i64 1
  %1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %1012, i32 0, i32 0
  store %union.rec* %1003, %union.rec** %1013, align 8
  %1014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1015 = bitcast %union.rec* %1014 to %struct.word_type*
  %1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1016, i32 0, i64 0
  %1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %1017, i32 0, i32 1
  store %union.rec* %1003, %union.rec** %1018, align 8
  %1019 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1020 = bitcast %union.rec* %1019 to %struct.word_type*
  %1021 = getelementptr inbounds %struct.word_type, %struct.word_type* %1020, i32 0, i32 0
  %1022 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1021, i32 0, i64 0
  %1023 = getelementptr inbounds %struct.LIST, %struct.LIST* %1022, i32 0, i32 0
  store %union.rec* %1003, %union.rec** %1023, align 8
  store %union.rec* %1003, %union.rec** %res, align 8
  %1024 = load %union.rec*, %union.rec** %sym, align 8
  %1025 = load %union.rec*, %union.rec** %res, align 8
  %1026 = bitcast %union.rec* %1025 to %struct.closure_type*
  %1027 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1026, i32 0, i32 5
  store %union.rec* %1024, %union.rec** %1027, align 8
  %1028 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1028, %union.rec** %y, align 8
  br label %1029

; <label>:1029                                    ; preds = %1072, %997
  %1030 = load %union.rec*, %union.rec** %y, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.closure_type*
  %1032 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1031, i32 0, i32 5
  %1033 = load %union.rec*, %union.rec** %1032, align 8
  %1034 = bitcast %union.rec* %1033 to %struct.symbol_type*
  %1035 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1034, i32 0, i32 3
  %1036 = load %union.rec*, %union.rec** %1035, align 8
  %1037 = load %union.rec*, %union.rec** @StartSym, align 8
  %1038 = icmp ne %union.rec* %1036, %1037
  br i1 %1038, label %1039, label %1114

; <label>:1039                                    ; preds = %1029
  %1040 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %1041 = zext i8 %1040 to i32
  store i32 %1041, i32* @zz_size, align 4
  %1042 = sext i32 %1041 to i64
  %1043 = icmp uge i64 %1042, 265
  br i1 %1043, label %1044, label %1047

; <label>:1044                                    ; preds = %1039
  %1045 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1046 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1045)
  br label %1072

; <label>:1047                                    ; preds = %1039
  %1048 = load i32, i32* @zz_size, align 4
  %1049 = sext i32 %1048 to i64
  %1050 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1049
  %1051 = load %union.rec*, %union.rec** %1050, align 8
  %1052 = icmp eq %union.rec* %1051, null
  br i1 %1052, label %1053, label %1057

; <label>:1053                                    ; preds = %1047
  %1054 = load i32, i32* @zz_size, align 4
  %1055 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1056 = call %union.rec* @GetMemory(i32 %1054, %struct.FILE_POS* %1055)
  store %union.rec* %1056, %union.rec** @zz_hold, align 8
  br label %1071

; <label>:1057                                    ; preds = %1047
  %1058 = load i32, i32* @zz_size, align 4
  %1059 = sext i32 %1058 to i64
  %1060 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1059
  %1061 = load %union.rec*, %union.rec** %1060, align 8
  store %union.rec* %1061, %union.rec** @zz_hold, align 8
  store %union.rec* %1061, %union.rec** @zz_hold, align 8
  %1062 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1063 = bitcast %union.rec* %1062 to %struct.word_type*
  %1064 = getelementptr inbounds %struct.word_type, %struct.word_type* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1064, i32 0, i64 0
  %1066 = getelementptr inbounds %struct.LIST, %struct.LIST* %1065, i32 0, i32 0
  %1067 = load %union.rec*, %union.rec** %1066, align 8
  %1068 = load i32, i32* @zz_size, align 4
  %1069 = sext i32 %1068 to i64
  %1070 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1069
  store %union.rec* %1067, %union.rec** %1070, align 8
  br label %1071

; <label>:1071                                    ; preds = %1057, %1053
  br label %1072

; <label>:1072                                    ; preds = %1071, %1044
  %1073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1074 = bitcast %union.rec* %1073 to %struct.word_type*
  %1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %1074, i32 0, i32 1
  %1076 = bitcast %union.FIRST_UNION* %1075 to %struct.anon*
  %1077 = getelementptr inbounds %struct.anon, %struct.anon* %1076, i32 0, i32 0
  store i8 2, i8* %1077, align 1
  %1078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1080 = bitcast %union.rec* %1079 to %struct.word_type*
  %1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %1080, i32 0, i32 0
  %1082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1081, i32 0, i64 1
  %1083 = getelementptr inbounds %struct.LIST, %struct.LIST* %1082, i32 0, i32 1
  store %union.rec* %1078, %union.rec** %1083, align 8
  %1084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 0
  %1087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1086, i32 0, i64 1
  %1088 = getelementptr inbounds %struct.LIST, %struct.LIST* %1087, i32 0, i32 0
  store %union.rec* %1078, %union.rec** %1088, align 8
  %1089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1090 = bitcast %union.rec* %1089 to %struct.word_type*
  %1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %1090, i32 0, i32 0
  %1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1091, i32 0, i64 0
  %1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %1092, i32 0, i32 1
  store %union.rec* %1078, %union.rec** %1093, align 8
  %1094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 0
  %1097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1096, i32 0, i64 0
  %1098 = getelementptr inbounds %struct.LIST, %struct.LIST* %1097, i32 0, i32 0
  store %union.rec* %1078, %union.rec** %1098, align 8
  store %union.rec* %1078, %union.rec** %tmp, align 8
  %1099 = load %union.rec*, %union.rec** %y, align 8
  %1100 = bitcast %union.rec* %1099 to %struct.closure_type*
  %1101 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1100, i32 0, i32 5
  %1102 = load %union.rec*, %union.rec** %1101, align 8
  %1103 = bitcast %union.rec* %1102 to %struct.symbol_type*
  %1104 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1103, i32 0, i32 3
  %1105 = load %union.rec*, %union.rec** %1104, align 8
  %1106 = load %union.rec*, %union.rec** %tmp, align 8
  %1107 = bitcast %union.rec* %1106 to %struct.closure_type*
  %1108 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1107, i32 0, i32 5
  store %union.rec* %1105, %union.rec** %1108, align 8
  %1109 = load %union.rec*, %union.rec** %tmp, align 8
  %1110 = call %union.rec* @SetEnv(%union.rec* %1109, %union.rec* null)
  store %union.rec* %1110, %union.rec** %envt, align 8
  %1111 = load %union.rec*, %union.rec** %envt, align 8
  %1112 = load %union.rec*, %union.rec** %y, align 8
  call void @AttachEnv(%union.rec* %1111, %union.rec* %1112)
  %1113 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1113, %union.rec** %y, align 8
  br label %1029

; <label>:1114                                    ; preds = %1029
  %1115 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %1116 = zext i8 %1115 to i32
  store i32 %1116, i32* @zz_size, align 4
  %1117 = sext i32 %1116 to i64
  %1118 = icmp uge i64 %1117, 265
  br i1 %1118, label %1119, label %1122

; <label>:1119                                    ; preds = %1114
  %1120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1121 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1120)
  br label %1147

; <label>:1122                                    ; preds = %1114
  %1123 = load i32, i32* @zz_size, align 4
  %1124 = sext i32 %1123 to i64
  %1125 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1124
  %1126 = load %union.rec*, %union.rec** %1125, align 8
  %1127 = icmp eq %union.rec* %1126, null
  br i1 %1127, label %1128, label %1132

; <label>:1128                                    ; preds = %1122
  %1129 = load i32, i32* @zz_size, align 4
  %1130 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1131 = call %union.rec* @GetMemory(i32 %1129, %struct.FILE_POS* %1130)
  store %union.rec* %1131, %union.rec** @zz_hold, align 8
  br label %1146

; <label>:1132                                    ; preds = %1122
  %1133 = load i32, i32* @zz_size, align 4
  %1134 = sext i32 %1133 to i64
  %1135 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1134
  %1136 = load %union.rec*, %union.rec** %1135, align 8
  store %union.rec* %1136, %union.rec** @zz_hold, align 8
  store %union.rec* %1136, %union.rec** @zz_hold, align 8
  %1137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1138 = bitcast %union.rec* %1137 to %struct.word_type*
  %1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %1138, i32 0, i32 0
  %1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1139, i32 0, i64 0
  %1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %1140, i32 0, i32 0
  %1142 = load %union.rec*, %union.rec** %1141, align 8
  %1143 = load i32, i32* @zz_size, align 4
  %1144 = sext i32 %1143 to i64
  %1145 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1144
  store %union.rec* %1142, %union.rec** %1145, align 8
  br label %1146

; <label>:1146                                    ; preds = %1132, %1128
  br label %1147

; <label>:1147                                    ; preds = %1146, %1119
  %1148 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1149 = bitcast %union.rec* %1148 to %struct.word_type*
  %1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %1149, i32 0, i32 1
  %1151 = bitcast %union.FIRST_UNION* %1150 to %struct.anon*
  %1152 = getelementptr inbounds %struct.anon, %struct.anon* %1151, i32 0, i32 0
  store i8 82, i8* %1152, align 1
  %1153 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1156, i32 0, i64 1
  %1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %1157, i32 0, i32 1
  store %union.rec* %1153, %union.rec** %1158, align 8
  %1159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1160 = bitcast %union.rec* %1159 to %struct.word_type*
  %1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %1160, i32 0, i32 0
  %1162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1161, i32 0, i64 1
  %1163 = getelementptr inbounds %struct.LIST, %struct.LIST* %1162, i32 0, i32 0
  store %union.rec* %1153, %union.rec** %1163, align 8
  %1164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1165 = bitcast %union.rec* %1164 to %struct.word_type*
  %1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %1165, i32 0, i32 0
  %1167 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1166, i32 0, i64 0
  %1168 = getelementptr inbounds %struct.LIST, %struct.LIST* %1167, i32 0, i32 1
  store %union.rec* %1153, %union.rec** %1168, align 8
  %1169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1170 = bitcast %union.rec* %1169 to %struct.word_type*
  %1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %1170, i32 0, i32 0
  %1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1171, i32 0, i64 0
  %1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %1172, i32 0, i32 0
  store %union.rec* %1153, %union.rec** %1173, align 8
  store %union.rec* %1153, %union.rec** %envt, align 8
  %1174 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1175 = zext i8 %1174 to i32
  store i32 %1175, i32* @zz_size, align 4
  %1176 = sext i32 %1175 to i64
  %1177 = icmp uge i64 %1176, 265
  br i1 %1177, label %1178, label %1181

; <label>:1178                                    ; preds = %1147
  %1179 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1180 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1179)
  br label %1206

; <label>:1181                                    ; preds = %1147
  %1182 = load i32, i32* @zz_size, align 4
  %1183 = sext i32 %1182 to i64
  %1184 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1183
  %1185 = load %union.rec*, %union.rec** %1184, align 8
  %1186 = icmp eq %union.rec* %1185, null
  br i1 %1186, label %1187, label %1191

; <label>:1187                                    ; preds = %1181
  %1188 = load i32, i32* @zz_size, align 4
  %1189 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1190 = call %union.rec* @GetMemory(i32 %1188, %struct.FILE_POS* %1189)
  store %union.rec* %1190, %union.rec** @zz_hold, align 8
  br label %1205

; <label>:1191                                    ; preds = %1181
  %1192 = load i32, i32* @zz_size, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1193
  %1195 = load %union.rec*, %union.rec** %1194, align 8
  store %union.rec* %1195, %union.rec** @zz_hold, align 8
  store %union.rec* %1195, %union.rec** @zz_hold, align 8
  %1196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1197 = bitcast %union.rec* %1196 to %struct.word_type*
  %1198 = getelementptr inbounds %struct.word_type, %struct.word_type* %1197, i32 0, i32 0
  %1199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1198, i32 0, i64 0
  %1200 = getelementptr inbounds %struct.LIST, %struct.LIST* %1199, i32 0, i32 0
  %1201 = load %union.rec*, %union.rec** %1200, align 8
  %1202 = load i32, i32* @zz_size, align 4
  %1203 = sext i32 %1202 to i64
  %1204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1203
  store %union.rec* %1201, %union.rec** %1204, align 8
  br label %1205

; <label>:1205                                    ; preds = %1191, %1187
  br label %1206

; <label>:1206                                    ; preds = %1205, %1178
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1208 = bitcast %union.rec* %1207 to %struct.word_type*
  %1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %1208, i32 0, i32 1
  %1210 = bitcast %union.FIRST_UNION* %1209 to %struct.anon*
  %1211 = getelementptr inbounds %struct.anon, %struct.anon* %1210, i32 0, i32 0
  store i8 0, i8* %1211, align 1
  %1212 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1214 = bitcast %union.rec* %1213 to %struct.word_type*
  %1215 = getelementptr inbounds %struct.word_type, %struct.word_type* %1214, i32 0, i32 0
  %1216 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1215, i32 0, i64 1
  %1217 = getelementptr inbounds %struct.LIST, %struct.LIST* %1216, i32 0, i32 1
  store %union.rec* %1212, %union.rec** %1217, align 8
  %1218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1219 = bitcast %union.rec* %1218 to %struct.word_type*
  %1220 = getelementptr inbounds %struct.word_type, %struct.word_type* %1219, i32 0, i32 0
  %1221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1220, i32 0, i64 1
  %1222 = getelementptr inbounds %struct.LIST, %struct.LIST* %1221, i32 0, i32 0
  store %union.rec* %1212, %union.rec** %1222, align 8
  %1223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1224 = bitcast %union.rec* %1223 to %struct.word_type*
  %1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %1224, i32 0, i32 0
  %1226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1225, i32 0, i64 0
  %1227 = getelementptr inbounds %struct.LIST, %struct.LIST* %1226, i32 0, i32 1
  store %union.rec* %1212, %union.rec** %1227, align 8
  %1228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1229 = bitcast %union.rec* %1228 to %struct.word_type*
  %1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %1229, i32 0, i32 0
  %1231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1230, i32 0, i64 0
  %1232 = getelementptr inbounds %struct.LIST, %struct.LIST* %1231, i32 0, i32 0
  store %union.rec* %1212, %union.rec** %1232, align 8
  store %union.rec* %1212, %union.rec** @xx_link, align 8
  %1233 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1233, %union.rec** @zz_res, align 8
  %1234 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1234, %union.rec** @zz_hold, align 8
  %1235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1236 = icmp eq %union.rec* %1235, null
  br i1 %1236, label %1237, label %1239

; <label>:1237                                    ; preds = %1206
  %1238 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1287

; <label>:1239                                    ; preds = %1206
  %1240 = load %union.rec*, %union.rec** @zz_res, align 8
  %1241 = icmp eq %union.rec* %1240, null
  br i1 %1241, label %1242, label %1244

; <label>:1242                                    ; preds = %1239
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1285

; <label>:1244                                    ; preds = %1239
  %1245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1246 = bitcast %union.rec* %1245 to %struct.word_type*
  %1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %1246, i32 0, i32 0
  %1248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1247, i32 0, i64 0
  %1249 = getelementptr inbounds %struct.LIST, %struct.LIST* %1248, i32 0, i32 0
  %1250 = load %union.rec*, %union.rec** %1249, align 8
  store %union.rec* %1250, %union.rec** @zz_tmp, align 8
  %1251 = load %union.rec*, %union.rec** @zz_res, align 8
  %1252 = bitcast %union.rec* %1251 to %struct.word_type*
  %1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %1252, i32 0, i32 0
  %1254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1253, i32 0, i64 0
  %1255 = getelementptr inbounds %struct.LIST, %struct.LIST* %1254, i32 0, i32 0
  %1256 = load %union.rec*, %union.rec** %1255, align 8
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 0
  %1260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1259, i32 0, i64 0
  %1261 = getelementptr inbounds %struct.LIST, %struct.LIST* %1260, i32 0, i32 0
  store %union.rec* %1256, %union.rec** %1261, align 8
  %1262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1263 = load %union.rec*, %union.rec** @zz_res, align 8
  %1264 = bitcast %union.rec* %1263 to %struct.word_type*
  %1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %1264, i32 0, i32 0
  %1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1265, i32 0, i64 0
  %1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %1266, i32 0, i32 0
  %1268 = load %union.rec*, %union.rec** %1267, align 8
  %1269 = bitcast %union.rec* %1268 to %struct.word_type*
  %1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %1269, i32 0, i32 0
  %1271 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1270, i32 0, i64 0
  %1272 = getelementptr inbounds %struct.LIST, %struct.LIST* %1271, i32 0, i32 1
  store %union.rec* %1262, %union.rec** %1272, align 8
  %1273 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1274 = load %union.rec*, %union.rec** @zz_res, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 0
  %1277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1276, i32 0, i64 0
  %1278 = getelementptr inbounds %struct.LIST, %struct.LIST* %1277, i32 0, i32 0
  store %union.rec* %1273, %union.rec** %1278, align 8
  %1279 = load %union.rec*, %union.rec** @zz_res, align 8
  %1280 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1281 = bitcast %union.rec* %1280 to %struct.word_type*
  %1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %1281, i32 0, i32 0
  %1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1282, i32 0, i64 0
  %1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %1283, i32 0, i32 1
  store %union.rec* %1279, %union.rec** %1284, align 8
  br label %1285

; <label>:1285                                    ; preds = %1244, %1242
  %1286 = phi %union.rec* [ %1243, %1242 ], [ %1279, %1244 ]
  br label %1287

; <label>:1287                                    ; preds = %1285, %1237
  %1288 = phi %union.rec* [ %1238, %1237 ], [ %1286, %1285 ]
  %1289 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1289, %union.rec** @zz_res, align 8
  %1290 = load %union.rec*, %union.rec** %envt, align 8
  store %union.rec* %1290, %union.rec** @zz_hold, align 8
  %1291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1292 = icmp eq %union.rec* %1291, null
  br i1 %1292, label %1293, label %1295

; <label>:1293                                    ; preds = %1287
  %1294 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1343

; <label>:1295                                    ; preds = %1287
  %1296 = load %union.rec*, %union.rec** @zz_res, align 8
  %1297 = icmp eq %union.rec* %1296, null
  br i1 %1297, label %1298, label %1300

; <label>:1298                                    ; preds = %1295
  %1299 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1341

; <label>:1300                                    ; preds = %1295
  %1301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1302 = bitcast %union.rec* %1301 to %struct.word_type*
  %1303 = getelementptr inbounds %struct.word_type, %struct.word_type* %1302, i32 0, i32 0
  %1304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1303, i32 0, i64 1
  %1305 = getelementptr inbounds %struct.LIST, %struct.LIST* %1304, i32 0, i32 0
  %1306 = load %union.rec*, %union.rec** %1305, align 8
  store %union.rec* %1306, %union.rec** @zz_tmp, align 8
  %1307 = load %union.rec*, %union.rec** @zz_res, align 8
  %1308 = bitcast %union.rec* %1307 to %struct.word_type*
  %1309 = getelementptr inbounds %struct.word_type, %struct.word_type* %1308, i32 0, i32 0
  %1310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1309, i32 0, i64 1
  %1311 = getelementptr inbounds %struct.LIST, %struct.LIST* %1310, i32 0, i32 0
  %1312 = load %union.rec*, %union.rec** %1311, align 8
  %1313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1314 = bitcast %union.rec* %1313 to %struct.word_type*
  %1315 = getelementptr inbounds %struct.word_type, %struct.word_type* %1314, i32 0, i32 0
  %1316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1315, i32 0, i64 1
  %1317 = getelementptr inbounds %struct.LIST, %struct.LIST* %1316, i32 0, i32 0
  store %union.rec* %1312, %union.rec** %1317, align 8
  %1318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1319 = load %union.rec*, %union.rec** @zz_res, align 8
  %1320 = bitcast %union.rec* %1319 to %struct.word_type*
  %1321 = getelementptr inbounds %struct.word_type, %struct.word_type* %1320, i32 0, i32 0
  %1322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1321, i32 0, i64 1
  %1323 = getelementptr inbounds %struct.LIST, %struct.LIST* %1322, i32 0, i32 0
  %1324 = load %union.rec*, %union.rec** %1323, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 0
  %1327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1326, i32 0, i64 1
  %1328 = getelementptr inbounds %struct.LIST, %struct.LIST* %1327, i32 0, i32 1
  store %union.rec* %1318, %union.rec** %1328, align 8
  %1329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1330 = load %union.rec*, %union.rec** @zz_res, align 8
  %1331 = bitcast %union.rec* %1330 to %struct.word_type*
  %1332 = getelementptr inbounds %struct.word_type, %struct.word_type* %1331, i32 0, i32 0
  %1333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1332, i32 0, i64 1
  %1334 = getelementptr inbounds %struct.LIST, %struct.LIST* %1333, i32 0, i32 0
  store %union.rec* %1329, %union.rec** %1334, align 8
  %1335 = load %union.rec*, %union.rec** @zz_res, align 8
  %1336 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1337 = bitcast %union.rec* %1336 to %struct.word_type*
  %1338 = getelementptr inbounds %struct.word_type, %struct.word_type* %1337, i32 0, i32 0
  %1339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1338, i32 0, i64 1
  %1340 = getelementptr inbounds %struct.LIST, %struct.LIST* %1339, i32 0, i32 1
  store %union.rec* %1335, %union.rec** %1340, align 8
  br label %1341

; <label>:1341                                    ; preds = %1300, %1298
  %1342 = phi %union.rec* [ %1299, %1298 ], [ %1335, %1300 ]
  br label %1343

; <label>:1343                                    ; preds = %1341, %1293
  %1344 = phi %union.rec* [ %1294, %1293 ], [ %1342, %1341 ]
  br label %1345

; <label>:1345                                    ; preds = %1343, %943
  %1346 = load %union.rec*, %union.rec** %res, align 8
  %1347 = call %union.rec* @DetachEnv(%union.rec* %1346)
  %1348 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %1347, %union.rec** %1348, align 8
  %1349 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %1349, %union.rec** @zz_hold, align 8
  %1350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.word_type*
  %1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %1351, i32 0, i32 0
  %1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1352, i32 0, i64 1
  %1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %1353, i32 0, i32 1
  %1355 = load %union.rec*, %union.rec** %1354, align 8
  %1356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1357 = icmp eq %union.rec* %1355, %1356
  br i1 %1357, label %1358, label %1359

; <label>:1358                                    ; preds = %1345
  br label %1400

; <label>:1359                                    ; preds = %1345
  %1360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1361 = bitcast %union.rec* %1360 to %struct.word_type*
  %1362 = getelementptr inbounds %struct.word_type, %struct.word_type* %1361, i32 0, i32 0
  %1363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1362, i32 0, i64 1
  %1364 = getelementptr inbounds %struct.LIST, %struct.LIST* %1363, i32 0, i32 1
  %1365 = load %union.rec*, %union.rec** %1364, align 8
  store %union.rec* %1365, %union.rec** @zz_res, align 8
  %1366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1367 = bitcast %union.rec* %1366 to %struct.word_type*
  %1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %1367, i32 0, i32 0
  %1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1368, i32 0, i64 1
  %1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %1369, i32 0, i32 0
  %1371 = load %union.rec*, %union.rec** %1370, align 8
  %1372 = load %union.rec*, %union.rec** @zz_res, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 1
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 0
  store %union.rec* %1371, %union.rec** %1376, align 8
  %1377 = load %union.rec*, %union.rec** @zz_res, align 8
  %1378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1379 = bitcast %union.rec* %1378 to %struct.word_type*
  %1380 = getelementptr inbounds %struct.word_type, %struct.word_type* %1379, i32 0, i32 0
  %1381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1380, i32 0, i64 1
  %1382 = getelementptr inbounds %struct.LIST, %struct.LIST* %1381, i32 0, i32 0
  %1383 = load %union.rec*, %union.rec** %1382, align 8
  %1384 = bitcast %union.rec* %1383 to %struct.word_type*
  %1385 = getelementptr inbounds %struct.word_type, %struct.word_type* %1384, i32 0, i32 0
  %1386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1385, i32 0, i64 1
  %1387 = getelementptr inbounds %struct.LIST, %struct.LIST* %1386, i32 0, i32 1
  store %union.rec* %1377, %union.rec** %1387, align 8
  %1388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1390 = bitcast %union.rec* %1389 to %struct.word_type*
  %1391 = getelementptr inbounds %struct.word_type, %struct.word_type* %1390, i32 0, i32 0
  %1392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1391, i32 0, i64 1
  %1393 = getelementptr inbounds %struct.LIST, %struct.LIST* %1392, i32 0, i32 1
  store %union.rec* %1388, %union.rec** %1393, align 8
  %1394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1395 = bitcast %union.rec* %1394 to %struct.word_type*
  %1396 = getelementptr inbounds %struct.word_type, %struct.word_type* %1395, i32 0, i32 0
  %1397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1396, i32 0, i64 1
  %1398 = getelementptr inbounds %struct.LIST, %struct.LIST* %1397, i32 0, i32 0
  store %union.rec* %1388, %union.rec** %1398, align 8
  %1399 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1400

; <label>:1400                                    ; preds = %1359, %1358
  %1401 = phi %union.rec* [ null, %1358 ], [ %1399, %1359 ]
  store %union.rec* %1401, %union.rec** @xx_tmp, align 8
  %1402 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %1402, %union.rec** @zz_res, align 8
  %1403 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1403, %union.rec** @zz_hold, align 8
  %1404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1405 = icmp eq %union.rec* %1404, null
  br i1 %1405, label %1406, label %1408

; <label>:1406                                    ; preds = %1400
  %1407 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1456

; <label>:1408                                    ; preds = %1400
  %1409 = load %union.rec*, %union.rec** @zz_res, align 8
  %1410 = icmp eq %union.rec* %1409, null
  br i1 %1410, label %1411, label %1413

; <label>:1411                                    ; preds = %1408
  %1412 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1454

; <label>:1413                                    ; preds = %1408
  %1414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1415 = bitcast %union.rec* %1414 to %struct.word_type*
  %1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %1415, i32 0, i32 0
  %1417 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1416, i32 0, i64 1
  %1418 = getelementptr inbounds %struct.LIST, %struct.LIST* %1417, i32 0, i32 0
  %1419 = load %union.rec*, %union.rec** %1418, align 8
  store %union.rec* %1419, %union.rec** @zz_tmp, align 8
  %1420 = load %union.rec*, %union.rec** @zz_res, align 8
  %1421 = bitcast %union.rec* %1420 to %struct.word_type*
  %1422 = getelementptr inbounds %struct.word_type, %struct.word_type* %1421, i32 0, i32 0
  %1423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1422, i32 0, i64 1
  %1424 = getelementptr inbounds %struct.LIST, %struct.LIST* %1423, i32 0, i32 0
  %1425 = load %union.rec*, %union.rec** %1424, align 8
  %1426 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1427 = bitcast %union.rec* %1426 to %struct.word_type*
  %1428 = getelementptr inbounds %struct.word_type, %struct.word_type* %1427, i32 0, i32 0
  %1429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1428, i32 0, i64 1
  %1430 = getelementptr inbounds %struct.LIST, %struct.LIST* %1429, i32 0, i32 0
  store %union.rec* %1425, %union.rec** %1430, align 8
  %1431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1432 = load %union.rec*, %union.rec** @zz_res, align 8
  %1433 = bitcast %union.rec* %1432 to %struct.word_type*
  %1434 = getelementptr inbounds %struct.word_type, %struct.word_type* %1433, i32 0, i32 0
  %1435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1434, i32 0, i64 1
  %1436 = getelementptr inbounds %struct.LIST, %struct.LIST* %1435, i32 0, i32 0
  %1437 = load %union.rec*, %union.rec** %1436, align 8
  %1438 = bitcast %union.rec* %1437 to %struct.word_type*
  %1439 = getelementptr inbounds %struct.word_type, %struct.word_type* %1438, i32 0, i32 0
  %1440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1439, i32 0, i64 1
  %1441 = getelementptr inbounds %struct.LIST, %struct.LIST* %1440, i32 0, i32 1
  store %union.rec* %1431, %union.rec** %1441, align 8
  %1442 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1443 = load %union.rec*, %union.rec** @zz_res, align 8
  %1444 = bitcast %union.rec* %1443 to %struct.word_type*
  %1445 = getelementptr inbounds %struct.word_type, %struct.word_type* %1444, i32 0, i32 0
  %1446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1445, i32 0, i64 1
  %1447 = getelementptr inbounds %struct.LIST, %struct.LIST* %1446, i32 0, i32 0
  store %union.rec* %1442, %union.rec** %1447, align 8
  %1448 = load %union.rec*, %union.rec** @zz_res, align 8
  %1449 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1450 = bitcast %union.rec* %1449 to %struct.word_type*
  %1451 = getelementptr inbounds %struct.word_type, %struct.word_type* %1450, i32 0, i32 0
  %1452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1451, i32 0, i64 1
  %1453 = getelementptr inbounds %struct.LIST, %struct.LIST* %1452, i32 0, i32 1
  store %union.rec* %1448, %union.rec** %1453, align 8
  br label %1454

; <label>:1454                                    ; preds = %1413, %1411
  %1455 = phi %union.rec* [ %1412, %1411 ], [ %1448, %1413 ]
  br label %1456

; <label>:1456                                    ; preds = %1454, %1406
  %1457 = phi %union.rec* [ %1407, %1406 ], [ %1455, %1454 ]
  %1458 = load %union.rec*, %union.rec** %1, align 8
  %1459 = call i32 @DisposeObject(%union.rec* %1458)
  %1460 = load %union.rec*, %union.rec** %res, align 8
  %1461 = bitcast %union.rec* %1460 to %struct.word_type*
  %1462 = getelementptr inbounds %struct.word_type, %struct.word_type* %1461, i32 0, i32 1
  %1463 = bitcast %union.FIRST_UNION* %1462 to %struct.anon*
  %1464 = getelementptr inbounds %struct.anon, %struct.anon* %1463, i32 0, i32 0
  %1465 = load i8, i8* %1464, align 1
  %1466 = zext i8 %1465 to i32
  %1467 = icmp eq i32 %1466, 2
  br i1 %1467, label %1471, label %1468

; <label>:1468                                    ; preds = %1456
  %1469 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1470 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %1469, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.24, i32 0, i32 0))
  br label %1471

; <label>:1471                                    ; preds = %1468, %1456
  %1472 = load %union.rec*, %union.rec** %res, align 8
  %1473 = bitcast %union.rec* %1472 to %struct.closure_type*
  %1474 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1473, i32 0, i32 5
  %1475 = load %union.rec*, %union.rec** %1474, align 8
  %1476 = load %union.rec*, %union.rec** %sym, align 8
  %1477 = icmp eq %union.rec* %1475, %1476
  br i1 %1477, label %1481, label %1478

; <label>:1478                                    ; preds = %1471
  %1479 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1480 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %1479, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0))
  br label %1481

; <label>:1481                                    ; preds = %1478, %1471
  %1482 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %1482
}

declare %union.rec* @Manifest(%union.rec*, %union.rec*, %struct.STYLE*, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32, i32, %union.rec**, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare %union.rec* @StartMoment() #1

declare i8* @SymName(%union.rec*) #1

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare void @SwitchScope(%union.rec*) #1

declare void @SetScope(%union.rec*, i32*, i32) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @PopScope() #1

declare void @UnSwitchScope(%union.rec*) #1

declare void @AttachEnv(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define internal i32 @crtab_getnext(%union.rec* %sym, i16 zeroext %fnum, %struct.anon.14** %S) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %struct.anon.14**, align 8
  %x = alloca %struct.crossref_rec*, align 8
  %t = alloca %union.rec*, align 8
  %pos = alloca i64, align 8
  store %union.rec* %sym, %union.rec** %2, align 8
  store i16 %fnum, i16* %3, align 2
  store %struct.anon.14** %S, %struct.anon.14*** %4, align 8
  %5 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %6 = load %struct.anon.14*, %struct.anon.14** %5, align 8
  %7 = icmp eq %struct.anon.14* %6, null
  br i1 %7, label %8, label %11

; <label>:8                                       ; preds = %0
  %9 = call %struct.anon.14* @crtab_new(i32 100)
  %10 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  store %struct.anon.14* %9, %struct.anon.14** %10, align 8
  br label %11

; <label>:11                                      ; preds = %8, %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = ptrtoint %union.rec* %12 to i64
  %14 = load i16, i16* %3, align 2
  %15 = zext i16 %14 to i64
  %16 = add i64 %13, %15
  %17 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %18 = load %struct.anon.14*, %struct.anon.14** %17, align 8
  %19 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = sext i32 %20 to i64
  %22 = urem i64 %16, %21
  store i64 %22, i64* %pos, align 8
  %23 = load i64, i64* %pos, align 8
  %24 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %25 = load %struct.anon.14*, %struct.anon.14** %24, align 8
  %26 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %25, i32 0, i32 2
  %27 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %26, i32 0, i64 %23
  %28 = load %struct.crossref_rec*, %struct.crossref_rec** %27, align 8
  store %struct.crossref_rec* %28, %struct.crossref_rec** %x, align 8
  br label %29

; <label>:29                                      ; preds = %52, %11
  %30 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %31 = icmp ne %struct.crossref_rec* %30, null
  br i1 %31, label %32, label %56

; <label>:32                                      ; preds = %29
  %33 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %34 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %33, i32 0, i32 1
  %35 = load %union.rec*, %union.rec** %34, align 8
  %36 = load %union.rec*, %union.rec** %2, align 8
  %37 = icmp eq %union.rec* %35, %36
  br i1 %37, label %38, label %51

; <label>:38                                      ; preds = %32
  %39 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %40 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %39, i32 0, i32 2
  %41 = load i16, i16* %40, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* %3, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %51

; <label>:46                                      ; preds = %38
  %47 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %48 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 4
  store i32 %50, i32* %1
  br label %146

; <label>:51                                      ; preds = %38, %32
  br label %52

; <label>:52                                      ; preds = %51
  %53 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %54 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %53, i32 0, i32 0
  %55 = load %struct.crossref_rec*, %struct.crossref_rec** %54, align 8
  store %struct.crossref_rec* %55, %struct.crossref_rec** %x, align 8
  br label %29

; <label>:56                                      ; preds = %29
  %57 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %58 = load %struct.anon.14*, %struct.anon.14** %57, align 8
  %59 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %62 = load %struct.anon.14*, %struct.anon.14** %61, align 8
  %63 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = icmp eq i32 %60, %64
  br i1 %65, label %66, label %87

; <label>:66                                      ; preds = %56
  %67 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %68 = load %struct.anon.14*, %struct.anon.14** %67, align 8
  %69 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %70 = load %struct.anon.14*, %struct.anon.14** %69, align 8
  %71 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 2, %72
  %74 = call %struct.anon.14* @crtab_rehash(%struct.anon.14* %68, i32 %73)
  %75 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  store %struct.anon.14* %74, %struct.anon.14** %75, align 8
  %76 = load %union.rec*, %union.rec** %2, align 8
  %77 = ptrtoint %union.rec* %76 to i64
  %78 = load i16, i16* %3, align 2
  %79 = zext i16 %78 to i64
  %80 = add i64 %77, %79
  %81 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %82 = load %struct.anon.14*, %struct.anon.14** %81, align 8
  %83 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = urem i64 %80, %85
  store i64 %86, i64* %pos, align 8
  br label %87

; <label>:87                                      ; preds = %66, %56
  store i32 24, i32* @zz_size, align 4
  br i1 false, label %88, label %91

; <label>:88                                      ; preds = %87
  %89 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %90 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %89)
  br label %116

; <label>:91                                      ; preds = %87
  %92 = load i32, i32* @zz_size, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %93
  %95 = load %union.rec*, %union.rec** %94, align 8
  %96 = icmp eq %union.rec* %95, null
  br i1 %96, label %97, label %101

; <label>:97                                      ; preds = %91
  %98 = load i32, i32* @zz_size, align 4
  %99 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %100 = call %union.rec* @GetMemory(i32 %98, %struct.FILE_POS* %99)
  store %union.rec* %100, %union.rec** %t, align 8
  br label %115

; <label>:101                                     ; preds = %91
  %102 = load i32, i32* @zz_size, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %103
  %105 = load %union.rec*, %union.rec** %104, align 8
  store %union.rec* %105, %union.rec** @zz_hold, align 8
  store %union.rec* %105, %union.rec** %t, align 8
  %106 = load %union.rec*, %union.rec** @zz_hold, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 0
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %110, align 8
  %112 = load i32, i32* @zz_size, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %113
  store %union.rec* %111, %union.rec** %114, align 8
  br label %115

; <label>:115                                     ; preds = %101, %97
  br label %116

; <label>:116                                     ; preds = %115, %88
  %117 = load %union.rec*, %union.rec** %t, align 8
  %118 = bitcast %union.rec* %117 to %struct.crossref_rec*
  store %struct.crossref_rec* %118, %struct.crossref_rec** %x, align 8
  %119 = load %union.rec*, %union.rec** %2, align 8
  %120 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %121 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %120, i32 0, i32 1
  store %union.rec* %119, %union.rec** %121, align 8
  %122 = load i16, i16* %3, align 2
  %123 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %124 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %123, i32 0, i32 2
  store i16 %122, i16* %124, align 2
  %125 = load i64, i64* %pos, align 8
  %126 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %127 = load %struct.anon.14*, %struct.anon.14** %126, align 8
  %128 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %127, i32 0, i32 2
  %129 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %128, i32 0, i64 %125
  %130 = load %struct.crossref_rec*, %struct.crossref_rec** %129, align 8
  %131 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %132 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %131, i32 0, i32 0
  store %struct.crossref_rec* %130, %struct.crossref_rec** %132, align 8
  %133 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %134 = load i64, i64* %pos, align 8
  %135 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %136 = load %struct.anon.14*, %struct.anon.14** %135, align 8
  %137 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %136, i32 0, i32 2
  %138 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %137, i32 0, i64 %134
  store %struct.crossref_rec* %133, %struct.crossref_rec** %138, align 8
  %139 = load %struct.anon.14**, %struct.anon.14*** %4, align 8
  %140 = load %struct.anon.14*, %struct.anon.14** %139, align 8
  %141 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %141, align 4
  %144 = load %struct.crossref_rec*, %struct.crossref_rec** %x, align 8
  %145 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %144, i32 0, i32 3
  store i32 1, i32* %145, align 4
  store i32 1, i32* %1
  br label %146

; <label>:146                                     ; preds = %116, %46
  %147 = load i32, i32* %1
  ret i32 %147
}

declare %union.rec* @SetEnv(%union.rec*, %union.rec*) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @CrossSequence(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %val = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %key = alloca %union.rec*, align 8
  %hold_key = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %hold_env = alloca %union.rec*, align 8
  %ctype = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %seq = alloca i8*, align 8
  %dfnum = alloca i16, align 2
  %dfpos = alloca i32, align 4
  %dlnum = alloca i32, align 4
  %nbt = alloca [2 x %union.rec*], align 16
  %nft = alloca [2 x %union.rec*], align 16
  %crs = alloca %union.rec*, align 8
  %ntarget = alloca %union.rec*, align 8
  %nenclose = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load i32, i32* @AllowCrossDb, align 4
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %17, label %4

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** %1, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 1
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = icmp eq %union.rec* %10, %11
  br i1 %12, label %13, label %16

; <label>:13                                      ; preds = %4
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = call i32 @DisposeObject(%union.rec* %14)
  br label %16

; <label>:16                                      ; preds = %13, %4
  br label %3359

; <label>:17                                      ; preds = %0
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 1
  %21 = bitcast %union.FIRST_UNION* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 6
  br i1 %25, label %38, label %26

; <label>:26                                      ; preds = %17
  %27 = load %union.rec*, %union.rec** %1, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 1
  %30 = bitcast %union.FIRST_UNION* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 7
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %26
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %36, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.26, i32 0, i32 0))
  br label %38

; <label>:38                                      ; preds = %35, %26, %17
  %39 = load %union.rec*, %union.rec** %1, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 2
  %42 = bitcast %union.SECOND_UNION* %41 to %struct.anon.2*
  %43 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %42, i32 0, i32 1
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  store i32 %45, i32* %ctype, align 4
  %46 = load %union.rec*, %union.rec** %1, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 0
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 1
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %55, align 8
  store %union.rec* %56, %union.rec** %tmp, align 8
  br label %57

; <label>:57                                      ; preds = %67, %38
  %58 = load %union.rec*, %union.rec** %tmp, align 8
  %59 = bitcast %union.rec* %58 to %struct.word_type*
  %60 = getelementptr inbounds %struct.word_type, %struct.word_type* %59, i32 0, i32 1
  %61 = bitcast %union.FIRST_UNION* %60 to %struct.anon*
  %62 = getelementptr inbounds %struct.anon, %struct.anon* %61, i32 0, i32 0
  %63 = load i8, i8* %62, align 1
  %64 = zext i8 %63 to i32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %74

; <label>:66                                      ; preds = %57
  br label %67

; <label>:67                                      ; preds = %66
  %68 = load %union.rec*, %union.rec** %tmp, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 0
  %71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %70, i32 0, i64 1
  %72 = getelementptr inbounds %struct.LIST, %struct.LIST* %71, i32 0, i32 0
  %73 = load %union.rec*, %union.rec** %72, align 8
  store %union.rec* %73, %union.rec** %tmp, align 8
  br label %57

; <label>:74                                      ; preds = %57
  %75 = load %union.rec*, %union.rec** %tmp, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 1
  %78 = bitcast %union.FIRST_UNION* %77 to %struct.anon*
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 2
  br i1 %82, label %86, label %83

; <label>:83                                      ; preds = %74
  %84 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %85 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %84, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.27, i32 0, i32 0))
  br label %86

; <label>:86                                      ; preds = %83, %74
  %87 = load %union.rec*, %union.rec** %tmp, align 8
  %88 = bitcast %union.rec* %87 to %struct.closure_type*
  %89 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %88, i32 0, i32 5
  %90 = load %union.rec*, %union.rec** %89, align 8
  store %union.rec* %90, %union.rec** %sym, align 8
  %91 = load %union.rec*, %union.rec** %sym, align 8
  %92 = bitcast %union.rec* %91 to %struct.symbol_type*
  %93 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %92, i32 0, i32 8
  %94 = load %union.rec*, %union.rec** %93, align 8
  %95 = icmp eq %union.rec* %94, null
  br i1 %95, label %96, label %98

; <label>:96                                      ; preds = %86
  %97 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %97)
  br label %98

; <label>:98                                      ; preds = %96, %86
  %99 = load %union.rec*, %union.rec** %sym, align 8
  %100 = bitcast %union.rec* %99 to %struct.symbol_type*
  %101 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %100, i32 0, i32 8
  %102 = load %union.rec*, %union.rec** %101, align 8
  store %union.rec* %102, %union.rec** %cs, align 8
  %103 = load %union.rec*, %union.rec** %cs, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 1
  %106 = bitcast %union.FIRST_UNION* %105 to %struct.anon*
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 140
  br i1 %110, label %114, label %111

; <label>:111                                     ; preds = %98
  %112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %113 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %112, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.28, i32 0, i32 0))
  br label %114

; <label>:114                                     ; preds = %111, %98
  %115 = load %union.rec*, %union.rec** %1, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 0
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 1
  %120 = load %union.rec*, %union.rec** %119, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 0
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 1
  %125 = load %union.rec*, %union.rec** %124, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %127, i32 0, i64 1
  %129 = getelementptr inbounds %struct.LIST, %struct.LIST* %128, i32 0, i32 0
  %130 = load %union.rec*, %union.rec** %129, align 8
  store %union.rec* %130, %union.rec** %tag, align 8
  br label %131

; <label>:131                                     ; preds = %141, %114
  %132 = load %union.rec*, %union.rec** %tag, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 1
  %135 = bitcast %union.FIRST_UNION* %134 to %struct.anon*
  %136 = getelementptr inbounds %struct.anon, %struct.anon* %135, i32 0, i32 0
  %137 = load i8, i8* %136, align 1
  %138 = zext i8 %137 to i32
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %140, label %148

; <label>:140                                     ; preds = %131
  br label %141

; <label>:141                                     ; preds = %140
  %142 = load %union.rec*, %union.rec** %tag, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 1
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 0
  %147 = load %union.rec*, %union.rec** %146, align 8
  store %union.rec* %147, %union.rec** %tag, align 8
  br label %131

; <label>:148                                     ; preds = %131
  %149 = load %union.rec*, %union.rec** %1, align 8
  %150 = bitcast %union.rec* %149 to %struct.word_type*
  %151 = getelementptr inbounds %struct.word_type, %struct.word_type* %150, i32 0, i32 0
  %152 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %151, i32 0, i64 0
  %153 = getelementptr inbounds %struct.LIST, %struct.LIST* %152, i32 0, i32 1
  %154 = load %union.rec*, %union.rec** %153, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 0
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 1
  %159 = load %union.rec*, %union.rec** %158, align 8
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

; <label>:169                                     ; preds = %148
  br label %211

; <label>:170                                     ; preds = %148
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
  %319 = load %union.rec*, %union.rec** %1, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 0
  %322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %321, i32 0, i64 1
  %323 = getelementptr inbounds %struct.LIST, %struct.LIST* %322, i32 0, i32 1
  %324 = load %union.rec*, %union.rec** %323, align 8
  %325 = load %union.rec*, %union.rec** %1, align 8
  %326 = icmp eq %union.rec* %324, %325
  br i1 %326, label %327, label %330

; <label>:327                                     ; preds = %304
  %328 = load %union.rec*, %union.rec** %1, align 8
  %329 = call i32 @DisposeObject(%union.rec* %328)
  br label %330

; <label>:330                                     ; preds = %327, %304
  %331 = load i32, i32* %ctype, align 4
  switch i32 %331, label %3354 [
    i32 129, label %332
    i32 130, label %332
    i32 133, label %332
    i32 132, label %1732
    i32 134, label %2123
    i32 127, label %2229
    i32 128, label %2229
    i32 131, label %2458
  ]

; <label>:332                                     ; preds = %330, %330, %330
  %333 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %333, %union.rec** %val, align 8
  store %union.rec* null, %union.rec** %hold_key, align 8
  store %union.rec* null, %union.rec** %key, align 8
  %334 = load %union.rec*, %union.rec** %val, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 1
  %337 = bitcast %union.FIRST_UNION* %336 to %struct.anon*
  %338 = getelementptr inbounds %struct.anon, %struct.anon* %337, i32 0, i32 0
  %339 = load i8, i8* %338, align 1
  %340 = zext i8 %339 to i32
  %341 = icmp eq i32 %340, 2
  br i1 %341, label %345, label %342

; <label>:342                                     ; preds = %332
  %343 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %344 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %343, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.29, i32 0, i32 0))
  br label %345

; <label>:345                                     ; preds = %342, %332
  %346 = load %union.rec*, %union.rec** %val, align 8
  %347 = bitcast %union.rec* %346 to %struct.closure_type*
  %348 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %347, i32 0, i32 5
  %349 = load %union.rec*, %union.rec** %348, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 2
  %352 = bitcast %union.SECOND_UNION* %351 to %struct.anon.5*
  %353 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %352, i32 0, i32 1
  %354 = bitcast [3 x i8]* %353 to i24*
  %355 = load i24, i24* %354, align 1
  %356 = lshr i24 %355, 14
  %357 = and i24 %356, 1
  %358 = zext i24 %357 to i32
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %360, label %1358

; <label>:360                                     ; preds = %345
  %361 = load %union.rec*, %union.rec** %val, align 8
  %362 = bitcast %union.rec* %361 to %struct.closure_type*
  %363 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %362, i32 0, i32 5
  %364 = load %union.rec*, %union.rec** %363, align 8
  %365 = bitcast %union.rec* %364 to %struct.word_type*
  %366 = getelementptr inbounds %struct.word_type, %struct.word_type* %365, i32 0, i32 0
  %367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %366, i32 0, i64 0
  %368 = getelementptr inbounds %struct.LIST, %struct.LIST* %367, i32 0, i32 1
  %369 = load %union.rec*, %union.rec** %368, align 8
  store %union.rec* %369, %union.rec** %link, align 8
  br label %370

; <label>:370                                     ; preds = %1350, %360
  %371 = load %union.rec*, %union.rec** %link, align 8
  %372 = load %union.rec*, %union.rec** %val, align 8
  %373 = bitcast %union.rec* %372 to %struct.closure_type*
  %374 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %373, i32 0, i32 5
  %375 = load %union.rec*, %union.rec** %374, align 8
  %376 = icmp ne %union.rec* %371, %375
  br i1 %376, label %377, label %1357

; <label>:377                                     ; preds = %370
  %378 = load %union.rec*, %union.rec** %link, align 8
  %379 = bitcast %union.rec* %378 to %struct.word_type*
  %380 = getelementptr inbounds %struct.word_type, %struct.word_type* %379, i32 0, i32 0
  %381 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %380, i32 0, i64 1
  %382 = getelementptr inbounds %struct.LIST, %struct.LIST* %381, i32 0, i32 0
  %383 = load %union.rec*, %union.rec** %382, align 8
  store %union.rec* %383, %union.rec** %y, align 8
  br label %384

; <label>:384                                     ; preds = %394, %377
  %385 = load %union.rec*, %union.rec** %y, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 1
  %388 = bitcast %union.FIRST_UNION* %387 to %struct.anon*
  %389 = getelementptr inbounds %struct.anon, %struct.anon* %388, i32 0, i32 0
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  %392 = icmp eq i32 %391, 0
  br i1 %392, label %393, label %401

; <label>:393                                     ; preds = %384
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load %union.rec*, %union.rec** %y, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 1
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 0
  %400 = load %union.rec*, %union.rec** %399, align 8
  store %union.rec* %400, %union.rec** %y, align 8
  br label %384

; <label>:401                                     ; preds = %384
  %402 = load %union.rec*, %union.rec** %y, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 2
  %405 = bitcast %union.SECOND_UNION* %404 to %struct.anon.5*
  %406 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %405, i32 0, i32 1
  %407 = bitcast [3 x i8]* %406 to i24*
  %408 = load i24, i24* %407, align 1
  %409 = lshr i24 %408, 13
  %410 = and i24 %409, 1
  %411 = zext i24 %410 to i32
  %412 = icmp ne i32 %411, 0
  br i1 %412, label %413, label %1349

; <label>:413                                     ; preds = %401
  %414 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nft, i32 0, i64 1
  store %union.rec* null, %union.rec** %414, align 8
  %415 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nbt, i32 0, i64 1
  store %union.rec* null, %union.rec** %415, align 8
  %416 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nft, i32 0, i64 0
  store %union.rec* null, %union.rec** %416, align 8
  %417 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nbt, i32 0, i64 0
  store %union.rec* null, %union.rec** %417, align 8
  store %union.rec* null, %union.rec** %nenclose, align 8
  store %union.rec* null, %union.rec** %ntarget, align 8
  store %union.rec* null, %union.rec** %crs, align 8
  %418 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %419 = zext i8 %418 to i32
  store i32 %419, i32* @zz_size, align 4
  %420 = sext i32 %419 to i64
  %421 = icmp uge i64 %420, 265
  br i1 %421, label %422, label %425

; <label>:422                                     ; preds = %413
  %423 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %424 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %423)
  br label %450

; <label>:425                                     ; preds = %413
  %426 = load i32, i32* @zz_size, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %427
  %429 = load %union.rec*, %union.rec** %428, align 8
  %430 = icmp eq %union.rec* %429, null
  br i1 %430, label %431, label %435

; <label>:431                                     ; preds = %425
  %432 = load i32, i32* @zz_size, align 4
  %433 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %434 = call %union.rec* @GetMemory(i32 %432, %struct.FILE_POS* %433)
  store %union.rec* %434, %union.rec** @zz_hold, align 8
  br label %449

; <label>:435                                     ; preds = %425
  %436 = load i32, i32* @zz_size, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %437
  %439 = load %union.rec*, %union.rec** %438, align 8
  store %union.rec* %439, %union.rec** @zz_hold, align 8
  store %union.rec* %439, %union.rec** @zz_hold, align 8
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 0
  %443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %442, i32 0, i64 0
  %444 = getelementptr inbounds %struct.LIST, %struct.LIST* %443, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %444, align 8
  %446 = load i32, i32* @zz_size, align 4
  %447 = sext i32 %446 to i64
  %448 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %447
  store %union.rec* %445, %union.rec** %448, align 8
  br label %449

; <label>:449                                     ; preds = %435, %431
  br label %450

; <label>:450                                     ; preds = %449, %422
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 1
  %454 = bitcast %union.FIRST_UNION* %453 to %struct.anon*
  %455 = getelementptr inbounds %struct.anon, %struct.anon* %454, i32 0, i32 0
  store i8 2, i8* %455, align 1
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %458 = bitcast %union.rec* %457 to %struct.word_type*
  %459 = getelementptr inbounds %struct.word_type, %struct.word_type* %458, i32 0, i32 0
  %460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %459, i32 0, i64 1
  %461 = getelementptr inbounds %struct.LIST, %struct.LIST* %460, i32 0, i32 1
  store %union.rec* %456, %union.rec** %461, align 8
  %462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %463 = bitcast %union.rec* %462 to %struct.word_type*
  %464 = getelementptr inbounds %struct.word_type, %struct.word_type* %463, i32 0, i32 0
  %465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %464, i32 0, i64 1
  %466 = getelementptr inbounds %struct.LIST, %struct.LIST* %465, i32 0, i32 0
  store %union.rec* %456, %union.rec** %466, align 8
  %467 = load %union.rec*, %union.rec** @zz_hold, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 0
  %470 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %469, i32 0, i64 0
  %471 = getelementptr inbounds %struct.LIST, %struct.LIST* %470, i32 0, i32 1
  store %union.rec* %456, %union.rec** %471, align 8
  %472 = load %union.rec*, %union.rec** @zz_hold, align 8
  %473 = bitcast %union.rec* %472 to %struct.word_type*
  %474 = getelementptr inbounds %struct.word_type, %struct.word_type* %473, i32 0, i32 0
  %475 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %474, i32 0, i64 0
  %476 = getelementptr inbounds %struct.LIST, %struct.LIST* %475, i32 0, i32 0
  store %union.rec* %456, %union.rec** %476, align 8
  store %union.rec* %456, %union.rec** %key, align 8
  %477 = load %union.rec*, %union.rec** %y, align 8
  %478 = load %union.rec*, %union.rec** %key, align 8
  %479 = bitcast %union.rec* %478 to %struct.closure_type*
  %480 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %479, i32 0, i32 5
  store %union.rec* %477, %union.rec** %480, align 8
  %481 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %482 = zext i8 %481 to i32
  store i32 %482, i32* @zz_size, align 4
  %483 = sext i32 %482 to i64
  %484 = icmp uge i64 %483, 265
  br i1 %484, label %485, label %488

; <label>:485                                     ; preds = %450
  %486 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %487 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %486)
  br label %513

; <label>:488                                     ; preds = %450
  %489 = load i32, i32* @zz_size, align 4
  %490 = sext i32 %489 to i64
  %491 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %490
  %492 = load %union.rec*, %union.rec** %491, align 8
  %493 = icmp eq %union.rec* %492, null
  br i1 %493, label %494, label %498

; <label>:494                                     ; preds = %488
  %495 = load i32, i32* @zz_size, align 4
  %496 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %497 = call %union.rec* @GetMemory(i32 %495, %struct.FILE_POS* %496)
  store %union.rec* %497, %union.rec** @zz_hold, align 8
  br label %512

; <label>:498                                     ; preds = %488
  %499 = load i32, i32* @zz_size, align 4
  %500 = sext i32 %499 to i64
  %501 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %500
  %502 = load %union.rec*, %union.rec** %501, align 8
  store %union.rec* %502, %union.rec** @zz_hold, align 8
  store %union.rec* %502, %union.rec** @zz_hold, align 8
  %503 = load %union.rec*, %union.rec** @zz_hold, align 8
  %504 = bitcast %union.rec* %503 to %struct.word_type*
  %505 = getelementptr inbounds %struct.word_type, %struct.word_type* %504, i32 0, i32 0
  %506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %505, i32 0, i64 0
  %507 = getelementptr inbounds %struct.LIST, %struct.LIST* %506, i32 0, i32 0
  %508 = load %union.rec*, %union.rec** %507, align 8
  %509 = load i32, i32* @zz_size, align 4
  %510 = sext i32 %509 to i64
  %511 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %510
  store %union.rec* %508, %union.rec** %511, align 8
  br label %512

; <label>:512                                     ; preds = %498, %494
  br label %513

; <label>:513                                     ; preds = %512, %485
  %514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 1
  %517 = bitcast %union.FIRST_UNION* %516 to %struct.anon*
  %518 = getelementptr inbounds %struct.anon, %struct.anon* %517, i32 0, i32 0
  store i8 17, i8* %518, align 1
  %519 = load %union.rec*, %union.rec** @zz_hold, align 8
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 0
  %523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %522, i32 0, i64 1
  %524 = getelementptr inbounds %struct.LIST, %struct.LIST* %523, i32 0, i32 1
  store %union.rec* %519, %union.rec** %524, align 8
  %525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %526 = bitcast %union.rec* %525 to %struct.word_type*
  %527 = getelementptr inbounds %struct.word_type, %struct.word_type* %526, i32 0, i32 0
  %528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %527, i32 0, i64 1
  %529 = getelementptr inbounds %struct.LIST, %struct.LIST* %528, i32 0, i32 0
  store %union.rec* %519, %union.rec** %529, align 8
  %530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 0
  %533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %532, i32 0, i64 0
  %534 = getelementptr inbounds %struct.LIST, %struct.LIST* %533, i32 0, i32 1
  store %union.rec* %519, %union.rec** %534, align 8
  %535 = load %union.rec*, %union.rec** @zz_hold, align 8
  %536 = bitcast %union.rec* %535 to %struct.word_type*
  %537 = getelementptr inbounds %struct.word_type, %struct.word_type* %536, i32 0, i32 0
  %538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %537, i32 0, i64 0
  %539 = getelementptr inbounds %struct.LIST, %struct.LIST* %538, i32 0, i32 0
  store %union.rec* %519, %union.rec** %539, align 8
  store %union.rec* %519, %union.rec** %hold_key, align 8
  %540 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %541 = zext i8 %540 to i32
  store i32 %541, i32* @zz_size, align 4
  %542 = sext i32 %541 to i64
  %543 = icmp uge i64 %542, 265
  br i1 %543, label %544, label %547

; <label>:544                                     ; preds = %513
  %545 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %546 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %545)
  br label %572

; <label>:547                                     ; preds = %513
  %548 = load i32, i32* @zz_size, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %549
  %551 = load %union.rec*, %union.rec** %550, align 8
  %552 = icmp eq %union.rec* %551, null
  br i1 %552, label %553, label %557

; <label>:553                                     ; preds = %547
  %554 = load i32, i32* @zz_size, align 4
  %555 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %556 = call %union.rec* @GetMemory(i32 %554, %struct.FILE_POS* %555)
  store %union.rec* %556, %union.rec** @zz_hold, align 8
  br label %571

; <label>:557                                     ; preds = %547
  %558 = load i32, i32* @zz_size, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %559
  %561 = load %union.rec*, %union.rec** %560, align 8
  store %union.rec* %561, %union.rec** @zz_hold, align 8
  store %union.rec* %561, %union.rec** @zz_hold, align 8
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 0
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  %567 = load %union.rec*, %union.rec** %566, align 8
  %568 = load i32, i32* @zz_size, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %569
  store %union.rec* %567, %union.rec** %570, align 8
  br label %571

; <label>:571                                     ; preds = %557, %553
  br label %572

; <label>:572                                     ; preds = %571, %544
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = bitcast %union.rec* %573 to %struct.word_type*
  %575 = getelementptr inbounds %struct.word_type, %struct.word_type* %574, i32 0, i32 1
  %576 = bitcast %union.FIRST_UNION* %575 to %struct.anon*
  %577 = getelementptr inbounds %struct.anon, %struct.anon* %576, i32 0, i32 0
  store i8 0, i8* %577, align 1
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 1
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 1
  store %union.rec* %578, %union.rec** %583, align 8
  %584 = load %union.rec*, %union.rec** @zz_hold, align 8
  %585 = bitcast %union.rec* %584 to %struct.word_type*
  %586 = getelementptr inbounds %struct.word_type, %struct.word_type* %585, i32 0, i32 0
  %587 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %586, i32 0, i64 1
  %588 = getelementptr inbounds %struct.LIST, %struct.LIST* %587, i32 0, i32 0
  store %union.rec* %578, %union.rec** %588, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 0
  %592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %591, i32 0, i64 0
  %593 = getelementptr inbounds %struct.LIST, %struct.LIST* %592, i32 0, i32 1
  store %union.rec* %578, %union.rec** %593, align 8
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 0
  %597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %596, i32 0, i64 0
  %598 = getelementptr inbounds %struct.LIST, %struct.LIST* %597, i32 0, i32 0
  store %union.rec* %578, %union.rec** %598, align 8
  store %union.rec* %578, %union.rec** @xx_link, align 8
  %599 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %599, %union.rec** @zz_res, align 8
  %600 = load %union.rec*, %union.rec** %hold_key, align 8
  store %union.rec* %600, %union.rec** @zz_hold, align 8
  %601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %602 = icmp eq %union.rec* %601, null
  br i1 %602, label %603, label %605

; <label>:603                                     ; preds = %572
  %604 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %653

; <label>:605                                     ; preds = %572
  %606 = load %union.rec*, %union.rec** @zz_res, align 8
  %607 = icmp eq %union.rec* %606, null
  br i1 %607, label %608, label %610

; <label>:608                                     ; preds = %605
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %651

; <label>:610                                     ; preds = %605
  %611 = load %union.rec*, %union.rec** @zz_hold, align 8
  %612 = bitcast %union.rec* %611 to %struct.word_type*
  %613 = getelementptr inbounds %struct.word_type, %struct.word_type* %612, i32 0, i32 0
  %614 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %613, i32 0, i64 0
  %615 = getelementptr inbounds %struct.LIST, %struct.LIST* %614, i32 0, i32 0
  %616 = load %union.rec*, %union.rec** %615, align 8
  store %union.rec* %616, %union.rec** @zz_tmp, align 8
  %617 = load %union.rec*, %union.rec** @zz_res, align 8
  %618 = bitcast %union.rec* %617 to %struct.word_type*
  %619 = getelementptr inbounds %struct.word_type, %struct.word_type* %618, i32 0, i32 0
  %620 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %619, i32 0, i64 0
  %621 = getelementptr inbounds %struct.LIST, %struct.LIST* %620, i32 0, i32 0
  %622 = load %union.rec*, %union.rec** %621, align 8
  %623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %624 = bitcast %union.rec* %623 to %struct.word_type*
  %625 = getelementptr inbounds %struct.word_type, %struct.word_type* %624, i32 0, i32 0
  %626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %625, i32 0, i64 0
  %627 = getelementptr inbounds %struct.LIST, %struct.LIST* %626, i32 0, i32 0
  store %union.rec* %622, %union.rec** %627, align 8
  %628 = load %union.rec*, %union.rec** @zz_hold, align 8
  %629 = load %union.rec*, %union.rec** @zz_res, align 8
  %630 = bitcast %union.rec* %629 to %struct.word_type*
  %631 = getelementptr inbounds %struct.word_type, %struct.word_type* %630, i32 0, i32 0
  %632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %631, i32 0, i64 0
  %633 = getelementptr inbounds %struct.LIST, %struct.LIST* %632, i32 0, i32 0
  %634 = load %union.rec*, %union.rec** %633, align 8
  %635 = bitcast %union.rec* %634 to %struct.word_type*
  %636 = getelementptr inbounds %struct.word_type, %struct.word_type* %635, i32 0, i32 0
  %637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %636, i32 0, i64 0
  %638 = getelementptr inbounds %struct.LIST, %struct.LIST* %637, i32 0, i32 1
  store %union.rec* %628, %union.rec** %638, align 8
  %639 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %640 = load %union.rec*, %union.rec** @zz_res, align 8
  %641 = bitcast %union.rec* %640 to %struct.word_type*
  %642 = getelementptr inbounds %struct.word_type, %struct.word_type* %641, i32 0, i32 0
  %643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %642, i32 0, i64 0
  %644 = getelementptr inbounds %struct.LIST, %struct.LIST* %643, i32 0, i32 0
  store %union.rec* %639, %union.rec** %644, align 8
  %645 = load %union.rec*, %union.rec** @zz_res, align 8
  %646 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %647 = bitcast %union.rec* %646 to %struct.word_type*
  %648 = getelementptr inbounds %struct.word_type, %struct.word_type* %647, i32 0, i32 0
  %649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %648, i32 0, i64 0
  %650 = getelementptr inbounds %struct.LIST, %struct.LIST* %649, i32 0, i32 1
  store %union.rec* %645, %union.rec** %650, align 8
  br label %651

; <label>:651                                     ; preds = %610, %608
  %652 = phi %union.rec* [ %609, %608 ], [ %645, %610 ]
  br label %653

; <label>:653                                     ; preds = %651, %603
  %654 = phi %union.rec* [ %604, %603 ], [ %652, %651 ]
  %655 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %655, %union.rec** @zz_res, align 8
  %656 = load %union.rec*, %union.rec** %key, align 8
  store %union.rec* %656, %union.rec** @zz_hold, align 8
  %657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %658 = icmp eq %union.rec* %657, null
  br i1 %658, label %659, label %661

; <label>:659                                     ; preds = %653
  %660 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %709

; <label>:661                                     ; preds = %653
  %662 = load %union.rec*, %union.rec** @zz_res, align 8
  %663 = icmp eq %union.rec* %662, null
  br i1 %663, label %664, label %666

; <label>:664                                     ; preds = %661
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %707

; <label>:666                                     ; preds = %661
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %668 = bitcast %union.rec* %667 to %struct.word_type*
  %669 = getelementptr inbounds %struct.word_type, %struct.word_type* %668, i32 0, i32 0
  %670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %669, i32 0, i64 1
  %671 = getelementptr inbounds %struct.LIST, %struct.LIST* %670, i32 0, i32 0
  %672 = load %union.rec*, %union.rec** %671, align 8
  store %union.rec* %672, %union.rec** @zz_tmp, align 8
  %673 = load %union.rec*, %union.rec** @zz_res, align 8
  %674 = bitcast %union.rec* %673 to %struct.word_type*
  %675 = getelementptr inbounds %struct.word_type, %struct.word_type* %674, i32 0, i32 0
  %676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %675, i32 0, i64 1
  %677 = getelementptr inbounds %struct.LIST, %struct.LIST* %676, i32 0, i32 0
  %678 = load %union.rec*, %union.rec** %677, align 8
  %679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %680 = bitcast %union.rec* %679 to %struct.word_type*
  %681 = getelementptr inbounds %struct.word_type, %struct.word_type* %680, i32 0, i32 0
  %682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %681, i32 0, i64 1
  %683 = getelementptr inbounds %struct.LIST, %struct.LIST* %682, i32 0, i32 0
  store %union.rec* %678, %union.rec** %683, align 8
  %684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %685 = load %union.rec*, %union.rec** @zz_res, align 8
  %686 = bitcast %union.rec* %685 to %struct.word_type*
  %687 = getelementptr inbounds %struct.word_type, %struct.word_type* %686, i32 0, i32 0
  %688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %687, i32 0, i64 1
  %689 = getelementptr inbounds %struct.LIST, %struct.LIST* %688, i32 0, i32 0
  %690 = load %union.rec*, %union.rec** %689, align 8
  %691 = bitcast %union.rec* %690 to %struct.word_type*
  %692 = getelementptr inbounds %struct.word_type, %struct.word_type* %691, i32 0, i32 0
  %693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %692, i32 0, i64 1
  %694 = getelementptr inbounds %struct.LIST, %struct.LIST* %693, i32 0, i32 1
  store %union.rec* %684, %union.rec** %694, align 8
  %695 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %696 = load %union.rec*, %union.rec** @zz_res, align 8
  %697 = bitcast %union.rec* %696 to %struct.word_type*
  %698 = getelementptr inbounds %struct.word_type, %struct.word_type* %697, i32 0, i32 0
  %699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %698, i32 0, i64 1
  %700 = getelementptr inbounds %struct.LIST, %struct.LIST* %699, i32 0, i32 0
  store %union.rec* %695, %union.rec** %700, align 8
  %701 = load %union.rec*, %union.rec** @zz_res, align 8
  %702 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 0
  %705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %704, i32 0, i64 1
  %706 = getelementptr inbounds %struct.LIST, %struct.LIST* %705, i32 0, i32 1
  store %union.rec* %701, %union.rec** %706, align 8
  br label %707

; <label>:707                                     ; preds = %666, %664
  %708 = phi %union.rec* [ %665, %664 ], [ %701, %666 ]
  br label %709

; <label>:709                                     ; preds = %707, %659
  %710 = phi %union.rec* [ %660, %659 ], [ %708, %707 ]
  %711 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 82), align 1
  %712 = zext i8 %711 to i32
  store i32 %712, i32* @zz_size, align 4
  %713 = sext i32 %712 to i64
  %714 = icmp uge i64 %713, 265
  br i1 %714, label %715, label %718

; <label>:715                                     ; preds = %709
  %716 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %717 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %716)
  br label %743

; <label>:718                                     ; preds = %709
  %719 = load i32, i32* @zz_size, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %720
  %722 = load %union.rec*, %union.rec** %721, align 8
  %723 = icmp eq %union.rec* %722, null
  br i1 %723, label %724, label %728

; <label>:724                                     ; preds = %718
  %725 = load i32, i32* @zz_size, align 4
  %726 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %727 = call %union.rec* @GetMemory(i32 %725, %struct.FILE_POS* %726)
  store %union.rec* %727, %union.rec** @zz_hold, align 8
  br label %742

; <label>:728                                     ; preds = %718
  %729 = load i32, i32* @zz_size, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %730
  %732 = load %union.rec*, %union.rec** %731, align 8
  store %union.rec* %732, %union.rec** @zz_hold, align 8
  store %union.rec* %732, %union.rec** @zz_hold, align 8
  %733 = load %union.rec*, %union.rec** @zz_hold, align 8
  %734 = bitcast %union.rec* %733 to %struct.word_type*
  %735 = getelementptr inbounds %struct.word_type, %struct.word_type* %734, i32 0, i32 0
  %736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %735, i32 0, i64 0
  %737 = getelementptr inbounds %struct.LIST, %struct.LIST* %736, i32 0, i32 0
  %738 = load %union.rec*, %union.rec** %737, align 8
  %739 = load i32, i32* @zz_size, align 4
  %740 = sext i32 %739 to i64
  %741 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %740
  store %union.rec* %738, %union.rec** %741, align 8
  br label %742

; <label>:742                                     ; preds = %728, %724
  br label %743

; <label>:743                                     ; preds = %742, %715
  %744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %745 = bitcast %union.rec* %744 to %struct.word_type*
  %746 = getelementptr inbounds %struct.word_type, %struct.word_type* %745, i32 0, i32 1
  %747 = bitcast %union.FIRST_UNION* %746 to %struct.anon*
  %748 = getelementptr inbounds %struct.anon, %struct.anon* %747, i32 0, i32 0
  store i8 82, i8* %748, align 1
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 0
  %753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %752, i32 0, i64 1
  %754 = getelementptr inbounds %struct.LIST, %struct.LIST* %753, i32 0, i32 1
  store %union.rec* %749, %union.rec** %754, align 8
  %755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %756 = bitcast %union.rec* %755 to %struct.word_type*
  %757 = getelementptr inbounds %struct.word_type, %struct.word_type* %756, i32 0, i32 0
  %758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %757, i32 0, i64 1
  %759 = getelementptr inbounds %struct.LIST, %struct.LIST* %758, i32 0, i32 0
  store %union.rec* %749, %union.rec** %759, align 8
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %761 = bitcast %union.rec* %760 to %struct.word_type*
  %762 = getelementptr inbounds %struct.word_type, %struct.word_type* %761, i32 0, i32 0
  %763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %762, i32 0, i64 0
  %764 = getelementptr inbounds %struct.LIST, %struct.LIST* %763, i32 0, i32 1
  store %union.rec* %749, %union.rec** %764, align 8
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %766 = bitcast %union.rec* %765 to %struct.word_type*
  %767 = getelementptr inbounds %struct.word_type, %struct.word_type* %766, i32 0, i32 0
  %768 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %767, i32 0, i64 0
  %769 = getelementptr inbounds %struct.LIST, %struct.LIST* %768, i32 0, i32 0
  store %union.rec* %749, %union.rec** %769, align 8
  store %union.rec* %749, %union.rec** %env, align 8
  %770 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %771 = zext i8 %770 to i32
  store i32 %771, i32* @zz_size, align 4
  %772 = sext i32 %771 to i64
  %773 = icmp uge i64 %772, 265
  br i1 %773, label %774, label %777

; <label>:774                                     ; preds = %743
  %775 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %776 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %775)
  br label %802

; <label>:777                                     ; preds = %743
  %778 = load i32, i32* @zz_size, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %779
  %781 = load %union.rec*, %union.rec** %780, align 8
  %782 = icmp eq %union.rec* %781, null
  br i1 %782, label %783, label %787

; <label>:783                                     ; preds = %777
  %784 = load i32, i32* @zz_size, align 4
  %785 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %786 = call %union.rec* @GetMemory(i32 %784, %struct.FILE_POS* %785)
  store %union.rec* %786, %union.rec** @zz_hold, align 8
  br label %801

; <label>:787                                     ; preds = %777
  %788 = load i32, i32* @zz_size, align 4
  %789 = sext i32 %788 to i64
  %790 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %789
  %791 = load %union.rec*, %union.rec** %790, align 8
  store %union.rec* %791, %union.rec** @zz_hold, align 8
  store %union.rec* %791, %union.rec** @zz_hold, align 8
  %792 = load %union.rec*, %union.rec** @zz_hold, align 8
  %793 = bitcast %union.rec* %792 to %struct.word_type*
  %794 = getelementptr inbounds %struct.word_type, %struct.word_type* %793, i32 0, i32 0
  %795 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %794, i32 0, i64 0
  %796 = getelementptr inbounds %struct.LIST, %struct.LIST* %795, i32 0, i32 0
  %797 = load %union.rec*, %union.rec** %796, align 8
  %798 = load i32, i32* @zz_size, align 4
  %799 = sext i32 %798 to i64
  %800 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %799
  store %union.rec* %797, %union.rec** %800, align 8
  br label %801

; <label>:801                                     ; preds = %787, %783
  br label %802

; <label>:802                                     ; preds = %801, %774
  %803 = load %union.rec*, %union.rec** @zz_hold, align 8
  %804 = bitcast %union.rec* %803 to %struct.word_type*
  %805 = getelementptr inbounds %struct.word_type, %struct.word_type* %804, i32 0, i32 1
  %806 = bitcast %union.FIRST_UNION* %805 to %struct.anon*
  %807 = getelementptr inbounds %struct.anon, %struct.anon* %806, i32 0, i32 0
  store i8 0, i8* %807, align 1
  %808 = load %union.rec*, %union.rec** @zz_hold, align 8
  %809 = load %union.rec*, %union.rec** @zz_hold, align 8
  %810 = bitcast %union.rec* %809 to %struct.word_type*
  %811 = getelementptr inbounds %struct.word_type, %struct.word_type* %810, i32 0, i32 0
  %812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %811, i32 0, i64 1
  %813 = getelementptr inbounds %struct.LIST, %struct.LIST* %812, i32 0, i32 1
  store %union.rec* %808, %union.rec** %813, align 8
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %815 = bitcast %union.rec* %814 to %struct.word_type*
  %816 = getelementptr inbounds %struct.word_type, %struct.word_type* %815, i32 0, i32 0
  %817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %816, i32 0, i64 1
  %818 = getelementptr inbounds %struct.LIST, %struct.LIST* %817, i32 0, i32 0
  store %union.rec* %808, %union.rec** %818, align 8
  %819 = load %union.rec*, %union.rec** @zz_hold, align 8
  %820 = bitcast %union.rec* %819 to %struct.word_type*
  %821 = getelementptr inbounds %struct.word_type, %struct.word_type* %820, i32 0, i32 0
  %822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %821, i32 0, i64 0
  %823 = getelementptr inbounds %struct.LIST, %struct.LIST* %822, i32 0, i32 1
  store %union.rec* %808, %union.rec** %823, align 8
  %824 = load %union.rec*, %union.rec** @zz_hold, align 8
  %825 = bitcast %union.rec* %824 to %struct.word_type*
  %826 = getelementptr inbounds %struct.word_type, %struct.word_type* %825, i32 0, i32 0
  %827 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %826, i32 0, i64 0
  %828 = getelementptr inbounds %struct.LIST, %struct.LIST* %827, i32 0, i32 0
  store %union.rec* %808, %union.rec** %828, align 8
  store %union.rec* %808, %union.rec** @xx_link, align 8
  %829 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %829, %union.rec** @zz_res, align 8
  %830 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %830, %union.rec** @zz_hold, align 8
  %831 = load %union.rec*, %union.rec** @zz_hold, align 8
  %832 = icmp eq %union.rec* %831, null
  br i1 %832, label %833, label %835

; <label>:833                                     ; preds = %802
  %834 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %883

; <label>:835                                     ; preds = %802
  %836 = load %union.rec*, %union.rec** @zz_res, align 8
  %837 = icmp eq %union.rec* %836, null
  br i1 %837, label %838, label %840

; <label>:838                                     ; preds = %835
  %839 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %881

; <label>:840                                     ; preds = %835
  %841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %842 = bitcast %union.rec* %841 to %struct.word_type*
  %843 = getelementptr inbounds %struct.word_type, %struct.word_type* %842, i32 0, i32 0
  %844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %843, i32 0, i64 0
  %845 = getelementptr inbounds %struct.LIST, %struct.LIST* %844, i32 0, i32 0
  %846 = load %union.rec*, %union.rec** %845, align 8
  store %union.rec* %846, %union.rec** @zz_tmp, align 8
  %847 = load %union.rec*, %union.rec** @zz_res, align 8
  %848 = bitcast %union.rec* %847 to %struct.word_type*
  %849 = getelementptr inbounds %struct.word_type, %struct.word_type* %848, i32 0, i32 0
  %850 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %849, i32 0, i64 0
  %851 = getelementptr inbounds %struct.LIST, %struct.LIST* %850, i32 0, i32 0
  %852 = load %union.rec*, %union.rec** %851, align 8
  %853 = load %union.rec*, %union.rec** @zz_hold, align 8
  %854 = bitcast %union.rec* %853 to %struct.word_type*
  %855 = getelementptr inbounds %struct.word_type, %struct.word_type* %854, i32 0, i32 0
  %856 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %855, i32 0, i64 0
  %857 = getelementptr inbounds %struct.LIST, %struct.LIST* %856, i32 0, i32 0
  store %union.rec* %852, %union.rec** %857, align 8
  %858 = load %union.rec*, %union.rec** @zz_hold, align 8
  %859 = load %union.rec*, %union.rec** @zz_res, align 8
  %860 = bitcast %union.rec* %859 to %struct.word_type*
  %861 = getelementptr inbounds %struct.word_type, %struct.word_type* %860, i32 0, i32 0
  %862 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %861, i32 0, i64 0
  %863 = getelementptr inbounds %struct.LIST, %struct.LIST* %862, i32 0, i32 0
  %864 = load %union.rec*, %union.rec** %863, align 8
  %865 = bitcast %union.rec* %864 to %struct.word_type*
  %866 = getelementptr inbounds %struct.word_type, %struct.word_type* %865, i32 0, i32 0
  %867 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %866, i32 0, i64 0
  %868 = getelementptr inbounds %struct.LIST, %struct.LIST* %867, i32 0, i32 1
  store %union.rec* %858, %union.rec** %868, align 8
  %869 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %870 = load %union.rec*, %union.rec** @zz_res, align 8
  %871 = bitcast %union.rec* %870 to %struct.word_type*
  %872 = getelementptr inbounds %struct.word_type, %struct.word_type* %871, i32 0, i32 0
  %873 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %872, i32 0, i64 0
  %874 = getelementptr inbounds %struct.LIST, %struct.LIST* %873, i32 0, i32 0
  store %union.rec* %869, %union.rec** %874, align 8
  %875 = load %union.rec*, %union.rec** @zz_res, align 8
  %876 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %877 = bitcast %union.rec* %876 to %struct.word_type*
  %878 = getelementptr inbounds %struct.word_type, %struct.word_type* %877, i32 0, i32 0
  %879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %878, i32 0, i64 0
  %880 = getelementptr inbounds %struct.LIST, %struct.LIST* %879, i32 0, i32 1
  store %union.rec* %875, %union.rec** %880, align 8
  br label %881

; <label>:881                                     ; preds = %840, %838
  %882 = phi %union.rec* [ %839, %838 ], [ %875, %840 ]
  br label %883

; <label>:883                                     ; preds = %881, %833
  %884 = phi %union.rec* [ %834, %833 ], [ %882, %881 ]
  %885 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %885, %union.rec** @zz_res, align 8
  %886 = load %union.rec*, %union.rec** %val, align 8
  store %union.rec* %886, %union.rec** @zz_hold, align 8
  %887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %888 = icmp eq %union.rec* %887, null
  br i1 %888, label %889, label %891

; <label>:889                                     ; preds = %883
  %890 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %939

; <label>:891                                     ; preds = %883
  %892 = load %union.rec*, %union.rec** @zz_res, align 8
  %893 = icmp eq %union.rec* %892, null
  br i1 %893, label %894, label %896

; <label>:894                                     ; preds = %891
  %895 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %937

; <label>:896                                     ; preds = %891
  %897 = load %union.rec*, %union.rec** @zz_hold, align 8
  %898 = bitcast %union.rec* %897 to %struct.word_type*
  %899 = getelementptr inbounds %struct.word_type, %struct.word_type* %898, i32 0, i32 0
  %900 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %899, i32 0, i64 1
  %901 = getelementptr inbounds %struct.LIST, %struct.LIST* %900, i32 0, i32 0
  %902 = load %union.rec*, %union.rec** %901, align 8
  store %union.rec* %902, %union.rec** @zz_tmp, align 8
  %903 = load %union.rec*, %union.rec** @zz_res, align 8
  %904 = bitcast %union.rec* %903 to %struct.word_type*
  %905 = getelementptr inbounds %struct.word_type, %struct.word_type* %904, i32 0, i32 0
  %906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %905, i32 0, i64 1
  %907 = getelementptr inbounds %struct.LIST, %struct.LIST* %906, i32 0, i32 0
  %908 = load %union.rec*, %union.rec** %907, align 8
  %909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %910 = bitcast %union.rec* %909 to %struct.word_type*
  %911 = getelementptr inbounds %struct.word_type, %struct.word_type* %910, i32 0, i32 0
  %912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %911, i32 0, i64 1
  %913 = getelementptr inbounds %struct.LIST, %struct.LIST* %912, i32 0, i32 0
  store %union.rec* %908, %union.rec** %913, align 8
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %915 = load %union.rec*, %union.rec** @zz_res, align 8
  %916 = bitcast %union.rec* %915 to %struct.word_type*
  %917 = getelementptr inbounds %struct.word_type, %struct.word_type* %916, i32 0, i32 0
  %918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %917, i32 0, i64 1
  %919 = getelementptr inbounds %struct.LIST, %struct.LIST* %918, i32 0, i32 0
  %920 = load %union.rec*, %union.rec** %919, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 0
  %923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %922, i32 0, i64 1
  %924 = getelementptr inbounds %struct.LIST, %struct.LIST* %923, i32 0, i32 1
  store %union.rec* %914, %union.rec** %924, align 8
  %925 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %926 = load %union.rec*, %union.rec** @zz_res, align 8
  %927 = bitcast %union.rec* %926 to %struct.word_type*
  %928 = getelementptr inbounds %struct.word_type, %struct.word_type* %927, i32 0, i32 0
  %929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %928, i32 0, i64 1
  %930 = getelementptr inbounds %struct.LIST, %struct.LIST* %929, i32 0, i32 0
  store %union.rec* %925, %union.rec** %930, align 8
  %931 = load %union.rec*, %union.rec** @zz_res, align 8
  %932 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 0
  %935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %934, i32 0, i64 1
  %936 = getelementptr inbounds %struct.LIST, %struct.LIST* %935, i32 0, i32 1
  store %union.rec* %931, %union.rec** %936, align 8
  br label %937

; <label>:937                                     ; preds = %896, %894
  %938 = phi %union.rec* [ %895, %894 ], [ %931, %896 ]
  br label %939

; <label>:939                                     ; preds = %937, %889
  %940 = phi %union.rec* [ %890, %889 ], [ %938, %937 ]
  %941 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %942 = zext i8 %941 to i32
  store i32 %942, i32* @zz_size, align 4
  %943 = sext i32 %942 to i64
  %944 = icmp uge i64 %943, 265
  br i1 %944, label %945, label %948

; <label>:945                                     ; preds = %939
  %946 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %947 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %946)
  br label %973

; <label>:948                                     ; preds = %939
  %949 = load i32, i32* @zz_size, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %950
  %952 = load %union.rec*, %union.rec** %951, align 8
  %953 = icmp eq %union.rec* %952, null
  br i1 %953, label %954, label %958

; <label>:954                                     ; preds = %948
  %955 = load i32, i32* @zz_size, align 4
  %956 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %957 = call %union.rec* @GetMemory(i32 %955, %struct.FILE_POS* %956)
  store %union.rec* %957, %union.rec** @zz_hold, align 8
  br label %972

; <label>:958                                     ; preds = %948
  %959 = load i32, i32* @zz_size, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %960
  %962 = load %union.rec*, %union.rec** %961, align 8
  store %union.rec* %962, %union.rec** @zz_hold, align 8
  store %union.rec* %962, %union.rec** @zz_hold, align 8
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  %964 = bitcast %union.rec* %963 to %struct.word_type*
  %965 = getelementptr inbounds %struct.word_type, %struct.word_type* %964, i32 0, i32 0
  %966 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %965, i32 0, i64 0
  %967 = getelementptr inbounds %struct.LIST, %struct.LIST* %966, i32 0, i32 0
  %968 = load %union.rec*, %union.rec** %967, align 8
  %969 = load i32, i32* @zz_size, align 4
  %970 = sext i32 %969 to i64
  %971 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %970
  store %union.rec* %968, %union.rec** %971, align 8
  br label %972

; <label>:972                                     ; preds = %958, %954
  br label %973

; <label>:973                                     ; preds = %972, %945
  %974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 1
  %977 = bitcast %union.FIRST_UNION* %976 to %struct.anon*
  %978 = getelementptr inbounds %struct.anon, %struct.anon* %977, i32 0, i32 0
  store i8 17, i8* %978, align 1
  %979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %981 = bitcast %union.rec* %980 to %struct.word_type*
  %982 = getelementptr inbounds %struct.word_type, %struct.word_type* %981, i32 0, i32 0
  %983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %982, i32 0, i64 1
  %984 = getelementptr inbounds %struct.LIST, %struct.LIST* %983, i32 0, i32 1
  store %union.rec* %979, %union.rec** %984, align 8
  %985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 1
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 0
  store %union.rec* %979, %union.rec** %989, align 8
  %990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %991 = bitcast %union.rec* %990 to %struct.word_type*
  %992 = getelementptr inbounds %struct.word_type, %struct.word_type* %991, i32 0, i32 0
  %993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %992, i32 0, i64 0
  %994 = getelementptr inbounds %struct.LIST, %struct.LIST* %993, i32 0, i32 1
  store %union.rec* %979, %union.rec** %994, align 8
  %995 = load %union.rec*, %union.rec** @zz_hold, align 8
  %996 = bitcast %union.rec* %995 to %struct.word_type*
  %997 = getelementptr inbounds %struct.word_type, %struct.word_type* %996, i32 0, i32 0
  %998 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %997, i32 0, i64 0
  %999 = getelementptr inbounds %struct.LIST, %struct.LIST* %998, i32 0, i32 0
  store %union.rec* %979, %union.rec** %999, align 8
  store %union.rec* %979, %union.rec** %hold_env, align 8
  %1000 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1001 = zext i8 %1000 to i32
  store i32 %1001, i32* @zz_size, align 4
  %1002 = sext i32 %1001 to i64
  %1003 = icmp uge i64 %1002, 265
  br i1 %1003, label %1004, label %1007

; <label>:1004                                    ; preds = %973
  %1005 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1006 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1005)
  br label %1032

; <label>:1007                                    ; preds = %973
  %1008 = load i32, i32* @zz_size, align 4
  %1009 = sext i32 %1008 to i64
  %1010 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1009
  %1011 = load %union.rec*, %union.rec** %1010, align 8
  %1012 = icmp eq %union.rec* %1011, null
  br i1 %1012, label %1013, label %1017

; <label>:1013                                    ; preds = %1007
  %1014 = load i32, i32* @zz_size, align 4
  %1015 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1016 = call %union.rec* @GetMemory(i32 %1014, %struct.FILE_POS* %1015)
  store %union.rec* %1016, %union.rec** @zz_hold, align 8
  br label %1031

; <label>:1017                                    ; preds = %1007
  %1018 = load i32, i32* @zz_size, align 4
  %1019 = sext i32 %1018 to i64
  %1020 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1019
  %1021 = load %union.rec*, %union.rec** %1020, align 8
  store %union.rec* %1021, %union.rec** @zz_hold, align 8
  store %union.rec* %1021, %union.rec** @zz_hold, align 8
  %1022 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1023 = bitcast %union.rec* %1022 to %struct.word_type*
  %1024 = getelementptr inbounds %struct.word_type, %struct.word_type* %1023, i32 0, i32 0
  %1025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1024, i32 0, i64 0
  %1026 = getelementptr inbounds %struct.LIST, %struct.LIST* %1025, i32 0, i32 0
  %1027 = load %union.rec*, %union.rec** %1026, align 8
  %1028 = load i32, i32* @zz_size, align 4
  %1029 = sext i32 %1028 to i64
  %1030 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1029
  store %union.rec* %1027, %union.rec** %1030, align 8
  br label %1031

; <label>:1031                                    ; preds = %1017, %1013
  br label %1032

; <label>:1032                                    ; preds = %1031, %1004
  %1033 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1034 = bitcast %union.rec* %1033 to %struct.word_type*
  %1035 = getelementptr inbounds %struct.word_type, %struct.word_type* %1034, i32 0, i32 1
  %1036 = bitcast %union.FIRST_UNION* %1035 to %struct.anon*
  %1037 = getelementptr inbounds %struct.anon, %struct.anon* %1036, i32 0, i32 0
  store i8 0, i8* %1037, align 1
  %1038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1039 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1040 = bitcast %union.rec* %1039 to %struct.word_type*
  %1041 = getelementptr inbounds %struct.word_type, %struct.word_type* %1040, i32 0, i32 0
  %1042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1041, i32 0, i64 1
  %1043 = getelementptr inbounds %struct.LIST, %struct.LIST* %1042, i32 0, i32 1
  store %union.rec* %1038, %union.rec** %1043, align 8
  %1044 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1045 = bitcast %union.rec* %1044 to %struct.word_type*
  %1046 = getelementptr inbounds %struct.word_type, %struct.word_type* %1045, i32 0, i32 0
  %1047 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1046, i32 0, i64 1
  %1048 = getelementptr inbounds %struct.LIST, %struct.LIST* %1047, i32 0, i32 0
  store %union.rec* %1038, %union.rec** %1048, align 8
  %1049 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1050 = bitcast %union.rec* %1049 to %struct.word_type*
  %1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %1050, i32 0, i32 0
  %1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1051, i32 0, i64 0
  %1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %1052, i32 0, i32 1
  store %union.rec* %1038, %union.rec** %1053, align 8
  %1054 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1055 = bitcast %union.rec* %1054 to %struct.word_type*
  %1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %1055, i32 0, i32 0
  %1057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1056, i32 0, i64 0
  %1058 = getelementptr inbounds %struct.LIST, %struct.LIST* %1057, i32 0, i32 0
  store %union.rec* %1038, %union.rec** %1058, align 8
  store %union.rec* %1038, %union.rec** @xx_link, align 8
  %1059 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1059, %union.rec** @zz_res, align 8
  %1060 = load %union.rec*, %union.rec** %hold_env, align 8
  store %union.rec* %1060, %union.rec** @zz_hold, align 8
  %1061 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1062 = icmp eq %union.rec* %1061, null
  br i1 %1062, label %1063, label %1065

; <label>:1063                                    ; preds = %1032
  %1064 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1113

; <label>:1065                                    ; preds = %1032
  %1066 = load %union.rec*, %union.rec** @zz_res, align 8
  %1067 = icmp eq %union.rec* %1066, null
  br i1 %1067, label %1068, label %1070

; <label>:1068                                    ; preds = %1065
  %1069 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1111

; <label>:1070                                    ; preds = %1065
  %1071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1072 = bitcast %union.rec* %1071 to %struct.word_type*
  %1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %1072, i32 0, i32 0
  %1074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1073, i32 0, i64 0
  %1075 = getelementptr inbounds %struct.LIST, %struct.LIST* %1074, i32 0, i32 0
  %1076 = load %union.rec*, %union.rec** %1075, align 8
  store %union.rec* %1076, %union.rec** @zz_tmp, align 8
  %1077 = load %union.rec*, %union.rec** @zz_res, align 8
  %1078 = bitcast %union.rec* %1077 to %struct.word_type*
  %1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %1078, i32 0, i32 0
  %1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1079, i32 0, i64 0
  %1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %1080, i32 0, i32 0
  %1082 = load %union.rec*, %union.rec** %1081, align 8
  %1083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 0
  %1086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1085, i32 0, i64 0
  %1087 = getelementptr inbounds %struct.LIST, %struct.LIST* %1086, i32 0, i32 0
  store %union.rec* %1082, %union.rec** %1087, align 8
  %1088 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1089 = load %union.rec*, %union.rec** @zz_res, align 8
  %1090 = bitcast %union.rec* %1089 to %struct.word_type*
  %1091 = getelementptr inbounds %struct.word_type, %struct.word_type* %1090, i32 0, i32 0
  %1092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1091, i32 0, i64 0
  %1093 = getelementptr inbounds %struct.LIST, %struct.LIST* %1092, i32 0, i32 0
  %1094 = load %union.rec*, %union.rec** %1093, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 0
  %1097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1096, i32 0, i64 0
  %1098 = getelementptr inbounds %struct.LIST, %struct.LIST* %1097, i32 0, i32 1
  store %union.rec* %1088, %union.rec** %1098, align 8
  %1099 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1100 = load %union.rec*, %union.rec** @zz_res, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.word_type*
  %1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %1101, i32 0, i32 0
  %1103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1102, i32 0, i64 0
  %1104 = getelementptr inbounds %struct.LIST, %struct.LIST* %1103, i32 0, i32 0
  store %union.rec* %1099, %union.rec** %1104, align 8
  %1105 = load %union.rec*, %union.rec** @zz_res, align 8
  %1106 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1107 = bitcast %union.rec* %1106 to %struct.word_type*
  %1108 = getelementptr inbounds %struct.word_type, %struct.word_type* %1107, i32 0, i32 0
  %1109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1108, i32 0, i64 0
  %1110 = getelementptr inbounds %struct.LIST, %struct.LIST* %1109, i32 0, i32 1
  store %union.rec* %1105, %union.rec** %1110, align 8
  br label %1111

; <label>:1111                                    ; preds = %1070, %1068
  %1112 = phi %union.rec* [ %1069, %1068 ], [ %1105, %1070 ]
  br label %1113

; <label>:1113                                    ; preds = %1111, %1063
  %1114 = phi %union.rec* [ %1064, %1063 ], [ %1112, %1111 ]
  %1115 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1115, %union.rec** @zz_res, align 8
  %1116 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %1116, %union.rec** @zz_hold, align 8
  %1117 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1118 = icmp eq %union.rec* %1117, null
  br i1 %1118, label %1119, label %1121

; <label>:1119                                    ; preds = %1113
  %1120 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1169

; <label>:1121                                    ; preds = %1113
  %1122 = load %union.rec*, %union.rec** @zz_res, align 8
  %1123 = icmp eq %union.rec* %1122, null
  br i1 %1123, label %1124, label %1126

; <label>:1124                                    ; preds = %1121
  %1125 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1167

; <label>:1126                                    ; preds = %1121
  %1127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1128 = bitcast %union.rec* %1127 to %struct.word_type*
  %1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %1128, i32 0, i32 0
  %1130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1129, i32 0, i64 1
  %1131 = getelementptr inbounds %struct.LIST, %struct.LIST* %1130, i32 0, i32 0
  %1132 = load %union.rec*, %union.rec** %1131, align 8
  store %union.rec* %1132, %union.rec** @zz_tmp, align 8
  %1133 = load %union.rec*, %union.rec** @zz_res, align 8
  %1134 = bitcast %union.rec* %1133 to %struct.word_type*
  %1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %1134, i32 0, i32 0
  %1136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1135, i32 0, i64 1
  %1137 = getelementptr inbounds %struct.LIST, %struct.LIST* %1136, i32 0, i32 0
  %1138 = load %union.rec*, %union.rec** %1137, align 8
  %1139 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1140 = bitcast %union.rec* %1139 to %struct.word_type*
  %1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %1140, i32 0, i32 0
  %1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1141, i32 0, i64 1
  %1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %1142, i32 0, i32 0
  store %union.rec* %1138, %union.rec** %1143, align 8
  %1144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1145 = load %union.rec*, %union.rec** @zz_res, align 8
  %1146 = bitcast %union.rec* %1145 to %struct.word_type*
  %1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %1146, i32 0, i32 0
  %1148 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1147, i32 0, i64 1
  %1149 = getelementptr inbounds %struct.LIST, %struct.LIST* %1148, i32 0, i32 0
  %1150 = load %union.rec*, %union.rec** %1149, align 8
  %1151 = bitcast %union.rec* %1150 to %struct.word_type*
  %1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %1151, i32 0, i32 0
  %1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1152, i32 0, i64 1
  %1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %1153, i32 0, i32 1
  store %union.rec* %1144, %union.rec** %1154, align 8
  %1155 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1156 = load %union.rec*, %union.rec** @zz_res, align 8
  %1157 = bitcast %union.rec* %1156 to %struct.word_type*
  %1158 = getelementptr inbounds %struct.word_type, %struct.word_type* %1157, i32 0, i32 0
  %1159 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1158, i32 0, i64 1
  %1160 = getelementptr inbounds %struct.LIST, %struct.LIST* %1159, i32 0, i32 0
  store %union.rec* %1155, %union.rec** %1160, align 8
  %1161 = load %union.rec*, %union.rec** @zz_res, align 8
  %1162 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1163 = bitcast %union.rec* %1162 to %struct.word_type*
  %1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %1163, i32 0, i32 0
  %1165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1164, i32 0, i64 1
  %1166 = getelementptr inbounds %struct.LIST, %struct.LIST* %1165, i32 0, i32 1
  store %union.rec* %1161, %union.rec** %1166, align 8
  br label %1167

; <label>:1167                                    ; preds = %1126, %1124
  %1168 = phi %union.rec* [ %1125, %1124 ], [ %1161, %1126 ]
  br label %1169

; <label>:1169                                    ; preds = %1167, %1119
  %1170 = phi %union.rec* [ %1120, %1119 ], [ %1168, %1167 ]
  %1171 = load %union.rec*, %union.rec** %key, align 8
  %1172 = load %union.rec*, %union.rec** %env, align 8
  %1173 = load %union.rec*, %union.rec** %val, align 8
  %1174 = bitcast %union.rec* %1173 to %struct.closure_type*
  %1175 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1174, i32 0, i32 4
  %1176 = bitcast %union.FOURTH_UNION* %1175 to %struct.STYLE*
  %1177 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nbt, i32 0, i32 0
  %1178 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %nft, i32 0, i32 0
  %1179 = call %union.rec* @Manifest(%union.rec* %1171, %union.rec* %1172, %struct.STYLE* %1176, %union.rec** %1177, %union.rec** %1178, %union.rec** %ntarget, %union.rec** %crs, i32 0, i32 1, %union.rec** %nenclose, i32 0)
  store %union.rec* %1179, %union.rec** %key, align 8
  %1180 = load %union.rec*, %union.rec** %key, align 8
  %1181 = call %union.rec* @ReplaceWithTidy(%union.rec* %1180, i32 1)
  store %union.rec* %1181, %union.rec** %key, align 8
  %1182 = load %union.rec*, %union.rec** %env, align 8
  %1183 = bitcast %union.rec* %1182 to %struct.word_type*
  %1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %1183, i32 0, i32 0
  %1185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1184, i32 0, i64 0
  %1186 = getelementptr inbounds %struct.LIST, %struct.LIST* %1185, i32 0, i32 1
  %1187 = load %union.rec*, %union.rec** %1186, align 8
  store %union.rec* %1187, %union.rec** @xx_link, align 8
  %1188 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1188, %union.rec** @zz_hold, align 8
  %1189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1190 = bitcast %union.rec* %1189 to %struct.word_type*
  %1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %1190, i32 0, i32 0
  %1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1191, i32 0, i64 1
  %1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %1192, i32 0, i32 1
  %1194 = load %union.rec*, %union.rec** %1193, align 8
  %1195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1196 = icmp eq %union.rec* %1194, %1195
  br i1 %1196, label %1197, label %1198

; <label>:1197                                    ; preds = %1169
  br label %1239

; <label>:1198                                    ; preds = %1169
  %1199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1200 = bitcast %union.rec* %1199 to %struct.word_type*
  %1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %1200, i32 0, i32 0
  %1202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1201, i32 0, i64 1
  %1203 = getelementptr inbounds %struct.LIST, %struct.LIST* %1202, i32 0, i32 1
  %1204 = load %union.rec*, %union.rec** %1203, align 8
  store %union.rec* %1204, %union.rec** @zz_res, align 8
  %1205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1206 = bitcast %union.rec* %1205 to %struct.word_type*
  %1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %1206, i32 0, i32 0
  %1208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1207, i32 0, i64 1
  %1209 = getelementptr inbounds %struct.LIST, %struct.LIST* %1208, i32 0, i32 0
  %1210 = load %union.rec*, %union.rec** %1209, align 8
  %1211 = load %union.rec*, %union.rec** @zz_res, align 8
  %1212 = bitcast %union.rec* %1211 to %struct.word_type*
  %1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %1212, i32 0, i32 0
  %1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1213, i32 0, i64 1
  %1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %1214, i32 0, i32 0
  store %union.rec* %1210, %union.rec** %1215, align 8
  %1216 = load %union.rec*, %union.rec** @zz_res, align 8
  %1217 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1218 = bitcast %union.rec* %1217 to %struct.word_type*
  %1219 = getelementptr inbounds %struct.word_type, %struct.word_type* %1218, i32 0, i32 0
  %1220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1219, i32 0, i64 1
  %1221 = getelementptr inbounds %struct.LIST, %struct.LIST* %1220, i32 0, i32 0
  %1222 = load %union.rec*, %union.rec** %1221, align 8
  %1223 = bitcast %union.rec* %1222 to %struct.word_type*
  %1224 = getelementptr inbounds %struct.word_type, %struct.word_type* %1223, i32 0, i32 0
  %1225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1224, i32 0, i64 1
  %1226 = getelementptr inbounds %struct.LIST, %struct.LIST* %1225, i32 0, i32 1
  store %union.rec* %1216, %union.rec** %1226, align 8
  %1227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1229 = bitcast %union.rec* %1228 to %struct.word_type*
  %1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %1229, i32 0, i32 0
  %1231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1230, i32 0, i64 1
  %1232 = getelementptr inbounds %struct.LIST, %struct.LIST* %1231, i32 0, i32 1
  store %union.rec* %1227, %union.rec** %1232, align 8
  %1233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 0
  %1236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1235, i32 0, i64 1
  %1237 = getelementptr inbounds %struct.LIST, %struct.LIST* %1236, i32 0, i32 0
  store %union.rec* %1227, %union.rec** %1237, align 8
  %1238 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1239

; <label>:1239                                    ; preds = %1198, %1197
  %1240 = phi %union.rec* [ null, %1197 ], [ %1238, %1198 ]
  %1241 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1241, %union.rec** @zz_hold, align 8
  %1242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1243 = bitcast %union.rec* %1242 to %struct.word_type*
  %1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %1243, i32 0, i32 0
  %1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1244, i32 0, i64 0
  %1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %1245, i32 0, i32 1
  %1247 = load %union.rec*, %union.rec** %1246, align 8
  %1248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1249 = icmp eq %union.rec* %1247, %1248
  br i1 %1249, label %1250, label %1251

; <label>:1250                                    ; preds = %1239
  br label %1292

; <label>:1251                                    ; preds = %1239
  %1252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1253 = bitcast %union.rec* %1252 to %struct.word_type*
  %1254 = getelementptr inbounds %struct.word_type, %struct.word_type* %1253, i32 0, i32 0
  %1255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1254, i32 0, i64 0
  %1256 = getelementptr inbounds %struct.LIST, %struct.LIST* %1255, i32 0, i32 1
  %1257 = load %union.rec*, %union.rec** %1256, align 8
  store %union.rec* %1257, %union.rec** @zz_res, align 8
  %1258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1259 = bitcast %union.rec* %1258 to %struct.word_type*
  %1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %1259, i32 0, i32 0
  %1261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1260, i32 0, i64 0
  %1262 = getelementptr inbounds %struct.LIST, %struct.LIST* %1261, i32 0, i32 0
  %1263 = load %union.rec*, %union.rec** %1262, align 8
  %1264 = load %union.rec*, %union.rec** @zz_res, align 8
  %1265 = bitcast %union.rec* %1264 to %struct.word_type*
  %1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %1265, i32 0, i32 0
  %1267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1266, i32 0, i64 0
  %1268 = getelementptr inbounds %struct.LIST, %struct.LIST* %1267, i32 0, i32 0
  store %union.rec* %1263, %union.rec** %1268, align 8
  %1269 = load %union.rec*, %union.rec** @zz_res, align 8
  %1270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1271 = bitcast %union.rec* %1270 to %struct.word_type*
  %1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %1271, i32 0, i32 0
  %1273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1272, i32 0, i64 0
  %1274 = getelementptr inbounds %struct.LIST, %struct.LIST* %1273, i32 0, i32 0
  %1275 = load %union.rec*, %union.rec** %1274, align 8
  %1276 = bitcast %union.rec* %1275 to %struct.word_type*
  %1277 = getelementptr inbounds %struct.word_type, %struct.word_type* %1276, i32 0, i32 0
  %1278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1277, i32 0, i64 0
  %1279 = getelementptr inbounds %struct.LIST, %struct.LIST* %1278, i32 0, i32 1
  store %union.rec* %1269, %union.rec** %1279, align 8
  %1280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 0
  %1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1283, i32 0, i64 0
  %1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %1284, i32 0, i32 1
  store %union.rec* %1280, %union.rec** %1285, align 8
  %1286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1287 = bitcast %union.rec* %1286 to %struct.word_type*
  %1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %1287, i32 0, i32 0
  %1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1288, i32 0, i64 0
  %1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %1289, i32 0, i32 0
  store %union.rec* %1280, %union.rec** %1290, align 8
  %1291 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1292

; <label>:1292                                    ; preds = %1251, %1250
  %1293 = phi %union.rec* [ null, %1250 ], [ %1291, %1251 ]
  %1294 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1294, %union.rec** @zz_hold, align 8
  %1295 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1295, %union.rec** @zz_hold, align 8
  %1296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1297 = bitcast %union.rec* %1296 to %struct.word_type*
  %1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %1297, i32 0, i32 1
  %1299 = bitcast %union.FIRST_UNION* %1298 to %struct.anon*
  %1300 = getelementptr inbounds %struct.anon, %struct.anon* %1299, i32 0, i32 0
  %1301 = load i8, i8* %1300, align 1
  %1302 = zext i8 %1301 to i32
  %1303 = icmp eq i32 %1302, 11
  br i1 %1303, label %1313, label %1304

; <label>:1304                                    ; preds = %1292
  %1305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1306 = bitcast %union.rec* %1305 to %struct.word_type*
  %1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %1306, i32 0, i32 1
  %1308 = bitcast %union.FIRST_UNION* %1307 to %struct.anon*
  %1309 = getelementptr inbounds %struct.anon, %struct.anon* %1308, i32 0, i32 0
  %1310 = load i8, i8* %1309, align 1
  %1311 = zext i8 %1310 to i32
  %1312 = icmp eq i32 %1311, 12
  br i1 %1312, label %1313, label %1321

; <label>:1313                                    ; preds = %1304, %1292
  %1314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1315 = bitcast %union.rec* %1314 to %struct.word_type*
  %1316 = getelementptr inbounds %struct.word_type, %struct.word_type* %1315, i32 0, i32 1
  %1317 = bitcast %union.FIRST_UNION* %1316 to %struct.anon*
  %1318 = getelementptr inbounds %struct.anon, %struct.anon* %1317, i32 0, i32 1
  %1319 = load i8, i8* %1318, align 1
  %1320 = zext i8 %1319 to i32
  br label %1332

; <label>:1321                                    ; preds = %1304
  %1322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1323 = bitcast %union.rec* %1322 to %struct.word_type*
  %1324 = getelementptr inbounds %struct.word_type, %struct.word_type* %1323, i32 0, i32 1
  %1325 = bitcast %union.FIRST_UNION* %1324 to %struct.anon*
  %1326 = getelementptr inbounds %struct.anon, %struct.anon* %1325, i32 0, i32 0
  %1327 = load i8, i8* %1326, align 1
  %1328 = zext i8 %1327 to i64
  %1329 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1328
  %1330 = load i8, i8* %1329, align 1
  %1331 = zext i8 %1330 to i32
  br label %1332

; <label>:1332                                    ; preds = %1321, %1313
  %1333 = phi i32 [ %1320, %1313 ], [ %1331, %1321 ]
  store i32 %1333, i32* @zz_size, align 4
  %1334 = load i32, i32* @zz_size, align 4
  %1335 = sext i32 %1334 to i64
  %1336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1335
  %1337 = load %union.rec*, %union.rec** %1336, align 8
  %1338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1339 = bitcast %union.rec* %1338 to %struct.word_type*
  %1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %1339, i32 0, i32 0
  %1341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1340, i32 0, i64 0
  %1342 = getelementptr inbounds %struct.LIST, %struct.LIST* %1341, i32 0, i32 0
  store %union.rec* %1337, %union.rec** %1342, align 8
  %1343 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1344 = load i32, i32* @zz_size, align 4
  %1345 = sext i32 %1344 to i64
  %1346 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1345
  store %union.rec* %1343, %union.rec** %1346, align 8
  %1347 = load %union.rec*, %union.rec** %hold_env, align 8
  %1348 = call i32 @DisposeObject(%union.rec* %1347)
  br label %1349

; <label>:1349                                    ; preds = %1332, %401
  br label %1350

; <label>:1350                                    ; preds = %1349
  %1351 = load %union.rec*, %union.rec** %link, align 8
  %1352 = bitcast %union.rec* %1351 to %struct.word_type*
  %1353 = getelementptr inbounds %struct.word_type, %struct.word_type* %1352, i32 0, i32 0
  %1354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1353, i32 0, i64 0
  %1355 = getelementptr inbounds %struct.LIST, %struct.LIST* %1354, i32 0, i32 1
  %1356 = load %union.rec*, %union.rec** %1355, align 8
  store %union.rec* %1356, %union.rec** %link, align 8
  br label %370

; <label>:1357                                    ; preds = %370
  br label %1358

; <label>:1358                                    ; preds = %1357, %345
  %1359 = load %union.rec*, %union.rec** %val, align 8
  %1360 = bitcast %union.rec* %1359 to %struct.word_type*
  %1361 = getelementptr inbounds %struct.word_type, %struct.word_type* %1360, i32 0, i32 1
  %1362 = bitcast %union.FIRST_UNION* %1361 to %struct.FILE_POS*
  %1363 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %1362)
  store i16 %1363, i16* %dfnum, align 2
  %1364 = load %union.rec*, %union.rec** %val, align 8
  %1365 = load i16, i16* %dfnum, align 2
  call void @AppendToFile(%union.rec* %1364, i16 zeroext %1365, i32* %dfpos, i32* %dlnum)
  %1366 = load %union.rec*, %union.rec** %key, align 8
  %1367 = icmp eq %union.rec* %1366, null
  br i1 %1367, label %1368, label %1382

; <label>:1368                                    ; preds = %1358
  %1369 = load %union.rec*, %union.rec** %cs, align 8
  %1370 = bitcast %union.rec* %1369 to %struct.cr_type*
  %1371 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1370, i32 0, i32 8
  %1372 = load i32, i32* %1371, align 4
  %1373 = add nsw i32 %1372, 1
  store i32 %1373, i32* %1371, align 4
  %1374 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1375 = load %union.rec*, %union.rec** %cs, align 8
  %1376 = bitcast %union.rec* %1375 to %struct.cr_type*
  %1377 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1376, i32 0, i32 8
  %1378 = load i32, i32* %1377, align 4
  %1379 = call i8* @StringFiveInt(i32 %1378)
  %1380 = call i8* @strcpy(i8* %1374, i8* %1379) #5
  %1381 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  store i8* %1381, i8** %seq, align 8
  br label %1426

; <label>:1382                                    ; preds = %1358
  %1383 = load %union.rec*, %union.rec** %key, align 8
  %1384 = bitcast %union.rec* %1383 to %struct.word_type*
  %1385 = getelementptr inbounds %struct.word_type, %struct.word_type* %1384, i32 0, i32 1
  %1386 = bitcast %union.FIRST_UNION* %1385 to %struct.anon*
  %1387 = getelementptr inbounds %struct.anon, %struct.anon* %1386, i32 0, i32 0
  %1388 = load i8, i8* %1387, align 1
  %1389 = zext i8 %1388 to i32
  %1390 = icmp eq i32 %1389, 11
  br i1 %1390, label %1406, label %1391

; <label>:1391                                    ; preds = %1382
  %1392 = load %union.rec*, %union.rec** %key, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.word_type*
  %1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %1393, i32 0, i32 1
  %1395 = bitcast %union.FIRST_UNION* %1394 to %struct.anon*
  %1396 = getelementptr inbounds %struct.anon, %struct.anon* %1395, i32 0, i32 0
  %1397 = load i8, i8* %1396, align 1
  %1398 = zext i8 %1397 to i32
  %1399 = icmp eq i32 %1398, 12
  br i1 %1399, label %1406, label %1400

; <label>:1400                                    ; preds = %1391
  %1401 = load %union.rec*, %union.rec** %key, align 8
  %1402 = bitcast %union.rec* %1401 to %struct.word_type*
  %1403 = getelementptr inbounds %struct.word_type, %struct.word_type* %1402, i32 0, i32 1
  %1404 = bitcast %union.FIRST_UNION* %1403 to %struct.FILE_POS*
  %1405 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 10, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.30, i32 0, i32 0), i32 2, %struct.FILE_POS* %1404, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %seq, align 8
  br label %1425

; <label>:1406                                    ; preds = %1391, %1382
  %1407 = load %union.rec*, %union.rec** %key, align 8
  %1408 = bitcast %union.rec* %1407 to %struct.word_type*
  %1409 = getelementptr inbounds %struct.word_type, %struct.word_type* %1408, i32 0, i32 4
  %1410 = getelementptr inbounds [4 x i8], [4 x i8]* %1409, i32 0, i32 0
  %1411 = call i32 @strcmp(i8* %1410, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %1412 = icmp eq i32 %1411, 0
  br i1 %1412, label %1413, label %1419

; <label>:1413                                    ; preds = %1406
  %1414 = load %union.rec*, %union.rec** %key, align 8
  %1415 = bitcast %union.rec* %1414 to %struct.word_type*
  %1416 = getelementptr inbounds %struct.word_type, %struct.word_type* %1415, i32 0, i32 1
  %1417 = bitcast %union.FIRST_UNION* %1416 to %struct.FILE_POS*
  %1418 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0), i32 2, %struct.FILE_POS* %1417, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.31, i32 0, i32 0))
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8** %seq, align 8
  br label %1424

; <label>:1419                                    ; preds = %1406
  %1420 = load %union.rec*, %union.rec** %key, align 8
  %1421 = bitcast %union.rec* %1420 to %struct.word_type*
  %1422 = getelementptr inbounds %struct.word_type, %struct.word_type* %1421, i32 0, i32 4
  %1423 = getelementptr inbounds [4 x i8], [4 x i8]* %1422, i32 0, i32 0
  store i8* %1423, i8** %seq, align 8
  br label %1424

; <label>:1424                                    ; preds = %1419, %1413
  br label %1425

; <label>:1425                                    ; preds = %1424, %1400
  br label %1426

; <label>:1426                                    ; preds = %1425, %1368
  %1427 = load i32, i32* %ctype, align 4
  %1428 = icmp eq i32 %1427, 133
  br i1 %1428, label %1429, label %1520

; <label>:1429                                    ; preds = %1426
  %1430 = load %union.rec*, %union.rec** %cs, align 8
  %1431 = bitcast %union.rec* %1430 to %struct.cr_type*
  %1432 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1431, i32 0, i32 10
  %1433 = load %union.rec*, %union.rec** %1432, align 8
  %1434 = icmp eq %union.rec* %1433, null
  br i1 %1434, label %1435, label %1467

; <label>:1435                                    ; preds = %1429
  %1436 = load i32, i32* %ctype, align 4
  %1437 = icmp eq i32 %1436, 133
  br i1 %1437, label %1438, label %1448

; <label>:1438                                    ; preds = %1435
  %1439 = load %union.rec*, %union.rec** %val, align 8
  %1440 = bitcast %union.rec* %1439 to %struct.word_type*
  %1441 = getelementptr inbounds %struct.word_type, %struct.word_type* %1440, i32 0, i32 1
  %1442 = bitcast %union.FIRST_UNION* %1441 to %struct.FILE_POS*
  %1443 = load %union.rec*, %union.rec** %sym, align 8
  %1444 = call i8* @SymName(%union.rec* %1443)
  %1445 = load %union.rec*, %union.rec** %sym, align 8
  %1446 = call i8* @SymName(%union.rec* %1445)
  %1447 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 12, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 2, %struct.FILE_POS* %1442, i8* %1444, i8* %1446, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %1458

; <label>:1448                                    ; preds = %1435
  %1449 = load %union.rec*, %union.rec** %val, align 8
  %1450 = bitcast %union.rec* %1449 to %struct.word_type*
  %1451 = getelementptr inbounds %struct.word_type, %struct.word_type* %1450, i32 0, i32 1
  %1452 = bitcast %union.FIRST_UNION* %1451 to %struct.FILE_POS*
  %1453 = load %union.rec*, %union.rec** %sym, align 8
  %1454 = call i8* @SymName(%union.rec* %1453)
  %1455 = load %union.rec*, %union.rec** %sym, align 8
  %1456 = call i8* @SymName(%union.rec* %1455)
  %1457 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 22, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.35, i32 0, i32 0), i32 2, %struct.FILE_POS* %1452, i8* %1454, i8* %1456, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  br label %1458

; <label>:1458                                    ; preds = %1448, %1438
  %1459 = load %union.rec*, %union.rec** %val, align 8
  %1460 = bitcast %union.rec* %1459 to %struct.word_type*
  %1461 = getelementptr inbounds %struct.word_type, %struct.word_type* %1460, i32 0, i32 1
  %1462 = bitcast %union.FIRST_UNION* %1461 to %struct.FILE_POS*
  %1463 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %1462)
  %1464 = load %union.rec*, %union.rec** %cs, align 8
  %1465 = bitcast %union.rec* %1464 to %struct.cr_type*
  %1466 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1465, i32 0, i32 10
  store %union.rec* %1463, %union.rec** %1466, align 8
  br label %1467

; <label>:1467                                    ; preds = %1458, %1429
  %1468 = load %union.rec*, %union.rec** %cs, align 8
  %1469 = bitcast %union.rec* %1468 to %struct.cr_type*
  %1470 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1469, i32 0, i32 10
  %1471 = load %union.rec*, %union.rec** %1470, align 8
  %1472 = bitcast %union.rec* %1471 to %struct.word_type*
  %1473 = getelementptr inbounds %struct.word_type, %struct.word_type* %1472, i32 0, i32 1
  %1474 = bitcast %union.FIRST_UNION* %1473 to %struct.anon*
  %1475 = getelementptr inbounds %struct.anon, %struct.anon* %1474, i32 0, i32 0
  %1476 = load i8, i8* %1475, align 1
  %1477 = zext i8 %1476 to i32
  %1478 = icmp eq i32 %1477, 11
  br i1 %1478, label %1491, label %1479

; <label>:1479                                    ; preds = %1467
  %1480 = load %union.rec*, %union.rec** %cs, align 8
  %1481 = bitcast %union.rec* %1480 to %struct.cr_type*
  %1482 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1481, i32 0, i32 10
  %1483 = load %union.rec*, %union.rec** %1482, align 8
  %1484 = bitcast %union.rec* %1483 to %struct.word_type*
  %1485 = getelementptr inbounds %struct.word_type, %struct.word_type* %1484, i32 0, i32 1
  %1486 = bitcast %union.FIRST_UNION* %1485 to %struct.anon*
  %1487 = getelementptr inbounds %struct.anon, %struct.anon* %1486, i32 0, i32 0
  %1488 = load i8, i8* %1487, align 1
  %1489 = zext i8 %1488 to i32
  %1490 = icmp eq i32 %1489, 12
  br i1 %1490, label %1491, label %1501

; <label>:1491                                    ; preds = %1479, %1467
  %1492 = load %union.rec*, %union.rec** %cs, align 8
  %1493 = bitcast %union.rec* %1492 to %struct.cr_type*
  %1494 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1493, i32 0, i32 10
  %1495 = load %union.rec*, %union.rec** %1494, align 8
  %1496 = bitcast %union.rec* %1495 to %struct.word_type*
  %1497 = getelementptr inbounds %struct.word_type, %struct.word_type* %1496, i32 0, i32 4
  %1498 = getelementptr inbounds [4 x i8], [4 x i8]* %1497, i32 0, i32 0
  %1499 = call i32 @strcmp(i8* %1498, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %1500 = icmp eq i32 %1499, 0
  br i1 %1500, label %1501, label %1504

; <label>:1501                                    ; preds = %1491, %1479
  %1502 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1503 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %1502, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.37, i32 0, i32 0))
  br label %1504

; <label>:1504                                    ; preds = %1501, %1491
  %1505 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %1506 = load %union.rec*, %union.rec** %sym, align 8
  %1507 = load %union.rec*, %union.rec** %cs, align 8
  %1508 = bitcast %union.rec* %1507 to %struct.cr_type*
  %1509 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1508, i32 0, i32 10
  %1510 = load %union.rec*, %union.rec** %1509, align 8
  %1511 = bitcast %union.rec* %1510 to %struct.word_type*
  %1512 = getelementptr inbounds %struct.word_type, %struct.word_type* %1511, i32 0, i32 4
  %1513 = getelementptr inbounds [4 x i8], [4 x i8]* %1512, i32 0, i32 0
  %1514 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1515 = load i8*, i8** %seq, align 8
  %1516 = load i16, i16* %dfnum, align 2
  %1517 = load i32, i32* %dfpos, align 4
  %1518 = sext i32 %1517 to i64
  %1519 = load i32, i32* %dlnum, align 4
  call void @DbInsert(%union.rec* %1505, i32 1, %union.rec* %1506, i8* %1513, %struct.FILE_POS* %1514, i8* %1515, i16 zeroext %1516, i64 %1518, i32 %1519, i32 0)
  br label %1723

; <label>:1520                                    ; preds = %1426
  %1521 = load i8*, i8** %seq, align 8
  %1522 = load %union.rec*, %union.rec** %val, align 8
  %1523 = bitcast %union.rec* %1522 to %struct.word_type*
  %1524 = getelementptr inbounds %struct.word_type, %struct.word_type* %1523, i32 0, i32 1
  %1525 = bitcast %union.FIRST_UNION* %1524 to %struct.FILE_POS*
  %1526 = call %union.rec* @MakeWord(i32 11, i8* %1521, %struct.FILE_POS* %1525)
  store %union.rec* %1526, %union.rec** %tmp, align 8
  %1527 = load i32, i32* %ctype, align 4
  %1528 = trunc i32 %1527 to i8
  %1529 = load %union.rec*, %union.rec** %tmp, align 8
  %1530 = bitcast %union.rec* %1529 to %struct.word_type*
  %1531 = getelementptr inbounds %struct.word_type, %struct.word_type* %1530, i32 0, i32 3
  %1532 = bitcast %union.THIRD_UNION* %1531 to %struct.anon.8*
  %1533 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1532, i32 0, i32 0
  store i8 %1528, i8* %1533, align 1
  %1534 = load i16, i16* %dfnum, align 2
  %1535 = load %union.rec*, %union.rec** %tmp, align 8
  %1536 = bitcast %union.rec* %1535 to %struct.word_type*
  %1537 = getelementptr inbounds %struct.word_type, %struct.word_type* %1536, i32 0, i32 3
  %1538 = bitcast %union.THIRD_UNION* %1537 to %struct.anon.8*
  %1539 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1538, i32 0, i32 1
  store i16 %1534, i16* %1539, align 2
  %1540 = load i32, i32* %dfpos, align 4
  %1541 = load %union.rec*, %union.rec** %tmp, align 8
  %1542 = bitcast %union.rec* %1541 to %struct.word_type*
  %1543 = getelementptr inbounds %struct.word_type, %struct.word_type* %1542, i32 0, i32 3
  %1544 = bitcast %union.THIRD_UNION* %1543 to %struct.anon.8*
  %1545 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1544, i32 0, i32 2
  store i32 %1540, i32* %1545, align 4
  %1546 = load i32, i32* %dlnum, align 4
  %1547 = load %union.rec*, %union.rec** %tmp, align 8
  %1548 = bitcast %union.rec* %1547 to %struct.word_type*
  %1549 = getelementptr inbounds %struct.word_type, %struct.word_type* %1548, i32 0, i32 3
  %1550 = bitcast %union.THIRD_UNION* %1549 to %struct.anon.8*
  %1551 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1550, i32 0, i32 3
  store i32 %1546, i32* %1551, align 4
  %1552 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1553 = zext i8 %1552 to i32
  store i32 %1553, i32* @zz_size, align 4
  %1554 = sext i32 %1553 to i64
  %1555 = icmp uge i64 %1554, 265
  br i1 %1555, label %1556, label %1559

; <label>:1556                                    ; preds = %1520
  %1557 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1558 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1557)
  br label %1584

; <label>:1559                                    ; preds = %1520
  %1560 = load i32, i32* @zz_size, align 4
  %1561 = sext i32 %1560 to i64
  %1562 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1561
  %1563 = load %union.rec*, %union.rec** %1562, align 8
  %1564 = icmp eq %union.rec* %1563, null
  br i1 %1564, label %1565, label %1569

; <label>:1565                                    ; preds = %1559
  %1566 = load i32, i32* @zz_size, align 4
  %1567 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1568 = call %union.rec* @GetMemory(i32 %1566, %struct.FILE_POS* %1567)
  store %union.rec* %1568, %union.rec** @zz_hold, align 8
  br label %1583

; <label>:1569                                    ; preds = %1559
  %1570 = load i32, i32* @zz_size, align 4
  %1571 = sext i32 %1570 to i64
  %1572 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1571
  %1573 = load %union.rec*, %union.rec** %1572, align 8
  store %union.rec* %1573, %union.rec** @zz_hold, align 8
  store %union.rec* %1573, %union.rec** @zz_hold, align 8
  %1574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1575 = bitcast %union.rec* %1574 to %struct.word_type*
  %1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %1575, i32 0, i32 0
  %1577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1576, i32 0, i64 0
  %1578 = getelementptr inbounds %struct.LIST, %struct.LIST* %1577, i32 0, i32 0
  %1579 = load %union.rec*, %union.rec** %1578, align 8
  %1580 = load i32, i32* @zz_size, align 4
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1581
  store %union.rec* %1579, %union.rec** %1582, align 8
  br label %1583

; <label>:1583                                    ; preds = %1569, %1565
  br label %1584

; <label>:1584                                    ; preds = %1583, %1556
  %1585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1586 = bitcast %union.rec* %1585 to %struct.word_type*
  %1587 = getelementptr inbounds %struct.word_type, %struct.word_type* %1586, i32 0, i32 1
  %1588 = bitcast %union.FIRST_UNION* %1587 to %struct.anon*
  %1589 = getelementptr inbounds %struct.anon, %struct.anon* %1588, i32 0, i32 0
  store i8 0, i8* %1589, align 1
  %1590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1592 = bitcast %union.rec* %1591 to %struct.word_type*
  %1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %1592, i32 0, i32 0
  %1594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1593, i32 0, i64 1
  %1595 = getelementptr inbounds %struct.LIST, %struct.LIST* %1594, i32 0, i32 1
  store %union.rec* %1590, %union.rec** %1595, align 8
  %1596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1597 = bitcast %union.rec* %1596 to %struct.word_type*
  %1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %1597, i32 0, i32 0
  %1599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1598, i32 0, i64 1
  %1600 = getelementptr inbounds %struct.LIST, %struct.LIST* %1599, i32 0, i32 0
  store %union.rec* %1590, %union.rec** %1600, align 8
  %1601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1602 = bitcast %union.rec* %1601 to %struct.word_type*
  %1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %1602, i32 0, i32 0
  %1604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1603, i32 0, i64 0
  %1605 = getelementptr inbounds %struct.LIST, %struct.LIST* %1604, i32 0, i32 1
  store %union.rec* %1590, %union.rec** %1605, align 8
  %1606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1607 = bitcast %union.rec* %1606 to %struct.word_type*
  %1608 = getelementptr inbounds %struct.word_type, %struct.word_type* %1607, i32 0, i32 0
  %1609 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1608, i32 0, i64 0
  %1610 = getelementptr inbounds %struct.LIST, %struct.LIST* %1609, i32 0, i32 0
  store %union.rec* %1590, %union.rec** %1610, align 8
  store %union.rec* %1590, %union.rec** @xx_link, align 8
  %1611 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1611, %union.rec** @zz_res, align 8
  %1612 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %1612, %union.rec** @zz_hold, align 8
  %1613 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1614 = icmp eq %union.rec* %1613, null
  br i1 %1614, label %1615, label %1617

; <label>:1615                                    ; preds = %1584
  %1616 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1665

; <label>:1617                                    ; preds = %1584
  %1618 = load %union.rec*, %union.rec** @zz_res, align 8
  %1619 = icmp eq %union.rec* %1618, null
  br i1 %1619, label %1620, label %1622

; <label>:1620                                    ; preds = %1617
  %1621 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1663

; <label>:1622                                    ; preds = %1617
  %1623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1624 = bitcast %union.rec* %1623 to %struct.word_type*
  %1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %1624, i32 0, i32 0
  %1626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1625, i32 0, i64 0
  %1627 = getelementptr inbounds %struct.LIST, %struct.LIST* %1626, i32 0, i32 0
  %1628 = load %union.rec*, %union.rec** %1627, align 8
  store %union.rec* %1628, %union.rec** @zz_tmp, align 8
  %1629 = load %union.rec*, %union.rec** @zz_res, align 8
  %1630 = bitcast %union.rec* %1629 to %struct.word_type*
  %1631 = getelementptr inbounds %struct.word_type, %struct.word_type* %1630, i32 0, i32 0
  %1632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1631, i32 0, i64 0
  %1633 = getelementptr inbounds %struct.LIST, %struct.LIST* %1632, i32 0, i32 0
  %1634 = load %union.rec*, %union.rec** %1633, align 8
  %1635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1636 = bitcast %union.rec* %1635 to %struct.word_type*
  %1637 = getelementptr inbounds %struct.word_type, %struct.word_type* %1636, i32 0, i32 0
  %1638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1637, i32 0, i64 0
  %1639 = getelementptr inbounds %struct.LIST, %struct.LIST* %1638, i32 0, i32 0
  store %union.rec* %1634, %union.rec** %1639, align 8
  %1640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1641 = load %union.rec*, %union.rec** @zz_res, align 8
  %1642 = bitcast %union.rec* %1641 to %struct.word_type*
  %1643 = getelementptr inbounds %struct.word_type, %struct.word_type* %1642, i32 0, i32 0
  %1644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1643, i32 0, i64 0
  %1645 = getelementptr inbounds %struct.LIST, %struct.LIST* %1644, i32 0, i32 0
  %1646 = load %union.rec*, %union.rec** %1645, align 8
  %1647 = bitcast %union.rec* %1646 to %struct.word_type*
  %1648 = getelementptr inbounds %struct.word_type, %struct.word_type* %1647, i32 0, i32 0
  %1649 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1648, i32 0, i64 0
  %1650 = getelementptr inbounds %struct.LIST, %struct.LIST* %1649, i32 0, i32 1
  store %union.rec* %1640, %union.rec** %1650, align 8
  %1651 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1652 = load %union.rec*, %union.rec** @zz_res, align 8
  %1653 = bitcast %union.rec* %1652 to %struct.word_type*
  %1654 = getelementptr inbounds %struct.word_type, %struct.word_type* %1653, i32 0, i32 0
  %1655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1654, i32 0, i64 0
  %1656 = getelementptr inbounds %struct.LIST, %struct.LIST* %1655, i32 0, i32 0
  store %union.rec* %1651, %union.rec** %1656, align 8
  %1657 = load %union.rec*, %union.rec** @zz_res, align 8
  %1658 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1659 = bitcast %union.rec* %1658 to %struct.word_type*
  %1660 = getelementptr inbounds %struct.word_type, %struct.word_type* %1659, i32 0, i32 0
  %1661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1660, i32 0, i64 0
  %1662 = getelementptr inbounds %struct.LIST, %struct.LIST* %1661, i32 0, i32 1
  store %union.rec* %1657, %union.rec** %1662, align 8
  br label %1663

; <label>:1663                                    ; preds = %1622, %1620
  %1664 = phi %union.rec* [ %1621, %1620 ], [ %1657, %1622 ]
  br label %1665

; <label>:1665                                    ; preds = %1663, %1615
  %1666 = phi %union.rec* [ %1616, %1615 ], [ %1664, %1663 ]
  %1667 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1667, %union.rec** @zz_res, align 8
  %1668 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1668, %union.rec** @zz_hold, align 8
  %1669 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1670 = icmp eq %union.rec* %1669, null
  br i1 %1670, label %1671, label %1673

; <label>:1671                                    ; preds = %1665
  %1672 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1721

; <label>:1673                                    ; preds = %1665
  %1674 = load %union.rec*, %union.rec** @zz_res, align 8
  %1675 = icmp eq %union.rec* %1674, null
  br i1 %1675, label %1676, label %1678

; <label>:1676                                    ; preds = %1673
  %1677 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1719

; <label>:1678                                    ; preds = %1673
  %1679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1680 = bitcast %union.rec* %1679 to %struct.word_type*
  %1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %1680, i32 0, i32 0
  %1682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1681, i32 0, i64 1
  %1683 = getelementptr inbounds %struct.LIST, %struct.LIST* %1682, i32 0, i32 0
  %1684 = load %union.rec*, %union.rec** %1683, align 8
  store %union.rec* %1684, %union.rec** @zz_tmp, align 8
  %1685 = load %union.rec*, %union.rec** @zz_res, align 8
  %1686 = bitcast %union.rec* %1685 to %struct.word_type*
  %1687 = getelementptr inbounds %struct.word_type, %struct.word_type* %1686, i32 0, i32 0
  %1688 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1687, i32 0, i64 1
  %1689 = getelementptr inbounds %struct.LIST, %struct.LIST* %1688, i32 0, i32 0
  %1690 = load %union.rec*, %union.rec** %1689, align 8
  %1691 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1692 = bitcast %union.rec* %1691 to %struct.word_type*
  %1693 = getelementptr inbounds %struct.word_type, %struct.word_type* %1692, i32 0, i32 0
  %1694 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1693, i32 0, i64 1
  %1695 = getelementptr inbounds %struct.LIST, %struct.LIST* %1694, i32 0, i32 0
  store %union.rec* %1690, %union.rec** %1695, align 8
  %1696 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1697 = load %union.rec*, %union.rec** @zz_res, align 8
  %1698 = bitcast %union.rec* %1697 to %struct.word_type*
  %1699 = getelementptr inbounds %struct.word_type, %struct.word_type* %1698, i32 0, i32 0
  %1700 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1699, i32 0, i64 1
  %1701 = getelementptr inbounds %struct.LIST, %struct.LIST* %1700, i32 0, i32 0
  %1702 = load %union.rec*, %union.rec** %1701, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.word_type*
  %1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %1703, i32 0, i32 0
  %1705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1704, i32 0, i64 1
  %1706 = getelementptr inbounds %struct.LIST, %struct.LIST* %1705, i32 0, i32 1
  store %union.rec* %1696, %union.rec** %1706, align 8
  %1707 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1708 = load %union.rec*, %union.rec** @zz_res, align 8
  %1709 = bitcast %union.rec* %1708 to %struct.word_type*
  %1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %1709, i32 0, i32 0
  %1711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1710, i32 0, i64 1
  %1712 = getelementptr inbounds %struct.LIST, %struct.LIST* %1711, i32 0, i32 0
  store %union.rec* %1707, %union.rec** %1712, align 8
  %1713 = load %union.rec*, %union.rec** @zz_res, align 8
  %1714 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1715 = bitcast %union.rec* %1714 to %struct.word_type*
  %1716 = getelementptr inbounds %struct.word_type, %struct.word_type* %1715, i32 0, i32 0
  %1717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1716, i32 0, i64 1
  %1718 = getelementptr inbounds %struct.LIST, %struct.LIST* %1717, i32 0, i32 1
  store %union.rec* %1713, %union.rec** %1718, align 8
  br label %1719

; <label>:1719                                    ; preds = %1678, %1676
  %1720 = phi %union.rec* [ %1677, %1676 ], [ %1713, %1678 ]
  br label %1721

; <label>:1721                                    ; preds = %1719, %1671
  %1722 = phi %union.rec* [ %1672, %1671 ], [ %1720, %1719 ]
  br label %1723

; <label>:1723                                    ; preds = %1721, %1504
  %1724 = load %union.rec*, %union.rec** %val, align 8
  %1725 = call i32 @DisposeObject(%union.rec* %1724)
  %1726 = load %union.rec*, %union.rec** %hold_key, align 8
  %1727 = icmp ne %union.rec* %1726, null
  br i1 %1727, label %1728, label %1731

; <label>:1728                                    ; preds = %1723
  %1729 = load %union.rec*, %union.rec** %hold_key, align 8
  %1730 = call i32 @DisposeObject(%union.rec* %1729)
  br label %1731

; <label>:1731                                    ; preds = %1728, %1723
  br label %3359

; <label>:1732                                    ; preds = %330
  %1733 = load %union.rec*, %union.rec** %cs, align 8
  %1734 = bitcast %union.rec* %1733 to %struct.cr_type*
  %1735 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1734, i32 0, i32 10
  %1736 = load %union.rec*, %union.rec** %1735, align 8
  %1737 = icmp ne %union.rec* %1736, null
  br i1 %1737, label %1738, label %1744

; <label>:1738                                    ; preds = %1732
  %1739 = load %union.rec*, %union.rec** %cs, align 8
  %1740 = bitcast %union.rec* %1739 to %struct.cr_type*
  %1741 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1740, i32 0, i32 10
  %1742 = load %union.rec*, %union.rec** %1741, align 8
  %1743 = call i32 @DisposeObject(%union.rec* %1742)
  br label %1744

; <label>:1744                                    ; preds = %1738, %1732
  %1745 = load %union.rec*, %union.rec** %tag, align 8
  %1746 = bitcast %union.rec* %1745 to %struct.word_type*
  %1747 = getelementptr inbounds %struct.word_type, %struct.word_type* %1746, i32 0, i32 1
  %1748 = bitcast %union.FIRST_UNION* %1747 to %struct.anon*
  %1749 = getelementptr inbounds %struct.anon, %struct.anon* %1748, i32 0, i32 0
  %1750 = load i8, i8* %1749, align 1
  %1751 = zext i8 %1750 to i32
  %1752 = icmp eq i32 %1751, 11
  br i1 %1752, label %1762, label %1753

; <label>:1753                                    ; preds = %1744
  %1754 = load %union.rec*, %union.rec** %tag, align 8
  %1755 = bitcast %union.rec* %1754 to %struct.word_type*
  %1756 = getelementptr inbounds %struct.word_type, %struct.word_type* %1755, i32 0, i32 1
  %1757 = bitcast %union.FIRST_UNION* %1756 to %struct.anon*
  %1758 = getelementptr inbounds %struct.anon, %struct.anon* %1757, i32 0, i32 0
  %1759 = load i8, i8* %1758, align 1
  %1760 = zext i8 %1759 to i32
  %1761 = icmp eq i32 %1760, 12
  br i1 %1761, label %1762, label %1769

; <label>:1762                                    ; preds = %1753, %1744
  %1763 = load %union.rec*, %union.rec** %tag, align 8
  %1764 = bitcast %union.rec* %1763 to %struct.word_type*
  %1765 = getelementptr inbounds %struct.word_type, %struct.word_type* %1764, i32 0, i32 4
  %1766 = getelementptr inbounds [4 x i8], [4 x i8]* %1765, i32 0, i32 0
  %1767 = call i32 @strcmp(i8* %1766, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %1768 = icmp eq i32 %1767, 0
  br i1 %1768, label %1769, label %1777

; <label>:1769                                    ; preds = %1762, %1753
  %1770 = load %union.rec*, %union.rec** %tag, align 8
  %1771 = call i32 @DisposeObject(%union.rec* %1770)
  %1772 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1773 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %1772)
  %1774 = load %union.rec*, %union.rec** %cs, align 8
  %1775 = bitcast %union.rec* %1774 to %struct.cr_type*
  %1776 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1775, i32 0, i32 10
  store %union.rec* %1773, %union.rec** %1776, align 8
  br label %1782

; <label>:1777                                    ; preds = %1762
  %1778 = load %union.rec*, %union.rec** %tag, align 8
  %1779 = load %union.rec*, %union.rec** %cs, align 8
  %1780 = bitcast %union.rec* %1779 to %struct.cr_type*
  %1781 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1780, i32 0, i32 10
  store %union.rec* %1778, %union.rec** %1781, align 8
  br label %1782

; <label>:1782                                    ; preds = %1777, %1769
  %1783 = load %union.rec*, %union.rec** %cs, align 8
  %1784 = bitcast %union.rec* %1783 to %struct.word_type*
  %1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %1784, i32 0, i32 0
  %1786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1785, i32 0, i64 0
  %1787 = getelementptr inbounds %struct.LIST, %struct.LIST* %1786, i32 0, i32 1
  %1788 = load %union.rec*, %union.rec** %1787, align 8
  store %union.rec* %1788, %union.rec** %link, align 8
  br label %1789

; <label>:1789                                    ; preds = %2115, %1782
  %1790 = load %union.rec*, %union.rec** %link, align 8
  %1791 = load %union.rec*, %union.rec** %cs, align 8
  %1792 = icmp ne %union.rec* %1790, %1791
  br i1 %1792, label %1793, label %2122

; <label>:1793                                    ; preds = %1789
  %1794 = load %union.rec*, %union.rec** %link, align 8
  %1795 = bitcast %union.rec* %1794 to %struct.word_type*
  %1796 = getelementptr inbounds %struct.word_type, %struct.word_type* %1795, i32 0, i32 0
  %1797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1796, i32 0, i64 1
  %1798 = getelementptr inbounds %struct.LIST, %struct.LIST* %1797, i32 0, i32 0
  %1799 = load %union.rec*, %union.rec** %1798, align 8
  store %union.rec* %1799, %union.rec** %y, align 8
  br label %1800

; <label>:1800                                    ; preds = %1810, %1793
  %1801 = load %union.rec*, %union.rec** %y, align 8
  %1802 = bitcast %union.rec* %1801 to %struct.word_type*
  %1803 = getelementptr inbounds %struct.word_type, %struct.word_type* %1802, i32 0, i32 1
  %1804 = bitcast %union.FIRST_UNION* %1803 to %struct.anon*
  %1805 = getelementptr inbounds %struct.anon, %struct.anon* %1804, i32 0, i32 0
  %1806 = load i8, i8* %1805, align 1
  %1807 = zext i8 %1806 to i32
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %1809, label %1817

; <label>:1809                                    ; preds = %1800
  br label %1810

; <label>:1810                                    ; preds = %1809
  %1811 = load %union.rec*, %union.rec** %y, align 8
  %1812 = bitcast %union.rec* %1811 to %struct.word_type*
  %1813 = getelementptr inbounds %struct.word_type, %struct.word_type* %1812, i32 0, i32 0
  %1814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1813, i32 0, i64 1
  %1815 = getelementptr inbounds %struct.LIST, %struct.LIST* %1814, i32 0, i32 0
  %1816 = load %union.rec*, %union.rec** %1815, align 8
  store %union.rec* %1816, %union.rec** %y, align 8
  br label %1800

; <label>:1817                                    ; preds = %1800
  %1818 = load %union.rec*, %union.rec** %y, align 8
  %1819 = bitcast %union.rec* %1818 to %struct.word_type*
  %1820 = getelementptr inbounds %struct.word_type, %struct.word_type* %1819, i32 0, i32 1
  %1821 = bitcast %union.FIRST_UNION* %1820 to %struct.anon*
  %1822 = getelementptr inbounds %struct.anon, %struct.anon* %1821, i32 0, i32 0
  %1823 = load i8, i8* %1822, align 1
  %1824 = zext i8 %1823 to i32
  %1825 = icmp eq i32 %1824, 11
  br i1 %1825, label %1835, label %1826

; <label>:1826                                    ; preds = %1817
  %1827 = load %union.rec*, %union.rec** %y, align 8
  %1828 = bitcast %union.rec* %1827 to %struct.word_type*
  %1829 = getelementptr inbounds %struct.word_type, %struct.word_type* %1828, i32 0, i32 1
  %1830 = bitcast %union.FIRST_UNION* %1829 to %struct.anon*
  %1831 = getelementptr inbounds %struct.anon, %struct.anon* %1830, i32 0, i32 0
  %1832 = load i8, i8* %1831, align 1
  %1833 = zext i8 %1832 to i32
  %1834 = icmp eq i32 %1833, 12
  br i1 %1834, label %1835, label %1842

; <label>:1835                                    ; preds = %1826, %1817
  %1836 = load %union.rec*, %union.rec** %y, align 8
  %1837 = bitcast %union.rec* %1836 to %struct.word_type*
  %1838 = getelementptr inbounds %struct.word_type, %struct.word_type* %1837, i32 0, i32 4
  %1839 = getelementptr inbounds [4 x i8], [4 x i8]* %1838, i32 0, i32 0
  %1840 = call i32 @strcmp(i8* %1839, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %1841 = icmp eq i32 %1840, 0
  br i1 %1841, label %1842, label %1845

; <label>:1842                                    ; preds = %1835, %1826
  %1843 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1844 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %1843, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.38, i32 0, i32 0))
  br label %1845

; <label>:1845                                    ; preds = %1842, %1835
  %1846 = load %union.rec*, %union.rec** %y, align 8
  %1847 = bitcast %union.rec* %1846 to %struct.word_type*
  %1848 = getelementptr inbounds %struct.word_type, %struct.word_type* %1847, i32 0, i32 3
  %1849 = bitcast %union.THIRD_UNION* %1848 to %struct.anon.8*
  %1850 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1849, i32 0, i32 0
  %1851 = load i8, i8* %1850, align 1
  %1852 = zext i8 %1851 to i32
  switch i32 %1852, label %2111 [
    i32 133, label %1853
    i32 129, label %1853
    i32 130, label %1853
    i32 126, label %2110
    i32 134, label %2110
    i32 127, label %2110
    i32 128, label %2110
  ]

; <label>:1853                                    ; preds = %1845, %1845, %1845
  %1854 = load %union.rec*, %union.rec** %y, align 8
  %1855 = bitcast %union.rec* %1854 to %struct.word_type*
  %1856 = getelementptr inbounds %struct.word_type, %struct.word_type* %1855, i32 0, i32 0
  %1857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1856, i32 0, i64 0
  %1858 = getelementptr inbounds %struct.LIST, %struct.LIST* %1857, i32 0, i32 1
  %1859 = load %union.rec*, %union.rec** %1858, align 8
  %1860 = load %union.rec*, %union.rec** %y, align 8
  %1861 = icmp ne %union.rec* %1859, %1860
  br i1 %1861, label %1862, label %1892

; <label>:1862                                    ; preds = %1853
  %1863 = load %union.rec*, %union.rec** %y, align 8
  %1864 = bitcast %union.rec* %1863 to %struct.word_type*
  %1865 = getelementptr inbounds %struct.word_type, %struct.word_type* %1864, i32 0, i32 0
  %1866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1865, i32 0, i64 0
  %1867 = getelementptr inbounds %struct.LIST, %struct.LIST* %1866, i32 0, i32 1
  %1868 = load %union.rec*, %union.rec** %1867, align 8
  %1869 = bitcast %union.rec* %1868 to %struct.word_type*
  %1870 = getelementptr inbounds %struct.word_type, %struct.word_type* %1869, i32 0, i32 0
  %1871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1870, i32 0, i64 1
  %1872 = getelementptr inbounds %struct.LIST, %struct.LIST* %1871, i32 0, i32 0
  %1873 = load %union.rec*, %union.rec** %1872, align 8
  store %union.rec* %1873, %union.rec** %val, align 8
  br label %1874

; <label>:1874                                    ; preds = %1884, %1862
  %1875 = load %union.rec*, %union.rec** %val, align 8
  %1876 = bitcast %union.rec* %1875 to %struct.word_type*
  %1877 = getelementptr inbounds %struct.word_type, %struct.word_type* %1876, i32 0, i32 1
  %1878 = bitcast %union.FIRST_UNION* %1877 to %struct.anon*
  %1879 = getelementptr inbounds %struct.anon, %struct.anon* %1878, i32 0, i32 0
  %1880 = load i8, i8* %1879, align 1
  %1881 = zext i8 %1880 to i32
  %1882 = icmp eq i32 %1881, 0
  br i1 %1882, label %1883, label %1891

; <label>:1883                                    ; preds = %1874
  br label %1884

; <label>:1884                                    ; preds = %1883
  %1885 = load %union.rec*, %union.rec** %val, align 8
  %1886 = bitcast %union.rec* %1885 to %struct.word_type*
  %1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %1886, i32 0, i32 0
  %1888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1887, i32 0, i64 1
  %1889 = getelementptr inbounds %struct.LIST, %struct.LIST* %1888, i32 0, i32 0
  %1890 = load %union.rec*, %union.rec** %1889, align 8
  store %union.rec* %1890, %union.rec** %val, align 8
  br label %1874

; <label>:1891                                    ; preds = %1874
  br label %1893

; <label>:1892                                    ; preds = %1853
  store %union.rec* null, %union.rec** %val, align 8
  br label %1893

; <label>:1893                                    ; preds = %1892, %1891
  %1894 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %1895 = load %union.rec*, %union.rec** %sym, align 8
  %1896 = load %union.rec*, %union.rec** %cs, align 8
  %1897 = bitcast %union.rec* %1896 to %struct.cr_type*
  %1898 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %1897, i32 0, i32 10
  %1899 = load %union.rec*, %union.rec** %1898, align 8
  %1900 = bitcast %union.rec* %1899 to %struct.word_type*
  %1901 = getelementptr inbounds %struct.word_type, %struct.word_type* %1900, i32 0, i32 4
  %1902 = getelementptr inbounds [4 x i8], [4 x i8]* %1901, i32 0, i32 0
  %1903 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1904 = load %union.rec*, %union.rec** %y, align 8
  %1905 = bitcast %union.rec* %1904 to %struct.word_type*
  %1906 = getelementptr inbounds %struct.word_type, %struct.word_type* %1905, i32 0, i32 4
  %1907 = getelementptr inbounds [4 x i8], [4 x i8]* %1906, i32 0, i32 0
  %1908 = load %union.rec*, %union.rec** %y, align 8
  %1909 = bitcast %union.rec* %1908 to %struct.word_type*
  %1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %1909, i32 0, i32 3
  %1911 = bitcast %union.THIRD_UNION* %1910 to %struct.anon.8*
  %1912 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1911, i32 0, i32 1
  %1913 = load i16, i16* %1912, align 2
  %1914 = load %union.rec*, %union.rec** %y, align 8
  %1915 = bitcast %union.rec* %1914 to %struct.word_type*
  %1916 = getelementptr inbounds %struct.word_type, %struct.word_type* %1915, i32 0, i32 3
  %1917 = bitcast %union.THIRD_UNION* %1916 to %struct.anon.8*
  %1918 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1917, i32 0, i32 2
  %1919 = load i32, i32* %1918, align 4
  %1920 = sext i32 %1919 to i64
  %1921 = load %union.rec*, %union.rec** %y, align 8
  %1922 = bitcast %union.rec* %1921 to %struct.word_type*
  %1923 = getelementptr inbounds %struct.word_type, %struct.word_type* %1922, i32 0, i32 3
  %1924 = bitcast %union.THIRD_UNION* %1923 to %struct.anon.8*
  %1925 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %1924, i32 0, i32 3
  %1926 = load i32, i32* %1925, align 4
  call void @DbInsert(%union.rec* %1894, i32 1, %union.rec* %1895, i8* %1902, %struct.FILE_POS* %1903, i8* %1907, i16 zeroext %1913, i64 %1920, i32 %1926, i32 0)
  %1927 = load %union.rec*, %union.rec** %link, align 8
  %1928 = bitcast %union.rec* %1927 to %struct.word_type*
  %1929 = getelementptr inbounds %struct.word_type, %struct.word_type* %1928, i32 0, i32 0
  %1930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1929, i32 0, i64 0
  %1931 = getelementptr inbounds %struct.LIST, %struct.LIST* %1930, i32 0, i32 0
  %1932 = load %union.rec*, %union.rec** %1931, align 8
  store %union.rec* %1932, %union.rec** %link, align 8
  %1933 = load %union.rec*, %union.rec** %link, align 8
  %1934 = bitcast %union.rec* %1933 to %struct.word_type*
  %1935 = getelementptr inbounds %struct.word_type, %struct.word_type* %1934, i32 0, i32 0
  %1936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1935, i32 0, i64 0
  %1937 = getelementptr inbounds %struct.LIST, %struct.LIST* %1936, i32 0, i32 1
  %1938 = load %union.rec*, %union.rec** %1937, align 8
  store %union.rec* %1938, %union.rec** @xx_link, align 8
  %1939 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1939, %union.rec** @zz_hold, align 8
  %1940 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1941 = bitcast %union.rec* %1940 to %struct.word_type*
  %1942 = getelementptr inbounds %struct.word_type, %struct.word_type* %1941, i32 0, i32 0
  %1943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1942, i32 0, i64 1
  %1944 = getelementptr inbounds %struct.LIST, %struct.LIST* %1943, i32 0, i32 1
  %1945 = load %union.rec*, %union.rec** %1944, align 8
  %1946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1947 = icmp eq %union.rec* %1945, %1946
  br i1 %1947, label %1948, label %1949

; <label>:1948                                    ; preds = %1893
  br label %1990

; <label>:1949                                    ; preds = %1893
  %1950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1951 = bitcast %union.rec* %1950 to %struct.word_type*
  %1952 = getelementptr inbounds %struct.word_type, %struct.word_type* %1951, i32 0, i32 0
  %1953 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1952, i32 0, i64 1
  %1954 = getelementptr inbounds %struct.LIST, %struct.LIST* %1953, i32 0, i32 1
  %1955 = load %union.rec*, %union.rec** %1954, align 8
  store %union.rec* %1955, %union.rec** @zz_res, align 8
  %1956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1957 = bitcast %union.rec* %1956 to %struct.word_type*
  %1958 = getelementptr inbounds %struct.word_type, %struct.word_type* %1957, i32 0, i32 0
  %1959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1958, i32 0, i64 1
  %1960 = getelementptr inbounds %struct.LIST, %struct.LIST* %1959, i32 0, i32 0
  %1961 = load %union.rec*, %union.rec** %1960, align 8
  %1962 = load %union.rec*, %union.rec** @zz_res, align 8
  %1963 = bitcast %union.rec* %1962 to %struct.word_type*
  %1964 = getelementptr inbounds %struct.word_type, %struct.word_type* %1963, i32 0, i32 0
  %1965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1964, i32 0, i64 1
  %1966 = getelementptr inbounds %struct.LIST, %struct.LIST* %1965, i32 0, i32 0
  store %union.rec* %1961, %union.rec** %1966, align 8
  %1967 = load %union.rec*, %union.rec** @zz_res, align 8
  %1968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1969 = bitcast %union.rec* %1968 to %struct.word_type*
  %1970 = getelementptr inbounds %struct.word_type, %struct.word_type* %1969, i32 0, i32 0
  %1971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1970, i32 0, i64 1
  %1972 = getelementptr inbounds %struct.LIST, %struct.LIST* %1971, i32 0, i32 0
  %1973 = load %union.rec*, %union.rec** %1972, align 8
  %1974 = bitcast %union.rec* %1973 to %struct.word_type*
  %1975 = getelementptr inbounds %struct.word_type, %struct.word_type* %1974, i32 0, i32 0
  %1976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1975, i32 0, i64 1
  %1977 = getelementptr inbounds %struct.LIST, %struct.LIST* %1976, i32 0, i32 1
  store %union.rec* %1967, %union.rec** %1977, align 8
  %1978 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1980 = bitcast %union.rec* %1979 to %struct.word_type*
  %1981 = getelementptr inbounds %struct.word_type, %struct.word_type* %1980, i32 0, i32 0
  %1982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1981, i32 0, i64 1
  %1983 = getelementptr inbounds %struct.LIST, %struct.LIST* %1982, i32 0, i32 1
  store %union.rec* %1978, %union.rec** %1983, align 8
  %1984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1985 = bitcast %union.rec* %1984 to %struct.word_type*
  %1986 = getelementptr inbounds %struct.word_type, %struct.word_type* %1985, i32 0, i32 0
  %1987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1986, i32 0, i64 1
  %1988 = getelementptr inbounds %struct.LIST, %struct.LIST* %1987, i32 0, i32 0
  store %union.rec* %1978, %union.rec** %1988, align 8
  %1989 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1990

; <label>:1990                                    ; preds = %1949, %1948
  %1991 = phi %union.rec* [ null, %1948 ], [ %1989, %1949 ]
  store %union.rec* %1991, %union.rec** @xx_tmp, align 8
  %1992 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1992, %union.rec** @zz_hold, align 8
  %1993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1994 = bitcast %union.rec* %1993 to %struct.word_type*
  %1995 = getelementptr inbounds %struct.word_type, %struct.word_type* %1994, i32 0, i32 0
  %1996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1995, i32 0, i64 0
  %1997 = getelementptr inbounds %struct.LIST, %struct.LIST* %1996, i32 0, i32 1
  %1998 = load %union.rec*, %union.rec** %1997, align 8
  %1999 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2000 = icmp eq %union.rec* %1998, %1999
  br i1 %2000, label %2001, label %2002

; <label>:2001                                    ; preds = %1990
  br label %2043

; <label>:2002                                    ; preds = %1990
  %2003 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2004 = bitcast %union.rec* %2003 to %struct.word_type*
  %2005 = getelementptr inbounds %struct.word_type, %struct.word_type* %2004, i32 0, i32 0
  %2006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2005, i32 0, i64 0
  %2007 = getelementptr inbounds %struct.LIST, %struct.LIST* %2006, i32 0, i32 1
  %2008 = load %union.rec*, %union.rec** %2007, align 8
  store %union.rec* %2008, %union.rec** @zz_res, align 8
  %2009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2010 = bitcast %union.rec* %2009 to %struct.word_type*
  %2011 = getelementptr inbounds %struct.word_type, %struct.word_type* %2010, i32 0, i32 0
  %2012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2011, i32 0, i64 0
  %2013 = getelementptr inbounds %struct.LIST, %struct.LIST* %2012, i32 0, i32 0
  %2014 = load %union.rec*, %union.rec** %2013, align 8
  %2015 = load %union.rec*, %union.rec** @zz_res, align 8
  %2016 = bitcast %union.rec* %2015 to %struct.word_type*
  %2017 = getelementptr inbounds %struct.word_type, %struct.word_type* %2016, i32 0, i32 0
  %2018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2017, i32 0, i64 0
  %2019 = getelementptr inbounds %struct.LIST, %struct.LIST* %2018, i32 0, i32 0
  store %union.rec* %2014, %union.rec** %2019, align 8
  %2020 = load %union.rec*, %union.rec** @zz_res, align 8
  %2021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2022 = bitcast %union.rec* %2021 to %struct.word_type*
  %2023 = getelementptr inbounds %struct.word_type, %struct.word_type* %2022, i32 0, i32 0
  %2024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2023, i32 0, i64 0
  %2025 = getelementptr inbounds %struct.LIST, %struct.LIST* %2024, i32 0, i32 0
  %2026 = load %union.rec*, %union.rec** %2025, align 8
  %2027 = bitcast %union.rec* %2026 to %struct.word_type*
  %2028 = getelementptr inbounds %struct.word_type, %struct.word_type* %2027, i32 0, i32 0
  %2029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2028, i32 0, i64 0
  %2030 = getelementptr inbounds %struct.LIST, %struct.LIST* %2029, i32 0, i32 1
  store %union.rec* %2020, %union.rec** %2030, align 8
  %2031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2032 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2033 = bitcast %union.rec* %2032 to %struct.word_type*
  %2034 = getelementptr inbounds %struct.word_type, %struct.word_type* %2033, i32 0, i32 0
  %2035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2034, i32 0, i64 0
  %2036 = getelementptr inbounds %struct.LIST, %struct.LIST* %2035, i32 0, i32 1
  store %union.rec* %2031, %union.rec** %2036, align 8
  %2037 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2038 = bitcast %union.rec* %2037 to %struct.word_type*
  %2039 = getelementptr inbounds %struct.word_type, %struct.word_type* %2038, i32 0, i32 0
  %2040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2039, i32 0, i64 0
  %2041 = getelementptr inbounds %struct.LIST, %struct.LIST* %2040, i32 0, i32 0
  store %union.rec* %2031, %union.rec** %2041, align 8
  %2042 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2043

; <label>:2043                                    ; preds = %2002, %2001
  %2044 = phi %union.rec* [ null, %2001 ], [ %2042, %2002 ]
  %2045 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2045, %union.rec** @zz_hold, align 8
  %2046 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2046, %union.rec** @zz_hold, align 8
  %2047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2048 = bitcast %union.rec* %2047 to %struct.word_type*
  %2049 = getelementptr inbounds %struct.word_type, %struct.word_type* %2048, i32 0, i32 1
  %2050 = bitcast %union.FIRST_UNION* %2049 to %struct.anon*
  %2051 = getelementptr inbounds %struct.anon, %struct.anon* %2050, i32 0, i32 0
  %2052 = load i8, i8* %2051, align 1
  %2053 = zext i8 %2052 to i32
  %2054 = icmp eq i32 %2053, 11
  br i1 %2054, label %2064, label %2055

; <label>:2055                                    ; preds = %2043
  %2056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2057 = bitcast %union.rec* %2056 to %struct.word_type*
  %2058 = getelementptr inbounds %struct.word_type, %struct.word_type* %2057, i32 0, i32 1
  %2059 = bitcast %union.FIRST_UNION* %2058 to %struct.anon*
  %2060 = getelementptr inbounds %struct.anon, %struct.anon* %2059, i32 0, i32 0
  %2061 = load i8, i8* %2060, align 1
  %2062 = zext i8 %2061 to i32
  %2063 = icmp eq i32 %2062, 12
  br i1 %2063, label %2064, label %2072

; <label>:2064                                    ; preds = %2055, %2043
  %2065 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2066 = bitcast %union.rec* %2065 to %struct.word_type*
  %2067 = getelementptr inbounds %struct.word_type, %struct.word_type* %2066, i32 0, i32 1
  %2068 = bitcast %union.FIRST_UNION* %2067 to %struct.anon*
  %2069 = getelementptr inbounds %struct.anon, %struct.anon* %2068, i32 0, i32 1
  %2070 = load i8, i8* %2069, align 1
  %2071 = zext i8 %2070 to i32
  br label %2083

; <label>:2072                                    ; preds = %2055
  %2073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2074 = bitcast %union.rec* %2073 to %struct.word_type*
  %2075 = getelementptr inbounds %struct.word_type, %struct.word_type* %2074, i32 0, i32 1
  %2076 = bitcast %union.FIRST_UNION* %2075 to %struct.anon*
  %2077 = getelementptr inbounds %struct.anon, %struct.anon* %2076, i32 0, i32 0
  %2078 = load i8, i8* %2077, align 1
  %2079 = zext i8 %2078 to i64
  %2080 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2079
  %2081 = load i8, i8* %2080, align 1
  %2082 = zext i8 %2081 to i32
  br label %2083

; <label>:2083                                    ; preds = %2072, %2064
  %2084 = phi i32 [ %2071, %2064 ], [ %2082, %2072 ]
  store i32 %2084, i32* @zz_size, align 4
  %2085 = load i32, i32* @zz_size, align 4
  %2086 = sext i32 %2085 to i64
  %2087 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2086
  %2088 = load %union.rec*, %union.rec** %2087, align 8
  %2089 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2090 = bitcast %union.rec* %2089 to %struct.word_type*
  %2091 = getelementptr inbounds %struct.word_type, %struct.word_type* %2090, i32 0, i32 0
  %2092 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2091, i32 0, i64 0
  %2093 = getelementptr inbounds %struct.LIST, %struct.LIST* %2092, i32 0, i32 0
  store %union.rec* %2088, %union.rec** %2093, align 8
  %2094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2095 = load i32, i32* @zz_size, align 4
  %2096 = sext i32 %2095 to i64
  %2097 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2096
  store %union.rec* %2094, %union.rec** %2097, align 8
  %2098 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2099 = bitcast %union.rec* %2098 to %struct.word_type*
  %2100 = getelementptr inbounds %struct.word_type, %struct.word_type* %2099, i32 0, i32 0
  %2101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2100, i32 0, i64 1
  %2102 = getelementptr inbounds %struct.LIST, %struct.LIST* %2101, i32 0, i32 1
  %2103 = load %union.rec*, %union.rec** %2102, align 8
  %2104 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2105 = icmp eq %union.rec* %2103, %2104
  br i1 %2105, label %2106, label %2109

; <label>:2106                                    ; preds = %2083
  %2107 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %2108 = call i32 @DisposeObject(%union.rec* %2107)
  br label %2109

; <label>:2109                                    ; preds = %2106, %2083
  br label %2114

; <label>:2110                                    ; preds = %1845, %1845, %1845, %1845
  br label %2114

; <label>:2111                                    ; preds = %1845
  %2112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2113 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %2112, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0))
  br label %2114

; <label>:2114                                    ; preds = %2111, %2110, %2109
  br label %2115

; <label>:2115                                    ; preds = %2114
  %2116 = load %union.rec*, %union.rec** %link, align 8
  %2117 = bitcast %union.rec* %2116 to %struct.word_type*
  %2118 = getelementptr inbounds %struct.word_type, %struct.word_type* %2117, i32 0, i32 0
  %2119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2118, i32 0, i64 0
  %2120 = getelementptr inbounds %struct.LIST, %struct.LIST* %2119, i32 0, i32 1
  %2121 = load %union.rec*, %union.rec** %2120, align 8
  store %union.rec* %2121, %union.rec** %link, align 8
  br label %1789

; <label>:2122                                    ; preds = %1789
  br label %3359

; <label>:2123                                    ; preds = %330
  %2124 = load %union.rec*, %union.rec** %cs, align 8
  %2125 = bitcast %union.rec* %2124 to %struct.cr_type*
  %2126 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2125, i32 0, i32 2
  %2127 = load i8, i8* %2126, align 1
  %2128 = zext i8 %2127 to i32
  %2129 = icmp eq i32 %2128, 0
  br i1 %2129, label %2130, label %2140

; <label>:2130                                    ; preds = %2123
  %2131 = load %union.rec*, %union.rec** %tag, align 8
  %2132 = bitcast %union.rec* %2131 to %struct.word_type*
  %2133 = getelementptr inbounds %struct.word_type, %struct.word_type* %2132, i32 0, i32 1
  %2134 = bitcast %union.FIRST_UNION* %2133 to %struct.FILE_POS*
  %2135 = load %union.rec*, %union.rec** %sym, align 8
  %2136 = call i8* @SymName(%union.rec* %2135)
  %2137 = load %union.rec*, %union.rec** %sym, align 8
  %2138 = call i8* @SymName(%union.rec* %2137)
  %2139 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.40, i32 0, i32 0), i32 2, %struct.FILE_POS* %2134, i8* %2136, i8* %2138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %3359

; <label>:2140                                    ; preds = %2123
  %2141 = load %union.rec*, %union.rec** %cs, align 8
  %2142 = bitcast %union.rec* %2141 to %struct.cr_type*
  %2143 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2142, i32 0, i32 2
  %2144 = load i8, i8* %2143, align 1
  %2145 = zext i8 %2144 to i32
  %2146 = icmp eq i32 %2145, 1
  br i1 %2146, label %2147, label %2173

; <label>:2147                                    ; preds = %2140
  %2148 = load %union.rec*, %union.rec** %cs, align 8
  %2149 = bitcast %union.rec* %2148 to %struct.cr_type*
  %2150 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2149, i32 0, i32 4
  %2151 = load %union.rec*, %union.rec** %2150, align 8
  %2152 = load %union.rec*, %union.rec** %cs, align 8
  %2153 = bitcast %union.rec* %2152 to %struct.cr_type*
  %2154 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2153, i32 0, i32 3
  %2155 = load i16, i16* %2154, align 2
  %2156 = load %union.rec*, %union.rec** %cs, align 8
  %2157 = bitcast %union.rec* %2156 to %struct.cr_type*
  %2158 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2157, i32 0, i32 6
  %2159 = load %union.rec*, %union.rec** %cs, align 8
  %2160 = bitcast %union.rec* %2159 to %struct.cr_type*
  %2161 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2160, i32 0, i32 7
  call void @AppendToFile(%union.rec* %2151, i16 zeroext %2155, i32* %2158, i32* %2161)
  %2162 = load %union.rec*, %union.rec** %cs, align 8
  %2163 = bitcast %union.rec* %2162 to %struct.cr_type*
  %2164 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2163, i32 0, i32 4
  %2165 = load %union.rec*, %union.rec** %2164, align 8
  %2166 = call i32 @DisposeObject(%union.rec* %2165)
  %2167 = load %union.rec*, %union.rec** %cs, align 8
  %2168 = bitcast %union.rec* %2167 to %struct.cr_type*
  %2169 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2168, i32 0, i32 4
  store %union.rec* null, %union.rec** %2169, align 8
  %2170 = load %union.rec*, %union.rec** %cs, align 8
  %2171 = bitcast %union.rec* %2170 to %struct.cr_type*
  %2172 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2171, i32 0, i32 2
  store i8 2, i8* %2172, align 1
  br label %2173

; <label>:2173                                    ; preds = %2147, %2140
  %2174 = load %union.rec*, %union.rec** %tag, align 8
  %2175 = bitcast %union.rec* %2174 to %struct.word_type*
  %2176 = getelementptr inbounds %struct.word_type, %struct.word_type* %2175, i32 0, i32 1
  %2177 = bitcast %union.FIRST_UNION* %2176 to %struct.anon*
  %2178 = getelementptr inbounds %struct.anon, %struct.anon* %2177, i32 0, i32 0
  %2179 = load i8, i8* %2178, align 1
  %2180 = zext i8 %2179 to i32
  %2181 = icmp eq i32 %2180, 11
  br i1 %2181, label %2191, label %2182

; <label>:2182                                    ; preds = %2173
  %2183 = load %union.rec*, %union.rec** %tag, align 8
  %2184 = bitcast %union.rec* %2183 to %struct.word_type*
  %2185 = getelementptr inbounds %struct.word_type, %struct.word_type* %2184, i32 0, i32 1
  %2186 = bitcast %union.FIRST_UNION* %2185 to %struct.anon*
  %2187 = getelementptr inbounds %struct.anon, %struct.anon* %2186, i32 0, i32 0
  %2188 = load i8, i8* %2187, align 1
  %2189 = zext i8 %2188 to i32
  %2190 = icmp eq i32 %2189, 12
  br i1 %2190, label %2191, label %2198

; <label>:2191                                    ; preds = %2182, %2173
  %2192 = load %union.rec*, %union.rec** %tag, align 8
  %2193 = bitcast %union.rec* %2192 to %struct.word_type*
  %2194 = getelementptr inbounds %struct.word_type, %struct.word_type* %2193, i32 0, i32 4
  %2195 = getelementptr inbounds [4 x i8], [4 x i8]* %2194, i32 0, i32 0
  %2196 = call i32 @strcmp(i8* %2195, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %2197 = icmp eq i32 %2196, 0
  br i1 %2197, label %2198, label %2203

; <label>:2198                                    ; preds = %2191, %2182
  %2199 = load %union.rec*, %union.rec** %tag, align 8
  %2200 = call i32 @DisposeObject(%union.rec* %2199)
  %2201 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2202 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %2201)
  store %union.rec* %2202, %union.rec** %tag, align 8
  br label %2203

; <label>:2203                                    ; preds = %2198, %2191
  %2204 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %2205 = load %union.rec*, %union.rec** %sym, align 8
  %2206 = load %union.rec*, %union.rec** %tag, align 8
  %2207 = bitcast %union.rec* %2206 to %struct.word_type*
  %2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %2207, i32 0, i32 4
  %2209 = getelementptr inbounds [4 x i8], [4 x i8]* %2208, i32 0, i32 0
  %2210 = load %union.rec*, %union.rec** %tag, align 8
  %2211 = bitcast %union.rec* %2210 to %struct.word_type*
  %2212 = getelementptr inbounds %struct.word_type, %struct.word_type* %2211, i32 0, i32 1
  %2213 = bitcast %union.FIRST_UNION* %2212 to %struct.FILE_POS*
  %2214 = load %union.rec*, %union.rec** %cs, align 8
  %2215 = bitcast %union.rec* %2214 to %struct.cr_type*
  %2216 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2215, i32 0, i32 3
  %2217 = load i16, i16* %2216, align 2
  %2218 = load %union.rec*, %union.rec** %cs, align 8
  %2219 = bitcast %union.rec* %2218 to %struct.cr_type*
  %2220 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2219, i32 0, i32 6
  %2221 = load i32, i32* %2220, align 4
  %2222 = sext i32 %2221 to i64
  %2223 = load %union.rec*, %union.rec** %cs, align 8
  %2224 = bitcast %union.rec* %2223 to %struct.cr_type*
  %2225 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2224, i32 0, i32 7
  %2226 = load i32, i32* %2225, align 4
  call void @DbInsert(%union.rec* %2204, i32 0, %union.rec* %2205, i8* %2209, %struct.FILE_POS* %2213, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i16 zeroext %2217, i64 %2222, i32 %2226, i32 1)
  %2227 = load %union.rec*, %union.rec** %tag, align 8
  %2228 = call i32 @DisposeObject(%union.rec* %2227)
  br label %3359

; <label>:2229                                    ; preds = %330, %330
  %2230 = load %union.rec*, %union.rec** %tag, align 8
  %2231 = bitcast %union.rec* %2230 to %struct.word_type*
  %2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %2231, i32 0, i32 1
  %2233 = bitcast %union.FIRST_UNION* %2232 to %struct.anon*
  %2234 = getelementptr inbounds %struct.anon, %struct.anon* %2233, i32 0, i32 0
  %2235 = load i8, i8* %2234, align 1
  %2236 = zext i8 %2235 to i32
  %2237 = icmp eq i32 %2236, 11
  br i1 %2237, label %2258, label %2238

; <label>:2238                                    ; preds = %2229
  %2239 = load %union.rec*, %union.rec** %tag, align 8
  %2240 = bitcast %union.rec* %2239 to %struct.word_type*
  %2241 = getelementptr inbounds %struct.word_type, %struct.word_type* %2240, i32 0, i32 1
  %2242 = bitcast %union.FIRST_UNION* %2241 to %struct.anon*
  %2243 = getelementptr inbounds %struct.anon, %struct.anon* %2242, i32 0, i32 0
  %2244 = load i8, i8* %2243, align 1
  %2245 = zext i8 %2244 to i32
  %2246 = icmp eq i32 %2245, 12
  br i1 %2246, label %2258, label %2247

; <label>:2247                                    ; preds = %2238
  %2248 = load %union.rec*, %union.rec** %tag, align 8
  %2249 = bitcast %union.rec* %2248 to %struct.word_type*
  %2250 = getelementptr inbounds %struct.word_type, %struct.word_type* %2249, i32 0, i32 1
  %2251 = bitcast %union.FIRST_UNION* %2250 to %struct.FILE_POS*
  %2252 = load %union.rec*, %union.rec** %cs, align 8
  %2253 = bitcast %union.rec* %2252 to %struct.cr_type*
  %2254 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2253, i32 0, i32 9
  %2255 = load %union.rec*, %union.rec** %2254, align 8
  %2256 = call i8* @SymName(%union.rec* %2255)
  %2257 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %2251, i8* %2256)
  br label %2457

; <label>:2258                                    ; preds = %2238, %2229
  %2259 = load %union.rec*, %union.rec** %tag, align 8
  %2260 = bitcast %union.rec* %2259 to %struct.word_type*
  %2261 = getelementptr inbounds %struct.word_type, %struct.word_type* %2260, i32 0, i32 4
  %2262 = getelementptr inbounds [4 x i8], [4 x i8]* %2261, i32 0, i32 0
  %2263 = call i32 @strcmp(i8* %2262, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %2264 = icmp eq i32 %2263, 0
  br i1 %2264, label %2265, label %2266

; <label>:2265                                    ; preds = %2258
  br label %2456

; <label>:2266                                    ; preds = %2258
  %2267 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2268 = zext i8 %2267 to i32
  store i32 %2268, i32* @zz_size, align 4
  %2269 = sext i32 %2268 to i64
  %2270 = icmp uge i64 %2269, 265
  br i1 %2270, label %2271, label %2274

; <label>:2271                                    ; preds = %2266
  %2272 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2273 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %2272)
  br label %2299

; <label>:2274                                    ; preds = %2266
  %2275 = load i32, i32* @zz_size, align 4
  %2276 = sext i32 %2275 to i64
  %2277 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2276
  %2278 = load %union.rec*, %union.rec** %2277, align 8
  %2279 = icmp eq %union.rec* %2278, null
  br i1 %2279, label %2280, label %2284

; <label>:2280                                    ; preds = %2274
  %2281 = load i32, i32* @zz_size, align 4
  %2282 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2283 = call %union.rec* @GetMemory(i32 %2281, %struct.FILE_POS* %2282)
  store %union.rec* %2283, %union.rec** @zz_hold, align 8
  br label %2298

; <label>:2284                                    ; preds = %2274
  %2285 = load i32, i32* @zz_size, align 4
  %2286 = sext i32 %2285 to i64
  %2287 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2286
  %2288 = load %union.rec*, %union.rec** %2287, align 8
  store %union.rec* %2288, %union.rec** @zz_hold, align 8
  store %union.rec* %2288, %union.rec** @zz_hold, align 8
  %2289 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2290 = bitcast %union.rec* %2289 to %struct.word_type*
  %2291 = getelementptr inbounds %struct.word_type, %struct.word_type* %2290, i32 0, i32 0
  %2292 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2291, i32 0, i64 0
  %2293 = getelementptr inbounds %struct.LIST, %struct.LIST* %2292, i32 0, i32 0
  %2294 = load %union.rec*, %union.rec** %2293, align 8
  %2295 = load i32, i32* @zz_size, align 4
  %2296 = sext i32 %2295 to i64
  %2297 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2296
  store %union.rec* %2294, %union.rec** %2297, align 8
  br label %2298

; <label>:2298                                    ; preds = %2284, %2280
  br label %2299

; <label>:2299                                    ; preds = %2298, %2271
  %2300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2301 = bitcast %union.rec* %2300 to %struct.word_type*
  %2302 = getelementptr inbounds %struct.word_type, %struct.word_type* %2301, i32 0, i32 1
  %2303 = bitcast %union.FIRST_UNION* %2302 to %struct.anon*
  %2304 = getelementptr inbounds %struct.anon, %struct.anon* %2303, i32 0, i32 0
  store i8 0, i8* %2304, align 1
  %2305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2307 = bitcast %union.rec* %2306 to %struct.word_type*
  %2308 = getelementptr inbounds %struct.word_type, %struct.word_type* %2307, i32 0, i32 0
  %2309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2308, i32 0, i64 1
  %2310 = getelementptr inbounds %struct.LIST, %struct.LIST* %2309, i32 0, i32 1
  store %union.rec* %2305, %union.rec** %2310, align 8
  %2311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2312 = bitcast %union.rec* %2311 to %struct.word_type*
  %2313 = getelementptr inbounds %struct.word_type, %struct.word_type* %2312, i32 0, i32 0
  %2314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2313, i32 0, i64 1
  %2315 = getelementptr inbounds %struct.LIST, %struct.LIST* %2314, i32 0, i32 0
  store %union.rec* %2305, %union.rec** %2315, align 8
  %2316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2317 = bitcast %union.rec* %2316 to %struct.word_type*
  %2318 = getelementptr inbounds %struct.word_type, %struct.word_type* %2317, i32 0, i32 0
  %2319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2318, i32 0, i64 0
  %2320 = getelementptr inbounds %struct.LIST, %struct.LIST* %2319, i32 0, i32 1
  store %union.rec* %2305, %union.rec** %2320, align 8
  %2321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2322 = bitcast %union.rec* %2321 to %struct.word_type*
  %2323 = getelementptr inbounds %struct.word_type, %struct.word_type* %2322, i32 0, i32 0
  %2324 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2323, i32 0, i64 0
  %2325 = getelementptr inbounds %struct.LIST, %struct.LIST* %2324, i32 0, i32 0
  store %union.rec* %2305, %union.rec** %2325, align 8
  store %union.rec* %2305, %union.rec** @xx_link, align 8
  %2326 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2326, %union.rec** @zz_res, align 8
  %2327 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %2327, %union.rec** @zz_hold, align 8
  %2328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2329 = icmp eq %union.rec* %2328, null
  br i1 %2329, label %2330, label %2332

; <label>:2330                                    ; preds = %2299
  %2331 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2380

; <label>:2332                                    ; preds = %2299
  %2333 = load %union.rec*, %union.rec** @zz_res, align 8
  %2334 = icmp eq %union.rec* %2333, null
  br i1 %2334, label %2335, label %2337

; <label>:2335                                    ; preds = %2332
  %2336 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2378

; <label>:2337                                    ; preds = %2332
  %2338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2339 = bitcast %union.rec* %2338 to %struct.word_type*
  %2340 = getelementptr inbounds %struct.word_type, %struct.word_type* %2339, i32 0, i32 0
  %2341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2340, i32 0, i64 0
  %2342 = getelementptr inbounds %struct.LIST, %struct.LIST* %2341, i32 0, i32 0
  %2343 = load %union.rec*, %union.rec** %2342, align 8
  store %union.rec* %2343, %union.rec** @zz_tmp, align 8
  %2344 = load %union.rec*, %union.rec** @zz_res, align 8
  %2345 = bitcast %union.rec* %2344 to %struct.word_type*
  %2346 = getelementptr inbounds %struct.word_type, %struct.word_type* %2345, i32 0, i32 0
  %2347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2346, i32 0, i64 0
  %2348 = getelementptr inbounds %struct.LIST, %struct.LIST* %2347, i32 0, i32 0
  %2349 = load %union.rec*, %union.rec** %2348, align 8
  %2350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2351 = bitcast %union.rec* %2350 to %struct.word_type*
  %2352 = getelementptr inbounds %struct.word_type, %struct.word_type* %2351, i32 0, i32 0
  %2353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2352, i32 0, i64 0
  %2354 = getelementptr inbounds %struct.LIST, %struct.LIST* %2353, i32 0, i32 0
  store %union.rec* %2349, %union.rec** %2354, align 8
  %2355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2356 = load %union.rec*, %union.rec** @zz_res, align 8
  %2357 = bitcast %union.rec* %2356 to %struct.word_type*
  %2358 = getelementptr inbounds %struct.word_type, %struct.word_type* %2357, i32 0, i32 0
  %2359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2358, i32 0, i64 0
  %2360 = getelementptr inbounds %struct.LIST, %struct.LIST* %2359, i32 0, i32 0
  %2361 = load %union.rec*, %union.rec** %2360, align 8
  %2362 = bitcast %union.rec* %2361 to %struct.word_type*
  %2363 = getelementptr inbounds %struct.word_type, %struct.word_type* %2362, i32 0, i32 0
  %2364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2363, i32 0, i64 0
  %2365 = getelementptr inbounds %struct.LIST, %struct.LIST* %2364, i32 0, i32 1
  store %union.rec* %2355, %union.rec** %2365, align 8
  %2366 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2367 = load %union.rec*, %union.rec** @zz_res, align 8
  %2368 = bitcast %union.rec* %2367 to %struct.word_type*
  %2369 = getelementptr inbounds %struct.word_type, %struct.word_type* %2368, i32 0, i32 0
  %2370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2369, i32 0, i64 0
  %2371 = getelementptr inbounds %struct.LIST, %struct.LIST* %2370, i32 0, i32 0
  store %union.rec* %2366, %union.rec** %2371, align 8
  %2372 = load %union.rec*, %union.rec** @zz_res, align 8
  %2373 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2374 = bitcast %union.rec* %2373 to %struct.word_type*
  %2375 = getelementptr inbounds %struct.word_type, %struct.word_type* %2374, i32 0, i32 0
  %2376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2375, i32 0, i64 0
  %2377 = getelementptr inbounds %struct.LIST, %struct.LIST* %2376, i32 0, i32 1
  store %union.rec* %2372, %union.rec** %2377, align 8
  br label %2378

; <label>:2378                                    ; preds = %2337, %2335
  %2379 = phi %union.rec* [ %2336, %2335 ], [ %2372, %2337 ]
  br label %2380

; <label>:2380                                    ; preds = %2378, %2330
  %2381 = phi %union.rec* [ %2331, %2330 ], [ %2379, %2378 ]
  %2382 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2382, %union.rec** @zz_res, align 8
  %2383 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %2383, %union.rec** @zz_hold, align 8
  %2384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2385 = icmp eq %union.rec* %2384, null
  br i1 %2385, label %2386, label %2388

; <label>:2386                                    ; preds = %2380
  %2387 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2436

; <label>:2388                                    ; preds = %2380
  %2389 = load %union.rec*, %union.rec** @zz_res, align 8
  %2390 = icmp eq %union.rec* %2389, null
  br i1 %2390, label %2391, label %2393

; <label>:2391                                    ; preds = %2388
  %2392 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2434

; <label>:2393                                    ; preds = %2388
  %2394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2395 = bitcast %union.rec* %2394 to %struct.word_type*
  %2396 = getelementptr inbounds %struct.word_type, %struct.word_type* %2395, i32 0, i32 0
  %2397 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2396, i32 0, i64 1
  %2398 = getelementptr inbounds %struct.LIST, %struct.LIST* %2397, i32 0, i32 0
  %2399 = load %union.rec*, %union.rec** %2398, align 8
  store %union.rec* %2399, %union.rec** @zz_tmp, align 8
  %2400 = load %union.rec*, %union.rec** @zz_res, align 8
  %2401 = bitcast %union.rec* %2400 to %struct.word_type*
  %2402 = getelementptr inbounds %struct.word_type, %struct.word_type* %2401, i32 0, i32 0
  %2403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2402, i32 0, i64 1
  %2404 = getelementptr inbounds %struct.LIST, %struct.LIST* %2403, i32 0, i32 0
  %2405 = load %union.rec*, %union.rec** %2404, align 8
  %2406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2407 = bitcast %union.rec* %2406 to %struct.word_type*
  %2408 = getelementptr inbounds %struct.word_type, %struct.word_type* %2407, i32 0, i32 0
  %2409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2408, i32 0, i64 1
  %2410 = getelementptr inbounds %struct.LIST, %struct.LIST* %2409, i32 0, i32 0
  store %union.rec* %2405, %union.rec** %2410, align 8
  %2411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2412 = load %union.rec*, %union.rec** @zz_res, align 8
  %2413 = bitcast %union.rec* %2412 to %struct.word_type*
  %2414 = getelementptr inbounds %struct.word_type, %struct.word_type* %2413, i32 0, i32 0
  %2415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2414, i32 0, i64 1
  %2416 = getelementptr inbounds %struct.LIST, %struct.LIST* %2415, i32 0, i32 0
  %2417 = load %union.rec*, %union.rec** %2416, align 8
  %2418 = bitcast %union.rec* %2417 to %struct.word_type*
  %2419 = getelementptr inbounds %struct.word_type, %struct.word_type* %2418, i32 0, i32 0
  %2420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2419, i32 0, i64 1
  %2421 = getelementptr inbounds %struct.LIST, %struct.LIST* %2420, i32 0, i32 1
  store %union.rec* %2411, %union.rec** %2421, align 8
  %2422 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2423 = load %union.rec*, %union.rec** @zz_res, align 8
  %2424 = bitcast %union.rec* %2423 to %struct.word_type*
  %2425 = getelementptr inbounds %struct.word_type, %struct.word_type* %2424, i32 0, i32 0
  %2426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2425, i32 0, i64 1
  %2427 = getelementptr inbounds %struct.LIST, %struct.LIST* %2426, i32 0, i32 0
  store %union.rec* %2422, %union.rec** %2427, align 8
  %2428 = load %union.rec*, %union.rec** @zz_res, align 8
  %2429 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2430 = bitcast %union.rec* %2429 to %struct.word_type*
  %2431 = getelementptr inbounds %struct.word_type, %struct.word_type* %2430, i32 0, i32 0
  %2432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2431, i32 0, i64 1
  %2433 = getelementptr inbounds %struct.LIST, %struct.LIST* %2432, i32 0, i32 1
  store %union.rec* %2428, %union.rec** %2433, align 8
  br label %2434

; <label>:2434                                    ; preds = %2393, %2391
  %2435 = phi %union.rec* [ %2392, %2391 ], [ %2428, %2393 ]
  br label %2436

; <label>:2436                                    ; preds = %2434, %2386
  %2437 = phi %union.rec* [ %2387, %2386 ], [ %2435, %2434 ]
  %2438 = load %union.rec*, %union.rec** %tag, align 8
  %2439 = bitcast %union.rec* %2438 to %struct.word_type*
  %2440 = getelementptr inbounds %struct.word_type, %struct.word_type* %2439, i32 0, i32 1
  %2441 = bitcast %union.FIRST_UNION* %2440 to %struct.FILE_POS*
  %2442 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2441, i32 0, i32 2
  %2443 = load i16, i16* %2442, align 2
  %2444 = load %union.rec*, %union.rec** %tag, align 8
  %2445 = bitcast %union.rec* %2444 to %struct.word_type*
  %2446 = getelementptr inbounds %struct.word_type, %struct.word_type* %2445, i32 0, i32 3
  %2447 = bitcast %union.THIRD_UNION* %2446 to %struct.anon.8*
  %2448 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %2447, i32 0, i32 1
  store i16 %2443, i16* %2448, align 2
  %2449 = load i32, i32* %ctype, align 4
  %2450 = trunc i32 %2449 to i8
  %2451 = load %union.rec*, %union.rec** %tag, align 8
  %2452 = bitcast %union.rec* %2451 to %struct.word_type*
  %2453 = getelementptr inbounds %struct.word_type, %struct.word_type* %2452, i32 0, i32 3
  %2454 = bitcast %union.THIRD_UNION* %2453 to %struct.anon.8*
  %2455 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %2454, i32 0, i32 0
  store i8 %2450, i8* %2455, align 1
  br label %2456

; <label>:2456                                    ; preds = %2436, %2265
  br label %2457

; <label>:2457                                    ; preds = %2456, %2247
  br label %3359

; <label>:2458                                    ; preds = %330
  %2459 = load %union.rec*, %union.rec** %cs, align 8
  %2460 = bitcast %union.rec* %2459 to %struct.cr_type*
  %2461 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2460, i32 0, i32 2
  %2462 = load i8, i8* %2461, align 1
  %2463 = zext i8 %2462 to i32
  %2464 = icmp eq i32 %2463, 1
  br i1 %2464, label %2465, label %2471

; <label>:2465                                    ; preds = %2458
  %2466 = load %union.rec*, %union.rec** %cs, align 8
  %2467 = bitcast %union.rec* %2466 to %struct.cr_type*
  %2468 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2467, i32 0, i32 4
  %2469 = load %union.rec*, %union.rec** %2468, align 8
  %2470 = call i32 @DisposeObject(%union.rec* %2469)
  br label %2471

; <label>:2471                                    ; preds = %2465, %2458
  %2472 = load %union.rec*, %union.rec** %tag, align 8
  %2473 = load %union.rec*, %union.rec** %cs, align 8
  %2474 = bitcast %union.rec* %2473 to %struct.cr_type*
  %2475 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2474, i32 0, i32 4
  store %union.rec* %2472, %union.rec** %2475, align 8
  %2476 = load %union.rec*, %union.rec** %tag, align 8
  %2477 = bitcast %union.rec* %2476 to %struct.word_type*
  %2478 = getelementptr inbounds %struct.word_type, %struct.word_type* %2477, i32 0, i32 0
  %2479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2478, i32 0, i64 1
  %2480 = getelementptr inbounds %struct.LIST, %struct.LIST* %2479, i32 0, i32 1
  %2481 = load %union.rec*, %union.rec** %2480, align 8
  %2482 = load %union.rec*, %union.rec** %tag, align 8
  %2483 = icmp eq %union.rec* %2481, %2482
  br i1 %2483, label %2487, label %2484

; <label>:2484                                    ; preds = %2471
  %2485 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2486 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %2485, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.43, i32 0, i32 0))
  br label %2487

; <label>:2487                                    ; preds = %2484, %2471
  %2488 = load %union.rec*, %union.rec** %tag, align 8
  %2489 = bitcast %union.rec* %2488 to %struct.word_type*
  %2490 = getelementptr inbounds %struct.word_type, %struct.word_type* %2489, i32 0, i32 1
  %2491 = bitcast %union.FIRST_UNION* %2490 to %struct.FILE_POS*
  %2492 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %2491)
  %2493 = load %union.rec*, %union.rec** %cs, align 8
  %2494 = bitcast %union.rec* %2493 to %struct.cr_type*
  %2495 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2494, i32 0, i32 3
  store i16 %2492, i16* %2495, align 2
  %2496 = load %union.rec*, %union.rec** %cs, align 8
  %2497 = bitcast %union.rec* %2496 to %struct.cr_type*
  %2498 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2497, i32 0, i32 2
  store i8 1, i8* %2498, align 1
  store %union.rec* null, %union.rec** %tag, align 8
  %2499 = load %union.rec*, %union.rec** %cs, align 8
  %2500 = bitcast %union.rec* %2499 to %struct.cr_type*
  %2501 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2500, i32 0, i32 4
  %2502 = load %union.rec*, %union.rec** %2501, align 8
  %2503 = bitcast %union.rec* %2502 to %struct.word_type*
  %2504 = getelementptr inbounds %struct.word_type, %struct.word_type* %2503, i32 0, i32 1
  %2505 = bitcast %union.FIRST_UNION* %2504 to %struct.anon*
  %2506 = getelementptr inbounds %struct.anon, %struct.anon* %2505, i32 0, i32 0
  %2507 = load i8, i8* %2506, align 1
  %2508 = zext i8 %2507 to i32
  %2509 = icmp eq i32 %2508, 2
  br i1 %2509, label %2513, label %2510

; <label>:2510                                    ; preds = %2487
  %2511 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2512 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %2511, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.44, i32 0, i32 0))
  br label %2513

; <label>:2513                                    ; preds = %2510, %2487
  %2514 = load %union.rec*, %union.rec** %cs, align 8
  %2515 = bitcast %union.rec* %2514 to %struct.cr_type*
  %2516 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2515, i32 0, i32 4
  %2517 = load %union.rec*, %union.rec** %2516, align 8
  %2518 = bitcast %union.rec* %2517 to %struct.word_type*
  %2519 = getelementptr inbounds %struct.word_type, %struct.word_type* %2518, i32 0, i32 0
  %2520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2519, i32 0, i64 0
  %2521 = getelementptr inbounds %struct.LIST, %struct.LIST* %2520, i32 0, i32 1
  %2522 = load %union.rec*, %union.rec** %2521, align 8
  store %union.rec* %2522, %union.rec** %link, align 8
  br label %2523

; <label>:2523                                    ; preds = %3021, %2513
  %2524 = load %union.rec*, %union.rec** %link, align 8
  %2525 = load %union.rec*, %union.rec** %cs, align 8
  %2526 = bitcast %union.rec* %2525 to %struct.cr_type*
  %2527 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2526, i32 0, i32 4
  %2528 = load %union.rec*, %union.rec** %2527, align 8
  %2529 = icmp ne %union.rec* %2524, %2528
  br i1 %2529, label %2530, label %3028

; <label>:2530                                    ; preds = %2523
  %2531 = load %union.rec*, %union.rec** %link, align 8
  %2532 = bitcast %union.rec* %2531 to %struct.word_type*
  %2533 = getelementptr inbounds %struct.word_type, %struct.word_type* %2532, i32 0, i32 0
  %2534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2533, i32 0, i64 1
  %2535 = getelementptr inbounds %struct.LIST, %struct.LIST* %2534, i32 0, i32 0
  %2536 = load %union.rec*, %union.rec** %2535, align 8
  store %union.rec* %2536, %union.rec** %par, align 8
  br label %2537

; <label>:2537                                    ; preds = %2547, %2530
  %2538 = load %union.rec*, %union.rec** %par, align 8
  %2539 = bitcast %union.rec* %2538 to %struct.word_type*
  %2540 = getelementptr inbounds %struct.word_type, %struct.word_type* %2539, i32 0, i32 1
  %2541 = bitcast %union.FIRST_UNION* %2540 to %struct.anon*
  %2542 = getelementptr inbounds %struct.anon, %struct.anon* %2541, i32 0, i32 0
  %2543 = load i8, i8* %2542, align 1
  %2544 = zext i8 %2543 to i32
  %2545 = icmp eq i32 %2544, 0
  br i1 %2545, label %2546, label %2554

; <label>:2546                                    ; preds = %2537
  br label %2547

; <label>:2547                                    ; preds = %2546
  %2548 = load %union.rec*, %union.rec** %par, align 8
  %2549 = bitcast %union.rec* %2548 to %struct.word_type*
  %2550 = getelementptr inbounds %struct.word_type, %struct.word_type* %2549, i32 0, i32 0
  %2551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2550, i32 0, i64 1
  %2552 = getelementptr inbounds %struct.LIST, %struct.LIST* %2551, i32 0, i32 0
  %2553 = load %union.rec*, %union.rec** %2552, align 8
  store %union.rec* %2553, %union.rec** %par, align 8
  br label %2537

; <label>:2554                                    ; preds = %2537
  %2555 = load %union.rec*, %union.rec** %par, align 8
  %2556 = bitcast %union.rec* %2555 to %struct.word_type*
  %2557 = getelementptr inbounds %struct.word_type, %struct.word_type* %2556, i32 0, i32 1
  %2558 = bitcast %union.FIRST_UNION* %2557 to %struct.anon*
  %2559 = getelementptr inbounds %struct.anon, %struct.anon* %2558, i32 0, i32 0
  %2560 = load i8, i8* %2559, align 1
  %2561 = zext i8 %2560 to i32
  %2562 = icmp eq i32 %2561, 10
  br i1 %2562, label %2563, label %3020

; <label>:2563                                    ; preds = %2554
  %2564 = load %union.rec*, %union.rec** %par, align 8
  %2565 = bitcast %union.rec* %2564 to %struct.word_type*
  %2566 = getelementptr inbounds %struct.word_type, %struct.word_type* %2565, i32 0, i32 0
  %2567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2566, i32 0, i64 0
  %2568 = getelementptr inbounds %struct.LIST, %struct.LIST* %2567, i32 0, i32 1
  %2569 = load %union.rec*, %union.rec** %2568, align 8
  %2570 = load %union.rec*, %union.rec** %par, align 8
  %2571 = icmp ne %union.rec* %2569, %2570
  br i1 %2571, label %2575, label %2572

; <label>:2572                                    ; preds = %2563
  %2573 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2574 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %2573, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.45, i32 0, i32 0))
  br label %2575

; <label>:2575                                    ; preds = %2572, %2563
  %2576 = load %union.rec*, %union.rec** %par, align 8
  %2577 = bitcast %union.rec* %2576 to %struct.closure_type*
  %2578 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2577, i32 0, i32 5
  %2579 = load %union.rec*, %union.rec** %2578, align 8
  %2580 = bitcast %union.rec* %2579 to %struct.word_type*
  %2581 = getelementptr inbounds %struct.word_type, %struct.word_type* %2580, i32 0, i32 2
  %2582 = bitcast %union.SECOND_UNION* %2581 to %struct.anon.5*
  %2583 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2582, i32 0, i32 1
  %2584 = bitcast [3 x i8]* %2583 to i24*
  %2585 = load i24, i24* %2584, align 1
  %2586 = and i24 %2585, 1
  %2587 = zext i24 %2586 to i32
  %2588 = icmp ne i32 %2587, 0
  br i1 %2588, label %2589, label %2850

; <label>:2589                                    ; preds = %2575
  %2590 = load %union.rec*, %union.rec** %par, align 8
  %2591 = bitcast %union.rec* %2590 to %struct.word_type*
  %2592 = getelementptr inbounds %struct.word_type, %struct.word_type* %2591, i32 0, i32 0
  %2593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2592, i32 0, i64 0
  %2594 = getelementptr inbounds %struct.LIST, %struct.LIST* %2593, i32 0, i32 1
  %2595 = load %union.rec*, %union.rec** %2594, align 8
  %2596 = bitcast %union.rec* %2595 to %struct.word_type*
  %2597 = getelementptr inbounds %struct.word_type, %struct.word_type* %2596, i32 0, i32 0
  %2598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2597, i32 0, i64 1
  %2599 = getelementptr inbounds %struct.LIST, %struct.LIST* %2598, i32 0, i32 0
  %2600 = load %union.rec*, %union.rec** %2599, align 8
  store %union.rec* %2600, %union.rec** %tag, align 8
  br label %2601

; <label>:2601                                    ; preds = %2611, %2589
  %2602 = load %union.rec*, %union.rec** %tag, align 8
  %2603 = bitcast %union.rec* %2602 to %struct.word_type*
  %2604 = getelementptr inbounds %struct.word_type, %struct.word_type* %2603, i32 0, i32 1
  %2605 = bitcast %union.FIRST_UNION* %2604 to %struct.anon*
  %2606 = getelementptr inbounds %struct.anon, %struct.anon* %2605, i32 0, i32 0
  %2607 = load i8, i8* %2606, align 1
  %2608 = zext i8 %2607 to i32
  %2609 = icmp eq i32 %2608, 0
  br i1 %2609, label %2610, label %2618

; <label>:2610                                    ; preds = %2601
  br label %2611

; <label>:2611                                    ; preds = %2610
  %2612 = load %union.rec*, %union.rec** %tag, align 8
  %2613 = bitcast %union.rec* %2612 to %struct.word_type*
  %2614 = getelementptr inbounds %struct.word_type, %struct.word_type* %2613, i32 0, i32 0
  %2615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2614, i32 0, i64 1
  %2616 = getelementptr inbounds %struct.LIST, %struct.LIST* %2615, i32 0, i32 0
  %2617 = load %union.rec*, %union.rec** %2616, align 8
  store %union.rec* %2617, %union.rec** %tag, align 8
  br label %2601

; <label>:2618                                    ; preds = %2601
  %2619 = load %union.rec*, %union.rec** %tag, align 8
  %2620 = call %union.rec* @ReplaceWithTidy(%union.rec* %2619, i32 1)
  store %union.rec* %2620, %union.rec** %tag, align 8
  %2621 = load %union.rec*, %union.rec** %tag, align 8
  %2622 = bitcast %union.rec* %2621 to %struct.word_type*
  %2623 = getelementptr inbounds %struct.word_type, %struct.word_type* %2622, i32 0, i32 1
  %2624 = bitcast %union.FIRST_UNION* %2623 to %struct.anon*
  %2625 = getelementptr inbounds %struct.anon, %struct.anon* %2624, i32 0, i32 0
  %2626 = load i8, i8* %2625, align 1
  %2627 = zext i8 %2626 to i32
  %2628 = icmp eq i32 %2627, 11
  br i1 %2628, label %2652, label %2629

; <label>:2629                                    ; preds = %2618
  %2630 = load %union.rec*, %union.rec** %tag, align 8
  %2631 = bitcast %union.rec* %2630 to %struct.word_type*
  %2632 = getelementptr inbounds %struct.word_type, %struct.word_type* %2631, i32 0, i32 1
  %2633 = bitcast %union.FIRST_UNION* %2632 to %struct.anon*
  %2634 = getelementptr inbounds %struct.anon, %struct.anon* %2633, i32 0, i32 0
  %2635 = load i8, i8* %2634, align 1
  %2636 = zext i8 %2635 to i32
  %2637 = icmp eq i32 %2636, 12
  br i1 %2637, label %2652, label %2638

; <label>:2638                                    ; preds = %2629
  %2639 = load %union.rec*, %union.rec** %tag, align 8
  %2640 = bitcast %union.rec* %2639 to %struct.word_type*
  %2641 = getelementptr inbounds %struct.word_type, %struct.word_type* %2640, i32 0, i32 1
  %2642 = bitcast %union.FIRST_UNION* %2641 to %struct.FILE_POS*
  %2643 = load %union.rec*, %union.rec** %cs, align 8
  %2644 = bitcast %union.rec* %2643 to %struct.cr_type*
  %2645 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %2644, i32 0, i32 4
  %2646 = load %union.rec*, %union.rec** %2645, align 8
  %2647 = bitcast %union.rec* %2646 to %struct.closure_type*
  %2648 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2647, i32 0, i32 5
  %2649 = load %union.rec*, %union.rec** %2648, align 8
  %2650 = call i8* @SymName(%union.rec* %2649)
  %2651 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 15, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %2642, i8* %2650)
  br label %2849

; <label>:2652                                    ; preds = %2629, %2618
  %2653 = load %union.rec*, %union.rec** %tag, align 8
  %2654 = bitcast %union.rec* %2653 to %struct.word_type*
  %2655 = getelementptr inbounds %struct.word_type, %struct.word_type* %2654, i32 0, i32 4
  %2656 = getelementptr inbounds [4 x i8], [4 x i8]* %2655, i32 0, i32 0
  %2657 = call i32 @strcmp(i8* %2656, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %2658 = icmp eq i32 %2657, 0
  br i1 %2658, label %2659, label %2660

; <label>:2659                                    ; preds = %2652
  br label %2848

; <label>:2660                                    ; preds = %2652
  %2661 = load %union.rec*, %union.rec** %tag, align 8
  %2662 = bitcast %union.rec* %2661 to %struct.word_type*
  %2663 = getelementptr inbounds %struct.word_type, %struct.word_type* %2662, i32 0, i32 1
  %2664 = bitcast %union.FIRST_UNION* %2663 to %struct.FILE_POS*
  %2665 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %2664, i32 0, i32 2
  %2666 = load i16, i16* %2665, align 2
  %2667 = load %union.rec*, %union.rec** %tag, align 8
  %2668 = bitcast %union.rec* %2667 to %struct.word_type*
  %2669 = getelementptr inbounds %struct.word_type, %struct.word_type* %2668, i32 0, i32 3
  %2670 = bitcast %union.THIRD_UNION* %2669 to %struct.anon.8*
  %2671 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %2670, i32 0, i32 1
  store i16 %2666, i16* %2671, align 2
  %2672 = load %union.rec*, %union.rec** %tag, align 8
  %2673 = bitcast %union.rec* %2672 to %struct.word_type*
  %2674 = getelementptr inbounds %struct.word_type, %struct.word_type* %2673, i32 0, i32 3
  %2675 = bitcast %union.THIRD_UNION* %2674 to %struct.anon.8*
  %2676 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %2675, i32 0, i32 0
  store i8 126, i8* %2676, align 1
  %2677 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %2678 = zext i8 %2677 to i32
  store i32 %2678, i32* @zz_size, align 4
  %2679 = sext i32 %2678 to i64
  %2680 = icmp uge i64 %2679, 265
  br i1 %2680, label %2681, label %2684

; <label>:2681                                    ; preds = %2660
  %2682 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2683 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %2682)
  br label %2709

; <label>:2684                                    ; preds = %2660
  %2685 = load i32, i32* @zz_size, align 4
  %2686 = sext i32 %2685 to i64
  %2687 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2686
  %2688 = load %union.rec*, %union.rec** %2687, align 8
  %2689 = icmp eq %union.rec* %2688, null
  br i1 %2689, label %2690, label %2694

; <label>:2690                                    ; preds = %2684
  %2691 = load i32, i32* @zz_size, align 4
  %2692 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2693 = call %union.rec* @GetMemory(i32 %2691, %struct.FILE_POS* %2692)
  store %union.rec* %2693, %union.rec** @zz_hold, align 8
  br label %2708

; <label>:2694                                    ; preds = %2684
  %2695 = load i32, i32* @zz_size, align 4
  %2696 = sext i32 %2695 to i64
  %2697 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2696
  %2698 = load %union.rec*, %union.rec** %2697, align 8
  store %union.rec* %2698, %union.rec** @zz_hold, align 8
  store %union.rec* %2698, %union.rec** @zz_hold, align 8
  %2699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2700 = bitcast %union.rec* %2699 to %struct.word_type*
  %2701 = getelementptr inbounds %struct.word_type, %struct.word_type* %2700, i32 0, i32 0
  %2702 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2701, i32 0, i64 0
  %2703 = getelementptr inbounds %struct.LIST, %struct.LIST* %2702, i32 0, i32 0
  %2704 = load %union.rec*, %union.rec** %2703, align 8
  %2705 = load i32, i32* @zz_size, align 4
  %2706 = sext i32 %2705 to i64
  %2707 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2706
  store %union.rec* %2704, %union.rec** %2707, align 8
  br label %2708

; <label>:2708                                    ; preds = %2694, %2690
  br label %2709

; <label>:2709                                    ; preds = %2708, %2681
  %2710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2711 = bitcast %union.rec* %2710 to %struct.word_type*
  %2712 = getelementptr inbounds %struct.word_type, %struct.word_type* %2711, i32 0, i32 1
  %2713 = bitcast %union.FIRST_UNION* %2712 to %struct.anon*
  %2714 = getelementptr inbounds %struct.anon, %struct.anon* %2713, i32 0, i32 0
  store i8 0, i8* %2714, align 1
  %2715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2717 = bitcast %union.rec* %2716 to %struct.word_type*
  %2718 = getelementptr inbounds %struct.word_type, %struct.word_type* %2717, i32 0, i32 0
  %2719 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2718, i32 0, i64 1
  %2720 = getelementptr inbounds %struct.LIST, %struct.LIST* %2719, i32 0, i32 1
  store %union.rec* %2715, %union.rec** %2720, align 8
  %2721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2722 = bitcast %union.rec* %2721 to %struct.word_type*
  %2723 = getelementptr inbounds %struct.word_type, %struct.word_type* %2722, i32 0, i32 0
  %2724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2723, i32 0, i64 1
  %2725 = getelementptr inbounds %struct.LIST, %struct.LIST* %2724, i32 0, i32 0
  store %union.rec* %2715, %union.rec** %2725, align 8
  %2726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2727 = bitcast %union.rec* %2726 to %struct.word_type*
  %2728 = getelementptr inbounds %struct.word_type, %struct.word_type* %2727, i32 0, i32 0
  %2729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2728, i32 0, i64 0
  %2730 = getelementptr inbounds %struct.LIST, %struct.LIST* %2729, i32 0, i32 1
  store %union.rec* %2715, %union.rec** %2730, align 8
  %2731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2732 = bitcast %union.rec* %2731 to %struct.word_type*
  %2733 = getelementptr inbounds %struct.word_type, %struct.word_type* %2732, i32 0, i32 0
  %2734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2733, i32 0, i64 0
  %2735 = getelementptr inbounds %struct.LIST, %struct.LIST* %2734, i32 0, i32 0
  store %union.rec* %2715, %union.rec** %2735, align 8
  store %union.rec* %2715, %union.rec** @xx_link, align 8
  %2736 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2736, %union.rec** @zz_res, align 8
  %2737 = load %union.rec*, %union.rec** %cs, align 8
  store %union.rec* %2737, %union.rec** @zz_hold, align 8
  %2738 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2739 = icmp eq %union.rec* %2738, null
  br i1 %2739, label %2740, label %2742

; <label>:2740                                    ; preds = %2709
  %2741 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2790

; <label>:2742                                    ; preds = %2709
  %2743 = load %union.rec*, %union.rec** @zz_res, align 8
  %2744 = icmp eq %union.rec* %2743, null
  br i1 %2744, label %2745, label %2747

; <label>:2745                                    ; preds = %2742
  %2746 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2788

; <label>:2747                                    ; preds = %2742
  %2748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2749 = bitcast %union.rec* %2748 to %struct.word_type*
  %2750 = getelementptr inbounds %struct.word_type, %struct.word_type* %2749, i32 0, i32 0
  %2751 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2750, i32 0, i64 0
  %2752 = getelementptr inbounds %struct.LIST, %struct.LIST* %2751, i32 0, i32 0
  %2753 = load %union.rec*, %union.rec** %2752, align 8
  store %union.rec* %2753, %union.rec** @zz_tmp, align 8
  %2754 = load %union.rec*, %union.rec** @zz_res, align 8
  %2755 = bitcast %union.rec* %2754 to %struct.word_type*
  %2756 = getelementptr inbounds %struct.word_type, %struct.word_type* %2755, i32 0, i32 0
  %2757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2756, i32 0, i64 0
  %2758 = getelementptr inbounds %struct.LIST, %struct.LIST* %2757, i32 0, i32 0
  %2759 = load %union.rec*, %union.rec** %2758, align 8
  %2760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2761 = bitcast %union.rec* %2760 to %struct.word_type*
  %2762 = getelementptr inbounds %struct.word_type, %struct.word_type* %2761, i32 0, i32 0
  %2763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2762, i32 0, i64 0
  %2764 = getelementptr inbounds %struct.LIST, %struct.LIST* %2763, i32 0, i32 0
  store %union.rec* %2759, %union.rec** %2764, align 8
  %2765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2766 = load %union.rec*, %union.rec** @zz_res, align 8
  %2767 = bitcast %union.rec* %2766 to %struct.word_type*
  %2768 = getelementptr inbounds %struct.word_type, %struct.word_type* %2767, i32 0, i32 0
  %2769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2768, i32 0, i64 0
  %2770 = getelementptr inbounds %struct.LIST, %struct.LIST* %2769, i32 0, i32 0
  %2771 = load %union.rec*, %union.rec** %2770, align 8
  %2772 = bitcast %union.rec* %2771 to %struct.word_type*
  %2773 = getelementptr inbounds %struct.word_type, %struct.word_type* %2772, i32 0, i32 0
  %2774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2773, i32 0, i64 0
  %2775 = getelementptr inbounds %struct.LIST, %struct.LIST* %2774, i32 0, i32 1
  store %union.rec* %2765, %union.rec** %2775, align 8
  %2776 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2777 = load %union.rec*, %union.rec** @zz_res, align 8
  %2778 = bitcast %union.rec* %2777 to %struct.word_type*
  %2779 = getelementptr inbounds %struct.word_type, %struct.word_type* %2778, i32 0, i32 0
  %2780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2779, i32 0, i64 0
  %2781 = getelementptr inbounds %struct.LIST, %struct.LIST* %2780, i32 0, i32 0
  store %union.rec* %2776, %union.rec** %2781, align 8
  %2782 = load %union.rec*, %union.rec** @zz_res, align 8
  %2783 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2784 = bitcast %union.rec* %2783 to %struct.word_type*
  %2785 = getelementptr inbounds %struct.word_type, %struct.word_type* %2784, i32 0, i32 0
  %2786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2785, i32 0, i64 0
  %2787 = getelementptr inbounds %struct.LIST, %struct.LIST* %2786, i32 0, i32 1
  store %union.rec* %2782, %union.rec** %2787, align 8
  br label %2788

; <label>:2788                                    ; preds = %2747, %2745
  %2789 = phi %union.rec* [ %2746, %2745 ], [ %2782, %2747 ]
  br label %2790

; <label>:2790                                    ; preds = %2788, %2740
  %2791 = phi %union.rec* [ %2741, %2740 ], [ %2789, %2788 ]
  %2792 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2792, %union.rec** @zz_res, align 8
  %2793 = load %union.rec*, %union.rec** %tag, align 8
  store %union.rec* %2793, %union.rec** @zz_hold, align 8
  %2794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2795 = icmp eq %union.rec* %2794, null
  br i1 %2795, label %2796, label %2798

; <label>:2796                                    ; preds = %2790
  %2797 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2846

; <label>:2798                                    ; preds = %2790
  %2799 = load %union.rec*, %union.rec** @zz_res, align 8
  %2800 = icmp eq %union.rec* %2799, null
  br i1 %2800, label %2801, label %2803

; <label>:2801                                    ; preds = %2798
  %2802 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2844

; <label>:2803                                    ; preds = %2798
  %2804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2805 = bitcast %union.rec* %2804 to %struct.word_type*
  %2806 = getelementptr inbounds %struct.word_type, %struct.word_type* %2805, i32 0, i32 0
  %2807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2806, i32 0, i64 1
  %2808 = getelementptr inbounds %struct.LIST, %struct.LIST* %2807, i32 0, i32 0
  %2809 = load %union.rec*, %union.rec** %2808, align 8
  store %union.rec* %2809, %union.rec** @zz_tmp, align 8
  %2810 = load %union.rec*, %union.rec** @zz_res, align 8
  %2811 = bitcast %union.rec* %2810 to %struct.word_type*
  %2812 = getelementptr inbounds %struct.word_type, %struct.word_type* %2811, i32 0, i32 0
  %2813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2812, i32 0, i64 1
  %2814 = getelementptr inbounds %struct.LIST, %struct.LIST* %2813, i32 0, i32 0
  %2815 = load %union.rec*, %union.rec** %2814, align 8
  %2816 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2817 = bitcast %union.rec* %2816 to %struct.word_type*
  %2818 = getelementptr inbounds %struct.word_type, %struct.word_type* %2817, i32 0, i32 0
  %2819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2818, i32 0, i64 1
  %2820 = getelementptr inbounds %struct.LIST, %struct.LIST* %2819, i32 0, i32 0
  store %union.rec* %2815, %union.rec** %2820, align 8
  %2821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2822 = load %union.rec*, %union.rec** @zz_res, align 8
  %2823 = bitcast %union.rec* %2822 to %struct.word_type*
  %2824 = getelementptr inbounds %struct.word_type, %struct.word_type* %2823, i32 0, i32 0
  %2825 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2824, i32 0, i64 1
  %2826 = getelementptr inbounds %struct.LIST, %struct.LIST* %2825, i32 0, i32 0
  %2827 = load %union.rec*, %union.rec** %2826, align 8
  %2828 = bitcast %union.rec* %2827 to %struct.word_type*
  %2829 = getelementptr inbounds %struct.word_type, %struct.word_type* %2828, i32 0, i32 0
  %2830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2829, i32 0, i64 1
  %2831 = getelementptr inbounds %struct.LIST, %struct.LIST* %2830, i32 0, i32 1
  store %union.rec* %2821, %union.rec** %2831, align 8
  %2832 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2833 = load %union.rec*, %union.rec** @zz_res, align 8
  %2834 = bitcast %union.rec* %2833 to %struct.word_type*
  %2835 = getelementptr inbounds %struct.word_type, %struct.word_type* %2834, i32 0, i32 0
  %2836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2835, i32 0, i64 1
  %2837 = getelementptr inbounds %struct.LIST, %struct.LIST* %2836, i32 0, i32 0
  store %union.rec* %2832, %union.rec** %2837, align 8
  %2838 = load %union.rec*, %union.rec** @zz_res, align 8
  %2839 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2840 = bitcast %union.rec* %2839 to %struct.word_type*
  %2841 = getelementptr inbounds %struct.word_type, %struct.word_type* %2840, i32 0, i32 0
  %2842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2841, i32 0, i64 1
  %2843 = getelementptr inbounds %struct.LIST, %struct.LIST* %2842, i32 0, i32 1
  store %union.rec* %2838, %union.rec** %2843, align 8
  br label %2844

; <label>:2844                                    ; preds = %2803, %2801
  %2845 = phi %union.rec* [ %2802, %2801 ], [ %2838, %2803 ]
  br label %2846

; <label>:2846                                    ; preds = %2844, %2796
  %2847 = phi %union.rec* [ %2797, %2796 ], [ %2845, %2844 ]
  br label %2848

; <label>:2848                                    ; preds = %2846, %2659
  br label %2849

; <label>:2849                                    ; preds = %2848, %2638
  br label %3019

; <label>:2850                                    ; preds = %2575
  %2851 = load %union.rec*, %union.rec** %par, align 8
  %2852 = bitcast %union.rec* %2851 to %struct.closure_type*
  %2853 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2852, i32 0, i32 5
  %2854 = load %union.rec*, %union.rec** %2853, align 8
  %2855 = bitcast %union.rec* %2854 to %struct.word_type*
  %2856 = getelementptr inbounds %struct.word_type, %struct.word_type* %2855, i32 0, i32 1
  %2857 = bitcast %union.FIRST_UNION* %2856 to %struct.anon*
  %2858 = getelementptr inbounds %struct.anon, %struct.anon* %2857, i32 0, i32 0
  %2859 = load i8, i8* %2858, align 1
  %2860 = zext i8 %2859 to i32
  %2861 = icmp eq i32 %2860, 146
  br i1 %2861, label %2862, label %3018

; <label>:2862                                    ; preds = %2850
  %2863 = load %union.rec*, %union.rec** %par, align 8
  %2864 = bitcast %union.rec* %2863 to %struct.word_type*
  %2865 = getelementptr inbounds %struct.word_type, %struct.word_type* %2864, i32 0, i32 0
  %2866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2865, i32 0, i64 0
  %2867 = getelementptr inbounds %struct.LIST, %struct.LIST* %2866, i32 0, i32 1
  %2868 = load %union.rec*, %union.rec** %2867, align 8
  %2869 = bitcast %union.rec* %2868 to %struct.word_type*
  %2870 = getelementptr inbounds %struct.word_type, %struct.word_type* %2869, i32 0, i32 0
  %2871 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2870, i32 0, i64 1
  %2872 = getelementptr inbounds %struct.LIST, %struct.LIST* %2871, i32 0, i32 0
  %2873 = load %union.rec*, %union.rec** %2872, align 8
  store %union.rec* %2873, %union.rec** %y, align 8
  br label %2874

; <label>:2874                                    ; preds = %2884, %2862
  %2875 = load %union.rec*, %union.rec** %y, align 8
  %2876 = bitcast %union.rec* %2875 to %struct.word_type*
  %2877 = getelementptr inbounds %struct.word_type, %struct.word_type* %2876, i32 0, i32 1
  %2878 = bitcast %union.FIRST_UNION* %2877 to %struct.anon*
  %2879 = getelementptr inbounds %struct.anon, %struct.anon* %2878, i32 0, i32 0
  %2880 = load i8, i8* %2879, align 1
  %2881 = zext i8 %2880 to i32
  %2882 = icmp eq i32 %2881, 0
  br i1 %2882, label %2883, label %2891

; <label>:2883                                    ; preds = %2874
  br label %2884

; <label>:2884                                    ; preds = %2883
  %2885 = load %union.rec*, %union.rec** %y, align 8
  %2886 = bitcast %union.rec* %2885 to %struct.word_type*
  %2887 = getelementptr inbounds %struct.word_type, %struct.word_type* %2886, i32 0, i32 0
  %2888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2887, i32 0, i64 1
  %2889 = getelementptr inbounds %struct.LIST, %struct.LIST* %2888, i32 0, i32 0
  %2890 = load %union.rec*, %union.rec** %2889, align 8
  store %union.rec* %2890, %union.rec** %y, align 8
  br label %2874

; <label>:2891                                    ; preds = %2874
  %2892 = load %union.rec*, %union.rec** %y, align 8
  %2893 = bitcast %union.rec* %2892 to %struct.word_type*
  %2894 = getelementptr inbounds %struct.word_type, %struct.word_type* %2893, i32 0, i32 1
  %2895 = bitcast %union.FIRST_UNION* %2894 to %struct.anon*
  %2896 = getelementptr inbounds %struct.anon, %struct.anon* %2895, i32 0, i32 0
  %2897 = load i8, i8* %2896, align 1
  %2898 = zext i8 %2897 to i32
  switch i32 %2898, label %2900 [
    i32 11, label %2899
    i32 12, label %2899
    i32 17, label %2899
    i32 92, label %2899
    i32 78, label %2899
    i32 5, label %2899
    i32 6, label %2899
    i32 7, label %2899
    i32 93, label %2899
  ]

; <label>:2899                                    ; preds = %2891, %2891, %2891, %2891, %2891, %2891, %2891, %2891, %2891
  br label %3017

; <label>:2900                                    ; preds = %2891
  %2901 = load %union.rec*, %union.rec** %y, align 8
  %2902 = bitcast %union.rec* %2901 to %struct.word_type*
  %2903 = getelementptr inbounds %struct.word_type, %struct.word_type* %2902, i32 0, i32 1
  %2904 = bitcast %union.FIRST_UNION* %2903 to %struct.FILE_POS*
  %2905 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.46, i32 0, i32 0), %struct.FILE_POS* %2904)
  store %union.rec* %2905, %union.rec** %tmp, align 8
  %2906 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2906, %union.rec** @zz_hold, align 8
  %2907 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2908 = bitcast %union.rec* %2907 to %struct.word_type*
  %2909 = getelementptr inbounds %struct.word_type, %struct.word_type* %2908, i32 0, i32 0
  %2910 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2909, i32 0, i64 1
  %2911 = getelementptr inbounds %struct.LIST, %struct.LIST* %2910, i32 0, i32 1
  %2912 = load %union.rec*, %union.rec** %2911, align 8
  %2913 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2914 = icmp eq %union.rec* %2912, %2913
  br i1 %2914, label %2915, label %2916

; <label>:2915                                    ; preds = %2900
  br label %2957

; <label>:2916                                    ; preds = %2900
  %2917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2918 = bitcast %union.rec* %2917 to %struct.word_type*
  %2919 = getelementptr inbounds %struct.word_type, %struct.word_type* %2918, i32 0, i32 0
  %2920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2919, i32 0, i64 1
  %2921 = getelementptr inbounds %struct.LIST, %struct.LIST* %2920, i32 0, i32 1
  %2922 = load %union.rec*, %union.rec** %2921, align 8
  store %union.rec* %2922, %union.rec** @zz_res, align 8
  %2923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2924 = bitcast %union.rec* %2923 to %struct.word_type*
  %2925 = getelementptr inbounds %struct.word_type, %struct.word_type* %2924, i32 0, i32 0
  %2926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2925, i32 0, i64 1
  %2927 = getelementptr inbounds %struct.LIST, %struct.LIST* %2926, i32 0, i32 0
  %2928 = load %union.rec*, %union.rec** %2927, align 8
  %2929 = load %union.rec*, %union.rec** @zz_res, align 8
  %2930 = bitcast %union.rec* %2929 to %struct.word_type*
  %2931 = getelementptr inbounds %struct.word_type, %struct.word_type* %2930, i32 0, i32 0
  %2932 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2931, i32 0, i64 1
  %2933 = getelementptr inbounds %struct.LIST, %struct.LIST* %2932, i32 0, i32 0
  store %union.rec* %2928, %union.rec** %2933, align 8
  %2934 = load %union.rec*, %union.rec** @zz_res, align 8
  %2935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2936 = bitcast %union.rec* %2935 to %struct.word_type*
  %2937 = getelementptr inbounds %struct.word_type, %struct.word_type* %2936, i32 0, i32 0
  %2938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2937, i32 0, i64 1
  %2939 = getelementptr inbounds %struct.LIST, %struct.LIST* %2938, i32 0, i32 0
  %2940 = load %union.rec*, %union.rec** %2939, align 8
  %2941 = bitcast %union.rec* %2940 to %struct.word_type*
  %2942 = getelementptr inbounds %struct.word_type, %struct.word_type* %2941, i32 0, i32 0
  %2943 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2942, i32 0, i64 1
  %2944 = getelementptr inbounds %struct.LIST, %struct.LIST* %2943, i32 0, i32 1
  store %union.rec* %2934, %union.rec** %2944, align 8
  %2945 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2947 = bitcast %union.rec* %2946 to %struct.word_type*
  %2948 = getelementptr inbounds %struct.word_type, %struct.word_type* %2947, i32 0, i32 0
  %2949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2948, i32 0, i64 1
  %2950 = getelementptr inbounds %struct.LIST, %struct.LIST* %2949, i32 0, i32 1
  store %union.rec* %2945, %union.rec** %2950, align 8
  %2951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2952 = bitcast %union.rec* %2951 to %struct.word_type*
  %2953 = getelementptr inbounds %struct.word_type, %struct.word_type* %2952, i32 0, i32 0
  %2954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2953, i32 0, i64 1
  %2955 = getelementptr inbounds %struct.LIST, %struct.LIST* %2954, i32 0, i32 0
  store %union.rec* %2945, %union.rec** %2955, align 8
  %2956 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2957

; <label>:2957                                    ; preds = %2916, %2915
  %2958 = phi %union.rec* [ null, %2915 ], [ %2956, %2916 ]
  store %union.rec* %2958, %union.rec** @xx_tmp, align 8
  %2959 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %2959, %union.rec** @zz_res, align 8
  %2960 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %2960, %union.rec** @zz_hold, align 8
  %2961 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2962 = icmp eq %union.rec* %2961, null
  br i1 %2962, label %2963, label %2965

; <label>:2963                                    ; preds = %2957
  %2964 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3013

; <label>:2965                                    ; preds = %2957
  %2966 = load %union.rec*, %union.rec** @zz_res, align 8
  %2967 = icmp eq %union.rec* %2966, null
  br i1 %2967, label %2968, label %2970

; <label>:2968                                    ; preds = %2965
  %2969 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %3011

; <label>:2970                                    ; preds = %2965
  %2971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2972 = bitcast %union.rec* %2971 to %struct.word_type*
  %2973 = getelementptr inbounds %struct.word_type, %struct.word_type* %2972, i32 0, i32 0
  %2974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2973, i32 0, i64 1
  %2975 = getelementptr inbounds %struct.LIST, %struct.LIST* %2974, i32 0, i32 0
  %2976 = load %union.rec*, %union.rec** %2975, align 8
  store %union.rec* %2976, %union.rec** @zz_tmp, align 8
  %2977 = load %union.rec*, %union.rec** @zz_res, align 8
  %2978 = bitcast %union.rec* %2977 to %struct.word_type*
  %2979 = getelementptr inbounds %struct.word_type, %struct.word_type* %2978, i32 0, i32 0
  %2980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2979, i32 0, i64 1
  %2981 = getelementptr inbounds %struct.LIST, %struct.LIST* %2980, i32 0, i32 0
  %2982 = load %union.rec*, %union.rec** %2981, align 8
  %2983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2984 = bitcast %union.rec* %2983 to %struct.word_type*
  %2985 = getelementptr inbounds %struct.word_type, %struct.word_type* %2984, i32 0, i32 0
  %2986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2985, i32 0, i64 1
  %2987 = getelementptr inbounds %struct.LIST, %struct.LIST* %2986, i32 0, i32 0
  store %union.rec* %2982, %union.rec** %2987, align 8
  %2988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2989 = load %union.rec*, %union.rec** @zz_res, align 8
  %2990 = bitcast %union.rec* %2989 to %struct.word_type*
  %2991 = getelementptr inbounds %struct.word_type, %struct.word_type* %2990, i32 0, i32 0
  %2992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2991, i32 0, i64 1
  %2993 = getelementptr inbounds %struct.LIST, %struct.LIST* %2992, i32 0, i32 0
  %2994 = load %union.rec*, %union.rec** %2993, align 8
  %2995 = bitcast %union.rec* %2994 to %struct.word_type*
  %2996 = getelementptr inbounds %struct.word_type, %struct.word_type* %2995, i32 0, i32 0
  %2997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2996, i32 0, i64 1
  %2998 = getelementptr inbounds %struct.LIST, %struct.LIST* %2997, i32 0, i32 1
  store %union.rec* %2988, %union.rec** %2998, align 8
  %2999 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3000 = load %union.rec*, %union.rec** @zz_res, align 8
  %3001 = bitcast %union.rec* %3000 to %struct.word_type*
  %3002 = getelementptr inbounds %struct.word_type, %struct.word_type* %3001, i32 0, i32 0
  %3003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3002, i32 0, i64 1
  %3004 = getelementptr inbounds %struct.LIST, %struct.LIST* %3003, i32 0, i32 0
  store %union.rec* %2999, %union.rec** %3004, align 8
  %3005 = load %union.rec*, %union.rec** @zz_res, align 8
  %3006 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %3007 = bitcast %union.rec* %3006 to %struct.word_type*
  %3008 = getelementptr inbounds %struct.word_type, %struct.word_type* %3007, i32 0, i32 0
  %3009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3008, i32 0, i64 1
  %3010 = getelementptr inbounds %struct.LIST, %struct.LIST* %3009, i32 0, i32 1
  store %union.rec* %3005, %union.rec** %3010, align 8
  br label %3011

; <label>:3011                                    ; preds = %2970, %2968
  %3012 = phi %union.rec* [ %2969, %2968 ], [ %3005, %2970 ]
  br label %3013

; <label>:3013                                    ; preds = %3011, %2963
  %3014 = phi %union.rec* [ %2964, %2963 ], [ %3012, %3011 ]
  %3015 = load %union.rec*, %union.rec** %y, align 8
  %3016 = call i32 @DisposeObject(%union.rec* %3015)
  br label %3017

; <label>:3017                                    ; preds = %3013, %2899
  br label %3018

; <label>:3018                                    ; preds = %3017, %2850
  br label %3019

; <label>:3019                                    ; preds = %3018, %2849
  br label %3020

; <label>:3020                                    ; preds = %3019, %2554
  br label %3021

; <label>:3021                                    ; preds = %3020
  %3022 = load %union.rec*, %union.rec** %link, align 8
  %3023 = bitcast %union.rec* %3022 to %struct.word_type*
  %3024 = getelementptr inbounds %struct.word_type, %struct.word_type* %3023, i32 0, i32 0
  %3025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3024, i32 0, i64 0
  %3026 = getelementptr inbounds %struct.LIST, %struct.LIST* %3025, i32 0, i32 1
  %3027 = load %union.rec*, %union.rec** %3026, align 8
  store %union.rec* %3027, %union.rec** %link, align 8
  br label %2523

; <label>:3028                                    ; preds = %2523
  %3029 = load %union.rec*, %union.rec** %cs, align 8
  %3030 = bitcast %union.rec* %3029 to %struct.word_type*
  %3031 = getelementptr inbounds %struct.word_type, %struct.word_type* %3030, i32 0, i32 0
  %3032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3031, i32 0, i64 0
  %3033 = getelementptr inbounds %struct.LIST, %struct.LIST* %3032, i32 0, i32 1
  %3034 = load %union.rec*, %union.rec** %3033, align 8
  %3035 = load %union.rec*, %union.rec** %cs, align 8
  %3036 = icmp ne %union.rec* %3034, %3035
  br i1 %3036, label %3037, label %3353

; <label>:3037                                    ; preds = %3028
  %3038 = load %union.rec*, %union.rec** %cs, align 8
  %3039 = bitcast %union.rec* %3038 to %struct.cr_type*
  %3040 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3039, i32 0, i32 4
  %3041 = load %union.rec*, %union.rec** %3040, align 8
  %3042 = load %union.rec*, %union.rec** %cs, align 8
  %3043 = bitcast %union.rec* %3042 to %struct.cr_type*
  %3044 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3043, i32 0, i32 3
  %3045 = load i16, i16* %3044, align 2
  %3046 = load %union.rec*, %union.rec** %cs, align 8
  %3047 = bitcast %union.rec* %3046 to %struct.cr_type*
  %3048 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3047, i32 0, i32 6
  %3049 = load %union.rec*, %union.rec** %cs, align 8
  %3050 = bitcast %union.rec* %3049 to %struct.cr_type*
  %3051 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3050, i32 0, i32 7
  call void @AppendToFile(%union.rec* %3041, i16 zeroext %3045, i32* %3048, i32* %3051)
  %3052 = load %union.rec*, %union.rec** %cs, align 8
  %3053 = bitcast %union.rec* %3052 to %struct.cr_type*
  %3054 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3053, i32 0, i32 4
  %3055 = load %union.rec*, %union.rec** %3054, align 8
  %3056 = call i32 @DisposeObject(%union.rec* %3055)
  %3057 = load %union.rec*, %union.rec** %cs, align 8
  %3058 = bitcast %union.rec* %3057 to %struct.cr_type*
  %3059 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3058, i32 0, i32 4
  store %union.rec* null, %union.rec** %3059, align 8
  %3060 = load %union.rec*, %union.rec** %cs, align 8
  %3061 = bitcast %union.rec* %3060 to %struct.word_type*
  %3062 = getelementptr inbounds %struct.word_type, %struct.word_type* %3061, i32 0, i32 0
  %3063 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3062, i32 0, i64 0
  %3064 = getelementptr inbounds %struct.LIST, %struct.LIST* %3063, i32 0, i32 1
  %3065 = load %union.rec*, %union.rec** %3064, align 8
  store %union.rec* %3065, %union.rec** %link, align 8
  br label %3066

; <label>:3066                                    ; preds = %3342, %3037
  %3067 = load %union.rec*, %union.rec** %link, align 8
  %3068 = load %union.rec*, %union.rec** %cs, align 8
  %3069 = icmp ne %union.rec* %3067, %3068
  br i1 %3069, label %3070, label %3349

; <label>:3070                                    ; preds = %3066
  %3071 = load %union.rec*, %union.rec** %link, align 8
  %3072 = bitcast %union.rec* %3071 to %struct.word_type*
  %3073 = getelementptr inbounds %struct.word_type, %struct.word_type* %3072, i32 0, i32 0
  %3074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3073, i32 0, i64 1
  %3075 = getelementptr inbounds %struct.LIST, %struct.LIST* %3074, i32 0, i32 0
  %3076 = load %union.rec*, %union.rec** %3075, align 8
  store %union.rec* %3076, %union.rec** %tag, align 8
  br label %3077

; <label>:3077                                    ; preds = %3087, %3070
  %3078 = load %union.rec*, %union.rec** %tag, align 8
  %3079 = bitcast %union.rec* %3078 to %struct.word_type*
  %3080 = getelementptr inbounds %struct.word_type, %struct.word_type* %3079, i32 0, i32 1
  %3081 = bitcast %union.FIRST_UNION* %3080 to %struct.anon*
  %3082 = getelementptr inbounds %struct.anon, %struct.anon* %3081, i32 0, i32 0
  %3083 = load i8, i8* %3082, align 1
  %3084 = zext i8 %3083 to i32
  %3085 = icmp eq i32 %3084, 0
  br i1 %3085, label %3086, label %3094

; <label>:3086                                    ; preds = %3077
  br label %3087

; <label>:3087                                    ; preds = %3086
  %3088 = load %union.rec*, %union.rec** %tag, align 8
  %3089 = bitcast %union.rec* %3088 to %struct.word_type*
  %3090 = getelementptr inbounds %struct.word_type, %struct.word_type* %3089, i32 0, i32 0
  %3091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3090, i32 0, i64 1
  %3092 = getelementptr inbounds %struct.LIST, %struct.LIST* %3091, i32 0, i32 0
  %3093 = load %union.rec*, %union.rec** %3092, align 8
  store %union.rec* %3093, %union.rec** %tag, align 8
  br label %3077

; <label>:3094                                    ; preds = %3077
  %3095 = load %union.rec*, %union.rec** %tag, align 8
  %3096 = bitcast %union.rec* %3095 to %struct.word_type*
  %3097 = getelementptr inbounds %struct.word_type, %struct.word_type* %3096, i32 0, i32 1
  %3098 = bitcast %union.FIRST_UNION* %3097 to %struct.anon*
  %3099 = getelementptr inbounds %struct.anon, %struct.anon* %3098, i32 0, i32 0
  %3100 = load i8, i8* %3099, align 1
  %3101 = zext i8 %3100 to i32
  %3102 = icmp eq i32 %3101, 11
  br i1 %3102, label %3112, label %3103

; <label>:3103                                    ; preds = %3094
  %3104 = load %union.rec*, %union.rec** %tag, align 8
  %3105 = bitcast %union.rec* %3104 to %struct.word_type*
  %3106 = getelementptr inbounds %struct.word_type, %struct.word_type* %3105, i32 0, i32 1
  %3107 = bitcast %union.FIRST_UNION* %3106 to %struct.anon*
  %3108 = getelementptr inbounds %struct.anon, %struct.anon* %3107, i32 0, i32 0
  %3109 = load i8, i8* %3108, align 1
  %3110 = zext i8 %3109 to i32
  %3111 = icmp eq i32 %3110, 12
  br i1 %3111, label %3112, label %3119

; <label>:3112                                    ; preds = %3103, %3094
  %3113 = load %union.rec*, %union.rec** %tag, align 8
  %3114 = bitcast %union.rec* %3113 to %struct.word_type*
  %3115 = getelementptr inbounds %struct.word_type, %struct.word_type* %3114, i32 0, i32 4
  %3116 = getelementptr inbounds [4 x i8], [4 x i8]* %3115, i32 0, i32 0
  %3117 = call i32 @strcmp(i8* %3116, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %3118 = icmp eq i32 %3117, 0
  br i1 %3118, label %3119, label %3122

; <label>:3119                                    ; preds = %3112, %3103
  %3120 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3121 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %3120, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.47, i32 0, i32 0))
  br label %3122

; <label>:3122                                    ; preds = %3119, %3112
  %3123 = load %union.rec*, %union.rec** %tag, align 8
  %3124 = bitcast %union.rec* %3123 to %struct.word_type*
  %3125 = getelementptr inbounds %struct.word_type, %struct.word_type* %3124, i32 0, i32 3
  %3126 = bitcast %union.THIRD_UNION* %3125 to %struct.anon.8*
  %3127 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %3126, i32 0, i32 0
  %3128 = load i8, i8* %3127, align 1
  %3129 = zext i8 %3128 to i32
  switch i32 %3129, label %3338 [
    i32 126, label %3130
    i32 127, label %3130
    i32 128, label %3130
    i32 129, label %3337
    i32 133, label %3337
    i32 130, label %3337
  ]

; <label>:3130                                    ; preds = %3122, %3122, %3122
  %3131 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %3132 = load %union.rec*, %union.rec** %sym, align 8
  %3133 = load %union.rec*, %union.rec** %tag, align 8
  %3134 = bitcast %union.rec* %3133 to %struct.word_type*
  %3135 = getelementptr inbounds %struct.word_type, %struct.word_type* %3134, i32 0, i32 4
  %3136 = getelementptr inbounds [4 x i8], [4 x i8]* %3135, i32 0, i32 0
  %3137 = load %union.rec*, %union.rec** %tag, align 8
  %3138 = bitcast %union.rec* %3137 to %struct.word_type*
  %3139 = getelementptr inbounds %struct.word_type, %struct.word_type* %3138, i32 0, i32 1
  %3140 = bitcast %union.FIRST_UNION* %3139 to %struct.FILE_POS*
  %3141 = load %union.rec*, %union.rec** %cs, align 8
  %3142 = bitcast %union.rec* %3141 to %struct.cr_type*
  %3143 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3142, i32 0, i32 3
  %3144 = load i16, i16* %3143, align 2
  %3145 = load %union.rec*, %union.rec** %cs, align 8
  %3146 = bitcast %union.rec* %3145 to %struct.cr_type*
  %3147 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3146, i32 0, i32 6
  %3148 = load i32, i32* %3147, align 4
  %3149 = sext i32 %3148 to i64
  %3150 = load %union.rec*, %union.rec** %cs, align 8
  %3151 = bitcast %union.rec* %3150 to %struct.cr_type*
  %3152 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3151, i32 0, i32 7
  %3153 = load i32, i32* %3152, align 4
  call void @DbInsert(%union.rec* %3131, i32 0, %union.rec* %3132, i8* %3136, %struct.FILE_POS* %3140, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i16 zeroext %3144, i64 %3149, i32 %3153, i32 1)
  %3154 = load %union.rec*, %union.rec** %link, align 8
  %3155 = bitcast %union.rec* %3154 to %struct.word_type*
  %3156 = getelementptr inbounds %struct.word_type, %struct.word_type* %3155, i32 0, i32 0
  %3157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3156, i32 0, i64 0
  %3158 = getelementptr inbounds %struct.LIST, %struct.LIST* %3157, i32 0, i32 0
  %3159 = load %union.rec*, %union.rec** %3158, align 8
  store %union.rec* %3159, %union.rec** %link, align 8
  %3160 = load %union.rec*, %union.rec** %link, align 8
  %3161 = bitcast %union.rec* %3160 to %struct.word_type*
  %3162 = getelementptr inbounds %struct.word_type, %struct.word_type* %3161, i32 0, i32 0
  %3163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3162, i32 0, i64 0
  %3164 = getelementptr inbounds %struct.LIST, %struct.LIST* %3163, i32 0, i32 1
  %3165 = load %union.rec*, %union.rec** %3164, align 8
  store %union.rec* %3165, %union.rec** @xx_link, align 8
  %3166 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3166, %union.rec** @zz_hold, align 8
  %3167 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3168 = bitcast %union.rec* %3167 to %struct.word_type*
  %3169 = getelementptr inbounds %struct.word_type, %struct.word_type* %3168, i32 0, i32 0
  %3170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3169, i32 0, i64 1
  %3171 = getelementptr inbounds %struct.LIST, %struct.LIST* %3170, i32 0, i32 1
  %3172 = load %union.rec*, %union.rec** %3171, align 8
  %3173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3174 = icmp eq %union.rec* %3172, %3173
  br i1 %3174, label %3175, label %3176

; <label>:3175                                    ; preds = %3130
  br label %3217

; <label>:3176                                    ; preds = %3130
  %3177 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3178 = bitcast %union.rec* %3177 to %struct.word_type*
  %3179 = getelementptr inbounds %struct.word_type, %struct.word_type* %3178, i32 0, i32 0
  %3180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3179, i32 0, i64 1
  %3181 = getelementptr inbounds %struct.LIST, %struct.LIST* %3180, i32 0, i32 1
  %3182 = load %union.rec*, %union.rec** %3181, align 8
  store %union.rec* %3182, %union.rec** @zz_res, align 8
  %3183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3184 = bitcast %union.rec* %3183 to %struct.word_type*
  %3185 = getelementptr inbounds %struct.word_type, %struct.word_type* %3184, i32 0, i32 0
  %3186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3185, i32 0, i64 1
  %3187 = getelementptr inbounds %struct.LIST, %struct.LIST* %3186, i32 0, i32 0
  %3188 = load %union.rec*, %union.rec** %3187, align 8
  %3189 = load %union.rec*, %union.rec** @zz_res, align 8
  %3190 = bitcast %union.rec* %3189 to %struct.word_type*
  %3191 = getelementptr inbounds %struct.word_type, %struct.word_type* %3190, i32 0, i32 0
  %3192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3191, i32 0, i64 1
  %3193 = getelementptr inbounds %struct.LIST, %struct.LIST* %3192, i32 0, i32 0
  store %union.rec* %3188, %union.rec** %3193, align 8
  %3194 = load %union.rec*, %union.rec** @zz_res, align 8
  %3195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3196 = bitcast %union.rec* %3195 to %struct.word_type*
  %3197 = getelementptr inbounds %struct.word_type, %struct.word_type* %3196, i32 0, i32 0
  %3198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3197, i32 0, i64 1
  %3199 = getelementptr inbounds %struct.LIST, %struct.LIST* %3198, i32 0, i32 0
  %3200 = load %union.rec*, %union.rec** %3199, align 8
  %3201 = bitcast %union.rec* %3200 to %struct.word_type*
  %3202 = getelementptr inbounds %struct.word_type, %struct.word_type* %3201, i32 0, i32 0
  %3203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3202, i32 0, i64 1
  %3204 = getelementptr inbounds %struct.LIST, %struct.LIST* %3203, i32 0, i32 1
  store %union.rec* %3194, %union.rec** %3204, align 8
  %3205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3207 = bitcast %union.rec* %3206 to %struct.word_type*
  %3208 = getelementptr inbounds %struct.word_type, %struct.word_type* %3207, i32 0, i32 0
  %3209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3208, i32 0, i64 1
  %3210 = getelementptr inbounds %struct.LIST, %struct.LIST* %3209, i32 0, i32 1
  store %union.rec* %3205, %union.rec** %3210, align 8
  %3211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3212 = bitcast %union.rec* %3211 to %struct.word_type*
  %3213 = getelementptr inbounds %struct.word_type, %struct.word_type* %3212, i32 0, i32 0
  %3214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3213, i32 0, i64 1
  %3215 = getelementptr inbounds %struct.LIST, %struct.LIST* %3214, i32 0, i32 0
  store %union.rec* %3205, %union.rec** %3215, align 8
  %3216 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3217

; <label>:3217                                    ; preds = %3176, %3175
  %3218 = phi %union.rec* [ null, %3175 ], [ %3216, %3176 ]
  store %union.rec* %3218, %union.rec** @xx_tmp, align 8
  %3219 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3219, %union.rec** @zz_hold, align 8
  %3220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3221 = bitcast %union.rec* %3220 to %struct.word_type*
  %3222 = getelementptr inbounds %struct.word_type, %struct.word_type* %3221, i32 0, i32 0
  %3223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3222, i32 0, i64 0
  %3224 = getelementptr inbounds %struct.LIST, %struct.LIST* %3223, i32 0, i32 1
  %3225 = load %union.rec*, %union.rec** %3224, align 8
  %3226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3227 = icmp eq %union.rec* %3225, %3226
  br i1 %3227, label %3228, label %3229

; <label>:3228                                    ; preds = %3217
  br label %3270

; <label>:3229                                    ; preds = %3217
  %3230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3231 = bitcast %union.rec* %3230 to %struct.word_type*
  %3232 = getelementptr inbounds %struct.word_type, %struct.word_type* %3231, i32 0, i32 0
  %3233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3232, i32 0, i64 0
  %3234 = getelementptr inbounds %struct.LIST, %struct.LIST* %3233, i32 0, i32 1
  %3235 = load %union.rec*, %union.rec** %3234, align 8
  store %union.rec* %3235, %union.rec** @zz_res, align 8
  %3236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3237 = bitcast %union.rec* %3236 to %struct.word_type*
  %3238 = getelementptr inbounds %struct.word_type, %struct.word_type* %3237, i32 0, i32 0
  %3239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3238, i32 0, i64 0
  %3240 = getelementptr inbounds %struct.LIST, %struct.LIST* %3239, i32 0, i32 0
  %3241 = load %union.rec*, %union.rec** %3240, align 8
  %3242 = load %union.rec*, %union.rec** @zz_res, align 8
  %3243 = bitcast %union.rec* %3242 to %struct.word_type*
  %3244 = getelementptr inbounds %struct.word_type, %struct.word_type* %3243, i32 0, i32 0
  %3245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3244, i32 0, i64 0
  %3246 = getelementptr inbounds %struct.LIST, %struct.LIST* %3245, i32 0, i32 0
  store %union.rec* %3241, %union.rec** %3246, align 8
  %3247 = load %union.rec*, %union.rec** @zz_res, align 8
  %3248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3249 = bitcast %union.rec* %3248 to %struct.word_type*
  %3250 = getelementptr inbounds %struct.word_type, %struct.word_type* %3249, i32 0, i32 0
  %3251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3250, i32 0, i64 0
  %3252 = getelementptr inbounds %struct.LIST, %struct.LIST* %3251, i32 0, i32 0
  %3253 = load %union.rec*, %union.rec** %3252, align 8
  %3254 = bitcast %union.rec* %3253 to %struct.word_type*
  %3255 = getelementptr inbounds %struct.word_type, %struct.word_type* %3254, i32 0, i32 0
  %3256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3255, i32 0, i64 0
  %3257 = getelementptr inbounds %struct.LIST, %struct.LIST* %3256, i32 0, i32 1
  store %union.rec* %3247, %union.rec** %3257, align 8
  %3258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3260 = bitcast %union.rec* %3259 to %struct.word_type*
  %3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %3260, i32 0, i32 0
  %3262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3261, i32 0, i64 0
  %3263 = getelementptr inbounds %struct.LIST, %struct.LIST* %3262, i32 0, i32 1
  store %union.rec* %3258, %union.rec** %3263, align 8
  %3264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3265 = bitcast %union.rec* %3264 to %struct.word_type*
  %3266 = getelementptr inbounds %struct.word_type, %struct.word_type* %3265, i32 0, i32 0
  %3267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3266, i32 0, i64 0
  %3268 = getelementptr inbounds %struct.LIST, %struct.LIST* %3267, i32 0, i32 0
  store %union.rec* %3258, %union.rec** %3268, align 8
  %3269 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %3270

; <label>:3270                                    ; preds = %3229, %3228
  %3271 = phi %union.rec* [ null, %3228 ], [ %3269, %3229 ]
  %3272 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %3272, %union.rec** @zz_hold, align 8
  %3273 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3273, %union.rec** @zz_hold, align 8
  %3274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3275 = bitcast %union.rec* %3274 to %struct.word_type*
  %3276 = getelementptr inbounds %struct.word_type, %struct.word_type* %3275, i32 0, i32 1
  %3277 = bitcast %union.FIRST_UNION* %3276 to %struct.anon*
  %3278 = getelementptr inbounds %struct.anon, %struct.anon* %3277, i32 0, i32 0
  %3279 = load i8, i8* %3278, align 1
  %3280 = zext i8 %3279 to i32
  %3281 = icmp eq i32 %3280, 11
  br i1 %3281, label %3291, label %3282

; <label>:3282                                    ; preds = %3270
  %3283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3284 = bitcast %union.rec* %3283 to %struct.word_type*
  %3285 = getelementptr inbounds %struct.word_type, %struct.word_type* %3284, i32 0, i32 1
  %3286 = bitcast %union.FIRST_UNION* %3285 to %struct.anon*
  %3287 = getelementptr inbounds %struct.anon, %struct.anon* %3286, i32 0, i32 0
  %3288 = load i8, i8* %3287, align 1
  %3289 = zext i8 %3288 to i32
  %3290 = icmp eq i32 %3289, 12
  br i1 %3290, label %3291, label %3299

; <label>:3291                                    ; preds = %3282, %3270
  %3292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3293 = bitcast %union.rec* %3292 to %struct.word_type*
  %3294 = getelementptr inbounds %struct.word_type, %struct.word_type* %3293, i32 0, i32 1
  %3295 = bitcast %union.FIRST_UNION* %3294 to %struct.anon*
  %3296 = getelementptr inbounds %struct.anon, %struct.anon* %3295, i32 0, i32 1
  %3297 = load i8, i8* %3296, align 1
  %3298 = zext i8 %3297 to i32
  br label %3310

; <label>:3299                                    ; preds = %3282
  %3300 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3301 = bitcast %union.rec* %3300 to %struct.word_type*
  %3302 = getelementptr inbounds %struct.word_type, %struct.word_type* %3301, i32 0, i32 1
  %3303 = bitcast %union.FIRST_UNION* %3302 to %struct.anon*
  %3304 = getelementptr inbounds %struct.anon, %struct.anon* %3303, i32 0, i32 0
  %3305 = load i8, i8* %3304, align 1
  %3306 = zext i8 %3305 to i64
  %3307 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3306
  %3308 = load i8, i8* %3307, align 1
  %3309 = zext i8 %3308 to i32
  br label %3310

; <label>:3310                                    ; preds = %3299, %3291
  %3311 = phi i32 [ %3298, %3291 ], [ %3309, %3299 ]
  store i32 %3311, i32* @zz_size, align 4
  %3312 = load i32, i32* @zz_size, align 4
  %3313 = sext i32 %3312 to i64
  %3314 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3313
  %3315 = load %union.rec*, %union.rec** %3314, align 8
  %3316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3317 = bitcast %union.rec* %3316 to %struct.word_type*
  %3318 = getelementptr inbounds %struct.word_type, %struct.word_type* %3317, i32 0, i32 0
  %3319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3318, i32 0, i64 0
  %3320 = getelementptr inbounds %struct.LIST, %struct.LIST* %3319, i32 0, i32 0
  store %union.rec* %3315, %union.rec** %3320, align 8
  %3321 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3322 = load i32, i32* @zz_size, align 4
  %3323 = sext i32 %3322 to i64
  %3324 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3323
  store %union.rec* %3321, %union.rec** %3324, align 8
  %3325 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3326 = bitcast %union.rec* %3325 to %struct.word_type*
  %3327 = getelementptr inbounds %struct.word_type, %struct.word_type* %3326, i32 0, i32 0
  %3328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3327, i32 0, i64 1
  %3329 = getelementptr inbounds %struct.LIST, %struct.LIST* %3328, i32 0, i32 1
  %3330 = load %union.rec*, %union.rec** %3329, align 8
  %3331 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3332 = icmp eq %union.rec* %3330, %3331
  br i1 %3332, label %3333, label %3336

; <label>:3333                                    ; preds = %3310
  %3334 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %3335 = call i32 @DisposeObject(%union.rec* %3334)
  br label %3336

; <label>:3336                                    ; preds = %3333, %3310
  br label %3341

; <label>:3337                                    ; preds = %3122, %3122, %3122
  br label %3341

; <label>:3338                                    ; preds = %3122
  %3339 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3340 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %3339, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.39, i32 0, i32 0))
  br label %3341

; <label>:3341                                    ; preds = %3338, %3337, %3336
  br label %3342

; <label>:3342                                    ; preds = %3341
  %3343 = load %union.rec*, %union.rec** %link, align 8
  %3344 = bitcast %union.rec* %3343 to %struct.word_type*
  %3345 = getelementptr inbounds %struct.word_type, %struct.word_type* %3344, i32 0, i32 0
  %3346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3345, i32 0, i64 0
  %3347 = getelementptr inbounds %struct.LIST, %struct.LIST* %3346, i32 0, i32 1
  %3348 = load %union.rec*, %union.rec** %3347, align 8
  store %union.rec* %3348, %union.rec** %link, align 8
  br label %3066

; <label>:3349                                    ; preds = %3066
  %3350 = load %union.rec*, %union.rec** %cs, align 8
  %3351 = bitcast %union.rec* %3350 to %struct.cr_type*
  %3352 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %3351, i32 0, i32 2
  store i8 2, i8* %3352, align 1
  br label %3353

; <label>:3353                                    ; preds = %3349, %3028
  br label %3359

; <label>:3354                                    ; preds = %330
  %3355 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3356 = load i32, i32* %ctype, align 4
  %3357 = call i8* @Image(i32 %3356)
  %3358 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.48, i32 0, i32 0), i32 0, %struct.FILE_POS* %3355, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.49, i32 0, i32 0), i8* %3357)
  br label %3359

; <label>:3359                                    ; preds = %16, %3354, %3353, %2457, %2203, %2130, %2122, %1731
  ret void
}

declare zeroext i16 @DatabaseFileNum(%struct.FILE_POS*) #1

declare void @AppendToFile(%union.rec*, i16 zeroext, i32*, i32*) #1

declare i8* @StringFiveInt(i32) #1

declare void @DbInsert(%union.rec*, i32, %union.rec*, i8*, %struct.FILE_POS*, i8*, i16 zeroext, i64, i32, i32) #1

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define void @CrossClose() #0 {
  %link = alloca %union.rec*, align 8
  %cs = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %g = alloca i32, align 4
  %len = alloca i32, align 4
  %count = alloca i32, align 4
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %cont = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %seq = alloca [512 x i8], align 16
  %tag = alloca [512 x i8], align 16
  %1 = load i32, i32* @AllowCrossDb, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %4, label %3

; <label>:3                                       ; preds = %0
  br label %422

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** @RootCross, align 8
  %6 = icmp ne %union.rec* %5, null
  br i1 %6, label %7, label %382

; <label>:7                                       ; preds = %4
  %8 = load %union.rec*, %union.rec** @RootCross, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10, i32 0, i64 0
  %12 = getelementptr inbounds %struct.LIST, %struct.LIST* %11, i32 0, i32 1
  %13 = load %union.rec*, %union.rec** %12, align 8
  store %union.rec* %13, %union.rec** %link, align 8
  br label %14

; <label>:14                                      ; preds = %374, %7
  %15 = load %union.rec*, %union.rec** %link, align 8
  %16 = load %union.rec*, %union.rec** @RootCross, align 8
  %17 = icmp ne %union.rec* %15, %16
  br i1 %17, label %18, label %381

; <label>:18                                      ; preds = %14
  %19 = load %union.rec*, %union.rec** %link, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 1
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %cs, align 8
  br label %25

; <label>:25                                      ; preds = %35, %18
  %26 = load %union.rec*, %union.rec** %cs, align 8
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
  %36 = load %union.rec*, %union.rec** %cs, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 1
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 0
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %cs, align 8
  br label %25

; <label>:42                                      ; preds = %25
  %43 = load %union.rec*, %union.rec** %cs, align 8
  %44 = bitcast %union.rec* %43 to %struct.cr_type*
  %45 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %44, i32 0, i32 9
  %46 = load %union.rec*, %union.rec** %45, align 8
  store %union.rec* %46, %union.rec** %sym, align 8
  %47 = load %union.rec*, %union.rec** %cs, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 1
  %50 = bitcast %union.FIRST_UNION* %49 to %struct.anon*
  %51 = getelementptr inbounds %struct.anon, %struct.anon* %50, i32 0, i32 0
  %52 = load i8, i8* %51, align 1
  %53 = zext i8 %52 to i32
  %54 = icmp eq i32 %53, 140
  br i1 %54, label %58, label %55

; <label>:55                                      ; preds = %42
  %56 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %57 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.50, i32 0, i32 0))
  br label %58

; <label>:58                                      ; preds = %55, %42
  store i32 0, i32* %count, align 4
  %59 = load %union.rec*, %union.rec** %cs, align 8
  %60 = bitcast %union.rec* %59 to %struct.word_type*
  %61 = getelementptr inbounds %struct.word_type, %struct.word_type* %60, i32 0, i32 0
  %62 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %61, i32 0, i64 0
  %63 = getelementptr inbounds %struct.LIST, %struct.LIST* %62, i32 0, i32 1
  %64 = load %union.rec*, %union.rec** %63, align 8
  store %union.rec* %64, %union.rec** %ylink, align 8
  br label %65

; <label>:65                                      ; preds = %366, %58
  %66 = load %union.rec*, %union.rec** %ylink, align 8
  %67 = load %union.rec*, %union.rec** %cs, align 8
  %68 = icmp ne %union.rec* %66, %67
  br i1 %68, label %69, label %373

; <label>:69                                      ; preds = %65
  %70 = load %union.rec*, %union.rec** %ylink, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 0
  %73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %72, i32 0, i64 1
  %74 = getelementptr inbounds %struct.LIST, %struct.LIST* %73, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %74, align 8
  store %union.rec* %75, %union.rec** %y, align 8
  br label %76

; <label>:76                                      ; preds = %86, %69
  %77 = load %union.rec*, %union.rec** %y, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %93

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
  br label %76

; <label>:93                                      ; preds = %76
  %94 = load %union.rec*, %union.rec** %y, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 1
  %97 = bitcast %union.FIRST_UNION* %96 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 11
  br i1 %101, label %111, label %102

; <label>:102                                     ; preds = %93
  %103 = load %union.rec*, %union.rec** %y, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 1
  %106 = bitcast %union.FIRST_UNION* %105 to %struct.anon*
  %107 = getelementptr inbounds %struct.anon, %struct.anon* %106, i32 0, i32 0
  %108 = load i8, i8* %107, align 1
  %109 = zext i8 %108 to i32
  %110 = icmp eq i32 %109, 12
  br i1 %110, label %111, label %118

; <label>:111                                     ; preds = %102, %93
  %112 = load %union.rec*, %union.rec** %y, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 4
  %115 = getelementptr inbounds [4 x i8], [4 x i8]* %114, i32 0, i32 0
  %116 = call i32 @strcmp(i8* %115, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %121

; <label>:118                                     ; preds = %111, %102
  %119 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %120 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %119, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.51, i32 0, i32 0))
  br label %121

; <label>:121                                     ; preds = %118, %111
  %122 = load %union.rec*, %union.rec** %y, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 3
  %125 = bitcast %union.THIRD_UNION* %124 to %struct.anon.8*
  %126 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %125, i32 0, i32 0
  %127 = load i8, i8* %126, align 1
  %128 = zext i8 %127 to i32
  switch i32 %128, label %362 [
    i32 127, label %129
    i32 128, label %154
    i32 129, label %256
    i32 130, label %307
  ]

; <label>:129                                     ; preds = %121
  %130 = load i32, i32* %count, align 4
  %131 = icmp slt i32 %130, 5
  br i1 %131, label %132, label %142

; <label>:132                                     ; preds = %129
  %133 = load %union.rec*, %union.rec** %y, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 1
  %136 = bitcast %union.FIRST_UNION* %135 to %struct.FILE_POS*
  %137 = load %union.rec*, %union.rec** %sym, align 8
  %138 = call i8* @SymName(%union.rec* %137)
  %139 = load %union.rec*, %union.rec** %sym, align 8
  %140 = call i8* @SymName(%union.rec* %139)
  %141 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 16, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct.FILE_POS* %136, i8* %138, i8* %140, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %151

; <label>:142                                     ; preds = %129
  %143 = load i32, i32* %count, align 4
  %144 = icmp eq i32 %143, 5
  br i1 %144, label %145, label %150

; <label>:145                                     ; preds = %142
  %146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %147 = load %union.rec*, %union.rec** %sym, align 8
  %148 = call i8* @SymName(%union.rec* %147)
  %149 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0), i32 2, %struct.FILE_POS* %146, i8* %148, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %150

; <label>:150                                     ; preds = %145, %142
  br label %151

; <label>:151                                     ; preds = %150, %132
  %152 = load i32, i32* %count, align 4
  %153 = add nsw i32 %152, 1
  store i32 %153, i32* %count, align 4
  br label %365

; <label>:154                                     ; preds = %121
  %155 = load %union.rec*, %union.rec** %cs, align 8
  %156 = bitcast %union.rec* %155 to %struct.cr_type*
  %157 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %156, i32 0, i32 2
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %161, label %171

; <label>:161                                     ; preds = %154
  %162 = load %union.rec*, %union.rec** %y, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 1
  %165 = bitcast %union.FIRST_UNION* %164 to %struct.FILE_POS*
  %166 = load %union.rec*, %union.rec** %sym, align 8
  %167 = call i8* @SymName(%union.rec* %166)
  %168 = load %union.rec*, %union.rec** %sym, align 8
  %169 = call i8* @SymName(%union.rec* %168)
  %170 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 18, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.54, i32 0, i32 0), i32 2, %struct.FILE_POS* %165, i8* %167, i8* %169, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  br label %365

; <label>:171                                     ; preds = %154
  %172 = load %union.rec*, %union.rec** %cs, align 8
  %173 = bitcast %union.rec* %172 to %struct.cr_type*
  %174 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %173, i32 0, i32 2
  %175 = load i8, i8* %174, align 1
  %176 = zext i8 %175 to i32
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %204

; <label>:178                                     ; preds = %171
  %179 = load %union.rec*, %union.rec** %cs, align 8
  %180 = bitcast %union.rec* %179 to %struct.cr_type*
  %181 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %180, i32 0, i32 4
  %182 = load %union.rec*, %union.rec** %181, align 8
  %183 = load %union.rec*, %union.rec** %cs, align 8
  %184 = bitcast %union.rec* %183 to %struct.cr_type*
  %185 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %184, i32 0, i32 3
  %186 = load i16, i16* %185, align 2
  %187 = load %union.rec*, %union.rec** %cs, align 8
  %188 = bitcast %union.rec* %187 to %struct.cr_type*
  %189 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %188, i32 0, i32 6
  %190 = load %union.rec*, %union.rec** %cs, align 8
  %191 = bitcast %union.rec* %190 to %struct.cr_type*
  %192 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %191, i32 0, i32 7
  call void @AppendToFile(%union.rec* %182, i16 zeroext %186, i32* %189, i32* %192)
  %193 = load %union.rec*, %union.rec** %cs, align 8
  %194 = bitcast %union.rec* %193 to %struct.cr_type*
  %195 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %194, i32 0, i32 4
  %196 = load %union.rec*, %union.rec** %195, align 8
  %197 = call i32 @DisposeObject(%union.rec* %196)
  %198 = load %union.rec*, %union.rec** %cs, align 8
  %199 = bitcast %union.rec* %198 to %struct.cr_type*
  %200 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %199, i32 0, i32 4
  store %union.rec* null, %union.rec** %200, align 8
  %201 = load %union.rec*, %union.rec** %cs, align 8
  %202 = bitcast %union.rec* %201 to %struct.cr_type*
  %203 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %202, i32 0, i32 2
  store i8 2, i8* %203, align 1
  br label %204

; <label>:204                                     ; preds = %178, %171
  %205 = load %union.rec*, %union.rec** %y, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 1
  %208 = bitcast %union.FIRST_UNION* %207 to %struct.anon*
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 11
  br i1 %212, label %222, label %213

; <label>:213                                     ; preds = %204
  %214 = load %union.rec*, %union.rec** %y, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 1
  %217 = bitcast %union.FIRST_UNION* %216 to %struct.anon*
  %218 = getelementptr inbounds %struct.anon, %struct.anon* %217, i32 0, i32 0
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  %221 = icmp eq i32 %220, 12
  br i1 %221, label %222, label %229

; <label>:222                                     ; preds = %213, %204
  %223 = load %union.rec*, %union.rec** %y, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 4
  %226 = getelementptr inbounds [4 x i8], [4 x i8]* %225, i32 0, i32 0
  %227 = call i32 @strcmp(i8* %226, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #4
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %229, label %232

; <label>:229                                     ; preds = %222, %213
  %230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %231 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %230)
  store %union.rec* %231, %union.rec** %y, align 8
  br label %232

; <label>:232                                     ; preds = %229, %222
  %233 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %234 = load %union.rec*, %union.rec** %sym, align 8
  %235 = load %union.rec*, %union.rec** %y, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 4
  %238 = getelementptr inbounds [4 x i8], [4 x i8]* %237, i32 0, i32 0
  %239 = load %union.rec*, %union.rec** %y, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 1
  %242 = bitcast %union.FIRST_UNION* %241 to %struct.FILE_POS*
  %243 = load %union.rec*, %union.rec** %cs, align 8
  %244 = bitcast %union.rec* %243 to %struct.cr_type*
  %245 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %244, i32 0, i32 3
  %246 = load i16, i16* %245, align 2
  %247 = load %union.rec*, %union.rec** %cs, align 8
  %248 = bitcast %union.rec* %247 to %struct.cr_type*
  %249 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %248, i32 0, i32 6
  %250 = load i32, i32* %249, align 4
  %251 = sext i32 %250 to i64
  %252 = load %union.rec*, %union.rec** %cs, align 8
  %253 = bitcast %union.rec* %252 to %struct.cr_type*
  %254 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %253, i32 0, i32 7
  %255 = load i32, i32* %254, align 4
  call void @DbInsert(%union.rec* %233, i32 0, %union.rec* %234, i8* %238, %struct.FILE_POS* %242, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.41, i32 0, i32 0), i16 zeroext %246, i64 %251, i32 %255, i32 1)
  br label %365

; <label>:256                                     ; preds = %121
  %257 = load i32, i32* %count, align 4
  %258 = icmp slt i32 %257, 5
  br i1 %258, label %259, label %269

; <label>:259                                     ; preds = %256
  %260 = load %union.rec*, %union.rec** %y, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 1
  %263 = bitcast %union.FIRST_UNION* %262 to %struct.FILE_POS*
  %264 = load %union.rec*, %union.rec** %sym, align 8
  %265 = call i8* @SymName(%union.rec* %264)
  %266 = load %union.rec*, %union.rec** %sym, align 8
  %267 = call i8* @SymName(%union.rec* %266)
  %268 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct.FILE_POS* %263, i8* %265, i8* %267, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %278

; <label>:269                                     ; preds = %256
  %270 = load i32, i32* %count, align 4
  %271 = icmp eq i32 %270, 5
  br i1 %271, label %272, label %277

; <label>:272                                     ; preds = %269
  %273 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %274 = load %union.rec*, %union.rec** %sym, align 8
  %275 = call i8* @SymName(%union.rec* %274)
  %276 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 20, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.53, i32 0, i32 0), i32 2, %struct.FILE_POS* %273, i8* %275, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i32 0, i32 0))
  br label %277

; <label>:277                                     ; preds = %272, %269
  br label %278

; <label>:278                                     ; preds = %277, %259
  %279 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %280 = load %union.rec*, %union.rec** %sym, align 8
  %281 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %282 = load %union.rec*, %union.rec** %y, align 8
  %283 = bitcast %union.rec* %282 to %struct.word_type*
  %284 = getelementptr inbounds %struct.word_type, %struct.word_type* %283, i32 0, i32 4
  %285 = getelementptr inbounds [4 x i8], [4 x i8]* %284, i32 0, i32 0
  %286 = load %union.rec*, %union.rec** %y, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 3
  %289 = bitcast %union.THIRD_UNION* %288 to %struct.anon.8*
  %290 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %289, i32 0, i32 1
  %291 = load i16, i16* %290, align 2
  %292 = load %union.rec*, %union.rec** %y, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 3
  %295 = bitcast %union.THIRD_UNION* %294 to %struct.anon.8*
  %296 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %295, i32 0, i32 2
  %297 = load i32, i32* %296, align 4
  %298 = sext i32 %297 to i64
  %299 = load %union.rec*, %union.rec** %y, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 3
  %302 = bitcast %union.THIRD_UNION* %301 to %struct.anon.8*
  %303 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %302, i32 0, i32 3
  %304 = load i32, i32* %303, align 4
  call void @DbInsert(%union.rec* %279, i32 1, %union.rec* %280, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %281, i8* %285, i16 zeroext %291, i64 %298, i32 %304, i32 0)
  %305 = load i32, i32* %count, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %count, align 4
  br label %365

; <label>:307                                     ; preds = %121
  %308 = load %union.rec*, %union.rec** %cs, align 8
  %309 = bitcast %union.rec* %308 to %struct.cr_type*
  %310 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %309, i32 0, i32 10
  %311 = load %union.rec*, %union.rec** %310, align 8
  %312 = icmp eq %union.rec* %311, null
  br i1 %312, label %313, label %328

; <label>:313                                     ; preds = %307
  %314 = load %union.rec*, %union.rec** %y, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 1
  %317 = bitcast %union.FIRST_UNION* %316 to %struct.FILE_POS*
  %318 = load %union.rec*, %union.rec** %sym, align 8
  %319 = call i8* @SymName(%union.rec* %318)
  %320 = load %union.rec*, %union.rec** %sym, align 8
  %321 = call i8* @SymName(%union.rec* %320)
  %322 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %317, i8* %319, i8* %321, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0))
  %323 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %324 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0), %struct.FILE_POS* %323)
  %325 = load %union.rec*, %union.rec** %cs, align 8
  %326 = bitcast %union.rec* %325 to %struct.cr_type*
  %327 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %326, i32 0, i32 10
  store %union.rec* %324, %union.rec** %327, align 8
  br label %328

; <label>:328                                     ; preds = %313, %307
  %329 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %330 = load %union.rec*, %union.rec** %sym, align 8
  %331 = load %union.rec*, %union.rec** %cs, align 8
  %332 = bitcast %union.rec* %331 to %struct.cr_type*
  %333 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %332, i32 0, i32 10
  %334 = load %union.rec*, %union.rec** %333, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 4
  %337 = getelementptr inbounds [4 x i8], [4 x i8]* %336, i32 0, i32 0
  %338 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %339 = load %union.rec*, %union.rec** %y, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 4
  %342 = getelementptr inbounds [4 x i8], [4 x i8]* %341, i32 0, i32 0
  %343 = load %union.rec*, %union.rec** %y, align 8
  %344 = bitcast %union.rec* %343 to %struct.word_type*
  %345 = getelementptr inbounds %struct.word_type, %struct.word_type* %344, i32 0, i32 3
  %346 = bitcast %union.THIRD_UNION* %345 to %struct.anon.8*
  %347 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %346, i32 0, i32 1
  %348 = load i16, i16* %347, align 2
  %349 = load %union.rec*, %union.rec** %y, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 3
  %352 = bitcast %union.THIRD_UNION* %351 to %struct.anon.8*
  %353 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %352, i32 0, i32 2
  %354 = load i32, i32* %353, align 4
  %355 = sext i32 %354 to i64
  %356 = load %union.rec*, %union.rec** %y, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 3
  %359 = bitcast %union.THIRD_UNION* %358 to %struct.anon.8*
  %360 = getelementptr inbounds %struct.anon.8, %struct.anon.8* %359, i32 0, i32 3
  %361 = load i32, i32* %360, align 4
  call void @DbInsert(%union.rec* %329, i32 1, %union.rec* %330, i8* %337, %struct.FILE_POS* %338, i8* %342, i16 zeroext %348, i64 %355, i32 %361, i32 0)
  br label %365

; <label>:362                                     ; preds = %121
  %363 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %364 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0), i32 0, %struct.FILE_POS* %363, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.56, i32 0, i32 0))
  br label %365

; <label>:365                                     ; preds = %362, %328, %278, %232, %161, %151
  br label %366

; <label>:366                                     ; preds = %365
  %367 = load %union.rec*, %union.rec** %ylink, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 0
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 1
  %372 = load %union.rec*, %union.rec** %371, align 8
  store %union.rec* %372, %union.rec** %ylink, align 8
  br label %65

; <label>:373                                     ; preds = %65
  br label %374

; <label>:374                                     ; preds = %373
  %375 = load %union.rec*, %union.rec** %link, align 8
  %376 = bitcast %union.rec* %375 to %struct.word_type*
  %377 = getelementptr inbounds %struct.word_type, %struct.word_type* %376, i32 0, i32 0
  %378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %377, i32 0, i64 0
  %379 = getelementptr inbounds %struct.LIST, %struct.LIST* %378, i32 0, i32 1
  %380 = load %union.rec*, %union.rec** %379, align 8
  store %union.rec* %380, %union.rec** %link, align 8
  br label %14

; <label>:381                                     ; preds = %14
  br label %382

; <label>:382                                     ; preds = %381, %4
  store i64 0, i64* %cont, align 8
  store i32 3, i32* %len, align 4
  br label %383

; <label>:383                                     ; preds = %418, %392, %382
  %384 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %385 = getelementptr inbounds [512 x i8], [512 x i8]* %tag, i32 0, i32 0
  %386 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %387 = call i32 @DbRetrieveNext(%union.rec* %384, i32* %g, %union.rec** %sym, i8* %385, i8* %386, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %388 = icmp ne i32 %387, 0
  br i1 %388, label %389, label %419

; <label>:389                                     ; preds = %383
  %390 = load i32, i32* %g, align 4
  %391 = icmp ne i32 %390, 0
  br i1 %391, label %392, label %393

; <label>:392                                     ; preds = %389
  br label %383

; <label>:393                                     ; preds = %389
  %394 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %395 = load i16, i16* %dfnum, align 2
  %396 = call i8* @FileName(i16 zeroext %395)
  %397 = call i8* @strcpy(i8* %394, i8* %396) #5
  %398 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %399 = call i64 @strlen(i8* %398) #4
  %400 = load i32, i32* %len, align 4
  %401 = sext i32 %400 to i64
  %402 = sub i64 %399, %401
  %403 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %402
  %404 = call i8* @strcpy(i8* %403, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0)) #5
  %405 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %406 = call zeroext i16 @FileNum(i8* %405, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0))
  %407 = zext i16 %406 to i32
  %408 = icmp eq i32 %407, 0
  br i1 %408, label %409, label %418

; <label>:409                                     ; preds = %393
  %410 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %411 = load %union.rec*, %union.rec** %sym, align 8
  %412 = getelementptr inbounds [512 x i8], [512 x i8]* %tag, i32 0, i32 0
  %413 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %414 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %415 = load i16, i16* %dfnum, align 2
  %416 = load i64, i64* %dfpos, align 8
  %417 = load i32, i32* %dlnum, align 4
  call void @DbInsert(%union.rec* %410, i32 0, %union.rec* %411, i8* %412, %struct.FILE_POS* %413, i8* %414, i16 zeroext %415, i64 %416, i32 %417, i32 0)
  br label %418

; <label>:418                                     ; preds = %409, %393
  br label %383

; <label>:419                                     ; preds = %383
  %420 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  call void @DbClose(%union.rec* %420)
  %421 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  call void @DbConvert(%union.rec* %421, i32 1)
  br label %422

; <label>:422                                     ; preds = %419, %3
  ret void
}

declare i32 @DbRetrieveNext(%union.rec*, i32*, %union.rec**, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare zeroext i16 @FileNum(i8*, i8*) #1

declare void @DbClose(%union.rec*) #1

declare void @DbConvert(%union.rec*, i32) #1

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @crtab_new(i32 %newsize) #0 {
  %1 = alloca i32, align 4
  %S = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = add i64 8, %4
  %6 = call noalias i8* @malloc(i64 %5) #5
  %7 = bitcast i8* %6 to %struct.anon.14*
  store %struct.anon.14* %7, %struct.anon.14** %S, align 8
  %8 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %9 = icmp eq %struct.anon.14* %8, null
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 10, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.59, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
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

; <label>:19                                      ; preds = %29, %13
  %20 = load i32, i32* %i, align 4
  %21 = load i32, i32* %1, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %32

; <label>:23                                      ; preds = %19
  %24 = load i32, i32* %i, align 4
  %25 = sext i32 %24 to i64
  %26 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  %27 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %26, i32 0, i32 2
  %28 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %27, i32 0, i64 %25
  store %struct.crossref_rec* null, %struct.crossref_rec** %28, align 8
  br label %29

; <label>:29                                      ; preds = %23
  %30 = load i32, i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %19

; <label>:32                                      ; preds = %19
  %33 = load %struct.anon.14*, %struct.anon.14** %S, align 8
  ret %struct.anon.14* %33
}

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @crtab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
  %1 = alloca %struct.anon.14*, align 8
  %2 = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  %newpos = alloca i64, align 8
  %p = alloca %struct.crossref_rec*, align 8
  %q = alloca %struct.crossref_rec*, align 8
  store %struct.anon.14* %S, %struct.anon.14** %1, align 8
  store i32 %newsize, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.anon.14* @crtab_new(i32 %3)
  store %struct.anon.14* %4, %struct.anon.14** %NewS, align 8
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %57, %0
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %8 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %60

; <label>:11                                      ; preds = %5
  %12 = load i32, i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %15 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %15, i32 0, i64 %13
  %17 = load %struct.crossref_rec*, %struct.crossref_rec** %16, align 8
  store %struct.crossref_rec* %17, %struct.crossref_rec** %p, align 8
  br label %18

; <label>:18                                      ; preds = %21, %11
  %19 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %20 = icmp ne %struct.crossref_rec* %19, null
  br i1 %20, label %21, label %56

; <label>:21                                      ; preds = %18
  %22 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %23 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %22, i32 0, i32 0
  %24 = load %struct.crossref_rec*, %struct.crossref_rec** %23, align 8
  store %struct.crossref_rec* %24, %struct.crossref_rec** %q, align 8
  %25 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %26 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %25, i32 0, i32 1
  %27 = load %union.rec*, %union.rec** %26, align 8
  %28 = ptrtoint %union.rec* %27 to i64
  %29 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %30 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %29, i32 0, i32 2
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i64
  %33 = add i64 %28, %32
  %34 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %35 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = sext i32 %36 to i64
  %38 = urem i64 %33, %37
  store i64 %38, i64* %newpos, align 8
  %39 = load i64, i64* %newpos, align 8
  %40 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %41 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %40, i32 0, i32 2
  %42 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %41, i32 0, i64 %39
  %43 = load %struct.crossref_rec*, %struct.crossref_rec** %42, align 8
  %44 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %45 = getelementptr inbounds %struct.crossref_rec, %struct.crossref_rec* %44, i32 0, i32 0
  store %struct.crossref_rec* %43, %struct.crossref_rec** %45, align 8
  %46 = load %struct.crossref_rec*, %struct.crossref_rec** %p, align 8
  %47 = load i64, i64* %newpos, align 8
  %48 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %49 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %48, i32 0, i32 2
  %50 = getelementptr inbounds [1 x %struct.crossref_rec*], [1 x %struct.crossref_rec*]* %49, i32 0, i64 %47
  store %struct.crossref_rec* %46, %struct.crossref_rec** %50, align 8
  %51 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  %52 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  %55 = load %struct.crossref_rec*, %struct.crossref_rec** %q, align 8
  store %struct.crossref_rec* %55, %struct.crossref_rec** %p, align 8
  br label %18

; <label>:56                                      ; preds = %18
  br label %57

; <label>:57                                      ; preds = %56
  %58 = load i32, i32* %i, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %i, align 4
  br label %5

; <label>:60                                      ; preds = %5
  %61 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %62 = bitcast %struct.anon.14* %61 to i8*
  call void @free(i8* %62) #5
  %63 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %63
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind
declare void @free(i8*) #3

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
