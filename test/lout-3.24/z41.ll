; ModuleID = 'z41.c'
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
%struct.anon.0 = type { i8, i8, i8 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }

@.str = private unnamed_addr constant [44 x i8] c"database index file seems to be out of date\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"syntax error in database file\00", align 1
@last_write_fnum = internal global i16 0, align 2
@last_write_fp = internal global %struct._IO_FILE* null, align 8
@.str.2 = private unnamed_addr constant [27 x i8] c"file name %s%s is too long\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"x\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"a\00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"cannot append to database file %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.7 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@.str.9 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12 = private unnamed_addr constant [22 x i8] c"rename(%s, %s) failed\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.14 = private unnamed_addr constant [27 x i8] c"WriteObject: Down(y) == y!\00", align 1
@.str.15 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"WriteObject: next_gap!\00", align 1
@.str.17 = private unnamed_addr constant [4 x i8] c"@@C\00", align 1
@.str.18 = private unnamed_addr constant [4 x i8] c"@@D\00", align 1
@.str.19 = private unnamed_addr constant [9 x i8] c" \22%d %d\22\00", align 1
@.str.20 = private unnamed_addr constant [26 x i8] c"WriteObject: ENV/CLOSURE!\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"@@A\00", align 1
@.str.22 = private unnamed_addr constant [22 x i8] c"WriteObject: ENV/ENV!\00", align 1
@.str.23 = private unnamed_addr constant [4 x i8] c"@@B\00", align 1
@.str.24 = private unnamed_addr constant [30 x i8] c"WriteObject: ENV/ENV+CLOSURE!\00", align 1
@.str.25 = private unnamed_addr constant [4 x i8] c"@@E\00", align 1
@.str.26 = private unnamed_addr constant [39 x i8] c"WriteObject/CROSS: type(y) != CLOSURE!\00", align 1
@.str.27 = private unnamed_addr constant [4 x i8] c"@@V\00", align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"&&\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"&&&\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"@Null\00", align 1
@.str.31 = private unnamed_addr constant [11 x i8] c"@PageLabel\00", align 1
@.str.32 = private unnamed_addr constant [22 x i8] c"@BeginHeaderComponent\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"@EndHeaderComponent\00", align 1
@.str.34 = private unnamed_addr constant [20 x i8] c"@SetHeaderComponent\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"@ClearHeaderComponent\00", align 1
@.str.36 = private unnamed_addr constant [8 x i8] c"@OneCol\00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"@OneRow\00", align 1
@.str.38 = private unnamed_addr constant [6 x i8] c"@Wide\00", align 1
@.str.39 = private unnamed_addr constant [6 x i8] c"@High\00", align 1
@.str.40 = private unnamed_addr constant [8 x i8] c"@HShift\00", align 1
@.str.41 = private unnamed_addr constant [8 x i8] c"@VShift\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"@HScale\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"@VScale\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"@HCover\00", align 1
@.str.45 = private unnamed_addr constant [8 x i8] c"@VCover\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"@Scale\00", align 1
@.str.47 = private unnamed_addr constant [12 x i8] c"@KernShrink\00", align 1
@.str.48 = private unnamed_addr constant [11 x i8] c"@HContract\00", align 1
@.str.49 = private unnamed_addr constant [11 x i8] c"@VContract\00", align 1
@.str.50 = private unnamed_addr constant [10 x i8] c"@HLimited\00", align 1
@.str.51 = private unnamed_addr constant [10 x i8] c"@VLimited\00", align 1
@.str.52 = private unnamed_addr constant [9 x i8] c"@HExpand\00", align 1
@.str.53 = private unnamed_addr constant [9 x i8] c"@VExpand\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"@StartHVSpan\00", align 1
@.str.55 = private unnamed_addr constant [12 x i8] c"@StartHSpan\00", align 1
@.str.56 = private unnamed_addr constant [12 x i8] c"@StartVSpan\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"@HSpan\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"@VSpan\00", align 1
@.str.59 = private unnamed_addr constant [9 x i8] c"@PAdjust\00", align 1
@.str.60 = private unnamed_addr constant [9 x i8] c"@HAdjust\00", align 1
@.str.61 = private unnamed_addr constant [9 x i8] c"@VAdjust\00", align 1
@.str.62 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.63 = private unnamed_addr constant [12 x i8] c"@Background\00", align 1
@.str.64 = private unnamed_addr constant [6 x i8] c"@Case\00", align 1
@.str.65 = private unnamed_addr constant [7 x i8] c"@Yield\00", align 1
@.str.66 = private unnamed_addr constant [9 x i8] c"@BackEnd\00", align 1
@.str.67 = private unnamed_addr constant [6 x i8] c"@Char\00", align 1
@.str.68 = private unnamed_addr constant [6 x i8] c"@Font\00", align 1
@.str.69 = private unnamed_addr constant [7 x i8] c"@Space\00", align 1
@.str.70 = private unnamed_addr constant [7 x i8] c"@YUnit\00", align 1
@.str.71 = private unnamed_addr constant [7 x i8] c"@ZUnit\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c"@Break\00", align 1
@.str.73 = private unnamed_addr constant [11 x i8] c"@Underline\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"@SetColour\00", align 1
@.str.75 = private unnamed_addr constant [9 x i8] c"@Outline\00", align 1
@.str.76 = private unnamed_addr constant [10 x i8] c"@Language\00", align 1
@.str.77 = private unnamed_addr constant [10 x i8] c"@CurrLang\00", align 1
@.str.78 = private unnamed_addr constant [12 x i8] c"@CurrFamily\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"@CurrFace\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"@CurrYUnit\00", align 1
@.str.81 = private unnamed_addr constant [11 x i8] c"@CurrZUnit\00", align 1
@.str.82 = private unnamed_addr constant [8 x i8] c"@Common\00", align 1
@.str.83 = private unnamed_addr constant [6 x i8] c"@Rump\00", align 1
@.str.84 = private unnamed_addr constant [6 x i8] c"@Meld\00", align 1
@.str.85 = private unnamed_addr constant [8 x i8] c"@Insert\00", align 1
@.str.86 = private unnamed_addr constant [7 x i8] c"@OneOf\00", align 1
@.str.87 = private unnamed_addr constant [6 x i8] c"@Next\00", align 1
@.str.88 = private unnamed_addr constant [6 x i8] c"@Plus\00", align 1
@.str.89 = private unnamed_addr constant [7 x i8] c"@Minus\00", align 1
@.str.90 = private unnamed_addr constant [6 x i8] c"@Open\00", align 1
@.str.91 = private unnamed_addr constant [8 x i8] c"@Tagged\00", align 1
@.str.92 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.93 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.94 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.95 = private unnamed_addr constant [9 x i8] c"@Graphic\00", align 1
@.str.96 = private unnamed_addr constant [12 x i8] c"@LinkSource\00", align 1
@.str.97 = private unnamed_addr constant [10 x i8] c"@LinkDest\00", align 1
@.str.98 = private unnamed_addr constant [10 x i8] c"@Verbatim\00", align 1
@.str.99 = private unnamed_addr constant [13 x i8] c"@RawVerbatim\00", align 1
@.str.100 = private unnamed_addr constant [7 x i8] c"@Begin\00", align 1
@.str.101 = private unnamed_addr constant [22 x i8] c"WriteObject/VERBATIM!\00", align 1
@.str.102 = private unnamed_addr constant [27 x i8] c"WriteObject/VERBATIM/WORD!\00", align 1
@.str.103 = private unnamed_addr constant [5 x i8] c"@End\00", align 1
@.str.104 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.105 = private unnamed_addr constant [13 x i8] c"WriteObject:\00", align 1
@.str.106 = private unnamed_addr constant [6 x i8] c"@LUse\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: LPAR!\00", align 1
@.str.108 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: NPAR!\00", align 1
@.str.109 = private unnamed_addr constant [2 x i8] c"\5C\00", align 1
@.str.110 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.111 = private unnamed_addr constant [27 x i8] c"WriteObject/CLOSURE: RPAR!\00", align 1
@.str.112 = private unnamed_addr constant [23 x i8] c"WriteClosure:  filter!\00", align 1
@.str.113 = private unnamed_addr constant [14 x i8] c"WriteClosure:\00", align 1
@.str.114 = private unnamed_addr constant [43 x i8] c"OptimizeParameterList: type(x) != CLOSURE!\00", align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8

; Function Attrs: nounwind uwtable
define %union.rec* @ReadFromFile(i16 zeroext %fnum, i64 %pos, i32 %lnum) #0 {
  %1 = alloca i16, align 2
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  store i16 %fnum, i16* %1, align 2
  store i64 %pos, i64* %2, align 8
  store i32 %lnum, i32* %3, align 4
  %4 = load i16, i16* %1, align 2
  %5 = load i64, i64* %2, align 8
  %6 = trunc i64 %5 to i32
  %7 = load i32, i32* %3, align 4
  call void @LexPush(i16 zeroext %4, i32 %6, i32 3, i32 %7, i32 0)
  %8 = call %union.rec* @LexGetToken()
  store %union.rec* %8, %union.rec** %t, align 8
  %9 = load %union.rec*, %union.rec** %t, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 1
  %12 = bitcast %union.FIRST_UNION* %11 to %struct.anon*
  %13 = getelementptr inbounds %struct.anon, %struct.anon* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp ne i32 %15, 102
  br i1 %16, label %17, label %23

; <label>:17                                      ; preds = %0
  %18 = load %union.rec*, %union.rec** %t, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 1
  %21 = bitcast %union.FIRST_UNION* %20 to %struct.FILE_POS*
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 1, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %21)
  br label %23

; <label>:23                                      ; preds = %17, %0
  %24 = load %union.rec*, %union.rec** @StartSym, align 8
  %25 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %24, i32 0, i32 0)
  store %union.rec* %25, %union.rec** %res, align 8
  %26 = load %union.rec*, %union.rec** %t, align 8
  %27 = icmp ne %union.rec* %26, null
  br i1 %27, label %37, label %28

; <label>:28                                      ; preds = %23
  %29 = load %union.rec*, %union.rec** %res, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 1
  %32 = bitcast %union.FIRST_UNION* %31 to %struct.anon*
  %33 = getelementptr inbounds %struct.anon, %struct.anon* %32, i32 0, i32 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 2
  br i1 %36, label %37, label %43

; <label>:37                                      ; preds = %28, %23
  %38 = load %union.rec*, %union.rec** %res, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 1
  %41 = bitcast %union.FIRST_UNION* %40 to %struct.FILE_POS*
  %42 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 2, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i32 0, i32 0), i32 1, %struct.FILE_POS* %41)
  br label %43

; <label>:43                                      ; preds = %37, %28
  call void @LexPop()
  %44 = load %union.rec*, %union.rec** %res, align 8
  ret %union.rec* %44
}

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #1

declare %union.rec* @LexGetToken() #1

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare void @LexPop() #1

; Function Attrs: nounwind uwtable
define void @AppendToFile(%union.rec* %x, i16 zeroext %fnum, i32* %pos, i32* %lnum) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i16, align 2
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %buff = alloca [512 x i8], align 16
  %str = alloca i8*, align 8
  %linecount = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i16 %fnum, i16* %2, align 2
  store i32* %pos, i32** %3, align 8
  store i32* %lnum, i32** %4, align 8
  %5 = load i16, i16* @last_write_fnum, align 2
  %6 = zext i16 %5 to i32
  %7 = load i16, i16* %2, align 2
  %8 = zext i16 %7 to i32
  %9 = icmp ne i32 %6, %8
  br i1 %9, label %10, label %51

; <label>:10                                      ; preds = %0
  %11 = load i16, i16* @last_write_fnum, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %17

; <label>:14                                      ; preds = %10
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %16 = call i32 @fclose(%struct._IO_FILE* %15)
  br label %17

; <label>:17                                      ; preds = %14, %10
  %18 = load i16, i16* %2, align 2
  %19 = call i8* @FileName(i16 zeroext %18)
  store i8* %19, i8** %str, align 8
  %20 = load i8*, i8** %str, align 8
  %21 = call i64 @strlen(i8* %20) #4
  %22 = add i64 %21, 1
  %23 = icmp uge i64 %22, 512
  br i1 %23, label %24, label %29

; <label>:24                                      ; preds = %17
  %25 = load i16, i16* %2, align 2
  %26 = call %struct.FILE_POS* @PosOfFile(i16 zeroext %25)
  %27 = load i8*, i8** %str, align 8
  %28 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.2, i32 0, i32 0), i32 1, %struct.FILE_POS* %26, i8* %27, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0))
  br label %29

; <label>:29                                      ; preds = %24, %17
  %30 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %31 = load i8*, i8** %str, align 8
  %32 = call i8* @strcpy(i8* %30, i8* %31) #5
  %33 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %34 = call i8* @strcat(i8* %33, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  %35 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %36 = load i16, i16* %2, align 2
  %37 = call i32 @FileTestUpdated(i16 zeroext %36)
  %38 = icmp ne i32 %37, 0
  %39 = select i1 %38, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.5, i32 0, i32 0)
  %40 = call %struct._IO_FILE* @fopen(i8* %35, i8* %39)
  store %struct._IO_FILE* %40, %struct._IO_FILE** @last_write_fp, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %42 = icmp eq %struct._IO_FILE* %41, null
  br i1 %42, label %43, label %47

; <label>:43                                      ; preds = %29
  %44 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 4, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %44, i8* %45)
  br label %47

; <label>:47                                      ; preds = %43, %29
  %48 = load i16, i16* %2, align 2
  store i16 %48, i16* @last_write_fnum, align 2
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %50 = call i32 @fseek(%struct._IO_FILE* %49, i64 0, i32 2)
  br label %51

; <label>:51                                      ; preds = %47, %0
  %52 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %53 = call i64 @ftell(%struct._IO_FILE* %52)
  %54 = trunc i64 %53 to i32
  %55 = load i32*, i32** %3, align 8
  store i32 %54, i32* %55, align 4
  %56 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %57 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %56)
  %58 = load i16, i16* %2, align 2
  %59 = call i32 @FileGetLineCount(i16 zeroext %58)
  store i32 %59, i32* %linecount, align 4
  %60 = load i32, i32* %linecount, align 4
  %61 = add nsw i32 %60, 1
  %62 = load i32*, i32** %4, align 8
  store i32 %61, i32* %62, align 4
  %63 = load %union.rec*, %union.rec** %1, align 8
  %64 = load i16, i16* %2, align 2
  call void @WriteObject(%union.rec* %63, i32 0, i32* %linecount, i16 zeroext %64)
  %65 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %66 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %65)
  %67 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %68 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %67)
  %69 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %70 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %69)
  %71 = load i16, i16* %2, align 2
  %72 = load i32, i32* %linecount, align 4
  %73 = add nsw i32 %72, 2
  call void @FileSetUpdated(i16 zeroext %71, i32 %73)
  ret void
}

declare i32 @fclose(%struct._IO_FILE*) #1

declare i8* @FileName(i16 zeroext) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

declare %struct.FILE_POS* @PosOfFile(i16 zeroext) #1

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i32 @FileTestUpdated(i16 zeroext) #1

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

declare i64 @ftell(%struct._IO_FILE*) #1

declare i32 @fputs(i8*, %struct._IO_FILE*) #1

declare i32 @FileGetLineCount(i16 zeroext) #1

