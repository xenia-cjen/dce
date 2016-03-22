; ModuleID = 'z16.c'
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
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon = type { i8, i8, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.2 = type { i8, i8, i16 }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.anon.11 = type { i8, [3 x i8] }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"FindShift: units\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"FindShift: type\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*pg)!\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"SetNeighbours: type(*sg)!\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"AdjustSize: Up(x) == x!\00", align 1
@.str.6 = private unnamed_addr constant [35 x i8] c"cannot recover from earlier errors\00", align 1
@.str.7 = private unnamed_addr constant [21 x i8] c"AdjustSize: COL_THR!\00", align 1
@.str.8 = private unnamed_addr constant [30 x i8] c"AdjustSize: type(y) != SPLIT!\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"AdjustSize: actual(index)==nilobj!\00", align 1
@.str.10 = private unnamed_addr constant [25 x i8] c"AdjustSize: index non-C!\00", align 1
@GalleySym = external global %union.rec*, align 8
@ForceGalleySym = external global %union.rec*, align 8
@.str.11 = private unnamed_addr constant [41 x i8] c"size constraint %s,%s,%s broken by %s,%s\00", align 1
@.str.12 = private unnamed_addr constant [38 x i8] c"size adjustment of %s not implemented\00", align 1
@.str.13 = private unnamed_addr constant [17 x i8] c"AdjustSize: span\00", align 1
@.str.14 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.15 = private unnamed_addr constant [12 x i8] c"AdjustSize:\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FindShift(%union.rec* %x, %union.rec* %y, i32 %dim) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %len = alloca i32, align 4
  %res = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  store i32 %dim, i32* %3, align 4
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.closure_type*
  %6 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5, i32 0, i32 4
  %7 = bitcast %union.FOURTH_UNION* %6 to %struct.STYLE*
  %8 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %7, i32 0, i32 0
  %9 = bitcast %union.anon* %8 to %struct.GAP*
  %10 = bitcast %struct.GAP* %9 to i16*
  %11 = load i16, i16* %10, align 4
  %12 = lshr i16 %11, 10
  %13 = and i16 %12, 7
  %14 = zext i16 %13 to i32
  switch i32 %14, label %56 [
    i32 1, label %15
    i32 5, label %25
  ]

; <label>:15                                      ; preds = %0
  %16 = load %union.rec*, %union.rec** %1, align 8
  %17 = bitcast %union.rec* %16 to %struct.closure_type*
  %18 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %17, i32 0, i32 4
  %19 = bitcast %union.FOURTH_UNION* %18 to %struct.STYLE*
  %20 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %19, i32 0, i32 0
  %21 = bitcast %union.anon* %20 to %struct.GAP*
  %22 = getelementptr inbounds %struct.GAP, %struct.GAP* %21, i32 0, i32 1
  %23 = load i16, i16* %22, align 2
  %24 = sext i16 %23 to i32
  store i32 %24, i32* %len, align 4
  br label %59

; <label>:25                                      ; preds = %0
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = load %union.rec*, %union.rec** %2, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 3
  %31 = bitcast %union.THIRD_UNION* %30 to %struct.anon.6*
  %32 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %31, i32 0, i32 0
  %33 = getelementptr inbounds [2 x i32], [2 x i32]* %32, i32 0, i64 %27
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = load %union.rec*, %union.rec** %2, align 8
  %38 = bitcast %union.rec* %37 to %struct.word_type*
  %39 = getelementptr inbounds %struct.word_type, %struct.word_type* %38, i32 0, i32 3
  %40 = bitcast %union.THIRD_UNION* %39 to %struct.anon.6*
  %41 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %40, i32 0, i32 1
  %42 = getelementptr inbounds [2 x i32], [2 x i32]* %41, i32 0, i64 %36
  %43 = load i32, i32* %42, align 4
  %44 = add nsw i32 %34, %43
  %45 = load %union.rec*, %union.rec** %1, align 8
  %46 = bitcast %union.rec* %45 to %struct.closure_type*
  %47 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %46, i32 0, i32 4
  %48 = bitcast %union.FOURTH_UNION* %47 to %struct.STYLE*
  %49 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %48, i32 0, i32 0
  %50 = bitcast %union.anon* %49 to %struct.GAP*
  %51 = getelementptr inbounds %struct.GAP, %struct.GAP* %50, i32 0, i32 1
  %52 = load i16, i16* %51, align 2
  %53 = sext i16 %52 to i32
  %54 = mul nsw i32 %44, %53
  %55 = sdiv i32 %54, 4096
  store i32 %55, i32* %len, align 4
  br label %59

; <label>:56                                      ; preds = %0
  %57 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %58 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %57, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i32 0, i32 0))
  br label %59

; <label>:59                                      ; preds = %56, %25, %15
  %60 = load %union.rec*, %union.rec** %1, align 8
  %61 = bitcast %union.rec* %60 to %struct.closure_type*
  %62 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %61, i32 0, i32 4
  %63 = bitcast %union.FOURTH_UNION* %62 to %struct.STYLE*
  %64 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %63, i32 0, i32 1
  %65 = bitcast %union.anon.10* %64 to %struct.GAP*
  %66 = getelementptr inbounds %struct.GAP, %struct.GAP* %65, i32 0, i32 1
  %67 = load i16, i16* %66, align 2
  %68 = sext i16 %67 to i32
  switch i32 %68, label %86 [
    i32 158, label %69
    i32 159, label %81
    i32 160, label %83
  ]

; <label>:69                                      ; preds = %59
  %70 = load i32, i32* %len, align 4
  %71 = load i32, i32* %3, align 4
  %72 = sext i32 %71 to i64
  %73 = load %union.rec*, %union.rec** %2, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 3
  %76 = bitcast %union.THIRD_UNION* %75 to %struct.anon.6*
  %77 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %76, i32 0, i32 0
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %77, i32 0, i64 %72
  %79 = load i32, i32* %78, align 4
  %80 = sub nsw i32 %70, %79
  store i32 %80, i32* %res, align 4
  br label %89

; <label>:81                                      ; preds = %59
  %82 = load i32, i32* %len, align 4
  store i32 %82, i32* %res, align 4
  br label %89

; <label>:83                                      ; preds = %59
  %84 = load i32, i32* %len, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %res, align 4
  br label %89

; <label>:86                                      ; preds = %59
  %87 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %88 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %87, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i32 0, i32 0))
  br label %89

; <label>:89                                      ; preds = %86, %83, %81, %69
  %90 = load i32, i32* %res, align 4
  ret i32 %90
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @SetNeighbours(%union.rec* %link, i32 %ratm, %union.rec** %pg, %union.rec** %pdef, %union.rec** %sg, %union.rec** %sdef, i32* %side) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %union.rec**, align 8
  %4 = alloca %union.rec**, align 8
  %5 = alloca %union.rec**, align 8
  %6 = alloca %union.rec**, align 8
  %7 = alloca i32*, align 8
  %plink = alloca %union.rec*, align 8
  %slink = alloca %union.rec*, align 8
  store %union.rec* %link, %union.rec** %1, align 8
  store i32 %ratm, i32* %2, align 4
  store %union.rec** %pg, %union.rec*** %3, align 8
  store %union.rec** %pdef, %union.rec*** %4, align 8
  store %union.rec** %sg, %union.rec*** %5, align 8
  store %union.rec** %sdef, %union.rec*** %6, align 8
  store i32* %side, i32** %7, align 8
  %8 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* null, %union.rec** %8, align 8
  %9 = load %union.rec*, %union.rec** %1, align 8
  %10 = bitcast %union.rec* %9 to %struct.word_type*
  %11 = getelementptr inbounds %struct.word_type, %struct.word_type* %10, i32 0, i32 0
  %12 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %11, i32 0, i64 0
  %13 = getelementptr inbounds %struct.LIST, %struct.LIST* %12, i32 0, i32 0
  %14 = load %union.rec*, %union.rec** %13, align 8
  store %union.rec* %14, %union.rec** %plink, align 8
  br label %15

; <label>:15                                      ; preds = %200, %0
  %16 = load %union.rec*, %union.rec** %plink, align 8
  %17 = bitcast %union.rec* %16 to %struct.word_type*
  %18 = getelementptr inbounds %struct.word_type, %struct.word_type* %17, i32 0, i32 1
  %19 = bitcast %union.FIRST_UNION* %18 to %struct.anon*
  %20 = getelementptr inbounds %struct.anon, %struct.anon* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 1
  %22 = zext i8 %21 to i32
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %207

; <label>:24                                      ; preds = %15
  %25 = load %union.rec*, %union.rec** %plink, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 1
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  %31 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %30, %union.rec** %31, align 8
  br label %32

; <label>:32                                      ; preds = %43, %24
  %33 = load %union.rec**, %union.rec*** %4, align 8
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 1
  %37 = bitcast %union.FIRST_UNION* %36 to %struct.anon*
  %38 = getelementptr inbounds %struct.anon, %struct.anon* %37, i32 0, i32 0
  %39 = load i8, i8* %38, align 1
  %40 = zext i8 %39 to i32
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %52

; <label>:42                                      ; preds = %32
  br label %43

; <label>:43                                      ; preds = %42
  %44 = load %union.rec**, %union.rec*** %4, align 8
  %45 = load %union.rec*, %union.rec** %44, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  %51 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %50, %union.rec** %51, align 8
  br label %32

; <label>:52                                      ; preds = %32
  %53 = load %union.rec**, %union.rec*** %4, align 8
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 1
  %57 = bitcast %union.FIRST_UNION* %56 to %struct.anon*
  %58 = getelementptr inbounds %struct.anon, %struct.anon* %57, i32 0, i32 0
  %59 = load i8, i8* %58, align 1
  %60 = zext i8 %59 to i32
  %61 = icmp eq i32 %60, 9
  br i1 %61, label %62, label %67

; <label>:62                                      ; preds = %52
  %63 = load %union.rec**, %union.rec*** %4, align 8
  %64 = load %union.rec*, %union.rec** %63, align 8
  %65 = call i32 @SplitIsDefinite(%union.rec* %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %89, label %199

; <label>:67                                      ; preds = %52
  %68 = load %union.rec**, %union.rec*** %4, align 8
  %69 = load %union.rec*, %union.rec** %68, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 1
  %72 = bitcast %union.FIRST_UNION* %71 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp sge i32 %75, 9
  br i1 %76, label %77, label %87

; <label>:77                                      ; preds = %67
  %78 = load %union.rec**, %union.rec*** %4, align 8
  %79 = load %union.rec*, %union.rec** %78, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 1
  %82 = bitcast %union.FIRST_UNION* %81 to %struct.anon*
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sle i32 %85, 99
  br label %87

; <label>:87                                      ; preds = %77, %67
  %88 = phi i1 [ false, %67 ], [ %86, %77 ]
  br i1 %88, label %89, label %199

; <label>:89                                      ; preds = %87, %62
  %90 = load %union.rec*, %union.rec** %1, align 8
  %91 = bitcast %union.rec* %90 to %struct.word_type*
  %92 = getelementptr inbounds %struct.word_type, %struct.word_type* %91, i32 0, i32 0
  %93 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %92, i32 0, i64 0
  %94 = getelementptr inbounds %struct.LIST, %struct.LIST* %93, i32 0, i32 0
  %95 = load %union.rec*, %union.rec** %94, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %99, align 8
  %101 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %100, %union.rec** %101, align 8
  br label %102

; <label>:102                                     ; preds = %113, %89
  %103 = load %union.rec**, %union.rec*** %3, align 8
  %104 = load %union.rec*, %union.rec** %103, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 1
  %107 = bitcast %union.FIRST_UNION* %106 to %struct.anon*
  %108 = getelementptr inbounds %struct.anon, %struct.anon* %107, i32 0, i32 0
  %109 = load i8, i8* %108, align 1
  %110 = zext i8 %109 to i32
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %122

; <label>:112                                     ; preds = %102
  br label %113

; <label>:113                                     ; preds = %112
  %114 = load %union.rec**, %union.rec*** %3, align 8
  %115 = load %union.rec*, %union.rec** %114, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  %120 = load %union.rec*, %union.rec** %119, align 8
  %121 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %120, %union.rec** %121, align 8
  br label %102

; <label>:122                                     ; preds = %102
  br label %123

; <label>:123                                     ; preds = %184, %122
  %124 = load %union.rec**, %union.rec*** %3, align 8
  %125 = load %union.rec*, %union.rec** %124, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 1
  %128 = bitcast %union.FIRST_UNION* %127 to %struct.anon*
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp sge i32 %131, 119
  br i1 %132, label %133, label %143

; <label>:133                                     ; preds = %123
  %134 = load %union.rec**, %union.rec*** %3, align 8
  %135 = load %union.rec*, %union.rec** %134, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 1
  %138 = bitcast %union.FIRST_UNION* %137 to %struct.anon*
  %139 = getelementptr inbounds %struct.anon, %struct.anon* %138, i32 0, i32 0
  %140 = load i8, i8* %139, align 1
  %141 = zext i8 %140 to i32
  %142 = icmp sle i32 %141, 138
  br label %143

; <label>:143                                     ; preds = %133, %123
  %144 = phi i1 [ false, %123 ], [ %142, %133 ]
  br i1 %144, label %145, label %185

; <label>:145                                     ; preds = %143
  %146 = load %union.rec*, %union.rec** %1, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 0
  %149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %148, i32 0, i64 0
  %150 = getelementptr inbounds %struct.LIST, %struct.LIST* %149, i32 0, i32 0
  %151 = load %union.rec*, %union.rec** %150, align 8
  store %union.rec* %151, %union.rec** %1, align 8
  %152 = load %union.rec*, %union.rec** %1, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 0
  %155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %154, i32 0, i64 0
  %156 = getelementptr inbounds %struct.LIST, %struct.LIST* %155, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %156, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 0
  %160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %159, i32 0, i64 1
  %161 = getelementptr inbounds %struct.LIST, %struct.LIST* %160, i32 0, i32 0
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %162, %union.rec** %163, align 8
  br label %164

; <label>:164                                     ; preds = %175, %145
  %165 = load %union.rec**, %union.rec*** %3, align 8
  %166 = load %union.rec*, %union.rec** %165, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 1
  %169 = bitcast %union.FIRST_UNION* %168 to %struct.anon*
  %170 = getelementptr inbounds %struct.anon, %struct.anon* %169, i32 0, i32 0
  %171 = load i8, i8* %170, align 1
  %172 = zext i8 %171 to i32
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %184

; <label>:174                                     ; preds = %164
  br label %175

; <label>:175                                     ; preds = %174
  %176 = load %union.rec**, %union.rec*** %3, align 8
  %177 = load %union.rec*, %union.rec** %176, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 0
  %180 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %179, i32 0, i64 1
  %181 = getelementptr inbounds %struct.LIST, %struct.LIST* %180, i32 0, i32 0
  %182 = load %union.rec*, %union.rec** %181, align 8
  %183 = load %union.rec**, %union.rec*** %3, align 8
  store %union.rec* %182, %union.rec** %183, align 8
  br label %164

; <label>:184                                     ; preds = %164
  br label %123

; <label>:185                                     ; preds = %143
  %186 = load %union.rec**, %union.rec*** %3, align 8
  %187 = load %union.rec*, %union.rec** %186, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 1
  %190 = bitcast %union.FIRST_UNION* %189 to %struct.anon*
  %191 = getelementptr inbounds %struct.anon, %struct.anon* %190, i32 0, i32 0
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 1
  br i1 %194, label %198, label %195

; <label>:195                                     ; preds = %185
  %196 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %197 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %196, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i32 0, i32 0))
  br label %198

; <label>:198                                     ; preds = %195, %185
  br label %207

; <label>:199                                     ; preds = %87, %62
  br label %200

; <label>:200                                     ; preds = %199
  %201 = load %union.rec*, %union.rec** %plink, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 0
  %204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %203, i32 0, i64 0
  %205 = getelementptr inbounds %struct.LIST, %struct.LIST* %204, i32 0, i32 0
  %206 = load %union.rec*, %union.rec** %205, align 8
  store %union.rec* %206, %union.rec** %plink, align 8
  br label %15

; <label>:207                                     ; preds = %198, %15
  %208 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* null, %union.rec** %208, align 8
  %209 = load %union.rec*, %union.rec** %1, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 0
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 1
  %214 = load %union.rec*, %union.rec** %213, align 8
  store %union.rec* %214, %union.rec** %slink, align 8
  br label %215

; <label>:215                                     ; preds = %400, %207
  %216 = load %union.rec*, %union.rec** %slink, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 1
  %219 = bitcast %union.FIRST_UNION* %218 to %struct.anon*
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 0
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp eq i32 %222, 0
  br i1 %223, label %224, label %407

; <label>:224                                     ; preds = %215
  %225 = load %union.rec*, %union.rec** %slink, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 1
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 0
  %230 = load %union.rec*, %union.rec** %229, align 8
  %231 = load %union.rec**, %union.rec*** %6, align 8
  store %union.rec* %230, %union.rec** %231, align 8
  br label %232

; <label>:232                                     ; preds = %243, %224
  %233 = load %union.rec**, %union.rec*** %6, align 8
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 1
  %237 = bitcast %union.FIRST_UNION* %236 to %struct.anon*
  %238 = getelementptr inbounds %struct.anon, %struct.anon* %237, i32 0, i32 0
  %239 = load i8, i8* %238, align 1
  %240 = zext i8 %239 to i32
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %242, label %252

; <label>:242                                     ; preds = %232
  br label %243

; <label>:243                                     ; preds = %242
  %244 = load %union.rec**, %union.rec*** %6, align 8
  %245 = load %union.rec*, %union.rec** %244, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 1
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 0
  %250 = load %union.rec*, %union.rec** %249, align 8
  %251 = load %union.rec**, %union.rec*** %6, align 8
  store %union.rec* %250, %union.rec** %251, align 8
  br label %232

; <label>:252                                     ; preds = %232
  %253 = load %union.rec**, %union.rec*** %6, align 8
  %254 = load %union.rec*, %union.rec** %253, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 1
  %257 = bitcast %union.FIRST_UNION* %256 to %struct.anon*
  %258 = getelementptr inbounds %struct.anon, %struct.anon* %257, i32 0, i32 0
  %259 = load i8, i8* %258, align 1
  %260 = zext i8 %259 to i32
  %261 = icmp eq i32 %260, 9
  br i1 %261, label %262, label %267

; <label>:262                                     ; preds = %252
  %263 = load %union.rec**, %union.rec*** %6, align 8
  %264 = load %union.rec*, %union.rec** %263, align 8
  %265 = call i32 @SplitIsDefinite(%union.rec* %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %289, label %399

; <label>:267                                     ; preds = %252
  %268 = load %union.rec**, %union.rec*** %6, align 8
  %269 = load %union.rec*, %union.rec** %268, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 1
  %272 = bitcast %union.FIRST_UNION* %271 to %struct.anon*
  %273 = getelementptr inbounds %struct.anon, %struct.anon* %272, i32 0, i32 0
  %274 = load i8, i8* %273, align 1
  %275 = zext i8 %274 to i32
  %276 = icmp sge i32 %275, 9
  br i1 %276, label %277, label %287

; <label>:277                                     ; preds = %267
  %278 = load %union.rec**, %union.rec*** %6, align 8
  %279 = load %union.rec*, %union.rec** %278, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 1
  %282 = bitcast %union.FIRST_UNION* %281 to %struct.anon*
  %283 = getelementptr inbounds %struct.anon, %struct.anon* %282, i32 0, i32 0
  %284 = load i8, i8* %283, align 1
  %285 = zext i8 %284 to i32
  %286 = icmp sle i32 %285, 99
  br label %287

; <label>:287                                     ; preds = %277, %267
  %288 = phi i1 [ false, %267 ], [ %286, %277 ]
  br i1 %288, label %289, label %399

; <label>:289                                     ; preds = %287, %262
  %290 = load %union.rec*, %union.rec** %slink, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 0
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 0
  %295 = load %union.rec*, %union.rec** %294, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 1
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 0
  %300 = load %union.rec*, %union.rec** %299, align 8
  %301 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %300, %union.rec** %301, align 8
  br label %302

; <label>:302                                     ; preds = %313, %289
  %303 = load %union.rec**, %union.rec*** %5, align 8
  %304 = load %union.rec*, %union.rec** %303, align 8
  %305 = bitcast %union.rec* %304 to %struct.word_type*
  %306 = getelementptr inbounds %struct.word_type, %struct.word_type* %305, i32 0, i32 1
  %307 = bitcast %union.FIRST_UNION* %306 to %struct.anon*
  %308 = getelementptr inbounds %struct.anon, %struct.anon* %307, i32 0, i32 0
  %309 = load i8, i8* %308, align 1
  %310 = zext i8 %309 to i32
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %322

; <label>:312                                     ; preds = %302
  br label %313

; <label>:313                                     ; preds = %312
  %314 = load %union.rec**, %union.rec*** %5, align 8
  %315 = load %union.rec*, %union.rec** %314, align 8
  %316 = bitcast %union.rec* %315 to %struct.word_type*
  %317 = getelementptr inbounds %struct.word_type, %struct.word_type* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %317, i32 0, i64 1
  %319 = getelementptr inbounds %struct.LIST, %struct.LIST* %318, i32 0, i32 0
  %320 = load %union.rec*, %union.rec** %319, align 8
  %321 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %320, %union.rec** %321, align 8
  br label %302

; <label>:322                                     ; preds = %302
  br label %323

; <label>:323                                     ; preds = %384, %322
  %324 = load %union.rec**, %union.rec*** %5, align 8
  %325 = load %union.rec*, %union.rec** %324, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 1
  %328 = bitcast %union.FIRST_UNION* %327 to %struct.anon*
  %329 = getelementptr inbounds %struct.anon, %struct.anon* %328, i32 0, i32 0
  %330 = load i8, i8* %329, align 1
  %331 = zext i8 %330 to i32
  %332 = icmp sge i32 %331, 119
  br i1 %332, label %333, label %343

; <label>:333                                     ; preds = %323
  %334 = load %union.rec**, %union.rec*** %5, align 8
  %335 = load %union.rec*, %union.rec** %334, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 1
  %338 = bitcast %union.FIRST_UNION* %337 to %struct.anon*
  %339 = getelementptr inbounds %struct.anon, %struct.anon* %338, i32 0, i32 0
  %340 = load i8, i8* %339, align 1
  %341 = zext i8 %340 to i32
  %342 = icmp sle i32 %341, 138
  br label %343

; <label>:343                                     ; preds = %333, %323
  %344 = phi i1 [ false, %323 ], [ %342, %333 ]
  br i1 %344, label %345, label %385

; <label>:345                                     ; preds = %343
  %346 = load %union.rec*, %union.rec** %slink, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 0
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 0
  %351 = load %union.rec*, %union.rec** %350, align 8
  store %union.rec* %351, %union.rec** %slink, align 8
  %352 = load %union.rec*, %union.rec** %slink, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 0
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 0
  %357 = load %union.rec*, %union.rec** %356, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 0
  %360 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %359, i32 0, i64 1
  %361 = getelementptr inbounds %struct.LIST, %struct.LIST* %360, i32 0, i32 0
  %362 = load %union.rec*, %union.rec** %361, align 8
  %363 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %362, %union.rec** %363, align 8
  br label %364

; <label>:364                                     ; preds = %375, %345
  %365 = load %union.rec**, %union.rec*** %5, align 8
  %366 = load %union.rec*, %union.rec** %365, align 8
  %367 = bitcast %union.rec* %366 to %struct.word_type*
  %368 = getelementptr inbounds %struct.word_type, %struct.word_type* %367, i32 0, i32 1
  %369 = bitcast %union.FIRST_UNION* %368 to %struct.anon*
  %370 = getelementptr inbounds %struct.anon, %struct.anon* %369, i32 0, i32 0
  %371 = load i8, i8* %370, align 1
  %372 = zext i8 %371 to i32
  %373 = icmp eq i32 %372, 0
  br i1 %373, label %374, label %384

; <label>:374                                     ; preds = %364
  br label %375

; <label>:375                                     ; preds = %374
  %376 = load %union.rec**, %union.rec*** %5, align 8
  %377 = load %union.rec*, %union.rec** %376, align 8
  %378 = bitcast %union.rec* %377 to %struct.word_type*
  %379 = getelementptr inbounds %struct.word_type, %struct.word_type* %378, i32 0, i32 0
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 1
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %381, align 8
  %383 = load %union.rec**, %union.rec*** %5, align 8
  store %union.rec* %382, %union.rec** %383, align 8
  br label %364

; <label>:384                                     ; preds = %364
  br label %323

; <label>:385                                     ; preds = %343
  %386 = load %union.rec**, %union.rec*** %5, align 8
  %387 = load %union.rec*, %union.rec** %386, align 8
  %388 = bitcast %union.rec* %387 to %struct.word_type*
  %389 = getelementptr inbounds %struct.word_type, %struct.word_type* %388, i32 0, i32 1
  %390 = bitcast %union.FIRST_UNION* %389 to %struct.anon*
  %391 = getelementptr inbounds %struct.anon, %struct.anon* %390, i32 0, i32 0
  %392 = load i8, i8* %391, align 1
  %393 = zext i8 %392 to i32
  %394 = icmp eq i32 %393, 1
  br i1 %394, label %398, label %395

; <label>:395                                     ; preds = %385
  %396 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %397 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %396, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i32 0, i32 0))
  br label %398

