; ModuleID = 'z43.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.anon = type { i32, i32, [1 x %union.rec*] }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.14, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%union.SECOND_UNION = type { %struct.anon.2 }
%struct.anon.2 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.11, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.11 = type { %struct.GAP }
%union.anon.14 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.0 = type { i8, i8, i32 }

@names_tab = internal global %struct.anon* null, align 8
@lang_count = internal global i32 0, align 4
@lang_tabsize = internal global i32 0, align 4
@hyph_tab = internal global %union.rec** null, align 8
@canonical_tab = internal global %union.rec** null, align 8
@LanguageSentenceEnds = common global [256 x i32] zeroinitializer, align 16
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"LanguageDefine: names!\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"LanguageDefine: names is empty!\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"LanguageDefine: type(y) != WORD!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.4 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.5 = private unnamed_addr constant [36 x i8] c"hyphenation file name expected here\00", align 1
@.str.6 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@lang_ends = internal global [64 x %union.rec*] zeroinitializer, align 16
@xx_tmp = external global %union.rec*, align 8
@.str.8 = private unnamed_addr constant [34 x i8] c"expected word ending pattern here\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"empty word ending pattern\00", align 1
@InitializeAll = external global i32, align 4
@.str.10 = private unnamed_addr constant [30 x i8] c"LanguageWordEndsSentence: wd!\00", align 1
@.str.11 = private unnamed_addr constant [36 x i8] c"%s ignored (illegal left parameter)\00", align 1
@.str.12 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"%s ignored (unknown language %s)\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"LanguageString: unknown number\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"LanguageHyph: unknown number\00", align 1
@.str.16 = private unnamed_addr constant [43 x i8] c"run out of memory enlarging language table\00", align 1
@.str.17 = private unnamed_addr constant [41 x i8] c"language name %s used twice (first at%s)\00", align 1

; Function Attrs: nounwind uwtable
define void @LanguageInit() #0 {
  %i = alloca i32, align 4
  %1 = call %struct.anon* @ltab_new(i32 100)
  store %struct.anon* %1, %struct.anon** @names_tab, align 8
  store i32 0, i32* @lang_count, align 4
  store i32 100, i32* @lang_tabsize, align 4
  %2 = call noalias i8* @malloc(i64 800) #4
  %3 = bitcast i8* %2 to %union.rec**
  store %union.rec** %3, %union.rec*** @hyph_tab, align 8
  %4 = call noalias i8* @malloc(i64 800) #4
  %5 = bitcast i8* %4 to %union.rec**
  store %union.rec** %5, %union.rec*** @canonical_tab, align 8
  store i32 0, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %13, %0
  %7 = load i32, i32* %i, align 4
  %8 = icmp slt i32 %7, 256
  br i1 %8, label %9, label %16

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* %i, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [256 x i32], [256 x i32]* @LanguageSentenceEnds, i32 0, i64 %11
  store i32 0, i32* %12, align 4
  br label %13

; <label>:13                                      ; preds = %9
  %14 = load i32, i32* %i, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %i, align 4
  br label %6

; <label>:16                                      ; preds = %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ltab_new(i32 %newsize) #0 {
  %1 = alloca i32, align 4
  %S = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store i32 %newsize, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = sext i32 %2 to i64
  %4 = mul i64 %3, 8
  %5 = add i64 8, %4
  %6 = call noalias i8* @malloc(i64 %5) #4
  %7 = bitcast i8* %6 to %struct.anon*
  store %struct.anon* %7, %struct.anon** %S, align 8
  %8 = load %struct.anon*, %struct.anon** %S, align 8
  %9 = icmp eq %struct.anon* %8, null
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 1, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.16, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = load i32, i32* %1, align 4
  %15 = load %struct.anon*, %struct.anon** %S, align 8
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.anon*, %struct.anon** %S, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 1
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
  %26 = load %struct.anon*, %struct.anon** %S, align 8
  %27 = getelementptr inbounds %struct.anon, %struct.anon* %26, i32 0, i32 2
  %28 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %27, i32 0, i64 %25
  store %union.rec* null, %union.rec** %28, align 8
  br label %29

; <label>:29                                      ; preds = %23
  %30 = load i32, i32* %i, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %i, align 4
  br label %19

; <label>:32                                      ; preds = %19
  %33 = load %struct.anon*, %struct.anon** %S, align 8
  ret %struct.anon* %33
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @LanguageDefine(%union.rec* %names, %union.rec* %inside) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %hyph_file = alloca %union.rec*, align 8
  %junk = alloca i32, align 4
  %ch = alloca i8, align 1
  %len = alloca i32, align 4
  store %union.rec* %names, %union.rec** %1, align 8
  store %union.rec* %inside, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = icmp ne %union.rec* %3, null
  br i1 %4, label %5, label %14

; <label>:5                                       ; preds = %0
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 1
  %9 = bitcast %union.FIRST_UNION* %8 to %struct.anon.0*
  %10 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %9, i32 0, i32 0
  %11 = load i8, i8* %10, align 1
  %12 = zext i8 %11 to i32
  %13 = icmp eq i32 %12, 17
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %5, %0
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %15, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %14, %5
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %20, i32 0, i64 0
  %22 = getelementptr inbounds %struct.LIST, %struct.LIST* %21, i32 0, i32 1
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = icmp ne %union.rec* %23, %24
  br i1 %25, label %29, label %26

; <label>:26                                      ; preds = %17
  %27 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %27, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %29

; <label>:29                                      ; preds = %26, %17
  %30 = load i32, i32* @lang_count, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* @lang_count, align 4
  %32 = load i32, i32* @lang_tabsize, align 4
  %33 = icmp sge i32 %31, %32
  br i1 %33, label %34, label %51

; <label>:34                                      ; preds = %29
  %35 = load i32, i32* @lang_tabsize, align 4
  %36 = mul nsw i32 %35, 2
  store i32 %36, i32* @lang_tabsize, align 4
  %37 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %38 = bitcast %union.rec** %37 to i8*
  %39 = load i32, i32* @lang_tabsize, align 4
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = call i8* @realloc(i8* %38, i64 %41) #4
  %43 = bitcast i8* %42 to %union.rec**
  store %union.rec** %43, %union.rec*** @hyph_tab, align 8
  %44 = load %union.rec**, %union.rec*** @canonical_tab, align 8
  %45 = bitcast %union.rec** %44 to i8*
  %46 = load i32, i32* @lang_tabsize, align 4
  %47 = sext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = call i8* @realloc(i8* %45, i64 %48) #4
  %50 = bitcast i8* %49 to %union.rec**
  store %union.rec** %50, %union.rec*** @canonical_tab, align 8
  br label %51

; <label>:51                                      ; preds = %34, %29
  %52 = load %union.rec*, %union.rec** %1, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 0
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %56, align 8
  store %union.rec* %57, %union.rec** %link, align 8
  br label %58

; <label>:58                                      ; preds = %120, %51
  %59 = load %union.rec*, %union.rec** %link, align 8
  %60 = load %union.rec*, %union.rec** %1, align 8
  %61 = icmp ne %union.rec* %59, %60
  br i1 %61, label %62, label %127

; <label>:62                                      ; preds = %58
  %63 = load %union.rec*, %union.rec** %link, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 0
  %66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %65, i32 0, i64 1
  %67 = getelementptr inbounds %struct.LIST, %struct.LIST* %66, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %67, align 8
  store %union.rec* %68, %union.rec** %y, align 8
  br label %69

; <label>:69                                      ; preds = %79, %62
  %70 = load %union.rec*, %union.rec** %y, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 1
  %73 = bitcast %union.FIRST_UNION* %72 to %struct.anon.0*
  %74 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %86

; <label>:78                                      ; preds = %69
  br label %79

; <label>:79                                      ; preds = %78
  %80 = load %union.rec*, %union.rec** %y, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 0
  %83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %82, i32 0, i64 1
  %84 = getelementptr inbounds %struct.LIST, %struct.LIST* %83, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %84, align 8
  store %union.rec* %85, %union.rec** %y, align 8
  br label %69

; <label>:86                                      ; preds = %69
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 1
  %90 = bitcast %union.FIRST_UNION* %89 to %struct.anon.0*
  %91 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %90, i32 0, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 11
  br i1 %94, label %107, label %95

; <label>:95                                      ; preds = %86
  %96 = load %union.rec*, %union.rec** %y, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 1
  %99 = bitcast %union.FIRST_UNION* %98 to %struct.anon.0*
  %100 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %99, i32 0, i32 0
  %101 = load i8, i8* %100, align 1
  %102 = zext i8 %101 to i32
  %103 = icmp eq i32 %102, 12
  br i1 %103, label %107, label %104

; <label>:104                                     ; preds = %95
  %105 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %106 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %105, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i32 0, i32 0))
  br label %107

; <label>:107                                     ; preds = %104, %95, %86
  %108 = load i32, i32* @lang_count, align 4
  %109 = load %union.rec*, %union.rec** %y, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 2
  %112 = bitcast %union.SECOND_UNION* %111 to %struct.anon.2*
  %113 = bitcast %struct.anon.2* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %108, 63
  %116 = shl i32 %115, 23
  %117 = and i32 %114, -528482305
  %118 = or i32 %117, %116
  store i32 %118, i32* %113, align 4
  %119 = load %union.rec*, %union.rec** %y, align 8
  call void @ltab_insert(%union.rec* %119, %struct.anon** @names_tab)
  br label %120

; <label>:120                                     ; preds = %107
  %121 = load %union.rec*, %union.rec** %link, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 0
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 1
  %126 = load %union.rec*, %union.rec** %125, align 8
  store %union.rec* %126, %union.rec** %link, align 8
  br label %58

; <label>:127                                     ; preds = %58
  %128 = load %union.rec*, %union.rec** %1, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 0
  %131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %130, i32 0, i64 0
  %132 = getelementptr inbounds %struct.LIST, %struct.LIST* %131, i32 0, i32 1
  %133 = load %union.rec*, %union.rec** %132, align 8
  %134 = bitcast %union.rec* %133 to %struct.word_type*
  %135 = getelementptr inbounds %struct.word_type, %struct.word_type* %134, i32 0, i32 0
  %136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %135, i32 0, i64 1
  %137 = getelementptr inbounds %struct.LIST, %struct.LIST* %136, i32 0, i32 0
  %138 = load %union.rec*, %union.rec** %137, align 8
  store %union.rec* %138, %union.rec** %y, align 8
  br label %139

; <label>:139                                     ; preds = %149, %127
  %140 = load %union.rec*, %union.rec** %y, align 8
  %141 = bitcast %union.rec* %140 to %struct.word_type*
  %142 = getelementptr inbounds %struct.word_type, %struct.word_type* %141, i32 0, i32 1
  %143 = bitcast %union.FIRST_UNION* %142 to %struct.anon.0*
  %144 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %143, i32 0, i32 0
  %145 = load i8, i8* %144, align 1
  %146 = zext i8 %145 to i32
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156

; <label>:148                                     ; preds = %139
  br label %149

; <label>:149                                     ; preds = %148
  %150 = load %union.rec*, %union.rec** %y, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 0
  %153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %152, i32 0, i64 1
  %154 = getelementptr inbounds %struct.LIST, %struct.LIST* %153, i32 0, i32 0
  %155 = load %union.rec*, %union.rec** %154, align 8
  store %union.rec* %155, %union.rec** %y, align 8
  br label %139

