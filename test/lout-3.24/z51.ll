; ModuleID = 'z51.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct._IO_FILE = type { i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct._IO_marker*, %struct._IO_FILE*, i32, i32, i64, i16, i8, [1 x i8], i8*, i64, i8*, i8*, i8*, i8*, i64, i32, [20 x i8] }
%struct._IO_marker = type { %struct._IO_marker*, %struct._IO_FILE*, i32 }
%struct.FILE_POS = type { i8, i8, i16, i32 }
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%union.rec = type { %struct.head_type }
%struct.head_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.13, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i32 }
%struct.LIST = type { %union.rec*, %union.rec* }
%union.FIRST_UNION = type { %struct.FILE_POS }
%union.SECOND_UNION = type { %struct.anon.1 }
%struct.anon.1 = type { i32 }
%union.THIRD_UNION = type { %struct._IO_FILE*, [8 x i8] }
%union.FOURTH_UNION = type { %struct.STYLE }
%struct.STYLE = type { %union.anon, %union.anon.10, i16, i16, i32 }
%union.anon = type { %struct.GAP }
%struct.GAP = type { i16, i16 }
%union.anon.10 = type { %struct.GAP }
%union.anon.13 = type { %union.rec* }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@out_fp = internal global %struct._IO_FILE* null, align 8
@prologue_done = internal global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"Plain_CoordTranslate: should never be called!\00", align 1
@.str.2 = private unnamed_addr constant [42 x i8] c"Plain_CoordScale: should never be called!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"Plain_SaveGraphicState: should never be called!\00", align 1
@.str.4 = private unnamed_addr constant [51 x i8] c"Plain_RestoreGraphicState: should never be called!\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"Plain_PrintGraphicObject: should never be called!\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"Plain_DefineGraphicNames: should never be called!\00", align 1
@.str.7 = private unnamed_addr constant [55 x i8] c"Plain_SaveTranslateDefineSave: should never be called!\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"Plain_PrintGraphicInclude: should never be called!\00", align 1
@plain_back = internal global %struct.back_end_rec { i32 2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i32 0, i32 0), i32 0, i32 0, i32 0, i32 0, i32 1, i32 0, i32 0, i32 0, void (%struct._IO_FILE*)* @Plain_PrintInitialize, void (i8*, i32, i32)* @Plain_PrintLength, void (%union.rec*, i32, i8*, i8*)* @Plain_PrintPageSetupForFont, void (i8*, i32)* @Plain_PrintPageResourceForFont, void (i32)* @Plain_PrintMapping, void (i32, i32, i8*)* @Plain_PrintBeforeFirstPage, void (i32, i32, i8*)* @Plain_PrintBetweenPages, void ()* @Plain_PrintAfterLastPage, void (%union.rec*, i32, i32)* @Plain_PrintWord, void (%union.rec*, i32, i32, %union.rec*)* @Plain_PrintPlainGraphic, void (i32, i32, i32, i32, i32)* @Plain_PrintUnderline, void (i32, i32)* @Plain_CoordTranslate, void (i32)* @Plain_CoordRotate, void (float, float)* @Plain_CoordScale, void (%union.rec*)* @Plain_SaveGraphicState, void ()* @Plain_RestoreGraphicState, void (%union.rec*)* @Plain_PrintGraphicObject, void (%union.rec*)* @Plain_DefineGraphicNames, void (%union.rec*, i32, i32)* @Plain_SaveTranslateDefineSave, void (%union.rec*, i32, i32)* @Plain_PrintGraphicInclude, void (%union.rec*, i32, i32, i32, i32)* @Plain_LinkSource, void (%union.rec*, i32, i32, i32, i32)* @Plain_LinkDest, void (...)* bitcast (void ()* @Plain_LinkCheck to void (...)*) }, align 8
@Plain_BackEnd = global %struct.back_end_rec* @plain_back, align 8
@PlainCharWidth = common global i32 0, align 4
@PlainCharHeight = common global i32 0, align 4
@PlainFormFeed = common global i32 0, align 4
@.str.9 = private unnamed_addr constant [10 x i8] c"PlainText\00", align 1
@.str.10 = private unnamed_addr constant [6 x i8] c"%.2fs\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"%.2ff\00", align 1
@hsize = internal global i32 0, align 4
@vsize = internal global i32 0, align 4
@page = internal global i8* null, align 8
@TotalWordCount = external global i32, align 4
@.str.12 = private unnamed_addr constant [19 x i8] c"PrintWord:  h < 0!\00", align 1
@.str.13 = private unnamed_addr constant [24 x i8] c"PrintWord:  h >= hsize!\00", align 1
@.str.14 = private unnamed_addr constant [19 x i8] c"PrintWord:  v < 0!\00", align 1
@.str.15 = private unnamed_addr constant [24 x i8] c"PrintWord:  v >= vsize!\00", align 1
@.str.16 = private unnamed_addr constant [52 x i8] c"word %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.17 = private unnamed_addr constant [43 x i8] c"left parameter of %s must be a simple word\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"@PlainGraphic\00", align 1
@.str.19 = private unnamed_addr constant [46 x i8] c"left parameter of %s must be a non-empty word\00", align 1
@.str.20 = private unnamed_addr constant [52 x i8] c"fill %s deleted (internal error, off page at %d,%d)\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Plain_CoordRotate: should never be called!\00", align 1