; Function Attrs: nounwind uwtable
define internal void @WriteObject(%union.rec* %x, i32 %outer_prec, i32* %linecount, i16 zeroext %fnum) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i16, align 2
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %gap_obj = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %name = alloca i8*, align 8
  %offset = alloca i32, align 4
  %lnum = alloca i32, align 4
  %prec = alloca i32, align 4
  %i = alloca i32, align 4
  %last_prec = alloca i32, align 4
  %braces_needed = alloca i32, align 4
  %next_gap = alloca %union.rec*, align 8
  %next_prec = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %outer_prec, i32* %2, align 4
  store i32* %linecount, i32** %3, align 8
  store i16 %fnum, i16* %4, align 2
  %5 = load %union.rec*, %union.rec** %1, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 1
  %8 = bitcast %union.FIRST_UNION* %7 to %struct.anon*
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  switch i32 %11, label %1272 [
    i32 11, label %12
    i32 12, label %35
    i32 19, label %40
    i32 18, label %41
    i32 17, label %42
    i32 82, label %399
    i32 2, label %650
    i32 6, label %788
    i32 7, label %788
    i32 5, label %904
    i32 4, label %905
    i32 20, label %906
    i32 21, label %907
    i32 22, label %908
    i32 23, label %909
    i32 24, label %910
    i32 25, label %911
    i32 26, label %912
    i32 27, label %913
    i32 28, label %914
    i32 29, label %915
    i32 30, label %916
    i32 31, label %917
    i32 32, label %918
    i32 33, label %919
    i32 34, label %920
    i32 35, label %921
    i32 36, label %922
    i32 37, label %923
    i32 38, label %924
    i32 39, label %925
    i32 40, label %926
    i32 41, label %927
    i32 44, label %928
    i32 42, label %929
    i32 43, label %930
    i32 45, label %931
    i32 46, label %932
    i32 47, label %933
    i32 48, label %934
    i32 49, label %935
    i32 50, label %936
    i32 51, label %937
    i32 52, label %938
    i32 55, label %939
    i32 56, label %940
    i32 58, label %941
    i32 59, label %942
    i32 60, label %943
    i32 61, label %944
    i32 62, label %945
    i32 63, label %946
    i32 64, label %947
    i32 65, label %948
    i32 66, label %949
    i32 67, label %950
    i32 68, label %951
    i32 69, label %952
    i32 70, label %953
    i32 71, label %954
    i32 72, label %955
    i32 73, label %956
    i32 74, label %957
    i32 75, label %958
    i32 76, label %959
    i32 77, label %960
    i32 78, label %961
    i32 79, label %962
    i32 80, label %963
    i32 92, label %964
    i32 93, label %965
    i32 94, label %966
    i32 95, label %967
    i32 96, label %968
    i32 97, label %969
    i32 98, label %970
    i32 99, label %971
    i32 54, label %1099
    i32 53, label %1099
    i32 57, label %1268
  ]

; <label>:12                                      ; preds = %0
  %13 = load %union.rec*, %union.rec** %1, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %15, i32 0, i32 0
  %17 = call i64 @strlen(i8* %16) #4
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %27

; <label>:19                                      ; preds = %12
  %20 = load i32, i32* %2, align 4
  %21 = icmp sgt i32 %20, 7
  br i1 %21, label %22, label %27

; <label>:22                                      ; preds = %19
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %24 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %23)
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %26 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %25)
  br label %34

; <label>:27                                      ; preds = %19, %12
  %28 = load %union.rec*, %union.rec** %1, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 4
  %31 = getelementptr inbounds [4 x i8], [4 x i8]* %30, i32 0, i32 0
  %32 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %33 = call i32 @fputs(i8* %31, %struct._IO_FILE* %32)
  br label %34

; <label>:34                                      ; preds = %27, %22
  br label %1283

; <label>:35                                      ; preds = %0
  %36 = load %union.rec*, %union.rec** %1, align 8
  %37 = call i8* @StringQuotedWord(%union.rec* %36)
  %38 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %39 = call i32 @fputs(i8* %37, %struct._IO_FILE* %38)
  br label %1283

; <label>:40                                      ; preds = %0
  store i32 5, i32* %prec, align 4
  br label %43

; <label>:41                                      ; preds = %0
  store i32 6, i32* %prec, align 4
  br label %43

; <label>:42                                      ; preds = %0
  store i32 7, i32* %prec, align 4
  br label %43

; <label>:43                                      ; preds = %42, %41, %40
  %44 = load i32, i32* %prec, align 4
  %45 = load i32, i32* %2, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %50

; <label>:47                                      ; preds = %43
  %48 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %49 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %48)
  br label %50

; <label>:50                                      ; preds = %47, %43
  %51 = load i32, i32* %prec, align 4
  store i32 %51, i32* %last_prec, align 4
  %52 = load %union.rec*, %union.rec** %1, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 0
  %55 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %54, i32 0, i64 0
  %56 = getelementptr inbounds %struct.LIST, %struct.LIST* %55, i32 0, i32 1
  %57 = load %union.rec*, %union.rec** %56, align 8
  store %union.rec* %57, %union.rec** %link, align 8
  br label %58

; <label>:58                                      ; preds = %384, %50
  %59 = load %union.rec*, %union.rec** %link, align 8
  %60 = load %union.rec*, %union.rec** %1, align 8
  %61 = icmp ne %union.rec* %59, %60
  br i1 %61, label %62, label %391

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
  %73 = bitcast %union.FIRST_UNION* %72 to %struct.anon*
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 0
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
  %90 = bitcast %union.FIRST_UNION* %89 to %struct.anon*
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %285

; <label>:95                                      ; preds = %86
  %96 = load %union.rec*, %union.rec** %y, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 0
  %99 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %98, i32 0, i64 0
  %100 = getelementptr inbounds %struct.LIST, %struct.LIST* %99, i32 0, i32 1
  %101 = load %union.rec*, %union.rec** %100, align 8
  %102 = load %union.rec*, %union.rec** %y, align 8
  %103 = icmp eq %union.rec* %101, %102
  br i1 %103, label %104, label %178

; <label>:104                                     ; preds = %95
  %105 = load %union.rec*, %union.rec** %1, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 1
  %108 = bitcast %union.FIRST_UNION* %107 to %struct.anon*
  %109 = getelementptr inbounds %struct.anon, %struct.anon* %108, i32 0, i32 0
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  %112 = icmp eq i32 %111, 17
  br i1 %112, label %116, label %113

; <label>:113                                     ; preds = %104
  %114 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %115 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %114, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.14, i32 0, i32 0))
  br label %116

; <label>:116                                     ; preds = %113, %104
  store i32 1, i32* %i, align 4
  br label %117

; <label>:117                                     ; preds = %130, %116
  %118 = load i32, i32* %i, align 4
  %119 = load %union.rec*, %union.rec** %y, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 2
  %122 = bitcast %union.SECOND_UNION* %121 to %struct.anon.0*
  %123 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = icmp sle i32 %118, %125
  br i1 %126, label %127, label %133

; <label>:127                                     ; preds = %117
  %128 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %129 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %128)
  br label %130

; <label>:130                                     ; preds = %127
  %131 = load i32, i32* %i, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %i, align 4
  br label %117

; <label>:133                                     ; preds = %117
  %134 = load %union.rec*, %union.rec** %y, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 2
  %137 = bitcast %union.SECOND_UNION* %136 to %struct.anon.0*
  %138 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %137, i32 0, i32 2
  %139 = load i8, i8* %138, align 1
  %140 = zext i8 %139 to i32
  %141 = load i32*, i32** %3, align 8
  %142 = load i32, i32* %141, align 4
  %143 = add nsw i32 %142, %140
  store i32 %143, i32* %141, align 4
  store i32 1, i32* %i, align 4
  br label %144

; <label>:144                                     ; preds = %157, %133
  %145 = load i32, i32* %i, align 4
  %146 = load %union.rec*, %union.rec** %y, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 2
  %149 = bitcast %union.SECOND_UNION* %148 to %struct.anon.0*
  %150 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %149, i32 0, i32 1
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  %153 = icmp sle i32 %145, %152
  br i1 %153, label %154, label %160

; <label>:154                                     ; preds = %144
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %156 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %155)
  br label %157

; <label>:157                                     ; preds = %154
  %158 = load i32, i32* %i, align 4
  %159 = add nsw i32 %158, 1
  store i32 %159, i32* %i, align 4
  br label %144

; <label>:160                                     ; preds = %144
  %161 = load %union.rec*, %union.rec** %y, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 2
  %164 = bitcast %union.SECOND_UNION* %163 to %struct.anon.0*
  %165 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %164, i32 0, i32 2
  %166 = load i8, i8* %165, align 1
  %167 = zext i8 %166 to i32
  %168 = load %union.rec*, %union.rec** %y, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 2
  %171 = bitcast %union.SECOND_UNION* %170 to %struct.anon.0*
  %172 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %171, i32 0, i32 1
  %173 = load i8, i8* %172, align 1
  %174 = zext i8 %173 to i32
  %175 = add nsw i32 %167, %174
  %176 = icmp eq i32 %175, 0
  %177 = select i1 %176, i32 103, i32 7
  store i32 %177, i32* %last_prec, align 4
  br label %284

; <label>:178                                     ; preds = %95
  %179 = load %union.rec*, %union.rec** %y, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 0
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 1
  %184 = load %union.rec*, %union.rec** %183, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 0
  %187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %186, i32 0, i64 1
  %188 = getelementptr inbounds %struct.LIST, %struct.LIST* %187, i32 0, i32 0
  %189 = load %union.rec*, %union.rec** %188, align 8
  store %union.rec* %189, %union.rec** %gap_obj, align 8
  br label %190

; <label>:190                                     ; preds = %200, %178
  %191 = load %union.rec*, %union.rec** %gap_obj, align 8
  %192 = bitcast %union.rec* %191 to %struct.word_type*
  %193 = getelementptr inbounds %struct.word_type, %struct.word_type* %192, i32 0, i32 1
  %194 = bitcast %union.FIRST_UNION* %193 to %struct.anon*
  %195 = getelementptr inbounds %struct.anon, %struct.anon* %194, i32 0, i32 0
  %196 = load i8, i8* %195, align 1
  %197 = zext i8 %196 to i32
  %198 = icmp eq i32 %197, 0
  br i1 %198, label %199, label %207

; <label>:199                                     ; preds = %190
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load %union.rec*, %union.rec** %gap_obj, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %203, i32 0, i64 1
  %205 = getelementptr inbounds %struct.LIST, %struct.LIST* %204, i32 0, i32 0
  %206 = load %union.rec*, %union.rec** %205, align 8
  store %union.rec* %206, %union.rec** %gap_obj, align 8
  br label %190

; <label>:207                                     ; preds = %190
  %208 = load %union.rec*, %union.rec** %1, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 1
  %211 = bitcast %union.FIRST_UNION* %210 to %struct.anon*
  %212 = getelementptr inbounds %struct.anon, %struct.anon* %211, i32 0, i32 0
  %213 = load i8, i8* %212, align 1
  %214 = zext i8 %213 to i32
  %215 = icmp eq i32 %214, 17
  br i1 %215, label %216, label %219

; <label>:216                                     ; preds = %207
  %217 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %218 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %217)
  br label %225

; <label>:219                                     ; preds = %207
  %220 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %221 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %220)
  %222 = load i32*, i32** %3, align 8
  %223 = load i32, i32* %222, align 4
  %224 = add nsw i32 %223, 1
  store i32 %224, i32* %222, align 4
  br label %225

; <label>:225                                     ; preds = %219, %216
  %226 = load %union.rec*, %union.rec** %1, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 1
  %229 = bitcast %union.FIRST_UNION* %228 to %struct.anon*
  %230 = getelementptr inbounds %struct.anon, %struct.anon* %229, i32 0, i32 0
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = load %union.rec*, %union.rec** %y, align 8
  %234 = bitcast %union.rec* %233 to %struct.gapobj_type*
  %235 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %234, i32 0, i32 3
  %236 = bitcast %struct.GAP* %235 to i16*
  %237 = load i16, i16* %236, align 4
  %238 = lshr i16 %237, 8
  %239 = and i16 %238, 1
  %240 = zext i16 %239 to i32
  %241 = load %union.rec*, %union.rec** %y, align 8
  %242 = bitcast %union.rec* %241 to %struct.gapobj_type*
  %243 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %242, i32 0, i32 3
  %244 = bitcast %struct.GAP* %243 to i16*
  %245 = load i16, i16* %244, align 4
  %246 = lshr i16 %245, 9
  %247 = and i16 %246, 1
  %248 = zext i16 %247 to i32
  %249 = call i8* @EchoCatOp(i32 %232, i32 %240, i32 %248)
  %250 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %251 = call i32 @fputs(i8* %249, %struct._IO_FILE* %250)
  %252 = load %union.rec*, %union.rec** %gap_obj, align 8
  %253 = bitcast %union.rec* %252 to %struct.word_type*
  %254 = getelementptr inbounds %struct.word_type, %struct.word_type* %253, i32 0, i32 1
  %255 = bitcast %union.FIRST_UNION* %254 to %struct.anon*
  %256 = getelementptr inbounds %struct.anon, %struct.anon* %255, i32 0, i32 0
  %257 = load i8, i8* %256, align 1
  %258 = zext i8 %257 to i32
  %259 = icmp eq i32 %258, 11
  br i1 %259, label %269, label %260

; <label>:260                                     ; preds = %225
  %261 = load %union.rec*, %union.rec** %gap_obj, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 1
  %264 = bitcast %union.FIRST_UNION* %263 to %struct.anon*
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %264, i32 0, i32 0
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 12
  br i1 %268, label %269, label %276

; <label>:269                                     ; preds = %260, %225
  %270 = load %union.rec*, %union.rec** %gap_obj, align 8
  %271 = bitcast %union.rec* %270 to %struct.word_type*
  %272 = getelementptr inbounds %struct.word_type, %struct.word_type* %271, i32 0, i32 4
  %273 = getelementptr inbounds [4 x i8], [4 x i8]* %272, i32 0, i32 0
  %274 = call i64 @strlen(i8* %273) #4
  %275 = icmp ne i64 %274, 0
  br i1 %275, label %276, label %280

; <label>:276                                     ; preds = %269, %260
  %277 = load %union.rec*, %union.rec** %gap_obj, align 8
  %278 = load i32*, i32** %3, align 8
  %279 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %277, i32 105, i32* %278, i16 zeroext %279)
  br label %280

; <label>:280                                     ; preds = %276, %269
  %281 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %282 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %281)
  %283 = load i32, i32* %prec, align 4
  store i32 %283, i32* %last_prec, align 4
  br label %284

; <label>:284                                     ; preds = %280, %160
  br label %383

; <label>:285                                     ; preds = %86
  %286 = load %union.rec*, %union.rec** %1, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 1
  %289 = bitcast %union.FIRST_UNION* %288 to %struct.anon*
  %290 = getelementptr inbounds %struct.anon, %struct.anon* %289, i32 0, i32 0
  %291 = load i8, i8* %290, align 1
  %292 = zext i8 %291 to i32
  %293 = icmp eq i32 %292, 17
  br i1 %293, label %294, label %377

; <label>:294                                     ; preds = %285
  %295 = load %union.rec*, %union.rec** %link, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 0
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 1
  %300 = load %union.rec*, %union.rec** %299, align 8
  %301 = load %union.rec*, %union.rec** %1, align 8
  %302 = icmp ne %union.rec* %300, %301
  br i1 %302, label %303, label %362

; <label>:303                                     ; preds = %294
  %304 = load %union.rec*, %union.rec** %link, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 0
  %307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %306, i32 0, i64 0
  %308 = getelementptr inbounds %struct.LIST, %struct.LIST* %307, i32 0, i32 1
  %309 = load %union.rec*, %union.rec** %308, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 1
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 0
  %314 = load %union.rec*, %union.rec** %313, align 8
  store %union.rec* %314, %union.rec** %next_gap, align 8
  br label %315

; <label>:315                                     ; preds = %325, %303
  %316 = load %union.rec*, %union.rec** %next_gap, align 8
  %317 = bitcast %union.rec* %316 to %struct.word_type*
  %318 = getelementptr inbounds %struct.word_type, %struct.word_type* %317, i32 0, i32 1
  %319 = bitcast %union.FIRST_UNION* %318 to %struct.anon*
  %320 = getelementptr inbounds %struct.anon, %struct.anon* %319, i32 0, i32 0
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i32
  %323 = icmp eq i32 %322, 0
  br i1 %323, label %324, label %332

