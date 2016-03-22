; ModuleID = 'z15.c'
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
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.2 = type { i8, i8, i16 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"InvScaleConstraint: sf <= 0!\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"RotateConstraint: theta!\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.3 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"Constrained: x has no parent!\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"Constrained: COL_THR!\00", align 1
@.str.6 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"Constrained:\00", align 1

; Function Attrs: nounwind uwtable
define void @MinConstraint(%struct.CONSTRAINT* %xc, %struct.CONSTRAINT* %yc) #0 {
  %1 = alloca %struct.CONSTRAINT*, align 8
  %2 = alloca %struct.CONSTRAINT*, align 8
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %1, align 8
  store %struct.CONSTRAINT* %yc, %struct.CONSTRAINT** %2, align 8
  %3 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %4 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %7 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %14

; <label>:10                                      ; preds = %0
  %11 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %12 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  br label %18

; <label>:14                                      ; preds = %0
  %15 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %16 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  br label %18

; <label>:18                                      ; preds = %14, %10
  %19 = phi i32 [ %13, %10 ], [ %17, %14 ]
  %20 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %21 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %23 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %26 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %24, %27
  br i1 %28, label %29, label %33

; <label>:29                                      ; preds = %18
  %30 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %31 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  br label %37

; <label>:33                                      ; preds = %18
  %34 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %35 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  br label %37

; <label>:37                                      ; preds = %33, %29
  %38 = phi i32 [ %32, %29 ], [ %36, %33 ]
  %39 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %40 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %42 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %45 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = icmp slt i32 %43, %46
  br i1 %47, label %48, label %52

; <label>:48                                      ; preds = %37
  %49 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %50 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  br label %56

; <label>:52                                      ; preds = %37
  %53 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %54 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  br label %56

; <label>:56                                      ; preds = %52, %48
  %57 = phi i32 [ %51, %48 ], [ %55, %52 ]
  %58 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %59 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @SetSizeToMaxForwardConstraint(i32* %b, i32* %f, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.CONSTRAINT*, align 8
  store i32* %b, i32** %1, align 8
  store i32* %f, i32** %2, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %3, align 8
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %5 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %8 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = icmp slt i32 %6, %9
  br i1 %10, label %11, label %15

; <label>:11                                      ; preds = %0
  %12 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %13 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  br label %19

; <label>:15                                      ; preds = %0
  %16 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %17 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  br label %19

; <label>:19                                      ; preds = %15, %11
  %20 = phi i32 [ %14, %11 ], [ %18, %15 ]
  %21 = load i32*, i32** %2, align 8
  store i32 %20, i32* %21, align 4
  %22 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %23 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %26 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %2, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sub nsw i32 %27, %29
  %31 = icmp slt i32 %24, %30
  br i1 %31, label %32, label %36

; <label>:32                                      ; preds = %19
  %33 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %34 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  br label %43

; <label>:36                                      ; preds = %19
  %37 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %38 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32*, i32** %2, align 8
  %41 = load i32, i32* %40, align 4
  %42 = sub nsw i32 %39, %41
  br label %43

; <label>:43                                      ; preds = %36, %32
  %44 = phi i32 [ %35, %32 ], [ %42, %36 ]
  %45 = load i32*, i32** %1, align 8
  store i32 %44, i32* %45, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @EnlargeToConstraint(i32* %b, i32* %f, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca %struct.CONSTRAINT*, align 8
  store i32* %b, i32** %1, align 8
  store i32* %f, i32** %2, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %3, align 8
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %5 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = load i32*, i32** %1, align 8
  %8 = load i32, i32* %7, align 4
  %9 = sub nsw i32 %6, %8
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %11 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = icmp slt i32 %9, %12
  br i1 %13, label %14, label %21

; <label>:14                                      ; preds = %0
  %15 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %16 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load i32*, i32** %1, align 8
  %19 = load i32, i32* %18, align 4
  %20 = sub nsw i32 %17, %19
  br label %25

; <label>:21                                      ; preds = %0
  %22 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %23 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  br label %25

; <label>:25                                      ; preds = %21, %14
  %26 = phi i32 [ %20, %14 ], [ %24, %21 ]
  %27 = load i32*, i32** %2, align 8
  store i32 %26, i32* %27, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @ScaleToConstraint(i32 %b, i32 %f, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca %struct.CONSTRAINT*, align 8
  %scale_factor = alloca float, align 4
  %res = alloca i32, align 4
  store i32 %b, i32* %1, align 4
  store i32 %f, i32* %2, align 4
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %3, align 8
  store float 1.000000e+00, float* %scale_factor, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %28

; <label>:6                                       ; preds = %0
  %7 = load float, float* %scale_factor, align 4
  %8 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %9 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sitofp i32 %10 to float
  %12 = load i32, i32* %1, align 4
  %13 = sitofp i32 %12 to float
  %14 = fdiv float %11, %13
  %15 = fcmp olt float %7, %14
  br i1 %15, label %16, label %18

; <label>:16                                      ; preds = %6
  %17 = load float, float* %scale_factor, align 4
  br label %26

; <label>:18                                      ; preds = %6
  %19 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %20 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sitofp i32 %21 to float
  %23 = load i32, i32* %1, align 4
  %24 = sitofp i32 %23 to float
  %25 = fdiv float %22, %24
  br label %26

; <label>:26                                      ; preds = %18, %16
  %27 = phi float [ %17, %16 ], [ %25, %18 ]
  store float %27, float* %scale_factor, align 4
  br label %28

; <label>:28                                      ; preds = %26, %0
  %29 = load i32, i32* %1, align 4
  %30 = load i32, i32* %2, align 4
  %31 = add nsw i32 %29, %30
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %59

; <label>:33                                      ; preds = %28
  %34 = load float, float* %scale_factor, align 4
  %35 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %36 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = sitofp i32 %37 to float
  %39 = load i32, i32* %1, align 4
  %40 = load i32, i32* %2, align 4
  %41 = add nsw i32 %39, %40
  %42 = sitofp i32 %41 to float
  %43 = fdiv float %38, %42
  %44 = fcmp olt float %34, %43
  br i1 %44, label %45, label %47

; <label>:45                                      ; preds = %33
  %46 = load float, float* %scale_factor, align 4
  br label %57

; <label>:47                                      ; preds = %33
  %48 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %49 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = sitofp i32 %50 to float
  %52 = load i32, i32* %1, align 4
  %53 = load i32, i32* %2, align 4
  %54 = add nsw i32 %52, %53
  %55 = sitofp i32 %54 to float
  %56 = fdiv float %51, %55
  br label %57

; <label>:57                                      ; preds = %47, %45
  %58 = phi float [ %46, %45 ], [ %56, %47 ]
  store float %58, float* %scale_factor, align 4
  br label %59

; <label>:59                                      ; preds = %57, %28
  %60 = load i32, i32* %2, align 4
  %61 = icmp sgt i32 %60, 0
  br i1 %61, label %62, label %84

; <label>:62                                      ; preds = %59
  %63 = load float, float* %scale_factor, align 4
  %64 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %65 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = sitofp i32 %66 to float
  %68 = load i32, i32* %2, align 4
  %69 = sitofp i32 %68 to float
  %70 = fdiv float %67, %69
  %71 = fcmp olt float %63, %70
  br i1 %71, label %72, label %74

; <label>:72                                      ; preds = %62
  %73 = load float, float* %scale_factor, align 4
  br label %82

; <label>:74                                      ; preds = %62
  %75 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %76 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to float
  %79 = load i32, i32* %2, align 4
  %80 = sitofp i32 %79 to float
  %81 = fdiv float %78, %80
  br label %82

; <label>:82                                      ; preds = %74, %72
  %83 = phi float [ %73, %72 ], [ %81, %74 ]
  store float %83, float* %scale_factor, align 4
  br label %84

; <label>:84                                      ; preds = %82, %59
  %85 = load float, float* %scale_factor, align 4
  %86 = fmul float %85, 1.280000e+02
  %87 = fptosi float %86 to i32
  store i32 %87, i32* %res, align 4
  %88 = load i32, i32* %res, align 4
  ret i32 %88
}

; Function Attrs: nounwind uwtable
define void @InvScaleConstraint(%struct.CONSTRAINT* %yc, i32 %sf, %struct.CONSTRAINT* %xc) #0 {
  %1 = alloca %struct.CONSTRAINT*, align 8
  %2 = alloca i32, align 4
  %3 = alloca %struct.CONSTRAINT*, align 8
  store %struct.CONSTRAINT* %yc, %struct.CONSTRAINT** %1, align 8
  store i32 %sf, i32* %2, align 4
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %3, align 8
  %4 = load i32, i32* %2, align 4
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %9, label %6

; <label>:6                                       ; preds = %0
  %7 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %8 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %7, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i32 0, i32 0))
  br label %9

; <label>:9                                       ; preds = %6, %0
  %10 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %11 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp eq i32 %12, 8388607
  br i1 %13, label %14, label %15

; <label>:14                                      ; preds = %9
  br label %33

; <label>:15                                      ; preds = %9
  %16 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %17 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = mul nsw i32 %18, 128
  %20 = load i32, i32* %2, align 4
  %21 = sdiv i32 %19, %20
  %22 = icmp slt i32 8388607, %21
  br i1 %22, label %23, label %24

; <label>:23                                      ; preds = %15
  br label %31

; <label>:24                                      ; preds = %15
  %25 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %26 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = mul nsw i32 %27, 128
  %29 = load i32, i32* %2, align 4
  %30 = sdiv i32 %28, %29
  br label %31

; <label>:31                                      ; preds = %24, %23
  %32 = phi i32 [ 8388607, %23 ], [ %30, %24 ]
  br label %33

; <label>:33                                      ; preds = %31, %14
  %34 = phi i32 [ 8388607, %14 ], [ %32, %31 ]
  %35 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %36 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  %37 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %38 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 8388607
  br i1 %40, label %41, label %42

; <label>:41                                      ; preds = %33
  br label %60

; <label>:42                                      ; preds = %33
  %43 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %44 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = mul nsw i32 %45, 128
  %47 = load i32, i32* %2, align 4
  %48 = sdiv i32 %46, %47
  %49 = icmp slt i32 8388607, %48
  br i1 %49, label %50, label %51

; <label>:50                                      ; preds = %42
  br label %58

; <label>:51                                      ; preds = %42
  %52 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %53 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = mul nsw i32 %54, 128
  %56 = load i32, i32* %2, align 4
  %57 = sdiv i32 %55, %56
  br label %58

; <label>:58                                      ; preds = %51, %50
  %59 = phi i32 [ 8388607, %50 ], [ %57, %51 ]
  br label %60

; <label>:60                                      ; preds = %58, %41
  %61 = phi i32 [ 8388607, %41 ], [ %59, %58 ]
  %62 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %63 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %65 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = icmp eq i32 %66, 8388607
  br i1 %67, label %68, label %69

; <label>:68                                      ; preds = %60
  br label %87

; <label>:69                                      ; preds = %60
  %70 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %71 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = mul nsw i32 %72, 128
  %74 = load i32, i32* %2, align 4
  %75 = sdiv i32 %73, %74
  %76 = icmp slt i32 8388607, %75
  br i1 %76, label %77, label %78

; <label>:77                                      ; preds = %69
  br label %85

; <label>:78                                      ; preds = %69
  %79 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %80 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = mul nsw i32 %81, 128
  %83 = load i32, i32* %2, align 4
  %84 = sdiv i32 %82, %83
  br label %85

; <label>:85                                      ; preds = %78, %77
  %86 = phi i32 [ 8388607, %77 ], [ %84, %78 ]
  br label %87

; <label>:87                                      ; preds = %85, %68
  %88 = phi i32 [ 8388607, %68 ], [ %86, %85 ]
  %89 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %90 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

; Function Attrs: nounwind uwtable
define void @RotateConstraint(%struct.CONSTRAINT* %c, %union.rec* %y, i32 %angle, %struct.CONSTRAINT* %hc, %struct.CONSTRAINT* %vc, i32 %dim) #0 {
  %1 = alloca %struct.CONSTRAINT*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.CONSTRAINT*, align 8
  %5 = alloca %struct.CONSTRAINT*, align 8
  %6 = alloca i32, align 4
  %c1 = alloca %struct.CONSTRAINT, align 4
  %c2 = alloca %struct.CONSTRAINT, align 4
  %c3 = alloca %struct.CONSTRAINT, align 4
  %dc = alloca %struct.CONSTRAINT, align 4
  %theta = alloca float, align 4
  %psi = alloca float, align 4
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %1, align 8
  store %union.rec* %y, %union.rec** %2, align 8
  store i32 %angle, i32* %3, align 4
  store %struct.CONSTRAINT* %hc, %struct.CONSTRAINT** %4, align 8
  store %struct.CONSTRAINT* %vc, %struct.CONSTRAINT** %5, align 8
  store i32 %dim, i32* %6, align 4
  %7 = load i32, i32* %3, align 4
  %8 = sitofp i32 %7 to float
  %9 = fmul float %8, 2.000000e+00
  %10 = fpext float %9 to double
  %11 = fmul double %10, 0x400921FB54442D18
  %12 = fdiv double %11, 4.608000e+04
  %13 = fptrunc double %12 to float
  store float %13, float* %theta, align 4
  br label %14

; <label>:14                                      ; preds = %17, %0
  %15 = load float, float* %theta, align 4
  %16 = fcmp olt float %15, 0.000000e+00
  br i1 %16, label %17, label %22

; <label>:17                                      ; preds = %14
  %18 = load float, float* %theta, align 4
  %19 = fpext float %18 to double
  %20 = fadd double %19, 0x401921FB54442D18
  %21 = fptrunc double %20 to float
  store float %21, float* %theta, align 4
  br label %14

; <label>:22                                      ; preds = %14
  br label %23

; <label>:23                                      ; preds = %27, %22
  %24 = load float, float* %theta, align 4
  %25 = fpext float %24 to double
  %26 = fcmp oge double %25, 0x401921FB54442D18
  br i1 %26, label %27, label %32

; <label>:27                                      ; preds = %23
  %28 = load float, float* %theta, align 4
  %29 = fpext float %28 to double
  %30 = fsub double %29, 0x401921FB54442D18
  %31 = fptrunc double %30 to float
  store float %31, float* %theta, align 4
  br label %23

; <label>:32                                      ; preds = %23
  %33 = load float, float* %theta, align 4
  %34 = fcmp ole float 0.000000e+00, %33
  br i1 %34, label %35, label %39

; <label>:35                                      ; preds = %32
  %36 = load float, float* %theta, align 4
  %37 = fpext float %36 to double
  %38 = fcmp ole double %37, 0x401921FB54442D18
  br i1 %38, label %42, label %39

; <label>:39                                      ; preds = %35, %32
  %40 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %41 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %40, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i32 0, i32 0))
  br label %42

; <label>:42                                      ; preds = %39, %35
  %43 = load float, float* %theta, align 4
  %44 = fpext float %43 to double
  %45 = fcmp ole double %44, 0x3FF921FB54442D18
  br i1 %45, label %46, label %72

; <label>:46                                      ; preds = %42
  %47 = load float, float* %theta, align 4
  store float %47, float* %theta, align 4
  %48 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %49 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %50, i32* %51, align 4
  %52 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %53 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %54, i32* %55, align 4
  %56 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %57 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %58, i32* %59, align 4
  %60 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %61 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %62, i32* %63, align 4
  %64 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %65 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %66, i32* %67, align 4
  %68 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %69 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  br label %169

; <label>:72                                      ; preds = %42
  %73 = load float, float* %theta, align 4
  %74 = fpext float %73 to double
  %75 = fcmp ole double %74, 0x400921FB54442D18
  br i1 %75, label %76, label %105

; <label>:76                                      ; preds = %72
  %77 = load float, float* %theta, align 4
  %78 = fpext float %77 to double
  %79 = fsub double %78, 0x3FF921FB54442D18
  %80 = fptrunc double %79 to float
  store float %80, float* %theta, align 4
  %81 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %82 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %83, i32* %84, align 4
  %85 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %86 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %87, i32* %88, align 4
  %89 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %90 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %91, i32* %92, align 4
  %93 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %94 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %95, i32* %96, align 4
  %97 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %98 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %99, i32* %100, align 4
  %101 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %102 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %101, i32 0, i32 2
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %103, i32* %104, align 4
  br label %168

; <label>:105                                     ; preds = %72
  %106 = load float, float* %theta, align 4
  %107 = fpext float %106 to double
  %108 = fcmp ole double %107, 0x4012D97C7F3321D2
  br i1 %108, label %109, label %138

; <label>:109                                     ; preds = %105
  %110 = load float, float* %theta, align 4
  %111 = fpext float %110 to double
  %112 = fsub double %111, 0x400921FB54442D18
  %113 = fptrunc double %112 to float
  store float %113, float* %theta, align 4
  %114 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %115 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %116, i32* %117, align 4
  %118 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %119 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %120, i32* %121, align 4
  %122 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %123 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %124, i32* %125, align 4
  %126 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %127 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %128, i32* %129, align 4
  %130 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %131 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %132, i32* %133, align 4
  %134 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %135 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %136, i32* %137, align 4
  br label %167

; <label>:138                                     ; preds = %105
  %139 = load float, float* %theta, align 4
  %140 = fpext float %139 to double
  %141 = fsub double %140, 0x4012D97C7F3321D2
  %142 = fptrunc double %141 to float
  store float %142, float* %theta, align 4
  %143 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %144 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 0
  store i32 %145, i32* %146, align 4
  %147 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %148 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 1
  store i32 %149, i32* %150, align 4
  %151 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %152 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %151, i32 0, i32 2
  %153 = load i32, i32* %152, align 4
  %154 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c1, i32 0, i32 2
  store i32 %153, i32* %154, align 4
  %155 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %156 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 4
  %158 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  store i32 %157, i32* %158, align 4
  %159 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %160 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  store i32 %161, i32* %162, align 4
  %163 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %164 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  store i32 %165, i32* %166, align 4
  br label %167

; <label>:167                                     ; preds = %138, %109
  br label %168

; <label>:168                                     ; preds = %167, %76
  br label %169

; <label>:169                                     ; preds = %168, %46
  %170 = load float, float* %theta, align 4
  %171 = fpext float %170 to double
  %172 = fsub double 0x3FF921FB54442D18, %171
  %173 = fptrunc double %172 to float
  store float %173, float* %psi, align 4
  %174 = load i32, i32* %6, align 4
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %218

; <label>:176                                     ; preds = %169
  %177 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %178 = load %union.rec*, %union.rec** %2, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 3
  %181 = bitcast %union.THIRD_UNION* %180 to %struct.anon.6*
  %182 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %181, i32 0, i32 0
  %183 = getelementptr inbounds [2 x i32], [2 x i32]* %182, i32 0, i64 1
  %184 = load i32, i32* %183, align 4
  %185 = load %union.rec*, %union.rec** %2, align 8
  %186 = bitcast %union.rec* %185 to %struct.word_type*
  %187 = getelementptr inbounds %struct.word_type, %struct.word_type* %186, i32 0, i32 3
  %188 = bitcast %union.THIRD_UNION* %187 to %struct.anon.6*
  %189 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %188, i32 0, i32 1
  %190 = getelementptr inbounds [2 x i32], [2 x i32]* %189, i32 0, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = load float, float* %theta, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %177, i32 %184, i32 %191, float %192, %struct.CONSTRAINT* %c1)
  %193 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3, i32 0, i32 0
  store i32 %194, i32* %195, align 4
  %196 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3, i32 0, i32 1
  store i32 %197, i32* %198, align 4
  %199 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c2, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c3, i32 0, i32 2
  store i32 %200, i32* %201, align 4
  %202 = load %union.rec*, %union.rec** %2, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 3
  %205 = bitcast %union.THIRD_UNION* %204 to %struct.anon.6*
  %206 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %205, i32 0, i32 1
  %207 = getelementptr inbounds [2 x i32], [2 x i32]* %206, i32 0, i64 1
  %208 = load i32, i32* %207, align 4
  %209 = load %union.rec*, %union.rec** %2, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 3
  %212 = bitcast %union.THIRD_UNION* %211 to %struct.anon.6*
  %213 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %212, i32 0, i32 0
  %214 = getelementptr inbounds [2 x i32], [2 x i32]* %213, i32 0, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = load float, float* %psi, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %dc, i32 %208, i32 %215, float %216, %struct.CONSTRAINT* %c3)
  %217 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  call void @MinConstraint(%struct.CONSTRAINT* %217, %struct.CONSTRAINT* %dc)
  br label %251