; Function Attrs: nounwind uwtable
define void @Plain_PrintInitialize(%struct._IO_FILE* %fp) #0 {
  %1 = alloca %struct._IO_FILE*, align 8
  store %struct._IO_FILE* %fp, %struct._IO_FILE** %1, align 8
  %2 = load %struct._IO_FILE*, %struct._IO_FILE** %1, align 8
  store %struct._IO_FILE* %2, %struct._IO_FILE** @out_fp, align 8
  store i32 0, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_CoordTranslate(i32 %xdist, i32 %ydist) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  store i32 %xdist, i32* %1, align 4
  store i32 %ydist, i32* %2, align 4
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i32 0, i32 0))
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @Plain_CoordScale(float %hfactor, float %vfactor) #0 {
  %1 = alloca float, align 4
  %2 = alloca float, align 4
  store float %hfactor, float* %1, align 4
  store float %vfactor, float* %2, align 4
  %3 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %4 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %3, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_SaveGraphicState(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_RestoreGraphicState() #0 {
  %1 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %1, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.4, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_PrintGraphicObject(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.5, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_DefineGraphicNames(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.6, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_SaveTranslateDefineSave(%union.rec* %x, i32 %xdist, i32 %ydist) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xdist, i32* %2, align 4
  store i32 %ydist, i32* %3, align 4
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.7, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define void @Plain_PrintGraphicInclude(%union.rec* %x, i32 %colmark, i32 %rowmark) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %colmark, i32* %2, align 4
  store i32 %rowmark, i32* %3, align 4
  %4 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %5 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %4, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintLength(i8* %buff, i32 %length, i32 %length_dim) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i8* %buff, i8** %1, align 8
  store i32 %length, i32* %2, align 4
  store i32 %length_dim, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %15

; <label>:6                                       ; preds = %0
  %7 = load i8*, i8** %1, align 8
  %8 = load i32, i32* %2, align 4
  %9 = sitofp i32 %8 to float
  %10 = load i32, i32* @PlainCharWidth, align 4
  %11 = sitofp i32 %10 to float
  %12 = fdiv float %9, %11
  %13 = fpext float %12 to double
  %14 = call i32 (i8*, i8*, ...) @sprintf(i8* %7, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.10, i32 0, i32 0), double %13) #4
  br label %24

; <label>:15                                      ; preds = %0
  %16 = load i8*, i8** %1, align 8
  %17 = load i32, i32* %2, align 4
  %18 = sitofp i32 %17 to float
  %19 = load i32, i32* @PlainCharHeight, align 4
  %20 = sitofp i32 %19 to float
  %21 = fdiv float %18, %20
  %22 = fpext float %21 to double
  %23 = call i32 (i8*, i8*, ...) @sprintf(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.11, i32 0, i32 0), double %22) #4
  br label %24

; <label>:24                                      ; preds = %15, %6
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPageSetupForFont(%union.rec* %face, i32 %font_curr_page, i8* %font_name, i8* %first_size_str) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  store %union.rec* %face, %union.rec** %1, align 8
  store i32 %font_curr_page, i32* %2, align 4
  store i8* %font_name, i8** %3, align 8
  store i8* %first_size_str, i8** %4, align 8
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPageResourceForFont(i8* %font_name, i32 %first) #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i32, align 4
  store i8* %font_name, i8** %1, align 8
  store i32 %first, i32* %2, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintMapping(i32 %m) #0 {
  %1 = alloca i32, align 4
  store i32 %m, i32* %1, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintBeforeFirstPage(i32 %h, i32 %v, i8* %label) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  store i32 %h, i32* %1, align 4
  store i32 %v, i32* %2, align 4
  store i8* %label, i8** %3, align 8
  %4 = load i32, i32* %1, align 4
  %5 = sub nsw i32 %4, 1
  %6 = load i32, i32* @PlainCharWidth, align 4
  %7 = sdiv i32 %5, %6
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @hsize, align 4
  %9 = load i32, i32* %2, align 4
  %10 = sub nsw i32 %9, 1
  %11 = load i32, i32* @PlainCharHeight, align 4
  %12 = sdiv i32 %10, %11
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @vsize, align 4
  %14 = load i32, i32* @hsize, align 4
  %15 = load i32, i32* @vsize, align 4
  %16 = mul nsw i32 %14, %15
  %17 = sext i32 %16 to i64
  %18 = mul i64 %17, 1
  %19 = call noalias i8* @malloc(i64 %18) #4
  store i8* %19, i8** @page, align 8
  store i32 0, i32* %i, align 4
  br label %20

; <label>:20                                      ; preds = %42, %0
  %21 = load i32, i32* %i, align 4
  %22 = load i32, i32* @vsize, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %45

; <label>:24                                      ; preds = %20
  store i32 0, i32* %j, align 4
  br label %25

; <label>:25                                      ; preds = %38, %24
  %26 = load i32, i32* %j, align 4
  %27 = load i32, i32* @hsize, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %41

; <label>:29                                      ; preds = %25
  %30 = load i32, i32* %i, align 4
  %31 = load i32, i32* @hsize, align 4
  %32 = mul nsw i32 %30, %31
  %33 = load i32, i32* %j, align 4
  %34 = add nsw i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = load i8*, i8** @page, align 8
  %37 = getelementptr inbounds i8, i8* %36, i64 %35
  store i8 32, i8* %37, align 1
  br label %38

; <label>:38                                      ; preds = %29
  %39 = load i32, i32* %j, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %j, align 4
  br label %25

; <label>:41                                      ; preds = %25
  br label %42

; <label>:42                                      ; preds = %41
  %43 = load i32, i32* %i, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %i, align 4
  br label %20

; <label>:45                                      ; preds = %20
  store i32 1, i32* @prologue_done, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintBetweenPages(i32 %h, i32 %v, i8* %label) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %new_hsize = alloca i32, align 4
  %new_vsize = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jmax = alloca i32, align 4
  store i32 %h, i32* %1, align 4
  store i32 %v, i32* %2, align 4
  store i8* %label, i8** %3, align 8
  %4 = load i32, i32* @vsize, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %57, %0
  %7 = load i32, i32* %i, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %60

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* @hsize, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %jmax, align 4
  br label %12

; <label>:12                                      ; preds = %30, %9
  %13 = load i32, i32* %jmax, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %27

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @hsize, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %jmax, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = load i8*, i8** @page, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br label %27

; <label>:27                                      ; preds = %15, %12
  %28 = phi i1 [ false, %12 ], [ %26, %15 ]
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %27
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32, i32* %jmax, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %jmax, align 4
  br label %12

; <label>:33                                      ; preds = %27
  store i32 0, i32* %j, align 4
  br label %34

; <label>:34                                      ; preds = %51, %33
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %jmax, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %54

; <label>:38                                      ; preds = %34
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @hsize, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %j, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = load i8*, i8** @page, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %50 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %49)
  br label %51