; <label>:324                                     ; preds = %315
  br label %325

; <label>:325                                     ; preds = %324
  %326 = load %union.rec*, %union.rec** %next_gap, align 8
  %327 = bitcast %union.rec* %326 to %struct.word_type*
  %328 = getelementptr inbounds %struct.word_type, %struct.word_type* %327, i32 0, i32 0
  %329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %328, i32 0, i64 1
  %330 = getelementptr inbounds %struct.LIST, %struct.LIST* %329, i32 0, i32 0
  %331 = load %union.rec*, %union.rec** %330, align 8
  store %union.rec* %331, %union.rec** %next_gap, align 8
  br label %315

; <label>:332                                     ; preds = %315
  %333 = load %union.rec*, %union.rec** %next_gap, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 1
  %336 = bitcast %union.FIRST_UNION* %335 to %struct.anon*
  %337 = getelementptr inbounds %struct.anon, %struct.anon* %336, i32 0, i32 0
  %338 = load i8, i8* %337, align 1
  %339 = zext i8 %338 to i32
  %340 = icmp eq i32 %339, 1
  br i1 %340, label %344, label %341

; <label>:341                                     ; preds = %332
  %342 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %343 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %342, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0))
  br label %344

; <label>:344                                     ; preds = %341, %332
  %345 = load %union.rec*, %union.rec** %next_gap, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 2
  %348 = bitcast %union.SECOND_UNION* %347 to %struct.anon.0*
  %349 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %348, i32 0, i32 2
  %350 = load i8, i8* %349, align 1
  %351 = zext i8 %350 to i32
  %352 = load %union.rec*, %union.rec** %next_gap, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 2
  %355 = bitcast %union.SECOND_UNION* %354 to %struct.anon.0*
  %356 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %355, i32 0, i32 1
  %357 = load i8, i8* %356, align 1
  %358 = zext i8 %357 to i32
  %359 = add nsw i32 %351, %358
  %360 = icmp eq i32 %359, 0
  %361 = select i1 %360, i32 103, i32 7
  store i32 %361, i32* %next_prec, align 4
  br label %364

; <label>:362                                     ; preds = %294
  %363 = load i32, i32* %prec, align 4
  store i32 %363, i32* %next_prec, align 4
  br label %364

; <label>:364                                     ; preds = %362, %344
  %365 = load %union.rec*, %union.rec** %y, align 8
  %366 = load i32, i32* %last_prec, align 4
  %367 = load i32, i32* %next_prec, align 4
  %368 = icmp slt i32 %366, %367
  br i1 %368, label %369, label %371

; <label>:369                                     ; preds = %364
  %370 = load i32, i32* %next_prec, align 4
  br label %373

; <label>:371                                     ; preds = %364
  %372 = load i32, i32* %last_prec, align 4
  br label %373

; <label>:373                                     ; preds = %371, %369
  %374 = phi i32 [ %370, %369 ], [ %372, %371 ]
  %375 = load i32*, i32** %3, align 8
  %376 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %365, i32 %374, i32* %375, i16 zeroext %376)
  br label %382

; <label>:377                                     ; preds = %285
  %378 = load %union.rec*, %union.rec** %y, align 8
  %379 = load i32, i32* %prec, align 4
  %380 = load i32*, i32** %3, align 8
  %381 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %378, i32 %379, i32* %380, i16 zeroext %381)
  br label %382

; <label>:382                                     ; preds = %377, %373
  br label %383

; <label>:383                                     ; preds = %382, %284
  br label %384

; <label>:384                                     ; preds = %383
  %385 = load %union.rec*, %union.rec** %link, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 0
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 1
  %390 = load %union.rec*, %union.rec** %389, align 8
  store %union.rec* %390, %union.rec** %link, align 8
  br label %58

; <label>:391                                     ; preds = %58
  %392 = load i32, i32* %prec, align 4
  %393 = load i32, i32* %2, align 4
  %394 = icmp slt i32 %392, %393
  br i1 %394, label %395, label %398

; <label>:395                                     ; preds = %391
  %396 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %397 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %396)
  br label %398

; <label>:398                                     ; preds = %395, %391
  br label %1283

; <label>:399                                     ; preds = %0
  %400 = load %union.rec*, %union.rec** %1, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  %405 = load %union.rec*, %union.rec** %404, align 8
  %406 = load %union.rec*, %union.rec** %1, align 8
  %407 = icmp eq %union.rec* %405, %406
  br i1 %407, label %408, label %416

; <label>:408                                     ; preds = %399
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %410 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.17, i32 0, i32 0), %struct._IO_FILE* %409)
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %412 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %411)
  %413 = load i32*, i32** %3, align 8
  %414 = load i32, i32* %413, align 4
  %415 = add nsw i32 %414, 1
  store i32 %415, i32* %413, align 4
  br label %649

; <label>:416                                     ; preds = %399
  %417 = load %union.rec*, %union.rec** %1, align 8
  %418 = load i16, i16* %4, align 2
  %419 = call i32 @EnvWriteRetrieve(%union.rec* %417, i16 zeroext %418, i32* %offset, i32* %lnum)
  %420 = icmp ne i32 %419, 0
  br i1 %420, label %421, label %433

; <label>:421                                     ; preds = %416
  %422 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %423 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.18, i32 0, i32 0), %struct._IO_FILE* %422)
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %425 = load i32, i32* %offset, align 4
  %426 = load i32, i32* %lnum, align 4
  %427 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %424, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.19, i32 0, i32 0), i32 %425, i32 %426)
  %428 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %429 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %428)
  %430 = load i32*, i32** %3, align 8
  %431 = load i32, i32* %430, align 4
  %432 = add nsw i32 %431, 1
  store i32 %432, i32* %430, align 4
  br label %648

; <label>:433                                     ; preds = %416
  %434 = load %union.rec*, %union.rec** %1, align 8
  %435 = load i16, i16* %4, align 2
  %436 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %437 = call i64 @ftell(%struct._IO_FILE* %436)
  %438 = trunc i64 %437 to i32
  %439 = load i32*, i32** %3, align 8
  %440 = load i32, i32* %439, align 4
  call void @EnvWriteInsert(%union.rec* %434, i16 zeroext %435, i32 %438, i32 %440)
  %441 = load %union.rec*, %union.rec** %1, align 8
  %442 = bitcast %union.rec* %441 to %struct.word_type*
  %443 = getelementptr inbounds %struct.word_type, %struct.word_type* %442, i32 0, i32 0
  %444 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %443, i32 0, i64 0
  %445 = getelementptr inbounds %struct.LIST, %struct.LIST* %444, i32 0, i32 1
  %446 = load %union.rec*, %union.rec** %445, align 8
  %447 = load %union.rec*, %union.rec** %1, align 8
  %448 = bitcast %union.rec* %447 to %struct.word_type*
  %449 = getelementptr inbounds %struct.word_type, %struct.word_type* %448, i32 0, i32 0
  %450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %449, i32 0, i64 0
  %451 = getelementptr inbounds %struct.LIST, %struct.LIST* %450, i32 0, i32 0
  %452 = load %union.rec*, %union.rec** %451, align 8
  %453 = icmp eq %union.rec* %446, %452
  br i1 %453, label %454, label %524

; <label>:454                                     ; preds = %433
  %455 = load %union.rec*, %union.rec** %1, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 0
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 1
  %460 = load %union.rec*, %union.rec** %459, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 0
  %463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %462, i32 0, i64 1
  %464 = getelementptr inbounds %struct.LIST, %struct.LIST* %463, i32 0, i32 0
  %465 = load %union.rec*, %union.rec** %464, align 8
  store %union.rec* %465, %union.rec** %y, align 8
  br label %466

; <label>:466                                     ; preds = %476, %454
  %467 = load %union.rec*, %union.rec** %y, align 8
  %468 = bitcast %union.rec* %467 to %struct.word_type*
  %469 = getelementptr inbounds %struct.word_type, %struct.word_type* %468, i32 0, i32 1
  %470 = bitcast %union.FIRST_UNION* %469 to %struct.anon*
  %471 = getelementptr inbounds %struct.anon, %struct.anon* %470, i32 0, i32 0
  %472 = load i8, i8* %471, align 1
  %473 = zext i8 %472 to i32
  %474 = icmp eq i32 %473, 0
  br i1 %474, label %475, label %483

; <label>:475                                     ; preds = %466
  br label %476

; <label>:476                                     ; preds = %475
  %477 = load %union.rec*, %union.rec** %y, align 8
  %478 = bitcast %union.rec* %477 to %struct.word_type*
  %479 = getelementptr inbounds %struct.word_type, %struct.word_type* %478, i32 0, i32 0
  %480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %479, i32 0, i64 1
  %481 = getelementptr inbounds %struct.LIST, %struct.LIST* %480, i32 0, i32 0
  %482 = load %union.rec*, %union.rec** %481, align 8
  store %union.rec* %482, %union.rec** %y, align 8
  br label %466

; <label>:483                                     ; preds = %466
  %484 = load %union.rec*, %union.rec** %y, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 1
  %487 = bitcast %union.FIRST_UNION* %486 to %struct.anon*
  %488 = getelementptr inbounds %struct.anon, %struct.anon* %487, i32 0, i32 0
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  %491 = icmp eq i32 %490, 2
  br i1 %491, label %495, label %492

; <label>:492                                     ; preds = %483
  %493 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %494 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %493, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.20, i32 0, i32 0))
  br label %495

; <label>:495                                     ; preds = %492, %483
  %496 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %497 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %496)
  %498 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %499 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %498)
  %500 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %501 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.21, i32 0, i32 0), %struct._IO_FILE* %500)
  %502 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %503 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %502)
  %504 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %505 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %504)
  %506 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %507 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %506)
  %508 = load %union.rec*, %union.rec** %y, align 8
  %509 = load i32*, i32** %3, align 8
  %510 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %508, i32 0, i32* %509, i16 zeroext %510)
  %511 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %512 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %511)
  %513 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %514 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %513)
  %515 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %516 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %515)
  %517 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %518 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %517)
  %519 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %520 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %519)
  %521 = load i32*, i32** %3, align 8
  %522 = load i32, i32* %521, align 4
  %523 = add nsw i32 %522, 1
  store i32 %523, i32* %521, align 4
  br label %647

; <label>:524                                     ; preds = %433
  %525 = load %union.rec*, %union.rec** %1, align 8
  %526 = bitcast %union.rec* %525 to %struct.word_type*
  %527 = getelementptr inbounds %struct.word_type, %struct.word_type* %526, i32 0, i32 0
  %528 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %527, i32 0, i64 0
  %529 = getelementptr inbounds %struct.LIST, %struct.LIST* %528, i32 0, i32 0
  %530 = load %union.rec*, %union.rec** %529, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 0
  %533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %532, i32 0, i64 1
  %534 = getelementptr inbounds %struct.LIST, %struct.LIST* %533, i32 0, i32 0
  %535 = load %union.rec*, %union.rec** %534, align 8
  store %union.rec* %535, %union.rec** %env, align 8
  br label %536

; <label>:536                                     ; preds = %546, %524
  %537 = load %union.rec*, %union.rec** %env, align 8
  %538 = bitcast %union.rec* %537 to %struct.word_type*
  %539 = getelementptr inbounds %struct.word_type, %struct.word_type* %538, i32 0, i32 1
  %540 = bitcast %union.FIRST_UNION* %539 to %struct.anon*
  %541 = getelementptr inbounds %struct.anon, %struct.anon* %540, i32 0, i32 0
  %542 = load i8, i8* %541, align 1
  %543 = zext i8 %542 to i32
  %544 = icmp eq i32 %543, 0
  br i1 %544, label %545, label %553

; <label>:545                                     ; preds = %536
  br label %546

; <label>:546                                     ; preds = %545
  %547 = load %union.rec*, %union.rec** %env, align 8
  %548 = bitcast %union.rec* %547 to %struct.word_type*
  %549 = getelementptr inbounds %struct.word_type, %struct.word_type* %548, i32 0, i32 0
  %550 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %549, i32 0, i64 1
  %551 = getelementptr inbounds %struct.LIST, %struct.LIST* %550, i32 0, i32 0
  %552 = load %union.rec*, %union.rec** %551, align 8
  store %union.rec* %552, %union.rec** %env, align 8
  br label %536

; <label>:553                                     ; preds = %536
  %554 = load %union.rec*, %union.rec** %env, align 8
  %555 = bitcast %union.rec* %554 to %struct.word_type*
  %556 = getelementptr inbounds %struct.word_type, %struct.word_type* %555, i32 0, i32 1
  %557 = bitcast %union.FIRST_UNION* %556 to %struct.anon*
  %558 = getelementptr inbounds %struct.anon, %struct.anon* %557, i32 0, i32 0
  %559 = load i8, i8* %558, align 1
  %560 = zext i8 %559 to i32
  %561 = icmp eq i32 %560, 82
  br i1 %561, label %565, label %562

; <label>:562                                     ; preds = %553
  %563 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %564 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %563, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.22, i32 0, i32 0))
  br label %565

; <label>:565                                     ; preds = %562, %553
  %566 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %567 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %566)
  %568 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %569 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %568)
  %570 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %571 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.23, i32 0, i32 0), %struct._IO_FILE* %570)
  %572 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %573 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %572)
  %574 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %575 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %574)
  %576 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %577 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %576)
  %578 = load %union.rec*, %union.rec** %env, align 8
  %579 = load i32*, i32** %3, align 8
  %580 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %578, i32 0, i32* %579, i16 zeroext %580)
  %581 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %582 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %581)
  %583 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %584 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %583)
  %585 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %586 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %585)
  %587 = load i32*, i32** %3, align 8
  %588 = load i32, i32* %587, align 4
  %589 = add nsw i32 %588, 1
  store i32 %589, i32* %587, align 4
  %590 = load %union.rec*, %union.rec** %1, align 8
  %591 = bitcast %union.rec* %590 to %struct.word_type*
  %592 = getelementptr inbounds %struct.word_type, %struct.word_type* %591, i32 0, i32 0
  %593 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %592, i32 0, i64 0
  %594 = getelementptr inbounds %struct.LIST, %struct.LIST* %593, i32 0, i32 1
  %595 = load %union.rec*, %union.rec** %594, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 0
  %598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %597, i32 0, i64 1
  %599 = getelementptr inbounds %struct.LIST, %struct.LIST* %598, i32 0, i32 0
  %600 = load %union.rec*, %union.rec** %599, align 8
  store %union.rec* %600, %union.rec** %y, align 8
  br label %601

; <label>:601                                     ; preds = %611, %565
  %602 = load %union.rec*, %union.rec** %y, align 8
  %603 = bitcast %union.rec* %602 to %struct.word_type*
  %604 = getelementptr inbounds %struct.word_type, %struct.word_type* %603, i32 0, i32 1
  %605 = bitcast %union.FIRST_UNION* %604 to %struct.anon*
  %606 = getelementptr inbounds %struct.anon, %struct.anon* %605, i32 0, i32 0
  %607 = load i8, i8* %606, align 1
  %608 = zext i8 %607 to i32
  %609 = icmp eq i32 %608, 0
  br i1 %609, label %610, label %618

; <label>:610                                     ; preds = %601
  br label %611

; <label>:611                                     ; preds = %610
  %612 = load %union.rec*, %union.rec** %y, align 8
  %613 = bitcast %union.rec* %612 to %struct.word_type*
  %614 = getelementptr inbounds %struct.word_type, %struct.word_type* %613, i32 0, i32 0
  %615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %614, i32 0, i64 1
  %616 = getelementptr inbounds %struct.LIST, %struct.LIST* %615, i32 0, i32 0
  %617 = load %union.rec*, %union.rec** %616, align 8
  store %union.rec* %617, %union.rec** %y, align 8
  br label %601