; <label>:156                                     ; preds = %139
  %157 = load %union.rec*, %union.rec** %y, align 8
  %158 = load i32, i32* @lang_count, align 4
  %159 = sext i32 %158 to i64
  %160 = load %union.rec**, %union.rec*** @canonical_tab, align 8
  %161 = getelementptr inbounds %union.rec*, %union.rec** %160, i64 %159
  store %union.rec* %157, %union.rec** %161, align 8
  %162 = load %union.rec*, %union.rec** %2, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 1
  %165 = bitcast %union.FIRST_UNION* %164 to %struct.anon.0*
  %166 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %165, i32 0, i32 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp ne i32 %168, 17
  br i1 %169, label %170, label %446

; <label>:170                                     ; preds = %156
  %171 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %172 = zext i8 %171 to i32
  store i32 %172, i32* @zz_size, align 4
  %173 = sext i32 %172 to i64
  %174 = icmp uge i64 %173, 265
  br i1 %174, label %175, label %178

; <label>:175                                     ; preds = %170
  %176 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %176)
  br label %203

; <label>:178                                     ; preds = %170
  %179 = load i32, i32* @zz_size, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %180
  %182 = load %union.rec*, %union.rec** %181, align 8
  %183 = icmp eq %union.rec* %182, null
  br i1 %183, label %184, label %188

; <label>:184                                     ; preds = %178
  %185 = load i32, i32* @zz_size, align 4
  %186 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %187 = call %union.rec* @GetMemory(i32 %185, %struct.FILE_POS* %186)
  store %union.rec* %187, %union.rec** @zz_hold, align 8
  br label %202

; <label>:188                                     ; preds = %178
  %189 = load i32, i32* @zz_size, align 4
  %190 = sext i32 %189 to i64
  %191 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %190
  %192 = load %union.rec*, %union.rec** %191, align 8
  store %union.rec* %192, %union.rec** @zz_hold, align 8
  store %union.rec* %192, %union.rec** @zz_hold, align 8
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 0
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %197, align 8
  %199 = load i32, i32* @zz_size, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %200
  store %union.rec* %198, %union.rec** %201, align 8
  br label %202

; <label>:202                                     ; preds = %188, %184
  br label %203

; <label>:203                                     ; preds = %202, %175
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 1
  %207 = bitcast %union.FIRST_UNION* %206 to %struct.anon.0*
  %208 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %207, i32 0, i32 0
  store i8 17, i8* %208, align 1
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 1
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 1
  store %union.rec* %209, %union.rec** %214, align 8
  %215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 0
  %218 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %217, i32 0, i64 1
  %219 = getelementptr inbounds %struct.LIST, %struct.LIST* %218, i32 0, i32 0
  store %union.rec* %209, %union.rec** %219, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %222, i32 0, i64 0
  %224 = getelementptr inbounds %struct.LIST, %struct.LIST* %223, i32 0, i32 1
  store %union.rec* %209, %union.rec** %224, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  store %union.rec* %209, %union.rec** %229, align 8
  store %union.rec* %209, %union.rec** %y, align 8
  %230 = load %union.rec*, %union.rec** %2, align 8
  %231 = bitcast %union.rec* %230 to %struct.word_type*
  %232 = getelementptr inbounds %struct.word_type, %struct.word_type* %231, i32 0, i32 1
  %233 = bitcast %union.FIRST_UNION* %232 to %struct.FILE_POS*
  %234 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %233, i32 0, i32 2
  %235 = load i16, i16* %234, align 2
  %236 = load %union.rec*, %union.rec** %y, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 1
  %239 = bitcast %union.FIRST_UNION* %238 to %struct.FILE_POS*
  %240 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %239, i32 0, i32 2
  store i16 %235, i16* %240, align 2
  %241 = load %union.rec*, %union.rec** %2, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 1
  %244 = bitcast %union.FIRST_UNION* %243 to %struct.FILE_POS*
  %245 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 4
  %247 = and i32 %246, 1048575
  %248 = load %union.rec*, %union.rec** %y, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 1
  %251 = bitcast %union.FIRST_UNION* %250 to %struct.FILE_POS*
  %252 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %251, i32 0, i32 3
  %253 = load i32, i32* %252, align 4
  %254 = and i32 %247, 1048575
  %255 = and i32 %253, -1048576
  %256 = or i32 %255, %254
  store i32 %256, i32* %252, align 4
  %257 = load %union.rec*, %union.rec** %2, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 1
  %260 = bitcast %union.FIRST_UNION* %259 to %struct.FILE_POS*
  %261 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 4
  %263 = lshr i32 %262, 20
  %264 = load %union.rec*, %union.rec** %y, align 8
  %265 = bitcast %union.rec* %264 to %struct.word_type*
  %266 = getelementptr inbounds %struct.word_type, %struct.word_type* %265, i32 0, i32 1
  %267 = bitcast %union.FIRST_UNION* %266 to %struct.FILE_POS*
  %268 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %267, i32 0, i32 3
  %269 = load i32, i32* %268, align 4
  %270 = and i32 %263, 4095
  %271 = shl i32 %270, 20
  %272 = and i32 %269, 1048575
  %273 = or i32 %272, %271
  store i32 %273, i32* %268, align 4
  %274 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %275 = zext i8 %274 to i32
  store i32 %275, i32* @zz_size, align 4
  %276 = sext i32 %275 to i64
  %277 = icmp uge i64 %276, 265
  br i1 %277, label %278, label %281

; <label>:278                                     ; preds = %203
  %279 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %280 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %279)
  br label %306

; <label>:281                                     ; preds = %203
  %282 = load i32, i32* @zz_size, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %283
  %285 = load %union.rec*, %union.rec** %284, align 8
  %286 = icmp eq %union.rec* %285, null
  br i1 %286, label %287, label %291

; <label>:287                                     ; preds = %281
  %288 = load i32, i32* @zz_size, align 4
  %289 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %290 = call %union.rec* @GetMemory(i32 %288, %struct.FILE_POS* %289)
  store %union.rec* %290, %union.rec** @zz_hold, align 8
  br label %305

; <label>:291                                     ; preds = %281
  %292 = load i32, i32* @zz_size, align 4
  %293 = sext i32 %292 to i64
  %294 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %293
  %295 = load %union.rec*, %union.rec** %294, align 8
  store %union.rec* %295, %union.rec** @zz_hold, align 8
  store %union.rec* %295, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 0
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %300, align 8
  %302 = load i32, i32* @zz_size, align 4
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %303
  store %union.rec* %301, %union.rec** %304, align 8
  br label %305

; <label>:305                                     ; preds = %291, %287
  br label %306

; <label>:306                                     ; preds = %305, %278
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 1
  %310 = bitcast %union.FIRST_UNION* %309 to %struct.anon.0*
  %311 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %310, i32 0, i32 0
  store i8 0, i8* %311, align 1
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 1
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 1
  store %union.rec* %312, %union.rec** %317, align 8
  %318 = load %union.rec*, %union.rec** @zz_hold, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 0
  %321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %320, i32 0, i64 1
  %322 = getelementptr inbounds %struct.LIST, %struct.LIST* %321, i32 0, i32 0
  store %union.rec* %312, %union.rec** %322, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 0
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 1
  store %union.rec* %312, %union.rec** %327, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 0
  %331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %330, i32 0, i64 0
  %332 = getelementptr inbounds %struct.LIST, %struct.LIST* %331, i32 0, i32 0
  store %union.rec* %312, %union.rec** %332, align 8
  store %union.rec* %312, %union.rec** @xx_link, align 8
  %333 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %333, %union.rec** @zz_res, align 8
  %334 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %334, %union.rec** @zz_hold, align 8
  %335 = load %union.rec*, %union.rec** @zz_hold, align 8
  %336 = icmp eq %union.rec* %335, null
  br i1 %336, label %337, label %339

; <label>:337                                     ; preds = %306
  %338 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %387

; <label>:339                                     ; preds = %306
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %341 = icmp eq %union.rec* %340, null
  br i1 %341, label %342, label %344

; <label>:342                                     ; preds = %339
  %343 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %385

; <label>:344                                     ; preds = %339
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 0
  %348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %347, i32 0, i64 0
  %349 = getelementptr inbounds %struct.LIST, %struct.LIST* %348, i32 0, i32 0
  %350 = load %union.rec*, %union.rec** %349, align 8
  store %union.rec* %350, %union.rec** @zz_tmp, align 8
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  %352 = bitcast %union.rec* %351 to %struct.word_type*
  %353 = getelementptr inbounds %struct.word_type, %struct.word_type* %352, i32 0, i32 0
  %354 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %353, i32 0, i64 0
  %355 = getelementptr inbounds %struct.LIST, %struct.LIST* %354, i32 0, i32 0
  %356 = load %union.rec*, %union.rec** %355, align 8
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 0
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 0
  store %union.rec* %356, %union.rec** %361, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %365, i32 0, i64 0
  %367 = getelementptr inbounds %struct.LIST, %struct.LIST* %366, i32 0, i32 0
  %368 = load %union.rec*, %union.rec** %367, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 0
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 1
  store %union.rec* %362, %union.rec** %372, align 8
  %373 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %374 = load %union.rec*, %union.rec** @zz_res, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 0
  %377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %376, i32 0, i64 0
  %378 = getelementptr inbounds %struct.LIST, %struct.LIST* %377, i32 0, i32 0
  store %union.rec* %373, %union.rec** %378, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %380 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %381 = bitcast %union.rec* %380 to %struct.word_type*
  %382 = getelementptr inbounds %struct.word_type, %struct.word_type* %381, i32 0, i32 0
  %383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %382, i32 0, i64 0
  %384 = getelementptr inbounds %struct.LIST, %struct.LIST* %383, i32 0, i32 1
  store %union.rec* %379, %union.rec** %384, align 8
  br label %385

; <label>:385                                     ; preds = %344, %342
  %386 = phi %union.rec* [ %343, %342 ], [ %379, %344 ]
  br label %387

; <label>:387                                     ; preds = %385, %337
  %388 = phi %union.rec* [ %338, %337 ], [ %386, %385 ]
  %389 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %389, %union.rec** @zz_res, align 8
  %390 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %390, %union.rec** @zz_hold, align 8
  %391 = load %union.rec*, %union.rec** @zz_hold, align 8
  %392 = icmp eq %union.rec* %391, null
  br i1 %392, label %393, label %395

; <label>:393                                     ; preds = %387
  %394 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %443

; <label>:395                                     ; preds = %387
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  %397 = icmp eq %union.rec* %396, null
  br i1 %397, label %398, label %400

; <label>:398                                     ; preds = %395
  %399 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %441

; <label>:400                                     ; preds = %395
  %401 = load %union.rec*, %union.rec** @zz_hold, align 8
  %402 = bitcast %union.rec* %401 to %struct.word_type*
  %403 = getelementptr inbounds %struct.word_type, %struct.word_type* %402, i32 0, i32 0
  %404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %403, i32 0, i64 1
  %405 = getelementptr inbounds %struct.LIST, %struct.LIST* %404, i32 0, i32 0
  %406 = load %union.rec*, %union.rec** %405, align 8
  store %union.rec* %406, %union.rec** @zz_tmp, align 8
  %407 = load %union.rec*, %union.rec** @zz_res, align 8
  %408 = bitcast %union.rec* %407 to %struct.word_type*
  %409 = getelementptr inbounds %struct.word_type, %struct.word_type* %408, i32 0, i32 0
  %410 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %409, i32 0, i64 1
  %411 = getelementptr inbounds %struct.LIST, %struct.LIST* %410, i32 0, i32 0
  %412 = load %union.rec*, %union.rec** %411, align 8
  %413 = load %union.rec*, %union.rec** @zz_hold, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 0
  %416 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %415, i32 0, i64 1
  %417 = getelementptr inbounds %struct.LIST, %struct.LIST* %416, i32 0, i32 0
  store %union.rec* %412, %union.rec** %417, align 8
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %419 = load %union.rec*, %union.rec** @zz_res, align 8
  %420 = bitcast %union.rec* %419 to %struct.word_type*
  %421 = getelementptr inbounds %struct.word_type, %struct.word_type* %420, i32 0, i32 0
  %422 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %421, i32 0, i64 1
  %423 = getelementptr inbounds %struct.LIST, %struct.LIST* %422, i32 0, i32 0
  %424 = load %union.rec*, %union.rec** %423, align 8
  %425 = bitcast %union.rec* %424 to %struct.word_type*
  %426 = getelementptr inbounds %struct.word_type, %struct.word_type* %425, i32 0, i32 0
  %427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %426, i32 0, i64 1
  %428 = getelementptr inbounds %struct.LIST, %struct.LIST* %427, i32 0, i32 1
  store %union.rec* %418, %union.rec** %428, align 8
  %429 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %430 = load %union.rec*, %union.rec** @zz_res, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 0
  %433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %432, i32 0, i64 1
  %434 = getelementptr inbounds %struct.LIST, %struct.LIST* %433, i32 0, i32 0
  store %union.rec* %429, %union.rec** %434, align 8
  %435 = load %union.rec*, %union.rec** @zz_res, align 8
  %436 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 1
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 1
  store %union.rec* %435, %union.rec** %440, align 8
  br label %441

