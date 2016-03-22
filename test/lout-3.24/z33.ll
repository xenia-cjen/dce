; ModuleID = 'z33.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.anon.14 = type { i32, i32, [1 x %union.rec*] }
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
%struct.anon.3 = type { i16, i8, i8 }
%struct.cr_type = type { [2 x %struct.LIST], i8, i8, i16, %union.rec*, i32, i32, i32, i32, %union.rec*, %union.rec*, i16 }
%struct.link_type = type { [2 x %struct.LIST], i8, i8, i8 }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"DbCreate: !is_word(type(x))\00", align 1
@DbInsert.extra_seq = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [14 x i8] c"DbInsert: db!\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"DbInsert: null tag!\00", align 1
@.str.4 = private unnamed_addr constant [20 x i8] c"DbInsert: null seq!\00", align 1
@.str.5 = private unnamed_addr constant [39 x i8] c"DbInsert: insert into reading database\00", align 1
@DbCheckTableInit = internal global i32 0, align 4
@DbCheckTable = internal global %struct.anon.14* null, align 8
@.str.6 = private unnamed_addr constant [45 x i8] c"cross reference %s&&%s used previously, at%s\00", align 1
@.str.7 = private unnamed_addr constant [39 x i8] c"cross reference %s&&%s used previously\00", align 1
@.str.8 = private unnamed_addr constant [36 x i8] c"database file name %s%s is too long\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c".lix\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.11 = private unnamed_addr constant [33 x i8] c"cannot write to database file %s\00", align 1
@.str.12 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.13 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.14 = private unnamed_addr constant [14 x i8] c"SymToNum: yy!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.15 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@.str.16 = private unnamed_addr constant [25 x i8] c"%s%d&%s\09%s\09%s\09%ld\09%d\09%s\0A\00", align 1
@.str.17 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.18 = private unnamed_addr constant [28 x i8] c"DbConvert: reading database\00", align 1
@.str.19 = private unnamed_addr constant [4 x i8] c".li\00", align 1
@.str.20 = private unnamed_addr constant [10 x i8] c"00 %s %s\0A\00", align 1
@.str.21 = private unnamed_addr constant [40 x i8] c"Basser Lout Version 3.24 (October 2000)\00", align 1
@.str.22 = private unnamed_addr constant [20 x i8] c"database index file\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"DbConvert: y!\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"%s %d %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [9 x i8] c"00target\00", align 1
@.str.26 = private unnamed_addr constant [9 x i8] c"00symbol\00", align 1
@.str.27 = private unnamed_addr constant [2 x i8] c" \00", align 1
@xx_hold = external global %union.rec*, align 8
@.str.28 = private unnamed_addr constant [4 x i8] c".ld\00", align 1
@StartSym = external global %union.rec*, align 8
@.str.29 = private unnamed_addr constant [33 x i8] c"syntax error in database file %s\00", align 1
@.str.30 = private unnamed_addr constant [35 x i8] c"DbLoad: create && symbs == nilobj!\00", align 1
@.str.31 = private unnamed_addr constant [49 x i8] c"%s found in database but not declared in %s line\00", align 1
@.str.32 = private unnamed_addr constant [10 x i8] c"@Database\00", align 1
@.str.33 = private unnamed_addr constant [30 x i8] c"database symbol %s has no tag\00", align 1
@.str.34 = private unnamed_addr constant [41 x i8] c"database symbol tag is not a simple word\00", align 1
@.str.35 = private unnamed_addr constant [37 x i8] c"database symbol tag is an empty word\00", align 1
@.str.36 = private unnamed_addr constant [29 x i8] c"DbLoad: FileName(dfnum) (1)!\00", align 1
@.str.37 = private unnamed_addr constant [32 x i8] c"%s or end of file expected here\00", align 1
@.str.38 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.39 = private unnamed_addr constant [29 x i8] c"DbLoad: FileName(dfnum) (2)!\00", align 1
@.str.40 = private unnamed_addr constant [29 x i8] c"cannot open database file %s\00", align 1
@.str.41 = private unnamed_addr constant [30 x i8] c"DbLoad: FileName(index_fnum)!\00", align 1
@.str.42 = private unnamed_addr constant [21 x i8] c"DbLoad: type(symbs)!\00", align 1
@.str.43 = private unnamed_addr constant [10 x i8] c"00target \00", align 1
@.str.44 = private unnamed_addr constant [12 x i8] c"00target %d\00", align 1
@.str.45 = private unnamed_addr constant [12 x i8] c"00symbol %d\00", align 1
@.str.46 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.47 = private unnamed_addr constant [28 x i8] c"DbLoad: type(y) != CLOSURE!\00", align 1
@.str.48 = private unnamed_addr constant [47 x i8] c"undefined symbol in database file %s (line %d)\00", align 1
@.str.49 = private unnamed_addr constant [8 x i8] c"%s%d&%s\00", align 1
@.str.50 = private unnamed_addr constant [33 x i8] c"%*[^\09]\09%[^\09]\09%*[^\09]\09%ld\09%d\09%[^\0A]\00", align 1
@.str.51 = private unnamed_addr constant [28 x i8] c"DbRetrieveNext: not reading\00", align 1
@.str.52 = private unnamed_addr constant [35 x i8] c"%d&%[^\09]\09%[^\09]\09%*[^\09]\09%ld\09%d\09%[^\0A]\00", align 1
@.str.53 = private unnamed_addr constant [17 x i8] c"NumToSym: no sym\00", align 1
@.str.54 = private unnamed_addr constant [13 x i8] c"NumToSym: y!\00", align 1
@OldCrossDb = common global %union.rec* null, align 8
@NewCrossDb = common global %union.rec* null, align 8
@.str.55 = private unnamed_addr constant [42 x i8] c"run out of memory enlarging dbcheck table\00", align 1
@.str.56 = private unnamed_addr constant [30 x i8] c"Dbcheck: entry inserted twice\00", align 1
@.str.57 = private unnamed_addr constant [19 x i8] c"dtab_rehash: ACAT!\00", align 1
@UseCollate = external global i32, align 4
@.str.58 = private unnamed_addr constant [6 x i8] c"%[^\09]\00", align 1
@.str.59 = private unnamed_addr constant [21 x i8] c"SearchFile: l > mid!\00", align 1
@.str.60 = private unnamed_addr constant [28 x i8] c"SearchFile: mid >= mid_end!\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"SearchFile: mid_end > r!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @DbCreate(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %db = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %2, %union.rec** %db, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 11
  br i1 %10, label %23, label %11

; <label>:11                                      ; preds = %0
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = bitcast %union.rec* %12 to %struct.word_type*
  %14 = getelementptr inbounds %struct.word_type, %struct.word_type* %13, i32 0, i32 1
  %15 = bitcast %union.FIRST_UNION* %14 to %struct.anon*
  %16 = getelementptr inbounds %struct.anon, %struct.anon* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 1
  %18 = zext i8 %17 to i32
  %19 = icmp eq i32 %18, 12
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %11
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %20, %11, %0
  %24 = load %union.rec*, %union.rec** %db, align 8
  %25 = bitcast %union.rec* %24 to %struct.word_type*
  %26 = getelementptr inbounds %struct.word_type, %struct.word_type* %25, i32 0, i32 2
  %27 = bitcast %union.SECOND_UNION* %26 to %struct.anon.3*
  %28 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %27, i32 0, i32 1
  store i8 0, i8* %28, align 1
  %29 = load %union.rec*, %union.rec** %db, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 3
  %32 = bitcast %union.THIRD_UNION* %31 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %32, align 8
  %33 = load %union.rec*, %union.rec** %db, align 8
  ret %union.rec* %33
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @DbInsert(%union.rec* %db, i32 %gall, %union.rec* %sym, i8* %tag, %struct.FILE_POS* %tagfpos, i8* %seq, i16 zeroext %dfnum, i64 %dfpos, i32 %dlnum, i32 %check) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %union.rec*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.FILE_POS*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %symnum = alloca i32, align 4
  %chk = alloca %union.rec*, align 8
  %buff = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %yy = alloca %union.rec*, align 8
  %count = alloca i32, align 4
  store %union.rec* %db, %union.rec** %1, align 8
  store i32 %gall, i32* %2, align 4
  store %union.rec* %sym, %union.rec** %3, align 8
  store i8* %tag, i8** %4, align 8
  store %struct.FILE_POS* %tagfpos, %struct.FILE_POS** %5, align 8
  store i8* %seq, i8** %6, align 8
  store i16 %dfnum, i16* %7, align 2
  store i64 %dfpos, i64* %8, align 8
  store i32 %dlnum, i32* %9, align 4
  store i32 %check, i32* %10, align 4
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 1
  %14 = bitcast %union.FIRST_UNION* %13 to %struct.anon*
  %15 = getelementptr inbounds %struct.anon, %struct.anon* %14, i32 0, i32 0
  %16 = load i8, i8* %15, align 1
  %17 = zext i8 %16 to i32
  %18 = icmp eq i32 %17, 11
  br i1 %18, label %31, label %19

; <label>:19                                      ; preds = %0
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 1
  %23 = bitcast %union.FIRST_UNION* %22 to %struct.anon*
  %24 = getelementptr inbounds %struct.anon, %struct.anon* %23, i32 0, i32 0
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = icmp eq i32 %26, 12
  br i1 %27, label %31, label %28

; <label>:28                                      ; preds = %19
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %29, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i32 0, i32 0))
  br label %31

; <label>:31                                      ; preds = %28, %19, %0
  %32 = load i8*, i8** %4, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

; <label>:37                                      ; preds = %31
  %38 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %39 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %38, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i32 0, i32 0))
  br label %40

; <label>:40                                      ; preds = %37, %31
  %41 = load i8*, i8** %6, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 0
  %43 = load i8, i8* %42, align 1
  %44 = zext i8 %43 to i32
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

; <label>:46                                      ; preds = %40
  %47 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %48 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %47, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.4, i32 0, i32 0))
  br label %49

; <label>:49                                      ; preds = %46, %40
  %50 = load %union.rec*, %union.rec** %1, align 8
  %51 = bitcast %union.rec* %50 to %struct.word_type*
  %52 = getelementptr inbounds %struct.word_type, %struct.word_type* %51, i32 0, i32 2
  %53 = bitcast %union.SECOND_UNION* %52 to %struct.anon.3*
  %54 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %53, i32 0, i32 1
  %55 = load i8, i8* %54, align 1
  %56 = icmp ne i8 %55, 0
  br i1 %56, label %57, label %60

; <label>:57                                      ; preds = %49
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %58, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.5, i32 0, i32 0))
  br label %60

; <label>:60                                      ; preds = %57, %49
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %113

; <label>:63                                      ; preds = %60
  %64 = load i32, i32* @DbCheckTableInit, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %68, label %66

; <label>:66                                      ; preds = %63
  %67 = call %struct.anon.14* @dtab_new(i32 107)
  store %struct.anon.14* %67, %struct.anon.14** @DbCheckTable, align 8
  store i32 1, i32* @DbCheckTableInit, align 4
  br label %68

; <label>:68                                      ; preds = %66, %63
  %69 = load %union.rec*, %union.rec** %3, align 8
  %70 = load i8*, i8** %4, align 8
  %71 = load %struct.anon.14*, %struct.anon.14** @DbCheckTable, align 8
  %72 = call %union.rec* @dtab_retrieve(%union.rec* %69, i8* %70, %struct.anon.14* %71)
  store %union.rec* %72, %union.rec** %chk, align 8
  %73 = load %union.rec*, %union.rec** %chk, align 8
  %74 = icmp eq %union.rec* %73, null
  br i1 %74, label %75, label %85

; <label>:75                                      ; preds = %68
  %76 = load i8*, i8** %4, align 8
  %77 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %78 = call %union.rec* @MakeWord(i32 11, i8* %76, %struct.FILE_POS* %77)
  store %union.rec* %78, %union.rec** %chk, align 8
  %79 = load %union.rec*, %union.rec** %3, align 8
  %80 = load %union.rec*, %union.rec** %chk, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 3
  %83 = bitcast %union.THIRD_UNION* %82 to %union.rec**
  store %union.rec* %79, %union.rec** %83, align 8
  %84 = load %union.rec*, %union.rec** %chk, align 8
  call void @dtab_insert(%union.rec* %84, %struct.anon.14** @DbCheckTable)
  br label %112

; <label>:85                                      ; preds = %68
  %86 = load %union.rec*, %union.rec** %chk, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.FILE_POS*
  %90 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %89, i32 0, i32 2
  %91 = load i16, i16* %90, align 2
  %92 = zext i16 %91 to i32
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %105

; <label>:94                                      ; preds = %85
  %95 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %96 = load %union.rec*, %union.rec** %3, align 8
  %97 = call i8* @SymName(%union.rec* %96)
  %98 = load i8*, i8** %4, align 8
  %99 = load %union.rec*, %union.rec** %chk, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 1
  %102 = bitcast %union.FIRST_UNION* %101 to %struct.FILE_POS*
  %103 = call i8* @EchoFilePos(%struct.FILE_POS* %102)
  %104 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 4, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct.FILE_POS* %95, i8* %97, i8* %98, i8* %103)
  br label %111

; <label>:105                                     ; preds = %85
  %106 = load %struct.FILE_POS*, %struct.FILE_POS** %5, align 8
  %107 = load %union.rec*, %union.rec** %3, align 8
  %108 = call i8* @SymName(%union.rec* %107)
  %109 = load i8*, i8** %4, align 8
  %110 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 5, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.FILE_POS* %106, i8* %108, i8* %109)
  br label %111

; <label>:111                                     ; preds = %105, %94
  br label %112

; <label>:112                                     ; preds = %111, %75
  br label %113

; <label>:113                                     ; preds = %112, %60
  %114 = load %union.rec*, %union.rec** %1, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 3
  %117 = bitcast %union.THIRD_UNION* %116 to %struct._IO_FILE**
  %118 = load %struct._IO_FILE*, %struct._IO_FILE** %117, align 8
  %119 = icmp eq %struct._IO_FILE* %118, null
  br i1 %119, label %120, label %164

; <label>:120                                     ; preds = %113
  %121 = load %union.rec*, %union.rec** %1, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 4
  %124 = getelementptr inbounds [4 x i8], [4 x i8]* %123, i32 0, i32 0
  %125 = call i64 @strlen(i8* %124) #4
  %126 = add i64 %125, 4
  %127 = icmp uge i64 %126, 512
  br i1 %127, label %128, label %135

; <label>:128                                     ; preds = %120
  %129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %130 = load %union.rec*, %union.rec** %1, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 4
  %133 = getelementptr inbounds [4 x i8], [4 x i8]* %132, i32 0, i32 0
  %134 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 2, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %129, i8* %133, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0))
  br label %135

; <label>:135                                     ; preds = %128, %120
  %136 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %137 = load %union.rec*, %union.rec** %1, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 4
  %140 = getelementptr inbounds [4 x i8], [4 x i8]* %139, i32 0, i32 0
  %141 = call i8* @strcpy(i8* %136, i8* %140) #5
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %143 = call i8* @strcat(i8* %142, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  %144 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %145 = call %struct._IO_FILE* @fopen(i8* %144, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0))
  %146 = load %union.rec*, %union.rec** %1, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 3
  %149 = bitcast %union.THIRD_UNION* %148 to %struct._IO_FILE**
  store %struct._IO_FILE* %145, %struct._IO_FILE** %149, align 8
  %150 = load %union.rec*, %union.rec** %1, align 8
  %151 = bitcast %union.rec* %150 to %struct.word_type*
  %152 = getelementptr inbounds %struct.word_type, %struct.word_type* %151, i32 0, i32 3
  %153 = bitcast %union.THIRD_UNION* %152 to %struct._IO_FILE**
  %154 = load %struct._IO_FILE*, %struct._IO_FILE** %153, align 8
  %155 = icmp eq %struct._IO_FILE* %154, null
  br i1 %155, label %156, label %163

; <label>:156                                     ; preds = %135
  %157 = load %union.rec*, %union.rec** %1, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 1
  %160 = bitcast %union.FIRST_UNION* %159 to %struct.FILE_POS*
  %161 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %162 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 3, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.11, i32 0, i32 0), i32 1, %struct.FILE_POS* %160, i8* %161)
  br label %163

; <label>:163                                     ; preds = %156, %135
  br label %164

; <label>:164                                     ; preds = %163, %113
  %165 = load i16, i16* %7, align 2
  %166 = zext i16 %165 to i32
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %178