; <label>:618                                     ; preds = %601
  %619 = load %union.rec*, %union.rec** %y, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 1
  %622 = bitcast %union.FIRST_UNION* %621 to %struct.anon*
  %623 = getelementptr inbounds %struct.anon, %struct.anon* %622, i32 0, i32 0
  %624 = load i8, i8* %623, align 1
  %625 = zext i8 %624 to i32
  %626 = icmp eq i32 %625, 2
  br i1 %626, label %630, label %627

; <label>:627                                     ; preds = %618
  %628 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %629 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %628, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.24, i32 0, i32 0))
  br label %630

; <label>:630                                     ; preds = %627, %618
  %631 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %632 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %631)
  %633 = load %union.rec*, %union.rec** %y, align 8
  %634 = load i32*, i32** %3, align 8
  %635 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %633, i32 0, i32* %634, i16 zeroext %635)
  %636 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %637 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %636)
  %638 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %639 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %638)
  %640 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %641 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %640)
  %642 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %643 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %642)
  %644 = load i32*, i32** %3, align 8
  %645 = load i32, i32* %644, align 4
  %646 = add nsw i32 %645, 1
  store i32 %646, i32* %644, align 4
  br label %647

; <label>:647                                     ; preds = %630, %495
  br label %648

; <label>:648                                     ; preds = %647, %421
  br label %649

; <label>:649                                     ; preds = %648, %408
  br label %1283

; <label>:650                                     ; preds = %0
  %651 = load %union.rec*, %union.rec** %1, align 8
  %652 = bitcast %union.rec* %651 to %struct.closure_type*
  %653 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %652, i32 0, i32 5
  %654 = load %union.rec*, %union.rec** %653, align 8
  store %union.rec* %654, %union.rec** %sym, align 8
  store %union.rec* null, %union.rec** %env, align 8
  %655 = load %union.rec*, %union.rec** %1, align 8
  %656 = bitcast %union.rec* %655 to %struct.word_type*
  %657 = getelementptr inbounds %struct.word_type, %struct.word_type* %656, i32 0, i32 0
  %658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %657, i32 0, i64 0
  %659 = getelementptr inbounds %struct.LIST, %struct.LIST* %658, i32 0, i32 0
  %660 = load %union.rec*, %union.rec** %659, align 8
  %661 = load %union.rec*, %union.rec** %1, align 8
  %662 = icmp ne %union.rec* %660, %661
  br i1 %662, label %663, label %704

; <label>:663                                     ; preds = %650
  %664 = load %union.rec*, %union.rec** %1, align 8
  %665 = bitcast %union.rec* %664 to %struct.word_type*
  %666 = getelementptr inbounds %struct.word_type, %struct.word_type* %665, i32 0, i32 0
  %667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %666, i32 0, i64 0
  %668 = getelementptr inbounds %struct.LIST, %struct.LIST* %667, i32 0, i32 0
  %669 = load %union.rec*, %union.rec** %668, align 8
  %670 = bitcast %union.rec* %669 to %struct.word_type*
  %671 = getelementptr inbounds %struct.word_type, %struct.word_type* %670, i32 0, i32 0
  %672 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %671, i32 0, i64 1
  %673 = getelementptr inbounds %struct.LIST, %struct.LIST* %672, i32 0, i32 0
  %674 = load %union.rec*, %union.rec** %673, align 8
  store %union.rec* %674, %union.rec** %y, align 8
  br label %675

; <label>:675                                     ; preds = %685, %663
  %676 = load %union.rec*, %union.rec** %y, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 1
  %679 = bitcast %union.FIRST_UNION* %678 to %struct.anon*
  %680 = getelementptr inbounds %struct.anon, %struct.anon* %679, i32 0, i32 0
  %681 = load i8, i8* %680, align 1
  %682 = zext i8 %681 to i32
  %683 = icmp eq i32 %682, 0
  br i1 %683, label %684, label %692

; <label>:684                                     ; preds = %675
  br label %685

; <label>:685                                     ; preds = %684
  %686 = load %union.rec*, %union.rec** %y, align 8
  %687 = bitcast %union.rec* %686 to %struct.word_type*
  %688 = getelementptr inbounds %struct.word_type, %struct.word_type* %687, i32 0, i32 0
  %689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %688, i32 0, i64 1
  %690 = getelementptr inbounds %struct.LIST, %struct.LIST* %689, i32 0, i32 0
  %691 = load %union.rec*, %union.rec** %690, align 8
  store %union.rec* %691, %union.rec** %y, align 8
  br label %675

; <label>:692                                     ; preds = %675
  %693 = load %union.rec*, %union.rec** %y, align 8
  %694 = bitcast %union.rec* %693 to %struct.word_type*
  %695 = getelementptr inbounds %struct.word_type, %struct.word_type* %694, i32 0, i32 1
  %696 = bitcast %union.FIRST_UNION* %695 to %struct.anon*
  %697 = getelementptr inbounds %struct.anon, %struct.anon* %696, i32 0, i32 0
  %698 = load i8, i8* %697, align 1
  %699 = zext i8 %698 to i32
  %700 = icmp eq i32 %699, 82
  br i1 %700, label %701, label %703

; <label>:701                                     ; preds = %692
  %702 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %702, %union.rec** %env, align 8
  br label %703

; <label>:703                                     ; preds = %701, %692
  br label %704

; <label>:704                                     ; preds = %703, %650
  %705 = load %union.rec*, %union.rec** %env, align 8
  %706 = icmp ne %union.rec* %705, null
  br i1 %706, label %744, label %707

; <label>:707                                     ; preds = %704
  %708 = load %union.rec*, %union.rec** %sym, align 8
  %709 = bitcast %union.rec* %708 to %struct.word_type*
  %710 = getelementptr inbounds %struct.word_type, %struct.word_type* %709, i32 0, i32 2
  %711 = bitcast %union.SECOND_UNION* %710 to %struct.anon.0*
  %712 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %711, i32 0, i32 0
  %713 = load i8, i8* %712, align 1
  %714 = zext i8 %713 to i32
  %715 = load i32, i32* %2, align 4
  %716 = icmp sle i32 %714, %715
  br i1 %716, label %717, label %741

; <label>:717                                     ; preds = %707
  %718 = load %union.rec*, %union.rec** %sym, align 8
  %719 = bitcast %union.rec* %718 to %struct.word_type*
  %720 = getelementptr inbounds %struct.word_type, %struct.word_type* %719, i32 0, i32 2
  %721 = bitcast %union.SECOND_UNION* %720 to %struct.anon.5*
  %722 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %721, i32 0, i32 1
  %723 = bitcast [3 x i8]* %722 to i24*
  %724 = load i24, i24* %723, align 1
  %725 = lshr i24 %724, 2
  %726 = and i24 %725, 1
  %727 = zext i24 %726 to i32
  %728 = icmp ne i32 %727, 0
  br i1 %728, label %744, label %729

; <label>:729                                     ; preds = %717
  %730 = load %union.rec*, %union.rec** %sym, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 2
  %733 = bitcast %union.SECOND_UNION* %732 to %struct.anon.5*
  %734 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %733, i32 0, i32 1
  %735 = bitcast [3 x i8]* %734 to i24*
  %736 = load i24, i24* %735, align 1
  %737 = lshr i24 %736, 3
  %738 = and i24 %737, 1
  %739 = zext i24 %738 to i32
  %740 = icmp ne i32 %739, 0
  br i1 %740, label %744, label %741

; <label>:741                                     ; preds = %729, %707
  %742 = load i32, i32* %2, align 4
  %743 = icmp sge i32 %742, 103
  br label %744

; <label>:744                                     ; preds = %741, %729, %717, %704
  %745 = phi i1 [ true, %729 ], [ true, %717 ], [ true, %704 ], [ %743, %741 ]
  %746 = zext i1 %745 to i32
  store i32 %746, i32* %braces_needed, align 4
  %747 = load %union.rec*, %union.rec** %env, align 8
  %748 = icmp ne %union.rec* %747, null
  br i1 %748, label %749, label %771

; <label>:749                                     ; preds = %744
  %750 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %751 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.25, i32 0, i32 0), %struct._IO_FILE* %750)
  %752 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %753 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %752)
  %754 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %755 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %754)
  %756 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %757 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %756)
  %758 = load i32*, i32** %3, align 8
  %759 = load i32, i32* %758, align 4
  %760 = add nsw i32 %759, 1
  store i32 %760, i32* %758, align 4
  %761 = load %union.rec*, %union.rec** %env, align 8
  %762 = load i32*, i32** %3, align 8
  %763 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %761, i32 0, i32* %762, i16 zeroext %763)
  %764 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %765 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %764)
  %766 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %767 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %766)
  %768 = load i32*, i32** %3, align 8
  %769 = load i32, i32* %768, align 4
  %770 = add nsw i32 %769, 1
  store i32 %770, i32* %768, align 4
  br label %771

; <label>:771                                     ; preds = %749, %744
  %772 = load i32, i32* %braces_needed, align 4
  %773 = icmp ne i32 %772, 0
  br i1 %773, label %774, label %777

; <label>:774                                     ; preds = %771
  %775 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %776 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %775)
  br label %777

; <label>:777                                     ; preds = %774, %771
  %778 = load %union.rec*, %union.rec** %1, align 8
  %779 = load i32*, i32** %3, align 8
  %780 = load i16, i16* %4, align 2
  %781 = load %union.rec*, %union.rec** %env, align 8
  call void @WriteClosure(%union.rec* %778, i32* %779, i16 zeroext %780, %union.rec* %781)
  %782 = load i32, i32* %braces_needed, align 4
  %783 = icmp ne i32 %782, 0
  br i1 %783, label %784, label %787

; <label>:784                                     ; preds = %777
  %785 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %786 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %785)
  br label %787

; <label>:787                                     ; preds = %784, %777
  br label %1283

; <label>:788                                     ; preds = %0, %0
  %789 = load %union.rec*, %union.rec** %1, align 8
  %790 = bitcast %union.rec* %789 to %struct.word_type*
  %791 = getelementptr inbounds %struct.word_type, %struct.word_type* %790, i32 0, i32 0
  %792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %791, i32 0, i64 0
  %793 = getelementptr inbounds %struct.LIST, %struct.LIST* %792, i32 0, i32 1
  %794 = load %union.rec*, %union.rec** %793, align 8
  %795 = bitcast %union.rec* %794 to %struct.word_type*
  %796 = getelementptr inbounds %struct.word_type, %struct.word_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %796, i32 0, i64 1
  %798 = getelementptr inbounds %struct.LIST, %struct.LIST* %797, i32 0, i32 0
  %799 = load %union.rec*, %union.rec** %798, align 8
  store %union.rec* %799, %union.rec** %y, align 8
  br label %800

; <label>:800                                     ; preds = %810, %788
  %801 = load %union.rec*, %union.rec** %y, align 8
  %802 = bitcast %union.rec* %801 to %struct.word_type*
  %803 = getelementptr inbounds %struct.word_type, %struct.word_type* %802, i32 0, i32 1
  %804 = bitcast %union.FIRST_UNION* %803 to %struct.anon*
  %805 = getelementptr inbounds %struct.anon, %struct.anon* %804, i32 0, i32 0
  %806 = load i8, i8* %805, align 1
  %807 = zext i8 %806 to i32
  %808 = icmp eq i32 %807, 0
  br i1 %808, label %809, label %817

; <label>:809                                     ; preds = %800
  br label %810

; <label>:810                                     ; preds = %809
  %811 = load %union.rec*, %union.rec** %y, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 0
  %814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %813, i32 0, i64 1
  %815 = getelementptr inbounds %struct.LIST, %struct.LIST* %814, i32 0, i32 0
  %816 = load %union.rec*, %union.rec** %815, align 8
  store %union.rec* %816, %union.rec** %y, align 8
  br label %800

; <label>:817                                     ; preds = %800
  %818 = load %union.rec*, %union.rec** %y, align 8
  %819 = bitcast %union.rec* %818 to %struct.word_type*
  %820 = getelementptr inbounds %struct.word_type, %struct.word_type* %819, i32 0, i32 1
  %821 = bitcast %union.FIRST_UNION* %820 to %struct.anon*
  %822 = getelementptr inbounds %struct.anon, %struct.anon* %821, i32 0, i32 0
  %823 = load i8, i8* %822, align 1
  %824 = zext i8 %823 to i32
  %825 = icmp eq i32 %824, 2
  br i1 %825, label %829, label %826

; <label>:826                                     ; preds = %817
  %827 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %828 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %827, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.26, i32 0, i32 0))
  br label %829

; <label>:829                                     ; preds = %826, %817
  %830 = load i32, i32* %2, align 4
  %831 = icmp sle i32 100, %830
  br i1 %831, label %832, label %835

; <label>:832                                     ; preds = %829
  %833 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %834 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %833)
  br label %835

; <label>:835                                     ; preds = %832, %829
  %836 = load %union.rec*, %union.rec** %y, align 8
  %837 = bitcast %union.rec* %836 to %struct.closure_type*
  %838 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %837, i32 0, i32 5
  %839 = load %union.rec*, %union.rec** %838, align 8
  %840 = call i32 @need_lvis(%union.rec* %839)
  %841 = icmp ne i32 %840, 0
  br i1 %841, label %842, label %847

; <label>:842                                     ; preds = %835
  %843 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %844 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %843)
  %845 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %846 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %845)
  br label %847

; <label>:847                                     ; preds = %842, %835
  %848 = load %union.rec*, %union.rec** %y, align 8
  %849 = bitcast %union.rec* %848 to %struct.closure_type*
  %850 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %849, i32 0, i32 5
  %851 = load %union.rec*, %union.rec** %850, align 8
  %852 = call i8* @SymName(%union.rec* %851)
  %853 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %854 = call i32 @fputs(i8* %852, %struct._IO_FILE* %853)
  %855 = load %union.rec*, %union.rec** %1, align 8
  %856 = bitcast %union.rec* %855 to %struct.word_type*
  %857 = getelementptr inbounds %struct.word_type, %struct.word_type* %856, i32 0, i32 1
  %858 = bitcast %union.FIRST_UNION* %857 to %struct.anon*
  %859 = getelementptr inbounds %struct.anon, %struct.anon* %858, i32 0, i32 0
  %860 = load i8, i8* %859, align 1
  %861 = zext i8 %860 to i32
  %862 = icmp eq i32 %861, 6
  %863 = select i1 %862, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0)
  %864 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %865 = call i32 @fputs(i8* %863, %struct._IO_FILE* %864)
  %866 = load %union.rec*, %union.rec** %1, align 8
  %867 = bitcast %union.rec* %866 to %struct.word_type*
  %868 = getelementptr inbounds %struct.word_type, %struct.word_type* %867, i32 0, i32 0
  %869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %868, i32 0, i64 0
  %870 = getelementptr inbounds %struct.LIST, %struct.LIST* %869, i32 0, i32 0
  %871 = load %union.rec*, %union.rec** %870, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 0
  %874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %873, i32 0, i64 1
  %875 = getelementptr inbounds %struct.LIST, %struct.LIST* %874, i32 0, i32 0
  %876 = load %union.rec*, %union.rec** %875, align 8
  store %union.rec* %876, %union.rec** %y, align 8
  br label %877

; <label>:877                                     ; preds = %887, %847
  %878 = load %union.rec*, %union.rec** %y, align 8
  %879 = bitcast %union.rec* %878 to %struct.word_type*
  %880 = getelementptr inbounds %struct.word_type, %struct.word_type* %879, i32 0, i32 1
  %881 = bitcast %union.FIRST_UNION* %880 to %struct.anon*
  %882 = getelementptr inbounds %struct.anon, %struct.anon* %881, i32 0, i32 0
  %883 = load i8, i8* %882, align 1
  %884 = zext i8 %883 to i32
  %885 = icmp eq i32 %884, 0
  br i1 %885, label %886, label %894