; <label>:51                                      ; preds = %38
  %52 = load i32, i32* %j, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %j, align 4
  br label %34

; <label>:54                                      ; preds = %34
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %56 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %55)
  br label %57

; <label>:57                                      ; preds = %54
  %58 = load i32, i32* %i, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %i, align 4
  br label %6

; <label>:60                                      ; preds = %6
  %61 = load i32, i32* @PlainFormFeed, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

; <label>:63                                      ; preds = %60
  %64 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %65 = call i32 @_IO_putc(i32 12, %struct._IO_FILE* %64)
  br label %66

; <label>:66                                      ; preds = %63, %60
  %67 = load i32, i32* %1, align 4
  %68 = sub nsw i32 %67, 1
  %69 = load i32, i32* @PlainCharWidth, align 4
  %70 = sdiv i32 %68, %69
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %new_hsize, align 4
  %72 = load i32, i32* %2, align 4
  %73 = sub nsw i32 %72, 1
  %74 = load i32, i32* @PlainCharHeight, align 4
  %75 = sdiv i32 %73, %74
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %new_vsize, align 4
  %77 = load i32, i32* %new_hsize, align 4
  %78 = load i32, i32* @hsize, align 4
  %79 = icmp ne i32 %77, %78
  br i1 %79, label %84, label %80