; <label>:218                                     ; preds = %169
  %219 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %220 = load %union.rec*, %union.rec** %2, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 3
  %223 = bitcast %union.THIRD_UNION* %222 to %struct.anon.6*
  %224 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %223, i32 0, i32 0
  %225 = getelementptr inbounds [2 x i32], [2 x i32]* %224, i32 0, i64 0
  %226 = load i32, i32* %225, align 4
  %227 = load %union.rec*, %union.rec** %2, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 3
  %230 = bitcast %union.THIRD_UNION* %229 to %struct.anon.6*
  %231 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %230, i32 0, i32 1
  %232 = getelementptr inbounds [2 x i32], [2 x i32]* %231, i32 0, i64 0
  %233 = load i32, i32* %232, align 4
  %234 = load float, float* %psi, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %219, i32 %226, i32 %233, float %234, %struct.CONSTRAINT* %c1)
  %235 = load %union.rec*, %union.rec** %2, align 8
  %236 = bitcast %union.rec* %235 to %struct.word_type*
  %237 = getelementptr inbounds %struct.word_type, %struct.word_type* %236, i32 0, i32 3
  %238 = bitcast %union.THIRD_UNION* %237 to %struct.anon.6*
  %239 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %238, i32 0, i32 1
  %240 = getelementptr inbounds [2 x i32], [2 x i32]* %239, i32 0, i64 0
  %241 = load i32, i32* %240, align 4
  %242 = load %union.rec*, %union.rec** %2, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 3
  %245 = bitcast %union.THIRD_UNION* %244 to %struct.anon.6*
  %246 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %245, i32 0, i32 0
  %247 = getelementptr inbounds [2 x i32], [2 x i32]* %246, i32 0, i64 0
  %248 = load i32, i32* %247, align 4
  %249 = load float, float* %theta, align 4
  call void @SemiRotateConstraint(%struct.CONSTRAINT* %dc, i32 %241, i32 %248, float %249, %struct.CONSTRAINT* %c2)
  %250 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  call void @MinConstraint(%struct.CONSTRAINT* %250, %struct.CONSTRAINT* %dc)
  br label %251

; <label>:251                                     ; preds = %218, %176
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @SemiRotateConstraint(%struct.CONSTRAINT* %xc, i32 %u, i32 %v, float %angle, %struct.CONSTRAINT* %yc) #0 {
  %1 = alloca %struct.CONSTRAINT*, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca float, align 4
  %5 = alloca %struct.CONSTRAINT*, align 8
  %cs = alloca float, align 4
  %sn = alloca float, align 4
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %1, align 8
  store i32 %u, i32* %2, align 4
  store i32 %v, i32* %3, align 4
  store float %angle, float* %4, align 4
  store %struct.CONSTRAINT* %yc, %struct.CONSTRAINT** %5, align 8
  %6 = load float, float* %4, align 4
  %7 = fpext float %6 to double
  %8 = call double @cos(double %7) #4
  %9 = fptrunc double %8 to float
  store float %9, float* %cs, align 4
  %10 = load float, float* %4, align 4
  %11 = fpext float %10 to double
  %12 = call double @sin(double %11) #4
  %13 = fptrunc double %12 to float
  store float %13, float* %sn, align 4
  %14 = load float, float* %cs, align 4
  %15 = fpext float %14 to double
  %16 = call double @fabs(double %15) #5
  %17 = fcmp olt double %16, 1.000000e-06
  br i1 %17, label %18, label %25

; <label>:18                                      ; preds = %0
  %19 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %20 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %19, i32 0, i32 0
  store i32 8388607, i32* %20, align 4
  %21 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %22 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %21, i32 0, i32 1
  store i32 8388607, i32* %22, align 4
  %23 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %24 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %23, i32 0, i32 2
  store i32 8388607, i32* %24, align 4
  br label %126

; <label>:25                                      ; preds = %0
  %26 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %27 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = sitofp i32 %28 to float
  %30 = load i32, i32* %2, align 4
  %31 = sitofp i32 %30 to float
  %32 = load float, float* %sn, align 4
  %33 = fmul float %31, %32
  %34 = fsub float %29, %33
  %35 = load float, float* %cs, align 4
  %36 = fdiv float %34, %35
  %37 = fcmp olt float 8.388607e+06, %36
  br i1 %37, label %38, label %39

; <label>:38                                      ; preds = %25
  br label %51

; <label>:39                                      ; preds = %25
  %40 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %41 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = sitofp i32 %42 to float
  %44 = load i32, i32* %2, align 4
  %45 = sitofp i32 %44 to float
  %46 = load float, float* %sn, align 4
  %47 = fmul float %45, %46
  %48 = fsub float %43, %47
  %49 = load float, float* %cs, align 4
  %50 = fdiv float %48, %49
  br label %51

; <label>:51                                      ; preds = %39, %38
  %52 = phi float [ 8.388607e+06, %38 ], [ %50, %39 ]
  %53 = fptosi float %52 to i32
  %54 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %55 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %54, i32 0, i32 0
  store i32 %53, i32* %55, align 4
  %56 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %57 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = sitofp i32 %58 to float
  %60 = load i32, i32* %2, align 4
  %61 = sitofp i32 %60 to float
  %62 = load float, float* %sn, align 4
  %63 = fmul float %61, %62
  %64 = fsub float %59, %63
  %65 = load i32, i32* %3, align 4
  %66 = sitofp i32 %65 to float
  %67 = load float, float* %sn, align 4
  %68 = fmul float %66, %67
  %69 = fsub float %64, %68
  %70 = load float, float* %cs, align 4
  %71 = fdiv float %69, %70
  %72 = fcmp olt float 8.388607e+06, %71
  br i1 %72, label %73, label %74

; <label>:73                                      ; preds = %51
  br label %91

; <label>:74                                      ; preds = %51
  %75 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %76 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sitofp i32 %77 to float
  %79 = load i32, i32* %2, align 4
  %80 = sitofp i32 %79 to float
  %81 = load float, float* %sn, align 4
  %82 = fmul float %80, %81
  %83 = fsub float %78, %82
  %84 = load i32, i32* %3, align 4
  %85 = sitofp i32 %84 to float
  %86 = load float, float* %sn, align 4
  %87 = fmul float %85, %86
  %88 = fsub float %83, %87
  %89 = load float, float* %cs, align 4
  %90 = fdiv float %88, %89
  br label %91

; <label>:91                                      ; preds = %74, %73
  %92 = phi float [ 8.388607e+06, %73 ], [ %90, %74 ]
  %93 = fptosi float %92 to i32
  %94 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %95 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 4
  %96 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %97 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = sitofp i32 %98 to float
  %100 = load i32, i32* %3, align 4
  %101 = sitofp i32 %100 to float
  %102 = load float, float* %sn, align 4
  %103 = fmul float %101, %102
  %104 = fsub float %99, %103
  %105 = load float, float* %cs, align 4
  %106 = fdiv float %104, %105
  %107 = fcmp olt float 8.388607e+06, %106
  br i1 %107, label %108, label %109

; <label>:108                                     ; preds = %91
  br label %121

; <label>:109                                     ; preds = %91
  %110 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %5, align 8
  %111 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = sitofp i32 %112 to float
  %114 = load i32, i32* %3, align 4
  %115 = sitofp i32 %114 to float
  %116 = load float, float* %sn, align 4
  %117 = fmul float %115, %116
  %118 = fsub float %113, %117
  %119 = load float, float* %cs, align 4
  %120 = fdiv float %118, %119
  br label %121

; <label>:121                                     ; preds = %109, %108
  %122 = phi float [ 8.388607e+06, %108 ], [ %120, %109 ]
  %123 = fptosi float %122 to i32
  %124 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %1, align 8
  %125 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %124, i32 0, i32 2
  store i32 %123, i32* %125, align 4
  br label %126

; <label>:126                                     ; preds = %121, %18
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @InsertScale(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.CONSTRAINT*, align 8
  %scale_factor = alloca i32, align 4
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %3, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 3
  %7 = bitcast %union.THIRD_UNION* %6 to %struct.anon.6*
  %8 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %7, i32 0, i32 0
  %9 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i32 0, i64 0
  %10 = load i32, i32* %9, align 4
  %11 = load %union.rec*, %union.rec** %2, align 8
  %12 = bitcast %union.rec* %11 to %struct.word_type*
  %13 = getelementptr inbounds %struct.word_type, %struct.word_type* %12, i32 0, i32 3
  %14 = bitcast %union.THIRD_UNION* %13 to %struct.anon.6*
  %15 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %14, i32 0, i32 1
  %16 = getelementptr inbounds [2 x i32], [2 x i32]* %15, i32 0, i64 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %19 = call i32 @ScaleToConstraint(i32 %10, i32 %17, %struct.CONSTRAINT* %18)
  store i32 %19, i32* %scale_factor, align 4
  %20 = load i32, i32* %scale_factor, align 4
  %21 = sitofp i32 %20 to double
  %22 = fcmp oge double %21, 2.560000e+01
  br i1 %22, label %23, label %517

; <label>:23                                      ; preds = %0
  %24 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 34), align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* @zz_size, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 265
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %23
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %29)
  br label %56

; <label>:31                                      ; preds = %23
  %32 = load i32, i32* @zz_size, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %33
  %35 = load %union.rec*, %union.rec** %34, align 8
  %36 = icmp eq %union.rec* %35, null
  br i1 %36, label %37, label %41

; <label>:37                                      ; preds = %31
  %38 = load i32, i32* @zz_size, align 4
  %39 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %40 = call %union.rec* @GetMemory(i32 %38, %struct.FILE_POS* %39)
  store %union.rec* %40, %union.rec** @zz_hold, align 8
  br label %55

; <label>:41                                      ; preds = %31
  %42 = load i32, i32* @zz_size, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %43
  %45 = load %union.rec*, %union.rec** %44, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  store %union.rec* %45, %union.rec** @zz_hold, align 8
  %46 = load %union.rec*, %union.rec** @zz_hold, align 8
  %47 = bitcast %union.rec* %46 to %struct.word_type*
  %48 = getelementptr inbounds %struct.word_type, %struct.word_type* %47, i32 0, i32 0
  %49 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %48, i32 0, i64 0
  %50 = getelementptr inbounds %struct.LIST, %struct.LIST* %49, i32 0, i32 0
  %51 = load %union.rec*, %union.rec** %50, align 8
  %52 = load i32, i32* @zz_size, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %53
  store %union.rec* %51, %union.rec** %54, align 8
  br label %55

; <label>:55                                      ; preds = %41, %37
  br label %56

; <label>:56                                      ; preds = %55, %28
  %57 = load %union.rec*, %union.rec** @zz_hold, align 8
  %58 = bitcast %union.rec* %57 to %struct.word_type*
  %59 = getelementptr inbounds %struct.word_type, %struct.word_type* %58, i32 0, i32 1
  %60 = bitcast %union.FIRST_UNION* %59 to %struct.anon*
  %61 = getelementptr inbounds %struct.anon, %struct.anon* %60, i32 0, i32 0
  store i8 34, i8* %61, align 1
  %62 = load %union.rec*, %union.rec** @zz_hold, align 8
  %63 = load %union.rec*, %union.rec** @zz_hold, align 8
  %64 = bitcast %union.rec* %63 to %struct.word_type*
  %65 = getelementptr inbounds %struct.word_type, %struct.word_type* %64, i32 0, i32 0
  %66 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %65, i32 0, i64 1
  %67 = getelementptr inbounds %struct.LIST, %struct.LIST* %66, i32 0, i32 1
  store %union.rec* %62, %union.rec** %67, align 8
  %68 = load %union.rec*, %union.rec** @zz_hold, align 8
  %69 = bitcast %union.rec* %68 to %struct.word_type*
  %70 = getelementptr inbounds %struct.word_type, %struct.word_type* %69, i32 0, i32 0
  %71 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %70, i32 0, i64 1
  %72 = getelementptr inbounds %struct.LIST, %struct.LIST* %71, i32 0, i32 0
  store %union.rec* %62, %union.rec** %72, align 8
  %73 = load %union.rec*, %union.rec** @zz_hold, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %75, i32 0, i64 0
  %77 = getelementptr inbounds %struct.LIST, %struct.LIST* %76, i32 0, i32 1
  store %union.rec* %62, %union.rec** %77, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 0
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 0
  store %union.rec* %62, %union.rec** %82, align 8
  store %union.rec* %62, %union.rec** %prnt, align 8
  %83 = load %union.rec*, %union.rec** %2, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 2
  %86 = bitcast %union.SECOND_UNION* %85 to %struct.anon.1*
  %87 = bitcast %struct.anon.1* %86 to i32*
  %88 = load i32, i32* %87, align 4
  %89 = lshr i32 %88, 29
  %90 = and i32 %89, 3
  %91 = load %union.rec*, %union.rec** %prnt, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 2
  %94 = bitcast %union.SECOND_UNION* %93 to %struct.anon.1*
  %95 = bitcast %struct.anon.1* %94 to i32*
  %96 = load i32, i32* %95, align 4
  %97 = and i32 %90, 3
  %98 = shl i32 %97, 29
  %99 = and i32 %96, -1610612737
  %100 = or i32 %99, %98
  store i32 %100, i32* %95, align 4
  %101 = load %union.rec*, %union.rec** %2, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 1
  %104 = bitcast %union.FIRST_UNION* %103 to %struct.FILE_POS*
  %105 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %104, i32 0, i32 2
  %106 = load i16, i16* %105, align 2
  %107 = load %union.rec*, %union.rec** %prnt, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 1
  %110 = bitcast %union.FIRST_UNION* %109 to %struct.FILE_POS*
  %111 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %110, i32 0, i32 2
  store i16 %106, i16* %111, align 2
  %112 = load %union.rec*, %union.rec** %2, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 1
  %115 = bitcast %union.FIRST_UNION* %114 to %struct.FILE_POS*
  %116 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = and i32 %117, 1048575
  %119 = load %union.rec*, %union.rec** %prnt, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 1
  %122 = bitcast %union.FIRST_UNION* %121 to %struct.FILE_POS*
  %123 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 4
  %125 = and i32 %118, 1048575
  %126 = and i32 %124, -1048576
  %127 = or i32 %126, %125
  store i32 %127, i32* %123, align 4
  %128 = load %union.rec*, %union.rec** %2, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 1
  %131 = bitcast %union.FIRST_UNION* %130 to %struct.FILE_POS*
  %132 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = lshr i32 %133, 20
  %135 = load %union.rec*, %union.rec** %prnt, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 1
  %138 = bitcast %union.FIRST_UNION* %137 to %struct.FILE_POS*
  %139 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %134, 4095
  %142 = shl i32 %141, 20
  %143 = and i32 %140, 1048575
  %144 = or i32 %143, %142
  store i32 %144, i32* %139, align 4
  %145 = load i32, i32* %scale_factor, align 4
  %146 = load %union.rec*, %union.rec** %prnt, align 8
  %147 = bitcast %union.rec* %146 to %struct.closure_type*
  %148 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %147, i32 0, i32 4
  %149 = bitcast %union.FOURTH_UNION* %148 to %struct.CONSTRAINT*
  %150 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %149, i32 0, i32 0
  store i32 %145, i32* %150, align 4
  %151 = load %union.rec*, %union.rec** %2, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 3
  %154 = bitcast %union.THIRD_UNION* %153 to %struct.anon.6*
  %155 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x i32], [2 x i32]* %155, i32 0, i64 0
  %157 = load i32, i32* %156, align 4
  %158 = load i32, i32* %scale_factor, align 4
  %159 = mul nsw i32 %157, %158
  %160 = sdiv i32 %159, 128
  %161 = load %union.rec*, %union.rec** %prnt, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 3
  %164 = bitcast %union.THIRD_UNION* %163 to %struct.anon.6*
  %165 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %164, i32 0, i32 0
  %166 = getelementptr inbounds [2 x i32], [2 x i32]* %165, i32 0, i64 0
  store i32 %160, i32* %166, align 4
  %167 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %168 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %union.rec*, %union.rec** %prnt, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 3
  %173 = bitcast %union.THIRD_UNION* %172 to %struct.anon.6*
  %174 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %173, i32 0, i32 0
  %175 = getelementptr inbounds [2 x i32], [2 x i32]* %174, i32 0, i64 0
  %176 = load i32, i32* %175, align 4
  %177 = sub nsw i32 %169, %176
  %178 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %179 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = icmp slt i32 %177, %180
  br i1 %181, label %182, label %194

; <label>:182                                     ; preds = %56
  %183 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %184 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %183, i32 0, i32 1
  %185 = load i32, i32* %184, align 4
  %186 = load %union.rec*, %union.rec** %prnt, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 3
  %189 = bitcast %union.THIRD_UNION* %188 to %struct.anon.6*
  %190 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %189, i32 0, i32 0
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %190, i32 0, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = sub nsw i32 %185, %192
  br label %198

; <label>:194                                     ; preds = %56
  %195 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %196 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 4
  br label %198

; <label>:198                                     ; preds = %194, %182
  %199 = phi i32 [ %193, %182 ], [ %197, %194 ]
  %200 = load %union.rec*, %union.rec** %prnt, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 3
  %203 = bitcast %union.THIRD_UNION* %202 to %struct.anon.6*
  %204 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %203, i32 0, i32 1
  %205 = getelementptr inbounds [2 x i32], [2 x i32]* %204, i32 0, i64 0
  store i32 %199, i32* %205, align 4
  %206 = load %union.rec*, %union.rec** %prnt, align 8
  %207 = bitcast %union.rec* %206 to %struct.closure_type*
  %208 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %207, i32 0, i32 4
  %209 = bitcast %union.FOURTH_UNION* %208 to %struct.CONSTRAINT*
  %210 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %209, i32 0, i32 2
  store i32 128, i32* %210, align 4
  %211 = load %union.rec*, %union.rec** %2, align 8
  %212 = bitcast %union.rec* %211 to %struct.word_type*
  %213 = getelementptr inbounds %struct.word_type, %struct.word_type* %212, i32 0, i32 3
  %214 = bitcast %union.THIRD_UNION* %213 to %struct.anon.6*
  %215 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %214, i32 0, i32 0
  %216 = getelementptr inbounds [2 x i32], [2 x i32]* %215, i32 0, i64 1
  %217 = load i32, i32* %216, align 4
  %218 = load %union.rec*, %union.rec** %prnt, align 8
  %219 = bitcast %union.rec* %218 to %struct.word_type*
  %220 = getelementptr inbounds %struct.word_type, %struct.word_type* %219, i32 0, i32 3
  %221 = bitcast %union.THIRD_UNION* %220 to %struct.anon.6*
  %222 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x i32], [2 x i32]* %222, i32 0, i64 1
  store i32 %217, i32* %223, align 4
  %224 = load %union.rec*, %union.rec** %2, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 3
  %227 = bitcast %union.THIRD_UNION* %226 to %struct.anon.6*
  %228 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %227, i32 0, i32 1
  %229 = getelementptr inbounds [2 x i32], [2 x i32]* %228, i32 0, i64 1
  %230 = load i32, i32* %229, align 4
  %231 = load %union.rec*, %union.rec** %prnt, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 3
  %234 = bitcast %union.THIRD_UNION* %233 to %struct.anon.6*
  %235 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %234, i32 0, i32 1
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %235, i32 0, i64 1
  store i32 %230, i32* %236, align 4
  %237 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %237, %union.rec** @zz_hold, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %239 = bitcast %union.rec* %238 to %struct.word_type*
  %240 = getelementptr inbounds %struct.word_type, %struct.word_type* %239, i32 0, i32 0
  %241 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %240, i32 0, i64 1
  %242 = getelementptr inbounds %struct.LIST, %struct.LIST* %241, i32 0, i32 1
  %243 = load %union.rec*, %union.rec** %242, align 8
  %244 = load %union.rec*, %union.rec** @zz_hold, align 8
  %245 = icmp eq %union.rec* %243, %244
  br i1 %245, label %246, label %247

; <label>:246                                     ; preds = %198
  br label %288

; <label>:247                                     ; preds = %198
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 1
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 1
  %253 = load %union.rec*, %union.rec** %252, align 8
  store %union.rec* %253, %union.rec** @zz_res, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 1
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 0
  %259 = load %union.rec*, %union.rec** %258, align 8
  %260 = load %union.rec*, %union.rec** @zz_res, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 0
  %263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %262, i32 0, i64 1
  %264 = getelementptr inbounds %struct.LIST, %struct.LIST* %263, i32 0, i32 0
  store %union.rec* %259, %union.rec** %264, align 8
  %265 = load %union.rec*, %union.rec** @zz_res, align 8
  %266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %267 = bitcast %union.rec* %266 to %struct.word_type*
  %268 = getelementptr inbounds %struct.word_type, %struct.word_type* %267, i32 0, i32 0
  %269 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %268, i32 0, i64 1
  %270 = getelementptr inbounds %struct.LIST, %struct.LIST* %269, i32 0, i32 0
  %271 = load %union.rec*, %union.rec** %270, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 1
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 1
  store %union.rec* %265, %union.rec** %275, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 1
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 1
  store %union.rec* %276, %union.rec** %281, align 8
  %282 = load %union.rec*, %union.rec** @zz_hold, align 8
  %283 = bitcast %union.rec* %282 to %struct.word_type*
  %284 = getelementptr inbounds %struct.word_type, %struct.word_type* %283, i32 0, i32 0
  %285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %284, i32 0, i64 1
  %286 = getelementptr inbounds %struct.LIST, %struct.LIST* %285, i32 0, i32 0
  store %union.rec* %276, %union.rec** %286, align 8
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %288

; <label>:288                                     ; preds = %247, %246
  %289 = phi %union.rec* [ null, %246 ], [ %287, %247 ]
  store %union.rec* %289, %union.rec** @xx_tmp, align 8
  %290 = load %union.rec*, %union.rec** %prnt, align 8
  store %union.rec* %290, %union.rec** @zz_res, align 8
  %291 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %291, %union.rec** @zz_hold, align 8
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %293 = icmp eq %union.rec* %292, null
  br i1 %293, label %294, label %296

; <label>:294                                     ; preds = %288
  %295 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %344