; <label>:441                                     ; preds = %400, %398
  %442 = phi %union.rec* [ %399, %398 ], [ %435, %400 ]
  br label %443

; <label>:443                                     ; preds = %441, %393
  %444 = phi %union.rec* [ %394, %393 ], [ %442, %441 ]
  %445 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %445, %union.rec** %2, align 8
  br label %446

; <label>:446                                     ; preds = %443, %156
  %447 = load %union.rec*, %union.rec** %2, align 8
  %448 = bitcast %union.rec* %447 to %struct.word_type*
  %449 = getelementptr inbounds %struct.word_type, %struct.word_type* %448, i32 0, i32 0
  %450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %449, i32 0, i64 0
  %451 = getelementptr inbounds %struct.LIST, %struct.LIST* %450, i32 0, i32 1
  %452 = load %union.rec*, %union.rec** %451, align 8
  %453 = bitcast %union.rec* %452 to %struct.word_type*
  %454 = getelementptr inbounds %struct.word_type, %struct.word_type* %453, i32 0, i32 0
  %455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %454, i32 0, i64 1
  %456 = getelementptr inbounds %struct.LIST, %struct.LIST* %455, i32 0, i32 0
  %457 = load %union.rec*, %union.rec** %456, align 8
  store %union.rec* %457, %union.rec** %hyph_file, align 8
  br label %458

; <label>:458                                     ; preds = %468, %446
  %459 = load %union.rec*, %union.rec** %hyph_file, align 8
  %460 = bitcast %union.rec* %459 to %struct.word_type*
  %461 = getelementptr inbounds %struct.word_type, %struct.word_type* %460, i32 0, i32 1
  %462 = bitcast %union.FIRST_UNION* %461 to %struct.anon.0*
  %463 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %462, i32 0, i32 0
  %464 = load i8, i8* %463, align 1
  %465 = zext i8 %464 to i32
  %466 = icmp eq i32 %465, 0
  br i1 %466, label %467, label %475

; <label>:467                                     ; preds = %458
  br label %468

; <label>:468                                     ; preds = %467
  %469 = load %union.rec*, %union.rec** %hyph_file, align 8
  %470 = bitcast %union.rec* %469 to %struct.word_type*
  %471 = getelementptr inbounds %struct.word_type, %struct.word_type* %470, i32 0, i32 0
  %472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %471, i32 0, i64 1
  %473 = getelementptr inbounds %struct.LIST, %struct.LIST* %472, i32 0, i32 0
  %474 = load %union.rec*, %union.rec** %473, align 8
  store %union.rec* %474, %union.rec** %hyph_file, align 8
  br label %458

; <label>:475                                     ; preds = %458
  %476 = load %union.rec*, %union.rec** %2, align 8
  %477 = bitcast %union.rec* %476 to %struct.word_type*
  %478 = getelementptr inbounds %struct.word_type, %struct.word_type* %477, i32 0, i32 0
  %479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %478, i32 0, i64 0
  %480 = getelementptr inbounds %struct.LIST, %struct.LIST* %479, i32 0, i32 1
  %481 = load %union.rec*, %union.rec** %480, align 8
  store %union.rec* %481, %union.rec** @xx_link, align 8
  %482 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %482, %union.rec** @zz_hold, align 8
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %484 = bitcast %union.rec* %483 to %struct.word_type*
  %485 = getelementptr inbounds %struct.word_type, %struct.word_type* %484, i32 0, i32 0
  %486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %485, i32 0, i64 1
  %487 = getelementptr inbounds %struct.LIST, %struct.LIST* %486, i32 0, i32 1
  %488 = load %union.rec*, %union.rec** %487, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = icmp eq %union.rec* %488, %489
  br i1 %490, label %491, label %492

; <label>:491                                     ; preds = %475
  br label %533

; <label>:492                                     ; preds = %475
  %493 = load %union.rec*, %union.rec** @zz_hold, align 8
  %494 = bitcast %union.rec* %493 to %struct.word_type*
  %495 = getelementptr inbounds %struct.word_type, %struct.word_type* %494, i32 0, i32 0
  %496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %495, i32 0, i64 1
  %497 = getelementptr inbounds %struct.LIST, %struct.LIST* %496, i32 0, i32 1
  %498 = load %union.rec*, %union.rec** %497, align 8
  store %union.rec* %498, %union.rec** @zz_res, align 8
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 1
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 0
  %504 = load %union.rec*, %union.rec** %503, align 8
  %505 = load %union.rec*, %union.rec** @zz_res, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %507, i32 0, i64 1
  %509 = getelementptr inbounds %struct.LIST, %struct.LIST* %508, i32 0, i32 0
  store %union.rec* %504, %union.rec** %509, align 8
  %510 = load %union.rec*, %union.rec** @zz_res, align 8
  %511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %512 = bitcast %union.rec* %511 to %struct.word_type*
  %513 = getelementptr inbounds %struct.word_type, %struct.word_type* %512, i32 0, i32 0
  %514 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %513, i32 0, i64 1
  %515 = getelementptr inbounds %struct.LIST, %struct.LIST* %514, i32 0, i32 0
  %516 = load %union.rec*, %union.rec** %515, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %518, i32 0, i64 1
  %520 = getelementptr inbounds %struct.LIST, %struct.LIST* %519, i32 0, i32 1
  store %union.rec* %510, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %522 = load %union.rec*, %union.rec** @zz_hold, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 1
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 1
  store %union.rec* %521, %union.rec** %526, align 8
  %527 = load %union.rec*, %union.rec** @zz_hold, align 8
  %528 = bitcast %union.rec* %527 to %struct.word_type*
  %529 = getelementptr inbounds %struct.word_type, %struct.word_type* %528, i32 0, i32 0
  %530 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %529, i32 0, i64 1
  %531 = getelementptr inbounds %struct.LIST, %struct.LIST* %530, i32 0, i32 0
  store %union.rec* %521, %union.rec** %531, align 8
  %532 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %533

; <label>:533                                     ; preds = %492, %491
  %534 = phi %union.rec* [ null, %491 ], [ %532, %492 ]
  %535 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %535, %union.rec** @zz_hold, align 8
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %537 = bitcast %union.rec* %536 to %struct.word_type*
  %538 = getelementptr inbounds %struct.word_type, %struct.word_type* %537, i32 0, i32 0
  %539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %538, i32 0, i64 0
  %540 = getelementptr inbounds %struct.LIST, %struct.LIST* %539, i32 0, i32 1
  %541 = load %union.rec*, %union.rec** %540, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %543 = icmp eq %union.rec* %541, %542
  br i1 %543, label %544, label %545

; <label>:544                                     ; preds = %533
  br label %586

; <label>:545                                     ; preds = %533
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %547 = bitcast %union.rec* %546 to %struct.word_type*
  %548 = getelementptr inbounds %struct.word_type, %struct.word_type* %547, i32 0, i32 0
  %549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %548, i32 0, i64 0
  %550 = getelementptr inbounds %struct.LIST, %struct.LIST* %549, i32 0, i32 1
  %551 = load %union.rec*, %union.rec** %550, align 8
  store %union.rec* %551, %union.rec** @zz_res, align 8
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 0
  %555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %554, i32 0, i64 0
  %556 = getelementptr inbounds %struct.LIST, %struct.LIST* %555, i32 0, i32 0
  %557 = load %union.rec*, %union.rec** %556, align 8
  %558 = load %union.rec*, %union.rec** @zz_res, align 8
  %559 = bitcast %union.rec* %558 to %struct.word_type*
  %560 = getelementptr inbounds %struct.word_type, %struct.word_type* %559, i32 0, i32 0
  %561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %560, i32 0, i64 0
  %562 = getelementptr inbounds %struct.LIST, %struct.LIST* %561, i32 0, i32 0
  store %union.rec* %557, %union.rec** %562, align 8
  %563 = load %union.rec*, %union.rec** @zz_res, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %565 = bitcast %union.rec* %564 to %struct.word_type*
  %566 = getelementptr inbounds %struct.word_type, %struct.word_type* %565, i32 0, i32 0
  %567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %566, i32 0, i64 0
  %568 = getelementptr inbounds %struct.LIST, %struct.LIST* %567, i32 0, i32 0
  %569 = load %union.rec*, %union.rec** %568, align 8
  %570 = bitcast %union.rec* %569 to %struct.word_type*
  %571 = getelementptr inbounds %struct.word_type, %struct.word_type* %570, i32 0, i32 0
  %572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %571, i32 0, i64 0
  %573 = getelementptr inbounds %struct.LIST, %struct.LIST* %572, i32 0, i32 1
  store %union.rec* %563, %union.rec** %573, align 8
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %576 = bitcast %union.rec* %575 to %struct.word_type*
  %577 = getelementptr inbounds %struct.word_type, %struct.word_type* %576, i32 0, i32 0
  %578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %577, i32 0, i64 0
  %579 = getelementptr inbounds %struct.LIST, %struct.LIST* %578, i32 0, i32 1
  store %union.rec* %574, %union.rec** %579, align 8
  %580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %581 = bitcast %union.rec* %580 to %struct.word_type*
  %582 = getelementptr inbounds %struct.word_type, %struct.word_type* %581, i32 0, i32 0
  %583 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %582, i32 0, i64 0
  %584 = getelementptr inbounds %struct.LIST, %struct.LIST* %583, i32 0, i32 0
  store %union.rec* %574, %union.rec** %584, align 8
  %585 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %586

; <label>:586                                     ; preds = %545, %544
  %587 = phi %union.rec* [ null, %544 ], [ %585, %545 ]
  %588 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %588, %union.rec** @zz_hold, align 8
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %589, %union.rec** @zz_hold, align 8
  %590 = load %union.rec*, %union.rec** @zz_hold, align 8
  %591 = bitcast %union.rec* %590 to %struct.word_type*
  %592 = getelementptr inbounds %struct.word_type, %struct.word_type* %591, i32 0, i32 1
  %593 = bitcast %union.FIRST_UNION* %592 to %struct.anon.0*
  %594 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %593, i32 0, i32 0
  %595 = load i8, i8* %594, align 1
  %596 = zext i8 %595 to i32
  %597 = icmp eq i32 %596, 11
  br i1 %597, label %607, label %598

; <label>:598                                     ; preds = %586
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 1
  %602 = bitcast %union.FIRST_UNION* %601 to %struct.anon.0*
  %603 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %602, i32 0, i32 0
  %604 = load i8, i8* %603, align 1
  %605 = zext i8 %604 to i32
  %606 = icmp eq i32 %605, 12
  br i1 %606, label %607, label %615