; <label>:886                                     ; preds = %877
  br label %887

; <label>:887                                     ; preds = %886
  %888 = load %union.rec*, %union.rec** %y, align 8
  %889 = bitcast %union.rec* %888 to %struct.word_type*
  %890 = getelementptr inbounds %struct.word_type, %struct.word_type* %889, i32 0, i32 0
  %891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %890, i32 0, i64 1
  %892 = getelementptr inbounds %struct.LIST, %struct.LIST* %891, i32 0, i32 0
  %893 = load %union.rec*, %union.rec** %892, align 8
  store %union.rec* %893, %union.rec** %y, align 8
  br label %877

; <label>:894                                     ; preds = %877
  %895 = load %union.rec*, %union.rec** %y, align 8
  %896 = load i32*, i32** %3, align 8
  %897 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %895, i32 105, i32* %896, i16 zeroext %897)
  %898 = load i32, i32* %2, align 4
  %899 = icmp sle i32 100, %898
  br i1 %899, label %900, label %903

; <label>:900                                     ; preds = %894
  %901 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %902 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %901)
  br label %903

; <label>:903                                     ; preds = %900, %894
  br label %1283

; <label>:904                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.30, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:905                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.31, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:906                                     ; preds = %0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.32, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:907                                     ; preds = %0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.33, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:908                                     ; preds = %0
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.34, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:909                                     ; preds = %0
  store i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.35, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:910                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.36, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:911                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.37, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:912                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.38, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:913                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.39, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:914                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.40, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:915                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.41, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:916                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:917                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:918                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:919                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.45, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:920                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:921                                     ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.47, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:922                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.48, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:923                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.49, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:924                                     ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.50, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:925                                     ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.51, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:926                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.52, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:927                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.53, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:928                                     ; preds = %0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:929                                     ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.55, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:930                                     ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.56, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:931                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:932                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:933                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.59, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:934                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.60, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:935                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.61, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:936                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.62, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:937                                     ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.63, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:938                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.64, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:939                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.65, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:940                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.66, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:941                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.67, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:942                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.68, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:943                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.69, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:944                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.70, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:945                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.71, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:946                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.72, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:947                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.73, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:948                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.74, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:949                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.75, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:950                                     ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.76, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:951                                     ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.77, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:952                                     ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.78, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:953                                     ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.79, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:954                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.80, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:955                                     ; preds = %0
  store i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.81, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:956                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.82, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:957                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.83, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:958                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.84, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:959                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.85, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:960                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.86, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:961                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.87, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:962                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.88, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:963                                     ; preds = %0
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.89, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:964                                     ; preds = %0
  store i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.90, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:965                                     ; preds = %0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.91, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:966                                     ; preds = %0
  store i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.92, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:967                                     ; preds = %0
  store i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.93, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:968                                     ; preds = %0
  store i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.94, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:969                                     ; preds = %0
  store i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.95, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:970                                     ; preds = %0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.96, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:971                                     ; preds = %0
  store i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.97, i32 0, i32 0), i8** %name, align 8
  br label %972

; <label>:972                                     ; preds = %971, %970, %969, %968, %967, %966, %965, %964, %963, %962, %961, %960, %959, %958, %957, %956, %955, %954, %953, %952, %951, %950, %949, %948, %947, %946, %945, %944, %943, %942, %941, %940, %939, %938, %937, %936, %935, %934, %933, %932, %931, %930, %929, %928, %927, %926, %925, %924, %923, %922, %921, %920, %919, %918, %917, %916, %915, %914, %913, %912, %911, %910, %909, %908, %907, %906, %905, %904
  %973 = load i32, i32* %2, align 4
  %974 = icmp sle i32 100, %973
  br i1 %974, label %975, label %978

; <label>:975                                     ; preds = %972
  %976 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %977 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %976)
  br label %978

; <label>:978                                     ; preds = %975, %972
  %979 = load %union.rec*, %union.rec** %1, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 0
  %982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %981, i32 0, i64 0
  %983 = getelementptr inbounds %struct.LIST, %struct.LIST* %982, i32 0, i32 1
  %984 = load %union.rec*, %union.rec** %983, align 8
  %985 = load %union.rec*, %union.rec** %1, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 0
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 0
  %990 = load %union.rec*, %union.rec** %989, align 8
  %991 = icmp ne %union.rec* %984, %990
  br i1 %991, label %992, label %1027

; <label>:992                                     ; preds = %978
  %993 = load %union.rec*, %union.rec** %1, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 0
  %996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %995, i32 0, i64 0
  %997 = getelementptr inbounds %struct.LIST, %struct.LIST* %996, i32 0, i32 1
  %998 = load %union.rec*, %union.rec** %997, align 8
  %999 = bitcast %union.rec* %998 to %struct.word_type*
  %1000 = getelementptr inbounds %struct.word_type, %struct.word_type* %999, i32 0, i32 0
  %1001 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1000, i32 0, i64 1
  %1002 = getelementptr inbounds %struct.LIST, %struct.LIST* %1001, i32 0, i32 0
  %1003 = load %union.rec*, %union.rec** %1002, align 8
  store %union.rec* %1003, %union.rec** %y, align 8
  br label %1004

; <label>:1004                                    ; preds = %1014, %992
  %1005 = load %union.rec*, %union.rec** %y, align 8
  %1006 = bitcast %union.rec* %1005 to %struct.word_type*
  %1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %1006, i32 0, i32 1
  %1008 = bitcast %union.FIRST_UNION* %1007 to %struct.anon*
  %1009 = getelementptr inbounds %struct.anon, %struct.anon* %1008, i32 0, i32 0
  %1010 = load i8, i8* %1009, align 1
  %1011 = zext i8 %1010 to i32
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1021

; <label>:1013                                    ; preds = %1004
  br label %1014

; <label>:1014                                    ; preds = %1013
  %1015 = load %union.rec*, %union.rec** %y, align 8
  %1016 = bitcast %union.rec* %1015 to %struct.word_type*
  %1017 = getelementptr inbounds %struct.word_type, %struct.word_type* %1016, i32 0, i32 0
  %1018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1017, i32 0, i64 1
  %1019 = getelementptr inbounds %struct.LIST, %struct.LIST* %1018, i32 0, i32 0
  %1020 = load %union.rec*, %union.rec** %1019, align 8
  store %union.rec* %1020, %union.rec** %y, align 8
  br label %1004

; <label>:1021                                    ; preds = %1004
  %1022 = load %union.rec*, %union.rec** %y, align 8
  %1023 = load i32*, i32** %3, align 8
  %1024 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %1022, i32 100, i32* %1023, i16 zeroext %1024)
  %1025 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1026 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %1025)
  br label %1027

; <label>:1027                                    ; preds = %1021, %978
  %1028 = load i8*, i8** %name, align 8
  %1029 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1030 = call i32 @fputs(i8* %1028, %struct._IO_FILE* %1029)
  %1031 = load %union.rec*, %union.rec** %1, align 8
  %1032 = bitcast %union.rec* %1031 to %struct.word_type*
  %1033 = getelementptr inbounds %struct.word_type, %struct.word_type* %1032, i32 0, i32 0
  %1034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1033, i32 0, i64 0
  %1035 = getelementptr inbounds %struct.LIST, %struct.LIST* %1034, i32 0, i32 0
  %1036 = load %union.rec*, %union.rec** %1035, align 8
  %1037 = load %union.rec*, %union.rec** %1, align 8
  %1038 = icmp ne %union.rec* %1036, %1037
  br i1 %1038, label %1039, label %1092

; <label>:1039                                    ; preds = %1027
  %1040 = load %union.rec*, %union.rec** %1, align 8
  %1041 = bitcast %union.rec* %1040 to %struct.word_type*
  %1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %1041, i32 0, i32 0
  %1043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1042, i32 0, i64 0
  %1044 = getelementptr inbounds %struct.LIST, %struct.LIST* %1043, i32 0, i32 0
  %1045 = load %union.rec*, %union.rec** %1044, align 8
  %1046 = bitcast %union.rec* %1045 to %struct.word_type*
  %1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %1046, i32 0, i32 0
  %1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1047, i32 0, i64 1
  %1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %1048, i32 0, i32 0
  %1050 = load %union.rec*, %union.rec** %1049, align 8
  store %union.rec* %1050, %union.rec** %y, align 8
  br label %1051

; <label>:1051                                    ; preds = %1061, %1039
  %1052 = load %union.rec*, %union.rec** %y, align 8
  %1053 = bitcast %union.rec* %1052 to %struct.word_type*
  %1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %1053, i32 0, i32 1
  %1055 = bitcast %union.FIRST_UNION* %1054 to %struct.anon*
  %1056 = getelementptr inbounds %struct.anon, %struct.anon* %1055, i32 0, i32 0
  %1057 = load i8, i8* %1056, align 1
  %1058 = zext i8 %1057 to i32
  %1059 = icmp eq i32 %1058, 0
  br i1 %1059, label %1060, label %1068

; <label>:1060                                    ; preds = %1051
  br label %1061

; <label>:1061                                    ; preds = %1060
  %1062 = load %union.rec*, %union.rec** %y, align 8
  %1063 = bitcast %union.rec* %1062 to %struct.word_type*
  %1064 = getelementptr inbounds %struct.word_type, %struct.word_type* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1064, i32 0, i64 1
  %1066 = getelementptr inbounds %struct.LIST, %struct.LIST* %1065, i32 0, i32 0
  %1067 = load %union.rec*, %union.rec** %1066, align 8
  store %union.rec* %1067, %union.rec** %y, align 8
  br label %1051

; <label>:1068                                    ; preds = %1051
  %1069 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1070 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %1069)
  %1071 = load %union.rec*, %union.rec** %1, align 8
  %1072 = bitcast %union.rec* %1071 to %struct.word_type*
  %1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %1072, i32 0, i32 1
  %1074 = bitcast %union.FIRST_UNION* %1073 to %struct.anon*
  %1075 = getelementptr inbounds %struct.anon, %struct.anon* %1074, i32 0, i32 0
  %1076 = load i8, i8* %1075, align 1
  %1077 = zext i8 %1076 to i32
  %1078 = icmp eq i32 %1077, 92
  br i1 %1078, label %1079, label %1087

; <label>:1079                                    ; preds = %1068
  %1080 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1081 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %1080)
  %1082 = load %union.rec*, %union.rec** %y, align 8
  %1083 = load i32*, i32** %3, align 8
  %1084 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %1082, i32 0, i32* %1083, i16 zeroext %1084)
  %1085 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1086 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %1085)
  br label %1091

; <label>:1087                                    ; preds = %1068
  %1088 = load %union.rec*, %union.rec** %y, align 8
  %1089 = load i32*, i32** %3, align 8
  %1090 = load i16, i16* %4, align 2
  call void @WriteObject(%union.rec* %1088, i32 100, i32* %1089, i16 zeroext %1090)
  br label %1091

; <label>:1091                                    ; preds = %1087, %1079
  br label %1092

; <label>:1092                                    ; preds = %1091, %1027
  %1093 = load i32, i32* %2, align 4
  %1094 = icmp sle i32 100, %1093
  br i1 %1094, label %1095, label %1098

; <label>:1095                                    ; preds = %1092
  %1096 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1097 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %1096)
  br label %1098

; <label>:1098                                    ; preds = %1095, %1092
  br label %1283

; <label>:1099                                    ; preds = %0, %0
  %1100 = load %union.rec*, %union.rec** %1, align 8
  %1101 = bitcast %union.rec* %1100 to %struct.word_type*
  %1102 = getelementptr inbounds %struct.word_type, %struct.word_type* %1101, i32 0, i32 1
  %1103 = bitcast %union.FIRST_UNION* %1102 to %struct.anon*
  %1104 = getelementptr inbounds %struct.anon, %struct.anon* %1103, i32 0, i32 0
  %1105 = load i8, i8* %1104, align 1
  %1106 = zext i8 %1105 to i32
  %1107 = icmp eq i32 %1106, 53
  %1108 = select i1 %1107, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0)
  %1109 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1110 = call i32 @fputs(i8* %1108, %struct._IO_FILE* %1109)
  %1111 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1112 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %1111)
  %1113 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1114 = call i32 @fputs(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.100, i32 0, i32 0), %struct._IO_FILE* %1113)
  %1115 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1116 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %1115)
  %1117 = load %union.rec*, %union.rec** %1, align 8
  %1118 = bitcast %union.rec* %1117 to %struct.word_type*
  %1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %1118, i32 0, i32 0
  %1120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1119, i32 0, i64 0
  %1121 = getelementptr inbounds %struct.LIST, %struct.LIST* %1120, i32 0, i32 1
  %1122 = load %union.rec*, %union.rec** %1121, align 8
  %1123 = bitcast %union.rec* %1122 to %struct.word_type*
  %1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %1123, i32 0, i32 0
  %1125 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1124, i32 0, i64 1
  %1126 = getelementptr inbounds %struct.LIST, %struct.LIST* %1125, i32 0, i32 0
  %1127 = load %union.rec*, %union.rec** %1126, align 8
  store %union.rec* %1127, %union.rec** %y, align 8
  br label %1128

; <label>:1128                                    ; preds = %1138, %1099
  %1129 = load %union.rec*, %union.rec** %y, align 8
  %1130 = bitcast %union.rec* %1129 to %struct.word_type*
  %1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %1130, i32 0, i32 1
  %1132 = bitcast %union.FIRST_UNION* %1131 to %struct.anon*
  %1133 = getelementptr inbounds %struct.anon, %struct.anon* %1132, i32 0, i32 0
  %1134 = load i8, i8* %1133, align 1
  %1135 = zext i8 %1134 to i32
  %1136 = icmp eq i32 %1135, 0
  br i1 %1136, label %1137, label %1145

; <label>:1137                                    ; preds = %1128
  br label %1138

; <label>:1138                                    ; preds = %1137
  %1139 = load %union.rec*, %union.rec** %y, align 8
  %1140 = bitcast %union.rec* %1139 to %struct.word_type*
  %1141 = getelementptr inbounds %struct.word_type, %struct.word_type* %1140, i32 0, i32 0
  %1142 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1141, i32 0, i64 1
  %1143 = getelementptr inbounds %struct.LIST, %struct.LIST* %1142, i32 0, i32 0
  %1144 = load %union.rec*, %union.rec** %1143, align 8
  store %union.rec* %1144, %union.rec** %y, align 8
  br label %1128

; <label>:1145                                    ; preds = %1128
  %1146 = load %union.rec*, %union.rec** %y, align 8
  %1147 = bitcast %union.rec* %1146 to %struct.word_type*
  %1148 = getelementptr inbounds %struct.word_type, %struct.word_type* %1147, i32 0, i32 1
  %1149 = bitcast %union.FIRST_UNION* %1148 to %struct.anon*
  %1150 = getelementptr inbounds %struct.anon, %struct.anon* %1149, i32 0, i32 0
  %1151 = load i8, i8* %1150, align 1
  %1152 = zext i8 %1151 to i32
  %1153 = icmp eq i32 %1152, 11
  br i1 %1153, label %1154, label %1163

; <label>:1154                                    ; preds = %1145
  %1155 = load %union.rec*, %union.rec** %y, align 8
  %1156 = bitcast %union.rec* %1155 to %struct.word_type*
  %1157 = getelementptr inbounds %struct.word_type, %struct.word_type* %1156, i32 0, i32 4
  %1158 = getelementptr inbounds [4 x i8], [4 x i8]* %1157, i32 0, i32 0
  %1159 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1160 = call i32 @fputs(i8* %1158, %struct._IO_FILE* %1159)
  %1161 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1162 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %1161)
  br label %1252