; <label>:296                                     ; preds = %288
  %297 = load %union.rec*, %union.rec** @zz_res, align 8
  %298 = icmp eq %union.rec* %297, null
  br i1 %298, label %299, label %301

; <label>:299                                     ; preds = %296
  %300 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %342

; <label>:301                                     ; preds = %296
  %302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %303 = bitcast %union.rec* %302 to %struct.word_type*
  %304 = getelementptr inbounds %struct.word_type, %struct.word_type* %303, i32 0, i32 0
  %305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %304, i32 0, i64 1
  %306 = getelementptr inbounds %struct.LIST, %struct.LIST* %305, i32 0, i32 0
  %307 = load %union.rec*, %union.rec** %306, align 8
  store %union.rec* %307, %union.rec** @zz_tmp, align 8
  %308 = load %union.rec*, %union.rec** @zz_res, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 0
  %311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %310, i32 0, i64 1
  %312 = getelementptr inbounds %struct.LIST, %struct.LIST* %311, i32 0, i32 0
  %313 = load %union.rec*, %union.rec** %312, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %316, i32 0, i64 1
  %318 = getelementptr inbounds %struct.LIST, %struct.LIST* %317, i32 0, i32 0
  store %union.rec* %313, %union.rec** %318, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 0
  %323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %322, i32 0, i64 1
  %324 = getelementptr inbounds %struct.LIST, %struct.LIST* %323, i32 0, i32 0
  %325 = load %union.rec*, %union.rec** %324, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 0
  %328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %327, i32 0, i64 1
  %329 = getelementptr inbounds %struct.LIST, %struct.LIST* %328, i32 0, i32 1
  store %union.rec* %319, %union.rec** %329, align 8
  %330 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %331 = load %union.rec*, %union.rec** @zz_res, align 8
  %332 = bitcast %union.rec* %331 to %struct.word_type*
  %333 = getelementptr inbounds %struct.word_type, %struct.word_type* %332, i32 0, i32 0
  %334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %333, i32 0, i64 1
  %335 = getelementptr inbounds %struct.LIST, %struct.LIST* %334, i32 0, i32 0
  store %union.rec* %330, %union.rec** %335, align 8
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  %337 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 0
  %340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %339, i32 0, i64 1
  %341 = getelementptr inbounds %struct.LIST, %struct.LIST* %340, i32 0, i32 1
  store %union.rec* %336, %union.rec** %341, align 8
  br label %342

; <label>:342                                     ; preds = %301, %299
  %343 = phi %union.rec* [ %300, %299 ], [ %336, %301 ]
  br label %344

; <label>:344                                     ; preds = %342, %294
  %345 = phi %union.rec* [ %295, %294 ], [ %343, %342 ]
  %346 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %347 = zext i8 %346 to i32
  store i32 %347, i32* @zz_size, align 4
  %348 = sext i32 %347 to i64
  %349 = icmp uge i64 %348, 265
  br i1 %349, label %350, label %353

; <label>:350                                     ; preds = %344
  %351 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %352 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i32 0, i32 0), i32 1, %struct.FILE_POS* %351)
  br label %378

; <label>:353                                     ; preds = %344
  %354 = load i32, i32* @zz_size, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %355
  %357 = load %union.rec*, %union.rec** %356, align 8
  %358 = icmp eq %union.rec* %357, null
  br i1 %358, label %359, label %363

; <label>:359                                     ; preds = %353
  %360 = load i32, i32* @zz_size, align 4
  %361 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %362 = call %union.rec* @GetMemory(i32 %360, %struct.FILE_POS* %361)
  store %union.rec* %362, %union.rec** @zz_hold, align 8
  br label %377

; <label>:363                                     ; preds = %353
  %364 = load i32, i32* @zz_size, align 4
  %365 = sext i32 %364 to i64
  %366 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %365
  %367 = load %union.rec*, %union.rec** %366, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 0
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 0
  %373 = load %union.rec*, %union.rec** %372, align 8
  %374 = load i32, i32* @zz_size, align 4
  %375 = sext i32 %374 to i64
  %376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %375
  store %union.rec* %373, %union.rec** %376, align 8
  br label %377

; <label>:377                                     ; preds = %363, %359
  br label %378

; <label>:378                                     ; preds = %377, %350
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 1
  %382 = bitcast %union.FIRST_UNION* %381 to %struct.anon*
  %383 = getelementptr inbounds %struct.anon, %struct.anon* %382, i32 0, i32 0
  store i8 0, i8* %383, align 1
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 1
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 1
  store %union.rec* %384, %union.rec** %389, align 8
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 1
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 0
  store %union.rec* %384, %union.rec** %394, align 8
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 0
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 1
  store %union.rec* %384, %union.rec** %399, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 0
  store %union.rec* %384, %union.rec** %404, align 8
  store %union.rec* %384, %union.rec** @xx_link, align 8
  %405 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %405, %union.rec** @zz_res, align 8
  %406 = load %union.rec*, %union.rec** %prnt, align 8
  store %union.rec* %406, %union.rec** @zz_hold, align 8
  %407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %408 = icmp eq %union.rec* %407, null
  br i1 %408, label %409, label %411

; <label>:409                                     ; preds = %378
  %410 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %459

; <label>:411                                     ; preds = %378
  %412 = load %union.rec*, %union.rec** @zz_res, align 8
  %413 = icmp eq %union.rec* %412, null
  br i1 %413, label %414, label %416

; <label>:414                                     ; preds = %411
  %415 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %457

; <label>:416                                     ; preds = %411
  %417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %418 = bitcast %union.rec* %417 to %struct.word_type*
  %419 = getelementptr inbounds %struct.word_type, %struct.word_type* %418, i32 0, i32 0
  %420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %419, i32 0, i64 0
  %421 = getelementptr inbounds %struct.LIST, %struct.LIST* %420, i32 0, i32 0
  %422 = load %union.rec*, %union.rec** %421, align 8
  store %union.rec* %422, %union.rec** @zz_tmp, align 8
  %423 = load %union.rec*, %union.rec** @zz_res, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 0
  %426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %425, i32 0, i64 0
  %427 = getelementptr inbounds %struct.LIST, %struct.LIST* %426, i32 0, i32 0
  %428 = load %union.rec*, %union.rec** %427, align 8
  %429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %430 = bitcast %union.rec* %429 to %struct.word_type*
  %431 = getelementptr inbounds %struct.word_type, %struct.word_type* %430, i32 0, i32 0
  %432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %431, i32 0, i64 0
  %433 = getelementptr inbounds %struct.LIST, %struct.LIST* %432, i32 0, i32 0
  store %union.rec* %428, %union.rec** %433, align 8
  %434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %435 = load %union.rec*, %union.rec** @zz_res, align 8
  %436 = bitcast %union.rec* %435 to %struct.word_type*
  %437 = getelementptr inbounds %struct.word_type, %struct.word_type* %436, i32 0, i32 0
  %438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %437, i32 0, i64 0
  %439 = getelementptr inbounds %struct.LIST, %struct.LIST* %438, i32 0, i32 0
  %440 = load %union.rec*, %union.rec** %439, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 0
  %443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %442, i32 0, i64 0
  %444 = getelementptr inbounds %struct.LIST, %struct.LIST* %443, i32 0, i32 1
  store %union.rec* %434, %union.rec** %444, align 8
  %445 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %446 = load %union.rec*, %union.rec** @zz_res, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 0
  %449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %448, i32 0, i64 0
  %450 = getelementptr inbounds %struct.LIST, %struct.LIST* %449, i32 0, i32 0
  store %union.rec* %445, %union.rec** %450, align 8
  %451 = load %union.rec*, %union.rec** @zz_res, align 8
  %452 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %453 = bitcast %union.rec* %452 to %struct.word_type*
  %454 = getelementptr inbounds %struct.word_type, %struct.word_type* %453, i32 0, i32 0
  %455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %454, i32 0, i64 0
  %456 = getelementptr inbounds %struct.LIST, %struct.LIST* %455, i32 0, i32 1
  store %union.rec* %451, %union.rec** %456, align 8
  br label %457

; <label>:457                                     ; preds = %416, %414
  %458 = phi %union.rec* [ %415, %414 ], [ %451, %416 ]
  br label %459

; <label>:459                                     ; preds = %457, %409
  %460 = phi %union.rec* [ %410, %409 ], [ %458, %457 ]
  %461 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %461, %union.rec** @zz_res, align 8
  %462 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %462, %union.rec** @zz_hold, align 8
  %463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %464 = icmp eq %union.rec* %463, null
  br i1 %464, label %465, label %467

; <label>:465                                     ; preds = %459
  %466 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %515

; <label>:467                                     ; preds = %459
  %468 = load %union.rec*, %union.rec** @zz_res, align 8
  %469 = icmp eq %union.rec* %468, null
  br i1 %469, label %470, label %472

; <label>:470                                     ; preds = %467
  %471 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %513

; <label>:472                                     ; preds = %467
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %474 = bitcast %union.rec* %473 to %struct.word_type*
  %475 = getelementptr inbounds %struct.word_type, %struct.word_type* %474, i32 0, i32 0
  %476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %475, i32 0, i64 1
  %477 = getelementptr inbounds %struct.LIST, %struct.LIST* %476, i32 0, i32 0
  %478 = load %union.rec*, %union.rec** %477, align 8
  store %union.rec* %478, %union.rec** @zz_tmp, align 8
  %479 = load %union.rec*, %union.rec** @zz_res, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 0
  %482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %481, i32 0, i64 1
  %483 = getelementptr inbounds %struct.LIST, %struct.LIST* %482, i32 0, i32 0
  %484 = load %union.rec*, %union.rec** %483, align 8
  %485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 0
  %488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %487, i32 0, i64 1
  %489 = getelementptr inbounds %struct.LIST, %struct.LIST* %488, i32 0, i32 0
  store %union.rec* %484, %union.rec** %489, align 8
  %490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %491 = load %union.rec*, %union.rec** @zz_res, align 8
  %492 = bitcast %union.rec* %491 to %struct.word_type*
  %493 = getelementptr inbounds %struct.word_type, %struct.word_type* %492, i32 0, i32 0
  %494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %493, i32 0, i64 1
  %495 = getelementptr inbounds %struct.LIST, %struct.LIST* %494, i32 0, i32 0
  %496 = load %union.rec*, %union.rec** %495, align 8
  %497 = bitcast %union.rec* %496 to %struct.word_type*
  %498 = getelementptr inbounds %struct.word_type, %struct.word_type* %497, i32 0, i32 0
  %499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %498, i32 0, i64 1
  %500 = getelementptr inbounds %struct.LIST, %struct.LIST* %499, i32 0, i32 1
  store %union.rec* %490, %union.rec** %500, align 8
  %501 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %502 = load %union.rec*, %union.rec** @zz_res, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 0
  %505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %504, i32 0, i64 1
  %506 = getelementptr inbounds %struct.LIST, %struct.LIST* %505, i32 0, i32 0
  store %union.rec* %501, %union.rec** %506, align 8
  %507 = load %union.rec*, %union.rec** @zz_res, align 8
  %508 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %509 = bitcast %union.rec* %508 to %struct.word_type*
  %510 = getelementptr inbounds %struct.word_type, %struct.word_type* %509, i32 0, i32 0
  %511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %510, i32 0, i64 1
  %512 = getelementptr inbounds %struct.LIST, %struct.LIST* %511, i32 0, i32 1
  store %union.rec* %507, %union.rec** %512, align 8
  br label %513

; <label>:513                                     ; preds = %472, %470
  %514 = phi %union.rec* [ %471, %470 ], [ %507, %472 ]
  br label %515

; <label>:515                                     ; preds = %513, %465
  %516 = phi %union.rec* [ %466, %465 ], [ %514, %513 ]
  store i32 1, i32* %1
  br label %518

; <label>:517                                     ; preds = %0
  store i32 0, i32* %1
  br label %518

; <label>:518                                     ; preds = %517, %515
  %519 = load i32, i32* %1
  ret i32 %519
}

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @Constrained(%union.rec* %x, %struct.CONSTRAINT* %xc, i32 %dim, %union.rec** %why) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.CONSTRAINT*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.rec**, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %lp = alloca %union.rec*, align 8
  %rp = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %tlink = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %yc = alloca %struct.CONSTRAINT, align 4
  %hc = alloca %struct.CONSTRAINT, align 4
  %vc = alloca %struct.CONSTRAINT, align 4
  %ratm = alloca i32, align 4
  %xback = alloca i32, align 4
  %xfwd = alloca i32, align 4
  %tb = alloca i32, align 4
  %tf = alloca i32, align 4
  %tbf = alloca i32, align 4
  %tbc = alloca i32, align 4
  %tfc = alloca i32, align 4
  %still_searching = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %2, align 8
  store i32 %dim, i32* %3, align 4
  store %union.rec** %why, %union.rec*** %4, align 8
  %5 = load i32, i32* %3, align 4
  call void @SetLengthDim(i32 %5)
  %6 = load %union.rec*, %union.rec** %1, align 8
  %7 = bitcast %union.rec* %6 to %struct.word_type*
  %8 = getelementptr inbounds %struct.word_type, %struct.word_type* %7, i32 0, i32 0
  %9 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %8, i32 0, i64 1
  %10 = getelementptr inbounds %struct.LIST, %struct.LIST* %9, i32 0, i32 1
  %11 = load %union.rec*, %union.rec** %10, align 8
  %12 = load %union.rec*, %union.rec** %1, align 8
  %13 = icmp ne %union.rec* %11, %12
  br i1 %13, label %17, label %14

; <label>:14                                      ; preds = %0
  %15 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %16 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %17

; <label>:17                                      ; preds = %14, %0
  %18 = load %union.rec*, %union.rec** %1, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 1
  %21 = bitcast %union.FIRST_UNION* %20 to %struct.anon*
  %22 = getelementptr inbounds %struct.anon, %struct.anon* %21, i32 0, i32 0
  %23 = load i8, i8* %22, align 1
  %24 = zext i8 %23 to i32
  %25 = icmp eq i32 %24, 2
  br i1 %25, label %26, label %58

; <label>:26                                      ; preds = %17
  %27 = load i32, i32* %3, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %40

; <label>:29                                      ; preds = %26
  %30 = load %union.rec*, %union.rec** %1, align 8
  %31 = bitcast %union.rec* %30 to %struct.word_type*
  %32 = getelementptr inbounds %struct.word_type, %struct.word_type* %31, i32 0, i32 2
  %33 = bitcast %union.SECOND_UNION* %32 to %struct.anon.2*
  %34 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %33, i32 0, i32 2
  %35 = load i16, i16* %34, align 2
  %36 = lshr i16 %35, 4
  %37 = and i16 %36, 1
  %38 = zext i16 %37 to i32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %51, label %40

; <label>:40                                      ; preds = %29, %26
  %41 = load %union.rec*, %union.rec** %1, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 2
  %44 = bitcast %union.SECOND_UNION* %43 to %struct.anon.2*
  %45 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %44, i32 0, i32 2
  %46 = load i16, i16* %45, align 2
  %47 = lshr i16 %46, 3
  %48 = and i16 %47, 1
  %49 = zext i16 %48 to i32
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

; <label>:51                                      ; preds = %40, %29
  %52 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %53 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %52, i32 0, i32 0
  store i32 8388607, i32* %53, align 4
  %54 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %55 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %54, i32 0, i32 1
  store i32 8388607, i32* %55, align 4
  %56 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %57 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %56, i32 0, i32 2
  store i32 8388607, i32* %57, align 4
  br label %1156

; <label>:58                                      ; preds = %40, %17
  %59 = load i32, i32* %3, align 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %68

; <label>:61                                      ; preds = %58
  %62 = load %union.rec*, %union.rec** %1, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 1
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 1
  %67 = load %union.rec*, %union.rec** %66, align 8
  br label %75

; <label>:68                                      ; preds = %58
  %69 = load %union.rec*, %union.rec** %1, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 0
  %72 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %71, i32 0, i64 1
  %73 = getelementptr inbounds %struct.LIST, %struct.LIST* %72, i32 0, i32 0
  %74 = load %union.rec*, %union.rec** %73, align 8
  br label %75

; <label>:75                                      ; preds = %68, %61
  %76 = phi %union.rec* [ %67, %61 ], [ %74, %68 ]
  store %union.rec* %76, %union.rec** %link, align 8
  store i32 0, i32* %ratm, align 4
  %77 = load %union.rec*, %union.rec** %link, align 8
  %78 = bitcast %union.rec* %77 to %struct.word_type*
  %79 = getelementptr inbounds %struct.word_type, %struct.word_type* %78, i32 0, i32 0
  %80 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %79, i32 0, i64 0
  %81 = getelementptr inbounds %struct.LIST, %struct.LIST* %80, i32 0, i32 1
  %82 = load %union.rec*, %union.rec** %81, align 8
  store %union.rec* %82, %union.rec** %tlink, align 8
  br label %83

; <label>:83                                      ; preds = %137, %75
  %84 = load %union.rec*, %union.rec** %tlink, align 8
  %85 = bitcast %union.rec* %84 to %struct.word_type*
  %86 = getelementptr inbounds %struct.word_type, %struct.word_type* %85, i32 0, i32 1
  %87 = bitcast %union.FIRST_UNION* %86 to %struct.anon*
  %88 = getelementptr inbounds %struct.anon, %struct.anon* %87, i32 0, i32 0
  %89 = load i8, i8* %88, align 1
  %90 = zext i8 %89 to i32
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %144

; <label>:92                                      ; preds = %83
  %93 = load %union.rec*, %union.rec** %tlink, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 1
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 0
  %98 = load %union.rec*, %union.rec** %97, align 8
  store %union.rec* %98, %union.rec** %g, align 8
  br label %99

; <label>:99                                      ; preds = %109, %92
  %100 = load %union.rec*, %union.rec** %g, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 1
  %103 = bitcast %union.FIRST_UNION* %102 to %struct.anon*
  %104 = getelementptr inbounds %struct.anon, %struct.anon* %103, i32 0, i32 0
  %105 = load i8, i8* %104, align 1
  %106 = zext i8 %105 to i32
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %108, label %116

; <label>:108                                     ; preds = %99
  br label %109

; <label>:109                                     ; preds = %108
  %110 = load %union.rec*, %union.rec** %g, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 1
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 0
  %115 = load %union.rec*, %union.rec** %114, align 8
  store %union.rec* %115, %union.rec** %g, align 8
  br label %99

; <label>:116                                     ; preds = %99
  %117 = load %union.rec*, %union.rec** %g, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 1
  %120 = bitcast %union.FIRST_UNION* %119 to %struct.anon*
  %121 = getelementptr inbounds %struct.anon, %struct.anon* %120, i32 0, i32 0
  %122 = load i8, i8* %121, align 1
  %123 = zext i8 %122 to i32
  %124 = icmp eq i32 %123, 1
  br i1 %124, label %125, label %136

; <label>:125                                     ; preds = %116
  %126 = load %union.rec*, %union.rec** %g, align 8
  %127 = bitcast %union.rec* %126 to %struct.gapobj_type*
  %128 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %127, i32 0, i32 3
  %129 = bitcast %struct.GAP* %128 to i16*
  %130 = load i16, i16* %129, align 4
  %131 = lshr i16 %130, 8
  %132 = and i16 %131, 1
  %133 = zext i16 %132 to i32
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

; <label>:135                                     ; preds = %125
  store i32 1, i32* %ratm, align 4
  br label %136

; <label>:136                                     ; preds = %135, %125, %116
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load %union.rec*, %union.rec** %tlink, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 0
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 1
  %143 = load %union.rec*, %union.rec** %142, align 8
  store %union.rec* %143, %union.rec** %tlink, align 8
  br label %83

; <label>:144                                     ; preds = %83
  %145 = load %union.rec*, %union.rec** %tlink, align 8
  store %union.rec* %145, %union.rec** %y, align 8
  %146 = load %union.rec*, %union.rec** %y, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 1
  %149 = bitcast %union.FIRST_UNION* %148 to %struct.anon*
  %150 = getelementptr inbounds %struct.anon, %struct.anon* %149, i32 0, i32 0
  %151 = load i8, i8* %150, align 1
  %152 = zext i8 %151 to i32
  switch i32 %152, label %1145 [
    i32 96, label %153
    i32 97, label %153
    i32 98, label %153
    i32 99, label %153
    i32 35, label %153
    i32 20, label %153
    i32 22, label %153
    i32 24, label %153
    i32 25, label %153
    i32 36, label %153
    i32 37, label %153
    i32 40, label %153
    i32 41, label %153
    i32 44, label %153
    i32 42, label %153
    i32 43, label %153
    i32 9, label %153
    i32 51, label %153
    i32 30, label %158
    i32 31, label %158
    i32 32, label %185
    i32 33, label %185
    i32 34, label %212
    i32 50, label %254
    i32 26, label %268
    i32 27, label %268
    i32 38, label %295
    i32 39, label %295
    i32 14, label %497
    i32 13, label %497
    i32 28, label %522
    i32 29, label %522
    i32 8, label %588
    i32 16, label %621
    i32 15, label %621
    i32 19, label %712
    i32 18, label %712
    i32 17, label %712
  ]

; <label>:153                                     ; preds = %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144, %144
  %154 = load %union.rec*, %union.rec** %y, align 8
  %155 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %156 = load i32, i32* %3, align 4
  %157 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %154, %struct.CONSTRAINT* %155, i32 %156, %union.rec** %157)
  br label %1156