; <label>:398                                     ; preds = %395, %385
  br label %407

; <label>:399                                     ; preds = %287, %262
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load %union.rec*, %union.rec** %slink, align 8
  %402 = bitcast %union.rec* %401 to %struct.word_type*
  %403 = getelementptr inbounds %struct.word_type, %struct.word_type* %402, i32 0, i32 0
  %404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %403, i32 0, i64 0
  %405 = getelementptr inbounds %struct.LIST, %struct.LIST* %404, i32 0, i32 1
  %406 = load %union.rec*, %union.rec** %405, align 8
  store %union.rec* %406, %union.rec** %slink, align 8
  br label %215

; <label>:407                                     ; preds = %398, %215
  %408 = load i32, i32* %2, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %411

; <label>:410                                     ; preds = %407
  br label %429

; <label>:411                                     ; preds = %407
  %412 = load %union.rec**, %union.rec*** %3, align 8
  %413 = load %union.rec*, %union.rec** %412, align 8
  %414 = icmp eq %union.rec* %413, null
  br i1 %414, label %426, label %415

; <label>:415                                     ; preds = %411
  %416 = load %union.rec**, %union.rec*** %3, align 8
  %417 = load %union.rec*, %union.rec** %416, align 8
  %418 = bitcast %union.rec* %417 to %struct.gapobj_type*
  %419 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %418, i32 0, i32 3
  %420 = bitcast %struct.GAP* %419 to i16*
  %421 = load i16, i16* %420, align 4
  %422 = lshr i16 %421, 8
  %423 = and i16 %422, 1
  %424 = zext i16 %423 to i32
  %425 = icmp ne i32 %424, 0
  br label %426

; <label>:426                                     ; preds = %415, %411
  %427 = phi i1 [ true, %411 ], [ %425, %415 ]
  %428 = select i1 %427, i32 152, i32 153
  br label %429

; <label>:429                                     ; preds = %426, %410
  %430 = phi i32 [ 151, %410 ], [ %428, %426 ]
  %431 = load i32*, i32** %7, align 8
  store i32 %430, i32* %431, align 4
  ret void
}

declare i32 @SplitIsDefinite(%union.rec*) #1

; Function Attrs: nounwind uwtable
define void @AdjustSize(%union.rec* %x, i32 %b, i32 %f, i32 %dim) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  %lp = alloca %union.rec*, align 8
  %rp = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %ratm = alloca i32, align 4
  %tb = alloca i32, align 4
  %tf = alloca i32, align 4
  %cby = alloca i32, align 4
  %cfy = alloca i32, align 4
  %rby = alloca i32, align 4
  %rfy = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %b, i32* %2, align 4
  store i32 %f, i32* %3, align 4
  store i32 %dim, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  call void @SetLengthDim(i32 %5)
  br label %6

; <label>:6                                       ; preds = %1961, %0
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* %4, align 4
  %9 = sext i32 %8 to i64
  %10 = load %union.rec*, %union.rec** %1, align 8
  %11 = bitcast %union.rec* %10 to %struct.word_type*
  %12 = getelementptr inbounds %struct.word_type, %struct.word_type* %11, i32 0, i32 3
  %13 = bitcast %union.THIRD_UNION* %12 to %struct.anon.6*
  %14 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %13, i32 0, i32 0
  %15 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i32 0, i64 %9
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %7, %16
  br i1 %17, label %50, label %18

; <label>:18                                      ; preds = %6
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %4, align 4
  %21 = sext i32 %20 to i64
  %22 = load %union.rec*, %union.rec** %1, align 8
  %23 = bitcast %union.rec* %22 to %struct.word_type*
  %24 = getelementptr inbounds %struct.word_type, %struct.word_type* %23, i32 0, i32 3
  %25 = bitcast %union.THIRD_UNION* %24 to %struct.anon.6*
  %26 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %25, i32 0, i32 1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i32 0, i64 %21
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %19, %28
  br i1 %29, label %50, label %30

; <label>:30                                      ; preds = %18
  %31 = load %union.rec*, %union.rec** %1, align 8
  %32 = bitcast %union.rec* %31 to %struct.word_type*
  %33 = getelementptr inbounds %struct.word_type, %struct.word_type* %32, i32 0, i32 1
  %34 = bitcast %union.FIRST_UNION* %33 to %struct.anon*
  %35 = getelementptr inbounds %struct.anon, %struct.anon* %34, i32 0, i32 0
  %36 = load i8, i8* %35, align 1
  %37 = zext i8 %36 to i32
  %38 = icmp sge i32 %37, 2
  br i1 %38, label %39, label %48

; <label>:39                                      ; preds = %30
  %40 = load %union.rec*, %union.rec** %1, align 8
  %41 = bitcast %union.rec* %40 to %struct.word_type*
  %42 = getelementptr inbounds %struct.word_type, %struct.word_type* %41, i32 0, i32 1
  %43 = bitcast %union.FIRST_UNION* %42 to %struct.anon*
  %44 = getelementptr inbounds %struct.anon, %struct.anon* %43, i32 0, i32 0
  %45 = load i8, i8* %44, align 1
  %46 = zext i8 %45 to i32
  %47 = icmp sle i32 %46, 8
  br label %48

; <label>:48                                      ; preds = %39, %30
  %49 = phi i1 [ false, %30 ], [ %47, %39 ]
  br label %50

; <label>:50                                      ; preds = %48, %18, %6
  %51 = phi i1 [ true, %18 ], [ true, %6 ], [ %49, %48 ]
  br i1 %51, label %52, label %1963

; <label>:52                                      ; preds = %50
  %53 = load %union.rec*, %union.rec** %1, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 0
  %56 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %55, i32 0, i64 1
  %57 = getelementptr inbounds %struct.LIST, %struct.LIST* %56, i32 0, i32 1
  %58 = load %union.rec*, %union.rec** %57, align 8
  %59 = load %union.rec*, %union.rec** %1, align 8
  %60 = icmp ne %union.rec* %58, %59
  br i1 %60, label %64, label %61

; <label>:61                                      ; preds = %52
  %62 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %63 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %62, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i32 0, i32 0))
  br label %64

; <label>:64                                      ; preds = %61, %52
  %65 = load i32, i32* %2, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %70, label %67

; <label>:67                                      ; preds = %64
  %68 = load i32, i32* %3, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %76

; <label>:70                                      ; preds = %67, %64
  %71 = load %union.rec*, %union.rec** %1, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 1
  %74 = bitcast %union.FIRST_UNION* %73 to %struct.FILE_POS*
  %75 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 5, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.6, i32 0, i32 0), i32 1, %struct.FILE_POS* %74)
  br label %76

; <label>:76                                      ; preds = %70, %67
  %77 = load %union.rec*, %union.rec** %1, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 1
  %80 = bitcast %union.FIRST_UNION* %79 to %struct.anon*
  %81 = getelementptr inbounds %struct.anon, %struct.anon* %80, i32 0, i32 0
  %82 = load i8, i8* %81, align 1
  %83 = zext i8 %82 to i32
  %84 = icmp eq i32 %83, 16
  br i1 %84, label %94, label %85

; <label>:85                                      ; preds = %76
  %86 = load %union.rec*, %union.rec** %1, align 8
  %87 = bitcast %union.rec* %86 to %struct.word_type*
  %88 = getelementptr inbounds %struct.word_type, %struct.word_type* %87, i32 0, i32 1
  %89 = bitcast %union.FIRST_UNION* %88 to %struct.anon*
  %90 = getelementptr inbounds %struct.anon, %struct.anon* %89, i32 0, i32 0
  %91 = load i8, i8* %90, align 1
  %92 = zext i8 %91 to i32
  %93 = icmp eq i32 %92, 15
  br i1 %93, label %94, label %189

; <label>:94                                      ; preds = %85, %76
  %95 = load %union.rec*, %union.rec** %1, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 1
  %98 = bitcast %union.FIRST_UNION* %97 to %struct.anon*
  %99 = getelementptr inbounds %struct.anon, %struct.anon* %98, i32 0, i32 0
  %100 = load i8, i8* %99, align 1
  %101 = zext i8 %100 to i32
  %102 = icmp eq i32 %101, 16
  %103 = zext i1 %102 to i32
  %104 = load i32, i32* %4, align 4
  %105 = icmp eq i32 %104, 0
  %106 = zext i1 %105 to i32
  %107 = icmp eq i32 %103, %106
  br i1 %107, label %111, label %108

; <label>:108                                     ; preds = %94
  %109 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %110 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %109, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %111

; <label>:111                                     ; preds = %108, %94
  %112 = load i32, i32* %2, align 4
  %113 = load i32, i32* %4, align 4
  %114 = sext i32 %113 to i64
  %115 = load %union.rec*, %union.rec** %1, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 3
  %118 = bitcast %union.THIRD_UNION* %117 to %struct.anon.6*
  %119 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %118, i32 0, i32 0
  %120 = getelementptr inbounds [2 x i32], [2 x i32]* %119, i32 0, i64 %114
  store i32 %112, i32* %120, align 4
  %121 = load i32, i32* %3, align 4
  %122 = load i32, i32* %4, align 4
  %123 = sext i32 %122 to i64
  %124 = load %union.rec*, %union.rec** %1, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 3
  %127 = bitcast %union.THIRD_UNION* %126 to %struct.anon.6*
  %128 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %127, i32 0, i32 1
  %129 = getelementptr inbounds [2 x i32], [2 x i32]* %128, i32 0, i64 %123
  store i32 %121, i32* %129, align 4
  %130 = load %union.rec*, %union.rec** %1, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 0
  %133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %132, i32 0, i64 1
  %134 = getelementptr inbounds %struct.LIST, %struct.LIST* %133, i32 0, i32 1
  %135 = load %union.rec*, %union.rec** %134, align 8
  store %union.rec* %135, %union.rec** %link, align 8
  br label %136

; <label>:136                                     ; preds = %181, %111
  %137 = load %union.rec*, %union.rec** %link, align 8
  %138 = load %union.rec*, %union.rec** %1, align 8
  %139 = icmp ne %union.rec* %137, %138
  br i1 %139, label %140, label %188

; <label>:140                                     ; preds = %136
  %141 = load %union.rec*, %union.rec** %link, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 0
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 0
  %146 = load %union.rec*, %union.rec** %145, align 8
  store %union.rec* %146, %union.rec** %y, align 8
  br label %147

; <label>:147                                     ; preds = %157, %140
  %148 = load %union.rec*, %union.rec** %y, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 1
  %151 = bitcast %union.FIRST_UNION* %150 to %struct.anon*
  %152 = getelementptr inbounds %struct.anon, %struct.anon* %151, i32 0, i32 0
  %153 = load i8, i8* %152, align 1
  %154 = zext i8 %153 to i32
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %164

; <label>:156                                     ; preds = %147
  br label %157

; <label>:157                                     ; preds = %156
  %158 = load %union.rec*, %union.rec** %y, align 8
  %159 = bitcast %union.rec* %158 to %struct.word_type*
  %160 = getelementptr inbounds %struct.word_type, %struct.word_type* %159, i32 0, i32 0
  %161 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %160, i32 0, i64 0
  %162 = getelementptr inbounds %struct.LIST, %struct.LIST* %161, i32 0, i32 0
  %163 = load %union.rec*, %union.rec** %162, align 8
  store %union.rec* %163, %union.rec** %y, align 8
  br label %147

; <label>:164                                     ; preds = %147
  %165 = load %union.rec*, %union.rec** %y, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 1
  %168 = bitcast %union.FIRST_UNION* %167 to %struct.anon*
  %169 = getelementptr inbounds %struct.anon, %struct.anon* %168, i32 0, i32 0
  %170 = load i8, i8* %169, align 1
  %171 = zext i8 %170 to i32
  %172 = icmp eq i32 %171, 9
  br i1 %172, label %176, label %173

; <label>:173                                     ; preds = %164
  %174 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %175 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %174, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i32 0, i32 0))
  br label %176

; <label>:176                                     ; preds = %173, %164
  %177 = load %union.rec*, %union.rec** %y, align 8
  %178 = load i32, i32* %2, align 4
  %179 = load i32, i32* %3, align 4
  %180 = load i32, i32* %4, align 4
  call void @AdjustSize(%union.rec* %177, i32 %178, i32 %179, i32 %180)
  br label %181

; <label>:181                                     ; preds = %176
  %182 = load %union.rec*, %union.rec** %link, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 1
  %187 = load %union.rec*, %union.rec** %186, align 8
  store %union.rec* %187, %union.rec** %link, align 8
  br label %136

; <label>:188                                     ; preds = %136
  br label %1963

; <label>:189                                     ; preds = %85
  %190 = load i32, i32* %4, align 4
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %199

; <label>:192                                     ; preds = %189
  %193 = load %union.rec*, %union.rec** %1, align 8
  %194 = bitcast %union.rec* %193 to %struct.word_type*
  %195 = getelementptr inbounds %struct.word_type, %struct.word_type* %194, i32 0, i32 0
  %196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %195, i32 0, i64 1
  %197 = getelementptr inbounds %struct.LIST, %struct.LIST* %196, i32 0, i32 1
  %198 = load %union.rec*, %union.rec** %197, align 8
  br label %206

; <label>:199                                     ; preds = %189
  %200 = load %union.rec*, %union.rec** %1, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 0
  %203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %202, i32 0, i64 1
  %204 = getelementptr inbounds %struct.LIST, %struct.LIST* %203, i32 0, i32 0
  %205 = load %union.rec*, %union.rec** %204, align 8
  br label %206

; <label>:206                                     ; preds = %199, %192
  %207 = phi %union.rec* [ %198, %192 ], [ %205, %199 ]
  store %union.rec* %207, %union.rec** %link, align 8
  store i32 0, i32* %ratm, align 4
  %208 = load %union.rec*, %union.rec** %link, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 0
  %211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %210, i32 0, i64 0
  %212 = getelementptr inbounds %struct.LIST, %struct.LIST* %211, i32 0, i32 1
  %213 = load %union.rec*, %union.rec** %212, align 8
  store %union.rec* %213, %union.rec** %tlink, align 8
  br label %214

; <label>:214                                     ; preds = %268, %206
  %215 = load %union.rec*, %union.rec** %tlink, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 1
  %218 = bitcast %union.FIRST_UNION* %217 to %struct.anon*
  %219 = getelementptr inbounds %struct.anon, %struct.anon* %218, i32 0, i32 0
  %220 = load i8, i8* %219, align 1
  %221 = zext i8 %220 to i32
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %275

; <label>:223                                     ; preds = %214
  %224 = load %union.rec*, %union.rec** %tlink, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 1
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 0
  %229 = load %union.rec*, %union.rec** %228, align 8
  store %union.rec* %229, %union.rec** %y, align 8
  br label %230

; <label>:230                                     ; preds = %240, %223
  %231 = load %union.rec*, %union.rec** %y, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 1
  %234 = bitcast %union.FIRST_UNION* %233 to %struct.anon*
  %235 = getelementptr inbounds %struct.anon, %struct.anon* %234, i32 0, i32 0
  %236 = load i8, i8* %235, align 1
  %237 = zext i8 %236 to i32
  %238 = icmp eq i32 %237, 0
  br i1 %238, label %239, label %247

; <label>:239                                     ; preds = %230
  br label %240

; <label>:240                                     ; preds = %239
  %241 = load %union.rec*, %union.rec** %y, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 1
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 0
  %246 = load %union.rec*, %union.rec** %245, align 8
  store %union.rec* %246, %union.rec** %y, align 8
  br label %230

; <label>:247                                     ; preds = %230
  %248 = load %union.rec*, %union.rec** %y, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 1
  %251 = bitcast %union.FIRST_UNION* %250 to %struct.anon*
  %252 = getelementptr inbounds %struct.anon, %struct.anon* %251, i32 0, i32 0
  %253 = load i8, i8* %252, align 1
  %254 = zext i8 %253 to i32
  %255 = icmp eq i32 %254, 1
  br i1 %255, label %256, label %267

; <label>:256                                     ; preds = %247
  %257 = load %union.rec*, %union.rec** %y, align 8
  %258 = bitcast %union.rec* %257 to %struct.gapobj_type*
  %259 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %258, i32 0, i32 3
  %260 = bitcast %struct.GAP* %259 to i16*
  %261 = load i16, i16* %260, align 4
  %262 = lshr i16 %261, 8
  %263 = and i16 %262, 1
  %264 = zext i16 %263 to i32
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %266, label %267

; <label>:266                                     ; preds = %256
  store i32 1, i32* %ratm, align 4
  br label %267

; <label>:267                                     ; preds = %266, %256, %247
  br label %268

; <label>:268                                     ; preds = %267
  %269 = load %union.rec*, %union.rec** %tlink, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 0
  %272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %271, i32 0, i64 0
  %273 = getelementptr inbounds %struct.LIST, %struct.LIST* %272, i32 0, i32 1
  %274 = load %union.rec*, %union.rec** %273, align 8
  store %union.rec* %274, %union.rec** %tlink, align 8
  br label %214

; <label>:275                                     ; preds = %214
  %276 = load %union.rec*, %union.rec** %tlink, align 8
  store %union.rec* %276, %union.rec** %y, align 8
  %277 = load %union.rec*, %union.rec** %y, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 1
  %280 = bitcast %union.FIRST_UNION* %279 to %struct.anon*
  %281 = getelementptr inbounds %struct.anon, %struct.anon* %280, i32 0, i32 0
  %282 = load i8, i8* %281, align 1
  %283 = zext i8 %282 to i32
  switch i32 %283, label %1950 [
    i32 8, label %284
    i32 9, label %845
    i32 36, label %845
    i32 37, label %845
    i32 40, label %845
    i32 41, label %845
    i32 20, label %845
    i32 21, label %845
    i32 22, label %845
    i32 23, label %845
    i32 24, label %845
    i32 25, label %845
    i32 96, label %845
    i32 97, label %845
    i32 98, label %845
    i32 99, label %845
    i32 35, label %845
    i32 51, label %845
    i32 30, label %864
    i32 31, label %864
    i32 32, label %898
    i32 33, label %898
    i32 34, label %932
    i32 50, label %992
    i32 26, label %1066
    i32 27, label %1066
    i32 38, label %1201
    i32 39, label %1201
    i32 28, label %1254
    i32 29, label %1254
    i32 16, label %1346
    i32 15, label %1346
    i32 19, label %1432
    i32 18, label %1432
    i32 17, label %1432
    i32 44, label %1807
    i32 43, label %1821
    i32 46, label %1821
    i32 42, label %1858
    i32 45, label %1858
    i32 13, label %1895
    i32 14, label %1895
    i32 11, label %1949
    i32 12, label %1949
    i32 2, label %1949
    i32 5, label %1949
    i32 4, label %1949
    i32 6, label %1949
    i32 7, label %1949
  ]

; <label>:284                                     ; preds = %275
  %285 = load %union.rec*, %union.rec** %y, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 2
  %288 = bitcast %union.SECOND_UNION* %287 to %struct.anon.2*
  %289 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %288, i32 0, i32 2
  %290 = load i16, i16* %289, align 2
  %291 = lshr i16 %290, 8
  %292 = and i16 %291, 1
  %293 = zext i16 %292 to i32
  %294 = icmp eq i32 %293, 0
  br i1 %294, label %295, label %314

; <label>:295                                     ; preds = %284
  %296 = load i32, i32* %2, align 4
  %297 = load i32, i32* %4, align 4
  %298 = sext i32 %297 to i64
  %299 = load %union.rec*, %union.rec** %1, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 3
  %302 = bitcast %union.THIRD_UNION* %301 to %struct.anon.6*
  %303 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x i32], [2 x i32]* %303, i32 0, i64 %298
  store i32 %296, i32* %304, align 4
  %305 = load i32, i32* %3, align 4
  %306 = load i32, i32* %4, align 4
  %307 = sext i32 %306 to i64
  %308 = load %union.rec*, %union.rec** %1, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 3
  %311 = bitcast %union.THIRD_UNION* %310 to %struct.anon.6*
  %312 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %311, i32 0, i32 1
  %313 = getelementptr inbounds [2 x i32], [2 x i32]* %312, i32 0, i64 %307
  store i32 %305, i32* %313, align 4
  br label %1963

; <label>:314                                     ; preds = %284
  %315 = load i32, i32* %4, align 4
  %316 = icmp eq i32 %315, 1
  br i1 %316, label %317, label %336