; <label>:168                                     ; preds = %164
  %169 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %170 = load i16, i16* %7, align 2
  %171 = call i8* @FileName(i16 zeroext %170)
  %172 = call i8* @strcpy(i8* %169, i8* %171) #5
  %173 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %174 = call i64 @strlen(i8* %173) #4
  %175 = sub i64 %174, 3
  %176 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i64 %175
  %177 = call i8* @strcpy(i8* %176, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  br label %181

; <label>:178                                     ; preds = %164
  %179 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %180 = call i8* @strcpy(i8* %179, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #5
  br label %181

; <label>:181                                     ; preds = %178, %168
  store i32 0, i32* %count, align 4
  %182 = load %union.rec*, %union.rec** %1, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 0
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 1
  %187 = load %union.rec*, %union.rec** %186, align 8
  store %union.rec* %187, %union.rec** %link, align 8
  br label %188

; <label>:188                                     ; preds = %270, %181
  %189 = load %union.rec*, %union.rec** %link, align 8
  %190 = load %union.rec*, %union.rec** %1, align 8
  %191 = icmp ne %union.rec* %189, %190
  br i1 %191, label %192, label %277

; <label>:192                                     ; preds = %188
  %193 = load %union.rec*, %union.rec** %link, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 1
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %197, align 8
  store %union.rec* %198, %union.rec** %yy, align 8
  br label %199

; <label>:199                                     ; preds = %209, %192
  %200 = load %union.rec*, %union.rec** %yy, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 1
  %203 = bitcast %union.FIRST_UNION* %202 to %struct.anon*
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %216

; <label>:208                                     ; preds = %199
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load %union.rec*, %union.rec** %yy, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 1
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %214, align 8
  store %union.rec* %215, %union.rec** %yy, align 8
  br label %199

; <label>:216                                     ; preds = %199
  %217 = load %union.rec*, %union.rec** %yy, align 8
  %218 = bitcast %union.rec* %217 to %struct.word_type*
  %219 = getelementptr inbounds %struct.word_type, %struct.word_type* %218, i32 0, i32 1
  %220 = bitcast %union.FIRST_UNION* %219 to %struct.anon*
  %221 = getelementptr inbounds %struct.anon, %struct.anon* %220, i32 0, i32 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 140
  br i1 %224, label %237, label %225

; <label>:225                                     ; preds = %216
  %226 = load %union.rec*, %union.rec** %yy, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 1
  %229 = bitcast %union.FIRST_UNION* %228 to %struct.anon*
  %230 = getelementptr inbounds %struct.anon, %struct.anon* %229, i32 0, i32 0
  %231 = load i8, i8* %230, align 1
  %232 = zext i8 %231 to i32
  %233 = icmp eq i32 %232, 17
  br i1 %233, label %237, label %234

; <label>:234                                     ; preds = %225
  %235 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %236 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %235, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %237

; <label>:237                                     ; preds = %234, %225, %216
  %238 = load %union.rec*, %union.rec** %yy, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 1
  %241 = bitcast %union.FIRST_UNION* %240 to %struct.anon*
  %242 = getelementptr inbounds %struct.anon, %struct.anon* %241, i32 0, i32 0
  %243 = load i8, i8* %242, align 1
  %244 = zext i8 %243 to i32
  %245 = icmp ne i32 %244, 140
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %237
  br label %270

; <label>:247                                     ; preds = %237
  %248 = load %union.rec*, %union.rec** %yy, align 8
  %249 = bitcast %union.rec* %248 to %struct.cr_type*
  %250 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %249, i32 0, i32 9
  %251 = load %union.rec*, %union.rec** %250, align 8
  %252 = load %union.rec*, %union.rec** %3, align 8
  %253 = icmp eq %union.rec* %251, %252
  br i1 %253, label %254, label %255

; <label>:254                                     ; preds = %247
  br label %277

; <label>:255                                     ; preds = %247
  %256 = load %union.rec*, %union.rec** %link, align 8
  %257 = bitcast %union.rec* %256 to %struct.link_type*
  %258 = getelementptr inbounds %struct.link_type, %struct.link_type* %257, i32 0, i32 2
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = load i32, i32* %count, align 4
  %262 = icmp sgt i32 %260, %261
  br i1 %262, label %263, label %269

; <label>:263                                     ; preds = %255
  %264 = load %union.rec*, %union.rec** %link, align 8
  %265 = bitcast %union.rec* %264 to %struct.link_type*
  %266 = getelementptr inbounds %struct.link_type, %struct.link_type* %265, i32 0, i32 2
  %267 = load i8, i8* %266, align 1
  %268 = zext i8 %267 to i32
  store i32 %268, i32* %count, align 4
  br label %269

; <label>:269                                     ; preds = %263, %255
  br label %270

; <label>:270                                     ; preds = %269, %246
  %271 = load %union.rec*, %union.rec** %link, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 0
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 1
  %276 = load %union.rec*, %union.rec** %275, align 8
  store %union.rec* %276, %union.rec** %link, align 8
  br label %188

; <label>:277                                     ; preds = %254, %188
  %278 = load %union.rec*, %union.rec** %link, align 8
  %279 = load %union.rec*, %union.rec** %1, align 8
  %280 = icmp eq %union.rec* %278, %279
  br i1 %280, label %281, label %479

; <label>:281                                     ; preds = %277
  %282 = load %union.rec*, %union.rec** %3, align 8
  %283 = bitcast %union.rec* %282 to %struct.symbol_type*
  %284 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %283, i32 0, i32 8
  %285 = load %union.rec*, %union.rec** %284, align 8
  %286 = icmp eq %union.rec* %285, null
  br i1 %286, label %287, label %289

; <label>:287                                     ; preds = %281
  %288 = load %union.rec*, %union.rec** %3, align 8
  call void @CrossInit(%union.rec* %288)
  br label %289

; <label>:289                                     ; preds = %287, %281
  %290 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %291 = zext i8 %290 to i32
  store i32 %291, i32* @zz_size, align 4
  %292 = sext i32 %291 to i64
  %293 = icmp uge i64 %292, 265
  br i1 %293, label %294, label %297

; <label>:294                                     ; preds = %289
  %295 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %296 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %295)
  br label %322

; <label>:297                                     ; preds = %289
  %298 = load i32, i32* @zz_size, align 4
  %299 = sext i32 %298 to i64
  %300 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %299
  %301 = load %union.rec*, %union.rec** %300, align 8
  %302 = icmp eq %union.rec* %301, null
  br i1 %302, label %303, label %307

; <label>:303                                     ; preds = %297
  %304 = load i32, i32* @zz_size, align 4
  %305 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %306 = call %union.rec* @GetMemory(i32 %304, %struct.FILE_POS* %305)
  store %union.rec* %306, %union.rec** @zz_hold, align 8
  br label %321

; <label>:307                                     ; preds = %297
  %308 = load i32, i32* @zz_size, align 4
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %309
  %311 = load %union.rec*, %union.rec** %310, align 8
  store %union.rec* %311, %union.rec** @zz_hold, align 8
  store %union.rec* %311, %union.rec** @zz_hold, align 8
  %312 = load %union.rec*, %union.rec** @zz_hold, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 0
  %315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %314, i32 0, i64 0
  %316 = getelementptr inbounds %struct.LIST, %struct.LIST* %315, i32 0, i32 0
  %317 = load %union.rec*, %union.rec** %316, align 8
  %318 = load i32, i32* @zz_size, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %319
  store %union.rec* %317, %union.rec** %320, align 8
  br label %321

; <label>:321                                     ; preds = %307, %303
  br label %322

; <label>:322                                     ; preds = %321, %294
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 1
  %326 = bitcast %union.FIRST_UNION* %325 to %struct.anon*
  %327 = getelementptr inbounds %struct.anon, %struct.anon* %326, i32 0, i32 0
  store i8 0, i8* %327, align 1
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 1
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 1
  store %union.rec* %328, %union.rec** %333, align 8
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 0
  %337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %336, i32 0, i64 1
  %338 = getelementptr inbounds %struct.LIST, %struct.LIST* %337, i32 0, i32 0
  store %union.rec* %328, %union.rec** %338, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 0
  %342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %341, i32 0, i64 0
  %343 = getelementptr inbounds %struct.LIST, %struct.LIST* %342, i32 0, i32 1
  store %union.rec* %328, %union.rec** %343, align 8
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 0
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 0
  store %union.rec* %328, %union.rec** %348, align 8
  store %union.rec* %328, %union.rec** @xx_link, align 8
  %349 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %349, %union.rec** @zz_res, align 8
  %350 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %350, %union.rec** @zz_hold, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = icmp eq %union.rec* %351, null
  br i1 %352, label %353, label %355

; <label>:353                                     ; preds = %322
  %354 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %403

; <label>:355                                     ; preds = %322
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %357 = icmp eq %union.rec* %356, null
  br i1 %357, label %358, label %360

; <label>:358                                     ; preds = %355
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %401

; <label>:360                                     ; preds = %355
  %361 = load %union.rec*, %union.rec** @zz_hold, align 8
  %362 = bitcast %union.rec* %361 to %struct.word_type*
  %363 = getelementptr inbounds %struct.word_type, %struct.word_type* %362, i32 0, i32 0
  %364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %363, i32 0, i64 0
  %365 = getelementptr inbounds %struct.LIST, %struct.LIST* %364, i32 0, i32 0
  %366 = load %union.rec*, %union.rec** %365, align 8
  store %union.rec* %366, %union.rec** @zz_tmp, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 0
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 0
  %372 = load %union.rec*, %union.rec** %371, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 0
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 0
  store %union.rec* %372, %union.rec** %377, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 0
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %383, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %386, i32 0, i64 0
  %388 = getelementptr inbounds %struct.LIST, %struct.LIST* %387, i32 0, i32 1
  store %union.rec* %378, %union.rec** %388, align 8
  %389 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %390 = load %union.rec*, %union.rec** @zz_res, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 0
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 0
  store %union.rec* %389, %union.rec** %394, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %397 = bitcast %union.rec* %396 to %struct.word_type*
  %398 = getelementptr inbounds %struct.word_type, %struct.word_type* %397, i32 0, i32 0
  %399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %398, i32 0, i64 0
  %400 = getelementptr inbounds %struct.LIST, %struct.LIST* %399, i32 0, i32 1
  store %union.rec* %395, %union.rec** %400, align 8
  br label %401

; <label>:401                                     ; preds = %360, %358
  %402 = phi %union.rec* [ %359, %358 ], [ %395, %360 ]
  br label %403

; <label>:403                                     ; preds = %401, %353
  %404 = phi %union.rec* [ %354, %353 ], [ %402, %401 ]
  %405 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %405, %union.rec** @zz_res, align 8
  %406 = load %union.rec*, %union.rec** %3, align 8
  %407 = bitcast %union.rec* %406 to %struct.symbol_type*
  %408 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %407, i32 0, i32 8
  %409 = load %union.rec*, %union.rec** %408, align 8
  store %union.rec* %409, %union.rec** @zz_hold, align 8
  %410 = load %union.rec*, %union.rec** @zz_hold, align 8
  %411 = icmp eq %union.rec* %410, null
  br i1 %411, label %412, label %414

; <label>:412                                     ; preds = %403
  %413 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %462

; <label>:414                                     ; preds = %403
  %415 = load %union.rec*, %union.rec** @zz_res, align 8
  %416 = icmp eq %union.rec* %415, null
  br i1 %416, label %417, label %419

; <label>:417                                     ; preds = %414
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %460

; <label>:419                                     ; preds = %414
  %420 = load %union.rec*, %union.rec** @zz_hold, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 0
  %423 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %422, i32 0, i64 1
  %424 = getelementptr inbounds %struct.LIST, %struct.LIST* %423, i32 0, i32 0
  %425 = load %union.rec*, %union.rec** %424, align 8
  store %union.rec* %425, %union.rec** @zz_tmp, align 8
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  %427 = bitcast %union.rec* %426 to %struct.word_type*
  %428 = getelementptr inbounds %struct.word_type, %struct.word_type* %427, i32 0, i32 0
  %429 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %428, i32 0, i64 1
  %430 = getelementptr inbounds %struct.LIST, %struct.LIST* %429, i32 0, i32 0
  %431 = load %union.rec*, %union.rec** %430, align 8
  %432 = load %union.rec*, %union.rec** @zz_hold, align 8
  %433 = bitcast %union.rec* %432 to %struct.word_type*
  %434 = getelementptr inbounds %struct.word_type, %struct.word_type* %433, i32 0, i32 0
  %435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %434, i32 0, i64 1
  %436 = getelementptr inbounds %struct.LIST, %struct.LIST* %435, i32 0, i32 0
  store %union.rec* %431, %union.rec** %436, align 8
  %437 = load %union.rec*, %union.rec** @zz_hold, align 8
  %438 = load %union.rec*, %union.rec** @zz_res, align 8
  %439 = bitcast %union.rec* %438 to %struct.word_type*
  %440 = getelementptr inbounds %struct.word_type, %struct.word_type* %439, i32 0, i32 0
  %441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %440, i32 0, i64 1
  %442 = getelementptr inbounds %struct.LIST, %struct.LIST* %441, i32 0, i32 0
  %443 = load %union.rec*, %union.rec** %442, align 8
  %444 = bitcast %union.rec* %443 to %struct.word_type*
  %445 = getelementptr inbounds %struct.word_type, %struct.word_type* %444, i32 0, i32 0
  %446 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %445, i32 0, i64 1
  %447 = getelementptr inbounds %struct.LIST, %struct.LIST* %446, i32 0, i32 1
  store %union.rec* %437, %union.rec** %447, align 8
  %448 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %449 = load %union.rec*, %union.rec** @zz_res, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 0
  %452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %451, i32 0, i64 1
  %453 = getelementptr inbounds %struct.LIST, %struct.LIST* %452, i32 0, i32 0
  store %union.rec* %448, %union.rec** %453, align 8
  %454 = load %union.rec*, %union.rec** @zz_res, align 8
  %455 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %456 = bitcast %union.rec* %455 to %struct.word_type*
  %457 = getelementptr inbounds %struct.word_type, %struct.word_type* %456, i32 0, i32 0
  %458 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %457, i32 0, i64 1
  %459 = getelementptr inbounds %struct.LIST, %struct.LIST* %458, i32 0, i32 1
  store %union.rec* %454, %union.rec** %459, align 8
  br label %460

; <label>:460                                     ; preds = %419, %417
  %461 = phi %union.rec* [ %418, %417 ], [ %454, %419 ]
  br label %462

; <label>:462                                     ; preds = %460, %412
  %463 = phi %union.rec* [ %413, %412 ], [ %461, %460 ]
  %464 = load %union.rec*, %union.rec** %1, align 8
  %465 = bitcast %union.rec* %464 to %struct.word_type*
  %466 = getelementptr inbounds %struct.word_type, %struct.word_type* %465, i32 0, i32 0
  %467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %466, i32 0, i64 0
  %468 = getelementptr inbounds %struct.LIST, %struct.LIST* %467, i32 0, i32 0
  %469 = load %union.rec*, %union.rec** %468, align 8
  store %union.rec* %469, %union.rec** %link, align 8
  %470 = load i32, i32* %count, align 4
  %471 = add nsw i32 %470, 1
  %472 = trunc i32 %471 to i8
  %473 = load %union.rec*, %union.rec** %link, align 8
  %474 = bitcast %union.rec* %473 to %struct.link_type*
  %475 = getelementptr inbounds %struct.link_type, %struct.link_type* %474, i32 0, i32 2
  store i8 %472, i8* %475, align 1
  %476 = load %union.rec*, %union.rec** %link, align 8
  %477 = bitcast %union.rec* %476 to %struct.link_type*
  %478 = getelementptr inbounds %struct.link_type, %struct.link_type* %477, i32 0, i32 3
  store i8 0, i8* %478, align 1
  br label %479

; <label>:479                                     ; preds = %462, %277
  %480 = load %union.rec*, %union.rec** %link, align 8
  %481 = bitcast %union.rec* %480 to %struct.link_type*
  %482 = getelementptr inbounds %struct.link_type, %struct.link_type* %481, i32 0, i32 2
  %483 = load i8, i8* %482, align 1
  %484 = zext i8 %483 to i32
  store i32 %484, i32* %symnum, align 4
  %485 = load i32, i32* %2, align 4
  %486 = icmp ne i32 %485, 0
  br i1 %486, label %487, label %509

; <label>:487                                     ; preds = %479
  %488 = load %union.rec*, %union.rec** %3, align 8
  %489 = bitcast %union.rec* %488 to %struct.word_type*
  %490 = getelementptr inbounds %struct.word_type, %struct.word_type* %489, i32 0, i32 2
  %491 = bitcast %union.SECOND_UNION* %490 to %struct.anon.5*
  %492 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %491, i32 0, i32 1
  %493 = bitcast [3 x i8]* %492 to i24*
  %494 = load i24, i24* %493, align 1
  %495 = and i24 %494, -2049
  %496 = or i24 %495, 2048
  store i24 %496, i24* %493, align 1
  %497 = load %union.rec*, %union.rec** %3, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 2
  %500 = bitcast %union.SECOND_UNION* %499 to %struct.anon.5*
  %501 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %500, i32 0, i32 1
  %502 = bitcast [3 x i8]* %501 to i24*
  %503 = load i24, i24* %502, align 1
  %504 = and i24 %503, -4097
  %505 = or i24 %504, 4096
  store i24 %505, i24* %502, align 1
  %506 = load %union.rec*, %union.rec** %link, align 8
  %507 = bitcast %union.rec* %506 to %struct.link_type*
  %508 = getelementptr inbounds %struct.link_type, %struct.link_type* %507, i32 0, i32 3
  store i8 1, i8* %508, align 1
  br label %509

; <label>:509                                     ; preds = %487, %479
  %510 = load %union.rec*, %union.rec** %1, align 8
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 3
  %513 = bitcast %union.THIRD_UNION* %512 to %struct._IO_FILE**
  %514 = load %struct._IO_FILE*, %struct._IO_FILE** %513, align 8
  %515 = load i32, i32* %2, align 4
  %516 = icmp ne i32 %515, 0
  %517 = select i1 %516, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)
  %518 = load i32, i32* %symnum, align 4
  %519 = load i8*, i8** %4, align 8
  %520 = load i8*, i8** %6, align 8
  %521 = load i32, i32* @DbInsert.extra_seq, align 4
  %522 = add nsw i32 %521, 1
  store i32 %522, i32* @DbInsert.extra_seq, align 4
  %523 = call i8* @StringFiveInt(i32 %522)
  %524 = load i64, i64* %8, align 8
  %525 = load i32, i32* %9, align 4
  %526 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %527 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %514, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.16, i32 0, i32 0), i8* %517, i32 %518, i8* %519, i8* %520, i8* %523, i64 %524, i32 %525, i8* %526)
  ret void
}

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @dtab_new(i32 %newsize) #0 {
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
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 1, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.55, i32 0, i32 0), i32 1, %struct.FILE_POS* %11)
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
  %28 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %27, i32 0, i64 %25
  store %union.rec* null, %union.rec** %28, align 8
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
define internal %union.rec* @dtab_retrieve(%union.rec* %sym, i8* %tag, %struct.anon.14* %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca %struct.anon.14*, align 8
  %x = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %pos = alloca i64, align 8
  %p = alloca i8*, align 8
  store %union.rec* %sym, %union.rec** %2, align 8
  store i8* %tag, i8** %3, align 8
  store %struct.anon.14* %S, %struct.anon.14** %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** %p, align 8
  %6 = load %union.rec*, %union.rec** %2, align 8
  %7 = ptrtoint %union.rec* %6 to i64
  store i64 %7, i64* %pos, align 8
  br label %8

; <label>:8                                       ; preds = %12, %0
  %9 = load i8*, i8** %p, align 8
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %12, label %19

; <label>:12                                      ; preds = %8
  %13 = load i8*, i8** %p, align 8
  %14 = getelementptr inbounds i8, i8* %13, i32 1
  store i8* %14, i8** %p, align 8
  %15 = load i8, i8* %13, align 1
  %16 = zext i8 %15 to i64
  %17 = load i64, i64* %pos, align 8
  %18 = add i64 %17, %16
  store i64 %18, i64* %pos, align 8
  br label %8

; <label>:19                                      ; preds = %8
  %20 = load i64, i64* %pos, align 8
  %21 = load %struct.anon.14*, %struct.anon.14** %4, align 8
  %22 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sext i32 %23 to i64
  %25 = urem i64 %20, %24
  store i64 %25, i64* %pos, align 8
  %26 = load i64, i64* %pos, align 8
  %27 = load %struct.anon.14*, %struct.anon.14** %4, align 8
  %28 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %27, i32 0, i32 2
  %29 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %28, i32 0, i64 %26
  %30 = load %union.rec*, %union.rec** %29, align 8
  store %union.rec* %30, %union.rec** %x, align 8
  %31 = load %union.rec*, %union.rec** %x, align 8
  %32 = icmp eq %union.rec* %31, null
  br i1 %32, label %33, label %34

; <label>:33                                      ; preds = %19
  store %union.rec* null, %union.rec** %1
  br label %96

; <label>:34                                      ; preds = %19
  %35 = load %union.rec*, %union.rec** %x, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** %link, align 8
  br label %41

; <label>:41                                      ; preds = %88, %34
  %42 = load %union.rec*, %union.rec** %link, align 8
  %43 = load %union.rec*, %union.rec** %x, align 8
  %44 = icmp ne %union.rec* %42, %43
  br i1 %44, label %45, label %95

; <label>:45                                      ; preds = %41
  %46 = load %union.rec*, %union.rec** %link, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 1
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %50, align 8
  store %union.rec* %51, %union.rec** %y, align 8
  br label %52

; <label>:52                                      ; preds = %62, %45
  %53 = load %union.rec*, %union.rec** %y, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 1
  %56 = bitcast %union.FIRST_UNION* %55 to %struct.anon*
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %69

; <label>:61                                      ; preds = %52
  br label %62

; <label>:62                                      ; preds = %61
  %63 = load %union.rec*, %union.rec** %y, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 0
  %66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %65, i32 0, i64 1
  %67 = getelementptr inbounds %struct.LIST, %struct.LIST* %66, i32 0, i32 0
  %68 = load %union.rec*, %union.rec** %67, align 8
  store %union.rec* %68, %union.rec** %y, align 8
  br label %52

; <label>:69                                      ; preds = %52
  %70 = load %union.rec*, %union.rec** %2, align 8
  %71 = load %union.rec*, %union.rec** %y, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 3
  %74 = bitcast %union.THIRD_UNION* %73 to %union.rec**
  %75 = load %union.rec*, %union.rec** %74, align 8
  %76 = icmp eq %union.rec* %70, %75
  br i1 %76, label %77, label %87

; <label>:77                                      ; preds = %69
  %78 = load i8*, i8** %3, align 8
  %79 = load %union.rec*, %union.rec** %y, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 4
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %81, i32 0, i32 0
  %83 = call i32 @strcmp(i8* %78, i8* %82) #4
  %84 = icmp eq i32 %83, 0
  br i1 %84, label %85, label %87

; <label>:85                                      ; preds = %77
  %86 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %86, %union.rec** %1
  br label %96

; <label>:87                                      ; preds = %77, %69
  br label %88

; <label>:88                                      ; preds = %87
  %89 = load %union.rec*, %union.rec** %link, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 0
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 1
  %94 = load %union.rec*, %union.rec** %93, align 8
  store %union.rec* %94, %union.rec** %link, align 8
  br label %41

; <label>:95                                      ; preds = %41
  store %union.rec* null, %union.rec** %1
  br label %96

; <label>:96                                      ; preds = %95, %85, %33
  %97 = load %union.rec*, %union.rec** %1
  ret %union.rec* %97
}

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define internal void @dtab_insert(%union.rec* %x, %struct.anon.14** %S) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.anon.14**, align 8
  %pos = alloca i64, align 8
  %z = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
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
  %21 = call %struct.anon.14* @dtab_rehash(%struct.anon.14* %15, i32 %20)
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
  %29 = load %union.rec*, %union.rec** %1, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 4
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i32 0, i32 0
  store i8* %32, i8** %p, align 8
  %33 = load %union.rec*, %union.rec** %1, align 8
  %34 = bitcast %union.rec* %33 to %struct.word_type*
  %35 = getelementptr inbounds %struct.word_type, %struct.word_type* %34, i32 0, i32 3
  %36 = bitcast %union.THIRD_UNION* %35 to %union.rec**
  %37 = load %union.rec*, %union.rec** %36, align 8
  %38 = ptrtoint %union.rec* %37 to i64
  store i64 %38, i64* %pos, align 8
  br label %39

; <label>:39                                      ; preds = %43, %23
  %40 = load i8*, i8** %p, align 8
  %41 = load i8, i8* %40, align 1
  %42 = icmp ne i8 %41, 0
  br i1 %42, label %43, label %50

; <label>:43                                      ; preds = %39
  %44 = load i8*, i8** %p, align 8
  %45 = getelementptr inbounds i8, i8* %44, i32 1
  store i8* %45, i8** %p, align 8
  %46 = load i8, i8* %44, align 1
  %47 = zext i8 %46 to i64
  %48 = load i64, i64* %pos, align 8
  %49 = add i64 %48, %47
  store i64 %49, i64* %pos, align 8
  br label %39

; <label>:50                                      ; preds = %39
  %51 = load i64, i64* %pos, align 8
  %52 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %53 = load %struct.anon.14*, %struct.anon.14** %52, align 8
  %54 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = sext i32 %55 to i64
  %57 = urem i64 %51, %56
  store i64 %57, i64* %pos, align 8
  %58 = load i64, i64* %pos, align 8
  %59 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %60 = load %struct.anon.14*, %struct.anon.14** %59, align 8
  %61 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %60, i32 0, i32 2
  %62 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %61, i32 0, i64 %58
  %63 = load %union.rec*, %union.rec** %62, align 8
  %64 = icmp eq %union.rec* %63, null
  br i1 %64, label %65, label %130

; <label>:65                                      ; preds = %50
  %66 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %67 = zext i8 %66 to i32
  store i32 %67, i32* @zz_size, align 4
  %68 = sext i32 %67 to i64
  %69 = icmp uge i64 %68, 265
  br i1 %69, label %70, label %73

; <label>:70                                      ; preds = %65
  %71 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %72 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %71)
  br label %98

; <label>:73                                      ; preds = %65
  %74 = load i32, i32* @zz_size, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %75
  %77 = load %union.rec*, %union.rec** %76, align 8
  %78 = icmp eq %union.rec* %77, null
  br i1 %78, label %79, label %83

; <label>:79                                      ; preds = %73
  %80 = load i32, i32* @zz_size, align 4
  %81 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %82 = call %union.rec* @GetMemory(i32 %80, %struct.FILE_POS* %81)
  store %union.rec* %82, %union.rec** @zz_hold, align 8
  br label %97

; <label>:83                                      ; preds = %73
  %84 = load i32, i32* @zz_size, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %85
  %87 = load %union.rec*, %union.rec** %86, align 8
  store %union.rec* %87, %union.rec** @zz_hold, align 8
  store %union.rec* %87, %union.rec** @zz_hold, align 8
  %88 = load %union.rec*, %union.rec** @zz_hold, align 8
  %89 = bitcast %union.rec* %88 to %struct.word_type*
  %90 = getelementptr inbounds %struct.word_type, %struct.word_type* %89, i32 0, i32 0
  %91 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %90, i32 0, i64 0
  %92 = getelementptr inbounds %struct.LIST, %struct.LIST* %91, i32 0, i32 0
  %93 = load %union.rec*, %union.rec** %92, align 8
  %94 = load i32, i32* @zz_size, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %95
  store %union.rec* %93, %union.rec** %96, align 8
  br label %97

; <label>:97                                      ; preds = %83, %79
  br label %98

; <label>:98                                      ; preds = %97, %70
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 1
  %102 = bitcast %union.FIRST_UNION* %101 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  store i8 17, i8* %103, align 1
  %104 = load %union.rec*, %union.rec** @zz_hold, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 1
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 1
  store %union.rec* %104, %union.rec** %109, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 1
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 0
  store %union.rec* %104, %union.rec** %114, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 0
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 1
  store %union.rec* %104, %union.rec** %119, align 8
  %120 = load %union.rec*, %union.rec** @zz_hold, align 8
  %121 = bitcast %union.rec* %120 to %struct.word_type*
  %122 = getelementptr inbounds %struct.word_type, %struct.word_type* %121, i32 0, i32 0
  %123 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %122, i32 0, i64 0
  %124 = getelementptr inbounds %struct.LIST, %struct.LIST* %123, i32 0, i32 0
  store %union.rec* %104, %union.rec** %124, align 8
  %125 = load i64, i64* %pos, align 8
  %126 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %127 = load %struct.anon.14*, %struct.anon.14** %126, align 8
  %128 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %127, i32 0, i32 2
  %129 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %128, i32 0, i64 %125
  store %union.rec* %104, %union.rec** %129, align 8
  br label %130

; <label>:130                                     ; preds = %98, %50
  %131 = load i64, i64* %pos, align 8
  %132 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %133 = load %struct.anon.14*, %struct.anon.14** %132, align 8
  %134 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %133, i32 0, i32 2
  %135 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %134, i32 0, i64 %131
  %136 = load %union.rec*, %union.rec** %135, align 8
  store %union.rec* %136, %union.rec** %z, align 8
  %137 = load %union.rec*, %union.rec** %z, align 8
  %138 = bitcast %union.rec* %137 to %struct.word_type*
  %139 = getelementptr inbounds %struct.word_type, %struct.word_type* %138, i32 0, i32 0
  %140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %139, i32 0, i64 0
  %141 = getelementptr inbounds %struct.LIST, %struct.LIST* %140, i32 0, i32 1
  %142 = load %union.rec*, %union.rec** %141, align 8
  store %union.rec* %142, %union.rec** %link, align 8
  br label %143

; <label>:143                                     ; preds = %198, %130
  %144 = load %union.rec*, %union.rec** %link, align 8
  %145 = load %union.rec*, %union.rec** %z, align 8
  %146 = icmp ne %union.rec* %144, %145
  br i1 %146, label %147, label %205

; <label>:147                                     ; preds = %143
  %148 = load %union.rec*, %union.rec** %link, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %150, i32 0, i64 1
  %152 = getelementptr inbounds %struct.LIST, %struct.LIST* %151, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %152, align 8
  store %union.rec* %153, %union.rec** %y, align 8
  br label %154

; <label>:154                                     ; preds = %164, %147
  %155 = load %union.rec*, %union.rec** %y, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 1
  %158 = bitcast %union.FIRST_UNION* %157 to %struct.anon*
  %159 = getelementptr inbounds %struct.anon, %struct.anon* %158, i32 0, i32 0
  %160 = load i8, i8* %159, align 1
  %161 = zext i8 %160 to i32
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %171

; <label>:163                                     ; preds = %154
  br label %164

; <label>:164                                     ; preds = %163
  %165 = load %union.rec*, %union.rec** %y, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %169, align 8
  store %union.rec* %170, %union.rec** %y, align 8
  br label %154

; <label>:171                                     ; preds = %154
  %172 = load %union.rec*, %union.rec** %1, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 3
  %175 = bitcast %union.THIRD_UNION* %174 to %union.rec**
  %176 = load %union.rec*, %union.rec** %175, align 8
  %177 = load %union.rec*, %union.rec** %y, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 3
  %180 = bitcast %union.THIRD_UNION* %179 to %union.rec**
  %181 = load %union.rec*, %union.rec** %180, align 8
  %182 = icmp eq %union.rec* %176, %181
  br i1 %182, label %183, label %197

; <label>:183                                     ; preds = %171
  %184 = load %union.rec*, %union.rec** %1, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 4
  %187 = getelementptr inbounds [4 x i8], [4 x i8]* %186, i32 0, i32 0
  %188 = load %union.rec*, %union.rec** %y, align 8
  %189 = bitcast %union.rec* %188 to %struct.word_type*
  %190 = getelementptr inbounds %struct.word_type, %struct.word_type* %189, i32 0, i32 4
  %191 = getelementptr inbounds [4 x i8], [4 x i8]* %190, i32 0, i32 0
  %192 = call i32 @strcmp(i8* %187, i8* %191) #4
  %193 = icmp eq i32 %192, 0
  br i1 %193, label %194, label %197

; <label>:194                                     ; preds = %183
  %195 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %196 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %195, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.56, i32 0, i32 0))
  br label %197

; <label>:197                                     ; preds = %194, %183, %171
  br label %198

; <label>:198                                     ; preds = %197
  %199 = load %union.rec*, %union.rec** %link, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 0
  %202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %201, i32 0, i64 0
  %203 = getelementptr inbounds %struct.LIST, %struct.LIST* %202, i32 0, i32 1
  %204 = load %union.rec*, %union.rec** %203, align 8
  store %union.rec* %204, %union.rec** %link, align 8
  br label %143

; <label>:205                                     ; preds = %143
  %206 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %207 = zext i8 %206 to i32
  store i32 %207, i32* @zz_size, align 4
  %208 = sext i32 %207 to i64
  %209 = icmp uge i64 %208, 265
  br i1 %209, label %210, label %213

; <label>:210                                     ; preds = %205
  %211 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %212 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %211)
  br label %238

; <label>:213                                     ; preds = %205
  %214 = load i32, i32* @zz_size, align 4
  %215 = sext i32 %214 to i64
  %216 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %215
  %217 = load %union.rec*, %union.rec** %216, align 8
  %218 = icmp eq %union.rec* %217, null
  br i1 %218, label %219, label %223

; <label>:219                                     ; preds = %213
  %220 = load i32, i32* @zz_size, align 4
  %221 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %222 = call %union.rec* @GetMemory(i32 %220, %struct.FILE_POS* %221)
  store %union.rec* %222, %union.rec** @zz_hold, align 8
  br label %237

; <label>:223                                     ; preds = %213
  %224 = load i32, i32* @zz_size, align 4
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %225
  %227 = load %union.rec*, %union.rec** %226, align 8
  store %union.rec* %227, %union.rec** @zz_hold, align 8
  store %union.rec* %227, %union.rec** @zz_hold, align 8
  %228 = load %union.rec*, %union.rec** @zz_hold, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 0
  %231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %230, i32 0, i64 0
  %232 = getelementptr inbounds %struct.LIST, %struct.LIST* %231, i32 0, i32 0
  %233 = load %union.rec*, %union.rec** %232, align 8
  %234 = load i32, i32* @zz_size, align 4
  %235 = sext i32 %234 to i64
  %236 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %235
  store %union.rec* %233, %union.rec** %236, align 8
  br label %237

; <label>:237                                     ; preds = %223, %219
  br label %238

; <label>:238                                     ; preds = %237, %210
  %239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 1
  %242 = bitcast %union.FIRST_UNION* %241 to %struct.anon*
  %243 = getelementptr inbounds %struct.anon, %struct.anon* %242, i32 0, i32 0
  store i8 0, i8* %243, align 1
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 1
  store %union.rec* %244, %union.rec** %249, align 8
  %250 = load %union.rec*, %union.rec** @zz_hold, align 8
  %251 = bitcast %union.rec* %250 to %struct.word_type*
  %252 = getelementptr inbounds %struct.word_type, %struct.word_type* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %252, i32 0, i64 1
  %254 = getelementptr inbounds %struct.LIST, %struct.LIST* %253, i32 0, i32 0
  store %union.rec* %244, %union.rec** %254, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %257, i32 0, i64 0
  %259 = getelementptr inbounds %struct.LIST, %struct.LIST* %258, i32 0, i32 1
  store %union.rec* %244, %union.rec** %259, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 0
  %263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %262, i32 0, i64 0
  %264 = getelementptr inbounds %struct.LIST, %struct.LIST* %263, i32 0, i32 0
  store %union.rec* %244, %union.rec** %264, align 8
  store %union.rec* %244, %union.rec** @xx_link, align 8
  %265 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %265, %union.rec** @zz_res, align 8
  %266 = load i64, i64* %pos, align 8
  %267 = load %struct.anon.14**, %struct.anon.14*** %2, align 8
  %268 = load %struct.anon.14*, %struct.anon.14** %267, align 8
  %269 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %268, i32 0, i32 2
  %270 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %269, i32 0, i64 %266
  %271 = load %union.rec*, %union.rec** %270, align 8
  store %union.rec* %271, %union.rec** @zz_hold, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = icmp eq %union.rec* %272, null
  br i1 %273, label %274, label %276

; <label>:274                                     ; preds = %238
  %275 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %324

; <label>:276                                     ; preds = %238
  %277 = load %union.rec*, %union.rec** @zz_res, align 8
  %278 = icmp eq %union.rec* %277, null
  br i1 %278, label %279, label %281

; <label>:279                                     ; preds = %276
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %322

; <label>:281                                     ; preds = %276
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %283 = bitcast %union.rec* %282 to %struct.word_type*
  %284 = getelementptr inbounds %struct.word_type, %struct.word_type* %283, i32 0, i32 0
  %285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %284, i32 0, i64 0
  %286 = getelementptr inbounds %struct.LIST, %struct.LIST* %285, i32 0, i32 0
  %287 = load %union.rec*, %union.rec** %286, align 8
  store %union.rec* %287, %union.rec** @zz_tmp, align 8
  %288 = load %union.rec*, %union.rec** @zz_res, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %290, i32 0, i64 0
  %292 = getelementptr inbounds %struct.LIST, %struct.LIST* %291, i32 0, i32 0
  %293 = load %union.rec*, %union.rec** %292, align 8
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 0
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 0
  store %union.rec* %293, %union.rec** %298, align 8
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 0
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 0
  %305 = load %union.rec*, %union.rec** %304, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 0
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 1
  store %union.rec* %299, %union.rec** %309, align 8
  %310 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 0
  %314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %313, i32 0, i64 0
  %315 = getelementptr inbounds %struct.LIST, %struct.LIST* %314, i32 0, i32 0
  store %union.rec* %310, %union.rec** %315, align 8
  %316 = load %union.rec*, %union.rec** @zz_res, align 8
  %317 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 0
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 1
  store %union.rec* %316, %union.rec** %321, align 8
  br label %322