; <label>:158                                     ; preds = %144, %144
  %159 = load i32, i32* %3, align 4
  %160 = icmp eq i32 %159, 0
  %161 = zext i1 %160 to i32
  %162 = load %union.rec*, %union.rec** %y, align 8
  %163 = bitcast %union.rec* %162 to %struct.word_type*
  %164 = getelementptr inbounds %struct.word_type, %struct.word_type* %163, i32 0, i32 1
  %165 = bitcast %union.FIRST_UNION* %164 to %struct.anon*
  %166 = getelementptr inbounds %struct.anon, %struct.anon* %165, i32 0, i32 0
  %167 = load i8, i8* %166, align 1
  %168 = zext i8 %167 to i32
  %169 = icmp eq i32 %168, 30
  %170 = zext i1 %169 to i32
  %171 = icmp ne i32 %161, %170
  br i1 %171, label %172, label %177

; <label>:172                                     ; preds = %158
  %173 = load %union.rec*, %union.rec** %y, align 8
  %174 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %175 = load i32, i32* %3, align 4
  %176 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %173, %struct.CONSTRAINT* %174, i32 %175, %union.rec** %176)
  br label %184

; <label>:177                                     ; preds = %158
  %178 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %179 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %178, i32 0, i32 0
  store i32 8388607, i32* %179, align 4
  %180 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %181 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %180, i32 0, i32 1
  store i32 8388607, i32* %181, align 4
  %182 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %183 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %182, i32 0, i32 2
  store i32 8388607, i32* %183, align 4
  br label %184

; <label>:184                                     ; preds = %177, %172
  br label %1156

; <label>:185                                     ; preds = %144, %144
  %186 = load i32, i32* %3, align 4
  %187 = icmp eq i32 %186, 0
  %188 = zext i1 %187 to i32
  %189 = load %union.rec*, %union.rec** %y, align 8
  %190 = bitcast %union.rec* %189 to %struct.word_type*
  %191 = getelementptr inbounds %struct.word_type, %struct.word_type* %190, i32 0, i32 1
  %192 = bitcast %union.FIRST_UNION* %191 to %struct.anon*
  %193 = getelementptr inbounds %struct.anon, %struct.anon* %192, i32 0, i32 0
  %194 = load i8, i8* %193, align 1
  %195 = zext i8 %194 to i32
  %196 = icmp eq i32 %195, 32
  %197 = zext i1 %196 to i32
  %198 = icmp ne i32 %188, %197
  br i1 %198, label %199, label %204

; <label>:199                                     ; preds = %185
  %200 = load %union.rec*, %union.rec** %y, align 8
  %201 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %202 = load i32, i32* %3, align 4
  %203 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %200, %struct.CONSTRAINT* %201, i32 %202, %union.rec** %203)
  br label %211

; <label>:204                                     ; preds = %185
  %205 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %206 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %205, i32 0, i32 0
  store i32 8388607, i32* %206, align 4
  %207 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %208 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %207, i32 0, i32 1
  store i32 8388607, i32* %208, align 4
  %209 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %210 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %209, i32 0, i32 2
  store i32 8388607, i32* %210, align 4
  br label %211

; <label>:211                                     ; preds = %204, %199
  br label %1156

; <label>:212                                     ; preds = %144
  %213 = load %union.rec*, %union.rec** %y, align 8
  %214 = load i32, i32* %3, align 4
  %215 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %213, %struct.CONSTRAINT* %yc, i32 %214, %union.rec** %215)
  %216 = load i32, i32* %3, align 4
  %217 = icmp eq i32 %216, 0
  br i1 %217, label %218, label %233

; <label>:218                                     ; preds = %212
  %219 = load %union.rec*, %union.rec** %y, align 8
  %220 = bitcast %union.rec* %219 to %struct.closure_type*
  %221 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %220, i32 0, i32 4
  %222 = bitcast %union.FOURTH_UNION* %221 to %struct.CONSTRAINT*
  %223 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %222, i32 0, i32 0
  %224 = load i32, i32* %223, align 4
  %225 = icmp eq i32 %224, 0
  br i1 %225, label %226, label %233

; <label>:226                                     ; preds = %218
  %227 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %228 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %227, i32 0, i32 0
  store i32 8388607, i32* %228, align 4
  %229 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %230 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %229, i32 0, i32 1
  store i32 8388607, i32* %230, align 4
  %231 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %232 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %231, i32 0, i32 2
  store i32 8388607, i32* %232, align 4
  br label %253

; <label>:233                                     ; preds = %218, %212
  %234 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %235 = load i32, i32* %3, align 4
  %236 = icmp eq i32 %235, 0
  br i1 %236, label %237, label %244

; <label>:237                                     ; preds = %233
  %238 = load %union.rec*, %union.rec** %y, align 8
  %239 = bitcast %union.rec* %238 to %struct.closure_type*
  %240 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %239, i32 0, i32 4
  %241 = bitcast %union.FOURTH_UNION* %240 to %struct.CONSTRAINT*
  %242 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %241, i32 0, i32 0
  %243 = load i32, i32* %242, align 4
  br label %251

; <label>:244                                     ; preds = %233
  %245 = load %union.rec*, %union.rec** %y, align 8
  %246 = bitcast %union.rec* %245 to %struct.closure_type*
  %247 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %246, i32 0, i32 4
  %248 = bitcast %union.FOURTH_UNION* %247 to %struct.CONSTRAINT*
  %249 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %248, i32 0, i32 2
  %250 = load i32, i32* %249, align 4
  br label %251

; <label>:251                                     ; preds = %244, %237
  %252 = phi i32 [ %243, %237 ], [ %250, %244 ]
  call void @InvScaleConstraint(%struct.CONSTRAINT* %234, i32 %252, %struct.CONSTRAINT* %yc)
  br label %253

; <label>:253                                     ; preds = %251, %226
  br label %1156

; <label>:254                                     ; preds = %144
  %255 = load %union.rec*, %union.rec** %y, align 8
  %256 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %255, %struct.CONSTRAINT* %hc, i32 0, %union.rec** %256)
  %257 = load %union.rec*, %union.rec** %y, align 8
  %258 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %257, %struct.CONSTRAINT* %vc, i32 1, %union.rec** %258)
  %259 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %260 = load %union.rec*, %union.rec** %1, align 8
  %261 = load %union.rec*, %union.rec** %y, align 8
  %262 = bitcast %union.rec* %261 to %struct.closure_type*
  %263 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %262, i32 0, i32 4
  %264 = bitcast %union.FOURTH_UNION* %263 to %struct.CONSTRAINT*
  %265 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = load i32, i32* %3, align 4
  call void @RotateConstraint(%struct.CONSTRAINT* %259, %union.rec* %260, i32 %266, %struct.CONSTRAINT* %hc, %struct.CONSTRAINT* %vc, i32 %267)
  br label %1156

; <label>:268                                     ; preds = %144, %144
  %269 = load %union.rec*, %union.rec** %y, align 8
  %270 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %271 = load i32, i32* %3, align 4
  %272 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %269, %struct.CONSTRAINT* %270, i32 %271, %union.rec** %272)
  %273 = load %union.rec*, %union.rec** %y, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 1
  %276 = bitcast %union.FIRST_UNION* %275 to %struct.anon*
  %277 = getelementptr inbounds %struct.anon, %struct.anon* %276, i32 0, i32 0
  %278 = load i8, i8* %277, align 1
  %279 = zext i8 %278 to i32
  %280 = icmp eq i32 %279, 26
  %281 = zext i1 %280 to i32
  %282 = load i32, i32* %3, align 4
  %283 = icmp eq i32 %282, 0
  %284 = zext i1 %283 to i32
  %285 = icmp eq i32 %281, %284
  br i1 %285, label %286, label %294

; <label>:286                                     ; preds = %268
  %287 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %288 = load %union.rec*, %union.rec** %y, align 8
  %289 = bitcast %union.rec* %288 to %struct.closure_type*
  %290 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %289, i32 0, i32 4
  %291 = bitcast %union.FOURTH_UNION* %290 to %struct.CONSTRAINT*
  call void @MinConstraint(%struct.CONSTRAINT* %287, %struct.CONSTRAINT* %291)
  %292 = load %union.rec*, %union.rec** %y, align 8
  %293 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %292, %union.rec** %293, align 8
  br label %294

; <label>:294                                     ; preds = %286, %268
  br label %1156

; <label>:295                                     ; preds = %144, %144
  %296 = load %union.rec*, %union.rec** %y, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 1
  %299 = bitcast %union.FIRST_UNION* %298 to %struct.anon*
  %300 = getelementptr inbounds %struct.anon, %struct.anon* %299, i32 0, i32 0
  %301 = load i8, i8* %300, align 1
  %302 = zext i8 %301 to i32
  %303 = icmp eq i32 %302, 38
  %304 = zext i1 %303 to i32
  %305 = load i32, i32* %3, align 4
  %306 = icmp eq i32 %305, 0
  %307 = zext i1 %306 to i32
  %308 = icmp eq i32 %304, %307
  br i1 %308, label %309, label %491

; <label>:309                                     ; preds = %295
  store i32 1, i32* %still_searching, align 4
  %310 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %310, %union.rec** %z, align 8
  %311 = load i32, i32* %3, align 4
  %312 = sext i32 %311 to i64
  %313 = load %union.rec*, %union.rec** %z, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 3
  %316 = bitcast %union.THIRD_UNION* %315 to %struct.anon.6*
  %317 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %316, i32 0, i32 0
  %318 = getelementptr inbounds [2 x i32], [2 x i32]* %317, i32 0, i64 %312
  %319 = load i32, i32* %318, align 4
  %320 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %321 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %320, i32 0, i32 0
  store i32 %319, i32* %321, align 4
  %322 = load i32, i32* %3, align 4
  %323 = sext i32 %322 to i64
  %324 = load %union.rec*, %union.rec** %z, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 3
  %327 = bitcast %union.THIRD_UNION* %326 to %struct.anon.6*
  %328 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %327, i32 0, i32 0
  %329 = getelementptr inbounds [2 x i32], [2 x i32]* %328, i32 0, i64 %323
  %330 = load i32, i32* %329, align 4
  %331 = load i32, i32* %3, align 4
  %332 = sext i32 %331 to i64
  %333 = load %union.rec*, %union.rec** %z, align 8
  %334 = bitcast %union.rec* %333 to %struct.word_type*
  %335 = getelementptr inbounds %struct.word_type, %struct.word_type* %334, i32 0, i32 3
  %336 = bitcast %union.THIRD_UNION* %335 to %struct.anon.6*
  %337 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %336, i32 0, i32 1
  %338 = getelementptr inbounds [2 x i32], [2 x i32]* %337, i32 0, i64 %332
  %339 = load i32, i32* %338, align 4
  %340 = add nsw i32 %330, %339
  %341 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %342 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %341, i32 0, i32 1
  store i32 %340, i32* %342, align 4
  %343 = load i32, i32* %3, align 4
  %344 = sext i32 %343 to i64
  %345 = load %union.rec*, %union.rec** %z, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 3
  %348 = bitcast %union.THIRD_UNION* %347 to %struct.anon.6*
  %349 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %348, i32 0, i32 1
  %350 = getelementptr inbounds [2 x i32], [2 x i32]* %349, i32 0, i64 %344
  %351 = load i32, i32* %350, align 4
  %352 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %353 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %352, i32 0, i32 2
  store i32 %351, i32* %353, align 4
  br label %354

; <label>:354                                     ; preds = %487, %309
  %355 = load i32, i32* %still_searching, align 4
  %356 = icmp ne i32 %355, 0
  br i1 %356, label %357, label %366

; <label>:357                                     ; preds = %354
  %358 = load %union.rec*, %union.rec** %z, align 8
  %359 = bitcast %union.rec* %358 to %struct.word_type*
  %360 = getelementptr inbounds %struct.word_type, %struct.word_type* %359, i32 0, i32 0
  %361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %360, i32 0, i64 1
  %362 = getelementptr inbounds %struct.LIST, %struct.LIST* %361, i32 0, i32 1
  %363 = load %union.rec*, %union.rec** %362, align 8
  %364 = load %union.rec*, %union.rec** %z, align 8
  %365 = icmp ne %union.rec* %363, %364
  br label %366

; <label>:366                                     ; preds = %357, %354
  %367 = phi i1 [ false, %354 ], [ %365, %357 ]
  br i1 %367, label %368, label %488

; <label>:368                                     ; preds = %366
  %369 = load i32, i32* %3, align 4
  %370 = icmp eq i32 %369, 0
  br i1 %370, label %371, label %378

; <label>:371                                     ; preds = %368
  %372 = load %union.rec*, %union.rec** %z, align 8
  %373 = bitcast %union.rec* %372 to %struct.word_type*
  %374 = getelementptr inbounds %struct.word_type, %struct.word_type* %373, i32 0, i32 0
  %375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %374, i32 0, i64 1
  %376 = getelementptr inbounds %struct.LIST, %struct.LIST* %375, i32 0, i32 1
  %377 = load %union.rec*, %union.rec** %376, align 8
  br label %385

; <label>:378                                     ; preds = %368
  %379 = load %union.rec*, %union.rec** %z, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 1
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %383, align 8
  br label %385

; <label>:385                                     ; preds = %378, %371
  %386 = phi %union.rec* [ %377, %371 ], [ %384, %378 ]
  %387 = bitcast %union.rec* %386 to %struct.word_type*
  %388 = getelementptr inbounds %struct.word_type, %struct.word_type* %387, i32 0, i32 0
  %389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %388, i32 0, i64 0
  %390 = getelementptr inbounds %struct.LIST, %struct.LIST* %389, i32 0, i32 0
  %391 = load %union.rec*, %union.rec** %390, align 8
  store %union.rec* %391, %union.rec** %z, align 8
  br label %392

; <label>:392                                     ; preds = %402, %385
  %393 = load %union.rec*, %union.rec** %z, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 1
  %396 = bitcast %union.FIRST_UNION* %395 to %struct.anon*
  %397 = getelementptr inbounds %struct.anon, %struct.anon* %396, i32 0, i32 0
  %398 = load i8, i8* %397, align 1
  %399 = zext i8 %398 to i32
  %400 = icmp eq i32 %399, 0
  br i1 %400, label %401, label %409

; <label>:401                                     ; preds = %392
  br label %402

; <label>:402                                     ; preds = %401
  %403 = load %union.rec*, %union.rec** %z, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 0
  %406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %405, i32 0, i64 0
  %407 = getelementptr inbounds %struct.LIST, %struct.LIST* %406, i32 0, i32 0
  %408 = load %union.rec*, %union.rec** %407, align 8
  store %union.rec* %408, %union.rec** %z, align 8
  br label %392

; <label>:409                                     ; preds = %392
  %410 = load %union.rec*, %union.rec** %z, align 8
  %411 = bitcast %union.rec* %410 to %struct.word_type*
  %412 = getelementptr inbounds %struct.word_type, %struct.word_type* %411, i32 0, i32 1
  %413 = bitcast %union.FIRST_UNION* %412 to %struct.anon*
  %414 = getelementptr inbounds %struct.anon, %struct.anon* %413, i32 0, i32 0
  %415 = load i8, i8* %414, align 1
  %416 = zext i8 %415 to i32
  switch i32 %416, label %486 [
    i32 39, label %417
    i32 38, label %417
    i32 16, label %417
    i32 15, label %417
    i32 24, label %417
    i32 25, label %417
    i32 36, label %417
    i32 37, label %417
    i32 9, label %417
    i32 43, label %417
    i32 42, label %417
    i32 13, label %461
    i32 14, label %461
  ]

; <label>:417                                     ; preds = %409, %409, %409, %409, %409, %409, %409, %409, %409, %409, %409
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = load %union.rec*, %union.rec** %z, align 8
  %421 = bitcast %union.rec* %420 to %struct.word_type*
  %422 = getelementptr inbounds %struct.word_type, %struct.word_type* %421, i32 0, i32 3
  %423 = bitcast %union.THIRD_UNION* %422 to %struct.anon.6*
  %424 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %423, i32 0, i32 0
  %425 = getelementptr inbounds [2 x i32], [2 x i32]* %424, i32 0, i64 %419
  %426 = load i32, i32* %425, align 4
  %427 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %428 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %427, i32 0, i32 0
  store i32 %426, i32* %428, align 4
  %429 = load i32, i32* %3, align 4
  %430 = sext i32 %429 to i64
  %431 = load %union.rec*, %union.rec** %z, align 8
  %432 = bitcast %union.rec* %431 to %struct.word_type*
  %433 = getelementptr inbounds %struct.word_type, %struct.word_type* %432, i32 0, i32 3
  %434 = bitcast %union.THIRD_UNION* %433 to %struct.anon.6*
  %435 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %434, i32 0, i32 0
  %436 = getelementptr inbounds [2 x i32], [2 x i32]* %435, i32 0, i64 %430
  %437 = load i32, i32* %436, align 4
  %438 = load i32, i32* %3, align 4
  %439 = sext i32 %438 to i64
  %440 = load %union.rec*, %union.rec** %z, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 3
  %443 = bitcast %union.THIRD_UNION* %442 to %struct.anon.6*
  %444 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %443, i32 0, i32 1
  %445 = getelementptr inbounds [2 x i32], [2 x i32]* %444, i32 0, i64 %439
  %446 = load i32, i32* %445, align 4
  %447 = add nsw i32 %437, %446
  %448 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %449 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %448, i32 0, i32 1
  store i32 %447, i32* %449, align 4
  %450 = load i32, i32* %3, align 4
  %451 = sext i32 %450 to i64
  %452 = load %union.rec*, %union.rec** %z, align 8
  %453 = bitcast %union.rec* %452 to %struct.word_type*
  %454 = getelementptr inbounds %struct.word_type, %struct.word_type* %453, i32 0, i32 3
  %455 = bitcast %union.THIRD_UNION* %454 to %struct.anon.6*
  %456 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %455, i32 0, i32 1
  %457 = getelementptr inbounds [2 x i32], [2 x i32]* %456, i32 0, i64 %451
  %458 = load i32, i32* %457, align 4
  %459 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %460 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %459, i32 0, i32 2
  store i32 %458, i32* %460, align 4
  br label %487

; <label>:461                                     ; preds = %409, %409
  %462 = load %union.rec*, %union.rec** %z, align 8
  %463 = bitcast %union.rec* %462 to %struct.closure_type*
  %464 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %463, i32 0, i32 4
  %465 = bitcast %union.FOURTH_UNION* %464 to %struct.CONSTRAINT*
  %466 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %465, i32 0, i32 0
  %467 = load i32, i32* %466, align 4
  %468 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %469 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %468, i32 0, i32 0
  store i32 %467, i32* %469, align 4
  %470 = load %union.rec*, %union.rec** %z, align 8
  %471 = bitcast %union.rec* %470 to %struct.closure_type*
  %472 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %471, i32 0, i32 4
  %473 = bitcast %union.FOURTH_UNION* %472 to %struct.CONSTRAINT*
  %474 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %473, i32 0, i32 1
  %475 = load i32, i32* %474, align 4
  %476 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %477 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %476, i32 0, i32 1
  store i32 %475, i32* %477, align 4
  %478 = load %union.rec*, %union.rec** %z, align 8
  %479 = bitcast %union.rec* %478 to %struct.closure_type*
  %480 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %479, i32 0, i32 4
  %481 = bitcast %union.FOURTH_UNION* %480 to %struct.CONSTRAINT*
  %482 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %481, i32 0, i32 2
  %483 = load i32, i32* %482, align 4
  %484 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %485 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %484, i32 0, i32 2
  store i32 %483, i32* %485, align 4
  store i32 0, i32* %still_searching, align 4
  br label %487

; <label>:486                                     ; preds = %409
  store i32 0, i32* %still_searching, align 4
  br label %487

; <label>:487                                     ; preds = %486, %461, %417
  br label %354

; <label>:488                                     ; preds = %366
  %489 = load %union.rec*, %union.rec** %y, align 8
  %490 = load %union.rec**, %union.rec*** %4, align 8
  store %union.rec* %489, %union.rec** %490, align 8
  br label %496

; <label>:491                                     ; preds = %295
  %492 = load %union.rec*, %union.rec** %y, align 8
  %493 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %494 = load i32, i32* %3, align 4
  %495 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %492, %struct.CONSTRAINT* %493, i32 %494, %union.rec** %495)
  br label %496

; <label>:496                                     ; preds = %491, %488
  br label %1156

; <label>:497                                     ; preds = %144, %144
  %498 = load %union.rec*, %union.rec** %y, align 8
  %499 = bitcast %union.rec* %498 to %struct.closure_type*
  %500 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %499, i32 0, i32 4
  %501 = bitcast %union.FOURTH_UNION* %500 to %struct.CONSTRAINT*
  %502 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %501, i32 0, i32 0
  %503 = load i32, i32* %502, align 4
  %504 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %505 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %504, i32 0, i32 0
  store i32 %503, i32* %505, align 4
  %506 = load %union.rec*, %union.rec** %y, align 8
  %507 = bitcast %union.rec* %506 to %struct.closure_type*
  %508 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %507, i32 0, i32 4
  %509 = bitcast %union.FOURTH_UNION* %508 to %struct.CONSTRAINT*
  %510 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %509, i32 0, i32 1
  %511 = load i32, i32* %510, align 4
  %512 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %513 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %512, i32 0, i32 1
  store i32 %511, i32* %513, align 4
  %514 = load %union.rec*, %union.rec** %y, align 8
  %515 = bitcast %union.rec* %514 to %struct.closure_type*
  %516 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %515, i32 0, i32 4
  %517 = bitcast %union.FOURTH_UNION* %516 to %struct.CONSTRAINT*
  %518 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %517, i32 0, i32 2
  %519 = load i32, i32* %518, align 4
  %520 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %521 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %520, i32 0, i32 2
  store i32 %519, i32* %521, align 4
  br label %1156