; <label>:317                                     ; preds = %314
  %318 = load i32, i32* %2, align 4
  %319 = load i32, i32* %4, align 4
  %320 = sext i32 %319 to i64
  %321 = load %union.rec*, %union.rec** %1, align 8
  %322 = bitcast %union.rec* %321 to %struct.word_type*
  %323 = getelementptr inbounds %struct.word_type, %struct.word_type* %322, i32 0, i32 3
  %324 = bitcast %union.THIRD_UNION* %323 to %struct.anon.6*
  %325 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x i32], [2 x i32]* %325, i32 0, i64 %320
  store i32 %318, i32* %326, align 4
  %327 = load i32, i32* %3, align 4
  %328 = load i32, i32* %4, align 4
  %329 = sext i32 %328 to i64
  %330 = load %union.rec*, %union.rec** %1, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 3
  %333 = bitcast %union.THIRD_UNION* %332 to %struct.anon.6*
  %334 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %333, i32 0, i32 1
  %335 = getelementptr inbounds [2 x i32], [2 x i32]* %334, i32 0, i64 %329
  store i32 %327, i32* %335, align 4
  br label %1963

; <label>:336                                     ; preds = %314
  %337 = load %union.rec*, %union.rec** %link, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 0
  %340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %339, i32 0, i64 0
  %341 = getelementptr inbounds %struct.LIST, %struct.LIST* %340, i32 0, i32 0
  %342 = load %union.rec*, %union.rec** %341, align 8
  store %union.rec* %342, %union.rec** %lp, align 8
  br label %343

; <label>:343                                     ; preds = %392, %336
  %344 = load %union.rec*, %union.rec** %lp, align 8
  %345 = load %union.rec*, %union.rec** %y, align 8
  %346 = icmp ne %union.rec* %344, %345
  br i1 %346, label %347, label %399

; <label>:347                                     ; preds = %343
  %348 = load %union.rec*, %union.rec** %lp, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 0
  %351 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %350, i32 0, i64 1
  %352 = getelementptr inbounds %struct.LIST, %struct.LIST* %351, i32 0, i32 0
  %353 = load %union.rec*, %union.rec** %352, align 8
  store %union.rec* %353, %union.rec** %z, align 8
  br label %354

; <label>:354                                     ; preds = %364, %347
  %355 = load %union.rec*, %union.rec** %z, align 8
  %356 = bitcast %union.rec* %355 to %struct.word_type*
  %357 = getelementptr inbounds %struct.word_type, %struct.word_type* %356, i32 0, i32 1
  %358 = bitcast %union.FIRST_UNION* %357 to %struct.anon*
  %359 = getelementptr inbounds %struct.anon, %struct.anon* %358, i32 0, i32 0
  %360 = load i8, i8* %359, align 1
  %361 = zext i8 %360 to i32
  %362 = icmp eq i32 %361, 0
  br i1 %362, label %363, label %371

; <label>:363                                     ; preds = %354
  br label %364

; <label>:364                                     ; preds = %363
  %365 = load %union.rec*, %union.rec** %z, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 0
  %368 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %367, i32 0, i64 1
  %369 = getelementptr inbounds %struct.LIST, %struct.LIST* %368, i32 0, i32 0
  %370 = load %union.rec*, %union.rec** %369, align 8
  store %union.rec* %370, %union.rec** %z, align 8
  br label %354

; <label>:371                                     ; preds = %354
  %372 = load %union.rec*, %union.rec** %z, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 1
  %375 = bitcast %union.FIRST_UNION* %374 to %struct.anon*
  %376 = getelementptr inbounds %struct.anon, %struct.anon* %375, i32 0, i32 0
  %377 = load i8, i8* %376, align 1
  %378 = zext i8 %377 to i32
  %379 = icmp eq i32 %378, 1
  br i1 %379, label %380, label %391

; <label>:380                                     ; preds = %371
  %381 = load %union.rec*, %union.rec** %z, align 8
  %382 = bitcast %union.rec* %381 to %struct.gapobj_type*
  %383 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %382, i32 0, i32 3
  %384 = bitcast %struct.GAP* %383 to i16*
  %385 = load i16, i16* %384, align 4
  %386 = lshr i16 %385, 9
  %387 = and i16 %386, 1
  %388 = zext i16 %387 to i32
  %389 = icmp ne i32 %388, 0
  br i1 %389, label %391, label %390

; <label>:390                                     ; preds = %380
  br label %399

; <label>:391                                     ; preds = %380, %371
  br label %392

; <label>:392                                     ; preds = %391
  %393 = load %union.rec*, %union.rec** %lp, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 0
  %396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %395, i32 0, i64 0
  %397 = getelementptr inbounds %struct.LIST, %struct.LIST* %396, i32 0, i32 0
  %398 = load %union.rec*, %union.rec** %397, align 8
  store %union.rec* %398, %union.rec** %lp, align 8
  br label %343

; <label>:399                                     ; preds = %390, %343
  %400 = load %union.rec*, %union.rec** %link, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  %405 = load %union.rec*, %union.rec** %404, align 8
  store %union.rec* %405, %union.rec** %rp, align 8
  br label %406

; <label>:406                                     ; preds = %455, %399
  %407 = load %union.rec*, %union.rec** %rp, align 8
  %408 = load %union.rec*, %union.rec** %y, align 8
  %409 = icmp ne %union.rec* %407, %408
  br i1 %409, label %410, label %462

; <label>:410                                     ; preds = %406
  %411 = load %union.rec*, %union.rec** %rp, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 0
  %414 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %413, i32 0, i64 1
  %415 = getelementptr inbounds %struct.LIST, %struct.LIST* %414, i32 0, i32 0
  %416 = load %union.rec*, %union.rec** %415, align 8
  store %union.rec* %416, %union.rec** %z, align 8
  br label %417

; <label>:417                                     ; preds = %427, %410
  %418 = load %union.rec*, %union.rec** %z, align 8
  %419 = bitcast %union.rec* %418 to %struct.word_type*
  %420 = getelementptr inbounds %struct.word_type, %struct.word_type* %419, i32 0, i32 1
  %421 = bitcast %union.FIRST_UNION* %420 to %struct.anon*
  %422 = getelementptr inbounds %struct.anon, %struct.anon* %421, i32 0, i32 0
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %424, 0
  br i1 %425, label %426, label %434

; <label>:426                                     ; preds = %417
  br label %427

; <label>:427                                     ; preds = %426
  %428 = load %union.rec*, %union.rec** %z, align 8
  %429 = bitcast %union.rec* %428 to %struct.word_type*
  %430 = getelementptr inbounds %struct.word_type, %struct.word_type* %429, i32 0, i32 0
  %431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %430, i32 0, i64 1
  %432 = getelementptr inbounds %struct.LIST, %struct.LIST* %431, i32 0, i32 0
  %433 = load %union.rec*, %union.rec** %432, align 8
  store %union.rec* %433, %union.rec** %z, align 8
  br label %417

; <label>:434                                     ; preds = %417
  %435 = load %union.rec*, %union.rec** %z, align 8
  %436 = bitcast %union.rec* %435 to %struct.word_type*
  %437 = getelementptr inbounds %struct.word_type, %struct.word_type* %436, i32 0, i32 1
  %438 = bitcast %union.FIRST_UNION* %437 to %struct.anon*
  %439 = getelementptr inbounds %struct.anon, %struct.anon* %438, i32 0, i32 0
  %440 = load i8, i8* %439, align 1
  %441 = zext i8 %440 to i32
  %442 = icmp eq i32 %441, 1
  br i1 %442, label %443, label %454

; <label>:443                                     ; preds = %434
  %444 = load %union.rec*, %union.rec** %z, align 8
  %445 = bitcast %union.rec* %444 to %struct.gapobj_type*
  %446 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %445, i32 0, i32 3
  %447 = bitcast %struct.GAP* %446 to i16*
  %448 = load i16, i16* %447, align 4
  %449 = lshr i16 %448, 9
  %450 = and i16 %449, 1
  %451 = zext i16 %450 to i32
  %452 = icmp ne i32 %451, 0
  br i1 %452, label %454, label %453

; <label>:453                                     ; preds = %443
  br label %462

; <label>:454                                     ; preds = %443, %434
  br label %455

; <label>:455                                     ; preds = %454
  %456 = load %union.rec*, %union.rec** %rp, align 8
  %457 = bitcast %union.rec* %456 to %struct.word_type*
  %458 = getelementptr inbounds %struct.word_type, %struct.word_type* %457, i32 0, i32 0
  %459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %458, i32 0, i64 0
  %460 = getelementptr inbounds %struct.LIST, %struct.LIST* %459, i32 0, i32 1
  %461 = load %union.rec*, %union.rec** %460, align 8
  store %union.rec* %461, %union.rec** %rp, align 8
  br label %406

; <label>:462                                     ; preds = %453, %406
  %463 = load i32, i32* %2, align 4
  %464 = load i32, i32* %4, align 4
  %465 = sext i32 %464 to i64
  %466 = load %union.rec*, %union.rec** %1, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 3
  %469 = bitcast %union.THIRD_UNION* %468 to %struct.anon.6*
  %470 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %469, i32 0, i32 0
  %471 = getelementptr inbounds [2 x i32], [2 x i32]* %470, i32 0, i64 %465
  store i32 %463, i32* %471, align 4
  %472 = load i32, i32* %3, align 4
  %473 = load i32, i32* %4, align 4
  %474 = sext i32 %473 to i64
  %475 = load %union.rec*, %union.rec** %1, align 8
  %476 = bitcast %union.rec* %475 to %struct.word_type*
  %477 = getelementptr inbounds %struct.word_type, %struct.word_type* %476, i32 0, i32 3
  %478 = bitcast %union.THIRD_UNION* %477 to %struct.anon.6*
  %479 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %478, i32 0, i32 1
  %480 = getelementptr inbounds [2 x i32], [2 x i32]* %479, i32 0, i64 %474
  store i32 %472, i32* %480, align 4
  %481 = load %union.rec*, %union.rec** %lp, align 8
  %482 = load %union.rec*, %union.rec** %y, align 8
  %483 = icmp eq %union.rec* %481, %482
  br i1 %483, label %484, label %550

; <label>:484                                     ; preds = %462
  %485 = load %union.rec*, %union.rec** %rp, align 8
  %486 = load %union.rec*, %union.rec** %y, align 8
  %487 = icmp eq %union.rec* %485, %486
  br i1 %487, label %488, label %550

; <label>:488                                     ; preds = %484
  %489 = load %union.rec*, %union.rec** %y, align 8
  %490 = bitcast %union.rec* %489 to %struct.word_type*
  %491 = getelementptr inbounds %struct.word_type, %struct.word_type* %490, i32 0, i32 2
  %492 = bitcast %union.SECOND_UNION* %491 to %struct.anon.2*
  %493 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %492, i32 0, i32 2
  %494 = load i16, i16* %493, align 2
  %495 = lshr i16 %494, 5
  %496 = and i16 %495, 1
  %497 = zext i16 %496 to i32
  %498 = icmp ne i32 %497, 0
  br i1 %498, label %550, label %499

; <label>:499                                     ; preds = %488
  %500 = load i32, i32* %2, align 4
  %501 = load i32, i32* %4, align 4
  %502 = sext i32 %501 to i64
  %503 = load %union.rec*, %union.rec** %y, align 8
  %504 = bitcast %union.rec* %503 to %struct.word_type*
  %505 = getelementptr inbounds %struct.word_type, %struct.word_type* %504, i32 0, i32 3
  %506 = bitcast %union.THIRD_UNION* %505 to %struct.anon.6*
  %507 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x i32], [2 x i32]* %507, i32 0, i64 %502
  %509 = load i32, i32* %508, align 4
  %510 = icmp slt i32 %500, %509
  br i1 %510, label %511, label %521

; <label>:511                                     ; preds = %499
  %512 = load i32, i32* %4, align 4
  %513 = sext i32 %512 to i64
  %514 = load %union.rec*, %union.rec** %y, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 3
  %517 = bitcast %union.THIRD_UNION* %516 to %struct.anon.6*
  %518 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x i32], [2 x i32]* %518, i32 0, i64 %513
  %520 = load i32, i32* %519, align 4
  br label %523

; <label>:521                                     ; preds = %499
  %522 = load i32, i32* %2, align 4
  br label %523

; <label>:523                                     ; preds = %521, %511
  %524 = phi i32 [ %520, %511 ], [ %522, %521 ]
  store i32 %524, i32* %2, align 4
  %525 = load i32, i32* %3, align 4
  %526 = load i32, i32* %4, align 4
  %527 = sext i32 %526 to i64
  %528 = load %union.rec*, %union.rec** %y, align 8
  %529 = bitcast %union.rec* %528 to %struct.word_type*
  %530 = getelementptr inbounds %struct.word_type, %struct.word_type* %529, i32 0, i32 3
  %531 = bitcast %union.THIRD_UNION* %530 to %struct.anon.6*
  %532 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %531, i32 0, i32 1
  %533 = getelementptr inbounds [2 x i32], [2 x i32]* %532, i32 0, i64 %527
  %534 = load i32, i32* %533, align 4
  %535 = icmp slt i32 %525, %534
  br i1 %535, label %536, label %546

; <label>:536                                     ; preds = %523
  %537 = load i32, i32* %4, align 4
  %538 = sext i32 %537 to i64
  %539 = load %union.rec*, %union.rec** %y, align 8
  %540 = bitcast %union.rec* %539 to %struct.word_type*
  %541 = getelementptr inbounds %struct.word_type, %struct.word_type* %540, i32 0, i32 3
  %542 = bitcast %union.THIRD_UNION* %541 to %struct.anon.6*
  %543 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %542, i32 0, i32 1
  %544 = getelementptr inbounds [2 x i32], [2 x i32]* %543, i32 0, i64 %538
  %545 = load i32, i32* %544, align 4
  br label %548

; <label>:546                                     ; preds = %523
  %547 = load i32, i32* %3, align 4
  br label %548

; <label>:548                                     ; preds = %546, %536
  %549 = phi i32 [ %545, %536 ], [ %547, %546 ]
  store i32 %549, i32* %3, align 4
  br label %701

; <label>:550                                     ; preds = %488, %484, %462
  store i32 0, i32* %tf, align 4
  store i32 0, i32* %tb, align 4
  %551 = load %union.rec*, %union.rec** %lp, align 8
  %552 = bitcast %union.rec* %551 to %struct.word_type*
  %553 = getelementptr inbounds %struct.word_type, %struct.word_type* %552, i32 0, i32 0
  %554 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %553, i32 0, i64 0
  %555 = getelementptr inbounds %struct.LIST, %struct.LIST* %554, i32 0, i32 1
  %556 = load %union.rec*, %union.rec** %555, align 8
  store %union.rec* %556, %union.rec** %link, align 8
  br label %557

; <label>:557                                     ; preds = %664, %550
  %558 = load %union.rec*, %union.rec** %link, align 8
  %559 = load %union.rec*, %union.rec** %rp, align 8
  %560 = icmp ne %union.rec* %558, %559
  br i1 %560, label %561, label %671

; <label>:561                                     ; preds = %557
  %562 = load %union.rec*, %union.rec** %link, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 1
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  %567 = load %union.rec*, %union.rec** %566, align 8
  store %union.rec* %567, %union.rec** %z, align 8
  br label %568

; <label>:568                                     ; preds = %578, %561
  %569 = load %union.rec*, %union.rec** %z, align 8
  %570 = bitcast %union.rec* %569 to %struct.word_type*
  %571 = getelementptr inbounds %struct.word_type, %struct.word_type* %570, i32 0, i32 1
  %572 = bitcast %union.FIRST_UNION* %571 to %struct.anon*
  %573 = getelementptr inbounds %struct.anon, %struct.anon* %572, i32 0, i32 0
  %574 = load i8, i8* %573, align 1
  %575 = zext i8 %574 to i32
  %576 = icmp eq i32 %575, 0
  br i1 %576, label %577, label %585

; <label>:577                                     ; preds = %568
  br label %578

; <label>:578                                     ; preds = %577
  %579 = load %union.rec*, %union.rec** %z, align 8
  %580 = bitcast %union.rec* %579 to %struct.word_type*
  %581 = getelementptr inbounds %struct.word_type, %struct.word_type* %580, i32 0, i32 0
  %582 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %581, i32 0, i64 1
  %583 = getelementptr inbounds %struct.LIST, %struct.LIST* %582, i32 0, i32 0
  %584 = load %union.rec*, %union.rec** %583, align 8
  store %union.rec* %584, %union.rec** %z, align 8
  br label %568

; <label>:585                                     ; preds = %568
  %586 = load %union.rec*, %union.rec** %z, align 8
  %587 = bitcast %union.rec* %586 to %struct.word_type*
  %588 = getelementptr inbounds %struct.word_type, %struct.word_type* %587, i32 0, i32 1
  %589 = bitcast %union.FIRST_UNION* %588 to %struct.anon*
  %590 = getelementptr inbounds %struct.anon, %struct.anon* %589, i32 0, i32 0
  %591 = load i8, i8* %590, align 1
  %592 = zext i8 %591 to i32
  %593 = icmp eq i32 %592, 1
  br i1 %593, label %612, label %594

; <label>:594                                     ; preds = %585
  %595 = load %union.rec*, %union.rec** %z, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 1
  %598 = bitcast %union.FIRST_UNION* %597 to %struct.anon*
  %599 = getelementptr inbounds %struct.anon, %struct.anon* %598, i32 0, i32 0
  %600 = load i8, i8* %599, align 1
  %601 = zext i8 %600 to i32
  %602 = icmp sge i32 %601, 119
  br i1 %602, label %603, label %613

; <label>:603                                     ; preds = %594
  %604 = load %union.rec*, %union.rec** %z, align 8
  %605 = bitcast %union.rec* %604 to %struct.word_type*
  %606 = getelementptr inbounds %struct.word_type, %struct.word_type* %605, i32 0, i32 1
  %607 = bitcast %union.FIRST_UNION* %606 to %struct.anon*
  %608 = getelementptr inbounds %struct.anon, %struct.anon* %607, i32 0, i32 0
  %609 = load i8, i8* %608, align 1
  %610 = zext i8 %609 to i32
  %611 = icmp sle i32 %610, 138
  br i1 %611, label %612, label %613

; <label>:612                                     ; preds = %603, %585
  br label %664

; <label>:613                                     ; preds = %603, %594
  %614 = load i32, i32* %tb, align 4
  %615 = load i32, i32* %4, align 4
  %616 = sext i32 %615 to i64
  %617 = load %union.rec*, %union.rec** %z, align 8
  %618 = bitcast %union.rec* %617 to %struct.word_type*
  %619 = getelementptr inbounds %struct.word_type, %struct.word_type* %618, i32 0, i32 3
  %620 = bitcast %union.THIRD_UNION* %619 to %struct.anon.6*
  %621 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %620, i32 0, i32 0
  %622 = getelementptr inbounds [2 x i32], [2 x i32]* %621, i32 0, i64 %616
  %623 = load i32, i32* %622, align 4
  %624 = icmp slt i32 %614, %623
  br i1 %624, label %625, label %635

; <label>:625                                     ; preds = %613
  %626 = load i32, i32* %4, align 4
  %627 = sext i32 %626 to i64
  %628 = load %union.rec*, %union.rec** %z, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 3
  %631 = bitcast %union.THIRD_UNION* %630 to %struct.anon.6*
  %632 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %631, i32 0, i32 0
  %633 = getelementptr inbounds [2 x i32], [2 x i32]* %632, i32 0, i64 %627
  %634 = load i32, i32* %633, align 4
  br label %637

; <label>:635                                     ; preds = %613
  %636 = load i32, i32* %tb, align 4
  br label %637

; <label>:637                                     ; preds = %635, %625
  %638 = phi i32 [ %634, %625 ], [ %636, %635 ]
  store i32 %638, i32* %tb, align 4
  %639 = load i32, i32* %tf, align 4
  %640 = load i32, i32* %4, align 4
  %641 = sext i32 %640 to i64
  %642 = load %union.rec*, %union.rec** %z, align 8
  %643 = bitcast %union.rec* %642 to %struct.word_type*
  %644 = getelementptr inbounds %struct.word_type, %struct.word_type* %643, i32 0, i32 3
  %645 = bitcast %union.THIRD_UNION* %644 to %struct.anon.6*
  %646 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %645, i32 0, i32 1
  %647 = getelementptr inbounds [2 x i32], [2 x i32]* %646, i32 0, i64 %641
  %648 = load i32, i32* %647, align 4
  %649 = icmp slt i32 %639, %648
  br i1 %649, label %650, label %660

; <label>:650                                     ; preds = %637
  %651 = load i32, i32* %4, align 4
  %652 = sext i32 %651 to i64
  %653 = load %union.rec*, %union.rec** %z, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 3
  %656 = bitcast %union.THIRD_UNION* %655 to %struct.anon.6*
  %657 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %656, i32 0, i32 1
  %658 = getelementptr inbounds [2 x i32], [2 x i32]* %657, i32 0, i64 %652
  %659 = load i32, i32* %658, align 4
  br label %662

; <label>:660                                     ; preds = %637
  %661 = load i32, i32* %tf, align 4
  br label %662

; <label>:662                                     ; preds = %660, %650
  %663 = phi i32 [ %659, %650 ], [ %661, %660 ]
  store i32 %663, i32* %tf, align 4
  br label %664

; <label>:664                                     ; preds = %662, %612
  %665 = load %union.rec*, %union.rec** %link, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 0
  %668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %667, i32 0, i64 0
  %669 = getelementptr inbounds %struct.LIST, %struct.LIST* %668, i32 0, i32 1
  %670 = load %union.rec*, %union.rec** %669, align 8
  store %union.rec* %670, %union.rec** %link, align 8
  br label %557

; <label>:671                                     ; preds = %557
  store i32 0, i32* %2, align 4
  %672 = load i32, i32* %tb, align 4
  %673 = load i32, i32* %tf, align 4
  %674 = add nsw i32 %672, %673
  %675 = load i32, i32* %4, align 4
  %676 = sext i32 %675 to i64
  %677 = load %union.rec*, %union.rec** %y, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 3
  %680 = bitcast %union.THIRD_UNION* %679 to %struct.anon.6*
  %681 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %680, i32 0, i32 1
  %682 = getelementptr inbounds [2 x i32], [2 x i32]* %681, i32 0, i64 %676
  %683 = load i32, i32* %682, align 4
  %684 = icmp slt i32 %674, %683
  br i1 %684, label %685, label %695

; <label>:685                                     ; preds = %671
  %686 = load i32, i32* %4, align 4
  %687 = sext i32 %686 to i64
  %688 = load %union.rec*, %union.rec** %y, align 8
  %689 = bitcast %union.rec* %688 to %struct.word_type*
  %690 = getelementptr inbounds %struct.word_type, %struct.word_type* %689, i32 0, i32 3
  %691 = bitcast %union.THIRD_UNION* %690 to %struct.anon.6*
  %692 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %691, i32 0, i32 1
  %693 = getelementptr inbounds [2 x i32], [2 x i32]* %692, i32 0, i64 %687
  %694 = load i32, i32* %693, align 4
  br label %699