; <label>:607                                     ; preds = %598, %586
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 1
  %611 = bitcast %union.FIRST_UNION* %610 to %struct.anon.0*
  %612 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %611, i32 0, i32 1
  %613 = load i8, i8* %612, align 1
  %614 = zext i8 %613 to i32
  br label %626

; <label>:615                                     ; preds = %598
  %616 = load %union.rec*, %union.rec** @zz_hold, align 8
  %617 = bitcast %union.rec* %616 to %struct.word_type*
  %618 = getelementptr inbounds %struct.word_type, %struct.word_type* %617, i32 0, i32 1
  %619 = bitcast %union.FIRST_UNION* %618 to %struct.anon.0*
  %620 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %619, i32 0, i32 0
  %621 = load i8, i8* %620, align 1
  %622 = zext i8 %621 to i64
  %623 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %622
  %624 = load i8, i8* %623, align 1
  %625 = zext i8 %624 to i32
  br label %626

; <label>:626                                     ; preds = %615, %607
  %627 = phi i32 [ %614, %607 ], [ %625, %615 ]
  store i32 %627, i32* @zz_size, align 4
  %628 = load i32, i32* @zz_size, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %629
  %631 = load %union.rec*, %union.rec** %630, align 8
  %632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %633 = bitcast %union.rec* %632 to %struct.word_type*
  %634 = getelementptr inbounds %struct.word_type, %struct.word_type* %633, i32 0, i32 0
  %635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %634, i32 0, i64 0
  %636 = getelementptr inbounds %struct.LIST, %struct.LIST* %635, i32 0, i32 0
  store %union.rec* %631, %union.rec** %636, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %638 = load i32, i32* @zz_size, align 4
  %639 = sext i32 %638 to i64
  %640 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %639
  store %union.rec* %637, %union.rec** %640, align 8
  %641 = load %union.rec*, %union.rec** %hyph_file, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 1
  %644 = bitcast %union.FIRST_UNION* %643 to %struct.anon.0*
  %645 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %644, i32 0, i32 0
  %646 = load i8, i8* %645, align 1
  %647 = zext i8 %646 to i32
  %648 = icmp eq i32 %647, 11
  br i1 %648, label %664, label %649

; <label>:649                                     ; preds = %626
  %650 = load %union.rec*, %union.rec** %hyph_file, align 8
  %651 = bitcast %union.rec* %650 to %struct.word_type*
  %652 = getelementptr inbounds %struct.word_type, %struct.word_type* %651, i32 0, i32 1
  %653 = bitcast %union.FIRST_UNION* %652 to %struct.anon.0*
  %654 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %653, i32 0, i32 0
  %655 = load i8, i8* %654, align 1
  %656 = zext i8 %655 to i32
  %657 = icmp eq i32 %656, 12
  br i1 %657, label %664, label %658

; <label>:658                                     ; preds = %649
  %659 = load %union.rec*, %union.rec** %2, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 1
  %662 = bitcast %union.FIRST_UNION* %661 to %struct.FILE_POS*
  %663 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 3, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %662)
  br label %664