; <label>:80                                      ; preds = %66
  %81 = load i32, i32* %new_vsize, align 4
  %82 = load i32, i32* @vsize, align 4
  %83 = icmp ne i32 %81, %82
  br i1 %83, label %84, label %94

; <label>:84                                      ; preds = %80, %66
  %85 = load i8*, i8** @page, align 8
  call void @free(i8* %85) #4
  %86 = load i32, i32* %new_hsize, align 4
  store i32 %86, i32* @hsize, align 4
  %87 = load i32, i32* %new_vsize, align 4
  store i32 %87, i32* @vsize, align 4
  %88 = load i32, i32* @hsize, align 4
  %89 = load i32, i32* @vsize, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 1
  %93 = call noalias i8* @malloc(i64 %92) #4
  store i8* %93, i8** @page, align 8
  br label %94

; <label>:94                                      ; preds = %84, %80
  store i32 0, i32* %i, align 4
  br label %95

; <label>:95                                      ; preds = %117, %94
  %96 = load i32, i32* %i, align 4
  %97 = load i32, i32* @vsize, align 4
  %98 = icmp slt i32 %96, %97
  br i1 %98, label %99, label %120

; <label>:99                                      ; preds = %95
  store i32 0, i32* %j, align 4
  br label %100

; <label>:100                                     ; preds = %113, %99
  %101 = load i32, i32* %j, align 4
  %102 = load i32, i32* @hsize, align 4
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %116

; <label>:104                                     ; preds = %100
  %105 = load i32, i32* %i, align 4
  %106 = load i32, i32* @hsize, align 4
  %107 = mul nsw i32 %105, %106
  %108 = load i32, i32* %j, align 4
  %109 = add nsw i32 %107, %108
  %110 = sext i32 %109 to i64
  %111 = load i8*, i8** @page, align 8
  %112 = getelementptr inbounds i8, i8* %111, i64 %110
  store i8 32, i8* %112, align 1
  br label %113

; <label>:113                                     ; preds = %104
  %114 = load i32, i32* %j, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %j, align 4
  br label %100

; <label>:116                                     ; preds = %100
  br label %117

; <label>:117                                     ; preds = %116
  %118 = load i32, i32* %i, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %i, align 4
  br label %95

; <label>:120                                     ; preds = %95
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintAfterLastPage() #0 {
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %jmax = alloca i32, align 4
  %1 = load i32, i32* @prologue_done, align 4
  %2 = icmp ne i32 %1, 0
  br i1 %2, label %3, label %61

; <label>:3                                       ; preds = %0
  %4 = load i32, i32* @vsize, align 4
  %5 = sub nsw i32 %4, 1
  store i32 %5, i32* %i, align 4
  br label %6

; <label>:6                                       ; preds = %57, %3
  %7 = load i32, i32* %i, align 4
  %8 = icmp sge i32 %7, 0
  br i1 %8, label %9, label %60

; <label>:9                                       ; preds = %6
  %10 = load i32, i32* @hsize, align 4
  %11 = sub nsw i32 %10, 1
  store i32 %11, i32* %jmax, align 4
  br label %12

; <label>:12                                      ; preds = %30, %9
  %13 = load i32, i32* %jmax, align 4
  %14 = icmp sge i32 %13, 0
  br i1 %14, label %15, label %27

; <label>:15                                      ; preds = %12
  %16 = load i32, i32* %i, align 4
  %17 = load i32, i32* @hsize, align 4
  %18 = mul nsw i32 %16, %17
  %19 = load i32, i32* %jmax, align 4
  %20 = add nsw i32 %18, %19
  %21 = sext i32 %20 to i64
  %22 = load i8*, i8** @page, align 8
  %23 = getelementptr inbounds i8, i8* %22, i64 %21
  %24 = load i8, i8* %23, align 1
  %25 = zext i8 %24 to i32
  %26 = icmp eq i32 %25, 32
  br label %27

; <label>:27                                      ; preds = %15, %12
  %28 = phi i1 [ false, %12 ], [ %26, %15 ]
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %27
  br label %30

; <label>:30                                      ; preds = %29
  %31 = load i32, i32* %jmax, align 4
  %32 = add nsw i32 %31, -1
  store i32 %32, i32* %jmax, align 4
  br label %12

; <label>:33                                      ; preds = %27
  store i32 0, i32* %j, align 4
  br label %34

; <label>:34                                      ; preds = %51, %33
  %35 = load i32, i32* %j, align 4
  %36 = load i32, i32* %jmax, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %38, label %54