; <label>:695                                     ; preds = %671
  %696 = load i32, i32* %tb, align 4
  %697 = load i32, i32* %tf, align 4
  %698 = add nsw i32 %696, %697
  br label %699

; <label>:699                                     ; preds = %695, %685
  %700 = phi i32 [ %694, %685 ], [ %698, %695 ]
  store i32 %700, i32* %3, align 4
  br label %701

; <label>:701                                     ; preds = %699, %548
  %702 = load i32, i32* %4, align 4
  %703 = sext i32 %702 to i64
  %704 = load %union.rec*, %union.rec** %y, align 8
  %705 = bitcast %union.rec* %704 to %struct.word_type*
  %706 = getelementptr inbounds %struct.word_type, %struct.word_type* %705, i32 0, i32 3
  %707 = bitcast %union.THIRD_UNION* %706 to %struct.anon.6*
  %708 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %707, i32 0, i32 0
  %709 = getelementptr inbounds [2 x i32], [2 x i32]* %708, i32 0, i64 %703
  %710 = load i32, i32* %709, align 4
  %711 = load i32, i32* %2, align 4
  %712 = icmp eq i32 %710, %711
  br i1 %712, label %713, label %726

; <label>:713                                     ; preds = %701
  %714 = load i32, i32* %4, align 4
  %715 = sext i32 %714 to i64
  %716 = load %union.rec*, %union.rec** %y, align 8
  %717 = bitcast %union.rec* %716 to %struct.word_type*
  %718 = getelementptr inbounds %struct.word_type, %struct.word_type* %717, i32 0, i32 3
  %719 = bitcast %union.THIRD_UNION* %718 to %struct.anon.6*
  %720 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %719, i32 0, i32 1
  %721 = getelementptr inbounds [2 x i32], [2 x i32]* %720, i32 0, i64 %715
  %722 = load i32, i32* %721, align 4
  %723 = load i32, i32* %3, align 4
  %724 = icmp eq i32 %722, %723
  br i1 %724, label %725, label %726

; <label>:725                                     ; preds = %713
  br label %1963

; <label>:726                                     ; preds = %713, %701
  %727 = load i32, i32* %2, align 4
  %728 = load i32, i32* %4, align 4
  %729 = sext i32 %728 to i64
  %730 = load %union.rec*, %union.rec** %y, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 3
  %733 = bitcast %union.THIRD_UNION* %732 to %struct.anon.6*
  %734 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %733, i32 0, i32 0
  %735 = getelementptr inbounds [2 x i32], [2 x i32]* %734, i32 0, i64 %729
  store i32 %727, i32* %735, align 4
  %736 = load i32, i32* %3, align 4
  %737 = load i32, i32* %4, align 4
  %738 = sext i32 %737 to i64
  %739 = load %union.rec*, %union.rec** %y, align 8
  %740 = bitcast %union.rec* %739 to %struct.word_type*
  %741 = getelementptr inbounds %struct.word_type, %struct.word_type* %740, i32 0, i32 3
  %742 = bitcast %union.THIRD_UNION* %741 to %struct.anon.6*
  %743 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %742, i32 0, i32 1
  %744 = getelementptr inbounds [2 x i32], [2 x i32]* %743, i32 0, i64 %738
  store i32 %736, i32* %744, align 4
  %745 = load %union.rec*, %union.rec** %y, align 8
  %746 = bitcast %union.rec* %745 to %struct.word_type*
  %747 = getelementptr inbounds %struct.word_type, %struct.word_type* %746, i32 0, i32 0
  %748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %747, i32 0, i64 1
  %749 = getelementptr inbounds %struct.LIST, %struct.LIST* %748, i32 0, i32 1
  %750 = load %union.rec*, %union.rec** %749, align 8
  %751 = load %union.rec*, %union.rec** %y, align 8
  %752 = icmp eq %union.rec* %750, %751
  br i1 %752, label %753, label %754

; <label>:753                                     ; preds = %726
  br label %1963

; <label>:754                                     ; preds = %726
  %755 = load %union.rec*, %union.rec** %y, align 8
  %756 = bitcast %union.rec* %755 to %struct.word_type*
  %757 = getelementptr inbounds %struct.word_type, %struct.word_type* %756, i32 0, i32 0
  %758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %757, i32 0, i64 1
  %759 = getelementptr inbounds %struct.LIST, %struct.LIST* %758, i32 0, i32 1
  %760 = load %union.rec*, %union.rec** %759, align 8
  %761 = bitcast %union.rec* %760 to %struct.word_type*
  %762 = getelementptr inbounds %struct.word_type, %struct.word_type* %761, i32 0, i32 0
  %763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %762, i32 0, i64 0
  %764 = getelementptr inbounds %struct.LIST, %struct.LIST* %763, i32 0, i32 0
  %765 = load %union.rec*, %union.rec** %764, align 8
  store %union.rec* %765, %union.rec** %index, align 8
  br label %766

; <label>:766                                     ; preds = %776, %754
  %767 = load %union.rec*, %union.rec** %index, align 8
  %768 = bitcast %union.rec* %767 to %struct.word_type*
  %769 = getelementptr inbounds %struct.word_type, %struct.word_type* %768, i32 0, i32 1
  %770 = bitcast %union.FIRST_UNION* %769 to %struct.anon*
  %771 = getelementptr inbounds %struct.anon, %struct.anon* %770, i32 0, i32 0
  %772 = load i8, i8* %771, align 1
  %773 = zext i8 %772 to i32
  %774 = icmp eq i32 %773, 0
  br i1 %774, label %775, label %783

; <label>:775                                     ; preds = %766
  br label %776

; <label>:776                                     ; preds = %775
  %777 = load %union.rec*, %union.rec** %index, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 0
  %780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %779, i32 0, i64 0
  %781 = getelementptr inbounds %struct.LIST, %struct.LIST* %780, i32 0, i32 0
  %782 = load %union.rec*, %union.rec** %781, align 8
  store %union.rec* %782, %union.rec** %index, align 8
  br label %766

; <label>:783                                     ; preds = %766
  %784 = load %union.rec*, %union.rec** %index, align 8
  %785 = bitcast %union.rec* %784 to %struct.word_type*
  %786 = getelementptr inbounds %struct.word_type, %struct.word_type* %785, i32 0, i32 1
  %787 = bitcast %union.FIRST_UNION* %786 to %struct.anon*
  %788 = getelementptr inbounds %struct.anon, %struct.anon* %787, i32 0, i32 0
  %789 = load i8, i8* %788, align 1
  %790 = zext i8 %789 to i32
  %791 = icmp ne i32 %790, 122
  br i1 %791, label %792, label %793

; <label>:792                                     ; preds = %783
  br label %1963

; <label>:793                                     ; preds = %783
  %794 = load %union.rec*, %union.rec** %index, align 8
  %795 = bitcast %union.rec* %794 to %struct.closure_type*
  %796 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %795, i32 0, i32 5
  %797 = load %union.rec*, %union.rec** %796, align 8
  %798 = icmp ne %union.rec* %797, null
  br i1 %798, label %802, label %799

; <label>:799                                     ; preds = %793
  %800 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %801 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %800, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i32 0, i32 0))
  br label %802

; <label>:802                                     ; preds = %799, %793
  %803 = load %union.rec*, %union.rec** %index, align 8
  %804 = bitcast %union.rec* %803 to %struct.closure_type*
  %805 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %804, i32 0, i32 5
  %806 = load %union.rec*, %union.rec** %805, align 8
  %807 = bitcast %union.rec* %806 to %struct.word_type*
  %808 = getelementptr inbounds %struct.word_type, %struct.word_type* %807, i32 0, i32 1
  %809 = bitcast %union.FIRST_UNION* %808 to %struct.anon*
  %810 = getelementptr inbounds %struct.anon, %struct.anon* %809, i32 0, i32 0
  %811 = load i8, i8* %810, align 1
  %812 = zext i8 %811 to i32
  %813 = icmp eq i32 %812, 2
  br i1 %813, label %817, label %814

; <label>:814                                     ; preds = %802
  %815 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %816 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %815, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.10, i32 0, i32 0))
  br label %817

; <label>:817                                     ; preds = %814, %802
  %818 = load %union.rec*, %union.rec** %index, align 8
  %819 = bitcast %union.rec* %818 to %struct.closure_type*
  %820 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %819, i32 0, i32 5
  %821 = load %union.rec*, %union.rec** %820, align 8
  %822 = bitcast %union.rec* %821 to %struct.closure_type*
  %823 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %822, i32 0, i32 5
  %824 = load %union.rec*, %union.rec** %823, align 8
  %825 = load %union.rec*, %union.rec** @GalleySym, align 8
  %826 = icmp ne %union.rec* %824, %825
  br i1 %826, label %827, label %838

; <label>:827                                     ; preds = %817
  %828 = load %union.rec*, %union.rec** %index, align 8
  %829 = bitcast %union.rec* %828 to %struct.closure_type*
  %830 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %829, i32 0, i32 5
  %831 = load %union.rec*, %union.rec** %830, align 8
  %832 = bitcast %union.rec* %831 to %struct.closure_type*
  %833 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %832, i32 0, i32 5
  %834 = load %union.rec*, %union.rec** %833, align 8
  %835 = load %union.rec*, %union.rec** @ForceGalleySym, align 8
  %836 = icmp ne %union.rec* %834, %835
  br i1 %836, label %837, label %838

; <label>:837                                     ; preds = %827
  br label %1963

; <label>:838                                     ; preds = %827, %817
  %839 = load %union.rec*, %union.rec** %index, align 8
  %840 = bitcast %union.rec* %839 to %struct.closure_type*
  %841 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %840, i32 0, i32 5
  %842 = load %union.rec*, %union.rec** %841, align 8
  store %union.rec* %842, %union.rec** %y, align 8
  br label %843

; <label>:843                                     ; preds = %838
  br label %844

; <label>:844                                     ; preds = %843
  br label %1961

; <label>:845                                     ; preds = %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275, %275
  %846 = load i32, i32* %2, align 4
  %847 = load i32, i32* %4, align 4
  %848 = sext i32 %847 to i64
  %849 = load %union.rec*, %union.rec** %1, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 3
  %852 = bitcast %union.THIRD_UNION* %851 to %struct.anon.6*
  %853 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %852, i32 0, i32 0
  %854 = getelementptr inbounds [2 x i32], [2 x i32]* %853, i32 0, i64 %848
  store i32 %846, i32* %854, align 4
  %855 = load i32, i32* %3, align 4
  %856 = load i32, i32* %4, align 4
  %857 = sext i32 %856 to i64
  %858 = load %union.rec*, %union.rec** %1, align 8
  %859 = bitcast %union.rec* %858 to %struct.word_type*
  %860 = getelementptr inbounds %struct.word_type, %struct.word_type* %859, i32 0, i32 3
  %861 = bitcast %union.THIRD_UNION* %860 to %struct.anon.6*
  %862 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %861, i32 0, i32 1
  %863 = getelementptr inbounds [2 x i32], [2 x i32]* %862, i32 0, i64 %857
  store i32 %855, i32* %863, align 4
  br label %1961

; <label>:864                                     ; preds = %275, %275
  %865 = load i32, i32* %2, align 4
  %866 = load i32, i32* %4, align 4
  %867 = sext i32 %866 to i64
  %868 = load %union.rec*, %union.rec** %1, align 8
  %869 = bitcast %union.rec* %868 to %struct.word_type*
  %870 = getelementptr inbounds %struct.word_type, %struct.word_type* %869, i32 0, i32 3
  %871 = bitcast %union.THIRD_UNION* %870 to %struct.anon.6*
  %872 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %871, i32 0, i32 0
  %873 = getelementptr inbounds [2 x i32], [2 x i32]* %872, i32 0, i64 %867
  store i32 %865, i32* %873, align 4
  %874 = load i32, i32* %3, align 4
  %875 = load i32, i32* %4, align 4
  %876 = sext i32 %875 to i64
  %877 = load %union.rec*, %union.rec** %1, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 3
  %880 = bitcast %union.THIRD_UNION* %879 to %struct.anon.6*
  %881 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %880, i32 0, i32 1
  %882 = getelementptr inbounds [2 x i32], [2 x i32]* %881, i32 0, i64 %876
  store i32 %874, i32* %882, align 4
  %883 = load i32, i32* %4, align 4
  %884 = icmp eq i32 %883, 0
  %885 = zext i1 %884 to i32
  %886 = load %union.rec*, %union.rec** %y, align 8
  %887 = bitcast %union.rec* %886 to %struct.word_type*
  %888 = getelementptr inbounds %struct.word_type, %struct.word_type* %887, i32 0, i32 1
  %889 = bitcast %union.FIRST_UNION* %888 to %struct.anon*
  %890 = getelementptr inbounds %struct.anon, %struct.anon* %889, i32 0, i32 0
  %891 = load i8, i8* %890, align 1
  %892 = zext i8 %891 to i32
  %893 = icmp eq i32 %892, 30
  %894 = zext i1 %893 to i32
  %895 = icmp eq i32 %885, %894
  br i1 %895, label %896, label %897

; <label>:896                                     ; preds = %864
  br label %1963

; <label>:897                                     ; preds = %864
  br label %1961

; <label>:898                                     ; preds = %275, %275
  %899 = load i32, i32* %2, align 4
  %900 = load i32, i32* %4, align 4
  %901 = sext i32 %900 to i64
  %902 = load %union.rec*, %union.rec** %1, align 8
  %903 = bitcast %union.rec* %902 to %struct.word_type*
  %904 = getelementptr inbounds %struct.word_type, %struct.word_type* %903, i32 0, i32 3
  %905 = bitcast %union.THIRD_UNION* %904 to %struct.anon.6*
  %906 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %905, i32 0, i32 0
  %907 = getelementptr inbounds [2 x i32], [2 x i32]* %906, i32 0, i64 %901
  store i32 %899, i32* %907, align 4
  %908 = load i32, i32* %3, align 4
  %909 = load i32, i32* %4, align 4
  %910 = sext i32 %909 to i64
  %911 = load %union.rec*, %union.rec** %1, align 8
  %912 = bitcast %union.rec* %911 to %struct.word_type*
  %913 = getelementptr inbounds %struct.word_type, %struct.word_type* %912, i32 0, i32 3
  %914 = bitcast %union.THIRD_UNION* %913 to %struct.anon.6*
  %915 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %914, i32 0, i32 1
  %916 = getelementptr inbounds [2 x i32], [2 x i32]* %915, i32 0, i64 %910
  store i32 %908, i32* %916, align 4
  %917 = load i32, i32* %4, align 4
  %918 = icmp eq i32 %917, 0
  %919 = zext i1 %918 to i32
  %920 = load %union.rec*, %union.rec** %y, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 1
  %923 = bitcast %union.FIRST_UNION* %922 to %struct.anon*
  %924 = getelementptr inbounds %struct.anon, %struct.anon* %923, i32 0, i32 0
  %925 = load i8, i8* %924, align 1
  %926 = zext i8 %925 to i32
  %927 = icmp eq i32 %926, 32
  %928 = zext i1 %927 to i32
  %929 = icmp eq i32 %919, %928
  br i1 %929, label %930, label %931

; <label>:930                                     ; preds = %898
  br label %1963

; <label>:931                                     ; preds = %898
  br label %1961

; <label>:932                                     ; preds = %275
  %933 = load i32, i32* %2, align 4
  %934 = load i32, i32* %4, align 4
  %935 = sext i32 %934 to i64
  %936 = load %union.rec*, %union.rec** %1, align 8
  %937 = bitcast %union.rec* %936 to %struct.word_type*
  %938 = getelementptr inbounds %struct.word_type, %struct.word_type* %937, i32 0, i32 3
  %939 = bitcast %union.THIRD_UNION* %938 to %struct.anon.6*
  %940 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x i32], [2 x i32]* %940, i32 0, i64 %935
  store i32 %933, i32* %941, align 4
  %942 = load i32, i32* %3, align 4
  %943 = load i32, i32* %4, align 4
  %944 = sext i32 %943 to i64
  %945 = load %union.rec*, %union.rec** %1, align 8
  %946 = bitcast %union.rec* %945 to %struct.word_type*
  %947 = getelementptr inbounds %struct.word_type, %struct.word_type* %946, i32 0, i32 3
  %948 = bitcast %union.THIRD_UNION* %947 to %struct.anon.6*
  %949 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %948, i32 0, i32 1
  %950 = getelementptr inbounds [2 x i32], [2 x i32]* %949, i32 0, i64 %944
  store i32 %942, i32* %950, align 4
  %951 = load i32, i32* %4, align 4
  %952 = icmp eq i32 %951, 0
  br i1 %952, label %953, label %972

; <label>:953                                     ; preds = %932
  %954 = load %union.rec*, %union.rec** %y, align 8
  %955 = bitcast %union.rec* %954 to %struct.closure_type*
  %956 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %955, i32 0, i32 4
  %957 = bitcast %union.FOURTH_UNION* %956 to %struct.CONSTRAINT*
  %958 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %957, i32 0, i32 0
  %959 = load i32, i32* %958, align 4
  %960 = sdiv i32 %959, 128
  %961 = load i32, i32* %2, align 4
  %962 = mul nsw i32 %961, %960
  store i32 %962, i32* %2, align 4
  %963 = load %union.rec*, %union.rec** %y, align 8
  %964 = bitcast %union.rec* %963 to %struct.closure_type*
  %965 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %964, i32 0, i32 4
  %966 = bitcast %union.FOURTH_UNION* %965 to %struct.CONSTRAINT*
  %967 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %966, i32 0, i32 0
  %968 = load i32, i32* %967, align 4
  %969 = sdiv i32 %968, 128
  %970 = load i32, i32* %3, align 4
  %971 = mul nsw i32 %970, %969
  store i32 %971, i32* %3, align 4
  br label %991

; <label>:972                                     ; preds = %932
  %973 = load %union.rec*, %union.rec** %y, align 8
  %974 = bitcast %union.rec* %973 to %struct.closure_type*
  %975 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %974, i32 0, i32 4
  %976 = bitcast %union.FOURTH_UNION* %975 to %struct.CONSTRAINT*
  %977 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %976, i32 0, i32 2
  %978 = load i32, i32* %977, align 4
  %979 = sdiv i32 %978, 128
  %980 = load i32, i32* %2, align 4
  %981 = mul nsw i32 %980, %979
  store i32 %981, i32* %2, align 4
  %982 = load %union.rec*, %union.rec** %y, align 8
  %983 = bitcast %union.rec* %982 to %struct.closure_type*
  %984 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %983, i32 0, i32 4
  %985 = bitcast %union.FOURTH_UNION* %984 to %struct.CONSTRAINT*
  %986 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %985, i32 0, i32 2
  %987 = load i32, i32* %986, align 4
  %988 = sdiv i32 %987, 128
  %989 = load i32, i32* %3, align 4
  %990 = mul nsw i32 %989, %988
  store i32 %990, i32* %3, align 4
  br label %991

; <label>:991                                     ; preds = %972, %953
  br label %1961

; <label>:992                                     ; preds = %275
  %993 = load i32, i32* %2, align 4
  %994 = load i32, i32* %4, align 4
  %995 = sext i32 %994 to i64
  %996 = load %union.rec*, %union.rec** %1, align 8
  %997 = bitcast %union.rec* %996 to %struct.word_type*
  %998 = getelementptr inbounds %struct.word_type, %struct.word_type* %997, i32 0, i32 3
  %999 = bitcast %union.THIRD_UNION* %998 to %struct.anon.6*
  %1000 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %999, i32 0, i32 0
  %1001 = getelementptr inbounds [2 x i32], [2 x i32]* %1000, i32 0, i64 %995
  store i32 %993, i32* %1001, align 4
  %1002 = load i32, i32* %3, align 4
  %1003 = load i32, i32* %4, align 4
  %1004 = sext i32 %1003 to i64
  %1005 = load %union.rec*, %union.rec** %1, align 8
  %1006 = bitcast %union.rec* %1005 to %struct.word_type*
  %1007 = getelementptr inbounds %struct.word_type, %struct.word_type* %1006, i32 0, i32 3
  %1008 = bitcast %union.THIRD_UNION* %1007 to %struct.anon.6*
  %1009 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1008, i32 0, i32 1
  %1010 = getelementptr inbounds [2 x i32], [2 x i32]* %1009, i32 0, i64 %1004
  store i32 %1002, i32* %1010, align 4
  %1011 = load %union.rec*, %union.rec** %1, align 8
  %1012 = load %union.rec*, %union.rec** %y, align 8
  %1013 = bitcast %union.rec* %1012 to %struct.closure_type*
  %1014 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1013, i32 0, i32 4
  %1015 = bitcast %union.FOURTH_UNION* %1014 to %struct.CONSTRAINT*
  %1016 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1015, i32 0, i32 3
  %1017 = load i32, i32* %1016, align 4
  call void @RotateSize(i32* %cby, i32* %cfy, i32* %rby, i32* %rfy, %union.rec* %1011, i32 %1017)
  %1018 = load i32, i32* %cby, align 4
  %1019 = load %union.rec*, %union.rec** %y, align 8
  %1020 = bitcast %union.rec* %1019 to %struct.word_type*
  %1021 = getelementptr inbounds %struct.word_type, %struct.word_type* %1020, i32 0, i32 3
  %1022 = bitcast %union.THIRD_UNION* %1021 to %struct.anon.6*
  %1023 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1022, i32 0, i32 0
  %1024 = getelementptr inbounds [2 x i32], [2 x i32]* %1023, i32 0, i64 0
  %1025 = load i32, i32* %1024, align 4
  %1026 = icmp ne i32 %1018, %1025
  br i1 %1026, label %1037, label %1027

; <label>:1027                                    ; preds = %992
  %1028 = load i32, i32* %cfy, align 4
  %1029 = load %union.rec*, %union.rec** %y, align 8
  %1030 = bitcast %union.rec* %1029 to %struct.word_type*
  %1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %1030, i32 0, i32 3
  %1032 = bitcast %union.THIRD_UNION* %1031 to %struct.anon.6*
  %1033 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds [2 x i32], [2 x i32]* %1033, i32 0, i64 0
  %1035 = load i32, i32* %1034, align 4
  %1036 = icmp ne i32 %1028, %1035
  br i1 %1036, label %1037, label %1041

; <label>:1037                                    ; preds = %1027, %992
  %1038 = load %union.rec*, %union.rec** %y, align 8
  %1039 = load i32, i32* %cby, align 4
  %1040 = load i32, i32* %cfy, align 4
  call void @AdjustSize(%union.rec* %1038, i32 %1039, i32 %1040, i32 0)
  br label %1041