; <label>:664                                     ; preds = %658, %649, %626
  %665 = load %union.rec*, %union.rec** %hyph_file, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 4
  %668 = getelementptr inbounds [4 x i8], [4 x i8]* %667, i32 0, i32 0
  %669 = call i32 @strcmp(i8* %668, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #5
  %670 = icmp eq i32 %669, 0
  br i1 %670, label %678, label %671

; <label>:671                                     ; preds = %664
  %672 = load %union.rec*, %union.rec** %hyph_file, align 8
  %673 = bitcast %union.rec* %672 to %struct.word_type*
  %674 = getelementptr inbounds %struct.word_type, %struct.word_type* %673, i32 0, i32 4
  %675 = getelementptr inbounds [4 x i8], [4 x i8]* %674, i32 0, i32 0
  %676 = call i32 @strcmp(i8* %675, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #5
  %677 = icmp eq i32 %676, 0
  br i1 %677, label %678, label %736

; <label>:678                                     ; preds = %671, %664
  %679 = load %union.rec*, %union.rec** %hyph_file, align 8
  store %union.rec* %679, %union.rec** @zz_hold, align 8
  %680 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %680, %union.rec** @zz_hold, align 8
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 1
  %684 = bitcast %union.FIRST_UNION* %683 to %struct.anon.0*
  %685 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %684, i32 0, i32 0
  %686 = load i8, i8* %685, align 1
  %687 = zext i8 %686 to i32
  %688 = icmp eq i32 %687, 11
  br i1 %688, label %698, label %689

; <label>:689                                     ; preds = %678
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  %691 = bitcast %union.rec* %690 to %struct.word_type*
  %692 = getelementptr inbounds %struct.word_type, %struct.word_type* %691, i32 0, i32 1
  %693 = bitcast %union.FIRST_UNION* %692 to %struct.anon.0*
  %694 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %693, i32 0, i32 0
  %695 = load i8, i8* %694, align 1
  %696 = zext i8 %695 to i32
  %697 = icmp eq i32 %696, 12
  br i1 %697, label %698, label %706

; <label>:698                                     ; preds = %689, %678
  %699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %700 = bitcast %union.rec* %699 to %struct.word_type*
  %701 = getelementptr inbounds %struct.word_type, %struct.word_type* %700, i32 0, i32 1
  %702 = bitcast %union.FIRST_UNION* %701 to %struct.anon.0*
  %703 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %702, i32 0, i32 1
  %704 = load i8, i8* %703, align 1
  %705 = zext i8 %704 to i32
  br label %717

; <label>:706                                     ; preds = %689
  %707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %708 = bitcast %union.rec* %707 to %struct.word_type*
  %709 = getelementptr inbounds %struct.word_type, %struct.word_type* %708, i32 0, i32 1
  %710 = bitcast %union.FIRST_UNION* %709 to %struct.anon.0*
  %711 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %710, i32 0, i32 0
  %712 = load i8, i8* %711, align 1
  %713 = zext i8 %712 to i64
  %714 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %713
  %715 = load i8, i8* %714, align 1
  %716 = zext i8 %715 to i32
  br label %717

; <label>:717                                     ; preds = %706, %698
  %718 = phi i32 [ %705, %698 ], [ %716, %706 ]
  store i32 %718, i32* @zz_size, align 4
  %719 = load i32, i32* @zz_size, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %720
  %722 = load %union.rec*, %union.rec** %721, align 8
  %723 = load %union.rec*, %union.rec** @zz_hold, align 8
  %724 = bitcast %union.rec* %723 to %struct.word_type*
  %725 = getelementptr inbounds %struct.word_type, %struct.word_type* %724, i32 0, i32 0
  %726 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %725, i32 0, i64 0
  %727 = getelementptr inbounds %struct.LIST, %struct.LIST* %726, i32 0, i32 0
  store %union.rec* %722, %union.rec** %727, align 8
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = load i32, i32* @zz_size, align 4
  %730 = sext i32 %729 to i64
  %731 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %730
  store %union.rec* %728, %union.rec** %731, align 8
  %732 = load i32, i32* @lang_count, align 4
  %733 = sext i32 %732 to i64
  %734 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %735 = getelementptr inbounds %union.rec*, %union.rec** %734, i64 %733
  store %union.rec* null, %union.rec** %735, align 8
  br label %742

; <label>:736                                     ; preds = %671
  %737 = load %union.rec*, %union.rec** %hyph_file, align 8
  %738 = load i32, i32* @lang_count, align 4
  %739 = sext i32 %738 to i64
  %740 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %741 = getelementptr inbounds %union.rec*, %union.rec** %740, i64 %739
  store %union.rec* %737, %union.rec** %741, align 8
  br label %742

; <label>:742                                     ; preds = %736, %717
  %743 = load %union.rec*, %union.rec** %2, align 8
  %744 = load i32, i32* @lang_count, align 4
  %745 = sext i32 %744 to i64
  %746 = getelementptr inbounds [64 x %union.rec*], [64 x %union.rec*]* @lang_ends, i32 0, i64 %745
  store %union.rec* %743, %union.rec** %746, align 8
  %747 = load %union.rec*, %union.rec** %2, align 8
  %748 = bitcast %union.rec* %747 to %struct.word_type*
  %749 = getelementptr inbounds %struct.word_type, %struct.word_type* %748, i32 0, i32 0
  %750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %749, i32 0, i64 0
  %751 = getelementptr inbounds %struct.LIST, %struct.LIST* %750, i32 0, i32 1
  %752 = load %union.rec*, %union.rec** %751, align 8
  store %union.rec* %752, %union.rec** %link, align 8
  br label %753

; <label>:753                                     ; preds = %1025, %742
  %754 = load %union.rec*, %union.rec** %link, align 8
  %755 = load %union.rec*, %union.rec** %2, align 8
  %756 = icmp ne %union.rec* %754, %755
  br i1 %756, label %757, label %1032

; <label>:757                                     ; preds = %753
  %758 = load %union.rec*, %union.rec** %link, align 8
  %759 = bitcast %union.rec* %758 to %struct.word_type*
  %760 = getelementptr inbounds %struct.word_type, %struct.word_type* %759, i32 0, i32 0
  %761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %760, i32 0, i64 1
  %762 = getelementptr inbounds %struct.LIST, %struct.LIST* %761, i32 0, i32 0
  %763 = load %union.rec*, %union.rec** %762, align 8
  store %union.rec* %763, %union.rec** %y, align 8
  br label %764

; <label>:764                                     ; preds = %774, %757
  %765 = load %union.rec*, %union.rec** %y, align 8
  %766 = bitcast %union.rec* %765 to %struct.word_type*
  %767 = getelementptr inbounds %struct.word_type, %struct.word_type* %766, i32 0, i32 1
  %768 = bitcast %union.FIRST_UNION* %767 to %struct.anon.0*
  %769 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %768, i32 0, i32 0
  %770 = load i8, i8* %769, align 1
  %771 = zext i8 %770 to i32
  %772 = icmp eq i32 %771, 0
  br i1 %772, label %773, label %781

; <label>:773                                     ; preds = %764
  br label %774

; <label>:774                                     ; preds = %773
  %775 = load %union.rec*, %union.rec** %y, align 8
  %776 = bitcast %union.rec* %775 to %struct.word_type*
  %777 = getelementptr inbounds %struct.word_type, %struct.word_type* %776, i32 0, i32 0
  %778 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %777, i32 0, i64 1
  %779 = getelementptr inbounds %struct.LIST, %struct.LIST* %778, i32 0, i32 0
  %780 = load %union.rec*, %union.rec** %779, align 8
  store %union.rec* %780, %union.rec** %y, align 8
  br label %764

; <label>:781                                     ; preds = %764
  %782 = load %union.rec*, %union.rec** %y, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 1
  %785 = bitcast %union.FIRST_UNION* %784 to %struct.anon.0*
  %786 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %785, i32 0, i32 0
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  %789 = icmp eq i32 %788, 1
  br i1 %789, label %790, label %974

; <label>:790                                     ; preds = %781
  %791 = load %union.rec*, %union.rec** %link, align 8
  %792 = bitcast %union.rec* %791 to %struct.word_type*
  %793 = getelementptr inbounds %struct.word_type, %struct.word_type* %792, i32 0, i32 0
  %794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %793, i32 0, i64 0
  %795 = getelementptr inbounds %struct.LIST, %struct.LIST* %794, i32 0, i32 0
  %796 = load %union.rec*, %union.rec** %795, align 8
  store %union.rec* %796, %union.rec** %link, align 8
  %797 = load %union.rec*, %union.rec** %link, align 8
  %798 = bitcast %union.rec* %797 to %struct.word_type*
  %799 = getelementptr inbounds %struct.word_type, %struct.word_type* %798, i32 0, i32 0
  %800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %799, i32 0, i64 0
  %801 = getelementptr inbounds %struct.LIST, %struct.LIST* %800, i32 0, i32 1
  %802 = load %union.rec*, %union.rec** %801, align 8
  store %union.rec* %802, %union.rec** @xx_link, align 8
  %803 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %803, %union.rec** @zz_hold, align 8
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 0
  %807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %806, i32 0, i64 1
  %808 = getelementptr inbounds %struct.LIST, %struct.LIST* %807, i32 0, i32 1
  %809 = load %union.rec*, %union.rec** %808, align 8
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %811 = icmp eq %union.rec* %809, %810
  br i1 %811, label %812, label %813

; <label>:812                                     ; preds = %790
  br label %854

; <label>:813                                     ; preds = %790
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %815 = bitcast %union.rec* %814 to %struct.word_type*
  %816 = getelementptr inbounds %struct.word_type, %struct.word_type* %815, i32 0, i32 0
  %817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %816, i32 0, i64 1
  %818 = getelementptr inbounds %struct.LIST, %struct.LIST* %817, i32 0, i32 1
  %819 = load %union.rec*, %union.rec** %818, align 8
  store %union.rec* %819, %union.rec** @zz_res, align 8
  %820 = load %union.rec*, %union.rec** @zz_hold, align 8
  %821 = bitcast %union.rec* %820 to %struct.word_type*
  %822 = getelementptr inbounds %struct.word_type, %struct.word_type* %821, i32 0, i32 0
  %823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %822, i32 0, i64 1
  %824 = getelementptr inbounds %struct.LIST, %struct.LIST* %823, i32 0, i32 0
  %825 = load %union.rec*, %union.rec** %824, align 8
  %826 = load %union.rec*, %union.rec** @zz_res, align 8
  %827 = bitcast %union.rec* %826 to %struct.word_type*
  %828 = getelementptr inbounds %struct.word_type, %struct.word_type* %827, i32 0, i32 0
  %829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %828, i32 0, i64 1
  %830 = getelementptr inbounds %struct.LIST, %struct.LIST* %829, i32 0, i32 0
  store %union.rec* %825, %union.rec** %830, align 8
  %831 = load %union.rec*, %union.rec** @zz_res, align 8
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 0
  %835 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %834, i32 0, i64 1
  %836 = getelementptr inbounds %struct.LIST, %struct.LIST* %835, i32 0, i32 0
  %837 = load %union.rec*, %union.rec** %836, align 8
  %838 = bitcast %union.rec* %837 to %struct.word_type*
  %839 = getelementptr inbounds %struct.word_type, %struct.word_type* %838, i32 0, i32 0
  %840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %839, i32 0, i64 1
  %841 = getelementptr inbounds %struct.LIST, %struct.LIST* %840, i32 0, i32 1
  store %union.rec* %831, %union.rec** %841, align 8
  %842 = load %union.rec*, %union.rec** @zz_hold, align 8
  %843 = load %union.rec*, %union.rec** @zz_hold, align 8
  %844 = bitcast %union.rec* %843 to %struct.word_type*
  %845 = getelementptr inbounds %struct.word_type, %struct.word_type* %844, i32 0, i32 0
  %846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %845, i32 0, i64 1
  %847 = getelementptr inbounds %struct.LIST, %struct.LIST* %846, i32 0, i32 1
  store %union.rec* %842, %union.rec** %847, align 8
  %848 = load %union.rec*, %union.rec** @zz_hold, align 8
  %849 = bitcast %union.rec* %848 to %struct.word_type*
  %850 = getelementptr inbounds %struct.word_type, %struct.word_type* %849, i32 0, i32 0
  %851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %850, i32 0, i64 1
  %852 = getelementptr inbounds %struct.LIST, %struct.LIST* %851, i32 0, i32 0
  store %union.rec* %842, %union.rec** %852, align 8
  %853 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %854

; <label>:854                                     ; preds = %813, %812
  %855 = phi %union.rec* [ null, %812 ], [ %853, %813 ]
  store %union.rec* %855, %union.rec** @xx_tmp, align 8
  %856 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %856, %union.rec** @zz_hold, align 8
  %857 = load %union.rec*, %union.rec** @zz_hold, align 8
  %858 = bitcast %union.rec* %857 to %struct.word_type*
  %859 = getelementptr inbounds %struct.word_type, %struct.word_type* %858, i32 0, i32 0
  %860 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %859, i32 0, i64 0
  %861 = getelementptr inbounds %struct.LIST, %struct.LIST* %860, i32 0, i32 1
  %862 = load %union.rec*, %union.rec** %861, align 8
  %863 = load %union.rec*, %union.rec** @zz_hold, align 8
  %864 = icmp eq %union.rec* %862, %863
  br i1 %864, label %865, label %866

; <label>:865                                     ; preds = %854
  br label %907

; <label>:866                                     ; preds = %854
  %867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %868 = bitcast %union.rec* %867 to %struct.word_type*
  %869 = getelementptr inbounds %struct.word_type, %struct.word_type* %868, i32 0, i32 0
  %870 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %869, i32 0, i64 0
  %871 = getelementptr inbounds %struct.LIST, %struct.LIST* %870, i32 0, i32 1
  %872 = load %union.rec*, %union.rec** %871, align 8
  store %union.rec* %872, %union.rec** @zz_res, align 8
  %873 = load %union.rec*, %union.rec** @zz_hold, align 8
  %874 = bitcast %union.rec* %873 to %struct.word_type*
  %875 = getelementptr inbounds %struct.word_type, %struct.word_type* %874, i32 0, i32 0
  %876 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %875, i32 0, i64 0
  %877 = getelementptr inbounds %struct.LIST, %struct.LIST* %876, i32 0, i32 0
  %878 = load %union.rec*, %union.rec** %877, align 8
  %879 = load %union.rec*, %union.rec** @zz_res, align 8
  %880 = bitcast %union.rec* %879 to %struct.word_type*
  %881 = getelementptr inbounds %struct.word_type, %struct.word_type* %880, i32 0, i32 0
  %882 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %881, i32 0, i64 0
  %883 = getelementptr inbounds %struct.LIST, %struct.LIST* %882, i32 0, i32 0
  store %union.rec* %878, %union.rec** %883, align 8
  %884 = load %union.rec*, %union.rec** @zz_res, align 8
  %885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %886 = bitcast %union.rec* %885 to %struct.word_type*
  %887 = getelementptr inbounds %struct.word_type, %struct.word_type* %886, i32 0, i32 0
  %888 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %887, i32 0, i64 0
  %889 = getelementptr inbounds %struct.LIST, %struct.LIST* %888, i32 0, i32 0
  %890 = load %union.rec*, %union.rec** %889, align 8
  %891 = bitcast %union.rec* %890 to %struct.word_type*
  %892 = getelementptr inbounds %struct.word_type, %struct.word_type* %891, i32 0, i32 0
  %893 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %892, i32 0, i64 0
  %894 = getelementptr inbounds %struct.LIST, %struct.LIST* %893, i32 0, i32 1
  store %union.rec* %884, %union.rec** %894, align 8
  %895 = load %union.rec*, %union.rec** @zz_hold, align 8
  %896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %897 = bitcast %union.rec* %896 to %struct.word_type*
  %898 = getelementptr inbounds %struct.word_type, %struct.word_type* %897, i32 0, i32 0
  %899 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %898, i32 0, i64 0
  %900 = getelementptr inbounds %struct.LIST, %struct.LIST* %899, i32 0, i32 1
  store %union.rec* %895, %union.rec** %900, align 8
  %901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %902 = bitcast %union.rec* %901 to %struct.word_type*
  %903 = getelementptr inbounds %struct.word_type, %struct.word_type* %902, i32 0, i32 0
  %904 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %903, i32 0, i64 0
  %905 = getelementptr inbounds %struct.LIST, %struct.LIST* %904, i32 0, i32 0
  store %union.rec* %895, %union.rec** %905, align 8
  %906 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %907

; <label>:907                                     ; preds = %866, %865
  %908 = phi %union.rec* [ null, %865 ], [ %906, %866 ]
  %909 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %909, %union.rec** @zz_hold, align 8
  %910 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %910, %union.rec** @zz_hold, align 8
  %911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %912 = bitcast %union.rec* %911 to %struct.word_type*
  %913 = getelementptr inbounds %struct.word_type, %struct.word_type* %912, i32 0, i32 1
  %914 = bitcast %union.FIRST_UNION* %913 to %struct.anon.0*
  %915 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %914, i32 0, i32 0
  %916 = load i8, i8* %915, align 1
  %917 = zext i8 %916 to i32
  %918 = icmp eq i32 %917, 11
  br i1 %918, label %928, label %919

; <label>:919                                     ; preds = %907
  %920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 1
  %923 = bitcast %union.FIRST_UNION* %922 to %struct.anon.0*
  %924 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %923, i32 0, i32 0
  %925 = load i8, i8* %924, align 1
  %926 = zext i8 %925 to i32
  %927 = icmp eq i32 %926, 12
  br i1 %927, label %928, label %936

; <label>:928                                     ; preds = %919, %907
  %929 = load %union.rec*, %union.rec** @zz_hold, align 8
  %930 = bitcast %union.rec* %929 to %struct.word_type*
  %931 = getelementptr inbounds %struct.word_type, %struct.word_type* %930, i32 0, i32 1
  %932 = bitcast %union.FIRST_UNION* %931 to %struct.anon.0*
  %933 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %932, i32 0, i32 1
  %934 = load i8, i8* %933, align 1
  %935 = zext i8 %934 to i32
  br label %947

; <label>:936                                     ; preds = %919
  %937 = load %union.rec*, %union.rec** @zz_hold, align 8
  %938 = bitcast %union.rec* %937 to %struct.word_type*
  %939 = getelementptr inbounds %struct.word_type, %struct.word_type* %938, i32 0, i32 1
  %940 = bitcast %union.FIRST_UNION* %939 to %struct.anon.0*
  %941 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %940, i32 0, i32 0
  %942 = load i8, i8* %941, align 1
  %943 = zext i8 %942 to i64
  %944 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %943
  %945 = load i8, i8* %944, align 1
  %946 = zext i8 %945 to i32
  br label %947

; <label>:947                                     ; preds = %936, %928
  %948 = phi i32 [ %935, %928 ], [ %946, %936 ]
  store i32 %948, i32* @zz_size, align 4
  %949 = load i32, i32* @zz_size, align 4
  %950 = sext i32 %949 to i64
  %951 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %950
  %952 = load %union.rec*, %union.rec** %951, align 8
  %953 = load %union.rec*, %union.rec** @zz_hold, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 0
  %956 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %955, i32 0, i64 0
  %957 = getelementptr inbounds %struct.LIST, %struct.LIST* %956, i32 0, i32 0
  store %union.rec* %952, %union.rec** %957, align 8
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %959 = load i32, i32* @zz_size, align 4
  %960 = sext i32 %959 to i64
  %961 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %960
  store %union.rec* %958, %union.rec** %961, align 8
  %962 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 0
  %965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %964, i32 0, i64 1
  %966 = getelementptr inbounds %struct.LIST, %struct.LIST* %965, i32 0, i32 1
  %967 = load %union.rec*, %union.rec** %966, align 8
  %968 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %969 = icmp eq %union.rec* %967, %968
  br i1 %969, label %970, label %973

; <label>:970                                     ; preds = %947
  %971 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %972 = call i32 @DisposeObject(%union.rec* %971)
  br label %973

; <label>:973                                     ; preds = %970, %947
  br label %1025

; <label>:974                                     ; preds = %781
  %975 = load %union.rec*, %union.rec** %y, align 8
  %976 = bitcast %union.rec* %975 to %struct.word_type*
  %977 = getelementptr inbounds %struct.word_type, %struct.word_type* %976, i32 0, i32 1
  %978 = bitcast %union.FIRST_UNION* %977 to %struct.anon.0*
  %979 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %978, i32 0, i32 0
  %980 = load i8, i8* %979, align 1
  %981 = zext i8 %980 to i32
  %982 = icmp eq i32 %981, 11
  br i1 %982, label %998, label %983

; <label>:983                                     ; preds = %974
  %984 = load %union.rec*, %union.rec** %y, align 8
  %985 = bitcast %union.rec* %984 to %struct.word_type*
  %986 = getelementptr inbounds %struct.word_type, %struct.word_type* %985, i32 0, i32 1
  %987 = bitcast %union.FIRST_UNION* %986 to %struct.anon.0*
  %988 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %987, i32 0, i32 0
  %989 = load i8, i8* %988, align 1
  %990 = zext i8 %989 to i32
  %991 = icmp eq i32 %990, 12
  br i1 %991, label %998, label %992

; <label>:992                                     ; preds = %983
  %993 = load %union.rec*, %union.rec** %y, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 1
  %996 = bitcast %union.FIRST_UNION* %995 to %struct.FILE_POS*
  %997 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %996)
  br label %998

; <label>:998                                     ; preds = %992, %983, %974
  %999 = load %union.rec*, %union.rec** %y, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 4
  %1002 = getelementptr inbounds [4 x i8], [4 x i8]* %1001, i32 0, i32 0
  %1003 = call i64 @strlen(i8* %1002) #5
  %1004 = trunc i64 %1003 to i32
  store i32 %1004, i32* %len, align 4
  %1005 = load i32, i32* %len, align 4
  %1006 = icmp eq i32 %1005, 0
  br i1 %1006, label %1007, label %1013

; <label>:1007                                    ; preds = %998
  %1008 = load %union.rec*, %union.rec** %y, align 8
  %1009 = bitcast %union.rec* %1008 to %struct.word_type*
  %1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %1009, i32 0, i32 1
  %1011 = bitcast %union.FIRST_UNION* %1010 to %struct.FILE_POS*
  %1012 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i32 0, i32 0), i32 1, %struct.FILE_POS* %1011)
  br label %1013

