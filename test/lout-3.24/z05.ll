; ModuleID = 'z05.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.anon.0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [43 x i8] c"left brace expected here in %s declaration\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"@PrependGraphic\00", align 1
@zz_hold = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.2 = private unnamed_addr constant [30 x i8] c"name of %s file expected here\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.5 = private unnamed_addr constant [30 x i8] c"unknown or misspelt symbol %s\00", align 1
@.str.6 = private unnamed_addr constant [49 x i8] c"symbol name or %s expected here (%s declaration)\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.9 = private unnamed_addr constant [39 x i8] c"symbol names missing in %s declaration\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.11 = private unnamed_addr constant [41 x i8] c"%s suffix should be omitted in %s clause\00", align 1
@InMemoryDbIndexes = external global i32, align 4
@.str.12 = private unnamed_addr constant [6 x i8] c"named\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"import\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"langdef\00", align 1
@.str.15 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"macro\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"extend\00", align 1
@.str.18 = private unnamed_addr constant [7 x i8] c"export\00", align 1
@.str.19 = private unnamed_addr constant [26 x i8] c"import name expected here\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"import %s not in scope\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"%s has %s clause, so cannot be extended\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"%s symbol name expected here\00", align 1
@.str.23 = private unnamed_addr constant [30 x i8] c"extend symbol %s not in scope\00", align 1
@.str.24 = private unnamed_addr constant [31 x i8] c"keyword %s or %s expected here\00", align 1
@.str.25 = private unnamed_addr constant [25 x i8] c"keyword %s expected here\00", align 1
@.str.26 = private unnamed_addr constant [30 x i8] c"ignoring export list of macro\00", align 1
@.str.27 = private unnamed_addr constant [11 x i8] c"compulsory\00", align 1
@.str.28 = private unnamed_addr constant [26 x i8] c"symbol name expected here\00", align 1
@.str.29 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.30 = private unnamed_addr constant [5 x i8] c"into\00", align 1
@.str.31 = private unnamed_addr constant [13 x i8] c"horizontally\00", align 1
@.str.32 = private unnamed_addr constant [11 x i8] c"precedence\00", align 1
@.str.33 = private unnamed_addr constant [14 x i8] c"associativity\00", align 1
@.str.34 = private unnamed_addr constant [5 x i8] c"left\00", align 1
@.str.35 = private unnamed_addr constant [6 x i8] c"right\00", align 1
@.str.36 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.37 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"%s expected here\00", align 1
@.str.39 = private unnamed_addr constant [39 x i8] c"precedence is too low (%d substituted)\00", align 1
@.str.40 = private unnamed_addr constant [40 x i8] c"precedence is too high (%d substituted)\00", align 1
@.str.41 = private unnamed_addr constant [28 x i8] c"associativity altered to %s\00", align 1
@.str.42 = private unnamed_addr constant [30 x i8] c"cannot find %s parameter name\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"@Target\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.44 = private unnamed_addr constant [44 x i8] c"opening left brace or @Begin of %s expected\00", align 1
@.str.45 = private unnamed_addr constant [40 x i8] c"exported symbol %s is not defined in %s\00", align 1
@.str.46 = private unnamed_addr constant [38 x i8] c"body parameter %s may not be exported\00", align 1
@.str.47 = private unnamed_addr constant [25 x i8] c"symbol %s exported twice\00", align 1
@.str.48 = private unnamed_addr constant [36 x i8] c"expected opening %s of langdef here\00", align 1
@.str.49 = private unnamed_addr constant [29 x i8] c"%s ignored (name is missing)\00", align 1
@.str.50 = private unnamed_addr constant [35 x i8] c"%s ignored (opening %s is missing)\00", align 1
@.str.51 = private unnamed_addr constant [30 x i8] c"symbol %s unknown or misspelt\00", align 1
@.str.52 = private unnamed_addr constant [31 x i8] c"symbol %s not allowed in macro\00", align 1
@.str.53 = private unnamed_addr constant [24 x i8] c"unexpected end of input\00", align 1
@.str.54 = private unnamed_addr constant [21 x i8] c"%s not expected here\00", align 1
@.str.55 = private unnamed_addr constant [22 x i8] c"unmatched %s in macro\00", align 1
@.str.56 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.57 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.58 = private unnamed_addr constant [30 x i8] c"symbol name expected after %s\00", align 1
@.str.59 = private unnamed_addr constant [27 x i8] c"%s %s does not match %s %s\00", align 1
@.str.60 = private unnamed_addr constant [34 x i8] c"%s must follow named parameter %s\00", align 1
@.str.61 = private unnamed_addr constant [41 x i8] c"right parameter of %s must begin with %s\00", align 1
@.str.62 = private unnamed_addr constant [18 x i8] c"ReadTokenList: %s\00", align 1

; Function Attrs: nounwind uwtable
define void @ReadPrependDef(i32 %typ, %union.rec* %encl) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %fname = alloca %union.rec*, align 8
  store i32 %typ, i32* %1, align 4
  store %union.rec* %encl, %union.rec** %2, align 8
  %3 = call %union.rec* @LexGetToken()
  store %union.rec* %3, %union.rec** %t, align 8
  %4 = load %union.rec*, %union.rec** %t, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp ne i32 %10, 102
  br i1 %11, label %12, label %71

; <label>:12                                      ; preds = %0
  %13 = load %union.rec*, %union.rec** %t, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.FILE_POS*
  %17 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 5, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %16, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %18 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %18, %union.rec** @zz_hold, align 8
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %19, %union.rec** @zz_hold, align 8
  %20 = load %union.rec*, %union.rec** @zz_hold, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 11
  br i1 %27, label %37, label %28

; <label>:28                                      ; preds = %12
  %29 = load %union.rec*, %union.rec** @zz_hold, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 1
  %32 = bitcast %union.FIRST_UNION* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp eq i32 %35, 12
  br i1 %36, label %37, label %45

; <label>:37                                      ; preds = %28, %12
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 1
  %41 = bitcast %union.FIRST_UNION* %40 to %struct.anon*
  %42 = getelementptr inbounds %struct.anon, %struct.anon* %41, i32 0, i32 1
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  br label %56

; <label>:45                                      ; preds = %28
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 1
  %49 = bitcast %union.FIRST_UNION* %48 to %struct.anon*
  %50 = getelementptr inbounds %struct.anon, %struct.anon* %49, i32 0, i32 0
  %51 = load i8, i8* %50, align 1
  %52 = zext i8 %51 to i64
  %53 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %52
  %54 = load i8, i8* %53, align 1
  %55 = zext i8 %54 to i32
  br label %56

; <label>:56                                      ; preds = %45, %37
  %57 = phi i32 [ %44, %37 ], [ %55, %45 ]
  store i32 %57, i32* @zz_size, align 4
  %58 = load i32, i32* @zz_size, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %59
  %61 = load %union.rec*, %union.rec** %60, align 8
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 0
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 0
  store %union.rec* %61, %union.rec** %66, align 8
  %67 = load %union.rec*, %union.rec** @zz_hold, align 8
  %68 = load i32, i32* @zz_size, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %69
  store %union.rec* %67, %union.rec** %70, align 8
  br label %114

; <label>:71                                      ; preds = %0
  %72 = load %union.rec*, %union.rec** %2, align 8
  %73 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %72, i32 0, i32 0)
  store %union.rec* %73, %union.rec** %fname, align 8
  %74 = load %union.rec*, %union.rec** %fname, align 8
  %75 = call %union.rec* @ReplaceWithTidy(%union.rec* %74, i32 0)
  store %union.rec* %75, %union.rec** %fname, align 8
  %76 = load %union.rec*, %union.rec** %fname, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 1
  %79 = bitcast %union.FIRST_UNION* %78 to %struct.anon*
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 11
  br i1 %83, label %101, label %84

; <label>:84                                      ; preds = %71
  %85 = load %union.rec*, %union.rec** %fname, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 1
  %88 = bitcast %union.FIRST_UNION* %87 to %struct.anon*
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 12
  br i1 %92, label %101, label %93

; <label>:93                                      ; preds = %84
  %94 = load %union.rec*, %union.rec** %fname, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 1
  %97 = bitcast %union.FIRST_UNION* %96 to %struct.FILE_POS*
  %98 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 6, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %97, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i32 0, i32 0))
  %99 = load %union.rec*, %union.rec** %fname, align 8
  %100 = call i32 @DisposeObject(%union.rec* %99)
  br label %114

; <label>:101                                     ; preds = %84, %71
  %102 = load %union.rec*, %union.rec** %fname, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 4
  %105 = getelementptr inbounds [4 x i8], [4 x i8]* %104, i32 0, i32 0
  %106 = load %union.rec*, %union.rec** %fname, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 1
  %109 = bitcast %union.FIRST_UNION* %108 to %struct.FILE_POS*
  %110 = load i32, i32* %1, align 4
  %111 = icmp eq i32 %110, 114
  %112 = select i1 %111, i32 1, i32 2
  %113 = call zeroext i16 @DefineFile(i8* %105, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i32 0, i32 0), %struct.FILE_POS* %109, i32 6, i32 %112)
  br label %114

; <label>:114                                     ; preds = %101, %93, %56
  ret void
}

declare %union.rec* @LexGetToken() #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

declare i32 @DisposeObject(%union.rec*) #1

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

; Function Attrs: nounwind uwtable
define void @ReadDatabaseDef(i32 %typ, %union.rec* %encl) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %symbs = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %fname = alloca %union.rec*, align 8
  store i32 %typ, i32* %1, align 4
  store %union.rec* %encl, %union.rec** %2, align 8
  %3 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %4 = zext i8 %3 to i32
  store i32 %4, i32* @zz_size, align 4
  %5 = sext i32 %4 to i64
  %6 = icmp uge i64 %5, 265
  br i1 %6, label %7, label %10

; <label>:7                                       ; preds = %0
  %8 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %9 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %8)
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
  store i8 17, i8* %40, align 1
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
  store %union.rec* %41, %union.rec** %symbs, align 8
  %62 = call %union.rec* @LexGetToken()
  store %union.rec* %62, %union.rec** %t, align 8
  br label %63

; <label>:63                                      ; preds = %337, %35
  %64 = load %union.rec*, %union.rec** %t, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 1
  %67 = bitcast %union.FIRST_UNION* %66 to %struct.anon*
  %68 = getelementptr inbounds %struct.anon, %struct.anon* %67, i32 0, i32 0
  %69 = load i8, i8* %68, align 1
  %70 = zext i8 %69 to i32
  %71 = icmp eq i32 %70, 2
  br i1 %71, label %91, label %72

; <label>:72                                      ; preds = %63
  %73 = load %union.rec*, %union.rec** %t, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 1
  %76 = bitcast %union.FIRST_UNION* %75 to %struct.anon*
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 11
  br i1 %80, label %81, label %89

; <label>:81                                      ; preds = %72
  %82 = load %union.rec*, %union.rec** %t, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 4
  %85 = getelementptr inbounds [4 x i8], [4 x i8]* %84, i32 0, i64 0
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = icmp eq i32 %87, 64
  br label %89

; <label>:89                                      ; preds = %81, %72
  %90 = phi i1 [ false, %72 ], [ %88, %81 ]
  br label %91

; <label>:91                                      ; preds = %89, %63
  %92 = phi i1 [ true, %63 ], [ %90, %89 ]
  br i1 %92, label %93, label %339

; <label>:93                                      ; preds = %91
  %94 = load %union.rec*, %union.rec** %t, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 1
  %97 = bitcast %union.FIRST_UNION* %96 to %struct.anon*
  %98 = getelementptr inbounds %struct.anon, %struct.anon* %97, i32 0, i32 0
  %99 = load i8, i8* %98, align 1
  %100 = zext i8 %99 to i32
  %101 = icmp eq i32 %100, 2
  br i1 %101, label %102, label %274

; <label>:102                                     ; preds = %93
  %103 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %104 = zext i8 %103 to i32
  store i32 %104, i32* @zz_size, align 4
  %105 = sext i32 %104 to i64
  %106 = icmp uge i64 %105, 265
  br i1 %106, label %107, label %110

; <label>:107                                     ; preds = %102
  %108 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %109 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %108)
  br label %135

; <label>:110                                     ; preds = %102
  %111 = load i32, i32* @zz_size, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %112
  %114 = load %union.rec*, %union.rec** %113, align 8
  %115 = icmp eq %union.rec* %114, null
  br i1 %115, label %116, label %120

; <label>:116                                     ; preds = %110
  %117 = load i32, i32* @zz_size, align 4
  %118 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %119 = call %union.rec* @GetMemory(i32 %117, %struct.FILE_POS* %118)
  store %union.rec* %119, %union.rec** @zz_hold, align 8
  br label %134

; <label>:120                                     ; preds = %110
  %121 = load i32, i32* @zz_size, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %122
  %124 = load %union.rec*, %union.rec** %123, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  store %union.rec* %124, %union.rec** @zz_hold, align 8
  %125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %127, i32 0, i64 0
  %129 = getelementptr inbounds %struct.LIST, %struct.LIST* %128, i32 0, i32 0
  %130 = load %union.rec*, %union.rec** %129, align 8
  %131 = load i32, i32* @zz_size, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %132
  store %union.rec* %130, %union.rec** %133, align 8
  br label %134

; <label>:134                                     ; preds = %120, %116
  br label %135

; <label>:135                                     ; preds = %134, %107
  %136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 1
  %139 = bitcast %union.FIRST_UNION* %138 to %struct.anon*
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 0
  store i8 0, i8* %140, align 1
  %141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 0
  %145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %144, i32 0, i64 1
  %146 = getelementptr inbounds %struct.LIST, %struct.LIST* %145, i32 0, i32 1
  store %union.rec* %141, %union.rec** %146, align 8
  %147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %149, i32 0, i64 1
  %151 = getelementptr inbounds %struct.LIST, %struct.LIST* %150, i32 0, i32 0
  store %union.rec* %141, %union.rec** %151, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 0
  %155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %154, i32 0, i64 0
  %156 = getelementptr inbounds %struct.LIST, %struct.LIST* %155, i32 0, i32 1
  store %union.rec* %141, %union.rec** %156, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 0
  %160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %159, i32 0, i64 0
  %161 = getelementptr inbounds %struct.LIST, %struct.LIST* %160, i32 0, i32 0
  store %union.rec* %141, %union.rec** %161, align 8
  store %union.rec* %141, %union.rec** @xx_link, align 8
  %162 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %162, %union.rec** @zz_res, align 8
  %163 = load %union.rec*, %union.rec** %symbs, align 8
  store %union.rec* %163, %union.rec** @zz_hold, align 8
  %164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %165 = icmp eq %union.rec* %164, null
  br i1 %165, label %166, label %168

; <label>:166                                     ; preds = %135
  %167 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %216

; <label>:168                                     ; preds = %135
  %169 = load %union.rec*, %union.rec** @zz_res, align 8
  %170 = icmp eq %union.rec* %169, null
  br i1 %170, label %171, label %173

; <label>:171                                     ; preds = %168
  %172 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %214

; <label>:173                                     ; preds = %168
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 0
  %177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %176, i32 0, i64 0
  %178 = getelementptr inbounds %struct.LIST, %struct.LIST* %177, i32 0, i32 0
  %179 = load %union.rec*, %union.rec** %178, align 8
  store %union.rec* %179, %union.rec** @zz_tmp, align 8
  %180 = load %union.rec*, %union.rec** @zz_res, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %182, i32 0, i64 0
  %184 = getelementptr inbounds %struct.LIST, %struct.LIST* %183, i32 0, i32 0
  %185 = load %union.rec*, %union.rec** %184, align 8
  %186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 0
  %189 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %188, i32 0, i64 0
  %190 = getelementptr inbounds %struct.LIST, %struct.LIST* %189, i32 0, i32 0
  store %union.rec* %185, %union.rec** %190, align 8
  %191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %192 = load %union.rec*, %union.rec** @zz_res, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 0
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %196, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 0
  %200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %199, i32 0, i64 0
  %201 = getelementptr inbounds %struct.LIST, %struct.LIST* %200, i32 0, i32 1
  store %union.rec* %191, %union.rec** %201, align 8
  %202 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  %204 = bitcast %union.rec* %203 to %struct.word_type*
  %205 = getelementptr inbounds %struct.word_type, %struct.word_type* %204, i32 0, i32 0
  %206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %205, i32 0, i64 0
  %207 = getelementptr inbounds %struct.LIST, %struct.LIST* %206, i32 0, i32 0
  store %union.rec* %202, %union.rec** %207, align 8
  %208 = load %union.rec*, %union.rec** @zz_res, align 8
  %209 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 0
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 1
  store %union.rec* %208, %union.rec** %213, align 8
  br label %214

; <label>:214                                     ; preds = %173, %171
  %215 = phi %union.rec* [ %172, %171 ], [ %208, %173 ]
  br label %216

; <label>:216                                     ; preds = %214, %166
  %217 = phi %union.rec* [ %167, %166 ], [ %215, %214 ]
  %218 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %218, %union.rec** @zz_res, align 8
  %219 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %219, %union.rec** @zz_hold, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %221 = icmp eq %union.rec* %220, null
  br i1 %221, label %222, label %224

; <label>:222                                     ; preds = %216
  %223 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %272

; <label>:224                                     ; preds = %216
  %225 = load %union.rec*, %union.rec** @zz_res, align 8
  %226 = icmp eq %union.rec* %225, null
  br i1 %226, label %227, label %229

; <label>:227                                     ; preds = %224
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %270

; <label>:229                                     ; preds = %224
  %230 = load %union.rec*, %union.rec** @zz_hold, align 8
  %231 = bitcast %union.rec* %230 to %struct.word_type*
  %232 = getelementptr inbounds %struct.word_type, %struct.word_type* %231, i32 0, i32 0
  %233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %232, i32 0, i64 1
  %234 = getelementptr inbounds %struct.LIST, %struct.LIST* %233, i32 0, i32 0
  %235 = load %union.rec*, %union.rec** %234, align 8
  store %union.rec* %235, %union.rec** @zz_tmp, align 8
  %236 = load %union.rec*, %union.rec** @zz_res, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 1
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %240, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 1
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 0
  store %union.rec* %241, %union.rec** %246, align 8
  %247 = load %union.rec*, %union.rec** @zz_hold, align 8
  %248 = load %union.rec*, %union.rec** @zz_res, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 1
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %252, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 1
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 1
  store %union.rec* %247, %union.rec** %257, align 8
  %258 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  %260 = bitcast %union.rec* %259 to %struct.word_type*
  %261 = getelementptr inbounds %struct.word_type, %struct.word_type* %260, i32 0, i32 0
  %262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %261, i32 0, i64 1
  %263 = getelementptr inbounds %struct.LIST, %struct.LIST* %262, i32 0, i32 0
  store %union.rec* %258, %union.rec** %263, align 8
  %264 = load %union.rec*, %union.rec** @zz_res, align 8
  %265 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 0
  %268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %267, i32 0, i64 1
  %269 = getelementptr inbounds %struct.LIST, %struct.LIST* %268, i32 0, i32 1
  store %union.rec* %264, %union.rec** %269, align 8
  br label %270

; <label>:270                                     ; preds = %229, %227
  %271 = phi %union.rec* [ %228, %227 ], [ %264, %229 ]
  br label %272

; <label>:272                                     ; preds = %270, %222
  %273 = phi %union.rec* [ %223, %222 ], [ %271, %270 ]
  br label %337

; <label>:274                                     ; preds = %93
  %275 = load %union.rec*, %union.rec** %t, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 1
  %278 = bitcast %union.FIRST_UNION* %277 to %struct.FILE_POS*
  %279 = load %union.rec*, %union.rec** %t, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 4
  %282 = getelementptr inbounds [4 x i8], [4 x i8]* %281, i32 0, i32 0
  %283 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i32 0, i32 0), i32 2, %struct.FILE_POS* %278, i8* %282)
  %284 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %285, %union.rec** @zz_hold, align 8
  %286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 1
  %289 = bitcast %union.FIRST_UNION* %288 to %struct.anon*
  %290 = getelementptr inbounds %struct.anon, %struct.anon* %289, i32 0, i32 0
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %292, 11
  br i1 %293, label %303, label %294

; <label>:294                                     ; preds = %274
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 1
  %298 = bitcast %union.FIRST_UNION* %297 to %struct.anon*
  %299 = getelementptr inbounds %struct.anon, %struct.anon* %298, i32 0, i32 0
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = icmp eq i32 %301, 12
  br i1 %302, label %303, label %311

; <label>:303                                     ; preds = %294, %274
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 1
  %307 = bitcast %union.FIRST_UNION* %306 to %struct.anon*
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 1
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  br label %322

; <label>:311                                     ; preds = %294
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 1
  %315 = bitcast %union.FIRST_UNION* %314 to %struct.anon*
  %316 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 0
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i64
  %319 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %318
  %320 = load i8, i8* %319, align 1
  %321 = zext i8 %320 to i32
  br label %322

; <label>:322                                     ; preds = %311, %303
  %323 = phi i32 [ %310, %303 ], [ %321, %311 ]
  store i32 %323, i32* @zz_size, align 4
  %324 = load i32, i32* @zz_size, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %325
  %327 = load %union.rec*, %union.rec** %326, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 0
  %331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %330, i32 0, i64 0
  %332 = getelementptr inbounds %struct.LIST, %struct.LIST* %331, i32 0, i32 0
  store %union.rec* %327, %union.rec** %332, align 8
  %333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %334 = load i32, i32* @zz_size, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %335
  store %union.rec* %333, %union.rec** %336, align 8
  br label %337

; <label>:337                                     ; preds = %322, %272
  %338 = call %union.rec* @LexGetToken()
  store %union.rec* %338, %union.rec** %t, align 8
  br label %63

; <label>:339                                     ; preds = %91
  %340 = load %union.rec*, %union.rec** %t, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 1
  %343 = bitcast %union.FIRST_UNION* %342 to %struct.anon*
  %344 = getelementptr inbounds %struct.anon, %struct.anon* %343, i32 0, i32 0
  %345 = load i8, i8* %344, align 1
  %346 = zext i8 %345 to i32
  %347 = icmp ne i32 %346, 102
  br i1 %347, label %348, label %407

; <label>:348                                     ; preds = %339
  %349 = load %union.rec*, %union.rec** %t, align 8
  %350 = bitcast %union.rec* %349 to %struct.word_type*
  %351 = getelementptr inbounds %struct.word_type, %struct.word_type* %350, i32 0, i32 1
  %352 = bitcast %union.FIRST_UNION* %351 to %struct.FILE_POS*
  %353 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 8, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct.FILE_POS* %352, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %354 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %354, %union.rec** @zz_hold, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %355, %union.rec** @zz_hold, align 8
  %356 = load %union.rec*, %union.rec** @zz_hold, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 1
  %359 = bitcast %union.FIRST_UNION* %358 to %struct.anon*
  %360 = getelementptr inbounds %struct.anon, %struct.anon* %359, i32 0, i32 0
  %361 = load i8, i8* %360, align 1
  %362 = zext i8 %361 to i32
  %363 = icmp eq i32 %362, 11
  br i1 %363, label %373, label %364

; <label>:364                                     ; preds = %348
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 1
  %368 = bitcast %union.FIRST_UNION* %367 to %struct.anon*
  %369 = getelementptr inbounds %struct.anon, %struct.anon* %368, i32 0, i32 0
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i32
  %372 = icmp eq i32 %371, 12
  br i1 %372, label %373, label %381

; <label>:373                                     ; preds = %364, %348
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 1
  %377 = bitcast %union.FIRST_UNION* %376 to %struct.anon*
  %378 = getelementptr inbounds %struct.anon, %struct.anon* %377, i32 0, i32 1
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  br label %392

; <label>:381                                     ; preds = %364
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 1
  %385 = bitcast %union.FIRST_UNION* %384 to %struct.anon*
  %386 = getelementptr inbounds %struct.anon, %struct.anon* %385, i32 0, i32 0
  %387 = load i8, i8* %386, align 1
  %388 = zext i8 %387 to i64
  %389 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %388
  %390 = load i8, i8* %389, align 1
  %391 = zext i8 %390 to i32
  br label %392

; <label>:392                                     ; preds = %381, %373
  %393 = phi i32 [ %380, %373 ], [ %391, %381 ]
  store i32 %393, i32* @zz_size, align 4
  %394 = load i32, i32* @zz_size, align 4
  %395 = sext i32 %394 to i64
  %396 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %395
  %397 = load %union.rec*, %union.rec** %396, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 0
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 0
  store %union.rec* %397, %union.rec** %402, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %404 = load i32, i32* @zz_size, align 4
  %405 = sext i32 %404 to i64
  %406 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %405
  store %union.rec* %403, %union.rec** %406, align 8
  br label %484

; <label>:407                                     ; preds = %339
  %408 = load %union.rec*, %union.rec** %symbs, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 0
  %411 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %410, i32 0, i64 0
  %412 = getelementptr inbounds %struct.LIST, %struct.LIST* %411, i32 0, i32 1
  %413 = load %union.rec*, %union.rec** %412, align 8
  %414 = load %union.rec*, %union.rec** %symbs, align 8
  %415 = icmp eq %union.rec* %413, %414
  br i1 %415, label %416, label %422

; <label>:416                                     ; preds = %407
  %417 = load %union.rec*, %union.rec** %t, align 8
  %418 = bitcast %union.rec* %417 to %struct.word_type*
  %419 = getelementptr inbounds %struct.word_type, %struct.word_type* %418, i32 0, i32 1
  %420 = bitcast %union.FIRST_UNION* %419 to %struct.FILE_POS*
  %421 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 9, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %420, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  br label %422

; <label>:422                                     ; preds = %416, %407
  %423 = load %union.rec*, %union.rec** %2, align 8
  %424 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %423, i32 0, i32 0)
  store %union.rec* %424, %union.rec** %fname, align 8
  %425 = load %union.rec*, %union.rec** %fname, align 8
  %426 = call %union.rec* @ReplaceWithTidy(%union.rec* %425, i32 0)
  store %union.rec* %426, %union.rec** %fname, align 8
  %427 = load %union.rec*, %union.rec** %fname, align 8
  %428 = bitcast %union.rec* %427 to %struct.word_type*
  %429 = getelementptr inbounds %struct.word_type, %struct.word_type* %428, i32 0, i32 1
  %430 = bitcast %union.FIRST_UNION* %429 to %struct.anon*
  %431 = getelementptr inbounds %struct.anon, %struct.anon* %430, i32 0, i32 0
  %432 = load i8, i8* %431, align 1
  %433 = zext i8 %432 to i32
  %434 = icmp eq i32 %433, 11
  br i1 %434, label %452, label %435

; <label>:435                                     ; preds = %422
  %436 = load %union.rec*, %union.rec** %fname, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 1
  %439 = bitcast %union.FIRST_UNION* %438 to %struct.anon*
  %440 = getelementptr inbounds %struct.anon, %struct.anon* %439, i32 0, i32 0
  %441 = load i8, i8* %440, align 1
  %442 = zext i8 %441 to i32
  %443 = icmp eq i32 %442, 12
  br i1 %443, label %452, label %444

; <label>:444                                     ; preds = %435
  %445 = load %union.rec*, %union.rec** %fname, align 8
  %446 = bitcast %union.rec* %445 to %struct.word_type*
  %447 = getelementptr inbounds %struct.word_type, %struct.word_type* %446, i32 0, i32 1
  %448 = bitcast %union.FIRST_UNION* %447 to %struct.FILE_POS*
  %449 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 10, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %448, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %450 = load %union.rec*, %union.rec** %fname, align 8
  %451 = call i32 @DisposeObject(%union.rec* %450)
  br label %484

; <label>:452                                     ; preds = %435, %422
  %453 = load %union.rec*, %union.rec** %fname, align 8
  %454 = bitcast %union.rec* %453 to %struct.word_type*
  %455 = getelementptr inbounds %struct.word_type, %struct.word_type* %454, i32 0, i32 4
  %456 = getelementptr inbounds [4 x i8], [4 x i8]* %455, i32 0, i32 0
  %457 = call i32 @StringEndsWith(i8* %456, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0))
  %458 = icmp ne i32 %457, 0
  br i1 %458, label %459, label %467

; <label>:459                                     ; preds = %452
  %460 = load %union.rec*, %union.rec** %fname, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 1
  %463 = bitcast %union.FIRST_UNION* %462 to %struct.FILE_POS*
  %464 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 47, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %463, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.8, i32 0, i32 0))
  %465 = load %union.rec*, %union.rec** %fname, align 8
  %466 = call i32 @DisposeObject(%union.rec* %465)
  br label %484

; <label>:467                                     ; preds = %452
  %468 = load %union.rec*, %union.rec** %symbs, align 8
  %469 = bitcast %union.rec* %468 to %struct.word_type*
  %470 = getelementptr inbounds %struct.word_type, %struct.word_type* %469, i32 0, i32 0
  %471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %470, i32 0, i64 0
  %472 = getelementptr inbounds %struct.LIST, %struct.LIST* %471, i32 0, i32 1
  %473 = load %union.rec*, %union.rec** %472, align 8
  %474 = load %union.rec*, %union.rec** %symbs, align 8
  %475 = icmp ne %union.rec* %473, %474
  br i1 %475, label %476, label %484

; <label>:476                                     ; preds = %467
  %477 = load %union.rec*, %union.rec** %fname, align 8
  %478 = load i32, i32* %1, align 4
  %479 = icmp eq i32 %478, 116
  %480 = select i1 %479, i32 3, i32 4
  %481 = load %union.rec*, %union.rec** %symbs, align 8
  %482 = load i32, i32* @InMemoryDbIndexes, align 4
  %483 = call %union.rec* @DbLoad(%union.rec* %477, i32 %480, i32 1, %union.rec* %481, i32 %482)
  br label %484

; <label>:484                                     ; preds = %392, %444, %459, %476, %467
  ret void
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @StringEndsWith(i8*, i8*) #1

declare %union.rec* @DbLoad(%union.rec*, i32, i32, %union.rec*, i32) #1

; Function Attrs: nounwind uwtable
define void @ReadDefinitions(%union.rec** %token, %union.rec* %encl, i8 zeroext %res_type) #0 {
  %1 = alloca %union.rec**, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i8, align 1
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %res_target = alloca %union.rec*, align 8
  %export_list = alloca %union.rec*, align 8
  %import_list = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %curr_encl = alloca %union.rec*, align 8
  %compulsory_par = alloca i32, align 4
  %has_import_encl = alloca i32, align 4
  %prec = alloca i32, align 4
  store %union.rec** %token, %union.rec*** %1, align 8
  store %union.rec* %encl, %union.rec** %2, align 8
  store i8 %res_type, i8* %3, align 1
  %4 = load %union.rec**, %union.rec*** %1, align 8
  %5 = load %union.rec*, %union.rec** %4, align 8
  store %union.rec* %5, %union.rec** %t, align 8
  br label %6

; <label>:6                                       ; preds = %3818, %212, %131, %63, %0
  %7 = load i8, i8* %3, align 1
  %8 = zext i8 %7 to i32
  %9 = icmp eq i32 %8, 143
  br i1 %9, label %44, label %10

; <label>:10                                      ; preds = %6
  %11 = load %union.rec*, %union.rec** %t, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 1
  %14 = bitcast %union.FIRST_UNION* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %19, label %26

; <label>:19                                      ; preds = %10
  %20 = load %union.rec*, %union.rec** %t, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 4
  %23 = getelementptr inbounds [4 x i8], [4 x i8]* %22, i32 0, i32 0
  %24 = call i32 @strcmp(i8* %23, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

; <label>:26                                      ; preds = %19, %10
  %27 = load %union.rec*, %union.rec** %t, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 1
  %30 = bitcast %union.FIRST_UNION* %29 to %struct.anon*
  %31 = getelementptr inbounds %struct.anon, %struct.anon* %30, i32 0, i32 0
  %32 = load i8, i8* %31, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %33, 11
  br i1 %34, label %35, label %42

; <label>:35                                      ; preds = %26
  %36 = load %union.rec*, %union.rec** %t, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 4
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %38, i32 0, i32 0
  %40 = call i32 @strcmp(i8* %39, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %41 = icmp eq i32 %40, 0
  br label %42

; <label>:42                                      ; preds = %35, %26
  %43 = phi i1 [ false, %26 ], [ %41, %35 ]
  br label %44

; <label>:44                                      ; preds = %42, %19, %6
  %45 = phi i1 [ true, %19 ], [ true, %6 ], [ %43, %42 ]
  br i1 %45, label %46, label %3819

; <label>:46                                      ; preds = %44
  %47 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %47, %union.rec** %curr_encl, align 8
  %48 = load %union.rec*, %union.rec** %t, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 1
  %51 = bitcast %union.FIRST_UNION* %50 to %struct.anon*
  %52 = getelementptr inbounds %struct.anon, %struct.anon* %51, i32 0, i32 0
  %53 = load i8, i8* %52, align 1
  %54 = zext i8 %53 to i32
  %55 = icmp eq i32 %54, 11
  br i1 %55, label %56, label %66

; <label>:56                                      ; preds = %46
  %57 = load %union.rec*, %union.rec** %t, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 4
  %60 = getelementptr inbounds [4 x i8], [4 x i8]* %59, i32 0, i32 0
  %61 = call i32 @strcmp(i8* %60, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i32 0, i32 0)) #3
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %56
  %64 = load %union.rec*, %union.rec** %2, align 8
  call void @ReadLangDef(%union.rec* %64)
  %65 = call %union.rec* @LexGetToken()
  store %union.rec* %65, %union.rec** %t, align 8
  br label %6

; <label>:66                                      ; preds = %56, %46
  %67 = load %union.rec*, %union.rec** %t, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  %74 = icmp eq i32 %73, 114
  br i1 %74, label %84, label %75

; <label>:75                                      ; preds = %66
  %76 = load %union.rec*, %union.rec** %t, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 1
  %79 = bitcast %union.FIRST_UNION* %78 to %struct.anon*
  %80 = getelementptr inbounds %struct.anon, %struct.anon* %79, i32 0, i32 0
  %81 = load i8, i8* %80, align 1
  %82 = zext i8 %81 to i32
  %83 = icmp eq i32 %82, 115
  br i1 %83, label %84, label %147

; <label>:84                                      ; preds = %75, %66
  %85 = load %union.rec*, %union.rec** %t, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 1
  %88 = bitcast %union.FIRST_UNION* %87 to %struct.anon*
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = load %union.rec*, %union.rec** %2, align 8
  call void @ReadPrependDef(i32 %91, %union.rec* %92)
  %93 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %93, %union.rec** @zz_hold, align 8
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %94, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 1
  %98 = bitcast %union.FIRST_UNION* %97 to %struct.anon*
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 11
  br i1 %102, label %112, label %103

; <label>:103                                     ; preds = %84
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 1
  %107 = bitcast %union.FIRST_UNION* %106 to %struct.anon*
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 12
  br i1 %111, label %112, label %120

; <label>:112                                     ; preds = %103, %84
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 1
  %116 = bitcast %union.FIRST_UNION* %115 to %struct.anon*
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 1
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  br label %131

; <label>:120                                     ; preds = %103
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 1
  %124 = bitcast %union.FIRST_UNION* %123 to %struct.anon*
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %127
  %129 = load i8, i8* %128, align 1
  %130 = zext i8 %129 to i32
  br label %131

; <label>:131                                     ; preds = %120, %112
  %132 = phi i32 [ %119, %112 ], [ %130, %120 ]
  store i32 %132, i32* @zz_size, align 4
  %133 = load i32, i32* @zz_size, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %134
  %136 = load %union.rec*, %union.rec** %135, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 0
  %140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %139, i32 0, i64 0
  %141 = getelementptr inbounds %struct.LIST, %struct.LIST* %140, i32 0, i32 0
  store %union.rec* %136, %union.rec** %141, align 8
  %142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %143 = load i32, i32* @zz_size, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %144
  store %union.rec* %142, %union.rec** %145, align 8
  %146 = call %union.rec* @LexGetToken()
  store %union.rec* %146, %union.rec** %t, align 8
  br label %6

; <label>:147                                     ; preds = %75
  %148 = load %union.rec*, %union.rec** %t, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 1
  %151 = bitcast %union.FIRST_UNION* %150 to %struct.anon*
  %152 = getelementptr inbounds %struct.anon, %struct.anon* %151, i32 0, i32 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 116
  br i1 %155, label %165, label %156

; <label>:156                                     ; preds = %147
  %157 = load %union.rec*, %union.rec** %t, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 1
  %160 = bitcast %union.FIRST_UNION* %159 to %struct.anon*
  %161 = getelementptr inbounds %struct.anon, %struct.anon* %160, i32 0, i32 0
  %162 = load i8, i8* %161, align 1
  %163 = zext i8 %162 to i32
  %164 = icmp eq i32 %163, 117
  br i1 %164, label %165, label %228

; <label>:165                                     ; preds = %156, %147
  %166 = load %union.rec*, %union.rec** %t, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 1
  %169 = bitcast %union.FIRST_UNION* %168 to %struct.anon*
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = load %union.rec*, %union.rec** %2, align 8
  call void @ReadDatabaseDef(i32 %172, %union.rec* %173)
  %174 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %174, %union.rec** @zz_hold, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %175, %union.rec** @zz_hold, align 8
  %176 = load %union.rec*, %union.rec** @zz_hold, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 1
  %179 = bitcast %union.FIRST_UNION* %178 to %struct.anon*
  %180 = getelementptr inbounds %struct.anon, %struct.anon* %179, i32 0, i32 0
  %181 = load i8, i8* %180, align 1
  %182 = zext i8 %181 to i32
  %183 = icmp eq i32 %182, 11
  br i1 %183, label %193, label %184

; <label>:184                                     ; preds = %165
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 1
  %188 = bitcast %union.FIRST_UNION* %187 to %struct.anon*
  %189 = getelementptr inbounds %struct.anon, %struct.anon* %188, i32 0, i32 0
  %190 = load i8, i8* %189, align 1
  %191 = zext i8 %190 to i32
  %192 = icmp eq i32 %191, 12
  br i1 %192, label %193, label %201

; <label>:193                                     ; preds = %184, %165
  %194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %195 = bitcast %union.rec* %194 to %struct.word_type*
  %196 = getelementptr inbounds %struct.word_type, %struct.word_type* %195, i32 0, i32 1
  %197 = bitcast %union.FIRST_UNION* %196 to %struct.anon*
  %198 = getelementptr inbounds %struct.anon, %struct.anon* %197, i32 0, i32 1
  %199 = load i8, i8* %198, align 1
  %200 = zext i8 %199 to i32
  br label %212

; <label>:201                                     ; preds = %184
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 1
  %205 = bitcast %union.FIRST_UNION* %204 to %struct.anon*
  %206 = getelementptr inbounds %struct.anon, %struct.anon* %205, i32 0, i32 0
  %207 = load i8, i8* %206, align 1
  %208 = zext i8 %207 to i64
  %209 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %208
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  br label %212

; <label>:212                                     ; preds = %201, %193
  %213 = phi i32 [ %200, %193 ], [ %211, %201 ]
  store i32 %213, i32* @zz_size, align 4
  %214 = load i32, i32* @zz_size, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %215
  %217 = load %union.rec*, %union.rec** %216, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %220, i32 0, i64 0
  %222 = getelementptr inbounds %struct.LIST, %struct.LIST* %221, i32 0, i32 0
  store %union.rec* %217, %union.rec** %222, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = load i32, i32* @zz_size, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %225
  store %union.rec* %223, %union.rec** %226, align 8
  %227 = call %union.rec* @LexGetToken()
  store %union.rec* %227, %union.rec** %t, align 8
  br label %6

; <label>:228                                     ; preds = %156
  br label %229

; <label>:229                                     ; preds = %228
  br label %230

; <label>:230                                     ; preds = %229
  %231 = load %union.rec*, %union.rec** %t, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 1
  %234 = bitcast %union.FIRST_UNION* %233 to %struct.anon*
  %235 = getelementptr inbounds %struct.anon, %struct.anon* %234, i32 0, i32 0
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 11
  br i1 %238, label %239, label %246

; <label>:239                                     ; preds = %230
  %240 = load %union.rec*, %union.rec** %t, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 4
  %243 = getelementptr inbounds [4 x i8], [4 x i8]* %242, i32 0, i32 0
  %244 = call i32 @strcmp(i8* %243, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %245 = icmp eq i32 %244, 0
  br i1 %245, label %327, label %246

; <label>:246                                     ; preds = %239, %230
  %247 = load %union.rec*, %union.rec** %t, align 8
  %248 = bitcast %union.rec* %247 to %struct.word_type*
  %249 = getelementptr inbounds %struct.word_type, %struct.word_type* %248, i32 0, i32 1
  %250 = bitcast %union.FIRST_UNION* %249 to %struct.anon*
  %251 = getelementptr inbounds %struct.anon, %struct.anon* %250, i32 0, i32 0
  %252 = load i8, i8* %251, align 1
  %253 = zext i8 %252 to i32
  %254 = icmp eq i32 %253, 11
  br i1 %254, label %255, label %262

; <label>:255                                     ; preds = %246
  %256 = load %union.rec*, %union.rec** %t, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 4
  %259 = getelementptr inbounds [4 x i8], [4 x i8]* %258, i32 0, i32 0
  %260 = call i32 @strcmp(i8* %259, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %261 = icmp eq i32 %260, 0
  br i1 %261, label %327, label %262

; <label>:262                                     ; preds = %255, %246
  %263 = load %union.rec*, %union.rec** %t, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 1
  %266 = bitcast %union.FIRST_UNION* %265 to %struct.anon*
  %267 = getelementptr inbounds %struct.anon, %struct.anon* %266, i32 0, i32 0
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp eq i32 %269, 11
  br i1 %270, label %271, label %278

; <label>:271                                     ; preds = %262
  %272 = load %union.rec*, %union.rec** %t, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 4
  %275 = getelementptr inbounds [4 x i8], [4 x i8]* %274, i32 0, i32 0
  %276 = call i32 @strcmp(i8* %275, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %327, label %278

; <label>:278                                     ; preds = %271, %262
  %279 = load %union.rec*, %union.rec** %t, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 1
  %282 = bitcast %union.FIRST_UNION* %281 to %struct.anon*
  %283 = getelementptr inbounds %struct.anon, %struct.anon* %282, i32 0, i32 0
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp eq i32 %285, 11
  br i1 %286, label %287, label %294

; <label>:287                                     ; preds = %278
  %288 = load %union.rec*, %union.rec** %t, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 4
  %291 = getelementptr inbounds [4 x i8], [4 x i8]* %290, i32 0, i32 0
  %292 = call i32 @strcmp(i8* %291, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %293 = icmp eq i32 %292, 0
  br i1 %293, label %327, label %294

; <label>:294                                     ; preds = %287, %278
  %295 = load %union.rec*, %union.rec** %t, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 1
  %298 = bitcast %union.FIRST_UNION* %297 to %struct.anon*
  %299 = getelementptr inbounds %struct.anon, %struct.anon* %298, i32 0, i32 0
  %300 = load i8, i8* %299, align 1
  %301 = zext i8 %300 to i32
  %302 = icmp eq i32 %301, 11
  br i1 %302, label %303, label %310

; <label>:303                                     ; preds = %294
  %304 = load %union.rec*, %union.rec** %t, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 4
  %307 = getelementptr inbounds [4 x i8], [4 x i8]* %306, i32 0, i32 0
  %308 = call i32 @strcmp(i8* %307, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %327, label %310

; <label>:310                                     ; preds = %303, %294
  %311 = load %union.rec*, %union.rec** %t, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 1
  %314 = bitcast %union.FIRST_UNION* %313 to %struct.anon*
  %315 = getelementptr inbounds %struct.anon, %struct.anon* %314, i32 0, i32 0
  %316 = load i8, i8* %315, align 1
  %317 = zext i8 %316 to i32
  %318 = icmp eq i32 %317, 11
  br i1 %318, label %319, label %326

; <label>:319                                     ; preds = %310
  %320 = load %union.rec*, %union.rec** %t, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 4
  %323 = getelementptr inbounds [4 x i8], [4 x i8]* %322, i32 0, i32 0
  %324 = call i32 @strcmp(i8* %323, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %325 = icmp eq i32 %324, 0
  br i1 %325, label %327, label %326

; <label>:326                                     ; preds = %319, %310
  br label %3819

; <label>:327                                     ; preds = %319, %303, %287, %271, %255, %239
  call void @BodyParNotAllowed()
  %328 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %329 = zext i8 %328 to i32
  store i32 %329, i32* @zz_size, align 4
  %330 = sext i32 %329 to i64
  %331 = icmp uge i64 %330, 265
  br i1 %331, label %332, label %335

; <label>:332                                     ; preds = %327
  %333 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %334 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %333)
  br label %360

; <label>:335                                     ; preds = %327
  %336 = load i32, i32* @zz_size, align 4
  %337 = sext i32 %336 to i64
  %338 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %337
  %339 = load %union.rec*, %union.rec** %338, align 8
  %340 = icmp eq %union.rec* %339, null
  br i1 %340, label %341, label %345

; <label>:341                                     ; preds = %335
  %342 = load i32, i32* @zz_size, align 4
  %343 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %344 = call %union.rec* @GetMemory(i32 %342, %struct.FILE_POS* %343)
  store %union.rec* %344, %union.rec** @zz_hold, align 8
  br label %359

; <label>:345                                     ; preds = %335
  %346 = load i32, i32* @zz_size, align 4
  %347 = sext i32 %346 to i64
  %348 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %347
  %349 = load %union.rec*, %union.rec** %348, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  store %union.rec* %349, %union.rec** @zz_hold, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 0
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  %355 = load %union.rec*, %union.rec** %354, align 8
  %356 = load i32, i32* @zz_size, align 4
  %357 = sext i32 %356 to i64
  %358 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %357
  store %union.rec* %355, %union.rec** %358, align 8
  br label %359

; <label>:359                                     ; preds = %345, %341
  br label %360

; <label>:360                                     ; preds = %359, %332
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %362 = bitcast %union.rec* %361 to %struct.word_type*
  %363 = getelementptr inbounds %struct.word_type, %struct.word_type* %362, i32 0, i32 1
  %364 = bitcast %union.FIRST_UNION* %363 to %struct.anon*
  %365 = getelementptr inbounds %struct.anon, %struct.anon* %364, i32 0, i32 0
  store i8 17, i8* %365, align 1
  %366 = load %union.rec*, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 1
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 1
  store %union.rec* %366, %union.rec** %371, align 8
  %372 = load %union.rec*, %union.rec** @zz_hold, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 0
  %375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %374, i32 0, i64 1
  %376 = getelementptr inbounds %struct.LIST, %struct.LIST* %375, i32 0, i32 0
  store %union.rec* %366, %union.rec** %376, align 8
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 0
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 0
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 1
  store %union.rec* %366, %union.rec** %381, align 8
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 0
  %385 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %384, i32 0, i64 0
  %386 = getelementptr inbounds %struct.LIST, %struct.LIST* %385, i32 0, i32 0
  store %union.rec* %366, %union.rec** %386, align 8
  store %union.rec* %366, %union.rec** %import_list, align 8
  store i32 0, i32* %has_import_encl, align 4
  %387 = load %union.rec*, %union.rec** %t, align 8
  %388 = bitcast %union.rec* %387 to %struct.word_type*
  %389 = getelementptr inbounds %struct.word_type, %struct.word_type* %388, i32 0, i32 1
  %390 = bitcast %union.FIRST_UNION* %389 to %struct.anon*
  %391 = getelementptr inbounds %struct.anon, %struct.anon* %390, i32 0, i32 0
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 11
  br i1 %394, label %395, label %877

; <label>:395                                     ; preds = %360
  %396 = load %union.rec*, %union.rec** %t, align 8
  %397 = bitcast %union.rec* %396 to %struct.word_type*
  %398 = getelementptr inbounds %struct.word_type, %struct.word_type* %397, i32 0, i32 4
  %399 = getelementptr inbounds [4 x i8], [4 x i8]* %398, i32 0, i32 0
  %400 = call i32 @strcmp(i8* %399, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %401 = icmp eq i32 %400, 0
  br i1 %401, label %402, label %877

; <label>:402                                     ; preds = %395
  %403 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %403, %union.rec** @zz_hold, align 8
  %404 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %404, %union.rec** @zz_hold, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 1
  %408 = bitcast %union.FIRST_UNION* %407 to %struct.anon*
  %409 = getelementptr inbounds %struct.anon, %struct.anon* %408, i32 0, i32 0
  %410 = load i8, i8* %409, align 1
  %411 = zext i8 %410 to i32
  %412 = icmp eq i32 %411, 11
  br i1 %412, label %422, label %413

; <label>:413                                     ; preds = %402
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 1
  %417 = bitcast %union.FIRST_UNION* %416 to %struct.anon*
  %418 = getelementptr inbounds %struct.anon, %struct.anon* %417, i32 0, i32 0
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i32
  %421 = icmp eq i32 %420, 12
  br i1 %421, label %422, label %430

; <label>:422                                     ; preds = %413, %402
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 1
  %426 = bitcast %union.FIRST_UNION* %425 to %struct.anon*
  %427 = getelementptr inbounds %struct.anon, %struct.anon* %426, i32 0, i32 1
  %428 = load i8, i8* %427, align 1
  %429 = zext i8 %428 to i32
  br label %441

; <label>:430                                     ; preds = %413
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 1
  %434 = bitcast %union.FIRST_UNION* %433 to %struct.anon*
  %435 = getelementptr inbounds %struct.anon, %struct.anon* %434, i32 0, i32 0
  %436 = load i8, i8* %435, align 1
  %437 = zext i8 %436 to i64
  %438 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %437
  %439 = load i8, i8* %438, align 1
  %440 = zext i8 %439 to i32
  br label %441

; <label>:441                                     ; preds = %430, %422
  %442 = phi i32 [ %429, %422 ], [ %440, %430 ]
  store i32 %442, i32* @zz_size, align 4
  %443 = load i32, i32* @zz_size, align 4
  %444 = sext i32 %443 to i64
  %445 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %444
  %446 = load %union.rec*, %union.rec** %445, align 8
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %448 = bitcast %union.rec* %447 to %struct.word_type*
  %449 = getelementptr inbounds %struct.word_type, %struct.word_type* %448, i32 0, i32 0
  %450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %449, i32 0, i64 0
  %451 = getelementptr inbounds %struct.LIST, %struct.LIST* %450, i32 0, i32 0
  store %union.rec* %446, %union.rec** %451, align 8
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %453 = load i32, i32* @zz_size, align 4
  %454 = sext i32 %453 to i64
  %455 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %454
  store %union.rec* %452, %union.rec** %455, align 8
  %456 = call %union.rec* @LexGetToken()
  store %union.rec* %456, %union.rec** %t, align 8
  br label %457

; <label>:457                                     ; preds = %874, %441
  %458 = load %union.rec*, %union.rec** %t, align 8
  %459 = bitcast %union.rec* %458 to %struct.word_type*
  %460 = getelementptr inbounds %struct.word_type, %struct.word_type* %459, i32 0, i32 1
  %461 = bitcast %union.FIRST_UNION* %460 to %struct.anon*
  %462 = getelementptr inbounds %struct.anon, %struct.anon* %461, i32 0, i32 0
  %463 = load i8, i8* %462, align 1
  %464 = zext i8 %463 to i32
  %465 = icmp eq i32 %464, 2
  br i1 %465, label %544, label %466

; <label>:466                                     ; preds = %457
  %467 = load %union.rec*, %union.rec** %t, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 1
  %470 = bitcast %union.FIRST_UNION* %469 to %struct.anon*
  %471 = getelementptr inbounds %struct.anon, %struct.anon* %470, i32 0, i32 0
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  %474 = icmp eq i32 %473, 11
  br i1 %474, label %475, label %542

; <label>:475                                     ; preds = %466
  %476 = load %union.rec*, %union.rec** %t, align 8
  %477 = bitcast %union.rec* %476 to %struct.word_type*
  %478 = getelementptr inbounds %struct.word_type, %struct.word_type* %477, i32 0, i32 1
  %479 = bitcast %union.FIRST_UNION* %478 to %struct.anon*
  %480 = getelementptr inbounds %struct.anon, %struct.anon* %479, i32 0, i32 0
  %481 = load i8, i8* %480, align 1
  %482 = zext i8 %481 to i32
  %483 = icmp eq i32 %482, 11
  br i1 %483, label %484, label %491

; <label>:484                                     ; preds = %475
  %485 = load %union.rec*, %union.rec** %t, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 4
  %488 = getelementptr inbounds [4 x i8], [4 x i8]* %487, i32 0, i32 0
  %489 = call i32 @strcmp(i8* %488, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %490 = icmp eq i32 %489, 0
  br i1 %490, label %542, label %491

; <label>:491                                     ; preds = %484, %475
  %492 = load %union.rec*, %union.rec** %t, align 8
  %493 = bitcast %union.rec* %492 to %struct.word_type*
  %494 = getelementptr inbounds %struct.word_type, %struct.word_type* %493, i32 0, i32 1
  %495 = bitcast %union.FIRST_UNION* %494 to %struct.anon*
  %496 = getelementptr inbounds %struct.anon, %struct.anon* %495, i32 0, i32 0
  %497 = load i8, i8* %496, align 1
  %498 = zext i8 %497 to i32
  %499 = icmp eq i32 %498, 11
  br i1 %499, label %500, label %507

; <label>:500                                     ; preds = %491
  %501 = load %union.rec*, %union.rec** %t, align 8
  %502 = bitcast %union.rec* %501 to %struct.word_type*
  %503 = getelementptr inbounds %struct.word_type, %struct.word_type* %502, i32 0, i32 4
  %504 = getelementptr inbounds [4 x i8], [4 x i8]* %503, i32 0, i32 0
  %505 = call i32 @strcmp(i8* %504, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %506 = icmp eq i32 %505, 0
  br i1 %506, label %542, label %507

; <label>:507                                     ; preds = %500, %491
  %508 = load %union.rec*, %union.rec** %t, align 8
  %509 = bitcast %union.rec* %508 to %struct.word_type*
  %510 = getelementptr inbounds %struct.word_type, %struct.word_type* %509, i32 0, i32 1
  %511 = bitcast %union.FIRST_UNION* %510 to %struct.anon*
  %512 = getelementptr inbounds %struct.anon, %struct.anon* %511, i32 0, i32 0
  %513 = load i8, i8* %512, align 1
  %514 = zext i8 %513 to i32
  %515 = icmp eq i32 %514, 11
  br i1 %515, label %516, label %523

; <label>:516                                     ; preds = %507
  %517 = load %union.rec*, %union.rec** %t, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 4
  %520 = getelementptr inbounds [4 x i8], [4 x i8]* %519, i32 0, i32 0
  %521 = call i32 @strcmp(i8* %520, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %522 = icmp eq i32 %521, 0
  br i1 %522, label %542, label %523

; <label>:523                                     ; preds = %516, %507
  %524 = load %union.rec*, %union.rec** %t, align 8
  %525 = bitcast %union.rec* %524 to %struct.word_type*
  %526 = getelementptr inbounds %struct.word_type, %struct.word_type* %525, i32 0, i32 1
  %527 = bitcast %union.FIRST_UNION* %526 to %struct.anon*
  %528 = getelementptr inbounds %struct.anon, %struct.anon* %527, i32 0, i32 0
  %529 = load i8, i8* %528, align 1
  %530 = zext i8 %529 to i32
  %531 = icmp eq i32 %530, 11
  br i1 %531, label %532, label %539

; <label>:532                                     ; preds = %523
  %533 = load %union.rec*, %union.rec** %t, align 8
  %534 = bitcast %union.rec* %533 to %struct.word_type*
  %535 = getelementptr inbounds %struct.word_type, %struct.word_type* %534, i32 0, i32 4
  %536 = getelementptr inbounds [4 x i8], [4 x i8]* %535, i32 0, i32 0
  %537 = call i32 @strcmp(i8* %536, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %538 = icmp eq i32 %537, 0
  br label %539

; <label>:539                                     ; preds = %532, %523
  %540 = phi i1 [ false, %523 ], [ %538, %532 ]
  %541 = xor i1 %540, true
  br label %542

; <label>:542                                     ; preds = %539, %516, %500, %484, %466
  %543 = phi i1 [ false, %516 ], [ false, %500 ], [ false, %484 ], [ false, %466 ], [ %541, %539 ]
  br label %544

; <label>:544                                     ; preds = %542, %457
  %545 = phi i1 [ true, %457 ], [ %543, %542 ]
  br i1 %545, label %546, label %876

; <label>:546                                     ; preds = %544
  %547 = load %union.rec*, %union.rec** %t, align 8
  %548 = bitcast %union.rec* %547 to %struct.word_type*
  %549 = getelementptr inbounds %struct.word_type, %struct.word_type* %548, i32 0, i32 1
  %550 = bitcast %union.FIRST_UNION* %549 to %struct.anon*
  %551 = getelementptr inbounds %struct.anon, %struct.anon* %550, i32 0, i32 0
  %552 = load i8, i8* %551, align 1
  %553 = zext i8 %552 to i32
  %554 = icmp eq i32 %553, 2
  br i1 %554, label %555, label %811

; <label>:555                                     ; preds = %546
  %556 = load %union.rec*, %union.rec** %t, align 8
  %557 = bitcast %union.rec* %556 to %struct.closure_type*
  %558 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %557, i32 0, i32 5
  %559 = load %union.rec*, %union.rec** %558, align 8
  %560 = bitcast %union.rec* %559 to %struct.word_type*
  %561 = getelementptr inbounds %struct.word_type, %struct.word_type* %560, i32 0, i32 1
  %562 = bitcast %union.FIRST_UNION* %561 to %struct.anon*
  %563 = getelementptr inbounds %struct.anon, %struct.anon* %562, i32 0, i32 0
  %564 = load i8, i8* %563, align 1
  %565 = zext i8 %564 to i32
  %566 = icmp eq i32 %565, 143
  br i1 %566, label %567, label %751

; <label>:567                                     ; preds = %555
  %568 = load %union.rec*, %union.rec** %t, align 8
  %569 = bitcast %union.rec* %568 to %struct.closure_type*
  %570 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %569, i32 0, i32 5
  %571 = load %union.rec*, %union.rec** %570, align 8
  call void @PushScope(%union.rec* %571, i32 0, i32 1)
  %572 = load %union.rec*, %union.rec** %t, align 8
  %573 = bitcast %union.rec* %572 to %struct.closure_type*
  %574 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %573, i32 0, i32 5
  %575 = load %union.rec*, %union.rec** %574, align 8
  %576 = load %union.rec*, %union.rec** %2, align 8
  %577 = icmp eq %union.rec* %575, %576
  br i1 %577, label %578, label %579

; <label>:578                                     ; preds = %567
  store i32 1, i32* %has_import_encl, align 4
  br label %579

; <label>:579                                     ; preds = %578, %567
  %580 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %581 = zext i8 %580 to i32
  store i32 %581, i32* @zz_size, align 4
  %582 = sext i32 %581 to i64
  %583 = icmp uge i64 %582, 265
  br i1 %583, label %584, label %587

; <label>:584                                     ; preds = %579
  %585 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %586 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %585)
  br label %612

; <label>:587                                     ; preds = %579
  %588 = load i32, i32* @zz_size, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %589
  %591 = load %union.rec*, %union.rec** %590, align 8
  %592 = icmp eq %union.rec* %591, null
  br i1 %592, label %593, label %597

; <label>:593                                     ; preds = %587
  %594 = load i32, i32* @zz_size, align 4
  %595 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %596 = call %union.rec* @GetMemory(i32 %594, %struct.FILE_POS* %595)
  store %union.rec* %596, %union.rec** @zz_hold, align 8
  br label %611

; <label>:597                                     ; preds = %587
  %598 = load i32, i32* @zz_size, align 4
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %599
  %601 = load %union.rec*, %union.rec** %600, align 8
  store %union.rec* %601, %union.rec** @zz_hold, align 8
  store %union.rec* %601, %union.rec** @zz_hold, align 8
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 0
  %605 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %604, i32 0, i64 0
  %606 = getelementptr inbounds %struct.LIST, %struct.LIST* %605, i32 0, i32 0
  %607 = load %union.rec*, %union.rec** %606, align 8
  %608 = load i32, i32* @zz_size, align 4
  %609 = sext i32 %608 to i64
  %610 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %609
  store %union.rec* %607, %union.rec** %610, align 8
  br label %611

; <label>:611                                     ; preds = %597, %593
  br label %612

; <label>:612                                     ; preds = %611, %584
  %613 = load %union.rec*, %union.rec** @zz_hold, align 8
  %614 = bitcast %union.rec* %613 to %struct.word_type*
  %615 = getelementptr inbounds %struct.word_type, %struct.word_type* %614, i32 0, i32 1
  %616 = bitcast %union.FIRST_UNION* %615 to %struct.anon*
  %617 = getelementptr inbounds %struct.anon, %struct.anon* %616, i32 0, i32 0
  store i8 0, i8* %617, align 1
  %618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 0
  %622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %621, i32 0, i64 1
  %623 = getelementptr inbounds %struct.LIST, %struct.LIST* %622, i32 0, i32 1
  store %union.rec* %618, %union.rec** %623, align 8
  %624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %625 = bitcast %union.rec* %624 to %struct.word_type*
  %626 = getelementptr inbounds %struct.word_type, %struct.word_type* %625, i32 0, i32 0
  %627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %626, i32 0, i64 1
  %628 = getelementptr inbounds %struct.LIST, %struct.LIST* %627, i32 0, i32 0
  store %union.rec* %618, %union.rec** %628, align 8
  %629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %630 = bitcast %union.rec* %629 to %struct.word_type*
  %631 = getelementptr inbounds %struct.word_type, %struct.word_type* %630, i32 0, i32 0
  %632 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %631, i32 0, i64 0
  %633 = getelementptr inbounds %struct.LIST, %struct.LIST* %632, i32 0, i32 1
  store %union.rec* %618, %union.rec** %633, align 8
  %634 = load %union.rec*, %union.rec** @zz_hold, align 8
  %635 = bitcast %union.rec* %634 to %struct.word_type*
  %636 = getelementptr inbounds %struct.word_type, %struct.word_type* %635, i32 0, i32 0
  %637 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %636, i32 0, i64 0
  %638 = getelementptr inbounds %struct.LIST, %struct.LIST* %637, i32 0, i32 0
  store %union.rec* %618, %union.rec** %638, align 8
  store %union.rec* %618, %union.rec** @xx_link, align 8
  %639 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %639, %union.rec** @zz_res, align 8
  %640 = load %union.rec*, %union.rec** %import_list, align 8
  store %union.rec* %640, %union.rec** @zz_hold, align 8
  %641 = load %union.rec*, %union.rec** @zz_hold, align 8
  %642 = icmp eq %union.rec* %641, null
  br i1 %642, label %643, label %645

; <label>:643                                     ; preds = %612
  %644 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %693

; <label>:645                                     ; preds = %612
  %646 = load %union.rec*, %union.rec** @zz_res, align 8
  %647 = icmp eq %union.rec* %646, null
  br i1 %647, label %648, label %650

; <label>:648                                     ; preds = %645
  %649 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %691

; <label>:650                                     ; preds = %645
  %651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %652 = bitcast %union.rec* %651 to %struct.word_type*
  %653 = getelementptr inbounds %struct.word_type, %struct.word_type* %652, i32 0, i32 0
  %654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %653, i32 0, i64 0
  %655 = getelementptr inbounds %struct.LIST, %struct.LIST* %654, i32 0, i32 0
  %656 = load %union.rec*, %union.rec** %655, align 8
  store %union.rec* %656, %union.rec** @zz_tmp, align 8
  %657 = load %union.rec*, %union.rec** @zz_res, align 8
  %658 = bitcast %union.rec* %657 to %struct.word_type*
  %659 = getelementptr inbounds %struct.word_type, %struct.word_type* %658, i32 0, i32 0
  %660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %659, i32 0, i64 0
  %661 = getelementptr inbounds %struct.LIST, %struct.LIST* %660, i32 0, i32 0
  %662 = load %union.rec*, %union.rec** %661, align 8
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %664 = bitcast %union.rec* %663 to %struct.word_type*
  %665 = getelementptr inbounds %struct.word_type, %struct.word_type* %664, i32 0, i32 0
  %666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %665, i32 0, i64 0
  %667 = getelementptr inbounds %struct.LIST, %struct.LIST* %666, i32 0, i32 0
  store %union.rec* %662, %union.rec** %667, align 8
  %668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %669 = load %union.rec*, %union.rec** @zz_res, align 8
  %670 = bitcast %union.rec* %669 to %struct.word_type*
  %671 = getelementptr inbounds %struct.word_type, %struct.word_type* %670, i32 0, i32 0
  %672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %671, i32 0, i64 0
  %673 = getelementptr inbounds %struct.LIST, %struct.LIST* %672, i32 0, i32 0
  %674 = load %union.rec*, %union.rec** %673, align 8
  %675 = bitcast %union.rec* %674 to %struct.word_type*
  %676 = getelementptr inbounds %struct.word_type, %struct.word_type* %675, i32 0, i32 0
  %677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %676, i32 0, i64 0
  %678 = getelementptr inbounds %struct.LIST, %struct.LIST* %677, i32 0, i32 1
  store %union.rec* %668, %union.rec** %678, align 8
  %679 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %680 = load %union.rec*, %union.rec** @zz_res, align 8
  %681 = bitcast %union.rec* %680 to %struct.word_type*
  %682 = getelementptr inbounds %struct.word_type, %struct.word_type* %681, i32 0, i32 0
  %683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %682, i32 0, i64 0
  %684 = getelementptr inbounds %struct.LIST, %struct.LIST* %683, i32 0, i32 0
  store %union.rec* %679, %union.rec** %684, align 8
  %685 = load %union.rec*, %union.rec** @zz_res, align 8
  %686 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %687 = bitcast %union.rec* %686 to %struct.word_type*
  %688 = getelementptr inbounds %struct.word_type, %struct.word_type* %687, i32 0, i32 0
  %689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %688, i32 0, i64 0
  %690 = getelementptr inbounds %struct.LIST, %struct.LIST* %689, i32 0, i32 1
  store %union.rec* %685, %union.rec** %690, align 8
  br label %691

; <label>:691                                     ; preds = %650, %648
  %692 = phi %union.rec* [ %649, %648 ], [ %685, %650 ]
  br label %693

; <label>:693                                     ; preds = %691, %643
  %694 = phi %union.rec* [ %644, %643 ], [ %692, %691 ]
  %695 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %695, %union.rec** @zz_res, align 8
  %696 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %696, %union.rec** @zz_hold, align 8
  %697 = load %union.rec*, %union.rec** @zz_hold, align 8
  %698 = icmp eq %union.rec* %697, null
  br i1 %698, label %699, label %701

; <label>:699                                     ; preds = %693
  %700 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %749

; <label>:701                                     ; preds = %693
  %702 = load %union.rec*, %union.rec** @zz_res, align 8
  %703 = icmp eq %union.rec* %702, null
  br i1 %703, label %704, label %706

; <label>:704                                     ; preds = %701
  %705 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %747

; <label>:706                                     ; preds = %701
  %707 = load %union.rec*, %union.rec** @zz_hold, align 8
  %708 = bitcast %union.rec* %707 to %struct.word_type*
  %709 = getelementptr inbounds %struct.word_type, %struct.word_type* %708, i32 0, i32 0
  %710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %709, i32 0, i64 1
  %711 = getelementptr inbounds %struct.LIST, %struct.LIST* %710, i32 0, i32 0
  %712 = load %union.rec*, %union.rec** %711, align 8
  store %union.rec* %712, %union.rec** @zz_tmp, align 8
  %713 = load %union.rec*, %union.rec** @zz_res, align 8
  %714 = bitcast %union.rec* %713 to %struct.word_type*
  %715 = getelementptr inbounds %struct.word_type, %struct.word_type* %714, i32 0, i32 0
  %716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %715, i32 0, i64 1
  %717 = getelementptr inbounds %struct.LIST, %struct.LIST* %716, i32 0, i32 0
  %718 = load %union.rec*, %union.rec** %717, align 8
  %719 = load %union.rec*, %union.rec** @zz_hold, align 8
  %720 = bitcast %union.rec* %719 to %struct.word_type*
  %721 = getelementptr inbounds %struct.word_type, %struct.word_type* %720, i32 0, i32 0
  %722 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %721, i32 0, i64 1
  %723 = getelementptr inbounds %struct.LIST, %struct.LIST* %722, i32 0, i32 0
  store %union.rec* %718, %union.rec** %723, align 8
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = load %union.rec*, %union.rec** @zz_res, align 8
  %726 = bitcast %union.rec* %725 to %struct.word_type*
  %727 = getelementptr inbounds %struct.word_type, %struct.word_type* %726, i32 0, i32 0
  %728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %727, i32 0, i64 1
  %729 = getelementptr inbounds %struct.LIST, %struct.LIST* %728, i32 0, i32 0
  %730 = load %union.rec*, %union.rec** %729, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 0
  %733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %732, i32 0, i64 1
  %734 = getelementptr inbounds %struct.LIST, %struct.LIST* %733, i32 0, i32 1
  store %union.rec* %724, %union.rec** %734, align 8
  %735 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %736 = load %union.rec*, %union.rec** @zz_res, align 8
  %737 = bitcast %union.rec* %736 to %struct.word_type*
  %738 = getelementptr inbounds %struct.word_type, %struct.word_type* %737, i32 0, i32 0
  %739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %738, i32 0, i64 1
  %740 = getelementptr inbounds %struct.LIST, %struct.LIST* %739, i32 0, i32 0
  store %union.rec* %735, %union.rec** %740, align 8
  %741 = load %union.rec*, %union.rec** @zz_res, align 8
  %742 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %743 = bitcast %union.rec* %742 to %struct.word_type*
  %744 = getelementptr inbounds %struct.word_type, %struct.word_type* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %744, i32 0, i64 1
  %746 = getelementptr inbounds %struct.LIST, %struct.LIST* %745, i32 0, i32 1
  store %union.rec* %741, %union.rec** %746, align 8
  br label %747

; <label>:747                                     ; preds = %706, %704
  %748 = phi %union.rec* [ %705, %704 ], [ %741, %706 ]
  br label %749

; <label>:749                                     ; preds = %747, %699
  %750 = phi %union.rec* [ %700, %699 ], [ %748, %747 ]
  br label %810

; <label>:751                                     ; preds = %555
  %752 = load %union.rec*, %union.rec** %t, align 8
  %753 = bitcast %union.rec* %752 to %struct.word_type*
  %754 = getelementptr inbounds %struct.word_type, %struct.word_type* %753, i32 0, i32 1
  %755 = bitcast %union.FIRST_UNION* %754 to %struct.FILE_POS*
  %756 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 26, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %755)
  %757 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %757, %union.rec** @zz_hold, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %758, %union.rec** @zz_hold, align 8
  %759 = load %union.rec*, %union.rec** @zz_hold, align 8
  %760 = bitcast %union.rec* %759 to %struct.word_type*
  %761 = getelementptr inbounds %struct.word_type, %struct.word_type* %760, i32 0, i32 1
  %762 = bitcast %union.FIRST_UNION* %761 to %struct.anon*
  %763 = getelementptr inbounds %struct.anon, %struct.anon* %762, i32 0, i32 0
  %764 = load i8, i8* %763, align 1
  %765 = zext i8 %764 to i32
  %766 = icmp eq i32 %765, 11
  br i1 %766, label %776, label %767

; <label>:767                                     ; preds = %751
  %768 = load %union.rec*, %union.rec** @zz_hold, align 8
  %769 = bitcast %union.rec* %768 to %struct.word_type*
  %770 = getelementptr inbounds %struct.word_type, %struct.word_type* %769, i32 0, i32 1
  %771 = bitcast %union.FIRST_UNION* %770 to %struct.anon*
  %772 = getelementptr inbounds %struct.anon, %struct.anon* %771, i32 0, i32 0
  %773 = load i8, i8* %772, align 1
  %774 = zext i8 %773 to i32
  %775 = icmp eq i32 %774, 12
  br i1 %775, label %776, label %784

; <label>:776                                     ; preds = %767, %751
  %777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 1
  %780 = bitcast %union.FIRST_UNION* %779 to %struct.anon*
  %781 = getelementptr inbounds %struct.anon, %struct.anon* %780, i32 0, i32 1
  %782 = load i8, i8* %781, align 1
  %783 = zext i8 %782 to i32
  br label %795

; <label>:784                                     ; preds = %767
  %785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %786 = bitcast %union.rec* %785 to %struct.word_type*
  %787 = getelementptr inbounds %struct.word_type, %struct.word_type* %786, i32 0, i32 1
  %788 = bitcast %union.FIRST_UNION* %787 to %struct.anon*
  %789 = getelementptr inbounds %struct.anon, %struct.anon* %788, i32 0, i32 0
  %790 = load i8, i8* %789, align 1
  %791 = zext i8 %790 to i64
  %792 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %791
  %793 = load i8, i8* %792, align 1
  %794 = zext i8 %793 to i32
  br label %795

; <label>:795                                     ; preds = %784, %776
  %796 = phi i32 [ %783, %776 ], [ %794, %784 ]
  store i32 %796, i32* @zz_size, align 4
  %797 = load i32, i32* @zz_size, align 4
  %798 = sext i32 %797 to i64
  %799 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %798
  %800 = load %union.rec*, %union.rec** %799, align 8
  %801 = load %union.rec*, %union.rec** @zz_hold, align 8
  %802 = bitcast %union.rec* %801 to %struct.word_type*
  %803 = getelementptr inbounds %struct.word_type, %struct.word_type* %802, i32 0, i32 0
  %804 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %803, i32 0, i64 0
  %805 = getelementptr inbounds %struct.LIST, %struct.LIST* %804, i32 0, i32 0
  store %union.rec* %800, %union.rec** %805, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = load i32, i32* @zz_size, align 4
  %808 = sext i32 %807 to i64
  %809 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %808
  store %union.rec* %806, %union.rec** %809, align 8
  br label %810

; <label>:810                                     ; preds = %795, %749
  br label %874

; <label>:811                                     ; preds = %546
  %812 = load %union.rec*, %union.rec** %t, align 8
  %813 = bitcast %union.rec* %812 to %struct.word_type*
  %814 = getelementptr inbounds %struct.word_type, %struct.word_type* %813, i32 0, i32 1
  %815 = bitcast %union.FIRST_UNION* %814 to %struct.FILE_POS*
  %816 = load %union.rec*, %union.rec** %t, align 8
  %817 = bitcast %union.rec* %816 to %struct.word_type*
  %818 = getelementptr inbounds %struct.word_type, %struct.word_type* %817, i32 0, i32 4
  %819 = getelementptr inbounds [4 x i8], [4 x i8]* %818, i32 0, i32 0
  %820 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 27, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %815, i8* %819)
  %821 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %821, %union.rec** @zz_hold, align 8
  %822 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %822, %union.rec** @zz_hold, align 8
  %823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %824 = bitcast %union.rec* %823 to %struct.word_type*
  %825 = getelementptr inbounds %struct.word_type, %struct.word_type* %824, i32 0, i32 1
  %826 = bitcast %union.FIRST_UNION* %825 to %struct.anon*
  %827 = getelementptr inbounds %struct.anon, %struct.anon* %826, i32 0, i32 0
  %828 = load i8, i8* %827, align 1
  %829 = zext i8 %828 to i32
  %830 = icmp eq i32 %829, 11
  br i1 %830, label %840, label %831

; <label>:831                                     ; preds = %811
  %832 = load %union.rec*, %union.rec** @zz_hold, align 8
  %833 = bitcast %union.rec* %832 to %struct.word_type*
  %834 = getelementptr inbounds %struct.word_type, %struct.word_type* %833, i32 0, i32 1
  %835 = bitcast %union.FIRST_UNION* %834 to %struct.anon*
  %836 = getelementptr inbounds %struct.anon, %struct.anon* %835, i32 0, i32 0
  %837 = load i8, i8* %836, align 1
  %838 = zext i8 %837 to i32
  %839 = icmp eq i32 %838, 12
  br i1 %839, label %840, label %848

; <label>:840                                     ; preds = %831, %811
  %841 = load %union.rec*, %union.rec** @zz_hold, align 8
  %842 = bitcast %union.rec* %841 to %struct.word_type*
  %843 = getelementptr inbounds %struct.word_type, %struct.word_type* %842, i32 0, i32 1
  %844 = bitcast %union.FIRST_UNION* %843 to %struct.anon*
  %845 = getelementptr inbounds %struct.anon, %struct.anon* %844, i32 0, i32 1
  %846 = load i8, i8* %845, align 1
  %847 = zext i8 %846 to i32
  br label %859

; <label>:848                                     ; preds = %831
  %849 = load %union.rec*, %union.rec** @zz_hold, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 1
  %852 = bitcast %union.FIRST_UNION* %851 to %struct.anon*
  %853 = getelementptr inbounds %struct.anon, %struct.anon* %852, i32 0, i32 0
  %854 = load i8, i8* %853, align 1
  %855 = zext i8 %854 to i64
  %856 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %855
  %857 = load i8, i8* %856, align 1
  %858 = zext i8 %857 to i32
  br label %859

; <label>:859                                     ; preds = %848, %840
  %860 = phi i32 [ %847, %840 ], [ %858, %848 ]
  store i32 %860, i32* @zz_size, align 4
  %861 = load i32, i32* @zz_size, align 4
  %862 = sext i32 %861 to i64
  %863 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %862
  %864 = load %union.rec*, %union.rec** %863, align 8
  %865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %866 = bitcast %union.rec* %865 to %struct.word_type*
  %867 = getelementptr inbounds %struct.word_type, %struct.word_type* %866, i32 0, i32 0
  %868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %867, i32 0, i64 0
  %869 = getelementptr inbounds %struct.LIST, %struct.LIST* %868, i32 0, i32 0
  store %union.rec* %864, %union.rec** %869, align 8
  %870 = load %union.rec*, %union.rec** @zz_hold, align 8
  %871 = load i32, i32* @zz_size, align 4
  %872 = sext i32 %871 to i64
  %873 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %872
  store %union.rec* %870, %union.rec** %873, align 8
  br label %874

; <label>:874                                     ; preds = %859, %810
  %875 = call %union.rec* @LexGetToken()
  store %union.rec* %875, %union.rec** %t, align 8
  br label %457

; <label>:876                                     ; preds = %544
  br label %1370

; <label>:877                                     ; preds = %395, %360
  %878 = load %union.rec*, %union.rec** %t, align 8
  %879 = bitcast %union.rec* %878 to %struct.word_type*
  %880 = getelementptr inbounds %struct.word_type, %struct.word_type* %879, i32 0, i32 1
  %881 = bitcast %union.FIRST_UNION* %880 to %struct.anon*
  %882 = getelementptr inbounds %struct.anon, %struct.anon* %881, i32 0, i32 0
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = icmp eq i32 %884, 11
  br i1 %885, label %886, label %1369

; <label>:886                                     ; preds = %877
  %887 = load %union.rec*, %union.rec** %t, align 8
  %888 = bitcast %union.rec* %887 to %struct.word_type*
  %889 = getelementptr inbounds %struct.word_type, %struct.word_type* %888, i32 0, i32 4
  %890 = getelementptr inbounds [4 x i8], [4 x i8]* %889, i32 0, i32 0
  %891 = call i32 @strcmp(i8* %890, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  %892 = icmp eq i32 %891, 0
  br i1 %892, label %893, label %1369

; <label>:893                                     ; preds = %886
  %894 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %894, %union.rec** @zz_hold, align 8
  %895 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %895, %union.rec** @zz_hold, align 8
  %896 = load %union.rec*, %union.rec** @zz_hold, align 8
  %897 = bitcast %union.rec* %896 to %struct.word_type*
  %898 = getelementptr inbounds %struct.word_type, %struct.word_type* %897, i32 0, i32 1
  %899 = bitcast %union.FIRST_UNION* %898 to %struct.anon*
  %900 = getelementptr inbounds %struct.anon, %struct.anon* %899, i32 0, i32 0
  %901 = load i8, i8* %900, align 1
  %902 = zext i8 %901 to i32
  %903 = icmp eq i32 %902, 11
  br i1 %903, label %913, label %904

; <label>:904                                     ; preds = %893
  %905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %906 = bitcast %union.rec* %905 to %struct.word_type*
  %907 = getelementptr inbounds %struct.word_type, %struct.word_type* %906, i32 0, i32 1
  %908 = bitcast %union.FIRST_UNION* %907 to %struct.anon*
  %909 = getelementptr inbounds %struct.anon, %struct.anon* %908, i32 0, i32 0
  %910 = load i8, i8* %909, align 1
  %911 = zext i8 %910 to i32
  %912 = icmp eq i32 %911, 12
  br i1 %912, label %913, label %921

; <label>:913                                     ; preds = %904, %893
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %915 = bitcast %union.rec* %914 to %struct.word_type*
  %916 = getelementptr inbounds %struct.word_type, %struct.word_type* %915, i32 0, i32 1
  %917 = bitcast %union.FIRST_UNION* %916 to %struct.anon*
  %918 = getelementptr inbounds %struct.anon, %struct.anon* %917, i32 0, i32 1
  %919 = load i8, i8* %918, align 1
  %920 = zext i8 %919 to i32
  br label %932

; <label>:921                                     ; preds = %904
  %922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %923 = bitcast %union.rec* %922 to %struct.word_type*
  %924 = getelementptr inbounds %struct.word_type, %struct.word_type* %923, i32 0, i32 1
  %925 = bitcast %union.FIRST_UNION* %924 to %struct.anon*
  %926 = getelementptr inbounds %struct.anon, %struct.anon* %925, i32 0, i32 0
  %927 = load i8, i8* %926, align 1
  %928 = zext i8 %927 to i64
  %929 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %928
  %930 = load i8, i8* %929, align 1
  %931 = zext i8 %930 to i32
  br label %932

; <label>:932                                     ; preds = %921, %913
  %933 = phi i32 [ %920, %913 ], [ %931, %921 ]
  store i32 %933, i32* @zz_size, align 4
  %934 = load i32, i32* @zz_size, align 4
  %935 = sext i32 %934 to i64
  %936 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %935
  %937 = load %union.rec*, %union.rec** %936, align 8
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 0
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 0
  store %union.rec* %937, %union.rec** %942, align 8
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %944 = load i32, i32* @zz_size, align 4
  %945 = sext i32 %944 to i64
  %946 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %945
  store %union.rec* %943, %union.rec** %946, align 8
  %947 = call %union.rec* @LexGetToken()
  store %union.rec* %947, %union.rec** %t, align 8
  br label %948

; <label>:948                                     ; preds = %1366, %932
  %949 = load %union.rec*, %union.rec** %t, align 8
  %950 = bitcast %union.rec* %949 to %struct.word_type*
  %951 = getelementptr inbounds %struct.word_type, %struct.word_type* %950, i32 0, i32 1
  %952 = bitcast %union.FIRST_UNION* %951 to %struct.anon*
  %953 = getelementptr inbounds %struct.anon, %struct.anon* %952, i32 0, i32 0
  %954 = load i8, i8* %953, align 1
  %955 = zext i8 %954 to i32
  %956 = icmp eq i32 %955, 2
  br i1 %956, label %1019, label %957

; <label>:957                                     ; preds = %948
  %958 = load %union.rec*, %union.rec** %t, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 1
  %961 = bitcast %union.FIRST_UNION* %960 to %struct.anon*
  %962 = getelementptr inbounds %struct.anon, %struct.anon* %961, i32 0, i32 0
  %963 = load i8, i8* %962, align 1
  %964 = zext i8 %963 to i32
  %965 = icmp eq i32 %964, 11
  br i1 %965, label %966, label %1017

; <label>:966                                     ; preds = %957
  %967 = load %union.rec*, %union.rec** %t, align 8
  %968 = bitcast %union.rec* %967 to %struct.word_type*
  %969 = getelementptr inbounds %struct.word_type, %struct.word_type* %968, i32 0, i32 1
  %970 = bitcast %union.FIRST_UNION* %969 to %struct.anon*
  %971 = getelementptr inbounds %struct.anon, %struct.anon* %970, i32 0, i32 0
  %972 = load i8, i8* %971, align 1
  %973 = zext i8 %972 to i32
  %974 = icmp eq i32 %973, 11
  br i1 %974, label %975, label %982

; <label>:975                                     ; preds = %966
  %976 = load %union.rec*, %union.rec** %t, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 4
  %979 = getelementptr inbounds [4 x i8], [4 x i8]* %978, i32 0, i32 0
  %980 = call i32 @strcmp(i8* %979, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %981 = icmp eq i32 %980, 0
  br i1 %981, label %1017, label %982

; <label>:982                                     ; preds = %975, %966
  %983 = load %union.rec*, %union.rec** %t, align 8
  %984 = bitcast %union.rec* %983 to %struct.word_type*
  %985 = getelementptr inbounds %struct.word_type, %struct.word_type* %984, i32 0, i32 1
  %986 = bitcast %union.FIRST_UNION* %985 to %struct.anon*
  %987 = getelementptr inbounds %struct.anon, %struct.anon* %986, i32 0, i32 0
  %988 = load i8, i8* %987, align 1
  %989 = zext i8 %988 to i32
  %990 = icmp eq i32 %989, 11
  br i1 %990, label %991, label %998

; <label>:991                                     ; preds = %982
  %992 = load %union.rec*, %union.rec** %t, align 8
  %993 = bitcast %union.rec* %992 to %struct.word_type*
  %994 = getelementptr inbounds %struct.word_type, %struct.word_type* %993, i32 0, i32 4
  %995 = getelementptr inbounds [4 x i8], [4 x i8]* %994, i32 0, i32 0
  %996 = call i32 @strcmp(i8* %995, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %997 = icmp eq i32 %996, 0
  br i1 %997, label %1017, label %998

; <label>:998                                     ; preds = %991, %982
  %999 = load %union.rec*, %union.rec** %t, align 8
  %1000 = bitcast %union.rec* %999 to %struct.word_type*
  %1001 = getelementptr inbounds %struct.word_type, %struct.word_type* %1000, i32 0, i32 1
  %1002 = bitcast %union.FIRST_UNION* %1001 to %struct.anon*
  %1003 = getelementptr inbounds %struct.anon, %struct.anon* %1002, i32 0, i32 0
  %1004 = load i8, i8* %1003, align 1
  %1005 = zext i8 %1004 to i32
  %1006 = icmp eq i32 %1005, 11
  br i1 %1006, label %1007, label %1014

; <label>:1007                                    ; preds = %998
  %1008 = load %union.rec*, %union.rec** %t, align 8
  %1009 = bitcast %union.rec* %1008 to %struct.word_type*
  %1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %1009, i32 0, i32 4
  %1011 = getelementptr inbounds [4 x i8], [4 x i8]* %1010, i32 0, i32 0
  %1012 = call i32 @strcmp(i8* %1011, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %1013 = icmp eq i32 %1012, 0
  br label %1014

; <label>:1014                                    ; preds = %1007, %998
  %1015 = phi i1 [ false, %998 ], [ %1013, %1007 ]
  %1016 = xor i1 %1015, true
  br label %1017

; <label>:1017                                    ; preds = %1014, %991, %975, %957
  %1018 = phi i1 [ false, %991 ], [ false, %975 ], [ false, %957 ], [ %1016, %1014 ]
  br label %1019

; <label>:1019                                    ; preds = %1017, %948
  %1020 = phi i1 [ true, %948 ], [ %1018, %1017 ]
  br i1 %1020, label %1021, label %1368

; <label>:1021                                    ; preds = %1019
  %1022 = load %union.rec*, %union.rec** %t, align 8
  %1023 = bitcast %union.rec* %1022 to %struct.word_type*
  %1024 = getelementptr inbounds %struct.word_type, %struct.word_type* %1023, i32 0, i32 1
  %1025 = bitcast %union.FIRST_UNION* %1024 to %struct.anon*
  %1026 = getelementptr inbounds %struct.anon, %struct.anon* %1025, i32 0, i32 0
  %1027 = load i8, i8* %1026, align 1
  %1028 = zext i8 %1027 to i32
  %1029 = icmp eq i32 %1028, 2
  br i1 %1029, label %1030, label %1303

; <label>:1030                                    ; preds = %1021
  %1031 = load %union.rec*, %union.rec** %t, align 8
  %1032 = bitcast %union.rec* %1031 to %struct.closure_type*
  %1033 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1032, i32 0, i32 5
  %1034 = load %union.rec*, %union.rec** %1033, align 8
  %1035 = bitcast %union.rec* %1034 to %struct.symbol_type*
  %1036 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1035, i32 0, i32 9
  %1037 = load %union.rec*, %union.rec** %1036, align 8
  %1038 = icmp ne %union.rec* %1037, null
  br i1 %1038, label %1039, label %1050

; <label>:1039                                    ; preds = %1030
  %1040 = load %union.rec*, %union.rec** %t, align 8
  %1041 = bitcast %union.rec* %1040 to %struct.word_type*
  %1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %1041, i32 0, i32 1
  %1043 = bitcast %union.FIRST_UNION* %1042 to %struct.FILE_POS*
  %1044 = load %union.rec*, %union.rec** %t, align 8
  %1045 = bitcast %union.rec* %1044 to %struct.closure_type*
  %1046 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1045, i32 0, i32 5
  %1047 = load %union.rec*, %union.rec** %1046, align 8
  %1048 = call i8* @SymName(%union.rec* %1047)
  %1049 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 48, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i32 2, %struct.FILE_POS* %1043, i8* %1048, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0))
  br label %1302

; <label>:1050                                    ; preds = %1030
  %1051 = load %union.rec*, %union.rec** %t, align 8
  %1052 = bitcast %union.rec* %1051 to %struct.closure_type*
  %1053 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1052, i32 0, i32 5
  %1054 = load %union.rec*, %union.rec** %1053, align 8
  %1055 = bitcast %union.rec* %1054 to %struct.word_type*
  %1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %1055, i32 0, i32 1
  %1057 = bitcast %union.FIRST_UNION* %1056 to %struct.anon*
  %1058 = getelementptr inbounds %struct.anon, %struct.anon* %1057, i32 0, i32 0
  %1059 = load i8, i8* %1058, align 1
  %1060 = zext i8 %1059 to i32
  %1061 = icmp eq i32 %1060, 143
  br i1 %1061, label %1062, label %1242

; <label>:1062                                    ; preds = %1050
  %1063 = load %union.rec*, %union.rec** %t, align 8
  %1064 = bitcast %union.rec* %1063 to %struct.closure_type*
  %1065 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1064, i32 0, i32 5
  %1066 = load %union.rec*, %union.rec** %1065, align 8
  call void @PushScope(%union.rec* %1066, i32 0, i32 0)
  %1067 = load %union.rec*, %union.rec** %t, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.closure_type*
  %1069 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1068, i32 0, i32 5
  %1070 = load %union.rec*, %union.rec** %1069, align 8
  store %union.rec* %1070, %union.rec** %curr_encl, align 8
  %1071 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1072 = zext i8 %1071 to i32
  store i32 %1072, i32* @zz_size, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = icmp uge i64 %1073, 265
  br i1 %1074, label %1075, label %1078

; <label>:1075                                    ; preds = %1062
  %1076 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1077 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %1076)
  br label %1103

; <label>:1078                                    ; preds = %1062
  %1079 = load i32, i32* @zz_size, align 4
  %1080 = sext i32 %1079 to i64
  %1081 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1080
  %1082 = load %union.rec*, %union.rec** %1081, align 8
  %1083 = icmp eq %union.rec* %1082, null
  br i1 %1083, label %1084, label %1088

; <label>:1084                                    ; preds = %1078
  %1085 = load i32, i32* @zz_size, align 4
  %1086 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1087 = call %union.rec* @GetMemory(i32 %1085, %struct.FILE_POS* %1086)
  store %union.rec* %1087, %union.rec** @zz_hold, align 8
  br label %1102

; <label>:1088                                    ; preds = %1078
  %1089 = load i32, i32* @zz_size, align 4
  %1090 = sext i32 %1089 to i64
  %1091 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1090
  %1092 = load %union.rec*, %union.rec** %1091, align 8
  store %union.rec* %1092, %union.rec** @zz_hold, align 8
  store %union.rec* %1092, %union.rec** @zz_hold, align 8
  %1093 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.word_type*
  %1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %1094, i32 0, i32 0
  %1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1095, i32 0, i64 0
  %1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %1096, i32 0, i32 0
  %1098 = load %union.rec*, %union.rec** %1097, align 8
  %1099 = load i32, i32* @zz_size, align 4
  %1100 = sext i32 %1099 to i64
  %1101 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1100
  store %union.rec* %1098, %union.rec** %1101, align 8
  br label %1102

; <label>:1102                                    ; preds = %1088, %1084
  br label %1103

; <label>:1103                                    ; preds = %1102, %1075
  %1104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 1
  %1107 = bitcast %union.FIRST_UNION* %1106 to %struct.anon*
  %1108 = getelementptr inbounds %struct.anon, %struct.anon* %1107, i32 0, i32 0
  store i8 0, i8* %1108, align 1
  %1109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.word_type*
  %1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %1111, i32 0, i32 0
  %1113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1112, i32 0, i64 1
  %1114 = getelementptr inbounds %struct.LIST, %struct.LIST* %1113, i32 0, i32 1
  store %union.rec* %1109, %union.rec** %1114, align 8
  %1115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1116 = bitcast %union.rec* %1115 to %struct.word_type*
  %1117 = getelementptr inbounds %struct.word_type, %struct.word_type* %1116, i32 0, i32 0
  %1118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1117, i32 0, i64 1
  %1119 = getelementptr inbounds %struct.LIST, %struct.LIST* %1118, i32 0, i32 0
  store %union.rec* %1109, %union.rec** %1119, align 8
  %1120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1121 = bitcast %union.rec* %1120 to %struct.word_type*
  %1122 = getelementptr inbounds %struct.word_type, %struct.word_type* %1121, i32 0, i32 0
  %1123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1122, i32 0, i64 0
  %1124 = getelementptr inbounds %struct.LIST, %struct.LIST* %1123, i32 0, i32 1
  store %union.rec* %1109, %union.rec** %1124, align 8
  %1125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 0
  %1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1127, i32 0, i64 0
  %1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %1128, i32 0, i32 0
  store %union.rec* %1109, %union.rec** %1129, align 8
  store %union.rec* %1109, %union.rec** @xx_link, align 8
  %1130 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1130, %union.rec** @zz_res, align 8
  %1131 = load %union.rec*, %union.rec** %import_list, align 8
  store %union.rec* %1131, %union.rec** @zz_hold, align 8
  %1132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1133 = icmp eq %union.rec* %1132, null
  br i1 %1133, label %1134, label %1136

; <label>:1134                                    ; preds = %1103
  %1135 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1184

; <label>:1136                                    ; preds = %1103
  %1137 = load %union.rec*, %union.rec** @zz_res, align 8
  %1138 = icmp eq %union.rec* %1137, null
  br i1 %1138, label %1139, label %1141

; <label>:1139                                    ; preds = %1136
  %1140 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1182

; <label>:1141                                    ; preds = %1136
  %1142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1143 = bitcast %union.rec* %1142 to %struct.word_type*
  %1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %1143, i32 0, i32 0
  %1145 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1144, i32 0, i64 0
  %1146 = getelementptr inbounds %struct.LIST, %struct.LIST* %1145, i32 0, i32 0
  %1147 = load %union.rec*, %union.rec** %1146, align 8
  store %union.rec* %1147, %union.rec** @zz_tmp, align 8
  %1148 = load %union.rec*, %union.rec** @zz_res, align 8
  %1149 = bitcast %union.rec* %1148 to %struct.word_type*
  %1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %1149, i32 0, i32 0
  %1151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1150, i32 0, i64 0
  %1152 = getelementptr inbounds %struct.LIST, %struct.LIST* %1151, i32 0, i32 0
  %1153 = load %union.rec*, %union.rec** %1152, align 8
  %1154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1156, i32 0, i64 0
  %1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %1157, i32 0, i32 0
  store %union.rec* %1153, %union.rec** %1158, align 8
  %1159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1160 = load %union.rec*, %union.rec** @zz_res, align 8
  %1161 = bitcast %union.rec* %1160 to %struct.word_type*
  %1162 = getelementptr inbounds %struct.word_type, %struct.word_type* %1161, i32 0, i32 0
  %1163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1162, i32 0, i64 0
  %1164 = getelementptr inbounds %struct.LIST, %struct.LIST* %1163, i32 0, i32 0
  %1165 = load %union.rec*, %union.rec** %1164, align 8
  %1166 = bitcast %union.rec* %1165 to %struct.word_type*
  %1167 = getelementptr inbounds %struct.word_type, %struct.word_type* %1166, i32 0, i32 0
  %1168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1167, i32 0, i64 0
  %1169 = getelementptr inbounds %struct.LIST, %struct.LIST* %1168, i32 0, i32 1
  store %union.rec* %1159, %union.rec** %1169, align 8
  %1170 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1171 = load %union.rec*, %union.rec** @zz_res, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.word_type*
  %1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %1172, i32 0, i32 0
  %1174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1173, i32 0, i64 0
  %1175 = getelementptr inbounds %struct.LIST, %struct.LIST* %1174, i32 0, i32 0
  store %union.rec* %1170, %union.rec** %1175, align 8
  %1176 = load %union.rec*, %union.rec** @zz_res, align 8
  %1177 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1178 = bitcast %union.rec* %1177 to %struct.word_type*
  %1179 = getelementptr inbounds %struct.word_type, %struct.word_type* %1178, i32 0, i32 0
  %1180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1179, i32 0, i64 0
  %1181 = getelementptr inbounds %struct.LIST, %struct.LIST* %1180, i32 0, i32 1
  store %union.rec* %1176, %union.rec** %1181, align 8
  br label %1182

; <label>:1182                                    ; preds = %1141, %1139
  %1183 = phi %union.rec* [ %1140, %1139 ], [ %1176, %1141 ]
  br label %1184

; <label>:1184                                    ; preds = %1182, %1134
  %1185 = phi %union.rec* [ %1135, %1134 ], [ %1183, %1182 ]
  %1186 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1186, %union.rec** @zz_res, align 8
  %1187 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1187, %union.rec** @zz_hold, align 8
  %1188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1189 = icmp eq %union.rec* %1188, null
  br i1 %1189, label %1190, label %1192

; <label>:1190                                    ; preds = %1184
  %1191 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1240

; <label>:1192                                    ; preds = %1184
  %1193 = load %union.rec*, %union.rec** @zz_res, align 8
  %1194 = icmp eq %union.rec* %1193, null
  br i1 %1194, label %1195, label %1197

; <label>:1195                                    ; preds = %1192
  %1196 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1238

; <label>:1197                                    ; preds = %1192
  %1198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1199 = bitcast %union.rec* %1198 to %struct.word_type*
  %1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %1199, i32 0, i32 0
  %1201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1200, i32 0, i64 1
  %1202 = getelementptr inbounds %struct.LIST, %struct.LIST* %1201, i32 0, i32 0
  %1203 = load %union.rec*, %union.rec** %1202, align 8
  store %union.rec* %1203, %union.rec** @zz_tmp, align 8
  %1204 = load %union.rec*, %union.rec** @zz_res, align 8
  %1205 = bitcast %union.rec* %1204 to %struct.word_type*
  %1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1206, i32 0, i64 1
  %1208 = getelementptr inbounds %struct.LIST, %struct.LIST* %1207, i32 0, i32 0
  %1209 = load %union.rec*, %union.rec** %1208, align 8
  %1210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1211 = bitcast %union.rec* %1210 to %struct.word_type*
  %1212 = getelementptr inbounds %struct.word_type, %struct.word_type* %1211, i32 0, i32 0
  %1213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1212, i32 0, i64 1
  %1214 = getelementptr inbounds %struct.LIST, %struct.LIST* %1213, i32 0, i32 0
  store %union.rec* %1209, %union.rec** %1214, align 8
  %1215 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1216 = load %union.rec*, %union.rec** @zz_res, align 8
  %1217 = bitcast %union.rec* %1216 to %struct.word_type*
  %1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %1217, i32 0, i32 0
  %1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1218, i32 0, i64 1
  %1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %1219, i32 0, i32 0
  %1221 = load %union.rec*, %union.rec** %1220, align 8
  %1222 = bitcast %union.rec* %1221 to %struct.word_type*
  %1223 = getelementptr inbounds %struct.word_type, %struct.word_type* %1222, i32 0, i32 0
  %1224 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1223, i32 0, i64 1
  %1225 = getelementptr inbounds %struct.LIST, %struct.LIST* %1224, i32 0, i32 1
  store %union.rec* %1215, %union.rec** %1225, align 8
  %1226 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1227 = load %union.rec*, %union.rec** @zz_res, align 8
  %1228 = bitcast %union.rec* %1227 to %struct.word_type*
  %1229 = getelementptr inbounds %struct.word_type, %struct.word_type* %1228, i32 0, i32 0
  %1230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1229, i32 0, i64 1
  %1231 = getelementptr inbounds %struct.LIST, %struct.LIST* %1230, i32 0, i32 0
  store %union.rec* %1226, %union.rec** %1231, align 8
  %1232 = load %union.rec*, %union.rec** @zz_res, align 8
  %1233 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 0
  %1236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1235, i32 0, i64 1
  %1237 = getelementptr inbounds %struct.LIST, %struct.LIST* %1236, i32 0, i32 1
  store %union.rec* %1232, %union.rec** %1237, align 8
  br label %1238

; <label>:1238                                    ; preds = %1197, %1195
  %1239 = phi %union.rec* [ %1196, %1195 ], [ %1232, %1197 ]
  br label %1240

; <label>:1240                                    ; preds = %1238, %1190
  %1241 = phi %union.rec* [ %1191, %1190 ], [ %1239, %1238 ]
  br label %1301

; <label>:1242                                    ; preds = %1050
  %1243 = load %union.rec*, %union.rec** %t, align 8
  %1244 = bitcast %union.rec* %1243 to %struct.word_type*
  %1245 = getelementptr inbounds %struct.word_type, %struct.word_type* %1244, i32 0, i32 1
  %1246 = bitcast %union.FIRST_UNION* %1245 to %struct.FILE_POS*
  %1247 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 28, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0), i32 2, %struct.FILE_POS* %1246, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0))
  %1248 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1248, %union.rec** @zz_hold, align 8
  %1249 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1249, %union.rec** @zz_hold, align 8
  %1250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1251 = bitcast %union.rec* %1250 to %struct.word_type*
  %1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %1251, i32 0, i32 1
  %1253 = bitcast %union.FIRST_UNION* %1252 to %struct.anon*
  %1254 = getelementptr inbounds %struct.anon, %struct.anon* %1253, i32 0, i32 0
  %1255 = load i8, i8* %1254, align 1
  %1256 = zext i8 %1255 to i32
  %1257 = icmp eq i32 %1256, 11
  br i1 %1257, label %1267, label %1258

; <label>:1258                                    ; preds = %1242
  %1259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1260 = bitcast %union.rec* %1259 to %struct.word_type*
  %1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %1260, i32 0, i32 1
  %1262 = bitcast %union.FIRST_UNION* %1261 to %struct.anon*
  %1263 = getelementptr inbounds %struct.anon, %struct.anon* %1262, i32 0, i32 0
  %1264 = load i8, i8* %1263, align 1
  %1265 = zext i8 %1264 to i32
  %1266 = icmp eq i32 %1265, 12
  br i1 %1266, label %1267, label %1275

; <label>:1267                                    ; preds = %1258, %1242
  %1268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1269 = bitcast %union.rec* %1268 to %struct.word_type*
  %1270 = getelementptr inbounds %struct.word_type, %struct.word_type* %1269, i32 0, i32 1
  %1271 = bitcast %union.FIRST_UNION* %1270 to %struct.anon*
  %1272 = getelementptr inbounds %struct.anon, %struct.anon* %1271, i32 0, i32 1
  %1273 = load i8, i8* %1272, align 1
  %1274 = zext i8 %1273 to i32
  br label %1286

; <label>:1275                                    ; preds = %1258
  %1276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1277 = bitcast %union.rec* %1276 to %struct.word_type*
  %1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %1277, i32 0, i32 1
  %1279 = bitcast %union.FIRST_UNION* %1278 to %struct.anon*
  %1280 = getelementptr inbounds %struct.anon, %struct.anon* %1279, i32 0, i32 0
  %1281 = load i8, i8* %1280, align 1
  %1282 = zext i8 %1281 to i64
  %1283 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1282
  %1284 = load i8, i8* %1283, align 1
  %1285 = zext i8 %1284 to i32
  br label %1286

; <label>:1286                                    ; preds = %1275, %1267
  %1287 = phi i32 [ %1274, %1267 ], [ %1285, %1275 ]
  store i32 %1287, i32* @zz_size, align 4
  %1288 = load i32, i32* @zz_size, align 4
  %1289 = sext i32 %1288 to i64
  %1290 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1289
  %1291 = load %union.rec*, %union.rec** %1290, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 0
  %1295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1294, i32 0, i64 0
  %1296 = getelementptr inbounds %struct.LIST, %struct.LIST* %1295, i32 0, i32 0
  store %union.rec* %1291, %union.rec** %1296, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1298 = load i32, i32* @zz_size, align 4
  %1299 = sext i32 %1298 to i64
  %1300 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1299
  store %union.rec* %1297, %union.rec** %1300, align 8
  br label %1301

; <label>:1301                                    ; preds = %1286, %1240
  br label %1302

; <label>:1302                                    ; preds = %1301, %1039
  br label %1366

; <label>:1303                                    ; preds = %1021
  %1304 = load %union.rec*, %union.rec** %t, align 8
  %1305 = bitcast %union.rec* %1304 to %struct.word_type*
  %1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %1305, i32 0, i32 1
  %1307 = bitcast %union.FIRST_UNION* %1306 to %struct.FILE_POS*
  %1308 = load %union.rec*, %union.rec** %t, align 8
  %1309 = bitcast %union.rec* %1308 to %struct.word_type*
  %1310 = getelementptr inbounds %struct.word_type, %struct.word_type* %1309, i32 0, i32 4
  %1311 = getelementptr inbounds [4 x i8], [4 x i8]* %1310, i32 0, i32 0
  %1312 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 29, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.23, i32 0, i32 0), i32 2, %struct.FILE_POS* %1307, i8* %1311)
  %1313 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1313, %union.rec** @zz_hold, align 8
  %1314 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1314, %union.rec** @zz_hold, align 8
  %1315 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1316 = bitcast %union.rec* %1315 to %struct.word_type*
  %1317 = getelementptr inbounds %struct.word_type, %struct.word_type* %1316, i32 0, i32 1
  %1318 = bitcast %union.FIRST_UNION* %1317 to %struct.anon*
  %1319 = getelementptr inbounds %struct.anon, %struct.anon* %1318, i32 0, i32 0
  %1320 = load i8, i8* %1319, align 1
  %1321 = zext i8 %1320 to i32
  %1322 = icmp eq i32 %1321, 11
  br i1 %1322, label %1332, label %1323

; <label>:1323                                    ; preds = %1303
  %1324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 1
  %1327 = bitcast %union.FIRST_UNION* %1326 to %struct.anon*
  %1328 = getelementptr inbounds %struct.anon, %struct.anon* %1327, i32 0, i32 0
  %1329 = load i8, i8* %1328, align 1
  %1330 = zext i8 %1329 to i32
  %1331 = icmp eq i32 %1330, 12
  br i1 %1331, label %1332, label %1340

; <label>:1332                                    ; preds = %1323, %1303
  %1333 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1334 = bitcast %union.rec* %1333 to %struct.word_type*
  %1335 = getelementptr inbounds %struct.word_type, %struct.word_type* %1334, i32 0, i32 1
  %1336 = bitcast %union.FIRST_UNION* %1335 to %struct.anon*
  %1337 = getelementptr inbounds %struct.anon, %struct.anon* %1336, i32 0, i32 1
  %1338 = load i8, i8* %1337, align 1
  %1339 = zext i8 %1338 to i32
  br label %1351

; <label>:1340                                    ; preds = %1323
  %1341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1342 = bitcast %union.rec* %1341 to %struct.word_type*
  %1343 = getelementptr inbounds %struct.word_type, %struct.word_type* %1342, i32 0, i32 1
  %1344 = bitcast %union.FIRST_UNION* %1343 to %struct.anon*
  %1345 = getelementptr inbounds %struct.anon, %struct.anon* %1344, i32 0, i32 0
  %1346 = load i8, i8* %1345, align 1
  %1347 = zext i8 %1346 to i64
  %1348 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1347
  %1349 = load i8, i8* %1348, align 1
  %1350 = zext i8 %1349 to i32
  br label %1351

; <label>:1351                                    ; preds = %1340, %1332
  %1352 = phi i32 [ %1339, %1332 ], [ %1350, %1340 ]
  store i32 %1352, i32* @zz_size, align 4
  %1353 = load i32, i32* @zz_size, align 4
  %1354 = sext i32 %1353 to i64
  %1355 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1354
  %1356 = load %union.rec*, %union.rec** %1355, align 8
  %1357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1358 = bitcast %union.rec* %1357 to %struct.word_type*
  %1359 = getelementptr inbounds %struct.word_type, %struct.word_type* %1358, i32 0, i32 0
  %1360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1359, i32 0, i64 0
  %1361 = getelementptr inbounds %struct.LIST, %struct.LIST* %1360, i32 0, i32 0
  store %union.rec* %1356, %union.rec** %1361, align 8
  %1362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1363 = load i32, i32* @zz_size, align 4
  %1364 = sext i32 %1363 to i64
  %1365 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1364
  store %union.rec* %1362, %union.rec** %1365, align 8
  br label %1366

; <label>:1366                                    ; preds = %1351, %1302
  %1367 = call %union.rec* @LexGetToken()
  store %union.rec* %1367, %union.rec** %t, align 8
  br label %948

; <label>:1368                                    ; preds = %1019
  br label %1369

; <label>:1369                                    ; preds = %1368, %886, %877
  br label %1370

; <label>:1370                                    ; preds = %1369, %876
  %1371 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1372 = zext i8 %1371 to i32
  store i32 %1372, i32* @zz_size, align 4
  %1373 = sext i32 %1372 to i64
  %1374 = icmp uge i64 %1373, 265
  br i1 %1374, label %1375, label %1378

; <label>:1375                                    ; preds = %1370
  %1376 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1377 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %1376)
  br label %1403

; <label>:1378                                    ; preds = %1370
  %1379 = load i32, i32* @zz_size, align 4
  %1380 = sext i32 %1379 to i64
  %1381 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1380
  %1382 = load %union.rec*, %union.rec** %1381, align 8
  %1383 = icmp eq %union.rec* %1382, null
  br i1 %1383, label %1384, label %1388

; <label>:1384                                    ; preds = %1378
  %1385 = load i32, i32* @zz_size, align 4
  %1386 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1387 = call %union.rec* @GetMemory(i32 %1385, %struct.FILE_POS* %1386)
  store %union.rec* %1387, %union.rec** @zz_hold, align 8
  br label %1402

; <label>:1388                                    ; preds = %1378
  %1389 = load i32, i32* @zz_size, align 4
  %1390 = sext i32 %1389 to i64
  %1391 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1390
  %1392 = load %union.rec*, %union.rec** %1391, align 8
  store %union.rec* %1392, %union.rec** @zz_hold, align 8
  store %union.rec* %1392, %union.rec** @zz_hold, align 8
  %1393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1394 = bitcast %union.rec* %1393 to %struct.word_type*
  %1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %1394, i32 0, i32 0
  %1396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1395, i32 0, i64 0
  %1397 = getelementptr inbounds %struct.LIST, %struct.LIST* %1396, i32 0, i32 0
  %1398 = load %union.rec*, %union.rec** %1397, align 8
  %1399 = load i32, i32* @zz_size, align 4
  %1400 = sext i32 %1399 to i64
  %1401 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1400
  store %union.rec* %1398, %union.rec** %1401, align 8
  br label %1402

; <label>:1402                                    ; preds = %1388, %1384
  br label %1403

; <label>:1403                                    ; preds = %1402, %1375
  %1404 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1405 = bitcast %union.rec* %1404 to %struct.word_type*
  %1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %1405, i32 0, i32 1
  %1407 = bitcast %union.FIRST_UNION* %1406 to %struct.anon*
  %1408 = getelementptr inbounds %struct.anon, %struct.anon* %1407, i32 0, i32 0
  store i8 17, i8* %1408, align 1
  %1409 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1411 = bitcast %union.rec* %1410 to %struct.word_type*
  %1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %1411, i32 0, i32 0
  %1413 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1412, i32 0, i64 1
  %1414 = getelementptr inbounds %struct.LIST, %struct.LIST* %1413, i32 0, i32 1
  store %union.rec* %1409, %union.rec** %1414, align 8
  %1415 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1416 = bitcast %union.rec* %1415 to %struct.word_type*
  %1417 = getelementptr inbounds %struct.word_type, %struct.word_type* %1416, i32 0, i32 0
  %1418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1417, i32 0, i64 1
  %1419 = getelementptr inbounds %struct.LIST, %struct.LIST* %1418, i32 0, i32 0
  store %union.rec* %1409, %union.rec** %1419, align 8
  %1420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1421 = bitcast %union.rec* %1420 to %struct.word_type*
  %1422 = getelementptr inbounds %struct.word_type, %struct.word_type* %1421, i32 0, i32 0
  %1423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1422, i32 0, i64 0
  %1424 = getelementptr inbounds %struct.LIST, %struct.LIST* %1423, i32 0, i32 1
  store %union.rec* %1409, %union.rec** %1424, align 8
  %1425 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1426 = bitcast %union.rec* %1425 to %struct.word_type*
  %1427 = getelementptr inbounds %struct.word_type, %struct.word_type* %1426, i32 0, i32 0
  %1428 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1427, i32 0, i64 0
  %1429 = getelementptr inbounds %struct.LIST, %struct.LIST* %1428, i32 0, i32 0
  store %union.rec* %1409, %union.rec** %1429, align 8
  store %union.rec* %1409, %union.rec** %export_list, align 8
  %1430 = load %union.rec*, %union.rec** %t, align 8
  %1431 = bitcast %union.rec* %1430 to %struct.word_type*
  %1432 = getelementptr inbounds %struct.word_type, %struct.word_type* %1431, i32 0, i32 1
  %1433 = bitcast %union.FIRST_UNION* %1432 to %struct.anon*
  %1434 = getelementptr inbounds %struct.anon, %struct.anon* %1433, i32 0, i32 0
  %1435 = load i8, i8* %1434, align 1
  %1436 = zext i8 %1435 to i32
  %1437 = icmp eq i32 %1436, 11
  br i1 %1437, label %1438, label %1761

; <label>:1438                                    ; preds = %1403
  %1439 = load %union.rec*, %union.rec** %t, align 8
  %1440 = bitcast %union.rec* %1439 to %struct.word_type*
  %1441 = getelementptr inbounds %struct.word_type, %struct.word_type* %1440, i32 0, i32 4
  %1442 = getelementptr inbounds [4 x i8], [4 x i8]* %1441, i32 0, i32 0
  %1443 = call i32 @strcmp(i8* %1442, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.18, i32 0, i32 0)) #3
  %1444 = icmp eq i32 %1443, 0
  br i1 %1444, label %1445, label %1761

; <label>:1445                                    ; preds = %1438
  %1446 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1446, %union.rec** @zz_hold, align 8
  %1447 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1447, %union.rec** @zz_hold, align 8
  %1448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1449 = bitcast %union.rec* %1448 to %struct.word_type*
  %1450 = getelementptr inbounds %struct.word_type, %struct.word_type* %1449, i32 0, i32 1
  %1451 = bitcast %union.FIRST_UNION* %1450 to %struct.anon*
  %1452 = getelementptr inbounds %struct.anon, %struct.anon* %1451, i32 0, i32 0
  %1453 = load i8, i8* %1452, align 1
  %1454 = zext i8 %1453 to i32
  %1455 = icmp eq i32 %1454, 11
  br i1 %1455, label %1465, label %1456

; <label>:1456                                    ; preds = %1445
  %1457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 1
  %1460 = bitcast %union.FIRST_UNION* %1459 to %struct.anon*
  %1461 = getelementptr inbounds %struct.anon, %struct.anon* %1460, i32 0, i32 0
  %1462 = load i8, i8* %1461, align 1
  %1463 = zext i8 %1462 to i32
  %1464 = icmp eq i32 %1463, 12
  br i1 %1464, label %1465, label %1473

; <label>:1465                                    ; preds = %1456, %1445
  %1466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1467 = bitcast %union.rec* %1466 to %struct.word_type*
  %1468 = getelementptr inbounds %struct.word_type, %struct.word_type* %1467, i32 0, i32 1
  %1469 = bitcast %union.FIRST_UNION* %1468 to %struct.anon*
  %1470 = getelementptr inbounds %struct.anon, %struct.anon* %1469, i32 0, i32 1
  %1471 = load i8, i8* %1470, align 1
  %1472 = zext i8 %1471 to i32
  br label %1484

; <label>:1473                                    ; preds = %1456
  %1474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1475 = bitcast %union.rec* %1474 to %struct.word_type*
  %1476 = getelementptr inbounds %struct.word_type, %struct.word_type* %1475, i32 0, i32 1
  %1477 = bitcast %union.FIRST_UNION* %1476 to %struct.anon*
  %1478 = getelementptr inbounds %struct.anon, %struct.anon* %1477, i32 0, i32 0
  %1479 = load i8, i8* %1478, align 1
  %1480 = zext i8 %1479 to i64
  %1481 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1480
  %1482 = load i8, i8* %1481, align 1
  %1483 = zext i8 %1482 to i32
  br label %1484

; <label>:1484                                    ; preds = %1473, %1465
  %1485 = phi i32 [ %1472, %1465 ], [ %1483, %1473 ]
  store i32 %1485, i32* @zz_size, align 4
  %1486 = load i32, i32* @zz_size, align 4
  %1487 = sext i32 %1486 to i64
  %1488 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1487
  %1489 = load %union.rec*, %union.rec** %1488, align 8
  %1490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1491 = bitcast %union.rec* %1490 to %struct.word_type*
  %1492 = getelementptr inbounds %struct.word_type, %struct.word_type* %1491, i32 0, i32 0
  %1493 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1492, i32 0, i64 0
  %1494 = getelementptr inbounds %struct.LIST, %struct.LIST* %1493, i32 0, i32 0
  store %union.rec* %1489, %union.rec** %1494, align 8
  %1495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1496 = load i32, i32* @zz_size, align 4
  %1497 = sext i32 %1496 to i64
  %1498 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1497
  store %union.rec* %1495, %union.rec** %1498, align 8
  call void @SuppressScope()
  %1499 = call %union.rec* @LexGetToken()
  store %union.rec* %1499, %union.rec** %t, align 8
  br label %1500

; <label>:1500                                    ; preds = %1757, %1484
  %1501 = load %union.rec*, %union.rec** %t, align 8
  %1502 = bitcast %union.rec* %1501 to %struct.word_type*
  %1503 = getelementptr inbounds %struct.word_type, %struct.word_type* %1502, i32 0, i32 1
  %1504 = bitcast %union.FIRST_UNION* %1503 to %struct.anon*
  %1505 = getelementptr inbounds %struct.anon, %struct.anon* %1504, i32 0, i32 0
  %1506 = load i8, i8* %1505, align 1
  %1507 = zext i8 %1506 to i32
  %1508 = icmp eq i32 %1507, 11
  br i1 %1508, label %1518, label %1509

; <label>:1509                                    ; preds = %1500
  %1510 = load %union.rec*, %union.rec** %t, align 8
  %1511 = bitcast %union.rec* %1510 to %struct.word_type*
  %1512 = getelementptr inbounds %struct.word_type, %struct.word_type* %1511, i32 0, i32 1
  %1513 = bitcast %union.FIRST_UNION* %1512 to %struct.anon*
  %1514 = getelementptr inbounds %struct.anon, %struct.anon* %1513, i32 0, i32 0
  %1515 = load i8, i8* %1514, align 1
  %1516 = zext i8 %1515 to i32
  %1517 = icmp eq i32 %1516, 12
  br i1 %1517, label %1518, label %1585

; <label>:1518                                    ; preds = %1509, %1500
  %1519 = load %union.rec*, %union.rec** %t, align 8
  %1520 = bitcast %union.rec* %1519 to %struct.word_type*
  %1521 = getelementptr inbounds %struct.word_type, %struct.word_type* %1520, i32 0, i32 1
  %1522 = bitcast %union.FIRST_UNION* %1521 to %struct.anon*
  %1523 = getelementptr inbounds %struct.anon, %struct.anon* %1522, i32 0, i32 0
  %1524 = load i8, i8* %1523, align 1
  %1525 = zext i8 %1524 to i32
  %1526 = icmp eq i32 %1525, 11
  br i1 %1526, label %1527, label %1534

; <label>:1527                                    ; preds = %1518
  %1528 = load %union.rec*, %union.rec** %t, align 8
  %1529 = bitcast %union.rec* %1528 to %struct.word_type*
  %1530 = getelementptr inbounds %struct.word_type, %struct.word_type* %1529, i32 0, i32 4
  %1531 = getelementptr inbounds [4 x i8], [4 x i8]* %1530, i32 0, i32 0
  %1532 = call i32 @strcmp(i8* %1531, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %1533 = icmp eq i32 %1532, 0
  br i1 %1533, label %1585, label %1534

; <label>:1534                                    ; preds = %1527, %1518
  %1535 = load %union.rec*, %union.rec** %t, align 8
  %1536 = bitcast %union.rec* %1535 to %struct.word_type*
  %1537 = getelementptr inbounds %struct.word_type, %struct.word_type* %1536, i32 0, i32 1
  %1538 = bitcast %union.FIRST_UNION* %1537 to %struct.anon*
  %1539 = getelementptr inbounds %struct.anon, %struct.anon* %1538, i32 0, i32 0
  %1540 = load i8, i8* %1539, align 1
  %1541 = zext i8 %1540 to i32
  %1542 = icmp eq i32 %1541, 11
  br i1 %1542, label %1543, label %1550

; <label>:1543                                    ; preds = %1534
  %1544 = load %union.rec*, %union.rec** %t, align 8
  %1545 = bitcast %union.rec* %1544 to %struct.word_type*
  %1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %1545, i32 0, i32 4
  %1547 = getelementptr inbounds [4 x i8], [4 x i8]* %1546, i32 0, i32 0
  %1548 = call i32 @strcmp(i8* %1547, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %1549 = icmp eq i32 %1548, 0
  br i1 %1549, label %1585, label %1550

; <label>:1550                                    ; preds = %1543, %1534
  %1551 = load %union.rec*, %union.rec** %t, align 8
  %1552 = bitcast %union.rec* %1551 to %struct.word_type*
  %1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %1552, i32 0, i32 1
  %1554 = bitcast %union.FIRST_UNION* %1553 to %struct.anon*
  %1555 = getelementptr inbounds %struct.anon, %struct.anon* %1554, i32 0, i32 0
  %1556 = load i8, i8* %1555, align 1
  %1557 = zext i8 %1556 to i32
  %1558 = icmp eq i32 %1557, 11
  br i1 %1558, label %1559, label %1566

; <label>:1559                                    ; preds = %1550
  %1560 = load %union.rec*, %union.rec** %t, align 8
  %1561 = bitcast %union.rec* %1560 to %struct.word_type*
  %1562 = getelementptr inbounds %struct.word_type, %struct.word_type* %1561, i32 0, i32 4
  %1563 = getelementptr inbounds [4 x i8], [4 x i8]* %1562, i32 0, i32 0
  %1564 = call i32 @strcmp(i8* %1563, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %1565 = icmp eq i32 %1564, 0
  br i1 %1565, label %1585, label %1566

; <label>:1566                                    ; preds = %1559, %1550
  %1567 = load %union.rec*, %union.rec** %t, align 8
  %1568 = bitcast %union.rec* %1567 to %struct.word_type*
  %1569 = getelementptr inbounds %struct.word_type, %struct.word_type* %1568, i32 0, i32 1
  %1570 = bitcast %union.FIRST_UNION* %1569 to %struct.anon*
  %1571 = getelementptr inbounds %struct.anon, %struct.anon* %1570, i32 0, i32 0
  %1572 = load i8, i8* %1571, align 1
  %1573 = zext i8 %1572 to i32
  %1574 = icmp eq i32 %1573, 11
  br i1 %1574, label %1575, label %1582

; <label>:1575                                    ; preds = %1566
  %1576 = load %union.rec*, %union.rec** %t, align 8
  %1577 = bitcast %union.rec* %1576 to %struct.word_type*
  %1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %1577, i32 0, i32 4
  %1579 = getelementptr inbounds [4 x i8], [4 x i8]* %1578, i32 0, i32 0
  %1580 = call i32 @strcmp(i8* %1579, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0)) #3
  %1581 = icmp eq i32 %1580, 0
  br label %1582

; <label>:1582                                    ; preds = %1575, %1566
  %1583 = phi i1 [ false, %1566 ], [ %1581, %1575 ]
  %1584 = xor i1 %1583, true
  br label %1585

; <label>:1585                                    ; preds = %1582, %1559, %1543, %1527, %1509
  %1586 = phi i1 [ false, %1559 ], [ false, %1543 ], [ false, %1527 ], [ false, %1509 ], [ %1584, %1582 ]
  br i1 %1586, label %1587, label %1760

; <label>:1587                                    ; preds = %1585
  %1588 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1589 = zext i8 %1588 to i32
  store i32 %1589, i32* @zz_size, align 4
  %1590 = sext i32 %1589 to i64
  %1591 = icmp uge i64 %1590, 265
  br i1 %1591, label %1592, label %1595

; <label>:1592                                    ; preds = %1587
  %1593 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1594 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %1593)
  br label %1620

; <label>:1595                                    ; preds = %1587
  %1596 = load i32, i32* @zz_size, align 4
  %1597 = sext i32 %1596 to i64
  %1598 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1597
  %1599 = load %union.rec*, %union.rec** %1598, align 8
  %1600 = icmp eq %union.rec* %1599, null
  br i1 %1600, label %1601, label %1605

; <label>:1601                                    ; preds = %1595
  %1602 = load i32, i32* @zz_size, align 4
  %1603 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1604 = call %union.rec* @GetMemory(i32 %1602, %struct.FILE_POS* %1603)
  store %union.rec* %1604, %union.rec** @zz_hold, align 8
  br label %1619

; <label>:1605                                    ; preds = %1595
  %1606 = load i32, i32* @zz_size, align 4
  %1607 = sext i32 %1606 to i64
  %1608 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1607
  %1609 = load %union.rec*, %union.rec** %1608, align 8
  store %union.rec* %1609, %union.rec** @zz_hold, align 8
  store %union.rec* %1609, %union.rec** @zz_hold, align 8
  %1610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1611 = bitcast %union.rec* %1610 to %struct.word_type*
  %1612 = getelementptr inbounds %struct.word_type, %struct.word_type* %1611, i32 0, i32 0
  %1613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1612, i32 0, i64 0
  %1614 = getelementptr inbounds %struct.LIST, %struct.LIST* %1613, i32 0, i32 0
  %1615 = load %union.rec*, %union.rec** %1614, align 8
  %1616 = load i32, i32* @zz_size, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1617
  store %union.rec* %1615, %union.rec** %1618, align 8
  br label %1619

; <label>:1619                                    ; preds = %1605, %1601
  br label %1620

; <label>:1620                                    ; preds = %1619, %1592
  %1621 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1622 = bitcast %union.rec* %1621 to %struct.word_type*
  %1623 = getelementptr inbounds %struct.word_type, %struct.word_type* %1622, i32 0, i32 1
  %1624 = bitcast %union.FIRST_UNION* %1623 to %struct.anon*
  %1625 = getelementptr inbounds %struct.anon, %struct.anon* %1624, i32 0, i32 0
  store i8 0, i8* %1625, align 1
  %1626 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1628 = bitcast %union.rec* %1627 to %struct.word_type*
  %1629 = getelementptr inbounds %struct.word_type, %struct.word_type* %1628, i32 0, i32 0
  %1630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1629, i32 0, i64 1
  %1631 = getelementptr inbounds %struct.LIST, %struct.LIST* %1630, i32 0, i32 1
  store %union.rec* %1626, %union.rec** %1631, align 8
  %1632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1633 = bitcast %union.rec* %1632 to %struct.word_type*
  %1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %1633, i32 0, i32 0
  %1635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1634, i32 0, i64 1
  %1636 = getelementptr inbounds %struct.LIST, %struct.LIST* %1635, i32 0, i32 0
  store %union.rec* %1626, %union.rec** %1636, align 8
  %1637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1638 = bitcast %union.rec* %1637 to %struct.word_type*
  %1639 = getelementptr inbounds %struct.word_type, %struct.word_type* %1638, i32 0, i32 0
  %1640 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1639, i32 0, i64 0
  %1641 = getelementptr inbounds %struct.LIST, %struct.LIST* %1640, i32 0, i32 1
  store %union.rec* %1626, %union.rec** %1641, align 8
  %1642 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1643 = bitcast %union.rec* %1642 to %struct.word_type*
  %1644 = getelementptr inbounds %struct.word_type, %struct.word_type* %1643, i32 0, i32 0
  %1645 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1644, i32 0, i64 0
  %1646 = getelementptr inbounds %struct.LIST, %struct.LIST* %1645, i32 0, i32 0
  store %union.rec* %1626, %union.rec** %1646, align 8
  store %union.rec* %1626, %union.rec** @xx_link, align 8
  %1647 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1647, %union.rec** @zz_res, align 8
  %1648 = load %union.rec*, %union.rec** %export_list, align 8
  store %union.rec* %1648, %union.rec** @zz_hold, align 8
  %1649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1650 = icmp eq %union.rec* %1649, null
  br i1 %1650, label %1651, label %1653

; <label>:1651                                    ; preds = %1620
  %1652 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1701

; <label>:1653                                    ; preds = %1620
  %1654 = load %union.rec*, %union.rec** @zz_res, align 8
  %1655 = icmp eq %union.rec* %1654, null
  br i1 %1655, label %1656, label %1658

; <label>:1656                                    ; preds = %1653
  %1657 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1699

; <label>:1658                                    ; preds = %1653
  %1659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1660 = bitcast %union.rec* %1659 to %struct.word_type*
  %1661 = getelementptr inbounds %struct.word_type, %struct.word_type* %1660, i32 0, i32 0
  %1662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1661, i32 0, i64 0
  %1663 = getelementptr inbounds %struct.LIST, %struct.LIST* %1662, i32 0, i32 0
  %1664 = load %union.rec*, %union.rec** %1663, align 8
  store %union.rec* %1664, %union.rec** @zz_tmp, align 8
  %1665 = load %union.rec*, %union.rec** @zz_res, align 8
  %1666 = bitcast %union.rec* %1665 to %struct.word_type*
  %1667 = getelementptr inbounds %struct.word_type, %struct.word_type* %1666, i32 0, i32 0
  %1668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1667, i32 0, i64 0
  %1669 = getelementptr inbounds %struct.LIST, %struct.LIST* %1668, i32 0, i32 0
  %1670 = load %union.rec*, %union.rec** %1669, align 8
  %1671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1672 = bitcast %union.rec* %1671 to %struct.word_type*
  %1673 = getelementptr inbounds %struct.word_type, %struct.word_type* %1672, i32 0, i32 0
  %1674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1673, i32 0, i64 0
  %1675 = getelementptr inbounds %struct.LIST, %struct.LIST* %1674, i32 0, i32 0
  store %union.rec* %1670, %union.rec** %1675, align 8
  %1676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1677 = load %union.rec*, %union.rec** @zz_res, align 8
  %1678 = bitcast %union.rec* %1677 to %struct.word_type*
  %1679 = getelementptr inbounds %struct.word_type, %struct.word_type* %1678, i32 0, i32 0
  %1680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1679, i32 0, i64 0
  %1681 = getelementptr inbounds %struct.LIST, %struct.LIST* %1680, i32 0, i32 0
  %1682 = load %union.rec*, %union.rec** %1681, align 8
  %1683 = bitcast %union.rec* %1682 to %struct.word_type*
  %1684 = getelementptr inbounds %struct.word_type, %struct.word_type* %1683, i32 0, i32 0
  %1685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1684, i32 0, i64 0
  %1686 = getelementptr inbounds %struct.LIST, %struct.LIST* %1685, i32 0, i32 1
  store %union.rec* %1676, %union.rec** %1686, align 8
  %1687 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1688 = load %union.rec*, %union.rec** @zz_res, align 8
  %1689 = bitcast %union.rec* %1688 to %struct.word_type*
  %1690 = getelementptr inbounds %struct.word_type, %struct.word_type* %1689, i32 0, i32 0
  %1691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1690, i32 0, i64 0
  %1692 = getelementptr inbounds %struct.LIST, %struct.LIST* %1691, i32 0, i32 0
  store %union.rec* %1687, %union.rec** %1692, align 8
  %1693 = load %union.rec*, %union.rec** @zz_res, align 8
  %1694 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1695 = bitcast %union.rec* %1694 to %struct.word_type*
  %1696 = getelementptr inbounds %struct.word_type, %struct.word_type* %1695, i32 0, i32 0
  %1697 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1696, i32 0, i64 0
  %1698 = getelementptr inbounds %struct.LIST, %struct.LIST* %1697, i32 0, i32 1
  store %union.rec* %1693, %union.rec** %1698, align 8
  br label %1699

; <label>:1699                                    ; preds = %1658, %1656
  %1700 = phi %union.rec* [ %1657, %1656 ], [ %1693, %1658 ]
  br label %1701

; <label>:1701                                    ; preds = %1699, %1651
  %1702 = phi %union.rec* [ %1652, %1651 ], [ %1700, %1699 ]
  %1703 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1703, %union.rec** @zz_res, align 8
  %1704 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1704, %union.rec** @zz_hold, align 8
  %1705 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1706 = icmp eq %union.rec* %1705, null
  br i1 %1706, label %1707, label %1709

; <label>:1707                                    ; preds = %1701
  %1708 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1757

; <label>:1709                                    ; preds = %1701
  %1710 = load %union.rec*, %union.rec** @zz_res, align 8
  %1711 = icmp eq %union.rec* %1710, null
  br i1 %1711, label %1712, label %1714

; <label>:1712                                    ; preds = %1709
  %1713 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1755

; <label>:1714                                    ; preds = %1709
  %1715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1716 = bitcast %union.rec* %1715 to %struct.word_type*
  %1717 = getelementptr inbounds %struct.word_type, %struct.word_type* %1716, i32 0, i32 0
  %1718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1717, i32 0, i64 1
  %1719 = getelementptr inbounds %struct.LIST, %struct.LIST* %1718, i32 0, i32 0
  %1720 = load %union.rec*, %union.rec** %1719, align 8
  store %union.rec* %1720, %union.rec** @zz_tmp, align 8
  %1721 = load %union.rec*, %union.rec** @zz_res, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.word_type*
  %1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %1722, i32 0, i32 0
  %1724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1723, i32 0, i64 1
  %1725 = getelementptr inbounds %struct.LIST, %struct.LIST* %1724, i32 0, i32 0
  %1726 = load %union.rec*, %union.rec** %1725, align 8
  %1727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1728 = bitcast %union.rec* %1727 to %struct.word_type*
  %1729 = getelementptr inbounds %struct.word_type, %struct.word_type* %1728, i32 0, i32 0
  %1730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1729, i32 0, i64 1
  %1731 = getelementptr inbounds %struct.LIST, %struct.LIST* %1730, i32 0, i32 0
  store %union.rec* %1726, %union.rec** %1731, align 8
  %1732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1733 = load %union.rec*, %union.rec** @zz_res, align 8
  %1734 = bitcast %union.rec* %1733 to %struct.word_type*
  %1735 = getelementptr inbounds %struct.word_type, %struct.word_type* %1734, i32 0, i32 0
  %1736 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1735, i32 0, i64 1
  %1737 = getelementptr inbounds %struct.LIST, %struct.LIST* %1736, i32 0, i32 0
  %1738 = load %union.rec*, %union.rec** %1737, align 8
  %1739 = bitcast %union.rec* %1738 to %struct.word_type*
  %1740 = getelementptr inbounds %struct.word_type, %struct.word_type* %1739, i32 0, i32 0
  %1741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1740, i32 0, i64 1
  %1742 = getelementptr inbounds %struct.LIST, %struct.LIST* %1741, i32 0, i32 1
  store %union.rec* %1732, %union.rec** %1742, align 8
  %1743 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1744 = load %union.rec*, %union.rec** @zz_res, align 8
  %1745 = bitcast %union.rec* %1744 to %struct.word_type*
  %1746 = getelementptr inbounds %struct.word_type, %struct.word_type* %1745, i32 0, i32 0
  %1747 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1746, i32 0, i64 1
  %1748 = getelementptr inbounds %struct.LIST, %struct.LIST* %1747, i32 0, i32 0
  store %union.rec* %1743, %union.rec** %1748, align 8
  %1749 = load %union.rec*, %union.rec** @zz_res, align 8
  %1750 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1751 = bitcast %union.rec* %1750 to %struct.word_type*
  %1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %1751, i32 0, i32 0
  %1753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1752, i32 0, i64 1
  %1754 = getelementptr inbounds %struct.LIST, %struct.LIST* %1753, i32 0, i32 1
  store %union.rec* %1749, %union.rec** %1754, align 8
  br label %1755

; <label>:1755                                    ; preds = %1714, %1712
  %1756 = phi %union.rec* [ %1713, %1712 ], [ %1749, %1714 ]
  br label %1757

; <label>:1757                                    ; preds = %1755, %1707
  %1758 = phi %union.rec* [ %1708, %1707 ], [ %1756, %1755 ]
  %1759 = call %union.rec* @LexGetToken()
  store %union.rec* %1759, %union.rec** %t, align 8
  br label %1500

; <label>:1760                                    ; preds = %1585
  call void @UnSuppressScope()
  br label %1761

; <label>:1761                                    ; preds = %1760, %1438, %1403
  %1762 = load i8, i8* %3, align 1
  %1763 = zext i8 %1762 to i32
  %1764 = icmp eq i32 %1763, 143
  br i1 %1764, label %1765, label %1803

; <label>:1765                                    ; preds = %1761
  %1766 = load %union.rec*, %union.rec** %t, align 8
  %1767 = bitcast %union.rec* %1766 to %struct.word_type*
  %1768 = getelementptr inbounds %struct.word_type, %struct.word_type* %1767, i32 0, i32 1
  %1769 = bitcast %union.FIRST_UNION* %1768 to %struct.anon*
  %1770 = getelementptr inbounds %struct.anon, %struct.anon* %1769, i32 0, i32 0
  %1771 = load i8, i8* %1770, align 1
  %1772 = zext i8 %1771 to i32
  %1773 = icmp eq i32 %1772, 11
  br i1 %1773, label %1774, label %1781

; <label>:1774                                    ; preds = %1765
  %1775 = load %union.rec*, %union.rec** %t, align 8
  %1776 = bitcast %union.rec* %1775 to %struct.word_type*
  %1777 = getelementptr inbounds %struct.word_type, %struct.word_type* %1776, i32 0, i32 4
  %1778 = getelementptr inbounds [4 x i8], [4 x i8]* %1777, i32 0, i32 0
  %1779 = call i32 @strcmp(i8* %1778, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0)) #3
  %1780 = icmp eq i32 %1779, 0
  br i1 %1780, label %1803, label %1781

; <label>:1781                                    ; preds = %1774, %1765
  %1782 = load %union.rec*, %union.rec** %t, align 8
  %1783 = bitcast %union.rec* %1782 to %struct.word_type*
  %1784 = getelementptr inbounds %struct.word_type, %struct.word_type* %1783, i32 0, i32 1
  %1785 = bitcast %union.FIRST_UNION* %1784 to %struct.anon*
  %1786 = getelementptr inbounds %struct.anon, %struct.anon* %1785, i32 0, i32 0
  %1787 = load i8, i8* %1786, align 1
  %1788 = zext i8 %1787 to i32
  %1789 = icmp eq i32 %1788, 11
  br i1 %1789, label %1790, label %1797

; <label>:1790                                    ; preds = %1781
  %1791 = load %union.rec*, %union.rec** %t, align 8
  %1792 = bitcast %union.rec* %1791 to %struct.word_type*
  %1793 = getelementptr inbounds %struct.word_type, %struct.word_type* %1792, i32 0, i32 4
  %1794 = getelementptr inbounds [4 x i8], [4 x i8]* %1793, i32 0, i32 0
  %1795 = call i32 @strcmp(i8* %1794, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %1796 = icmp eq i32 %1795, 0
  br i1 %1796, label %1803, label %1797

; <label>:1797                                    ; preds = %1790, %1781
  %1798 = load %union.rec*, %union.rec** %t, align 8
  %1799 = bitcast %union.rec* %1798 to %struct.word_type*
  %1800 = getelementptr inbounds %struct.word_type, %struct.word_type* %1799, i32 0, i32 1
  %1801 = bitcast %union.FIRST_UNION* %1800 to %struct.FILE_POS*
  %1802 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 30, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.24, i32 0, i32 0), i32 2, %struct.FILE_POS* %1801, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.15, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  br label %3819

; <label>:1803                                    ; preds = %1790, %1774, %1761
  %1804 = load i8, i8* %3, align 1
  %1805 = zext i8 %1804 to i32
  %1806 = icmp eq i32 %1805, 145
  br i1 %1806, label %1807, label %1829

; <label>:1807                                    ; preds = %1803
  %1808 = load %union.rec*, %union.rec** %t, align 8
  %1809 = bitcast %union.rec* %1808 to %struct.word_type*
  %1810 = getelementptr inbounds %struct.word_type, %struct.word_type* %1809, i32 0, i32 1
  %1811 = bitcast %union.FIRST_UNION* %1810 to %struct.anon*
  %1812 = getelementptr inbounds %struct.anon, %struct.anon* %1811, i32 0, i32 0
  %1813 = load i8, i8* %1812, align 1
  %1814 = zext i8 %1813 to i32
  %1815 = icmp eq i32 %1814, 11
  br i1 %1815, label %1816, label %1823

; <label>:1816                                    ; preds = %1807
  %1817 = load %union.rec*, %union.rec** %t, align 8
  %1818 = bitcast %union.rec* %1817 to %struct.word_type*
  %1819 = getelementptr inbounds %struct.word_type, %struct.word_type* %1818, i32 0, i32 4
  %1820 = getelementptr inbounds [4 x i8], [4 x i8]* %1819, i32 0, i32 0
  %1821 = call i32 @strcmp(i8* %1820, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1829, label %1823

; <label>:1823                                    ; preds = %1816, %1807
  %1824 = load %union.rec*, %union.rec** %t, align 8
  %1825 = bitcast %union.rec* %1824 to %struct.word_type*
  %1826 = getelementptr inbounds %struct.word_type, %struct.word_type* %1825, i32 0, i32 1
  %1827 = bitcast %union.FIRST_UNION* %1826 to %struct.FILE_POS*
  %1828 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 31, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.25, i32 0, i32 0), i32 2, %struct.FILE_POS* %1827, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0))
  br label %3819

; <label>:1829                                    ; preds = %1816, %1803
  %1830 = load %union.rec*, %union.rec** %t, align 8
  %1831 = bitcast %union.rec* %1830 to %struct.word_type*
  %1832 = getelementptr inbounds %struct.word_type, %struct.word_type* %1831, i32 0, i32 1
  %1833 = bitcast %union.FIRST_UNION* %1832 to %struct.anon*
  %1834 = getelementptr inbounds %struct.anon, %struct.anon* %1833, i32 0, i32 0
  %1835 = load i8, i8* %1834, align 1
  %1836 = zext i8 %1835 to i32
  %1837 = icmp eq i32 %1836, 11
  br i1 %1837, label %1838, label %1864

; <label>:1838                                    ; preds = %1829
  %1839 = load %union.rec*, %union.rec** %t, align 8
  %1840 = bitcast %union.rec* %1839 to %struct.word_type*
  %1841 = getelementptr inbounds %struct.word_type, %struct.word_type* %1840, i32 0, i32 4
  %1842 = getelementptr inbounds [4 x i8], [4 x i8]* %1841, i32 0, i32 0
  %1843 = call i32 @strcmp(i8* %1842, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0)) #3
  %1844 = icmp eq i32 %1843, 0
  br i1 %1844, label %1845, label %1864

; <label>:1845                                    ; preds = %1838
  %1846 = load %union.rec*, %union.rec** %export_list, align 8
  %1847 = bitcast %union.rec* %1846 to %struct.word_type*
  %1848 = getelementptr inbounds %struct.word_type, %struct.word_type* %1847, i32 0, i32 0
  %1849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1848, i32 0, i64 0
  %1850 = getelementptr inbounds %struct.LIST, %struct.LIST* %1849, i32 0, i32 1
  %1851 = load %union.rec*, %union.rec** %1850, align 8
  %1852 = load %union.rec*, %union.rec** %export_list, align 8
  %1853 = icmp ne %union.rec* %1851, %1852
  br i1 %1853, label %1854, label %1860

; <label>:1854                                    ; preds = %1845
  %1855 = load %union.rec*, %union.rec** %t, align 8
  %1856 = bitcast %union.rec* %1855 to %struct.word_type*
  %1857 = getelementptr inbounds %struct.word_type, %struct.word_type* %1856, i32 0, i32 1
  %1858 = bitcast %union.FIRST_UNION* %1857 to %struct.FILE_POS*
  %1859 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 32, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.26, i32 0, i32 0), i32 2, %struct.FILE_POS* %1858)
  br label %1860

; <label>:1860                                    ; preds = %1854, %1845
  %1861 = load %union.rec*, %union.rec** %curr_encl, align 8
  %1862 = load %union.rec*, %union.rec** %2, align 8
  %1863 = call %union.rec* @ReadMacro(%union.rec** %t, %union.rec* %1861, %union.rec* %1862)
  store %union.rec* %1863, %union.rec** %res, align 8
  br label %3773

; <label>:1864                                    ; preds = %1838, %1829
  call void @SuppressScope()
  %1865 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1865, %union.rec** @zz_hold, align 8
  %1866 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1866, %union.rec** @zz_hold, align 8
  %1867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1868 = bitcast %union.rec* %1867 to %struct.word_type*
  %1869 = getelementptr inbounds %struct.word_type, %struct.word_type* %1868, i32 0, i32 1
  %1870 = bitcast %union.FIRST_UNION* %1869 to %struct.anon*
  %1871 = getelementptr inbounds %struct.anon, %struct.anon* %1870, i32 0, i32 0
  %1872 = load i8, i8* %1871, align 1
  %1873 = zext i8 %1872 to i32
  %1874 = icmp eq i32 %1873, 11
  br i1 %1874, label %1884, label %1875

; <label>:1875                                    ; preds = %1864
  %1876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1877 = bitcast %union.rec* %1876 to %struct.word_type*
  %1878 = getelementptr inbounds %struct.word_type, %struct.word_type* %1877, i32 0, i32 1
  %1879 = bitcast %union.FIRST_UNION* %1878 to %struct.anon*
  %1880 = getelementptr inbounds %struct.anon, %struct.anon* %1879, i32 0, i32 0
  %1881 = load i8, i8* %1880, align 1
  %1882 = zext i8 %1881 to i32
  %1883 = icmp eq i32 %1882, 12
  br i1 %1883, label %1884, label %1892

; <label>:1884                                    ; preds = %1875, %1864
  %1885 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1886 = bitcast %union.rec* %1885 to %struct.word_type*
  %1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %1886, i32 0, i32 1
  %1888 = bitcast %union.FIRST_UNION* %1887 to %struct.anon*
  %1889 = getelementptr inbounds %struct.anon, %struct.anon* %1888, i32 0, i32 1
  %1890 = load i8, i8* %1889, align 1
  %1891 = zext i8 %1890 to i32
  br label %1903

; <label>:1892                                    ; preds = %1875
  %1893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1894 = bitcast %union.rec* %1893 to %struct.word_type*
  %1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %1894, i32 0, i32 1
  %1896 = bitcast %union.FIRST_UNION* %1895 to %struct.anon*
  %1897 = getelementptr inbounds %struct.anon, %struct.anon* %1896, i32 0, i32 0
  %1898 = load i8, i8* %1897, align 1
  %1899 = zext i8 %1898 to i64
  %1900 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1899
  %1901 = load i8, i8* %1900, align 1
  %1902 = zext i8 %1901 to i32
  br label %1903

; <label>:1903                                    ; preds = %1892, %1884
  %1904 = phi i32 [ %1891, %1884 ], [ %1902, %1892 ]
  store i32 %1904, i32* @zz_size, align 4
  %1905 = load i32, i32* @zz_size, align 4
  %1906 = sext i32 %1905 to i64
  %1907 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1906
  %1908 = load %union.rec*, %union.rec** %1907, align 8
  %1909 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1910 = bitcast %union.rec* %1909 to %struct.word_type*
  %1911 = getelementptr inbounds %struct.word_type, %struct.word_type* %1910, i32 0, i32 0
  %1912 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1911, i32 0, i64 0
  %1913 = getelementptr inbounds %struct.LIST, %struct.LIST* %1912, i32 0, i32 0
  store %union.rec* %1908, %union.rec** %1913, align 8
  %1914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1915 = load i32, i32* @zz_size, align 4
  %1916 = sext i32 %1915 to i64
  %1917 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1916
  store %union.rec* %1914, %union.rec** %1917, align 8
  %1918 = call %union.rec* @LexGetToken()
  store %union.rec* %1918, %union.rec** %t, align 8
  %1919 = load i8, i8* %3, align 1
  %1920 = zext i8 %1919 to i32
  %1921 = icmp eq i32 %1920, 145
  br i1 %1921, label %1922, label %1993

; <label>:1922                                    ; preds = %1903
  %1923 = load %union.rec*, %union.rec** %t, align 8
  %1924 = bitcast %union.rec* %1923 to %struct.word_type*
  %1925 = getelementptr inbounds %struct.word_type, %struct.word_type* %1924, i32 0, i32 1
  %1926 = bitcast %union.FIRST_UNION* %1925 to %struct.anon*
  %1927 = getelementptr inbounds %struct.anon, %struct.anon* %1926, i32 0, i32 0
  %1928 = load i8, i8* %1927, align 1
  %1929 = zext i8 %1928 to i32
  %1930 = icmp eq i32 %1929, 11
  br i1 %1930, label %1931, label %1993

; <label>:1931                                    ; preds = %1922
  %1932 = load %union.rec*, %union.rec** %t, align 8
  %1933 = bitcast %union.rec* %1932 to %struct.word_type*
  %1934 = getelementptr inbounds %struct.word_type, %struct.word_type* %1933, i32 0, i32 4
  %1935 = getelementptr inbounds [4 x i8], [4 x i8]* %1934, i32 0, i32 0
  %1936 = call i32 @strcmp(i8* %1935, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.27, i32 0, i32 0)) #3
  %1937 = icmp eq i32 %1936, 0
  br i1 %1937, label %1938, label %1993

; <label>:1938                                    ; preds = %1931
  store i32 1, i32* %compulsory_par, align 4
  %1939 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1939, %union.rec** @zz_hold, align 8
  %1940 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1940, %union.rec** @zz_hold, align 8
  %1941 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1942 = bitcast %union.rec* %1941 to %struct.word_type*
  %1943 = getelementptr inbounds %struct.word_type, %struct.word_type* %1942, i32 0, i32 1
  %1944 = bitcast %union.FIRST_UNION* %1943 to %struct.anon*
  %1945 = getelementptr inbounds %struct.anon, %struct.anon* %1944, i32 0, i32 0
  %1946 = load i8, i8* %1945, align 1
  %1947 = zext i8 %1946 to i32
  %1948 = icmp eq i32 %1947, 11
  br i1 %1948, label %1958, label %1949

; <label>:1949                                    ; preds = %1938
  %1950 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1951 = bitcast %union.rec* %1950 to %struct.word_type*
  %1952 = getelementptr inbounds %struct.word_type, %struct.word_type* %1951, i32 0, i32 1
  %1953 = bitcast %union.FIRST_UNION* %1952 to %struct.anon*
  %1954 = getelementptr inbounds %struct.anon, %struct.anon* %1953, i32 0, i32 0
  %1955 = load i8, i8* %1954, align 1
  %1956 = zext i8 %1955 to i32
  %1957 = icmp eq i32 %1956, 12
  br i1 %1957, label %1958, label %1966

; <label>:1958                                    ; preds = %1949, %1938
  %1959 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1960 = bitcast %union.rec* %1959 to %struct.word_type*
  %1961 = getelementptr inbounds %struct.word_type, %struct.word_type* %1960, i32 0, i32 1
  %1962 = bitcast %union.FIRST_UNION* %1961 to %struct.anon*
  %1963 = getelementptr inbounds %struct.anon, %struct.anon* %1962, i32 0, i32 1
  %1964 = load i8, i8* %1963, align 1
  %1965 = zext i8 %1964 to i32
  br label %1977

; <label>:1966                                    ; preds = %1949
  %1967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1968 = bitcast %union.rec* %1967 to %struct.word_type*
  %1969 = getelementptr inbounds %struct.word_type, %struct.word_type* %1968, i32 0, i32 1
  %1970 = bitcast %union.FIRST_UNION* %1969 to %struct.anon*
  %1971 = getelementptr inbounds %struct.anon, %struct.anon* %1970, i32 0, i32 0
  %1972 = load i8, i8* %1971, align 1
  %1973 = zext i8 %1972 to i64
  %1974 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1973
  %1975 = load i8, i8* %1974, align 1
  %1976 = zext i8 %1975 to i32
  br label %1977

; <label>:1977                                    ; preds = %1966, %1958
  %1978 = phi i32 [ %1965, %1958 ], [ %1976, %1966 ]
  store i32 %1978, i32* @zz_size, align 4
  %1979 = load i32, i32* @zz_size, align 4
  %1980 = sext i32 %1979 to i64
  %1981 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1980
  %1982 = load %union.rec*, %union.rec** %1981, align 8
  %1983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1984 = bitcast %union.rec* %1983 to %struct.word_type*
  %1985 = getelementptr inbounds %struct.word_type, %struct.word_type* %1984, i32 0, i32 0
  %1986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1985, i32 0, i64 0
  %1987 = getelementptr inbounds %struct.LIST, %struct.LIST* %1986, i32 0, i32 0
  store %union.rec* %1982, %union.rec** %1987, align 8
  %1988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1989 = load i32, i32* @zz_size, align 4
  %1990 = sext i32 %1989 to i64
  %1991 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1990
  store %union.rec* %1988, %union.rec** %1991, align 8
  %1992 = call %union.rec* @LexGetToken()
  store %union.rec* %1992, %union.rec** %t, align 8
  br label %1994

; <label>:1993                                    ; preds = %1931, %1922, %1903
  store i32 0, i32* %compulsory_par, align 4
  br label %1994

; <label>:1994                                    ; preds = %1993, %1977
  %1995 = load %union.rec*, %union.rec** %t, align 8
  %1996 = bitcast %union.rec* %1995 to %struct.word_type*
  %1997 = getelementptr inbounds %struct.word_type, %struct.word_type* %1996, i32 0, i32 1
  %1998 = bitcast %union.FIRST_UNION* %1997 to %struct.anon*
  %1999 = getelementptr inbounds %struct.anon, %struct.anon* %1998, i32 0, i32 0
  %2000 = load i8, i8* %1999, align 1
  %2001 = zext i8 %2000 to i32
  %2002 = icmp eq i32 %2001, 11
  br i1 %2002, label %2020, label %2003

; <label>:2003                                    ; preds = %1994
  %2004 = load %union.rec*, %union.rec** %t, align 8
  %2005 = bitcast %union.rec* %2004 to %struct.word_type*
  %2006 = getelementptr inbounds %struct.word_type, %struct.word_type* %2005, i32 0, i32 1
  %2007 = bitcast %union.FIRST_UNION* %2006 to %struct.anon*
  %2008 = getelementptr inbounds %struct.anon, %struct.anon* %2007, i32 0, i32 0
  %2009 = load i8, i8* %2008, align 1
  %2010 = zext i8 %2009 to i32
  %2011 = icmp eq i32 %2010, 12
  br i1 %2011, label %2020, label %2012

; <label>:2012                                    ; preds = %2003
  %2013 = load %union.rec*, %union.rec** %t, align 8
  %2014 = bitcast %union.rec* %2013 to %struct.word_type*
  %2015 = getelementptr inbounds %struct.word_type, %struct.word_type* %2014, i32 0, i32 1
  %2016 = bitcast %union.FIRST_UNION* %2015 to %struct.FILE_POS*
  %2017 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 33, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.28, i32 0, i32 0), i32 2, %struct.FILE_POS* %2016)
  call void @UnSuppressScope()
  %2018 = load %union.rec*, %union.rec** %t, align 8
  %2019 = load %union.rec**, %union.rec*** %1, align 8
  store %union.rec* %2018, %union.rec** %2019, align 8
  br label %3822

; <label>:2020                                    ; preds = %2003, %1994
  %2021 = load %union.rec*, %union.rec** %t, align 8
  %2022 = bitcast %union.rec* %2021 to %struct.word_type*
  %2023 = getelementptr inbounds %struct.word_type, %struct.word_type* %2022, i32 0, i32 4
  %2024 = getelementptr inbounds [4 x i8], [4 x i8]* %2023, i32 0, i32 0
  %2025 = load i8, i8* %3, align 1
  %2026 = load %union.rec*, %union.rec** %t, align 8
  %2027 = bitcast %union.rec* %2026 to %struct.word_type*
  %2028 = getelementptr inbounds %struct.word_type, %struct.word_type* %2027, i32 0, i32 1
  %2029 = bitcast %union.FIRST_UNION* %2028 to %struct.FILE_POS*
  %2030 = load %union.rec*, %union.rec** %curr_encl, align 8
  %2031 = call %union.rec* @InsertSym(i8* %2024, i8 zeroext %2025, %struct.FILE_POS* %2029, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %2030, %union.rec* null)
  store %union.rec* %2031, %union.rec** %res, align 8
  %2032 = load %union.rec*, %union.rec** %curr_encl, align 8
  %2033 = load %union.rec*, %union.rec** %2, align 8
  %2034 = icmp ne %union.rec* %2032, %2033
  br i1 %2034, label %2035, label %2045

; <label>:2035                                    ; preds = %2020
  %2036 = load %union.rec*, %union.rec** %res, align 8
  %2037 = bitcast %union.rec* %2036 to %struct.word_type*
  %2038 = getelementptr inbounds %struct.word_type, %struct.word_type* %2037, i32 0, i32 2
  %2039 = bitcast %union.SECOND_UNION* %2038 to %struct.anon.5*
  %2040 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2039, i32 0, i32 1
  %2041 = bitcast [3 x i8]* %2040 to i24*
  %2042 = load i24, i24* %2041, align 1
  %2043 = and i24 %2042, -65537
  %2044 = or i24 %2043, 65536
  store i24 %2044, i24* %2041, align 1
  br label %2045

; <label>:2045                                    ; preds = %2035, %2020
  %2046 = load i32, i32* %has_import_encl, align 4
  %2047 = icmp ne i32 %2046, 0
  br i1 %2047, label %2048, label %2058

; <label>:2048                                    ; preds = %2045
  %2049 = load %union.rec*, %union.rec** %res, align 8
  %2050 = bitcast %union.rec* %2049 to %struct.word_type*
  %2051 = getelementptr inbounds %struct.word_type, %struct.word_type* %2050, i32 0, i32 2
  %2052 = bitcast %union.SECOND_UNION* %2051 to %struct.anon.5*
  %2053 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2052, i32 0, i32 1
  %2054 = bitcast [3 x i8]* %2053 to i24*
  %2055 = load i24, i24* %2054, align 1
  %2056 = and i24 %2055, -4194305
  %2057 = or i24 %2056, 4194304
  store i24 %2057, i24* %2054, align 1
  br label %2058

; <label>:2058                                    ; preds = %2048, %2045
  %2059 = load i32, i32* %compulsory_par, align 4
  %2060 = icmp ne i32 %2059, 0
  br i1 %2060, label %2061, label %2073

; <label>:2061                                    ; preds = %2058
  %2062 = load %union.rec*, %union.rec** %2, align 8
  %2063 = bitcast %union.rec* %2062 to %struct.symbol_type*
  %2064 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %2063, i32 0, i32 13
  %2065 = load i16, i16* %2064, align 2
  %2066 = add i16 %2065, 1
  store i16 %2066, i16* %2064, align 2
  %2067 = load %union.rec*, %union.rec** %res, align 8
  %2068 = bitcast %union.rec* %2067 to %struct.symbol_type*
  %2069 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %2068, i32 0, i32 16
  %2070 = load i8, i8* %2069, align 2
  %2071 = and i8 %2070, -65
  %2072 = or i8 %2071, 64
  store i8 %2072, i8* %2069, align 2
  br label %2073

; <label>:2073                                    ; preds = %2061, %2058
  %2074 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2074, %union.rec** @zz_hold, align 8
  %2075 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2075, %union.rec** @zz_hold, align 8
  %2076 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2077 = bitcast %union.rec* %2076 to %struct.word_type*
  %2078 = getelementptr inbounds %struct.word_type, %struct.word_type* %2077, i32 0, i32 1
  %2079 = bitcast %union.FIRST_UNION* %2078 to %struct.anon*
  %2080 = getelementptr inbounds %struct.anon, %struct.anon* %2079, i32 0, i32 0
  %2081 = load i8, i8* %2080, align 1
  %2082 = zext i8 %2081 to i32
  %2083 = icmp eq i32 %2082, 11
  br i1 %2083, label %2093, label %2084

; <label>:2084                                    ; preds = %2073
  %2085 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2086 = bitcast %union.rec* %2085 to %struct.word_type*
  %2087 = getelementptr inbounds %struct.word_type, %struct.word_type* %2086, i32 0, i32 1
  %2088 = bitcast %union.FIRST_UNION* %2087 to %struct.anon*
  %2089 = getelementptr inbounds %struct.anon, %struct.anon* %2088, i32 0, i32 0
  %2090 = load i8, i8* %2089, align 1
  %2091 = zext i8 %2090 to i32
  %2092 = icmp eq i32 %2091, 12
  br i1 %2092, label %2093, label %2101

; <label>:2093                                    ; preds = %2084, %2073
  %2094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2095 = bitcast %union.rec* %2094 to %struct.word_type*
  %2096 = getelementptr inbounds %struct.word_type, %struct.word_type* %2095, i32 0, i32 1
  %2097 = bitcast %union.FIRST_UNION* %2096 to %struct.anon*
  %2098 = getelementptr inbounds %struct.anon, %struct.anon* %2097, i32 0, i32 1
  %2099 = load i8, i8* %2098, align 1
  %2100 = zext i8 %2099 to i32
  br label %2112

; <label>:2101                                    ; preds = %2084
  %2102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2103 = bitcast %union.rec* %2102 to %struct.word_type*
  %2104 = getelementptr inbounds %struct.word_type, %struct.word_type* %2103, i32 0, i32 1
  %2105 = bitcast %union.FIRST_UNION* %2104 to %struct.anon*
  %2106 = getelementptr inbounds %struct.anon, %struct.anon* %2105, i32 0, i32 0
  %2107 = load i8, i8* %2106, align 1
  %2108 = zext i8 %2107 to i64
  %2109 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2108
  %2110 = load i8, i8* %2109, align 1
  %2111 = zext i8 %2110 to i32
  br label %2112

; <label>:2112                                    ; preds = %2101, %2093
  %2113 = phi i32 [ %2100, %2093 ], [ %2111, %2101 ]
  store i32 %2113, i32* @zz_size, align 4
  %2114 = load i32, i32* @zz_size, align 4
  %2115 = sext i32 %2114 to i64
  %2116 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2115
  %2117 = load %union.rec*, %union.rec** %2116, align 8
  %2118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2119 = bitcast %union.rec* %2118 to %struct.word_type*
  %2120 = getelementptr inbounds %struct.word_type, %struct.word_type* %2119, i32 0, i32 0
  %2121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2120, i32 0, i64 0
  %2122 = getelementptr inbounds %struct.LIST, %struct.LIST* %2121, i32 0, i32 0
  store %union.rec* %2117, %union.rec** %2122, align 8
  %2123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2124 = load i32, i32* @zz_size, align 4
  %2125 = sext i32 %2124 to i64
  %2126 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2125
  store %union.rec* %2123, %union.rec** %2126, align 8
  %2127 = call %union.rec* @LexGetToken()
  store %union.rec* %2127, %union.rec** %t, align 8
  br label %2128

; <label>:2128                                    ; preds = %2391, %2112
  %2129 = load %union.rec*, %union.rec** %t, align 8
  %2130 = bitcast %union.rec* %2129 to %struct.word_type*
  %2131 = getelementptr inbounds %struct.word_type, %struct.word_type* %2130, i32 0, i32 1
  %2132 = bitcast %union.FIRST_UNION* %2131 to %struct.anon*
  %2133 = getelementptr inbounds %struct.anon, %struct.anon* %2132, i32 0, i32 0
  %2134 = load i8, i8* %2133, align 1
  %2135 = zext i8 %2134 to i32
  %2136 = icmp eq i32 %2135, 11
  br i1 %2136, label %2146, label %2137

; <label>:2137                                    ; preds = %2128
  %2138 = load %union.rec*, %union.rec** %t, align 8
  %2139 = bitcast %union.rec* %2138 to %struct.word_type*
  %2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %2139, i32 0, i32 1
  %2141 = bitcast %union.FIRST_UNION* %2140 to %struct.anon*
  %2142 = getelementptr inbounds %struct.anon, %struct.anon* %2141, i32 0, i32 0
  %2143 = load i8, i8* %2142, align 1
  %2144 = zext i8 %2143 to i32
  %2145 = icmp eq i32 %2144, 12
  br i1 %2145, label %2146, label %2341

; <label>:2146                                    ; preds = %2137, %2128
  %2147 = load %union.rec*, %union.rec** %t, align 8
  %2148 = bitcast %union.rec* %2147 to %struct.word_type*
  %2149 = getelementptr inbounds %struct.word_type, %struct.word_type* %2148, i32 0, i32 1
  %2150 = bitcast %union.FIRST_UNION* %2149 to %struct.anon*
  %2151 = getelementptr inbounds %struct.anon, %struct.anon* %2150, i32 0, i32 0
  %2152 = load i8, i8* %2151, align 1
  %2153 = zext i8 %2152 to i32
  %2154 = icmp eq i32 %2153, 11
  br i1 %2154, label %2155, label %2162

; <label>:2155                                    ; preds = %2146
  %2156 = load %union.rec*, %union.rec** %t, align 8
  %2157 = bitcast %union.rec* %2156 to %struct.word_type*
  %2158 = getelementptr inbounds %struct.word_type, %struct.word_type* %2157, i32 0, i32 4
  %2159 = getelementptr inbounds [4 x i8], [4 x i8]* %2158, i32 0, i32 0
  %2160 = call i32 @strcmp(i8* %2159, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.12, i32 0, i32 0)) #3
  %2161 = icmp eq i32 %2160, 0
  br i1 %2161, label %2341, label %2162

; <label>:2162                                    ; preds = %2155, %2146
  %2163 = load %union.rec*, %union.rec** %t, align 8
  %2164 = bitcast %union.rec* %2163 to %struct.word_type*
  %2165 = getelementptr inbounds %struct.word_type, %struct.word_type* %2164, i32 0, i32 1
  %2166 = bitcast %union.FIRST_UNION* %2165 to %struct.anon*
  %2167 = getelementptr inbounds %struct.anon, %struct.anon* %2166, i32 0, i32 0
  %2168 = load i8, i8* %2167, align 1
  %2169 = zext i8 %2168 to i32
  %2170 = icmp eq i32 %2169, 11
  br i1 %2170, label %2171, label %2178

; <label>:2171                                    ; preds = %2162
  %2172 = load %union.rec*, %union.rec** %t, align 8
  %2173 = bitcast %union.rec* %2172 to %struct.word_type*
  %2174 = getelementptr inbounds %struct.word_type, %struct.word_type* %2173, i32 0, i32 4
  %2175 = getelementptr inbounds [4 x i8], [4 x i8]* %2174, i32 0, i32 0
  %2176 = call i32 @strcmp(i8* %2175, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0)) #3
  %2177 = icmp eq i32 %2176, 0
  br i1 %2177, label %2341, label %2178

; <label>:2178                                    ; preds = %2171, %2162
  %2179 = load %union.rec*, %union.rec** %t, align 8
  %2180 = bitcast %union.rec* %2179 to %struct.word_type*
  %2181 = getelementptr inbounds %struct.word_type, %struct.word_type* %2180, i32 0, i32 1
  %2182 = bitcast %union.FIRST_UNION* %2181 to %struct.anon*
  %2183 = getelementptr inbounds %struct.anon, %struct.anon* %2182, i32 0, i32 0
  %2184 = load i8, i8* %2183, align 1
  %2185 = zext i8 %2184 to i32
  %2186 = icmp eq i32 %2185, 11
  br i1 %2186, label %2187, label %2194

; <label>:2187                                    ; preds = %2178
  %2188 = load %union.rec*, %union.rec** %t, align 8
  %2189 = bitcast %union.rec* %2188 to %struct.word_type*
  %2190 = getelementptr inbounds %struct.word_type, %struct.word_type* %2189, i32 0, i32 4
  %2191 = getelementptr inbounds [4 x i8], [4 x i8]* %2190, i32 0, i32 0
  %2192 = call i32 @strcmp(i8* %2191, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  %2193 = icmp eq i32 %2192, 0
  br i1 %2193, label %2341, label %2194

; <label>:2194                                    ; preds = %2187, %2178
  %2195 = load %union.rec*, %union.rec** %t, align 8
  %2196 = bitcast %union.rec* %2195 to %struct.word_type*
  %2197 = getelementptr inbounds %struct.word_type, %struct.word_type* %2196, i32 0, i32 1
  %2198 = bitcast %union.FIRST_UNION* %2197 to %struct.anon*
  %2199 = getelementptr inbounds %struct.anon, %struct.anon* %2198, i32 0, i32 0
  %2200 = load i8, i8* %2199, align 1
  %2201 = zext i8 %2200 to i32
  %2202 = icmp eq i32 %2201, 11
  br i1 %2202, label %2203, label %2210

; <label>:2203                                    ; preds = %2194
  %2204 = load %union.rec*, %union.rec** %t, align 8
  %2205 = bitcast %union.rec* %2204 to %struct.word_type*
  %2206 = getelementptr inbounds %struct.word_type, %struct.word_type* %2205, i32 0, i32 4
  %2207 = getelementptr inbounds [4 x i8], [4 x i8]* %2206, i32 0, i32 0
  %2208 = call i32 @strcmp(i8* %2207, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #3
  %2209 = icmp eq i32 %2208, 0
  br i1 %2209, label %2341, label %2210

; <label>:2210                                    ; preds = %2203, %2194
  %2211 = load %union.rec*, %union.rec** %t, align 8
  %2212 = bitcast %union.rec* %2211 to %struct.word_type*
  %2213 = getelementptr inbounds %struct.word_type, %struct.word_type* %2212, i32 0, i32 1
  %2214 = bitcast %union.FIRST_UNION* %2213 to %struct.anon*
  %2215 = getelementptr inbounds %struct.anon, %struct.anon* %2214, i32 0, i32 0
  %2216 = load i8, i8* %2215, align 1
  %2217 = zext i8 %2216 to i32
  %2218 = icmp eq i32 %2217, 11
  br i1 %2218, label %2219, label %2226

; <label>:2219                                    ; preds = %2210
  %2220 = load %union.rec*, %union.rec** %t, align 8
  %2221 = bitcast %union.rec* %2220 to %struct.word_type*
  %2222 = getelementptr inbounds %struct.word_type, %struct.word_type* %2221, i32 0, i32 4
  %2223 = getelementptr inbounds [4 x i8], [4 x i8]* %2222, i32 0, i32 0
  %2224 = call i32 @strcmp(i8* %2223, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #3
  %2225 = icmp eq i32 %2224, 0
  br i1 %2225, label %2341, label %2226

; <label>:2226                                    ; preds = %2219, %2210
  %2227 = load %union.rec*, %union.rec** %t, align 8
  %2228 = bitcast %union.rec* %2227 to %struct.word_type*
  %2229 = getelementptr inbounds %struct.word_type, %struct.word_type* %2228, i32 0, i32 1
  %2230 = bitcast %union.FIRST_UNION* %2229 to %struct.anon*
  %2231 = getelementptr inbounds %struct.anon, %struct.anon* %2230, i32 0, i32 0
  %2232 = load i8, i8* %2231, align 1
  %2233 = zext i8 %2232 to i32
  %2234 = icmp eq i32 %2233, 11
  br i1 %2234, label %2235, label %2242

; <label>:2235                                    ; preds = %2226
  %2236 = load %union.rec*, %union.rec** %t, align 8
  %2237 = bitcast %union.rec* %2236 to %struct.word_type*
  %2238 = getelementptr inbounds %struct.word_type, %struct.word_type* %2237, i32 0, i32 4
  %2239 = getelementptr inbounds [4 x i8], [4 x i8]* %2238, i32 0, i32 0
  %2240 = call i32 @strcmp(i8* %2239, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #3
  %2241 = icmp eq i32 %2240, 0
  br i1 %2241, label %2341, label %2242

; <label>:2242                                    ; preds = %2235, %2226
  %2243 = load %union.rec*, %union.rec** %t, align 8
  %2244 = bitcast %union.rec* %2243 to %struct.word_type*
  %2245 = getelementptr inbounds %struct.word_type, %struct.word_type* %2244, i32 0, i32 1
  %2246 = bitcast %union.FIRST_UNION* %2245 to %struct.anon*
  %2247 = getelementptr inbounds %struct.anon, %struct.anon* %2246, i32 0, i32 0
  %2248 = load i8, i8* %2247, align 1
  %2249 = zext i8 %2248 to i32
  %2250 = icmp eq i32 %2249, 11
  br i1 %2250, label %2251, label %2258

; <label>:2251                                    ; preds = %2242
  %2252 = load %union.rec*, %union.rec** %t, align 8
  %2253 = bitcast %union.rec* %2252 to %struct.word_type*
  %2254 = getelementptr inbounds %struct.word_type, %struct.word_type* %2253, i32 0, i32 4
  %2255 = getelementptr inbounds [4 x i8], [4 x i8]* %2254, i32 0, i32 0
  %2256 = call i32 @strcmp(i8* %2255, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0)) #3
  %2257 = icmp eq i32 %2256, 0
  br i1 %2257, label %2341, label %2258

; <label>:2258                                    ; preds = %2251, %2242
  %2259 = load %union.rec*, %union.rec** %t, align 8
  %2260 = bitcast %union.rec* %2259 to %struct.word_type*
  %2261 = getelementptr inbounds %struct.word_type, %struct.word_type* %2260, i32 0, i32 1
  %2262 = bitcast %union.FIRST_UNION* %2261 to %struct.anon*
  %2263 = getelementptr inbounds %struct.anon, %struct.anon* %2262, i32 0, i32 0
  %2264 = load i8, i8* %2263, align 1
  %2265 = zext i8 %2264 to i32
  %2266 = icmp eq i32 %2265, 11
  br i1 %2266, label %2267, label %2274

; <label>:2267                                    ; preds = %2258
  %2268 = load %union.rec*, %union.rec** %t, align 8
  %2269 = bitcast %union.rec* %2268 to %struct.word_type*
  %2270 = getelementptr inbounds %struct.word_type, %struct.word_type* %2269, i32 0, i32 4
  %2271 = getelementptr inbounds [4 x i8], [4 x i8]* %2270, i32 0, i32 0
  %2272 = call i32 @strcmp(i8* %2271, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #3
  %2273 = icmp eq i32 %2272, 0
  br i1 %2273, label %2341, label %2274

; <label>:2274                                    ; preds = %2267, %2258
  %2275 = load %union.rec*, %union.rec** %t, align 8
  %2276 = bitcast %union.rec* %2275 to %struct.word_type*
  %2277 = getelementptr inbounds %struct.word_type, %struct.word_type* %2276, i32 0, i32 1
  %2278 = bitcast %union.FIRST_UNION* %2277 to %struct.anon*
  %2279 = getelementptr inbounds %struct.anon, %struct.anon* %2278, i32 0, i32 0
  %2280 = load i8, i8* %2279, align 1
  %2281 = zext i8 %2280 to i32
  %2282 = icmp eq i32 %2281, 11
  br i1 %2282, label %2283, label %2290

; <label>:2283                                    ; preds = %2274
  %2284 = load %union.rec*, %union.rec** %t, align 8
  %2285 = bitcast %union.rec* %2284 to %struct.word_type*
  %2286 = getelementptr inbounds %struct.word_type, %struct.word_type* %2285, i32 0, i32 4
  %2287 = getelementptr inbounds [4 x i8], [4 x i8]* %2286, i32 0, i32 0
  %2288 = call i32 @strcmp(i8* %2287, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #3
  %2289 = icmp eq i32 %2288, 0
  br i1 %2289, label %2341, label %2290

; <label>:2290                                    ; preds = %2283, %2274
  %2291 = load %union.rec*, %union.rec** %t, align 8
  %2292 = bitcast %union.rec* %2291 to %struct.word_type*
  %2293 = getelementptr inbounds %struct.word_type, %struct.word_type* %2292, i32 0, i32 1
  %2294 = bitcast %union.FIRST_UNION* %2293 to %struct.anon*
  %2295 = getelementptr inbounds %struct.anon, %struct.anon* %2294, i32 0, i32 0
  %2296 = load i8, i8* %2295, align 1
  %2297 = zext i8 %2296 to i32
  %2298 = icmp eq i32 %2297, 11
  br i1 %2298, label %2299, label %2306

; <label>:2299                                    ; preds = %2290
  %2300 = load %union.rec*, %union.rec** %t, align 8
  %2301 = bitcast %union.rec* %2300 to %struct.word_type*
  %2302 = getelementptr inbounds %struct.word_type, %struct.word_type* %2301, i32 0, i32 4
  %2303 = getelementptr inbounds [4 x i8], [4 x i8]* %2302, i32 0, i32 0
  %2304 = call i32 @strcmp(i8* %2303, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #3
  %2305 = icmp eq i32 %2304, 0
  br i1 %2305, label %2341, label %2306

; <label>:2306                                    ; preds = %2299, %2290
  %2307 = load %union.rec*, %union.rec** %t, align 8
  %2308 = bitcast %union.rec* %2307 to %struct.word_type*
  %2309 = getelementptr inbounds %struct.word_type, %struct.word_type* %2308, i32 0, i32 1
  %2310 = bitcast %union.FIRST_UNION* %2309 to %struct.anon*
  %2311 = getelementptr inbounds %struct.anon, %struct.anon* %2310, i32 0, i32 0
  %2312 = load i8, i8* %2311, align 1
  %2313 = zext i8 %2312 to i32
  %2314 = icmp eq i32 %2313, 11
  br i1 %2314, label %2315, label %2322

; <label>:2315                                    ; preds = %2306
  %2316 = load %union.rec*, %union.rec** %t, align 8
  %2317 = bitcast %union.rec* %2316 to %struct.word_type*
  %2318 = getelementptr inbounds %struct.word_type, %struct.word_type* %2317, i32 0, i32 4
  %2319 = getelementptr inbounds [4 x i8], [4 x i8]* %2318, i32 0, i32 0
  %2320 = call i32 @strcmp(i8* %2319, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #3
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2341, label %2322

; <label>:2322                                    ; preds = %2315, %2306
  %2323 = load %union.rec*, %union.rec** %t, align 8
  %2324 = bitcast %union.rec* %2323 to %struct.word_type*
  %2325 = getelementptr inbounds %struct.word_type, %struct.word_type* %2324, i32 0, i32 1
  %2326 = bitcast %union.FIRST_UNION* %2325 to %struct.anon*
  %2327 = getelementptr inbounds %struct.anon, %struct.anon* %2326, i32 0, i32 0
  %2328 = load i8, i8* %2327, align 1
  %2329 = zext i8 %2328 to i32
  %2330 = icmp eq i32 %2329, 11
  br i1 %2330, label %2331, label %2338

; <label>:2331                                    ; preds = %2322
  %2332 = load %union.rec*, %union.rec** %t, align 8
  %2333 = bitcast %union.rec* %2332 to %struct.word_type*
  %2334 = getelementptr inbounds %struct.word_type, %struct.word_type* %2333, i32 0, i32 4
  %2335 = getelementptr inbounds [4 x i8], [4 x i8]* %2334, i32 0, i32 0
  %2336 = call i32 @strcmp(i8* %2335, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #3
  %2337 = icmp eq i32 %2336, 0
  br label %2338

; <label>:2338                                    ; preds = %2331, %2322
  %2339 = phi i1 [ false, %2322 ], [ %2337, %2331 ]
  %2340 = xor i1 %2339, true
  br label %2341

; <label>:2341                                    ; preds = %2338, %2315, %2299, %2283, %2267, %2251, %2235, %2219, %2203, %2187, %2171, %2155, %2137
  %2342 = phi i1 [ false, %2315 ], [ false, %2299 ], [ false, %2283 ], [ false, %2267 ], [ false, %2251 ], [ false, %2235 ], [ false, %2219 ], [ false, %2203 ], [ false, %2187 ], [ false, %2171 ], [ false, %2155 ], [ false, %2137 ], [ %2340, %2338 ]
  br i1 %2342, label %2343, label %2407

; <label>:2343                                    ; preds = %2341
  %2344 = load %union.rec*, %union.rec** %t, align 8
  %2345 = bitcast %union.rec* %2344 to %struct.word_type*
  %2346 = getelementptr inbounds %struct.word_type, %struct.word_type* %2345, i32 0, i32 4
  %2347 = getelementptr inbounds [4 x i8], [4 x i8]* %2346, i32 0, i32 0
  %2348 = load %union.rec*, %union.rec** %res, align 8
  %2349 = load %union.rec*, %union.rec** %t, align 8
  %2350 = bitcast %union.rec* %2349 to %struct.word_type*
  %2351 = getelementptr inbounds %struct.word_type, %struct.word_type* %2350, i32 0, i32 1
  %2352 = bitcast %union.FIRST_UNION* %2351 to %struct.FILE_POS*
  call void @InsertAlternativeName(i8* %2347, %union.rec* %2348, %struct.FILE_POS* %2352)
  %2353 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2353, %union.rec** @zz_hold, align 8
  %2354 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2354, %union.rec** @zz_hold, align 8
  %2355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2356 = bitcast %union.rec* %2355 to %struct.word_type*
  %2357 = getelementptr inbounds %struct.word_type, %struct.word_type* %2356, i32 0, i32 1
  %2358 = bitcast %union.FIRST_UNION* %2357 to %struct.anon*
  %2359 = getelementptr inbounds %struct.anon, %struct.anon* %2358, i32 0, i32 0
  %2360 = load i8, i8* %2359, align 1
  %2361 = zext i8 %2360 to i32
  %2362 = icmp eq i32 %2361, 11
  br i1 %2362, label %2372, label %2363

; <label>:2363                                    ; preds = %2343
  %2364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2365 = bitcast %union.rec* %2364 to %struct.word_type*
  %2366 = getelementptr inbounds %struct.word_type, %struct.word_type* %2365, i32 0, i32 1
  %2367 = bitcast %union.FIRST_UNION* %2366 to %struct.anon*
  %2368 = getelementptr inbounds %struct.anon, %struct.anon* %2367, i32 0, i32 0
  %2369 = load i8, i8* %2368, align 1
  %2370 = zext i8 %2369 to i32
  %2371 = icmp eq i32 %2370, 12
  br i1 %2371, label %2372, label %2380

; <label>:2372                                    ; preds = %2363, %2343
  %2373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2374 = bitcast %union.rec* %2373 to %struct.word_type*
  %2375 = getelementptr inbounds %struct.word_type, %struct.word_type* %2374, i32 0, i32 1
  %2376 = bitcast %union.FIRST_UNION* %2375 to %struct.anon*
  %2377 = getelementptr inbounds %struct.anon, %struct.anon* %2376, i32 0, i32 1
  %2378 = load i8, i8* %2377, align 1
  %2379 = zext i8 %2378 to i32
  br label %2391

; <label>:2380                                    ; preds = %2363
  %2381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2382 = bitcast %union.rec* %2381 to %struct.word_type*
  %2383 = getelementptr inbounds %struct.word_type, %struct.word_type* %2382, i32 0, i32 1
  %2384 = bitcast %union.FIRST_UNION* %2383 to %struct.anon*
  %2385 = getelementptr inbounds %struct.anon, %struct.anon* %2384, i32 0, i32 0
  %2386 = load i8, i8* %2385, align 1
  %2387 = zext i8 %2386 to i64
  %2388 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2387
  %2389 = load i8, i8* %2388, align 1
  %2390 = zext i8 %2389 to i32
  br label %2391

; <label>:2391                                    ; preds = %2380, %2372
  %2392 = phi i32 [ %2379, %2372 ], [ %2390, %2380 ]
  store i32 %2392, i32* @zz_size, align 4
  %2393 = load i32, i32* @zz_size, align 4
  %2394 = sext i32 %2393 to i64
  %2395 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2394
  %2396 = load %union.rec*, %union.rec** %2395, align 8
  %2397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2398 = bitcast %union.rec* %2397 to %struct.word_type*
  %2399 = getelementptr inbounds %struct.word_type, %struct.word_type* %2398, i32 0, i32 0
  %2400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2399, i32 0, i64 0
  %2401 = getelementptr inbounds %struct.LIST, %struct.LIST* %2400, i32 0, i32 0
  store %union.rec* %2396, %union.rec** %2401, align 8
  %2402 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2403 = load i32, i32* @zz_size, align 4
  %2404 = sext i32 %2403 to i64
  %2405 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2404
  store %union.rec* %2402, %union.rec** %2405, align 8
  %2406 = call %union.rec* @LexGetToken()
  store %union.rec* %2406, %union.rec** %t, align 8
  br label %2128

; <label>:2407                                    ; preds = %2341
  %2408 = load %union.rec*, %union.rec** %t, align 8
  %2409 = bitcast %union.rec* %2408 to %struct.word_type*
  %2410 = getelementptr inbounds %struct.word_type, %struct.word_type* %2409, i32 0, i32 1
  %2411 = bitcast %union.FIRST_UNION* %2410 to %struct.anon*
  %2412 = getelementptr inbounds %struct.anon, %struct.anon* %2411, i32 0, i32 0
  %2413 = load i8, i8* %2412, align 1
  %2414 = zext i8 %2413 to i32
  %2415 = icmp eq i32 %2414, 11
  br i1 %2415, label %2416, label %2525

; <label>:2416                                    ; preds = %2407
  %2417 = load %union.rec*, %union.rec** %t, align 8
  %2418 = bitcast %union.rec* %2417 to %struct.word_type*
  %2419 = getelementptr inbounds %struct.word_type, %struct.word_type* %2418, i32 0, i32 4
  %2420 = getelementptr inbounds [4 x i8], [4 x i8]* %2419, i32 0, i32 0
  %2421 = call i32 @strcmp(i8* %2420, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.29, i32 0, i32 0)) #3
  %2422 = icmp eq i32 %2421, 0
  br i1 %2422, label %2423, label %2525

; <label>:2423                                    ; preds = %2416
  %2424 = load %union.rec*, %union.rec** %res, align 8
  %2425 = bitcast %union.rec* %2424 to %struct.word_type*
  %2426 = getelementptr inbounds %struct.word_type, %struct.word_type* %2425, i32 0, i32 2
  %2427 = bitcast %union.SECOND_UNION* %2426 to %struct.anon.5*
  %2428 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2427, i32 0, i32 1
  %2429 = bitcast [3 x i8]* %2428 to i24*
  %2430 = load i24, i24* %2429, align 1
  %2431 = and i24 %2430, -129
  %2432 = or i24 %2431, 128
  store i24 %2432, i24* %2429, align 1
  %2433 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2433, %union.rec** @zz_hold, align 8
  %2434 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2434, %union.rec** @zz_hold, align 8
  %2435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2436 = bitcast %union.rec* %2435 to %struct.word_type*
  %2437 = getelementptr inbounds %struct.word_type, %struct.word_type* %2436, i32 0, i32 1
  %2438 = bitcast %union.FIRST_UNION* %2437 to %struct.anon*
  %2439 = getelementptr inbounds %struct.anon, %struct.anon* %2438, i32 0, i32 0
  %2440 = load i8, i8* %2439, align 1
  %2441 = zext i8 %2440 to i32
  %2442 = icmp eq i32 %2441, 11
  br i1 %2442, label %2452, label %2443

; <label>:2443                                    ; preds = %2423
  %2444 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2445 = bitcast %union.rec* %2444 to %struct.word_type*
  %2446 = getelementptr inbounds %struct.word_type, %struct.word_type* %2445, i32 0, i32 1
  %2447 = bitcast %union.FIRST_UNION* %2446 to %struct.anon*
  %2448 = getelementptr inbounds %struct.anon, %struct.anon* %2447, i32 0, i32 0
  %2449 = load i8, i8* %2448, align 1
  %2450 = zext i8 %2449 to i32
  %2451 = icmp eq i32 %2450, 12
  br i1 %2451, label %2452, label %2460

; <label>:2452                                    ; preds = %2443, %2423
  %2453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2454 = bitcast %union.rec* %2453 to %struct.word_type*
  %2455 = getelementptr inbounds %struct.word_type, %struct.word_type* %2454, i32 0, i32 1
  %2456 = bitcast %union.FIRST_UNION* %2455 to %struct.anon*
  %2457 = getelementptr inbounds %struct.anon, %struct.anon* %2456, i32 0, i32 1
  %2458 = load i8, i8* %2457, align 1
  %2459 = zext i8 %2458 to i32
  br label %2471

; <label>:2460                                    ; preds = %2443
  %2461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2462 = bitcast %union.rec* %2461 to %struct.word_type*
  %2463 = getelementptr inbounds %struct.word_type, %struct.word_type* %2462, i32 0, i32 1
  %2464 = bitcast %union.FIRST_UNION* %2463 to %struct.anon*
  %2465 = getelementptr inbounds %struct.anon, %struct.anon* %2464, i32 0, i32 0
  %2466 = load i8, i8* %2465, align 1
  %2467 = zext i8 %2466 to i64
  %2468 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2467
  %2469 = load i8, i8* %2468, align 1
  %2470 = zext i8 %2469 to i32
  br label %2471

; <label>:2471                                    ; preds = %2460, %2452
  %2472 = phi i32 [ %2459, %2452 ], [ %2470, %2460 ]
  store i32 %2472, i32* @zz_size, align 4
  %2473 = load i32, i32* @zz_size, align 4
  %2474 = sext i32 %2473 to i64
  %2475 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2474
  %2476 = load %union.rec*, %union.rec** %2475, align 8
  %2477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2478 = bitcast %union.rec* %2477 to %struct.word_type*
  %2479 = getelementptr inbounds %struct.word_type, %struct.word_type* %2478, i32 0, i32 0
  %2480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2479, i32 0, i64 0
  %2481 = getelementptr inbounds %struct.LIST, %struct.LIST* %2480, i32 0, i32 0
  store %union.rec* %2476, %union.rec** %2481, align 8
  %2482 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2483 = load i32, i32* @zz_size, align 4
  %2484 = sext i32 %2483 to i64
  %2485 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2484
  store %union.rec* %2482, %union.rec** %2485, align 8
  %2486 = call %union.rec* @LexGetToken()
  store %union.rec* %2486, %union.rec** %t, align 8
  %2487 = load %union.rec*, %union.rec** %t, align 8
  %2488 = bitcast %union.rec* %2487 to %struct.word_type*
  %2489 = getelementptr inbounds %struct.word_type, %struct.word_type* %2488, i32 0, i32 1
  %2490 = bitcast %union.FIRST_UNION* %2489 to %struct.anon*
  %2491 = getelementptr inbounds %struct.anon, %struct.anon* %2490, i32 0, i32 0
  %2492 = load i8, i8* %2491, align 1
  %2493 = zext i8 %2492 to i32
  %2494 = icmp eq i32 %2493, 11
  br i1 %2494, label %2495, label %2502

; <label>:2495                                    ; preds = %2471
  %2496 = load %union.rec*, %union.rec** %t, align 8
  %2497 = bitcast %union.rec* %2496 to %struct.word_type*
  %2498 = getelementptr inbounds %struct.word_type, %struct.word_type* %2497, i32 0, i32 4
  %2499 = getelementptr inbounds [4 x i8], [4 x i8]* %2498, i32 0, i32 0
  %2500 = call i32 @strcmp(i8* %2499, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #3
  %2501 = icmp eq i32 %2500, 0
  br i1 %2501, label %2524, label %2502

; <label>:2502                                    ; preds = %2495, %2471
  %2503 = load %union.rec*, %union.rec** %t, align 8
  %2504 = bitcast %union.rec* %2503 to %struct.word_type*
  %2505 = getelementptr inbounds %struct.word_type, %struct.word_type* %2504, i32 0, i32 1
  %2506 = bitcast %union.FIRST_UNION* %2505 to %struct.anon*
  %2507 = getelementptr inbounds %struct.anon, %struct.anon* %2506, i32 0, i32 0
  %2508 = load i8, i8* %2507, align 1
  %2509 = zext i8 %2508 to i32
  %2510 = icmp eq i32 %2509, 11
  br i1 %2510, label %2511, label %2518

; <label>:2511                                    ; preds = %2502
  %2512 = load %union.rec*, %union.rec** %t, align 8
  %2513 = bitcast %union.rec* %2512 to %struct.word_type*
  %2514 = getelementptr inbounds %struct.word_type, %struct.word_type* %2513, i32 0, i32 4
  %2515 = getelementptr inbounds [4 x i8], [4 x i8]* %2514, i32 0, i32 0
  %2516 = call i32 @strcmp(i8* %2515, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #3
  %2517 = icmp eq i32 %2516, 0
  br i1 %2517, label %2524, label %2518

; <label>:2518                                    ; preds = %2511, %2502
  %2519 = load %union.rec*, %union.rec** %t, align 8
  %2520 = bitcast %union.rec* %2519 to %struct.word_type*
  %2521 = getelementptr inbounds %struct.word_type, %struct.word_type* %2520, i32 0, i32 1
  %2522 = bitcast %union.FIRST_UNION* %2521 to %struct.FILE_POS*
  %2523 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 34, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32 2, %struct.FILE_POS* %2522, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0))
  br label %2524

; <label>:2524                                    ; preds = %2518, %2511, %2495
  br label %2525

; <label>:2525                                    ; preds = %2524, %2416, %2407
  %2526 = load %union.rec*, %union.rec** %t, align 8
  %2527 = bitcast %union.rec* %2526 to %struct.word_type*
  %2528 = getelementptr inbounds %struct.word_type, %struct.word_type* %2527, i32 0, i32 1
  %2529 = bitcast %union.FIRST_UNION* %2528 to %struct.anon*
  %2530 = getelementptr inbounds %struct.anon, %struct.anon* %2529, i32 0, i32 0
  %2531 = load i8, i8* %2530, align 1
  %2532 = zext i8 %2531 to i32
  %2533 = icmp eq i32 %2532, 11
  br i1 %2533, label %2534, label %2604

; <label>:2534                                    ; preds = %2525
  %2535 = load %union.rec*, %union.rec** %t, align 8
  %2536 = bitcast %union.rec* %2535 to %struct.word_type*
  %2537 = getelementptr inbounds %struct.word_type, %struct.word_type* %2536, i32 0, i32 4
  %2538 = getelementptr inbounds [4 x i8], [4 x i8]* %2537, i32 0, i32 0
  %2539 = call i32 @strcmp(i8* %2538, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.31, i32 0, i32 0)) #3
  %2540 = icmp eq i32 %2539, 0
  br i1 %2540, label %2541, label %2604

; <label>:2541                                    ; preds = %2534
  %2542 = load %union.rec*, %union.rec** %res, align 8
  %2543 = bitcast %union.rec* %2542 to %struct.word_type*
  %2544 = getelementptr inbounds %struct.word_type, %struct.word_type* %2543, i32 0, i32 2
  %2545 = bitcast %union.SECOND_UNION* %2544 to %struct.anon.5*
  %2546 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2545, i32 0, i32 1
  %2547 = bitcast [3 x i8]* %2546 to i24*
  %2548 = load i24, i24* %2547, align 1
  %2549 = and i24 %2548, -2097153
  store i24 %2549, i24* %2547, align 1
  %2550 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2550, %union.rec** @zz_hold, align 8
  %2551 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2551, %union.rec** @zz_hold, align 8
  %2552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2553 = bitcast %union.rec* %2552 to %struct.word_type*
  %2554 = getelementptr inbounds %struct.word_type, %struct.word_type* %2553, i32 0, i32 1
  %2555 = bitcast %union.FIRST_UNION* %2554 to %struct.anon*
  %2556 = getelementptr inbounds %struct.anon, %struct.anon* %2555, i32 0, i32 0
  %2557 = load i8, i8* %2556, align 1
  %2558 = zext i8 %2557 to i32
  %2559 = icmp eq i32 %2558, 11
  br i1 %2559, label %2569, label %2560

; <label>:2560                                    ; preds = %2541
  %2561 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2562 = bitcast %union.rec* %2561 to %struct.word_type*
  %2563 = getelementptr inbounds %struct.word_type, %struct.word_type* %2562, i32 0, i32 1
  %2564 = bitcast %union.FIRST_UNION* %2563 to %struct.anon*
  %2565 = getelementptr inbounds %struct.anon, %struct.anon* %2564, i32 0, i32 0
  %2566 = load i8, i8* %2565, align 1
  %2567 = zext i8 %2566 to i32
  %2568 = icmp eq i32 %2567, 12
  br i1 %2568, label %2569, label %2577

; <label>:2569                                    ; preds = %2560, %2541
  %2570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2571 = bitcast %union.rec* %2570 to %struct.word_type*
  %2572 = getelementptr inbounds %struct.word_type, %struct.word_type* %2571, i32 0, i32 1
  %2573 = bitcast %union.FIRST_UNION* %2572 to %struct.anon*
  %2574 = getelementptr inbounds %struct.anon, %struct.anon* %2573, i32 0, i32 1
  %2575 = load i8, i8* %2574, align 1
  %2576 = zext i8 %2575 to i32
  br label %2588

; <label>:2577                                    ; preds = %2560
  %2578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2579 = bitcast %union.rec* %2578 to %struct.word_type*
  %2580 = getelementptr inbounds %struct.word_type, %struct.word_type* %2579, i32 0, i32 1
  %2581 = bitcast %union.FIRST_UNION* %2580 to %struct.anon*
  %2582 = getelementptr inbounds %struct.anon, %struct.anon* %2581, i32 0, i32 0
  %2583 = load i8, i8* %2582, align 1
  %2584 = zext i8 %2583 to i64
  %2585 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2584
  %2586 = load i8, i8* %2585, align 1
  %2587 = zext i8 %2586 to i32
  br label %2588

; <label>:2588                                    ; preds = %2577, %2569
  %2589 = phi i32 [ %2576, %2569 ], [ %2587, %2577 ]
  store i32 %2589, i32* @zz_size, align 4
  %2590 = load i32, i32* @zz_size, align 4
  %2591 = sext i32 %2590 to i64
  %2592 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2591
  %2593 = load %union.rec*, %union.rec** %2592, align 8
  %2594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2595 = bitcast %union.rec* %2594 to %struct.word_type*
  %2596 = getelementptr inbounds %struct.word_type, %struct.word_type* %2595, i32 0, i32 0
  %2597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2596, i32 0, i64 0
  %2598 = getelementptr inbounds %struct.LIST, %struct.LIST* %2597, i32 0, i32 0
  store %union.rec* %2593, %union.rec** %2598, align 8
  %2599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2600 = load i32, i32* @zz_size, align 4
  %2601 = sext i32 %2600 to i64
  %2602 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2601
  store %union.rec* %2599, %union.rec** %2602, align 8
  %2603 = call %union.rec* @LexGetToken()
  store %union.rec* %2603, %union.rec** %t, align 8
  br label %2604

; <label>:2604                                    ; preds = %2588, %2534, %2525
  store %union.rec* null, %union.rec** %res_target, align 8
  %2605 = load %union.rec*, %union.rec** %t, align 8
  %2606 = bitcast %union.rec* %2605 to %struct.word_type*
  %2607 = getelementptr inbounds %struct.word_type, %struct.word_type* %2606, i32 0, i32 1
  %2608 = bitcast %union.FIRST_UNION* %2607 to %struct.anon*
  %2609 = getelementptr inbounds %struct.anon, %struct.anon* %2608, i32 0, i32 0
  %2610 = load i8, i8* %2609, align 1
  %2611 = zext i8 %2610 to i32
  %2612 = icmp eq i32 %2611, 11
  br i1 %2612, label %2613, label %2699

; <label>:2613                                    ; preds = %2604
  %2614 = load %union.rec*, %union.rec** %t, align 8
  %2615 = bitcast %union.rec* %2614 to %struct.word_type*
  %2616 = getelementptr inbounds %struct.word_type, %struct.word_type* %2615, i32 0, i32 4
  %2617 = getelementptr inbounds [4 x i8], [4 x i8]* %2616, i32 0, i32 0
  %2618 = call i32 @strcmp(i8* %2617, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.30, i32 0, i32 0)) #3
  %2619 = icmp eq i32 %2618, 0
  br i1 %2619, label %2620, label %2699

; <label>:2620                                    ; preds = %2613
  call void @UnSuppressScope()
  %2621 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2621, %union.rec** @zz_hold, align 8
  %2622 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2622, %union.rec** @zz_hold, align 8
  %2623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2624 = bitcast %union.rec* %2623 to %struct.word_type*
  %2625 = getelementptr inbounds %struct.word_type, %struct.word_type* %2624, i32 0, i32 1
  %2626 = bitcast %union.FIRST_UNION* %2625 to %struct.anon*
  %2627 = getelementptr inbounds %struct.anon, %struct.anon* %2626, i32 0, i32 0
  %2628 = load i8, i8* %2627, align 1
  %2629 = zext i8 %2628 to i32
  %2630 = icmp eq i32 %2629, 11
  br i1 %2630, label %2640, label %2631

; <label>:2631                                    ; preds = %2620
  %2632 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2633 = bitcast %union.rec* %2632 to %struct.word_type*
  %2634 = getelementptr inbounds %struct.word_type, %struct.word_type* %2633, i32 0, i32 1
  %2635 = bitcast %union.FIRST_UNION* %2634 to %struct.anon*
  %2636 = getelementptr inbounds %struct.anon, %struct.anon* %2635, i32 0, i32 0
  %2637 = load i8, i8* %2636, align 1
  %2638 = zext i8 %2637 to i32
  %2639 = icmp eq i32 %2638, 12
  br i1 %2639, label %2640, label %2648

; <label>:2640                                    ; preds = %2631, %2620
  %2641 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2642 = bitcast %union.rec* %2641 to %struct.word_type*
  %2643 = getelementptr inbounds %struct.word_type, %struct.word_type* %2642, i32 0, i32 1
  %2644 = bitcast %union.FIRST_UNION* %2643 to %struct.anon*
  %2645 = getelementptr inbounds %struct.anon, %struct.anon* %2644, i32 0, i32 1
  %2646 = load i8, i8* %2645, align 1
  %2647 = zext i8 %2646 to i32
  br label %2659

; <label>:2648                                    ; preds = %2631
  %2649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2650 = bitcast %union.rec* %2649 to %struct.word_type*
  %2651 = getelementptr inbounds %struct.word_type, %struct.word_type* %2650, i32 0, i32 1
  %2652 = bitcast %union.FIRST_UNION* %2651 to %struct.anon*
  %2653 = getelementptr inbounds %struct.anon, %struct.anon* %2652, i32 0, i32 0
  %2654 = load i8, i8* %2653, align 1
  %2655 = zext i8 %2654 to i64
  %2656 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2655
  %2657 = load i8, i8* %2656, align 1
  %2658 = zext i8 %2657 to i32
  br label %2659

; <label>:2659                                    ; preds = %2648, %2640
  %2660 = phi i32 [ %2647, %2640 ], [ %2658, %2648 ]
  store i32 %2660, i32* @zz_size, align 4
  %2661 = load i32, i32* @zz_size, align 4
  %2662 = sext i32 %2661 to i64
  %2663 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2662
  %2664 = load %union.rec*, %union.rec** %2663, align 8
  %2665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2666 = bitcast %union.rec* %2665 to %struct.word_type*
  %2667 = getelementptr inbounds %struct.word_type, %struct.word_type* %2666, i32 0, i32 0
  %2668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2667, i32 0, i64 0
  %2669 = getelementptr inbounds %struct.LIST, %struct.LIST* %2668, i32 0, i32 0
  store %union.rec* %2664, %union.rec** %2669, align 8
  %2670 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2671 = load i32, i32* @zz_size, align 4
  %2672 = sext i32 %2671 to i64
  %2673 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2672
  store %union.rec* %2670, %union.rec** %2673, align 8
  %2674 = call %union.rec* @LexGetToken()
  store %union.rec* %2674, %union.rec** %t, align 8
  %2675 = load %union.rec*, %union.rec** %t, align 8
  %2676 = bitcast %union.rec* %2675 to %struct.word_type*
  %2677 = getelementptr inbounds %struct.word_type, %struct.word_type* %2676, i32 0, i32 1
  %2678 = bitcast %union.FIRST_UNION* %2677 to %struct.anon*
  %2679 = getelementptr inbounds %struct.anon, %struct.anon* %2678, i32 0, i32 0
  %2680 = load i8, i8* %2679, align 1
  %2681 = zext i8 %2680 to i32
  %2682 = icmp ne i32 %2681, 102
  br i1 %2682, label %2683, label %2691

; <label>:2683                                    ; preds = %2659
  %2684 = load %union.rec*, %union.rec** %t, align 8
  %2685 = bitcast %union.rec* %2684 to %struct.word_type*
  %2686 = getelementptr inbounds %struct.word_type, %struct.word_type* %2685, i32 0, i32 1
  %2687 = bitcast %union.FIRST_UNION* %2686 to %struct.FILE_POS*
  %2688 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 36, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.38, i32 0, i32 0), i32 2, %struct.FILE_POS* %2687, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  call void @UnSuppressScope()
  %2689 = load %union.rec*, %union.rec** %t, align 8
  %2690 = load %union.rec**, %union.rec*** %1, align 8
  store %union.rec* %2689, %union.rec** %2690, align 8
  br label %3822

; <label>:2691                                    ; preds = %2659
  %2692 = load %union.rec*, %union.rec** %curr_encl, align 8
  %2693 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %2692, i32 0, i32 0)
  store %union.rec* %2693, %union.rec** %res_target, align 8
  call void @SuppressScope()
  %2694 = load %union.rec*, %union.rec** %t, align 8
  %2695 = icmp eq %union.rec* %2694, null
  br i1 %2695, label %2696, label %2698

; <label>:2696                                    ; preds = %2691
  %2697 = call %union.rec* @LexGetToken()
  store %union.rec* %2697, %union.rec** %t, align 8
  br label %2698

; <label>:2698                                    ; preds = %2696, %2691
  br label %2699

; <label>:2699                                    ; preds = %2698, %2613, %2604
  %2700 = load %union.rec*, %union.rec** %t, align 8
  %2701 = bitcast %union.rec* %2700 to %struct.word_type*
  %2702 = getelementptr inbounds %struct.word_type, %struct.word_type* %2701, i32 0, i32 1
  %2703 = bitcast %union.FIRST_UNION* %2702 to %struct.anon*
  %2704 = getelementptr inbounds %struct.anon, %struct.anon* %2703, i32 0, i32 0
  %2705 = load i8, i8* %2704, align 1
  %2706 = zext i8 %2705 to i32
  %2707 = icmp eq i32 %2706, 11
  br i1 %2707, label %2708, label %2891

; <label>:2708                                    ; preds = %2699
  %2709 = load %union.rec*, %union.rec** %t, align 8
  %2710 = bitcast %union.rec* %2709 to %struct.word_type*
  %2711 = getelementptr inbounds %struct.word_type, %struct.word_type* %2710, i32 0, i32 4
  %2712 = getelementptr inbounds [4 x i8], [4 x i8]* %2711, i32 0, i32 0
  %2713 = call i32 @strcmp(i8* %2712, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.32, i32 0, i32 0)) #3
  %2714 = icmp eq i32 %2713, 0
  br i1 %2714, label %2715, label %2891

; <label>:2715                                    ; preds = %2708
  store i32 0, i32* %prec, align 4
  %2716 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2716, %union.rec** @zz_hold, align 8
  %2717 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2717, %union.rec** @zz_hold, align 8
  %2718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2719 = bitcast %union.rec* %2718 to %struct.word_type*
  %2720 = getelementptr inbounds %struct.word_type, %struct.word_type* %2719, i32 0, i32 1
  %2721 = bitcast %union.FIRST_UNION* %2720 to %struct.anon*
  %2722 = getelementptr inbounds %struct.anon, %struct.anon* %2721, i32 0, i32 0
  %2723 = load i8, i8* %2722, align 1
  %2724 = zext i8 %2723 to i32
  %2725 = icmp eq i32 %2724, 11
  br i1 %2725, label %2735, label %2726

; <label>:2726                                    ; preds = %2715
  %2727 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2728 = bitcast %union.rec* %2727 to %struct.word_type*
  %2729 = getelementptr inbounds %struct.word_type, %struct.word_type* %2728, i32 0, i32 1
  %2730 = bitcast %union.FIRST_UNION* %2729 to %struct.anon*
  %2731 = getelementptr inbounds %struct.anon, %struct.anon* %2730, i32 0, i32 0
  %2732 = load i8, i8* %2731, align 1
  %2733 = zext i8 %2732 to i32
  %2734 = icmp eq i32 %2733, 12
  br i1 %2734, label %2735, label %2743

; <label>:2735                                    ; preds = %2726, %2715
  %2736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2737 = bitcast %union.rec* %2736 to %struct.word_type*
  %2738 = getelementptr inbounds %struct.word_type, %struct.word_type* %2737, i32 0, i32 1
  %2739 = bitcast %union.FIRST_UNION* %2738 to %struct.anon*
  %2740 = getelementptr inbounds %struct.anon, %struct.anon* %2739, i32 0, i32 1
  %2741 = load i8, i8* %2740, align 1
  %2742 = zext i8 %2741 to i32
  br label %2754

; <label>:2743                                    ; preds = %2726
  %2744 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2745 = bitcast %union.rec* %2744 to %struct.word_type*
  %2746 = getelementptr inbounds %struct.word_type, %struct.word_type* %2745, i32 0, i32 1
  %2747 = bitcast %union.FIRST_UNION* %2746 to %struct.anon*
  %2748 = getelementptr inbounds %struct.anon, %struct.anon* %2747, i32 0, i32 0
  %2749 = load i8, i8* %2748, align 1
  %2750 = zext i8 %2749 to i64
  %2751 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2750
  %2752 = load i8, i8* %2751, align 1
  %2753 = zext i8 %2752 to i32
  br label %2754

; <label>:2754                                    ; preds = %2743, %2735
  %2755 = phi i32 [ %2742, %2735 ], [ %2753, %2743 ]
  store i32 %2755, i32* @zz_size, align 4
  %2756 = load i32, i32* @zz_size, align 4
  %2757 = sext i32 %2756 to i64
  %2758 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2757
  %2759 = load %union.rec*, %union.rec** %2758, align 8
  %2760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2761 = bitcast %union.rec* %2760 to %struct.word_type*
  %2762 = getelementptr inbounds %struct.word_type, %struct.word_type* %2761, i32 0, i32 0
  %2763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2762, i32 0, i64 0
  %2764 = getelementptr inbounds %struct.LIST, %struct.LIST* %2763, i32 0, i32 0
  store %union.rec* %2759, %union.rec** %2764, align 8
  %2765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2766 = load i32, i32* @zz_size, align 4
  %2767 = sext i32 %2766 to i64
  %2768 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2767
  store %union.rec* %2765, %union.rec** %2768, align 8
  %2769 = call %union.rec* @LexGetToken()
  store %union.rec* %2769, %union.rec** %t, align 8
  br label %2770

; <label>:2770                                    ; preds = %2848, %2754
  %2771 = load %union.rec*, %union.rec** %t, align 8
  %2772 = bitcast %union.rec* %2771 to %struct.word_type*
  %2773 = getelementptr inbounds %struct.word_type, %struct.word_type* %2772, i32 0, i32 1
  %2774 = bitcast %union.FIRST_UNION* %2773 to %struct.anon*
  %2775 = getelementptr inbounds %struct.anon, %struct.anon* %2774, i32 0, i32 0
  %2776 = load i8, i8* %2775, align 1
  %2777 = zext i8 %2776 to i32
  %2778 = icmp eq i32 %2777, 11
  br i1 %2778, label %2779, label %2797

; <label>:2779                                    ; preds = %2770
  %2780 = load %union.rec*, %union.rec** %t, align 8
  %2781 = bitcast %union.rec* %2780 to %struct.word_type*
  %2782 = getelementptr inbounds %struct.word_type, %struct.word_type* %2781, i32 0, i32 4
  %2783 = getelementptr inbounds [4 x i8], [4 x i8]* %2782, i32 0, i64 0
  %2784 = load i8, i8* %2783, align 1
  %2785 = zext i8 %2784 to i32
  %2786 = icmp sge i32 %2785, 48
  br i1 %2786, label %2787, label %2795

; <label>:2787                                    ; preds = %2779
  %2788 = load %union.rec*, %union.rec** %t, align 8
  %2789 = bitcast %union.rec* %2788 to %struct.word_type*
  %2790 = getelementptr inbounds %struct.word_type, %struct.word_type* %2789, i32 0, i32 4
  %2791 = getelementptr inbounds [4 x i8], [4 x i8]* %2790, i32 0, i64 0
  %2792 = load i8, i8* %2791, align 1
  %2793 = zext i8 %2792 to i32
  %2794 = icmp sle i32 %2793, 57
  br label %2795

; <label>:2795                                    ; preds = %2787, %2779
  %2796 = phi i1 [ false, %2779 ], [ %2794, %2787 ]
  br label %2797

; <label>:2797                                    ; preds = %2795, %2770
  %2798 = phi i1 [ false, %2770 ], [ %2796, %2795 ]
  br i1 %2798, label %2799, label %2864

; <label>:2799                                    ; preds = %2797
  %2800 = load i32, i32* %prec, align 4
  %2801 = mul nsw i32 %2800, 10
  %2802 = load %union.rec*, %union.rec** %t, align 8
  %2803 = bitcast %union.rec* %2802 to %struct.word_type*
  %2804 = getelementptr inbounds %struct.word_type, %struct.word_type* %2803, i32 0, i32 4
  %2805 = getelementptr inbounds [4 x i8], [4 x i8]* %2804, i32 0, i64 0
  %2806 = load i8, i8* %2805, align 1
  %2807 = zext i8 %2806 to i32
  %2808 = sub nsw i32 %2807, 48
  %2809 = add nsw i32 %2801, %2808
  store i32 %2809, i32* %prec, align 4
  %2810 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2810, %union.rec** @zz_hold, align 8
  %2811 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2811, %union.rec** @zz_hold, align 8
  %2812 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2813 = bitcast %union.rec* %2812 to %struct.word_type*
  %2814 = getelementptr inbounds %struct.word_type, %struct.word_type* %2813, i32 0, i32 1
  %2815 = bitcast %union.FIRST_UNION* %2814 to %struct.anon*
  %2816 = getelementptr inbounds %struct.anon, %struct.anon* %2815, i32 0, i32 0
  %2817 = load i8, i8* %2816, align 1
  %2818 = zext i8 %2817 to i32
  %2819 = icmp eq i32 %2818, 11
  br i1 %2819, label %2829, label %2820

; <label>:2820                                    ; preds = %2799
  %2821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2822 = bitcast %union.rec* %2821 to %struct.word_type*
  %2823 = getelementptr inbounds %struct.word_type, %struct.word_type* %2822, i32 0, i32 1
  %2824 = bitcast %union.FIRST_UNION* %2823 to %struct.anon*
  %2825 = getelementptr inbounds %struct.anon, %struct.anon* %2824, i32 0, i32 0
  %2826 = load i8, i8* %2825, align 1
  %2827 = zext i8 %2826 to i32
  %2828 = icmp eq i32 %2827, 12
  br i1 %2828, label %2829, label %2837

; <label>:2829                                    ; preds = %2820, %2799
  %2830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2831 = bitcast %union.rec* %2830 to %struct.word_type*
  %2832 = getelementptr inbounds %struct.word_type, %struct.word_type* %2831, i32 0, i32 1
  %2833 = bitcast %union.FIRST_UNION* %2832 to %struct.anon*
  %2834 = getelementptr inbounds %struct.anon, %struct.anon* %2833, i32 0, i32 1
  %2835 = load i8, i8* %2834, align 1
  %2836 = zext i8 %2835 to i32
  br label %2848

; <label>:2837                                    ; preds = %2820
  %2838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2839 = bitcast %union.rec* %2838 to %struct.word_type*
  %2840 = getelementptr inbounds %struct.word_type, %struct.word_type* %2839, i32 0, i32 1
  %2841 = bitcast %union.FIRST_UNION* %2840 to %struct.anon*
  %2842 = getelementptr inbounds %struct.anon, %struct.anon* %2841, i32 0, i32 0
  %2843 = load i8, i8* %2842, align 1
  %2844 = zext i8 %2843 to i64
  %2845 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2844
  %2846 = load i8, i8* %2845, align 1
  %2847 = zext i8 %2846 to i32
  br label %2848

; <label>:2848                                    ; preds = %2837, %2829
  %2849 = phi i32 [ %2836, %2829 ], [ %2847, %2837 ]
  store i32 %2849, i32* @zz_size, align 4
  %2850 = load i32, i32* @zz_size, align 4
  %2851 = sext i32 %2850 to i64
  %2852 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2851
  %2853 = load %union.rec*, %union.rec** %2852, align 8
  %2854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2855 = bitcast %union.rec* %2854 to %struct.word_type*
  %2856 = getelementptr inbounds %struct.word_type, %struct.word_type* %2855, i32 0, i32 0
  %2857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2856, i32 0, i64 0
  %2858 = getelementptr inbounds %struct.LIST, %struct.LIST* %2857, i32 0, i32 0
  store %union.rec* %2853, %union.rec** %2858, align 8
  %2859 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2860 = load i32, i32* @zz_size, align 4
  %2861 = sext i32 %2860 to i64
  %2862 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2861
  store %union.rec* %2859, %union.rec** %2862, align 8
  %2863 = call %union.rec* @LexGetToken()
  store %union.rec* %2863, %union.rec** %t, align 8
  br label %2770

; <label>:2864                                    ; preds = %2797
  %2865 = load i32, i32* %prec, align 4
  %2866 = icmp slt i32 %2865, 10
  br i1 %2866, label %2867, label %2873

; <label>:2867                                    ; preds = %2864
  %2868 = load %union.rec*, %union.rec** %t, align 8
  %2869 = bitcast %union.rec* %2868 to %struct.word_type*
  %2870 = getelementptr inbounds %struct.word_type, %struct.word_type* %2869, i32 0, i32 1
  %2871 = bitcast %union.FIRST_UNION* %2870 to %struct.FILE_POS*
  %2872 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 37, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.39, i32 0, i32 0), i32 2, %struct.FILE_POS* %2871, i32 10)
  store i32 10, i32* %prec, align 4
  br label %2883

; <label>:2873                                    ; preds = %2864
  %2874 = load i32, i32* %prec, align 4
  %2875 = icmp sgt i32 %2874, 100
  br i1 %2875, label %2876, label %2882

; <label>:2876                                    ; preds = %2873
  %2877 = load %union.rec*, %union.rec** %t, align 8
  %2878 = bitcast %union.rec* %2877 to %struct.word_type*
  %2879 = getelementptr inbounds %struct.word_type, %struct.word_type* %2878, i32 0, i32 1
  %2880 = bitcast %union.FIRST_UNION* %2879 to %struct.FILE_POS*
  %2881 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.40, i32 0, i32 0), i32 2, %struct.FILE_POS* %2880, i32 100)
  store i32 100, i32* %prec, align 4
  br label %2882

; <label>:2882                                    ; preds = %2876, %2873
  br label %2883

; <label>:2883                                    ; preds = %2882, %2867
  %2884 = load i32, i32* %prec, align 4
  %2885 = trunc i32 %2884 to i8
  %2886 = load %union.rec*, %union.rec** %res, align 8
  %2887 = bitcast %union.rec* %2886 to %struct.word_type*
  %2888 = getelementptr inbounds %struct.word_type, %struct.word_type* %2887, i32 0, i32 2
  %2889 = bitcast %union.SECOND_UNION* %2888 to %struct.anon.0*
  %2890 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2889, i32 0, i32 0
  store i8 %2885, i8* %2890, align 1
  br label %2891

; <label>:2891                                    ; preds = %2883, %2708, %2699
  %2892 = load %union.rec*, %union.rec** %t, align 8
  %2893 = bitcast %union.rec* %2892 to %struct.word_type*
  %2894 = getelementptr inbounds %struct.word_type, %struct.word_type* %2893, i32 0, i32 1
  %2895 = bitcast %union.FIRST_UNION* %2894 to %struct.anon*
  %2896 = getelementptr inbounds %struct.anon, %struct.anon* %2895, i32 0, i32 0
  %2897 = load i8, i8* %2896, align 1
  %2898 = zext i8 %2897 to i32
  %2899 = icmp eq i32 %2898, 11
  br i1 %2899, label %2900, label %3064

; <label>:2900                                    ; preds = %2891
  %2901 = load %union.rec*, %union.rec** %t, align 8
  %2902 = bitcast %union.rec* %2901 to %struct.word_type*
  %2903 = getelementptr inbounds %struct.word_type, %struct.word_type* %2902, i32 0, i32 4
  %2904 = getelementptr inbounds [4 x i8], [4 x i8]* %2903, i32 0, i32 0
  %2905 = call i32 @strcmp(i8* %2904, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.33, i32 0, i32 0)) #3
  %2906 = icmp eq i32 %2905, 0
  br i1 %2906, label %2907, label %3064

; <label>:2907                                    ; preds = %2900
  %2908 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %2908, %union.rec** @zz_hold, align 8
  %2909 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2909, %union.rec** @zz_hold, align 8
  %2910 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2911 = bitcast %union.rec* %2910 to %struct.word_type*
  %2912 = getelementptr inbounds %struct.word_type, %struct.word_type* %2911, i32 0, i32 1
  %2913 = bitcast %union.FIRST_UNION* %2912 to %struct.anon*
  %2914 = getelementptr inbounds %struct.anon, %struct.anon* %2913, i32 0, i32 0
  %2915 = load i8, i8* %2914, align 1
  %2916 = zext i8 %2915 to i32
  %2917 = icmp eq i32 %2916, 11
  br i1 %2917, label %2927, label %2918

; <label>:2918                                    ; preds = %2907
  %2919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2920 = bitcast %union.rec* %2919 to %struct.word_type*
  %2921 = getelementptr inbounds %struct.word_type, %struct.word_type* %2920, i32 0, i32 1
  %2922 = bitcast %union.FIRST_UNION* %2921 to %struct.anon*
  %2923 = getelementptr inbounds %struct.anon, %struct.anon* %2922, i32 0, i32 0
  %2924 = load i8, i8* %2923, align 1
  %2925 = zext i8 %2924 to i32
  %2926 = icmp eq i32 %2925, 12
  br i1 %2926, label %2927, label %2935

; <label>:2927                                    ; preds = %2918, %2907
  %2928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2929 = bitcast %union.rec* %2928 to %struct.word_type*
  %2930 = getelementptr inbounds %struct.word_type, %struct.word_type* %2929, i32 0, i32 1
  %2931 = bitcast %union.FIRST_UNION* %2930 to %struct.anon*
  %2932 = getelementptr inbounds %struct.anon, %struct.anon* %2931, i32 0, i32 1
  %2933 = load i8, i8* %2932, align 1
  %2934 = zext i8 %2933 to i32
  br label %2946

; <label>:2935                                    ; preds = %2918
  %2936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2937 = bitcast %union.rec* %2936 to %struct.word_type*
  %2938 = getelementptr inbounds %struct.word_type, %struct.word_type* %2937, i32 0, i32 1
  %2939 = bitcast %union.FIRST_UNION* %2938 to %struct.anon*
  %2940 = getelementptr inbounds %struct.anon, %struct.anon* %2939, i32 0, i32 0
  %2941 = load i8, i8* %2940, align 1
  %2942 = zext i8 %2941 to i64
  %2943 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2942
  %2944 = load i8, i8* %2943, align 1
  %2945 = zext i8 %2944 to i32
  br label %2946

; <label>:2946                                    ; preds = %2935, %2927
  %2947 = phi i32 [ %2934, %2927 ], [ %2945, %2935 ]
  store i32 %2947, i32* @zz_size, align 4
  %2948 = load i32, i32* @zz_size, align 4
  %2949 = sext i32 %2948 to i64
  %2950 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2949
  %2951 = load %union.rec*, %union.rec** %2950, align 8
  %2952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2953 = bitcast %union.rec* %2952 to %struct.word_type*
  %2954 = getelementptr inbounds %struct.word_type, %struct.word_type* %2953, i32 0, i32 0
  %2955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2954, i32 0, i64 0
  %2956 = getelementptr inbounds %struct.LIST, %struct.LIST* %2955, i32 0, i32 0
  store %union.rec* %2951, %union.rec** %2956, align 8
  %2957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2958 = load i32, i32* @zz_size, align 4
  %2959 = sext i32 %2958 to i64
  %2960 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2959
  store %union.rec* %2957, %union.rec** %2960, align 8
  %2961 = call %union.rec* @LexGetToken()
  store %union.rec* %2961, %union.rec** %t, align 8
  %2962 = load %union.rec*, %union.rec** %t, align 8
  %2963 = bitcast %union.rec* %2962 to %struct.word_type*
  %2964 = getelementptr inbounds %struct.word_type, %struct.word_type* %2963, i32 0, i32 1
  %2965 = bitcast %union.FIRST_UNION* %2964 to %struct.anon*
  %2966 = getelementptr inbounds %struct.anon, %struct.anon* %2965, i32 0, i32 0
  %2967 = load i8, i8* %2966, align 1
  %2968 = zext i8 %2967 to i32
  %2969 = icmp eq i32 %2968, 11
  br i1 %2969, label %2970, label %2986

; <label>:2970                                    ; preds = %2946
  %2971 = load %union.rec*, %union.rec** %t, align 8
  %2972 = bitcast %union.rec* %2971 to %struct.word_type*
  %2973 = getelementptr inbounds %struct.word_type, %struct.word_type* %2972, i32 0, i32 4
  %2974 = getelementptr inbounds [4 x i8], [4 x i8]* %2973, i32 0, i32 0
  %2975 = call i32 @strcmp(i8* %2974, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #3
  %2976 = icmp eq i32 %2975, 0
  br i1 %2976, label %2977, label %2986

; <label>:2977                                    ; preds = %2970
  %2978 = load %union.rec*, %union.rec** %res, align 8
  %2979 = bitcast %union.rec* %2978 to %struct.word_type*
  %2980 = getelementptr inbounds %struct.word_type, %struct.word_type* %2979, i32 0, i32 2
  %2981 = bitcast %union.SECOND_UNION* %2980 to %struct.anon.5*
  %2982 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %2981, i32 0, i32 1
  %2983 = bitcast [3 x i8]* %2982 to i24*
  %2984 = load i24, i24* %2983, align 1
  %2985 = and i24 %2984, -17
  store i24 %2985, i24* %2983, align 1
  br label %3009

; <label>:2986                                    ; preds = %2970, %2946
  %2987 = load %union.rec*, %union.rec** %t, align 8
  %2988 = bitcast %union.rec* %2987 to %struct.word_type*
  %2989 = getelementptr inbounds %struct.word_type, %struct.word_type* %2988, i32 0, i32 1
  %2990 = bitcast %union.FIRST_UNION* %2989 to %struct.anon*
  %2991 = getelementptr inbounds %struct.anon, %struct.anon* %2990, i32 0, i32 0
  %2992 = load i8, i8* %2991, align 1
  %2993 = zext i8 %2992 to i32
  %2994 = icmp eq i32 %2993, 11
  br i1 %2994, label %2995, label %3002

; <label>:2995                                    ; preds = %2986
  %2996 = load %union.rec*, %union.rec** %t, align 8
  %2997 = bitcast %union.rec* %2996 to %struct.word_type*
  %2998 = getelementptr inbounds %struct.word_type, %struct.word_type* %2997, i32 0, i32 4
  %2999 = getelementptr inbounds [4 x i8], [4 x i8]* %2998, i32 0, i32 0
  %3000 = call i32 @strcmp(i8* %2999, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #3
  %3001 = icmp eq i32 %3000, 0
  br i1 %3001, label %3008, label %3002

; <label>:3002                                    ; preds = %2995, %2986
  %3003 = load %union.rec*, %union.rec** %t, align 8
  %3004 = bitcast %union.rec* %3003 to %struct.word_type*
  %3005 = getelementptr inbounds %struct.word_type, %struct.word_type* %3004, i32 0, i32 1
  %3006 = bitcast %union.FIRST_UNION* %3005 to %struct.FILE_POS*
  %3007 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 39, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.41, i32 0, i32 0), i32 2, %struct.FILE_POS* %3006, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  br label %3008

; <label>:3008                                    ; preds = %3002, %2995
  br label %3009

; <label>:3009                                    ; preds = %3008, %2977
  %3010 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3010, %union.rec** @zz_hold, align 8
  %3011 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3011, %union.rec** @zz_hold, align 8
  %3012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3013 = bitcast %union.rec* %3012 to %struct.word_type*
  %3014 = getelementptr inbounds %struct.word_type, %struct.word_type* %3013, i32 0, i32 1
  %3015 = bitcast %union.FIRST_UNION* %3014 to %struct.anon*
  %3016 = getelementptr inbounds %struct.anon, %struct.anon* %3015, i32 0, i32 0
  %3017 = load i8, i8* %3016, align 1
  %3018 = zext i8 %3017 to i32
  %3019 = icmp eq i32 %3018, 11
  br i1 %3019, label %3029, label %3020

; <label>:3020                                    ; preds = %3009
  %3021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3022 = bitcast %union.rec* %3021 to %struct.word_type*
  %3023 = getelementptr inbounds %struct.word_type, %struct.word_type* %3022, i32 0, i32 1
  %3024 = bitcast %union.FIRST_UNION* %3023 to %struct.anon*
  %3025 = getelementptr inbounds %struct.anon, %struct.anon* %3024, i32 0, i32 0
  %3026 = load i8, i8* %3025, align 1
  %3027 = zext i8 %3026 to i32
  %3028 = icmp eq i32 %3027, 12
  br i1 %3028, label %3029, label %3037

; <label>:3029                                    ; preds = %3020, %3009
  %3030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3031 = bitcast %union.rec* %3030 to %struct.word_type*
  %3032 = getelementptr inbounds %struct.word_type, %struct.word_type* %3031, i32 0, i32 1
  %3033 = bitcast %union.FIRST_UNION* %3032 to %struct.anon*
  %3034 = getelementptr inbounds %struct.anon, %struct.anon* %3033, i32 0, i32 1
  %3035 = load i8, i8* %3034, align 1
  %3036 = zext i8 %3035 to i32
  br label %3048

; <label>:3037                                    ; preds = %3020
  %3038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3039 = bitcast %union.rec* %3038 to %struct.word_type*
  %3040 = getelementptr inbounds %struct.word_type, %struct.word_type* %3039, i32 0, i32 1
  %3041 = bitcast %union.FIRST_UNION* %3040 to %struct.anon*
  %3042 = getelementptr inbounds %struct.anon, %struct.anon* %3041, i32 0, i32 0
  %3043 = load i8, i8* %3042, align 1
  %3044 = zext i8 %3043 to i64
  %3045 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3044
  %3046 = load i8, i8* %3045, align 1
  %3047 = zext i8 %3046 to i32
  br label %3048

; <label>:3048                                    ; preds = %3037, %3029
  %3049 = phi i32 [ %3036, %3029 ], [ %3047, %3037 ]
  store i32 %3049, i32* @zz_size, align 4
  %3050 = load i32, i32* @zz_size, align 4
  %3051 = sext i32 %3050 to i64
  %3052 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3051
  %3053 = load %union.rec*, %union.rec** %3052, align 8
  %3054 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3055 = bitcast %union.rec* %3054 to %struct.word_type*
  %3056 = getelementptr inbounds %struct.word_type, %struct.word_type* %3055, i32 0, i32 0
  %3057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3056, i32 0, i64 0
  %3058 = getelementptr inbounds %struct.LIST, %struct.LIST* %3057, i32 0, i32 0
  store %union.rec* %3053, %union.rec** %3058, align 8
  %3059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3060 = load i32, i32* @zz_size, align 4
  %3061 = sext i32 %3060 to i64
  %3062 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3061
  store %union.rec* %3059, %union.rec** %3062, align 8
  %3063 = call %union.rec* @LexGetToken()
  store %union.rec* %3063, %union.rec** %t, align 8
  br label %3064

; <label>:3064                                    ; preds = %3048, %2900, %2891
  %3065 = load %union.rec*, %union.rec** %t, align 8
  %3066 = bitcast %union.rec* %3065 to %struct.word_type*
  %3067 = getelementptr inbounds %struct.word_type, %struct.word_type* %3066, i32 0, i32 1
  %3068 = bitcast %union.FIRST_UNION* %3067 to %struct.anon*
  %3069 = getelementptr inbounds %struct.anon, %struct.anon* %3068, i32 0, i32 0
  %3070 = load i8, i8* %3069, align 1
  %3071 = zext i8 %3070 to i32
  %3072 = icmp eq i32 %3071, 11
  br i1 %3072, label %3073, label %3216

; <label>:3073                                    ; preds = %3064
  %3074 = load %union.rec*, %union.rec** %t, align 8
  %3075 = bitcast %union.rec* %3074 to %struct.word_type*
  %3076 = getelementptr inbounds %struct.word_type, %struct.word_type* %3075, i32 0, i32 4
  %3077 = getelementptr inbounds [4 x i8], [4 x i8]* %3076, i32 0, i32 0
  %3078 = call i32 @strcmp(i8* %3077, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0)) #3
  %3079 = icmp eq i32 %3078, 0
  br i1 %3079, label %3080, label %3216

; <label>:3080                                    ; preds = %3073
  %3081 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3081, %union.rec** @zz_hold, align 8
  %3082 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3082, %union.rec** @zz_hold, align 8
  %3083 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3084 = bitcast %union.rec* %3083 to %struct.word_type*
  %3085 = getelementptr inbounds %struct.word_type, %struct.word_type* %3084, i32 0, i32 1
  %3086 = bitcast %union.FIRST_UNION* %3085 to %struct.anon*
  %3087 = getelementptr inbounds %struct.anon, %struct.anon* %3086, i32 0, i32 0
  %3088 = load i8, i8* %3087, align 1
  %3089 = zext i8 %3088 to i32
  %3090 = icmp eq i32 %3089, 11
  br i1 %3090, label %3100, label %3091

; <label>:3091                                    ; preds = %3080
  %3092 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3093 = bitcast %union.rec* %3092 to %struct.word_type*
  %3094 = getelementptr inbounds %struct.word_type, %struct.word_type* %3093, i32 0, i32 1
  %3095 = bitcast %union.FIRST_UNION* %3094 to %struct.anon*
  %3096 = getelementptr inbounds %struct.anon, %struct.anon* %3095, i32 0, i32 0
  %3097 = load i8, i8* %3096, align 1
  %3098 = zext i8 %3097 to i32
  %3099 = icmp eq i32 %3098, 12
  br i1 %3099, label %3100, label %3108

; <label>:3100                                    ; preds = %3091, %3080
  %3101 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3102 = bitcast %union.rec* %3101 to %struct.word_type*
  %3103 = getelementptr inbounds %struct.word_type, %struct.word_type* %3102, i32 0, i32 1
  %3104 = bitcast %union.FIRST_UNION* %3103 to %struct.anon*
  %3105 = getelementptr inbounds %struct.anon, %struct.anon* %3104, i32 0, i32 1
  %3106 = load i8, i8* %3105, align 1
  %3107 = zext i8 %3106 to i32
  br label %3119

; <label>:3108                                    ; preds = %3091
  %3109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3110 = bitcast %union.rec* %3109 to %struct.word_type*
  %3111 = getelementptr inbounds %struct.word_type, %struct.word_type* %3110, i32 0, i32 1
  %3112 = bitcast %union.FIRST_UNION* %3111 to %struct.anon*
  %3113 = getelementptr inbounds %struct.anon, %struct.anon* %3112, i32 0, i32 0
  %3114 = load i8, i8* %3113, align 1
  %3115 = zext i8 %3114 to i64
  %3116 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3115
  %3117 = load i8, i8* %3116, align 1
  %3118 = zext i8 %3117 to i32
  br label %3119

; <label>:3119                                    ; preds = %3108, %3100
  %3120 = phi i32 [ %3107, %3100 ], [ %3118, %3108 ]
  store i32 %3120, i32* @zz_size, align 4
  %3121 = load i32, i32* @zz_size, align 4
  %3122 = sext i32 %3121 to i64
  %3123 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3122
  %3124 = load %union.rec*, %union.rec** %3123, align 8
  %3125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3126 = bitcast %union.rec* %3125 to %struct.word_type*
  %3127 = getelementptr inbounds %struct.word_type, %struct.word_type* %3126, i32 0, i32 0
  %3128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3127, i32 0, i64 0
  %3129 = getelementptr inbounds %struct.LIST, %struct.LIST* %3128, i32 0, i32 0
  store %union.rec* %3124, %union.rec** %3129, align 8
  %3130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3131 = load i32, i32* @zz_size, align 4
  %3132 = sext i32 %3131 to i64
  %3133 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3132
  store %union.rec* %3130, %union.rec** %3133, align 8
  %3134 = call %union.rec* @LexGetToken()
  store %union.rec* %3134, %union.rec** %t, align 8
  %3135 = load %union.rec*, %union.rec** %t, align 8
  %3136 = bitcast %union.rec* %3135 to %struct.word_type*
  %3137 = getelementptr inbounds %struct.word_type, %struct.word_type* %3136, i32 0, i32 1
  %3138 = bitcast %union.FIRST_UNION* %3137 to %struct.anon*
  %3139 = getelementptr inbounds %struct.anon, %struct.anon* %3138, i32 0, i32 0
  %3140 = load i8, i8* %3139, align 1
  %3141 = zext i8 %3140 to i32
  %3142 = icmp ne i32 %3141, 11
  br i1 %3142, label %3143, label %3151

; <label>:3143                                    ; preds = %3119
  %3144 = load %union.rec*, %union.rec** %t, align 8
  %3145 = bitcast %union.rec* %3144 to %struct.word_type*
  %3146 = getelementptr inbounds %struct.word_type, %struct.word_type* %3145, i32 0, i32 1
  %3147 = bitcast %union.FIRST_UNION* %3146 to %struct.FILE_POS*
  %3148 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 40, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %3147, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.34, i32 0, i32 0))
  call void @UnSuppressScope()
  %3149 = load %union.rec*, %union.rec** %t, align 8
  %3150 = load %union.rec**, %union.rec*** %1, align 8
  store %union.rec* %3149, %union.rec** %3150, align 8
  br label %3822

; <label>:3151                                    ; preds = %3119
  %3152 = load %union.rec*, %union.rec** %t, align 8
  %3153 = bitcast %union.rec* %3152 to %struct.word_type*
  %3154 = getelementptr inbounds %struct.word_type, %struct.word_type* %3153, i32 0, i32 4
  %3155 = getelementptr inbounds [4 x i8], [4 x i8]* %3154, i32 0, i32 0
  %3156 = load %union.rec*, %union.rec** %t, align 8
  %3157 = bitcast %union.rec* %3156 to %struct.word_type*
  %3158 = getelementptr inbounds %struct.word_type, %struct.word_type* %3157, i32 0, i32 1
  %3159 = bitcast %union.FIRST_UNION* %3158 to %struct.FILE_POS*
  %3160 = load %union.rec*, %union.rec** %res, align 8
  %3161 = call %union.rec* @InsertSym(i8* %3155, i8 zeroext -112, %struct.FILE_POS* %3159, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %3160, %union.rec* null)
  %3162 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3162, %union.rec** @zz_hold, align 8
  %3163 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3163, %union.rec** @zz_hold, align 8
  %3164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3165 = bitcast %union.rec* %3164 to %struct.word_type*
  %3166 = getelementptr inbounds %struct.word_type, %struct.word_type* %3165, i32 0, i32 1
  %3167 = bitcast %union.FIRST_UNION* %3166 to %struct.anon*
  %3168 = getelementptr inbounds %struct.anon, %struct.anon* %3167, i32 0, i32 0
  %3169 = load i8, i8* %3168, align 1
  %3170 = zext i8 %3169 to i32
  %3171 = icmp eq i32 %3170, 11
  br i1 %3171, label %3181, label %3172

; <label>:3172                                    ; preds = %3151
  %3173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3174 = bitcast %union.rec* %3173 to %struct.word_type*
  %3175 = getelementptr inbounds %struct.word_type, %struct.word_type* %3174, i32 0, i32 1
  %3176 = bitcast %union.FIRST_UNION* %3175 to %struct.anon*
  %3177 = getelementptr inbounds %struct.anon, %struct.anon* %3176, i32 0, i32 0
  %3178 = load i8, i8* %3177, align 1
  %3179 = zext i8 %3178 to i32
  %3180 = icmp eq i32 %3179, 12
  br i1 %3180, label %3181, label %3189

; <label>:3181                                    ; preds = %3172, %3151
  %3182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3183 = bitcast %union.rec* %3182 to %struct.word_type*
  %3184 = getelementptr inbounds %struct.word_type, %struct.word_type* %3183, i32 0, i32 1
  %3185 = bitcast %union.FIRST_UNION* %3184 to %struct.anon*
  %3186 = getelementptr inbounds %struct.anon, %struct.anon* %3185, i32 0, i32 1
  %3187 = load i8, i8* %3186, align 1
  %3188 = zext i8 %3187 to i32
  br label %3200

; <label>:3189                                    ; preds = %3172
  %3190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3191 = bitcast %union.rec* %3190 to %struct.word_type*
  %3192 = getelementptr inbounds %struct.word_type, %struct.word_type* %3191, i32 0, i32 1
  %3193 = bitcast %union.FIRST_UNION* %3192 to %struct.anon*
  %3194 = getelementptr inbounds %struct.anon, %struct.anon* %3193, i32 0, i32 0
  %3195 = load i8, i8* %3194, align 1
  %3196 = zext i8 %3195 to i64
  %3197 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3196
  %3198 = load i8, i8* %3197, align 1
  %3199 = zext i8 %3198 to i32
  br label %3200

; <label>:3200                                    ; preds = %3189, %3181
  %3201 = phi i32 [ %3188, %3181 ], [ %3199, %3189 ]
  store i32 %3201, i32* @zz_size, align 4
  %3202 = load i32, i32* @zz_size, align 4
  %3203 = sext i32 %3202 to i64
  %3204 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3203
  %3205 = load %union.rec*, %union.rec** %3204, align 8
  %3206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3207 = bitcast %union.rec* %3206 to %struct.word_type*
  %3208 = getelementptr inbounds %struct.word_type, %struct.word_type* %3207, i32 0, i32 0
  %3209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3208, i32 0, i64 0
  %3210 = getelementptr inbounds %struct.LIST, %struct.LIST* %3209, i32 0, i32 0
  store %union.rec* %3205, %union.rec** %3210, align 8
  %3211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3212 = load i32, i32* @zz_size, align 4
  %3213 = sext i32 %3212 to i64
  %3214 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3213
  store %union.rec* %3211, %union.rec** %3214, align 8
  %3215 = call %union.rec* @LexGetToken()
  store %union.rec* %3215, %union.rec** %t, align 8
  br label %3216

; <label>:3216                                    ; preds = %3200, %3073, %3064
  call void @UnSuppressScope()
  %3217 = load %union.rec*, %union.rec** %res, align 8
  call void @ReadDefinitions(%union.rec** %t, %union.rec* %3217, i8 zeroext -111)
  %3218 = load %union.rec*, %union.rec** %t, align 8
  %3219 = bitcast %union.rec* %3218 to %struct.word_type*
  %3220 = getelementptr inbounds %struct.word_type, %struct.word_type* %3219, i32 0, i32 1
  %3221 = bitcast %union.FIRST_UNION* %3220 to %struct.anon*
  %3222 = getelementptr inbounds %struct.anon, %struct.anon* %3221, i32 0, i32 0
  %3223 = load i8, i8* %3222, align 1
  %3224 = zext i8 %3223 to i32
  %3225 = icmp eq i32 %3224, 11
  br i1 %3225, label %3226, label %3233

; <label>:3226                                    ; preds = %3216
  %3227 = load %union.rec*, %union.rec** %t, align 8
  %3228 = bitcast %union.rec* %3227 to %struct.word_type*
  %3229 = getelementptr inbounds %struct.word_type, %struct.word_type* %3228, i32 0, i32 4
  %3230 = getelementptr inbounds [4 x i8], [4 x i8]* %3229, i32 0, i32 0
  %3231 = call i32 @strcmp(i8* %3230, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0)) #3
  %3232 = icmp eq i32 %3231, 0
  br i1 %3232, label %3249, label %3233

; <label>:3233                                    ; preds = %3226, %3216
  %3234 = load %union.rec*, %union.rec** %t, align 8
  %3235 = bitcast %union.rec* %3234 to %struct.word_type*
  %3236 = getelementptr inbounds %struct.word_type, %struct.word_type* %3235, i32 0, i32 1
  %3237 = bitcast %union.FIRST_UNION* %3236 to %struct.anon*
  %3238 = getelementptr inbounds %struct.anon, %struct.anon* %3237, i32 0, i32 0
  %3239 = load i8, i8* %3238, align 1
  %3240 = zext i8 %3239 to i32
  %3241 = icmp eq i32 %3240, 11
  br i1 %3241, label %3242, label %3416

; <label>:3242                                    ; preds = %3233
  %3243 = load %union.rec*, %union.rec** %t, align 8
  %3244 = bitcast %union.rec* %3243 to %struct.word_type*
  %3245 = getelementptr inbounds %struct.word_type, %struct.word_type* %3244, i32 0, i32 4
  %3246 = getelementptr inbounds [4 x i8], [4 x i8]* %3245, i32 0, i32 0
  %3247 = call i32 @strcmp(i8* %3246, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #3
  %3248 = icmp eq i32 %3247, 0
  br i1 %3248, label %3249, label %3416

; <label>:3249                                    ; preds = %3242, %3226
  %3250 = load %union.rec*, %union.rec** %t, align 8
  %3251 = bitcast %union.rec* %3250 to %struct.word_type*
  %3252 = getelementptr inbounds %struct.word_type, %struct.word_type* %3251, i32 0, i32 1
  %3253 = bitcast %union.FIRST_UNION* %3252 to %struct.anon*
  %3254 = getelementptr inbounds %struct.anon, %struct.anon* %3253, i32 0, i32 0
  %3255 = load i8, i8* %3254, align 1
  %3256 = zext i8 %3255 to i32
  %3257 = icmp eq i32 %3256, 11
  br i1 %3257, label %3258, label %3265

; <label>:3258                                    ; preds = %3249
  %3259 = load %union.rec*, %union.rec** %t, align 8
  %3260 = bitcast %union.rec* %3259 to %struct.word_type*
  %3261 = getelementptr inbounds %struct.word_type, %struct.word_type* %3260, i32 0, i32 4
  %3262 = getelementptr inbounds [4 x i8], [4 x i8]* %3261, i32 0, i32 0
  %3263 = call i32 @strcmp(i8* %3262, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.36, i32 0, i32 0)) #3
  %3264 = icmp eq i32 %3263, 0
  br label %3265

; <label>:3265                                    ; preds = %3258, %3249
  %3266 = phi i1 [ false, %3249 ], [ %3264, %3258 ]
  %3267 = zext i1 %3266 to i32
  %3268 = load %union.rec*, %union.rec** %res, align 8
  %3269 = bitcast %union.rec* %3268 to %struct.word_type*
  %3270 = getelementptr inbounds %struct.word_type, %struct.word_type* %3269, i32 0, i32 2
  %3271 = bitcast %union.SECOND_UNION* %3270 to %struct.anon.5*
  %3272 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %3271, i32 0, i32 1
  %3273 = bitcast [3 x i8]* %3272 to i24*
  %3274 = trunc i32 %3267 to i24
  %3275 = load i24, i24* %3273, align 1
  %3276 = and i24 %3274, 1
  %3277 = shl i24 %3276, 8
  %3278 = and i24 %3275, -257
  %3279 = or i24 %3278, %3277
  store i24 %3279, i24* %3273, align 1
  %3280 = zext i24 %3276 to i32
  call void @SuppressScope()
  %3281 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3281, %union.rec** @zz_hold, align 8
  %3282 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3282, %union.rec** @zz_hold, align 8
  %3283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3284 = bitcast %union.rec* %3283 to %struct.word_type*
  %3285 = getelementptr inbounds %struct.word_type, %struct.word_type* %3284, i32 0, i32 1
  %3286 = bitcast %union.FIRST_UNION* %3285 to %struct.anon*
  %3287 = getelementptr inbounds %struct.anon, %struct.anon* %3286, i32 0, i32 0
  %3288 = load i8, i8* %3287, align 1
  %3289 = zext i8 %3288 to i32
  %3290 = icmp eq i32 %3289, 11
  br i1 %3290, label %3300, label %3291

; <label>:3291                                    ; preds = %3265
  %3292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3293 = bitcast %union.rec* %3292 to %struct.word_type*
  %3294 = getelementptr inbounds %struct.word_type, %struct.word_type* %3293, i32 0, i32 1
  %3295 = bitcast %union.FIRST_UNION* %3294 to %struct.anon*
  %3296 = getelementptr inbounds %struct.anon, %struct.anon* %3295, i32 0, i32 0
  %3297 = load i8, i8* %3296, align 1
  %3298 = zext i8 %3297 to i32
  %3299 = icmp eq i32 %3298, 12
  br i1 %3299, label %3300, label %3308

; <label>:3300                                    ; preds = %3291, %3265
  %3301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3302 = bitcast %union.rec* %3301 to %struct.word_type*
  %3303 = getelementptr inbounds %struct.word_type, %struct.word_type* %3302, i32 0, i32 1
  %3304 = bitcast %union.FIRST_UNION* %3303 to %struct.anon*
  %3305 = getelementptr inbounds %struct.anon, %struct.anon* %3304, i32 0, i32 1
  %3306 = load i8, i8* %3305, align 1
  %3307 = zext i8 %3306 to i32
  br label %3319

; <label>:3308                                    ; preds = %3291
  %3309 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3310 = bitcast %union.rec* %3309 to %struct.word_type*
  %3311 = getelementptr inbounds %struct.word_type, %struct.word_type* %3310, i32 0, i32 1
  %3312 = bitcast %union.FIRST_UNION* %3311 to %struct.anon*
  %3313 = getelementptr inbounds %struct.anon, %struct.anon* %3312, i32 0, i32 0
  %3314 = load i8, i8* %3313, align 1
  %3315 = zext i8 %3314 to i64
  %3316 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3315
  %3317 = load i8, i8* %3316, align 1
  %3318 = zext i8 %3317 to i32
  br label %3319

; <label>:3319                                    ; preds = %3308, %3300
  %3320 = phi i32 [ %3307, %3300 ], [ %3318, %3308 ]
  store i32 %3320, i32* @zz_size, align 4
  %3321 = load i32, i32* @zz_size, align 4
  %3322 = sext i32 %3321 to i64
  %3323 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3322
  %3324 = load %union.rec*, %union.rec** %3323, align 8
  %3325 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3326 = bitcast %union.rec* %3325 to %struct.word_type*
  %3327 = getelementptr inbounds %struct.word_type, %struct.word_type* %3326, i32 0, i32 0
  %3328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3327, i32 0, i64 0
  %3329 = getelementptr inbounds %struct.LIST, %struct.LIST* %3328, i32 0, i32 0
  store %union.rec* %3324, %union.rec** %3329, align 8
  %3330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3331 = load i32, i32* @zz_size, align 4
  %3332 = sext i32 %3331 to i64
  %3333 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3332
  store %union.rec* %3330, %union.rec** %3333, align 8
  %3334 = call %union.rec* @LexGetToken()
  store %union.rec* %3334, %union.rec** %t, align 8
  %3335 = load %union.rec*, %union.rec** %t, align 8
  %3336 = bitcast %union.rec* %3335 to %struct.word_type*
  %3337 = getelementptr inbounds %struct.word_type, %struct.word_type* %3336, i32 0, i32 1
  %3338 = bitcast %union.FIRST_UNION* %3337 to %struct.anon*
  %3339 = getelementptr inbounds %struct.anon, %struct.anon* %3338, i32 0, i32 0
  %3340 = load i8, i8* %3339, align 1
  %3341 = zext i8 %3340 to i32
  %3342 = icmp ne i32 %3341, 11
  br i1 %3342, label %3343, label %3351

; <label>:3343                                    ; preds = %3319
  %3344 = load %union.rec*, %union.rec** %t, align 8
  %3345 = bitcast %union.rec* %3344 to %struct.word_type*
  %3346 = getelementptr inbounds %struct.word_type, %struct.word_type* %3345, i32 0, i32 1
  %3347 = bitcast %union.FIRST_UNION* %3346 to %struct.FILE_POS*
  %3348 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 41, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.42, i32 0, i32 0), i32 2, %struct.FILE_POS* %3347, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.35, i32 0, i32 0))
  call void @UnSuppressScope()
  %3349 = load %union.rec*, %union.rec** %t, align 8
  %3350 = load %union.rec**, %union.rec*** %1, align 8
  store %union.rec* %3349, %union.rec** %3350, align 8
  br label %3822

; <label>:3351                                    ; preds = %3319
  %3352 = load %union.rec*, %union.rec** %t, align 8
  %3353 = bitcast %union.rec* %3352 to %struct.word_type*
  %3354 = getelementptr inbounds %struct.word_type, %struct.word_type* %3353, i32 0, i32 4
  %3355 = getelementptr inbounds [4 x i8], [4 x i8]* %3354, i32 0, i32 0
  %3356 = load %union.rec*, %union.rec** %t, align 8
  %3357 = bitcast %union.rec* %3356 to %struct.word_type*
  %3358 = getelementptr inbounds %struct.word_type, %struct.word_type* %3357, i32 0, i32 1
  %3359 = bitcast %union.FIRST_UNION* %3358 to %struct.FILE_POS*
  %3360 = load %union.rec*, %union.rec** %res, align 8
  %3361 = call %union.rec* @InsertSym(i8* %3355, i8 zeroext -110, %struct.FILE_POS* %3359, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %3360, %union.rec* null)
  call void @UnSuppressScope()
  %3362 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3362, %union.rec** @zz_hold, align 8
  %3363 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3363, %union.rec** @zz_hold, align 8
  %3364 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3365 = bitcast %union.rec* %3364 to %struct.word_type*
  %3366 = getelementptr inbounds %struct.word_type, %struct.word_type* %3365, i32 0, i32 1
  %3367 = bitcast %union.FIRST_UNION* %3366 to %struct.anon*
  %3368 = getelementptr inbounds %struct.anon, %struct.anon* %3367, i32 0, i32 0
  %3369 = load i8, i8* %3368, align 1
  %3370 = zext i8 %3369 to i32
  %3371 = icmp eq i32 %3370, 11
  br i1 %3371, label %3381, label %3372

; <label>:3372                                    ; preds = %3351
  %3373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3374 = bitcast %union.rec* %3373 to %struct.word_type*
  %3375 = getelementptr inbounds %struct.word_type, %struct.word_type* %3374, i32 0, i32 1
  %3376 = bitcast %union.FIRST_UNION* %3375 to %struct.anon*
  %3377 = getelementptr inbounds %struct.anon, %struct.anon* %3376, i32 0, i32 0
  %3378 = load i8, i8* %3377, align 1
  %3379 = zext i8 %3378 to i32
  %3380 = icmp eq i32 %3379, 12
  br i1 %3380, label %3381, label %3389

; <label>:3381                                    ; preds = %3372, %3351
  %3382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3383 = bitcast %union.rec* %3382 to %struct.word_type*
  %3384 = getelementptr inbounds %struct.word_type, %struct.word_type* %3383, i32 0, i32 1
  %3385 = bitcast %union.FIRST_UNION* %3384 to %struct.anon*
  %3386 = getelementptr inbounds %struct.anon, %struct.anon* %3385, i32 0, i32 1
  %3387 = load i8, i8* %3386, align 1
  %3388 = zext i8 %3387 to i32
  br label %3400

; <label>:3389                                    ; preds = %3372
  %3390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3391 = bitcast %union.rec* %3390 to %struct.word_type*
  %3392 = getelementptr inbounds %struct.word_type, %struct.word_type* %3391, i32 0, i32 1
  %3393 = bitcast %union.FIRST_UNION* %3392 to %struct.anon*
  %3394 = getelementptr inbounds %struct.anon, %struct.anon* %3393, i32 0, i32 0
  %3395 = load i8, i8* %3394, align 1
  %3396 = zext i8 %3395 to i64
  %3397 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3396
  %3398 = load i8, i8* %3397, align 1
  %3399 = zext i8 %3398 to i32
  br label %3400

; <label>:3400                                    ; preds = %3389, %3381
  %3401 = phi i32 [ %3388, %3381 ], [ %3399, %3389 ]
  store i32 %3401, i32* @zz_size, align 4
  %3402 = load i32, i32* @zz_size, align 4
  %3403 = sext i32 %3402 to i64
  %3404 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3403
  %3405 = load %union.rec*, %union.rec** %3404, align 8
  %3406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3407 = bitcast %union.rec* %3406 to %struct.word_type*
  %3408 = getelementptr inbounds %struct.word_type, %struct.word_type* %3407, i32 0, i32 0
  %3409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3408, i32 0, i64 0
  %3410 = getelementptr inbounds %struct.LIST, %struct.LIST* %3409, i32 0, i32 0
  store %union.rec* %3405, %union.rec** %3410, align 8
  %3411 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3412 = load i32, i32* @zz_size, align 4
  %3413 = sext i32 %3412 to i64
  %3414 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3413
  store %union.rec* %3411, %union.rec** %3414, align 8
  %3415 = call %union.rec* @LexGetToken()
  store %union.rec* %3415, %union.rec** %t, align 8
  br label %3416

; <label>:3416                                    ; preds = %3400, %3242, %3233
  %3417 = load %union.rec*, %union.rec** %res_target, align 8
  %3418 = icmp ne %union.rec* %3417, null
  br i1 %3418, label %3419, label %3427

; <label>:3419                                    ; preds = %3416
  %3420 = load %union.rec*, %union.rec** %res_target, align 8
  %3421 = bitcast %union.rec* %3420 to %struct.word_type*
  %3422 = getelementptr inbounds %struct.word_type, %struct.word_type* %3421, i32 0, i32 1
  %3423 = bitcast %union.FIRST_UNION* %3422 to %struct.FILE_POS*
  %3424 = load %union.rec*, %union.rec** %res, align 8
  %3425 = load %union.rec*, %union.rec** %res_target, align 8
  %3426 = call %union.rec* @InsertSym(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8 zeroext -113, %struct.FILE_POS* %3423, i8 zeroext 100, i32 0, i32 0, i32 0, %union.rec* %3424, %union.rec* %3425)
  br label %3427

; <label>:3427                                    ; preds = %3419, %3416
  %3428 = load %union.rec*, %union.rec** %t, align 8
  %3429 = bitcast %union.rec* %3428 to %struct.word_type*
  %3430 = getelementptr inbounds %struct.word_type, %struct.word_type* %3429, i32 0, i32 1
  %3431 = bitcast %union.FIRST_UNION* %3430 to %struct.anon*
  %3432 = getelementptr inbounds %struct.anon, %struct.anon* %3431, i32 0, i32 0
  %3433 = load i8, i8* %3432, align 1
  %3434 = zext i8 %3433 to i32
  %3435 = icmp eq i32 %3434, 11
  br i1 %3435, label %3436, label %3504

; <label>:3436                                    ; preds = %3427
  %3437 = load %union.rec*, %union.rec** %t, align 8
  %3438 = bitcast %union.rec* %3437 to %struct.word_type*
  %3439 = getelementptr inbounds %struct.word_type, %struct.word_type* %3438, i32 0, i32 4
  %3440 = getelementptr inbounds [4 x i8], [4 x i8]* %3439, i32 0, i32 0
  %3441 = call i32 @strcmp(i8* %3440, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0)) #3
  %3442 = icmp eq i32 %3441, 0
  br i1 %3442, label %3443, label %3504

; <label>:3443                                    ; preds = %3436
  %3444 = load %union.rec*, %union.rec** %t, align 8
  %3445 = bitcast %union.rec* %3444 to %struct.word_type*
  %3446 = getelementptr inbounds %struct.word_type, %struct.word_type* %3445, i32 0, i32 1
  %3447 = bitcast %union.FIRST_UNION* %3446 to %struct.FILE_POS*
  %3448 = load %union.rec*, %union.rec** @StartSym, align 8
  %3449 = call %union.rec* @NewToken(i8 zeroext 102, %struct.FILE_POS* %3447, i8 zeroext 0, i8 zeroext 0, i8 zeroext 3, %union.rec* %3448)
  store %union.rec* %3449, %union.rec** %z, align 8
  %3450 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3450, %union.rec** @zz_hold, align 8
  %3451 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3451, %union.rec** @zz_hold, align 8
  %3452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3453 = bitcast %union.rec* %3452 to %struct.word_type*
  %3454 = getelementptr inbounds %struct.word_type, %struct.word_type* %3453, i32 0, i32 1
  %3455 = bitcast %union.FIRST_UNION* %3454 to %struct.anon*
  %3456 = getelementptr inbounds %struct.anon, %struct.anon* %3455, i32 0, i32 0
  %3457 = load i8, i8* %3456, align 1
  %3458 = zext i8 %3457 to i32
  %3459 = icmp eq i32 %3458, 11
  br i1 %3459, label %3469, label %3460

; <label>:3460                                    ; preds = %3443
  %3461 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3462 = bitcast %union.rec* %3461 to %struct.word_type*
  %3463 = getelementptr inbounds %struct.word_type, %struct.word_type* %3462, i32 0, i32 1
  %3464 = bitcast %union.FIRST_UNION* %3463 to %struct.anon*
  %3465 = getelementptr inbounds %struct.anon, %struct.anon* %3464, i32 0, i32 0
  %3466 = load i8, i8* %3465, align 1
  %3467 = zext i8 %3466 to i32
  %3468 = icmp eq i32 %3467, 12
  br i1 %3468, label %3469, label %3477

; <label>:3469                                    ; preds = %3460, %3443
  %3470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3471 = bitcast %union.rec* %3470 to %struct.word_type*
  %3472 = getelementptr inbounds %struct.word_type, %struct.word_type* %3471, i32 0, i32 1
  %3473 = bitcast %union.FIRST_UNION* %3472 to %struct.anon*
  %3474 = getelementptr inbounds %struct.anon, %struct.anon* %3473, i32 0, i32 1
  %3475 = load i8, i8* %3474, align 1
  %3476 = zext i8 %3475 to i32
  br label %3488

; <label>:3477                                    ; preds = %3460
  %3478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3479 = bitcast %union.rec* %3478 to %struct.word_type*
  %3480 = getelementptr inbounds %struct.word_type, %struct.word_type* %3479, i32 0, i32 1
  %3481 = bitcast %union.FIRST_UNION* %3480 to %struct.anon*
  %3482 = getelementptr inbounds %struct.anon, %struct.anon* %3481, i32 0, i32 0
  %3483 = load i8, i8* %3482, align 1
  %3484 = zext i8 %3483 to i64
  %3485 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3484
  %3486 = load i8, i8* %3485, align 1
  %3487 = zext i8 %3486 to i32
  br label %3488

; <label>:3488                                    ; preds = %3477, %3469
  %3489 = phi i32 [ %3476, %3469 ], [ %3487, %3477 ]
  store i32 %3489, i32* @zz_size, align 4
  %3490 = load i32, i32* @zz_size, align 4
  %3491 = sext i32 %3490 to i64
  %3492 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3491
  %3493 = load %union.rec*, %union.rec** %3492, align 8
  %3494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3495 = bitcast %union.rec* %3494 to %struct.word_type*
  %3496 = getelementptr inbounds %struct.word_type, %struct.word_type* %3495, i32 0, i32 0
  %3497 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3496, i32 0, i64 0
  %3498 = getelementptr inbounds %struct.LIST, %struct.LIST* %3497, i32 0, i32 0
  store %union.rec* %3493, %union.rec** %3498, align 8
  %3499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3500 = load i32, i32* @zz_size, align 4
  %3501 = sext i32 %3500 to i64
  %3502 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3501
  store %union.rec* %3499, %union.rec** %3502, align 8
  %3503 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %3503, %union.rec** %t, align 8
  br label %3609

; <label>:3504                                    ; preds = %3436, %3427
  %3505 = load %union.rec*, %union.rec** %t, align 8
  %3506 = bitcast %union.rec* %3505 to %struct.word_type*
  %3507 = getelementptr inbounds %struct.word_type, %struct.word_type* %3506, i32 0, i32 1
  %3508 = bitcast %union.FIRST_UNION* %3507 to %struct.anon*
  %3509 = getelementptr inbounds %struct.anon, %struct.anon* %3508, i32 0, i32 0
  %3510 = load i8, i8* %3509, align 1
  %3511 = zext i8 %3510 to i32
  %3512 = icmp eq i32 %3511, 11
  br i1 %3512, label %3513, label %3581

; <label>:3513                                    ; preds = %3504
  %3514 = load %union.rec*, %union.rec** %t, align 8
  %3515 = bitcast %union.rec* %3514 to %struct.word_type*
  %3516 = getelementptr inbounds %struct.word_type, %struct.word_type* %3515, i32 0, i32 4
  %3517 = getelementptr inbounds [4 x i8], [4 x i8]* %3516, i32 0, i32 0
  %3518 = call i32 @strcmp(i8* %3517, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0)) #3
  %3519 = icmp eq i32 %3518, 0
  br i1 %3519, label %3520, label %3581

; <label>:3520                                    ; preds = %3513
  %3521 = load %union.rec*, %union.rec** %t, align 8
  %3522 = bitcast %union.rec* %3521 to %struct.word_type*
  %3523 = getelementptr inbounds %struct.word_type, %struct.word_type* %3522, i32 0, i32 1
  %3524 = bitcast %union.FIRST_UNION* %3523 to %struct.FILE_POS*
  %3525 = load %union.rec*, %union.rec** @StartSym, align 8
  %3526 = call %union.rec* @NewToken(i8 zeroext 104, %struct.FILE_POS* %3524, i8 zeroext 0, i8 zeroext 0, i8 zeroext 1, %union.rec* %3525)
  store %union.rec* %3526, %union.rec** %z, align 8
  %3527 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %3527, %union.rec** @zz_hold, align 8
  %3528 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %3528, %union.rec** @zz_hold, align 8
  %3529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3530 = bitcast %union.rec* %3529 to %struct.word_type*
  %3531 = getelementptr inbounds %struct.word_type, %struct.word_type* %3530, i32 0, i32 1
  %3532 = bitcast %union.FIRST_UNION* %3531 to %struct.anon*
  %3533 = getelementptr inbounds %struct.anon, %struct.anon* %3532, i32 0, i32 0
  %3534 = load i8, i8* %3533, align 1
  %3535 = zext i8 %3534 to i32
  %3536 = icmp eq i32 %3535, 11
  br i1 %3536, label %3546, label %3537

; <label>:3537                                    ; preds = %3520
  %3538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3539 = bitcast %union.rec* %3538 to %struct.word_type*
  %3540 = getelementptr inbounds %struct.word_type, %struct.word_type* %3539, i32 0, i32 1
  %3541 = bitcast %union.FIRST_UNION* %3540 to %struct.anon*
  %3542 = getelementptr inbounds %struct.anon, %struct.anon* %3541, i32 0, i32 0
  %3543 = load i8, i8* %3542, align 1
  %3544 = zext i8 %3543 to i32
  %3545 = icmp eq i32 %3544, 12
  br i1 %3545, label %3546, label %3554

; <label>:3546                                    ; preds = %3537, %3520
  %3547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3548 = bitcast %union.rec* %3547 to %struct.word_type*
  %3549 = getelementptr inbounds %struct.word_type, %struct.word_type* %3548, i32 0, i32 1
  %3550 = bitcast %union.FIRST_UNION* %3549 to %struct.anon*
  %3551 = getelementptr inbounds %struct.anon, %struct.anon* %3550, i32 0, i32 1
  %3552 = load i8, i8* %3551, align 1
  %3553 = zext i8 %3552 to i32
  br label %3565

; <label>:3554                                    ; preds = %3537
  %3555 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3556 = bitcast %union.rec* %3555 to %struct.word_type*
  %3557 = getelementptr inbounds %struct.word_type, %struct.word_type* %3556, i32 0, i32 1
  %3558 = bitcast %union.FIRST_UNION* %3557 to %struct.anon*
  %3559 = getelementptr inbounds %struct.anon, %struct.anon* %3558, i32 0, i32 0
  %3560 = load i8, i8* %3559, align 1
  %3561 = zext i8 %3560 to i64
  %3562 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %3561
  %3563 = load i8, i8* %3562, align 1
  %3564 = zext i8 %3563 to i32
  br label %3565

; <label>:3565                                    ; preds = %3554, %3546
  %3566 = phi i32 [ %3553, %3546 ], [ %3564, %3554 ]
  store i32 %3566, i32* @zz_size, align 4
  %3567 = load i32, i32* @zz_size, align 4
  %3568 = sext i32 %3567 to i64
  %3569 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3568
  %3570 = load %union.rec*, %union.rec** %3569, align 8
  %3571 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3572 = bitcast %union.rec* %3571 to %struct.word_type*
  %3573 = getelementptr inbounds %struct.word_type, %struct.word_type* %3572, i32 0, i32 0
  %3574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3573, i32 0, i64 0
  %3575 = getelementptr inbounds %struct.LIST, %struct.LIST* %3574, i32 0, i32 0
  store %union.rec* %3570, %union.rec** %3575, align 8
  %3576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %3577 = load i32, i32* @zz_size, align 4
  %3578 = sext i32 %3577 to i64
  %3579 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %3578
  store %union.rec* %3576, %union.rec** %3579, align 8
  %3580 = load %union.rec*, %union.rec** %z, align 8
  store %union.rec* %3580, %union.rec** %t, align 8
  br label %3608

; <label>:3581                                    ; preds = %3513, %3504
  %3582 = load %union.rec*, %union.rec** %t, align 8
  %3583 = bitcast %union.rec* %3582 to %struct.word_type*
  %3584 = getelementptr inbounds %struct.word_type, %struct.word_type* %3583, i32 0, i32 1
  %3585 = bitcast %union.FIRST_UNION* %3584 to %struct.anon*
  %3586 = getelementptr inbounds %struct.anon, %struct.anon* %3585, i32 0, i32 0
  %3587 = load i8, i8* %3586, align 1
  %3588 = zext i8 %3587 to i32
  %3589 = icmp ne i32 %3588, 102
  br i1 %3589, label %3590, label %3607

; <label>:3590                                    ; preds = %3581
  %3591 = load %union.rec*, %union.rec** %t, align 8
  %3592 = bitcast %union.rec* %3591 to %struct.word_type*
  %3593 = getelementptr inbounds %struct.word_type, %struct.word_type* %3592, i32 0, i32 1
  %3594 = bitcast %union.FIRST_UNION* %3593 to %struct.anon*
  %3595 = getelementptr inbounds %struct.anon, %struct.anon* %3594, i32 0, i32 0
  %3596 = load i8, i8* %3595, align 1
  %3597 = zext i8 %3596 to i32
  %3598 = icmp ne i32 %3597, 104
  br i1 %3598, label %3599, label %3607

; <label>:3599                                    ; preds = %3590
  %3600 = load %union.rec*, %union.rec** %t, align 8
  %3601 = bitcast %union.rec* %3600 to %struct.word_type*
  %3602 = getelementptr inbounds %struct.word_type, %struct.word_type* %3601, i32 0, i32 1
  %3603 = bitcast %union.FIRST_UNION* %3602 to %struct.FILE_POS*
  %3604 = load %union.rec*, %union.rec** %res, align 8
  %3605 = call i8* @SymName(%union.rec* %3604)
  %3606 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 42, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.44, i32 0, i32 0), i32 1, %struct.FILE_POS* %3603, i8* %3605)
  br label %3607

; <label>:3607                                    ; preds = %3599, %3590, %3581
  br label %3608

; <label>:3608                                    ; preds = %3607, %3565
  br label %3609

; <label>:3609                                    ; preds = %3608, %3488
  %3610 = load %union.rec*, %union.rec** %t, align 8
  %3611 = bitcast %union.rec* %3610 to %struct.word_type*
  %3612 = getelementptr inbounds %struct.word_type, %struct.word_type* %3611, i32 0, i32 1
  %3613 = bitcast %union.FIRST_UNION* %3612 to %struct.anon*
  %3614 = getelementptr inbounds %struct.anon, %struct.anon* %3613, i32 0, i32 0
  %3615 = load i8, i8* %3614, align 1
  %3616 = zext i8 %3615 to i32
  %3617 = icmp eq i32 %3616, 104
  br i1 %3617, label %3618, label %3623

; <label>:3618                                    ; preds = %3609
  %3619 = load %union.rec*, %union.rec** %res, align 8
  %3620 = load %union.rec*, %union.rec** %t, align 8
  %3621 = bitcast %union.rec* %3620 to %struct.closure_type*
  %3622 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %3621, i32 0, i32 5
  store %union.rec* %3619, %union.rec** %3622, align 8
  br label %3623

; <label>:3623                                    ; preds = %3618, %3609
  %3624 = load %union.rec*, %union.rec** %res, align 8
  call void @PushScope(%union.rec* %3624, i32 0, i32 0)
  call void @BodyParAllowed()
  %3625 = load %union.rec*, %union.rec** %res, align 8
  %3626 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %3625, i32 1, i32 0)
  %3627 = load %union.rec*, %union.rec** %res, align 8
  %3628 = bitcast %union.rec* %3627 to %struct.symbol_type*
  %3629 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %3628, i32 0, i32 4
  store %union.rec* %3626, %union.rec** %3629, align 8
  %3630 = load %union.rec*, %union.rec** %export_list, align 8
  %3631 = bitcast %union.rec* %3630 to %struct.word_type*
  %3632 = getelementptr inbounds %struct.word_type, %struct.word_type* %3631, i32 0, i32 0
  %3633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3632, i32 0, i64 0
  %3634 = getelementptr inbounds %struct.LIST, %struct.LIST* %3633, i32 0, i32 1
  %3635 = load %union.rec*, %union.rec** %3634, align 8
  store %union.rec* %3635, %union.rec** %link, align 8
  br label %3636

; <label>:3636                                    ; preds = %3763, %3623
  %3637 = load %union.rec*, %union.rec** %link, align 8
  %3638 = load %union.rec*, %union.rec** %export_list, align 8
  %3639 = icmp ne %union.rec* %3637, %3638
  br i1 %3639, label %3640, label %3770

; <label>:3640                                    ; preds = %3636
  %3641 = load %union.rec*, %union.rec** %link, align 8
  %3642 = bitcast %union.rec* %3641 to %struct.word_type*
  %3643 = getelementptr inbounds %struct.word_type, %struct.word_type* %3642, i32 0, i32 0
  %3644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3643, i32 0, i64 1
  %3645 = getelementptr inbounds %struct.LIST, %struct.LIST* %3644, i32 0, i32 0
  %3646 = load %union.rec*, %union.rec** %3645, align 8
  store %union.rec* %3646, %union.rec** %y, align 8
  br label %3647

; <label>:3647                                    ; preds = %3657, %3640
  %3648 = load %union.rec*, %union.rec** %y, align 8
  %3649 = bitcast %union.rec* %3648 to %struct.word_type*
  %3650 = getelementptr inbounds %struct.word_type, %struct.word_type* %3649, i32 0, i32 1
  %3651 = bitcast %union.FIRST_UNION* %3650 to %struct.anon*
  %3652 = getelementptr inbounds %struct.anon, %struct.anon* %3651, i32 0, i32 0
  %3653 = load i8, i8* %3652, align 1
  %3654 = zext i8 %3653 to i32
  %3655 = icmp eq i32 %3654, 0
  br i1 %3655, label %3656, label %3664

; <label>:3656                                    ; preds = %3647
  br label %3657

; <label>:3657                                    ; preds = %3656
  %3658 = load %union.rec*, %union.rec** %y, align 8
  %3659 = bitcast %union.rec* %3658 to %struct.word_type*
  %3660 = getelementptr inbounds %struct.word_type, %struct.word_type* %3659, i32 0, i32 0
  %3661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3660, i32 0, i64 1
  %3662 = getelementptr inbounds %struct.LIST, %struct.LIST* %3661, i32 0, i32 0
  %3663 = load %union.rec*, %union.rec** %3662, align 8
  store %union.rec* %3663, %union.rec** %y, align 8
  br label %3647

; <label>:3664                                    ; preds = %3647
  %3665 = load %union.rec*, %union.rec** %y, align 8
  %3666 = bitcast %union.rec* %3665 to %struct.word_type*
  %3667 = getelementptr inbounds %struct.word_type, %struct.word_type* %3666, i32 0, i32 4
  %3668 = getelementptr inbounds [4 x i8], [4 x i8]* %3667, i32 0, i32 0
  %3669 = load %union.rec*, %union.rec** %y, align 8
  %3670 = bitcast %union.rec* %3669 to %struct.word_type*
  %3671 = getelementptr inbounds %struct.word_type, %struct.word_type* %3670, i32 0, i32 4
  %3672 = getelementptr inbounds [4 x i8], [4 x i8]* %3671, i32 0, i32 0
  %3673 = call i64 @strlen(i8* %3672) #3
  %3674 = trunc i64 %3673 to i32
  %3675 = call %union.rec* @SearchSym(i8* %3668, i32 %3674)
  store %union.rec* %3675, %union.rec** %z, align 8
  %3676 = load %union.rec*, %union.rec** %z, align 8
  %3677 = icmp eq %union.rec* %3676, null
  br i1 %3677, label %3685, label %3678

; <label>:3678                                    ; preds = %3664
  %3679 = load %union.rec*, %union.rec** %z, align 8
  %3680 = bitcast %union.rec* %3679 to %struct.symbol_type*
  %3681 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %3680, i32 0, i32 3
  %3682 = load %union.rec*, %union.rec** %3681, align 8
  %3683 = load %union.rec*, %union.rec** %res, align 8
  %3684 = icmp ne %union.rec* %3682, %3683
  br i1 %3684, label %3685, label %3697

; <label>:3685                                    ; preds = %3678, %3664
  %3686 = load %union.rec*, %union.rec** %y, align 8
  %3687 = bitcast %union.rec* %3686 to %struct.word_type*
  %3688 = getelementptr inbounds %struct.word_type, %struct.word_type* %3687, i32 0, i32 1
  %3689 = bitcast %union.FIRST_UNION* %3688 to %struct.FILE_POS*
  %3690 = load %union.rec*, %union.rec** %y, align 8
  %3691 = bitcast %union.rec* %3690 to %struct.word_type*
  %3692 = getelementptr inbounds %struct.word_type, %struct.word_type* %3691, i32 0, i32 4
  %3693 = getelementptr inbounds [4 x i8], [4 x i8]* %3692, i32 0, i32 0
  %3694 = load %union.rec*, %union.rec** %res, align 8
  %3695 = call i8* @SymName(%union.rec* %3694)
  %3696 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 43, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.45, i32 0, i32 0), i32 2, %struct.FILE_POS* %3689, i8* %3693, i8* %3695)
  br label %3762

; <label>:3697                                    ; preds = %3678
  %3698 = load %union.rec*, %union.rec** %res, align 8
  %3699 = bitcast %union.rec* %3698 to %struct.word_type*
  %3700 = getelementptr inbounds %struct.word_type, %struct.word_type* %3699, i32 0, i32 2
  %3701 = bitcast %union.SECOND_UNION* %3700 to %struct.anon.5*
  %3702 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %3701, i32 0, i32 1
  %3703 = bitcast [3 x i8]* %3702 to i24*
  %3704 = load i24, i24* %3703, align 1
  %3705 = lshr i24 %3704, 8
  %3706 = and i24 %3705, 1
  %3707 = zext i24 %3706 to i32
  %3708 = icmp ne i32 %3707, 0
  br i1 %3708, label %3709, label %3728

; <label>:3709                                    ; preds = %3697
  %3710 = load %union.rec*, %union.rec** %z, align 8
  %3711 = bitcast %union.rec* %3710 to %struct.word_type*
  %3712 = getelementptr inbounds %struct.word_type, %struct.word_type* %3711, i32 0, i32 1
  %3713 = bitcast %union.FIRST_UNION* %3712 to %struct.anon*
  %3714 = getelementptr inbounds %struct.anon, %struct.anon* %3713, i32 0, i32 0
  %3715 = load i8, i8* %3714, align 1
  %3716 = zext i8 %3715 to i32
  %3717 = icmp eq i32 %3716, 146
  br i1 %3717, label %3718, label %3728

; <label>:3718                                    ; preds = %3709
  %3719 = load %union.rec*, %union.rec** %y, align 8
  %3720 = bitcast %union.rec* %3719 to %struct.word_type*
  %3721 = getelementptr inbounds %struct.word_type, %struct.word_type* %3720, i32 0, i32 1
  %3722 = bitcast %union.FIRST_UNION* %3721 to %struct.FILE_POS*
  %3723 = load %union.rec*, %union.rec** %y, align 8
  %3724 = bitcast %union.rec* %3723 to %struct.word_type*
  %3725 = getelementptr inbounds %struct.word_type, %struct.word_type* %3724, i32 0, i32 4
  %3726 = getelementptr inbounds [4 x i8], [4 x i8]* %3725, i32 0, i32 0
  %3727 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 44, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.46, i32 0, i32 0), i32 2, %struct.FILE_POS* %3722, i8* %3726)
  br label %3761

; <label>:3728                                    ; preds = %3709, %3697
  %3729 = load %union.rec*, %union.rec** %z, align 8
  %3730 = bitcast %union.rec* %3729 to %struct.word_type*
  %3731 = getelementptr inbounds %struct.word_type, %struct.word_type* %3730, i32 0, i32 2
  %3732 = bitcast %union.SECOND_UNION* %3731 to %struct.anon.5*
  %3733 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %3732, i32 0, i32 1
  %3734 = bitcast [3 x i8]* %3733 to i24*
  %3735 = load i24, i24* %3734, align 1
  %3736 = lshr i24 %3735, 16
  %3737 = and i24 %3736, 1
  %3738 = zext i24 %3737 to i32
  %3739 = icmp ne i32 %3738, 0
  br i1 %3739, label %3740, label %3750

; <label>:3740                                    ; preds = %3728
  %3741 = load %union.rec*, %union.rec** %y, align 8
  %3742 = bitcast %union.rec* %3741 to %struct.word_type*
  %3743 = getelementptr inbounds %struct.word_type, %struct.word_type* %3742, i32 0, i32 1
  %3744 = bitcast %union.FIRST_UNION* %3743 to %struct.FILE_POS*
  %3745 = load %union.rec*, %union.rec** %y, align 8
  %3746 = bitcast %union.rec* %3745 to %struct.word_type*
  %3747 = getelementptr inbounds %struct.word_type, %struct.word_type* %3746, i32 0, i32 4
  %3748 = getelementptr inbounds [4 x i8], [4 x i8]* %3747, i32 0, i32 0
  %3749 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 45, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.47, i32 0, i32 0), i32 2, %struct.FILE_POS* %3744, i8* %3748)
  br label %3760

; <label>:3750                                    ; preds = %3728
  %3751 = load %union.rec*, %union.rec** %z, align 8
  %3752 = bitcast %union.rec* %3751 to %struct.word_type*
  %3753 = getelementptr inbounds %struct.word_type, %struct.word_type* %3752, i32 0, i32 2
  %3754 = bitcast %union.SECOND_UNION* %3753 to %struct.anon.5*
  %3755 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %3754, i32 0, i32 1
  %3756 = bitcast [3 x i8]* %3755 to i24*
  %3757 = load i24, i24* %3756, align 1
  %3758 = and i24 %3757, -65537
  %3759 = or i24 %3758, 65536
  store i24 %3759, i24* %3756, align 1
  br label %3760

; <label>:3760                                    ; preds = %3750, %3740
  br label %3761

; <label>:3761                                    ; preds = %3760, %3718
  br label %3762

; <label>:3762                                    ; preds = %3761, %3685
  br label %3763

; <label>:3763                                    ; preds = %3762
  %3764 = load %union.rec*, %union.rec** %link, align 8
  %3765 = bitcast %union.rec* %3764 to %struct.word_type*
  %3766 = getelementptr inbounds %struct.word_type, %struct.word_type* %3765, i32 0, i32 0
  %3767 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3766, i32 0, i64 0
  %3768 = getelementptr inbounds %struct.LIST, %struct.LIST* %3767, i32 0, i32 1
  %3769 = load %union.rec*, %union.rec** %3768, align 8
  store %union.rec* %3769, %union.rec** %link, align 8
  br label %3636

; <label>:3770                                    ; preds = %3636
  %3771 = load %union.rec*, %union.rec** %export_list, align 8
  %3772 = call i32 @DisposeObject(%union.rec* %3771)
  call void @PopScope()
  br label %3773

; <label>:3773                                    ; preds = %3770, %1860
  %3774 = load %union.rec*, %union.rec** %import_list, align 8
  %3775 = bitcast %union.rec* %3774 to %struct.word_type*
  %3776 = getelementptr inbounds %struct.word_type, %struct.word_type* %3775, i32 0, i32 0
  %3777 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3776, i32 0, i64 0
  %3778 = getelementptr inbounds %struct.LIST, %struct.LIST* %3777, i32 0, i32 1
  %3779 = load %union.rec*, %union.rec** %3778, align 8
  store %union.rec* %3779, %union.rec** %link, align 8
  br label %3780

; <label>:3780                                    ; preds = %3785, %3773
  %3781 = load %union.rec*, %union.rec** %link, align 8
  %3782 = load %union.rec*, %union.rec** %import_list, align 8
  %3783 = icmp ne %union.rec* %3781, %3782
  br i1 %3783, label %3784, label %3792

; <label>:3784                                    ; preds = %3780
  call void @PopScope()
  br label %3785

; <label>:3785                                    ; preds = %3784
  %3786 = load %union.rec*, %union.rec** %link, align 8
  %3787 = bitcast %union.rec* %3786 to %struct.word_type*
  %3788 = getelementptr inbounds %struct.word_type, %struct.word_type* %3787, i32 0, i32 0
  %3789 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3788, i32 0, i64 0
  %3790 = getelementptr inbounds %struct.LIST, %struct.LIST* %3789, i32 0, i32 1
  %3791 = load %union.rec*, %union.rec** %3790, align 8
  store %union.rec* %3791, %union.rec** %link, align 8
  br label %3780

; <label>:3792                                    ; preds = %3780
  %3793 = load %union.rec*, %union.rec** %import_list, align 8
  %3794 = bitcast %union.rec* %3793 to %struct.word_type*
  %3795 = getelementptr inbounds %struct.word_type, %struct.word_type* %3794, i32 0, i32 0
  %3796 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3795, i32 0, i64 0
  %3797 = getelementptr inbounds %struct.LIST, %struct.LIST* %3796, i32 0, i32 1
  %3798 = load %union.rec*, %union.rec** %3797, align 8
  %3799 = load %union.rec*, %union.rec** %import_list, align 8
  %3800 = icmp eq %union.rec* %3798, %3799
  br i1 %3800, label %3805, label %3801

; <label>:3801                                    ; preds = %3792
  %3802 = load %union.rec*, %union.rec** %curr_encl, align 8
  %3803 = load %union.rec*, %union.rec** %2, align 8
  %3804 = icmp ne %union.rec* %3802, %3803
  br i1 %3804, label %3805, label %3808

; <label>:3805                                    ; preds = %3801, %3792
  %3806 = load %union.rec*, %union.rec** %import_list, align 8
  %3807 = call i32 @DisposeObject(%union.rec* %3806)
  store %union.rec* null, %union.rec** %import_list, align 8
  br label %3813

; <label>:3808                                    ; preds = %3801
  %3809 = load %union.rec*, %union.rec** %import_list, align 8
  %3810 = load %union.rec*, %union.rec** %res, align 8
  %3811 = bitcast %union.rec* %3810 to %struct.symbol_type*
  %3812 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %3811, i32 0, i32 9
  store %union.rec* %3809, %union.rec** %3812, align 8
  br label %3813

; <label>:3813                                    ; preds = %3808, %3805
  call void @BodyParAllowed()
  %3814 = load %union.rec*, %union.rec** %t, align 8
  %3815 = icmp eq %union.rec* %3814, null
  br i1 %3815, label %3816, label %3818

; <label>:3816                                    ; preds = %3813
  %3817 = call %union.rec* @LexGetToken()
  store %union.rec* %3817, %union.rec** %t, align 8
  br label %3818

; <label>:3818                                    ; preds = %3816, %3813
  br label %6

; <label>:3819                                    ; preds = %1823, %1797, %326, %44
  %3820 = load %union.rec*, %union.rec** %t, align 8
  %3821 = load %union.rec**, %union.rec*** %1, align 8
  store %union.rec* %3820, %union.rec** %3821, align 8
  br label %3822

; <label>:3822                                    ; preds = %3819, %3343, %3143, %2683, %2012
  ret void
}

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define internal void @ReadLangDef(%union.rec* %encl) #0 {
  %1 = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %names = alloca %union.rec*, align 8
  %inside = alloca %union.rec*, align 8
  store %union.rec* %encl, %union.rec** %1, align 8
  %2 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %3 = zext i8 %2 to i32
  store i32 %3, i32* @zz_size, align 4
  %4 = sext i32 %3 to i64
  %5 = icmp uge i64 %4, 265
  br i1 %5, label %6, label %9

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %7)
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
  store i8 17, i8* %39, align 1
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
  store %union.rec* %40, %union.rec** %names, align 8
  %61 = call %union.rec* @LexGetToken()
  store %union.rec* %61, %union.rec** %t, align 8
  br label %62

; <label>:62                                      ; preds = %252, %34
  %63 = load %union.rec*, %union.rec** %t, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 1
  %66 = bitcast %union.FIRST_UNION* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 11
  br i1 %70, label %80, label %71

; <label>:71                                      ; preds = %62
  %72 = load %union.rec*, %union.rec** %t, align 8
  %73 = bitcast %union.rec* %72 to %struct.word_type*
  %74 = getelementptr inbounds %struct.word_type, %struct.word_type* %73, i32 0, i32 1
  %75 = bitcast %union.FIRST_UNION* %74 to %struct.anon*
  %76 = getelementptr inbounds %struct.anon, %struct.anon* %75, i32 0, i32 0
  %77 = load i8, i8* %76, align 1
  %78 = zext i8 %77 to i32
  %79 = icmp eq i32 %78, 12
  br label %80

; <label>:80                                      ; preds = %71, %62
  %81 = phi i1 [ true, %62 ], [ %79, %71 ]
  br i1 %81, label %82, label %255

; <label>:82                                      ; preds = %80
  %83 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %84 = zext i8 %83 to i32
  store i32 %84, i32* @zz_size, align 4
  %85 = sext i32 %84 to i64
  %86 = icmp uge i64 %85, 265
  br i1 %86, label %87, label %90

; <label>:87                                      ; preds = %82
  %88 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %89 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i32 0, i32 0), i32 1, %struct.FILE_POS* %88)
  br label %115

; <label>:90                                      ; preds = %82
  %91 = load i32, i32* @zz_size, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %92
  %94 = load %union.rec*, %union.rec** %93, align 8
  %95 = icmp eq %union.rec* %94, null
  br i1 %95, label %96, label %100

; <label>:96                                      ; preds = %90
  %97 = load i32, i32* @zz_size, align 4
  %98 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %99 = call %union.rec* @GetMemory(i32 %97, %struct.FILE_POS* %98)
  store %union.rec* %99, %union.rec** @zz_hold, align 8
  br label %114

; <label>:100                                     ; preds = %90
  %101 = load i32, i32* @zz_size, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %102
  %104 = load %union.rec*, %union.rec** %103, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  store %union.rec* %104, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 0
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 0
  %110 = load %union.rec*, %union.rec** %109, align 8
  %111 = load i32, i32* @zz_size, align 4
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %112
  store %union.rec* %110, %union.rec** %113, align 8
  br label %114

; <label>:114                                     ; preds = %100, %96
  br label %115

; <label>:115                                     ; preds = %114, %87
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 1
  %119 = bitcast %union.FIRST_UNION* %118 to %struct.anon*
  %120 = getelementptr inbounds %struct.anon, %struct.anon* %119, i32 0, i32 0
  store i8 0, i8* %120, align 1
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %123 = bitcast %union.rec* %122 to %struct.word_type*
  %124 = getelementptr inbounds %struct.word_type, %struct.word_type* %123, i32 0, i32 0
  %125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %124, i32 0, i64 1
  %126 = getelementptr inbounds %struct.LIST, %struct.LIST* %125, i32 0, i32 1
  store %union.rec* %121, %union.rec** %126, align 8
  %127 = load %union.rec*, %union.rec** @zz_hold, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 0
  %130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %129, i32 0, i64 1
  %131 = getelementptr inbounds %struct.LIST, %struct.LIST* %130, i32 0, i32 0
  store %union.rec* %121, %union.rec** %131, align 8
  %132 = load %union.rec*, %union.rec** @zz_hold, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 0
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 1
  store %union.rec* %121, %union.rec** %136, align 8
  %137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 0
  %140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %139, i32 0, i64 0
  %141 = getelementptr inbounds %struct.LIST, %struct.LIST* %140, i32 0, i32 0
  store %union.rec* %121, %union.rec** %141, align 8
  store %union.rec* %121, %union.rec** @xx_link, align 8
  %142 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %142, %union.rec** @zz_res, align 8
  %143 = load %union.rec*, %union.rec** %names, align 8
  store %union.rec* %143, %union.rec** @zz_hold, align 8
  %144 = load %union.rec*, %union.rec** @zz_hold, align 8
  %145 = icmp eq %union.rec* %144, null
  br i1 %145, label %146, label %148

; <label>:146                                     ; preds = %115
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %196

; <label>:148                                     ; preds = %115
  %149 = load %union.rec*, %union.rec** @zz_res, align 8
  %150 = icmp eq %union.rec* %149, null
  br i1 %150, label %151, label %153

; <label>:151                                     ; preds = %148
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %194

; <label>:153                                     ; preds = %148
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 0
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 0
  %159 = load %union.rec*, %union.rec** %158, align 8
  store %union.rec* %159, %union.rec** @zz_tmp, align 8
  %160 = load %union.rec*, %union.rec** @zz_res, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 0
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 0
  %165 = load %union.rec*, %union.rec** %164, align 8
  %166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 0
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 0
  store %union.rec* %165, %union.rec** %170, align 8
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %172 = load %union.rec*, %union.rec** @zz_res, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 0
  %175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %174, i32 0, i64 0
  %176 = getelementptr inbounds %struct.LIST, %struct.LIST* %175, i32 0, i32 0
  %177 = load %union.rec*, %union.rec** %176, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %179, i32 0, i64 0
  %181 = getelementptr inbounds %struct.LIST, %struct.LIST* %180, i32 0, i32 1
  store %union.rec* %171, %union.rec** %181, align 8
  %182 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %183 = load %union.rec*, %union.rec** @zz_res, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 0
  %186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %185, i32 0, i64 0
  %187 = getelementptr inbounds %struct.LIST, %struct.LIST* %186, i32 0, i32 0
  store %union.rec* %182, %union.rec** %187, align 8
  %188 = load %union.rec*, %union.rec** @zz_res, align 8
  %189 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %191, i32 0, i64 0
  %193 = getelementptr inbounds %struct.LIST, %struct.LIST* %192, i32 0, i32 1
  store %union.rec* %188, %union.rec** %193, align 8
  br label %194

; <label>:194                                     ; preds = %153, %151
  %195 = phi %union.rec* [ %152, %151 ], [ %188, %153 ]
  br label %196

; <label>:196                                     ; preds = %194, %146
  %197 = phi %union.rec* [ %147, %146 ], [ %195, %194 ]
  %198 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %198, %union.rec** @zz_res, align 8
  %199 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %199, %union.rec** @zz_hold, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = icmp eq %union.rec* %200, null
  br i1 %201, label %202, label %204

; <label>:202                                     ; preds = %196
  %203 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %252

; <label>:204                                     ; preds = %196
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  %206 = icmp eq %union.rec* %205, null
  br i1 %206, label %207, label %209

; <label>:207                                     ; preds = %204
  %208 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %250

; <label>:209                                     ; preds = %204
  %210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 1
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %214, align 8
  store %union.rec* %215, %union.rec** @zz_tmp, align 8
  %216 = load %union.rec*, %union.rec** @zz_res, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 0
  %219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %218, i32 0, i64 1
  %220 = getelementptr inbounds %struct.LIST, %struct.LIST* %219, i32 0, i32 0
  %221 = load %union.rec*, %union.rec** %220, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 0
  %225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %224, i32 0, i64 1
  %226 = getelementptr inbounds %struct.LIST, %struct.LIST* %225, i32 0, i32 0
  store %union.rec* %221, %union.rec** %226, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %228 = load %union.rec*, %union.rec** @zz_res, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %230, i32 0, i64 1
  %232 = getelementptr inbounds %struct.LIST, %struct.LIST* %231, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %232, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %235, i32 0, i64 1
  %237 = getelementptr inbounds %struct.LIST, %struct.LIST* %236, i32 0, i32 1
  store %union.rec* %227, %union.rec** %237, align 8
  %238 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %239 = load %union.rec*, %union.rec** @zz_res, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 0
  %242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %241, i32 0, i64 1
  %243 = getelementptr inbounds %struct.LIST, %struct.LIST* %242, i32 0, i32 0
  store %union.rec* %238, %union.rec** %243, align 8
  %244 = load %union.rec*, %union.rec** @zz_res, align 8
  %245 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 1
  store %union.rec* %244, %union.rec** %249, align 8
  br label %250

; <label>:250                                     ; preds = %209, %207
  %251 = phi %union.rec* [ %208, %207 ], [ %244, %209 ]
  br label %252

; <label>:252                                     ; preds = %250, %202
  %253 = phi %union.rec* [ %203, %202 ], [ %251, %250 ]
  %254 = call %union.rec* @LexGetToken()
  store %union.rec* %254, %union.rec** %t, align 8
  br label %62

; <label>:255                                     ; preds = %80
  %256 = load %union.rec*, %union.rec** %t, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 1
  %259 = bitcast %union.FIRST_UNION* %258 to %struct.anon*
  %260 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 0
  %261 = load i8, i8* %260, align 1
  %262 = zext i8 %261 to i32
  %263 = icmp ne i32 %262, 102
  br i1 %263, label %264, label %323

; <label>:264                                     ; preds = %255
  %265 = load %union.rec*, %union.rec** %t, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 1
  %268 = bitcast %union.FIRST_UNION* %267 to %struct.FILE_POS*
  %269 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.48, i32 0, i32 0), i32 2, %struct.FILE_POS* %268, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %270 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %270, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 1
  %275 = bitcast %union.FIRST_UNION* %274 to %struct.anon*
  %276 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 0
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp eq i32 %278, 11
  br i1 %279, label %289, label %280

; <label>:280                                     ; preds = %264
  %281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %282 = bitcast %union.rec* %281 to %struct.word_type*
  %283 = getelementptr inbounds %struct.word_type, %struct.word_type* %282, i32 0, i32 1
  %284 = bitcast %union.FIRST_UNION* %283 to %struct.anon*
  %285 = getelementptr inbounds %struct.anon, %struct.anon* %284, i32 0, i32 0
  %286 = load i8, i8* %285, align 1
  %287 = zext i8 %286 to i32
  %288 = icmp eq i32 %287, 12
  br i1 %288, label %289, label %297

; <label>:289                                     ; preds = %280, %264
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 1
  %293 = bitcast %union.FIRST_UNION* %292 to %struct.anon*
  %294 = getelementptr inbounds %struct.anon, %struct.anon* %293, i32 0, i32 1
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  br label %308

; <label>:297                                     ; preds = %280
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 1
  %301 = bitcast %union.FIRST_UNION* %300 to %struct.anon*
  %302 = getelementptr inbounds %struct.anon, %struct.anon* %301, i32 0, i32 0
  %303 = load i8, i8* %302, align 1
  %304 = zext i8 %303 to i64
  %305 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %304
  %306 = load i8, i8* %305, align 1
  %307 = zext i8 %306 to i32
  br label %308

; <label>:308                                     ; preds = %297, %289
  %309 = phi i32 [ %296, %289 ], [ %307, %297 ]
  store i32 %309, i32* @zz_size, align 4
  %310 = load i32, i32* @zz_size, align 4
  %311 = sext i32 %310 to i64
  %312 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %311
  %313 = load %union.rec*, %union.rec** %312, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %316, i32 0, i64 0
  %318 = getelementptr inbounds %struct.LIST, %struct.LIST* %317, i32 0, i32 0
  store %union.rec* %313, %union.rec** %318, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %320 = load i32, i32* @zz_size, align 4
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %321
  store %union.rec* %319, %union.rec** %322, align 8
  br label %330

; <label>:323                                     ; preds = %255
  %324 = load %union.rec*, %union.rec** %1, align 8
  %325 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %324, i32 0, i32 0)
  store %union.rec* %325, %union.rec** %inside, align 8
  %326 = load %union.rec*, %union.rec** %inside, align 8
  %327 = call %union.rec* @ReplaceWithTidy(%union.rec* %326, i32 0)
  store %union.rec* %327, %union.rec** %inside, align 8
  %328 = load %union.rec*, %union.rec** %names, align 8
  %329 = load %union.rec*, %union.rec** %inside, align 8
  call void @LanguageDefine(%union.rec* %328, %union.rec* %329)
  br label %330

; <label>:330                                     ; preds = %323, %308
  ret void
}

declare void @BodyParNotAllowed() #1

declare void @PushScope(%union.rec*, i32, i32) #1

declare i8* @SymName(%union.rec*) #1

declare void @SuppressScope() #1

declare void @UnSuppressScope() #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @ReadMacro(%union.rec** %token, %union.rec* %curr_encl, %union.rec* %encl) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec**, align 8
  %3 = alloca %union.rec*, align 8
  %4 = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store %union.rec** %token, %union.rec*** %2, align 8
  store %union.rec* %curr_encl, %union.rec** %3, align 8
  store %union.rec* %encl, %union.rec** %4, align 8
  call void @SuppressScope()
  %5 = load %union.rec**, %union.rec*** %2, align 8
  %6 = load %union.rec*, %union.rec** %5, align 8
  store %union.rec* %6, %union.rec** @zz_hold, align 8
  %7 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %7, %union.rec** @zz_hold, align 8
  %8 = load %union.rec*, %union.rec** @zz_hold, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 1
  %11 = bitcast %union.FIRST_UNION* %10 to %struct.anon*
  %12 = getelementptr inbounds %struct.anon, %struct.anon* %11, i32 0, i32 0
  %13 = load i8, i8* %12, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 11
  br i1 %15, label %25, label %16

; <label>:16                                      ; preds = %0
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  %18 = bitcast %union.rec* %17 to %struct.word_type*
  %19 = getelementptr inbounds %struct.word_type, %struct.word_type* %18, i32 0, i32 1
  %20 = bitcast %union.FIRST_UNION* %19 to %struct.anon*
  %21 = getelementptr inbounds %struct.anon, %struct.anon* %20, i32 0, i32 0
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = icmp eq i32 %23, 12
  br i1 %24, label %25, label %33

; <label>:25                                      ; preds = %16, %0
  %26 = load %union.rec*, %union.rec** @zz_hold, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 1
  %29 = bitcast %union.FIRST_UNION* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 1
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  br label %44

; <label>:33                                      ; preds = %16
  %34 = load %union.rec*, %union.rec** @zz_hold, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 1
  %37 = bitcast %union.FIRST_UNION* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %40
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  br label %44

; <label>:44                                      ; preds = %33, %25
  %45 = phi i32 [ %32, %25 ], [ %43, %33 ]
  store i32 %45, i32* @zz_size, align 4
  %46 = load i32, i32* @zz_size, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %47
  %49 = load %union.rec*, %union.rec** %48, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 0
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 0
  store %union.rec* %49, %union.rec** %54, align 8
  %55 = load %union.rec*, %union.rec** @zz_hold, align 8
  %56 = load i32, i32* @zz_size, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %57
  store %union.rec* %55, %union.rec** %58, align 8
  %59 = call %union.rec* @LexGetToken()
  store %union.rec* %59, %union.rec** %t, align 8
  %60 = load %union.rec*, %union.rec** %t, align 8
  %61 = bitcast %union.rec* %60 to %struct.word_type*
  %62 = getelementptr inbounds %struct.word_type, %struct.word_type* %61, i32 0, i32 1
  %63 = bitcast %union.FIRST_UNION* %62 to %struct.anon*
  %64 = getelementptr inbounds %struct.anon, %struct.anon* %63, i32 0, i32 0
  %65 = load i8, i8* %64, align 1
  %66 = zext i8 %65 to i32
  %67 = icmp eq i32 %66, 11
  br i1 %67, label %85, label %68

; <label>:68                                      ; preds = %44
  %69 = load %union.rec*, %union.rec** %t, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 1
  %72 = bitcast %union.FIRST_UNION* %71 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 12
  br i1 %76, label %85, label %77

; <label>:77                                      ; preds = %68
  %78 = load %union.rec*, %union.rec** %t, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 1
  %81 = bitcast %union.FIRST_UNION* %80 to %struct.FILE_POS*
  %82 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.49, i32 0, i32 0), i32 2, %struct.FILE_POS* %81, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0))
  call void @UnSuppressScope()
  %83 = load %union.rec*, %union.rec** %t, align 8
  %84 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* %83, %union.rec** %84, align 8
  store %union.rec* null, %union.rec** %1
  br label %449

; <label>:85                                      ; preds = %68, %44
  %86 = load %union.rec*, %union.rec** %t, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 4
  %89 = getelementptr inbounds [4 x i8], [4 x i8]* %88, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %t, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 1
  %93 = bitcast %union.FIRST_UNION* %92 to %struct.FILE_POS*
  %94 = load %union.rec*, %union.rec** %3, align 8
  %95 = call %union.rec* @InsertSym(i8* %89, i8 zeroext -114, %struct.FILE_POS* %93, i8 zeroext 0, i32 0, i32 1, i32 0, %union.rec* %94, %union.rec* null)
  store %union.rec* %95, %union.rec** %res, align 8
  %96 = load %union.rec*, %union.rec** %3, align 8
  %97 = load %union.rec*, %union.rec** %4, align 8
  %98 = icmp ne %union.rec* %96, %97
  br i1 %98, label %99, label %109

; <label>:99                                      ; preds = %85
  %100 = load %union.rec*, %union.rec** %res, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 2
  %103 = bitcast %union.SECOND_UNION* %102 to %struct.anon.5*
  %104 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %103, i32 0, i32 1
  %105 = bitcast [3 x i8]* %104 to i24*
  %106 = load i24, i24* %105, align 1
  %107 = and i24 %106, -65537
  %108 = or i24 %107, 65536
  store i24 %108, i24* %105, align 1
  br label %109

; <label>:109                                     ; preds = %99, %85
  call void @UnSuppressScope()
  %110 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %110, %union.rec** @zz_hold, align 8
  %111 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %111, %union.rec** @zz_hold, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 1
  %115 = bitcast %union.FIRST_UNION* %114 to %struct.anon*
  %116 = getelementptr inbounds %struct.anon, %struct.anon* %115, i32 0, i32 0
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp eq i32 %118, 11
  br i1 %119, label %129, label %120

; <label>:120                                     ; preds = %109
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 1
  %124 = bitcast %union.FIRST_UNION* %123 to %struct.anon*
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 12
  br i1 %128, label %129, label %137

; <label>:129                                     ; preds = %120, %109
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 1
  %133 = bitcast %union.FIRST_UNION* %132 to %struct.anon*
  %134 = getelementptr inbounds %struct.anon, %struct.anon* %133, i32 0, i32 1
  %135 = load i8, i8* %134, align 1
  %136 = zext i8 %135 to i32
  br label %148

; <label>:137                                     ; preds = %120
  %138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 1
  %141 = bitcast %union.FIRST_UNION* %140 to %struct.anon*
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %144
  %146 = load i8, i8* %145, align 1
  %147 = zext i8 %146 to i32
  br label %148

; <label>:148                                     ; preds = %137, %129
  %149 = phi i32 [ %136, %129 ], [ %147, %137 ]
  store i32 %149, i32* @zz_size, align 4
  %150 = load i32, i32* @zz_size, align 4
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %151
  %153 = load %union.rec*, %union.rec** %152, align 8
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 0
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 0
  store %union.rec* %153, %union.rec** %158, align 8
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = load i32, i32* @zz_size, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %161
  store %union.rec* %159, %union.rec** %162, align 8
  %163 = call %union.rec* @LexGetToken()
  store %union.rec* %163, %union.rec** %t, align 8
  br label %164

; <label>:164                                     ; preds = %232, %148
  %165 = load %union.rec*, %union.rec** %t, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 1
  %168 = bitcast %union.FIRST_UNION* %167 to %struct.anon*
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 11
  br i1 %172, label %182, label %173

; <label>:173                                     ; preds = %164
  %174 = load %union.rec*, %union.rec** %t, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 1
  %177 = bitcast %union.FIRST_UNION* %176 to %struct.anon*
  %178 = getelementptr inbounds %struct.anon, %struct.anon* %177, i32 0, i32 0
  %179 = load i8, i8* %178, align 1
  %180 = zext i8 %179 to i32
  %181 = icmp eq i32 %180, 12
  br label %182

; <label>:182                                     ; preds = %173, %164
  %183 = phi i1 [ true, %164 ], [ %181, %173 ]
  br i1 %183, label %184, label %248

; <label>:184                                     ; preds = %182
  %185 = load %union.rec*, %union.rec** %t, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 4
  %188 = getelementptr inbounds [4 x i8], [4 x i8]* %187, i32 0, i32 0
  %189 = load %union.rec*, %union.rec** %res, align 8
  %190 = load %union.rec*, %union.rec** %t, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 1
  %193 = bitcast %union.FIRST_UNION* %192 to %struct.FILE_POS*
  call void @InsertAlternativeName(i8* %188, %union.rec* %189, %struct.FILE_POS* %193)
  %194 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %194, %union.rec** @zz_hold, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %195, %union.rec** @zz_hold, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 1
  %199 = bitcast %union.FIRST_UNION* %198 to %struct.anon*
  %200 = getelementptr inbounds %struct.anon, %struct.anon* %199, i32 0, i32 0
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  %203 = icmp eq i32 %202, 11
  br i1 %203, label %213, label %204

; <label>:204                                     ; preds = %184
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 1
  %208 = bitcast %union.FIRST_UNION* %207 to %struct.anon*
  %209 = getelementptr inbounds %struct.anon, %struct.anon* %208, i32 0, i32 0
  %210 = load i8, i8* %209, align 1
  %211 = zext i8 %210 to i32
  %212 = icmp eq i32 %211, 12
  br i1 %212, label %213, label %221

; <label>:213                                     ; preds = %204, %184
  %214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %215 = bitcast %union.rec* %214 to %struct.word_type*
  %216 = getelementptr inbounds %struct.word_type, %struct.word_type* %215, i32 0, i32 1
  %217 = bitcast %union.FIRST_UNION* %216 to %struct.anon*
  %218 = getelementptr inbounds %struct.anon, %struct.anon* %217, i32 0, i32 1
  %219 = load i8, i8* %218, align 1
  %220 = zext i8 %219 to i32
  br label %232

; <label>:221                                     ; preds = %204
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 1
  %225 = bitcast %union.FIRST_UNION* %224 to %struct.anon*
  %226 = getelementptr inbounds %struct.anon, %struct.anon* %225, i32 0, i32 0
  %227 = load i8, i8* %226, align 1
  %228 = zext i8 %227 to i64
  %229 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %228
  %230 = load i8, i8* %229, align 1
  %231 = zext i8 %230 to i32
  br label %232

; <label>:232                                     ; preds = %221, %213
  %233 = phi i32 [ %220, %213 ], [ %231, %221 ]
  store i32 %233, i32* @zz_size, align 4
  %234 = load i32, i32* @zz_size, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %235
  %237 = load %union.rec*, %union.rec** %236, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 0
  %241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %240, i32 0, i64 0
  %242 = getelementptr inbounds %struct.LIST, %struct.LIST* %241, i32 0, i32 0
  store %union.rec* %237, %union.rec** %242, align 8
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %244 = load i32, i32* @zz_size, align 4
  %245 = sext i32 %244 to i64
  %246 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %245
  store %union.rec* %243, %union.rec** %246, align 8
  %247 = call %union.rec* @LexGetToken()
  store %union.rec* %247, %union.rec** %t, align 8
  br label %164

; <label>:248                                     ; preds = %182
  %249 = load %union.rec*, %union.rec** %t, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 1
  %252 = bitcast %union.FIRST_UNION* %251 to %struct.anon*
  %253 = getelementptr inbounds %struct.anon, %struct.anon* %252, i32 0, i32 0
  %254 = load i8, i8* %253, align 1
  %255 = zext i8 %254 to i32
  %256 = icmp ne i32 %255, 102
  br i1 %256, label %257, label %265

; <label>:257                                     ; preds = %248
  %258 = load %union.rec*, %union.rec** %t, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 1
  %261 = bitcast %union.FIRST_UNION* %260 to %struct.FILE_POS*
  %262 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 25, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.50, i32 0, i32 0), i32 2, %struct.FILE_POS* %261, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  %263 = load %union.rec*, %union.rec** %t, align 8
  %264 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* %263, %union.rec** %264, align 8
  store %union.rec* null, %union.rec** %1
  br label %449

; <label>:265                                     ; preds = %248
  %266 = load %union.rec*, %union.rec** %t, align 8
  %267 = load %union.rec*, %union.rec** %res, align 8
  call void @ReadTokenList(%union.rec* %266, %union.rec* %267)
  %268 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %268, %union.rec** @zz_hold, align 8
  %269 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %269, %union.rec** @zz_hold, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = bitcast %union.rec* %270 to %struct.word_type*
  %272 = getelementptr inbounds %struct.word_type, %struct.word_type* %271, i32 0, i32 1
  %273 = bitcast %union.FIRST_UNION* %272 to %struct.anon*
  %274 = getelementptr inbounds %struct.anon, %struct.anon* %273, i32 0, i32 0
  %275 = load i8, i8* %274, align 1
  %276 = zext i8 %275 to i32
  %277 = icmp eq i32 %276, 11
  br i1 %277, label %287, label %278

; <label>:278                                     ; preds = %265
  %279 = load %union.rec*, %union.rec** @zz_hold, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 1
  %282 = bitcast %union.FIRST_UNION* %281 to %struct.anon*
  %283 = getelementptr inbounds %struct.anon, %struct.anon* %282, i32 0, i32 0
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp eq i32 %285, 12
  br i1 %286, label %287, label %295

; <label>:287                                     ; preds = %278, %265
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 1
  %291 = bitcast %union.FIRST_UNION* %290 to %struct.anon*
  %292 = getelementptr inbounds %struct.anon, %struct.anon* %291, i32 0, i32 1
  %293 = load i8, i8* %292, align 1
  %294 = zext i8 %293 to i32
  br label %306

; <label>:295                                     ; preds = %278
  %296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 1
  %299 = bitcast %union.FIRST_UNION* %298 to %struct.anon*
  %300 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 0
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i64
  %303 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %302
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  br label %306

; <label>:306                                     ; preds = %295, %287
  %307 = phi i32 [ %294, %287 ], [ %305, %295 ]
  store i32 %307, i32* @zz_size, align 4
  %308 = load i32, i32* @zz_size, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %309
  %311 = load %union.rec*, %union.rec** %310, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 0
  %315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %314, i32 0, i64 0
  %316 = getelementptr inbounds %struct.LIST, %struct.LIST* %315, i32 0, i32 0
  store %union.rec* %311, %union.rec** %316, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %318 = load i32, i32* @zz_size, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %319
  store %union.rec* %317, %union.rec** %320, align 8
  %321 = load %union.rec*, %union.rec** %res, align 8
  %322 = bitcast %union.rec* %321 to %struct.symbol_type*
  %323 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %322, i32 0, i32 4
  %324 = load %union.rec*, %union.rec** %323, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 0
  %327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %326, i32 0, i64 1
  %328 = getelementptr inbounds %struct.LIST, %struct.LIST* %327, i32 0, i32 0
  %329 = load %union.rec*, %union.rec** %328, align 8
  store %union.rec* %329, %union.rec** %t, align 8
  %330 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %330, %union.rec** @zz_hold, align 8
  %331 = load %union.rec*, %union.rec** @zz_hold, align 8
  %332 = bitcast %union.rec* %331 to %struct.word_type*
  %333 = getelementptr inbounds %struct.word_type, %struct.word_type* %332, i32 0, i32 0
  %334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %333, i32 0, i64 1
  %335 = getelementptr inbounds %struct.LIST, %struct.LIST* %334, i32 0, i32 1
  %336 = load %union.rec*, %union.rec** %335, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = icmp eq %union.rec* %336, %337
  br i1 %338, label %339, label %340

; <label>:339                                     ; preds = %306
  br label %381

; <label>:340                                     ; preds = %306
  %341 = load %union.rec*, %union.rec** @zz_hold, align 8
  %342 = bitcast %union.rec* %341 to %struct.word_type*
  %343 = getelementptr inbounds %struct.word_type, %struct.word_type* %342, i32 0, i32 0
  %344 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %343, i32 0, i64 1
  %345 = getelementptr inbounds %struct.LIST, %struct.LIST* %344, i32 0, i32 1
  %346 = load %union.rec*, %union.rec** %345, align 8
  store %union.rec* %346, %union.rec** @zz_res, align 8
  %347 = load %union.rec*, %union.rec** @zz_hold, align 8
  %348 = bitcast %union.rec* %347 to %struct.word_type*
  %349 = getelementptr inbounds %struct.word_type, %struct.word_type* %348, i32 0, i32 0
  %350 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %349, i32 0, i64 1
  %351 = getelementptr inbounds %struct.LIST, %struct.LIST* %350, i32 0, i32 0
  %352 = load %union.rec*, %union.rec** %351, align 8
  %353 = load %union.rec*, %union.rec** @zz_res, align 8
  %354 = bitcast %union.rec* %353 to %struct.word_type*
  %355 = getelementptr inbounds %struct.word_type, %struct.word_type* %354, i32 0, i32 0
  %356 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %355, i32 0, i64 1
  %357 = getelementptr inbounds %struct.LIST, %struct.LIST* %356, i32 0, i32 0
  store %union.rec* %352, %union.rec** %357, align 8
  %358 = load %union.rec*, %union.rec** @zz_res, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 0
  %362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %361, i32 0, i64 1
  %363 = getelementptr inbounds %struct.LIST, %struct.LIST* %362, i32 0, i32 0
  %364 = load %union.rec*, %union.rec** %363, align 8
  %365 = bitcast %union.rec* %364 to %struct.word_type*
  %366 = getelementptr inbounds %struct.word_type, %struct.word_type* %365, i32 0, i32 0
  %367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %366, i32 0, i64 1
  %368 = getelementptr inbounds %struct.LIST, %struct.LIST* %367, i32 0, i32 1
  store %union.rec* %358, %union.rec** %368, align 8
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %371 = bitcast %union.rec* %370 to %struct.word_type*
  %372 = getelementptr inbounds %struct.word_type, %struct.word_type* %371, i32 0, i32 0
  %373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %372, i32 0, i64 1
  %374 = getelementptr inbounds %struct.LIST, %struct.LIST* %373, i32 0, i32 1
  store %union.rec* %369, %union.rec** %374, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %376 = bitcast %union.rec* %375 to %struct.word_type*
  %377 = getelementptr inbounds %struct.word_type, %struct.word_type* %376, i32 0, i32 0
  %378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %377, i32 0, i64 1
  %379 = getelementptr inbounds %struct.LIST, %struct.LIST* %378, i32 0, i32 0
  store %union.rec* %369, %union.rec** %379, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %381

; <label>:381                                     ; preds = %340, %339
  %382 = phi %union.rec* [ null, %339 ], [ %380, %340 ]
  %383 = load %union.rec*, %union.rec** %res, align 8
  %384 = bitcast %union.rec* %383 to %struct.symbol_type*
  %385 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %384, i32 0, i32 4
  store %union.rec* %382, %union.rec** %385, align 8
  %386 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %386, %union.rec** @zz_hold, align 8
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %387, %union.rec** @zz_hold, align 8
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 1
  %391 = bitcast %union.FIRST_UNION* %390 to %struct.anon*
  %392 = getelementptr inbounds %struct.anon, %struct.anon* %391, i32 0, i32 0
  %393 = load i8, i8* %392, align 1
  %394 = zext i8 %393 to i32
  %395 = icmp eq i32 %394, 11
  br i1 %395, label %405, label %396

; <label>:396                                     ; preds = %381
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %398 = bitcast %union.rec* %397 to %struct.word_type*
  %399 = getelementptr inbounds %struct.word_type, %struct.word_type* %398, i32 0, i32 1
  %400 = bitcast %union.FIRST_UNION* %399 to %struct.anon*
  %401 = getelementptr inbounds %struct.anon, %struct.anon* %400, i32 0, i32 0
  %402 = load i8, i8* %401, align 1
  %403 = zext i8 %402 to i32
  %404 = icmp eq i32 %403, 12
  br i1 %404, label %405, label %413

; <label>:405                                     ; preds = %396, %381
  %406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 1
  %409 = bitcast %union.FIRST_UNION* %408 to %struct.anon*
  %410 = getelementptr inbounds %struct.anon, %struct.anon* %409, i32 0, i32 1
  %411 = load i8, i8* %410, align 1
  %412 = zext i8 %411 to i32
  br label %424

; <label>:413                                     ; preds = %396
  %414 = load %union.rec*, %union.rec** @zz_hold, align 8
  %415 = bitcast %union.rec* %414 to %struct.word_type*
  %416 = getelementptr inbounds %struct.word_type, %struct.word_type* %415, i32 0, i32 1
  %417 = bitcast %union.FIRST_UNION* %416 to %struct.anon*
  %418 = getelementptr inbounds %struct.anon, %struct.anon* %417, i32 0, i32 0
  %419 = load i8, i8* %418, align 1
  %420 = zext i8 %419 to i64
  %421 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %420
  %422 = load i8, i8* %421, align 1
  %423 = zext i8 %422 to i32
  br label %424

; <label>:424                                     ; preds = %413, %405
  %425 = phi i32 [ %412, %405 ], [ %423, %413 ]
  store i32 %425, i32* @zz_size, align 4
  %426 = load i32, i32* @zz_size, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %427
  %429 = load %union.rec*, %union.rec** %428, align 8
  %430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 0
  %433 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %432, i32 0, i64 0
  %434 = getelementptr inbounds %struct.LIST, %struct.LIST* %433, i32 0, i32 0
  store %union.rec* %429, %union.rec** %434, align 8
  %435 = load %union.rec*, %union.rec** @zz_hold, align 8
  %436 = load i32, i32* @zz_size, align 4
  %437 = sext i32 %436 to i64
  %438 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %437
  store %union.rec* %435, %union.rec** %438, align 8
  %439 = load %union.rec*, %union.rec** %res, align 8
  %440 = bitcast %union.rec* %439 to %struct.word_type*
  %441 = getelementptr inbounds %struct.word_type, %struct.word_type* %440, i32 0, i32 2
  %442 = bitcast %union.SECOND_UNION* %441 to %struct.anon.5*
  %443 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %442, i32 0, i32 1
  %444 = bitcast [3 x i8]* %443 to i24*
  %445 = load i24, i24* %444, align 1
  %446 = and i24 %445, -1025
  store i24 %446, i24* %444, align 1
  %447 = load %union.rec**, %union.rec*** %2, align 8
  store %union.rec* null, %union.rec** %447, align 8
  %448 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %448, %union.rec** %1
  br label %449

; <label>:449                                     ; preds = %424, %257, %77
  %450 = load %union.rec*, %union.rec** %1
  ret %union.rec* %450
}

declare %union.rec* @InsertSym(i8*, i8 zeroext, %struct.FILE_POS*, i8 zeroext, i32, i32, i32, %union.rec*, %union.rec*) #1

declare void @InsertAlternativeName(i8*, %union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

declare void @BodyParAllowed() #1

declare %union.rec* @SearchSym(i8*, i32) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare void @PopScope() #1

declare void @LanguageDefine(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define internal void @ReadTokenList(%union.rec* %token, %union.rec* %res) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %xsym = alloca %union.rec*, align 8
  %new_par = alloca %union.rec*, align 8
  %imps = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %scope_count = alloca i32, align 4
  %i = alloca i32, align 4
  store %union.rec* %token, %union.rec** %1, align 8
  store %union.rec* %res, %union.rec** %2, align 8
  %3 = call %union.rec* @LexGetToken()
  store %union.rec* %3, %union.rec** %t, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.symbol_type*
  %6 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %5, i32 0, i32 4
  %7 = load %union.rec*, %union.rec** %6, align 8
  store %union.rec* %7, %union.rec** @zz_res, align 8
  %8 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %8, %union.rec** @zz_hold, align 8
  %9 = load %union.rec*, %union.rec** @zz_hold, align 8
  %10 = icmp eq %union.rec* %9, null
  br i1 %10, label %11, label %13

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %61

; <label>:13                                      ; preds = %0
  %14 = load %union.rec*, %union.rec** @zz_res, align 8
  %15 = icmp eq %union.rec* %14, null
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %13
  %17 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %59

; <label>:18                                      ; preds = %13
  %19 = load %union.rec*, %union.rec** @zz_hold, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 1
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 0
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** @zz_tmp, align 8
  %25 = load %union.rec*, %union.rec** @zz_res, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 1
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load %union.rec*, %union.rec** @zz_hold, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 0
  %34 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %33, i32 0, i64 1
  %35 = getelementptr inbounds %struct.LIST, %struct.LIST* %34, i32 0, i32 0
  store %union.rec* %30, %union.rec** %35, align 8
  %36 = load %union.rec*, %union.rec** @zz_hold, align 8
  %37 = load %union.rec*, %union.rec** @zz_res, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 0
  %40 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %39, i32 0, i64 1
  %41 = getelementptr inbounds %struct.LIST, %struct.LIST* %40, i32 0, i32 0
  %42 = load %union.rec*, %union.rec** %41, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 0
  %45 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %44, i32 0, i64 1
  %46 = getelementptr inbounds %struct.LIST, %struct.LIST* %45, i32 0, i32 1
  store %union.rec* %36, %union.rec** %46, align 8
  %47 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %48 = load %union.rec*, %union.rec** @zz_res, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 0
  %51 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %50, i32 0, i64 1
  %52 = getelementptr inbounds %struct.LIST, %struct.LIST* %51, i32 0, i32 0
  store %union.rec* %47, %union.rec** %52, align 8
  %53 = load %union.rec*, %union.rec** @zz_res, align 8
  %54 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  store %union.rec* %53, %union.rec** %58, align 8
  br label %59

; <label>:59                                      ; preds = %18, %16
  %60 = phi %union.rec* [ %17, %16 ], [ %53, %18 ]
  br label %61

; <label>:61                                      ; preds = %59, %11
  %62 = phi %union.rec* [ %12, %11 ], [ %60, %59 ]
  %63 = load %union.rec*, %union.rec** %2, align 8
  %64 = bitcast %union.rec* %63 to %struct.symbol_type*
  %65 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %64, i32 0, i32 4
  store %union.rec* %62, %union.rec** %65, align 8
  br label %66

; <label>:66                                      ; preds = %1259, %61
  %67 = load %union.rec*, %union.rec** %t, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 1
  %70 = bitcast %union.FIRST_UNION* %69 to %struct.anon*
  %71 = getelementptr inbounds %struct.anon, %struct.anon* %70, i32 0, i32 0
  %72 = load i8, i8* %71, align 1
  %73 = zext i8 %72 to i32
  switch i32 %73, label %1245 [
    i32 11, label %74
    i32 12, label %156
    i32 19, label %220
    i32 18, label %220
    i32 17, label %220
    i32 6, label %220
    i32 7, label %220
    i32 5, label %220
    i32 4, label %220
    i32 20, label %220
    i32 21, label %220
    i32 22, label %220
    i32 23, label %220
    i32 24, label %220
    i32 25, label %220
    i32 26, label %220
    i32 27, label %220
    i32 28, label %220
    i32 29, label %220
    i32 30, label %220
    i32 31, label %220
    i32 32, label %220
    i32 33, label %220
    i32 34, label %220
    i32 35, label %220
    i32 36, label %220
    i32 37, label %220
    i32 38, label %220
    i32 39, label %220
    i32 40, label %220
    i32 41, label %220
    i32 44, label %220
    i32 42, label %220
    i32 43, label %220
    i32 45, label %220
    i32 46, label %220
    i32 47, label %220
    i32 48, label %220
    i32 49, label %220
    i32 50, label %220
    i32 51, label %220
    i32 54, label %220
    i32 53, label %220
    i32 52, label %220
    i32 55, label %220
    i32 56, label %220
    i32 58, label %220
    i32 59, label %220
    i32 60, label %220
    i32 61, label %220
    i32 62, label %220
    i32 63, label %220
    i32 64, label %220
    i32 65, label %220
    i32 66, label %220
    i32 67, label %220
    i32 68, label %220
    i32 69, label %220
    i32 70, label %220
    i32 71, label %220
    i32 72, label %220
    i32 73, label %220
    i32 74, label %220
    i32 75, label %220
    i32 76, label %220
    i32 77, label %220
    i32 78, label %220
    i32 79, label %220
    i32 80, label %220
    i32 93, label %220
    i32 94, label %220
    i32 95, label %220
    i32 96, label %220
    i32 97, label %220
    i32 98, label %220
    i32 99, label %220
    i32 107, label %220
    i32 90, label %284
    i32 89, label %284
    i32 82, label %284
    i32 106, label %284
    i32 116, label %284
    i32 117, label %284
    i32 114, label %284
    i32 115, label %284
    i32 92, label %284
    i32 102, label %358
    i32 111, label %424
    i32 104, label %430
    i32 103, label %504
    i32 105, label %520
    i32 2, label %670
  ]

; <label>:74                                      ; preds = %66
  %75 = load %union.rec*, %union.rec** %t, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 4
  %78 = getelementptr inbounds [4 x i8], [4 x i8]* %77, i32 0, i64 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp eq i32 %80, 64
  br i1 %81, label %82, label %92

; <label>:82                                      ; preds = %74
  %83 = load %union.rec*, %union.rec** %t, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 1
  %86 = bitcast %union.FIRST_UNION* %85 to %struct.FILE_POS*
  %87 = load %union.rec*, %union.rec** %t, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 4
  %90 = getelementptr inbounds [4 x i8], [4 x i8]* %89, i32 0, i32 0
  %91 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i32 2, %struct.FILE_POS* %86, i8* %90)
  br label %92

; <label>:92                                      ; preds = %82, %74
  %93 = call %union.rec* @LexGetToken()
  store %union.rec* %93, %union.rec** %t, align 8
  %94 = load %union.rec*, %union.rec** %2, align 8
  %95 = bitcast %union.rec* %94 to %struct.symbol_type*
  %96 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %95, i32 0, i32 4
  %97 = load %union.rec*, %union.rec** %96, align 8
  store %union.rec* %97, %union.rec** @zz_res, align 8
  %98 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %98, %union.rec** @zz_hold, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = icmp eq %union.rec* %99, null
  br i1 %100, label %101, label %103

; <label>:101                                     ; preds = %92
  %102 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %151

; <label>:103                                     ; preds = %92
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %105 = icmp eq %union.rec* %104, null
  br i1 %105, label %106, label %108

; <label>:106                                     ; preds = %103
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %149

; <label>:108                                     ; preds = %103
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %111, i32 0, i64 1
  %113 = getelementptr inbounds %struct.LIST, %struct.LIST* %112, i32 0, i32 0
  %114 = load %union.rec*, %union.rec** %113, align 8
  store %union.rec* %114, %union.rec** @zz_tmp, align 8
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  %121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 1
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 0
  store %union.rec* %120, %union.rec** %125, align 8
  %126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %127 = load %union.rec*, %union.rec** @zz_res, align 8
  %128 = bitcast %union.rec* %127 to %struct.word_type*
  %129 = getelementptr inbounds %struct.word_type, %struct.word_type* %128, i32 0, i32 0
  %130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %129, i32 0, i64 1
  %131 = getelementptr inbounds %struct.LIST, %struct.LIST* %130, i32 0, i32 0
  %132 = load %union.rec*, %union.rec** %131, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 0
  %135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %134, i32 0, i64 1
  %136 = getelementptr inbounds %struct.LIST, %struct.LIST* %135, i32 0, i32 1
  store %union.rec* %126, %union.rec** %136, align 8
  %137 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %138 = load %union.rec*, %union.rec** @zz_res, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 1
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 0
  store %union.rec* %137, %union.rec** %142, align 8
  %143 = load %union.rec*, %union.rec** @zz_res, align 8
  %144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 0
  %147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %146, i32 0, i64 1
  %148 = getelementptr inbounds %struct.LIST, %struct.LIST* %147, i32 0, i32 1
  store %union.rec* %143, %union.rec** %148, align 8
  br label %149

; <label>:149                                     ; preds = %108, %106
  %150 = phi %union.rec* [ %107, %106 ], [ %143, %108 ]
  br label %151

; <label>:151                                     ; preds = %149, %101
  %152 = phi %union.rec* [ %102, %101 ], [ %150, %149 ]
  %153 = load %union.rec*, %union.rec** %2, align 8
  %154 = bitcast %union.rec* %153 to %struct.symbol_type*
  %155 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %154, i32 0, i32 4
  store %union.rec* %152, %union.rec** %155, align 8
  br label %1259

; <label>:156                                     ; preds = %66
  %157 = call %union.rec* @LexGetToken()
  store %union.rec* %157, %union.rec** %t, align 8
  %158 = load %union.rec*, %union.rec** %2, align 8
  %159 = bitcast %union.rec* %158 to %struct.symbol_type*
  %160 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %159, i32 0, i32 4
  %161 = load %union.rec*, %union.rec** %160, align 8
  store %union.rec* %161, %union.rec** @zz_res, align 8
  %162 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %162, %union.rec** @zz_hold, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = icmp eq %union.rec* %163, null
  br i1 %164, label %165, label %167

; <label>:165                                     ; preds = %156
  %166 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %215

; <label>:167                                     ; preds = %156
  %168 = load %union.rec*, %union.rec** @zz_res, align 8
  %169 = icmp eq %union.rec* %168, null
  br i1 %169, label %170, label %172

; <label>:170                                     ; preds = %167
  %171 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %213

; <label>:172                                     ; preds = %167
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %175, i32 0, i64 1
  %177 = getelementptr inbounds %struct.LIST, %struct.LIST* %176, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %177, align 8
  store %union.rec* %178, %union.rec** @zz_tmp, align 8
  %179 = load %union.rec*, %union.rec** @zz_res, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 1
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 0
  %184 = load %union.rec*, %union.rec** %183, align 8
  %185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 0
  %188 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %187, i32 0, i64 1
  %189 = getelementptr inbounds %struct.LIST, %struct.LIST* %188, i32 0, i32 0
  store %union.rec* %184, %union.rec** %189, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = load %union.rec*, %union.rec** @zz_res, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 0
  %194 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %193, i32 0, i64 1
  %195 = getelementptr inbounds %struct.LIST, %struct.LIST* %194, i32 0, i32 0
  %196 = load %union.rec*, %union.rec** %195, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 0
  %199 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %198, i32 0, i64 1
  %200 = getelementptr inbounds %struct.LIST, %struct.LIST* %199, i32 0, i32 1
  store %union.rec* %190, %union.rec** %200, align 8
  %201 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %202 = load %union.rec*, %union.rec** @zz_res, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 1
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 0
  store %union.rec* %201, %union.rec** %206, align 8
  %207 = load %union.rec*, %union.rec** @zz_res, align 8
  %208 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 0
  %211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %210, i32 0, i64 1
  %212 = getelementptr inbounds %struct.LIST, %struct.LIST* %211, i32 0, i32 1
  store %union.rec* %207, %union.rec** %212, align 8
  br label %213

; <label>:213                                     ; preds = %172, %170
  %214 = phi %union.rec* [ %171, %170 ], [ %207, %172 ]
  br label %215

; <label>:215                                     ; preds = %213, %165
  %216 = phi %union.rec* [ %166, %165 ], [ %214, %213 ]
  %217 = load %union.rec*, %union.rec** %2, align 8
  %218 = bitcast %union.rec* %217 to %struct.symbol_type*
  %219 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %218, i32 0, i32 4
  store %union.rec* %216, %union.rec** %219, align 8
  br label %1259

; <label>:220                                     ; preds = %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66, %66
  %221 = call %union.rec* @LexGetToken()
  store %union.rec* %221, %union.rec** %t, align 8
  %222 = load %union.rec*, %union.rec** %2, align 8
  %223 = bitcast %union.rec* %222 to %struct.symbol_type*
  %224 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %223, i32 0, i32 4
  %225 = load %union.rec*, %union.rec** %224, align 8
  store %union.rec* %225, %union.rec** @zz_res, align 8
  %226 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %226, %union.rec** @zz_hold, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %228 = icmp eq %union.rec* %227, null
  br i1 %228, label %229, label %231

; <label>:229                                     ; preds = %220
  %230 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %279

; <label>:231                                     ; preds = %220
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  %233 = icmp eq %union.rec* %232, null
  br i1 %233, label %234, label %236

; <label>:234                                     ; preds = %231
  %235 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %277

; <label>:236                                     ; preds = %231
  %237 = load %union.rec*, %union.rec** @zz_hold, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 0
  %240 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %239, i32 0, i64 1
  %241 = getelementptr inbounds %struct.LIST, %struct.LIST* %240, i32 0, i32 0
  %242 = load %union.rec*, %union.rec** %241, align 8
  store %union.rec* %242, %union.rec** @zz_tmp, align 8
  %243 = load %union.rec*, %union.rec** @zz_res, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 0
  %246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %245, i32 0, i64 1
  %247 = getelementptr inbounds %struct.LIST, %struct.LIST* %246, i32 0, i32 0
  %248 = load %union.rec*, %union.rec** %247, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 0
  %252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %251, i32 0, i64 1
  %253 = getelementptr inbounds %struct.LIST, %struct.LIST* %252, i32 0, i32 0
  store %union.rec* %248, %union.rec** %253, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_res, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 1
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 0
  %260 = load %union.rec*, %union.rec** %259, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 0
  %263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %262, i32 0, i64 1
  %264 = getelementptr inbounds %struct.LIST, %struct.LIST* %263, i32 0, i32 1
  store %union.rec* %254, %union.rec** %264, align 8
  %265 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %266 = load %union.rec*, %union.rec** @zz_res, align 8
  %267 = bitcast %union.rec* %266 to %struct.word_type*
  %268 = getelementptr inbounds %struct.word_type, %struct.word_type* %267, i32 0, i32 0
  %269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %268, i32 0, i64 1
  %270 = getelementptr inbounds %struct.LIST, %struct.LIST* %269, i32 0, i32 0
  store %union.rec* %265, %union.rec** %270, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  %272 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 0
  %275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %274, i32 0, i64 1
  %276 = getelementptr inbounds %struct.LIST, %struct.LIST* %275, i32 0, i32 1
  store %union.rec* %271, %union.rec** %276, align 8
  br label %277

; <label>:277                                     ; preds = %236, %234
  %278 = phi %union.rec* [ %235, %234 ], [ %271, %236 ]
  br label %279

; <label>:279                                     ; preds = %277, %229
  %280 = phi %union.rec* [ %230, %229 ], [ %278, %277 ]
  %281 = load %union.rec*, %union.rec** %2, align 8
  %282 = bitcast %union.rec* %281 to %struct.symbol_type*
  %283 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %282, i32 0, i32 4
  store %union.rec* %280, %union.rec** %283, align 8
  br label %1259

; <label>:284                                     ; preds = %66, %66, %66, %66, %66, %66, %66, %66, %66
  %285 = load %union.rec*, %union.rec** %t, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 1
  %288 = bitcast %union.FIRST_UNION* %287 to %struct.FILE_POS*
  %289 = load %union.rec*, %union.rec** %t, align 8
  %290 = bitcast %union.rec* %289 to %struct.closure_type*
  %291 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %290, i32 0, i32 5
  %292 = load %union.rec*, %union.rec** %291, align 8
  %293 = call i8* @SymName(%union.rec* %292)
  %294 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 12, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.52, i32 0, i32 0), i32 2, %struct.FILE_POS* %288, i8* %293)
  %295 = call %union.rec* @LexGetToken()
  store %union.rec* %295, %union.rec** %t, align 8
  %296 = load %union.rec*, %union.rec** %2, align 8
  %297 = bitcast %union.rec* %296 to %struct.symbol_type*
  %298 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %297, i32 0, i32 4
  %299 = load %union.rec*, %union.rec** %298, align 8
  store %union.rec* %299, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %300, %union.rec** @zz_hold, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %302 = icmp eq %union.rec* %301, null
  br i1 %302, label %303, label %305

; <label>:303                                     ; preds = %284
  %304 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %353

; <label>:305                                     ; preds = %284
  %306 = load %union.rec*, %union.rec** @zz_res, align 8
  %307 = icmp eq %union.rec* %306, null
  br i1 %307, label %308, label %310

; <label>:308                                     ; preds = %305
  %309 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %351

; <label>:310                                     ; preds = %305
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 0
  %314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %313, i32 0, i64 1
  %315 = getelementptr inbounds %struct.LIST, %struct.LIST* %314, i32 0, i32 0
  %316 = load %union.rec*, %union.rec** %315, align 8
  store %union.rec* %316, %union.rec** @zz_tmp, align 8
  %317 = load %union.rec*, %union.rec** @zz_res, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 1
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %321, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 1
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 0
  store %union.rec* %322, %union.rec** %327, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = load %union.rec*, %union.rec** @zz_res, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 1
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 0
  %334 = load %union.rec*, %union.rec** %333, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 0
  %337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %336, i32 0, i64 1
  %338 = getelementptr inbounds %struct.LIST, %struct.LIST* %337, i32 0, i32 1
  store %union.rec* %328, %union.rec** %338, align 8
  %339 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %340 = load %union.rec*, %union.rec** @zz_res, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 1
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 0
  store %union.rec* %339, %union.rec** %344, align 8
  %345 = load %union.rec*, %union.rec** @zz_res, align 8
  %346 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 1
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 1
  store %union.rec* %345, %union.rec** %350, align 8
  br label %351

; <label>:351                                     ; preds = %310, %308
  %352 = phi %union.rec* [ %309, %308 ], [ %345, %310 ]
  br label %353

; <label>:353                                     ; preds = %351, %303
  %354 = phi %union.rec* [ %304, %303 ], [ %352, %351 ]
  %355 = load %union.rec*, %union.rec** %2, align 8
  %356 = bitcast %union.rec* %355 to %struct.symbol_type*
  %357 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %356, i32 0, i32 4
  store %union.rec* %354, %union.rec** %357, align 8
  br label %1259

; <label>:358                                     ; preds = %66
  %359 = load %union.rec*, %union.rec** %t, align 8
  %360 = load %union.rec*, %union.rec** %2, align 8
  call void @ReadTokenList(%union.rec* %359, %union.rec* %360)
  %361 = call %union.rec* @LexGetToken()
  store %union.rec* %361, %union.rec** %t, align 8
  %362 = load %union.rec*, %union.rec** %2, align 8
  %363 = bitcast %union.rec* %362 to %struct.symbol_type*
  %364 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %363, i32 0, i32 4
  %365 = load %union.rec*, %union.rec** %364, align 8
  store %union.rec* %365, %union.rec** @zz_res, align 8
  %366 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %366, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = icmp eq %union.rec* %367, null
  br i1 %368, label %369, label %371

; <label>:369                                     ; preds = %358
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %419

; <label>:371                                     ; preds = %358
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %373 = icmp eq %union.rec* %372, null
  br i1 %373, label %374, label %376

; <label>:374                                     ; preds = %371
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %417

; <label>:376                                     ; preds = %371
  %377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 0
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 1
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %381, align 8
  store %union.rec* %382, %union.rec** @zz_tmp, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 0
  %386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %385, i32 0, i64 1
  %387 = getelementptr inbounds %struct.LIST, %struct.LIST* %386, i32 0, i32 0
  %388 = load %union.rec*, %union.rec** %387, align 8
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %390 = bitcast %union.rec* %389 to %struct.word_type*
  %391 = getelementptr inbounds %struct.word_type, %struct.word_type* %390, i32 0, i32 0
  %392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %391, i32 0, i64 1
  %393 = getelementptr inbounds %struct.LIST, %struct.LIST* %392, i32 0, i32 0
  store %union.rec* %388, %union.rec** %393, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 1
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 0
  %400 = load %union.rec*, %union.rec** %399, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 1
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  store %union.rec* %394, %union.rec** %404, align 8
  %405 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %406 = load %union.rec*, %union.rec** @zz_res, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 0
  %409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %408, i32 0, i64 1
  %410 = getelementptr inbounds %struct.LIST, %struct.LIST* %409, i32 0, i32 0
  store %union.rec* %405, %union.rec** %410, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 0
  %415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %414, i32 0, i64 1
  %416 = getelementptr inbounds %struct.LIST, %struct.LIST* %415, i32 0, i32 1
  store %union.rec* %411, %union.rec** %416, align 8
  br label %417

; <label>:417                                     ; preds = %376, %374
  %418 = phi %union.rec* [ %375, %374 ], [ %411, %376 ]
  br label %419

; <label>:419                                     ; preds = %417, %369
  %420 = phi %union.rec* [ %370, %369 ], [ %418, %417 ]
  %421 = load %union.rec*, %union.rec** %2, align 8
  %422 = bitcast %union.rec* %421 to %struct.symbol_type*
  %423 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %422, i32 0, i32 4
  store %union.rec* %420, %union.rec** %423, align 8
  br label %1259

; <label>:424                                     ; preds = %66
  %425 = load %union.rec*, %union.rec** %t, align 8
  %426 = bitcast %union.rec* %425 to %struct.word_type*
  %427 = getelementptr inbounds %struct.word_type, %struct.word_type* %426, i32 0, i32 1
  %428 = bitcast %union.FIRST_UNION* %427 to %struct.FILE_POS*
  %429 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 13, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.53, i32 0, i32 0), i32 1, %struct.FILE_POS* %428)
  br label %1259

; <label>:430                                     ; preds = %66
  %431 = load %union.rec*, %union.rec** %t, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 1
  %434 = bitcast %union.FIRST_UNION* %433 to %struct.FILE_POS*
  %435 = load %union.rec*, %union.rec** %t, align 8
  %436 = bitcast %union.rec* %435 to %struct.closure_type*
  %437 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %436, i32 0, i32 5
  %438 = load %union.rec*, %union.rec** %437, align 8
  %439 = call i8* @SymName(%union.rec* %438)
  %440 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 14, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.54, i32 0, i32 0), i32 2, %struct.FILE_POS* %434, i8* %439)
  %441 = call %union.rec* @LexGetToken()
  store %union.rec* %441, %union.rec** %t, align 8
  %442 = load %union.rec*, %union.rec** %2, align 8
  %443 = bitcast %union.rec* %442 to %struct.symbol_type*
  %444 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %443, i32 0, i32 4
  %445 = load %union.rec*, %union.rec** %444, align 8
  store %union.rec* %445, %union.rec** @zz_res, align 8
  %446 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %446, %union.rec** @zz_hold, align 8
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %448 = icmp eq %union.rec* %447, null
  br i1 %448, label %449, label %451

; <label>:449                                     ; preds = %430
  %450 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %499

; <label>:451                                     ; preds = %430
  %452 = load %union.rec*, %union.rec** @zz_res, align 8
  %453 = icmp eq %union.rec* %452, null
  br i1 %453, label %454, label %456

; <label>:454                                     ; preds = %451
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %497

; <label>:456                                     ; preds = %451
  %457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %458 = bitcast %union.rec* %457 to %struct.word_type*
  %459 = getelementptr inbounds %struct.word_type, %struct.word_type* %458, i32 0, i32 0
  %460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %459, i32 0, i64 1
  %461 = getelementptr inbounds %struct.LIST, %struct.LIST* %460, i32 0, i32 0
  %462 = load %union.rec*, %union.rec** %461, align 8
  store %union.rec* %462, %union.rec** @zz_tmp, align 8
  %463 = load %union.rec*, %union.rec** @zz_res, align 8
  %464 = bitcast %union.rec* %463 to %struct.word_type*
  %465 = getelementptr inbounds %struct.word_type, %struct.word_type* %464, i32 0, i32 0
  %466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %465, i32 0, i64 1
  %467 = getelementptr inbounds %struct.LIST, %struct.LIST* %466, i32 0, i32 0
  %468 = load %union.rec*, %union.rec** %467, align 8
  %469 = load %union.rec*, %union.rec** @zz_hold, align 8
  %470 = bitcast %union.rec* %469 to %struct.word_type*
  %471 = getelementptr inbounds %struct.word_type, %struct.word_type* %470, i32 0, i32 0
  %472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %471, i32 0, i64 1
  %473 = getelementptr inbounds %struct.LIST, %struct.LIST* %472, i32 0, i32 0
  store %union.rec* %468, %union.rec** %473, align 8
  %474 = load %union.rec*, %union.rec** @zz_hold, align 8
  %475 = load %union.rec*, %union.rec** @zz_res, align 8
  %476 = bitcast %union.rec* %475 to %struct.word_type*
  %477 = getelementptr inbounds %struct.word_type, %struct.word_type* %476, i32 0, i32 0
  %478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %477, i32 0, i64 1
  %479 = getelementptr inbounds %struct.LIST, %struct.LIST* %478, i32 0, i32 0
  %480 = load %union.rec*, %union.rec** %479, align 8
  %481 = bitcast %union.rec* %480 to %struct.word_type*
  %482 = getelementptr inbounds %struct.word_type, %struct.word_type* %481, i32 0, i32 0
  %483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %482, i32 0, i64 1
  %484 = getelementptr inbounds %struct.LIST, %struct.LIST* %483, i32 0, i32 1
  store %union.rec* %474, %union.rec** %484, align 8
  %485 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %486 = load %union.rec*, %union.rec** @zz_res, align 8
  %487 = bitcast %union.rec* %486 to %struct.word_type*
  %488 = getelementptr inbounds %struct.word_type, %struct.word_type* %487, i32 0, i32 0
  %489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %488, i32 0, i64 1
  %490 = getelementptr inbounds %struct.LIST, %struct.LIST* %489, i32 0, i32 0
  store %union.rec* %485, %union.rec** %490, align 8
  %491 = load %union.rec*, %union.rec** @zz_res, align 8
  %492 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %493 = bitcast %union.rec* %492 to %struct.word_type*
  %494 = getelementptr inbounds %struct.word_type, %struct.word_type* %493, i32 0, i32 0
  %495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %494, i32 0, i64 1
  %496 = getelementptr inbounds %struct.LIST, %struct.LIST* %495, i32 0, i32 1
  store %union.rec* %491, %union.rec** %496, align 8
  br label %497

; <label>:497                                     ; preds = %456, %454
  %498 = phi %union.rec* [ %455, %454 ], [ %491, %456 ]
  br label %499

; <label>:499                                     ; preds = %497, %449
  %500 = phi %union.rec* [ %450, %449 ], [ %498, %497 ]
  %501 = load %union.rec*, %union.rec** %2, align 8
  %502 = bitcast %union.rec* %501 to %struct.symbol_type*
  %503 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %502, i32 0, i32 4
  store %union.rec* %500, %union.rec** %503, align 8
  br label %1259

; <label>:504                                     ; preds = %66
  %505 = load %union.rec*, %union.rec** %1, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 1
  %508 = bitcast %union.FIRST_UNION* %507 to %struct.anon*
  %509 = getelementptr inbounds %struct.anon, %struct.anon* %508, i32 0, i32 0
  %510 = load i8, i8* %509, align 1
  %511 = zext i8 %510 to i32
  %512 = icmp ne i32 %511, 102
  br i1 %512, label %513, label %519

; <label>:513                                     ; preds = %504
  %514 = load %union.rec*, %union.rec** %t, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 1
  %517 = bitcast %union.FIRST_UNION* %516 to %struct.FILE_POS*
  %518 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 15, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %517, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  br label %519

; <label>:519                                     ; preds = %513, %504
  br label %1260

; <label>:520                                     ; preds = %66
  %521 = load %union.rec*, %union.rec** %1, align 8
  %522 = bitcast %union.rec* %521 to %struct.word_type*
  %523 = getelementptr inbounds %struct.word_type, %struct.word_type* %522, i32 0, i32 1
  %524 = bitcast %union.FIRST_UNION* %523 to %struct.anon*
  %525 = getelementptr inbounds %struct.anon, %struct.anon* %524, i32 0, i32 0
  %526 = load i8, i8* %525, align 1
  %527 = zext i8 %526 to i32
  %528 = icmp ne i32 %527, 104
  br i1 %528, label %529, label %535

; <label>:529                                     ; preds = %520
  %530 = load %union.rec*, %union.rec** %t, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 1
  %533 = bitcast %union.FIRST_UNION* %532 to %struct.FILE_POS*
  %534 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 16, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %533, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %669

; <label>:535                                     ; preds = %520
  %536 = call %union.rec* @LexGetToken()
  store %union.rec* %536, %union.rec** %t, align 8
  %537 = load %union.rec*, %union.rec** %2, align 8
  %538 = bitcast %union.rec* %537 to %struct.symbol_type*
  %539 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %538, i32 0, i32 4
  %540 = load %union.rec*, %union.rec** %539, align 8
  store %union.rec* %540, %union.rec** @zz_res, align 8
  %541 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %541, %union.rec** @zz_hold, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %543 = icmp eq %union.rec* %542, null
  br i1 %543, label %544, label %546

; <label>:544                                     ; preds = %535
  %545 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %594

; <label>:546                                     ; preds = %535
  %547 = load %union.rec*, %union.rec** @zz_res, align 8
  %548 = icmp eq %union.rec* %547, null
  br i1 %548, label %549, label %551

; <label>:549                                     ; preds = %546
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %592

; <label>:551                                     ; preds = %546
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %553 = bitcast %union.rec* %552 to %struct.word_type*
  %554 = getelementptr inbounds %struct.word_type, %struct.word_type* %553, i32 0, i32 0
  %555 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %554, i32 0, i64 1
  %556 = getelementptr inbounds %struct.LIST, %struct.LIST* %555, i32 0, i32 0
  %557 = load %union.rec*, %union.rec** %556, align 8
  store %union.rec* %557, %union.rec** @zz_tmp, align 8
  %558 = load %union.rec*, %union.rec** @zz_res, align 8
  %559 = bitcast %union.rec* %558 to %struct.word_type*
  %560 = getelementptr inbounds %struct.word_type, %struct.word_type* %559, i32 0, i32 0
  %561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %560, i32 0, i64 1
  %562 = getelementptr inbounds %struct.LIST, %struct.LIST* %561, i32 0, i32 0
  %563 = load %union.rec*, %union.rec** %562, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %565 = bitcast %union.rec* %564 to %struct.word_type*
  %566 = getelementptr inbounds %struct.word_type, %struct.word_type* %565, i32 0, i32 0
  %567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %566, i32 0, i64 1
  %568 = getelementptr inbounds %struct.LIST, %struct.LIST* %567, i32 0, i32 0
  store %union.rec* %563, %union.rec** %568, align 8
  %569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %570 = load %union.rec*, %union.rec** @zz_res, align 8
  %571 = bitcast %union.rec* %570 to %struct.word_type*
  %572 = getelementptr inbounds %struct.word_type, %struct.word_type* %571, i32 0, i32 0
  %573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %572, i32 0, i64 1
  %574 = getelementptr inbounds %struct.LIST, %struct.LIST* %573, i32 0, i32 0
  %575 = load %union.rec*, %union.rec** %574, align 8
  %576 = bitcast %union.rec* %575 to %struct.word_type*
  %577 = getelementptr inbounds %struct.word_type, %struct.word_type* %576, i32 0, i32 0
  %578 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %577, i32 0, i64 1
  %579 = getelementptr inbounds %struct.LIST, %struct.LIST* %578, i32 0, i32 1
  store %union.rec* %569, %union.rec** %579, align 8
  %580 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %581 = load %union.rec*, %union.rec** @zz_res, align 8
  %582 = bitcast %union.rec* %581 to %struct.word_type*
  %583 = getelementptr inbounds %struct.word_type, %struct.word_type* %582, i32 0, i32 0
  %584 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %583, i32 0, i64 1
  %585 = getelementptr inbounds %struct.LIST, %struct.LIST* %584, i32 0, i32 0
  store %union.rec* %580, %union.rec** %585, align 8
  %586 = load %union.rec*, %union.rec** @zz_res, align 8
  %587 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %588 = bitcast %union.rec* %587 to %struct.word_type*
  %589 = getelementptr inbounds %struct.word_type, %struct.word_type* %588, i32 0, i32 0
  %590 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %589, i32 0, i64 1
  %591 = getelementptr inbounds %struct.LIST, %struct.LIST* %590, i32 0, i32 1
  store %union.rec* %586, %union.rec** %591, align 8
  br label %592

; <label>:592                                     ; preds = %551, %549
  %593 = phi %union.rec* [ %550, %549 ], [ %586, %551 ]
  br label %594

; <label>:594                                     ; preds = %592, %544
  %595 = phi %union.rec* [ %545, %544 ], [ %593, %592 ]
  %596 = load %union.rec*, %union.rec** %2, align 8
  %597 = bitcast %union.rec* %596 to %struct.symbol_type*
  %598 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %597, i32 0, i32 4
  store %union.rec* %595, %union.rec** %598, align 8
  %599 = load %union.rec*, %union.rec** %t, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 1
  %602 = bitcast %union.FIRST_UNION* %601 to %struct.anon*
  %603 = getelementptr inbounds %struct.anon, %struct.anon* %602, i32 0, i32 0
  %604 = load i8, i8* %603, align 1
  %605 = zext i8 %604 to i32
  %606 = icmp ne i32 %605, 2
  br i1 %606, label %607, label %641

; <label>:607                                     ; preds = %594
  %608 = load %union.rec*, %union.rec** %t, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 1
  %611 = bitcast %union.FIRST_UNION* %610 to %struct.anon*
  %612 = getelementptr inbounds %struct.anon, %struct.anon* %611, i32 0, i32 0
  %613 = load i8, i8* %612, align 1
  %614 = zext i8 %613 to i32
  %615 = icmp eq i32 %614, 11
  br i1 %615, label %616, label %634

; <label>:616                                     ; preds = %607
  %617 = load %union.rec*, %union.rec** %t, align 8
  %618 = bitcast %union.rec* %617 to %struct.word_type*
  %619 = getelementptr inbounds %struct.word_type, %struct.word_type* %618, i32 0, i32 4
  %620 = getelementptr inbounds [4 x i8], [4 x i8]* %619, i32 0, i64 0
  %621 = load i8, i8* %620, align 1
  %622 = zext i8 %621 to i32
  %623 = icmp eq i32 %622, 64
  br i1 %623, label %624, label %634

; <label>:624                                     ; preds = %616
  %625 = load %union.rec*, %union.rec** %t, align 8
  %626 = bitcast %union.rec* %625 to %struct.word_type*
  %627 = getelementptr inbounds %struct.word_type, %struct.word_type* %626, i32 0, i32 1
  %628 = bitcast %union.FIRST_UNION* %627 to %struct.FILE_POS*
  %629 = load %union.rec*, %union.rec** %t, align 8
  %630 = bitcast %union.rec* %629 to %struct.word_type*
  %631 = getelementptr inbounds %struct.word_type, %struct.word_type* %630, i32 0, i32 4
  %632 = getelementptr inbounds [4 x i8], [4 x i8]* %631, i32 0, i32 0
  %633 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.51, i32 0, i32 0), i32 2, %struct.FILE_POS* %628, i8* %632)
  br label %640

; <label>:634                                     ; preds = %616, %607
  %635 = load %union.rec*, %union.rec** %t, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 1
  %638 = bitcast %union.FIRST_UNION* %637 to %struct.FILE_POS*
  %639 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 18, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.58, i32 0, i32 0), i32 2, %struct.FILE_POS* %638, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %640

; <label>:640                                     ; preds = %634, %624
  br label %668

; <label>:641                                     ; preds = %594
  %642 = load %union.rec*, %union.rec** %1, align 8
  %643 = bitcast %union.rec* %642 to %struct.closure_type*
  %644 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %643, i32 0, i32 5
  %645 = load %union.rec*, %union.rec** %644, align 8
  %646 = load %union.rec*, %union.rec** %t, align 8
  %647 = bitcast %union.rec* %646 to %struct.closure_type*
  %648 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %647, i32 0, i32 5
  %649 = load %union.rec*, %union.rec** %648, align 8
  %650 = icmp ne %union.rec* %645, %649
  br i1 %650, label %651, label %667

; <label>:651                                     ; preds = %641
  %652 = load %union.rec*, %union.rec** %t, align 8
  %653 = bitcast %union.rec* %652 to %struct.word_type*
  %654 = getelementptr inbounds %struct.word_type, %struct.word_type* %653, i32 0, i32 1
  %655 = bitcast %union.FIRST_UNION* %654 to %struct.FILE_POS*
  %656 = load %union.rec*, %union.rec** %1, align 8
  %657 = bitcast %union.rec* %656 to %struct.closure_type*
  %658 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %657, i32 0, i32 5
  %659 = load %union.rec*, %union.rec** %658, align 8
  %660 = call i8* @SymName(%union.rec* %659)
  %661 = load %union.rec*, %union.rec** %t, align 8
  %662 = bitcast %union.rec* %661 to %struct.closure_type*
  %663 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %662, i32 0, i32 5
  %664 = load %union.rec*, %union.rec** %663, align 8
  %665 = call i8* @SymName(%union.rec* %664)
  %666 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.59, i32 0, i32 0), i32 2, %struct.FILE_POS* %655, i8* %660, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.37, i32 0, i32 0), i8* %665, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.57, i32 0, i32 0))
  br label %667

; <label>:667                                     ; preds = %651, %641
  br label %668

; <label>:668                                     ; preds = %667, %640
  br label %669

; <label>:669                                     ; preds = %668, %529
  br label %1260

; <label>:670                                     ; preds = %66
  %671 = load %union.rec*, %union.rec** %t, align 8
  %672 = bitcast %union.rec* %671 to %struct.closure_type*
  %673 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %672, i32 0, i32 5
  %674 = load %union.rec*, %union.rec** %673, align 8
  store %union.rec* %674, %union.rec** %xsym, align 8
  %675 = load %union.rec*, %union.rec** %xsym, align 8
  call void @PushScope(%union.rec* %675, i32 1, i32 0)
  %676 = call %union.rec* @LexGetToken()
  store %union.rec* %676, %union.rec** %t, align 8
  %677 = load %union.rec*, %union.rec** %2, align 8
  %678 = bitcast %union.rec* %677 to %struct.symbol_type*
  %679 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %678, i32 0, i32 4
  %680 = load %union.rec*, %union.rec** %679, align 8
  store %union.rec* %680, %union.rec** @zz_res, align 8
  %681 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %681, %union.rec** @zz_hold, align 8
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %683 = icmp eq %union.rec* %682, null
  br i1 %683, label %684, label %686

; <label>:684                                     ; preds = %670
  %685 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %734

; <label>:686                                     ; preds = %670
  %687 = load %union.rec*, %union.rec** @zz_res, align 8
  %688 = icmp eq %union.rec* %687, null
  br i1 %688, label %689, label %691

; <label>:689                                     ; preds = %686
  %690 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %732

; <label>:691                                     ; preds = %686
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %693 = bitcast %union.rec* %692 to %struct.word_type*
  %694 = getelementptr inbounds %struct.word_type, %struct.word_type* %693, i32 0, i32 0
  %695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %694, i32 0, i64 1
  %696 = getelementptr inbounds %struct.LIST, %struct.LIST* %695, i32 0, i32 0
  %697 = load %union.rec*, %union.rec** %696, align 8
  store %union.rec* %697, %union.rec** @zz_tmp, align 8
  %698 = load %union.rec*, %union.rec** @zz_res, align 8
  %699 = bitcast %union.rec* %698 to %struct.word_type*
  %700 = getelementptr inbounds %struct.word_type, %struct.word_type* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %700, i32 0, i64 1
  %702 = getelementptr inbounds %struct.LIST, %struct.LIST* %701, i32 0, i32 0
  %703 = load %union.rec*, %union.rec** %702, align 8
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %705 = bitcast %union.rec* %704 to %struct.word_type*
  %706 = getelementptr inbounds %struct.word_type, %struct.word_type* %705, i32 0, i32 0
  %707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %706, i32 0, i64 1
  %708 = getelementptr inbounds %struct.LIST, %struct.LIST* %707, i32 0, i32 0
  store %union.rec* %703, %union.rec** %708, align 8
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %710 = load %union.rec*, %union.rec** @zz_res, align 8
  %711 = bitcast %union.rec* %710 to %struct.word_type*
  %712 = getelementptr inbounds %struct.word_type, %struct.word_type* %711, i32 0, i32 0
  %713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %712, i32 0, i64 1
  %714 = getelementptr inbounds %struct.LIST, %struct.LIST* %713, i32 0, i32 0
  %715 = load %union.rec*, %union.rec** %714, align 8
  %716 = bitcast %union.rec* %715 to %struct.word_type*
  %717 = getelementptr inbounds %struct.word_type, %struct.word_type* %716, i32 0, i32 0
  %718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %717, i32 0, i64 1
  %719 = getelementptr inbounds %struct.LIST, %struct.LIST* %718, i32 0, i32 1
  store %union.rec* %709, %union.rec** %719, align 8
  %720 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %721 = load %union.rec*, %union.rec** @zz_res, align 8
  %722 = bitcast %union.rec* %721 to %struct.word_type*
  %723 = getelementptr inbounds %struct.word_type, %struct.word_type* %722, i32 0, i32 0
  %724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %723, i32 0, i64 1
  %725 = getelementptr inbounds %struct.LIST, %struct.LIST* %724, i32 0, i32 0
  store %union.rec* %720, %union.rec** %725, align 8
  %726 = load %union.rec*, %union.rec** @zz_res, align 8
  %727 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %728 = bitcast %union.rec* %727 to %struct.word_type*
  %729 = getelementptr inbounds %struct.word_type, %struct.word_type* %728, i32 0, i32 0
  %730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %729, i32 0, i64 1
  %731 = getelementptr inbounds %struct.LIST, %struct.LIST* %730, i32 0, i32 1
  store %union.rec* %726, %union.rec** %731, align 8
  br label %732

; <label>:732                                     ; preds = %691, %689
  %733 = phi %union.rec* [ %690, %689 ], [ %726, %691 ]
  br label %734

; <label>:734                                     ; preds = %732, %684
  %735 = phi %union.rec* [ %685, %684 ], [ %733, %732 ]
  %736 = load %union.rec*, %union.rec** %2, align 8
  %737 = bitcast %union.rec* %736 to %struct.symbol_type*
  %738 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %737, i32 0, i32 4
  store %union.rec* %735, %union.rec** %738, align 8
  call void @PopScope()
  %739 = load %union.rec*, %union.rec** %t, align 8
  %740 = bitcast %union.rec* %739 to %struct.word_type*
  %741 = getelementptr inbounds %struct.word_type, %struct.word_type* %740, i32 0, i32 1
  %742 = bitcast %union.FIRST_UNION* %741 to %struct.anon*
  %743 = getelementptr inbounds %struct.anon, %struct.anon* %742, i32 0, i32 0
  %744 = load i8, i8* %743, align 1
  %745 = zext i8 %744 to i32
  %746 = icmp eq i32 %745, 6
  br i1 %746, label %756, label %747

; <label>:747                                     ; preds = %734
  %748 = load %union.rec*, %union.rec** %t, align 8
  %749 = bitcast %union.rec* %748 to %struct.word_type*
  %750 = getelementptr inbounds %struct.word_type, %struct.word_type* %749, i32 0, i32 1
  %751 = bitcast %union.FIRST_UNION* %750 to %struct.anon*
  %752 = getelementptr inbounds %struct.anon, %struct.anon* %751, i32 0, i32 0
  %753 = load i8, i8* %752, align 1
  %754 = zext i8 %753 to i32
  %755 = icmp eq i32 %754, 7
  br i1 %755, label %756, label %820

; <label>:756                                     ; preds = %747, %734
  %757 = call %union.rec* @LexGetToken()
  store %union.rec* %757, %union.rec** %t, align 8
  %758 = load %union.rec*, %union.rec** %2, align 8
  %759 = bitcast %union.rec* %758 to %struct.symbol_type*
  %760 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %759, i32 0, i32 4
  %761 = load %union.rec*, %union.rec** %760, align 8
  store %union.rec* %761, %union.rec** @zz_res, align 8
  %762 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %762, %union.rec** @zz_hold, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  %764 = icmp eq %union.rec* %763, null
  br i1 %764, label %765, label %767

; <label>:765                                     ; preds = %756
  %766 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %815

; <label>:767                                     ; preds = %756
  %768 = load %union.rec*, %union.rec** @zz_res, align 8
  %769 = icmp eq %union.rec* %768, null
  br i1 %769, label %770, label %772

; <label>:770                                     ; preds = %767
  %771 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %813

; <label>:772                                     ; preds = %767
  %773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 0
  %776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %775, i32 0, i64 1
  %777 = getelementptr inbounds %struct.LIST, %struct.LIST* %776, i32 0, i32 0
  %778 = load %union.rec*, %union.rec** %777, align 8
  store %union.rec* %778, %union.rec** @zz_tmp, align 8
  %779 = load %union.rec*, %union.rec** @zz_res, align 8
  %780 = bitcast %union.rec* %779 to %struct.word_type*
  %781 = getelementptr inbounds %struct.word_type, %struct.word_type* %780, i32 0, i32 0
  %782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %781, i32 0, i64 1
  %783 = getelementptr inbounds %struct.LIST, %struct.LIST* %782, i32 0, i32 0
  %784 = load %union.rec*, %union.rec** %783, align 8
  %785 = load %union.rec*, %union.rec** @zz_hold, align 8
  %786 = bitcast %union.rec* %785 to %struct.word_type*
  %787 = getelementptr inbounds %struct.word_type, %struct.word_type* %786, i32 0, i32 0
  %788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %787, i32 0, i64 1
  %789 = getelementptr inbounds %struct.LIST, %struct.LIST* %788, i32 0, i32 0
  store %union.rec* %784, %union.rec** %789, align 8
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = load %union.rec*, %union.rec** @zz_res, align 8
  %792 = bitcast %union.rec* %791 to %struct.word_type*
  %793 = getelementptr inbounds %struct.word_type, %struct.word_type* %792, i32 0, i32 0
  %794 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %793, i32 0, i64 1
  %795 = getelementptr inbounds %struct.LIST, %struct.LIST* %794, i32 0, i32 0
  %796 = load %union.rec*, %union.rec** %795, align 8
  %797 = bitcast %union.rec* %796 to %struct.word_type*
  %798 = getelementptr inbounds %struct.word_type, %struct.word_type* %797, i32 0, i32 0
  %799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %798, i32 0, i64 1
  %800 = getelementptr inbounds %struct.LIST, %struct.LIST* %799, i32 0, i32 1
  store %union.rec* %790, %union.rec** %800, align 8
  %801 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %802 = load %union.rec*, %union.rec** @zz_res, align 8
  %803 = bitcast %union.rec* %802 to %struct.word_type*
  %804 = getelementptr inbounds %struct.word_type, %struct.word_type* %803, i32 0, i32 0
  %805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %804, i32 0, i64 1
  %806 = getelementptr inbounds %struct.LIST, %struct.LIST* %805, i32 0, i32 0
  store %union.rec* %801, %union.rec** %806, align 8
  %807 = load %union.rec*, %union.rec** @zz_res, align 8
  %808 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %809 = bitcast %union.rec* %808 to %struct.word_type*
  %810 = getelementptr inbounds %struct.word_type, %struct.word_type* %809, i32 0, i32 0
  %811 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %810, i32 0, i64 1
  %812 = getelementptr inbounds %struct.LIST, %struct.LIST* %811, i32 0, i32 1
  store %union.rec* %807, %union.rec** %812, align 8
  br label %813

; <label>:813                                     ; preds = %772, %770
  %814 = phi %union.rec* [ %771, %770 ], [ %807, %772 ]
  br label %815

; <label>:815                                     ; preds = %813, %765
  %816 = phi %union.rec* [ %766, %765 ], [ %814, %813 ]
  %817 = load %union.rec*, %union.rec** %2, align 8
  %818 = bitcast %union.rec* %817 to %struct.symbol_type*
  %819 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %818, i32 0, i32 4
  store %union.rec* %816, %union.rec** %819, align 8
  br label %1259

; <label>:820                                     ; preds = %747
  br label %821

; <label>:821                                     ; preds = %1098, %820
  %822 = load %union.rec*, %union.rec** %t, align 8
  %823 = bitcast %union.rec* %822 to %struct.word_type*
  %824 = getelementptr inbounds %struct.word_type, %struct.word_type* %823, i32 0, i32 1
  %825 = bitcast %union.FIRST_UNION* %824 to %struct.anon*
  %826 = getelementptr inbounds %struct.anon, %struct.anon* %825, i32 0, i32 0
  %827 = load i8, i8* %826, align 1
  %828 = zext i8 %827 to i32
  %829 = icmp eq i32 %828, 2
  br i1 %829, label %830, label %852

; <label>:830                                     ; preds = %821
  %831 = load %union.rec*, %union.rec** %t, align 8
  %832 = bitcast %union.rec* %831 to %struct.closure_type*
  %833 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %832, i32 0, i32 5
  %834 = load %union.rec*, %union.rec** %833, align 8
  %835 = bitcast %union.rec* %834 to %struct.symbol_type*
  %836 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %835, i32 0, i32 3
  %837 = load %union.rec*, %union.rec** %836, align 8
  %838 = load %union.rec*, %union.rec** %xsym, align 8
  %839 = icmp eq %union.rec* %837, %838
  br i1 %839, label %840, label %852

; <label>:840                                     ; preds = %830
  %841 = load %union.rec*, %union.rec** %t, align 8
  %842 = bitcast %union.rec* %841 to %struct.closure_type*
  %843 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %842, i32 0, i32 5
  %844 = load %union.rec*, %union.rec** %843, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 1
  %847 = bitcast %union.FIRST_UNION* %846 to %struct.anon*
  %848 = getelementptr inbounds %struct.anon, %struct.anon* %847, i32 0, i32 0
  %849 = load i8, i8* %848, align 1
  %850 = zext i8 %849 to i32
  %851 = icmp eq i32 %850, 145
  br label %852

; <label>:852                                     ; preds = %840, %830, %821
  %853 = phi i1 [ false, %830 ], [ false, %821 ], [ %851, %840 ]
  br i1 %853, label %854, label %1103

; <label>:854                                     ; preds = %852
  %855 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %855, %union.rec** %new_par, align 8
  %856 = call %union.rec* @LexGetToken()
  store %union.rec* %856, %union.rec** %t, align 8
  %857 = load %union.rec*, %union.rec** %2, align 8
  %858 = bitcast %union.rec* %857 to %struct.symbol_type*
  %859 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %858, i32 0, i32 4
  %860 = load %union.rec*, %union.rec** %859, align 8
  store %union.rec* %860, %union.rec** @zz_res, align 8
  %861 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %861, %union.rec** @zz_hold, align 8
  %862 = load %union.rec*, %union.rec** @zz_hold, align 8
  %863 = icmp eq %union.rec* %862, null
  br i1 %863, label %864, label %866

; <label>:864                                     ; preds = %854
  %865 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %914

; <label>:866                                     ; preds = %854
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
  %916 = load %union.rec*, %union.rec** %2, align 8
  %917 = bitcast %union.rec* %916 to %struct.symbol_type*
  %918 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %917, i32 0, i32 4
  store %union.rec* %915, %union.rec** %918, align 8
  %919 = load %union.rec*, %union.rec** %t, align 8
  %920 = bitcast %union.rec* %919 to %struct.word_type*
  %921 = getelementptr inbounds %struct.word_type, %struct.word_type* %920, i32 0, i32 1
  %922 = bitcast %union.FIRST_UNION* %921 to %struct.anon*
  %923 = getelementptr inbounds %struct.anon, %struct.anon* %922, i32 0, i32 0
  %924 = load i8, i8* %923, align 1
  %925 = zext i8 %924 to i32
  %926 = icmp ne i32 %925, 102
  br i1 %926, label %927, label %963

; <label>:927                                     ; preds = %914
  %928 = load %union.rec*, %union.rec** %t, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 1
  %931 = bitcast %union.FIRST_UNION* %930 to %struct.anon*
  %932 = getelementptr inbounds %struct.anon, %struct.anon* %931, i32 0, i32 0
  %933 = load i8, i8* %932, align 1
  %934 = zext i8 %933 to i32
  %935 = icmp eq i32 %934, 103
  br i1 %935, label %936, label %952

; <label>:936                                     ; preds = %927
  %937 = load %union.rec*, %union.rec** %1, align 8
  %938 = bitcast %union.rec* %937 to %struct.word_type*
  %939 = getelementptr inbounds %struct.word_type, %struct.word_type* %938, i32 0, i32 1
  %940 = bitcast %union.FIRST_UNION* %939 to %struct.anon*
  %941 = getelementptr inbounds %struct.anon, %struct.anon* %940, i32 0, i32 0
  %942 = load i8, i8* %941, align 1
  %943 = zext i8 %942 to i32
  %944 = icmp ne i32 %943, 102
  br i1 %944, label %945, label %951

; <label>:945                                     ; preds = %936
  %946 = load %union.rec*, %union.rec** %t, align 8
  %947 = bitcast %union.rec* %946 to %struct.word_type*
  %948 = getelementptr inbounds %struct.word_type, %struct.word_type* %947, i32 0, i32 1
  %949 = bitcast %union.FIRST_UNION* %948 to %struct.FILE_POS*
  %950 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 20, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.55, i32 0, i32 0), i32 2, %struct.FILE_POS* %949, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.56, i32 0, i32 0))
  br label %951

; <label>:951                                     ; preds = %945, %936
  br label %1260

; <label>:952                                     ; preds = %927
  %953 = load %union.rec*, %union.rec** %new_par, align 8
  %954 = bitcast %union.rec* %953 to %struct.word_type*
  %955 = getelementptr inbounds %struct.word_type, %struct.word_type* %954, i32 0, i32 1
  %956 = bitcast %union.FIRST_UNION* %955 to %struct.FILE_POS*
  %957 = load %union.rec*, %union.rec** %new_par, align 8
  %958 = bitcast %union.rec* %957 to %struct.closure_type*
  %959 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %958, i32 0, i32 5
  %960 = load %union.rec*, %union.rec** %959, align 8
  %961 = call i8* @SymName(%union.rec* %960)
  %962 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 21, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.60, i32 0, i32 0), i32 2, %struct.FILE_POS* %956, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), i8* %961)
  br label %1103

; <label>:963                                     ; preds = %914
  store i32 0, i32* %scope_count, align 4
  %964 = load %union.rec*, %union.rec** %new_par, align 8
  %965 = bitcast %union.rec* %964 to %struct.closure_type*
  %966 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %965, i32 0, i32 5
  %967 = load %union.rec*, %union.rec** %966, align 8
  %968 = bitcast %union.rec* %967 to %struct.symbol_type*
  %969 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %968, i32 0, i32 9
  %970 = load %union.rec*, %union.rec** %969, align 8
  store %union.rec* %970, %union.rec** %imps, align 8
  %971 = load %union.rec*, %union.rec** %imps, align 8
  %972 = icmp ne %union.rec* %971, null
  br i1 %972, label %973, label %1023

; <label>:973                                     ; preds = %963
  %974 = load %union.rec*, %union.rec** %imps, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 0
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 1
  %979 = load %union.rec*, %union.rec** %978, align 8
  store %union.rec* %979, %union.rec** %link, align 8
  br label %980

; <label>:980                                     ; preds = %1015, %973
  %981 = load %union.rec*, %union.rec** %link, align 8
  %982 = load %union.rec*, %union.rec** %imps, align 8
  %983 = icmp ne %union.rec* %981, %982
  br i1 %983, label %984, label %1022

; <label>:984                                     ; preds = %980
  %985 = load %union.rec*, %union.rec** %link, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 1
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 0
  %990 = load %union.rec*, %union.rec** %989, align 8
  store %union.rec* %990, %union.rec** %y, align 8
  br label %991

; <label>:991                                     ; preds = %1001, %984
  %992 = load %union.rec*, %union.rec** %y, align 8
  %993 = bitcast %union.rec* %992 to %struct.word_type*
  %994 = getelementptr inbounds %struct.word_type, %struct.word_type* %993, i32 0, i32 1
  %995 = bitcast %union.FIRST_UNION* %994 to %struct.anon*
  %996 = getelementptr inbounds %struct.anon, %struct.anon* %995, i32 0, i32 0
  %997 = load i8, i8* %996, align 1
  %998 = zext i8 %997 to i32
  %999 = icmp eq i32 %998, 0
  br i1 %999, label %1000, label %1008

; <label>:1000                                    ; preds = %991
  br label %1001

; <label>:1001                                    ; preds = %1000
  %1002 = load %union.rec*, %union.rec** %y, align 8
  %1003 = bitcast %union.rec* %1002 to %struct.word_type*
  %1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %1003, i32 0, i32 0
  %1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1004, i32 0, i64 1
  %1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %1005, i32 0, i32 0
  %1007 = load %union.rec*, %union.rec** %1006, align 8
  store %union.rec* %1007, %union.rec** %y, align 8
  br label %991

; <label>:1008                                    ; preds = %991
  %1009 = load %union.rec*, %union.rec** %y, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.closure_type*
  %1011 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1010, i32 0, i32 5
  %1012 = load %union.rec*, %union.rec** %1011, align 8
  call void @PushScope(%union.rec* %1012, i32 0, i32 1)
  %1013 = load i32, i32* %scope_count, align 4
  %1014 = add nsw i32 %1013, 1
  store i32 %1014, i32* %scope_count, align 4
  br label %1015

; <label>:1015                                    ; preds = %1008
  %1016 = load %union.rec*, %union.rec** %link, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 0
  %1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1018, i32 0, i64 0
  %1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %1019, i32 0, i32 1
  %1021 = load %union.rec*, %union.rec** %1020, align 8
  store %union.rec* %1021, %union.rec** %link, align 8
  br label %980

; <label>:1022                                    ; preds = %980
  br label %1023

; <label>:1023                                    ; preds = %1022, %963
  %1024 = load %union.rec*, %union.rec** %new_par, align 8
  %1025 = bitcast %union.rec* %1024 to %struct.closure_type*
  %1026 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1025, i32 0, i32 5
  %1027 = load %union.rec*, %union.rec** %1026, align 8
  call void @PushScope(%union.rec* %1027, i32 0, i32 0)
  %1028 = load %union.rec*, %union.rec** %t, align 8
  %1029 = load %union.rec*, %union.rec** %2, align 8
  call void @ReadTokenList(%union.rec* %1028, %union.rec* %1029)
  call void @PopScope()
  store i32 0, i32* %i, align 4
  br label %1030

; <label>:1030                                    ; preds = %1035, %1023
  %1031 = load i32, i32* %i, align 4
  %1032 = load i32, i32* %scope_count, align 4
  %1033 = icmp slt i32 %1031, %1032
  br i1 %1033, label %1034, label %1038

; <label>:1034                                    ; preds = %1030
  call void @PopScope()
  br label %1035

; <label>:1035                                    ; preds = %1034
  %1036 = load i32, i32* %i, align 4
  %1037 = add nsw i32 %1036, 1
  store i32 %1037, i32* %i, align 4
  br label %1030

; <label>:1038                                    ; preds = %1030
  %1039 = load %union.rec*, %union.rec** %xsym, align 8
  call void @PushScope(%union.rec* %1039, i32 1, i32 0)
  %1040 = call %union.rec* @LexGetToken()
  store %union.rec* %1040, %union.rec** %t, align 8
  %1041 = load %union.rec*, %union.rec** %2, align 8
  %1042 = bitcast %union.rec* %1041 to %struct.symbol_type*
  %1043 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1042, i32 0, i32 4
  %1044 = load %union.rec*, %union.rec** %1043, align 8
  store %union.rec* %1044, %union.rec** @zz_res, align 8
  %1045 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1045, %union.rec** @zz_hold, align 8
  %1046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1047 = icmp eq %union.rec* %1046, null
  br i1 %1047, label %1048, label %1050

; <label>:1048                                    ; preds = %1038
  %1049 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1098

; <label>:1050                                    ; preds = %1038
  %1051 = load %union.rec*, %union.rec** @zz_res, align 8
  %1052 = icmp eq %union.rec* %1051, null
  br i1 %1052, label %1053, label %1055

; <label>:1053                                    ; preds = %1050
  %1054 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1096

; <label>:1055                                    ; preds = %1050
  %1056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1057 = bitcast %union.rec* %1056 to %struct.word_type*
  %1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %1057, i32 0, i32 0
  %1059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1058, i32 0, i64 1
  %1060 = getelementptr inbounds %struct.LIST, %struct.LIST* %1059, i32 0, i32 0
  %1061 = load %union.rec*, %union.rec** %1060, align 8
  store %union.rec* %1061, %union.rec** @zz_tmp, align 8
  %1062 = load %union.rec*, %union.rec** @zz_res, align 8
  %1063 = bitcast %union.rec* %1062 to %struct.word_type*
  %1064 = getelementptr inbounds %struct.word_type, %struct.word_type* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1064, i32 0, i64 1
  %1066 = getelementptr inbounds %struct.LIST, %struct.LIST* %1065, i32 0, i32 0
  %1067 = load %union.rec*, %union.rec** %1066, align 8
  %1068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1069 = bitcast %union.rec* %1068 to %struct.word_type*
  %1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %1069, i32 0, i32 0
  %1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1070, i32 0, i64 1
  %1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %1071, i32 0, i32 0
  store %union.rec* %1067, %union.rec** %1072, align 8
  %1073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1074 = load %union.rec*, %union.rec** @zz_res, align 8
  %1075 = bitcast %union.rec* %1074 to %struct.word_type*
  %1076 = getelementptr inbounds %struct.word_type, %struct.word_type* %1075, i32 0, i32 0
  %1077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1076, i32 0, i64 1
  %1078 = getelementptr inbounds %struct.LIST, %struct.LIST* %1077, i32 0, i32 0
  %1079 = load %union.rec*, %union.rec** %1078, align 8
  %1080 = bitcast %union.rec* %1079 to %struct.word_type*
  %1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %1080, i32 0, i32 0
  %1082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1081, i32 0, i64 1
  %1083 = getelementptr inbounds %struct.LIST, %struct.LIST* %1082, i32 0, i32 1
  store %union.rec* %1073, %union.rec** %1083, align 8
  %1084 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1085 = load %union.rec*, %union.rec** @zz_res, align 8
  %1086 = bitcast %union.rec* %1085 to %struct.word_type*
  %1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %1086, i32 0, i32 0
  %1088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1087, i32 0, i64 1
  %1089 = getelementptr inbounds %struct.LIST, %struct.LIST* %1088, i32 0, i32 0
  store %union.rec* %1084, %union.rec** %1089, align 8
  %1090 = load %union.rec*, %union.rec** @zz_res, align 8
  %1091 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1092 = bitcast %union.rec* %1091 to %struct.word_type*
  %1093 = getelementptr inbounds %struct.word_type, %struct.word_type* %1092, i32 0, i32 0
  %1094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1093, i32 0, i64 1
  %1095 = getelementptr inbounds %struct.LIST, %struct.LIST* %1094, i32 0, i32 1
  store %union.rec* %1090, %union.rec** %1095, align 8
  br label %1096

; <label>:1096                                    ; preds = %1055, %1053
  %1097 = phi %union.rec* [ %1054, %1053 ], [ %1090, %1055 ]
  br label %1098

; <label>:1098                                    ; preds = %1096, %1048
  %1099 = phi %union.rec* [ %1049, %1048 ], [ %1097, %1096 ]
  %1100 = load %union.rec*, %union.rec** %2, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.symbol_type*
  %1102 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1101, i32 0, i32 4
  store %union.rec* %1099, %union.rec** %1102, align 8
  call void @PopScope()
  br label %821

; <label>:1103                                    ; preds = %952, %852
  %1104 = load %union.rec*, %union.rec** %xsym, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 2
  %1107 = bitcast %union.SECOND_UNION* %1106 to %struct.anon.5*
  %1108 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1107, i32 0, i32 1
  %1109 = bitcast [3 x i8]* %1108 to i24*
  %1110 = load i24, i24* %1109, align 1
  %1111 = lshr i24 %1110, 8
  %1112 = and i24 %1111, 1
  %1113 = zext i24 %1112 to i32
  %1114 = icmp ne i32 %1113, 0
  br i1 %1114, label %1115, label %1244

; <label>:1115                                    ; preds = %1103
  %1116 = load %union.rec*, %union.rec** %t, align 8
  %1117 = bitcast %union.rec* %1116 to %struct.word_type*
  %1118 = getelementptr inbounds %struct.word_type, %struct.word_type* %1117, i32 0, i32 1
  %1119 = bitcast %union.FIRST_UNION* %1118 to %struct.anon*
  %1120 = getelementptr inbounds %struct.anon, %struct.anon* %1119, i32 0, i32 0
  %1121 = load i8, i8* %1120, align 1
  %1122 = zext i8 %1121 to i32
  %1123 = icmp eq i32 %1122, 102
  br i1 %1123, label %1133, label %1124

; <label>:1124                                    ; preds = %1115
  %1125 = load %union.rec*, %union.rec** %t, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 1
  %1128 = bitcast %union.FIRST_UNION* %1127 to %struct.anon*
  %1129 = getelementptr inbounds %struct.anon, %struct.anon* %1128, i32 0, i32 0
  %1130 = load i8, i8* %1129, align 1
  %1131 = zext i8 %1130 to i32
  %1132 = icmp eq i32 %1131, 104
  br i1 %1132, label %1133, label %1216

; <label>:1133                                    ; preds = %1124, %1115
  %1134 = load %union.rec*, %union.rec** %xsym, align 8
  call void @PushScope(%union.rec* %1134, i32 0, i32 1)
  %1135 = load %union.rec*, %union.rec** %xsym, align 8
  %1136 = call %union.rec* @ChildSym(%union.rec* %1135, i32 146)
  call void @PushScope(%union.rec* %1136, i32 0, i32 0)
  %1137 = load %union.rec*, %union.rec** %t, align 8
  %1138 = bitcast %union.rec* %1137 to %struct.word_type*
  %1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %1138, i32 0, i32 1
  %1140 = bitcast %union.FIRST_UNION* %1139 to %struct.anon*
  %1141 = getelementptr inbounds %struct.anon, %struct.anon* %1140, i32 0, i32 0
  %1142 = load i8, i8* %1141, align 1
  %1143 = zext i8 %1142 to i32
  %1144 = icmp eq i32 %1143, 104
  br i1 %1144, label %1145, label %1150

; <label>:1145                                    ; preds = %1133
  %1146 = load %union.rec*, %union.rec** %xsym, align 8
  %1147 = load %union.rec*, %union.rec** %t, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.closure_type*
  %1149 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1148, i32 0, i32 5
  store %union.rec* %1146, %union.rec** %1149, align 8
  br label %1150

; <label>:1150                                    ; preds = %1145, %1133
  %1151 = load %union.rec*, %union.rec** %t, align 8
  %1152 = load %union.rec*, %union.rec** %2, align 8
  call void @ReadTokenList(%union.rec* %1151, %union.rec* %1152)
  call void @PopScope()
  call void @PopScope()
  %1153 = call %union.rec* @LexGetToken()
  store %union.rec* %1153, %union.rec** %t, align 8
  %1154 = load %union.rec*, %union.rec** %2, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.symbol_type*
  %1156 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1155, i32 0, i32 4
  %1157 = load %union.rec*, %union.rec** %1156, align 8
  store %union.rec* %1157, %union.rec** @zz_res, align 8
  %1158 = load %union.rec*, %union.rec** %t, align 8
  store %union.rec* %1158, %union.rec** @zz_hold, align 8
  %1159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1160 = icmp eq %union.rec* %1159, null
  br i1 %1160, label %1161, label %1163

; <label>:1161                                    ; preds = %1150
  %1162 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1211

; <label>:1163                                    ; preds = %1150
  %1164 = load %union.rec*, %union.rec** @zz_res, align 8
  %1165 = icmp eq %union.rec* %1164, null
  br i1 %1165, label %1166, label %1168

; <label>:1166                                    ; preds = %1163
  %1167 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1209

; <label>:1168                                    ; preds = %1163
  %1169 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1170 = bitcast %union.rec* %1169 to %struct.word_type*
  %1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %1170, i32 0, i32 0
  %1172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1171, i32 0, i64 1
  %1173 = getelementptr inbounds %struct.LIST, %struct.LIST* %1172, i32 0, i32 0
  %1174 = load %union.rec*, %union.rec** %1173, align 8
  store %union.rec* %1174, %union.rec** @zz_tmp, align 8
  %1175 = load %union.rec*, %union.rec** @zz_res, align 8
  %1176 = bitcast %union.rec* %1175 to %struct.word_type*
  %1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %1176, i32 0, i32 0
  %1178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1177, i32 0, i64 1
  %1179 = getelementptr inbounds %struct.LIST, %struct.LIST* %1178, i32 0, i32 0
  %1180 = load %union.rec*, %union.rec** %1179, align 8
  %1181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1182 = bitcast %union.rec* %1181 to %struct.word_type*
  %1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %1182, i32 0, i32 0
  %1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1183, i32 0, i64 1
  %1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %1184, i32 0, i32 0
  store %union.rec* %1180, %union.rec** %1185, align 8
  %1186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1187 = load %union.rec*, %union.rec** @zz_res, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1189, i32 0, i64 1
  %1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %1190, i32 0, i32 0
  %1192 = load %union.rec*, %union.rec** %1191, align 8
  %1193 = bitcast %union.rec* %1192 to %struct.word_type*
  %1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1194, i32 0, i64 1
  %1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %1195, i32 0, i32 1
  store %union.rec* %1186, %union.rec** %1196, align 8
  %1197 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1198 = load %union.rec*, %union.rec** @zz_res, align 8
  %1199 = bitcast %union.rec* %1198 to %struct.word_type*
  %1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %1199, i32 0, i32 0
  %1201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1200, i32 0, i64 1
  %1202 = getelementptr inbounds %struct.LIST, %struct.LIST* %1201, i32 0, i32 0
  store %union.rec* %1197, %union.rec** %1202, align 8
  %1203 = load %union.rec*, %union.rec** @zz_res, align 8
  %1204 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1205 = bitcast %union.rec* %1204 to %struct.word_type*
  %1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1206, i32 0, i64 1
  %1208 = getelementptr inbounds %struct.LIST, %struct.LIST* %1207, i32 0, i32 1
  store %union.rec* %1203, %union.rec** %1208, align 8
  br label %1209

; <label>:1209                                    ; preds = %1168, %1166
  %1210 = phi %union.rec* [ %1167, %1166 ], [ %1203, %1168 ]
  br label %1211

; <label>:1211                                    ; preds = %1209, %1161
  %1212 = phi %union.rec* [ %1162, %1161 ], [ %1210, %1209 ]
  %1213 = load %union.rec*, %union.rec** %2, align 8
  %1214 = bitcast %union.rec* %1213 to %struct.symbol_type*
  %1215 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1214, i32 0, i32 4
  store %union.rec* %1212, %union.rec** %1215, align 8
  br label %1243

; <label>:1216                                    ; preds = %1124
  %1217 = load %union.rec*, %union.rec** %t, align 8
  %1218 = bitcast %union.rec* %1217 to %struct.word_type*
  %1219 = getelementptr inbounds %struct.word_type, %struct.word_type* %1218, i32 0, i32 1
  %1220 = bitcast %union.FIRST_UNION* %1219 to %struct.anon*
  %1221 = getelementptr inbounds %struct.anon, %struct.anon* %1220, i32 0, i32 0
  %1222 = load i8, i8* %1221, align 1
  %1223 = zext i8 %1222 to i32
  %1224 = icmp ne i32 %1223, 103
  br i1 %1224, label %1225, label %1242

; <label>:1225                                    ; preds = %1216
  %1226 = load %union.rec*, %union.rec** %t, align 8
  %1227 = bitcast %union.rec* %1226 to %struct.word_type*
  %1228 = getelementptr inbounds %struct.word_type, %struct.word_type* %1227, i32 0, i32 1
  %1229 = bitcast %union.FIRST_UNION* %1228 to %struct.anon*
  %1230 = getelementptr inbounds %struct.anon, %struct.anon* %1229, i32 0, i32 0
  %1231 = load i8, i8* %1230, align 1
  %1232 = zext i8 %1231 to i32
  %1233 = icmp ne i32 %1232, 105
  br i1 %1233, label %1234, label %1242

; <label>:1234                                    ; preds = %1225
  %1235 = load %union.rec*, %union.rec** %t, align 8
  %1236 = bitcast %union.rec* %1235 to %struct.word_type*
  %1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %1236, i32 0, i32 1
  %1238 = bitcast %union.FIRST_UNION* %1237 to %struct.FILE_POS*
  %1239 = load %union.rec*, %union.rec** %xsym, align 8
  %1240 = call i8* @SymName(%union.rec* %1239)
  %1241 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 22, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.61, i32 0, i32 0), i32 2, %struct.FILE_POS* %1238, i8* %1240, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0))
  br label %1242

; <label>:1242                                    ; preds = %1234, %1225, %1216
  br label %1243

; <label>:1243                                    ; preds = %1242, %1211
  br label %1244

; <label>:1244                                    ; preds = %1243, %1103
  br label %1259

; <label>:1245                                    ; preds = %66
  %1246 = load %union.rec*, %union.rec** %t, align 8
  %1247 = bitcast %union.rec* %1246 to %struct.word_type*
  %1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %1247, i32 0, i32 1
  %1249 = bitcast %union.FIRST_UNION* %1248 to %struct.FILE_POS*
  %1250 = load %union.rec*, %union.rec** %t, align 8
  %1251 = bitcast %union.rec* %1250 to %struct.word_type*
  %1252 = getelementptr inbounds %struct.word_type, %struct.word_type* %1251, i32 0, i32 1
  %1253 = bitcast %union.FIRST_UNION* %1252 to %struct.anon*
  %1254 = getelementptr inbounds %struct.anon, %struct.anon* %1253, i32 0, i32 0
  %1255 = load i8, i8* %1254, align 1
  %1256 = zext i8 %1255 to i32
  %1257 = call i8* @Image(i32 %1256)
  %1258 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 5, i32 23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.62, i32 0, i32 0), i32 0, %struct.FILE_POS* %1249, i8* %1257)
  br label %1259

; <label>:1259                                    ; preds = %1245, %1244, %815, %499, %424, %419, %353, %279, %215, %151
  br label %66

; <label>:1260                                    ; preds = %951, %669, %519
  ret void
}

declare %union.rec* @ChildSym(%union.rec*, i32) #1

declare i8* @Image(i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