; <label>:522                                     ; preds = %144, %144
  %523 = load %union.rec*, %union.rec** %y, align 8
  %524 = bitcast %union.rec* %523 to %struct.word_type*
  %525 = getelementptr inbounds %struct.word_type, %struct.word_type* %524, i32 0, i32 1
  %526 = bitcast %union.FIRST_UNION* %525 to %struct.anon*
  %527 = getelementptr inbounds %struct.anon, %struct.anon* %526, i32 0, i32 0
  %528 = load i8, i8* %527, align 1
  %529 = zext i8 %528 to i32
  %530 = icmp eq i32 %529, 28
  %531 = zext i1 %530 to i32
  %532 = load i32, i32* %3, align 4
  %533 = icmp eq i32 %532, 0
  %534 = zext i1 %533 to i32
  %535 = icmp eq i32 %531, %534
  br i1 %535, label %536, label %582

; <label>:536                                     ; preds = %522
  %537 = load %union.rec*, %union.rec** %y, align 8
  %538 = load i32, i32* %3, align 4
  %539 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %537, %struct.CONSTRAINT* %yc, i32 %538, %union.rec** %539)
  %540 = load %union.rec*, %union.rec** %y, align 8
  %541 = load %union.rec*, %union.rec** %1, align 8
  %542 = load i32, i32* %3, align 4
  %543 = call i32 @FindShift(%union.rec* %540, %union.rec* %541, i32 %542)
  store i32 %543, i32* %tf, align 4
  %544 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %545 = load i32, i32* %544, align 4
  %546 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %547 = load i32, i32* %546, align 4
  %548 = icmp slt i32 %545, %547
  br i1 %548, label %549, label %552

; <label>:549                                     ; preds = %536
  %550 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %551 = load i32, i32* %550, align 4
  br label %555

; <label>:552                                     ; preds = %536
  %553 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %554 = load i32, i32* %553, align 4
  br label %555

; <label>:555                                     ; preds = %552, %549
  %556 = phi i32 [ %551, %549 ], [ %554, %552 ]
  %557 = load i32, i32* %tf, align 4
  %558 = sub nsw i32 %556, %557
  %559 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %560 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %559, i32 0, i32 0
  store i32 %558, i32* %560, align 4
  %561 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %562 = load i32, i32* %561, align 4
  %563 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %564 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %563, i32 0, i32 1
  store i32 %562, i32* %564, align 4
  %565 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %566 = load i32, i32* %565, align 4
  %567 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %568 = load i32, i32* %567, align 4
  %569 = icmp slt i32 %566, %568
  br i1 %569, label %570, label %573

; <label>:570                                     ; preds = %555
  %571 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %572 = load i32, i32* %571, align 4
  br label %576

; <label>:573                                     ; preds = %555
  %574 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %575 = load i32, i32* %574, align 4
  br label %576

; <label>:576                                     ; preds = %573, %570
  %577 = phi i32 [ %572, %570 ], [ %575, %573 ]
  %578 = load i32, i32* %tf, align 4
  %579 = add nsw i32 %577, %578
  %580 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %581 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %580, i32 0, i32 2
  store i32 %579, i32* %581, align 4
  br label %587

; <label>:582                                     ; preds = %522
  %583 = load %union.rec*, %union.rec** %y, align 8
  %584 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %585 = load i32, i32* %3, align 4
  %586 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %583, %struct.CONSTRAINT* %584, i32 %585, %union.rec** %586)
  br label %587

; <label>:587                                     ; preds = %582, %576
  br label %1156

; <label>:588                                     ; preds = %144
  %589 = load i32, i32* %3, align 4
  %590 = icmp eq i32 %589, 1
  br i1 %590, label %591, label %598

; <label>:591                                     ; preds = %588
  %592 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %593 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %592, i32 0, i32 0
  store i32 8388607, i32* %593, align 4
  %594 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %595 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %594, i32 0, i32 1
  store i32 8388607, i32* %595, align 4
  %596 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %597 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %596, i32 0, i32 2
  store i32 8388607, i32* %597, align 4
  br label %620

; <label>:598                                     ; preds = %588
  %599 = load %union.rec*, %union.rec** %y, align 8
  %600 = bitcast %union.rec* %599 to %struct.closure_type*
  %601 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %600, i32 0, i32 4
  %602 = bitcast %union.FOURTH_UNION* %601 to %struct.CONSTRAINT*
  %603 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %602, i32 0, i32 0
  %604 = load i32, i32* %603, align 4
  %605 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %604, i32* %605, align 4
  %606 = load %union.rec*, %union.rec** %y, align 8
  %607 = bitcast %union.rec* %606 to %struct.closure_type*
  %608 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %607, i32 0, i32 4
  %609 = bitcast %union.FOURTH_UNION* %608 to %struct.CONSTRAINT*
  %610 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %609, i32 0, i32 1
  %611 = load i32, i32* %610, align 4
  %612 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %611, i32* %612, align 4
  %613 = load %union.rec*, %union.rec** %y, align 8
  %614 = bitcast %union.rec* %613 to %struct.closure_type*
  %615 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %614, i32 0, i32 4
  %616 = bitcast %union.FOURTH_UNION* %615 to %struct.CONSTRAINT*
  %617 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %616, i32 0, i32 2
  %618 = load i32, i32* %617, align 4
  %619 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %618, i32* %619, align 4
  br label %756

; <label>:620                                     ; preds = %591
  br label %1156

; <label>:621                                     ; preds = %144, %144
  %622 = load %union.rec*, %union.rec** %y, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 1
  %625 = bitcast %union.FIRST_UNION* %624 to %struct.anon*
  %626 = getelementptr inbounds %struct.anon, %struct.anon* %625, i32 0, i32 0
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i32
  %629 = icmp eq i32 %628, 16
  %630 = zext i1 %629 to i32
  %631 = load i32, i32* %3, align 4
  %632 = icmp eq i32 %631, 0
  %633 = zext i1 %632 to i32
  %634 = icmp eq i32 %630, %633
  br i1 %634, label %638, label %635

; <label>:635                                     ; preds = %621
  %636 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %637 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %636, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i32 0, i32 0))
  br label %638

; <label>:638                                     ; preds = %635, %621
  %639 = load %union.rec*, %union.rec** %y, align 8
  %640 = load i32, i32* %3, align 4
  %641 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %639, %struct.CONSTRAINT* %yc, i32 %640, %union.rec** %641)
  %642 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %643 = load i32, i32* %642, align 4
  %644 = icmp eq i32 %643, 8388607
  br i1 %644, label %645, label %646

; <label>:645                                     ; preds = %638
  br label %659

; <label>:646                                     ; preds = %638
  %647 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %648 = load i32, i32* %647, align 4
  %649 = load i32, i32* %3, align 4
  %650 = sext i32 %649 to i64
  %651 = load %union.rec*, %union.rec** %y, align 8
  %652 = bitcast %union.rec* %651 to %struct.word_type*
  %653 = getelementptr inbounds %struct.word_type, %struct.word_type* %652, i32 0, i32 3
  %654 = bitcast %union.THIRD_UNION* %653 to %struct.anon.6*
  %655 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %654, i32 0, i32 1
  %656 = getelementptr inbounds [2 x i32], [2 x i32]* %655, i32 0, i64 %650
  %657 = load i32, i32* %656, align 4
  %658 = sub nsw i32 %648, %657
  br label %659

; <label>:659                                     ; preds = %646, %645
  %660 = phi i32 [ 8388607, %645 ], [ %658, %646 ]
  store i32 %660, i32* %tb, align 4
  %661 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %662 = load i32, i32* %661, align 4
  %663 = load i32, i32* %tb, align 4
  %664 = icmp slt i32 %662, %663
  br i1 %664, label %665, label %668

; <label>:665                                     ; preds = %659
  %666 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %667 = load i32, i32* %666, align 4
  br label %670

; <label>:668                                     ; preds = %659
  %669 = load i32, i32* %tb, align 4
  br label %670

; <label>:670                                     ; preds = %668, %665
  %671 = phi i32 [ %667, %665 ], [ %669, %668 ]
  store i32 %671, i32* %tb, align 4
  %672 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %673 = load i32, i32* %672, align 4
  %674 = icmp eq i32 %673, 8388607
  br i1 %674, label %675, label %676

; <label>:675                                     ; preds = %670
  br label %689

; <label>:676                                     ; preds = %670
  %677 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %678 = load i32, i32* %677, align 4
  %679 = load i32, i32* %3, align 4
  %680 = sext i32 %679 to i64
  %681 = load %union.rec*, %union.rec** %y, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 3
  %684 = bitcast %union.THIRD_UNION* %683 to %struct.anon.6*
  %685 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %684, i32 0, i32 0
  %686 = getelementptr inbounds [2 x i32], [2 x i32]* %685, i32 0, i64 %680
  %687 = load i32, i32* %686, align 4
  %688 = sub nsw i32 %678, %687
  br label %689

; <label>:689                                     ; preds = %676, %675
  %690 = phi i32 [ 8388607, %675 ], [ %688, %676 ]
  store i32 %690, i32* %tf, align 4
  %691 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %692 = load i32, i32* %691, align 4
  %693 = load i32, i32* %tf, align 4
  %694 = icmp slt i32 %692, %693
  br i1 %694, label %695, label %698

; <label>:695                                     ; preds = %689
  %696 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %697 = load i32, i32* %696, align 4
  br label %700

; <label>:698                                     ; preds = %689
  %699 = load i32, i32* %tf, align 4
  br label %700

; <label>:700                                     ; preds = %698, %695
  %701 = phi i32 [ %697, %695 ], [ %699, %698 ]
  store i32 %701, i32* %tf, align 4
  %702 = load i32, i32* %tb, align 4
  %703 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %704 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %703, i32 0, i32 0
  store i32 %702, i32* %704, align 4
  %705 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %706 = load i32, i32* %705, align 4
  %707 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %708 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %707, i32 0, i32 1
  store i32 %706, i32* %708, align 4
  %709 = load i32, i32* %tf, align 4
  %710 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %711 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %710, i32 0, i32 2
  store i32 %709, i32* %711, align 4
  br label %1156

; <label>:712                                     ; preds = %144, %144, %144
  %713 = load %union.rec*, %union.rec** %y, align 8
  %714 = bitcast %union.rec* %713 to %struct.word_type*
  %715 = getelementptr inbounds %struct.word_type, %struct.word_type* %714, i32 0, i32 1
  %716 = bitcast %union.FIRST_UNION* %715 to %struct.anon*
  %717 = getelementptr inbounds %struct.anon, %struct.anon* %716, i32 0, i32 0
  %718 = load i8, i8* %717, align 1
  %719 = zext i8 %718 to i32
  %720 = icmp eq i32 %719, 19
  %721 = zext i1 %720 to i32
  %722 = load i32, i32* %3, align 4
  %723 = icmp eq i32 %722, 1
  %724 = zext i1 %723 to i32
  %725 = icmp eq i32 %721, %724
  br i1 %725, label %726, label %733

; <label>:726                                     ; preds = %712
  %727 = load %union.rec*, %union.rec** %1, align 8
  %728 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %729 = load i32, i32* %ratm, align 4
  %730 = load %union.rec*, %union.rec** %y, align 8
  %731 = load i32, i32* %3, align 4
  %732 = load %union.rec**, %union.rec*** %4, align 8
  call void @CatConstrained(%union.rec* %727, %struct.CONSTRAINT* %728, i32 %729, %union.rec* %730, i32 %731, %union.rec** %732)
  br label %1156

; <label>:733                                     ; preds = %712
  %734 = load %union.rec*, %union.rec** %y, align 8
  %735 = load i32, i32* %3, align 4
  %736 = load %union.rec**, %union.rec*** %4, align 8
  call void @Constrained(%union.rec* %734, %struct.CONSTRAINT* %yc, i32 %735, %union.rec** %736)
  %737 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %738 = load i32, i32* %737, align 4
  %739 = icmp ne i32 %738, 8388607
  br i1 %739, label %755, label %740

; <label>:740                                     ; preds = %733
  %741 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %742 = load i32, i32* %741, align 4
  %743 = icmp ne i32 %742, 8388607
  br i1 %743, label %755, label %744

; <label>:744                                     ; preds = %740
  %745 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %746 = load i32, i32* %745, align 4
  %747 = icmp ne i32 %746, 8388607
  br i1 %747, label %755, label %748

; <label>:748                                     ; preds = %744
  %749 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %750 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %749, i32 0, i32 0
  store i32 8388607, i32* %750, align 4
  %751 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %752 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %751, i32 0, i32 1
  store i32 8388607, i32* %752, align 4
  %753 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %754 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %753, i32 0, i32 2
  store i32 8388607, i32* %754, align 4
  br label %1144

; <label>:755                                     ; preds = %744, %740, %733
  br label %756

; <label>:756                                     ; preds = %755, %598
  %757 = load %union.rec*, %union.rec** %link, align 8
  %758 = bitcast %union.rec* %757 to %struct.word_type*
  %759 = getelementptr inbounds %struct.word_type, %struct.word_type* %758, i32 0, i32 0
  %760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %759, i32 0, i64 0
  %761 = getelementptr inbounds %struct.LIST, %struct.LIST* %760, i32 0, i32 0
  %762 = load %union.rec*, %union.rec** %761, align 8
  store %union.rec* %762, %union.rec** %lp, align 8
  br label %763

; <label>:763                                     ; preds = %812, %756
  %764 = load %union.rec*, %union.rec** %lp, align 8
  %765 = load %union.rec*, %union.rec** %y, align 8
  %766 = icmp ne %union.rec* %764, %765
  br i1 %766, label %767, label %819

; <label>:767                                     ; preds = %763
  %768 = load %union.rec*, %union.rec** %lp, align 8
  %769 = bitcast %union.rec* %768 to %struct.word_type*
  %770 = getelementptr inbounds %struct.word_type, %struct.word_type* %769, i32 0, i32 0
  %771 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %770, i32 0, i64 1
  %772 = getelementptr inbounds %struct.LIST, %struct.LIST* %771, i32 0, i32 0
  %773 = load %union.rec*, %union.rec** %772, align 8
  store %union.rec* %773, %union.rec** %z, align 8
  br label %774

; <label>:774                                     ; preds = %784, %767
  %775 = load %union.rec*, %union.rec** %z, align 8
  %776 = bitcast %union.rec* %775 to %struct.word_type*
  %777 = getelementptr inbounds %struct.word_type, %struct.word_type* %776, i32 0, i32 1
  %778 = bitcast %union.FIRST_UNION* %777 to %struct.anon*
  %779 = getelementptr inbounds %struct.anon, %struct.anon* %778, i32 0, i32 0
  %780 = load i8, i8* %779, align 1
  %781 = zext i8 %780 to i32
  %782 = icmp eq i32 %781, 0
  br i1 %782, label %783, label %791

; <label>:783                                     ; preds = %774
  br label %784

; <label>:784                                     ; preds = %783
  %785 = load %union.rec*, %union.rec** %z, align 8
  %786 = bitcast %union.rec* %785 to %struct.word_type*
  %787 = getelementptr inbounds %struct.word_type, %struct.word_type* %786, i32 0, i32 0
  %788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %787, i32 0, i64 1
  %789 = getelementptr inbounds %struct.LIST, %struct.LIST* %788, i32 0, i32 0
  %790 = load %union.rec*, %union.rec** %789, align 8
  store %union.rec* %790, %union.rec** %z, align 8
  br label %774

; <label>:791                                     ; preds = %774
  %792 = load %union.rec*, %union.rec** %z, align 8
  %793 = bitcast %union.rec* %792 to %struct.word_type*
  %794 = getelementptr inbounds %struct.word_type, %struct.word_type* %793, i32 0, i32 1
  %795 = bitcast %union.FIRST_UNION* %794 to %struct.anon*
  %796 = getelementptr inbounds %struct.anon, %struct.anon* %795, i32 0, i32 0
  %797 = load i8, i8* %796, align 1
  %798 = zext i8 %797 to i32
  %799 = icmp eq i32 %798, 1
  br i1 %799, label %800, label %811

; <label>:800                                     ; preds = %791
  %801 = load %union.rec*, %union.rec** %z, align 8
  %802 = bitcast %union.rec* %801 to %struct.gapobj_type*
  %803 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %802, i32 0, i32 3
  %804 = bitcast %struct.GAP* %803 to i16*
  %805 = load i16, i16* %804, align 4
  %806 = lshr i16 %805, 9
  %807 = and i16 %806, 1
  %808 = zext i16 %807 to i32
  %809 = icmp ne i32 %808, 0
  br i1 %809, label %811, label %810

; <label>:810                                     ; preds = %800
  br label %819

; <label>:811                                     ; preds = %800, %791
  br label %812

; <label>:812                                     ; preds = %811
  %813 = load %union.rec*, %union.rec** %lp, align 8
  %814 = bitcast %union.rec* %813 to %struct.word_type*
  %815 = getelementptr inbounds %struct.word_type, %struct.word_type* %814, i32 0, i32 0
  %816 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %815, i32 0, i64 0
  %817 = getelementptr inbounds %struct.LIST, %struct.LIST* %816, i32 0, i32 0
  %818 = load %union.rec*, %union.rec** %817, align 8
  store %union.rec* %818, %union.rec** %lp, align 8
  br label %763

; <label>:819                                     ; preds = %810, %763
  %820 = load %union.rec*, %union.rec** %link, align 8
  %821 = bitcast %union.rec* %820 to %struct.word_type*
  %822 = getelementptr inbounds %struct.word_type, %struct.word_type* %821, i32 0, i32 0
  %823 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %822, i32 0, i64 0
  %824 = getelementptr inbounds %struct.LIST, %struct.LIST* %823, i32 0, i32 1
  %825 = load %union.rec*, %union.rec** %824, align 8
  store %union.rec* %825, %union.rec** %rp, align 8
  br label %826

; <label>:826                                     ; preds = %875, %819
  %827 = load %union.rec*, %union.rec** %rp, align 8
  %828 = load %union.rec*, %union.rec** %y, align 8
  %829 = icmp ne %union.rec* %827, %828
  br i1 %829, label %830, label %882

; <label>:830                                     ; preds = %826
  %831 = load %union.rec*, %union.rec** %rp, align 8
  %832 = bitcast %union.rec* %831 to %struct.word_type*
  %833 = getelementptr inbounds %struct.word_type, %struct.word_type* %832, i32 0, i32 0
  %834 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %833, i32 0, i64 1
  %835 = getelementptr inbounds %struct.LIST, %struct.LIST* %834, i32 0, i32 0
  %836 = load %union.rec*, %union.rec** %835, align 8
  store %union.rec* %836, %union.rec** %z, align 8
  br label %837

; <label>:837                                     ; preds = %847, %830
  %838 = load %union.rec*, %union.rec** %z, align 8
  %839 = bitcast %union.rec* %838 to %struct.word_type*
  %840 = getelementptr inbounds %struct.word_type, %struct.word_type* %839, i32 0, i32 1
  %841 = bitcast %union.FIRST_UNION* %840 to %struct.anon*
  %842 = getelementptr inbounds %struct.anon, %struct.anon* %841, i32 0, i32 0
  %843 = load i8, i8* %842, align 1
  %844 = zext i8 %843 to i32
  %845 = icmp eq i32 %844, 0
  br i1 %845, label %846, label %854

; <label>:846                                     ; preds = %837
  br label %847

; <label>:847                                     ; preds = %846
  %848 = load %union.rec*, %union.rec** %z, align 8
  %849 = bitcast %union.rec* %848 to %struct.word_type*
  %850 = getelementptr inbounds %struct.word_type, %struct.word_type* %849, i32 0, i32 0
  %851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %850, i32 0, i64 1
  %852 = getelementptr inbounds %struct.LIST, %struct.LIST* %851, i32 0, i32 0
  %853 = load %union.rec*, %union.rec** %852, align 8
  store %union.rec* %853, %union.rec** %z, align 8
  br label %837

; <label>:854                                     ; preds = %837
  %855 = load %union.rec*, %union.rec** %z, align 8
  %856 = bitcast %union.rec* %855 to %struct.word_type*
  %857 = getelementptr inbounds %struct.word_type, %struct.word_type* %856, i32 0, i32 1
  %858 = bitcast %union.FIRST_UNION* %857 to %struct.anon*
  %859 = getelementptr inbounds %struct.anon, %struct.anon* %858, i32 0, i32 0
  %860 = load i8, i8* %859, align 1
  %861 = zext i8 %860 to i32
  %862 = icmp eq i32 %861, 1
  br i1 %862, label %863, label %874