; <label>:38                                      ; preds = %34
  %39 = load i32, i32* %i, align 4
  %40 = load i32, i32* @hsize, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %j, align 4
  %43 = add nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = load i8*, i8** @page, align 8
  %46 = getelementptr inbounds i8, i8* %45, i64 %44
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %50 = call i32 @_IO_putc(i32 %48, %struct._IO_FILE* %49)
  br label %51

; <label>:51                                      ; preds = %38
  %52 = load i32, i32* %j, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %j, align 4
  br label %34

; <label>:54                                      ; preds = %34
  %55 = load %struct._IO_FILE*, %struct._IO_FILE** @out_fp, align 8
  %56 = call i32 @_IO_putc(i32 10, %struct._IO_FILE* %55)
  br label %57

; <label>:57                                      ; preds = %54
  %58 = load i32, i32* %i, align 4
  %59 = add nsw i32 %58, -1
  store i32 %59, i32* %i, align 4
  br label %6

; <label>:60                                      ; preds = %6
  br label %61

; <label>:61                                      ; preds = %60, %0
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintWord(%union.rec* %x, i32 %hpos, i32 %vpos) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %p = alloca i8*, align 8
  %i = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %hpos, i32* %2, align 4
  store i32 %vpos, i32* %3, align 4
  %4 = load i32, i32* @TotalWordCount, align 4
  %5 = add nsw i32 %4, 1
  store i32 %5, i32* @TotalWordCount, align 4
  %6 = load i32, i32* %2, align 4
  %7 = sitofp i32 %6 to float
  %8 = load i32, i32* @PlainCharWidth, align 4
  %9 = sitofp i32 %8 to float
  %10 = fdiv float %7, %9
  %11 = fpext float %10 to double
  %12 = fadd double %11, 5.000000e-01
  %13 = fptosi double %12 to i32
  store i32 %13, i32* %h, align 4
  %14 = load i32, i32* %3, align 4
  %15 = sitofp i32 %14 to float
  %16 = load i32, i32* @PlainCharHeight, align 4
  %17 = sitofp i32 %16 to float
  %18 = fdiv float %15, %17
  %19 = fptosi float %18 to i32
  store i32 %19, i32* %v, align 4
  %20 = load i32, i32* %h, align 4
  %21 = icmp sge i32 %20, 0
  br i1 %21, label %22, label %100

; <label>:22                                      ; preds = %0
  %23 = load i32, i32* %h, align 4
  %24 = sext i32 %23 to i64
  %25 = load %union.rec*, %union.rec** %1, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 4
  %28 = getelementptr inbounds [4 x i8], [4 x i8]* %27, i32 0, i32 0
  %29 = call i64 @strlen(i8* %28) #5
  %30 = add i64 %24, %29
  %31 = load i32, i32* @hsize, align 4
  %32 = sext i32 %31 to i64
  %33 = icmp ult i64 %30, %32
  br i1 %33, label %34, label %100

; <label>:34                                      ; preds = %22
  %35 = load i32, i32* %v, align 4
  %36 = icmp sge i32 %35, 0
  br i1 %36, label %37, label %100

; <label>:37                                      ; preds = %34
  %38 = load i32, i32* %v, align 4
  %39 = load i32, i32* @vsize, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %100

; <label>:41                                      ; preds = %37
  %42 = load i32, i32* %h, align 4
  %43 = icmp sge i32 %42, 0
  br i1 %43, label %47, label %44

; <label>:44                                      ; preds = %41
  %45 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %45, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.12, i32 0, i32 0))
  br label %47

; <label>:47                                      ; preds = %44, %41
  %48 = load i32, i32* %h, align 4
  %49 = load i32, i32* @hsize, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %54, label %51

; <label>:51                                      ; preds = %47
  %52 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %53 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.13, i32 0, i32 0))
  br label %54

; <label>:54                                      ; preds = %51, %47
  %55 = load i32, i32* %v, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %60, label %57

; <label>:57                                      ; preds = %54
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %58, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.14, i32 0, i32 0))
  br label %60

; <label>:60                                      ; preds = %57, %54
  %61 = load i32, i32* %v, align 4
  %62 = load i32, i32* @vsize, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %67, label %64

; <label>:64                                      ; preds = %60
  %65 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %66 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %65, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.15, i32 0, i32 0))
  br label %67