; <label>:1041                                    ; preds = %1037, %1027
  %1042 = load i32, i32* %rby, align 4
  %1043 = load %union.rec*, %union.rec** %y, align 8
  %1044 = bitcast %union.rec* %1043 to %struct.word_type*
  %1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %1044, i32 0, i32 3
  %1046 = bitcast %union.THIRD_UNION* %1045 to %struct.anon.6*
  %1047 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1046, i32 0, i32 0
  %1048 = getelementptr inbounds [2 x i32], [2 x i32]* %1047, i32 0, i64 1
  %1049 = load i32, i32* %1048, align 4
  %1050 = icmp ne i32 %1042, %1049
  br i1 %1050, label %1061, label %1051

; <label>:1051                                    ; preds = %1041
  %1052 = load i32, i32* %rfy, align 4
  %1053 = load %union.rec*, %union.rec** %y, align 8
  %1054 = bitcast %union.rec* %1053 to %struct.word_type*
  %1055 = getelementptr inbounds %struct.word_type, %struct.word_type* %1054, i32 0, i32 3
  %1056 = bitcast %union.THIRD_UNION* %1055 to %struct.anon.6*
  %1057 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1056, i32 0, i32 1
  %1058 = getelementptr inbounds [2 x i32], [2 x i32]* %1057, i32 0, i64 1
  %1059 = load i32, i32* %1058, align 4
  %1060 = icmp ne i32 %1052, %1059
  br i1 %1060, label %1061, label %1065

; <label>:1061                                    ; preds = %1051, %1041
  %1062 = load %union.rec*, %union.rec** %y, align 8
  %1063 = load i32, i32* %rby, align 4
  %1064 = load i32, i32* %rfy, align 4
  call void @AdjustSize(%union.rec* %1062, i32 %1063, i32 %1064, i32 1)
  br label %1065

; <label>:1065                                    ; preds = %1061, %1051
  br label %1963

; <label>:1066                                    ; preds = %275, %275
  %1067 = load %union.rec*, %union.rec** %y, align 8
  %1068 = bitcast %union.rec* %1067 to %struct.word_type*
  %1069 = getelementptr inbounds %struct.word_type, %struct.word_type* %1068, i32 0, i32 1
  %1070 = bitcast %union.FIRST_UNION* %1069 to %struct.anon*
  %1071 = getelementptr inbounds %struct.anon, %struct.anon* %1070, i32 0, i32 0
  %1072 = load i8, i8* %1071, align 1
  %1073 = zext i8 %1072 to i32
  %1074 = icmp eq i32 %1073, 26
  %1075 = zext i1 %1074 to i32
  %1076 = load i32, i32* %4, align 4
  %1077 = icmp eq i32 %1076, 0
  %1078 = zext i1 %1077 to i32
  %1079 = icmp eq i32 %1075, %1078
  br i1 %1079, label %1080, label %1181

; <label>:1080                                    ; preds = %1066
  %1081 = load i32, i32* %2, align 4
  %1082 = load %union.rec*, %union.rec** %y, align 8
  %1083 = bitcast %union.rec* %1082 to %struct.closure_type*
  %1084 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1083, i32 0, i32 4
  %1085 = bitcast %union.FOURTH_UNION* %1084 to %struct.CONSTRAINT*
  %1086 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1085, i32 0, i32 0
  %1087 = load i32, i32* %1086, align 4
  %1088 = icmp sle i32 %1081, %1087
  br i1 %1088, label %1089, label %1109

; <label>:1089                                    ; preds = %1080
  %1090 = load i32, i32* %2, align 4
  %1091 = load i32, i32* %3, align 4
  %1092 = add nsw i32 %1090, %1091
  %1093 = load %union.rec*, %union.rec** %y, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.closure_type*
  %1095 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1094, i32 0, i32 4
  %1096 = bitcast %union.FOURTH_UNION* %1095 to %struct.CONSTRAINT*
  %1097 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1096, i32 0, i32 1
  %1098 = load i32, i32* %1097, align 4
  %1099 = icmp sle i32 %1092, %1098
  br i1 %1099, label %1100, label %1109

; <label>:1100                                    ; preds = %1089
  %1101 = load i32, i32* %3, align 4
  %1102 = load %union.rec*, %union.rec** %y, align 8
  %1103 = bitcast %union.rec* %1102 to %struct.closure_type*
  %1104 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1103, i32 0, i32 4
  %1105 = bitcast %union.FOURTH_UNION* %1104 to %struct.CONSTRAINT*
  %1106 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1105, i32 0, i32 2
  %1107 = load i32, i32* %1106, align 4
  %1108 = icmp sle i32 %1101, %1107
  br i1 %1108, label %1158, label %1109

; <label>:1109                                    ; preds = %1100, %1089, %1080
  %1110 = load %union.rec*, %union.rec** %y, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.word_type*
  %1112 = getelementptr inbounds %struct.word_type, %struct.word_type* %1111, i32 0, i32 1
  %1113 = bitcast %union.FIRST_UNION* %1112 to %struct.FILE_POS*
  %1114 = load %union.rec*, %union.rec** %y, align 8
  %1115 = bitcast %union.rec* %1114 to %struct.closure_type*
  %1116 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1115, i32 0, i32 4
  %1117 = bitcast %union.FOURTH_UNION* %1116 to %struct.CONSTRAINT*
  %1118 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1117, i32 0, i32 0
  %1119 = load i32, i32* %1118, align 4
  %1120 = call i8* @EchoLength(i32 %1119)
  %1121 = load %union.rec*, %union.rec** %y, align 8
  %1122 = bitcast %union.rec* %1121 to %struct.closure_type*
  %1123 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1122, i32 0, i32 4
  %1124 = bitcast %union.FOURTH_UNION* %1123 to %struct.CONSTRAINT*
  %1125 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1124, i32 0, i32 1
  %1126 = load i32, i32* %1125, align 4
  %1127 = call i8* @EchoLength(i32 %1126)
  %1128 = load %union.rec*, %union.rec** %y, align 8
  %1129 = bitcast %union.rec* %1128 to %struct.closure_type*
  %1130 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1129, i32 0, i32 4
  %1131 = bitcast %union.FOURTH_UNION* %1130 to %struct.CONSTRAINT*
  %1132 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1131, i32 0, i32 2
  %1133 = load i32, i32* %1132, align 4
  %1134 = call i8* @EchoLength(i32 %1133)
  %1135 = load i32, i32* %2, align 4
  %1136 = call i8* @EchoLength(i32 %1135)
  %1137 = load i32, i32* %3, align 4
  %1138 = call i8* @EchoLength(i32 %1137)
  %1139 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 2, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %1113, i8* %1120, i8* %1127, i8* %1134, i8* %1136, i8* %1138)
  %1140 = load %union.rec*, %union.rec** %y, align 8
  %1141 = bitcast %union.rec* %1140 to %struct.closure_type*
  %1142 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1141, i32 0, i32 4
  %1143 = bitcast %union.FOURTH_UNION* %1142 to %struct.CONSTRAINT*
  %1144 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1143, i32 0, i32 0
  store i32 8388607, i32* %1144, align 4
  %1145 = load i32, i32* %2, align 4
  %1146 = load i32, i32* %3, align 4
  %1147 = add nsw i32 %1145, %1146
  %1148 = load %union.rec*, %union.rec** %y, align 8
  %1149 = bitcast %union.rec* %1148 to %struct.closure_type*
  %1150 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1149, i32 0, i32 4
  %1151 = bitcast %union.FOURTH_UNION* %1150 to %struct.CONSTRAINT*
  %1152 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1151, i32 0, i32 1
  store i32 %1147, i32* %1152, align 4
  %1153 = load %union.rec*, %union.rec** %y, align 8
  %1154 = bitcast %union.rec* %1153 to %struct.closure_type*
  %1155 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1154, i32 0, i32 4
  %1156 = bitcast %union.FOURTH_UNION* %1155 to %struct.CONSTRAINT*
  %1157 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1156, i32 0, i32 2
  store i32 8388607, i32* %1157, align 4
  br label %1158

; <label>:1158                                    ; preds = %1109, %1100
  %1159 = load i32, i32* %2, align 4
  %1160 = load i32, i32* %4, align 4
  %1161 = sext i32 %1160 to i64
  %1162 = load %union.rec*, %union.rec** %1, align 8
  %1163 = bitcast %union.rec* %1162 to %struct.word_type*
  %1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %1163, i32 0, i32 3
  %1165 = bitcast %union.THIRD_UNION* %1164 to %struct.anon.6*
  %1166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1165, i32 0, i32 0
  %1167 = getelementptr inbounds [2 x i32], [2 x i32]* %1166, i32 0, i64 %1161
  store i32 %1159, i32* %1167, align 4
  %1168 = load i32, i32* %3, align 4
  %1169 = load i32, i32* %4, align 4
  %1170 = sext i32 %1169 to i64
  %1171 = load %union.rec*, %union.rec** %1, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.word_type*
  %1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %1172, i32 0, i32 3
  %1174 = bitcast %union.THIRD_UNION* %1173 to %struct.anon.6*
  %1175 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1174, i32 0, i32 1
  %1176 = getelementptr inbounds [2 x i32], [2 x i32]* %1175, i32 0, i64 %1170
  store i32 %1168, i32* %1176, align 4
  %1177 = load %union.rec*, %union.rec** %y, align 8
  %1178 = bitcast %union.rec* %1177 to %struct.closure_type*
  %1179 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1178, i32 0, i32 4
  %1180 = bitcast %union.FOURTH_UNION* %1179 to %struct.CONSTRAINT*
  call void @EnlargeToConstraint(i32* %2, i32* %3, %struct.CONSTRAINT* %1180)
  br label %1200

; <label>:1181                                    ; preds = %1066
  %1182 = load i32, i32* %2, align 4
  %1183 = load i32, i32* %4, align 4
  %1184 = sext i32 %1183 to i64
  %1185 = load %union.rec*, %union.rec** %1, align 8
  %1186 = bitcast %union.rec* %1185 to %struct.word_type*
  %1187 = getelementptr inbounds %struct.word_type, %struct.word_type* %1186, i32 0, i32 3
  %1188 = bitcast %union.THIRD_UNION* %1187 to %struct.anon.6*
  %1189 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x i32], [2 x i32]* %1189, i32 0, i64 %1184
  store i32 %1182, i32* %1190, align 4
  %1191 = load i32, i32* %3, align 4
  %1192 = load i32, i32* %4, align 4
  %1193 = sext i32 %1192 to i64
  %1194 = load %union.rec*, %union.rec** %1, align 8
  %1195 = bitcast %union.rec* %1194 to %struct.word_type*
  %1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %1195, i32 0, i32 3
  %1197 = bitcast %union.THIRD_UNION* %1196 to %struct.anon.6*
  %1198 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1197, i32 0, i32 1
  %1199 = getelementptr inbounds [2 x i32], [2 x i32]* %1198, i32 0, i64 %1193
  store i32 %1191, i32* %1199, align 4
  br label %1200

; <label>:1200                                    ; preds = %1181, %1158
  br label %1961

; <label>:1201                                    ; preds = %275, %275
  %1202 = load %union.rec*, %union.rec** %y, align 8
  %1203 = bitcast %union.rec* %1202 to %struct.word_type*
  %1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %1203, i32 0, i32 1
  %1205 = bitcast %union.FIRST_UNION* %1204 to %struct.anon*
  %1206 = getelementptr inbounds %struct.anon, %struct.anon* %1205, i32 0, i32 0
  %1207 = load i8, i8* %1206, align 1
  %1208 = zext i8 %1207 to i32
  %1209 = icmp eq i32 %1208, 38
  %1210 = zext i1 %1209 to i32
  %1211 = load i32, i32* %4, align 4
  %1212 = icmp eq i32 %1211, 0
  %1213 = zext i1 %1212 to i32
  %1214 = icmp eq i32 %1210, %1213
  br i1 %1214, label %1215, label %1234

; <label>:1215                                    ; preds = %1201
  %1216 = load i32, i32* %2, align 4
  %1217 = load i32, i32* %4, align 4
  %1218 = sext i32 %1217 to i64
  %1219 = load %union.rec*, %union.rec** %1, align 8
  %1220 = bitcast %union.rec* %1219 to %struct.word_type*
  %1221 = getelementptr inbounds %struct.word_type, %struct.word_type* %1220, i32 0, i32 3
  %1222 = bitcast %union.THIRD_UNION* %1221 to %struct.anon.6*
  %1223 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1222, i32 0, i32 0
  %1224 = getelementptr inbounds [2 x i32], [2 x i32]* %1223, i32 0, i64 %1218
  store i32 %1216, i32* %1224, align 4
  %1225 = load i32, i32* %3, align 4
  %1226 = load i32, i32* %4, align 4
  %1227 = sext i32 %1226 to i64
  %1228 = load %union.rec*, %union.rec** %1, align 8
  %1229 = bitcast %union.rec* %1228 to %struct.word_type*
  %1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %1229, i32 0, i32 3
  %1231 = bitcast %union.THIRD_UNION* %1230 to %struct.anon.6*
  %1232 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1231, i32 0, i32 1
  %1233 = getelementptr inbounds [2 x i32], [2 x i32]* %1232, i32 0, i64 %1227
  store i32 %1225, i32* %1233, align 4
  br label %1253

; <label>:1234                                    ; preds = %1201
  %1235 = load i32, i32* %2, align 4
  %1236 = load i32, i32* %4, align 4
  %1237 = sext i32 %1236 to i64
  %1238 = load %union.rec*, %union.rec** %1, align 8
  %1239 = bitcast %union.rec* %1238 to %struct.word_type*
  %1240 = getelementptr inbounds %struct.word_type, %struct.word_type* %1239, i32 0, i32 3
  %1241 = bitcast %union.THIRD_UNION* %1240 to %struct.anon.6*
  %1242 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1241, i32 0, i32 0
  %1243 = getelementptr inbounds [2 x i32], [2 x i32]* %1242, i32 0, i64 %1237
  store i32 %1235, i32* %1243, align 4
  %1244 = load i32, i32* %3, align 4
  %1245 = load i32, i32* %4, align 4
  %1246 = sext i32 %1245 to i64
  %1247 = load %union.rec*, %union.rec** %1, align 8
  %1248 = bitcast %union.rec* %1247 to %struct.word_type*
  %1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %1248, i32 0, i32 3
  %1250 = bitcast %union.THIRD_UNION* %1249 to %struct.anon.6*
  %1251 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1250, i32 0, i32 1
  %1252 = getelementptr inbounds [2 x i32], [2 x i32]* %1251, i32 0, i64 %1246
  store i32 %1244, i32* %1252, align 4
  br label %1253

; <label>:1253                                    ; preds = %1234, %1215
  br label %1961

; <label>:1254                                    ; preds = %275, %275
  %1255 = load i32, i32* %2, align 4
  %1256 = load i32, i32* %4, align 4
  %1257 = sext i32 %1256 to i64
  %1258 = load %union.rec*, %union.rec** %1, align 8
  %1259 = bitcast %union.rec* %1258 to %struct.word_type*
  %1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %1259, i32 0, i32 3
  %1261 = bitcast %union.THIRD_UNION* %1260 to %struct.anon.6*
  %1262 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1261, i32 0, i32 0
  %1263 = getelementptr inbounds [2 x i32], [2 x i32]* %1262, i32 0, i64 %1257
  store i32 %1255, i32* %1263, align 4
  %1264 = load i32, i32* %3, align 4
  %1265 = load i32, i32* %4, align 4
  %1266 = sext i32 %1265 to i64
  %1267 = load %union.rec*, %union.rec** %1, align 8
  %1268 = bitcast %union.rec* %1267 to %struct.word_type*
  %1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %1268, i32 0, i32 3
  %1270 = bitcast %union.THIRD_UNION* %1269 to %struct.anon.6*
  %1271 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1270, i32 0, i32 1
  %1272 = getelementptr inbounds [2 x i32], [2 x i32]* %1271, i32 0, i64 %1266
  store i32 %1264, i32* %1272, align 4
  %1273 = load %union.rec*, %union.rec** %y, align 8
  %1274 = bitcast %union.rec* %1273 to %struct.word_type*
  %1275 = getelementptr inbounds %struct.word_type, %struct.word_type* %1274, i32 0, i32 1
  %1276 = bitcast %union.FIRST_UNION* %1275 to %struct.anon*
  %1277 = getelementptr inbounds %struct.anon, %struct.anon* %1276, i32 0, i32 0
  %1278 = load i8, i8* %1277, align 1
  %1279 = zext i8 %1278 to i32
  %1280 = icmp eq i32 %1279, 28
  %1281 = zext i1 %1280 to i32
  %1282 = load i32, i32* %4, align 4
  %1283 = icmp eq i32 %1282, 0
  %1284 = zext i1 %1283 to i32
  %1285 = icmp eq i32 %1281, %1284
  br i1 %1285, label %1286, label %1345

; <label>:1286                                    ; preds = %1254
  %1287 = load %union.rec*, %union.rec** %y, align 8
  %1288 = load %union.rec*, %union.rec** %1, align 8
  %1289 = load i32, i32* %4, align 4
  %1290 = call i32 @FindShift(%union.rec* %1287, %union.rec* %1288, i32 %1289)
  store i32 %1290, i32* %tf, align 4
  %1291 = load i32, i32* %2, align 4
  %1292 = load i32, i32* %tf, align 4
  %1293 = add nsw i32 %1291, %1292
  %1294 = icmp slt i32 0, %1293
  br i1 %1294, label %1295, label %1299

; <label>:1295                                    ; preds = %1286
  %1296 = load i32, i32* %2, align 4
  %1297 = load i32, i32* %tf, align 4
  %1298 = add nsw i32 %1296, %1297
  br label %1300

; <label>:1299                                    ; preds = %1286
  br label %1300

; <label>:1300                                    ; preds = %1299, %1295
  %1301 = phi i32 [ %1298, %1295 ], [ 0, %1299 ]
  %1302 = icmp slt i32 8388607, %1301
  br i1 %1302, label %1303, label %1304

; <label>:1303                                    ; preds = %1300
  br label %1316

; <label>:1304                                    ; preds = %1300
  %1305 = load i32, i32* %2, align 4
  %1306 = load i32, i32* %tf, align 4
  %1307 = add nsw i32 %1305, %1306
  %1308 = icmp slt i32 0, %1307
  br i1 %1308, label %1309, label %1313

; <label>:1309                                    ; preds = %1304
  %1310 = load i32, i32* %2, align 4
  %1311 = load i32, i32* %tf, align 4
  %1312 = add nsw i32 %1310, %1311
  br label %1314

; <label>:1313                                    ; preds = %1304
  br label %1314

; <label>:1314                                    ; preds = %1313, %1309
  %1315 = phi i32 [ %1312, %1309 ], [ 0, %1313 ]
  br label %1316

; <label>:1316                                    ; preds = %1314, %1303
  %1317 = phi i32 [ 8388607, %1303 ], [ %1315, %1314 ]
  store i32 %1317, i32* %2, align 4
  %1318 = load i32, i32* %3, align 4
  %1319 = load i32, i32* %tf, align 4
  %1320 = sub nsw i32 %1318, %1319
  %1321 = icmp slt i32 0, %1320
  br i1 %1321, label %1322, label %1326

; <label>:1322                                    ; preds = %1316
  %1323 = load i32, i32* %3, align 4
  %1324 = load i32, i32* %tf, align 4
  %1325 = sub nsw i32 %1323, %1324
  br label %1327

; <label>:1326                                    ; preds = %1316
  br label %1327

; <label>:1327                                    ; preds = %1326, %1322
  %1328 = phi i32 [ %1325, %1322 ], [ 0, %1326 ]
  %1329 = icmp slt i32 8388607, %1328
  br i1 %1329, label %1330, label %1331

; <label>:1330                                    ; preds = %1327
  br label %1343

; <label>:1331                                    ; preds = %1327
  %1332 = load i32, i32* %3, align 4
  %1333 = load i32, i32* %tf, align 4
  %1334 = sub nsw i32 %1332, %1333
  %1335 = icmp slt i32 0, %1334
  br i1 %1335, label %1336, label %1340

; <label>:1336                                    ; preds = %1331
  %1337 = load i32, i32* %3, align 4
  %1338 = load i32, i32* %tf, align 4
  %1339 = sub nsw i32 %1337, %1338
  br label %1341

; <label>:1340                                    ; preds = %1331
  br label %1341

; <label>:1341                                    ; preds = %1340, %1336
  %1342 = phi i32 [ %1339, %1336 ], [ 0, %1340 ]
  br label %1343

; <label>:1343                                    ; preds = %1341, %1330
  %1344 = phi i32 [ 8388607, %1330 ], [ %1342, %1341 ]
  store i32 %1344, i32* %3, align 4
  br label %1345

; <label>:1345                                    ; preds = %1343, %1254
  br label %1961

; <label>:1346                                    ; preds = %275, %275
  %1347 = load %union.rec*, %union.rec** %y, align 8
  %1348 = bitcast %union.rec* %1347 to %struct.word_type*
  %1349 = getelementptr inbounds %struct.word_type, %struct.word_type* %1348, i32 0, i32 1
  %1350 = bitcast %union.FIRST_UNION* %1349 to %struct.anon*
  %1351 = getelementptr inbounds %struct.anon, %struct.anon* %1350, i32 0, i32 0
  %1352 = load i8, i8* %1351, align 1
  %1353 = zext i8 %1352 to i32
  %1354 = icmp eq i32 %1353, 16
  %1355 = zext i1 %1354 to i32
  %1356 = load i32, i32* %4, align 4
  %1357 = icmp eq i32 %1356, 0
  %1358 = zext i1 %1357 to i32
  %1359 = icmp eq i32 %1355, %1358
  br i1 %1359, label %1363, label %1360

; <label>:1360                                    ; preds = %1346
  %1361 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1362 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1361, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i32 0, i32 0))
  br label %1363

; <label>:1363                                    ; preds = %1360, %1346
  %1364 = load i32, i32* %2, align 4
  %1365 = load i32, i32* %4, align 4
  %1366 = sext i32 %1365 to i64
  %1367 = load %union.rec*, %union.rec** %1, align 8
  %1368 = bitcast %union.rec* %1367 to %struct.word_type*
  %1369 = getelementptr inbounds %struct.word_type, %struct.word_type* %1368, i32 0, i32 3
  %1370 = bitcast %union.THIRD_UNION* %1369 to %struct.anon.6*
  %1371 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1370, i32 0, i32 0
  %1372 = getelementptr inbounds [2 x i32], [2 x i32]* %1371, i32 0, i64 %1366
  store i32 %1364, i32* %1372, align 4
  %1373 = load i32, i32* %3, align 4
  %1374 = load i32, i32* %4, align 4
  %1375 = sext i32 %1374 to i64
  %1376 = load %union.rec*, %union.rec** %1, align 8
  %1377 = bitcast %union.rec* %1376 to %struct.word_type*
  %1378 = getelementptr inbounds %struct.word_type, %struct.word_type* %1377, i32 0, i32 3
  %1379 = bitcast %union.THIRD_UNION* %1378 to %struct.anon.6*
  %1380 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1379, i32 0, i32 1
  %1381 = getelementptr inbounds [2 x i32], [2 x i32]* %1380, i32 0, i64 %1375
  store i32 %1373, i32* %1381, align 4
  %1382 = load i32, i32* %2, align 4
  %1383 = load i32, i32* %4, align 4
  %1384 = sext i32 %1383 to i64
  %1385 = load %union.rec*, %union.rec** %y, align 8
  %1386 = bitcast %union.rec* %1385 to %struct.word_type*
  %1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %1386, i32 0, i32 3
  %1388 = bitcast %union.THIRD_UNION* %1387 to %struct.anon.6*
  %1389 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1388, i32 0, i32 0
  %1390 = getelementptr inbounds [2 x i32], [2 x i32]* %1389, i32 0, i64 %1384
  %1391 = load i32, i32* %1390, align 4
  %1392 = icmp slt i32 %1382, %1391
  br i1 %1392, label %1393, label %1403