; <label>:1163                                    ; preds = %1145
  %1164 = load %union.rec*, %union.rec** %y, align 8
  %1165 = bitcast %union.rec* %1164 to %struct.word_type*
  %1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %1165, i32 0, i32 1
  %1167 = bitcast %union.FIRST_UNION* %1166 to %struct.anon*
  %1168 = getelementptr inbounds %struct.anon, %struct.anon* %1167, i32 0, i32 0
  %1169 = load i8, i8* %1168, align 1
  %1170 = zext i8 %1169 to i32
  %1171 = icmp eq i32 %1170, 19
  br i1 %1171, label %1175, label %1172

; <label>:1172                                    ; preds = %1163
  %1173 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1174 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %1173, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.101, i32 0, i32 0))
  br label %1175

; <label>:1175                                    ; preds = %1172, %1163
  %1176 = load %union.rec*, %union.rec** %y, align 8
  %1177 = bitcast %union.rec* %1176 to %struct.word_type*
  %1178 = getelementptr inbounds %struct.word_type, %struct.word_type* %1177, i32 0, i32 0
  %1179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1178, i32 0, i64 0
  %1180 = getelementptr inbounds %struct.LIST, %struct.LIST* %1179, i32 0, i32 1
  %1181 = load %union.rec*, %union.rec** %1180, align 8
  store %union.rec* %1181, %union.rec** %link, align 8
  br label %1182

; <label>:1182                                    ; preds = %1244, %1175
  %1183 = load %union.rec*, %union.rec** %link, align 8
  %1184 = load %union.rec*, %union.rec** %y, align 8
  %1185 = icmp ne %union.rec* %1183, %1184
  br i1 %1185, label %1186, label %1251

; <label>:1186                                    ; preds = %1182
  %1187 = load %union.rec*, %union.rec** %link, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1189, i32 0, i64 1
  %1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %1190, i32 0, i32 0
  %1192 = load %union.rec*, %union.rec** %1191, align 8
  store %union.rec* %1192, %union.rec** %z, align 8
  br label %1193

; <label>:1193                                    ; preds = %1203, %1186
  %1194 = load %union.rec*, %union.rec** %z, align 8
  %1195 = bitcast %union.rec* %1194 to %struct.word_type*
  %1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %1195, i32 0, i32 1
  %1197 = bitcast %union.FIRST_UNION* %1196 to %struct.anon*
  %1198 = getelementptr inbounds %struct.anon, %struct.anon* %1197, i32 0, i32 0
  %1199 = load i8, i8* %1198, align 1
  %1200 = zext i8 %1199 to i32
  %1201 = icmp eq i32 %1200, 0
  br i1 %1201, label %1202, label %1210

; <label>:1202                                    ; preds = %1193
  br label %1203

; <label>:1203                                    ; preds = %1202
  %1204 = load %union.rec*, %union.rec** %z, align 8
  %1205 = bitcast %union.rec* %1204 to %struct.word_type*
  %1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1206, i32 0, i64 1
  %1208 = getelementptr inbounds %struct.LIST, %struct.LIST* %1207, i32 0, i32 0
  %1209 = load %union.rec*, %union.rec** %1208, align 8
  store %union.rec* %1209, %union.rec** %z, align 8
  br label %1193

; <label>:1210                                    ; preds = %1193
  %1211 = load %union.rec*, %union.rec** %z, align 8
  %1212 = bitcast %union.rec* %1211 to %struct.word_type*
  %1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %1212, i32 0, i32 1
  %1214 = bitcast %union.FIRST_UNION* %1213 to %struct.anon*
  %1215 = getelementptr inbounds %struct.anon, %struct.anon* %1214, i32 0, i32 0
  %1216 = load i8, i8* %1215, align 1
  %1217 = zext i8 %1216 to i32
  %1218 = icmp eq i32 %1217, 1
  br i1 %1218, label %1219, label %1220

; <label>:1219                                    ; preds = %1210
  br label %1244

; <label>:1220                                    ; preds = %1210
  %1221 = load %union.rec*, %union.rec** %z, align 8
  %1222 = bitcast %union.rec* %1221 to %struct.word_type*
  %1223 = getelementptr inbounds %struct.word_type, %struct.word_type* %1222, i32 0, i32 1
  %1224 = bitcast %union.FIRST_UNION* %1223 to %struct.anon*
  %1225 = getelementptr inbounds %struct.anon, %struct.anon* %1224, i32 0, i32 0
  %1226 = load i8, i8* %1225, align 1
  %1227 = zext i8 %1226 to i32
  %1228 = icmp eq i32 %1227, 11
  br i1 %1228, label %1232, label %1229

; <label>:1229                                    ; preds = %1220
  %1230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1231 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %1230, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.102, i32 0, i32 0))
  br label %1232

; <label>:1232                                    ; preds = %1229, %1220
  %1233 = load %union.rec*, %union.rec** %z, align 8
  %1234 = bitcast %union.rec* %1233 to %struct.word_type*
  %1235 = getelementptr inbounds %struct.word_type, %struct.word_type* %1234, i32 0, i32 4
  %1236 = getelementptr inbounds [4 x i8], [4 x i8]* %1235, i32 0, i32 0
  %1237 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1238 = call i32 @fputs(i8* %1236, %struct._IO_FILE* %1237)
  %1239 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1240 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %1239)
  %1241 = load i32*, i32** %3, align 8
  %1242 = load i32, i32* %1241, align 4
  %1243 = add nsw i32 %1242, 1
  store i32 %1243, i32* %1241, align 4
  br label %1244

; <label>:1244                                    ; preds = %1232, %1219
  %1245 = load %union.rec*, %union.rec** %link, align 8
  %1246 = bitcast %union.rec* %1245 to %struct.word_type*
  %1247 = getelementptr inbounds %struct.word_type, %struct.word_type* %1246, i32 0, i32 0
  %1248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1247, i32 0, i64 0
  %1249 = getelementptr inbounds %struct.LIST, %struct.LIST* %1248, i32 0, i32 1
  %1250 = load %union.rec*, %union.rec** %1249, align 8
  store %union.rec* %1250, %union.rec** %link, align 8
  br label %1182

; <label>:1251                                    ; preds = %1182
  br label %1252

; <label>:1252                                    ; preds = %1251, %1154
  %1253 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1254 = call i32 @fputs(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.103, i32 0, i32 0), %struct._IO_FILE* %1253)
  %1255 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1256 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %1255)
  %1257 = load %union.rec*, %union.rec** %1, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 1
  %1260 = bitcast %union.FIRST_UNION* %1259 to %struct.anon*
  %1261 = getelementptr inbounds %struct.anon, %struct.anon* %1260, i32 0, i32 0
  %1262 = load i8, i8* %1261, align 1
  %1263 = zext i8 %1262 to i32
  %1264 = icmp eq i32 %1263, 53
  %1265 = select i1 %1264, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.98, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.99, i32 0, i32 0)
  %1266 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1267 = call i32 @fputs(i8* %1265, %struct._IO_FILE* %1266)
  br label %1283

; <label>:1268                                    ; preds = %0
  %1269 = load %union.rec*, %union.rec** %1, align 8
  %1270 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %1271 = load i32*, i32** %3, align 8
  call void @FilterWrite(%union.rec* %1269, %struct._IO_FILE* %1270, i32* %1271)
  br label %1283

; <label>:1272                                    ; preds = %0
  %1273 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1274 = load %union.rec*, %union.rec** %1, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 1
  %1277 = bitcast %union.FIRST_UNION* %1276 to %struct.anon*
  %1278 = getelementptr inbounds %struct.anon, %struct.anon* %1277, i32 0, i32 0
  %1279 = load i8, i8* %1278, align 1
  %1280 = zext i8 %1279 to i32
  %1281 = call i8* @Image(i32 %1280)
  %1282 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i32 0, %struct.FILE_POS* %1273, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.105, i32 0, i32 0), i8* %1281)
  br label %1283

; <label>:1283                                    ; preds = %1272, %1268, %1252, %1098, %903, %787, %649, %398, %35, %34
  ret void
}

declare void @FileSetUpdated(i16 zeroext, i32) #1

; Function Attrs: nounwind uwtable
define void @CloseFiles() #0 {
  %fnum = alloca i16, align 2
  %oldname = alloca [512 x i8], align 16
  %newname = alloca [512 x i8], align 16
  %fp = alloca %struct._IO_FILE*, align 8
  %1 = load i16, i16* @last_write_fnum, align 2
  %2 = zext i16 %1 to i32
  %3 = icmp ne i32 %2, 0
  br i1 %3, label %4, label %7

; <label>:4                                       ; preds = %0
  %5 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %6 = call i32 @fclose(%struct._IO_FILE* %5)
  br label %7

; <label>:7                                       ; preds = %4, %0
  %8 = call zeroext i16 @FirstFile(i32 0)
  store i16 %8, i16* %fnum, align 2
  br label %9

; <label>:9                                       ; preds = %22, %7
  %10 = load i16, i16* %fnum, align 2
  %11 = zext i16 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %25

; <label>:13                                      ; preds = %9
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %15 = load i16, i16* %fnum, align 2
  %16 = call i8* @FileName(i16 zeroext %15)
  %17 = call i8* @strcpy(i8* %14, i8* %16) #5
  %18 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %19 = call i8* @strcat(i8* %18, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i32 0, i32 0)) #5
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %21 = call i32 @remove(i8* %20) #5
  br label %22

; <label>:22                                      ; preds = %13
  %23 = load i16, i16* %fnum, align 2
  %24 = call zeroext i16 @NextFile(i16 zeroext %23)
  store i16 %24, i16* %fnum, align 2
  br label %9

; <label>:25                                      ; preds = %9
  %26 = call zeroext i16 @FirstFile(i32 3)
  store i16 %26, i16* %fnum, align 2
  br label %27

; <label>:27                                      ; preds = %65, %25
  %28 = load i16, i16* %fnum, align 2
  %29 = zext i16 %28 to i32
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %68

; <label>:31                                      ; preds = %27
  %32 = load i16, i16* %fnum, align 2
  %33 = call i32 @FileTestUpdated(i16 zeroext %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %64

; <label>:35                                      ; preds = %31
  %36 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %37 = load i16, i16* %fnum, align 2
  %38 = call i8* @FileName(i16 zeroext %37)
  %39 = call i8* @strcpy(i8* %36, i8* %38) #5
  %40 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %41 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %42 = call i8* @strcpy(i8* %40, i8* %41) #5
  %43 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %44 = call i8* @strcat(i8* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i32 0, i32 0)) #5
  %45 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %46 = call %struct._IO_FILE* @fopen(i8* %45, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.11, i32 0, i32 0))
  store %struct._IO_FILE* %46, %struct._IO_FILE** %fp, align 8
  %47 = icmp ne %struct._IO_FILE* %46, null
  br i1 %47, label %48, label %53

; <label>:48                                      ; preds = %35
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %50 = call i32 @fclose(%struct._IO_FILE* %49)
  %51 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %52 = call i32 @remove(i8* %51) #5
  br label %53

; <label>:53                                      ; preds = %48, %35
  %54 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %55 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %56 = call i32 @rename(i8* %54, i8* %55) #5
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %63

; <label>:58                                      ; preds = %53
  %59 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %61 = getelementptr inbounds [512 x i8], [512 x i8]* %oldname, i32 0, i32 0
  %62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 41, i32 5, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %59, i8* %60, i8* %61)
  br label %63

; <label>:63                                      ; preds = %58, %53
  br label %64

; <label>:64                                      ; preds = %63, %31
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load i16, i16* %fnum, align 2
  %67 = call zeroext i16 @NextFile(i16 zeroext %66)
  store i16 %67, i16* %fnum, align 2
  br label %27

; <label>:68                                      ; preds = %27
  ret void
}

declare zeroext i16 @FirstFile(i32) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

declare zeroext i16 @NextFile(i16 zeroext) #1

; Function Attrs: nounwind
declare i32 @rename(i8*, i8*) #3

declare i8* @StringQuotedWord(%union.rec*) #1

declare i8* @EchoCatOp(i32, i32, i32) #1

declare i32 @EnvWriteRetrieve(%union.rec*, i16 zeroext, i32*, i32*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare void @EnvWriteInsert(%union.rec*, i16 zeroext, i32, i32) #1

; Function Attrs: nounwind uwtable
define internal void @WriteClosure(%union.rec* %x, i32* %linecount, i16 zeroext %fnum, %union.rec* %env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i16, align 2
  %4 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %npar_written = alloca i32, align 4
  %name_printed = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32* %linecount, i32** %2, align 8
  store i16 %fnum, i16* %3, align 2
  store %union.rec* %env, %union.rec** %4, align 8
  %5 = load %union.rec*, %union.rec** %1, align 8
  %6 = bitcast %union.rec* %5 to %struct.closure_type*
  %7 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %6, i32 0, i32 5
  %8 = load %union.rec*, %union.rec** %7, align 8
  store %union.rec* %8, %union.rec** %sym, align 8
  %9 = load %union.rec*, %union.rec** %sym, align 8
  %10 = bitcast %union.rec* %9 to %struct.symbol_type*
  %11 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %10, i32 0, i32 11
  %12 = load %union.rec*, %union.rec** %11, align 8
  %13 = icmp ne %union.rec* %12, null
  br i1 %13, label %14, label %23

; <label>:14                                      ; preds = %0
  %15 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %16 = call i32 @fputs(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.106, i32 0, i32 0), %struct._IO_FILE* %15)
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %18 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %17)
  %19 = load %union.rec*, %union.rec** %sym, align 8
  %20 = call i8* @SymName(%union.rec* %19)
  %21 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %22 = call i32 @fputs(i8* %20, %struct._IO_FILE* %21)
  br label %419

; <label>:23                                      ; preds = %0
  store i32 0, i32* %npar_written, align 4
  store i32 0, i32* %name_printed, align 4
  %24 = load %union.rec*, %union.rec** %1, align 8
  %25 = load %union.rec*, %union.rec** %4, align 8
  call void @OptimizeParameterList(%union.rec* %24, %union.rec* %25)
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 0
  %29 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %28, i32 0, i64 0
  %30 = getelementptr inbounds %struct.LIST, %struct.LIST* %29, i32 0, i32 1
  %31 = load %union.rec*, %union.rec** %30, align 8
  store %union.rec* %31, %union.rec** %link, align 8
  br label %32

; <label>:32                                      ; preds = %394, %23
  %33 = load %union.rec*, %union.rec** %link, align 8
  %34 = load %union.rec*, %union.rec** %1, align 8
  %35 = icmp ne %union.rec* %33, %34
  br i1 %35, label %36, label %401

; <label>:36                                      ; preds = %32
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
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 1
  %64 = bitcast %union.FIRST_UNION* %63 to %struct.anon*
  %65 = getelementptr inbounds %struct.anon, %struct.anon* %64, i32 0, i32 0
  %66 = load i8, i8* %65, align 1
  %67 = zext i8 %66 to i32
  %68 = icmp eq i32 %67, 10
  br i1 %68, label %69, label %393

; <label>:69                                      ; preds = %60
  %70 = load %union.rec*, %union.rec** %y, align 8
  %71 = bitcast %union.rec* %70 to %struct.closure_type*
  %72 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %71, i32 0, i32 5
  %73 = load %union.rec*, %union.rec** %72, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 1
  %76 = bitcast %union.FIRST_UNION* %75 to %struct.anon*
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  switch i32 %79, label %378 [
    i32 144, label %80
    i32 145, label %134
    i32 146, label %240
  ]

; <label>:80                                      ; preds = %69
  %81 = load %union.rec*, %union.rec** %y, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 0
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %85, align 8
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = icmp ne %union.rec* %86, %87
  br i1 %88, label %92, label %89

; <label>:89                                      ; preds = %80
  %90 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %91 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %90, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.107, i32 0, i32 0))
  br label %92