; <label>:67                                      ; preds = %64, %60
  %68 = load i32, i32* %v, align 4
  %69 = load i32, i32* @hsize, align 4
  %70 = mul nsw i32 %68, %69
  %71 = load i32, i32* %h, align 4
  %72 = add nsw i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = load i8*, i8** @page, align 8
  %75 = getelementptr inbounds i8, i8* %74, i64 %73
  store i8* %75, i8** %p, align 8
  store i32 0, i32* %i, align 4
  br label %76

; <label>:76                                      ; preds = %96, %67
  %77 = load i32, i32* %i, align 4
  %78 = sext i32 %77 to i64
  %79 = load %union.rec*, %union.rec** %1, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 4
  %82 = getelementptr inbounds [4 x i8], [4 x i8]* %81, i32 0, i64 %78
  %83 = load i8, i8* %82, align 1
  %84 = zext i8 %83 to i32
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %99

; <label>:86                                      ; preds = %76
  %87 = load i32, i32* %i, align 4
  %88 = sext i32 %87 to i64
  %89 = load %union.rec*, %union.rec** %1, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 4
  %92 = getelementptr inbounds [4 x i8], [4 x i8]* %91, i32 0, i64 %88
  %93 = load i8, i8* %92, align 1
  %94 = load i8*, i8** %p, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %p, align 8
  store i8 %93, i8* %94, align 1
  br label %96

; <label>:96                                      ; preds = %86
  %97 = load i32, i32* %i, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %i, align 4
  br label %76

; <label>:99                                      ; preds = %76
  br label %112

; <label>:100                                     ; preds = %37, %34, %22, %0
  %101 = load %union.rec*, %union.rec** %1, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 1
  %104 = bitcast %union.FIRST_UNION* %103 to %struct.FILE_POS*
  %105 = load %union.rec*, %union.rec** %1, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 4
  %108 = getelementptr inbounds [4 x i8], [4 x i8]* %107, i32 0, i32 0
  %109 = load i32, i32* %h, align 4
  %110 = load i32, i32* %v, align 4
  %111 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 1, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.16, i32 0, i32 0), i32 2, %struct.FILE_POS* %104, i8* %108, i32 %109, i32 %110)
  br label %112

; <label>:112                                     ; preds = %100, %99
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintPlainGraphic(%union.rec* %x, i32 %xmk, i32 %ymk, %union.rec* %z) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %union.rec*, align 8
  %i = alloca i32, align 4
  %len = alloca i32, align 4
  %starth = alloca i32, align 4
  %startv = alloca i32, align 4
  %stoph = alloca i32, align 4
  %stopv = alloca i32, align 4
  %h = alloca i32, align 4
  %v = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store i32 %xmk, i32* %2, align 4
  store i32 %ymk, i32* %3, align 4
  store %union.rec* %z, %union.rec** %4, align 8
  %5 = load %union.rec*, %union.rec** %1, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 1
  %8 = bitcast %union.FIRST_UNION* %7 to %struct.anon*
  %9 = getelementptr inbounds %struct.anon, %struct.anon* %8, i32 0, i32 0
  %10 = load i8, i8* %9, align 1
  %11 = zext i8 %10 to i32
  %12 = icmp ne i32 %11, 11
  br i1 %12, label %13, label %28

; <label>:13                                      ; preds = %0
  %14 = load %union.rec*, %union.rec** %1, align 8
  %15 = bitcast %union.rec* %14 to %struct.word_type*
  %16 = getelementptr inbounds %struct.word_type, %struct.word_type* %15, i32 0, i32 1
  %17 = bitcast %union.FIRST_UNION* %16 to %struct.anon*
  %18 = getelementptr inbounds %struct.anon, %struct.anon* %17, i32 0, i32 0
  %19 = load i8, i8* %18, align 1
  %20 = zext i8 %19 to i32
  %21 = icmp ne i32 %20, 12
  br i1 %21, label %22, label %28

; <label>:22                                      ; preds = %13
  %23 = load %union.rec*, %union.rec** %1, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 1
  %26 = bitcast %union.FIRST_UNION* %25 to %struct.FILE_POS*
  %27 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.17, i32 0, i32 0), i32 2, %struct.FILE_POS* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %178

; <label>:28                                      ; preds = %13, %0
  %29 = load %union.rec*, %union.rec** %1, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 4
  %32 = getelementptr inbounds [4 x i8], [4 x i8]* %31, i32 0, i32 0
  %33 = call i64 @strlen(i8* %32) #5
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %len, align 4
  %35 = load %union.rec*, %union.rec** %1, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 4
  %38 = getelementptr inbounds [4 x i8], [4 x i8]* %37, i32 0, i32 0
  %39 = call i64 @strlen(i8* %38) #5
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %47