; <label>:863                                     ; preds = %854
  %864 = load %union.rec*, %union.rec** %z, align 8
  %865 = bitcast %union.rec* %864 to %struct.gapobj_type*
  %866 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %865, i32 0, i32 3
  %867 = bitcast %struct.GAP* %866 to i16*
  %868 = load i16, i16* %867, align 4
  %869 = lshr i16 %868, 9
  %870 = and i16 %869, 1
  %871 = zext i16 %870 to i32
  %872 = icmp ne i32 %871, 0
  br i1 %872, label %874, label %873

; <label>:873                                     ; preds = %863
  br label %882

; <label>:874                                     ; preds = %863, %854
  br label %875

; <label>:875                                     ; preds = %874
  %876 = load %union.rec*, %union.rec** %rp, align 8
  %877 = bitcast %union.rec* %876 to %struct.word_type*
  %878 = getelementptr inbounds %struct.word_type, %struct.word_type* %877, i32 0, i32 0
  %879 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %878, i32 0, i64 0
  %880 = getelementptr inbounds %struct.LIST, %struct.LIST* %879, i32 0, i32 1
  %881 = load %union.rec*, %union.rec** %880, align 8
  store %union.rec* %881, %union.rec** %rp, align 8
  br label %826

; <label>:882                                     ; preds = %873, %826
  %883 = load %union.rec*, %union.rec** %lp, align 8
  %884 = load %union.rec*, %union.rec** %y, align 8
  %885 = icmp eq %union.rec* %883, %884
  br i1 %885, label %886, label %981

; <label>:886                                     ; preds = %882
  %887 = load %union.rec*, %union.rec** %rp, align 8
  %888 = load %union.rec*, %union.rec** %y, align 8
  %889 = icmp eq %union.rec* %887, %888
  br i1 %889, label %890, label %981

; <label>:890                                     ; preds = %886
  %891 = load %union.rec*, %union.rec** %y, align 8
  %892 = bitcast %union.rec* %891 to %struct.word_type*
  %893 = getelementptr inbounds %struct.word_type, %struct.word_type* %892, i32 0, i32 1
  %894 = bitcast %union.FIRST_UNION* %893 to %struct.anon*
  %895 = getelementptr inbounds %struct.anon, %struct.anon* %894, i32 0, i32 0
  %896 = load i8, i8* %895, align 1
  %897 = zext i8 %896 to i32
  %898 = icmp eq i32 %897, 8
  br i1 %898, label %899, label %910

; <label>:899                                     ; preds = %890
  %900 = load %union.rec*, %union.rec** %y, align 8
  %901 = bitcast %union.rec* %900 to %struct.word_type*
  %902 = getelementptr inbounds %struct.word_type, %struct.word_type* %901, i32 0, i32 2
  %903 = bitcast %union.SECOND_UNION* %902 to %struct.anon.2*
  %904 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %903, i32 0, i32 2
  %905 = load i16, i16* %904, align 2
  %906 = lshr i16 %905, 5
  %907 = and i16 %906, 1
  %908 = zext i16 %907 to i32
  %909 = icmp ne i32 %908, 0
  br i1 %909, label %981, label %910

; <label>:910                                     ; preds = %899, %890
  %911 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %912 = load i32, i32* %911, align 4
  %913 = icmp eq i32 %912, 8388607
  br i1 %913, label %914, label %915

; <label>:914                                     ; preds = %910
  br label %928

; <label>:915                                     ; preds = %910
  %916 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %917 = load i32, i32* %916, align 4
  %918 = load i32, i32* %3, align 4
  %919 = sext i32 %918 to i64
  %920 = load %union.rec*, %union.rec** %y, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 3
  %923 = bitcast %union.THIRD_UNION* %922 to %struct.anon.6*
  %924 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %923, i32 0, i32 1
  %925 = getelementptr inbounds [2 x i32], [2 x i32]* %924, i32 0, i64 %919
  %926 = load i32, i32* %925, align 4
  %927 = sub nsw i32 %917, %926
  br label %928

; <label>:928                                     ; preds = %915, %914
  %929 = phi i32 [ 8388607, %914 ], [ %927, %915 ]
  store i32 %929, i32* %tb, align 4
  %930 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %931 = load i32, i32* %930, align 4
  %932 = load i32, i32* %tb, align 4
  %933 = icmp slt i32 %931, %932
  br i1 %933, label %934, label %937

; <label>:934                                     ; preds = %928
  %935 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %936 = load i32, i32* %935, align 4
  br label %939

; <label>:937                                     ; preds = %928
  %938 = load i32, i32* %tb, align 4
  br label %939

; <label>:939                                     ; preds = %937, %934
  %940 = phi i32 [ %936, %934 ], [ %938, %937 ]
  store i32 %940, i32* %tb, align 4
  %941 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %942 = load i32, i32* %941, align 4
  %943 = icmp eq i32 %942, 8388607
  br i1 %943, label %944, label %945

; <label>:944                                     ; preds = %939
  br label %958

; <label>:945                                     ; preds = %939
  %946 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %947 = load i32, i32* %946, align 4
  %948 = load i32, i32* %3, align 4
  %949 = sext i32 %948 to i64
  %950 = load %union.rec*, %union.rec** %y, align 8
  %951 = bitcast %union.rec* %950 to %struct.word_type*
  %952 = getelementptr inbounds %struct.word_type, %struct.word_type* %951, i32 0, i32 3
  %953 = bitcast %union.THIRD_UNION* %952 to %struct.anon.6*
  %954 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %953, i32 0, i32 0
  %955 = getelementptr inbounds [2 x i32], [2 x i32]* %954, i32 0, i64 %949
  %956 = load i32, i32* %955, align 4
  %957 = sub nsw i32 %947, %956
  br label %958

; <label>:958                                     ; preds = %945, %944
  %959 = phi i32 [ 8388607, %944 ], [ %957, %945 ]
  store i32 %959, i32* %tf, align 4
  %960 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %961 = load i32, i32* %960, align 4
  %962 = load i32, i32* %tf, align 4
  %963 = icmp slt i32 %961, %962
  br i1 %963, label %964, label %967

; <label>:964                                     ; preds = %958
  %965 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %966 = load i32, i32* %965, align 4
  br label %969

; <label>:967                                     ; preds = %958
  %968 = load i32, i32* %tf, align 4
  br label %969

; <label>:969                                     ; preds = %967, %964
  %970 = phi i32 [ %966, %964 ], [ %968, %967 ]
  store i32 %970, i32* %tf, align 4
  %971 = load i32, i32* %tb, align 4
  %972 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %973 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %972, i32 0, i32 0
  store i32 %971, i32* %973, align 4
  %974 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %975 = load i32, i32* %974, align 4
  %976 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %977 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %976, i32 0, i32 1
  store i32 %975, i32* %977, align 4
  %978 = load i32, i32* %tf, align 4
  %979 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %980 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %979, i32 0, i32 2
  store i32 %978, i32* %980, align 4
  br label %1143

; <label>:981                                     ; preds = %899, %886, %882
  store i32 0, i32* %xfwd, align 4
  store i32 0, i32* %xback, align 4
  %982 = load %union.rec*, %union.rec** %lp, align 8
  %983 = bitcast %union.rec* %982 to %struct.word_type*
  %984 = getelementptr inbounds %struct.word_type, %struct.word_type* %983, i32 0, i32 0
  %985 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %984, i32 0, i64 0
  %986 = getelementptr inbounds %struct.LIST, %struct.LIST* %985, i32 0, i32 1
  %987 = load %union.rec*, %union.rec** %986, align 8
  store %union.rec* %987, %union.rec** %link, align 8
  br label %988

; <label>:988                                     ; preds = %1095, %981
  %989 = load %union.rec*, %union.rec** %link, align 8
  %990 = load %union.rec*, %union.rec** %rp, align 8
  %991 = icmp ne %union.rec* %989, %990
  br i1 %991, label %992, label %1102

; <label>:992                                     ; preds = %988
  %993 = load %union.rec*, %union.rec** %link, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 0
  %996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %995, i32 0, i64 1
  %997 = getelementptr inbounds %struct.LIST, %struct.LIST* %996, i32 0, i32 0
  %998 = load %union.rec*, %union.rec** %997, align 8
  store %union.rec* %998, %union.rec** %z, align 8
  br label %999

; <label>:999                                     ; preds = %1009, %992
  %1000 = load %union.rec*, %union.rec** %z, align 8
  %1001 = bitcast %union.rec* %1000 to %struct.word_type*
  %1002 = getelementptr inbounds %struct.word_type, %struct.word_type* %1001, i32 0, i32 1
  %1003 = bitcast %union.FIRST_UNION* %1002 to %struct.anon*
  %1004 = getelementptr inbounds %struct.anon, %struct.anon* %1003, i32 0, i32 0
  %1005 = load i8, i8* %1004, align 1
  %1006 = zext i8 %1005 to i32
  %1007 = icmp eq i32 %1006, 0
  br i1 %1007, label %1008, label %1016

; <label>:1008                                    ; preds = %999
  br label %1009

; <label>:1009                                    ; preds = %1008
  %1010 = load %union.rec*, %union.rec** %z, align 8
  %1011 = bitcast %union.rec* %1010 to %struct.word_type*
  %1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %1011, i32 0, i32 0
  %1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1012, i32 0, i64 1
  %1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %1013, i32 0, i32 0
  %1015 = load %union.rec*, %union.rec** %1014, align 8
  store %union.rec* %1015, %union.rec** %z, align 8
  br label %999

; <label>:1016                                    ; preds = %999
  %1017 = load %union.rec*, %union.rec** %z, align 8
  %1018 = bitcast %union.rec* %1017 to %struct.word_type*
  %1019 = getelementptr inbounds %struct.word_type, %struct.word_type* %1018, i32 0, i32 1
  %1020 = bitcast %union.FIRST_UNION* %1019 to %struct.anon*
  %1021 = getelementptr inbounds %struct.anon, %struct.anon* %1020, i32 0, i32 0
  %1022 = load i8, i8* %1021, align 1
  %1023 = zext i8 %1022 to i32
  %1024 = icmp eq i32 %1023, 1
  br i1 %1024, label %1043, label %1025

; <label>:1025                                    ; preds = %1016
  %1026 = load %union.rec*, %union.rec** %z, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 1
  %1029 = bitcast %union.FIRST_UNION* %1028 to %struct.anon*
  %1030 = getelementptr inbounds %struct.anon, %struct.anon* %1029, i32 0, i32 0
  %1031 = load i8, i8* %1030, align 1
  %1032 = zext i8 %1031 to i32
  %1033 = icmp sge i32 %1032, 119
  br i1 %1033, label %1034, label %1044

; <label>:1034                                    ; preds = %1025
  %1035 = load %union.rec*, %union.rec** %z, align 8
  %1036 = bitcast %union.rec* %1035 to %struct.word_type*
  %1037 = getelementptr inbounds %struct.word_type, %struct.word_type* %1036, i32 0, i32 1
  %1038 = bitcast %union.FIRST_UNION* %1037 to %struct.anon*
  %1039 = getelementptr inbounds %struct.anon, %struct.anon* %1038, i32 0, i32 0
  %1040 = load i8, i8* %1039, align 1
  %1041 = zext i8 %1040 to i32
  %1042 = icmp sle i32 %1041, 138
  br i1 %1042, label %1043, label %1044

; <label>:1043                                    ; preds = %1034, %1016
  br label %1095

; <label>:1044                                    ; preds = %1034, %1025
  %1045 = load i32, i32* %xback, align 4
  %1046 = load i32, i32* %3, align 4
  %1047 = sext i32 %1046 to i64
  %1048 = load %union.rec*, %union.rec** %z, align 8
  %1049 = bitcast %union.rec* %1048 to %struct.word_type*
  %1050 = getelementptr inbounds %struct.word_type, %struct.word_type* %1049, i32 0, i32 3
  %1051 = bitcast %union.THIRD_UNION* %1050 to %struct.anon.6*
  %1052 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1051, i32 0, i32 0
  %1053 = getelementptr inbounds [2 x i32], [2 x i32]* %1052, i32 0, i64 %1047
  %1054 = load i32, i32* %1053, align 4
  %1055 = icmp slt i32 %1045, %1054
  br i1 %1055, label %1056, label %1066

; <label>:1056                                    ; preds = %1044
  %1057 = load i32, i32* %3, align 4
  %1058 = sext i32 %1057 to i64
  %1059 = load %union.rec*, %union.rec** %z, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 3
  %1062 = bitcast %union.THIRD_UNION* %1061 to %struct.anon.6*
  %1063 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1062, i32 0, i32 0
  %1064 = getelementptr inbounds [2 x i32], [2 x i32]* %1063, i32 0, i64 %1058
  %1065 = load i32, i32* %1064, align 4
  br label %1068

; <label>:1066                                    ; preds = %1044
  %1067 = load i32, i32* %xback, align 4
  br label %1068

; <label>:1068                                    ; preds = %1066, %1056
  %1069 = phi i32 [ %1065, %1056 ], [ %1067, %1066 ]
  store i32 %1069, i32* %xback, align 4
  %1070 = load i32, i32* %xfwd, align 4
  %1071 = load i32, i32* %3, align 4
  %1072 = sext i32 %1071 to i64
  %1073 = load %union.rec*, %union.rec** %z, align 8
  %1074 = bitcast %union.rec* %1073 to %struct.word_type*
  %1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %1074, i32 0, i32 3
  %1076 = bitcast %union.THIRD_UNION* %1075 to %struct.anon.6*
  %1077 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1076, i32 0, i32 1
  %1078 = getelementptr inbounds [2 x i32], [2 x i32]* %1077, i32 0, i64 %1072
  %1079 = load i32, i32* %1078, align 4
  %1080 = icmp slt i32 %1070, %1079
  br i1 %1080, label %1081, label %1091

; <label>:1081                                    ; preds = %1068
  %1082 = load i32, i32* %3, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = load %union.rec*, %union.rec** %z, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 3
  %1087 = bitcast %union.THIRD_UNION* %1086 to %struct.anon.6*
  %1088 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1087, i32 0, i32 1
  %1089 = getelementptr inbounds [2 x i32], [2 x i32]* %1088, i32 0, i64 %1083
  %1090 = load i32, i32* %1089, align 4
  br label %1093

; <label>:1091                                    ; preds = %1068
  %1092 = load i32, i32* %xfwd, align 4
  br label %1093

; <label>:1093                                    ; preds = %1091, %1081
  %1094 = phi i32 [ %1090, %1081 ], [ %1092, %1091 ]
  store i32 %1094, i32* %xfwd, align 4
  br label %1095

; <label>:1095                                    ; preds = %1093, %1043
  %1096 = load %union.rec*, %union.rec** %link, align 8
  %1097 = bitcast %union.rec* %1096 to %struct.word_type*
  %1098 = getelementptr inbounds %struct.word_type, %struct.word_type* %1097, i32 0, i32 0
  %1099 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1098, i32 0, i64 0
  %1100 = getelementptr inbounds %struct.LIST, %struct.LIST* %1099, i32 0, i32 1
  %1101 = load %union.rec*, %union.rec** %1100, align 8
  store %union.rec* %1101, %union.rec** %link, align 8
  br label %988

; <label>:1102                                    ; preds = %988
  %1103 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %1104 = load i32, i32* %1103, align 4
  %1105 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %1106 = load i32, i32* %1105, align 4
  %1107 = icmp slt i32 %1104, %1106
  br i1 %1107, label %1108, label %1111

; <label>:1108                                    ; preds = %1102
  %1109 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %1110 = load i32, i32* %1109, align 4
  br label %1114

; <label>:1111                                    ; preds = %1102
  %1112 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %1113 = load i32, i32* %1112, align 4
  br label %1114

; <label>:1114                                    ; preds = %1111, %1108
  %1115 = phi i32 [ %1110, %1108 ], [ %1113, %1111 ]
  store i32 %1115, i32* %tbf, align 4
  %1116 = load i32, i32* %tbf, align 4
  %1117 = icmp eq i32 %1116, 8388607
  br i1 %1117, label %1118, label %1119

; <label>:1118                                    ; preds = %1114
  br label %1123

; <label>:1119                                    ; preds = %1114
  %1120 = load i32, i32* %tbf, align 4
  %1121 = load i32, i32* %xfwd, align 4
  %1122 = sub nsw i32 %1120, %1121
  br label %1123

; <label>:1123                                    ; preds = %1119, %1118
  %1124 = phi i32 [ 8388607, %1118 ], [ %1122, %1119 ]
  store i32 %1124, i32* %tbc, align 4
  %1125 = load i32, i32* %tbf, align 4
  %1126 = icmp eq i32 %1125, 8388607
  br i1 %1126, label %1127, label %1128

; <label>:1127                                    ; preds = %1123
  br label %1132

; <label>:1128                                    ; preds = %1123
  %1129 = load i32, i32* %tbf, align 4
  %1130 = load i32, i32* %xback, align 4
  %1131 = sub nsw i32 %1129, %1130
  br label %1132

; <label>:1132                                    ; preds = %1128, %1127
  %1133 = phi i32 [ 8388607, %1127 ], [ %1131, %1128 ]
  store i32 %1133, i32* %tfc, align 4
  %1134 = load i32, i32* %tbc, align 4
  %1135 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %1136 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1135, i32 0, i32 0
  store i32 %1134, i32* %1136, align 4
  %1137 = load i32, i32* %tbf, align 4
  %1138 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %1139 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1138, i32 0, i32 1
  store i32 %1137, i32* %1139, align 4
  %1140 = load i32, i32* %tfc, align 4
  %1141 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %1142 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1141, i32 0, i32 2
  store i32 %1140, i32* %1142, align 4
  br label %1143

; <label>:1143                                    ; preds = %1132, %969
  br label %1144

; <label>:1144                                    ; preds = %1143, %748
  br label %1156

; <label>:1145                                    ; preds = %144
  %1146 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1147 = load %union.rec*, %union.rec** %y, align 8
  %1148 = bitcast %union.rec* %1147 to %struct.word_type*
  %1149 = getelementptr inbounds %struct.word_type, %struct.word_type* %1148, i32 0, i32 1
  %1150 = bitcast %union.FIRST_UNION* %1149 to %struct.anon*
  %1151 = getelementptr inbounds %struct.anon, %struct.anon* %1150, i32 0, i32 0
  %1152 = load i8, i8* %1151, align 1
  %1153 = zext i8 %1152 to i32
  %1154 = call i8* @Image(i32 %1153)
  %1155 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.6, i32 0, i32 0), i32 0, %struct.FILE_POS* %1146, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* %1154)
  br label %1156

; <label>:1156                                    ; preds = %51, %1145, %1144, %726, %700, %620, %587, %497, %496, %294, %254, %253, %211, %184, %153
  ret void
}

declare void @SetLengthDim(i32) #1

declare i32 @FindShift(%union.rec*, %union.rec*, i32) #1

; Function Attrs: nounwind uwtable
define internal void @CatConstrained(%union.rec* %x, %struct.CONSTRAINT* %xc, i32 %ratm, %union.rec* %y, i32 %dim, %union.rec** %why) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.CONSTRAINT*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %union.rec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %union.rec**, align 8
  %side = alloca i32, align 4
  %yc = alloca %struct.CONSTRAINT, align 4
  %backy = alloca i32, align 4
  %fwdy = alloca i32, align 4
  %be = alloca i32, align 4
  %fe = alloca i32, align 4
  %beffect = alloca i32, align 4
  %feffect = alloca i32, align 4
  %seffect = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %sg = alloca %union.rec*, align 8
  %pg = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %sd = alloca %union.rec*, align 8
  %tb = alloca i32, align 4
  %tbf = alloca i32, align 4
  %tf = alloca i32, align 4
  %tbc = alloca i32, align 4
  %tbfc = alloca i32, align 4
  %tfc = alloca i32, align 4
  %mxy = alloca i32, align 4
  %myz = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.CONSTRAINT* %xc, %struct.CONSTRAINT** %2, align 8
  store i32 %ratm, i32* %3, align 4
  store %union.rec* %y, %union.rec** %4, align 8
  store i32 %dim, i32* %5, align 4
  store %union.rec** %why, %union.rec*** %6, align 8
  %7 = load %union.rec*, %union.rec** %4, align 8
  %8 = load i32, i32* %5, align 4
  %9 = load %union.rec**, %union.rec*** %6, align 8
  call void @Constrained(%union.rec* %7, %struct.CONSTRAINT* %yc, i32 %8, %union.rec** %9)
  %10 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 8388607
  br i1 %12, label %21, label %13

; <label>:13                                      ; preds = %0
  %14 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 8388607
  br i1 %16, label %21, label %17

; <label>:17                                      ; preds = %13
  %18 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 8388607
  br i1 %20, label %21, label %765

; <label>:21                                      ; preds = %17, %13, %0
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %31

; <label>:24                                      ; preds = %21
  %25 = load %union.rec*, %union.rec** %1, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 1
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 1
  %30 = load %union.rec*, %union.rec** %29, align 8
  br label %38

; <label>:31                                      ; preds = %21
  %32 = load %union.rec*, %union.rec** %1, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 0
  %35 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %34, i32 0, i64 1
  %36 = getelementptr inbounds %struct.LIST, %struct.LIST* %35, i32 0, i32 0
  %37 = load %union.rec*, %union.rec** %36, align 8
  br label %38