; <label>:92                                      ; preds = %89, %80
  %93 = load %union.rec*, %union.rec** %y, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 0
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 1
  %98 = load %union.rec*, %union.rec** %97, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  %103 = load %union.rec*, %union.rec** %102, align 8
  store %union.rec* %103, %union.rec** %z, align 8
  br label %104

; <label>:104                                     ; preds = %114, %92
  %105 = load %union.rec*, %union.rec** %z, align 8
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
  %115 = load %union.rec*, %union.rec** %z, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  store %union.rec* %120, %union.rec** %z, align 8
  br label %104

; <label>:121                                     ; preds = %104
  %122 = load %union.rec*, %union.rec** %z, align 8
  %123 = load %union.rec*, %union.rec** %sym, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 2
  %126 = bitcast %union.SECOND_UNION* %125 to %struct.anon.0*
  %127 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %126, i32 0, i32 0
  %128 = load i8, i8* %127, align 1
  %129 = zext i8 %128 to i32
  %130 = load i32*, i32** %2, align 8
  %131 = load i16, i16* %3, align 2
  call void @WriteObject(%union.rec* %122, i32 %129, i32* %130, i16 zeroext %131)
  %132 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %133 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %132)
  br label %392

; <label>:134                                     ; preds = %69
  %135 = load %union.rec*, %union.rec** %y, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 0
  %138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %137, i32 0, i64 0
  %139 = getelementptr inbounds %struct.LIST, %struct.LIST* %138, i32 0, i32 1
  %140 = load %union.rec*, %union.rec** %139, align 8
  %141 = load %union.rec*, %union.rec** %y, align 8
  %142 = icmp ne %union.rec* %140, %141
  br i1 %142, label %146, label %143

; <label>:143                                     ; preds = %134
  %144 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %145 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %144, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.108, i32 0, i32 0))
  br label %146

; <label>:146                                     ; preds = %143, %134
  %147 = load %union.rec*, %union.rec** %y, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %149, i32 0, i64 0
  %151 = getelementptr inbounds %struct.LIST, %struct.LIST* %150, i32 0, i32 1
  %152 = load %union.rec*, %union.rec** %151, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 0
  %155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %154, i32 0, i64 1
  %156 = getelementptr inbounds %struct.LIST, %struct.LIST* %155, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %156, align 8
  store %union.rec* %157, %union.rec** %z, align 8
  br label %158

; <label>:158                                     ; preds = %168, %146
  %159 = load %union.rec*, %union.rec** %z, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 1
  %162 = bitcast %union.FIRST_UNION* %161 to %struct.anon*
  %163 = getelementptr inbounds %struct.anon, %struct.anon* %162, i32 0, i32 0
  %164 = load i8, i8* %163, align 1
  %165 = zext i8 %164 to i32
  %166 = icmp eq i32 %165, 0
  br i1 %166, label %167, label %175

; <label>:167                                     ; preds = %158
  br label %168

; <label>:168                                     ; preds = %167
  %169 = load %union.rec*, %union.rec** %z, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 0
  %172 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %171, i32 0, i64 1
  %173 = getelementptr inbounds %struct.LIST, %struct.LIST* %172, i32 0, i32 0
  %174 = load %union.rec*, %union.rec** %173, align 8
  store %union.rec* %174, %union.rec** %z, align 8
  br label %158

; <label>:175                                     ; preds = %158
  %176 = load i32, i32* %name_printed, align 4
  %177 = icmp ne i32 %176, 0
  br i1 %177, label %192, label %178

; <label>:178                                     ; preds = %175
  %179 = load %union.rec*, %union.rec** %sym, align 8
  %180 = call i32 @need_lvis(%union.rec* %179)
  %181 = icmp ne i32 %180, 0
  br i1 %181, label %182, label %187

; <label>:182                                     ; preds = %178
  %183 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %184 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %183)
  %185 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %186 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %185)
  br label %187

; <label>:187                                     ; preds = %182, %178
  %188 = load %union.rec*, %union.rec** %sym, align 8
  %189 = call i8* @SymName(%union.rec* %188)
  %190 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %191 = call i32 @fputs(i8* %189, %struct._IO_FILE* %190)
  store i32 1, i32* %name_printed, align 4
  br label %192

; <label>:192                                     ; preds = %187, %175
  %193 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %194 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %193)
  %195 = load i32*, i32** %2, align 8
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %195, align 4
  %198 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %199 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %198)
  %200 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %201 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %200)
  %202 = load %union.rec*, %union.rec** %y, align 8
  %203 = bitcast %union.rec* %202 to %struct.closure_type*
  %204 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %203, i32 0, i32 5
  %205 = load %union.rec*, %union.rec** %204, align 8
  %206 = bitcast %union.rec* %205 to %struct.symbol_type*
  %207 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %206, i32 0, i32 15
  %208 = load i8, i8* %207, align 1
  %209 = zext i8 %208 to i32
  %210 = icmp ne i32 %209, 32
  br i1 %210, label %211, label %224

; <label>:211                                     ; preds = %192
  %212 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %213 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.109, i32 0, i32 0), %struct._IO_FILE* %212)
  %214 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %215 = load %union.rec*, %union.rec** %y, align 8
  %216 = bitcast %union.rec* %215 to %struct.closure_type*
  %217 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %216, i32 0, i32 5
  %218 = load %union.rec*, %union.rec** %217, align 8
  %219 = bitcast %union.rec* %218 to %struct.symbol_type*
  %220 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %219, i32 0, i32 15
  %221 = load i8, i8* %220, align 1
  %222 = sext i8 %221 to i32
  %223 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %214, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.110, i32 0, i32 0), i32 %222)
  br label %232

; <label>:224                                     ; preds = %192
  %225 = load %union.rec*, %union.rec** %y, align 8
  %226 = bitcast %union.rec* %225 to %struct.closure_type*
  %227 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %226, i32 0, i32 5
  %228 = load %union.rec*, %union.rec** %227, align 8
  %229 = call i8* @SymName(%union.rec* %228)
  %230 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %231 = call i32 @fputs(i8* %229, %struct._IO_FILE* %230)
  br label %232

; <label>:232                                     ; preds = %224, %211
  %233 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %234 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %233)
  %235 = load %union.rec*, %union.rec** %z, align 8
  %236 = load i32*, i32** %2, align 8
  %237 = load i16, i16* %3, align 2
  call void @WriteObject(%union.rec* %235, i32 0, i32* %236, i16 zeroext %237)
  %238 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %239 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %238)
  store i32 1, i32* %npar_written, align 4
  br label %392

; <label>:240                                     ; preds = %69
  %241 = load %union.rec*, %union.rec** %y, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 0
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 1
  %246 = load %union.rec*, %union.rec** %245, align 8
  %247 = load %union.rec*, %union.rec** %y, align 8
  %248 = icmp ne %union.rec* %246, %247
  br i1 %248, label %252, label %249

; <label>:249                                     ; preds = %240
  %250 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %251 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %250, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.111, i32 0, i32 0))
  br label %252

; <label>:252                                     ; preds = %249, %240
  %253 = load %union.rec*, %union.rec** %y, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 0
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 1
  %258 = load %union.rec*, %union.rec** %257, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 0
  %261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %260, i32 0, i64 1
  %262 = getelementptr inbounds %struct.LIST, %struct.LIST* %261, i32 0, i32 0
  %263 = load %union.rec*, %union.rec** %262, align 8
  store %union.rec* %263, %union.rec** %z, align 8
  br label %264

; <label>:264                                     ; preds = %274, %252
  %265 = load %union.rec*, %union.rec** %z, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 1
  %268 = bitcast %union.FIRST_UNION* %267 to %struct.anon*
  %269 = getelementptr inbounds %struct.anon, %struct.anon* %268, i32 0, i32 0
  %270 = load i8, i8* %269, align 1
  %271 = zext i8 %270 to i32
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %273, label %281

; <label>:273                                     ; preds = %264
  br label %274

; <label>:274                                     ; preds = %273
  %275 = load %union.rec*, %union.rec** %z, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 1
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 0
  %280 = load %union.rec*, %union.rec** %279, align 8
  store %union.rec* %280, %union.rec** %z, align 8
  br label %264

; <label>:281                                     ; preds = %264
  %282 = load i32, i32* %name_printed, align 4
  %283 = icmp ne i32 %282, 0
  br i1 %283, label %298, label %284

; <label>:284                                     ; preds = %281
  %285 = load %union.rec*, %union.rec** %sym, align 8
  %286 = call i32 @need_lvis(%union.rec* %285)
  %287 = icmp ne i32 %286, 0
  br i1 %287, label %288, label %293

; <label>:288                                     ; preds = %284
  %289 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %290 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %289)
  %291 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %292 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %291)
  br label %293

; <label>:293                                     ; preds = %288, %284
  %294 = load %union.rec*, %union.rec** %sym, align 8
  %295 = call i8* @SymName(%union.rec* %294)
  %296 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %297 = call i32 @fputs(i8* %295, %struct._IO_FILE* %296)
  store i32 1, i32* %name_printed, align 4
  br label %298

; <label>:298                                     ; preds = %293, %281
  %299 = load i32, i32* %npar_written, align 4
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %301, label %307

; <label>:301                                     ; preds = %298
  %302 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %303 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.9, i32 0, i32 0), %struct._IO_FILE* %302)
  %304 = load i32*, i32** %2, align 8
  %305 = load i32, i32* %304, align 4
  %306 = add nsw i32 %305, 1
  store i32 %306, i32* %304, align 4
  br label %310

; <label>:307                                     ; preds = %298
  %308 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %309 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %308)
  br label %310

; <label>:310                                     ; preds = %307, %301
  %311 = load %union.rec*, %union.rec** %sym, align 8
  %312 = bitcast %union.rec* %311 to %struct.symbol_type*
  %313 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %312, i32 0, i32 10
  %314 = load %union.rec*, %union.rec** %313, align 8
  %315 = icmp ne %union.rec* %314, null
  br i1 %315, label %316, label %341

; <label>:316                                     ; preds = %310
  %317 = load %union.rec*, %union.rec** %z, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 1
  %320 = bitcast %union.FIRST_UNION* %319 to %struct.anon*
  %321 = getelementptr inbounds %struct.anon, %struct.anon* %320, i32 0, i32 0
  %322 = load i8, i8* %321, align 1
  %323 = zext i8 %322 to i32
  %324 = icmp eq i32 %323, 57
  br i1 %324, label %325, label %341

; <label>:325                                     ; preds = %316
  %326 = load %union.rec*, %union.rec** %z, align 8
  %327 = bitcast %union.rec* %326 to %struct.word_type*
  %328 = getelementptr inbounds %struct.word_type, %struct.word_type* %327, i32 0, i32 1
  %329 = bitcast %union.FIRST_UNION* %328 to %struct.anon*
  %330 = getelementptr inbounds %struct.anon, %struct.anon* %329, i32 0, i32 0
  %331 = load i8, i8* %330, align 1
  %332 = zext i8 %331 to i32
  %333 = icmp eq i32 %332, 57
  br i1 %333, label %337, label %334

; <label>:334                                     ; preds = %325
  %335 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %336 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %335, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.112, i32 0, i32 0))
  br label %337

; <label>:337                                     ; preds = %334, %325
  %338 = load %union.rec*, %union.rec** %z, align 8
  %339 = load i32*, i32** %2, align 8
  %340 = load i16, i16* %3, align 2
  call void @WriteObject(%union.rec* %338, i32 0, i32* %339, i16 zeroext %340)
  br label %377

; <label>:341                                     ; preds = %316, %310
  %342 = load %union.rec*, %union.rec** %sym, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 2
  %345 = bitcast %union.SECOND_UNION* %344 to %struct.anon.5*
  %346 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %345, i32 0, i32 1
  %347 = bitcast [3 x i8]* %346 to i24*
  %348 = load i24, i24* %347, align 1
  %349 = lshr i24 %348, 8
  %350 = and i24 %349, 1
  %351 = zext i24 %350 to i32
  %352 = icmp ne i32 %351, 0
  br i1 %352, label %353, label %365

; <label>:353                                     ; preds = %341
  %354 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %355 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.7, i32 0, i32 0), %struct._IO_FILE* %354)
  %356 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %357 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %356)
  %358 = load %union.rec*, %union.rec** %z, align 8
  %359 = load i32*, i32** %2, align 8
  %360 = load i16, i16* %3, align 2
  call void @WriteObject(%union.rec* %358, i32 0, i32* %359, i16 zeroext %360)
  %361 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %362 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %361)
  %363 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %364 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i32 0, i32 0), %struct._IO_FILE* %363)
  br label %376

; <label>:365                                     ; preds = %341
  %366 = load %union.rec*, %union.rec** %z, align 8
  %367 = load %union.rec*, %union.rec** %sym, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 2
  %370 = bitcast %union.SECOND_UNION* %369 to %struct.anon.0*
  %371 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %370, i32 0, i32 0
  %372 = load i8, i8* %371, align 1
  %373 = zext i8 %372 to i32
  %374 = load i32*, i32** %2, align 8
  %375 = load i16, i16* %3, align 2
  call void @WriteObject(%union.rec* %366, i32 %373, i32* %374, i16 zeroext %375)
  br label %376

; <label>:376                                     ; preds = %365, %353
  br label %377

; <label>:377                                     ; preds = %376, %337
  br label %392

; <label>:378                                     ; preds = %69
  %379 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %380 = load %union.rec*, %union.rec** %y, align 8
  %381 = bitcast %union.rec* %380 to %struct.closure_type*
  %382 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %381, i32 0, i32 5
  %383 = load %union.rec*, %union.rec** %382, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 1
  %386 = bitcast %union.FIRST_UNION* %385 to %struct.anon*
  %387 = getelementptr inbounds %struct.anon, %struct.anon* %386, i32 0, i32 0
  %388 = load i8, i8* %387, align 1
  %389 = zext i8 %388 to i32
  %390 = call i8* @Image(i32 %389)
  %391 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.104, i32 0, i32 0), i32 0, %struct.FILE_POS* %379, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.113, i32 0, i32 0), i8* %390)
  br label %392

; <label>:392                                     ; preds = %378, %377, %232, %121
  br label %393

; <label>:393                                     ; preds = %392, %60
  br label %394

; <label>:394                                     ; preds = %393
  %395 = load %union.rec*, %union.rec** %link, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 0
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 1
  %400 = load %union.rec*, %union.rec** %399, align 8
  store %union.rec* %400, %union.rec** %link, align 8
  br label %32

; <label>:401                                     ; preds = %32
  %402 = load i32, i32* %name_printed, align 4
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %418, label %404

; <label>:404                                     ; preds = %401
  %405 = load %union.rec*, %union.rec** %sym, align 8
  %406 = call i32 @need_lvis(%union.rec* %405)
  %407 = icmp ne i32 %406, 0
  br i1 %407, label %408, label %413

; <label>:408                                     ; preds = %404
  %409 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %410 = call i32 @fputs(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.27, i32 0, i32 0), %struct._IO_FILE* %409)
  %411 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %412 = call i32 @fputs(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.15, i32 0, i32 0), %struct._IO_FILE* %411)
  br label %413

; <label>:413                                     ; preds = %408, %404
  %414 = load %union.rec*, %union.rec** %sym, align 8
  %415 = call i8* @SymName(%union.rec* %414)
  %416 = load %struct._IO_FILE*, %struct._IO_FILE** @last_write_fp, align 8
  %417 = call i32 @fputs(i8* %415, %struct._IO_FILE* %416)
  store i32 1, i32* %name_printed, align 4
  br label %418

; <label>:418                                     ; preds = %413, %401
  br label %419

; <label>:419                                     ; preds = %418, %14
  ret void
}