; <label>:322                                     ; preds = %281, %279
  %323 = phi %union.rec* [ %280, %279 ], [ %316, %281 ]
  br label %324

; <label>:324                                     ; preds = %322, %274
  %325 = phi %union.rec* [ %275, %274 ], [ %323, %322 ]
  %326 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %326, %union.rec** @zz_res, align 8
  %327 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %327, %union.rec** @zz_hold, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = icmp eq %union.rec* %328, null
  br i1 %329, label %330, label %332

; <label>:330                                     ; preds = %324
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %380

; <label>:332                                     ; preds = %324
  %333 = load %union.rec*, %union.rec** @zz_res, align 8
  %334 = icmp eq %union.rec* %333, null
  br i1 %334, label %335, label %337

; <label>:335                                     ; preds = %332
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %378

; <label>:337                                     ; preds = %332
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  %339 = bitcast %union.rec* %338 to %struct.word_type*
  %340 = getelementptr inbounds %struct.word_type, %struct.word_type* %339, i32 0, i32 0
  %341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %340, i32 0, i64 1
  %342 = getelementptr inbounds %struct.LIST, %struct.LIST* %341, i32 0, i32 0
  %343 = load %union.rec*, %union.rec** %342, align 8
  store %union.rec* %343, %union.rec** @zz_tmp, align 8
  %344 = load %union.rec*, %union.rec** @zz_res, align 8
  %345 = bitcast %union.rec* %344 to %struct.word_type*
  %346 = getelementptr inbounds %struct.word_type, %struct.word_type* %345, i32 0, i32 0
  %347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %346, i32 0, i64 1
  %348 = getelementptr inbounds %struct.LIST, %struct.LIST* %347, i32 0, i32 0
  %349 = load %union.rec*, %union.rec** %348, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 1
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  store %union.rec* %349, %union.rec** %354, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %358, i32 0, i64 1
  %360 = getelementptr inbounds %struct.LIST, %struct.LIST* %359, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %360, align 8
  %362 = bitcast %union.rec* %361 to %struct.word_type*
  %363 = getelementptr inbounds %struct.word_type, %struct.word_type* %362, i32 0, i32 0
  %364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %363, i32 0, i64 1
  %365 = getelementptr inbounds %struct.LIST, %struct.LIST* %364, i32 0, i32 1
  store %union.rec* %355, %union.rec** %365, align 8
  %366 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 1
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 0
  store %union.rec* %366, %union.rec** %371, align 8
  %372 = load %union.rec*, %union.rec** @zz_res, align 8
  %373 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 1
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 1
  store %union.rec* %372, %union.rec** %377, align 8
  br label %378

; <label>:378                                     ; preds = %337, %335
  %379 = phi %union.rec* [ %336, %335 ], [ %372, %337 ]
  br label %380

; <label>:380                                     ; preds = %378, %330
  %381 = phi %union.rec* [ %331, %330 ], [ %379, %378 ]
  ret void
}

declare i8* @SymName(%union.rec*) #1

declare i8* @EchoFilePos(%struct.FILE_POS*) #1

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #2

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare %struct._IO_FILE* @fopen(i8*, i8*) #1

declare i8* @FileName(i16 zeroext) #1

declare void @CrossInit(%union.rec*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @fprintf(%struct._IO_FILE*, i8*, ...) #1

declare i8* @StringFiveInt(i32) #1

; Function Attrs: nounwind uwtable
define void @DbConvert(%union.rec* %db, i32 %full_name) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %oldname = alloca [522 x i8], align 16
  %newname = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %db, %union.rec** %1, align 8
  store i32 %full_name, i32* %2, align 4
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 2
  %6 = bitcast %union.SECOND_UNION* %5 to %struct.anon.3*
  %7 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %6, i32 0, i32 1
  %8 = load i8, i8* %7, align 1
  %9 = icmp ne i8 %8, 0
  br i1 %9, label %10, label %13

; <label>:10                                      ; preds = %0
  %11 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %12 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %11, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.18, i32 0, i32 0))
  br label %13

; <label>:13                                      ; preds = %10, %0
  %14 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %15 = load %union.rec*, %union.rec** %1, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 4
  %18 = getelementptr inbounds [4 x i8], [4 x i8]* %17, i32 0, i32 0
  %19 = call i8* @strcpy(i8* %14, i8* %18) #5
  %20 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %21 = call i8* @strcat(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0)) #5
  %22 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %1, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 4
  %26 = getelementptr inbounds [4 x i8], [4 x i8]* %25, i32 0, i32 0
  %27 = call i8* @strcpy(i8* %22, i8* %26) #5
  %28 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %29 = call i8* @strcat(i8* %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i32 0, i32 0)) #5
  %30 = load %union.rec*, %union.rec** %1, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 3
  %33 = bitcast %union.THIRD_UNION* %32 to %struct._IO_FILE**
  %34 = load %struct._IO_FILE*, %struct._IO_FILE** %33, align 8
  %35 = icmp ne %struct._IO_FILE* %34, null
  br i1 %35, label %36, label %159

; <label>:36                                      ; preds = %13
  %37 = load %union.rec*, %union.rec** %1, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 3
  %40 = bitcast %union.THIRD_UNION* %39 to %struct._IO_FILE**
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %40, align 8
  %42 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.22, i32 0, i32 0))
  %43 = load %union.rec*, %union.rec** %1, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 0
  %46 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %45, i32 0, i64 0
  %47 = getelementptr inbounds %struct.LIST, %struct.LIST* %46, i32 0, i32 1
  %48 = load %union.rec*, %union.rec** %47, align 8
  store %union.rec* %48, %union.rec** %link, align 8
  br label %49

; <label>:49                                      ; preds = %143, %36
  %50 = load %union.rec*, %union.rec** %link, align 8
  %51 = load %union.rec*, %union.rec** %1, align 8
  %52 = icmp ne %union.rec* %50, %51
  br i1 %52, label %53, label %150

; <label>:53                                      ; preds = %49
  %54 = load %union.rec*, %union.rec** %link, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 0
  %59 = load %union.rec*, %union.rec** %58, align 8
  store %union.rec* %59, %union.rec** %y, align 8
  br label %60

; <label>:60                                      ; preds = %70, %53
  %61 = load %union.rec*, %union.rec** %y, align 8
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
  %71 = load %union.rec*, %union.rec** %y, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 1
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 0
  %76 = load %union.rec*, %union.rec** %75, align 8
  store %union.rec* %76, %union.rec** %y, align 8
  br label %60

; <label>:77                                      ; preds = %60
  %78 = load %union.rec*, %union.rec** %y, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 1
  %81 = bitcast %union.FIRST_UNION* %80 to %struct.anon*
  %82 = getelementptr inbounds %struct.anon, %struct.anon* %81, i32 0, i32 0
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp eq i32 %84, 140
  br i1 %85, label %98, label %86

; <label>:86                                      ; preds = %77
  %87 = load %union.rec*, %union.rec** %y, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 1
  %90 = bitcast %union.FIRST_UNION* %89 to %struct.anon*
  %91 = getelementptr inbounds %struct.anon, %struct.anon* %90, i32 0, i32 0
  %92 = load i8, i8* %91, align 1
  %93 = zext i8 %92 to i32
  %94 = icmp eq i32 %93, 17
  br i1 %94, label %98, label %95

; <label>:95                                      ; preds = %86
  %96 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %97 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %96, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.23, i32 0, i32 0))
  br label %98

; <label>:98                                      ; preds = %95, %86, %77
  %99 = load %union.rec*, %union.rec** %y, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 1
  %102 = bitcast %union.FIRST_UNION* %101 to %struct.anon*
  %103 = getelementptr inbounds %struct.anon, %struct.anon* %102, i32 0, i32 0
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = icmp ne i32 %105, 140
  br i1 %106, label %107, label %108

; <label>:107                                     ; preds = %98
  br label %143

; <label>:108                                     ; preds = %98
  %109 = load %union.rec*, %union.rec** %1, align 8
  %110 = bitcast %union.rec* %109 to %struct.word_type*
  %111 = getelementptr inbounds %struct.word_type, %struct.word_type* %110, i32 0, i32 3
  %112 = bitcast %union.THIRD_UNION* %111 to %struct._IO_FILE**
  %113 = load %struct._IO_FILE*, %struct._IO_FILE** %112, align 8
  %114 = load %union.rec*, %union.rec** %link, align 8
  %115 = bitcast %union.rec* %114 to %struct.link_type*
  %116 = getelementptr inbounds %struct.link_type, %struct.link_type* %115, i32 0, i32 3
  %117 = load i8, i8* %116, align 1
  %118 = zext i8 %117 to i32
  %119 = icmp ne i32 %118, 0
  %120 = select i1 %119, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.26, i32 0, i32 0)
  %121 = load %union.rec*, %union.rec** %link, align 8
  %122 = bitcast %union.rec* %121 to %struct.link_type*
  %123 = getelementptr inbounds %struct.link_type, %struct.link_type* %122, i32 0, i32 2
  %124 = load i8, i8* %123, align 1
  %125 = zext i8 %124 to i32
  %126 = load i32, i32* %2, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %134

; <label>:128                                     ; preds = %108
  %129 = load %union.rec*, %union.rec** %y, align 8
  %130 = bitcast %union.rec* %129 to %struct.cr_type*
  %131 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %130, i32 0, i32 9
  %132 = load %union.rec*, %union.rec** %131, align 8
  %133 = call i8* @FullSymName(%union.rec* %132, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.27, i32 0, i32 0))
  br label %140

; <label>:134                                     ; preds = %108
  %135 = load %union.rec*, %union.rec** %y, align 8
  %136 = bitcast %union.rec* %135 to %struct.cr_type*
  %137 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %136, i32 0, i32 9
  %138 = load %union.rec*, %union.rec** %137, align 8
  %139 = call i8* @SymName(%union.rec* %138)
  br label %140

; <label>:140                                     ; preds = %134, %128
  %141 = phi i8* [ %133, %128 ], [ %139, %134 ]
  %142 = call i32 (%struct._IO_FILE*, i8*, ...) @fprintf(%struct._IO_FILE* %113, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.24, i32 0, i32 0), i8* %120, i32 %125, i8* %141)
  br label %143

; <label>:143                                     ; preds = %140, %107
  %144 = load %union.rec*, %union.rec** %link, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 0
  %147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %146, i32 0, i64 0
  %148 = getelementptr inbounds %struct.LIST, %struct.LIST* %147, i32 0, i32 1
  %149 = load %union.rec*, %union.rec** %148, align 8
  store %union.rec* %149, %union.rec** %link, align 8
  br label %49

; <label>:150                                     ; preds = %49
  %151 = load %union.rec*, %union.rec** %1, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 3
  %154 = bitcast %union.THIRD_UNION* %153 to %struct._IO_FILE**
  %155 = load %struct._IO_FILE*, %struct._IO_FILE** %154, align 8
  %156 = call i32 @fclose(%struct._IO_FILE* %155)
  %157 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %158 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  call void @SortFile(i8* %157, i8* %158)
  br label %162

; <label>:159                                     ; preds = %13
  %160 = getelementptr inbounds [512 x i8], [512 x i8]* %newname, i32 0, i32 0
  %161 = call i32 @remove(i8* %160) #5
  br label %162

; <label>:162                                     ; preds = %159, %150
  %163 = getelementptr inbounds [522 x i8], [522 x i8]* %oldname, i32 0, i32 0
  %164 = call i32 @remove(i8* %163) #5
  %165 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %165, %union.rec** @xx_hold, align 8
  br label %166

; <label>:166                                     ; preds = %326, %162
  %167 = load %union.rec*, %union.rec** @xx_hold, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 0
  %170 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %169, i32 0, i64 1
  %171 = getelementptr inbounds %struct.LIST, %struct.LIST* %170, i32 0, i32 1
  %172 = load %union.rec*, %union.rec** %171, align 8
  %173 = load %union.rec*, %union.rec** @xx_hold, align 8
  %174 = icmp ne %union.rec* %172, %173
  br i1 %174, label %175, label %341

; <label>:175                                     ; preds = %166
  %176 = load %union.rec*, %union.rec** @xx_hold, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 0
  %179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %178, i32 0, i64 1
  %180 = getelementptr inbounds %struct.LIST, %struct.LIST* %179, i32 0, i32 1
  %181 = load %union.rec*, %union.rec** %180, align 8
  store %union.rec* %181, %union.rec** @xx_link, align 8
  %182 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %182, %union.rec** @zz_hold, align 8
  %183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 0
  %186 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %185, i32 0, i64 1
  %187 = getelementptr inbounds %struct.LIST, %struct.LIST* %186, i32 0, i32 1
  %188 = load %union.rec*, %union.rec** %187, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = icmp eq %union.rec* %188, %189
  br i1 %190, label %191, label %192

; <label>:191                                     ; preds = %175
  br label %233

; <label>:192                                     ; preds = %175
  %193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 1
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 1
  %198 = load %union.rec*, %union.rec** %197, align 8
  store %union.rec* %198, %union.rec** @zz_res, align 8
  %199 = load %union.rec*, %union.rec** @zz_hold, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 0
  %202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %201, i32 0, i64 1
  %203 = getelementptr inbounds %struct.LIST, %struct.LIST* %202, i32 0, i32 0
  %204 = load %union.rec*, %union.rec** %203, align 8
  %205 = load %union.rec*, %union.rec** @zz_res, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 0
  %208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %207, i32 0, i64 1
  %209 = getelementptr inbounds %struct.LIST, %struct.LIST* %208, i32 0, i32 0
  store %union.rec* %204, %union.rec** %209, align 8
  %210 = load %union.rec*, %union.rec** @zz_res, align 8
  %211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 0
  %214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %213, i32 0, i64 1
  %215 = getelementptr inbounds %struct.LIST, %struct.LIST* %214, i32 0, i32 0
  %216 = load %union.rec*, %union.rec** %215, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 0
  %219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %218, i32 0, i64 1
  %220 = getelementptr inbounds %struct.LIST, %struct.LIST* %219, i32 0, i32 1
  store %union.rec* %210, %union.rec** %220, align 8
  %221 = load %union.rec*, %union.rec** @zz_hold, align 8
  %222 = load %union.rec*, %union.rec** @zz_hold, align 8
  %223 = bitcast %union.rec* %222 to %struct.word_type*
  %224 = getelementptr inbounds %struct.word_type, %struct.word_type* %223, i32 0, i32 0
  %225 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %224, i32 0, i64 1
  %226 = getelementptr inbounds %struct.LIST, %struct.LIST* %225, i32 0, i32 1
  store %union.rec* %221, %union.rec** %226, align 8
  %227 = load %union.rec*, %union.rec** @zz_hold, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 0
  %230 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %229, i32 0, i64 1
  %231 = getelementptr inbounds %struct.LIST, %struct.LIST* %230, i32 0, i32 0
  store %union.rec* %221, %union.rec** %231, align 8
  %232 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %233

; <label>:233                                     ; preds = %192, %191
  %234 = phi %union.rec* [ null, %191 ], [ %232, %192 ]
  %235 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %235, %union.rec** @zz_hold, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 0
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 1
  %241 = load %union.rec*, %union.rec** %240, align 8
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %243 = icmp eq %union.rec* %241, %242
  br i1 %243, label %244, label %245

; <label>:244                                     ; preds = %233
  br label %286

; <label>:245                                     ; preds = %233
  %246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 0
  %249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %248, i32 0, i64 0
  %250 = getelementptr inbounds %struct.LIST, %struct.LIST* %249, i32 0, i32 1
  %251 = load %union.rec*, %union.rec** %250, align 8
  store %union.rec* %251, %union.rec** @zz_res, align 8
  %252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %253 = bitcast %union.rec* %252 to %struct.word_type*
  %254 = getelementptr inbounds %struct.word_type, %struct.word_type* %253, i32 0, i32 0
  %255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %254, i32 0, i64 0
  %256 = getelementptr inbounds %struct.LIST, %struct.LIST* %255, i32 0, i32 0
  %257 = load %union.rec*, %union.rec** %256, align 8
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  %259 = bitcast %union.rec* %258 to %struct.word_type*
  %260 = getelementptr inbounds %struct.word_type, %struct.word_type* %259, i32 0, i32 0
  %261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %260, i32 0, i64 0
  %262 = getelementptr inbounds %struct.LIST, %struct.LIST* %261, i32 0, i32 0
  store %union.rec* %257, %union.rec** %262, align 8
  %263 = load %union.rec*, %union.rec** @zz_res, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = bitcast %union.rec* %264 to %struct.word_type*
  %266 = getelementptr inbounds %struct.word_type, %struct.word_type* %265, i32 0, i32 0
  %267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %266, i32 0, i64 0
  %268 = getelementptr inbounds %struct.LIST, %struct.LIST* %267, i32 0, i32 0
  %269 = load %union.rec*, %union.rec** %268, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 0
  %272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %271, i32 0, i64 0
  %273 = getelementptr inbounds %struct.LIST, %struct.LIST* %272, i32 0, i32 1
  store %union.rec* %263, %union.rec** %273, align 8
  %274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %275 = load %union.rec*, %union.rec** @zz_hold, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 0
  %278 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %277, i32 0, i64 0
  %279 = getelementptr inbounds %struct.LIST, %struct.LIST* %278, i32 0, i32 1
  store %union.rec* %274, %union.rec** %279, align 8
  %280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 0
  %283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %282, i32 0, i64 0
  %284 = getelementptr inbounds %struct.LIST, %struct.LIST* %283, i32 0, i32 0
  store %union.rec* %274, %union.rec** %284, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %286

; <label>:286                                     ; preds = %245, %244
  %287 = phi %union.rec* [ null, %244 ], [ %285, %245 ]
  %288 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %288, %union.rec** @zz_hold, align 8
  %289 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %289, %union.rec** @zz_hold, align 8
  %290 = load %union.rec*, %union.rec** @zz_hold, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 1
  %293 = bitcast %union.FIRST_UNION* %292 to %struct.anon*
  %294 = getelementptr inbounds %struct.anon, %struct.anon* %293, i32 0, i32 0
  %295 = load i8, i8* %294, align 1
  %296 = zext i8 %295 to i32
  %297 = icmp eq i32 %296, 11
  br i1 %297, label %307, label %298

; <label>:298                                     ; preds = %286
  %299 = load %union.rec*, %union.rec** @zz_hold, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 1
  %302 = bitcast %union.FIRST_UNION* %301 to %struct.anon*
  %303 = getelementptr inbounds %struct.anon, %struct.anon* %302, i32 0, i32 0
  %304 = load i8, i8* %303, align 1
  %305 = zext i8 %304 to i32
  %306 = icmp eq i32 %305, 12
  br i1 %306, label %307, label %315

; <label>:307                                     ; preds = %298, %286
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 1
  %311 = bitcast %union.FIRST_UNION* %310 to %struct.anon*
  %312 = getelementptr inbounds %struct.anon, %struct.anon* %311, i32 0, i32 1
  %313 = load i8, i8* %312, align 1
  %314 = zext i8 %313 to i32
  br label %326

; <label>:315                                     ; preds = %298
  %316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %317 = bitcast %union.rec* %316 to %struct.word_type*
  %318 = getelementptr inbounds %struct.word_type, %struct.word_type* %317, i32 0, i32 1
  %319 = bitcast %union.FIRST_UNION* %318 to %struct.anon*
  %320 = getelementptr inbounds %struct.anon, %struct.anon* %319, i32 0, i32 0
  %321 = load i8, i8* %320, align 1
  %322 = zext i8 %321 to i64
  %323 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %322
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  br label %326

; <label>:326                                     ; preds = %315, %307
  %327 = phi i32 [ %314, %307 ], [ %325, %315 ]
  store i32 %327, i32* @zz_size, align 4
  %328 = load i32, i32* @zz_size, align 4
  %329 = sext i32 %328 to i64
  %330 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %329
  %331 = load %union.rec*, %union.rec** %330, align 8
  %332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %333 = bitcast %union.rec* %332 to %struct.word_type*
  %334 = getelementptr inbounds %struct.word_type, %struct.word_type* %333, i32 0, i32 0
  %335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %334, i32 0, i64 0
  %336 = getelementptr inbounds %struct.LIST, %struct.LIST* %335, i32 0, i32 0
  store %union.rec* %331, %union.rec** %336, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = load i32, i32* @zz_size, align 4
  %339 = sext i32 %338 to i64
  %340 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %339
  store %union.rec* %337, %union.rec** %340, align 8
  br label %166

; <label>:341                                     ; preds = %166
  br label %342

; <label>:342                                     ; preds = %502, %341
  %343 = load %union.rec*, %union.rec** @xx_hold, align 8
  %344 = bitcast %union.rec* %343 to %struct.word_type*
  %345 = getelementptr inbounds %struct.word_type, %struct.word_type* %344, i32 0, i32 0
  %346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %345, i32 0, i64 0
  %347 = getelementptr inbounds %struct.LIST, %struct.LIST* %346, i32 0, i32 1
  %348 = load %union.rec*, %union.rec** %347, align 8
  %349 = load %union.rec*, %union.rec** @xx_hold, align 8
  %350 = icmp ne %union.rec* %348, %349
  br i1 %350, label %351, label %517

; <label>:351                                     ; preds = %342
  %352 = load %union.rec*, %union.rec** @xx_hold, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 0
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 1
  %357 = load %union.rec*, %union.rec** %356, align 8
  store %union.rec* %357, %union.rec** @xx_link, align 8
  %358 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %358, %union.rec** @zz_hold, align 8
  %359 = load %union.rec*, %union.rec** @zz_hold, align 8
  %360 = bitcast %union.rec* %359 to %struct.word_type*
  %361 = getelementptr inbounds %struct.word_type, %struct.word_type* %360, i32 0, i32 0
  %362 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %361, i32 0, i64 1
  %363 = getelementptr inbounds %struct.LIST, %struct.LIST* %362, i32 0, i32 1
  %364 = load %union.rec*, %union.rec** %363, align 8
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = icmp eq %union.rec* %364, %365
  br i1 %366, label %367, label %368

; <label>:367                                     ; preds = %351
  br label %409

; <label>:368                                     ; preds = %351
  %369 = load %union.rec*, %union.rec** @zz_hold, align 8
  %370 = bitcast %union.rec* %369 to %struct.word_type*
  %371 = getelementptr inbounds %struct.word_type, %struct.word_type* %370, i32 0, i32 0
  %372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %371, i32 0, i64 1
  %373 = getelementptr inbounds %struct.LIST, %struct.LIST* %372, i32 0, i32 1
  %374 = load %union.rec*, %union.rec** %373, align 8
  store %union.rec* %374, %union.rec** @zz_res, align 8
  %375 = load %union.rec*, %union.rec** @zz_hold, align 8
  %376 = bitcast %union.rec* %375 to %struct.word_type*
  %377 = getelementptr inbounds %struct.word_type, %struct.word_type* %376, i32 0, i32 0
  %378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %377, i32 0, i64 1
  %379 = getelementptr inbounds %struct.LIST, %struct.LIST* %378, i32 0, i32 0
  %380 = load %union.rec*, %union.rec** %379, align 8
  %381 = load %union.rec*, %union.rec** @zz_res, align 8
  %382 = bitcast %union.rec* %381 to %struct.word_type*
  %383 = getelementptr inbounds %struct.word_type, %struct.word_type* %382, i32 0, i32 0
  %384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %383, i32 0, i64 1
  %385 = getelementptr inbounds %struct.LIST, %struct.LIST* %384, i32 0, i32 0
  store %union.rec* %380, %union.rec** %385, align 8
  %386 = load %union.rec*, %union.rec** @zz_res, align 8
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %388 = bitcast %union.rec* %387 to %struct.word_type*
  %389 = getelementptr inbounds %struct.word_type, %struct.word_type* %388, i32 0, i32 0
  %390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %389, i32 0, i64 1
  %391 = getelementptr inbounds %struct.LIST, %struct.LIST* %390, i32 0, i32 0
  %392 = load %union.rec*, %union.rec** %391, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 0
  %395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %394, i32 0, i64 1
  %396 = getelementptr inbounds %struct.LIST, %struct.LIST* %395, i32 0, i32 1
  store %union.rec* %386, %union.rec** %396, align 8
  %397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 1
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 1
  store %union.rec* %397, %union.rec** %402, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 0
  %406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %405, i32 0, i64 1
  %407 = getelementptr inbounds %struct.LIST, %struct.LIST* %406, i32 0, i32 0
  store %union.rec* %397, %union.rec** %407, align 8
  %408 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %409

; <label>:409                                     ; preds = %368, %367
  %410 = phi %union.rec* [ null, %367 ], [ %408, %368 ]
  %411 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %411, %union.rec** @zz_hold, align 8
  %412 = load %union.rec*, %union.rec** @zz_hold, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 0
  %415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %414, i32 0, i64 0
  %416 = getelementptr inbounds %struct.LIST, %struct.LIST* %415, i32 0, i32 1
  %417 = load %union.rec*, %union.rec** %416, align 8
  %418 = load %union.rec*, %union.rec** @zz_hold, align 8
  %419 = icmp eq %union.rec* %417, %418
  br i1 %419, label %420, label %421

; <label>:420                                     ; preds = %409
  br label %462

; <label>:421                                     ; preds = %409
  %422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %423 = bitcast %union.rec* %422 to %struct.word_type*
  %424 = getelementptr inbounds %struct.word_type, %struct.word_type* %423, i32 0, i32 0
  %425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %424, i32 0, i64 0
  %426 = getelementptr inbounds %struct.LIST, %struct.LIST* %425, i32 0, i32 1
  %427 = load %union.rec*, %union.rec** %426, align 8
  store %union.rec* %427, %union.rec** @zz_res, align 8
  %428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %429 = bitcast %union.rec* %428 to %struct.word_type*
  %430 = getelementptr inbounds %struct.word_type, %struct.word_type* %429, i32 0, i32 0
  %431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %430, i32 0, i64 0
  %432 = getelementptr inbounds %struct.LIST, %struct.LIST* %431, i32 0, i32 0
  %433 = load %union.rec*, %union.rec** %432, align 8
  %434 = load %union.rec*, %union.rec** @zz_res, align 8
  %435 = bitcast %union.rec* %434 to %struct.word_type*
  %436 = getelementptr inbounds %struct.word_type, %struct.word_type* %435, i32 0, i32 0
  %437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %436, i32 0, i64 0
  %438 = getelementptr inbounds %struct.LIST, %struct.LIST* %437, i32 0, i32 0
  store %union.rec* %433, %union.rec** %438, align 8
  %439 = load %union.rec*, %union.rec** @zz_res, align 8
  %440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 0
  %443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %442, i32 0, i64 0
  %444 = getelementptr inbounds %struct.LIST, %struct.LIST* %443, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %444, align 8
  %446 = bitcast %union.rec* %445 to %struct.word_type*
  %447 = getelementptr inbounds %struct.word_type, %struct.word_type* %446, i32 0, i32 0
  %448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %447, i32 0, i64 0
  %449 = getelementptr inbounds %struct.LIST, %struct.LIST* %448, i32 0, i32 1
  store %union.rec* %439, %union.rec** %449, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %451 = load %union.rec*, %union.rec** @zz_hold, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %453, i32 0, i64 0
  %455 = getelementptr inbounds %struct.LIST, %struct.LIST* %454, i32 0, i32 1
  store %union.rec* %450, %union.rec** %455, align 8
  %456 = load %union.rec*, %union.rec** @zz_hold, align 8
  %457 = bitcast %union.rec* %456 to %struct.word_type*
  %458 = getelementptr inbounds %struct.word_type, %struct.word_type* %457, i32 0, i32 0
  %459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %458, i32 0, i64 0
  %460 = getelementptr inbounds %struct.LIST, %struct.LIST* %459, i32 0, i32 0
  store %union.rec* %450, %union.rec** %460, align 8
  %461 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %462