; <label>:38                                      ; preds = %31, %24
  %39 = phi %union.rec* [ %30, %24 ], [ %37, %31 ]
  store %union.rec* %39, %union.rec** %link, align 8
  %40 = load %union.rec*, %union.rec** %link, align 8
  %41 = load i32, i32* %3, align 4
  call void @SetNeighbours(%union.rec* %40, i32 %41, %union.rec** %pg, %union.rec** %prec_def, %union.rec** %sg, %union.rec** %sd, i32* %side)
  %42 = load %union.rec*, %union.rec** %pg, align 8
  %43 = icmp eq %union.rec* %42, null
  br i1 %43, label %44, label %45

; <label>:44                                      ; preds = %38
  br label %59

; <label>:45                                      ; preds = %38
  %46 = load i32, i32* %5, align 4
  %47 = sext i32 %46 to i64
  %48 = load %union.rec*, %union.rec** %prec_def, align 8
  %49 = bitcast %union.rec* %48 to %struct.word_type*
  %50 = getelementptr inbounds %struct.word_type, %struct.word_type* %49, i32 0, i32 3
  %51 = bitcast %union.THIRD_UNION* %50 to %struct.anon.6*
  %52 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %51, i32 0, i32 1
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %52, i32 0, i64 %47
  %54 = load i32, i32* %53, align 4
  %55 = load %union.rec*, %union.rec** %pg, align 8
  %56 = bitcast %union.rec* %55 to %struct.gapobj_type*
  %57 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %56, i32 0, i32 3
  %58 = call i32 @ExtraGap(i32 %54, i32 0, %struct.GAP* %57, i32 151)
  br label %59

; <label>:59                                      ; preds = %45, %44
  %60 = phi i32 [ 0, %44 ], [ %58, %45 ]
  store i32 %60, i32* %be, align 4
  %61 = load %union.rec*, %union.rec** %sg, align 8
  %62 = icmp eq %union.rec* %61, null
  br i1 %62, label %63, label %64

; <label>:63                                      ; preds = %59
  br label %78

; <label>:64                                      ; preds = %59
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = load %union.rec*, %union.rec** %sd, align 8
  %68 = bitcast %union.rec* %67 to %struct.word_type*
  %69 = getelementptr inbounds %struct.word_type, %struct.word_type* %68, i32 0, i32 3
  %70 = bitcast %union.THIRD_UNION* %69 to %struct.anon.6*
  %71 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %70, i32 0, i32 0
  %72 = getelementptr inbounds [2 x i32], [2 x i32]* %71, i32 0, i64 %66
  %73 = load i32, i32* %72, align 4
  %74 = load %union.rec*, %union.rec** %sg, align 8
  %75 = bitcast %union.rec* %74 to %struct.gapobj_type*
  %76 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %75, i32 0, i32 3
  %77 = call i32 @ExtraGap(i32 0, i32 %73, %struct.GAP* %76, i32 153)
  br label %78

; <label>:78                                      ; preds = %64, %63
  %79 = phi i32 [ 0, %63 ], [ %77, %64 ]
  store i32 %79, i32* %fe, align 4
  %80 = load %union.rec*, %union.rec** %1, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 1
  %83 = bitcast %union.FIRST_UNION* %82 to %struct.anon*
  %84 = getelementptr inbounds %struct.anon, %struct.anon* %83, i32 0, i32 0
  %85 = load i8, i8* %84, align 1
  %86 = zext i8 %85 to i32
  %87 = icmp sge i32 %86, 2
  br i1 %87, label %88, label %276

; <label>:88                                      ; preds = %78
  %89 = load %union.rec*, %union.rec** %1, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp sle i32 %95, 8
  br i1 %96, label %97, label %276

; <label>:97                                      ; preds = %88
  %98 = load %union.rec*, %union.rec** %pg, align 8
  %99 = icmp eq %union.rec* %98, null
  br i1 %99, label %100, label %101

; <label>:100                                     ; preds = %97
  br label %115

; <label>:101                                     ; preds = %97
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = load %union.rec*, %union.rec** %prec_def, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 3
  %107 = bitcast %union.THIRD_UNION* %106 to %struct.anon.6*
  %108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %107, i32 0, i32 1
  %109 = getelementptr inbounds [2 x i32], [2 x i32]* %108, i32 0, i64 %103
  %110 = load i32, i32* %109, align 4
  %111 = load %union.rec*, %union.rec** %pg, align 8
  %112 = bitcast %union.rec* %111 to %struct.gapobj_type*
  %113 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %112, i32 0, i32 3
  %114 = call i32 @MinGap(i32 %110, i32 0, i32 0, %struct.GAP* %113)
  br label %115

; <label>:115                                     ; preds = %101, %100
  %116 = phi i32 [ 0, %100 ], [ %114, %101 ]
  store i32 %116, i32* %beffect, align 4
  %117 = load %union.rec*, %union.rec** %sg, align 8
  %118 = icmp eq %union.rec* %117, null
  br i1 %118, label %119, label %120

; <label>:119                                     ; preds = %115
  br label %143

; <label>:120                                     ; preds = %115
  %121 = load i32, i32* %5, align 4
  %122 = sext i32 %121 to i64
  %123 = load %union.rec*, %union.rec** %sd, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 3
  %126 = bitcast %union.THIRD_UNION* %125 to %struct.anon.6*
  %127 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %126, i32 0, i32 0
  %128 = getelementptr inbounds [2 x i32], [2 x i32]* %127, i32 0, i64 %122
  %129 = load i32, i32* %128, align 4
  %130 = load i32, i32* %5, align 4
  %131 = sext i32 %130 to i64
  %132 = load %union.rec*, %union.rec** %sd, align 8
  %133 = bitcast %union.rec* %132 to %struct.word_type*
  %134 = getelementptr inbounds %struct.word_type, %struct.word_type* %133, i32 0, i32 3
  %135 = bitcast %union.THIRD_UNION* %134 to %struct.anon.6*
  %136 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %135, i32 0, i32 1
  %137 = getelementptr inbounds [2 x i32], [2 x i32]* %136, i32 0, i64 %131
  %138 = load i32, i32* %137, align 4
  %139 = load %union.rec*, %union.rec** %sg, align 8
  %140 = bitcast %union.rec* %139 to %struct.gapobj_type*
  %141 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %140, i32 0, i32 3
  %142 = call i32 @MinGap(i32 0, i32 %129, i32 %138, %struct.GAP* %141)
  br label %143

; <label>:143                                     ; preds = %120, %119
  %144 = phi i32 [ 0, %119 ], [ %142, %120 ]
  store i32 %144, i32* %feffect, align 4
  %145 = load %union.rec*, %union.rec** %pg, align 8
  %146 = icmp eq %union.rec* %145, null
  br i1 %146, label %147, label %163

; <label>:147                                     ; preds = %143
  %148 = load %union.rec*, %union.rec** %sg, align 8
  %149 = icmp eq %union.rec* %148, null
  br i1 %149, label %150, label %151

; <label>:150                                     ; preds = %147
  br label %161

; <label>:151                                     ; preds = %147
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = load %union.rec*, %union.rec** %sd, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 3
  %157 = bitcast %union.THIRD_UNION* %156 to %struct.anon.6*
  %158 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %157, i32 0, i32 0
  %159 = getelementptr inbounds [2 x i32], [2 x i32]* %158, i32 0, i64 %153
  %160 = load i32, i32* %159, align 4
  br label %161

; <label>:161                                     ; preds = %151, %150
  %162 = phi i32 [ 0, %150 ], [ %160, %151 ]
  br label %210

; <label>:163                                     ; preds = %143
  %164 = load %union.rec*, %union.rec** %sg, align 8
  %165 = icmp eq %union.rec* %164, null
  br i1 %165, label %166, label %176

; <label>:166                                     ; preds = %163
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = load %union.rec*, %union.rec** %prec_def, align 8
  %170 = bitcast %union.rec* %169 to %struct.word_type*
  %171 = getelementptr inbounds %struct.word_type, %struct.word_type* %170, i32 0, i32 3
  %172 = bitcast %union.THIRD_UNION* %171 to %struct.anon.6*
  %173 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %172, i32 0, i32 1
  %174 = getelementptr inbounds [2 x i32], [2 x i32]* %173, i32 0, i64 %168
  %175 = load i32, i32* %174, align 4
  br label %208

; <label>:176                                     ; preds = %163
  %177 = load i32, i32* %5, align 4
  %178 = sext i32 %177 to i64
  %179 = load %union.rec*, %union.rec** %prec_def, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 3
  %182 = bitcast %union.THIRD_UNION* %181 to %struct.anon.6*
  %183 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %182, i32 0, i32 1
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %183, i32 0, i64 %178
  %185 = load i32, i32* %184, align 4
  %186 = load i32, i32* %5, align 4
  %187 = sext i32 %186 to i64
  %188 = load %union.rec*, %union.rec** %sd, align 8
  %189 = bitcast %union.rec* %188 to %struct.word_type*
  %190 = getelementptr inbounds %struct.word_type, %struct.word_type* %189, i32 0, i32 3
  %191 = bitcast %union.THIRD_UNION* %190 to %struct.anon.6*
  %192 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x i32], [2 x i32]* %192, i32 0, i64 %187
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %5, align 4
  %196 = sext i32 %195 to i64
  %197 = load %union.rec*, %union.rec** %sd, align 8
  %198 = bitcast %union.rec* %197 to %struct.word_type*
  %199 = getelementptr inbounds %struct.word_type, %struct.word_type* %198, i32 0, i32 3
  %200 = bitcast %union.THIRD_UNION* %199 to %struct.anon.6*
  %201 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %200, i32 0, i32 1
  %202 = getelementptr inbounds [2 x i32], [2 x i32]* %201, i32 0, i64 %196
  %203 = load i32, i32* %202, align 4
  %204 = load %union.rec*, %union.rec** %sg, align 8
  %205 = bitcast %union.rec* %204 to %struct.gapobj_type*
  %206 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %205, i32 0, i32 3
  %207 = call i32 @MinGap(i32 %185, i32 %194, i32 %203, %struct.GAP* %206)
  br label %208

; <label>:208                                     ; preds = %176, %166
  %209 = phi i32 [ %175, %166 ], [ %207, %176 ]
  br label %210

; <label>:210                                     ; preds = %208, %161
  %211 = phi i32 [ %162, %161 ], [ %209, %208 ]
  store i32 %211, i32* %seffect, align 4
  %212 = load i32, i32* %side, align 4
  switch i32 %212, label %275 [
    i32 151, label %213
    i32 152, label %238
    i32 153, label %250
  ]

; <label>:213                                     ; preds = %210
  %214 = load i32, i32* %5, align 4
  %215 = sext i32 %214 to i64
  %216 = load %union.rec*, %union.rec** %4, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 3
  %219 = bitcast %union.THIRD_UNION* %218 to %struct.anon.6*
  %220 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %219, i32 0, i32 0
  %221 = getelementptr inbounds [2 x i32], [2 x i32]* %220, i32 0, i64 %215
  %222 = load i32, i32* %221, align 4
  %223 = load i32, i32* %beffect, align 4
  %224 = add nsw i32 %222, %223
  %225 = load i32, i32* %feffect, align 4
  %226 = add nsw i32 %224, %225
  %227 = load i32, i32* %seffect, align 4
  %228 = sub nsw i32 %226, %227
  store i32 %228, i32* %backy, align 4
  %229 = load i32, i32* %5, align 4
  %230 = sext i32 %229 to i64
  %231 = load %union.rec*, %union.rec** %4, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 3
  %234 = bitcast %union.THIRD_UNION* %233 to %struct.anon.6*
  %235 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %234, i32 0, i32 1
  %236 = getelementptr inbounds [2 x i32], [2 x i32]* %235, i32 0, i64 %230
  %237 = load i32, i32* %236, align 4
  store i32 %237, i32* %fwdy, align 4
  br label %275

; <label>:238                                     ; preds = %210
  store i32 0, i32* %backy, align 4
  %239 = load i32, i32* %5, align 4
  %240 = sext i32 %239 to i64
  %241 = load %union.rec*, %union.rec** %4, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 3
  %244 = bitcast %union.THIRD_UNION* %243 to %struct.anon.6*
  %245 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %244, i32 0, i32 1
  %246 = getelementptr inbounds [2 x i32], [2 x i32]* %245, i32 0, i64 %240
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %feffect, align 4
  %249 = add nsw i32 %247, %248
  store i32 %249, i32* %fwdy, align 4
  br label %275

; <label>:250                                     ; preds = %210
  %251 = load i32, i32* %5, align 4
  %252 = sext i32 %251 to i64
  %253 = load %union.rec*, %union.rec** %4, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 3
  %256 = bitcast %union.THIRD_UNION* %255 to %struct.anon.6*
  %257 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %256, i32 0, i32 0
  %258 = getelementptr inbounds [2 x i32], [2 x i32]* %257, i32 0, i64 %252
  %259 = load i32, i32* %258, align 4
  store i32 %259, i32* %backy, align 4
  %260 = load i32, i32* %5, align 4
  %261 = sext i32 %260 to i64
  %262 = load %union.rec*, %union.rec** %4, align 8
  %263 = bitcast %union.rec* %262 to %struct.word_type*
  %264 = getelementptr inbounds %struct.word_type, %struct.word_type* %263, i32 0, i32 3
  %265 = bitcast %union.THIRD_UNION* %264 to %struct.anon.6*
  %266 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %265, i32 0, i32 1
  %267 = getelementptr inbounds [2 x i32], [2 x i32]* %266, i32 0, i64 %261
  %268 = load i32, i32* %267, align 4
  %269 = load i32, i32* %beffect, align 4
  %270 = add nsw i32 %268, %269
  %271 = load i32, i32* %feffect, align 4
  %272 = add nsw i32 %270, %271
  %273 = load i32, i32* %seffect, align 4
  %274 = sub nsw i32 %272, %273
  store i32 %274, i32* %fwdy, align 4
  br label %275

; <label>:275                                     ; preds = %210, %250, %238, %213
  br label %477

; <label>:276                                     ; preds = %88, %78
  %277 = load %union.rec*, %union.rec** %pg, align 8
  %278 = icmp eq %union.rec* %277, null
  br i1 %278, label %279, label %289

; <label>:279                                     ; preds = %276
  %280 = load i32, i32* %5, align 4
  %281 = sext i32 %280 to i64
  %282 = load %union.rec*, %union.rec** %1, align 8
  %283 = bitcast %union.rec* %282 to %struct.word_type*
  %284 = getelementptr inbounds %struct.word_type, %struct.word_type* %283, i32 0, i32 3
  %285 = bitcast %union.THIRD_UNION* %284 to %struct.anon.6*
  %286 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x i32], [2 x i32]* %286, i32 0, i64 %281
  %288 = load i32, i32* %287, align 4
  br label %335

; <label>:289                                     ; preds = %276
  %290 = load i32, i32* %5, align 4
  %291 = sext i32 %290 to i64
  %292 = load %union.rec*, %union.rec** %prec_def, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 3
  %295 = bitcast %union.THIRD_UNION* %294 to %struct.anon.6*
  %296 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %295, i32 0, i32 1
  %297 = getelementptr inbounds [2 x i32], [2 x i32]* %296, i32 0, i64 %291
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %5, align 4
  %300 = sext i32 %299 to i64
  %301 = load %union.rec*, %union.rec** %1, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 3
  %304 = bitcast %union.THIRD_UNION* %303 to %struct.anon.6*
  %305 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %304, i32 0, i32 0
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %305, i32 0, i64 %300
  %307 = load i32, i32* %306, align 4
  %308 = load i32, i32* %5, align 4
  %309 = sext i32 %308 to i64
  %310 = load %union.rec*, %union.rec** %1, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 3
  %313 = bitcast %union.THIRD_UNION* %312 to %struct.anon.6*
  %314 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %313, i32 0, i32 1
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %314, i32 0, i64 %309
  %316 = load i32, i32* %315, align 4
  %317 = load %union.rec*, %union.rec** %pg, align 8
  %318 = bitcast %union.rec* %317 to %struct.gapobj_type*
  %319 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %318, i32 0, i32 3
  %320 = call i32 @MinGap(i32 %298, i32 %307, i32 %316, %struct.GAP* %319)
  %321 = load i32, i32* %5, align 4
  %322 = sext i32 %321 to i64
  %323 = load %union.rec*, %union.rec** %prec_def, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 3
  %326 = bitcast %union.THIRD_UNION* %325 to %struct.anon.6*
  %327 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %326, i32 0, i32 1
  %328 = getelementptr inbounds [2 x i32], [2 x i32]* %327, i32 0, i64 %322
  %329 = load i32, i32* %328, align 4
  %330 = load %union.rec*, %union.rec** %pg, align 8
  %331 = bitcast %union.rec* %330 to %struct.gapobj_type*
  %332 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %331, i32 0, i32 3
  %333 = call i32 @MinGap(i32 %329, i32 0, i32 0, %struct.GAP* %332)
  %334 = sub nsw i32 %320, %333
  br label %335

; <label>:335                                     ; preds = %289, %279
  %336 = phi i32 [ %288, %279 ], [ %334, %289 ]
  store i32 %336, i32* %beffect, align 4
  %337 = load %union.rec*, %union.rec** %sg, align 8
  %338 = icmp eq %union.rec* %337, null
  br i1 %338, label %339, label %349

; <label>:339                                     ; preds = %335
  %340 = load i32, i32* %5, align 4
  %341 = sext i32 %340 to i64
  %342 = load %union.rec*, %union.rec** %1, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 3
  %345 = bitcast %union.THIRD_UNION* %344 to %struct.anon.6*
  %346 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %345, i32 0, i32 1
  %347 = getelementptr inbounds [2 x i32], [2 x i32]* %346, i32 0, i64 %341
  %348 = load i32, i32* %347, align 4
  br label %404

; <label>:349                                     ; preds = %335
  %350 = load i32, i32* %5, align 4
  %351 = sext i32 %350 to i64
  %352 = load %union.rec*, %union.rec** %1, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 3
  %355 = bitcast %union.THIRD_UNION* %354 to %struct.anon.6*
  %356 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %355, i32 0, i32 1
  %357 = getelementptr inbounds [2 x i32], [2 x i32]* %356, i32 0, i64 %351
  %358 = load i32, i32* %357, align 4
  %359 = load i32, i32* %5, align 4
  %360 = sext i32 %359 to i64
  %361 = load %union.rec*, %union.rec** %sd, align 8
  %362 = bitcast %union.rec* %361 to %struct.word_type*
  %363 = getelementptr inbounds %struct.word_type, %struct.word_type* %362, i32 0, i32 3
  %364 = bitcast %union.THIRD_UNION* %363 to %struct.anon.6*
  %365 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %364, i32 0, i32 0
  %366 = getelementptr inbounds [2 x i32], [2 x i32]* %365, i32 0, i64 %360
  %367 = load i32, i32* %366, align 4
  %368 = load i32, i32* %5, align 4
  %369 = sext i32 %368 to i64
  %370 = load %union.rec*, %union.rec** %sd, align 8
  %371 = bitcast %union.rec* %370 to %struct.word_type*
  %372 = getelementptr inbounds %struct.word_type, %struct.word_type* %371, i32 0, i32 3
  %373 = bitcast %union.THIRD_UNION* %372 to %struct.anon.6*
  %374 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %373, i32 0, i32 1
  %375 = getelementptr inbounds [2 x i32], [2 x i32]* %374, i32 0, i64 %369
  %376 = load i32, i32* %375, align 4
  %377 = load %union.rec*, %union.rec** %sg, align 8
  %378 = bitcast %union.rec* %377 to %struct.gapobj_type*
  %379 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %378, i32 0, i32 3
  %380 = call i32 @MinGap(i32 %358, i32 %367, i32 %376, %struct.GAP* %379)
  %381 = load i32, i32* %5, align 4
  %382 = sext i32 %381 to i64
  %383 = load %union.rec*, %union.rec** %sd, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 3
  %386 = bitcast %union.THIRD_UNION* %385 to %struct.anon.6*
  %387 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x i32], [2 x i32]* %387, i32 0, i64 %382
  %389 = load i32, i32* %388, align 4
  %390 = load i32, i32* %5, align 4
  %391 = sext i32 %390 to i64
  %392 = load %union.rec*, %union.rec** %sd, align 8
  %393 = bitcast %union.rec* %392 to %struct.word_type*
  %394 = getelementptr inbounds %struct.word_type, %struct.word_type* %393, i32 0, i32 3
  %395 = bitcast %union.THIRD_UNION* %394 to %struct.anon.6*
  %396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %395, i32 0, i32 1
  %397 = getelementptr inbounds [2 x i32], [2 x i32]* %396, i32 0, i64 %391
  %398 = load i32, i32* %397, align 4
  %399 = load %union.rec*, %union.rec** %sg, align 8
  %400 = bitcast %union.rec* %399 to %struct.gapobj_type*
  %401 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %400, i32 0, i32 3
  %402 = call i32 @MinGap(i32 0, i32 %389, i32 %398, %struct.GAP* %401)
  %403 = sub nsw i32 %380, %402
  br label %404

; <label>:404                                     ; preds = %349, %339
  %405 = phi i32 [ %348, %339 ], [ %403, %349 ]
  store i32 %405, i32* %feffect, align 4
  %406 = load i32, i32* %side, align 4
  switch i32 %406, label %476 [
    i32 151, label %407
    i32 152, label %430
    i32 153, label %453
  ]