; <label>:41                                      ; preds = %28
  %42 = load %union.rec*, %union.rec** %1, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 1
  %45 = bitcast %union.FIRST_UNION* %44 to %struct.FILE_POS*
  %46 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 3, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.19, i32 0, i32 0), i32 2, %struct.FILE_POS* %45, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i32 0, i32 0))
  br label %178

; <label>:47                                      ; preds = %28
  %48 = load i32, i32* %2, align 4
  %49 = sitofp i32 %48 to float
  %50 = load i32, i32* @PlainCharWidth, align 4
  %51 = sitofp i32 %50 to float
  %52 = fdiv float %49, %51
  %53 = fpext float %52 to double
  %54 = fadd double %53, 5.000000e-01
  %55 = fptosi double %54 to i32
  store i32 %55, i32* %starth, align 4
  %56 = load i32, i32* %3, align 4
  %57 = sitofp i32 %56 to float
  %58 = load i32, i32* @PlainCharHeight, align 4
  %59 = sitofp i32 %58 to float
  %60 = fdiv float %57, %59
  %61 = fptosi float %60 to i32
  store i32 %61, i32* %startv, align 4
  %62 = load i32, i32* %2, align 4
  %63 = sitofp i32 %62 to float
  %64 = load %union.rec*, %union.rec** %4, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 3
  %67 = bitcast %union.THIRD_UNION* %66 to %struct.anon.6*
  %68 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %68, i32 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = load %union.rec*, %union.rec** %4, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 3
  %74 = bitcast %union.THIRD_UNION* %73 to %struct.anon.6*
  %75 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %74, i32 0, i32 1
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i32 0, i64 0
  %77 = load i32, i32* %76, align 4
  %78 = add nsw i32 %70, %77
  %79 = sitofp i32 %78 to float
  %80 = fadd float %63, %79
  %81 = load i32, i32* @PlainCharWidth, align 4
  %82 = sitofp i32 %81 to float
  %83 = fdiv float %80, %82
  %84 = fpext float %83 to double
  %85 = fadd double %84, 5.000000e-01
  %86 = fptosi double %85 to i32
  store i32 %86, i32* %stoph, align 4
  %87 = load i32, i32* %3, align 4
  %88 = sitofp i32 %87 to float
  %89 = load %union.rec*, %union.rec** %4, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 3
  %92 = bitcast %union.THIRD_UNION* %91 to %struct.anon.6*
  %93 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x i32], [2 x i32]* %93, i32 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = load %union.rec*, %union.rec** %4, align 8
  %97 = bitcast %union.rec* %96 to %struct.word_type*
  %98 = getelementptr inbounds %struct.word_type, %struct.word_type* %97, i32 0, i32 3
  %99 = bitcast %union.THIRD_UNION* %98 to %struct.anon.6*
  %100 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %99, i32 0, i32 1
  %101 = getelementptr inbounds [2 x i32], [2 x i32]* %100, i32 0, i64 1
  %102 = load i32, i32* %101, align 4
  %103 = add nsw i32 %95, %102
  %104 = sitofp i32 %103 to float
  %105 = fsub float %88, %104
  %106 = load i32, i32* @PlainCharHeight, align 4
  %107 = sitofp i32 %106 to float
  %108 = fdiv float %105, %107
  %109 = fptosi float %108 to i32
  store i32 %109, i32* %stopv, align 4
  call void @SetLengthDim(i32 0)
  call void @SetLengthDim(i32 1)
  %110 = load i32, i32* %starth, align 4
  %111 = icmp sge i32 %110, 0
  br i1 %111, label %112, label %166

; <label>:112                                     ; preds = %47
  %113 = load i32, i32* %stoph, align 4
  %114 = load i32, i32* @hsize, align 4
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %166

; <label>:116                                     ; preds = %112
  %117 = load i32, i32* %startv, align 4
  %118 = icmp sge i32 %117, 0
  br i1 %118, label %119, label %166

; <label>:119                                     ; preds = %116
  %120 = load i32, i32* %stopv, align 4
  %121 = load i32, i32* @vsize, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %166

; <label>:123                                     ; preds = %119
  store i32 0, i32* %i, align 4
  %124 = load i32, i32* %startv, align 4
  %125 = sub nsw i32 %124, 1
  store i32 %125, i32* %v, align 4
  br label %126

; <label>:126                                     ; preds = %162, %123
  %127 = load i32, i32* %v, align 4
  %128 = load i32, i32* %stopv, align 4
  %129 = icmp sge i32 %127, %128
  br i1 %129, label %130, label %165