; <label>:462                                     ; preds = %421, %420
  %463 = phi %union.rec* [ null, %420 ], [ %461, %421 ]
  %464 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %464, %union.rec** @zz_hold, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %465, %union.rec** @zz_hold, align 8
  %466 = load %union.rec*, %union.rec** @zz_hold, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 1
  %469 = bitcast %union.FIRST_UNION* %468 to %struct.anon*
  %470 = getelementptr inbounds %struct.anon, %struct.anon* %469, i32 0, i32 0
  %471 = load i8, i8* %470, align 1
  %472 = zext i8 %471 to i32
  %473 = icmp eq i32 %472, 11
  br i1 %473, label %483, label %474

; <label>:474                                     ; preds = %462
  %475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %476 = bitcast %union.rec* %475 to %struct.word_type*
  %477 = getelementptr inbounds %struct.word_type, %struct.word_type* %476, i32 0, i32 1
  %478 = bitcast %union.FIRST_UNION* %477 to %struct.anon*
  %479 = getelementptr inbounds %struct.anon, %struct.anon* %478, i32 0, i32 0
  %480 = load i8, i8* %479, align 1
  %481 = zext i8 %480 to i32
  %482 = icmp eq i32 %481, 12
  br i1 %482, label %483, label %491

; <label>:483                                     ; preds = %474, %462
  %484 = load %union.rec*, %union.rec** @zz_hold, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 1
  %487 = bitcast %union.FIRST_UNION* %486 to %struct.anon*
  %488 = getelementptr inbounds %struct.anon, %struct.anon* %487, i32 0, i32 1
  %489 = load i8, i8* %488, align 1
  %490 = zext i8 %489 to i32
  br label %502

; <label>:491                                     ; preds = %474
  %492 = load %union.rec*, %union.rec** @zz_hold, align 8
  %493 = bitcast %union.rec* %492 to %struct.word_type*
  %494 = getelementptr inbounds %struct.word_type, %struct.word_type* %493, i32 0, i32 1
  %495 = bitcast %union.FIRST_UNION* %494 to %struct.anon*
  %496 = getelementptr inbounds %struct.anon, %struct.anon* %495, i32 0, i32 0
  %497 = load i8, i8* %496, align 1
  %498 = zext i8 %497 to i64
  %499 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %498
  %500 = load i8, i8* %499, align 1
  %501 = zext i8 %500 to i32
  br label %502

; <label>:502                                     ; preds = %491, %483
  %503 = phi i32 [ %490, %483 ], [ %501, %491 ]
  store i32 %503, i32* @zz_size, align 4
  %504 = load i32, i32* @zz_size, align 4
  %505 = sext i32 %504 to i64
  %506 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %505
  %507 = load %union.rec*, %union.rec** %506, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %509 = bitcast %union.rec* %508 to %struct.word_type*
  %510 = getelementptr inbounds %struct.word_type, %struct.word_type* %509, i32 0, i32 0
  %511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %510, i32 0, i64 0
  %512 = getelementptr inbounds %struct.LIST, %struct.LIST* %511, i32 0, i32 0
  store %union.rec* %507, %union.rec** %512, align 8
  %513 = load %union.rec*, %union.rec** @zz_hold, align 8
  %514 = load i32, i32* @zz_size, align 4
  %515 = sext i32 %514 to i64
  %516 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %515
  store %union.rec* %513, %union.rec** %516, align 8
  br label %342

; <label>:517                                     ; preds = %342
  %518 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %518, %union.rec** @zz_hold, align 8
  %519 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %519, %union.rec** @zz_hold, align 8
  %520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 1
  %523 = bitcast %union.FIRST_UNION* %522 to %struct.anon*
  %524 = getelementptr inbounds %struct.anon, %struct.anon* %523, i32 0, i32 0
  %525 = load i8, i8* %524, align 1
  %526 = zext i8 %525 to i32
  %527 = icmp eq i32 %526, 11
  br i1 %527, label %537, label %528

; <label>:528                                     ; preds = %517
  %529 = load %union.rec*, %union.rec** @zz_hold, align 8
  %530 = bitcast %union.rec* %529 to %struct.word_type*
  %531 = getelementptr inbounds %struct.word_type, %struct.word_type* %530, i32 0, i32 1
  %532 = bitcast %union.FIRST_UNION* %531 to %struct.anon*
  %533 = getelementptr inbounds %struct.anon, %struct.anon* %532, i32 0, i32 0
  %534 = load i8, i8* %533, align 1
  %535 = zext i8 %534 to i32
  %536 = icmp eq i32 %535, 12
  br i1 %536, label %537, label %545

; <label>:537                                     ; preds = %528, %517
  %538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %539 = bitcast %union.rec* %538 to %struct.word_type*
  %540 = getelementptr inbounds %struct.word_type, %struct.word_type* %539, i32 0, i32 1
  %541 = bitcast %union.FIRST_UNION* %540 to %struct.anon*
  %542 = getelementptr inbounds %struct.anon, %struct.anon* %541, i32 0, i32 1
  %543 = load i8, i8* %542, align 1
  %544 = zext i8 %543 to i32
  br label %556

; <label>:545                                     ; preds = %528
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %547 = bitcast %union.rec* %546 to %struct.word_type*
  %548 = getelementptr inbounds %struct.word_type, %struct.word_type* %547, i32 0, i32 1
  %549 = bitcast %union.FIRST_UNION* %548 to %struct.anon*
  %550 = getelementptr inbounds %struct.anon, %struct.anon* %549, i32 0, i32 0
  %551 = load i8, i8* %550, align 1
  %552 = zext i8 %551 to i64
  %553 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %552
  %554 = load i8, i8* %553, align 1
  %555 = zext i8 %554 to i32
  br label %556

; <label>:556                                     ; preds = %545, %537
  %557 = phi i32 [ %544, %537 ], [ %555, %545 ]
  store i32 %557, i32* @zz_size, align 4
  %558 = load i32, i32* @zz_size, align 4
  %559 = sext i32 %558 to i64
  %560 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %559
  %561 = load %union.rec*, %union.rec** %560, align 8
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 0
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  store %union.rec* %561, %union.rec** %566, align 8
  %567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %568 = load i32, i32* @zz_size, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %569
  store %union.rec* %567, %union.rec** %570, align 8
  ret void
}

declare i8* @FullSymName(%union.rec*, i8*) #1

declare i32 @fclose(%struct._IO_FILE*) #1

declare void @SortFile(i8*, i8*) #1

; Function Attrs: nounwind
declare i32 @remove(i8*) #3

; Function Attrs: nounwind uwtable
define void @DbClose(%union.rec* %db) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %db, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = icmp ne %union.rec* %2, null
  br i1 %3, label %4, label %30

; <label>:4                                       ; preds = %0
  %5 = load %union.rec*, %union.rec** %1, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 2
  %8 = bitcast %union.SECOND_UNION* %7 to %struct.anon.3*
  %9 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %8, i32 0, i32 2
  %10 = load i8, i8* %9, align 1
  %11 = icmp ne i8 %10, 0
  br i1 %11, label %30, label %12

; <label>:12                                      ; preds = %4
  %13 = load %union.rec*, %union.rec** %1, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 3
  %16 = bitcast %union.THIRD_UNION* %15 to %struct._IO_FILE**
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %16, align 8
  %18 = icmp ne %struct._IO_FILE* %17, null
  br i1 %18, label %19, label %30

; <label>:19                                      ; preds = %12
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = bitcast %union.rec* %20 to %struct.word_type*
  %22 = getelementptr inbounds %struct.word_type, %struct.word_type* %21, i32 0, i32 3
  %23 = bitcast %union.THIRD_UNION* %22 to %struct._IO_FILE**
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %23, align 8
  %25 = call i32 @fclose(%struct._IO_FILE* %24)
  %26 = load %union.rec*, %union.rec** %1, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 3
  %29 = bitcast %union.THIRD_UNION* %28 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %29, align 8
  br label %30

; <label>:30                                      ; preds = %19, %12, %4, %0
  ret void
}

; Function Attrs: nounwind uwtable
define %union.rec* @DbLoad(%union.rec* %stem, i32 %fpath, i32 %create, %union.rec* %symbs, i32 %in_mem) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %union.rec*, align 8
  %6 = alloca i32, align 4
  %fp = alloca %struct._IO_FILE*, align 8
  %db = alloca %union.rec*, align 8
  %t = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %tag = alloca %union.rec*, align 8
  %par = alloca %union.rec*, align 8
  %sym = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %lnum = alloca i32, align 4
  %dlnum = alloca i32, align 4
  %num = alloca i32, align 4
  %count = alloca i32, align 4
  %leftp = alloca i32, align 4
  %index_fnum = alloca i16, align 2
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %gall = alloca i32, align 4
  %line = alloca [512 x i8], align 16
  %sym_name = alloca [512 x i8], align 16
  %gotline = alloca i8*, align 8
  %len = alloca i32, align 4
  store %union.rec* %stem, %union.rec** %2, align 8
  store i32 %fpath, i32* %3, align 4
  store i32 %create, i32* %4, align 4
  store %union.rec* %symbs, %union.rec** %5, align 8
  store i32 %in_mem, i32* %6, align 4
  %7 = load %union.rec*, %union.rec** %2, align 8
  %8 = bitcast %union.rec* %7 to %struct.word_type*
  %9 = getelementptr inbounds %struct.word_type, %struct.word_type* %8, i32 0, i32 4
  %10 = getelementptr inbounds [4 x i8], [4 x i8]* %9, i32 0, i32 0
  %11 = load %union.rec*, %union.rec** %2, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 1
  %14 = bitcast %union.FIRST_UNION* %13 to %struct.FILE_POS*
  %15 = load i32, i32* %3, align 4
  %16 = call zeroext i16 @DefineFile(i8* %10, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.19, i32 0, i32 0), %struct.FILE_POS* %14, i32 4, i32 %15)
  store i16 %16, i16* %index_fnum, align 2
  %17 = load i16, i16* %index_fnum, align 2
  %18 = load i32, i32* %4, align 4
  %19 = call %struct._IO_FILE* @OpenFile(i16 zeroext %17, i32 %18, i32 0)
  store %struct._IO_FILE* %19, %struct._IO_FILE** %fp, align 8
  %20 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %21 = icmp ne %struct._IO_FILE* %20, null
  br i1 %21, label %22, label %36

; <label>:22                                      ; preds = %0
  %23 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %24 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %25 = call i8* @fgets(i8* %23, i32 512, %struct._IO_FILE* %24)
  %26 = icmp eq i8* %25, null
  br i1 %26, label %31, label %27

; <label>:27                                      ; preds = %22
  %28 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 3
  %29 = call i32 @StringBeginsWith(i8* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %35, label %31

; <label>:31                                      ; preds = %27, %22
  %32 = load i16, i16* %index_fnum, align 2
  %33 = call i8* @FileName(i16 zeroext %32)
  %34 = call i32 @remove(i8* %33) #5
  store %struct._IO_FILE* null, %struct._IO_FILE** %fp, align 8
  br label %35

; <label>:35                                      ; preds = %31, %27
  br label %36

; <label>:36                                      ; preds = %35, %0
  %37 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %38 = icmp eq %struct._IO_FILE* %37, null
  br i1 %38, label %39, label %462

; <label>:39                                      ; preds = %36
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %462

; <label>:42                                      ; preds = %39
  store %union.rec* null, %union.rec** %db, align 8
  %43 = load %union.rec*, %union.rec** %2, align 8
  %44 = bitcast %union.rec* %43 to %struct.word_type*
  %45 = getelementptr inbounds %struct.word_type, %struct.word_type* %44, i32 0, i32 4
  %46 = getelementptr inbounds [4 x i8], [4 x i8]* %45, i32 0, i32 0
  %47 = load %union.rec*, %union.rec** %2, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 1
  %50 = bitcast %union.FIRST_UNION* %49 to %struct.FILE_POS*
  %51 = load i32, i32* %3, align 4
  %52 = call zeroext i16 @DefineFile(i8* %46, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %50, i32 3, i32 %51)
  store i16 %52, i16* %dfnum, align 2
  store i64 0, i64* %dfpos, align 8
  %53 = load i16, i16* %dfnum, align 2
  call void @LexPush(i16 zeroext %53, i32 0, i32 3, i32 1, i32 0)
  %54 = call %union.rec* @LexGetToken()
  store %union.rec* %54, %union.rec** %t, align 8
  %55 = load %union.rec*, %union.rec** %t, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 1
  %58 = bitcast %union.FIRST_UNION* %57 to %struct.FILE_POS*
  %59 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1048575
  store i32 %61, i32* %dlnum, align 4
  br label %62

; <label>:62                                      ; preds = %368, %42
  %63 = load %union.rec*, %union.rec** %t, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 1
  %66 = bitcast %union.FIRST_UNION* %65 to %struct.anon*
  %67 = getelementptr inbounds %struct.anon, %struct.anon* %66, i32 0, i32 0
  %68 = load i8, i8* %67, align 1
  %69 = zext i8 %68 to i32
  %70 = icmp eq i32 %69, 102
  br i1 %70, label %71, label %395

; <label>:71                                      ; preds = %62
  %72 = load %union.rec*, %union.rec** @StartSym, align 8
  %73 = call %union.rec* @Parse(%union.rec** %t, %union.rec* %72, i32 0, i32 0)
  store %union.rec* %73, %union.rec** %res, align 8
  %74 = load %union.rec*, %union.rec** %t, align 8
  %75 = icmp ne %union.rec* %74, null
  br i1 %75, label %85, label %76

; <label>:76                                      ; preds = %71
  %77 = load %union.rec*, %union.rec** %res, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp ne i32 %83, 2
  br i1 %84, label %85, label %93

; <label>:85                                      ; preds = %76, %71
  %86 = load %union.rec*, %union.rec** %res, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.FILE_POS*
  %90 = load i16, i16* %dfnum, align 2
  %91 = call i8* @FileName(i16 zeroext %90)
  %92 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.29, i32 0, i32 0), i32 1, %struct.FILE_POS* %89, i8* %91)
  br label %93

; <label>:93                                      ; preds = %85, %76
  %94 = load %union.rec*, %union.rec** %5, align 8
  %95 = icmp ne %union.rec* %94, null
  br i1 %95, label %99, label %96

; <label>:96                                      ; preds = %93
  %97 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %98 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %97, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.30, i32 0, i32 0))
  br label %99

; <label>:99                                      ; preds = %96, %93
  %100 = load %union.rec*, %union.rec** %5, align 8
  %101 = icmp ne %union.rec* %100, null
  br i1 %101, label %102, label %181

; <label>:102                                     ; preds = %99
  %103 = load %union.rec*, %union.rec** %5, align 8
  %104 = bitcast %union.rec* %103 to %struct.word_type*
  %105 = getelementptr inbounds %struct.word_type, %struct.word_type* %104, i32 0, i32 0
  %106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %105, i32 0, i64 0
  %107 = getelementptr inbounds %struct.LIST, %struct.LIST* %106, i32 0, i32 1
  %108 = load %union.rec*, %union.rec** %107, align 8
  store %union.rec* %108, %union.rec** %link, align 8
  br label %109

; <label>:109                                     ; preds = %158, %102
  %110 = load %union.rec*, %union.rec** %link, align 8
  %111 = load %union.rec*, %union.rec** %5, align 8
  %112 = icmp ne %union.rec* %110, %111
  br i1 %112, label %113, label %165

; <label>:113                                     ; preds = %109
  %114 = load %union.rec*, %union.rec** %link, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 1
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 0
  %119 = load %union.rec*, %union.rec** %118, align 8
  store %union.rec* %119, %union.rec** %y, align 8
  br label %120

; <label>:120                                     ; preds = %130, %113
  %121 = load %union.rec*, %union.rec** %y, align 8
  %122 = bitcast %union.rec* %121 to %struct.word_type*
  %123 = getelementptr inbounds %struct.word_type, %struct.word_type* %122, i32 0, i32 1
  %124 = bitcast %union.FIRST_UNION* %123 to %struct.anon*
  %125 = getelementptr inbounds %struct.anon, %struct.anon* %124, i32 0, i32 0
  %126 = load i8, i8* %125, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %137

; <label>:129                                     ; preds = %120
  br label %130

; <label>:130                                     ; preds = %129
  %131 = load %union.rec*, %union.rec** %y, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 0
  %134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %133, i32 0, i64 1
  %135 = getelementptr inbounds %struct.LIST, %struct.LIST* %134, i32 0, i32 0
  %136 = load %union.rec*, %union.rec** %135, align 8
  store %union.rec* %136, %union.rec** %y, align 8
  br label %120

; <label>:137                                     ; preds = %120
  %138 = load %union.rec*, %union.rec** %y, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 1
  %141 = bitcast %union.FIRST_UNION* %140 to %struct.anon*
  %142 = getelementptr inbounds %struct.anon, %struct.anon* %141, i32 0, i32 0
  %143 = load i8, i8* %142, align 1
  %144 = zext i8 %143 to i32
  %145 = icmp eq i32 %144, 2
  br i1 %145, label %146, label %157

; <label>:146                                     ; preds = %137
  %147 = load %union.rec*, %union.rec** %y, align 8
  %148 = bitcast %union.rec* %147 to %struct.closure_type*
  %149 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %148, i32 0, i32 5
  %150 = load %union.rec*, %union.rec** %149, align 8
  %151 = load %union.rec*, %union.rec** %res, align 8
  %152 = bitcast %union.rec* %151 to %struct.closure_type*
  %153 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %152, i32 0, i32 5
  %154 = load %union.rec*, %union.rec** %153, align 8
  %155 = icmp eq %union.rec* %150, %154
  br i1 %155, label %156, label %157

; <label>:156                                     ; preds = %146
  br label %165

; <label>:157                                     ; preds = %146, %137
  br label %158

; <label>:158                                     ; preds = %157
  %159 = load %union.rec*, %union.rec** %link, align 8
  %160 = bitcast %union.rec* %159 to %struct.word_type*
  %161 = getelementptr inbounds %struct.word_type, %struct.word_type* %160, i32 0, i32 0
  %162 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %161, i32 0, i64 0
  %163 = getelementptr inbounds %struct.LIST, %struct.LIST* %162, i32 0, i32 1
  %164 = load %union.rec*, %union.rec** %163, align 8
  store %union.rec* %164, %union.rec** %link, align 8
  br label %109

; <label>:165                                     ; preds = %156, %109
  %166 = load %union.rec*, %union.rec** %link, align 8
  %167 = load %union.rec*, %union.rec** %5, align 8
  %168 = icmp eq %union.rec* %166, %167
  br i1 %168, label %169, label %180

; <label>:169                                     ; preds = %165
  %170 = load %union.rec*, %union.rec** %res, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 1
  %173 = bitcast %union.FIRST_UNION* %172 to %struct.FILE_POS*
  %174 = load %union.rec*, %union.rec** %res, align 8
  %175 = bitcast %union.rec* %174 to %struct.closure_type*
  %176 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %175, i32 0, i32 5
  %177 = load %union.rec*, %union.rec** %176, align 8
  %178 = call i8* @SymName(%union.rec* %177)
  %179 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.31, i32 0, i32 0), i32 1, %struct.FILE_POS* %173, i8* %178, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.32, i32 0, i32 0))
  br label %180

; <label>:180                                     ; preds = %169, %165
  br label %181

; <label>:181                                     ; preds = %180, %99
  store %union.rec* null, %union.rec** %tag, align 8
  %182 = load %union.rec*, %union.rec** %res, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 0
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 1
  %187 = load %union.rec*, %union.rec** %186, align 8
  store %union.rec* %187, %union.rec** %link, align 8
  br label %188

; <label>:188                                     ; preds = %279, %181
  %189 = load %union.rec*, %union.rec** %link, align 8
  %190 = load %union.rec*, %union.rec** %res, align 8
  %191 = icmp ne %union.rec* %189, %190
  br i1 %191, label %192, label %286

; <label>:192                                     ; preds = %188
  %193 = load %union.rec*, %union.rec** %link, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 1
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %197, align 8
  store %union.rec* %198, %union.rec** %par, align 8
  br label %199

; <label>:199                                     ; preds = %209, %192
  %200 = load %union.rec*, %union.rec** %par, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 1
  %203 = bitcast %union.FIRST_UNION* %202 to %struct.anon*
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 0
  br i1 %207, label %208, label %216

; <label>:208                                     ; preds = %199
  br label %209

; <label>:209                                     ; preds = %208
  %210 = load %union.rec*, %union.rec** %par, align 8
  %211 = bitcast %union.rec* %210 to %struct.word_type*
  %212 = getelementptr inbounds %struct.word_type, %struct.word_type* %211, i32 0, i32 0
  %213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %212, i32 0, i64 1
  %214 = getelementptr inbounds %struct.LIST, %struct.LIST* %213, i32 0, i32 0
  %215 = load %union.rec*, %union.rec** %214, align 8
  store %union.rec* %215, %union.rec** %par, align 8
  br label %199

; <label>:216                                     ; preds = %199
  %217 = load %union.rec*, %union.rec** %par, align 8
  %218 = bitcast %union.rec* %217 to %struct.word_type*
  %219 = getelementptr inbounds %struct.word_type, %struct.word_type* %218, i32 0, i32 1
  %220 = bitcast %union.FIRST_UNION* %219 to %struct.anon*
  %221 = getelementptr inbounds %struct.anon, %struct.anon* %220, i32 0, i32 0
  %222 = load i8, i8* %221, align 1
  %223 = zext i8 %222 to i32
  %224 = icmp eq i32 %223, 10
  br i1 %224, label %225, label %278

; <label>:225                                     ; preds = %216
  %226 = load %union.rec*, %union.rec** %par, align 8
  %227 = bitcast %union.rec* %226 to %struct.closure_type*
  %228 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %227, i32 0, i32 5
  %229 = load %union.rec*, %union.rec** %228, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 2
  %232 = bitcast %union.SECOND_UNION* %231 to %struct.anon.5*
  %233 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %232, i32 0, i32 1
  %234 = bitcast [3 x i8]* %233 to i24*
  %235 = load i24, i24* %234, align 1
  %236 = and i24 %235, 1
  %237 = zext i24 %236 to i32
  %238 = icmp ne i32 %237, 0
  br i1 %238, label %239, label %278

; <label>:239                                     ; preds = %225
  %240 = load %union.rec*, %union.rec** %par, align 8
  %241 = bitcast %union.rec* %240 to %struct.word_type*
  %242 = getelementptr inbounds %struct.word_type, %struct.word_type* %241, i32 0, i32 0
  %243 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %242, i32 0, i64 0
  %244 = getelementptr inbounds %struct.LIST, %struct.LIST* %243, i32 0, i32 1
  %245 = load %union.rec*, %union.rec** %244, align 8
  %246 = load %union.rec*, %union.rec** %par, align 8
  %247 = icmp ne %union.rec* %245, %246
  br i1 %247, label %248, label %278

; <label>:248                                     ; preds = %239
  %249 = load %union.rec*, %union.rec** %par, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 0
  %252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %251, i32 0, i64 0
  %253 = getelementptr inbounds %struct.LIST, %struct.LIST* %252, i32 0, i32 1
  %254 = load %union.rec*, %union.rec** %253, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 1
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 0
  %259 = load %union.rec*, %union.rec** %258, align 8
  store %union.rec* %259, %union.rec** %tag, align 8
  br label %260

; <label>:260                                     ; preds = %270, %248
  %261 = load %union.rec*, %union.rec** %tag, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 1
  %264 = bitcast %union.FIRST_UNION* %263 to %struct.anon*
  %265 = getelementptr inbounds %struct.anon, %struct.anon* %264, i32 0, i32 0
  %266 = load i8, i8* %265, align 1
  %267 = zext i8 %266 to i32
  %268 = icmp eq i32 %267, 0
  br i1 %268, label %269, label %277

; <label>:269                                     ; preds = %260
  br label %270

; <label>:270                                     ; preds = %269
  %271 = load %union.rec*, %union.rec** %tag, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 1
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %275, align 8
  store %union.rec* %276, %union.rec** %tag, align 8
  br label %260

; <label>:277                                     ; preds = %260
  br label %286

; <label>:278                                     ; preds = %239, %225, %216
  br label %279

; <label>:279                                     ; preds = %278
  %280 = load %union.rec*, %union.rec** %link, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 0
  %283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %282, i32 0, i64 0
  %284 = getelementptr inbounds %struct.LIST, %struct.LIST* %283, i32 0, i32 1
  %285 = load %union.rec*, %union.rec** %284, align 8
  store %union.rec* %285, %union.rec** %link, align 8
  br label %188

; <label>:286                                     ; preds = %277, %188
  %287 = load %union.rec*, %union.rec** %tag, align 8
  %288 = icmp eq %union.rec* %287, null
  br i1 %288, label %289, label %300

; <label>:289                                     ; preds = %286
  %290 = load %union.rec*, %union.rec** %res, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 1
  %293 = bitcast %union.FIRST_UNION* %292 to %struct.FILE_POS*
  %294 = load %union.rec*, %union.rec** %res, align 8
  %295 = bitcast %union.rec* %294 to %struct.closure_type*
  %296 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %295, i32 0, i32 5
  %297 = load %union.rec*, %union.rec** %296, align 8
  %298 = call i8* @SymName(%union.rec* %297)
  %299 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 8, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.33, i32 0, i32 0), i32 1, %struct.FILE_POS* %293, i8* %298)
  br label %300

; <label>:300                                     ; preds = %289, %286
  %301 = load %union.rec*, %union.rec** %tag, align 8
  %302 = call %union.rec* @ReplaceWithTidy(%union.rec* %301, i32 1)
  store %union.rec* %302, %union.rec** %tag, align 8
  %303 = load %union.rec*, %union.rec** %tag, align 8
  %304 = bitcast %union.rec* %303 to %struct.word_type*
  %305 = getelementptr inbounds %struct.word_type, %struct.word_type* %304, i32 0, i32 1
  %306 = bitcast %union.FIRST_UNION* %305 to %struct.anon*
  %307 = getelementptr inbounds %struct.anon, %struct.anon* %306, i32 0, i32 0
  %308 = load i8, i8* %307, align 1
  %309 = zext i8 %308 to i32
  %310 = icmp eq i32 %309, 11
  br i1 %310, label %326, label %311

; <label>:311                                     ; preds = %300
  %312 = load %union.rec*, %union.rec** %tag, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 1
  %315 = bitcast %union.FIRST_UNION* %314 to %struct.anon*
  %316 = getelementptr inbounds %struct.anon, %struct.anon* %315, i32 0, i32 0
  %317 = load i8, i8* %316, align 1
  %318 = zext i8 %317 to i32
  %319 = icmp eq i32 %318, 12
  br i1 %319, label %326, label %320