; <label>:407                                     ; preds = %404
  %408 = load i32, i32* %5, align 4
  %409 = sext i32 %408 to i64
  %410 = load %union.rec*, %union.rec** %4, align 8
  %411 = bitcast %union.rec* %410 to %struct.word_type*
  %412 = getelementptr inbounds %struct.word_type, %struct.word_type* %411, i32 0, i32 3
  %413 = bitcast %union.THIRD_UNION* %412 to %struct.anon.6*
  %414 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %413, i32 0, i32 0
  %415 = getelementptr inbounds [2 x i32], [2 x i32]* %414, i32 0, i64 %409
  %416 = load i32, i32* %415, align 4
  %417 = load i32, i32* %beffect, align 4
  %418 = sub nsw i32 %416, %417
  %419 = load i32, i32* %feffect, align 4
  %420 = sub nsw i32 %418, %419
  store i32 %420, i32* %backy, align 4
  %421 = load i32, i32* %5, align 4
  %422 = sext i32 %421 to i64
  %423 = load %union.rec*, %union.rec** %4, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 3
  %426 = bitcast %union.THIRD_UNION* %425 to %struct.anon.6*
  %427 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %426, i32 0, i32 1
  %428 = getelementptr inbounds [2 x i32], [2 x i32]* %427, i32 0, i64 %422
  %429 = load i32, i32* %428, align 4
  store i32 %429, i32* %fwdy, align 4
  br label %476

; <label>:430                                     ; preds = %404
  %431 = load i32, i32* %5, align 4
  %432 = sext i32 %431 to i64
  %433 = load %union.rec*, %union.rec** %4, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 3
  %436 = bitcast %union.THIRD_UNION* %435 to %struct.anon.6*
  %437 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %436, i32 0, i32 0
  %438 = getelementptr inbounds [2 x i32], [2 x i32]* %437, i32 0, i64 %432
  %439 = load i32, i32* %438, align 4
  %440 = load i32, i32* %beffect, align 4
  %441 = sub nsw i32 %439, %440
  store i32 %441, i32* %backy, align 4
  %442 = load i32, i32* %5, align 4
  %443 = sext i32 %442 to i64
  %444 = load %union.rec*, %union.rec** %4, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 3
  %447 = bitcast %union.THIRD_UNION* %446 to %struct.anon.6*
  %448 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %447, i32 0, i32 1
  %449 = getelementptr inbounds [2 x i32], [2 x i32]* %448, i32 0, i64 %443
  %450 = load i32, i32* %449, align 4
  %451 = load i32, i32* %feffect, align 4
  %452 = sub nsw i32 %450, %451
  store i32 %452, i32* %fwdy, align 4
  br label %476

; <label>:453                                     ; preds = %404
  %454 = load i32, i32* %5, align 4
  %455 = sext i32 %454 to i64
  %456 = load %union.rec*, %union.rec** %4, align 8
  %457 = bitcast %union.rec* %456 to %struct.word_type*
  %458 = getelementptr inbounds %struct.word_type, %struct.word_type* %457, i32 0, i32 3
  %459 = bitcast %union.THIRD_UNION* %458 to %struct.anon.6*
  %460 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %459, i32 0, i32 0
  %461 = getelementptr inbounds [2 x i32], [2 x i32]* %460, i32 0, i64 %455
  %462 = load i32, i32* %461, align 4
  store i32 %462, i32* %backy, align 4
  %463 = load i32, i32* %5, align 4
  %464 = sext i32 %463 to i64
  %465 = load %union.rec*, %union.rec** %4, align 8
  %466 = bitcast %union.rec* %465 to %struct.word_type*
  %467 = getelementptr inbounds %struct.word_type, %struct.word_type* %466, i32 0, i32 3
  %468 = bitcast %union.THIRD_UNION* %467 to %struct.anon.6*
  %469 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %468, i32 0, i32 1
  %470 = getelementptr inbounds [2 x i32], [2 x i32]* %469, i32 0, i64 %464
  %471 = load i32, i32* %470, align 4
  %472 = load i32, i32* %beffect, align 4
  %473 = sub nsw i32 %471, %472
  %474 = load i32, i32* %feffect, align 4
  %475 = sub nsw i32 %473, %474
  store i32 %475, i32* %fwdy, align 4
  br label %476

; <label>:476                                     ; preds = %404, %453, %430, %407
  br label %477

; <label>:477                                     ; preds = %476, %275
  %478 = load i32, i32* %backy, align 4
  %479 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %480 = load i32, i32* %479, align 4
  %481 = icmp sle i32 %478, %480
  br i1 %481, label %482, label %494

; <label>:482                                     ; preds = %477
  %483 = load i32, i32* %backy, align 4
  %484 = load i32, i32* %fwdy, align 4
  %485 = add nsw i32 %483, %484
  %486 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %487 = load i32, i32* %486, align 4
  %488 = icmp sle i32 %485, %487
  br i1 %488, label %489, label %494

; <label>:489                                     ; preds = %482
  %490 = load i32, i32* %fwdy, align 4
  %491 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %492 = load i32, i32* %491, align 4
  %493 = icmp sle i32 %490, %492
  br i1 %493, label %501, label %494

; <label>:494                                     ; preds = %489, %482, %477
  %495 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %496 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %495, i32 0, i32 0
  store i32 -1, i32* %496, align 4
  %497 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %498 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %497, i32 0, i32 1
  store i32 -1, i32* %498, align 4
  %499 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %500 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %499, i32 0, i32 2
  store i32 -1, i32* %500, align 4
  br label %764

; <label>:501                                     ; preds = %489
  %502 = load i32, i32* %side, align 4
  switch i32 %502, label %763 [
    i32 151, label %503
    i32 152, label %583
    i32 153, label %683
  ]

; <label>:503                                     ; preds = %501
  %504 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %505 = load i32, i32* %504, align 4
  %506 = icmp eq i32 %505, 8388607
  br i1 %506, label %507, label %508

; <label>:507                                     ; preds = %503
  br label %513

; <label>:508                                     ; preds = %503
  %509 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %510 = load i32, i32* %509, align 4
  %511 = load i32, i32* %backy, align 4
  %512 = sub nsw i32 %510, %511
  br label %513

; <label>:513                                     ; preds = %508, %507
  %514 = phi i32 [ 8388607, %507 ], [ %512, %508 ]
  store i32 %514, i32* %tbc, align 4
  %515 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %516 = load i32, i32* %515, align 4
  %517 = icmp eq i32 %516, 8388607
  br i1 %517, label %518, label %519

; <label>:518                                     ; preds = %513
  br label %526

; <label>:519                                     ; preds = %513
  %520 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %521 = load i32, i32* %520, align 4
  %522 = load i32, i32* %backy, align 4
  %523 = sub nsw i32 %521, %522
  %524 = load i32, i32* %fwdy, align 4
  %525 = sub nsw i32 %523, %524
  br label %526

; <label>:526                                     ; preds = %519, %518
  %527 = phi i32 [ 8388607, %518 ], [ %525, %519 ]
  store i32 %527, i32* %tbfc, align 4
  %528 = load i32, i32* %tbc, align 4
  %529 = load i32, i32* %tbfc, align 4
  %530 = icmp slt i32 %528, %529
  br i1 %530, label %531, label %533

; <label>:531                                     ; preds = %526
  %532 = load i32, i32* %tbc, align 4
  br label %535

; <label>:533                                     ; preds = %526
  %534 = load i32, i32* %tbfc, align 4
  br label %535

; <label>:535                                     ; preds = %533, %531
  %536 = phi i32 [ %532, %531 ], [ %534, %533 ]
  store i32 %536, i32* %mxy, align 4
  %537 = load i32, i32* %be, align 4
  %538 = load i32, i32* %mxy, align 4
  %539 = add nsw i32 %537, %538
  %540 = icmp slt i32 8388607, %539
  br i1 %540, label %541, label %542

; <label>:541                                     ; preds = %535
  br label %546

; <label>:542                                     ; preds = %535
  %543 = load i32, i32* %be, align 4
  %544 = load i32, i32* %mxy, align 4
  %545 = add nsw i32 %543, %544
  br label %546

; <label>:546                                     ; preds = %542, %541
  %547 = phi i32 [ 8388607, %541 ], [ %545, %542 ]
  store i32 %547, i32* %tb, align 4
  %548 = load i32, i32* %be, align 4
  %549 = load i32, i32* %fe, align 4
  %550 = add nsw i32 %548, %549
  %551 = load i32, i32* %mxy, align 4
  %552 = add nsw i32 %550, %551
  %553 = icmp slt i32 8388607, %552
  br i1 %553, label %554, label %555

; <label>:554                                     ; preds = %546
  br label %561

; <label>:555                                     ; preds = %546
  %556 = load i32, i32* %be, align 4
  %557 = load i32, i32* %fe, align 4
  %558 = add nsw i32 %556, %557
  %559 = load i32, i32* %mxy, align 4
  %560 = add nsw i32 %558, %559
  br label %561

; <label>:561                                     ; preds = %555, %554
  %562 = phi i32 [ 8388607, %554 ], [ %560, %555 ]
  store i32 %562, i32* %tbf, align 4
  %563 = load i32, i32* %fe, align 4
  %564 = load i32, i32* %mxy, align 4
  %565 = add nsw i32 %563, %564
  %566 = icmp slt i32 8388607, %565
  br i1 %566, label %567, label %568

; <label>:567                                     ; preds = %561
  br label %572

; <label>:568                                     ; preds = %561
  %569 = load i32, i32* %fe, align 4
  %570 = load i32, i32* %mxy, align 4
  %571 = add nsw i32 %569, %570
  br label %572

; <label>:572                                     ; preds = %568, %567
  %573 = phi i32 [ 8388607, %567 ], [ %571, %568 ]
  store i32 %573, i32* %tf, align 4
  %574 = load i32, i32* %tb, align 4
  %575 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %576 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %575, i32 0, i32 0
  store i32 %574, i32* %576, align 4
  %577 = load i32, i32* %tbf, align 4
  %578 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %579 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %578, i32 0, i32 1
  store i32 %577, i32* %579, align 4
  %580 = load i32, i32* %tf, align 4
  %581 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %582 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %581, i32 0, i32 2
  store i32 %580, i32* %582, align 4
  br label %763

; <label>:583                                     ; preds = %501
  %584 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %585 = load i32, i32* %584, align 4
  %586 = icmp eq i32 %585, 8388607
  br i1 %586, label %587, label %588

; <label>:587                                     ; preds = %583
  br label %593

; <label>:588                                     ; preds = %583
  %589 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %590 = load i32, i32* %589, align 4
  %591 = load i32, i32* %backy, align 4
  %592 = sub nsw i32 %590, %591
  br label %593

; <label>:593                                     ; preds = %588, %587
  %594 = phi i32 [ 8388607, %587 ], [ %592, %588 ]
  store i32 %594, i32* %tbc, align 4
  %595 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %596 = load i32, i32* %595, align 4
  %597 = icmp eq i32 %596, 8388607
  br i1 %597, label %598, label %599

; <label>:598                                     ; preds = %593
  br label %606

; <label>:599                                     ; preds = %593
  %600 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %601 = load i32, i32* %600, align 4
  %602 = load i32, i32* %backy, align 4
  %603 = sub nsw i32 %601, %602
  %604 = load i32, i32* %fwdy, align 4
  %605 = sub nsw i32 %603, %604
  br label %606

; <label>:606                                     ; preds = %599, %598
  %607 = phi i32 [ 8388607, %598 ], [ %605, %599 ]
  store i32 %607, i32* %tbfc, align 4
  %608 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %609 = load i32, i32* %608, align 4
  %610 = icmp eq i32 %609, 8388607
  br i1 %610, label %611, label %612

; <label>:611                                     ; preds = %606
  br label %617

; <label>:612                                     ; preds = %606
  %613 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %614 = load i32, i32* %613, align 4
  %615 = load i32, i32* %fwdy, align 4
  %616 = sub nsw i32 %614, %615
  br label %617

; <label>:617                                     ; preds = %612, %611
  %618 = phi i32 [ 8388607, %611 ], [ %616, %612 ]
  store i32 %618, i32* %tfc, align 4
  %619 = load i32, i32* %tbc, align 4
  %620 = load i32, i32* %tbfc, align 4
  %621 = icmp slt i32 %619, %620
  br i1 %621, label %622, label %624

; <label>:622                                     ; preds = %617
  %623 = load i32, i32* %tbc, align 4
  br label %626

; <label>:624                                     ; preds = %617
  %625 = load i32, i32* %tbfc, align 4
  br label %626

; <label>:626                                     ; preds = %624, %622
  %627 = phi i32 [ %623, %622 ], [ %625, %624 ]
  store i32 %627, i32* %mxy, align 4
  %628 = load i32, i32* %tfc, align 4
  %629 = load i32, i32* %tbfc, align 4
  %630 = icmp slt i32 %628, %629
  br i1 %630, label %631, label %633

; <label>:631                                     ; preds = %626
  %632 = load i32, i32* %tfc, align 4
  br label %635

; <label>:633                                     ; preds = %626
  %634 = load i32, i32* %tbfc, align 4
  br label %635

; <label>:635                                     ; preds = %633, %631
  %636 = phi i32 [ %632, %631 ], [ %634, %633 ]
  store i32 %636, i32* %myz, align 4
  %637 = load i32, i32* %be, align 4
  %638 = load i32, i32* %mxy, align 4
  %639 = add nsw i32 %637, %638
  %640 = icmp slt i32 8388607, %639
  br i1 %640, label %641, label %642

; <label>:641                                     ; preds = %635
  br label %646

; <label>:642                                     ; preds = %635
  %643 = load i32, i32* %be, align 4
  %644 = load i32, i32* %mxy, align 4
  %645 = add nsw i32 %643, %644
  br label %646

; <label>:646                                     ; preds = %642, %641
  %647 = phi i32 [ 8388607, %641 ], [ %645, %642 ]
  store i32 %647, i32* %tb, align 4
  %648 = load i32, i32* %be, align 4
  %649 = load i32, i32* %fe, align 4
  %650 = add nsw i32 %648, %649
  %651 = load i32, i32* %tbfc, align 4
  %652 = add nsw i32 %650, %651
  %653 = icmp slt i32 8388607, %652
  br i1 %653, label %654, label %655

; <label>:654                                     ; preds = %646
  br label %661

; <label>:655                                     ; preds = %646
  %656 = load i32, i32* %be, align 4
  %657 = load i32, i32* %fe, align 4
  %658 = add nsw i32 %656, %657
  %659 = load i32, i32* %tbfc, align 4
  %660 = add nsw i32 %658, %659
  br label %661

; <label>:661                                     ; preds = %655, %654
  %662 = phi i32 [ 8388607, %654 ], [ %660, %655 ]
  store i32 %662, i32* %tbf, align 4
  %663 = load i32, i32* %fe, align 4
  %664 = load i32, i32* %myz, align 4
  %665 = add nsw i32 %663, %664
  %666 = icmp slt i32 8388607, %665
  br i1 %666, label %667, label %668

; <label>:667                                     ; preds = %661
  br label %672

; <label>:668                                     ; preds = %661
  %669 = load i32, i32* %fe, align 4
  %670 = load i32, i32* %myz, align 4
  %671 = add nsw i32 %669, %670
  br label %672

; <label>:672                                     ; preds = %668, %667
  %673 = phi i32 [ 8388607, %667 ], [ %671, %668 ]
  store i32 %673, i32* %tf, align 4
  %674 = load i32, i32* %tb, align 4
  %675 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %676 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %675, i32 0, i32 0
  store i32 %674, i32* %676, align 4
  %677 = load i32, i32* %tbf, align 4
  %678 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %679 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %678, i32 0, i32 1
  store i32 %677, i32* %679, align 4
  %680 = load i32, i32* %tf, align 4
  %681 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %682 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %681, i32 0, i32 2
  store i32 %680, i32* %682, align 4
  br label %763

; <label>:683                                     ; preds = %501
  %684 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %685 = load i32, i32* %684, align 4
  %686 = icmp eq i32 %685, 8388607
  br i1 %686, label %687, label %688

; <label>:687                                     ; preds = %683
  br label %693

; <label>:688                                     ; preds = %683
  %689 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %690 = load i32, i32* %689, align 4
  %691 = load i32, i32* %fwdy, align 4
  %692 = sub nsw i32 %690, %691
  br label %693

; <label>:693                                     ; preds = %688, %687
  %694 = phi i32 [ 8388607, %687 ], [ %692, %688 ]
  store i32 %694, i32* %tfc, align 4
  %695 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %696 = load i32, i32* %695, align 4
  %697 = icmp eq i32 %696, 8388607
  br i1 %697, label %698, label %699

; <label>:698                                     ; preds = %693
  br label %706

; <label>:699                                     ; preds = %693
  %700 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %701 = load i32, i32* %700, align 4
  %702 = load i32, i32* %backy, align 4
  %703 = sub nsw i32 %701, %702
  %704 = load i32, i32* %fwdy, align 4
  %705 = sub nsw i32 %703, %704
  br label %706

; <label>:706                                     ; preds = %699, %698
  %707 = phi i32 [ 8388607, %698 ], [ %705, %699 ]
  store i32 %707, i32* %tbfc, align 4
  %708 = load i32, i32* %tfc, align 4
  %709 = load i32, i32* %tbfc, align 4
  %710 = icmp slt i32 %708, %709
  br i1 %710, label %711, label %713

; <label>:711                                     ; preds = %706
  %712 = load i32, i32* %tfc, align 4
  br label %715

; <label>:713                                     ; preds = %706
  %714 = load i32, i32* %tbfc, align 4
  br label %715

; <label>:715                                     ; preds = %713, %711
  %716 = phi i32 [ %712, %711 ], [ %714, %713 ]
  store i32 %716, i32* %mxy, align 4
  %717 = load i32, i32* %be, align 4
  %718 = load i32, i32* %mxy, align 4
  %719 = add nsw i32 %717, %718
  %720 = icmp slt i32 8388607, %719
  br i1 %720, label %721, label %722

; <label>:721                                     ; preds = %715
  br label %726

; <label>:722                                     ; preds = %715
  %723 = load i32, i32* %be, align 4
  %724 = load i32, i32* %mxy, align 4
  %725 = add nsw i32 %723, %724
  br label %726

; <label>:726                                     ; preds = %722, %721
  %727 = phi i32 [ 8388607, %721 ], [ %725, %722 ]
  store i32 %727, i32* %tb, align 4
  %728 = load i32, i32* %be, align 4
  %729 = load i32, i32* %fe, align 4
  %730 = add nsw i32 %728, %729
  %731 = load i32, i32* %mxy, align 4
  %732 = add nsw i32 %730, %731
  %733 = icmp slt i32 8388607, %732
  br i1 %733, label %734, label %735

; <label>:734                                     ; preds = %726
  br label %741

; <label>:735                                     ; preds = %726
  %736 = load i32, i32* %be, align 4
  %737 = load i32, i32* %fe, align 4
  %738 = add nsw i32 %736, %737
  %739 = load i32, i32* %mxy, align 4
  %740 = add nsw i32 %738, %739
  br label %741

; <label>:741                                     ; preds = %735, %734
  %742 = phi i32 [ 8388607, %734 ], [ %740, %735 ]
  store i32 %742, i32* %tbf, align 4
  %743 = load i32, i32* %fe, align 4
  %744 = load i32, i32* %mxy, align 4
  %745 = add nsw i32 %743, %744
  %746 = icmp slt i32 8388607, %745
  br i1 %746, label %747, label %748

; <label>:747                                     ; preds = %741
  br label %752

; <label>:748                                     ; preds = %741
  %749 = load i32, i32* %fe, align 4
  %750 = load i32, i32* %mxy, align 4
  %751 = add nsw i32 %749, %750
  br label %752

; <label>:752                                     ; preds = %748, %747
  %753 = phi i32 [ 8388607, %747 ], [ %751, %748 ]
  store i32 %753, i32* %tf, align 4
  %754 = load i32, i32* %tb, align 4
  %755 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %756 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %755, i32 0, i32 0
  store i32 %754, i32* %756, align 4
  %757 = load i32, i32* %tbf, align 4
  %758 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %759 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %758, i32 0, i32 1
  store i32 %757, i32* %759, align 4
  %760 = load i32, i32* %tf, align 4
  %761 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %762 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %761, i32 0, i32 2
  store i32 %760, i32* %762, align 4
  br label %763

; <label>:763                                     ; preds = %501, %752, %672, %572
  br label %764

; <label>:764                                     ; preds = %763, %494
  br label %772

; <label>:765                                     ; preds = %17
  %766 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %767 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %766, i32 0, i32 0
  store i32 8388607, i32* %767, align 4
  %768 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %769 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %768, i32 0, i32 1
  store i32 8388607, i32* %769, align 4
  %770 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %771 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %770, i32 0, i32 2
  store i32 8388607, i32* %771, align 4
  br label %772

; <label>:772                                     ; preds = %765, %764
  ret void
}

declare i8* @Image(i32) #1

; Function Attrs: nounwind
declare double @cos(double) #2

; Function Attrs: nounwind
declare double @sin(double) #2

; Function Attrs: nounwind readnone
declare double @fabs(double) #3

declare void @SetNeighbours(%union.rec*, i32, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32*) #1

declare i32 @ExtraGap(i32, i32, %struct.GAP*, i32) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { nounwind readnone }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}