; <label>:1393                                    ; preds = %1363
  %1394 = load i32, i32* %4, align 4
  %1395 = sext i32 %1394 to i64
  %1396 = load %union.rec*, %union.rec** %y, align 8
  %1397 = bitcast %union.rec* %1396 to %struct.word_type*
  %1398 = getelementptr inbounds %struct.word_type, %struct.word_type* %1397, i32 0, i32 3
  %1399 = bitcast %union.THIRD_UNION* %1398 to %struct.anon.6*
  %1400 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1399, i32 0, i32 0
  %1401 = getelementptr inbounds [2 x i32], [2 x i32]* %1400, i32 0, i64 %1395
  %1402 = load i32, i32* %1401, align 4
  br label %1405

; <label>:1403                                    ; preds = %1363
  %1404 = load i32, i32* %2, align 4
  br label %1405

; <label>:1405                                    ; preds = %1403, %1393
  %1406 = phi i32 [ %1402, %1393 ], [ %1404, %1403 ]
  store i32 %1406, i32* %2, align 4
  %1407 = load i32, i32* %3, align 4
  %1408 = load i32, i32* %4, align 4
  %1409 = sext i32 %1408 to i64
  %1410 = load %union.rec*, %union.rec** %y, align 8
  %1411 = bitcast %union.rec* %1410 to %struct.word_type*
  %1412 = getelementptr inbounds %struct.word_type, %struct.word_type* %1411, i32 0, i32 3
  %1413 = bitcast %union.THIRD_UNION* %1412 to %struct.anon.6*
  %1414 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1413, i32 0, i32 1
  %1415 = getelementptr inbounds [2 x i32], [2 x i32]* %1414, i32 0, i64 %1409
  %1416 = load i32, i32* %1415, align 4
  %1417 = icmp slt i32 %1407, %1416
  br i1 %1417, label %1418, label %1428

; <label>:1418                                    ; preds = %1405
  %1419 = load i32, i32* %4, align 4
  %1420 = sext i32 %1419 to i64
  %1421 = load %union.rec*, %union.rec** %y, align 8
  %1422 = bitcast %union.rec* %1421 to %struct.word_type*
  %1423 = getelementptr inbounds %struct.word_type, %struct.word_type* %1422, i32 0, i32 3
  %1424 = bitcast %union.THIRD_UNION* %1423 to %struct.anon.6*
  %1425 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1424, i32 0, i32 1
  %1426 = getelementptr inbounds [2 x i32], [2 x i32]* %1425, i32 0, i64 %1420
  %1427 = load i32, i32* %1426, align 4
  br label %1430

; <label>:1428                                    ; preds = %1405
  %1429 = load i32, i32* %3, align 4
  br label %1430

; <label>:1430                                    ; preds = %1428, %1418
  %1431 = phi i32 [ %1427, %1418 ], [ %1429, %1428 ]
  store i32 %1431, i32* %3, align 4
  br label %1961

; <label>:1432                                    ; preds = %275, %275, %275
  %1433 = load %union.rec*, %union.rec** %y, align 8
  %1434 = bitcast %union.rec* %1433 to %struct.word_type*
  %1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %1434, i32 0, i32 1
  %1436 = bitcast %union.FIRST_UNION* %1435 to %struct.anon*
  %1437 = getelementptr inbounds %struct.anon, %struct.anon* %1436, i32 0, i32 0
  %1438 = load i8, i8* %1437, align 1
  %1439 = zext i8 %1438 to i32
  %1440 = icmp eq i32 %1439, 19
  %1441 = zext i1 %1440 to i32
  %1442 = load i32, i32* %4, align 4
  %1443 = icmp eq i32 %1442, 1
  %1444 = zext i1 %1443 to i32
  %1445 = icmp eq i32 %1441, %1444
  br i1 %1445, label %1446, label %1451

; <label>:1446                                    ; preds = %1432
  %1447 = load %union.rec*, %union.rec** %1, align 8
  %1448 = load i32, i32* %ratm, align 4
  %1449 = load %union.rec*, %union.rec** %y, align 8
  %1450 = load i32, i32* %4, align 4
  call void @CatAdjustSize(%union.rec* %1447, i32* %2, i32* %3, i32 %1448, %union.rec* %1449, i32 %1450)
  br label %1806

; <label>:1451                                    ; preds = %1432
  %1452 = load %union.rec*, %union.rec** %link, align 8
  %1453 = bitcast %union.rec* %1452 to %struct.word_type*
  %1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %1453, i32 0, i32 0
  %1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1454, i32 0, i64 0
  %1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %1455, i32 0, i32 0
  %1457 = load %union.rec*, %union.rec** %1456, align 8
  store %union.rec* %1457, %union.rec** %lp, align 8
  br label %1458

; <label>:1458                                    ; preds = %1507, %1451
  %1459 = load %union.rec*, %union.rec** %lp, align 8
  %1460 = load %union.rec*, %union.rec** %y, align 8
  %1461 = icmp ne %union.rec* %1459, %1460
  br i1 %1461, label %1462, label %1514

; <label>:1462                                    ; preds = %1458
  %1463 = load %union.rec*, %union.rec** %lp, align 8
  %1464 = bitcast %union.rec* %1463 to %struct.word_type*
  %1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %1464, i32 0, i32 0
  %1466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1465, i32 0, i64 1
  %1467 = getelementptr inbounds %struct.LIST, %struct.LIST* %1466, i32 0, i32 0
  %1468 = load %union.rec*, %union.rec** %1467, align 8
  store %union.rec* %1468, %union.rec** %z, align 8
  br label %1469

; <label>:1469                                    ; preds = %1479, %1462
  %1470 = load %union.rec*, %union.rec** %z, align 8
  %1471 = bitcast %union.rec* %1470 to %struct.word_type*
  %1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %1471, i32 0, i32 1
  %1473 = bitcast %union.FIRST_UNION* %1472 to %struct.anon*
  %1474 = getelementptr inbounds %struct.anon, %struct.anon* %1473, i32 0, i32 0
  %1475 = load i8, i8* %1474, align 1
  %1476 = zext i8 %1475 to i32
  %1477 = icmp eq i32 %1476, 0
  br i1 %1477, label %1478, label %1486

; <label>:1478                                    ; preds = %1469
  br label %1479

; <label>:1479                                    ; preds = %1478
  %1480 = load %union.rec*, %union.rec** %z, align 8
  %1481 = bitcast %union.rec* %1480 to %struct.word_type*
  %1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %1481, i32 0, i32 0
  %1483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1482, i32 0, i64 1
  %1484 = getelementptr inbounds %struct.LIST, %struct.LIST* %1483, i32 0, i32 0
  %1485 = load %union.rec*, %union.rec** %1484, align 8
  store %union.rec* %1485, %union.rec** %z, align 8
  br label %1469

; <label>:1486                                    ; preds = %1469
  %1487 = load %union.rec*, %union.rec** %z, align 8
  %1488 = bitcast %union.rec* %1487 to %struct.word_type*
  %1489 = getelementptr inbounds %struct.word_type, %struct.word_type* %1488, i32 0, i32 1
  %1490 = bitcast %union.FIRST_UNION* %1489 to %struct.anon*
  %1491 = getelementptr inbounds %struct.anon, %struct.anon* %1490, i32 0, i32 0
  %1492 = load i8, i8* %1491, align 1
  %1493 = zext i8 %1492 to i32
  %1494 = icmp eq i32 %1493, 1
  br i1 %1494, label %1495, label %1506

; <label>:1495                                    ; preds = %1486
  %1496 = load %union.rec*, %union.rec** %z, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.gapobj_type*
  %1498 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1497, i32 0, i32 3
  %1499 = bitcast %struct.GAP* %1498 to i16*
  %1500 = load i16, i16* %1499, align 4
  %1501 = lshr i16 %1500, 9
  %1502 = and i16 %1501, 1
  %1503 = zext i16 %1502 to i32
  %1504 = icmp ne i32 %1503, 0
  br i1 %1504, label %1506, label %1505

; <label>:1505                                    ; preds = %1495
  br label %1514

; <label>:1506                                    ; preds = %1495, %1486
  br label %1507

; <label>:1507                                    ; preds = %1506
  %1508 = load %union.rec*, %union.rec** %lp, align 8
  %1509 = bitcast %union.rec* %1508 to %struct.word_type*
  %1510 = getelementptr inbounds %struct.word_type, %struct.word_type* %1509, i32 0, i32 0
  %1511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1510, i32 0, i64 0
  %1512 = getelementptr inbounds %struct.LIST, %struct.LIST* %1511, i32 0, i32 0
  %1513 = load %union.rec*, %union.rec** %1512, align 8
  store %union.rec* %1513, %union.rec** %lp, align 8
  br label %1458

; <label>:1514                                    ; preds = %1505, %1458
  %1515 = load %union.rec*, %union.rec** %link, align 8
  %1516 = bitcast %union.rec* %1515 to %struct.word_type*
  %1517 = getelementptr inbounds %struct.word_type, %struct.word_type* %1516, i32 0, i32 0
  %1518 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1517, i32 0, i64 0
  %1519 = getelementptr inbounds %struct.LIST, %struct.LIST* %1518, i32 0, i32 1
  %1520 = load %union.rec*, %union.rec** %1519, align 8
  store %union.rec* %1520, %union.rec** %rp, align 8
  br label %1521

; <label>:1521                                    ; preds = %1570, %1514
  %1522 = load %union.rec*, %union.rec** %rp, align 8
  %1523 = load %union.rec*, %union.rec** %y, align 8
  %1524 = icmp ne %union.rec* %1522, %1523
  br i1 %1524, label %1525, label %1577

; <label>:1525                                    ; preds = %1521
  %1526 = load %union.rec*, %union.rec** %rp, align 8
  %1527 = bitcast %union.rec* %1526 to %struct.word_type*
  %1528 = getelementptr inbounds %struct.word_type, %struct.word_type* %1527, i32 0, i32 0
  %1529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1528, i32 0, i64 1
  %1530 = getelementptr inbounds %struct.LIST, %struct.LIST* %1529, i32 0, i32 0
  %1531 = load %union.rec*, %union.rec** %1530, align 8
  store %union.rec* %1531, %union.rec** %z, align 8
  br label %1532

; <label>:1532                                    ; preds = %1542, %1525
  %1533 = load %union.rec*, %union.rec** %z, align 8
  %1534 = bitcast %union.rec* %1533 to %struct.word_type*
  %1535 = getelementptr inbounds %struct.word_type, %struct.word_type* %1534, i32 0, i32 1
  %1536 = bitcast %union.FIRST_UNION* %1535 to %struct.anon*
  %1537 = getelementptr inbounds %struct.anon, %struct.anon* %1536, i32 0, i32 0
  %1538 = load i8, i8* %1537, align 1
  %1539 = zext i8 %1538 to i32
  %1540 = icmp eq i32 %1539, 0
  br i1 %1540, label %1541, label %1549

; <label>:1541                                    ; preds = %1532
  br label %1542

; <label>:1542                                    ; preds = %1541
  %1543 = load %union.rec*, %union.rec** %z, align 8
  %1544 = bitcast %union.rec* %1543 to %struct.word_type*
  %1545 = getelementptr inbounds %struct.word_type, %struct.word_type* %1544, i32 0, i32 0
  %1546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1545, i32 0, i64 1
  %1547 = getelementptr inbounds %struct.LIST, %struct.LIST* %1546, i32 0, i32 0
  %1548 = load %union.rec*, %union.rec** %1547, align 8
  store %union.rec* %1548, %union.rec** %z, align 8
  br label %1532

; <label>:1549                                    ; preds = %1532
  %1550 = load %union.rec*, %union.rec** %z, align 8
  %1551 = bitcast %union.rec* %1550 to %struct.word_type*
  %1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %1551, i32 0, i32 1
  %1553 = bitcast %union.FIRST_UNION* %1552 to %struct.anon*
  %1554 = getelementptr inbounds %struct.anon, %struct.anon* %1553, i32 0, i32 0
  %1555 = load i8, i8* %1554, align 1
  %1556 = zext i8 %1555 to i32
  %1557 = icmp eq i32 %1556, 1
  br i1 %1557, label %1558, label %1569

; <label>:1558                                    ; preds = %1549
  %1559 = load %union.rec*, %union.rec** %z, align 8
  %1560 = bitcast %union.rec* %1559 to %struct.gapobj_type*
  %1561 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1560, i32 0, i32 3
  %1562 = bitcast %struct.GAP* %1561 to i16*
  %1563 = load i16, i16* %1562, align 4
  %1564 = lshr i16 %1563, 9
  %1565 = and i16 %1564, 1
  %1566 = zext i16 %1565 to i32
  %1567 = icmp ne i32 %1566, 0
  br i1 %1567, label %1569, label %1568

; <label>:1568                                    ; preds = %1558
  br label %1577

; <label>:1569                                    ; preds = %1558, %1549
  br label %1570

; <label>:1570                                    ; preds = %1569
  %1571 = load %union.rec*, %union.rec** %rp, align 8
  %1572 = bitcast %union.rec* %1571 to %struct.word_type*
  %1573 = getelementptr inbounds %struct.word_type, %struct.word_type* %1572, i32 0, i32 0
  %1574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1573, i32 0, i64 0
  %1575 = getelementptr inbounds %struct.LIST, %struct.LIST* %1574, i32 0, i32 1
  %1576 = load %union.rec*, %union.rec** %1575, align 8
  store %union.rec* %1576, %union.rec** %rp, align 8
  br label %1521

; <label>:1577                                    ; preds = %1568, %1521
  %1578 = load i32, i32* %2, align 4
  %1579 = load i32, i32* %4, align 4
  %1580 = sext i32 %1579 to i64
  %1581 = load %union.rec*, %union.rec** %1, align 8
  %1582 = bitcast %union.rec* %1581 to %struct.word_type*
  %1583 = getelementptr inbounds %struct.word_type, %struct.word_type* %1582, i32 0, i32 3
  %1584 = bitcast %union.THIRD_UNION* %1583 to %struct.anon.6*
  %1585 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1584, i32 0, i32 0
  %1586 = getelementptr inbounds [2 x i32], [2 x i32]* %1585, i32 0, i64 %1580
  store i32 %1578, i32* %1586, align 4
  %1587 = load i32, i32* %3, align 4
  %1588 = load i32, i32* %4, align 4
  %1589 = sext i32 %1588 to i64
  %1590 = load %union.rec*, %union.rec** %1, align 8
  %1591 = bitcast %union.rec* %1590 to %struct.word_type*
  %1592 = getelementptr inbounds %struct.word_type, %struct.word_type* %1591, i32 0, i32 3
  %1593 = bitcast %union.THIRD_UNION* %1592 to %struct.anon.6*
  %1594 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1593, i32 0, i32 1
  %1595 = getelementptr inbounds [2 x i32], [2 x i32]* %1594, i32 0, i64 %1589
  store i32 %1587, i32* %1595, align 4
  %1596 = load %union.rec*, %union.rec** %lp, align 8
  %1597 = load %union.rec*, %union.rec** %y, align 8
  %1598 = icmp eq %union.rec* %1596, %1597
  br i1 %1598, label %1599, label %1654

; <label>:1599                                    ; preds = %1577
  %1600 = load %union.rec*, %union.rec** %rp, align 8
  %1601 = load %union.rec*, %union.rec** %y, align 8
  %1602 = icmp eq %union.rec* %1600, %1601
  br i1 %1602, label %1603, label %1654

; <label>:1603                                    ; preds = %1599
  %1604 = load i32, i32* %2, align 4
  %1605 = load i32, i32* %4, align 4
  %1606 = sext i32 %1605 to i64
  %1607 = load %union.rec*, %union.rec** %y, align 8
  %1608 = bitcast %union.rec* %1607 to %struct.word_type*
  %1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %1608, i32 0, i32 3
  %1610 = bitcast %union.THIRD_UNION* %1609 to %struct.anon.6*
  %1611 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1610, i32 0, i32 0
  %1612 = getelementptr inbounds [2 x i32], [2 x i32]* %1611, i32 0, i64 %1606
  %1613 = load i32, i32* %1612, align 4
  %1614 = icmp slt i32 %1604, %1613
  br i1 %1614, label %1615, label %1625

; <label>:1615                                    ; preds = %1603
  %1616 = load i32, i32* %4, align 4
  %1617 = sext i32 %1616 to i64
  %1618 = load %union.rec*, %union.rec** %y, align 8
  %1619 = bitcast %union.rec* %1618 to %struct.word_type*
  %1620 = getelementptr inbounds %struct.word_type, %struct.word_type* %1619, i32 0, i32 3
  %1621 = bitcast %union.THIRD_UNION* %1620 to %struct.anon.6*
  %1622 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1621, i32 0, i32 0
  %1623 = getelementptr inbounds [2 x i32], [2 x i32]* %1622, i32 0, i64 %1617
  %1624 = load i32, i32* %1623, align 4
  br label %1627

; <label>:1625                                    ; preds = %1603
  %1626 = load i32, i32* %2, align 4
  br label %1627

; <label>:1627                                    ; preds = %1625, %1615
  %1628 = phi i32 [ %1624, %1615 ], [ %1626, %1625 ]
  store i32 %1628, i32* %2, align 4
  %1629 = load i32, i32* %3, align 4
  %1630 = load i32, i32* %4, align 4
  %1631 = sext i32 %1630 to i64
  %1632 = load %union.rec*, %union.rec** %y, align 8
  %1633 = bitcast %union.rec* %1632 to %struct.word_type*
  %1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %1633, i32 0, i32 3
  %1635 = bitcast %union.THIRD_UNION* %1634 to %struct.anon.6*
  %1636 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1635, i32 0, i32 1
  %1637 = getelementptr inbounds [2 x i32], [2 x i32]* %1636, i32 0, i64 %1631
  %1638 = load i32, i32* %1637, align 4
  %1639 = icmp slt i32 %1629, %1638
  br i1 %1639, label %1640, label %1650

; <label>:1640                                    ; preds = %1627
  %1641 = load i32, i32* %4, align 4
  %1642 = sext i32 %1641 to i64
  %1643 = load %union.rec*, %union.rec** %y, align 8
  %1644 = bitcast %union.rec* %1643 to %struct.word_type*
  %1645 = getelementptr inbounds %struct.word_type, %struct.word_type* %1644, i32 0, i32 3
  %1646 = bitcast %union.THIRD_UNION* %1645 to %struct.anon.6*
  %1647 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1646, i32 0, i32 1
  %1648 = getelementptr inbounds [2 x i32], [2 x i32]* %1647, i32 0, i64 %1642
  %1649 = load i32, i32* %1648, align 4
  br label %1652

; <label>:1650                                    ; preds = %1627
  %1651 = load i32, i32* %3, align 4
  br label %1652

; <label>:1652                                    ; preds = %1650, %1640
  %1653 = phi i32 [ %1649, %1640 ], [ %1651, %1650 ]
  store i32 %1653, i32* %3, align 4
  br label %1805

; <label>:1654                                    ; preds = %1599, %1577
  store i32 0, i32* %tf, align 4
  store i32 0, i32* %tb, align 4
  %1655 = load %union.rec*, %union.rec** %lp, align 8
  %1656 = bitcast %union.rec* %1655 to %struct.word_type*
  %1657 = getelementptr inbounds %struct.word_type, %struct.word_type* %1656, i32 0, i32 0
  %1658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1657, i32 0, i64 0
  %1659 = getelementptr inbounds %struct.LIST, %struct.LIST* %1658, i32 0, i32 1
  %1660 = load %union.rec*, %union.rec** %1659, align 8
  store %union.rec* %1660, %union.rec** %link, align 8
  br label %1661

; <label>:1661                                    ; preds = %1768, %1654
  %1662 = load %union.rec*, %union.rec** %link, align 8
  %1663 = load %union.rec*, %union.rec** %rp, align 8
  %1664 = icmp ne %union.rec* %1662, %1663
  br i1 %1664, label %1665, label %1775

; <label>:1665                                    ; preds = %1661
  %1666 = load %union.rec*, %union.rec** %link, align 8
  %1667 = bitcast %union.rec* %1666 to %struct.word_type*
  %1668 = getelementptr inbounds %struct.word_type, %struct.word_type* %1667, i32 0, i32 0
  %1669 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1668, i32 0, i64 1
  %1670 = getelementptr inbounds %struct.LIST, %struct.LIST* %1669, i32 0, i32 0
  %1671 = load %union.rec*, %union.rec** %1670, align 8
  store %union.rec* %1671, %union.rec** %z, align 8
  br label %1672

; <label>:1672                                    ; preds = %1682, %1665
  %1673 = load %union.rec*, %union.rec** %z, align 8
  %1674 = bitcast %union.rec* %1673 to %struct.word_type*
  %1675 = getelementptr inbounds %struct.word_type, %struct.word_type* %1674, i32 0, i32 1
  %1676 = bitcast %union.FIRST_UNION* %1675 to %struct.anon*
  %1677 = getelementptr inbounds %struct.anon, %struct.anon* %1676, i32 0, i32 0
  %1678 = load i8, i8* %1677, align 1
  %1679 = zext i8 %1678 to i32
  %1680 = icmp eq i32 %1679, 0
  br i1 %1680, label %1681, label %1689

; <label>:1681                                    ; preds = %1672
  br label %1682

; <label>:1682                                    ; preds = %1681
  %1683 = load %union.rec*, %union.rec** %z, align 8
  %1684 = bitcast %union.rec* %1683 to %struct.word_type*
  %1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %1684, i32 0, i32 0
  %1686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1685, i32 0, i64 1
  %1687 = getelementptr inbounds %struct.LIST, %struct.LIST* %1686, i32 0, i32 0
  %1688 = load %union.rec*, %union.rec** %1687, align 8
  store %union.rec* %1688, %union.rec** %z, align 8
  br label %1672