; <label>:320                                     ; preds = %311
  %321 = load %union.rec*, %union.rec** %res, align 8
  %322 = bitcast %union.rec* %321 to %struct.word_type*
  %323 = getelementptr inbounds %struct.word_type, %struct.word_type* %322, i32 0, i32 1
  %324 = bitcast %union.FIRST_UNION* %323 to %struct.FILE_POS*
  %325 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 9, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.34, i32 0, i32 0), i32 1, %struct.FILE_POS* %324)
  br label %326

; <label>:326                                     ; preds = %320, %311, %300
  %327 = load %union.rec*, %union.rec** %tag, align 8
  %328 = bitcast %union.rec* %327 to %struct.word_type*
  %329 = getelementptr inbounds %struct.word_type, %struct.word_type* %328, i32 0, i32 4
  %330 = getelementptr inbounds [4 x i8], [4 x i8]* %329, i32 0, i32 0
  %331 = call i32 @strcmp(i8* %330, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #4
  %332 = icmp eq i32 %331, 0
  br i1 %332, label %333, label %339

; <label>:333                                     ; preds = %326
  %334 = load %union.rec*, %union.rec** %res, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 1
  %337 = bitcast %union.FIRST_UNION* %336 to %struct.FILE_POS*
  %338 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 10, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.35, i32 0, i32 0), i32 1, %struct.FILE_POS* %337)
  br label %339

; <label>:339                                     ; preds = %333, %326
  %340 = load %union.rec*, %union.rec** %db, align 8
  %341 = icmp eq %union.rec* %340, null
  br i1 %341, label %342, label %368

; <label>:342                                     ; preds = %339
  %343 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %344 = load i16, i16* %dfnum, align 2
  %345 = call i8* @FileName(i16 zeroext %344)
  %346 = call i8* @strcpy(i8* %343, i8* %345) #5
  %347 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %348 = call i64 @strlen(i8* %347) #4
  %349 = sub i64 %348, 3
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %i, align 4
  %351 = load i32, i32* %i, align 4
  %352 = icmp sgt i32 %351, 0
  br i1 %352, label %356, label %353

; <label>:353                                     ; preds = %342
  %354 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %355 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %354, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.36, i32 0, i32 0))
  br label %356

; <label>:356                                     ; preds = %353, %342
  %357 = load i32, i32* %i, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %358
  %360 = call i8* @strcpy(i8* %359, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  %361 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %362 = load %union.rec*, %union.rec** %2, align 8
  %363 = bitcast %union.rec* %362 to %struct.word_type*
  %364 = getelementptr inbounds %struct.word_type, %struct.word_type* %363, i32 0, i32 1
  %365 = bitcast %union.FIRST_UNION* %364 to %struct.FILE_POS*
  %366 = call %union.rec* @MakeWord(i32 11, i8* %361, %struct.FILE_POS* %365)
  %367 = call %union.rec* @DbCreate(%union.rec* %366)
  store %union.rec* %367, %union.rec** %db, align 8
  br label %368

; <label>:368                                     ; preds = %356, %339
  %369 = load %union.rec*, %union.rec** %db, align 8
  %370 = load %union.rec*, %union.rec** %res, align 8
  %371 = bitcast %union.rec* %370 to %struct.closure_type*
  %372 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %371, i32 0, i32 5
  %373 = load %union.rec*, %union.rec** %372, align 8
  %374 = load %union.rec*, %union.rec** %tag, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 4
  %377 = getelementptr inbounds [4 x i8], [4 x i8]* %376, i32 0, i32 0
  %378 = load %union.rec*, %union.rec** %tag, align 8
  %379 = bitcast %union.rec* %378 to %struct.word_type*
  %380 = getelementptr inbounds %struct.word_type, %struct.word_type* %379, i32 0, i32 1
  %381 = bitcast %union.FIRST_UNION* %380 to %struct.FILE_POS*
  %382 = load i64, i64* %dfpos, align 8
  %383 = load i32, i32* %dlnum, align 4
  call void @DbInsert(%union.rec* %369, i32 0, %union.rec* %373, i8* %377, %struct.FILE_POS* %381, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i16 zeroext 0, i64 %382, i32 %383, i32 1)
  %384 = load %union.rec*, %union.rec** %res, align 8
  %385 = call i32 @DisposeObject(%union.rec* %384)
  %386 = call i64 @LexNextTokenPos()
  store i64 %386, i64* %dfpos, align 8
  %387 = call %union.rec* @LexGetToken()
  store %union.rec* %387, %union.rec** %t, align 8
  %388 = load %union.rec*, %union.rec** %t, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 1
  %391 = bitcast %union.FIRST_UNION* %390 to %struct.FILE_POS*
  %392 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %391, i32 0, i32 3
  %393 = load i32, i32* %392, align 4
  %394 = and i32 %393, 1048575
  store i32 %394, i32* %dlnum, align 4
  br label %62

; <label>:395                                     ; preds = %62
  %396 = load %union.rec*, %union.rec** %t, align 8
  %397 = bitcast %union.rec* %396 to %struct.word_type*
  %398 = getelementptr inbounds %struct.word_type, %struct.word_type* %397, i32 0, i32 1
  %399 = bitcast %union.FIRST_UNION* %398 to %struct.anon*
  %400 = getelementptr inbounds %struct.anon, %struct.anon* %399, i32 0, i32 0
  %401 = load i8, i8* %400, align 1
  %402 = zext i8 %401 to i32
  %403 = icmp ne i32 %402, 105
  br i1 %403, label %404, label %410

; <label>:404                                     ; preds = %395
  %405 = load %union.rec*, %union.rec** %t, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 1
  %408 = bitcast %union.FIRST_UNION* %407 to %struct.FILE_POS*
  %409 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 11, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.37, i32 0, i32 0), i32 1, %struct.FILE_POS* %408, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.38, i32 0, i32 0))
  br label %410

; <label>:410                                     ; preds = %404, %395
  call void @LexPop()
  %411 = load %union.rec*, %union.rec** %db, align 8
  %412 = icmp eq %union.rec* %411, null
  br i1 %412, label %413, label %439

; <label>:413                                     ; preds = %410
  %414 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %415 = load i16, i16* %dfnum, align 2
  %416 = call i8* @FileName(i16 zeroext %415)
  %417 = call i8* @strcpy(i8* %414, i8* %416) #5
  %418 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %419 = call i64 @strlen(i8* %418) #4
  %420 = sub i64 %419, 3
  %421 = trunc i64 %420 to i32
  store i32 %421, i32* %i, align 4
  %422 = load i32, i32* %i, align 4
  %423 = icmp sgt i32 %422, 0
  br i1 %423, label %427, label %424

; <label>:424                                     ; preds = %413
  %425 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %426 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %425, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.39, i32 0, i32 0))
  br label %427

; <label>:427                                     ; preds = %424, %413
  %428 = load i32, i32* %i, align 4
  %429 = sext i32 %428 to i64
  %430 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %429
  %431 = call i8* @strcpy(i8* %430, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  %432 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %433 = load %union.rec*, %union.rec** %2, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 1
  %436 = bitcast %union.FIRST_UNION* %435 to %struct.FILE_POS*
  %437 = call %union.rec* @MakeWord(i32 11, i8* %432, %struct.FILE_POS* %436)
  %438 = call %union.rec* @DbCreate(%union.rec* %437)
  store %union.rec* %438, %union.rec** %db, align 8
  br label %439

; <label>:439                                     ; preds = %427, %410
  %440 = load %union.rec*, %union.rec** %db, align 8
  call void @DbConvert(%union.rec* %440, i32 0)
  %441 = load i16, i16* %index_fnum, align 2
  %442 = call %struct._IO_FILE* @OpenFile(i16 zeroext %441, i32 0, i32 0)
  store %struct._IO_FILE* %442, %struct._IO_FILE** %fp, align 8
  %443 = icmp eq %struct._IO_FILE* %442, null
  br i1 %443, label %453, label %444

; <label>:444                                     ; preds = %439
  %445 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %446 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %447 = call i8* @fgets(i8* %445, i32 512, %struct._IO_FILE* %446)
  %448 = icmp eq i8* %447, null
  br i1 %448, label %453, label %449

; <label>:449                                     ; preds = %444
  %450 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 3
  %451 = call i32 @StringBeginsWith(i8* %450, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.21, i32 0, i32 0))
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %461, label %453

; <label>:453                                     ; preds = %449, %444, %439
  %454 = load %union.rec*, %union.rec** %db, align 8
  %455 = bitcast %union.rec* %454 to %struct.word_type*
  %456 = getelementptr inbounds %struct.word_type, %struct.word_type* %455, i32 0, i32 1
  %457 = bitcast %union.FIRST_UNION* %456 to %struct.FILE_POS*
  %458 = load i16, i16* %index_fnum, align 2
  %459 = call i8* @FileName(i16 zeroext %458)
  %460 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 12, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.40, i32 0, i32 0), i32 1, %struct.FILE_POS* %457, i8* %459)
  br label %461

; <label>:461                                     ; preds = %453, %449
  br label %462

; <label>:462                                     ; preds = %461, %39, %36
  %463 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %464 = load i16, i16* %index_fnum, align 2
  %465 = call i8* @FileName(i16 zeroext %464)
  %466 = call i8* @strcpy(i8* %463, i8* %465) #5
  %467 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %468 = call i64 @strlen(i8* %467) #4
  %469 = sub i64 %468, 3
  %470 = trunc i64 %469 to i32
  store i32 %470, i32* %i, align 4
  %471 = load i32, i32* %i, align 4
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %476, label %473

; <label>:473                                     ; preds = %462
  %474 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %475 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %474, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.41, i32 0, i32 0))
  br label %476

; <label>:476                                     ; preds = %473, %462
  %477 = load i32, i32* %i, align 4
  %478 = sext i32 %477 to i64
  %479 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %478
  %480 = call i8* @strcpy(i8* %479, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)) #5
  %481 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %482 = load %union.rec*, %union.rec** %2, align 8
  %483 = bitcast %union.rec* %482 to %struct.word_type*
  %484 = getelementptr inbounds %struct.word_type, %struct.word_type* %483, i32 0, i32 1
  %485 = bitcast %union.FIRST_UNION* %484 to %struct.FILE_POS*
  %486 = call %union.rec* @MakeWord(i32 11, i8* %481, %struct.FILE_POS* %485)
  store %union.rec* %486, %union.rec** %db, align 8
  %487 = load %union.rec*, %union.rec** %db, align 8
  %488 = bitcast %union.rec* %487 to %struct.word_type*
  %489 = getelementptr inbounds %struct.word_type, %struct.word_type* %488, i32 0, i32 2
  %490 = bitcast %union.SECOND_UNION* %489 to %struct.anon.3*
  %491 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %490, i32 0, i32 1
  store i8 1, i8* %491, align 1
  %492 = load i32, i32* %6, align 4
  %493 = trunc i32 %492 to i8
  %494 = load %union.rec*, %union.rec** %db, align 8
  %495 = bitcast %union.rec* %494 to %struct.word_type*
  %496 = getelementptr inbounds %struct.word_type, %struct.word_type* %495, i32 0, i32 2
  %497 = bitcast %union.SECOND_UNION* %496 to %struct.anon.3*
  %498 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %497, i32 0, i32 2
  store i8 %493, i8* %498, align 1
  %499 = load %union.rec*, %union.rec** %5, align 8
  %500 = icmp ne %union.rec* %499, null
  br i1 %500, label %501, label %685

; <label>:501                                     ; preds = %476
  %502 = load %union.rec*, %union.rec** %5, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 1
  %505 = bitcast %union.FIRST_UNION* %504 to %struct.anon*
  %506 = getelementptr inbounds %struct.anon, %struct.anon* %505, i32 0, i32 0
  %507 = load i8, i8* %506, align 1
  %508 = zext i8 %507 to i32
  %509 = icmp eq i32 %508, 17
  br i1 %509, label %513, label %510

; <label>:510                                     ; preds = %501
  %511 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %512 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %511, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.42, i32 0, i32 0))
  br label %513

; <label>:513                                     ; preds = %510, %501
  %514 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %515 = zext i8 %514 to i32
  store i32 %515, i32* @zz_size, align 4
  %516 = sext i32 %515 to i64
  %517 = icmp uge i64 %516, 265
  br i1 %517, label %518, label %521

; <label>:518                                     ; preds = %513
  %519 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %520 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %519)
  br label %546

; <label>:521                                     ; preds = %513
  %522 = load i32, i32* @zz_size, align 4
  %523 = sext i32 %522 to i64
  %524 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %523
  %525 = load %union.rec*, %union.rec** %524, align 8
  %526 = icmp eq %union.rec* %525, null
  br i1 %526, label %527, label %531

; <label>:527                                     ; preds = %521
  %528 = load i32, i32* @zz_size, align 4
  %529 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %530 = call %union.rec* @GetMemory(i32 %528, %struct.FILE_POS* %529)
  store %union.rec* %530, %union.rec** @zz_hold, align 8
  br label %545

; <label>:531                                     ; preds = %521
  %532 = load i32, i32* @zz_size, align 4
  %533 = sext i32 %532 to i64
  %534 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %533
  %535 = load %union.rec*, %union.rec** %534, align 8
  store %union.rec* %535, %union.rec** @zz_hold, align 8
  store %union.rec* %535, %union.rec** @zz_hold, align 8
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %537 = bitcast %union.rec* %536 to %struct.word_type*
  %538 = getelementptr inbounds %struct.word_type, %struct.word_type* %537, i32 0, i32 0
  %539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %538, i32 0, i64 0
  %540 = getelementptr inbounds %struct.LIST, %struct.LIST* %539, i32 0, i32 0
  %541 = load %union.rec*, %union.rec** %540, align 8
  %542 = load i32, i32* @zz_size, align 4
  %543 = sext i32 %542 to i64
  %544 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %543
  store %union.rec* %541, %union.rec** %544, align 8
  br label %545

; <label>:545                                     ; preds = %531, %527
  br label %546

; <label>:546                                     ; preds = %545, %518
  %547 = load %union.rec*, %union.rec** @zz_hold, align 8
  %548 = bitcast %union.rec* %547 to %struct.word_type*
  %549 = getelementptr inbounds %struct.word_type, %struct.word_type* %548, i32 0, i32 1
  %550 = bitcast %union.FIRST_UNION* %549 to %struct.anon*
  %551 = getelementptr inbounds %struct.anon, %struct.anon* %550, i32 0, i32 0
  store i8 0, i8* %551, align 1
  %552 = load %union.rec*, %union.rec** @zz_hold, align 8
  %553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %554 = bitcast %union.rec* %553 to %struct.word_type*
  %555 = getelementptr inbounds %struct.word_type, %struct.word_type* %554, i32 0, i32 0
  %556 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %555, i32 0, i64 1
  %557 = getelementptr inbounds %struct.LIST, %struct.LIST* %556, i32 0, i32 1
  store %union.rec* %552, %union.rec** %557, align 8
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %559 = bitcast %union.rec* %558 to %struct.word_type*
  %560 = getelementptr inbounds %struct.word_type, %struct.word_type* %559, i32 0, i32 0
  %561 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %560, i32 0, i64 1
  %562 = getelementptr inbounds %struct.LIST, %struct.LIST* %561, i32 0, i32 0
  store %union.rec* %552, %union.rec** %562, align 8
  %563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %564 = bitcast %union.rec* %563 to %struct.word_type*
  %565 = getelementptr inbounds %struct.word_type, %struct.word_type* %564, i32 0, i32 0
  %566 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %565, i32 0, i64 0
  %567 = getelementptr inbounds %struct.LIST, %struct.LIST* %566, i32 0, i32 1
  store %union.rec* %552, %union.rec** %567, align 8
  %568 = load %union.rec*, %union.rec** @zz_hold, align 8
  %569 = bitcast %union.rec* %568 to %struct.word_type*
  %570 = getelementptr inbounds %struct.word_type, %struct.word_type* %569, i32 0, i32 0
  %571 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %570, i32 0, i64 0
  %572 = getelementptr inbounds %struct.LIST, %struct.LIST* %571, i32 0, i32 0
  store %union.rec* %552, %union.rec** %572, align 8
  store %union.rec* %552, %union.rec** @xx_link, align 8
  %573 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %573, %union.rec** @zz_res, align 8
  %574 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %574, %union.rec** @zz_hold, align 8
  %575 = load %union.rec*, %union.rec** @zz_hold, align 8
  %576 = icmp eq %union.rec* %575, null
  br i1 %576, label %577, label %579

; <label>:577                                     ; preds = %546
  %578 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %627

; <label>:579                                     ; preds = %546
  %580 = load %union.rec*, %union.rec** @zz_res, align 8
  %581 = icmp eq %union.rec* %580, null
  br i1 %581, label %582, label %584

; <label>:582                                     ; preds = %579
  %583 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %625

; <label>:584                                     ; preds = %579
  %585 = load %union.rec*, %union.rec** @zz_hold, align 8
  %586 = bitcast %union.rec* %585 to %struct.word_type*
  %587 = getelementptr inbounds %struct.word_type, %struct.word_type* %586, i32 0, i32 0
  %588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %587, i32 0, i64 0
  %589 = getelementptr inbounds %struct.LIST, %struct.LIST* %588, i32 0, i32 0
  %590 = load %union.rec*, %union.rec** %589, align 8
  store %union.rec* %590, %union.rec** @zz_tmp, align 8
  %591 = load %union.rec*, %union.rec** @zz_res, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 0
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 0
  %596 = load %union.rec*, %union.rec** %595, align 8
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 0
  %600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %599, i32 0, i64 0
  %601 = getelementptr inbounds %struct.LIST, %struct.LIST* %600, i32 0, i32 0
  store %union.rec* %596, %union.rec** %601, align 8
  %602 = load %union.rec*, %union.rec** @zz_hold, align 8
  %603 = load %union.rec*, %union.rec** @zz_res, align 8
  %604 = bitcast %union.rec* %603 to %struct.word_type*
  %605 = getelementptr inbounds %struct.word_type, %struct.word_type* %604, i32 0, i32 0
  %606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %605, i32 0, i64 0
  %607 = getelementptr inbounds %struct.LIST, %struct.LIST* %606, i32 0, i32 0
  %608 = load %union.rec*, %union.rec** %607, align 8
  %609 = bitcast %union.rec* %608 to %struct.word_type*
  %610 = getelementptr inbounds %struct.word_type, %struct.word_type* %609, i32 0, i32 0
  %611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %610, i32 0, i64 0
  %612 = getelementptr inbounds %struct.LIST, %struct.LIST* %611, i32 0, i32 1
  store %union.rec* %602, %union.rec** %612, align 8
  %613 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %614 = load %union.rec*, %union.rec** @zz_res, align 8
  %615 = bitcast %union.rec* %614 to %struct.word_type*
  %616 = getelementptr inbounds %struct.word_type, %struct.word_type* %615, i32 0, i32 0
  %617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %616, i32 0, i64 0
  %618 = getelementptr inbounds %struct.LIST, %struct.LIST* %617, i32 0, i32 0
  store %union.rec* %613, %union.rec** %618, align 8
  %619 = load %union.rec*, %union.rec** @zz_res, align 8
  %620 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %621 = bitcast %union.rec* %620 to %struct.word_type*
  %622 = getelementptr inbounds %struct.word_type, %struct.word_type* %621, i32 0, i32 0
  %623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %622, i32 0, i64 0
  %624 = getelementptr inbounds %struct.LIST, %struct.LIST* %623, i32 0, i32 1
  store %union.rec* %619, %union.rec** %624, align 8
  br label %625

; <label>:625                                     ; preds = %584, %582
  %626 = phi %union.rec* [ %583, %582 ], [ %619, %584 ]
  br label %627

; <label>:627                                     ; preds = %625, %577
  %628 = phi %union.rec* [ %578, %577 ], [ %626, %625 ]
  %629 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %629, %union.rec** @zz_res, align 8
  %630 = load %union.rec*, %union.rec** %5, align 8
  store %union.rec* %630, %union.rec** @zz_hold, align 8
  %631 = load %union.rec*, %union.rec** @zz_hold, align 8
  %632 = icmp eq %union.rec* %631, null
  br i1 %632, label %633, label %635

; <label>:633                                     ; preds = %627
  %634 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %683

; <label>:635                                     ; preds = %627
  %636 = load %union.rec*, %union.rec** @zz_res, align 8
  %637 = icmp eq %union.rec* %636, null
  br i1 %637, label %638, label %640

; <label>:638                                     ; preds = %635
  %639 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %681

; <label>:640                                     ; preds = %635
  %641 = load %union.rec*, %union.rec** @zz_hold, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 1
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 0
  %646 = load %union.rec*, %union.rec** %645, align 8
  store %union.rec* %646, %union.rec** @zz_tmp, align 8
  %647 = load %union.rec*, %union.rec** @zz_res, align 8
  %648 = bitcast %union.rec* %647 to %struct.word_type*
  %649 = getelementptr inbounds %struct.word_type, %struct.word_type* %648, i32 0, i32 0
  %650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %649, i32 0, i64 1
  %651 = getelementptr inbounds %struct.LIST, %struct.LIST* %650, i32 0, i32 0
  %652 = load %union.rec*, %union.rec** %651, align 8
  %653 = load %union.rec*, %union.rec** @zz_hold, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 0
  %656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %655, i32 0, i64 1
  %657 = getelementptr inbounds %struct.LIST, %struct.LIST* %656, i32 0, i32 0
  store %union.rec* %652, %union.rec** %657, align 8
  %658 = load %union.rec*, %union.rec** @zz_hold, align 8
  %659 = load %union.rec*, %union.rec** @zz_res, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 0
  %662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %661, i32 0, i64 1
  %663 = getelementptr inbounds %struct.LIST, %struct.LIST* %662, i32 0, i32 0
  %664 = load %union.rec*, %union.rec** %663, align 8
  %665 = bitcast %union.rec* %664 to %struct.word_type*
  %666 = getelementptr inbounds %struct.word_type, %struct.word_type* %665, i32 0, i32 0
  %667 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %666, i32 0, i64 1
  %668 = getelementptr inbounds %struct.LIST, %struct.LIST* %667, i32 0, i32 1
  store %union.rec* %658, %union.rec** %668, align 8
  %669 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %670 = load %union.rec*, %union.rec** @zz_res, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 0
  %673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %672, i32 0, i64 1
  %674 = getelementptr inbounds %struct.LIST, %struct.LIST* %673, i32 0, i32 0
  store %union.rec* %669, %union.rec** %674, align 8
  %675 = load %union.rec*, %union.rec** @zz_res, align 8
  %676 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 0
  %679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %678, i32 0, i64 1
  %680 = getelementptr inbounds %struct.LIST, %struct.LIST* %679, i32 0, i32 1
  store %union.rec* %675, %union.rec** %680, align 8
  br label %681

; <label>:681                                     ; preds = %640, %638
  %682 = phi %union.rec* [ %639, %638 ], [ %675, %640 ]
  br label %683

; <label>:683                                     ; preds = %681, %633
  %684 = phi %union.rec* [ %634, %633 ], [ %682, %681 ]
  br label %685

; <label>:685                                     ; preds = %683, %476
  %686 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %687 = icmp eq %struct._IO_FILE* %686, null
  br i1 %687, label %688, label %698

; <label>:688                                     ; preds = %685
  %689 = load %union.rec*, %union.rec** %db, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 3
  %692 = bitcast %union.THIRD_UNION* %691 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %692, align 8
  %693 = load %union.rec*, %union.rec** %db, align 8
  %694 = bitcast %union.rec* %693 to %struct.word_type*
  %695 = getelementptr inbounds %struct.word_type, %struct.word_type* %694, i32 0, i32 3
  %696 = bitcast %union.THIRD_UNION* %695 to i8***
  store i8** null, i8*** %696, align 8
  %697 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %697, %union.rec** %1
  br label %1192

; <label>:698                                     ; preds = %685
  store i32 0, i32* %leftp, align 4
  store i32 1, i32* %lnum, align 4
  %699 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %700 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %701 = call i8* @fgets(i8* %699, i32 512, %struct._IO_FILE* %700)
  store i8* %701, i8** %gotline, align 8
  br label %702

; <label>:702                                     ; preds = %1127, %698
  %703 = load i8*, i8** %gotline, align 8
  %704 = icmp ne i8* %703, null
  br i1 %704, label %705, label %1131

; <label>:705                                     ; preds = %702
  %706 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 0
  %707 = load i8, i8* %706, align 1
  %708 = zext i8 %707 to i32
  %709 = icmp ne i32 %708, 48
  br i1 %709, label %715, label %710

; <label>:710                                     ; preds = %705
  %711 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 1
  %712 = load i8, i8* %711, align 1
  %713 = zext i8 %712 to i32
  %714 = icmp ne i32 %713, 48
  br i1 %714, label %715, label %716

; <label>:715                                     ; preds = %710, %705
  br label %1131

; <label>:716                                     ; preds = %710
  %717 = load i32, i32* %lnum, align 4
  %718 = add nsw i32 %717, 1
  store i32 %718, i32* %lnum, align 4
  %719 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %720 = call i64 @ftell(%struct._IO_FILE* %719)
  %721 = trunc i64 %720 to i32
  store i32 %721, i32* %leftp, align 4
  %722 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %723 = call i32 @StringBeginsWith(i8* %722, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.43, i32 0, i32 0))
  store i32 %723, i32* %gall, align 4
  %724 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %725 = load i32, i32* %gall, align 4
  %726 = icmp ne i32 %725, 0
  %727 = select i1 %726, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.45, i32 0, i32 0)
  %728 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %724, i8* %727, i32* %num) #5
  store i32 9, i32* %i, align 4
  br label %729

; <label>:729                                     ; preds = %746, %716
  %730 = load i32, i32* %i, align 4
  %731 = sext i32 %730 to i64
  %732 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %731
  %733 = load i8, i8* %732, align 1
  %734 = zext i8 %733 to i32
  %735 = icmp ne i32 %734, 32
  br i1 %735, label %736, label %743

; <label>:736                                     ; preds = %729
  %737 = load i32, i32* %i, align 4
  %738 = sext i32 %737 to i64
  %739 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %738
  %740 = load i8, i8* %739, align 1
  %741 = zext i8 %740 to i32
  %742 = icmp ne i32 %741, 0
  br label %743

; <label>:743                                     ; preds = %736, %729
  %744 = phi i1 [ false, %729 ], [ %742, %736 ]
  br i1 %744, label %745, label %749

; <label>:745                                     ; preds = %743
  br label %746

; <label>:746                                     ; preds = %745
  %747 = load i32, i32* %i, align 4
  %748 = add nsw i32 %747, 1
  store i32 %748, i32* %i, align 4
  br label %729

; <label>:749                                     ; preds = %743
  %750 = load %union.rec*, %union.rec** %5, align 8
  %751 = icmp eq %union.rec* %750, null
  br i1 %751, label %752, label %802

; <label>:752                                     ; preds = %749
  store i32 0, i32* %count, align 4
  %753 = load %union.rec*, %union.rec** @StartSym, align 8
  store %union.rec* %753, %union.rec** %sym, align 8
  br label %754

; <label>:754                                     ; preds = %770, %752
  %755 = load i32, i32* %i, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %756
  %758 = load i8, i8* %757, align 1
  %759 = zext i8 %758 to i32
  %760 = icmp ne i32 %759, 10
  br i1 %760, label %761, label %768