; Function Attrs: nounwind uwtable
define internal i32 @need_lvis(%union.rec* %sym) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %sym, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.word_type*
  %4 = getelementptr inbounds %struct.word_type, %struct.word_type* %3, i32 0, i32 2
  %5 = bitcast %union.SECOND_UNION* %4 to %struct.anon.5*
  %6 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %5, i32 0, i32 1
  %7 = bitcast [3 x i8]* %6 to i24*
  %8 = load i24, i24* %7, align 1
  %9 = lshr i24 %8, 16
  %10 = and i24 %9, 1
  %11 = zext i24 %10 to i32
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

; <label>:13                                      ; preds = %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.symbol_type*
  %16 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %15, i32 0, i32 3
  %17 = load %union.rec*, %union.rec** %16, align 8
  %18 = load %union.rec*, %union.rec** @StartSym, align 8
  %19 = icmp ne %union.rec* %17, %18
  br i1 %19, label %20, label %32

; <label>:20                                      ; preds = %13
  %21 = load %union.rec*, %union.rec** %1, align 8
  %22 = bitcast %union.rec* %21 to %struct.symbol_type*
  %23 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %22, i32 0, i32 3
  %24 = load %union.rec*, %union.rec** %23, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 1
  %27 = bitcast %union.FIRST_UNION* %26 to %struct.anon*
  %28 = getelementptr inbounds %struct.anon, %struct.anon* %27, i32 0, i32 0
  %29 = load i8, i8* %28, align 1
  %30 = zext i8 %29 to i32
  %31 = icmp eq i32 %30, 143
  br label %32

; <label>:32                                      ; preds = %20, %13, %0
  %33 = phi i1 [ false, %13 ], [ false, %0 ], [ %31, %20 ]
  %34 = zext i1 %33 to i32
  ret i32 %34
}

declare i8* @SymName(%union.rec*) #1

declare void @FilterWrite(%union.rec*, %struct._IO_FILE*, i32*) #1

declare i8* @Image(i32) #1

; Function Attrs: nounwind uwtable
define internal void @OptimizeParameterList(%union.rec* %x, %union.rec* %env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.114, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %2, align 8
  %16 = icmp eq %union.rec* %15, null
  br i1 %16, label %17, label %18

; <label>:17                                      ; preds = %14
  br label %183

; <label>:18                                      ; preds = %14
  %19 = load %union.rec*, %union.rec** %1, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 0
  %22 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %21, i32 0, i64 0
  %23 = getelementptr inbounds %struct.LIST, %struct.LIST* %22, i32 0, i32 1
  %24 = load %union.rec*, %union.rec** %23, align 8
  store %union.rec* %24, %union.rec** %link, align 8
  br label %25

; <label>:25                                      ; preds = %176, %18
  %26 = load %union.rec*, %union.rec** %link, align 8
  %27 = load %union.rec*, %union.rec** %1, align 8
  %28 = icmp ne %union.rec* %26, %27
  br i1 %28, label %29, label %183

; <label>:29                                      ; preds = %25
  %30 = load %union.rec*, %union.rec** %link, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %32, i32 0, i64 1
  %34 = getelementptr inbounds %struct.LIST, %struct.LIST* %33, i32 0, i32 0
  %35 = load %union.rec*, %union.rec** %34, align 8
  store %union.rec* %35, %union.rec** %y, align 8
  br label %36

; <label>:36                                      ; preds = %46, %29
  %37 = load %union.rec*, %union.rec** %y, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 1
  %40 = bitcast %union.FIRST_UNION* %39 to %struct.anon*
  %41 = getelementptr inbounds %struct.anon, %struct.anon* %40, i32 0, i32 0
  %42 = load i8, i8* %41, align 1
  %43 = zext i8 %42 to i32
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %45, label %53

; <label>:45                                      ; preds = %36
  br label %46

; <label>:46                                      ; preds = %45
  %47 = load %union.rec*, %union.rec** %y, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 0
  %50 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %49, i32 0, i64 1
  %51 = getelementptr inbounds %struct.LIST, %struct.LIST* %50, i32 0, i32 0
  %52 = load %union.rec*, %union.rec** %51, align 8
  store %union.rec* %52, %union.rec** %y, align 8
  br label %36

; <label>:53                                      ; preds = %36
  %54 = load %union.rec*, %union.rec** %y, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 1
  %57 = bitcast %union.FIRST_UNION* %56 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 10
  br i1 %61, label %62, label %175

; <label>:62                                      ; preds = %53
  %63 = load %union.rec*, %union.rec** %y, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 0
  %66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %65, i32 0, i64 0
  %67 = getelementptr inbounds %struct.LIST, %struct.LIST* %66, i32 0, i32 1
  %68 = load %union.rec*, %union.rec** %67, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 0
  %71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %70, i32 0, i64 1
  %72 = getelementptr inbounds %struct.LIST, %struct.LIST* %71, i32 0, i32 0
  %73 = load %union.rec*, %union.rec** %72, align 8
  store %union.rec* %73, %union.rec** %z, align 8
  br label %74

; <label>:74                                      ; preds = %84, %62
  %75 = load %union.rec*, %union.rec** %z, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 1
  %78 = bitcast %union.FIRST_UNION* %77 to %struct.anon*
  %79 = getelementptr inbounds %struct.anon, %struct.anon* %78, i32 0, i32 0
  %80 = load i8, i8* %79, align 1
  %81 = zext i8 %80 to i32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %91

; <label>:83                                      ; preds = %74
  br label %84

; <label>:84                                      ; preds = %83
  %85 = load %union.rec*, %union.rec** %z, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 0
  %88 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %87, i32 0, i64 1
  %89 = getelementptr inbounds %struct.LIST, %struct.LIST* %88, i32 0, i32 0
  %90 = load %union.rec*, %union.rec** %89, align 8
  store %union.rec* %90, %union.rec** %z, align 8
  br label %74

; <label>:91                                      ; preds = %74
  %92 = load %union.rec*, %union.rec** %z, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 1
  %95 = bitcast %union.FIRST_UNION* %94 to %struct.anon*
  %96 = getelementptr inbounds %struct.anon, %struct.anon* %95, i32 0, i32 0
  %97 = load i8, i8* %96, align 1
  %98 = zext i8 %97 to i32
  %99 = icmp eq i32 %98, 2
  br i1 %99, label %100, label %103

; <label>:100                                     ; preds = %91
  %101 = load %union.rec*, %union.rec** %z, align 8
  %102 = load %union.rec*, %union.rec** %2, align 8
  call void @Optimize(%union.rec* %101, %union.rec* %102)
  br label %174

; <label>:103                                     ; preds = %91
  %104 = load %union.rec*, %union.rec** %z, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 1
  %107 = bitcast %union.FIRST_UNION* %106 to %struct.anon*
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 17
  br i1 %111, label %112, label %173

; <label>:112                                     ; preds = %103
  %113 = load %union.rec*, %union.rec** %z, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 0
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 1
  %118 = load %union.rec*, %union.rec** %117, align 8
  store %union.rec* %118, %union.rec** %tlink, align 8
  br label %119

; <label>:119                                     ; preds = %165, %112
  %120 = load %union.rec*, %union.rec** %tlink, align 8
  %121 = load %union.rec*, %union.rec** %z, align 8
  %122 = icmp ne %union.rec* %120, %121
  br i1 %122, label %123, label %172

; <label>:123                                     ; preds = %119
  %124 = load %union.rec*, %union.rec** %tlink, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 0
  %127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %126, i32 0, i64 0
  %128 = getelementptr inbounds %struct.LIST, %struct.LIST* %127, i32 0, i32 1
  %129 = load %union.rec*, %union.rec** %128, align 8
  %130 = bitcast %union.rec* %129 to %struct.word_type*
  %131 = getelementptr inbounds %struct.word_type, %struct.word_type* %130, i32 0, i32 0
  %132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %131, i32 0, i64 1
  %133 = getelementptr inbounds %struct.LIST, %struct.LIST* %132, i32 0, i32 0
  %134 = load %union.rec*, %union.rec** %133, align 8
  store %union.rec* %134, %union.rec** %t, align 8
  br label %135

; <label>:135                                     ; preds = %145, %123
  %136 = load %union.rec*, %union.rec** %t, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 1
  %139 = bitcast %union.FIRST_UNION* %138 to %struct.anon*
  %140 = getelementptr inbounds %struct.anon, %struct.anon* %139, i32 0, i32 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %152

; <label>:144                                     ; preds = %135
  br label %145

; <label>:145                                     ; preds = %144
  %146 = load %union.rec*, %union.rec** %t, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 0
  %149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %148, i32 0, i64 1
  %150 = getelementptr inbounds %struct.LIST, %struct.LIST* %149, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %150, align 8
  store %union.rec* %151, %union.rec** %t, align 8
  br label %135

; <label>:152                                     ; preds = %135
  %153 = load %union.rec*, %union.rec** %t, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 1
  %156 = bitcast %union.FIRST_UNION* %155 to %struct.anon*
  %157 = getelementptr inbounds %struct.anon, %struct.anon* %156, i32 0, i32 0
  %158 = load i8, i8* %157, align 1
  %159 = zext i8 %158 to i32
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %161, label %164

; <label>:161                                     ; preds = %152
  %162 = load %union.rec*, %union.rec** %t, align 8
  %163 = load %union.rec*, %union.rec** %2, align 8
  call void @Optimize(%union.rec* %162, %union.rec* %163)
  br label %164

; <label>:164                                     ; preds = %161, %152
  br label %165

; <label>:165                                     ; preds = %164
  %166 = load %union.rec*, %union.rec** %tlink, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 0
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 1
  %171 = load %union.rec*, %union.rec** %170, align 8
  store %union.rec* %171, %union.rec** %tlink, align 8
  br label %119

; <label>:172                                     ; preds = %119
  br label %173

; <label>:173                                     ; preds = %172, %103
  br label %174

; <label>:174                                     ; preds = %173, %100
  br label %175

; <label>:175                                     ; preds = %174, %53
  br label %176

; <label>:176                                     ; preds = %175
  %177 = load %union.rec*, %union.rec** %link, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %179, i32 0, i64 0
  %181 = getelementptr inbounds %struct.LIST, %struct.LIST* %180, i32 0, i32 1
  %182 = load %union.rec*, %union.rec** %181, align 8
  store %union.rec* %182, %union.rec** %link, align 8
  br label %25

; <label>:183                                     ; preds = %17, %25
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Optimize(%union.rec* %x, %union.rec* %env) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %env, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 0
  %6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5, i32 0, i64 0
  %7 = getelementptr inbounds %struct.LIST, %struct.LIST* %6, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = load %union.rec*, %union.rec** %1, align 8
  %10 = icmp ne %union.rec* %8, %9
  br i1 %10, label %11, label %14

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = load %union.rec*, %union.rec** %2, align 8
  call void @OptimizeParameterList(%union.rec* %12, %union.rec* %13)
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %1, align 8
  %16 = load %union.rec*, %union.rec** %2, align 8
  %17 = call %union.rec* @ParameterCheck(%union.rec* %15, %union.rec* %16)
  store %union.rec* %17, %union.rec** %tmp, align 8
  %18 = load %union.rec*, %union.rec** %tmp, align 8
  %19 = icmp ne %union.rec* %18, null
  br i1 %19, label %20, label %132

; <label>:20                                      ; preds = %14
  %21 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %21, %union.rec** @zz_hold, align 8
  %22 = load %union.rec*, %union.rec** @zz_hold, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 0
  %25 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %24, i32 0, i64 1
  %26 = getelementptr inbounds %struct.LIST, %struct.LIST* %25, i32 0, i32 1
  %27 = load %union.rec*, %union.rec** %26, align 8
  %28 = load %union.rec*, %union.rec** @zz_hold, align 8
  %29 = icmp eq %union.rec* %27, %28
  br i1 %29, label %30, label %31

; <label>:30                                      ; preds = %20
  br label %72

; <label>:31                                      ; preds = %20
  %32 = load %union.rec*, %union.rec** @zz_hold, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 1
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 1
  %37 = load %union.rec*, %union.rec** %36, align 8
  store %union.rec* %37, %union.rec** @zz_res, align 8
  %38 = load %union.rec*, %union.rec** @zz_hold, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 1
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  %44 = load %union.rec*, %union.rec** @zz_res, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 0
  %47 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %46, i32 0, i64 1
  %48 = getelementptr inbounds %struct.LIST, %struct.LIST* %47, i32 0, i32 0
  store %union.rec* %43, %union.rec** %48, align 8
  %49 = load %union.rec*, %union.rec** @zz_res, align 8
  %50 = load %union.rec*, %union.rec** @zz_hold, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 0
  %53 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %52, i32 0, i64 1
  %54 = getelementptr inbounds %struct.LIST, %struct.LIST* %53, i32 0, i32 0
  %55 = load %union.rec*, %union.rec** %54, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 1
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 1
  store %union.rec* %49, %union.rec** %59, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = load %union.rec*, %union.rec** @zz_hold, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 1
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  store %union.rec* %60, %union.rec** %65, align 8
  %66 = load %union.rec*, %union.rec** @zz_hold, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 1
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  store %union.rec* %60, %union.rec** %70, align 8
  %71 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %72

; <label>:72                                      ; preds = %31, %30
  %73 = phi %union.rec* [ null, %30 ], [ %71, %31 ]
  store %union.rec* %73, %union.rec** @xx_tmp, align 8
  %74 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %74, %union.rec** @zz_res, align 8
  %75 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %75, %union.rec** @zz_hold, align 8
  %76 = load %union.rec*, %union.rec** @zz_hold, align 8
  %77 = icmp eq %union.rec* %76, null
  br i1 %77, label %78, label %80

; <label>:78                                      ; preds = %72
  %79 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %128

; <label>:80                                      ; preds = %72
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %82 = icmp eq %union.rec* %81, null
  br i1 %82, label %83, label %85

; <label>:83                                      ; preds = %80
  %84 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %126

; <label>:85                                      ; preds = %80
  %86 = load %union.rec*, %union.rec** @zz_hold, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 0
  %89 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %88, i32 0, i64 1
  %90 = getelementptr inbounds %struct.LIST, %struct.LIST* %89, i32 0, i32 0
  %91 = load %union.rec*, %union.rec** %90, align 8
  store %union.rec* %91, %union.rec** @zz_tmp, align 8
  %92 = load %union.rec*, %union.rec** @zz_res, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 0
  %95 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %94, i32 0, i64 1
  %96 = getelementptr inbounds %struct.LIST, %struct.LIST* %95, i32 0, i32 0
  %97 = load %union.rec*, %union.rec** %96, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  store %union.rec* %97, %union.rec** %102, align 8
  %103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %104 = load %union.rec*, %union.rec** @zz_res, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 1
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 0
  %109 = load %union.rec*, %union.rec** %108, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 0
  %112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %111, i32 0, i64 1
  %113 = getelementptr inbounds %struct.LIST, %struct.LIST* %112, i32 0, i32 1
  store %union.rec* %103, %union.rec** %113, align 8
  %114 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %115 = load %union.rec*, %union.rec** @zz_res, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  store %union.rec* %114, %union.rec** %119, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  %121 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 0
  %124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %123, i32 0, i64 1
  %125 = getelementptr inbounds %struct.LIST, %struct.LIST* %124, i32 0, i32 1
  store %union.rec* %120, %union.rec** %125, align 8
  br label %126

; <label>:126                                     ; preds = %85, %83
  %127 = phi %union.rec* [ %84, %83 ], [ %120, %85 ]
  br label %128

; <label>:128                                     ; preds = %126, %78
  %129 = phi %union.rec* [ %79, %78 ], [ %127, %126 ]
  %130 = load %union.rec*, %union.rec** %1, align 8
  %131 = call i32 @DisposeObject(%union.rec* %130)
  br label %132

; <label>:132                                     ; preds = %128, %14
  ret void
}

declare %union.rec* @ParameterCheck(%union.rec*, %union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}