; <label>:1689                                    ; preds = %1672
  %1690 = load %union.rec*, %union.rec** %z, align 8
  %1691 = bitcast %union.rec* %1690 to %struct.word_type*
  %1692 = getelementptr inbounds %struct.word_type, %struct.word_type* %1691, i32 0, i32 1
  %1693 = bitcast %union.FIRST_UNION* %1692 to %struct.anon*
  %1694 = getelementptr inbounds %struct.anon, %struct.anon* %1693, i32 0, i32 0
  %1695 = load i8, i8* %1694, align 1
  %1696 = zext i8 %1695 to i32
  %1697 = icmp eq i32 %1696, 1
  br i1 %1697, label %1716, label %1698

; <label>:1698                                    ; preds = %1689
  %1699 = load %union.rec*, %union.rec** %z, align 8
  %1700 = bitcast %union.rec* %1699 to %struct.word_type*
  %1701 = getelementptr inbounds %struct.word_type, %struct.word_type* %1700, i32 0, i32 1
  %1702 = bitcast %union.FIRST_UNION* %1701 to %struct.anon*
  %1703 = getelementptr inbounds %struct.anon, %struct.anon* %1702, i32 0, i32 0
  %1704 = load i8, i8* %1703, align 1
  %1705 = zext i8 %1704 to i32
  %1706 = icmp sge i32 %1705, 119
  br i1 %1706, label %1707, label %1717

; <label>:1707                                    ; preds = %1698
  %1708 = load %union.rec*, %union.rec** %z, align 8
  %1709 = bitcast %union.rec* %1708 to %struct.word_type*
  %1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %1709, i32 0, i32 1
  %1711 = bitcast %union.FIRST_UNION* %1710 to %struct.anon*
  %1712 = getelementptr inbounds %struct.anon, %struct.anon* %1711, i32 0, i32 0
  %1713 = load i8, i8* %1712, align 1
  %1714 = zext i8 %1713 to i32
  %1715 = icmp sle i32 %1714, 138
  br i1 %1715, label %1716, label %1717

; <label>:1716                                    ; preds = %1707, %1689
  br label %1768

; <label>:1717                                    ; preds = %1707, %1698
  %1718 = load i32, i32* %tb, align 4
  %1719 = load i32, i32* %4, align 4
  %1720 = sext i32 %1719 to i64
  %1721 = load %union.rec*, %union.rec** %z, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.word_type*
  %1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %1722, i32 0, i32 3
  %1724 = bitcast %union.THIRD_UNION* %1723 to %struct.anon.6*
  %1725 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1724, i32 0, i32 0
  %1726 = getelementptr inbounds [2 x i32], [2 x i32]* %1725, i32 0, i64 %1720
  %1727 = load i32, i32* %1726, align 4
  %1728 = icmp slt i32 %1718, %1727
  br i1 %1728, label %1729, label %1739

; <label>:1729                                    ; preds = %1717
  %1730 = load i32, i32* %4, align 4
  %1731 = sext i32 %1730 to i64
  %1732 = load %union.rec*, %union.rec** %z, align 8
  %1733 = bitcast %union.rec* %1732 to %struct.word_type*
  %1734 = getelementptr inbounds %struct.word_type, %struct.word_type* %1733, i32 0, i32 3
  %1735 = bitcast %union.THIRD_UNION* %1734 to %struct.anon.6*
  %1736 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1735, i32 0, i32 0
  %1737 = getelementptr inbounds [2 x i32], [2 x i32]* %1736, i32 0, i64 %1731
  %1738 = load i32, i32* %1737, align 4
  br label %1741

; <label>:1739                                    ; preds = %1717
  %1740 = load i32, i32* %tb, align 4
  br label %1741

; <label>:1741                                    ; preds = %1739, %1729
  %1742 = phi i32 [ %1738, %1729 ], [ %1740, %1739 ]
  store i32 %1742, i32* %tb, align 4
  %1743 = load i32, i32* %tf, align 4
  %1744 = load i32, i32* %4, align 4
  %1745 = sext i32 %1744 to i64
  %1746 = load %union.rec*, %union.rec** %z, align 8
  %1747 = bitcast %union.rec* %1746 to %struct.word_type*
  %1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %1747, i32 0, i32 3
  %1749 = bitcast %union.THIRD_UNION* %1748 to %struct.anon.6*
  %1750 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1749, i32 0, i32 1
  %1751 = getelementptr inbounds [2 x i32], [2 x i32]* %1750, i32 0, i64 %1745
  %1752 = load i32, i32* %1751, align 4
  %1753 = icmp slt i32 %1743, %1752
  br i1 %1753, label %1754, label %1764

; <label>:1754                                    ; preds = %1741
  %1755 = load i32, i32* %4, align 4
  %1756 = sext i32 %1755 to i64
  %1757 = load %union.rec*, %union.rec** %z, align 8
  %1758 = bitcast %union.rec* %1757 to %struct.word_type*
  %1759 = getelementptr inbounds %struct.word_type, %struct.word_type* %1758, i32 0, i32 3
  %1760 = bitcast %union.THIRD_UNION* %1759 to %struct.anon.6*
  %1761 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1760, i32 0, i32 1
  %1762 = getelementptr inbounds [2 x i32], [2 x i32]* %1761, i32 0, i64 %1756
  %1763 = load i32, i32* %1762, align 4
  br label %1766

; <label>:1764                                    ; preds = %1741
  %1765 = load i32, i32* %tf, align 4
  br label %1766

; <label>:1766                                    ; preds = %1764, %1754
  %1767 = phi i32 [ %1763, %1754 ], [ %1765, %1764 ]
  store i32 %1767, i32* %tf, align 4
  br label %1768

; <label>:1768                                    ; preds = %1766, %1716
  %1769 = load %union.rec*, %union.rec** %link, align 8
  %1770 = bitcast %union.rec* %1769 to %struct.word_type*
  %1771 = getelementptr inbounds %struct.word_type, %struct.word_type* %1770, i32 0, i32 0
  %1772 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1771, i32 0, i64 0
  %1773 = getelementptr inbounds %struct.LIST, %struct.LIST* %1772, i32 0, i32 1
  %1774 = load %union.rec*, %union.rec** %1773, align 8
  store %union.rec* %1774, %union.rec** %link, align 8
  br label %1661

; <label>:1775                                    ; preds = %1661
  store i32 0, i32* %2, align 4
  %1776 = load i32, i32* %tb, align 4
  %1777 = load i32, i32* %tf, align 4
  %1778 = add nsw i32 %1776, %1777
  %1779 = load i32, i32* %4, align 4
  %1780 = sext i32 %1779 to i64
  %1781 = load %union.rec*, %union.rec** %y, align 8
  %1782 = bitcast %union.rec* %1781 to %struct.word_type*
  %1783 = getelementptr inbounds %struct.word_type, %struct.word_type* %1782, i32 0, i32 3
  %1784 = bitcast %union.THIRD_UNION* %1783 to %struct.anon.6*
  %1785 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1784, i32 0, i32 1
  %1786 = getelementptr inbounds [2 x i32], [2 x i32]* %1785, i32 0, i64 %1780
  %1787 = load i32, i32* %1786, align 4
  %1788 = icmp slt i32 %1778, %1787
  br i1 %1788, label %1789, label %1799

; <label>:1789                                    ; preds = %1775
  %1790 = load i32, i32* %4, align 4
  %1791 = sext i32 %1790 to i64
  %1792 = load %union.rec*, %union.rec** %y, align 8
  %1793 = bitcast %union.rec* %1792 to %struct.word_type*
  %1794 = getelementptr inbounds %struct.word_type, %struct.word_type* %1793, i32 0, i32 3
  %1795 = bitcast %union.THIRD_UNION* %1794 to %struct.anon.6*
  %1796 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1795, i32 0, i32 1
  %1797 = getelementptr inbounds [2 x i32], [2 x i32]* %1796, i32 0, i64 %1791
  %1798 = load i32, i32* %1797, align 4
  br label %1803

; <label>:1799                                    ; preds = %1775
  %1800 = load i32, i32* %tb, align 4
  %1801 = load i32, i32* %tf, align 4
  %1802 = add nsw i32 %1800, %1801
  br label %1803

; <label>:1803                                    ; preds = %1799, %1789
  %1804 = phi i32 [ %1798, %1789 ], [ %1802, %1799 ]
  store i32 %1804, i32* %3, align 4
  br label %1805

; <label>:1805                                    ; preds = %1803, %1652
  br label %1806

; <label>:1806                                    ; preds = %1805, %1446
  br label %1961

; <label>:1807                                    ; preds = %275
  %1808 = load %union.rec*, %union.rec** %y, align 8
  %1809 = bitcast %union.rec* %1808 to %struct.word_type*
  %1810 = getelementptr inbounds %struct.word_type, %struct.word_type* %1809, i32 0, i32 1
  %1811 = bitcast %union.FIRST_UNION* %1810 to %struct.FILE_POS*
  %1812 = load %union.rec*, %union.rec** %y, align 8
  %1813 = bitcast %union.rec* %1812 to %struct.word_type*
  %1814 = getelementptr inbounds %struct.word_type, %struct.word_type* %1813, i32 0, i32 1
  %1815 = bitcast %union.FIRST_UNION* %1814 to %struct.anon*
  %1816 = getelementptr inbounds %struct.anon, %struct.anon* %1815, i32 0, i32 0
  %1817 = load i8, i8* %1816, align 1
  %1818 = zext i8 %1817 to i32
  %1819 = call i8* @Image(i32 %1818)
  %1820 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %1811, i8* %1819)
  br label %1961

; <label>:1821                                    ; preds = %275, %275
  %1822 = load i32, i32* %4, align 4
  %1823 = icmp eq i32 %1822, 0
  br i1 %1823, label %1824, label %1843

; <label>:1824                                    ; preds = %1821
  %1825 = load i32, i32* %2, align 4
  %1826 = load i32, i32* %4, align 4
  %1827 = sext i32 %1826 to i64
  %1828 = load %union.rec*, %union.rec** %1, align 8
  %1829 = bitcast %union.rec* %1828 to %struct.word_type*
  %1830 = getelementptr inbounds %struct.word_type, %struct.word_type* %1829, i32 0, i32 3
  %1831 = bitcast %union.THIRD_UNION* %1830 to %struct.anon.6*
  %1832 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1831, i32 0, i32 0
  %1833 = getelementptr inbounds [2 x i32], [2 x i32]* %1832, i32 0, i64 %1827
  store i32 %1825, i32* %1833, align 4
  %1834 = load i32, i32* %3, align 4
  %1835 = load i32, i32* %4, align 4
  %1836 = sext i32 %1835 to i64
  %1837 = load %union.rec*, %union.rec** %1, align 8
  %1838 = bitcast %union.rec* %1837 to %struct.word_type*
  %1839 = getelementptr inbounds %struct.word_type, %struct.word_type* %1838, i32 0, i32 3
  %1840 = bitcast %union.THIRD_UNION* %1839 to %struct.anon.6*
  %1841 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1840, i32 0, i32 1
  %1842 = getelementptr inbounds [2 x i32], [2 x i32]* %1841, i32 0, i64 %1836
  store i32 %1834, i32* %1842, align 4
  br label %1857

; <label>:1843                                    ; preds = %1821
  %1844 = load %union.rec*, %union.rec** %y, align 8
  %1845 = bitcast %union.rec* %1844 to %struct.word_type*
  %1846 = getelementptr inbounds %struct.word_type, %struct.word_type* %1845, i32 0, i32 1
  %1847 = bitcast %union.FIRST_UNION* %1846 to %struct.FILE_POS*
  %1848 = load %union.rec*, %union.rec** %y, align 8
  %1849 = bitcast %union.rec* %1848 to %struct.word_type*
  %1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %1849, i32 0, i32 1
  %1851 = bitcast %union.FIRST_UNION* %1850 to %struct.anon*
  %1852 = getelementptr inbounds %struct.anon, %struct.anon* %1851, i32 0, i32 0
  %1853 = load i8, i8* %1852, align 1
  %1854 = zext i8 %1853 to i32
  %1855 = call i8* @Image(i32 %1854)
  %1856 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %1847, i8* %1855)
  br label %1857

; <label>:1857                                    ; preds = %1843, %1824
  br label %1961

; <label>:1858                                    ; preds = %275, %275
  %1859 = load i32, i32* %4, align 4
  %1860 = icmp eq i32 %1859, 1
  br i1 %1860, label %1861, label %1880

; <label>:1861                                    ; preds = %1858
  %1862 = load i32, i32* %2, align 4
  %1863 = load i32, i32* %4, align 4
  %1864 = sext i32 %1863 to i64
  %1865 = load %union.rec*, %union.rec** %1, align 8
  %1866 = bitcast %union.rec* %1865 to %struct.word_type*
  %1867 = getelementptr inbounds %struct.word_type, %struct.word_type* %1866, i32 0, i32 3
  %1868 = bitcast %union.THIRD_UNION* %1867 to %struct.anon.6*
  %1869 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1868, i32 0, i32 0
  %1870 = getelementptr inbounds [2 x i32], [2 x i32]* %1869, i32 0, i64 %1864
  store i32 %1862, i32* %1870, align 4
  %1871 = load i32, i32* %3, align 4
  %1872 = load i32, i32* %4, align 4
  %1873 = sext i32 %1872 to i64
  %1874 = load %union.rec*, %union.rec** %1, align 8
  %1875 = bitcast %union.rec* %1874 to %struct.word_type*
  %1876 = getelementptr inbounds %struct.word_type, %struct.word_type* %1875, i32 0, i32 3
  %1877 = bitcast %union.THIRD_UNION* %1876 to %struct.anon.6*
  %1878 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds [2 x i32], [2 x i32]* %1878, i32 0, i64 %1873
  store i32 %1871, i32* %1879, align 4
  br label %1894

; <label>:1880                                    ; preds = %1858
  %1881 = load %union.rec*, %union.rec** %y, align 8
  %1882 = bitcast %union.rec* %1881 to %struct.word_type*
  %1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %1882, i32 0, i32 1
  %1884 = bitcast %union.FIRST_UNION* %1883 to %struct.FILE_POS*
  %1885 = load %union.rec*, %union.rec** %y, align 8
  %1886 = bitcast %union.rec* %1885 to %struct.word_type*
  %1887 = getelementptr inbounds %struct.word_type, %struct.word_type* %1886, i32 0, i32 1
  %1888 = bitcast %union.FIRST_UNION* %1887 to %struct.anon*
  %1889 = getelementptr inbounds %struct.anon, %struct.anon* %1888, i32 0, i32 0
  %1890 = load i8, i8* %1889, align 1
  %1891 = zext i8 %1890 to i32
  %1892 = call i8* @Image(i32 %1891)
  %1893 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 16, i32 4, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.12, i32 0, i32 0), i32 2, %struct.FILE_POS* %1884, i8* %1892)
  br label %1894

; <label>:1894                                    ; preds = %1880, %1861
  br label %1961

; <label>:1895                                    ; preds = %275, %275
  %1896 = load i32, i32* %4, align 4
  %1897 = icmp eq i32 %1896, 0
  %1898 = zext i1 %1897 to i32
  %1899 = load %union.rec*, %union.rec** %y, align 8
  %1900 = bitcast %union.rec* %1899 to %struct.word_type*
  %1901 = getelementptr inbounds %struct.word_type, %struct.word_type* %1900, i32 0, i32 1
  %1902 = bitcast %union.FIRST_UNION* %1901 to %struct.anon*
  %1903 = getelementptr inbounds %struct.anon, %struct.anon* %1902, i32 0, i32 0
  %1904 = load i8, i8* %1903, align 1
  %1905 = zext i8 %1904 to i32
  %1906 = icmp eq i32 %1905, 13
  %1907 = zext i1 %1906 to i32
  %1908 = icmp eq i32 %1898, %1907
  br i1 %1908, label %1912, label %1909

; <label>:1909                                    ; preds = %1895
  %1910 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1911 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1910, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.13, i32 0, i32 0))
  br label %1912

; <label>:1912                                    ; preds = %1909, %1895
  %1913 = load i32, i32* %2, align 4
  %1914 = load i32, i32* %4, align 4
  %1915 = sext i32 %1914 to i64
  %1916 = load %union.rec*, %union.rec** %1, align 8
  %1917 = bitcast %union.rec* %1916 to %struct.word_type*
  %1918 = getelementptr inbounds %struct.word_type, %struct.word_type* %1917, i32 0, i32 3
  %1919 = bitcast %union.THIRD_UNION* %1918 to %struct.anon.6*
  %1920 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1919, i32 0, i32 0
  %1921 = getelementptr inbounds [2 x i32], [2 x i32]* %1920, i32 0, i64 %1915
  store i32 %1913, i32* %1921, align 4
  %1922 = load i32, i32* %3, align 4
  %1923 = load i32, i32* %4, align 4
  %1924 = sext i32 %1923 to i64
  %1925 = load %union.rec*, %union.rec** %1, align 8
  %1926 = bitcast %union.rec* %1925 to %struct.word_type*
  %1927 = getelementptr inbounds %struct.word_type, %struct.word_type* %1926, i32 0, i32 3
  %1928 = bitcast %union.THIRD_UNION* %1927 to %struct.anon.6*
  %1929 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1928, i32 0, i32 1
  %1930 = getelementptr inbounds [2 x i32], [2 x i32]* %1929, i32 0, i64 %1924
  store i32 %1922, i32* %1930, align 4
  %1931 = load i32, i32* %2, align 4
  %1932 = load i32, i32* %4, align 4
  %1933 = sext i32 %1932 to i64
  %1934 = load %union.rec*, %union.rec** %y, align 8
  %1935 = bitcast %union.rec* %1934 to %struct.word_type*
  %1936 = getelementptr inbounds %struct.word_type, %struct.word_type* %1935, i32 0, i32 3
  %1937 = bitcast %union.THIRD_UNION* %1936 to %struct.anon.6*
  %1938 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1937, i32 0, i32 0
  %1939 = getelementptr inbounds [2 x i32], [2 x i32]* %1938, i32 0, i64 %1933
  store i32 %1931, i32* %1939, align 4
  %1940 = load i32, i32* %3, align 4
  %1941 = load i32, i32* %4, align 4
  %1942 = sext i32 %1941 to i64
  %1943 = load %union.rec*, %union.rec** %y, align 8
  %1944 = bitcast %union.rec* %1943 to %struct.word_type*
  %1945 = getelementptr inbounds %struct.word_type, %struct.word_type* %1944, i32 0, i32 3
  %1946 = bitcast %union.THIRD_UNION* %1945 to %struct.anon.6*
  %1947 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1946, i32 0, i32 1
  %1948 = getelementptr inbounds [2 x i32], [2 x i32]* %1947, i32 0, i64 %1942
  store i32 %1940, i32* %1948, align 4
  br label %1963

; <label>:1949                                    ; preds = %275, %275, %275, %275, %275, %275, %275
  br label %1950

; <label>:1950                                    ; preds = %275, %1949
  %1951 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1952 = load %union.rec*, %union.rec** %y, align 8
  %1953 = bitcast %union.rec* %1952 to %struct.word_type*
  %1954 = getelementptr inbounds %struct.word_type, %struct.word_type* %1953, i32 0, i32 1
  %1955 = bitcast %union.FIRST_UNION* %1954 to %struct.anon*
  %1956 = getelementptr inbounds %struct.anon, %struct.anon* %1955, i32 0, i32 0
  %1957 = load i8, i8* %1956, align 1
  %1958 = zext i8 %1957 to i32
  %1959 = call i8* @Image(i32 %1958)
  %1960 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.14, i32 0, i32 0), i32 0, %struct.FILE_POS* %1951, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.15, i32 0, i32 0), i8* %1959)
  br label %1961

; <label>:1961                                    ; preds = %1950, %1894, %1857, %1807, %1806, %1430, %1345, %1253, %1200, %991, %931, %897, %845, %844
  %1962 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1962, %union.rec** %1, align 8
  br label %6

; <label>:1963                                    ; preds = %188, %295, %317, %725, %753, %792, %837, %896, %930, %1065, %1912, %50
  ret void
}

declare void @SetLengthDim(i32) #1

declare void @RotateSize(i32*, i32*, i32*, i32*, %union.rec*, i32) #1

declare i8* @EchoLength(i32) #1

declare void @EnlargeToConstraint(i32*, i32*, %struct.CONSTRAINT*) #1

; Function Attrs: nounwind uwtable
define internal void @CatAdjustSize(%union.rec* %x, i32* %b, i32* %f, i32 %ratm, %union.rec* %y, i32 %dim) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.rec*, align 8
  %6 = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %pg = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %sg = alloca %union.rec*, align 8
  %sd = alloca %union.rec*, align 8
  %beffect = alloca i32, align 4
  %feffect = alloca i32, align 4
  %seffect = alloca i32, align 4
  %side = alloca i32, align 4
  %bb = alloca i32, align 4
  %ff = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32* %b, i32** %2, align 8
  store i32* %f, i32** %3, align 8
  store i32 %ratm, i32* %4, align 4
  store %union.rec* %y, %union.rec** %5, align 8
  store i32 %dim, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %72

; <label>:9                                       ; preds = %0
  %10 = load %union.rec*, %union.rec** %5, align 8
  %11 = bitcast %union.rec* %10 to %struct.word_type*
  %12 = getelementptr inbounds %struct.word_type, %struct.word_type* %11, i32 0, i32 1
  %13 = bitcast %union.FIRST_UNION* %12 to %struct.anon*
  %14 = getelementptr inbounds %struct.anon, %struct.anon* %13, i32 0, i32 0
  %15 = load i8, i8* %14, align 1
  %16 = zext i8 %15 to i32
  %17 = icmp eq i32 %16, 17
  br i1 %17, label %18, label %72

; <label>:18                                      ; preds = %9
  %19 = load %union.rec*, %union.rec** %5, align 8
  %20 = bitcast %union.rec* %19 to %struct.closure_type*
  %21 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %20, i32 0, i32 4
  %22 = bitcast %union.FOURTH_UNION* %21 to %struct.STYLE*
  %23 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %22, i32 0, i32 1
  %24 = bitcast %union.anon.10* %23 to %struct.anon.11*
  %25 = bitcast %struct.anon.11* %24 to i8*
  %26 = load i8, i8* %25, align 4
  %27 = lshr i8 %26, 4
  %28 = and i8 %27, 7
  %29 = zext i8 %28 to i32
  %30 = icmp eq i32 %29, 7
  br i1 %30, label %31, label %72