; <label>:761                                     ; preds = %754
  %762 = load i32, i32* %i, align 4
  %763 = sext i32 %762 to i64
  %764 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %763
  %765 = load i8, i8* %764, align 1
  %766 = zext i8 %765 to i32
  %767 = icmp ne i32 %766, 0
  br label %768

; <label>:768                                     ; preds = %761, %754
  %769 = phi i1 [ false, %754 ], [ %767, %761 ]
  br i1 %769, label %770, label %792

; <label>:770                                     ; preds = %768
  %771 = load %union.rec*, %union.rec** %sym, align 8
  call void @PushScope(%union.rec* %771, i32 0, i32 0)
  %772 = load i32, i32* %count, align 4
  %773 = add nsw i32 %772, 1
  store i32 %773, i32* %count, align 4
  %774 = load i32, i32* %i, align 4
  %775 = add nsw i32 %774, 1
  %776 = sext i32 %775 to i64
  %777 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %776
  %778 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %779 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %777, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %778) #5
  %780 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %781 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %782 = call i64 @strlen(i8* %781) #4
  %783 = trunc i64 %782 to i32
  %784 = call %union.rec* @SearchSym(i8* %780, i32 %783)
  store %union.rec* %784, %union.rec** %sym, align 8
  %785 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %786 = call i64 @strlen(i8* %785) #4
  %787 = add i64 %786, 1
  %788 = load i32, i32* %i, align 4
  %789 = sext i32 %788 to i64
  %790 = add i64 %789, %787
  %791 = trunc i64 %790 to i32
  store i32 %791, i32* %i, align 4
  br label %754

; <label>:792                                     ; preds = %768
  store i32 1, i32* %i, align 4
  br label %793

; <label>:793                                     ; preds = %798, %792
  %794 = load i32, i32* %i, align 4
  %795 = load i32, i32* %count, align 4
  %796 = icmp sle i32 %794, %795
  br i1 %796, label %797, label %801

; <label>:797                                     ; preds = %793
  call void @PopScope()
  br label %798

; <label>:798                                     ; preds = %797
  %799 = load i32, i32* %i, align 4
  %800 = add nsw i32 %799, 1
  store i32 %800, i32* %i, align 4
  br label %793

; <label>:801                                     ; preds = %793
  br label %878

; <label>:802                                     ; preds = %749
  store %union.rec* null, %union.rec** %sym, align 8
  %803 = load i32, i32* %i, align 4
  %804 = add nsw i32 %803, 1
  %805 = sext i32 %804 to i64
  %806 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %805
  %807 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %808 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %806, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.46, i32 0, i32 0), i8* %807) #5
  %809 = load %union.rec*, %union.rec** %5, align 8
  %810 = bitcast %union.rec* %809 to %struct.word_type*
  %811 = getelementptr inbounds %struct.word_type, %struct.word_type* %810, i32 0, i32 0
  %812 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %811, i32 0, i64 0
  %813 = getelementptr inbounds %struct.LIST, %struct.LIST* %812, i32 0, i32 1
  %814 = load %union.rec*, %union.rec** %813, align 8
  store %union.rec* %814, %union.rec** %link, align 8
  br label %815

; <label>:815                                     ; preds = %870, %802
  %816 = load %union.rec*, %union.rec** %link, align 8
  %817 = load %union.rec*, %union.rec** %5, align 8
  %818 = icmp ne %union.rec* %816, %817
  br i1 %818, label %819, label %877

; <label>:819                                     ; preds = %815
  %820 = load %union.rec*, %union.rec** %link, align 8
  %821 = bitcast %union.rec* %820 to %struct.word_type*
  %822 = getelementptr inbounds %struct.word_type, %struct.word_type* %821, i32 0, i32 0
  %823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %822, i32 0, i64 1
  %824 = getelementptr inbounds %struct.LIST, %struct.LIST* %823, i32 0, i32 0
  %825 = load %union.rec*, %union.rec** %824, align 8
  store %union.rec* %825, %union.rec** %y, align 8
  br label %826

; <label>:826                                     ; preds = %836, %819
  %827 = load %union.rec*, %union.rec** %y, align 8
  %828 = bitcast %union.rec* %827 to %struct.word_type*
  %829 = getelementptr inbounds %struct.word_type, %struct.word_type* %828, i32 0, i32 1
  %830 = bitcast %union.FIRST_UNION* %829 to %struct.anon*
  %831 = getelementptr inbounds %struct.anon, %struct.anon* %830, i32 0, i32 0
  %832 = load i8, i8* %831, align 1
  %833 = zext i8 %832 to i32
  %834 = icmp eq i32 %833, 0
  br i1 %834, label %835, label %843

; <label>:835                                     ; preds = %826
  br label %836

; <label>:836                                     ; preds = %835
  %837 = load %union.rec*, %union.rec** %y, align 8
  %838 = bitcast %union.rec* %837 to %struct.word_type*
  %839 = getelementptr inbounds %struct.word_type, %struct.word_type* %838, i32 0, i32 0
  %840 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %839, i32 0, i64 1
  %841 = getelementptr inbounds %struct.LIST, %struct.LIST* %840, i32 0, i32 0
  %842 = load %union.rec*, %union.rec** %841, align 8
  store %union.rec* %842, %union.rec** %y, align 8
  br label %826

; <label>:843                                     ; preds = %826
  %844 = load %union.rec*, %union.rec** %y, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 1
  %847 = bitcast %union.FIRST_UNION* %846 to %struct.anon*
  %848 = getelementptr inbounds %struct.anon, %struct.anon* %847, i32 0, i32 0
  %849 = load i8, i8* %848, align 1
  %850 = zext i8 %849 to i32
  %851 = icmp eq i32 %850, 2
  br i1 %851, label %855, label %852

; <label>:852                                     ; preds = %843
  %853 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %854 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %853, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.47, i32 0, i32 0))
  br label %855

; <label>:855                                     ; preds = %852, %843
  %856 = getelementptr inbounds [512 x i8], [512 x i8]* %sym_name, i32 0, i32 0
  %857 = load %union.rec*, %union.rec** %y, align 8
  %858 = bitcast %union.rec* %857 to %struct.closure_type*
  %859 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %858, i32 0, i32 5
  %860 = load %union.rec*, %union.rec** %859, align 8
  %861 = call i8* @SymName(%union.rec* %860)
  %862 = call i32 @strcmp(i8* %856, i8* %861) #4
  %863 = icmp eq i32 %862, 0
  br i1 %863, label %864, label %869

; <label>:864                                     ; preds = %855
  %865 = load %union.rec*, %union.rec** %y, align 8
  %866 = bitcast %union.rec* %865 to %struct.closure_type*
  %867 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %866, i32 0, i32 5
  %868 = load %union.rec*, %union.rec** %867, align 8
  store %union.rec* %868, %union.rec** %sym, align 8
  br label %877

; <label>:869                                     ; preds = %855
  br label %870

; <label>:870                                     ; preds = %869
  %871 = load %union.rec*, %union.rec** %link, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 0
  %874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %873, i32 0, i64 0
  %875 = getelementptr inbounds %struct.LIST, %struct.LIST* %874, i32 0, i32 1
  %876 = load %union.rec*, %union.rec** %875, align 8
  store %union.rec* %876, %union.rec** %link, align 8
  br label %815

; <label>:877                                     ; preds = %864, %815
  br label %878

; <label>:878                                     ; preds = %877, %801
  %879 = load %union.rec*, %union.rec** %sym, align 8
  %880 = icmp ne %union.rec* %879, null
  br i1 %880, label %881, label %1106

; <label>:881                                     ; preds = %878
  %882 = load %union.rec*, %union.rec** %sym, align 8
  %883 = load %union.rec*, %union.rec** @StartSym, align 8
  %884 = icmp ne %union.rec* %882, %883
  br i1 %884, label %885, label %1106

; <label>:885                                     ; preds = %881
  %886 = load %union.rec*, %union.rec** %sym, align 8
  %887 = bitcast %union.rec* %886 to %struct.symbol_type*
  %888 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %887, i32 0, i32 8
  %889 = load %union.rec*, %union.rec** %888, align 8
  %890 = icmp eq %union.rec* %889, null
  br i1 %890, label %891, label %893

; <label>:891                                     ; preds = %885
  %892 = load %union.rec*, %union.rec** %sym, align 8
  call void @CrossInit(%union.rec* %892)
  br label %893

; <label>:893                                     ; preds = %891, %885
  %894 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %895 = zext i8 %894 to i32
  store i32 %895, i32* @zz_size, align 4
  %896 = sext i32 %895 to i64
  %897 = icmp uge i64 %896, 265
  br i1 %897, label %898, label %901

; <label>:898                                     ; preds = %893
  %899 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %900 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %899)
  br label %926

; <label>:901                                     ; preds = %893
  %902 = load i32, i32* @zz_size, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %903
  %905 = load %union.rec*, %union.rec** %904, align 8
  %906 = icmp eq %union.rec* %905, null
  br i1 %906, label %907, label %911

; <label>:907                                     ; preds = %901
  %908 = load i32, i32* @zz_size, align 4
  %909 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %910 = call %union.rec* @GetMemory(i32 %908, %struct.FILE_POS* %909)
  store %union.rec* %910, %union.rec** @zz_hold, align 8
  br label %925

; <label>:911                                     ; preds = %901
  %912 = load i32, i32* @zz_size, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %913
  %915 = load %union.rec*, %union.rec** %914, align 8
  store %union.rec* %915, %union.rec** @zz_hold, align 8
  store %union.rec* %915, %union.rec** @zz_hold, align 8
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %917 = bitcast %union.rec* %916 to %struct.word_type*
  %918 = getelementptr inbounds %struct.word_type, %struct.word_type* %917, i32 0, i32 0
  %919 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %918, i32 0, i64 0
  %920 = getelementptr inbounds %struct.LIST, %struct.LIST* %919, i32 0, i32 0
  %921 = load %union.rec*, %union.rec** %920, align 8
  %922 = load i32, i32* @zz_size, align 4
  %923 = sext i32 %922 to i64
  %924 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %923
  store %union.rec* %921, %union.rec** %924, align 8
  br label %925

; <label>:925                                     ; preds = %911, %907
  br label %926

; <label>:926                                     ; preds = %925, %898
  %927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 1
  %930 = bitcast %union.FIRST_UNION* %929 to %struct.anon*
  %931 = getelementptr inbounds %struct.anon, %struct.anon* %930, i32 0, i32 0
  store i8 0, i8* %931, align 1
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %934 = bitcast %union.rec* %933 to %struct.word_type*
  %935 = getelementptr inbounds %struct.word_type, %struct.word_type* %934, i32 0, i32 0
  %936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %935, i32 0, i64 1
  %937 = getelementptr inbounds %struct.LIST, %struct.LIST* %936, i32 0, i32 1
  store %union.rec* %932, %union.rec** %937, align 8
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 1
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 0
  store %union.rec* %932, %union.rec** %942, align 8
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %944 = bitcast %union.rec* %943 to %struct.word_type*
  %945 = getelementptr inbounds %struct.word_type, %struct.word_type* %944, i32 0, i32 0
  %946 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %945, i32 0, i64 0
  %947 = getelementptr inbounds %struct.LIST, %struct.LIST* %946, i32 0, i32 1
  store %union.rec* %932, %union.rec** %947, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %949 = bitcast %union.rec* %948 to %struct.word_type*
  %950 = getelementptr inbounds %struct.word_type, %struct.word_type* %949, i32 0, i32 0
  %951 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %950, i32 0, i64 0
  %952 = getelementptr inbounds %struct.LIST, %struct.LIST* %951, i32 0, i32 0
  store %union.rec* %932, %union.rec** %952, align 8
  store %union.rec* %932, %union.rec** @xx_link, align 8
  %953 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %953, %union.rec** @zz_res, align 8
  %954 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %954, %union.rec** @zz_hold, align 8
  %955 = load %union.rec*, %union.rec** @zz_hold, align 8
  %956 = icmp eq %union.rec* %955, null
  br i1 %956, label %957, label %959

; <label>:957                                     ; preds = %926
  %958 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1007

; <label>:959                                     ; preds = %926
  %960 = load %union.rec*, %union.rec** @zz_res, align 8
  %961 = icmp eq %union.rec* %960, null
  br i1 %961, label %962, label %964

; <label>:962                                     ; preds = %959
  %963 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1005

; <label>:964                                     ; preds = %959
  %965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %966 = bitcast %union.rec* %965 to %struct.word_type*
  %967 = getelementptr inbounds %struct.word_type, %struct.word_type* %966, i32 0, i32 0
  %968 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %967, i32 0, i64 0
  %969 = getelementptr inbounds %struct.LIST, %struct.LIST* %968, i32 0, i32 0
  %970 = load %union.rec*, %union.rec** %969, align 8
  store %union.rec* %970, %union.rec** @zz_tmp, align 8
  %971 = load %union.rec*, %union.rec** @zz_res, align 8
  %972 = bitcast %union.rec* %971 to %struct.word_type*
  %973 = getelementptr inbounds %struct.word_type, %struct.word_type* %972, i32 0, i32 0
  %974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %973, i32 0, i64 0
  %975 = getelementptr inbounds %struct.LIST, %struct.LIST* %974, i32 0, i32 0
  %976 = load %union.rec*, %union.rec** %975, align 8
  %977 = load %union.rec*, %union.rec** @zz_hold, align 8
  %978 = bitcast %union.rec* %977 to %struct.word_type*
  %979 = getelementptr inbounds %struct.word_type, %struct.word_type* %978, i32 0, i32 0
  %980 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %979, i32 0, i64 0
  %981 = getelementptr inbounds %struct.LIST, %struct.LIST* %980, i32 0, i32 0
  store %union.rec* %976, %union.rec** %981, align 8
  %982 = load %union.rec*, %union.rec** @zz_hold, align 8
  %983 = load %union.rec*, %union.rec** @zz_res, align 8
  %984 = bitcast %union.rec* %983 to %struct.word_type*
  %985 = getelementptr inbounds %struct.word_type, %struct.word_type* %984, i32 0, i32 0
  %986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %985, i32 0, i64 0
  %987 = getelementptr inbounds %struct.LIST, %struct.LIST* %986, i32 0, i32 0
  %988 = load %union.rec*, %union.rec** %987, align 8
  %989 = bitcast %union.rec* %988 to %struct.word_type*
  %990 = getelementptr inbounds %struct.word_type, %struct.word_type* %989, i32 0, i32 0
  %991 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %990, i32 0, i64 0
  %992 = getelementptr inbounds %struct.LIST, %struct.LIST* %991, i32 0, i32 1
  store %union.rec* %982, %union.rec** %992, align 8
  %993 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %994 = load %union.rec*, %union.rec** @zz_res, align 8
  %995 = bitcast %union.rec* %994 to %struct.word_type*
  %996 = getelementptr inbounds %struct.word_type, %struct.word_type* %995, i32 0, i32 0
  %997 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %996, i32 0, i64 0
  %998 = getelementptr inbounds %struct.LIST, %struct.LIST* %997, i32 0, i32 0
  store %union.rec* %993, %union.rec** %998, align 8
  %999 = load %union.rec*, %union.rec** @zz_res, align 8
  %1000 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1001 = bitcast %union.rec* %1000 to %struct.word_type*
  %1002 = getelementptr inbounds %struct.word_type, %struct.word_type* %1001, i32 0, i32 0
  %1003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1002, i32 0, i64 0
  %1004 = getelementptr inbounds %struct.LIST, %struct.LIST* %1003, i32 0, i32 1
  store %union.rec* %999, %union.rec** %1004, align 8
  br label %1005

; <label>:1005                                    ; preds = %964, %962
  %1006 = phi %union.rec* [ %963, %962 ], [ %999, %964 ]
  br label %1007

; <label>:1007                                    ; preds = %1005, %957
  %1008 = phi %union.rec* [ %958, %957 ], [ %1006, %1005 ]
  %1009 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1009, %union.rec** @zz_res, align 8
  %1010 = load %union.rec*, %union.rec** %sym, align 8
  %1011 = bitcast %union.rec* %1010 to %struct.symbol_type*
  %1012 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %1011, i32 0, i32 8
  %1013 = load %union.rec*, %union.rec** %1012, align 8
  store %union.rec* %1013, %union.rec** @zz_hold, align 8
  %1014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1015 = icmp eq %union.rec* %1014, null
  br i1 %1015, label %1016, label %1018

; <label>:1016                                    ; preds = %1007
  %1017 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1066

; <label>:1018                                    ; preds = %1007
  %1019 = load %union.rec*, %union.rec** @zz_res, align 8
  %1020 = icmp eq %union.rec* %1019, null
  br i1 %1020, label %1021, label %1023

; <label>:1021                                    ; preds = %1018
  %1022 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1064

; <label>:1023                                    ; preds = %1018
  %1024 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1025 = bitcast %union.rec* %1024 to %struct.word_type*
  %1026 = getelementptr inbounds %struct.word_type, %struct.word_type* %1025, i32 0, i32 0
  %1027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1026, i32 0, i64 1
  %1028 = getelementptr inbounds %struct.LIST, %struct.LIST* %1027, i32 0, i32 0
  %1029 = load %union.rec*, %union.rec** %1028, align 8
  store %union.rec* %1029, %union.rec** @zz_tmp, align 8
  %1030 = load %union.rec*, %union.rec** @zz_res, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.word_type*
  %1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %1031, i32 0, i32 0
  %1033 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1032, i32 0, i64 1
  %1034 = getelementptr inbounds %struct.LIST, %struct.LIST* %1033, i32 0, i32 0
  %1035 = load %union.rec*, %union.rec** %1034, align 8
  %1036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1037 = bitcast %union.rec* %1036 to %struct.word_type*
  %1038 = getelementptr inbounds %struct.word_type, %struct.word_type* %1037, i32 0, i32 0
  %1039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1038, i32 0, i64 1
  %1040 = getelementptr inbounds %struct.LIST, %struct.LIST* %1039, i32 0, i32 0
  store %union.rec* %1035, %union.rec** %1040, align 8
  %1041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1042 = load %union.rec*, %union.rec** @zz_res, align 8
  %1043 = bitcast %union.rec* %1042 to %struct.word_type*
  %1044 = getelementptr inbounds %struct.word_type, %struct.word_type* %1043, i32 0, i32 0
  %1045 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1044, i32 0, i64 1
  %1046 = getelementptr inbounds %struct.LIST, %struct.LIST* %1045, i32 0, i32 0
  %1047 = load %union.rec*, %union.rec** %1046, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.word_type*
  %1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %1048, i32 0, i32 0
  %1050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1049, i32 0, i64 1
  %1051 = getelementptr inbounds %struct.LIST, %struct.LIST* %1050, i32 0, i32 1
  store %union.rec* %1041, %union.rec** %1051, align 8
  %1052 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1053 = load %union.rec*, %union.rec** @zz_res, align 8
  %1054 = bitcast %union.rec* %1053 to %struct.word_type*
  %1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %1054, i32 0, i32 0
  %1056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1055, i32 0, i64 1
  %1057 = getelementptr inbounds %struct.LIST, %struct.LIST* %1056, i32 0, i32 0
  store %union.rec* %1052, %union.rec** %1057, align 8
  %1058 = load %union.rec*, %union.rec** @zz_res, align 8
  %1059 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 0
  %1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1061, i32 0, i64 1
  %1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %1062, i32 0, i32 1
  store %union.rec* %1058, %union.rec** %1063, align 8
  br label %1064

; <label>:1064                                    ; preds = %1023, %1021
  %1065 = phi %union.rec* [ %1022, %1021 ], [ %1058, %1023 ]
  br label %1066

; <label>:1066                                    ; preds = %1064, %1016
  %1067 = phi %union.rec* [ %1017, %1016 ], [ %1065, %1064 ]
  %1068 = load %union.rec*, %union.rec** %db, align 8
  %1069 = bitcast %union.rec* %1068 to %struct.word_type*
  %1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %1069, i32 0, i32 0
  %1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1070, i32 0, i64 0
  %1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %1071, i32 0, i32 0
  %1073 = load %union.rec*, %union.rec** %1072, align 8
  store %union.rec* %1073, %union.rec** %link, align 8
  %1074 = load i32, i32* %num, align 4
  %1075 = trunc i32 %1074 to i8
  %1076 = load %union.rec*, %union.rec** %link, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.link_type*
  %1078 = getelementptr inbounds %struct.link_type, %struct.link_type* %1077, i32 0, i32 2
  store i8 %1075, i8* %1078, align 1
  %1079 = load i32, i32* %gall, align 4
  %1080 = trunc i32 %1079 to i8
  %1081 = load %union.rec*, %union.rec** %link, align 8
  %1082 = bitcast %union.rec* %1081 to %struct.link_type*
  %1083 = getelementptr inbounds %struct.link_type, %struct.link_type* %1082, i32 0, i32 3
  store i8 %1080, i8* %1083, align 1
  %1084 = load i32, i32* %gall, align 4
  %1085 = icmp ne i32 %1084, 0
  br i1 %1085, label %1086, label %1105

; <label>:1086                                    ; preds = %1066
  %1087 = load %union.rec*, %union.rec** %sym, align 8
  %1088 = bitcast %union.rec* %1087 to %struct.word_type*
  %1089 = getelementptr inbounds %struct.word_type, %struct.word_type* %1088, i32 0, i32 2
  %1090 = bitcast %union.SECOND_UNION* %1089 to %struct.anon.5*
  %1091 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1090, i32 0, i32 1
  %1092 = bitcast [3 x i8]* %1091 to i24*
  %1093 = load i24, i24* %1092, align 1
  %1094 = and i24 %1093, -2049
  %1095 = or i24 %1094, 2048
  store i24 %1095, i24* %1092, align 1
  %1096 = load %union.rec*, %union.rec** %sym, align 8
  %1097 = bitcast %union.rec* %1096 to %struct.word_type*
  %1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %1097, i32 0, i32 2
  %1099 = bitcast %union.SECOND_UNION* %1098 to %struct.anon.5*
  %1100 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1099, i32 0, i32 1
  %1101 = bitcast [3 x i8]* %1100 to i24*
  %1102 = load i24, i24* %1101, align 1
  %1103 = and i24 %1102, -4097
  %1104 = or i24 %1103, 4096
  store i24 %1104, i24* %1101, align 1
  br label %1105

; <label>:1105                                    ; preds = %1086, %1066
  br label %1127

; <label>:1106                                    ; preds = %881, %878
  %1107 = load %union.rec*, %union.rec** %db, align 8
  %1108 = bitcast %union.rec* %1107 to %struct.word_type*
  %1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %1108, i32 0, i32 1
  %1110 = bitcast %union.FIRST_UNION* %1109 to %struct.FILE_POS*
  %1111 = load i16, i16* %index_fnum, align 2
  %1112 = call i8* @FileName(i16 zeroext %1111)
  %1113 = load i32, i32* %lnum, align 4
  %1114 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 33, i32 13, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.48, i32 0, i32 0), i32 2, %struct.FILE_POS* %1110, i8* %1112, i32 %1113)
  %1115 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %1116 = call i32 @fclose(%struct._IO_FILE* %1115)
  %1117 = load %union.rec*, %union.rec** %db, align 8
  %1118 = bitcast %union.rec* %1117 to %struct.word_type*
  %1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %1118, i32 0, i32 2
  %1120 = bitcast %union.SECOND_UNION* %1119 to %struct.anon.3*
  %1121 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1120, i32 0, i32 2
  store i8 0, i8* %1121, align 1
  %1122 = load %union.rec*, %union.rec** %db, align 8
  %1123 = bitcast %union.rec* %1122 to %struct.word_type*
  %1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %1123, i32 0, i32 3
  %1125 = bitcast %union.THIRD_UNION* %1124 to %struct._IO_FILE**
  store %struct._IO_FILE* null, %struct._IO_FILE** %1125, align 8
  %1126 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %1126, %union.rec** %1
  br label %1192

; <label>:1127                                    ; preds = %1105
  %1128 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %1129 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %1130 = call i8* @fgets(i8* %1128, i32 512, %struct._IO_FILE* %1129)
  store i8* %1130, i8** %gotline, align 8
  br label %702

; <label>:1131                                    ; preds = %715, %702
  %1132 = load %union.rec*, %union.rec** %db, align 8
  %1133 = bitcast %union.rec* %1132 to %struct.word_type*
  %1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %1133, i32 0, i32 2
  %1135 = bitcast %union.SECOND_UNION* %1134 to %struct.anon.3*
  %1136 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1135, i32 0, i32 2
  %1137 = load i8, i8* %1136, align 1
  %1138 = icmp ne i8 %1137, 0
  br i1 %1138, label %1139, label %1177

; <label>:1139                                    ; preds = %1131
  %1140 = load i8*, i8** %gotline, align 8
  %1141 = icmp eq i8* %1140, null
  br i1 %1141, label %1142, label %1147

; <label>:1142                                    ; preds = %1139
  %1143 = load %union.rec*, %union.rec** %db, align 8
  %1144 = bitcast %union.rec* %1143 to %struct.word_type*
  %1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %1144, i32 0, i32 3
  %1146 = bitcast %union.THIRD_UNION* %1145 to i8***
  store i8** null, i8*** %1146, align 8
  br label %1176

; <label>:1147                                    ; preds = %1139
  %1148 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %1149 = load i16, i16* %index_fnum, align 2
  %1150 = call i8* @FileName(i16 zeroext %1149)
  %1151 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %1152 = call i8** @ReadLines(%struct._IO_FILE* %1148, i8* %1150, i8* %1151, i32* %len)
  %1153 = load %union.rec*, %union.rec** %db, align 8
  %1154 = bitcast %union.rec* %1153 to %struct.word_type*
  %1155 = getelementptr inbounds %struct.word_type, %struct.word_type* %1154, i32 0, i32 3
  %1156 = bitcast %union.THIRD_UNION* %1155 to i8***
  store i8** %1152, i8*** %1156, align 8
  %1157 = load i32, i32* %len, align 4
  %1158 = trunc i32 %1157 to i16
  %1159 = load %union.rec*, %union.rec** %db, align 8
  %1160 = bitcast %union.rec* %1159 to %struct.word_type*
  %1161 = getelementptr inbounds %struct.word_type, %struct.word_type* %1160, i32 0, i32 2
  %1162 = bitcast %union.SECOND_UNION* %1161 to %struct.anon.3*
  %1163 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1162, i32 0, i32 0
  store i16 %1158, i16* %1163, align 2
  %1164 = load %union.rec*, %union.rec** %db, align 8
  %1165 = bitcast %union.rec* %1164 to %struct.word_type*
  %1166 = getelementptr inbounds %struct.word_type, %struct.word_type* %1165, i32 0, i32 3
  %1167 = bitcast %union.THIRD_UNION* %1166 to i8***
  %1168 = load i8**, i8*** %1167, align 8
  %1169 = load %union.rec*, %union.rec** %db, align 8
  %1170 = bitcast %union.rec* %1169 to %struct.word_type*
  %1171 = getelementptr inbounds %struct.word_type, %struct.word_type* %1170, i32 0, i32 2
  %1172 = bitcast %union.SECOND_UNION* %1171 to %struct.anon.3*
  %1173 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1172, i32 0, i32 0
  %1174 = load i16, i16* %1173, align 2
  %1175 = zext i16 %1174 to i32
  call void @SortLines(i8** %1168, i32 %1175)
  br label %1176