; <label>:1013                                    ; preds = %1007, %998
  %1014 = load i32, i32* %len, align 4
  %1015 = sub nsw i32 %1014, 1
  %1016 = sext i32 %1015 to i64
  %1017 = load %union.rec*, %union.rec** %y, align 8
  %1018 = bitcast %union.rec* %1017 to %struct.word_type*
  %1019 = getelementptr inbounds %struct.word_type, %struct.word_type* %1018, i32 0, i32 4
  %1020 = getelementptr inbounds [4 x i8], [4 x i8]* %1019, i32 0, i64 %1016
  %1021 = load i8, i8* %1020, align 1
  store i8 %1021, i8* %ch, align 1
  %1022 = load i8, i8* %ch, align 1
  %1023 = zext i8 %1022 to i64
  %1024 = getelementptr inbounds [256 x i32], [256 x i32]* @LanguageSentenceEnds, i32 0, i64 %1023
  store i32 1, i32* %1024, align 4
  br label %1025

; <label>:1025                                    ; preds = %1013, %973
  %1026 = load %union.rec*, %union.rec** %link, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 0
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 1
  %1031 = load %union.rec*, %union.rec** %1030, align 8
  store %union.rec* %1031, %union.rec** %link, align 8
  br label %753

; <label>:1032                                    ; preds = %753
  %1033 = load i32, i32* @InitializeAll, align 4
  %1034 = icmp ne i32 %1033, 0
  br i1 %1034, label %1035, label %1046

; <label>:1035                                    ; preds = %1032
  %1036 = load i32, i32* @lang_count, align 4
  %1037 = sext i32 %1036 to i64
  %1038 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %1039 = getelementptr inbounds %union.rec*, %union.rec** %1038, i64 %1037
  %1040 = load %union.rec*, %union.rec** %1039, align 8
  %1041 = icmp ne %union.rec* %1040, null
  br i1 %1041, label %1042, label %1045

; <label>:1042                                    ; preds = %1035
  %1043 = load i32, i32* @lang_count, align 4
  %1044 = call i32 @ReadHyphTable(i32 %1043)
  store i32 %1044, i32* %junk, align 4
  br label %1045

; <label>:1045                                    ; preds = %1042, %1035
  br label %1046

; <label>:1046                                    ; preds = %1045, %1032
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #2

; Function Attrs: nounwind
declare i8* @realloc(i8*, i64) #1

; Function Attrs: nounwind uwtable
define internal void @ltab_insert(%union.rec* %x, %struct.anon** %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.anon**, align 8
  %pos = alloca i32, align 4
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %p = alloca i8*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.anon** %S, %struct.anon*** %2, align 8
  %3 = load %struct.anon**, %struct.anon*** %2, align 8
  %4 = load %struct.anon*, %struct.anon** %3, align 8
  %5 = getelementptr inbounds %struct.anon, %struct.anon* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.anon**, %struct.anon*** %2, align 8
  %8 = load %struct.anon*, %struct.anon** %7, align 8
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sub nsw i32 %10, 1
  %12 = icmp eq i32 %6, %11
  br i1 %12, label %13, label %23

; <label>:13                                      ; preds = %0
  %14 = load %struct.anon**, %struct.anon*** %2, align 8
  %15 = load %struct.anon*, %struct.anon** %14, align 8
  %16 = load %struct.anon**, %struct.anon*** %2, align 8
  %17 = load %struct.anon*, %struct.anon** %16, align 8
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = mul nsw i32 2, %19
  %21 = call %struct.anon* @ltab_rehash(%struct.anon* %15, i32 %20)
  %22 = load %struct.anon**, %struct.anon*** %2, align 8
  store %struct.anon* %21, %struct.anon** %22, align 8
  br label %23

; <label>:23                                      ; preds = %13, %0
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 4
  %27 = getelementptr inbounds [4 x i8], [4 x i8]* %26, i32 0, i32 0
  store i8* %27, i8** %p, align 8
  %28 = load i8*, i8** %p, align 8
  %29 = getelementptr inbounds i8, i8* %28, i32 1
  store i8* %29, i8** %p, align 8
  %30 = load i8, i8* %28, align 1
  %31 = zext i8 %30 to i32
  store i32 %31, i32* %pos, align 4
  br label %32

; <label>:32                                      ; preds = %36, %23
  %33 = load i8*, i8** %p, align 8
  %34 = load i8, i8* %33, align 1
  %35 = icmp ne i8 %34, 0
  br i1 %35, label %36, label %43

; <label>:36                                      ; preds = %32
  %37 = load i8*, i8** %p, align 8
  %38 = getelementptr inbounds i8, i8* %37, i32 1
  store i8* %38, i8** %p, align 8
  %39 = load i8, i8* %37, align 1
  %40 = zext i8 %39 to i32
  %41 = load i32, i32* %pos, align 4
  %42 = add nsw i32 %41, %40
  store i32 %42, i32* %pos, align 4
  br label %32

; <label>:43                                      ; preds = %32
  %44 = load i32, i32* %pos, align 4
  %45 = load %struct.anon**, %struct.anon*** %2, align 8
  %46 = load %struct.anon*, %struct.anon** %45, align 8
  %47 = getelementptr inbounds %struct.anon, %struct.anon* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = srem i32 %44, %48
  store i32 %49, i32* %pos, align 4
  %50 = load i32, i32* %pos, align 4
  %51 = sext i32 %50 to i64
  %52 = load %struct.anon**, %struct.anon*** %2, align 8
  %53 = load %struct.anon*, %struct.anon** %52, align 8
  %54 = getelementptr inbounds %struct.anon, %struct.anon* %53, i32 0, i32 2
  %55 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %54, i32 0, i64 %51
  %56 = load %union.rec*, %union.rec** %55, align 8
  %57 = icmp eq %union.rec* %56, null
  br i1 %57, label %58, label %124

; <label>:58                                      ; preds = %43
  %59 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %60 = zext i8 %59 to i32
  store i32 %60, i32* @zz_size, align 4
  %61 = sext i32 %60 to i64
  %62 = icmp uge i64 %61, 265
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %58
  %64 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %65 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %64)
  br label %91

; <label>:66                                      ; preds = %58
  %67 = load i32, i32* @zz_size, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %68
  %70 = load %union.rec*, %union.rec** %69, align 8
  %71 = icmp eq %union.rec* %70, null
  br i1 %71, label %72, label %76

; <label>:72                                      ; preds = %66
  %73 = load i32, i32* @zz_size, align 4
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %75 = call %union.rec* @GetMemory(i32 %73, %struct.FILE_POS* %74)
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  br label %90

; <label>:76                                      ; preds = %66
  %77 = load i32, i32* @zz_size, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %78
  %80 = load %union.rec*, %union.rec** %79, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  store %union.rec* %80, %union.rec** @zz_hold, align 8
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 0
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 0
  %86 = load %union.rec*, %union.rec** %85, align 8
  %87 = load i32, i32* @zz_size, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %88
  store %union.rec* %86, %union.rec** %89, align 8
  br label %90

; <label>:90                                      ; preds = %76, %72
  br label %91

; <label>:91                                      ; preds = %90, %63
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 1
  %95 = bitcast %union.FIRST_UNION* %94 to %struct.anon.0*
  %96 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %95, i32 0, i32 0
  store i8 17, i8* %96, align 1
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 1
  store %union.rec* %97, %union.rec** %102, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 0
  %106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %105, i32 0, i64 1
  %107 = getelementptr inbounds %struct.LIST, %struct.LIST* %106, i32 0, i32 0
  store %union.rec* %97, %union.rec** %107, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 0
  %111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %110, i32 0, i64 0
  %112 = getelementptr inbounds %struct.LIST, %struct.LIST* %111, i32 0, i32 1
  store %union.rec* %97, %union.rec** %112, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 0
  store %union.rec* %97, %union.rec** %117, align 8
  %118 = load i32, i32* %pos, align 4
  %119 = sext i32 %118 to i64
  %120 = load %struct.anon**, %struct.anon*** %2, align 8
  %121 = load %struct.anon*, %struct.anon** %120, align 8
  %122 = getelementptr inbounds %struct.anon, %struct.anon* %121, i32 0, i32 2
  %123 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %122, i32 0, i64 %119
  store %union.rec* %97, %union.rec** %123, align 8
  br label %124

; <label>:124                                     ; preds = %91, %43
  %125 = load i32, i32* %pos, align 4
  %126 = sext i32 %125 to i64
  %127 = load %struct.anon**, %struct.anon*** %2, align 8
  %128 = load %struct.anon*, %struct.anon** %127, align 8
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 2
  %130 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %129, i32 0, i64 %126
  %131 = load %union.rec*, %union.rec** %130, align 8
  store %union.rec* %131, %union.rec** %z, align 8
  %132 = load %union.rec*, %union.rec** %z, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 0
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 1
  %137 = load %union.rec*, %union.rec** %136, align 8
  store %union.rec* %137, %union.rec** %link, align 8
  br label %138

; <label>:138                                     ; preds = %193, %124
  %139 = load %union.rec*, %union.rec** %link, align 8
  %140 = load %union.rec*, %union.rec** %z, align 8
  %141 = icmp ne %union.rec* %139, %140
  br i1 %141, label %142, label %200

; <label>:142                                     ; preds = %138
  %143 = load %union.rec*, %union.rec** %link, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 1
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %147, align 8
  store %union.rec* %148, %union.rec** %y, align 8
  br label %149