; <label>:31                                      ; preds = %18
  %32 = load i32*, i32** %2, align 8
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sext i32 %34 to i64
  %36 = load %union.rec*, %union.rec** %1, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 3
  %39 = bitcast %union.THIRD_UNION* %38 to %struct.anon.6*
  %40 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %39, i32 0, i32 0
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %40, i32 0, i64 %35
  store i32 %33, i32* %41, align 4
  %42 = load i32*, i32** %3, align 8
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* %6, align 4
  %45 = sext i32 %44 to i64
  %46 = load %union.rec*, %union.rec** %1, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 3
  %49 = bitcast %union.THIRD_UNION* %48 to %struct.anon.6*
  %50 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %49, i32 0, i32 1
  %51 = getelementptr inbounds [2 x i32], [2 x i32]* %50, i32 0, i64 %45
  store i32 %43, i32* %51, align 4
  %52 = load i32, i32* %6, align 4
  %53 = sext i32 %52 to i64
  %54 = load %union.rec*, %union.rec** %5, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 3
  %57 = bitcast %union.THIRD_UNION* %56 to %struct.anon.6*
  %58 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %57, i32 0, i32 0
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %58, i32 0, i64 %53
  %60 = load i32, i32* %59, align 4
  %61 = load i32*, i32** %2, align 8
  store i32 %60, i32* %61, align 4
  %62 = load i32, i32* %6, align 4
  %63 = sext i32 %62 to i64
  %64 = load %union.rec*, %union.rec** %5, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 3
  %67 = bitcast %union.THIRD_UNION* %66 to %struct.anon.6*
  %68 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %67, i32 0, i32 1
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i32 0, i64 %63
  %70 = load i32, i32* %69, align 4
  %71 = load i32*, i32** %3, align 8
  store i32 %70, i32* %71, align 4
  br label %479

; <label>:72                                      ; preds = %18, %9, %0
  %73 = load i32, i32* %6, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %82

; <label>:75                                      ; preds = %72
  %76 = load %union.rec*, %union.rec** %1, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 1
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 1
  %81 = load %union.rec*, %union.rec** %80, align 8
  br label %89

; <label>:82                                      ; preds = %72
  %83 = load %union.rec*, %union.rec** %1, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  br label %89

; <label>:89                                      ; preds = %82, %75
  %90 = phi %union.rec* [ %81, %75 ], [ %88, %82 ]
  store %union.rec* %90, %union.rec** %link, align 8
  %91 = load %union.rec*, %union.rec** %link, align 8
  %92 = load i32, i32* %4, align 4
  call void @SetNeighbours(%union.rec* %91, i32 %92, %union.rec** %pg, %union.rec** %prec_def, %union.rec** %sg, %union.rec** %sd, i32* %side)
  %93 = load %union.rec*, %union.rec** %1, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 1
  %96 = bitcast %union.FIRST_UNION* %95 to %struct.anon*
  %97 = getelementptr inbounds %struct.anon, %struct.anon* %96, i32 0, i32 0
  %98 = load i8, i8* %97, align 1
  %99 = zext i8 %98 to i32
  %100 = icmp sge i32 %99, 2
  br i1 %100, label %101, label %235

; <label>:101                                     ; preds = %89
  %102 = load %union.rec*, %union.rec** %1, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 1
  %105 = bitcast %union.FIRST_UNION* %104 to %struct.anon*
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp sle i32 %108, 8
  br i1 %109, label %110, label %235

; <label>:110                                     ; preds = %101
  %111 = load %union.rec*, %union.rec** %pg, align 8
  %112 = icmp eq %union.rec* %111, null
  br i1 %112, label %113, label %116

; <label>:113                                     ; preds = %110
  %114 = load i32*, i32** %2, align 8
  %115 = load i32, i32* %114, align 4
  br label %134

; <label>:116                                     ; preds = %110
  %117 = load i32, i32* %6, align 4
  %118 = sext i32 %117 to i64
  %119 = load %union.rec*, %union.rec** %prec_def, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 3
  %122 = bitcast %union.THIRD_UNION* %121 to %struct.anon.6*
  %123 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %122, i32 0, i32 1
  %124 = getelementptr inbounds [2 x i32], [2 x i32]* %123, i32 0, i64 %118
  %125 = load i32, i32* %124, align 4
  %126 = load i32*, i32** %2, align 8
  %127 = load i32, i32* %126, align 4
  %128 = load i32*, i32** %3, align 8
  %129 = load i32, i32* %128, align 4
  %130 = load %union.rec*, %union.rec** %pg, align 8
  %131 = bitcast %union.rec* %130 to %struct.gapobj_type*
  %132 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %131, i32 0, i32 3
  %133 = call i32 @MinGap(i32 %125, i32 %127, i32 %129, %struct.GAP* %132)
  br label %134

; <label>:134                                     ; preds = %116, %113
  %135 = phi i32 [ %115, %113 ], [ %133, %116 ]
  store i32 %135, i32* %beffect, align 4
  %136 = load %union.rec*, %union.rec** %sg, align 8
  %137 = icmp eq %union.rec* %136, null
  br i1 %137, label %138, label %141

; <label>:138                                     ; preds = %134
  %139 = load i32*, i32** %3, align 8
  %140 = load i32, i32* %139, align 4
  br label %166

; <label>:141                                     ; preds = %134
  %142 = load i32*, i32** %3, align 8
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %6, align 4
  %145 = sext i32 %144 to i64
  %146 = load %union.rec*, %union.rec** %sd, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 3
  %149 = bitcast %union.THIRD_UNION* %148 to %struct.anon.6*
  %150 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x i32], [2 x i32]* %150, i32 0, i64 %145
  %152 = load i32, i32* %151, align 4
  %153 = load i32, i32* %6, align 4
  %154 = sext i32 %153 to i64
  %155 = load %union.rec*, %union.rec** %sd, align 8
  %156 = bitcast %union.rec* %155 to %struct.word_type*
  %157 = getelementptr inbounds %struct.word_type, %struct.word_type* %156, i32 0, i32 3
  %158 = bitcast %union.THIRD_UNION* %157 to %struct.anon.6*
  %159 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %158, i32 0, i32 1
  %160 = getelementptr inbounds [2 x i32], [2 x i32]* %159, i32 0, i64 %154
  %161 = load i32, i32* %160, align 4
  %162 = load %union.rec*, %union.rec** %sg, align 8
  %163 = bitcast %union.rec* %162 to %struct.gapobj_type*
  %164 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %163, i32 0, i32 3
  %165 = call i32 @MinGap(i32 %143, i32 %152, i32 %161, %struct.GAP* %164)
  br label %166

; <label>:166                                     ; preds = %141, %138
  %167 = phi i32 [ %140, %138 ], [ %165, %141 ]
  store i32 %167, i32* %feffect, align 4
  %168 = load %union.rec*, %union.rec** %pg, align 8
  %169 = icmp eq %union.rec* %168, null
  br i1 %169, label %170, label %186

; <label>:170                                     ; preds = %166
  %171 = load %union.rec*, %union.rec** %sg, align 8
  %172 = icmp eq %union.rec* %171, null
  br i1 %172, label %173, label %174

; <label>:173                                     ; preds = %170
  br label %184

; <label>:174                                     ; preds = %170
  %175 = load i32, i32* %6, align 4
  %176 = sext i32 %175 to i64
  %177 = load %union.rec*, %union.rec** %sd, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 3
  %180 = bitcast %union.THIRD_UNION* %179 to %struct.anon.6*
  %181 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %180, i32 0, i32 0
  %182 = getelementptr inbounds [2 x i32], [2 x i32]* %181, i32 0, i64 %176
  %183 = load i32, i32* %182, align 4
  br label %184

; <label>:184                                     ; preds = %174, %173
  %185 = phi i32 [ 0, %173 ], [ %183, %174 ]
  br label %233

; <label>:186                                     ; preds = %166
  %187 = load %union.rec*, %union.rec** %sg, align 8
  %188 = icmp eq %union.rec* %187, null
  br i1 %188, label %189, label %199

; <label>:189                                     ; preds = %186
  %190 = load i32, i32* %6, align 4
  %191 = sext i32 %190 to i64
  %192 = load %union.rec*, %union.rec** %prec_def, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 3
  %195 = bitcast %union.THIRD_UNION* %194 to %struct.anon.6*
  %196 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %195, i32 0, i32 1
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i32 0, i64 %191
  %198 = load i32, i32* %197, align 4
  br label %231

; <label>:199                                     ; preds = %186
  %200 = load i32, i32* %6, align 4
  %201 = sext i32 %200 to i64
  %202 = load %union.rec*, %union.rec** %prec_def, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 3
  %205 = bitcast %union.THIRD_UNION* %204 to %struct.anon.6*
  %206 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %205, i32 0, i32 1
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %206, i32 0, i64 %201
  %208 = load i32, i32* %207, align 4
  %209 = load i32, i32* %6, align 4
  %210 = sext i32 %209 to i64
  %211 = load %union.rec*, %union.rec** %sd, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 3
  %214 = bitcast %union.THIRD_UNION* %213 to %struct.anon.6*
  %215 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %214, i32 0, i32 0
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %215, i32 0, i64 %210
  %217 = load i32, i32* %216, align 4
  %218 = load i32, i32* %6, align 4
  %219 = sext i32 %218 to i64
  %220 = load %union.rec*, %union.rec** %sd, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 3
  %223 = bitcast %union.THIRD_UNION* %222 to %struct.anon.6*
  %224 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %223, i32 0, i32 1
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %224, i32 0, i64 %219
  %226 = load i32, i32* %225, align 4
  %227 = load %union.rec*, %union.rec** %sg, align 8
  %228 = bitcast %union.rec* %227 to %struct.gapobj_type*
  %229 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %228, i32 0, i32 3
  %230 = call i32 @MinGap(i32 %208, i32 %217, i32 %226, %struct.GAP* %229)
  br label %231

; <label>:231                                     ; preds = %199, %189
  %232 = phi i32 [ %198, %189 ], [ %230, %199 ]
  br label %233

; <label>:233                                     ; preds = %231, %184
  %234 = phi i32 [ %185, %184 ], [ %232, %231 ]
  store i32 %234, i32* %seffect, align 4
  br label %377

; <label>:235                                     ; preds = %101, %89
  %236 = load %union.rec*, %union.rec** %pg, align 8
  %237 = icmp eq %union.rec* %236, null
  br i1 %237, label %238, label %251

; <label>:238                                     ; preds = %235
  %239 = load i32*, i32** %2, align 8
  %240 = load i32, i32* %239, align 4
  %241 = load i32, i32* %6, align 4
  %242 = sext i32 %241 to i64
  %243 = load %union.rec*, %union.rec** %1, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 3
  %246 = bitcast %union.THIRD_UNION* %245 to %struct.anon.6*
  %247 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x i32], [2 x i32]* %247, i32 0, i64 %242
  %249 = load i32, i32* %248, align 4
  %250 = sub nsw i32 %240, %249
  br label %301

; <label>:251                                     ; preds = %235
  %252 = load i32, i32* %6, align 4
  %253 = sext i32 %252 to i64
  %254 = load %union.rec*, %union.rec** %prec_def, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 3
  %257 = bitcast %union.THIRD_UNION* %256 to %struct.anon.6*
  %258 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %257, i32 0, i32 1
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %258, i32 0, i64 %253
  %260 = load i32, i32* %259, align 4
  %261 = load i32*, i32** %2, align 8
  %262 = load i32, i32* %261, align 4
  %263 = load i32*, i32** %3, align 8
  %264 = load i32, i32* %263, align 4
  %265 = load %union.rec*, %union.rec** %pg, align 8
  %266 = bitcast %union.rec* %265 to %struct.gapobj_type*
  %267 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %266, i32 0, i32 3
  %268 = call i32 @MinGap(i32 %260, i32 %262, i32 %264, %struct.GAP* %267)
  %269 = load i32, i32* %6, align 4
  %270 = sext i32 %269 to i64
  %271 = load %union.rec*, %union.rec** %prec_def, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 3
  %274 = bitcast %union.THIRD_UNION* %273 to %struct.anon.6*
  %275 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %274, i32 0, i32 1
  %276 = getelementptr inbounds [2 x i32], [2 x i32]* %275, i32 0, i64 %270
  %277 = load i32, i32* %276, align 4
  %278 = load i32, i32* %6, align 4
  %279 = sext i32 %278 to i64
  %280 = load %union.rec*, %union.rec** %1, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 3
  %283 = bitcast %union.THIRD_UNION* %282 to %struct.anon.6*
  %284 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %283, i32 0, i32 0
  %285 = getelementptr inbounds [2 x i32], [2 x i32]* %284, i32 0, i64 %279
  %286 = load i32, i32* %285, align 4
  %287 = load i32, i32* %6, align 4
  %288 = sext i32 %287 to i64
  %289 = load %union.rec*, %union.rec** %1, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 3
  %292 = bitcast %union.THIRD_UNION* %291 to %struct.anon.6*
  %293 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %292, i32 0, i32 1
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %293, i32 0, i64 %288
  %295 = load i32, i32* %294, align 4
  %296 = load %union.rec*, %union.rec** %pg, align 8
  %297 = bitcast %union.rec* %296 to %struct.gapobj_type*
  %298 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %297, i32 0, i32 3
  %299 = call i32 @MinGap(i32 %277, i32 %286, i32 %295, %struct.GAP* %298)
  %300 = sub nsw i32 %268, %299
  br label %301

; <label>:301                                     ; preds = %251, %238
  %302 = phi i32 [ %250, %238 ], [ %300, %251 ]
  store i32 %302, i32* %beffect, align 4
  %303 = load %union.rec*, %union.rec** %sg, align 8
  %304 = icmp eq %union.rec* %303, null
  br i1 %304, label %305, label %318

; <label>:305                                     ; preds = %301
  %306 = load i32*, i32** %3, align 8
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %6, align 4
  %309 = sext i32 %308 to i64
  %310 = load %union.rec*, %union.rec** %1, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 3
  %313 = bitcast %union.THIRD_UNION* %312 to %struct.anon.6*
  %314 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %313, i32 0, i32 1
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %314, i32 0, i64 %309
  %316 = load i32, i32* %315, align 4
  %317 = sub nsw i32 %307, %316
  br label %375

; <label>:318                                     ; preds = %301
  %319 = load i32*, i32** %3, align 8
  %320 = load i32, i32* %319, align 4
  %321 = load i32, i32* %6, align 4
  %322 = sext i32 %321 to i64
  %323 = load %union.rec*, %union.rec** %sd, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 3
  %326 = bitcast %union.THIRD_UNION* %325 to %struct.anon.6*
  %327 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %326, i32 0, i32 0
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %327, i32 0, i64 %322
  %329 = load i32, i32* %328, align 4
  %330 = load i32, i32* %6, align 4
  %331 = sext i32 %330 to i64
  %332 = load %union.rec*, %union.rec** %sd, align 8
  %333 = bitcast %union.rec* %332 to %struct.word_type*
  %334 = getelementptr inbounds %struct.word_type, %struct.word_type* %333, i32 0, i32 3
  %335 = bitcast %union.THIRD_UNION* %334 to %struct.anon.6*
  %336 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %335, i32 0, i32 1
  %337 = getelementptr inbounds [2 x i32], [2 x i32]* %336, i32 0, i64 %331
  %338 = load i32, i32* %337, align 4
  %339 = load %union.rec*, %union.rec** %sg, align 8
  %340 = bitcast %union.rec* %339 to %struct.gapobj_type*
  %341 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %340, i32 0, i32 3
  %342 = call i32 @MinGap(i32 %320, i32 %329, i32 %338, %struct.GAP* %341)
  %343 = load i32, i32* %6, align 4
  %344 = sext i32 %343 to i64
  %345 = load %union.rec*, %union.rec** %1, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 3
  %348 = bitcast %union.THIRD_UNION* %347 to %struct.anon.6*
  %349 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %348, i32 0, i32 1
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %349, i32 0, i64 %344
  %351 = load i32, i32* %350, align 4
  %352 = load i32, i32* %6, align 4
  %353 = sext i32 %352 to i64
  %354 = load %union.rec*, %union.rec** %sd, align 8
  %355 = bitcast %union.rec* %354 to %struct.word_type*
  %356 = getelementptr inbounds %struct.word_type, %struct.word_type* %355, i32 0, i32 3
  %357 = bitcast %union.THIRD_UNION* %356 to %struct.anon.6*
  %358 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x i32], [2 x i32]* %358, i32 0, i64 %353
  %360 = load i32, i32* %359, align 4
  %361 = load i32, i32* %6, align 4
  %362 = sext i32 %361 to i64
  %363 = load %union.rec*, %union.rec** %sd, align 8
  %364 = bitcast %union.rec* %363 to %struct.word_type*
  %365 = getelementptr inbounds %struct.word_type, %struct.word_type* %364, i32 0, i32 3
  %366 = bitcast %union.THIRD_UNION* %365 to %struct.anon.6*
  %367 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %366, i32 0, i32 1
  %368 = getelementptr inbounds [2 x i32], [2 x i32]* %367, i32 0, i64 %362
  %369 = load i32, i32* %368, align 4
  %370 = load %union.rec*, %union.rec** %sg, align 8
  %371 = bitcast %union.rec* %370 to %struct.gapobj_type*
  %372 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %371, i32 0, i32 3
  %373 = call i32 @MinGap(i32 %351, i32 %360, i32 %369, %struct.GAP* %372)
  %374 = sub nsw i32 %342, %373
  br label %375

; <label>:375                                     ; preds = %318, %305
  %376 = phi i32 [ %317, %305 ], [ %374, %318 ]
  store i32 %376, i32* %feffect, align 4
  store i32 0, i32* %seffect, align 4
  br label %377

; <label>:377                                     ; preds = %375, %233
  %378 = load i32*, i32** %2, align 8
  %379 = load i32, i32* %378, align 4
  %380 = load i32, i32* %6, align 4
  %381 = sext i32 %380 to i64
  %382 = load %union.rec*, %union.rec** %1, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 3
  %385 = bitcast %union.THIRD_UNION* %384 to %struct.anon.6*
  %386 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x i32], [2 x i32]* %386, i32 0, i64 %381
  store i32 %379, i32* %387, align 4
  %388 = load i32*, i32** %3, align 8
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %6, align 4
  %391 = sext i32 %390 to i64
  %392 = load %union.rec*, %union.rec** %1, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 3
  %395 = bitcast %union.THIRD_UNION* %394 to %struct.anon.6*
  %396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %395, i32 0, i32 1
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %396, i32 0, i64 %391
  store i32 %389, i32* %397, align 4
  %398 = load i32, i32* %side, align 4
  switch i32 %398, label %474 [
    i32 151, label %399
    i32 152, label %424
    i32 153, label %449
  ]

; <label>:399                                     ; preds = %377
  %400 = load i32, i32* %6, align 4
  %401 = sext i32 %400 to i64
  %402 = load %union.rec*, %union.rec** %5, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 3
  %405 = bitcast %union.THIRD_UNION* %404 to %struct.anon.6*
  %406 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %405, i32 0, i32 0
  %407 = getelementptr inbounds [2 x i32], [2 x i32]* %406, i32 0, i64 %401
  %408 = load i32, i32* %407, align 4
  %409 = load i32, i32* %beffect, align 4
  %410 = add nsw i32 %408, %409
  %411 = load i32, i32* %feffect, align 4
  %412 = add nsw i32 %410, %411
  %413 = load i32, i32* %seffect, align 4
  %414 = sub nsw i32 %412, %413
  store i32 %414, i32* %bb, align 4
  %415 = load i32, i32* %6, align 4
  %416 = sext i32 %415 to i64
  %417 = load %union.rec*, %union.rec** %5, align 8
  %418 = bitcast %union.rec* %417 to %struct.word_type*
  %419 = getelementptr inbounds %struct.word_type, %struct.word_type* %418, i32 0, i32 3
  %420 = bitcast %union.THIRD_UNION* %419 to %struct.anon.6*
  %421 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %420, i32 0, i32 1
  %422 = getelementptr inbounds [2 x i32], [2 x i32]* %421, i32 0, i64 %416
  %423 = load i32, i32* %422, align 4
  store i32 %423, i32* %ff, align 4
  br label %474

; <label>:424                                     ; preds = %377
  %425 = load i32, i32* %6, align 4
  %426 = sext i32 %425 to i64
  %427 = load %union.rec*, %union.rec** %5, align 8
  %428 = bitcast %union.rec* %427 to %struct.word_type*
  %429 = getelementptr inbounds %struct.word_type, %struct.word_type* %428, i32 0, i32 3
  %430 = bitcast %union.THIRD_UNION* %429 to %struct.anon.6*
  %431 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %430, i32 0, i32 0
  %432 = getelementptr inbounds [2 x i32], [2 x i32]* %431, i32 0, i64 %426
  %433 = load i32, i32* %432, align 4
  %434 = load i32, i32* %beffect, align 4
  %435 = add nsw i32 %433, %434
  %436 = load i32, i32* %seffect, align 4
  %437 = sub nsw i32 %435, %436
  store i32 %437, i32* %bb, align 4
  %438 = load i32, i32* %6, align 4
  %439 = sext i32 %438 to i64
  %440 = load %union.rec*, %union.rec** %5, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 3
  %443 = bitcast %union.THIRD_UNION* %442 to %struct.anon.6*
  %444 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %443, i32 0, i32 1
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %444, i32 0, i64 %439
  %446 = load i32, i32* %445, align 4
  %447 = load i32, i32* %feffect, align 4
  %448 = add nsw i32 %446, %447
  store i32 %448, i32* %ff, align 4
  br label %474

; <label>:449                                     ; preds = %377
  %450 = load i32, i32* %6, align 4
  %451 = sext i32 %450 to i64
  %452 = load %union.rec*, %union.rec** %5, align 8
  %453 = bitcast %union.rec* %452 to %struct.word_type*
  %454 = getelementptr inbounds %struct.word_type, %struct.word_type* %453, i32 0, i32 3
  %455 = bitcast %union.THIRD_UNION* %454 to %struct.anon.6*
  %456 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %455, i32 0, i32 0
  %457 = getelementptr inbounds [2 x i32], [2 x i32]* %456, i32 0, i64 %451
  %458 = load i32, i32* %457, align 4
  store i32 %458, i32* %bb, align 4
  %459 = load i32, i32* %6, align 4
  %460 = sext i32 %459 to i64
  %461 = load %union.rec*, %union.rec** %5, align 8
  %462 = bitcast %union.rec* %461 to %struct.word_type*
  %463 = getelementptr inbounds %struct.word_type, %struct.word_type* %462, i32 0, i32 3
  %464 = bitcast %union.THIRD_UNION* %463 to %struct.anon.6*
  %465 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %464, i32 0, i32 1
  %466 = getelementptr inbounds [2 x i32], [2 x i32]* %465, i32 0, i64 %460
  %467 = load i32, i32* %466, align 4
  %468 = load i32, i32* %beffect, align 4
  %469 = add nsw i32 %467, %468
  %470 = load i32, i32* %feffect, align 4
  %471 = add nsw i32 %469, %470
  %472 = load i32, i32* %seffect, align 4
  %473 = sub nsw i32 %471, %472
  store i32 %473, i32* %ff, align 4
  br label %474

; <label>:474                                     ; preds = %377, %449, %424, %399
  %475 = load i32, i32* %bb, align 4
  %476 = load i32*, i32** %2, align 8
  store i32 %475, i32* %476, align 4
  %477 = load i32, i32* %ff, align 4
  %478 = load i32*, i32** %3, align 8
  store i32 %477, i32* %478, align 4
  br label %479

; <label>:479                                     ; preds = %474, %31
  ret void
}

declare i8* @Image(i32) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}