; <label>:1176                                    ; preds = %1147, %1142
  br label %1190

; <label>:1177                                    ; preds = %1131
  %1178 = load %struct._IO_FILE*, %struct._IO_FILE** %fp, align 8
  %1179 = load %union.rec*, %union.rec** %db, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.word_type*
  %1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %1180, i32 0, i32 3
  %1182 = bitcast %union.THIRD_UNION* %1181 to %struct._IO_FILE**
  store %struct._IO_FILE* %1178, %struct._IO_FILE** %1182, align 8
  %1183 = load i32, i32* %leftp, align 4
  %1184 = trunc i32 %1183 to i16
  %1185 = load %union.rec*, %union.rec** %db, align 8
  %1186 = bitcast %union.rec* %1185 to %struct.word_type*
  %1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %1186, i32 0, i32 2
  %1188 = bitcast %union.SECOND_UNION* %1187 to %struct.anon.3*
  %1189 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %1188, i32 0, i32 0
  store i16 %1184, i16* %1189, align 2
  br label %1190

; <label>:1190                                    ; preds = %1177, %1176
  %1191 = load %union.rec*, %union.rec** %db, align 8
  store %union.rec* %1191, %union.rec** %1
  br label %1192

; <label>:1192                                    ; preds = %1190, %1106, %688
  %1193 = load %union.rec*, %union.rec** %1
  ret %union.rec* %1193
}

declare zeroext i16 @DefineFile(i8*, i8*, %struct.FILE_POS*, i32, i32) #1

declare %struct._IO_FILE* @OpenFile(i16 zeroext, i32, i32) #1

declare i8* @fgets(i8*, i32, %struct._IO_FILE*) #1

declare i32 @StringBeginsWith(i8*, i8*) #1

declare void @LexPush(i16 zeroext, i32, i32, i32, i32) #1

declare %union.rec* @LexGetToken() #1

declare %union.rec* @Parse(%union.rec**, %union.rec*, i32, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

declare i32 @DisposeObject(%union.rec*) #1

declare i64 @LexNextTokenPos() #1

declare void @LexPop() #1

declare i64 @ftell(%struct._IO_FILE*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare void @PushScope(%union.rec*, i32, i32) #1

declare %union.rec* @SearchSym(i8*, i32) #1

declare void @PopScope() #1

declare i8** @ReadLines(%struct._IO_FILE*, i8*, i8*, i32*) #1

declare void @SortLines(i8**, i32) #1

; Function Attrs: nounwind uwtable
define i32 @DbRetrieve(%union.rec* %db, i32 %gall, %union.rec* %sym, i8* %tag, i8* %seq, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.rec*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %symnum = alloca i32, align 4
  %lnum = alloca i32, align 4
  %line = alloca [512 x i8], align 16
  %buff = alloca [512 x i8], align 16
  %link = alloca %union.rec*, align 8
  %yy = alloca %union.rec*, align 8
  %count = alloca i32, align 4
  store %union.rec* %db, %union.rec** %2, align 8
  store i32 %gall, i32* %3, align 4
  store %union.rec* %sym, %union.rec** %4, align 8
  store i8* %tag, i8** %5, align 8
  store i8* %seq, i8** %6, align 8
  store i16* %dfnum, i16** %7, align 8
  store i64* %dfpos, i64** %8, align 8
  store i32* %dlnum, i32** %9, align 8
  store i64* %cont, i64** %10, align 8
  %11 = load %union.rec*, %union.rec** %2, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 2
  %14 = bitcast %union.SECOND_UNION* %13 to %struct.anon.3*
  %15 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %0
  %19 = load %union.rec*, %union.rec** %2, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 3
  %22 = bitcast %union.THIRD_UNION* %21 to %struct._IO_FILE**
  %23 = load %struct._IO_FILE*, %struct._IO_FILE** %22, align 8
  %24 = icmp eq %struct._IO_FILE* %23, null
  br i1 %24, label %25, label %26

; <label>:25                                      ; preds = %18, %0
  store i32 0, i32* %1
  br label %455

; <label>:26                                      ; preds = %18
  store i32 0, i32* %count, align 4
  %27 = load %union.rec*, %union.rec** %2, align 8
  %28 = bitcast %union.rec* %27 to %struct.word_type*
  %29 = getelementptr inbounds %struct.word_type, %struct.word_type* %28, i32 0, i32 0
  %30 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %29, i32 0, i64 0
  %31 = getelementptr inbounds %struct.LIST, %struct.LIST* %30, i32 0, i32 1
  %32 = load %union.rec*, %union.rec** %31, align 8
  store %union.rec* %32, %union.rec** %link, align 8
  br label %33

; <label>:33                                      ; preds = %115, %26
  %34 = load %union.rec*, %union.rec** %link, align 8
  %35 = load %union.rec*, %union.rec** %2, align 8
  %36 = icmp ne %union.rec* %34, %35
  br i1 %36, label %37, label %122

; <label>:37                                      ; preds = %33
  %38 = load %union.rec*, %union.rec** %link, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 1
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 0
  %43 = load %union.rec*, %union.rec** %42, align 8
  store %union.rec* %43, %union.rec** %yy, align 8
  br label %44

; <label>:44                                      ; preds = %54, %37
  %45 = load %union.rec*, %union.rec** %yy, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 1
  %48 = bitcast %union.FIRST_UNION* %47 to %struct.anon*
  %49 = getelementptr inbounds %struct.anon, %struct.anon* %48, i32 0, i32 0
  %50 = load i8, i8* %49, align 1
  %51 = zext i8 %50 to i32
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %61

; <label>:53                                      ; preds = %44
  br label %54

; <label>:54                                      ; preds = %53
  %55 = load %union.rec*, %union.rec** %yy, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 0
  %58 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %57, i32 0, i64 1
  %59 = getelementptr inbounds %struct.LIST, %struct.LIST* %58, i32 0, i32 0
  %60 = load %union.rec*, %union.rec** %59, align 8
  store %union.rec* %60, %union.rec** %yy, align 8
  br label %44

; <label>:61                                      ; preds = %44
  %62 = load %union.rec*, %union.rec** %yy, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 1
  %65 = bitcast %union.FIRST_UNION* %64 to %struct.anon*
  %66 = getelementptr inbounds %struct.anon, %struct.anon* %65, i32 0, i32 0
  %67 = load i8, i8* %66, align 1
  %68 = zext i8 %67 to i32
  %69 = icmp eq i32 %68, 140
  br i1 %69, label %82, label %70

; <label>:70                                      ; preds = %61
  %71 = load %union.rec*, %union.rec** %yy, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 1
  %74 = bitcast %union.FIRST_UNION* %73 to %struct.anon*
  %75 = getelementptr inbounds %struct.anon, %struct.anon* %74, i32 0, i32 0
  %76 = load i8, i8* %75, align 1
  %77 = zext i8 %76 to i32
  %78 = icmp eq i32 %77, 17
  br i1 %78, label %82, label %79

; <label>:79                                      ; preds = %70
  %80 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %81 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %80, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.14, i32 0, i32 0))
  br label %82

; <label>:82                                      ; preds = %79, %70, %61
  %83 = load %union.rec*, %union.rec** %yy, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 1
  %86 = bitcast %union.FIRST_UNION* %85 to %struct.anon*
  %87 = getelementptr inbounds %struct.anon, %struct.anon* %86, i32 0, i32 0
  %88 = load i8, i8* %87, align 1
  %89 = zext i8 %88 to i32
  %90 = icmp ne i32 %89, 140
  br i1 %90, label %91, label %92

; <label>:91                                      ; preds = %82
  br label %115

; <label>:92                                      ; preds = %82
  %93 = load %union.rec*, %union.rec** %yy, align 8
  %94 = bitcast %union.rec* %93 to %struct.cr_type*
  %95 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %94, i32 0, i32 9
  %96 = load %union.rec*, %union.rec** %95, align 8
  %97 = load %union.rec*, %union.rec** %4, align 8
  %98 = icmp eq %union.rec* %96, %97
  br i1 %98, label %99, label %100

; <label>:99                                      ; preds = %92
  br label %122

; <label>:100                                     ; preds = %92
  %101 = load %union.rec*, %union.rec** %link, align 8
  %102 = bitcast %union.rec* %101 to %struct.link_type*
  %103 = getelementptr inbounds %struct.link_type, %struct.link_type* %102, i32 0, i32 2
  %104 = load i8, i8* %103, align 1
  %105 = zext i8 %104 to i32
  %106 = load i32, i32* %count, align 4
  %107 = icmp sgt i32 %105, %106
  br i1 %107, label %108, label %114

; <label>:108                                     ; preds = %100
  %109 = load %union.rec*, %union.rec** %link, align 8
  %110 = bitcast %union.rec* %109 to %struct.link_type*
  %111 = getelementptr inbounds %struct.link_type, %struct.link_type* %110, i32 0, i32 2
  %112 = load i8, i8* %111, align 1
  %113 = zext i8 %112 to i32
  store i32 %113, i32* %count, align 4
  br label %114

; <label>:114                                     ; preds = %108, %100
  br label %115

; <label>:115                                     ; preds = %114, %91
  %116 = load %union.rec*, %union.rec** %link, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 0
  %119 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %118, i32 0, i64 0
  %120 = getelementptr inbounds %struct.LIST, %struct.LIST* %119, i32 0, i32 1
  %121 = load %union.rec*, %union.rec** %120, align 8
  store %union.rec* %121, %union.rec** %link, align 8
  br label %33

; <label>:122                                     ; preds = %99, %33
  %123 = load %union.rec*, %union.rec** %link, align 8
  %124 = load %union.rec*, %union.rec** %2, align 8
  %125 = icmp eq %union.rec* %123, %124
  br i1 %125, label %126, label %324

; <label>:126                                     ; preds = %122
  %127 = load %union.rec*, %union.rec** %4, align 8
  %128 = bitcast %union.rec* %127 to %struct.symbol_type*
  %129 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %128, i32 0, i32 8
  %130 = load %union.rec*, %union.rec** %129, align 8
  %131 = icmp eq %union.rec* %130, null
  br i1 %131, label %132, label %134

; <label>:132                                     ; preds = %126
  %133 = load %union.rec*, %union.rec** %4, align 8
  call void @CrossInit(%union.rec* %133)
  br label %134

; <label>:134                                     ; preds = %132, %126
  %135 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %136 = zext i8 %135 to i32
  store i32 %136, i32* @zz_size, align 4
  %137 = sext i32 %136 to i64
  %138 = icmp uge i64 %137, 265
  br i1 %138, label %139, label %142

; <label>:139                                     ; preds = %134
  %140 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %141 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i32 0, i32 0), i32 1, %struct.FILE_POS* %140)
  br label %167

; <label>:142                                     ; preds = %134
  %143 = load i32, i32* @zz_size, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %144
  %146 = load %union.rec*, %union.rec** %145, align 8
  %147 = icmp eq %union.rec* %146, null
  br i1 %147, label %148, label %152

; <label>:148                                     ; preds = %142
  %149 = load i32, i32* @zz_size, align 4
  %150 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %151 = call %union.rec* @GetMemory(i32 %149, %struct.FILE_POS* %150)
  store %union.rec* %151, %union.rec** @zz_hold, align 8
  br label %166

; <label>:152                                     ; preds = %142
  %153 = load i32, i32* @zz_size, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %154
  %156 = load %union.rec*, %union.rec** %155, align 8
  store %union.rec* %156, %union.rec** @zz_hold, align 8
  store %union.rec* %156, %union.rec** @zz_hold, align 8
  %157 = load %union.rec*, %union.rec** @zz_hold, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 0
  %160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %159, i32 0, i64 0
  %161 = getelementptr inbounds %struct.LIST, %struct.LIST* %160, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = load i32, i32* @zz_size, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %164
  store %union.rec* %162, %union.rec** %165, align 8
  br label %166

; <label>:166                                     ; preds = %152, %148
  br label %167

; <label>:167                                     ; preds = %166, %139
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 1
  %171 = bitcast %union.FIRST_UNION* %170 to %struct.anon*
  %172 = getelementptr inbounds %struct.anon, %struct.anon* %171, i32 0, i32 0
  store i8 0, i8* %172, align 1
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = load %union.rec*, %union.rec** @zz_hold, align 8
  %175 = bitcast %union.rec* %174 to %struct.word_type*
  %176 = getelementptr inbounds %struct.word_type, %struct.word_type* %175, i32 0, i32 0
  %177 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %176, i32 0, i64 1
  %178 = getelementptr inbounds %struct.LIST, %struct.LIST* %177, i32 0, i32 1
  store %union.rec* %173, %union.rec** %178, align 8
  %179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %181, i32 0, i64 1
  %183 = getelementptr inbounds %struct.LIST, %struct.LIST* %182, i32 0, i32 0
  store %union.rec* %173, %union.rec** %183, align 8
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 0
  %187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %186, i32 0, i64 0
  %188 = getelementptr inbounds %struct.LIST, %struct.LIST* %187, i32 0, i32 1
  store %union.rec* %173, %union.rec** %188, align 8
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 0
  %192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %191, i32 0, i64 0
  %193 = getelementptr inbounds %struct.LIST, %struct.LIST* %192, i32 0, i32 0
  store %union.rec* %173, %union.rec** %193, align 8
  store %union.rec* %173, %union.rec** @xx_link, align 8
  %194 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %194, %union.rec** @zz_res, align 8
  %195 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %195, %union.rec** @zz_hold, align 8
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = icmp eq %union.rec* %196, null
  br i1 %197, label %198, label %200

; <label>:198                                     ; preds = %167
  %199 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %248

; <label>:200                                     ; preds = %167
  %201 = load %union.rec*, %union.rec** @zz_res, align 8
  %202 = icmp eq %union.rec* %201, null
  br i1 %202, label %203, label %205

; <label>:203                                     ; preds = %200
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %246

; <label>:205                                     ; preds = %200
  %206 = load %union.rec*, %union.rec** @zz_hold, align 8
  %207 = bitcast %union.rec* %206 to %struct.word_type*
  %208 = getelementptr inbounds %struct.word_type, %struct.word_type* %207, i32 0, i32 0
  %209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %208, i32 0, i64 0
  %210 = getelementptr inbounds %struct.LIST, %struct.LIST* %209, i32 0, i32 0
  %211 = load %union.rec*, %union.rec** %210, align 8
  store %union.rec* %211, %union.rec** @zz_tmp, align 8
  %212 = load %union.rec*, %union.rec** @zz_res, align 8
  %213 = bitcast %union.rec* %212 to %struct.word_type*
  %214 = getelementptr inbounds %struct.word_type, %struct.word_type* %213, i32 0, i32 0
  %215 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %214, i32 0, i64 0
  %216 = getelementptr inbounds %struct.LIST, %struct.LIST* %215, i32 0, i32 0
  %217 = load %union.rec*, %union.rec** %216, align 8
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %220, i32 0, i64 0
  %222 = getelementptr inbounds %struct.LIST, %struct.LIST* %221, i32 0, i32 0
  store %union.rec* %217, %union.rec** %222, align 8
  %223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %224 = load %union.rec*, %union.rec** @zz_res, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 0
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %228, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 1
  store %union.rec* %223, %union.rec** %233, align 8
  %234 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %235 = load %union.rec*, %union.rec** @zz_res, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 0
  %238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %237, i32 0, i64 0
  %239 = getelementptr inbounds %struct.LIST, %struct.LIST* %238, i32 0, i32 0
  store %union.rec* %234, %union.rec** %239, align 8
  %240 = load %union.rec*, %union.rec** @zz_res, align 8
  %241 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 0
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 1
  store %union.rec* %240, %union.rec** %245, align 8
  br label %246

; <label>:246                                     ; preds = %205, %203
  %247 = phi %union.rec* [ %204, %203 ], [ %240, %205 ]
  br label %248

; <label>:248                                     ; preds = %246, %198
  %249 = phi %union.rec* [ %199, %198 ], [ %247, %246 ]
  %250 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %250, %union.rec** @zz_res, align 8
  %251 = load %union.rec*, %union.rec** %4, align 8
  %252 = bitcast %union.rec* %251 to %struct.symbol_type*
  %253 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %252, i32 0, i32 8
  %254 = load %union.rec*, %union.rec** %253, align 8
  store %union.rec* %254, %union.rec** @zz_hold, align 8
  %255 = load %union.rec*, %union.rec** @zz_hold, align 8
  %256 = icmp eq %union.rec* %255, null
  br i1 %256, label %257, label %259

; <label>:257                                     ; preds = %248
  %258 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %307

; <label>:259                                     ; preds = %248
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %261 = icmp eq %union.rec* %260, null
  br i1 %261, label %262, label %264

; <label>:262                                     ; preds = %259
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %305

; <label>:264                                     ; preds = %259
  %265 = load %union.rec*, %union.rec** @zz_hold, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 0
  %268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %267, i32 0, i64 1
  %269 = getelementptr inbounds %struct.LIST, %struct.LIST* %268, i32 0, i32 0
  %270 = load %union.rec*, %union.rec** %269, align 8
  store %union.rec* %270, %union.rec** @zz_tmp, align 8
  %271 = load %union.rec*, %union.rec** @zz_res, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 1
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %275, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 1
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 0
  store %union.rec* %276, %union.rec** %281, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %283 = load %union.rec*, %union.rec** @zz_res, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 0
  %286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %285, i32 0, i64 1
  %287 = getelementptr inbounds %struct.LIST, %struct.LIST* %286, i32 0, i32 0
  %288 = load %union.rec*, %union.rec** %287, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %290, i32 0, i64 1
  %292 = getelementptr inbounds %struct.LIST, %struct.LIST* %291, i32 0, i32 1
  store %union.rec* %282, %union.rec** %292, align 8
  %293 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %294 = load %union.rec*, %union.rec** @zz_res, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 1
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 0
  store %union.rec* %293, %union.rec** %298, align 8
  %299 = load %union.rec*, %union.rec** @zz_res, align 8
  %300 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 1
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 1
  store %union.rec* %299, %union.rec** %304, align 8
  br label %305

; <label>:305                                     ; preds = %264, %262
  %306 = phi %union.rec* [ %263, %262 ], [ %299, %264 ]
  br label %307

; <label>:307                                     ; preds = %305, %257
  %308 = phi %union.rec* [ %258, %257 ], [ %306, %305 ]
  %309 = load %union.rec*, %union.rec** %2, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 0
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 0
  %314 = load %union.rec*, %union.rec** %313, align 8
  store %union.rec* %314, %union.rec** %link, align 8
  %315 = load i32, i32* %count, align 4
  %316 = add nsw i32 %315, 1
  %317 = trunc i32 %316 to i8
  %318 = load %union.rec*, %union.rec** %link, align 8
  %319 = bitcast %union.rec* %318 to %struct.link_type*
  %320 = getelementptr inbounds %struct.link_type, %struct.link_type* %319, i32 0, i32 2
  store i8 %317, i8* %320, align 1
  %321 = load %union.rec*, %union.rec** %link, align 8
  %322 = bitcast %union.rec* %321 to %struct.link_type*
  %323 = getelementptr inbounds %struct.link_type, %struct.link_type* %322, i32 0, i32 3
  store i8 0, i8* %323, align 1
  br label %324

; <label>:324                                     ; preds = %307, %122
  %325 = load %union.rec*, %union.rec** %link, align 8
  %326 = bitcast %union.rec* %325 to %struct.link_type*
  %327 = getelementptr inbounds %struct.link_type, %struct.link_type* %326, i32 0, i32 2
  %328 = load i8, i8* %327, align 1
  %329 = zext i8 %328 to i32
  store i32 %329, i32* %symnum, align 4
  %330 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %331 = load i32, i32* %3, align 4
  %332 = icmp ne i32 %331, 0
  %333 = select i1 %332, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.12, i32 0, i32 0)
  %334 = load i32, i32* %symnum, align 4
  %335 = load i8*, i8** %5, align 8
  %336 = call i32 (i8*, i8*, ...) @sprintf(i8* %330, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* %333, i32 %334, i8* %335) #5
  %337 = load %union.rec*, %union.rec** %2, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 2
  %340 = bitcast %union.SECOND_UNION* %339 to %struct.anon.3*
  %341 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %340, i32 0, i32 2
  %342 = load i8, i8* %341, align 1
  %343 = icmp ne i8 %342, 0
  br i1 %343, label %344, label %381

; <label>:344                                     ; preds = %324
  %345 = load %union.rec*, %union.rec** %2, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 3
  %348 = bitcast %union.THIRD_UNION* %347 to i8***
  %349 = load i8**, i8*** %348, align 8
  %350 = load %union.rec*, %union.rec** %2, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 2
  %353 = bitcast %union.SECOND_UNION* %352 to %struct.anon.3*
  %354 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %353, i32 0, i32 0
  %355 = load i16, i16* %354, align 2
  %356 = zext i16 %355 to i32
  %357 = sub nsw i32 %356, 1
  %358 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %359 = call i32 @SearchLines(i8** %349, i32 0, i32 %357, i8* %358, i32* %lnum)
  %360 = icmp ne i32 %359, 0
  br i1 %360, label %362, label %361

; <label>:361                                     ; preds = %344
  store i32 0, i32* %1
  br label %455

; <label>:362                                     ; preds = %344
  %363 = load i32, i32* %lnum, align 4
  %364 = sext i32 %363 to i64
  %365 = load %union.rec*, %union.rec** %2, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 3
  %368 = bitcast %union.THIRD_UNION* %367 to i8***
  %369 = load i8**, i8*** %368, align 8
  %370 = getelementptr inbounds i8*, i8** %369, i64 %364
  %371 = load i8*, i8** %370, align 8
  %372 = load i8*, i8** %6, align 8
  %373 = load i64*, i64** %8, align 8
  %374 = load i32*, i32** %9, align 8
  %375 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %376 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %371, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i8* %372, i64* %373, i32* %374, i8* %375) #5
  %377 = load i32, i32* %lnum, align 4
  %378 = add nsw i32 %377, 1
  %379 = sext i32 %378 to i64
  %380 = load i64*, i64** %10, align 8
  store i64 %379, i64* %380, align 8
  br label %427

; <label>:381                                     ; preds = %324
  %382 = load %union.rec*, %union.rec** %2, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 3
  %385 = bitcast %union.THIRD_UNION* %384 to %struct._IO_FILE**
  %386 = load %struct._IO_FILE*, %struct._IO_FILE** %385, align 8
  %387 = call i32 @fseek(%struct._IO_FILE* %386, i64 0, i32 2)
  %388 = load %union.rec*, %union.rec** %2, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 3
  %391 = bitcast %union.THIRD_UNION* %390 to %struct._IO_FILE**
  %392 = load %struct._IO_FILE*, %struct._IO_FILE** %391, align 8
  %393 = load %union.rec*, %union.rec** %2, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 2
  %396 = bitcast %union.SECOND_UNION* %395 to %struct.anon.3*
  %397 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %396, i32 0, i32 0
  %398 = load i16, i16* %397, align 2
  %399 = zext i16 %398 to i32
  %400 = load %union.rec*, %union.rec** %2, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 3
  %403 = bitcast %union.THIRD_UNION* %402 to %struct._IO_FILE**
  %404 = load %struct._IO_FILE*, %struct._IO_FILE** %403, align 8
  %405 = call i64 @ftell(%struct._IO_FILE* %404)
  %406 = trunc i64 %405 to i32
  %407 = sub nsw i32 %406, 1
  %408 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %409 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %410 = call i32 @SearchFile(%struct._IO_FILE* %392, i32 %399, i32 %407, i8* %408, i8* %409)
  %411 = icmp ne i32 %410, 0
  br i1 %411, label %413, label %412

; <label>:412                                     ; preds = %381
  store i32 0, i32* %1
  br label %455

; <label>:413                                     ; preds = %381
  %414 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %415 = load i8*, i8** %6, align 8
  %416 = load i64*, i64** %8, align 8
  %417 = load i32*, i32** %9, align 8
  %418 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %419 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %414, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.50, i32 0, i32 0), i8* %415, i64* %416, i32* %417, i8* %418) #5
  %420 = load %union.rec*, %union.rec** %2, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 3
  %423 = bitcast %union.THIRD_UNION* %422 to %struct._IO_FILE**
  %424 = load %struct._IO_FILE*, %struct._IO_FILE** %423, align 8
  %425 = call i64 @ftell(%struct._IO_FILE* %424)
  %426 = load i64*, i64** %10, align 8
  store i64 %425, i64* %426, align 8
  br label %427

; <label>:427                                     ; preds = %413, %362
  %428 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %429 = call i32 @strcmp(i8* %428, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %430 = icmp eq i32 %429, 0
  br i1 %430, label %431, label %438

; <label>:431                                     ; preds = %427
  %432 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %433 = load %union.rec*, %union.rec** %2, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 4
  %436 = getelementptr inbounds [4 x i8], [4 x i8]* %435, i32 0, i32 0
  %437 = call i8* @strcpy(i8* %432, i8* %436) #5
  br label %438

; <label>:438                                     ; preds = %431, %427
  %439 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %440 = call zeroext i16 @FileNum(i8* %439, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %441 = load i16*, i16** %7, align 8
  store i16 %440, i16* %441, align 2
  %442 = load i16*, i16** %7, align 8
  %443 = load i16, i16* %442, align 2
  %444 = zext i16 %443 to i32
  %445 = icmp eq i32 %444, 0
  br i1 %445, label %446, label %454

; <label>:446                                     ; preds = %438
  %447 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %448 = load %union.rec*, %union.rec** %2, align 8
  %449 = bitcast %union.rec* %448 to %struct.word_type*
  %450 = getelementptr inbounds %struct.word_type, %struct.word_type* %449, i32 0, i32 1
  %451 = bitcast %union.FIRST_UNION* %450 to %struct.FILE_POS*
  %452 = call zeroext i16 @DefineFile(i8* %447, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %451, i32 3, i32 0)
  %453 = load i16*, i16** %7, align 8
  store i16 %452, i16* %453, align 2
  br label %454

; <label>:454                                     ; preds = %446, %438
  store i32 1, i32* %1
  br label %455

; <label>:455                                     ; preds = %454, %412, %361, %25
  %456 = load i32, i32* %1
  ret i32 %456
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #3

; Function Attrs: nounwind uwtable
define internal i32 @SearchLines(i8** %lines, i32 %left, i32 %right, i8* %str, i32* %lnum) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8**, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %mid = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %res = alloca i32, align 4
  store i8** %lines, i8*** %2, align 8
  store i32 %left, i32* %3, align 4
  store i32 %right, i32* %4, align 4
  store i8* %str, i8** %5, align 8
  store i32* %lnum, i32** %6, align 8
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %11

; <label>:10                                      ; preds = %0
  store i32 0, i32* %1
  br label %69

; <label>:11                                      ; preds = %0
  %12 = load i32, i32* %3, align 4
  store i32 %12, i32* %l, align 4
  %13 = load i32, i32* %4, align 4
  %14 = sub nsw i32 %13, 1
  store i32 %14, i32* %r, align 4
  br label %15

; <label>:15                                      ; preds = %50, %11
  %16 = load i32, i32* %l, align 4
  %17 = load i32, i32* %r, align 4
  %18 = icmp sle i32 %16, %17
  br i1 %18, label %19, label %51

; <label>:19                                      ; preds = %15
  %20 = load i32, i32* %l, align 4
  %21 = load i32, i32* %r, align 4
  %22 = add nsw i32 %20, %21
  %23 = sdiv i32 %22, 2
  store i32 %23, i32* %mid, align 4
  %24 = load i32, i32* @UseCollate, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

; <label>:26                                      ; preds = %19
  %27 = load i8*, i8** %5, align 8
  %28 = load i32, i32* %mid, align 4
  %29 = sext i32 %28 to i64
  %30 = load i8**, i8*** %2, align 8
  %31 = getelementptr inbounds i8*, i8** %30, i64 %29
  %32 = load i8*, i8** %31, align 8
  %33 = call i32 @strcollcmp(i8* %27, i8* %32)
  %34 = icmp sle i32 %33, 0
  br i1 %34, label %44, label %47

; <label>:35                                      ; preds = %19
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %mid, align 4
  %38 = sext i32 %37 to i64
  %39 = load i8**, i8*** %2, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 %38
  %41 = load i8*, i8** %40, align 8
  %42 = call i32 @strcmp(i8* %36, i8* %41) #4
  %43 = icmp sle i32 %42, 0
  br i1 %43, label %44, label %47

; <label>:44                                      ; preds = %35, %26
  %45 = load i32, i32* %mid, align 4
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %r, align 4
  br label %50

; <label>:47                                      ; preds = %35, %26
  %48 = load i32, i32* %mid, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %l, align 4
  br label %50

; <label>:50                                      ; preds = %47, %44
  br label %15

; <label>:51                                      ; preds = %15
  %52 = load i32, i32* %l, align 4
  %53 = sext i32 %52 to i64
  %54 = load i8**, i8*** %2, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i64 %53
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %58 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %56, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* %57) #5
  %59 = load i8*, i8** %5, align 8
  %60 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %61 = call i32 @strcmp(i8* %59, i8* %60) #4
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %51
  store i32 1, i32* %res, align 4
  %64 = load i32, i32* %l, align 4
  %65 = load i32*, i32** %6, align 8
  store i32 %64, i32* %65, align 4
  br label %67

; <label>:66                                      ; preds = %51
  store i32 0, i32* %res, align 4
  br label %67

; <label>:67                                      ; preds = %66, %63
  %68 = load i32, i32* %res, align 4
  store i32 %68, i32* %1
  br label %69

; <label>:69                                      ; preds = %67, %10
  %70 = load i32, i32* %1
  ret i32 %70
}