; <label>:149                                     ; preds = %159, %142
  %150 = load %union.rec*, %union.rec** %y, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 1
  %153 = bitcast %union.FIRST_UNION* %152 to %struct.anon.0*
  %154 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %153, i32 0, i32 0
  %155 = load i8, i8* %154, align 1
  %156 = zext i8 %155 to i32
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %166

; <label>:158                                     ; preds = %149
  br label %159

; <label>:159                                     ; preds = %158
  %160 = load %union.rec*, %union.rec** %y, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %164, align 8
  store %union.rec* %165, %union.rec** %y, align 8
  br label %149

; <label>:166                                     ; preds = %149
  %167 = load %union.rec*, %union.rec** %1, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 4
  %170 = getelementptr inbounds [4 x i8], [4 x i8]* %169, i32 0, i32 0
  %171 = load %union.rec*, %union.rec** %y, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 4
  %174 = getelementptr inbounds [4 x i8], [4 x i8]* %173, i32 0, i32 0
  %175 = call i32 @strcmp(i8* %170, i8* %174) #5
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %192

; <label>:177                                     ; preds = %166
  %178 = load %union.rec*, %union.rec** %1, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 1
  %181 = bitcast %union.FIRST_UNION* %180 to %struct.FILE_POS*
  %182 = load %union.rec*, %union.rec** %1, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 4
  %185 = getelementptr inbounds [4 x i8], [4 x i8]* %184, i32 0, i32 0
  %186 = load %union.rec*, %union.rec** %y, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 1
  %189 = bitcast %union.FIRST_UNION* %188 to %struct.FILE_POS*
  %190 = call i8* @EchoFilePos(%struct.FILE_POS* %189)
  %191 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.17, i32 0, i32 0), i32 1, %struct.FILE_POS* %181, i8* %185, i8* %190)
  br label %192

; <label>:192                                     ; preds = %177, %166
  br label %193

; <label>:193                                     ; preds = %192
  %194 = load %union.rec*, %union.rec** %link, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 0
  %197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %196, i32 0, i64 0
  %198 = getelementptr inbounds %struct.LIST, %struct.LIST* %197, i32 0, i32 1
  %199 = load %union.rec*, %union.rec** %198, align 8
  store %union.rec* %199, %union.rec** %link, align 8
  br label %138

; <label>:200                                     ; preds = %138
  %201 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %202 = zext i8 %201 to i32
  store i32 %202, i32* @zz_size, align 4
  %203 = sext i32 %202 to i64
  %204 = icmp uge i64 %203, 265
  br i1 %204, label %205, label %208

; <label>:205                                     ; preds = %200
  %206 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %207 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %206)
  br label %233

; <label>:208                                     ; preds = %200
  %209 = load i32, i32* @zz_size, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %210
  %212 = load %union.rec*, %union.rec** %211, align 8
  %213 = icmp eq %union.rec* %212, null
  br i1 %213, label %214, label %218

; <label>:214                                     ; preds = %208
  %215 = load i32, i32* @zz_size, align 4
  %216 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %217 = call %union.rec* @GetMemory(i32 %215, %struct.FILE_POS* %216)
  store %union.rec* %217, %union.rec** @zz_hold, align 8
  br label %232

; <label>:218                                     ; preds = %208
  %219 = load i32, i32* @zz_size, align 4
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %220
  %222 = load %union.rec*, %union.rec** %221, align 8
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = bitcast %union.rec* %223 to %struct.word_type*
  %225 = getelementptr inbounds %struct.word_type, %struct.word_type* %224, i32 0, i32 0
  %226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %225, i32 0, i64 0
  %227 = getelementptr inbounds %struct.LIST, %struct.LIST* %226, i32 0, i32 0
  %228 = load %union.rec*, %union.rec** %227, align 8
  %229 = load i32, i32* @zz_size, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %230
  store %union.rec* %228, %union.rec** %231, align 8
  br label %232

; <label>:232                                     ; preds = %218, %214
  br label %233

; <label>:233                                     ; preds = %232, %205
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 1
  %237 = bitcast %union.FIRST_UNION* %236 to %struct.anon.0*
  %238 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %237, i32 0, i32 0
  store i8 0, i8* %238, align 1
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 1
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 1
  store %union.rec* %239, %union.rec** %244, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 0
  store %union.rec* %239, %union.rec** %249, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %252, i32 0, i64 0
  %254 = getelementptr inbounds %struct.LIST, %struct.LIST* %253, i32 0, i32 1
  store %union.rec* %239, %union.rec** %254, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 0
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 0
  store %union.rec* %239, %union.rec** %259, align 8
  store %union.rec* %239, %union.rec** @xx_link, align 8
  %260 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %260, %union.rec** @zz_res, align 8
  %261 = load i32, i32* %pos, align 4
  %262 = sext i32 %261 to i64
  %263 = load %struct.anon**, %struct.anon*** %2, align 8
  %264 = load %struct.anon*, %struct.anon** %263, align 8
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %264, i32 0, i32 2
  %266 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %265, i32 0, i64 %262
  %267 = load %union.rec*, %union.rec** %266, align 8
  store %union.rec* %267, %union.rec** @zz_hold, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = icmp eq %union.rec* %268, null
  br i1 %269, label %270, label %272

; <label>:270                                     ; preds = %233
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %320

; <label>:272                                     ; preds = %233
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
  %281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %280, i32 0, i64 0
  %282 = getelementptr inbounds %struct.LIST, %struct.LIST* %281, i32 0, i32 0
  %283 = load %union.rec*, %union.rec** %282, align 8
  store %union.rec* %283, %union.rec** @zz_tmp, align 8
  %284 = load %union.rec*, %union.rec** @zz_res, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %286, i32 0, i64 0
  %288 = getelementptr inbounds %struct.LIST, %struct.LIST* %287, i32 0, i32 0
  %289 = load %union.rec*, %union.rec** %288, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 0
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 0
  store %union.rec* %289, %union.rec** %294, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = load %union.rec*, %union.rec** @zz_res, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 0
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 0
  %301 = load %union.rec*, %union.rec** %300, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %303, i32 0, i64 0
  %305 = getelementptr inbounds %struct.LIST, %struct.LIST* %304, i32 0, i32 1
  store %union.rec* %295, %union.rec** %305, align 8
  %306 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  store %union.rec* %306, %union.rec** %311, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %313 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 0
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 1
  store %union.rec* %312, %union.rec** %317, align 8
  br label %318

; <label>:318                                     ; preds = %277, %275
  %319 = phi %union.rec* [ %276, %275 ], [ %312, %277 ]
  br label %320

; <label>:320                                     ; preds = %318, %270
  %321 = phi %union.rec* [ %271, %270 ], [ %319, %318 ]
  %322 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %322, %union.rec** @zz_res, align 8
  %323 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %323, %union.rec** @zz_hold, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = icmp eq %union.rec* %324, null
  br i1 %325, label %326, label %328

; <label>:326                                     ; preds = %320
  %327 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %376

; <label>:328                                     ; preds = %320
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = icmp eq %union.rec* %329, null
  br i1 %330, label %331, label %333

; <label>:331                                     ; preds = %328
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %374

; <label>:333                                     ; preds = %328
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 0
  %337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %336, i32 0, i64 1
  %338 = getelementptr inbounds %struct.LIST, %struct.LIST* %337, i32 0, i32 0
  %339 = load %union.rec*, %union.rec** %338, align 8
  store %union.rec* %339, %union.rec** @zz_tmp, align 8
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 1
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 0
  %345 = load %union.rec*, %union.rec** %344, align 8
  %346 = load %union.rec*, %union.rec** @zz_hold, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 1
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 0
  store %union.rec* %345, %union.rec** %350, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_res, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 1
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %356, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 1
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 1
  store %union.rec* %351, %union.rec** %361, align 8
  %362 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %363 = load %union.rec*, %union.rec** @zz_res, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %365, i32 0, i64 1
  %367 = getelementptr inbounds %struct.LIST, %struct.LIST* %366, i32 0, i32 0
  store %union.rec* %362, %union.rec** %367, align 8
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %369 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 1
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 1
  store %union.rec* %368, %union.rec** %373, align 8
  br label %374

; <label>:374                                     ; preds = %333, %331
  %375 = phi %union.rec* [ %332, %331 ], [ %368, %333 ]
  br label %376

; <label>:376                                     ; preds = %374, %326
  %377 = phi %union.rec* [ %327, %326 ], [ %375, %374 ]
  ret void
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #3

declare i32 @DisposeObject(%union.rec*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare i32 @ReadHyphTable(i32) #2

; Function Attrs: nounwind uwtable
define i32 @LanguageWordEndsSentence(%union.rec* %wd, i32 %lc_prec) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %x = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  store %union.rec* %wd, %union.rec** %2, align 8
  store i32 %lc_prec, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon.0*
  %8 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 11
  br i1 %11, label %24, label %12

; <label>:12                                      ; preds = %0
  %13 = load %union.rec*, %union.rec** %2, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.anon.0*
  %17 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %16, i32 0, i32 0
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = icmp eq i32 %19, 12
  br i1 %20, label %24, label %21

; <label>:21                                      ; preds = %12
  %22 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %23 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %22, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.10, i32 0, i32 0))
  br label %24

; <label>:24                                      ; preds = %21, %12, %0
  %25 = load %union.rec*, %union.rec** %2, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 2
  %28 = bitcast %union.SECOND_UNION* %27 to %struct.anon.2*
  %29 = bitcast %struct.anon.2* %28 to i32*
  %30 = load i32, i32* %29, align 4
  %31 = lshr i32 %30, 23
  %32 = and i32 %31, 63
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [64 x %union.rec*], [64 x %union.rec*]* @lang_ends, i32 0, i64 %33
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %x, align 8
  %36 = load %union.rec*, %union.rec** %x, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %link, align 8
  br label %42

; <label>:42                                      ; preds = %126, %24
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = load %union.rec*, %union.rec** %x, align 8
  %45 = icmp ne %union.rec* %43, %44
  br i1 %45, label %46, label %133

; <label>:46                                      ; preds = %42
  %47 = load %union.rec*, %union.rec** %link, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %51, align 8
  store %union.rec* %52, %union.rec** %y, align 8
  br label %53

; <label>:53                                      ; preds = %63, %46
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 1
  %57 = bitcast %union.FIRST_UNION* %56 to %struct.anon.0*
  %58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %53
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load %union.rec*, %union.rec** %y, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %68, align 8
  store %union.rec* %69, %union.rec** %y, align 8
  br label %53