; <label>:130                                     ; preds = %126
  %131 = load i32, i32* %starth, align 4
  store i32 %131, i32* %h, align 4
  br label %132

; <label>:132                                     ; preds = %158, %130
  %133 = load i32, i32* %h, align 4
  %134 = load i32, i32* %stoph, align 4
  %135 = icmp slt i32 %133, %134
  br i1 %135, label %136, label %161

; <label>:136                                     ; preds = %132
  %137 = load i32, i32* %i, align 4
  %138 = load i32, i32* %len, align 4
  %139 = icmp eq i32 %137, %138
  br i1 %139, label %140, label %141

; <label>:140                                     ; preds = %136
  store i32 0, i32* %i, align 4
  br label %141

; <label>:141                                     ; preds = %140, %136
  %142 = load i32, i32* %i, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %i, align 4
  %144 = sext i32 %142 to i64
  %145 = load %union.rec*, %union.rec** %1, align 8
  %146 = bitcast %union.rec* %145 to %struct.word_type*
  %147 = getelementptr inbounds %struct.word_type, %struct.word_type* %146, i32 0, i32 4
  %148 = getelementptr inbounds [4 x i8], [4 x i8]* %147, i32 0, i64 %144
  %149 = load i8, i8* %148, align 1
  %150 = load i32, i32* %v, align 4
  %151 = load i32, i32* @hsize, align 4
  %152 = mul nsw i32 %150, %151
  %153 = load i32, i32* %h, align 4
  %154 = add nsw i32 %152, %153
  %155 = sext i32 %154 to i64
  %156 = load i8*, i8** @page, align 8
  %157 = getelementptr inbounds i8, i8* %156, i64 %155
  store i8 %149, i8* %157, align 1
  br label %158

; <label>:158                                     ; preds = %141
  %159 = load i32, i32* %h, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %h, align 4
  br label %132

; <label>:161                                     ; preds = %132
  br label %162

; <label>:162                                     ; preds = %161
  %163 = load i32, i32* %v, align 4
  %164 = add nsw i32 %163, -1
  store i32 %164, i32* %v, align 4
  br label %126

; <label>:165                                     ; preds = %126
  br label %178

; <label>:166                                     ; preds = %119, %116, %112, %47
  %167 = load %union.rec*, %union.rec** %1, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 1
  %170 = bitcast %union.FIRST_UNION* %169 to %struct.FILE_POS*
  %171 = load %union.rec*, %union.rec** %1, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 4
  %174 = getelementptr inbounds [4 x i8], [4 x i8]* %173, i32 0, i32 0
  %175 = load i32, i32* %h, align 4
  %176 = load i32, i32* %v, align 4
  %177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 51, i32 4, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.20, i32 0, i32 0), i32 2, %struct.FILE_POS* %170, i8* %174, i32 %175, i32 %176)
  br label %178

; <label>:178                                     ; preds = %22, %41, %166, %165
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_PrintUnderline(i32 %fnum, i32 %col, i32 %xstart, i32 %xstop, i32 %ymk) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %fnum, i32* %1, align 4
  store i32 %col, i32* %2, align 4
  store i32 %xstart, i32* %3, align 4
  store i32 %xstop, i32* %4, align 4
  store i32 %ymk, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_CoordRotate(i32 %amount) #0 {
  %1 = alloca i32, align 4
  store i32 %amount, i32* %1, align 4
  %2 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %3 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %2, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.21, i32 0, i32 0))
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_LinkSource(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.rec* %name, %union.rec** %1, align 8
  store i32 %llx, i32* %2, align 4
  store i32 %lly, i32* %3, align 4
  store i32 %urx, i32* %4, align 4
  store i32 %ury, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @Plain_LinkDest(%union.rec* %name, i32 %llx, i32 %lly, i32 %urx, i32 %ury) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.rec* %name, %union.rec** %1, align 8
  store i32 %llx, i32* %2, align 4
  store i32 %lly, i32* %3, align 4
  store i32 %urx, i32* %4, align 4
  store i32 %ury, i32* %5, align 4
  ret void
}

; Function Attrs: nounwind
declare i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @_IO_putc(i32, %struct._IO_FILE*) #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: nounwind readonly
declare i64 @strlen(i8*) #3

declare void @SetLengthDim(i32) #1

; Function Attrs: nounwind uwtable
define internal void @Plain_LinkCheck() #0 {
  ret void
}

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readonly }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