declare i32 @fseek(%struct._IO_FILE*, i64, i32) #1

; Function Attrs: nounwind uwtable
define internal i32 @SearchFile(%struct._IO_FILE* %fp, i32 %left, i32 %right, i8* %str, i8* %line) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %l = alloca i32, align 4
  %r = alloca i32, align 4
  %mid = alloca i32, align 4
  %mid_end = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %res = alloca i32, align 4
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  store i32 %left, i32* %2, align 4
  store i32 %right, i32* %3, align 4
  store i8* %str, i8** %4, align 8
  store i8* %line, i8** %5, align 8
  %6 = load i32, i32* %2, align 4
  store i32 %6, i32* %l, align 4
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %r, align 4
  br label %8

; <label>:8                                       ; preds = %86, %0
  %9 = load i32, i32* %l, align 4
  %10 = load i32, i32* %r, align 4
  %11 = icmp sle i32 %9, %10
  br i1 %11, label %12, label %87

; <label>:12                                      ; preds = %8
  %13 = load i32, i32* %l, align 4
  %14 = load i32, i32* %r, align 4
  %15 = add nsw i32 %13, %14
  %16 = sdiv i32 %15, 2
  store i32 %16, i32* %mid, align 4
  %17 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %18 = load i32, i32* %mid, align 4
  %19 = sext i32 %18 to i64
  %20 = call i32 @fseek(%struct._IO_FILE* %17, i64 %19, i32 0)
  br label %21

; <label>:21                                      ; preds = %24, %12
  %22 = load i32, i32* %mid, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %mid, align 4
  br label %24

; <label>:24                                      ; preds = %21
  %25 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %26 = call i32 @_IO_getc(%struct._IO_FILE* %25)
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %21, label %28

; <label>:28                                      ; preds = %24
  %29 = load i32, i32* %mid, align 4
  %30 = load i32, i32* %r, align 4
  %31 = add nsw i32 %30, 1
  %32 = icmp eq i32 %29, %31
  br i1 %32, label %33, label %39

; <label>:33                                      ; preds = %28
  %34 = load i32, i32* %l, align 4
  store i32 %34, i32* %mid, align 4
  %35 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %36 = load i32, i32* %mid, align 4
  %37 = sext i32 %36 to i64
  %38 = call i32 @fseek(%struct._IO_FILE* %35, i64 %37, i32 0)
  br label %39

; <label>:39                                      ; preds = %33, %28
  %40 = load i8*, i8** %5, align 8
  %41 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %42 = call i8* @fgets(i8* %40, i32 512, %struct._IO_FILE* %41)
  %43 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %44 = call i64 @ftell(%struct._IO_FILE* %43)
  %45 = trunc i64 %44 to i32
  %46 = sub nsw i32 %45, 1
  store i32 %46, i32* %mid_end, align 4
  %47 = load i32, i32* %l, align 4
  %48 = load i32, i32* %mid, align 4
  %49 = icmp sle i32 %47, %48
  br i1 %49, label %53, label %50

; <label>:50                                      ; preds = %39
  %51 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %52 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %51, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.59, i32 0, i32 0))
  br label %53

; <label>:53                                      ; preds = %50, %39
  %54 = load i32, i32* %mid, align 4
  %55 = load i32, i32* %mid_end, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %60, label %57

; <label>:57                                      ; preds = %53
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %58, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.60, i32 0, i32 0))
  br label %60

; <label>:60                                      ; preds = %57, %53
  %61 = load i32, i32* %mid_end, align 4
  %62 = load i32, i32* %r, align 4
  %63 = icmp sle i32 %61, %62
  br i1 %63, label %67, label %64

; <label>:64                                      ; preds = %60
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %65, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.61, i32 0, i32 0))
  br label %67

; <label>:67                                      ; preds = %64, %60
  %68 = load i32, i32* @UseCollate, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

; <label>:70                                      ; preds = %67
  %71 = load i8*, i8** %4, align 8
  %72 = load i8*, i8** %5, align 8
  %73 = call i32 @strcollcmp(i8* %71, i8* %72)
  %74 = icmp sle i32 %73, 0
  br i1 %74, label %80, label %83

; <label>:75                                      ; preds = %67
  %76 = load i8*, i8** %4, align 8
  %77 = load i8*, i8** %5, align 8
  %78 = call i32 @strcmp(i8* %76, i8* %77) #4
  %79 = icmp sle i32 %78, 0
  br i1 %79, label %80, label %83

; <label>:80                                      ; preds = %75, %70
  %81 = load i32, i32* %mid, align 4
  %82 = sub nsw i32 %81, 1
  store i32 %82, i32* %r, align 4
  br label %86

; <label>:83                                      ; preds = %75, %70
  %84 = load i32, i32* %mid_end, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %l, align 4
  br label %86

; <label>:86                                      ; preds = %83, %80
  br label %8

; <label>:87                                      ; preds = %8
  %88 = load i32, i32* %l, align 4
  %89 = load i32, i32* %3, align 4
  %90 = icmp slt i32 %88, %89
  br i1 %90, label %91, label %107

; <label>:91                                      ; preds = %87
  %92 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %93 = load i32, i32* %l, align 4
  %94 = sext i32 %93 to i64
  %95 = call i32 @fseek(%struct._IO_FILE* %92, i64 %94, i32 0)
  %96 = load i8*, i8** %5, align 8
  %97 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  %98 = call i8* @fgets(i8* %96, i32 512, %struct._IO_FILE* %97)
  %99 = load i8*, i8** %5, align 8
  %100 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %101 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %99, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.58, i32 0, i32 0), i8* %100) #5
  %102 = load i8*, i8** %4, align 8
  %103 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %104 = call i32 @strcmp(i8* %102, i8* %103) #4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  store i32 %106, i32* %res, align 4
  br label %108

; <label>:107                                     ; preds = %87
  store i32 0, i32* %res, align 4
  br label %108

; <label>:108                                     ; preds = %107, %91
  %109 = load i32, i32* %res, align 4
  ret i32 %109
}

declare zeroext i16 @FileNum(i8*, i8*) #1

; Function Attrs: nounwind uwtable
define i32 @DbRetrieveNext(%union.rec* %db, i32* %gall, %union.rec** %sym, i8* %tag, i8* %seq, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %union.rec**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i16*, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %line = alloca [512 x i8], align 16
  %cline = alloca i8*, align 8
  %fname = alloca [512 x i8], align 16
  %symnum = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  store %union.rec* %db, %union.rec** %2, align 8
  store i32* %gall, i32** %3, align 8
  store %union.rec** %sym, %union.rec*** %4, align 8
  store i8* %tag, i8** %5, align 8
  store i8* %seq, i8** %6, align 8
  store i16* %dfnum, i16** %7, align 8
  store i64* %dfpos, i64** %8, align 8
  store i32* %dlnum, i32** %9, align 8
  store i64* %cont, i64** %10, align 8
  %11 = load %union.rec*, %union.rec** %2, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 2
  %14 = bitcast %union.SECOND_UNION* %13 to %struct.anon.3*
  %15 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %14, i32 0, i32 1
  %16 = load i8, i8* %15, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %21, label %18

; <label>:18                                      ; preds = %0
  %19 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %20 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %19, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.51, i32 0, i32 0))
  br label %21

; <label>:21                                      ; preds = %18, %0
  %22 = load %union.rec*, %union.rec** %2, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 3
  %25 = bitcast %union.THIRD_UNION* %24 to %struct._IO_FILE**
  %26 = load %struct._IO_FILE*, %struct._IO_FILE** %25, align 8
  %27 = icmp eq %struct._IO_FILE* %26, null
  br i1 %27, label %28, label %29

; <label>:28                                      ; preds = %21
  store i32 0, i32* %1
  br label %250

; <label>:29                                      ; preds = %21
  %30 = load %union.rec*, %union.rec** %2, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 2
  %33 = bitcast %union.SECOND_UNION* %32 to %struct.anon.3*
  %34 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %33, i32 0, i32 2
  %35 = load i8, i8* %34, align 1
  %36 = icmp ne i8 %35, 0
  br i1 %36, label %37, label %81

; <label>:37                                      ; preds = %29
  %38 = load i64*, i64** %10, align 8
  %39 = load i64, i64* %38, align 8
  %40 = load %union.rec*, %union.rec** %2, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 2
  %43 = bitcast %union.SECOND_UNION* %42 to %struct.anon.3*
  %44 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i64
  %47 = icmp sge i64 %39, %46
  br i1 %47, label %48, label %49

; <label>:48                                      ; preds = %37
  store i32 0, i32* %1
  br label %250

; <label>:49                                      ; preds = %37
  %50 = load i64*, i64** %10, align 8
  %51 = load i64, i64* %50, align 8
  %52 = load %union.rec*, %union.rec** %2, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 3
  %55 = bitcast %union.THIRD_UNION* %54 to i8***
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 %51
  %58 = load i8*, i8** %57, align 8
  store i8* %58, i8** %cline, align 8
  %59 = load i8*, i8** %cline, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 48
  %64 = select i1 %63, i32 1, i32 0
  %65 = load i32*, i32** %3, align 8
  store i32 %64, i32* %65, align 4
  %66 = load i32*, i32** %3, align 8
  %67 = load i32, i32* %66, align 4
  %68 = zext i32 %67 to i64
  %69 = load i8*, i8** %cline, align 8
  %70 = getelementptr inbounds i8, i8* %69, i64 %68
  %71 = load i8*, i8** %5, align 8
  %72 = load i8*, i8** %6, align 8
  %73 = load i64*, i64** %8, align 8
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %76 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %70, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i32* %symnum, i8* %71, i8* %72, i64* %73, i32* %74, i8* %75) #5
  %77 = load i64*, i64** %10, align 8
  %78 = load i64, i64* %77, align 8
  %79 = add nsw i64 %78, 1
  %80 = load i64*, i64** %10, align 8
  store i64 %79, i64* %80, align 8
  br label %137

; <label>:81                                      ; preds = %29
  %82 = load %union.rec*, %union.rec** %2, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 3
  %85 = bitcast %union.THIRD_UNION* %84 to %struct._IO_FILE**
  %86 = load %struct._IO_FILE*, %struct._IO_FILE** %85, align 8
  %87 = load i64*, i64** %10, align 8
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %88, 0
  br i1 %89, label %90, label %98

; <label>:90                                      ; preds = %81
  %91 = load %union.rec*, %union.rec** %2, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 2
  %94 = bitcast %union.SECOND_UNION* %93 to %struct.anon.3*
  %95 = getelementptr inbounds %struct.anon.3, %struct.anon.3* %94, i32 0, i32 0
  %96 = load i16, i16* %95, align 2
  %97 = zext i16 %96 to i64
  br label %101

; <label>:98                                      ; preds = %81
  %99 = load i64*, i64** %10, align 8
  %100 = load i64, i64* %99, align 8
  br label %101

; <label>:101                                     ; preds = %98, %90
  %102 = phi i64 [ %97, %90 ], [ %100, %98 ]
  %103 = call i32 @fseek(%struct._IO_FILE* %86, i64 %102, i32 0)
  %104 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i32 0
  %105 = load %union.rec*, %union.rec** %2, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 3
  %108 = bitcast %union.THIRD_UNION* %107 to %struct._IO_FILE**
  %109 = load %struct._IO_FILE*, %struct._IO_FILE** %108, align 8
  %110 = call i8* @fgets(i8* %104, i32 512, %struct._IO_FILE* %109)
  %111 = icmp eq i8* %110, null
  br i1 %111, label %112, label %113

; <label>:112                                     ; preds = %101
  store i32 0, i32* %1
  br label %250

; <label>:113                                     ; preds = %101
  %114 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 0
  %115 = load i8, i8* %114, align 1
  %116 = zext i8 %115 to i32
  %117 = icmp eq i32 %116, 48
  %118 = select i1 %117, i32 1, i32 0
  %119 = load i32*, i32** %3, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i32*, i32** %3, align 8
  %121 = load i32, i32* %120, align 4
  %122 = zext i32 %121 to i64
  %123 = getelementptr inbounds [512 x i8], [512 x i8]* %line, i32 0, i64 %122
  %124 = load i8*, i8** %5, align 8
  %125 = load i8*, i8** %6, align 8
  %126 = load i64*, i64** %8, align 8
  %127 = load i32*, i32** %9, align 8
  %128 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %129 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %123, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.52, i32 0, i32 0), i32* %symnum, i8* %124, i8* %125, i64* %126, i32* %127, i8* %128) #5
  %130 = load %union.rec*, %union.rec** %2, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 3
  %133 = bitcast %union.THIRD_UNION* %132 to %struct._IO_FILE**
  %134 = load %struct._IO_FILE*, %struct._IO_FILE** %133, align 8
  %135 = call i64 @ftell(%struct._IO_FILE* %134)
  %136 = load i64*, i64** %10, align 8
  store i64 %135, i64* %136, align 8
  br label %137

; <label>:137                                     ; preds = %113, %49
  %138 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %139 = call i32 @strcmp(i8* %138, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i32 0, i32 0)) #4
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %141, label %148

; <label>:141                                     ; preds = %137
  %142 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %143 = load %union.rec*, %union.rec** %2, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 4
  %146 = getelementptr inbounds [4 x i8], [4 x i8]* %145, i32 0, i32 0
  %147 = call i8* @strcpy(i8* %142, i8* %146) #5
  br label %148

; <label>:148                                     ; preds = %141, %137
  %149 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %150 = call zeroext i16 @FileNum(i8* %149, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0))
  %151 = load i16*, i16** %7, align 8
  store i16 %150, i16* %151, align 2
  %152 = load i16*, i16** %7, align 8
  %153 = load i16, i16* %152, align 2
  %154 = zext i16 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %164

; <label>:156                                     ; preds = %148
  %157 = getelementptr inbounds [512 x i8], [512 x i8]* %fname, i32 0, i32 0
  %158 = load %union.rec*, %union.rec** %2, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 1
  %161 = bitcast %union.FIRST_UNION* %160 to %struct.FILE_POS*
  %162 = call zeroext i16 @DefineFile(i8* %157, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %161, i32 3, i32 0)
  %163 = load i16*, i16** %7, align 8
  store i16 %162, i16* %163, align 2
  br label %164

; <label>:164                                     ; preds = %156, %148
  %165 = load %union.rec*, %union.rec** %2, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 0
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 1
  %170 = load %union.rec*, %union.rec** %169, align 8
  store %union.rec* %170, %union.rec** %link, align 8
  br label %171

; <label>:171                                     ; preds = %218, %164
  %172 = load %union.rec*, %union.rec** %link, align 8
  %173 = load %union.rec*, %union.rec** %2, align 8
  %174 = icmp ne %union.rec* %172, %173
  br i1 %174, label %175, label %225

; <label>:175                                     ; preds = %171
  %176 = load %union.rec*, %union.rec** %link, align 8
  %177 = bitcast %union.rec* %176 to %struct.word_type*
  %178 = getelementptr inbounds %struct.word_type, %struct.word_type* %177, i32 0, i32 0
  %179 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %178, i32 0, i64 1
  %180 = getelementptr inbounds %struct.LIST, %struct.LIST* %179, i32 0, i32 0
  %181 = load %union.rec*, %union.rec** %180, align 8
  store %union.rec* %181, %union.rec** %y, align 8
  br label %182

; <label>:182                                     ; preds = %192, %175
  %183 = load %union.rec*, %union.rec** %y, align 8
  %184 = bitcast %union.rec* %183 to %struct.word_type*
  %185 = getelementptr inbounds %struct.word_type, %struct.word_type* %184, i32 0, i32 1
  %186 = bitcast %union.FIRST_UNION* %185 to %struct.anon*
  %187 = getelementptr inbounds %struct.anon, %struct.anon* %186, i32 0, i32 0
  %188 = load i8, i8* %187, align 1
  %189 = zext i8 %188 to i32
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %199

; <label>:191                                     ; preds = %182
  br label %192

; <label>:192                                     ; preds = %191
  %193 = load %union.rec*, %union.rec** %y, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 1
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 0
  %198 = load %union.rec*, %union.rec** %197, align 8
  store %union.rec* %198, %union.rec** %y, align 8
  br label %182

; <label>:199                                     ; preds = %182
  %200 = load %union.rec*, %union.rec** %y, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 1
  %203 = bitcast %union.FIRST_UNION* %202 to %struct.anon*
  %204 = getelementptr inbounds %struct.anon, %struct.anon* %203, i32 0, i32 0
  %205 = load i8, i8* %204, align 1
  %206 = zext i8 %205 to i32
  %207 = icmp eq i32 %206, 140
  br i1 %207, label %208, label %217

; <label>:208                                     ; preds = %199
  %209 = load %union.rec*, %union.rec** %link, align 8
  %210 = bitcast %union.rec* %209 to %struct.link_type*
  %211 = getelementptr inbounds %struct.link_type, %struct.link_type* %210, i32 0, i32 2
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = load i32, i32* %symnum, align 4
  %215 = icmp eq i32 %213, %214
  br i1 %215, label %216, label %217

; <label>:216                                     ; preds = %208
  br label %225

; <label>:217                                     ; preds = %208, %199
  br label %218

; <label>:218                                     ; preds = %217
  %219 = load %union.rec*, %union.rec** %link, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 0
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 1
  %224 = load %union.rec*, %union.rec** %223, align 8
  store %union.rec* %224, %union.rec** %link, align 8
  br label %171

; <label>:225                                     ; preds = %216, %171
  %226 = load %union.rec*, %union.rec** %link, align 8
  %227 = load %union.rec*, %union.rec** %2, align 8
  %228 = icmp ne %union.rec* %226, %227
  br i1 %228, label %232, label %229

; <label>:229                                     ; preds = %225
  %230 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %231 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %230, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.53, i32 0, i32 0))
  br label %232

; <label>:232                                     ; preds = %229, %225
  %233 = load %union.rec*, %union.rec** %y, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 1
  %236 = bitcast %union.FIRST_UNION* %235 to %struct.anon*
  %237 = getelementptr inbounds %struct.anon, %struct.anon* %236, i32 0, i32 0
  %238 = load i8, i8* %237, align 1
  %239 = zext i8 %238 to i32
  %240 = icmp eq i32 %239, 140
  br i1 %240, label %244, label %241

; <label>:241                                     ; preds = %232
  %242 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %243 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %242, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.54, i32 0, i32 0))
  br label %244

; <label>:244                                     ; preds = %241, %232
  %245 = load %union.rec*, %union.rec** %y, align 8
  %246 = bitcast %union.rec* %245 to %struct.cr_type*
  %247 = getelementptr inbounds %struct.cr_type, %struct.cr_type* %246, i32 0, i32 9
  %248 = load %union.rec*, %union.rec** %247, align 8
  %249 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %248, %union.rec** %249, align 8
  store i32 1, i32* %1
  br label %250

; <label>:250                                     ; preds = %244, %112, %48, %28
  %251 = load i32, i32* %1
  ret i32 %251
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define internal %struct.anon.14* @dtab_rehash(%struct.anon.14* %S, i32 %newsize) #0 {
  %1 = alloca %struct.anon.14*, align 8
  %2 = alloca i32, align 4
  %NewS = alloca %struct.anon.14*, align 8
  %i = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %ent = alloca %union.rec*, align 8
  store %struct.anon.14* %S, %struct.anon.14** %1, align 8
  store i32 %newsize, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = call %struct.anon.14* @dtab_new(i32 %3)
  store %struct.anon.14* %4, %struct.anon.14** %NewS, align 8
  store i32 0, i32* %i, align 4
  br label %5

; <label>:5                                       ; preds = %85, %0
  %6 = load i32, i32* %i, align 4
  %7 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %8 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %88

; <label>:11                                      ; preds = %5
  %12 = load i32, i32* %i, align 4
  %13 = sext i32 %12 to i64
  %14 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %15 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %14, i32 0, i32 2
  %16 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %15, i32 0, i64 %13
  %17 = load %union.rec*, %union.rec** %16, align 8
  %18 = icmp ne %union.rec* %17, null
  br i1 %18, label %19, label %84

; <label>:19                                      ; preds = %11
  %20 = load i32, i32* %i, align 4
  %21 = sext i32 %20 to i64
  %22 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %23 = getelementptr inbounds %struct.anon.14, %struct.anon.14* %22, i32 0, i32 2
  %24 = getelementptr inbounds [1 x %union.rec*], [1 x %union.rec*]* %23, i32 0, i64 %21
  %25 = load %union.rec*, %union.rec** %24, align 8
  store %union.rec* %25, %union.rec** %ent, align 8
  %26 = load %union.rec*, %union.rec** %ent, align 8
  %27 = bitcast %union.rec* %26 to %struct.word_type*
  %28 = getelementptr inbounds %struct.word_type, %struct.word_type* %27, i32 0, i32 1
  %29 = bitcast %union.FIRST_UNION* %28 to %struct.anon*
  %30 = getelementptr inbounds %struct.anon, %struct.anon* %29, i32 0, i32 0
  %31 = load i8, i8* %30, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 17
  br i1 %33, label %37, label %34

; <label>:34                                      ; preds = %19
  %35 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %36 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %35, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.57, i32 0, i32 0))
  br label %37

; <label>:37                                      ; preds = %34, %19
  %38 = load %union.rec*, %union.rec** %ent, align 8
  %39 = bitcast %union.rec* %38 to %struct.word_type*
  %40 = getelementptr inbounds %struct.word_type, %struct.word_type* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %40, i32 0, i64 0
  %42 = getelementptr inbounds %struct.LIST, %struct.LIST* %41, i32 0, i32 1
  %43 = load %union.rec*, %union.rec** %42, align 8
  store %union.rec* %43, %union.rec** %link, align 8
  br label %44

; <label>:44                                      ; preds = %74, %37
  %45 = load %union.rec*, %union.rec** %link, align 8
  %46 = load %union.rec*, %union.rec** %ent, align 8
  %47 = icmp ne %union.rec* %45, %46
  br i1 %47, label %48, label %81

; <label>:48                                      ; preds = %44
  %49 = load %union.rec*, %union.rec** %link, align 8
  %50 = bitcast %union.rec* %49 to %struct.word_type*
  %51 = getelementptr inbounds %struct.word_type, %struct.word_type* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %51, i32 0, i64 1
  %53 = getelementptr inbounds %struct.LIST, %struct.LIST* %52, i32 0, i32 0
  %54 = load %union.rec*, %union.rec** %53, align 8
  store %union.rec* %54, %union.rec** %z, align 8
  br label %55

; <label>:55                                      ; preds = %65, %48
  %56 = load %union.rec*, %union.rec** %z, align 8
  %57 = bitcast %union.rec* %56 to %struct.word_type*
  %58 = getelementptr inbounds %struct.word_type, %struct.word_type* %57, i32 0, i32 1
  %59 = bitcast %union.FIRST_UNION* %58 to %struct.anon*
  %60 = getelementptr inbounds %struct.anon, %struct.anon* %59, i32 0, i32 0
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %72

; <label>:64                                      ; preds = %55
  br label %65

; <label>:65                                      ; preds = %64
  %66 = load %union.rec*, %union.rec** %z, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 1
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %70, align 8
  store %union.rec* %71, %union.rec** %z, align 8
  br label %55

; <label>:72                                      ; preds = %55
  %73 = load %union.rec*, %union.rec** %z, align 8
  call void @dtab_insert(%union.rec* %73, %struct.anon.14** %NewS)
  br label %74

; <label>:74                                      ; preds = %72
  %75 = load %union.rec*, %union.rec** %link, align 8
  %76 = bitcast %union.rec* %75 to %struct.word_type*
  %77 = getelementptr inbounds %struct.word_type, %struct.word_type* %76, i32 0, i32 0
  %78 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %77, i32 0, i64 0
  %79 = getelementptr inbounds %struct.LIST, %struct.LIST* %78, i32 0, i32 1
  %80 = load %union.rec*, %union.rec** %79, align 8
  store %union.rec* %80, %union.rec** %link, align 8
  br label %44

; <label>:81                                      ; preds = %44
  %82 = load %union.rec*, %union.rec** %ent, align 8
  %83 = call i32 @DisposeObject(%union.rec* %82)
  br label %84

; <label>:84                                      ; preds = %81, %11
  br label %85

; <label>:85                                      ; preds = %84
  %86 = load i32, i32* %i, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %i, align 4
  br label %5

; <label>:88                                      ; preds = %5
  %89 = load %struct.anon.14*, %struct.anon.14** %1, align 8
  %90 = bitcast %struct.anon.14* %89 to i8*
  call void @free(i8* %90) #5
  %91 = load %struct.anon.14*, %struct.anon.14** %NewS, align 8
  ret %struct.anon.14* %91
}

; Function Attrs: nounwind
declare void @free(i8*) #3

declare i32 @strcollcmp(i8*, i8*) #1

declare i32 @_IO_getc(%struct._IO_FILE*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