; <label>:70                                      ; preds = %53
  %71 = load %union.rec*, %union.rec** %2, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 4
  %74 = getelementptr inbounds [4 x i8], [4 x i8]* %73, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %y, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 4
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %77, i32 0, i32 0
  %79 = call i32 @StringEndsWith(i8* %74, i8* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %125

; <label>:81                                      ; preds = %70
  %82 = load i32, i32* %3, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %85, label %84

; <label>:84                                      ; preds = %81
  store i32 1, i32* %1
  br label %134

; <label>:85                                      ; preds = %81
  %86 = load %union.rec*, %union.rec** %2, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 4
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %88, i32 0, i32 0
  %90 = call i64 @strlen(i8* %89) #5
  %91 = load %union.rec*, %union.rec** %y, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 4
  %94 = getelementptr inbounds [4 x i8], [4 x i8]* %93, i32 0, i32 0
  %95 = call i64 @strlen(i8* %94) #5
  %96 = sub i64 %90, %95
  %97 = sub i64 %96, 1
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %pos, align 4
  %99 = load i32, i32* %pos, align 4
  %100 = icmp sge i32 %99, 0
  br i1 %100, label %101, label %124

; <label>:101                                     ; preds = %85
  %102 = load i32, i32* %pos, align 4
  %103 = sext i32 %102 to i64
  %104 = load %union.rec*, %union.rec** %2, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 4
  %107 = getelementptr inbounds [4 x i8], [4 x i8]* %106, i32 0, i64 %103
  %108 = load i8, i8* %107, align 1
  %109 = load %union.rec*, %union.rec** %2, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 2
  %112 = bitcast %union.SECOND_UNION* %111 to %struct.anon.2*
  %113 = bitcast %struct.anon.2* %112 to i32*
  %114 = load i32, i32* %113, align 4
  %115 = and i32 %114, 4095
  %116 = load %union.rec*, %union.rec** %2, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 1
  %119 = bitcast %union.FIRST_UNION* %118 to %struct.FILE_POS*
  %120 = call i32 @FontMapping(i32 %115, %struct.FILE_POS* %119)
  %121 = call i32 @MapIsLowerCase(i8 zeroext %108, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %123, label %124

; <label>:123                                     ; preds = %101
  store i32 1, i32* %1
  br label %134

; <label>:124                                     ; preds = %101, %85
  br label %125

; <label>:125                                     ; preds = %124, %70
  br label %126

; <label>:126                                     ; preds = %125
  %127 = load %union.rec*, %union.rec** %link, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 0
  %130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %129, i32 0, i64 0
  %131 = getelementptr inbounds %struct.LIST, %struct.LIST* %130, i32 0, i32 1
  %132 = load %union.rec*, %union.rec** %131, align 8
  store %union.rec* %132, %union.rec** %link, align 8
  br label %42

; <label>:133                                     ; preds = %42
  store i32 0, i32* %1
  br label %134

; <label>:134                                     ; preds = %133, %123, %84
  %135 = load i32, i32* %1
  ret i32 %135
}

declare i32 @StringEndsWith(i8*, i8*) #2

declare i32 @MapIsLowerCase(i8 zeroext, i32) #2

declare i32 @FontMapping(i32, %struct.FILE_POS*) #2

; Function Attrs: nounwind uwtable
define void @LanguageChange(%struct.STYLE* %style, %union.rec* %x) #0 {
  %1 = alloca %struct.STYLE*, align 8
  %2 = alloca %union.rec*, align 8
  %lname = alloca %union.rec*, align 8
  store %struct.STYLE* %style, %struct.STYLE** %1, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon.0*
  %7 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %26, label %11

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %2, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon.0*
  %16 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %26, label %20

; <label>:20                                      ; preds = %11
  %21 = load %union.rec*, %union.rec** %2, align 8
  %22 = bitcast %union.rec* %21 to %struct.word_type*
  %23 = getelementptr inbounds %struct.word_type, %struct.word_type* %22, i32 0, i32 1
  %24 = bitcast %union.FIRST_UNION* %23 to %struct.FILE_POS*
  %25 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 6, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %24, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0))
  br label %69

; <label>:26                                      ; preds = %11, %0
  %27 = load %union.rec*, %union.rec** %2, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 4
  %30 = getelementptr inbounds [4 x i8], [4 x i8]* %29, i32 0, i32 0
  %31 = call i32 @strcmp(i8* %30, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.6, i32 0, i32 0)) #5
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %26
  br label %69

; <label>:34                                      ; preds = %26
  %35 = load %union.rec*, %union.rec** %2, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 4
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i32 0, i32 0
  %39 = load %struct.anon*, %struct.anon** @names_tab, align 8
  %40 = call %union.rec* @ltab_retrieve(i8* %38, %struct.anon* %39)
  store %union.rec* %40, %union.rec** %lname, align 8
  %41 = load %union.rec*, %union.rec** %lname, align 8
  %42 = icmp eq %union.rec* %41, null
  br i1 %42, label %43, label %53

; <label>:43                                      ; preds = %34
  %44 = load %union.rec*, %union.rec** %2, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 1
  %47 = bitcast %union.FIRST_UNION* %46 to %struct.FILE_POS*
  %48 = load %union.rec*, %union.rec** %2, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 4
  %51 = getelementptr inbounds [4 x i8], [4 x i8]* %50, i32 0, i32 0
  %52 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 43, i32 7, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0), i32 2, %struct.FILE_POS* %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.12, i32 0, i32 0), i8* %51)
  br label %69

; <label>:53                                      ; preds = %34
  %54 = load %union.rec*, %union.rec** %lname, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 2
  %57 = bitcast %union.SECOND_UNION* %56 to %struct.anon.2*
  %58 = bitcast %struct.anon.2* %57 to i32*
  %59 = load i32, i32* %58, align 4
  %60 = lshr i32 %59, 23
  %61 = and i32 %60, 63
  %62 = load %struct.STYLE*, %struct.STYLE** %1, align 8
  %63 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %61, 63
  %66 = shl i32 %65, 24
  %67 = and i32 %64, -1056964609
  %68 = or i32 %67, %66
  store i32 %68, i32* %63, align 4
  br label %69

; <label>:69                                      ; preds = %20, %33, %53, %43
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @ltab_retrieve(i8* %str, %struct.anon* %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i8*, align 8
  %3 = alloca %struct.anon*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i32, align 4
  %p = alloca i8*, align 8
  store i8* %str, i8** %2, align 8
  store %struct.anon* %S, %struct.anon** %3, align 8
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
  %22 = load %struct.anon*, %struct.anon** %3, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = srem i32 %21, %24
  store i32 %25, i32* %pos, align 4
  %26 = load i32, i32* %pos, align 4
  %27 = sext i32 %26 to i64
  %28 = load %struct.anon*, %struct.anon** %3, align 8
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 2
  %30 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %29, i32 0, i64 %27
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %x, align 8
  %32 = load %union.rec*, %union.rec** %x, align 8
  %33 = icmp eq %union.rec* %32, null
  br i1 %33, label %34, label %35

; <label>:34                                      ; preds = %20
  store %union.rec* null, %union.rec** %1
  br label %89

; <label>:35                                      ; preds = %20
  %36 = load %union.rec*, %union.rec** %x, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 0
  %39 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %38, i32 0, i64 0
  %40 = getelementptr inbounds %struct.LIST, %struct.LIST* %39, i32 0, i32 1
  %41 = load %union.rec*, %union.rec** %40, align 8
  store %union.rec* %41, %union.rec** %link, align 8
  br label %42

; <label>:42                                      ; preds = %81, %35
  %43 = load %union.rec*, %union.rec** %link, align 8
  %44 = load %union.rec*, %union.rec** %x, align 8
  %45 = icmp ne %union.rec* %43, %44
  br i1 %45, label %46, label %88

; <label>:46                                      ; preds = %42
  %47 = load %union.rec*, %union.rec** %link, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %51, align 8
  store %union.rec* %52, %union.rec** %y, align 8
  br label %53

; <label>:53                                      ; preds = %63, %46
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 1
  %57 = bitcast %union.FIRST_UNION* %56 to %struct.anon.0*
  %58 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %70

; <label>:62                                      ; preds = %53
  br label %63

; <label>:63                                      ; preds = %62
  %64 = load %union.rec*, %union.rec** %y, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 0
  %69 = load %union.rec*, %union.rec** %68, align 8
  store %union.rec* %69, %union.rec** %y, align 8
  br label %53

; <label>:70                                      ; preds = %53
  %71 = load i8*, i8** %2, align 8
  %72 = load %union.rec*, %union.rec** %y, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 4
  %75 = getelementptr inbounds [4 x i8], [4 x i8]* %74, i32 0, i32 0
  %76 = call i32 @strcmp(i8* %71, i8* %75) #5
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %70
  %79 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %79, %union.rec** %1
  br label %89

; <label>:80                                      ; preds = %70
  br label %81

; <label>:81                                      ; preds = %80
  %82 = load %union.rec*, %union.rec** %link, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 0
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 1
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** %link, align 8
  br label %42

; <label>:88                                      ; preds = %42
  store %union.rec* null, %union.rec** %1
  br label %89

; <label>:89                                      ; preds = %88, %78, %34
  %90 = load %union.rec*, %union.rec** %1
  ret %union.rec* %90
}

; Function Attrs: nounwind uwtable
define i8* @LanguageString(i32 %lnum) #0 {
  %1 = alloca i32, align 4
  %res = alloca i8*, align 8
  store i32 %lnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp ugt i32 %2, 0
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @lang_count, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %4, %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %8, %4
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = load %union.rec**, %union.rec*** @canonical_tab, align 8
  %15 = getelementptr inbounds %union.rec*, %union.rec** %14, i64 %13
  %16 = load %union.rec*, %union.rec** %15, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 4
  %19 = getelementptr inbounds [4 x i8], [4 x i8]* %18, i32 0, i32 0
  store i8* %19, i8** %res, align 8
  %20 = load i8*, i8** %res, align 8
  ret i8* %20
}

; Function Attrs: nounwind uwtable
define %union.rec* @LanguageHyph(i32 %lnum) #0 {
  %1 = alloca i32, align 4
  %res = alloca %union.rec*, align 8
  store i32 %lnum, i32* %1, align 4
  %2 = load i32, i32* %1, align 4
  %3 = icmp ugt i32 %2, 0
  br i1 %3, label %4, label %8

; <label>:4                                       ; preds = %0
  %5 = load i32, i32* %1, align 4
  %6 = load i32, i32* @lang_count, align 4
  %7 = icmp ule i32 %5, %6
  br i1 %7, label %11, label %8

; <label>:8                                       ; preds = %4, %0
  %9 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %10 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %11

; <label>:11                                      ; preds = %8, %4
  %12 = load i32, i32* %1, align 4
  %13 = zext i32 %12 to i64
  %14 = load %union.rec**, %union.rec*** @hyph_tab, align 8
  %15 = getelementptr inbounds %union.rec*, %union.rec** %14, i64 %13
  %16 = load %union.rec*, %union.rec** %15, align 8
  store %union.rec* %16, %union.rec** %res, align 8
  %17 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %17
}

; Function Attrs: nounwind uwtable
define internal %struct.anon* @ltab_rehash(%struct.anon* %S, i32 %newsize) #0 {
  %1 = alloca %struct.anon*, align 8
  %2 = alloca i32, align 4
  %NewS = alloca %struct.anon*, align 8
  %i = alloca i32, align 4
  store %struct.anon* %S, %struct.anon** %1, align 8
  store i32 %newsize, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.anon* @ltab_new(i32 %3)
  store %struct.anon* %4, %struct.anon** %NewS, align 8
  store i32 1, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %27, %0
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.anon*, %struct.anon** %1, align 8
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sle i32 %6, %9
  br i1 %10, label %11, label %30

; <label>:11                                      ; preds = %5
  %12 = load i32, i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.anon*, %struct.anon** %1, align 8
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %15, i32 0, i64 %13
  %17 = load %union.rec*, %union.rec** %16, align 8
  %18 = icmp ne %union.rec* %17, null
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.anon*, %struct.anon** %1, align 8
  %23 = getelementptr inbounds %struct.anon, %struct.anon* %22, i32 0, i32 2
  %24 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %23, i32 0, i64 %21
  %25 = load %union.rec*, %union.rec** %24, align 8
  call void @ltab_insert(%union.rec* %25, %struct.anon** %NewS)
  br label %26

; <label>:26                                      ; preds = %19, %11
  br label %27

; <label>:27                                      ; preds = %26
  %28 = load i32, i32* %i, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %i, align 4
  br label %5

; <label>:30                                      ; preds = %5
  %31 = load %struct.anon*, %struct.anon** %1, align 8
  %32 = bitcast %struct.anon* %31 to i8*
  call void @free(i8* %32) #4
  %33 = load %struct.anon*, %struct.anon** %NewS, align 8
  ret %struct.anon* %33
}

declare i8* @EchoFilePos(%struct.FILE_POS*) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
