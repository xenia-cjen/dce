; ModuleID = 'z13.c'
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
%struct.back_end_rec = type { i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, void (%struct._IO_FILE*)*, void (i8*, i32, i32)*, void (%union.rec*, i32, i8*, i8*)*, void (i8*, i32)*, void (i32)*, void (i32, i32, i8*)*, void (i32, i32, i8*)*, void ()*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, %union.rec*)*, void (i32, i32, i32, i32, i32)*, void (i32, i32)*, void (i32)*, void (float, float)*, void (%union.rec*)*, void ()*, void (%union.rec*)*, void (%union.rec*)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (%union.rec*, i32, i32, i32, i32)*, void (...)* }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }

@.str = private unnamed_addr constant [63 x i8] c"replacing with empty object: negative size constraint %s,%s,%s\00", align 1
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@BackEnd = external global %struct.back_end_rec*, align 8
@.str.2 = private unnamed_addr constant [56 x i8] c"%s object scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"@Rotate\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"%s deleted (too wide; cannot break %s)\00", align 1
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str.5 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@xx_link = external global %union.rec*, align 8
@.str.6 = private unnamed_addr constant [54 x i8] c"word %s scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"word %s deleted (too wide)\00", align 1
@.str.8 = private unnamed_addr constant [49 x i8] c"%s scaled horizontally by factor %.2f (too wide)\00", align 1
@.str.9 = private unnamed_addr constant [16 x i8] c"@IncludeGraphic\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"@SysIncludeGraphic\00", align 1
@.str.11 = private unnamed_addr constant [22 x i8] c"%s deleted (too wide)\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.13 = private unnamed_addr constant [20 x i8] c"BreakObject: downs!\00", align 1
@.str.14 = private unnamed_addr constant [45 x i8] c"column mark of unbroken paragraph moved left\00", align 1
@.str.15 = private unnamed_addr constant [52 x i8] c"column mark of paragraph moved left before breaking\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"assert failed in %s %s\00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"BreakObject:\00", align 1
@.str.18 = private unnamed_addr constant [32 x i8] c"BreakObject: back(x, COLM) < 0!\00", align 1
@.str.19 = private unnamed_addr constant [31 x i8] c"BreakObject: fwd(x, COLM) < 0!\00", align 1
@.str.20 = private unnamed_addr constant [21 x i8] c"BreakTable: GAP_OBJ!\00", align 1
@.str.21 = private unnamed_addr constant [19 x i8] c"BreakTable: index!\00", align 1
@.str.22 = private unnamed_addr constant [29 x i8] c"BreakTable: GAP_OBJ is last!\00", align 1
@.str.23 = private unnamed_addr constant [48 x i8] c"reducing column gaps to 0i (object is too wide)\00", align 1
@.str.24 = private unnamed_addr constant [32 x i8] c"BreakTable: type(y) == GAP_OBJ!\00", align 1
@.str.25 = private unnamed_addr constant [32 x i8] c"BreakTable: type(g) != GAP_OBJ!\00", align 1
@.str.26 = private unnamed_addr constant [18 x i8] c"BreakTable: mside\00", align 1
@.str.27 = private unnamed_addr constant [55 x i8] c"failed to break column to fit into its available space\00", align 1
@.str.28 = private unnamed_addr constant [25 x i8] c"BreakVcat: Down(x) == x!\00", align 1
@.str.29 = private unnamed_addr constant [34 x i8] c"BreakVcat: start_group == nilobj!\00", align 1
@.str.30 = private unnamed_addr constant [38 x i8] c"BreakVcat: start_group == nilobj (2)!\00", align 1

; Function Attrs: nounwind uwtable
define %union.rec* @BreakObject(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %struct.CONSTRAINT*, align 8
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %yc = alloca %struct.CONSTRAINT, align 4
  %f = alloca i32, align 4
  %junk = alloca i32, align 4
  %tmp = alloca %union.rec*, align 8
  %sz = alloca i32, align 4
  %rpos = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %3, align 8
  %4 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %5 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = icmp sge i32 %6, 0
  br i1 %7, label %8, label %18

; <label>:8                                       ; preds = %0
  %9 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %10 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = icmp sge i32 %11, 0
  br i1 %12, label %13, label %18

; <label>:13                                      ; preds = %8
  %14 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %15 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp sge i32 %16, 0
  br i1 %17, label %166, label %18

; <label>:18                                      ; preds = %13, %8, %0
  %19 = load %union.rec*, %union.rec** %2, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 1
  %22 = bitcast %union.FIRST_UNION* %21 to %struct.FILE_POS*
  %23 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %24 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i8* @EchoLength(i32 %25)
  %27 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %28 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i8* @EchoLength(i32 %29)
  %31 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %32 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @EchoLength(i32 %33)
  %35 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 11, i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str, i32 0, i32 0), i32 2, %struct.FILE_POS* %22, i8* %26, i8* %30, i8* %34)
  %36 = load %union.rec*, %union.rec** %2, align 8
  %37 = bitcast %union.rec* %36 to %struct.word_type*
  %38 = getelementptr inbounds %struct.word_type, %struct.word_type* %37, i32 0, i32 1
  %39 = bitcast %union.FIRST_UNION* %38 to %struct.FILE_POS*
  %40 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %39)
  store %union.rec* %40, %union.rec** %y, align 8
  %41 = load %union.rec*, %union.rec** %y, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 3
  %44 = bitcast %union.THIRD_UNION* %43 to %struct.anon.6*
  %45 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %44, i32 0, i32 1
  %46 = getelementptr inbounds [2 x i32], [2 x i32]* %45, i32 0, i64 0
  store i32 0, i32* %46, align 4
  %47 = load %union.rec*, %union.rec** %y, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 3
  %50 = bitcast %union.THIRD_UNION* %49 to %struct.anon.6*
  %51 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %50, i32 0, i32 0
  %52 = getelementptr inbounds [2 x i32], [2 x i32]* %51, i32 0, i64 0
  store i32 0, i32* %52, align 4
  %53 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %53, %union.rec** @zz_hold, align 8
  %54 = load %union.rec*, %union.rec** @zz_hold, align 8
  %55 = bitcast %union.rec* %54 to %struct.word_type*
  %56 = getelementptr inbounds %struct.word_type, %struct.word_type* %55, i32 0, i32 0
  %57 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %56, i32 0, i64 1
  %58 = getelementptr inbounds %struct.LIST, %struct.LIST* %57, i32 0, i32 1
  %59 = load %union.rec*, %union.rec** %58, align 8
  %60 = load %union.rec*, %union.rec** @zz_hold, align 8
  %61 = icmp eq %union.rec* %59, %60
  br i1 %61, label %62, label %63

; <label>:62                                      ; preds = %18
  br label %104

; <label>:63                                      ; preds = %18
  %64 = load %union.rec*, %union.rec** @zz_hold, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 1
  %69 = load %union.rec*, %union.rec** %68, align 8
  store %union.rec* %69, %union.rec** @zz_res, align 8
  %70 = load %union.rec*, %union.rec** @zz_hold, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 0
  %73 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %72, i32 0, i64 1
  %74 = getelementptr inbounds %struct.LIST, %struct.LIST* %73, i32 0, i32 0
  %75 = load %union.rec*, %union.rec** %74, align 8
  %76 = load %union.rec*, %union.rec** @zz_res, align 8
  %77 = bitcast %union.rec* %76 to %struct.word_type*
  %78 = getelementptr inbounds %struct.word_type, %struct.word_type* %77, i32 0, i32 0
  %79 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %78, i32 0, i64 1
  %80 = getelementptr inbounds %struct.LIST, %struct.LIST* %79, i32 0, i32 0
  store %union.rec* %75, %union.rec** %80, align 8
  %81 = load %union.rec*, %union.rec** @zz_res, align 8
  %82 = load %union.rec*, %union.rec** @zz_hold, align 8
  %83 = bitcast %union.rec* %82 to %struct.word_type*
  %84 = getelementptr inbounds %struct.word_type, %struct.word_type* %83, i32 0, i32 0
  %85 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %84, i32 0, i64 1
  %86 = getelementptr inbounds %struct.LIST, %struct.LIST* %85, i32 0, i32 0
  %87 = load %union.rec*, %union.rec** %86, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %89, i32 0, i64 1
  %91 = getelementptr inbounds %struct.LIST, %struct.LIST* %90, i32 0, i32 1
  store %union.rec* %81, %union.rec** %91, align 8
  %92 = load %union.rec*, %union.rec** @zz_hold, align 8
  %93 = load %union.rec*, %union.rec** @zz_hold, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 1
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 1
  store %union.rec* %92, %union.rec** %97, align 8
  %98 = load %union.rec*, %union.rec** @zz_hold, align 8
  %99 = bitcast %union.rec* %98 to %struct.word_type*
  %100 = getelementptr inbounds %struct.word_type, %struct.word_type* %99, i32 0, i32 0
  %101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %100, i32 0, i64 1
  %102 = getelementptr inbounds %struct.LIST, %struct.LIST* %101, i32 0, i32 0
  store %union.rec* %92, %union.rec** %102, align 8
  %103 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %104

; <label>:104                                     ; preds = %63, %62
  %105 = phi %union.rec* [ null, %62 ], [ %103, %63 ]
  store %union.rec* %105, %union.rec** @xx_tmp, align 8
  %106 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %106, %union.rec** @zz_res, align 8
  %107 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %107, %union.rec** @zz_hold, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = icmp eq %union.rec* %108, null
  br i1 %109, label %110, label %112

; <label>:110                                     ; preds = %104
  %111 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %160

; <label>:112                                     ; preds = %104
  %113 = load %union.rec*, %union.rec** @zz_res, align 8
  %114 = icmp eq %union.rec* %113, null
  br i1 %114, label %115, label %117

; <label>:115                                     ; preds = %112
  %116 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %158

; <label>:117                                     ; preds = %112
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 1
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %122, align 8
  store %union.rec* %123, %union.rec** @zz_tmp, align 8
  %124 = load %union.rec*, %union.rec** @zz_res, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 0
  %127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %126, i32 0, i64 1
  %128 = getelementptr inbounds %struct.LIST, %struct.LIST* %127, i32 0, i32 0
  %129 = load %union.rec*, %union.rec** %128, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = bitcast %union.rec* %130 to %struct.word_type*
  %132 = getelementptr inbounds %struct.word_type, %struct.word_type* %131, i32 0, i32 0
  %133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %132, i32 0, i64 1
  %134 = getelementptr inbounds %struct.LIST, %struct.LIST* %133, i32 0, i32 0
  store %union.rec* %129, %union.rec** %134, align 8
  %135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %136 = load %union.rec*, %union.rec** @zz_res, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 1
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %140, align 8
  %142 = bitcast %union.rec* %141 to %struct.word_type*
  %143 = getelementptr inbounds %struct.word_type, %struct.word_type* %142, i32 0, i32 0
  %144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %143, i32 0, i64 1
  %145 = getelementptr inbounds %struct.LIST, %struct.LIST* %144, i32 0, i32 1
  store %union.rec* %135, %union.rec** %145, align 8
  %146 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %147 = load %union.rec*, %union.rec** @zz_res, align 8
  %148 = bitcast %union.rec* %147 to %struct.word_type*
  %149 = getelementptr inbounds %struct.word_type, %struct.word_type* %148, i32 0, i32 0
  %150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %149, i32 0, i64 1
  %151 = getelementptr inbounds %struct.LIST, %struct.LIST* %150, i32 0, i32 0
  store %union.rec* %146, %union.rec** %151, align 8
  %152 = load %union.rec*, %union.rec** @zz_res, align 8
  %153 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 0
  %156 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %155, i32 0, i64 1
  %157 = getelementptr inbounds %struct.LIST, %struct.LIST* %156, i32 0, i32 1
  store %union.rec* %152, %union.rec** %157, align 8
  br label %158

; <label>:158                                     ; preds = %117, %115
  %159 = phi %union.rec* [ %116, %115 ], [ %152, %117 ]
  br label %160

; <label>:160                                     ; preds = %158, %110
  %161 = phi %union.rec* [ %111, %110 ], [ %159, %158 ]
  %162 = load %union.rec*, %union.rec** %2, align 8
  %163 = call i32 @DisposeObject(%union.rec* %162)
  %164 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %164, %union.rec** %2, align 8
  %165 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %165, %union.rec** %1
  br label %2605

; <label>:166                                     ; preds = %13
  %167 = load %union.rec*, %union.rec** %2, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 3
  %170 = bitcast %union.THIRD_UNION* %169 to %struct.anon.6*
  %171 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %170, i32 0, i32 0
  %172 = getelementptr inbounds [2 x i32], [2 x i32]* %171, i32 0, i64 0
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %175 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = icmp sle i32 %173, %176
  br i1 %177, label %178, label %212

; <label>:178                                     ; preds = %166
  %179 = load %union.rec*, %union.rec** %2, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 3
  %182 = bitcast %union.THIRD_UNION* %181 to %struct.anon.6*
  %183 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %182, i32 0, i32 0
  %184 = getelementptr inbounds [2 x i32], [2 x i32]* %183, i32 0, i64 0
  %185 = load i32, i32* %184, align 4
  %186 = load %union.rec*, %union.rec** %2, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 3
  %189 = bitcast %union.THIRD_UNION* %188 to %struct.anon.6*
  %190 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %189, i32 0, i32 1
  %191 = getelementptr inbounds [2 x i32], [2 x i32]* %190, i32 0, i64 0
  %192 = load i32, i32* %191, align 4
  %193 = add nsw i32 %185, %192
  %194 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %195 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = icmp sle i32 %193, %196
  br i1 %197, label %198, label %212

; <label>:198                                     ; preds = %178
  %199 = load %union.rec*, %union.rec** %2, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 3
  %202 = bitcast %union.THIRD_UNION* %201 to %struct.anon.6*
  %203 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %202, i32 0, i32 1
  %204 = getelementptr inbounds [2 x i32], [2 x i32]* %203, i32 0, i64 0
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %207 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 4
  %209 = icmp sle i32 %205, %208
  br i1 %209, label %210, label %212

; <label>:210                                     ; preds = %198
  %211 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %211, %union.rec** %1
  br label %2605

; <label>:212                                     ; preds = %198, %178, %166
  %213 = load %union.rec*, %union.rec** %2, align 8
  %214 = bitcast %union.rec* %213 to %struct.word_type*
  %215 = getelementptr inbounds %struct.word_type, %struct.word_type* %214, i32 0, i32 1
  %216 = bitcast %union.FIRST_UNION* %215 to %struct.anon*
  %217 = getelementptr inbounds %struct.anon, %struct.anon* %216, i32 0, i32 0
  %218 = load i8, i8* %217, align 1
  %219 = zext i8 %218 to i32
  switch i32 %219, label %2568 [
    i32 50, label %220
    i32 34, label %410
    i32 35, label %491
    i32 11, label %550
    i32 12, label %550
    i32 26, label %1429
    i32 94, label %1512
    i32 95, label %1512
    i32 27, label %1720
    i32 31, label %1720
    i32 33, label %1720
    i32 29, label %1720
    i32 36, label %1720
    i32 37, label %1720
    i32 38, label %1720
    i32 39, label %1720
    i32 40, label %1720
    i32 41, label %1720
    i32 24, label %1720
    i32 25, label %1720
    i32 13, label %1720
    i32 51, label %1796
    i32 44, label %1887
    i32 42, label %1887
    i32 43, label %1887
    i32 45, label %1887
    i32 46, label %1887
    i32 28, label %1986
    i32 21, label %2182
    i32 23, label %2182
    i32 20, label %2183
    i32 22, label %2183
    i32 96, label %2242
    i32 97, label %2242
    i32 98, label %2242
    i32 99, label %2242
    i32 9, label %2301
    i32 17, label %2360
    i32 18, label %2534
    i32 16, label %2538
    i32 19, label %2564
  ]

; <label>:220                                     ; preds = %212
  %221 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %222 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %221, i32 0, i32 2
  %223 = load i32, i32* %222, align 4
  %224 = icmp ne i32 %223, 0
  br i1 %224, label %225, label %274

; <label>:225                                     ; preds = %220
  %226 = load %union.rec*, %union.rec** %2, align 8
  %227 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %228 = call i32 @InsertScale(%union.rec* %226, %struct.CONSTRAINT* %227)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %274

; <label>:230                                     ; preds = %225
  %231 = load %union.rec*, %union.rec** %2, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 1
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 1
  %236 = load %union.rec*, %union.rec** %235, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 0
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 0
  %241 = load %union.rec*, %union.rec** %240, align 8
  store %union.rec* %241, %union.rec** %2, align 8
  br label %242

; <label>:242                                     ; preds = %252, %230
  %243 = load %union.rec*, %union.rec** %2, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 1
  %246 = bitcast %union.FIRST_UNION* %245 to %struct.anon*
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %246, i32 0, i32 0
  %248 = load i8, i8* %247, align 1
  %249 = zext i8 %248 to i32
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %251, label %259

; <label>:251                                     ; preds = %242
  br label %252

; <label>:252                                     ; preds = %251
  %253 = load %union.rec*, %union.rec** %2, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 0
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 0
  %258 = load %union.rec*, %union.rec** %257, align 8
  store %union.rec* %258, %union.rec** %2, align 8
  br label %242

; <label>:259                                     ; preds = %242
  %260 = load %union.rec*, %union.rec** %2, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 1
  %263 = bitcast %union.FIRST_UNION* %262 to %struct.FILE_POS*
  %264 = load %union.rec*, %union.rec** %2, align 8
  %265 = bitcast %union.rec* %264 to %struct.closure_type*
  %266 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %265, i32 0, i32 4
  %267 = bitcast %union.FOURTH_UNION* %266 to %struct.CONSTRAINT*
  %268 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %267, i32 0, i32 0
  %269 = load i32, i32* %268, align 4
  %270 = sitofp i32 %269 to float
  %271 = fdiv float %270, 1.280000e+02
  %272 = fpext float %271 to double
  %273 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 3, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i32 0, i32 0), i32 2, %struct.FILE_POS* %263, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), double %272)
  br label %409

; <label>:274                                     ; preds = %225, %220
  %275 = load %union.rec*, %union.rec** %2, align 8
  %276 = bitcast %union.rec* %275 to %struct.word_type*
  %277 = getelementptr inbounds %struct.word_type, %struct.word_type* %276, i32 0, i32 1
  %278 = bitcast %union.FIRST_UNION* %277 to %struct.FILE_POS*
  %279 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 4, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i32 0, i32 0), i32 2, %struct.FILE_POS* %278, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0))
  %280 = load %union.rec*, %union.rec** %2, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 1
  %283 = bitcast %union.FIRST_UNION* %282 to %struct.FILE_POS*
  %284 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %283)
  store %union.rec* %284, %union.rec** %y, align 8
  %285 = load %union.rec*, %union.rec** %y, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 3
  %288 = bitcast %union.THIRD_UNION* %287 to %struct.anon.6*
  %289 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %288, i32 0, i32 1
  %290 = getelementptr inbounds [2 x i32], [2 x i32]* %289, i32 0, i64 0
  store i32 0, i32* %290, align 4
  %291 = load %union.rec*, %union.rec** %y, align 8
  %292 = bitcast %union.rec* %291 to %struct.word_type*
  %293 = getelementptr inbounds %struct.word_type, %struct.word_type* %292, i32 0, i32 3
  %294 = bitcast %union.THIRD_UNION* %293 to %struct.anon.6*
  %295 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %294, i32 0, i32 0
  %296 = getelementptr inbounds [2 x i32], [2 x i32]* %295, i32 0, i64 0
  store i32 0, i32* %296, align 4
  %297 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %297, %union.rec** @zz_hold, align 8
  %298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 0
  %301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %300, i32 0, i64 1
  %302 = getelementptr inbounds %struct.LIST, %struct.LIST* %301, i32 0, i32 1
  %303 = load %union.rec*, %union.rec** %302, align 8
  %304 = load %union.rec*, %union.rec** @zz_hold, align 8
  %305 = icmp eq %union.rec* %303, %304
  br i1 %305, label %306, label %307

; <label>:306                                     ; preds = %274
  br label %348

; <label>:307                                     ; preds = %274
  %308 = load %union.rec*, %union.rec** @zz_hold, align 8
  %309 = bitcast %union.rec* %308 to %struct.word_type*
  %310 = getelementptr inbounds %struct.word_type, %struct.word_type* %309, i32 0, i32 0
  %311 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %310, i32 0, i64 1
  %312 = getelementptr inbounds %struct.LIST, %struct.LIST* %311, i32 0, i32 1
  %313 = load %union.rec*, %union.rec** %312, align 8
  store %union.rec* %313, %union.rec** @zz_res, align 8
  %314 = load %union.rec*, %union.rec** @zz_hold, align 8
  %315 = bitcast %union.rec* %314 to %struct.word_type*
  %316 = getelementptr inbounds %struct.word_type, %struct.word_type* %315, i32 0, i32 0
  %317 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %316, i32 0, i64 1
  %318 = getelementptr inbounds %struct.LIST, %struct.LIST* %317, i32 0, i32 0
  %319 = load %union.rec*, %union.rec** %318, align 8
  %320 = load %union.rec*, %union.rec** @zz_res, align 8
  %321 = bitcast %union.rec* %320 to %struct.word_type*
  %322 = getelementptr inbounds %struct.word_type, %struct.word_type* %321, i32 0, i32 0
  %323 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %322, i32 0, i64 1
  %324 = getelementptr inbounds %struct.LIST, %struct.LIST* %323, i32 0, i32 0
  store %union.rec* %319, %union.rec** %324, align 8
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %327 = bitcast %union.rec* %326 to %struct.word_type*
  %328 = getelementptr inbounds %struct.word_type, %struct.word_type* %327, i32 0, i32 0
  %329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %328, i32 0, i64 1
  %330 = getelementptr inbounds %struct.LIST, %struct.LIST* %329, i32 0, i32 0
  %331 = load %union.rec*, %union.rec** %330, align 8
  %332 = bitcast %union.rec* %331 to %struct.word_type*
  %333 = getelementptr inbounds %struct.word_type, %struct.word_type* %332, i32 0, i32 0
  %334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %333, i32 0, i64 1
  %335 = getelementptr inbounds %struct.LIST, %struct.LIST* %334, i32 0, i32 1
  store %union.rec* %325, %union.rec** %335, align 8
  %336 = load %union.rec*, %union.rec** @zz_hold, align 8
  %337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %338 = bitcast %union.rec* %337 to %struct.word_type*
  %339 = getelementptr inbounds %struct.word_type, %struct.word_type* %338, i32 0, i32 0
  %340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %339, i32 0, i64 1
  %341 = getelementptr inbounds %struct.LIST, %struct.LIST* %340, i32 0, i32 1
  store %union.rec* %336, %union.rec** %341, align 8
  %342 = load %union.rec*, %union.rec** @zz_hold, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 0
  %345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %344, i32 0, i64 1
  %346 = getelementptr inbounds %struct.LIST, %struct.LIST* %345, i32 0, i32 0
  store %union.rec* %336, %union.rec** %346, align 8
  %347 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %348

; <label>:348                                     ; preds = %307, %306
  %349 = phi %union.rec* [ null, %306 ], [ %347, %307 ]
  store %union.rec* %349, %union.rec** @xx_tmp, align 8
  %350 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %350, %union.rec** @zz_res, align 8
  %351 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %351, %union.rec** @zz_hold, align 8
  %352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %353 = icmp eq %union.rec* %352, null
  br i1 %353, label %354, label %356

; <label>:354                                     ; preds = %348
  %355 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %404

; <label>:356                                     ; preds = %348
  %357 = load %union.rec*, %union.rec** @zz_res, align 8
  %358 = icmp eq %union.rec* %357, null
  br i1 %358, label %359, label %361

; <label>:359                                     ; preds = %356
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %402

; <label>:361                                     ; preds = %356
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %363 = bitcast %union.rec* %362 to %struct.word_type*
  %364 = getelementptr inbounds %struct.word_type, %struct.word_type* %363, i32 0, i32 0
  %365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %364, i32 0, i64 1
  %366 = getelementptr inbounds %struct.LIST, %struct.LIST* %365, i32 0, i32 0
  %367 = load %union.rec*, %union.rec** %366, align 8
  store %union.rec* %367, %union.rec** @zz_tmp, align 8
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 1
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 0
  %373 = load %union.rec*, %union.rec** %372, align 8
  %374 = load %union.rec*, %union.rec** @zz_hold, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 0
  %377 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %376, i32 0, i64 1
  %378 = getelementptr inbounds %struct.LIST, %struct.LIST* %377, i32 0, i32 0
  store %union.rec* %373, %union.rec** %378, align 8
  %379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %380 = load %union.rec*, %union.rec** @zz_res, align 8
  %381 = bitcast %union.rec* %380 to %struct.word_type*
  %382 = getelementptr inbounds %struct.word_type, %struct.word_type* %381, i32 0, i32 0
  %383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %382, i32 0, i64 1
  %384 = getelementptr inbounds %struct.LIST, %struct.LIST* %383, i32 0, i32 0
  %385 = load %union.rec*, %union.rec** %384, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 1
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 1
  store %union.rec* %379, %union.rec** %389, align 8
  %390 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %391 = load %union.rec*, %union.rec** @zz_res, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 0
  %394 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %393, i32 0, i64 1
  %395 = getelementptr inbounds %struct.LIST, %struct.LIST* %394, i32 0, i32 0
  store %union.rec* %390, %union.rec** %395, align 8
  %396 = load %union.rec*, %union.rec** @zz_res, align 8
  %397 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %398 = bitcast %union.rec* %397 to %struct.word_type*
  %399 = getelementptr inbounds %struct.word_type, %struct.word_type* %398, i32 0, i32 0
  %400 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %399, i32 0, i64 1
  %401 = getelementptr inbounds %struct.LIST, %struct.LIST* %400, i32 0, i32 1
  store %union.rec* %396, %union.rec** %401, align 8
  br label %402

; <label>:402                                     ; preds = %361, %359
  %403 = phi %union.rec* [ %360, %359 ], [ %396, %361 ]
  br label %404

; <label>:404                                     ; preds = %402, %354
  %405 = phi %union.rec* [ %355, %354 ], [ %403, %402 ]
  %406 = load %union.rec*, %union.rec** %2, align 8
  %407 = call i32 @DisposeObject(%union.rec* %406)
  %408 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %408, %union.rec** %2, align 8
  br label %409

; <label>:409                                     ; preds = %404, %259
  br label %2579

; <label>:410                                     ; preds = %212
  %411 = load %union.rec*, %union.rec** %2, align 8
  %412 = bitcast %union.rec* %411 to %struct.closure_type*
  %413 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %412, i32 0, i32 4
  %414 = bitcast %union.FOURTH_UNION* %413 to %struct.CONSTRAINT*
  %415 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %414, i32 0, i32 0
  %416 = load i32, i32* %415, align 4
  %417 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  call void @InvScaleConstraint(%struct.CONSTRAINT* %yc, i32 %416, %struct.CONSTRAINT* %417)
  %418 = load %union.rec*, %union.rec** %2, align 8
  %419 = bitcast %union.rec* %418 to %struct.word_type*
  %420 = getelementptr inbounds %struct.word_type, %struct.word_type* %419, i32 0, i32 0
  %421 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %420, i32 0, i64 0
  %422 = getelementptr inbounds %struct.LIST, %struct.LIST* %421, i32 0, i32 1
  %423 = load %union.rec*, %union.rec** %422, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 0
  %426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %425, i32 0, i64 1
  %427 = getelementptr inbounds %struct.LIST, %struct.LIST* %426, i32 0, i32 0
  %428 = load %union.rec*, %union.rec** %427, align 8
  store %union.rec* %428, %union.rec** %y, align 8
  br label %429

; <label>:429                                     ; preds = %439, %410
  %430 = load %union.rec*, %union.rec** %y, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 1
  %433 = bitcast %union.FIRST_UNION* %432 to %struct.anon*
  %434 = getelementptr inbounds %struct.anon, %struct.anon* %433, i32 0, i32 0
  %435 = load i8, i8* %434, align 1
  %436 = zext i8 %435 to i32
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %438, label %446

; <label>:438                                     ; preds = %429
  br label %439

; <label>:439                                     ; preds = %438
  %440 = load %union.rec*, %union.rec** %y, align 8
  %441 = bitcast %union.rec* %440 to %struct.word_type*
  %442 = getelementptr inbounds %struct.word_type, %struct.word_type* %441, i32 0, i32 0
  %443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %442, i32 0, i64 1
  %444 = getelementptr inbounds %struct.LIST, %struct.LIST* %443, i32 0, i32 0
  %445 = load %union.rec*, %union.rec** %444, align 8
  store %union.rec* %445, %union.rec** %y, align 8
  br label %429

; <label>:446                                     ; preds = %429
  %447 = load %union.rec*, %union.rec** %y, align 8
  %448 = call %union.rec* @BreakObject(%union.rec* %447, %struct.CONSTRAINT* %yc)
  store %union.rec* %448, %union.rec** %y, align 8
  %449 = load %union.rec*, %union.rec** %y, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 3
  %452 = bitcast %union.THIRD_UNION* %451 to %struct.anon.6*
  %453 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x i32], [2 x i32]* %453, i32 0, i64 0
  %455 = load i32, i32* %454, align 4
  %456 = load %union.rec*, %union.rec** %2, align 8
  %457 = bitcast %union.rec* %456 to %struct.closure_type*
  %458 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %457, i32 0, i32 4
  %459 = bitcast %union.FOURTH_UNION* %458 to %struct.CONSTRAINT*
  %460 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %459, i32 0, i32 0
  %461 = load i32, i32* %460, align 4
  %462 = mul nsw i32 %455, %461
  %463 = sdiv i32 %462, 128
  %464 = load %union.rec*, %union.rec** %2, align 8
  %465 = bitcast %union.rec* %464 to %struct.word_type*
  %466 = getelementptr inbounds %struct.word_type, %struct.word_type* %465, i32 0, i32 3
  %467 = bitcast %union.THIRD_UNION* %466 to %struct.anon.6*
  %468 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x i32], [2 x i32]* %468, i32 0, i64 0
  store i32 %463, i32* %469, align 4
  %470 = load %union.rec*, %union.rec** %y, align 8
  %471 = bitcast %union.rec* %470 to %struct.word_type*
  %472 = getelementptr inbounds %struct.word_type, %struct.word_type* %471, i32 0, i32 3
  %473 = bitcast %union.THIRD_UNION* %472 to %struct.anon.6*
  %474 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %473, i32 0, i32 1
  %475 = getelementptr inbounds [2 x i32], [2 x i32]* %474, i32 0, i64 0
  %476 = load i32, i32* %475, align 4
  %477 = load %union.rec*, %union.rec** %2, align 8
  %478 = bitcast %union.rec* %477 to %struct.closure_type*
  %479 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %478, i32 0, i32 4
  %480 = bitcast %union.FOURTH_UNION* %479 to %struct.CONSTRAINT*
  %481 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %480, i32 0, i32 0
  %482 = load i32, i32* %481, align 4
  %483 = mul nsw i32 %476, %482
  %484 = sdiv i32 %483, 128
  %485 = load %union.rec*, %union.rec** %2, align 8
  %486 = bitcast %union.rec* %485 to %struct.word_type*
  %487 = getelementptr inbounds %struct.word_type, %struct.word_type* %486, i32 0, i32 3
  %488 = bitcast %union.THIRD_UNION* %487 to %struct.anon.6*
  %489 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %488, i32 0, i32 1
  %490 = getelementptr inbounds [2 x i32], [2 x i32]* %489, i32 0, i64 0
  store i32 %484, i32* %490, align 4
  br label %2579

; <label>:491                                     ; preds = %212
  %492 = load %union.rec*, %union.rec** %2, align 8
  %493 = bitcast %union.rec* %492 to %struct.word_type*
  %494 = getelementptr inbounds %struct.word_type, %struct.word_type* %493, i32 0, i32 0
  %495 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %494, i32 0, i64 0
  %496 = getelementptr inbounds %struct.LIST, %struct.LIST* %495, i32 0, i32 0
  %497 = load %union.rec*, %union.rec** %496, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 0
  %500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %499, i32 0, i64 1
  %501 = getelementptr inbounds %struct.LIST, %struct.LIST* %500, i32 0, i32 0
  %502 = load %union.rec*, %union.rec** %501, align 8
  store %union.rec* %502, %union.rec** %y, align 8
  br label %503

; <label>:503                                     ; preds = %513, %491
  %504 = load %union.rec*, %union.rec** %y, align 8
  %505 = bitcast %union.rec* %504 to %struct.word_type*
  %506 = getelementptr inbounds %struct.word_type, %struct.word_type* %505, i32 0, i32 1
  %507 = bitcast %union.FIRST_UNION* %506 to %struct.anon*
  %508 = getelementptr inbounds %struct.anon, %struct.anon* %507, i32 0, i32 0
  %509 = load i8, i8* %508, align 1
  %510 = zext i8 %509 to i32
  %511 = icmp eq i32 %510, 0
  br i1 %511, label %512, label %520

; <label>:512                                     ; preds = %503
  br label %513

; <label>:513                                     ; preds = %512
  %514 = load %union.rec*, %union.rec** %y, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 1
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 0
  %519 = load %union.rec*, %union.rec** %518, align 8
  store %union.rec* %519, %union.rec** %y, align 8
  br label %503

; <label>:520                                     ; preds = %503
  %521 = load %union.rec*, %union.rec** %y, align 8
  %522 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %523 = call %union.rec* @BreakObject(%union.rec* %521, %struct.CONSTRAINT* %522)
  store %union.rec* %523, %union.rec** %y, align 8
  %524 = load %union.rec*, %union.rec** %y, align 8
  %525 = bitcast %union.rec* %524 to %struct.word_type*
  %526 = getelementptr inbounds %struct.word_type, %struct.word_type* %525, i32 0, i32 3
  %527 = bitcast %union.THIRD_UNION* %526 to %struct.anon.6*
  %528 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %527, i32 0, i32 0
  %529 = getelementptr inbounds [2 x i32], [2 x i32]* %528, i32 0, i64 0
  %530 = load i32, i32* %529, align 4
  %531 = load %union.rec*, %union.rec** %2, align 8
  %532 = bitcast %union.rec* %531 to %struct.word_type*
  %533 = getelementptr inbounds %struct.word_type, %struct.word_type* %532, i32 0, i32 3
  %534 = bitcast %union.THIRD_UNION* %533 to %struct.anon.6*
  %535 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %534, i32 0, i32 0
  %536 = getelementptr inbounds [2 x i32], [2 x i32]* %535, i32 0, i64 0
  store i32 %530, i32* %536, align 4
  %537 = load %union.rec*, %union.rec** %y, align 8
  %538 = bitcast %union.rec* %537 to %struct.word_type*
  %539 = getelementptr inbounds %struct.word_type, %struct.word_type* %538, i32 0, i32 3
  %540 = bitcast %union.THIRD_UNION* %539 to %struct.anon.6*
  %541 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %540, i32 0, i32 1
  %542 = getelementptr inbounds [2 x i32], [2 x i32]* %541, i32 0, i64 0
  %543 = load i32, i32* %542, align 4
  %544 = load %union.rec*, %union.rec** %2, align 8
  %545 = bitcast %union.rec* %544 to %struct.word_type*
  %546 = getelementptr inbounds %struct.word_type, %struct.word_type* %545, i32 0, i32 3
  %547 = bitcast %union.THIRD_UNION* %546 to %struct.anon.6*
  %548 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %547, i32 0, i32 1
  %549 = getelementptr inbounds [2 x i32], [2 x i32]* %548, i32 0, i64 0
  store i32 %543, i32* %549, align 4
  br label %2579

; <label>:550                                     ; preds = %212, %212
  %551 = load %union.rec*, %union.rec** %2, align 8
  %552 = bitcast %union.rec* %551 to %struct.word_type*
  %553 = getelementptr inbounds %struct.word_type, %struct.word_type* %552, i32 0, i32 2
  %554 = bitcast %union.SECOND_UNION* %553 to %struct.anon.1*
  %555 = bitcast %struct.anon.1* %554 to i32*
  %556 = load i32, i32* %555, align 4
  %557 = lshr i32 %556, 31
  %558 = icmp ne i32 %557, 0
  br i1 %558, label %559, label %1229

; <label>:559                                     ; preds = %550
  %560 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %561 = zext i8 %560 to i32
  store i32 %561, i32* @zz_size, align 4
  %562 = sext i32 %561 to i64
  %563 = icmp uge i64 %562, 265
  br i1 %563, label %564, label %567

; <label>:564                                     ; preds = %559
  %565 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %566 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %565)
  br label %592

; <label>:567                                     ; preds = %559
  %568 = load i32, i32* @zz_size, align 4
  %569 = sext i32 %568 to i64
  %570 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %569
  %571 = load %union.rec*, %union.rec** %570, align 8
  %572 = icmp eq %union.rec* %571, null
  br i1 %572, label %573, label %577

; <label>:573                                     ; preds = %567
  %574 = load i32, i32* @zz_size, align 4
  %575 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %576 = call %union.rec* @GetMemory(i32 %574, %struct.FILE_POS* %575)
  store %union.rec* %576, %union.rec** @zz_hold, align 8
  br label %591

; <label>:577                                     ; preds = %567
  %578 = load i32, i32* @zz_size, align 4
  %579 = sext i32 %578 to i64
  %580 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %579
  %581 = load %union.rec*, %union.rec** %580, align 8
  store %union.rec* %581, %union.rec** @zz_hold, align 8
  store %union.rec* %581, %union.rec** @zz_hold, align 8
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 0
  %585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %584, i32 0, i64 0
  %586 = getelementptr inbounds %struct.LIST, %struct.LIST* %585, i32 0, i32 0
  %587 = load %union.rec*, %union.rec** %586, align 8
  %588 = load i32, i32* @zz_size, align 4
  %589 = sext i32 %588 to i64
  %590 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %589
  store %union.rec* %587, %union.rec** %590, align 8
  br label %591

; <label>:591                                     ; preds = %577, %573
  br label %592

; <label>:592                                     ; preds = %591, %564
  %593 = load %union.rec*, %union.rec** @zz_hold, align 8
  %594 = bitcast %union.rec* %593 to %struct.word_type*
  %595 = getelementptr inbounds %struct.word_type, %struct.word_type* %594, i32 0, i32 1
  %596 = bitcast %union.FIRST_UNION* %595 to %struct.anon*
  %597 = getelementptr inbounds %struct.anon, %struct.anon* %596, i32 0, i32 0
  store i8 17, i8* %597, align 1
  %598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %599 = load %union.rec*, %union.rec** @zz_hold, align 8
  %600 = bitcast %union.rec* %599 to %struct.word_type*
  %601 = getelementptr inbounds %struct.word_type, %struct.word_type* %600, i32 0, i32 0
  %602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %601, i32 0, i64 1
  %603 = getelementptr inbounds %struct.LIST, %struct.LIST* %602, i32 0, i32 1
  store %union.rec* %598, %union.rec** %603, align 8
  %604 = load %union.rec*, %union.rec** @zz_hold, align 8
  %605 = bitcast %union.rec* %604 to %struct.word_type*
  %606 = getelementptr inbounds %struct.word_type, %struct.word_type* %605, i32 0, i32 0
  %607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %606, i32 0, i64 1
  %608 = getelementptr inbounds %struct.LIST, %struct.LIST* %607, i32 0, i32 0
  store %union.rec* %598, %union.rec** %608, align 8
  %609 = load %union.rec*, %union.rec** @zz_hold, align 8
  %610 = bitcast %union.rec* %609 to %struct.word_type*
  %611 = getelementptr inbounds %struct.word_type, %struct.word_type* %610, i32 0, i32 0
  %612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %611, i32 0, i64 0
  %613 = getelementptr inbounds %struct.LIST, %struct.LIST* %612, i32 0, i32 1
  store %union.rec* %598, %union.rec** %613, align 8
  %614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %615 = bitcast %union.rec* %614 to %struct.word_type*
  %616 = getelementptr inbounds %struct.word_type, %struct.word_type* %615, i32 0, i32 0
  %617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %616, i32 0, i64 0
  %618 = getelementptr inbounds %struct.LIST, %struct.LIST* %617, i32 0, i32 0
  store %union.rec* %598, %union.rec** %618, align 8
  store %union.rec* %598, %union.rec** %y, align 8
  %619 = load %union.rec*, %union.rec** %2, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 1
  %622 = bitcast %union.FIRST_UNION* %621 to %struct.FILE_POS*
  %623 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %622, i32 0, i32 2
  %624 = load i16, i16* %623, align 2
  %625 = load %union.rec*, %union.rec** %y, align 8
  %626 = bitcast %union.rec* %625 to %struct.word_type*
  %627 = getelementptr inbounds %struct.word_type, %struct.word_type* %626, i32 0, i32 1
  %628 = bitcast %union.FIRST_UNION* %627 to %struct.FILE_POS*
  %629 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %628, i32 0, i32 2
  store i16 %624, i16* %629, align 2
  %630 = load %union.rec*, %union.rec** %2, align 8
  %631 = bitcast %union.rec* %630 to %struct.word_type*
  %632 = getelementptr inbounds %struct.word_type, %struct.word_type* %631, i32 0, i32 1
  %633 = bitcast %union.FIRST_UNION* %632 to %struct.FILE_POS*
  %634 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %633, i32 0, i32 3
  %635 = load i32, i32* %634, align 4
  %636 = and i32 %635, 1048575
  %637 = load %union.rec*, %union.rec** %y, align 8
  %638 = bitcast %union.rec* %637 to %struct.word_type*
  %639 = getelementptr inbounds %struct.word_type, %struct.word_type* %638, i32 0, i32 1
  %640 = bitcast %union.FIRST_UNION* %639 to %struct.FILE_POS*
  %641 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %640, i32 0, i32 3
  %642 = load i32, i32* %641, align 4
  %643 = and i32 %636, 1048575
  %644 = and i32 %642, -1048576
  %645 = or i32 %644, %643
  store i32 %645, i32* %641, align 4
  %646 = load %union.rec*, %union.rec** %2, align 8
  %647 = bitcast %union.rec* %646 to %struct.word_type*
  %648 = getelementptr inbounds %struct.word_type, %struct.word_type* %647, i32 0, i32 1
  %649 = bitcast %union.FIRST_UNION* %648 to %struct.FILE_POS*
  %650 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %649, i32 0, i32 3
  %651 = load i32, i32* %650, align 4
  %652 = lshr i32 %651, 20
  %653 = load %union.rec*, %union.rec** %y, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 1
  %656 = bitcast %union.FIRST_UNION* %655 to %struct.FILE_POS*
  %657 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %656, i32 0, i32 3
  %658 = load i32, i32* %657, align 4
  %659 = and i32 %652, 4095
  %660 = shl i32 %659, 20
  %661 = and i32 %658, 1048575
  %662 = or i32 %661, %660
  store i32 %662, i32* %657, align 4
  %663 = load %union.rec*, %union.rec** %2, align 8
  %664 = bitcast %union.rec* %663 to %struct.word_type*
  %665 = getelementptr inbounds %struct.word_type, %struct.word_type* %664, i32 0, i32 3
  %666 = bitcast %union.THIRD_UNION* %665 to %struct.anon.6*
  %667 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %666, i32 0, i32 0
  %668 = getelementptr inbounds [2 x i32], [2 x i32]* %667, i32 0, i64 0
  %669 = load i32, i32* %668, align 4
  %670 = load %union.rec*, %union.rec** %y, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 3
  %673 = bitcast %union.THIRD_UNION* %672 to %struct.anon.6*
  %674 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %673, i32 0, i32 0
  %675 = getelementptr inbounds [2 x i32], [2 x i32]* %674, i32 0, i64 0
  store i32 %669, i32* %675, align 4
  %676 = load %union.rec*, %union.rec** %2, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 3
  %679 = bitcast %union.THIRD_UNION* %678 to %struct.anon.6*
  %680 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %679, i32 0, i32 1
  %681 = getelementptr inbounds [2 x i32], [2 x i32]* %680, i32 0, i64 0
  %682 = load i32, i32* %681, align 4
  %683 = load %union.rec*, %union.rec** %y, align 8
  %684 = bitcast %union.rec* %683 to %struct.word_type*
  %685 = getelementptr inbounds %struct.word_type, %struct.word_type* %684, i32 0, i32 3
  %686 = bitcast %union.THIRD_UNION* %685 to %struct.anon.6*
  %687 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %686, i32 0, i32 1
  %688 = getelementptr inbounds [2 x i32], [2 x i32]* %687, i32 0, i64 0
  store i32 %682, i32* %688, align 4
  %689 = load %union.rec*, %union.rec** %2, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 3
  %692 = bitcast %union.THIRD_UNION* %691 to %struct.anon.6*
  %693 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %692, i32 0, i32 0
  %694 = getelementptr inbounds [2 x i32], [2 x i32]* %693, i32 0, i64 1
  %695 = load i32, i32* %694, align 4
  %696 = load %union.rec*, %union.rec** %y, align 8
  %697 = bitcast %union.rec* %696 to %struct.word_type*
  %698 = getelementptr inbounds %struct.word_type, %struct.word_type* %697, i32 0, i32 3
  %699 = bitcast %union.THIRD_UNION* %698 to %struct.anon.6*
  %700 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x i32], [2 x i32]* %700, i32 0, i64 1
  store i32 %695, i32* %701, align 4
  %702 = load %union.rec*, %union.rec** %2, align 8
  %703 = bitcast %union.rec* %702 to %struct.word_type*
  %704 = getelementptr inbounds %struct.word_type, %struct.word_type* %703, i32 0, i32 3
  %705 = bitcast %union.THIRD_UNION* %704 to %struct.anon.6*
  %706 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %705, i32 0, i32 1
  %707 = getelementptr inbounds [2 x i32], [2 x i32]* %706, i32 0, i64 1
  %708 = load i32, i32* %707, align 4
  %709 = load %union.rec*, %union.rec** %y, align 8
  %710 = bitcast %union.rec* %709 to %struct.word_type*
  %711 = getelementptr inbounds %struct.word_type, %struct.word_type* %710, i32 0, i32 3
  %712 = bitcast %union.THIRD_UNION* %711 to %struct.anon.6*
  %713 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %712, i32 0, i32 1
  %714 = getelementptr inbounds [2 x i32], [2 x i32]* %713, i32 0, i64 1
  store i32 %708, i32* %714, align 4
  %715 = load %union.rec*, %union.rec** %y, align 8
  %716 = bitcast %union.rec* %715 to %struct.closure_type*
  %717 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %716, i32 0, i32 4
  %718 = bitcast %union.FOURTH_UNION* %717 to %struct.STYLE*
  %719 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %718, i32 0, i32 0
  %720 = bitcast %union.anon* %719 to %struct.GAP*
  %721 = bitcast %struct.GAP* %720 to i16*
  %722 = load i16, i16* %721, align 4
  %723 = and i16 %722, -129
  store i16 %723, i16* %721, align 4
  %724 = load %union.rec*, %union.rec** %y, align 8
  %725 = bitcast %union.rec* %724 to %struct.closure_type*
  %726 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %725, i32 0, i32 4
  %727 = bitcast %union.FOURTH_UNION* %726 to %struct.STYLE*
  %728 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %727, i32 0, i32 0
  %729 = bitcast %union.anon* %728 to %struct.GAP*
  %730 = bitcast %struct.GAP* %729 to i16*
  %731 = load i16, i16* %730, align 4
  %732 = and i16 %731, -257
  store i16 %732, i16* %730, align 4
  %733 = load %union.rec*, %union.rec** %y, align 8
  %734 = bitcast %union.rec* %733 to %struct.closure_type*
  %735 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %734, i32 0, i32 4
  %736 = bitcast %union.FOURTH_UNION* %735 to %struct.STYLE*
  %737 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %736, i32 0, i32 0
  %738 = bitcast %union.anon* %737 to %struct.GAP*
  %739 = bitcast %struct.GAP* %738 to i16*
  %740 = load i16, i16* %739, align 4
  %741 = and i16 %740, -513
  store i16 %741, i16* %739, align 4
  %742 = load %union.rec*, %union.rec** %y, align 8
  %743 = bitcast %union.rec* %742 to %struct.closure_type*
  %744 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %743, i32 0, i32 4
  %745 = bitcast %union.FOURTH_UNION* %744 to %struct.STYLE*
  %746 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %745, i32 0, i32 0
  %747 = bitcast %union.anon* %746 to %struct.GAP*
  %748 = bitcast %struct.GAP* %747 to i16*
  %749 = load i16, i16* %748, align 4
  %750 = and i16 %749, -7169
  %751 = or i16 %750, 1024
  store i16 %751, i16* %748, align 4
  %752 = load %union.rec*, %union.rec** %y, align 8
  %753 = bitcast %union.rec* %752 to %struct.closure_type*
  %754 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %753, i32 0, i32 4
  %755 = bitcast %union.FOURTH_UNION* %754 to %struct.STYLE*
  %756 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %755, i32 0, i32 0
  %757 = bitcast %union.anon* %756 to %struct.GAP*
  %758 = bitcast %struct.GAP* %757 to i16*
  %759 = load i16, i16* %758, align 4
  %760 = and i16 %759, 8191
  %761 = or i16 %760, 24576
  store i16 %761, i16* %758, align 4
  %762 = load %union.rec*, %union.rec** %2, align 8
  %763 = bitcast %union.rec* %762 to %struct.word_type*
  %764 = getelementptr inbounds %struct.word_type, %struct.word_type* %763, i32 0, i32 2
  %765 = bitcast %union.SECOND_UNION* %764 to %struct.anon.1*
  %766 = bitcast %struct.anon.1* %765 to i32*
  %767 = load i32, i32* %766, align 4
  %768 = and i32 %767, 4095
  %769 = load %union.rec*, %union.rec** %2, align 8
  %770 = call i32 @FontSize(i32 %768, %union.rec* %769)
  %771 = sitofp i32 %770 to double
  %772 = fmul double 1.100000e+00, %771
  %773 = fptosi double %772 to i16
  %774 = load %union.rec*, %union.rec** %y, align 8
  %775 = bitcast %union.rec* %774 to %struct.closure_type*
  %776 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %775, i32 0, i32 4
  %777 = bitcast %union.FOURTH_UNION* %776 to %struct.STYLE*
  %778 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %777, i32 0, i32 0
  %779 = bitcast %union.anon* %778 to %struct.GAP*
  %780 = getelementptr inbounds %struct.GAP, %struct.GAP* %779, i32 0, i32 1
  store i16 %773, i16* %780, align 2
  %781 = load %union.rec*, %union.rec** %y, align 8
  %782 = bitcast %union.rec* %781 to %struct.closure_type*
  %783 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %782, i32 0, i32 4
  %784 = bitcast %union.FOURTH_UNION* %783 to %struct.STYLE*
  %785 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %784, i32 0, i32 1
  %786 = bitcast %union.anon.10* %785 to %struct.GAP*
  %787 = bitcast %struct.GAP* %786 to i16*
  %788 = load i16, i16* %787, align 4
  %789 = and i16 %788, -129
  store i16 %789, i16* %787, align 4
  %790 = load %union.rec*, %union.rec** %y, align 8
  %791 = bitcast %union.rec* %790 to %struct.closure_type*
  %792 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %791, i32 0, i32 4
  %793 = bitcast %union.FOURTH_UNION* %792 to %struct.STYLE*
  %794 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %793, i32 0, i32 1
  %795 = bitcast %union.anon.10* %794 to %struct.GAP*
  %796 = bitcast %struct.GAP* %795 to i16*
  %797 = load i16, i16* %796, align 4
  %798 = and i16 %797, -257
  store i16 %798, i16* %796, align 4
  %799 = load %union.rec*, %union.rec** %y, align 8
  %800 = bitcast %union.rec* %799 to %struct.closure_type*
  %801 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %800, i32 0, i32 4
  %802 = bitcast %union.FOURTH_UNION* %801 to %struct.STYLE*
  %803 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %802, i32 0, i32 1
  %804 = bitcast %union.anon.10* %803 to %struct.GAP*
  %805 = bitcast %struct.GAP* %804 to i16*
  %806 = load i16, i16* %805, align 4
  %807 = and i16 %806, -513
  %808 = or i16 %807, 512
  store i16 %808, i16* %805, align 4
  %809 = load %union.rec*, %union.rec** %y, align 8
  %810 = bitcast %union.rec* %809 to %struct.closure_type*
  %811 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %810, i32 0, i32 4
  %812 = bitcast %union.FOURTH_UNION* %811 to %struct.STYLE*
  %813 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %812, i32 0, i32 1
  %814 = bitcast %union.anon.10* %813 to %struct.GAP*
  %815 = bitcast %struct.GAP* %814 to i16*
  %816 = load i16, i16* %815, align 4
  %817 = and i16 %816, -7169
  %818 = or i16 %817, 1024
  store i16 %818, i16* %815, align 4
  %819 = load %union.rec*, %union.rec** %y, align 8
  %820 = bitcast %union.rec* %819 to %struct.closure_type*
  %821 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %820, i32 0, i32 4
  %822 = bitcast %union.FOURTH_UNION* %821 to %struct.STYLE*
  %823 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %822, i32 0, i32 1
  %824 = bitcast %union.anon.10* %823 to %struct.GAP*
  %825 = bitcast %struct.GAP* %824 to i16*
  %826 = load i16, i16* %825, align 4
  %827 = and i16 %826, 8191
  %828 = or i16 %827, 8192
  store i16 %828, i16* %825, align 4
  %829 = load %union.rec*, %union.rec** %y, align 8
  %830 = bitcast %union.rec* %829 to %struct.closure_type*
  %831 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %830, i32 0, i32 4
  %832 = bitcast %union.FOURTH_UNION* %831 to %struct.STYLE*
  %833 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %832, i32 0, i32 1
  %834 = bitcast %union.anon.10* %833 to %struct.GAP*
  %835 = getelementptr inbounds %struct.GAP, %struct.GAP* %834, i32 0, i32 1
  store i16 0, i16* %835, align 2
  %836 = load %union.rec*, %union.rec** %y, align 8
  %837 = bitcast %union.rec* %836 to %struct.closure_type*
  %838 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %837, i32 0, i32 4
  %839 = bitcast %union.FOURTH_UNION* %838 to %struct.STYLE*
  %840 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %839, i32 0, i32 1
  %841 = bitcast %union.anon.10* %840 to %struct.anon.11*
  %842 = bitcast %struct.anon.11* %841 to i8*
  %843 = load i8, i8* %842, align 4
  %844 = and i8 %843, -4
  %845 = or i8 %844, 2
  store i8 %845, i8* %842, align 4
  %846 = load %union.rec*, %union.rec** %y, align 8
  %847 = bitcast %union.rec* %846 to %struct.closure_type*
  %848 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %847, i32 0, i32 4
  %849 = bitcast %union.FOURTH_UNION* %848 to %struct.STYLE*
  %850 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %849, i32 0, i32 1
  %851 = bitcast %union.anon.10* %850 to %struct.anon.11*
  %852 = bitcast %struct.anon.11* %851 to i8*
  %853 = load i8, i8* %852, align 4
  %854 = and i8 %853, -13
  %855 = or i8 %854, 8
  store i8 %855, i8* %852, align 4
  %856 = load %union.rec*, %union.rec** %y, align 8
  %857 = bitcast %union.rec* %856 to %struct.closure_type*
  %858 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %857, i32 0, i32 4
  %859 = bitcast %union.FOURTH_UNION* %858 to %struct.STYLE*
  %860 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %859, i32 0, i32 1
  %861 = bitcast %union.anon.10* %860 to %struct.anon.11*
  %862 = bitcast %struct.anon.11* %861 to i8*
  %863 = load i8, i8* %862, align 4
  %864 = and i8 %863, -113
  %865 = or i8 %864, 64
  store i8 %865, i8* %862, align 4
  %866 = load %union.rec*, %union.rec** %y, align 8
  %867 = bitcast %union.rec* %866 to %struct.closure_type*
  %868 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %867, i32 0, i32 4
  %869 = bitcast %union.FOURTH_UNION* %868 to %struct.STYLE*
  %870 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %869, i32 0, i32 0
  %871 = bitcast %union.anon* %870 to %struct.anon.9*
  %872 = bitcast %struct.anon.9* %871 to i8*
  %873 = load i8, i8* %872, align 4
  %874 = and i8 %873, -9
  store i8 %874, i8* %872, align 4
  %875 = load %union.rec*, %union.rec** %2, align 8
  %876 = bitcast %union.rec* %875 to %struct.word_type*
  %877 = getelementptr inbounds %struct.word_type, %struct.word_type* %876, i32 0, i32 2
  %878 = bitcast %union.SECOND_UNION* %877 to %struct.anon.1*
  %879 = bitcast %struct.anon.1* %878 to i32*
  %880 = load i32, i32* %879, align 4
  %881 = and i32 %880, 4095
  %882 = load %union.rec*, %union.rec** %y, align 8
  %883 = bitcast %union.rec* %882 to %struct.closure_type*
  %884 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %883, i32 0, i32 4
  %885 = bitcast %union.FOURTH_UNION* %884 to %struct.STYLE*
  %886 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %885, i32 0, i32 4
  %887 = load i32, i32* %886, align 4
  %888 = and i32 %881, 4095
  %889 = and i32 %887, -4096
  %890 = or i32 %889, %888
  store i32 %890, i32* %886, align 4
  %891 = load %union.rec*, %union.rec** %2, align 8
  %892 = bitcast %union.rec* %891 to %struct.word_type*
  %893 = getelementptr inbounds %struct.word_type, %struct.word_type* %892, i32 0, i32 2
  %894 = bitcast %union.SECOND_UNION* %893 to %struct.anon.1*
  %895 = bitcast %struct.anon.1* %894 to i32*
  %896 = load i32, i32* %895, align 4
  %897 = lshr i32 %896, 12
  %898 = and i32 %897, 1023
  %899 = load %union.rec*, %union.rec** %y, align 8
  %900 = bitcast %union.rec* %899 to %struct.closure_type*
  %901 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %900, i32 0, i32 4
  %902 = bitcast %union.FOURTH_UNION* %901 to %struct.STYLE*
  %903 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %902, i32 0, i32 4
  %904 = load i32, i32* %903, align 4
  %905 = and i32 %898, 1023
  %906 = shl i32 %905, 12
  %907 = and i32 %904, -4190209
  %908 = or i32 %907, %906
  store i32 %908, i32* %903, align 4
  %909 = load %union.rec*, %union.rec** %2, align 8
  %910 = bitcast %union.rec* %909 to %struct.word_type*
  %911 = getelementptr inbounds %struct.word_type, %struct.word_type* %910, i32 0, i32 2
  %912 = bitcast %union.SECOND_UNION* %911 to %struct.anon.1*
  %913 = bitcast %struct.anon.1* %912 to i32*
  %914 = load i32, i32* %913, align 4
  %915 = lshr i32 %914, 22
  %916 = and i32 %915, 1
  %917 = load %union.rec*, %union.rec** %y, align 8
  %918 = bitcast %union.rec* %917 to %struct.closure_type*
  %919 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %918, i32 0, i32 4
  %920 = bitcast %union.FOURTH_UNION* %919 to %struct.STYLE*
  %921 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %920, i32 0, i32 4
  %922 = load i32, i32* %921, align 4
  %923 = and i32 %916, 3
  %924 = shl i32 %923, 22
  %925 = and i32 %922, -12582913
  %926 = or i32 %925, %924
  store i32 %926, i32* %921, align 4
  %927 = load %union.rec*, %union.rec** %2, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 2
  %930 = bitcast %union.SECOND_UNION* %929 to %struct.anon.1*
  %931 = bitcast %struct.anon.1* %930 to i32*
  %932 = load i32, i32* %931, align 4
  %933 = lshr i32 %932, 23
  %934 = and i32 %933, 63
  %935 = load %union.rec*, %union.rec** %y, align 8
  %936 = bitcast %union.rec* %935 to %struct.closure_type*
  %937 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %936, i32 0, i32 4
  %938 = bitcast %union.FOURTH_UNION* %937 to %struct.STYLE*
  %939 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %938, i32 0, i32 4
  %940 = load i32, i32* %939, align 4
  %941 = and i32 %934, 63
  %942 = shl i32 %941, 24
  %943 = and i32 %940, -1056964609
  %944 = or i32 %943, %942
  store i32 %944, i32* %939, align 4
  %945 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %945, %union.rec** @zz_hold, align 8
  %946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %947 = bitcast %union.rec* %946 to %struct.word_type*
  %948 = getelementptr inbounds %struct.word_type, %struct.word_type* %947, i32 0, i32 0
  %949 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %948, i32 0, i64 1
  %950 = getelementptr inbounds %struct.LIST, %struct.LIST* %949, i32 0, i32 1
  %951 = load %union.rec*, %union.rec** %950, align 8
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %953 = icmp eq %union.rec* %951, %952
  br i1 %953, label %954, label %955

; <label>:954                                     ; preds = %592
  br label %996

; <label>:955                                     ; preds = %592
  %956 = load %union.rec*, %union.rec** @zz_hold, align 8
  %957 = bitcast %union.rec* %956 to %struct.word_type*
  %958 = getelementptr inbounds %struct.word_type, %struct.word_type* %957, i32 0, i32 0
  %959 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %958, i32 0, i64 1
  %960 = getelementptr inbounds %struct.LIST, %struct.LIST* %959, i32 0, i32 1
  %961 = load %union.rec*, %union.rec** %960, align 8
  store %union.rec* %961, %union.rec** @zz_res, align 8
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 0
  %965 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %964, i32 0, i64 1
  %966 = getelementptr inbounds %struct.LIST, %struct.LIST* %965, i32 0, i32 0
  %967 = load %union.rec*, %union.rec** %966, align 8
  %968 = load %union.rec*, %union.rec** @zz_res, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 1
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 0
  store %union.rec* %967, %union.rec** %972, align 8
  %973 = load %union.rec*, %union.rec** @zz_res, align 8
  %974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 1
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 0
  %979 = load %union.rec*, %union.rec** %978, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 0
  %982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %981, i32 0, i64 1
  %983 = getelementptr inbounds %struct.LIST, %struct.LIST* %982, i32 0, i32 1
  store %union.rec* %973, %union.rec** %983, align 8
  %984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %985 = load %union.rec*, %union.rec** @zz_hold, align 8
  %986 = bitcast %union.rec* %985 to %struct.word_type*
  %987 = getelementptr inbounds %struct.word_type, %struct.word_type* %986, i32 0, i32 0
  %988 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %987, i32 0, i64 1
  %989 = getelementptr inbounds %struct.LIST, %struct.LIST* %988, i32 0, i32 1
  store %union.rec* %984, %union.rec** %989, align 8
  %990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %991 = bitcast %union.rec* %990 to %struct.word_type*
  %992 = getelementptr inbounds %struct.word_type, %struct.word_type* %991, i32 0, i32 0
  %993 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %992, i32 0, i64 1
  %994 = getelementptr inbounds %struct.LIST, %struct.LIST* %993, i32 0, i32 0
  store %union.rec* %984, %union.rec** %994, align 8
  %995 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %996

; <label>:996                                     ; preds = %955, %954
  %997 = phi %union.rec* [ null, %954 ], [ %995, %955 ]
  store %union.rec* %997, %union.rec** @xx_tmp, align 8
  %998 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %998, %union.rec** @zz_res, align 8
  %999 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %999, %union.rec** @zz_hold, align 8
  %1000 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1001 = icmp eq %union.rec* %1000, null
  br i1 %1001, label %1002, label %1004

; <label>:1002                                    ; preds = %996
  %1003 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1052

; <label>:1004                                    ; preds = %996
  %1005 = load %union.rec*, %union.rec** @zz_res, align 8
  %1006 = icmp eq %union.rec* %1005, null
  br i1 %1006, label %1007, label %1009

; <label>:1007                                    ; preds = %1004
  %1008 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1050

; <label>:1009                                    ; preds = %1004
  %1010 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1011 = bitcast %union.rec* %1010 to %struct.word_type*
  %1012 = getelementptr inbounds %struct.word_type, %struct.word_type* %1011, i32 0, i32 0
  %1013 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1012, i32 0, i64 1
  %1014 = getelementptr inbounds %struct.LIST, %struct.LIST* %1013, i32 0, i32 0
  %1015 = load %union.rec*, %union.rec** %1014, align 8
  store %union.rec* %1015, %union.rec** @zz_tmp, align 8
  %1016 = load %union.rec*, %union.rec** @zz_res, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 0
  %1019 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1018, i32 0, i64 1
  %1020 = getelementptr inbounds %struct.LIST, %struct.LIST* %1019, i32 0, i32 0
  %1021 = load %union.rec*, %union.rec** %1020, align 8
  %1022 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1023 = bitcast %union.rec* %1022 to %struct.word_type*
  %1024 = getelementptr inbounds %struct.word_type, %struct.word_type* %1023, i32 0, i32 0
  %1025 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1024, i32 0, i64 1
  %1026 = getelementptr inbounds %struct.LIST, %struct.LIST* %1025, i32 0, i32 0
  store %union.rec* %1021, %union.rec** %1026, align 8
  %1027 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1028 = load %union.rec*, %union.rec** @zz_res, align 8
  %1029 = bitcast %union.rec* %1028 to %struct.word_type*
  %1030 = getelementptr inbounds %struct.word_type, %struct.word_type* %1029, i32 0, i32 0
  %1031 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1030, i32 0, i64 1
  %1032 = getelementptr inbounds %struct.LIST, %struct.LIST* %1031, i32 0, i32 0
  %1033 = load %union.rec*, %union.rec** %1032, align 8
  %1034 = bitcast %union.rec* %1033 to %struct.word_type*
  %1035 = getelementptr inbounds %struct.word_type, %struct.word_type* %1034, i32 0, i32 0
  %1036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1035, i32 0, i64 1
  %1037 = getelementptr inbounds %struct.LIST, %struct.LIST* %1036, i32 0, i32 1
  store %union.rec* %1027, %union.rec** %1037, align 8
  %1038 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1039 = load %union.rec*, %union.rec** @zz_res, align 8
  %1040 = bitcast %union.rec* %1039 to %struct.word_type*
  %1041 = getelementptr inbounds %struct.word_type, %struct.word_type* %1040, i32 0, i32 0
  %1042 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1041, i32 0, i64 1
  %1043 = getelementptr inbounds %struct.LIST, %struct.LIST* %1042, i32 0, i32 0
  store %union.rec* %1038, %union.rec** %1043, align 8
  %1044 = load %union.rec*, %union.rec** @zz_res, align 8
  %1045 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1046 = bitcast %union.rec* %1045 to %struct.word_type*
  %1047 = getelementptr inbounds %struct.word_type, %struct.word_type* %1046, i32 0, i32 0
  %1048 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1047, i32 0, i64 1
  %1049 = getelementptr inbounds %struct.LIST, %struct.LIST* %1048, i32 0, i32 1
  store %union.rec* %1044, %union.rec** %1049, align 8
  br label %1050

; <label>:1050                                    ; preds = %1009, %1007
  %1051 = phi %union.rec* [ %1008, %1007 ], [ %1044, %1009 ]
  br label %1052

; <label>:1052                                    ; preds = %1050, %1002
  %1053 = phi %union.rec* [ %1003, %1002 ], [ %1051, %1050 ]
  %1054 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1055 = zext i8 %1054 to i32
  store i32 %1055, i32* @zz_size, align 4
  %1056 = sext i32 %1055 to i64
  %1057 = icmp uge i64 %1056, 265
  br i1 %1057, label %1058, label %1061

; <label>:1058                                    ; preds = %1052
  %1059 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1060 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i32 0, i32 0), i32 1, %struct.FILE_POS* %1059)
  br label %1086

; <label>:1061                                    ; preds = %1052
  %1062 = load i32, i32* @zz_size, align 4
  %1063 = sext i32 %1062 to i64
  %1064 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1063
  %1065 = load %union.rec*, %union.rec** %1064, align 8
  %1066 = icmp eq %union.rec* %1065, null
  br i1 %1066, label %1067, label %1071

; <label>:1067                                    ; preds = %1061
  %1068 = load i32, i32* @zz_size, align 4
  %1069 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1070 = call %union.rec* @GetMemory(i32 %1068, %struct.FILE_POS* %1069)
  store %union.rec* %1070, %union.rec** @zz_hold, align 8
  br label %1085

; <label>:1071                                    ; preds = %1061
  %1072 = load i32, i32* @zz_size, align 4
  %1073 = sext i32 %1072 to i64
  %1074 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1073
  %1075 = load %union.rec*, %union.rec** %1074, align 8
  store %union.rec* %1075, %union.rec** @zz_hold, align 8
  store %union.rec* %1075, %union.rec** @zz_hold, align 8
  %1076 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 0
  %1079 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1078, i32 0, i64 0
  %1080 = getelementptr inbounds %struct.LIST, %struct.LIST* %1079, i32 0, i32 0
  %1081 = load %union.rec*, %union.rec** %1080, align 8
  %1082 = load i32, i32* @zz_size, align 4
  %1083 = sext i32 %1082 to i64
  %1084 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1083
  store %union.rec* %1081, %union.rec** %1084, align 8
  br label %1085

; <label>:1085                                    ; preds = %1071, %1067
  br label %1086

; <label>:1086                                    ; preds = %1085, %1058
  %1087 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1088 = bitcast %union.rec* %1087 to %struct.word_type*
  %1089 = getelementptr inbounds %struct.word_type, %struct.word_type* %1088, i32 0, i32 1
  %1090 = bitcast %union.FIRST_UNION* %1089 to %struct.anon*
  %1091 = getelementptr inbounds %struct.anon, %struct.anon* %1090, i32 0, i32 0
  store i8 0, i8* %1091, align 1
  %1092 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1093 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.word_type*
  %1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %1094, i32 0, i32 0
  %1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1095, i32 0, i64 1
  %1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %1096, i32 0, i32 1
  store %union.rec* %1092, %union.rec** %1097, align 8
  %1098 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1099 = bitcast %union.rec* %1098 to %struct.word_type*
  %1100 = getelementptr inbounds %struct.word_type, %struct.word_type* %1099, i32 0, i32 0
  %1101 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1100, i32 0, i64 1
  %1102 = getelementptr inbounds %struct.LIST, %struct.LIST* %1101, i32 0, i32 0
  store %union.rec* %1092, %union.rec** %1102, align 8
  %1103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1104 = bitcast %union.rec* %1103 to %struct.word_type*
  %1105 = getelementptr inbounds %struct.word_type, %struct.word_type* %1104, i32 0, i32 0
  %1106 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1105, i32 0, i64 0
  %1107 = getelementptr inbounds %struct.LIST, %struct.LIST* %1106, i32 0, i32 1
  store %union.rec* %1092, %union.rec** %1107, align 8
  %1108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1109 = bitcast %union.rec* %1108 to %struct.word_type*
  %1110 = getelementptr inbounds %struct.word_type, %struct.word_type* %1109, i32 0, i32 0
  %1111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1110, i32 0, i64 0
  %1112 = getelementptr inbounds %struct.LIST, %struct.LIST* %1111, i32 0, i32 0
  store %union.rec* %1092, %union.rec** %1112, align 8
  store %union.rec* %1092, %union.rec** @xx_link, align 8
  %1113 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1113, %union.rec** @zz_res, align 8
  %1114 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1114, %union.rec** @zz_hold, align 8
  %1115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1116 = icmp eq %union.rec* %1115, null
  br i1 %1116, label %1117, label %1119

; <label>:1117                                    ; preds = %1086
  %1118 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1167

; <label>:1119                                    ; preds = %1086
  %1120 = load %union.rec*, %union.rec** @zz_res, align 8
  %1121 = icmp eq %union.rec* %1120, null
  br i1 %1121, label %1122, label %1124

; <label>:1122                                    ; preds = %1119
  %1123 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1165

; <label>:1124                                    ; preds = %1119
  %1125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 0
  %1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1127, i32 0, i64 0
  %1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %1128, i32 0, i32 0
  %1130 = load %union.rec*, %union.rec** %1129, align 8
  store %union.rec* %1130, %union.rec** @zz_tmp, align 8
  %1131 = load %union.rec*, %union.rec** @zz_res, align 8
  %1132 = bitcast %union.rec* %1131 to %struct.word_type*
  %1133 = getelementptr inbounds %struct.word_type, %struct.word_type* %1132, i32 0, i32 0
  %1134 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1133, i32 0, i64 0
  %1135 = getelementptr inbounds %struct.LIST, %struct.LIST* %1134, i32 0, i32 0
  %1136 = load %union.rec*, %union.rec** %1135, align 8
  %1137 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1138 = bitcast %union.rec* %1137 to %struct.word_type*
  %1139 = getelementptr inbounds %struct.word_type, %struct.word_type* %1138, i32 0, i32 0
  %1140 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1139, i32 0, i64 0
  %1141 = getelementptr inbounds %struct.LIST, %struct.LIST* %1140, i32 0, i32 0
  store %union.rec* %1136, %union.rec** %1141, align 8
  %1142 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1143 = load %union.rec*, %union.rec** @zz_res, align 8
  %1144 = bitcast %union.rec* %1143 to %struct.word_type*
  %1145 = getelementptr inbounds %struct.word_type, %struct.word_type* %1144, i32 0, i32 0
  %1146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1145, i32 0, i64 0
  %1147 = getelementptr inbounds %struct.LIST, %struct.LIST* %1146, i32 0, i32 0
  %1148 = load %union.rec*, %union.rec** %1147, align 8
  %1149 = bitcast %union.rec* %1148 to %struct.word_type*
  %1150 = getelementptr inbounds %struct.word_type, %struct.word_type* %1149, i32 0, i32 0
  %1151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1150, i32 0, i64 0
  %1152 = getelementptr inbounds %struct.LIST, %struct.LIST* %1151, i32 0, i32 1
  store %union.rec* %1142, %union.rec** %1152, align 8
  %1153 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1154 = load %union.rec*, %union.rec** @zz_res, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 0
  %1157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1156, i32 0, i64 0
  %1158 = getelementptr inbounds %struct.LIST, %struct.LIST* %1157, i32 0, i32 0
  store %union.rec* %1153, %union.rec** %1158, align 8
  %1159 = load %union.rec*, %union.rec** @zz_res, align 8
  %1160 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1161 = bitcast %union.rec* %1160 to %struct.word_type*
  %1162 = getelementptr inbounds %struct.word_type, %struct.word_type* %1161, i32 0, i32 0
  %1163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1162, i32 0, i64 0
  %1164 = getelementptr inbounds %struct.LIST, %struct.LIST* %1163, i32 0, i32 1
  store %union.rec* %1159, %union.rec** %1164, align 8
  br label %1165

; <label>:1165                                    ; preds = %1124, %1122
  %1166 = phi %union.rec* [ %1123, %1122 ], [ %1159, %1124 ]
  br label %1167

; <label>:1167                                    ; preds = %1165, %1117
  %1168 = phi %union.rec* [ %1118, %1117 ], [ %1166, %1165 ]
  %1169 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1169, %union.rec** @zz_res, align 8
  %1170 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %1170, %union.rec** @zz_hold, align 8
  %1171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1172 = icmp eq %union.rec* %1171, null
  br i1 %1172, label %1173, label %1175

; <label>:1173                                    ; preds = %1167
  %1174 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1223

; <label>:1175                                    ; preds = %1167
  %1176 = load %union.rec*, %union.rec** @zz_res, align 8
  %1177 = icmp eq %union.rec* %1176, null
  br i1 %1177, label %1178, label %1180

; <label>:1178                                    ; preds = %1175
  %1179 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1221

; <label>:1180                                    ; preds = %1175
  %1181 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1182 = bitcast %union.rec* %1181 to %struct.word_type*
  %1183 = getelementptr inbounds %struct.word_type, %struct.word_type* %1182, i32 0, i32 0
  %1184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1183, i32 0, i64 1
  %1185 = getelementptr inbounds %struct.LIST, %struct.LIST* %1184, i32 0, i32 0
  %1186 = load %union.rec*, %union.rec** %1185, align 8
  store %union.rec* %1186, %union.rec** @zz_tmp, align 8
  %1187 = load %union.rec*, %union.rec** @zz_res, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 0
  %1190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1189, i32 0, i64 1
  %1191 = getelementptr inbounds %struct.LIST, %struct.LIST* %1190, i32 0, i32 0
  %1192 = load %union.rec*, %union.rec** %1191, align 8
  %1193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1194 = bitcast %union.rec* %1193 to %struct.word_type*
  %1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %1194, i32 0, i32 0
  %1196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1195, i32 0, i64 1
  %1197 = getelementptr inbounds %struct.LIST, %struct.LIST* %1196, i32 0, i32 0
  store %union.rec* %1192, %union.rec** %1197, align 8
  %1198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1199 = load %union.rec*, %union.rec** @zz_res, align 8
  %1200 = bitcast %union.rec* %1199 to %struct.word_type*
  %1201 = getelementptr inbounds %struct.word_type, %struct.word_type* %1200, i32 0, i32 0
  %1202 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1201, i32 0, i64 1
  %1203 = getelementptr inbounds %struct.LIST, %struct.LIST* %1202, i32 0, i32 0
  %1204 = load %union.rec*, %union.rec** %1203, align 8
  %1205 = bitcast %union.rec* %1204 to %struct.word_type*
  %1206 = getelementptr inbounds %struct.word_type, %struct.word_type* %1205, i32 0, i32 0
  %1207 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1206, i32 0, i64 1
  %1208 = getelementptr inbounds %struct.LIST, %struct.LIST* %1207, i32 0, i32 1
  store %union.rec* %1198, %union.rec** %1208, align 8
  %1209 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1210 = load %union.rec*, %union.rec** @zz_res, align 8
  %1211 = bitcast %union.rec* %1210 to %struct.word_type*
  %1212 = getelementptr inbounds %struct.word_type, %struct.word_type* %1211, i32 0, i32 0
  %1213 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1212, i32 0, i64 1
  %1214 = getelementptr inbounds %struct.LIST, %struct.LIST* %1213, i32 0, i32 0
  store %union.rec* %1209, %union.rec** %1214, align 8
  %1215 = load %union.rec*, %union.rec** @zz_res, align 8
  %1216 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1217 = bitcast %union.rec* %1216 to %struct.word_type*
  %1218 = getelementptr inbounds %struct.word_type, %struct.word_type* %1217, i32 0, i32 0
  %1219 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1218, i32 0, i64 1
  %1220 = getelementptr inbounds %struct.LIST, %struct.LIST* %1219, i32 0, i32 1
  store %union.rec* %1215, %union.rec** %1220, align 8
  br label %1221

; <label>:1221                                    ; preds = %1180, %1178
  %1222 = phi %union.rec* [ %1179, %1178 ], [ %1215, %1180 ]
  br label %1223

; <label>:1223                                    ; preds = %1221, %1173
  %1224 = phi %union.rec* [ %1174, %1173 ], [ %1222, %1221 ]
  %1225 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1225, %union.rec** %2, align 8
  %1226 = load %union.rec*, %union.rec** %2, align 8
  %1227 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1228 = call %union.rec* @BreakObject(%union.rec* %1226, %struct.CONSTRAINT* %1227)
  store %union.rec* %1228, %union.rec** %2, align 8
  br label %1428

; <label>:1229                                    ; preds = %550
  %1230 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1231 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1230, i32 0, i32 2
  %1232 = load i32, i32* %1231, align 4
  %1233 = icmp ne i32 %1232, 0
  br i1 %1233, label %1234, label %1288

; <label>:1234                                    ; preds = %1229
  %1235 = load %union.rec*, %union.rec** %2, align 8
  %1236 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1237 = call i32 @InsertScale(%union.rec* %1235, %struct.CONSTRAINT* %1236)
  %1238 = icmp ne i32 %1237, 0
  br i1 %1238, label %1239, label %1288

; <label>:1239                                    ; preds = %1234
  %1240 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %1240, %union.rec** %tmp, align 8
  %1241 = load %union.rec*, %union.rec** %2, align 8
  %1242 = bitcast %union.rec* %1241 to %struct.word_type*
  %1243 = getelementptr inbounds %struct.word_type, %struct.word_type* %1242, i32 0, i32 0
  %1244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1243, i32 0, i64 1
  %1245 = getelementptr inbounds %struct.LIST, %struct.LIST* %1244, i32 0, i32 1
  %1246 = load %union.rec*, %union.rec** %1245, align 8
  %1247 = bitcast %union.rec* %1246 to %struct.word_type*
  %1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %1247, i32 0, i32 0
  %1249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1248, i32 0, i64 0
  %1250 = getelementptr inbounds %struct.LIST, %struct.LIST* %1249, i32 0, i32 0
  %1251 = load %union.rec*, %union.rec** %1250, align 8
  store %union.rec* %1251, %union.rec** %2, align 8
  br label %1252

; <label>:1252                                    ; preds = %1262, %1239
  %1253 = load %union.rec*, %union.rec** %2, align 8
  %1254 = bitcast %union.rec* %1253 to %struct.word_type*
  %1255 = getelementptr inbounds %struct.word_type, %struct.word_type* %1254, i32 0, i32 1
  %1256 = bitcast %union.FIRST_UNION* %1255 to %struct.anon*
  %1257 = getelementptr inbounds %struct.anon, %struct.anon* %1256, i32 0, i32 0
  %1258 = load i8, i8* %1257, align 1
  %1259 = zext i8 %1258 to i32
  %1260 = icmp eq i32 %1259, 0
  br i1 %1260, label %1261, label %1269

; <label>:1261                                    ; preds = %1252
  br label %1262

; <label>:1262                                    ; preds = %1261
  %1263 = load %union.rec*, %union.rec** %2, align 8
  %1264 = bitcast %union.rec* %1263 to %struct.word_type*
  %1265 = getelementptr inbounds %struct.word_type, %struct.word_type* %1264, i32 0, i32 0
  %1266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1265, i32 0, i64 0
  %1267 = getelementptr inbounds %struct.LIST, %struct.LIST* %1266, i32 0, i32 0
  %1268 = load %union.rec*, %union.rec** %1267, align 8
  store %union.rec* %1268, %union.rec** %2, align 8
  br label %1252

; <label>:1269                                    ; preds = %1252
  %1270 = load %union.rec*, %union.rec** %2, align 8
  %1271 = bitcast %union.rec* %1270 to %struct.word_type*
  %1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %1271, i32 0, i32 1
  %1273 = bitcast %union.FIRST_UNION* %1272 to %struct.FILE_POS*
  %1274 = load %union.rec*, %union.rec** %tmp, align 8
  %1275 = bitcast %union.rec* %1274 to %struct.word_type*
  %1276 = getelementptr inbounds %struct.word_type, %struct.word_type* %1275, i32 0, i32 4
  %1277 = getelementptr inbounds [4 x i8], [4 x i8]* %1276, i32 0, i32 0
  %1278 = load %union.rec*, %union.rec** %2, align 8
  %1279 = bitcast %union.rec* %1278 to %struct.closure_type*
  %1280 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1279, i32 0, i32 4
  %1281 = bitcast %union.FOURTH_UNION* %1280 to %struct.CONSTRAINT*
  %1282 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1281, i32 0, i32 0
  %1283 = load i32, i32* %1282, align 4
  %1284 = sitofp i32 %1283 to float
  %1285 = fdiv float %1284, 1.280000e+02
  %1286 = fpext float %1285 to double
  %1287 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 5, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.6, i32 0, i32 0), i32 2, %struct.FILE_POS* %1273, i8* %1277, double %1286)
  br label %1427

; <label>:1288                                    ; preds = %1234, %1229
  %1289 = load %union.rec*, %union.rec** %2, align 8
  %1290 = bitcast %union.rec* %1289 to %struct.word_type*
  %1291 = getelementptr inbounds %struct.word_type, %struct.word_type* %1290, i32 0, i32 1
  %1292 = bitcast %union.FIRST_UNION* %1291 to %struct.FILE_POS*
  %1293 = load %union.rec*, %union.rec** %2, align 8
  %1294 = bitcast %union.rec* %1293 to %struct.word_type*
  %1295 = getelementptr inbounds %struct.word_type, %struct.word_type* %1294, i32 0, i32 4
  %1296 = getelementptr inbounds [4 x i8], [4 x i8]* %1295, i32 0, i32 0
  %1297 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 6, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i32 0, i32 0), i32 2, %struct.FILE_POS* %1292, i8* %1296)
  %1298 = load %union.rec*, %union.rec** %2, align 8
  %1299 = bitcast %union.rec* %1298 to %struct.word_type*
  %1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %1299, i32 0, i32 1
  %1301 = bitcast %union.FIRST_UNION* %1300 to %struct.FILE_POS*
  %1302 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %1301)
  store %union.rec* %1302, %union.rec** %y, align 8
  %1303 = load %union.rec*, %union.rec** %y, align 8
  %1304 = bitcast %union.rec* %1303 to %struct.word_type*
  %1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %1304, i32 0, i32 3
  %1306 = bitcast %union.THIRD_UNION* %1305 to %struct.anon.6*
  %1307 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1306, i32 0, i32 1
  %1308 = getelementptr inbounds [2 x i32], [2 x i32]* %1307, i32 0, i64 0
  store i32 0, i32* %1308, align 4
  %1309 = load %union.rec*, %union.rec** %y, align 8
  %1310 = bitcast %union.rec* %1309 to %struct.word_type*
  %1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %1310, i32 0, i32 3
  %1312 = bitcast %union.THIRD_UNION* %1311 to %struct.anon.6*
  %1313 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1312, i32 0, i32 0
  %1314 = getelementptr inbounds [2 x i32], [2 x i32]* %1313, i32 0, i64 0
  store i32 0, i32* %1314, align 4
  %1315 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %1315, %union.rec** @zz_hold, align 8
  %1316 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1317 = bitcast %union.rec* %1316 to %struct.word_type*
  %1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %1317, i32 0, i32 0
  %1319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1318, i32 0, i64 1
  %1320 = getelementptr inbounds %struct.LIST, %struct.LIST* %1319, i32 0, i32 1
  %1321 = load %union.rec*, %union.rec** %1320, align 8
  %1322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1323 = icmp eq %union.rec* %1321, %1322
  br i1 %1323, label %1324, label %1325

; <label>:1324                                    ; preds = %1288
  br label %1366

; <label>:1325                                    ; preds = %1288
  %1326 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1327 = bitcast %union.rec* %1326 to %struct.word_type*
  %1328 = getelementptr inbounds %struct.word_type, %struct.word_type* %1327, i32 0, i32 0
  %1329 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1328, i32 0, i64 1
  %1330 = getelementptr inbounds %struct.LIST, %struct.LIST* %1329, i32 0, i32 1
  %1331 = load %union.rec*, %union.rec** %1330, align 8
  store %union.rec* %1331, %union.rec** @zz_res, align 8
  %1332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1333 = bitcast %union.rec* %1332 to %struct.word_type*
  %1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %1333, i32 0, i32 0
  %1335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1334, i32 0, i64 1
  %1336 = getelementptr inbounds %struct.LIST, %struct.LIST* %1335, i32 0, i32 0
  %1337 = load %union.rec*, %union.rec** %1336, align 8
  %1338 = load %union.rec*, %union.rec** @zz_res, align 8
  %1339 = bitcast %union.rec* %1338 to %struct.word_type*
  %1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %1339, i32 0, i32 0
  %1341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1340, i32 0, i64 1
  %1342 = getelementptr inbounds %struct.LIST, %struct.LIST* %1341, i32 0, i32 0
  store %union.rec* %1337, %union.rec** %1342, align 8
  %1343 = load %union.rec*, %union.rec** @zz_res, align 8
  %1344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1345 = bitcast %union.rec* %1344 to %struct.word_type*
  %1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %1345, i32 0, i32 0
  %1347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1346, i32 0, i64 1
  %1348 = getelementptr inbounds %struct.LIST, %struct.LIST* %1347, i32 0, i32 0
  %1349 = load %union.rec*, %union.rec** %1348, align 8
  %1350 = bitcast %union.rec* %1349 to %struct.word_type*
  %1351 = getelementptr inbounds %struct.word_type, %struct.word_type* %1350, i32 0, i32 0
  %1352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1351, i32 0, i64 1
  %1353 = getelementptr inbounds %struct.LIST, %struct.LIST* %1352, i32 0, i32 1
  store %union.rec* %1343, %union.rec** %1353, align 8
  %1354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 1
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 1
  store %union.rec* %1354, %union.rec** %1359, align 8
  %1360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1361 = bitcast %union.rec* %1360 to %struct.word_type*
  %1362 = getelementptr inbounds %struct.word_type, %struct.word_type* %1361, i32 0, i32 0
  %1363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1362, i32 0, i64 1
  %1364 = getelementptr inbounds %struct.LIST, %struct.LIST* %1363, i32 0, i32 0
  store %union.rec* %1354, %union.rec** %1364, align 8
  %1365 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1366

; <label>:1366                                    ; preds = %1325, %1324
  %1367 = phi %union.rec* [ null, %1324 ], [ %1365, %1325 ]
  store %union.rec* %1367, %union.rec** @xx_tmp, align 8
  %1368 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1368, %union.rec** @zz_res, align 8
  %1369 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1369, %union.rec** @zz_hold, align 8
  %1370 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1371 = icmp eq %union.rec* %1370, null
  br i1 %1371, label %1372, label %1374

; <label>:1372                                    ; preds = %1366
  %1373 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1422

; <label>:1374                                    ; preds = %1366
  %1375 = load %union.rec*, %union.rec** @zz_res, align 8
  %1376 = icmp eq %union.rec* %1375, null
  br i1 %1376, label %1377, label %1379

; <label>:1377                                    ; preds = %1374
  %1378 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1420

; <label>:1379                                    ; preds = %1374
  %1380 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1381 = bitcast %union.rec* %1380 to %struct.word_type*
  %1382 = getelementptr inbounds %struct.word_type, %struct.word_type* %1381, i32 0, i32 0
  %1383 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1382, i32 0, i64 1
  %1384 = getelementptr inbounds %struct.LIST, %struct.LIST* %1383, i32 0, i32 0
  %1385 = load %union.rec*, %union.rec** %1384, align 8
  store %union.rec* %1385, %union.rec** @zz_tmp, align 8
  %1386 = load %union.rec*, %union.rec** @zz_res, align 8
  %1387 = bitcast %union.rec* %1386 to %struct.word_type*
  %1388 = getelementptr inbounds %struct.word_type, %struct.word_type* %1387, i32 0, i32 0
  %1389 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1388, i32 0, i64 1
  %1390 = getelementptr inbounds %struct.LIST, %struct.LIST* %1389, i32 0, i32 0
  %1391 = load %union.rec*, %union.rec** %1390, align 8
  %1392 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1393 = bitcast %union.rec* %1392 to %struct.word_type*
  %1394 = getelementptr inbounds %struct.word_type, %struct.word_type* %1393, i32 0, i32 0
  %1395 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1394, i32 0, i64 1
  %1396 = getelementptr inbounds %struct.LIST, %struct.LIST* %1395, i32 0, i32 0
  store %union.rec* %1391, %union.rec** %1396, align 8
  %1397 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1398 = load %union.rec*, %union.rec** @zz_res, align 8
  %1399 = bitcast %union.rec* %1398 to %struct.word_type*
  %1400 = getelementptr inbounds %struct.word_type, %struct.word_type* %1399, i32 0, i32 0
  %1401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1400, i32 0, i64 1
  %1402 = getelementptr inbounds %struct.LIST, %struct.LIST* %1401, i32 0, i32 0
  %1403 = load %union.rec*, %union.rec** %1402, align 8
  %1404 = bitcast %union.rec* %1403 to %struct.word_type*
  %1405 = getelementptr inbounds %struct.word_type, %struct.word_type* %1404, i32 0, i32 0
  %1406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1405, i32 0, i64 1
  %1407 = getelementptr inbounds %struct.LIST, %struct.LIST* %1406, i32 0, i32 1
  store %union.rec* %1397, %union.rec** %1407, align 8
  %1408 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1409 = load %union.rec*, %union.rec** @zz_res, align 8
  %1410 = bitcast %union.rec* %1409 to %struct.word_type*
  %1411 = getelementptr inbounds %struct.word_type, %struct.word_type* %1410, i32 0, i32 0
  %1412 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1411, i32 0, i64 1
  %1413 = getelementptr inbounds %struct.LIST, %struct.LIST* %1412, i32 0, i32 0
  store %union.rec* %1408, %union.rec** %1413, align 8
  %1414 = load %union.rec*, %union.rec** @zz_res, align 8
  %1415 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1416 = bitcast %union.rec* %1415 to %struct.word_type*
  %1417 = getelementptr inbounds %struct.word_type, %struct.word_type* %1416, i32 0, i32 0
  %1418 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1417, i32 0, i64 1
  %1419 = getelementptr inbounds %struct.LIST, %struct.LIST* %1418, i32 0, i32 1
  store %union.rec* %1414, %union.rec** %1419, align 8
  br label %1420

; <label>:1420                                    ; preds = %1379, %1377
  %1421 = phi %union.rec* [ %1378, %1377 ], [ %1414, %1379 ]
  br label %1422

; <label>:1422                                    ; preds = %1420, %1372
  %1423 = phi %union.rec* [ %1373, %1372 ], [ %1421, %1420 ]
  %1424 = load %union.rec*, %union.rec** %2, align 8
  %1425 = call i32 @DisposeObject(%union.rec* %1424)
  %1426 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1426, %union.rec** %2, align 8
  br label %1427

; <label>:1427                                    ; preds = %1422, %1269
  br label %1428

; <label>:1428                                    ; preds = %1427, %1223
  br label %2579

; <label>:1429                                    ; preds = %212
  %1430 = load %union.rec*, %union.rec** %2, align 8
  %1431 = bitcast %union.rec* %1430 to %struct.closure_type*
  %1432 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1431, i32 0, i32 4
  %1433 = bitcast %union.FOURTH_UNION* %1432 to %struct.CONSTRAINT*
  %1434 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  call void @MinConstraint(%struct.CONSTRAINT* %1433, %struct.CONSTRAINT* %1434)
  %1435 = load %union.rec*, %union.rec** %2, align 8
  %1436 = bitcast %union.rec* %1435 to %struct.word_type*
  %1437 = getelementptr inbounds %struct.word_type, %struct.word_type* %1436, i32 0, i32 0
  %1438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1437, i32 0, i64 0
  %1439 = getelementptr inbounds %struct.LIST, %struct.LIST* %1438, i32 0, i32 1
  %1440 = load %union.rec*, %union.rec** %1439, align 8
  %1441 = bitcast %union.rec* %1440 to %struct.word_type*
  %1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1442, i32 0, i64 1
  %1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %1443, i32 0, i32 0
  %1445 = load %union.rec*, %union.rec** %1444, align 8
  store %union.rec* %1445, %union.rec** %y, align 8
  br label %1446

; <label>:1446                                    ; preds = %1456, %1429
  %1447 = load %union.rec*, %union.rec** %y, align 8
  %1448 = bitcast %union.rec* %1447 to %struct.word_type*
  %1449 = getelementptr inbounds %struct.word_type, %struct.word_type* %1448, i32 0, i32 1
  %1450 = bitcast %union.FIRST_UNION* %1449 to %struct.anon*
  %1451 = getelementptr inbounds %struct.anon, %struct.anon* %1450, i32 0, i32 0
  %1452 = load i8, i8* %1451, align 1
  %1453 = zext i8 %1452 to i32
  %1454 = icmp eq i32 %1453, 0
  br i1 %1454, label %1455, label %1463

; <label>:1455                                    ; preds = %1446
  br label %1456

; <label>:1456                                    ; preds = %1455
  %1457 = load %union.rec*, %union.rec** %y, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 0
  %1460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1459, i32 0, i64 1
  %1461 = getelementptr inbounds %struct.LIST, %struct.LIST* %1460, i32 0, i32 0
  %1462 = load %union.rec*, %union.rec** %1461, align 8
  store %union.rec* %1462, %union.rec** %y, align 8
  br label %1446

; <label>:1463                                    ; preds = %1446
  %1464 = load %union.rec*, %union.rec** %y, align 8
  %1465 = load %union.rec*, %union.rec** %2, align 8
  %1466 = bitcast %union.rec* %1465 to %struct.closure_type*
  %1467 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1466, i32 0, i32 4
  %1468 = bitcast %union.FOURTH_UNION* %1467 to %struct.CONSTRAINT*
  %1469 = call %union.rec* @BreakObject(%union.rec* %1464, %struct.CONSTRAINT* %1468)
  store %union.rec* %1469, %union.rec** %y, align 8
  %1470 = load %union.rec*, %union.rec** %y, align 8
  %1471 = bitcast %union.rec* %1470 to %struct.word_type*
  %1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %1471, i32 0, i32 3
  %1473 = bitcast %union.THIRD_UNION* %1472 to %struct.anon.6*
  %1474 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1473, i32 0, i32 0
  %1475 = getelementptr inbounds [2 x i32], [2 x i32]* %1474, i32 0, i64 0
  %1476 = load i32, i32* %1475, align 4
  %1477 = load %union.rec*, %union.rec** %2, align 8
  %1478 = bitcast %union.rec* %1477 to %struct.word_type*
  %1479 = getelementptr inbounds %struct.word_type, %struct.word_type* %1478, i32 0, i32 3
  %1480 = bitcast %union.THIRD_UNION* %1479 to %struct.anon.6*
  %1481 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1480, i32 0, i32 0
  %1482 = getelementptr inbounds [2 x i32], [2 x i32]* %1481, i32 0, i64 0
  store i32 %1476, i32* %1482, align 4
  %1483 = load %union.rec*, %union.rec** %y, align 8
  %1484 = bitcast %union.rec* %1483 to %struct.word_type*
  %1485 = getelementptr inbounds %struct.word_type, %struct.word_type* %1484, i32 0, i32 3
  %1486 = bitcast %union.THIRD_UNION* %1485 to %struct.anon.6*
  %1487 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1486, i32 0, i32 1
  %1488 = getelementptr inbounds [2 x i32], [2 x i32]* %1487, i32 0, i64 0
  %1489 = load i32, i32* %1488, align 4
  %1490 = load %union.rec*, %union.rec** %2, align 8
  %1491 = bitcast %union.rec* %1490 to %struct.word_type*
  %1492 = getelementptr inbounds %struct.word_type, %struct.word_type* %1491, i32 0, i32 3
  %1493 = bitcast %union.THIRD_UNION* %1492 to %struct.anon.6*
  %1494 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1493, i32 0, i32 1
  %1495 = getelementptr inbounds [2 x i32], [2 x i32]* %1494, i32 0, i64 0
  store i32 %1489, i32* %1495, align 4
  %1496 = load %union.rec*, %union.rec** %2, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.word_type*
  %1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %1497, i32 0, i32 3
  %1499 = bitcast %union.THIRD_UNION* %1498 to %struct.anon.6*
  %1500 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1499, i32 0, i32 0
  %1501 = getelementptr inbounds [2 x i32], [2 x i32]* %1500, i32 0, i64 0
  %1502 = load %union.rec*, %union.rec** %2, align 8
  %1503 = bitcast %union.rec* %1502 to %struct.word_type*
  %1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %1503, i32 0, i32 3
  %1505 = bitcast %union.THIRD_UNION* %1504 to %struct.anon.6*
  %1506 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1505, i32 0, i32 1
  %1507 = getelementptr inbounds [2 x i32], [2 x i32]* %1506, i32 0, i64 0
  %1508 = load %union.rec*, %union.rec** %2, align 8
  %1509 = bitcast %union.rec* %1508 to %struct.closure_type*
  %1510 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1509, i32 0, i32 4
  %1511 = bitcast %union.FOURTH_UNION* %1510 to %struct.CONSTRAINT*
  call void @EnlargeToConstraint(i32* %1501, i32* %1507, %struct.CONSTRAINT* %1511)
  br label %2579

; <label>:1512                                    ; preds = %212, %212
  %1513 = load %struct.back_end_rec*, %struct.back_end_rec** @BackEnd, align 8
  %1514 = getelementptr inbounds %struct.back_end_rec, %struct.back_end_rec* %1513, i32 0, i32 2
  %1515 = load i32, i32* %1514, align 4
  %1516 = icmp ne i32 %1515, 0
  br i1 %1516, label %1517, label %1575

; <label>:1517                                    ; preds = %1512
  %1518 = load %union.rec*, %union.rec** %2, align 8
  %1519 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1520 = call i32 @InsertScale(%union.rec* %1518, %struct.CONSTRAINT* %1519)
  %1521 = icmp ne i32 %1520, 0
  br i1 %1521, label %1522, label %1575

; <label>:1522                                    ; preds = %1517
  %1523 = load %union.rec*, %union.rec** %2, align 8
  %1524 = bitcast %union.rec* %1523 to %struct.word_type*
  %1525 = getelementptr inbounds %struct.word_type, %struct.word_type* %1524, i32 0, i32 0
  %1526 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1525, i32 0, i64 1
  %1527 = getelementptr inbounds %struct.LIST, %struct.LIST* %1526, i32 0, i32 1
  %1528 = load %union.rec*, %union.rec** %1527, align 8
  %1529 = bitcast %union.rec* %1528 to %struct.word_type*
  %1530 = getelementptr inbounds %struct.word_type, %struct.word_type* %1529, i32 0, i32 0
  %1531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1530, i32 0, i64 0
  %1532 = getelementptr inbounds %struct.LIST, %struct.LIST* %1531, i32 0, i32 0
  %1533 = load %union.rec*, %union.rec** %1532, align 8
  store %union.rec* %1533, %union.rec** %2, align 8
  br label %1534

; <label>:1534                                    ; preds = %1544, %1522
  %1535 = load %union.rec*, %union.rec** %2, align 8
  %1536 = bitcast %union.rec* %1535 to %struct.word_type*
  %1537 = getelementptr inbounds %struct.word_type, %struct.word_type* %1536, i32 0, i32 1
  %1538 = bitcast %union.FIRST_UNION* %1537 to %struct.anon*
  %1539 = getelementptr inbounds %struct.anon, %struct.anon* %1538, i32 0, i32 0
  %1540 = load i8, i8* %1539, align 1
  %1541 = zext i8 %1540 to i32
  %1542 = icmp eq i32 %1541, 0
  br i1 %1542, label %1543, label %1551

; <label>:1543                                    ; preds = %1534
  br label %1544

; <label>:1544                                    ; preds = %1543
  %1545 = load %union.rec*, %union.rec** %2, align 8
  %1546 = bitcast %union.rec* %1545 to %struct.word_type*
  %1547 = getelementptr inbounds %struct.word_type, %struct.word_type* %1546, i32 0, i32 0
  %1548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1547, i32 0, i64 0
  %1549 = getelementptr inbounds %struct.LIST, %struct.LIST* %1548, i32 0, i32 0
  %1550 = load %union.rec*, %union.rec** %1549, align 8
  store %union.rec* %1550, %union.rec** %2, align 8
  br label %1534

; <label>:1551                                    ; preds = %1534
  %1552 = load %union.rec*, %union.rec** %2, align 8
  %1553 = bitcast %union.rec* %1552 to %struct.word_type*
  %1554 = getelementptr inbounds %struct.word_type, %struct.word_type* %1553, i32 0, i32 1
  %1555 = bitcast %union.FIRST_UNION* %1554 to %struct.FILE_POS*
  %1556 = load %union.rec*, %union.rec** %2, align 8
  %1557 = bitcast %union.rec* %1556 to %struct.word_type*
  %1558 = getelementptr inbounds %struct.word_type, %struct.word_type* %1557, i32 0, i32 1
  %1559 = bitcast %union.FIRST_UNION* %1558 to %struct.anon*
  %1560 = getelementptr inbounds %struct.anon, %struct.anon* %1559, i32 0, i32 0
  %1561 = load i8, i8* %1560, align 1
  %1562 = zext i8 %1561 to i32
  %1563 = icmp eq i32 %1562, 94
  %1564 = select i1 %1563, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)
  %1565 = load %union.rec*, %union.rec** %2, align 8
  %1566 = bitcast %union.rec* %1565 to %struct.closure_type*
  %1567 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1566, i32 0, i32 4
  %1568 = bitcast %union.FOURTH_UNION* %1567 to %struct.CONSTRAINT*
  %1569 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1568, i32 0, i32 0
  %1570 = load i32, i32* %1569, align 4
  %1571 = sitofp i32 %1570 to float
  %1572 = fdiv float %1571, 1.280000e+02
  %1573 = fpext float %1572 to double
  %1574 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 7, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i32 0, i32 0), i32 2, %struct.FILE_POS* %1555, i8* %1564, double %1573)
  br label %1719

; <label>:1575                                    ; preds = %1517, %1512
  %1576 = load %union.rec*, %union.rec** %2, align 8
  %1577 = bitcast %union.rec* %1576 to %struct.word_type*
  %1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %1577, i32 0, i32 1
  %1579 = bitcast %union.FIRST_UNION* %1578 to %struct.FILE_POS*
  %1580 = load %union.rec*, %union.rec** %2, align 8
  %1581 = bitcast %union.rec* %1580 to %struct.word_type*
  %1582 = getelementptr inbounds %struct.word_type, %struct.word_type* %1581, i32 0, i32 1
  %1583 = bitcast %union.FIRST_UNION* %1582 to %struct.anon*
  %1584 = getelementptr inbounds %struct.anon, %struct.anon* %1583, i32 0, i32 0
  %1585 = load i8, i8* %1584, align 1
  %1586 = zext i8 %1585 to i32
  %1587 = icmp eq i32 %1586, 94
  %1588 = select i1 %1587, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i32 0, i32 0)
  %1589 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 8, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.11, i32 0, i32 0), i32 2, %struct.FILE_POS* %1579, i8* %1588)
  %1590 = load %union.rec*, %union.rec** %2, align 8
  %1591 = bitcast %union.rec* %1590 to %struct.word_type*
  %1592 = getelementptr inbounds %struct.word_type, %struct.word_type* %1591, i32 0, i32 1
  %1593 = bitcast %union.FIRST_UNION* %1592 to %struct.FILE_POS*
  %1594 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i32 0, i32 0), %struct.FILE_POS* %1593)
  store %union.rec* %1594, %union.rec** %y, align 8
  %1595 = load %union.rec*, %union.rec** %y, align 8
  %1596 = bitcast %union.rec* %1595 to %struct.word_type*
  %1597 = getelementptr inbounds %struct.word_type, %struct.word_type* %1596, i32 0, i32 3
  %1598 = bitcast %union.THIRD_UNION* %1597 to %struct.anon.6*
  %1599 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1598, i32 0, i32 1
  %1600 = getelementptr inbounds [2 x i32], [2 x i32]* %1599, i32 0, i64 0
  store i32 0, i32* %1600, align 4
  %1601 = load %union.rec*, %union.rec** %y, align 8
  %1602 = bitcast %union.rec* %1601 to %struct.word_type*
  %1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %1602, i32 0, i32 3
  %1604 = bitcast %union.THIRD_UNION* %1603 to %struct.anon.6*
  %1605 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1604, i32 0, i32 0
  %1606 = getelementptr inbounds [2 x i32], [2 x i32]* %1605, i32 0, i64 0
  store i32 0, i32* %1606, align 4
  %1607 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %1607, %union.rec** @zz_hold, align 8
  %1608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1609 = bitcast %union.rec* %1608 to %struct.word_type*
  %1610 = getelementptr inbounds %struct.word_type, %struct.word_type* %1609, i32 0, i32 0
  %1611 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1610, i32 0, i64 1
  %1612 = getelementptr inbounds %struct.LIST, %struct.LIST* %1611, i32 0, i32 1
  %1613 = load %union.rec*, %union.rec** %1612, align 8
  %1614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1615 = icmp eq %union.rec* %1613, %1614
  br i1 %1615, label %1616, label %1617

; <label>:1616                                    ; preds = %1575
  br label %1658

; <label>:1617                                    ; preds = %1575
  %1618 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1619 = bitcast %union.rec* %1618 to %struct.word_type*
  %1620 = getelementptr inbounds %struct.word_type, %struct.word_type* %1619, i32 0, i32 0
  %1621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1620, i32 0, i64 1
  %1622 = getelementptr inbounds %struct.LIST, %struct.LIST* %1621, i32 0, i32 1
  %1623 = load %union.rec*, %union.rec** %1622, align 8
  store %union.rec* %1623, %union.rec** @zz_res, align 8
  %1624 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1625 = bitcast %union.rec* %1624 to %struct.word_type*
  %1626 = getelementptr inbounds %struct.word_type, %struct.word_type* %1625, i32 0, i32 0
  %1627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1626, i32 0, i64 1
  %1628 = getelementptr inbounds %struct.LIST, %struct.LIST* %1627, i32 0, i32 0
  %1629 = load %union.rec*, %union.rec** %1628, align 8
  %1630 = load %union.rec*, %union.rec** @zz_res, align 8
  %1631 = bitcast %union.rec* %1630 to %struct.word_type*
  %1632 = getelementptr inbounds %struct.word_type, %struct.word_type* %1631, i32 0, i32 0
  %1633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1632, i32 0, i64 1
  %1634 = getelementptr inbounds %struct.LIST, %struct.LIST* %1633, i32 0, i32 0
  store %union.rec* %1629, %union.rec** %1634, align 8
  %1635 = load %union.rec*, %union.rec** @zz_res, align 8
  %1636 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1637 = bitcast %union.rec* %1636 to %struct.word_type*
  %1638 = getelementptr inbounds %struct.word_type, %struct.word_type* %1637, i32 0, i32 0
  %1639 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1638, i32 0, i64 1
  %1640 = getelementptr inbounds %struct.LIST, %struct.LIST* %1639, i32 0, i32 0
  %1641 = load %union.rec*, %union.rec** %1640, align 8
  %1642 = bitcast %union.rec* %1641 to %struct.word_type*
  %1643 = getelementptr inbounds %struct.word_type, %struct.word_type* %1642, i32 0, i32 0
  %1644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1643, i32 0, i64 1
  %1645 = getelementptr inbounds %struct.LIST, %struct.LIST* %1644, i32 0, i32 1
  store %union.rec* %1635, %union.rec** %1645, align 8
  %1646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1648 = bitcast %union.rec* %1647 to %struct.word_type*
  %1649 = getelementptr inbounds %struct.word_type, %struct.word_type* %1648, i32 0, i32 0
  %1650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1649, i32 0, i64 1
  %1651 = getelementptr inbounds %struct.LIST, %struct.LIST* %1650, i32 0, i32 1
  store %union.rec* %1646, %union.rec** %1651, align 8
  %1652 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1653 = bitcast %union.rec* %1652 to %struct.word_type*
  %1654 = getelementptr inbounds %struct.word_type, %struct.word_type* %1653, i32 0, i32 0
  %1655 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1654, i32 0, i64 1
  %1656 = getelementptr inbounds %struct.LIST, %struct.LIST* %1655, i32 0, i32 0
  store %union.rec* %1646, %union.rec** %1656, align 8
  %1657 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1658

; <label>:1658                                    ; preds = %1617, %1616
  %1659 = phi %union.rec* [ null, %1616 ], [ %1657, %1617 ]
  store %union.rec* %1659, %union.rec** @xx_tmp, align 8
  %1660 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1660, %union.rec** @zz_res, align 8
  %1661 = load %union.rec*, %union.rec** @xx_tmp, align 8
  store %union.rec* %1661, %union.rec** @zz_hold, align 8
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1663 = icmp eq %union.rec* %1662, null
  br i1 %1663, label %1664, label %1666

; <label>:1664                                    ; preds = %1658
  %1665 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1714

; <label>:1666                                    ; preds = %1658
  %1667 = load %union.rec*, %union.rec** @zz_res, align 8
  %1668 = icmp eq %union.rec* %1667, null
  br i1 %1668, label %1669, label %1671

; <label>:1669                                    ; preds = %1666
  %1670 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1712

; <label>:1671                                    ; preds = %1666
  %1672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1673 = bitcast %union.rec* %1672 to %struct.word_type*
  %1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %1673, i32 0, i32 0
  %1675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1674, i32 0, i64 1
  %1676 = getelementptr inbounds %struct.LIST, %struct.LIST* %1675, i32 0, i32 0
  %1677 = load %union.rec*, %union.rec** %1676, align 8
  store %union.rec* %1677, %union.rec** @zz_tmp, align 8
  %1678 = load %union.rec*, %union.rec** @zz_res, align 8
  %1679 = bitcast %union.rec* %1678 to %struct.word_type*
  %1680 = getelementptr inbounds %struct.word_type, %struct.word_type* %1679, i32 0, i32 0
  %1681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1680, i32 0, i64 1
  %1682 = getelementptr inbounds %struct.LIST, %struct.LIST* %1681, i32 0, i32 0
  %1683 = load %union.rec*, %union.rec** %1682, align 8
  %1684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1685 = bitcast %union.rec* %1684 to %struct.word_type*
  %1686 = getelementptr inbounds %struct.word_type, %struct.word_type* %1685, i32 0, i32 0
  %1687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1686, i32 0, i64 1
  %1688 = getelementptr inbounds %struct.LIST, %struct.LIST* %1687, i32 0, i32 0
  store %union.rec* %1683, %union.rec** %1688, align 8
  %1689 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1690 = load %union.rec*, %union.rec** @zz_res, align 8
  %1691 = bitcast %union.rec* %1690 to %struct.word_type*
  %1692 = getelementptr inbounds %struct.word_type, %struct.word_type* %1691, i32 0, i32 0
  %1693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1692, i32 0, i64 1
  %1694 = getelementptr inbounds %struct.LIST, %struct.LIST* %1693, i32 0, i32 0
  %1695 = load %union.rec*, %union.rec** %1694, align 8
  %1696 = bitcast %union.rec* %1695 to %struct.word_type*
  %1697 = getelementptr inbounds %struct.word_type, %struct.word_type* %1696, i32 0, i32 0
  %1698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1697, i32 0, i64 1
  %1699 = getelementptr inbounds %struct.LIST, %struct.LIST* %1698, i32 0, i32 1
  store %union.rec* %1689, %union.rec** %1699, align 8
  %1700 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1701 = load %union.rec*, %union.rec** @zz_res, align 8
  %1702 = bitcast %union.rec* %1701 to %struct.word_type*
  %1703 = getelementptr inbounds %struct.word_type, %struct.word_type* %1702, i32 0, i32 0
  %1704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1703, i32 0, i64 1
  %1705 = getelementptr inbounds %struct.LIST, %struct.LIST* %1704, i32 0, i32 0
  store %union.rec* %1700, %union.rec** %1705, align 8
  %1706 = load %union.rec*, %union.rec** @zz_res, align 8
  %1707 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1708 = bitcast %union.rec* %1707 to %struct.word_type*
  %1709 = getelementptr inbounds %struct.word_type, %struct.word_type* %1708, i32 0, i32 0
  %1710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1709, i32 0, i64 1
  %1711 = getelementptr inbounds %struct.LIST, %struct.LIST* %1710, i32 0, i32 1
  store %union.rec* %1706, %union.rec** %1711, align 8
  br label %1712

; <label>:1712                                    ; preds = %1671, %1669
  %1713 = phi %union.rec* [ %1670, %1669 ], [ %1706, %1671 ]
  br label %1714

; <label>:1714                                    ; preds = %1712, %1664
  %1715 = phi %union.rec* [ %1665, %1664 ], [ %1713, %1712 ]
  %1716 = load %union.rec*, %union.rec** %2, align 8
  %1717 = call i32 @DisposeObject(%union.rec* %1716)
  %1718 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1718, %union.rec** %2, align 8
  br label %1719

; <label>:1719                                    ; preds = %1714, %1551
  br label %2579

; <label>:1720                                    ; preds = %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212, %212
  %1721 = load %union.rec*, %union.rec** %2, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.word_type*
  %1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %1722, i32 0, i32 0
  %1724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1723, i32 0, i64 0
  %1725 = getelementptr inbounds %struct.LIST, %struct.LIST* %1724, i32 0, i32 1
  %1726 = load %union.rec*, %union.rec** %1725, align 8
  %1727 = load %union.rec*, %union.rec** %2, align 8
  %1728 = bitcast %union.rec* %1727 to %struct.word_type*
  %1729 = getelementptr inbounds %struct.word_type, %struct.word_type* %1728, i32 0, i32 0
  %1730 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1729, i32 0, i64 0
  %1731 = getelementptr inbounds %struct.LIST, %struct.LIST* %1730, i32 0, i32 0
  %1732 = load %union.rec*, %union.rec** %1731, align 8
  %1733 = icmp eq %union.rec* %1726, %1732
  br i1 %1733, label %1737, label %1734

; <label>:1734                                    ; preds = %1720
  %1735 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1736 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %1735, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.13, i32 0, i32 0))
  br label %1737

; <label>:1737                                    ; preds = %1734, %1720
  %1738 = load %union.rec*, %union.rec** %2, align 8
  %1739 = bitcast %union.rec* %1738 to %struct.word_type*
  %1740 = getelementptr inbounds %struct.word_type, %struct.word_type* %1739, i32 0, i32 0
  %1741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1740, i32 0, i64 0
  %1742 = getelementptr inbounds %struct.LIST, %struct.LIST* %1741, i32 0, i32 1
  %1743 = load %union.rec*, %union.rec** %1742, align 8
  %1744 = bitcast %union.rec* %1743 to %struct.word_type*
  %1745 = getelementptr inbounds %struct.word_type, %struct.word_type* %1744, i32 0, i32 0
  %1746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1745, i32 0, i64 1
  %1747 = getelementptr inbounds %struct.LIST, %struct.LIST* %1746, i32 0, i32 0
  %1748 = load %union.rec*, %union.rec** %1747, align 8
  store %union.rec* %1748, %union.rec** %y, align 8
  br label %1749

; <label>:1749                                    ; preds = %1759, %1737
  %1750 = load %union.rec*, %union.rec** %y, align 8
  %1751 = bitcast %union.rec* %1750 to %struct.word_type*
  %1752 = getelementptr inbounds %struct.word_type, %struct.word_type* %1751, i32 0, i32 1
  %1753 = bitcast %union.FIRST_UNION* %1752 to %struct.anon*
  %1754 = getelementptr inbounds %struct.anon, %struct.anon* %1753, i32 0, i32 0
  %1755 = load i8, i8* %1754, align 1
  %1756 = zext i8 %1755 to i32
  %1757 = icmp eq i32 %1756, 0
  br i1 %1757, label %1758, label %1766

; <label>:1758                                    ; preds = %1749
  br label %1759

; <label>:1759                                    ; preds = %1758
  %1760 = load %union.rec*, %union.rec** %y, align 8
  %1761 = bitcast %union.rec* %1760 to %struct.word_type*
  %1762 = getelementptr inbounds %struct.word_type, %struct.word_type* %1761, i32 0, i32 0
  %1763 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1762, i32 0, i64 1
  %1764 = getelementptr inbounds %struct.LIST, %struct.LIST* %1763, i32 0, i32 0
  %1765 = load %union.rec*, %union.rec** %1764, align 8
  store %union.rec* %1765, %union.rec** %y, align 8
  br label %1749

; <label>:1766                                    ; preds = %1749
  %1767 = load %union.rec*, %union.rec** %y, align 8
  %1768 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1769 = call %union.rec* @BreakObject(%union.rec* %1767, %struct.CONSTRAINT* %1768)
  store %union.rec* %1769, %union.rec** %y, align 8
  %1770 = load %union.rec*, %union.rec** %y, align 8
  %1771 = bitcast %union.rec* %1770 to %struct.word_type*
  %1772 = getelementptr inbounds %struct.word_type, %struct.word_type* %1771, i32 0, i32 3
  %1773 = bitcast %union.THIRD_UNION* %1772 to %struct.anon.6*
  %1774 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1773, i32 0, i32 0
  %1775 = getelementptr inbounds [2 x i32], [2 x i32]* %1774, i32 0, i64 0
  %1776 = load i32, i32* %1775, align 4
  %1777 = load %union.rec*, %union.rec** %2, align 8
  %1778 = bitcast %union.rec* %1777 to %struct.word_type*
  %1779 = getelementptr inbounds %struct.word_type, %struct.word_type* %1778, i32 0, i32 3
  %1780 = bitcast %union.THIRD_UNION* %1779 to %struct.anon.6*
  %1781 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1780, i32 0, i32 0
  %1782 = getelementptr inbounds [2 x i32], [2 x i32]* %1781, i32 0, i64 0
  store i32 %1776, i32* %1782, align 4
  %1783 = load %union.rec*, %union.rec** %y, align 8
  %1784 = bitcast %union.rec* %1783 to %struct.word_type*
  %1785 = getelementptr inbounds %struct.word_type, %struct.word_type* %1784, i32 0, i32 3
  %1786 = bitcast %union.THIRD_UNION* %1785 to %struct.anon.6*
  %1787 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1786, i32 0, i32 1
  %1788 = getelementptr inbounds [2 x i32], [2 x i32]* %1787, i32 0, i64 0
  %1789 = load i32, i32* %1788, align 4
  %1790 = load %union.rec*, %union.rec** %2, align 8
  %1791 = bitcast %union.rec* %1790 to %struct.word_type*
  %1792 = getelementptr inbounds %struct.word_type, %struct.word_type* %1791, i32 0, i32 3
  %1793 = bitcast %union.THIRD_UNION* %1792 to %struct.anon.6*
  %1794 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1793, i32 0, i32 1
  %1795 = getelementptr inbounds [2 x i32], [2 x i32]* %1794, i32 0, i64 0
  store i32 %1789, i32* %1795, align 4
  br label %2579

; <label>:1796                                    ; preds = %212
  %1797 = load %union.rec*, %union.rec** %2, align 8
  %1798 = bitcast %union.rec* %1797 to %struct.word_type*
  %1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %1798, i32 0, i32 0
  %1800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1799, i32 0, i64 0
  %1801 = getelementptr inbounds %struct.LIST, %struct.LIST* %1800, i32 0, i32 1
  %1802 = load %union.rec*, %union.rec** %1801, align 8
  %1803 = bitcast %union.rec* %1802 to %struct.word_type*
  %1804 = getelementptr inbounds %struct.word_type, %struct.word_type* %1803, i32 0, i32 0
  %1805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1804, i32 0, i64 1
  %1806 = getelementptr inbounds %struct.LIST, %struct.LIST* %1805, i32 0, i32 0
  %1807 = load %union.rec*, %union.rec** %1806, align 8
  store %union.rec* %1807, %union.rec** %y, align 8
  br label %1808

; <label>:1808                                    ; preds = %1818, %1796
  %1809 = load %union.rec*, %union.rec** %y, align 8
  %1810 = bitcast %union.rec* %1809 to %struct.word_type*
  %1811 = getelementptr inbounds %struct.word_type, %struct.word_type* %1810, i32 0, i32 1
  %1812 = bitcast %union.FIRST_UNION* %1811 to %struct.anon*
  %1813 = getelementptr inbounds %struct.anon, %struct.anon* %1812, i32 0, i32 0
  %1814 = load i8, i8* %1813, align 1
  %1815 = zext i8 %1814 to i32
  %1816 = icmp eq i32 %1815, 0
  br i1 %1816, label %1817, label %1825

; <label>:1817                                    ; preds = %1808
  br label %1818

; <label>:1818                                    ; preds = %1817
  %1819 = load %union.rec*, %union.rec** %y, align 8
  %1820 = bitcast %union.rec* %1819 to %struct.word_type*
  %1821 = getelementptr inbounds %struct.word_type, %struct.word_type* %1820, i32 0, i32 0
  %1822 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1821, i32 0, i64 1
  %1823 = getelementptr inbounds %struct.LIST, %struct.LIST* %1822, i32 0, i32 0
  %1824 = load %union.rec*, %union.rec** %1823, align 8
  store %union.rec* %1824, %union.rec** %y, align 8
  br label %1808

; <label>:1825                                    ; preds = %1808
  %1826 = load %union.rec*, %union.rec** %y, align 8
  %1827 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1828 = call %union.rec* @BreakObject(%union.rec* %1826, %struct.CONSTRAINT* %1827)
  store %union.rec* %1828, %union.rec** %y, align 8
  %1829 = load %union.rec*, %union.rec** %2, align 8
  %1830 = bitcast %union.rec* %1829 to %struct.word_type*
  %1831 = getelementptr inbounds %struct.word_type, %struct.word_type* %1830, i32 0, i32 0
  %1832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1831, i32 0, i64 0
  %1833 = getelementptr inbounds %struct.LIST, %struct.LIST* %1832, i32 0, i32 0
  %1834 = load %union.rec*, %union.rec** %1833, align 8
  %1835 = bitcast %union.rec* %1834 to %struct.word_type*
  %1836 = getelementptr inbounds %struct.word_type, %struct.word_type* %1835, i32 0, i32 0
  %1837 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1836, i32 0, i64 1
  %1838 = getelementptr inbounds %struct.LIST, %struct.LIST* %1837, i32 0, i32 0
  %1839 = load %union.rec*, %union.rec** %1838, align 8
  store %union.rec* %1839, %union.rec** %y, align 8
  br label %1840

; <label>:1840                                    ; preds = %1850, %1825
  %1841 = load %union.rec*, %union.rec** %y, align 8
  %1842 = bitcast %union.rec* %1841 to %struct.word_type*
  %1843 = getelementptr inbounds %struct.word_type, %struct.word_type* %1842, i32 0, i32 1
  %1844 = bitcast %union.FIRST_UNION* %1843 to %struct.anon*
  %1845 = getelementptr inbounds %struct.anon, %struct.anon* %1844, i32 0, i32 0
  %1846 = load i8, i8* %1845, align 1
  %1847 = zext i8 %1846 to i32
  %1848 = icmp eq i32 %1847, 0
  br i1 %1848, label %1849, label %1857

; <label>:1849                                    ; preds = %1840
  br label %1850

; <label>:1850                                    ; preds = %1849
  %1851 = load %union.rec*, %union.rec** %y, align 8
  %1852 = bitcast %union.rec* %1851 to %struct.word_type*
  %1853 = getelementptr inbounds %struct.word_type, %struct.word_type* %1852, i32 0, i32 0
  %1854 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1853, i32 0, i64 1
  %1855 = getelementptr inbounds %struct.LIST, %struct.LIST* %1854, i32 0, i32 0
  %1856 = load %union.rec*, %union.rec** %1855, align 8
  store %union.rec* %1856, %union.rec** %y, align 8
  br label %1840

; <label>:1857                                    ; preds = %1840
  %1858 = load %union.rec*, %union.rec** %y, align 8
  %1859 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1860 = call %union.rec* @BreakObject(%union.rec* %1858, %struct.CONSTRAINT* %1859)
  store %union.rec* %1860, %union.rec** %y, align 8
  %1861 = load %union.rec*, %union.rec** %y, align 8
  %1862 = bitcast %union.rec* %1861 to %struct.word_type*
  %1863 = getelementptr inbounds %struct.word_type, %struct.word_type* %1862, i32 0, i32 3
  %1864 = bitcast %union.THIRD_UNION* %1863 to %struct.anon.6*
  %1865 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1864, i32 0, i32 0
  %1866 = getelementptr inbounds [2 x i32], [2 x i32]* %1865, i32 0, i64 0
  %1867 = load i32, i32* %1866, align 4
  %1868 = load %union.rec*, %union.rec** %2, align 8
  %1869 = bitcast %union.rec* %1868 to %struct.word_type*
  %1870 = getelementptr inbounds %struct.word_type, %struct.word_type* %1869, i32 0, i32 3
  %1871 = bitcast %union.THIRD_UNION* %1870 to %struct.anon.6*
  %1872 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1871, i32 0, i32 0
  %1873 = getelementptr inbounds [2 x i32], [2 x i32]* %1872, i32 0, i64 0
  store i32 %1867, i32* %1873, align 4
  %1874 = load %union.rec*, %union.rec** %y, align 8
  %1875 = bitcast %union.rec* %1874 to %struct.word_type*
  %1876 = getelementptr inbounds %struct.word_type, %struct.word_type* %1875, i32 0, i32 3
  %1877 = bitcast %union.THIRD_UNION* %1876 to %struct.anon.6*
  %1878 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1877, i32 0, i32 1
  %1879 = getelementptr inbounds [2 x i32], [2 x i32]* %1878, i32 0, i64 0
  %1880 = load i32, i32* %1879, align 4
  %1881 = load %union.rec*, %union.rec** %2, align 8
  %1882 = bitcast %union.rec* %1881 to %struct.word_type*
  %1883 = getelementptr inbounds %struct.word_type, %struct.word_type* %1882, i32 0, i32 3
  %1884 = bitcast %union.THIRD_UNION* %1883 to %struct.anon.6*
  %1885 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1884, i32 0, i32 1
  %1886 = getelementptr inbounds [2 x i32], [2 x i32]* %1885, i32 0, i64 0
  store i32 %1880, i32* %1886, align 4
  br label %2579

; <label>:1887                                    ; preds = %212, %212, %212, %212, %212
  %1888 = load %union.rec*, %union.rec** %2, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.word_type*
  %1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %1889, i32 0, i32 0
  %1891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1890, i32 0, i64 0
  %1892 = getelementptr inbounds %struct.LIST, %struct.LIST* %1891, i32 0, i32 1
  %1893 = load %union.rec*, %union.rec** %1892, align 8
  %1894 = bitcast %union.rec* %1893 to %struct.word_type*
  %1895 = getelementptr inbounds %struct.word_type, %struct.word_type* %1894, i32 0, i32 0
  %1896 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1895, i32 0, i64 1
  %1897 = getelementptr inbounds %struct.LIST, %struct.LIST* %1896, i32 0, i32 0
  %1898 = load %union.rec*, %union.rec** %1897, align 8
  store %union.rec* %1898, %union.rec** %y, align 8
  br label %1899

; <label>:1899                                    ; preds = %1909, %1887
  %1900 = load %union.rec*, %union.rec** %y, align 8
  %1901 = bitcast %union.rec* %1900 to %struct.word_type*
  %1902 = getelementptr inbounds %struct.word_type, %struct.word_type* %1901, i32 0, i32 1
  %1903 = bitcast %union.FIRST_UNION* %1902 to %struct.anon*
  %1904 = getelementptr inbounds %struct.anon, %struct.anon* %1903, i32 0, i32 0
  %1905 = load i8, i8* %1904, align 1
  %1906 = zext i8 %1905 to i32
  %1907 = icmp eq i32 %1906, 0
  br i1 %1907, label %1908, label %1916

; <label>:1908                                    ; preds = %1899
  br label %1909

; <label>:1909                                    ; preds = %1908
  %1910 = load %union.rec*, %union.rec** %y, align 8
  %1911 = bitcast %union.rec* %1910 to %struct.word_type*
  %1912 = getelementptr inbounds %struct.word_type, %struct.word_type* %1911, i32 0, i32 0
  %1913 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1912, i32 0, i64 1
  %1914 = getelementptr inbounds %struct.LIST, %struct.LIST* %1913, i32 0, i32 0
  %1915 = load %union.rec*, %union.rec** %1914, align 8
  store %union.rec* %1915, %union.rec** %y, align 8
  br label %1899

; <label>:1916                                    ; preds = %1899
  %1917 = load %union.rec*, %union.rec** %y, align 8
  %1918 = bitcast %union.rec* %1917 to %struct.word_type*
  %1919 = getelementptr inbounds %struct.word_type, %struct.word_type* %1918, i32 0, i32 1
  %1920 = bitcast %union.FIRST_UNION* %1919 to %struct.anon*
  %1921 = getelementptr inbounds %struct.anon, %struct.anon* %1920, i32 0, i32 0
  %1922 = load i8, i8* %1921, align 1
  %1923 = zext i8 %1922 to i32
  %1924 = icmp ne i32 %1923, 13
  br i1 %1924, label %1925, label %1955

; <label>:1925                                    ; preds = %1916
  %1926 = load %union.rec*, %union.rec** %y, align 8
  %1927 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1928 = call %union.rec* @BreakObject(%union.rec* %1926, %struct.CONSTRAINT* %1927)
  store %union.rec* %1928, %union.rec** %y, align 8
  %1929 = load %union.rec*, %union.rec** %y, align 8
  %1930 = bitcast %union.rec* %1929 to %struct.word_type*
  %1931 = getelementptr inbounds %struct.word_type, %struct.word_type* %1930, i32 0, i32 3
  %1932 = bitcast %union.THIRD_UNION* %1931 to %struct.anon.6*
  %1933 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1932, i32 0, i32 0
  %1934 = getelementptr inbounds [2 x i32], [2 x i32]* %1933, i32 0, i64 0
  %1935 = load i32, i32* %1934, align 4
  %1936 = load %union.rec*, %union.rec** %2, align 8
  %1937 = bitcast %union.rec* %1936 to %struct.word_type*
  %1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %1937, i32 0, i32 3
  %1939 = bitcast %union.THIRD_UNION* %1938 to %struct.anon.6*
  %1940 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1939, i32 0, i32 0
  %1941 = getelementptr inbounds [2 x i32], [2 x i32]* %1940, i32 0, i64 0
  store i32 %1935, i32* %1941, align 4
  %1942 = load %union.rec*, %union.rec** %y, align 8
  %1943 = bitcast %union.rec* %1942 to %struct.word_type*
  %1944 = getelementptr inbounds %struct.word_type, %struct.word_type* %1943, i32 0, i32 3
  %1945 = bitcast %union.THIRD_UNION* %1944 to %struct.anon.6*
  %1946 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1945, i32 0, i32 1
  %1947 = getelementptr inbounds [2 x i32], [2 x i32]* %1946, i32 0, i64 0
  %1948 = load i32, i32* %1947, align 4
  %1949 = load %union.rec*, %union.rec** %2, align 8
  %1950 = bitcast %union.rec* %1949 to %struct.word_type*
  %1951 = getelementptr inbounds %struct.word_type, %struct.word_type* %1950, i32 0, i32 3
  %1952 = bitcast %union.THIRD_UNION* %1951 to %struct.anon.6*
  %1953 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1952, i32 0, i32 1
  %1954 = getelementptr inbounds [2 x i32], [2 x i32]* %1953, i32 0, i64 0
  store i32 %1948, i32* %1954, align 4
  br label %1985

; <label>:1955                                    ; preds = %1916
  %1956 = load %union.rec*, %union.rec** %2, align 8
  %1957 = bitcast %union.rec* %1956 to %struct.word_type*
  %1958 = getelementptr inbounds %struct.word_type, %struct.word_type* %1957, i32 0, i32 3
  %1959 = bitcast %union.THIRD_UNION* %1958 to %struct.anon.6*
  %1960 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1959, i32 0, i32 0
  %1961 = getelementptr inbounds [2 x i32], [2 x i32]* %1960, i32 0, i64 0
  store i32 0, i32* %1961, align 4
  %1962 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1963 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1962, i32 0, i32 1
  %1964 = load i32, i32* %1963, align 4
  %1965 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1966 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1965, i32 0, i32 2
  %1967 = load i32, i32* %1966, align 4
  %1968 = icmp slt i32 %1964, %1967
  br i1 %1968, label %1969, label %1973

; <label>:1969                                    ; preds = %1955
  %1970 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1971 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1970, i32 0, i32 1
  %1972 = load i32, i32* %1971, align 4
  br label %1977

; <label>:1973                                    ; preds = %1955
  %1974 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %1975 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1974, i32 0, i32 2
  %1976 = load i32, i32* %1975, align 4
  br label %1977

; <label>:1977                                    ; preds = %1973, %1969
  %1978 = phi i32 [ %1972, %1969 ], [ %1976, %1973 ]
  %1979 = load %union.rec*, %union.rec** %2, align 8
  %1980 = bitcast %union.rec* %1979 to %struct.word_type*
  %1981 = getelementptr inbounds %struct.word_type, %struct.word_type* %1980, i32 0, i32 3
  %1982 = bitcast %union.THIRD_UNION* %1981 to %struct.anon.6*
  %1983 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1982, i32 0, i32 1
  %1984 = getelementptr inbounds [2 x i32], [2 x i32]* %1983, i32 0, i64 0
  store i32 %1978, i32* %1984, align 4
  br label %1985

; <label>:1985                                    ; preds = %1977, %1925
  br label %2579

; <label>:1986                                    ; preds = %212
  %1987 = load %union.rec*, %union.rec** %2, align 8
  %1988 = bitcast %union.rec* %1987 to %struct.word_type*
  %1989 = getelementptr inbounds %struct.word_type, %struct.word_type* %1988, i32 0, i32 0
  %1990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1989, i32 0, i64 0
  %1991 = getelementptr inbounds %struct.LIST, %struct.LIST* %1990, i32 0, i32 1
  %1992 = load %union.rec*, %union.rec** %1991, align 8
  %1993 = bitcast %union.rec* %1992 to %struct.word_type*
  %1994 = getelementptr inbounds %struct.word_type, %struct.word_type* %1993, i32 0, i32 0
  %1995 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1994, i32 0, i64 1
  %1996 = getelementptr inbounds %struct.LIST, %struct.LIST* %1995, i32 0, i32 0
  %1997 = load %union.rec*, %union.rec** %1996, align 8
  store %union.rec* %1997, %union.rec** %y, align 8
  br label %1998

; <label>:1998                                    ; preds = %2008, %1986
  %1999 = load %union.rec*, %union.rec** %y, align 8
  %2000 = bitcast %union.rec* %1999 to %struct.word_type*
  %2001 = getelementptr inbounds %struct.word_type, %struct.word_type* %2000, i32 0, i32 1
  %2002 = bitcast %union.FIRST_UNION* %2001 to %struct.anon*
  %2003 = getelementptr inbounds %struct.anon, %struct.anon* %2002, i32 0, i32 0
  %2004 = load i8, i8* %2003, align 1
  %2005 = zext i8 %2004 to i32
  %2006 = icmp eq i32 %2005, 0
  br i1 %2006, label %2007, label %2015

; <label>:2007                                    ; preds = %1998
  br label %2008

; <label>:2008                                    ; preds = %2007
  %2009 = load %union.rec*, %union.rec** %y, align 8
  %2010 = bitcast %union.rec* %2009 to %struct.word_type*
  %2011 = getelementptr inbounds %struct.word_type, %struct.word_type* %2010, i32 0, i32 0
  %2012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2011, i32 0, i64 1
  %2013 = getelementptr inbounds %struct.LIST, %struct.LIST* %2012, i32 0, i32 0
  %2014 = load %union.rec*, %union.rec** %2013, align 8
  store %union.rec* %2014, %union.rec** %y, align 8
  br label %1998

; <label>:2015                                    ; preds = %1998
  %2016 = load %union.rec*, %union.rec** %2, align 8
  %2017 = load %union.rec*, %union.rec** %y, align 8
  %2018 = call i32 @FindShift(%union.rec* %2016, %union.rec* %2017, i32 0)
  store i32 %2018, i32* %f, align 4
  %2019 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2020 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2019, i32 0, i32 0
  %2021 = load i32, i32* %2020, align 4
  %2022 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2023 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2022, i32 0, i32 1
  %2024 = load i32, i32* %2023, align 4
  %2025 = icmp slt i32 %2021, %2024
  br i1 %2025, label %2026, label %2030

; <label>:2026                                    ; preds = %2015
  %2027 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2028 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2027, i32 0, i32 0
  %2029 = load i32, i32* %2028, align 4
  br label %2034

; <label>:2030                                    ; preds = %2015
  %2031 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2032 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2031, i32 0, i32 1
  %2033 = load i32, i32* %2032, align 4
  br label %2034

; <label>:2034                                    ; preds = %2030, %2026
  %2035 = phi i32 [ %2029, %2026 ], [ %2033, %2030 ]
  %2036 = load i32, i32* %f, align 4
  %2037 = sub nsw i32 %2035, %2036
  %2038 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %2037, i32* %2038, align 4
  %2039 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2040 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2039, i32 0, i32 1
  %2041 = load i32, i32* %2040, align 4
  %2042 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %2041, i32* %2042, align 4
  %2043 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2044 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2043, i32 0, i32 2
  %2045 = load i32, i32* %2044, align 4
  %2046 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2047 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2046, i32 0, i32 1
  %2048 = load i32, i32* %2047, align 4
  %2049 = icmp slt i32 %2045, %2048
  br i1 %2049, label %2050, label %2054

; <label>:2050                                    ; preds = %2034
  %2051 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2052 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2051, i32 0, i32 2
  %2053 = load i32, i32* %2052, align 4
  br label %2058

; <label>:2054                                    ; preds = %2034
  %2055 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2056 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2055, i32 0, i32 1
  %2057 = load i32, i32* %2056, align 4
  br label %2058

; <label>:2058                                    ; preds = %2054, %2050
  %2059 = phi i32 [ %2053, %2050 ], [ %2057, %2054 ]
  %2060 = load i32, i32* %f, align 4
  %2061 = add nsw i32 %2059, %2060
  %2062 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %2061, i32* %2062, align 4
  %2063 = load %union.rec*, %union.rec** %y, align 8
  %2064 = call %union.rec* @BreakObject(%union.rec* %2063, %struct.CONSTRAINT* %yc)
  %2065 = load %union.rec*, %union.rec** %2, align 8
  %2066 = load %union.rec*, %union.rec** %y, align 8
  %2067 = call i32 @FindShift(%union.rec* %2065, %union.rec* %2066, i32 0)
  store i32 %2067, i32* %f, align 4
  %2068 = load %union.rec*, %union.rec** %y, align 8
  %2069 = bitcast %union.rec* %2068 to %struct.word_type*
  %2070 = getelementptr inbounds %struct.word_type, %struct.word_type* %2069, i32 0, i32 3
  %2071 = bitcast %union.THIRD_UNION* %2070 to %struct.anon.6*
  %2072 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2071, i32 0, i32 0
  %2073 = getelementptr inbounds [2 x i32], [2 x i32]* %2072, i32 0, i64 0
  %2074 = load i32, i32* %2073, align 4
  %2075 = load i32, i32* %f, align 4
  %2076 = add nsw i32 %2074, %2075
  %2077 = icmp slt i32 0, %2076
  br i1 %2077, label %2078, label %2088

; <label>:2078                                    ; preds = %2058
  %2079 = load %union.rec*, %union.rec** %y, align 8
  %2080 = bitcast %union.rec* %2079 to %struct.word_type*
  %2081 = getelementptr inbounds %struct.word_type, %struct.word_type* %2080, i32 0, i32 3
  %2082 = bitcast %union.THIRD_UNION* %2081 to %struct.anon.6*
  %2083 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2082, i32 0, i32 0
  %2084 = getelementptr inbounds [2 x i32], [2 x i32]* %2083, i32 0, i64 0
  %2085 = load i32, i32* %2084, align 4
  %2086 = load i32, i32* %f, align 4
  %2087 = add nsw i32 %2085, %2086
  br label %2089

; <label>:2088                                    ; preds = %2058
  br label %2089

; <label>:2089                                    ; preds = %2088, %2078
  %2090 = phi i32 [ %2087, %2078 ], [ 0, %2088 ]
  %2091 = icmp slt i32 8388607, %2090
  br i1 %2091, label %2092, label %2093

; <label>:2092                                    ; preds = %2089
  br label %2117

; <label>:2093                                    ; preds = %2089
  %2094 = load %union.rec*, %union.rec** %y, align 8
  %2095 = bitcast %union.rec* %2094 to %struct.word_type*
  %2096 = getelementptr inbounds %struct.word_type, %struct.word_type* %2095, i32 0, i32 3
  %2097 = bitcast %union.THIRD_UNION* %2096 to %struct.anon.6*
  %2098 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2097, i32 0, i32 0
  %2099 = getelementptr inbounds [2 x i32], [2 x i32]* %2098, i32 0, i64 0
  %2100 = load i32, i32* %2099, align 4
  %2101 = load i32, i32* %f, align 4
  %2102 = add nsw i32 %2100, %2101
  %2103 = icmp slt i32 0, %2102
  br i1 %2103, label %2104, label %2114

; <label>:2104                                    ; preds = %2093
  %2105 = load %union.rec*, %union.rec** %y, align 8
  %2106 = bitcast %union.rec* %2105 to %struct.word_type*
  %2107 = getelementptr inbounds %struct.word_type, %struct.word_type* %2106, i32 0, i32 3
  %2108 = bitcast %union.THIRD_UNION* %2107 to %struct.anon.6*
  %2109 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2108, i32 0, i32 0
  %2110 = getelementptr inbounds [2 x i32], [2 x i32]* %2109, i32 0, i64 0
  %2111 = load i32, i32* %2110, align 4
  %2112 = load i32, i32* %f, align 4
  %2113 = add nsw i32 %2111, %2112
  br label %2115

; <label>:2114                                    ; preds = %2093
  br label %2115

; <label>:2115                                    ; preds = %2114, %2104
  %2116 = phi i32 [ %2113, %2104 ], [ 0, %2114 ]
  br label %2117

; <label>:2117                                    ; preds = %2115, %2092
  %2118 = phi i32 [ 8388607, %2092 ], [ %2116, %2115 ]
  %2119 = load %union.rec*, %union.rec** %2, align 8
  %2120 = bitcast %union.rec* %2119 to %struct.word_type*
  %2121 = getelementptr inbounds %struct.word_type, %struct.word_type* %2120, i32 0, i32 3
  %2122 = bitcast %union.THIRD_UNION* %2121 to %struct.anon.6*
  %2123 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2122, i32 0, i32 0
  %2124 = getelementptr inbounds [2 x i32], [2 x i32]* %2123, i32 0, i64 0
  store i32 %2118, i32* %2124, align 4
  %2125 = load %union.rec*, %union.rec** %y, align 8
  %2126 = bitcast %union.rec* %2125 to %struct.word_type*
  %2127 = getelementptr inbounds %struct.word_type, %struct.word_type* %2126, i32 0, i32 3
  %2128 = bitcast %union.THIRD_UNION* %2127 to %struct.anon.6*
  %2129 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2128, i32 0, i32 1
  %2130 = getelementptr inbounds [2 x i32], [2 x i32]* %2129, i32 0, i64 0
  %2131 = load i32, i32* %2130, align 4
  %2132 = load i32, i32* %f, align 4
  %2133 = sub nsw i32 %2131, %2132
  %2134 = icmp slt i32 0, %2133
  br i1 %2134, label %2135, label %2145

; <label>:2135                                    ; preds = %2117
  %2136 = load %union.rec*, %union.rec** %y, align 8
  %2137 = bitcast %union.rec* %2136 to %struct.word_type*
  %2138 = getelementptr inbounds %struct.word_type, %struct.word_type* %2137, i32 0, i32 3
  %2139 = bitcast %union.THIRD_UNION* %2138 to %struct.anon.6*
  %2140 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2139, i32 0, i32 1
  %2141 = getelementptr inbounds [2 x i32], [2 x i32]* %2140, i32 0, i64 0
  %2142 = load i32, i32* %2141, align 4
  %2143 = load i32, i32* %f, align 4
  %2144 = sub nsw i32 %2142, %2143
  br label %2146

; <label>:2145                                    ; preds = %2117
  br label %2146

; <label>:2146                                    ; preds = %2145, %2135
  %2147 = phi i32 [ %2144, %2135 ], [ 0, %2145 ]
  %2148 = icmp slt i32 8388607, %2147
  br i1 %2148, label %2149, label %2150

; <label>:2149                                    ; preds = %2146
  br label %2174

; <label>:2150                                    ; preds = %2146
  %2151 = load %union.rec*, %union.rec** %y, align 8
  %2152 = bitcast %union.rec* %2151 to %struct.word_type*
  %2153 = getelementptr inbounds %struct.word_type, %struct.word_type* %2152, i32 0, i32 3
  %2154 = bitcast %union.THIRD_UNION* %2153 to %struct.anon.6*
  %2155 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2154, i32 0, i32 1
  %2156 = getelementptr inbounds [2 x i32], [2 x i32]* %2155, i32 0, i64 0
  %2157 = load i32, i32* %2156, align 4
  %2158 = load i32, i32* %f, align 4
  %2159 = sub nsw i32 %2157, %2158
  %2160 = icmp slt i32 0, %2159
  br i1 %2160, label %2161, label %2171

; <label>:2161                                    ; preds = %2150
  %2162 = load %union.rec*, %union.rec** %y, align 8
  %2163 = bitcast %union.rec* %2162 to %struct.word_type*
  %2164 = getelementptr inbounds %struct.word_type, %struct.word_type* %2163, i32 0, i32 3
  %2165 = bitcast %union.THIRD_UNION* %2164 to %struct.anon.6*
  %2166 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2165, i32 0, i32 1
  %2167 = getelementptr inbounds [2 x i32], [2 x i32]* %2166, i32 0, i64 0
  %2168 = load i32, i32* %2167, align 4
  %2169 = load i32, i32* %f, align 4
  %2170 = sub nsw i32 %2168, %2169
  br label %2172

; <label>:2171                                    ; preds = %2150
  br label %2172

; <label>:2172                                    ; preds = %2171, %2161
  %2173 = phi i32 [ %2170, %2161 ], [ 0, %2171 ]
  br label %2174

; <label>:2174                                    ; preds = %2172, %2149
  %2175 = phi i32 [ 8388607, %2149 ], [ %2173, %2172 ]
  %2176 = load %union.rec*, %union.rec** %2, align 8
  %2177 = bitcast %union.rec* %2176 to %struct.word_type*
  %2178 = getelementptr inbounds %struct.word_type, %struct.word_type* %2177, i32 0, i32 3
  %2179 = bitcast %union.THIRD_UNION* %2178 to %struct.anon.6*
  %2180 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2179, i32 0, i32 1
  %2181 = getelementptr inbounds [2 x i32], [2 x i32]* %2180, i32 0, i64 0
  store i32 %2175, i32* %2181, align 4
  br label %2579

; <label>:2182                                    ; preds = %212, %212
  br label %2579

; <label>:2183                                    ; preds = %212, %212
  %2184 = load %union.rec*, %union.rec** %2, align 8
  %2185 = bitcast %union.rec* %2184 to %struct.word_type*
  %2186 = getelementptr inbounds %struct.word_type, %struct.word_type* %2185, i32 0, i32 0
  %2187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2186, i32 0, i64 0
  %2188 = getelementptr inbounds %struct.LIST, %struct.LIST* %2187, i32 0, i32 0
  %2189 = load %union.rec*, %union.rec** %2188, align 8
  %2190 = bitcast %union.rec* %2189 to %struct.word_type*
  %2191 = getelementptr inbounds %struct.word_type, %struct.word_type* %2190, i32 0, i32 0
  %2192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2191, i32 0, i64 1
  %2193 = getelementptr inbounds %struct.LIST, %struct.LIST* %2192, i32 0, i32 0
  %2194 = load %union.rec*, %union.rec** %2193, align 8
  store %union.rec* %2194, %union.rec** %y, align 8
  br label %2195

; <label>:2195                                    ; preds = %2205, %2183
  %2196 = load %union.rec*, %union.rec** %y, align 8
  %2197 = bitcast %union.rec* %2196 to %struct.word_type*
  %2198 = getelementptr inbounds %struct.word_type, %struct.word_type* %2197, i32 0, i32 1
  %2199 = bitcast %union.FIRST_UNION* %2198 to %struct.anon*
  %2200 = getelementptr inbounds %struct.anon, %struct.anon* %2199, i32 0, i32 0
  %2201 = load i8, i8* %2200, align 1
  %2202 = zext i8 %2201 to i32
  %2203 = icmp eq i32 %2202, 0
  br i1 %2203, label %2204, label %2212

; <label>:2204                                    ; preds = %2195
  br label %2205

; <label>:2205                                    ; preds = %2204
  %2206 = load %union.rec*, %union.rec** %y, align 8
  %2207 = bitcast %union.rec* %2206 to %struct.word_type*
  %2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %2207, i32 0, i32 0
  %2209 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2208, i32 0, i64 1
  %2210 = getelementptr inbounds %struct.LIST, %struct.LIST* %2209, i32 0, i32 0
  %2211 = load %union.rec*, %union.rec** %2210, align 8
  store %union.rec* %2211, %union.rec** %y, align 8
  br label %2195

; <label>:2212                                    ; preds = %2195
  %2213 = load %union.rec*, %union.rec** %y, align 8
  %2214 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2215 = call %union.rec* @BreakObject(%union.rec* %2213, %struct.CONSTRAINT* %2214)
  store %union.rec* %2215, %union.rec** %y, align 8
  %2216 = load %union.rec*, %union.rec** %y, align 8
  %2217 = bitcast %union.rec* %2216 to %struct.word_type*
  %2218 = getelementptr inbounds %struct.word_type, %struct.word_type* %2217, i32 0, i32 3
  %2219 = bitcast %union.THIRD_UNION* %2218 to %struct.anon.6*
  %2220 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2219, i32 0, i32 0
  %2221 = getelementptr inbounds [2 x i32], [2 x i32]* %2220, i32 0, i64 0
  %2222 = load i32, i32* %2221, align 4
  %2223 = load %union.rec*, %union.rec** %2, align 8
  %2224 = bitcast %union.rec* %2223 to %struct.word_type*
  %2225 = getelementptr inbounds %struct.word_type, %struct.word_type* %2224, i32 0, i32 3
  %2226 = bitcast %union.THIRD_UNION* %2225 to %struct.anon.6*
  %2227 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2226, i32 0, i32 0
  %2228 = getelementptr inbounds [2 x i32], [2 x i32]* %2227, i32 0, i64 0
  store i32 %2222, i32* %2228, align 4
  %2229 = load %union.rec*, %union.rec** %y, align 8
  %2230 = bitcast %union.rec* %2229 to %struct.word_type*
  %2231 = getelementptr inbounds %struct.word_type, %struct.word_type* %2230, i32 0, i32 3
  %2232 = bitcast %union.THIRD_UNION* %2231 to %struct.anon.6*
  %2233 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2232, i32 0, i32 1
  %2234 = getelementptr inbounds [2 x i32], [2 x i32]* %2233, i32 0, i64 0
  %2235 = load i32, i32* %2234, align 4
  %2236 = load %union.rec*, %union.rec** %2, align 8
  %2237 = bitcast %union.rec* %2236 to %struct.word_type*
  %2238 = getelementptr inbounds %struct.word_type, %struct.word_type* %2237, i32 0, i32 3
  %2239 = bitcast %union.THIRD_UNION* %2238 to %struct.anon.6*
  %2240 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2239, i32 0, i32 1
  %2241 = getelementptr inbounds [2 x i32], [2 x i32]* %2240, i32 0, i64 0
  store i32 %2235, i32* %2241, align 4
  br label %2579

; <label>:2242                                    ; preds = %212, %212, %212, %212
  %2243 = load %union.rec*, %union.rec** %2, align 8
  %2244 = bitcast %union.rec* %2243 to %struct.word_type*
  %2245 = getelementptr inbounds %struct.word_type, %struct.word_type* %2244, i32 0, i32 0
  %2246 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2245, i32 0, i64 0
  %2247 = getelementptr inbounds %struct.LIST, %struct.LIST* %2246, i32 0, i32 0
  %2248 = load %union.rec*, %union.rec** %2247, align 8
  %2249 = bitcast %union.rec* %2248 to %struct.word_type*
  %2250 = getelementptr inbounds %struct.word_type, %struct.word_type* %2249, i32 0, i32 0
  %2251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2250, i32 0, i64 1
  %2252 = getelementptr inbounds %struct.LIST, %struct.LIST* %2251, i32 0, i32 0
  %2253 = load %union.rec*, %union.rec** %2252, align 8
  store %union.rec* %2253, %union.rec** %y, align 8
  br label %2254

; <label>:2254                                    ; preds = %2264, %2242
  %2255 = load %union.rec*, %union.rec** %y, align 8
  %2256 = bitcast %union.rec* %2255 to %struct.word_type*
  %2257 = getelementptr inbounds %struct.word_type, %struct.word_type* %2256, i32 0, i32 1
  %2258 = bitcast %union.FIRST_UNION* %2257 to %struct.anon*
  %2259 = getelementptr inbounds %struct.anon, %struct.anon* %2258, i32 0, i32 0
  %2260 = load i8, i8* %2259, align 1
  %2261 = zext i8 %2260 to i32
  %2262 = icmp eq i32 %2261, 0
  br i1 %2262, label %2263, label %2271

; <label>:2263                                    ; preds = %2254
  br label %2264

; <label>:2264                                    ; preds = %2263
  %2265 = load %union.rec*, %union.rec** %y, align 8
  %2266 = bitcast %union.rec* %2265 to %struct.word_type*
  %2267 = getelementptr inbounds %struct.word_type, %struct.word_type* %2266, i32 0, i32 0
  %2268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2267, i32 0, i64 1
  %2269 = getelementptr inbounds %struct.LIST, %struct.LIST* %2268, i32 0, i32 0
  %2270 = load %union.rec*, %union.rec** %2269, align 8
  store %union.rec* %2270, %union.rec** %y, align 8
  br label %2254

; <label>:2271                                    ; preds = %2254
  %2272 = load %union.rec*, %union.rec** %y, align 8
  %2273 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2274 = call %union.rec* @BreakObject(%union.rec* %2272, %struct.CONSTRAINT* %2273)
  store %union.rec* %2274, %union.rec** %y, align 8
  %2275 = load %union.rec*, %union.rec** %y, align 8
  %2276 = bitcast %union.rec* %2275 to %struct.word_type*
  %2277 = getelementptr inbounds %struct.word_type, %struct.word_type* %2276, i32 0, i32 3
  %2278 = bitcast %union.THIRD_UNION* %2277 to %struct.anon.6*
  %2279 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2278, i32 0, i32 0
  %2280 = getelementptr inbounds [2 x i32], [2 x i32]* %2279, i32 0, i64 0
  %2281 = load i32, i32* %2280, align 4
  %2282 = load %union.rec*, %union.rec** %2, align 8
  %2283 = bitcast %union.rec* %2282 to %struct.word_type*
  %2284 = getelementptr inbounds %struct.word_type, %struct.word_type* %2283, i32 0, i32 3
  %2285 = bitcast %union.THIRD_UNION* %2284 to %struct.anon.6*
  %2286 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2285, i32 0, i32 0
  %2287 = getelementptr inbounds [2 x i32], [2 x i32]* %2286, i32 0, i64 0
  store i32 %2281, i32* %2287, align 4
  %2288 = load %union.rec*, %union.rec** %y, align 8
  %2289 = bitcast %union.rec* %2288 to %struct.word_type*
  %2290 = getelementptr inbounds %struct.word_type, %struct.word_type* %2289, i32 0, i32 3
  %2291 = bitcast %union.THIRD_UNION* %2290 to %struct.anon.6*
  %2292 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2291, i32 0, i32 1
  %2293 = getelementptr inbounds [2 x i32], [2 x i32]* %2292, i32 0, i64 0
  %2294 = load i32, i32* %2293, align 4
  %2295 = load %union.rec*, %union.rec** %2, align 8
  %2296 = bitcast %union.rec* %2295 to %struct.word_type*
  %2297 = getelementptr inbounds %struct.word_type, %struct.word_type* %2296, i32 0, i32 3
  %2298 = bitcast %union.THIRD_UNION* %2297 to %struct.anon.6*
  %2299 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2298, i32 0, i32 1
  %2300 = getelementptr inbounds [2 x i32], [2 x i32]* %2299, i32 0, i64 0
  store i32 %2294, i32* %2300, align 4
  br label %2579

; <label>:2301                                    ; preds = %212
  %2302 = load %union.rec*, %union.rec** %2, align 8
  %2303 = bitcast %union.rec* %2302 to %struct.word_type*
  %2304 = getelementptr inbounds %struct.word_type, %struct.word_type* %2303, i32 0, i32 0
  %2305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2304, i32 0, i64 0
  %2306 = getelementptr inbounds %struct.LIST, %struct.LIST* %2305, i32 0, i32 1
  %2307 = load %union.rec*, %union.rec** %2306, align 8
  %2308 = bitcast %union.rec* %2307 to %struct.word_type*
  %2309 = getelementptr inbounds %struct.word_type, %struct.word_type* %2308, i32 0, i32 0
  %2310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2309, i32 0, i64 1
  %2311 = getelementptr inbounds %struct.LIST, %struct.LIST* %2310, i32 0, i32 0
  %2312 = load %union.rec*, %union.rec** %2311, align 8
  store %union.rec* %2312, %union.rec** %y, align 8
  br label %2313

; <label>:2313                                    ; preds = %2323, %2301
  %2314 = load %union.rec*, %union.rec** %y, align 8
  %2315 = bitcast %union.rec* %2314 to %struct.word_type*
  %2316 = getelementptr inbounds %struct.word_type, %struct.word_type* %2315, i32 0, i32 1
  %2317 = bitcast %union.FIRST_UNION* %2316 to %struct.anon*
  %2318 = getelementptr inbounds %struct.anon, %struct.anon* %2317, i32 0, i32 0
  %2319 = load i8, i8* %2318, align 1
  %2320 = zext i8 %2319 to i32
  %2321 = icmp eq i32 %2320, 0
  br i1 %2321, label %2322, label %2330

; <label>:2322                                    ; preds = %2313
  br label %2323

; <label>:2323                                    ; preds = %2322
  %2324 = load %union.rec*, %union.rec** %y, align 8
  %2325 = bitcast %union.rec* %2324 to %struct.word_type*
  %2326 = getelementptr inbounds %struct.word_type, %struct.word_type* %2325, i32 0, i32 0
  %2327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2326, i32 0, i64 1
  %2328 = getelementptr inbounds %struct.LIST, %struct.LIST* %2327, i32 0, i32 0
  %2329 = load %union.rec*, %union.rec** %2328, align 8
  store %union.rec* %2329, %union.rec** %y, align 8
  br label %2313

; <label>:2330                                    ; preds = %2313
  %2331 = load %union.rec*, %union.rec** %y, align 8
  %2332 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2333 = call %union.rec* @BreakObject(%union.rec* %2331, %struct.CONSTRAINT* %2332)
  store %union.rec* %2333, %union.rec** %y, align 8
  %2334 = load %union.rec*, %union.rec** %y, align 8
  %2335 = bitcast %union.rec* %2334 to %struct.word_type*
  %2336 = getelementptr inbounds %struct.word_type, %struct.word_type* %2335, i32 0, i32 3
  %2337 = bitcast %union.THIRD_UNION* %2336 to %struct.anon.6*
  %2338 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2337, i32 0, i32 0
  %2339 = getelementptr inbounds [2 x i32], [2 x i32]* %2338, i32 0, i64 0
  %2340 = load i32, i32* %2339, align 4
  %2341 = load %union.rec*, %union.rec** %2, align 8
  %2342 = bitcast %union.rec* %2341 to %struct.word_type*
  %2343 = getelementptr inbounds %struct.word_type, %struct.word_type* %2342, i32 0, i32 3
  %2344 = bitcast %union.THIRD_UNION* %2343 to %struct.anon.6*
  %2345 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2344, i32 0, i32 0
  %2346 = getelementptr inbounds [2 x i32], [2 x i32]* %2345, i32 0, i64 0
  store i32 %2340, i32* %2346, align 4
  %2347 = load %union.rec*, %union.rec** %y, align 8
  %2348 = bitcast %union.rec* %2347 to %struct.word_type*
  %2349 = getelementptr inbounds %struct.word_type, %struct.word_type* %2348, i32 0, i32 3
  %2350 = bitcast %union.THIRD_UNION* %2349 to %struct.anon.6*
  %2351 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2350, i32 0, i32 1
  %2352 = getelementptr inbounds [2 x i32], [2 x i32]* %2351, i32 0, i64 0
  %2353 = load i32, i32* %2352, align 4
  %2354 = load %union.rec*, %union.rec** %2, align 8
  %2355 = bitcast %union.rec* %2354 to %struct.word_type*
  %2356 = getelementptr inbounds %struct.word_type, %struct.word_type* %2355, i32 0, i32 3
  %2357 = bitcast %union.THIRD_UNION* %2356 to %struct.anon.6*
  %2358 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2357, i32 0, i32 1
  %2359 = getelementptr inbounds [2 x i32], [2 x i32]* %2358, i32 0, i64 0
  store i32 %2353, i32* %2359, align 4
  br label %2579

; <label>:2360                                    ; preds = %212
  %2361 = load %union.rec*, %union.rec** %2, align 8
  %2362 = bitcast %union.rec* %2361 to %struct.word_type*
  %2363 = getelementptr inbounds %struct.word_type, %struct.word_type* %2362, i32 0, i32 3
  %2364 = bitcast %union.THIRD_UNION* %2363 to %struct.anon.6*
  %2365 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2364, i32 0, i32 0
  %2366 = getelementptr inbounds [2 x i32], [2 x i32]* %2365, i32 0, i64 0
  %2367 = load i32, i32* %2366, align 4
  %2368 = icmp sgt i32 %2367, 0
  br i1 %2368, label %2369, label %2530

; <label>:2369                                    ; preds = %2360
  %2370 = load %union.rec*, %union.rec** %2, align 8
  %2371 = bitcast %union.rec* %2370 to %struct.word_type*
  %2372 = getelementptr inbounds %struct.word_type, %struct.word_type* %2371, i32 0, i32 3
  %2373 = bitcast %union.THIRD_UNION* %2372 to %struct.anon.6*
  %2374 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2373, i32 0, i32 0
  %2375 = getelementptr inbounds [2 x i32], [2 x i32]* %2374, i32 0, i64 0
  %2376 = load i32, i32* %2375, align 4
  %2377 = load %union.rec*, %union.rec** %2, align 8
  %2378 = bitcast %union.rec* %2377 to %struct.word_type*
  %2379 = getelementptr inbounds %struct.word_type, %struct.word_type* %2378, i32 0, i32 3
  %2380 = bitcast %union.THIRD_UNION* %2379 to %struct.anon.6*
  %2381 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2380, i32 0, i32 1
  %2382 = getelementptr inbounds [2 x i32], [2 x i32]* %2381, i32 0, i64 0
  %2383 = load i32, i32* %2382, align 4
  %2384 = add nsw i32 %2376, %2383
  store i32 %2384, i32* %sz, align 4
  %2385 = load i32, i32* %sz, align 4
  %2386 = icmp slt i32 8388607, %2385
  br i1 %2386, label %2387, label %2388

; <label>:2387                                    ; preds = %2369
  br label %2390

; <label>:2388                                    ; preds = %2369
  %2389 = load i32, i32* %sz, align 4
  br label %2390

; <label>:2390                                    ; preds = %2388, %2387
  %2391 = phi i32 [ 8388607, %2387 ], [ %2389, %2388 ]
  %2392 = load %union.rec*, %union.rec** %2, align 8
  %2393 = bitcast %union.rec* %2392 to %struct.word_type*
  %2394 = getelementptr inbounds %struct.word_type, %struct.word_type* %2393, i32 0, i32 3
  %2395 = bitcast %union.THIRD_UNION* %2394 to %struct.anon.6*
  %2396 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2395, i32 0, i32 1
  %2397 = getelementptr inbounds [2 x i32], [2 x i32]* %2396, i32 0, i64 0
  store i32 %2391, i32* %2397, align 4
  %2398 = load %union.rec*, %union.rec** %2, align 8
  %2399 = bitcast %union.rec* %2398 to %struct.word_type*
  %2400 = getelementptr inbounds %struct.word_type, %struct.word_type* %2399, i32 0, i32 3
  %2401 = bitcast %union.THIRD_UNION* %2400 to %struct.anon.6*
  %2402 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2401, i32 0, i32 0
  %2403 = getelementptr inbounds [2 x i32], [2 x i32]* %2402, i32 0, i64 0
  store i32 0, i32* %2403, align 4
  %2404 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %2404, %union.rec** %rpos, align 8
  %2405 = load %union.rec*, %union.rec** %2, align 8
  %2406 = bitcast %union.rec* %2405 to %struct.word_type*
  %2407 = getelementptr inbounds %struct.word_type, %struct.word_type* %2406, i32 0, i32 0
  %2408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2407, i32 0, i64 0
  %2409 = getelementptr inbounds %struct.LIST, %struct.LIST* %2408, i32 0, i32 1
  %2410 = load %union.rec*, %union.rec** %2409, align 8
  store %union.rec* %2410, %union.rec** %link, align 8
  br label %2411

; <label>:2411                                    ; preds = %2467, %2390
  %2412 = load %union.rec*, %union.rec** %link, align 8
  %2413 = load %union.rec*, %union.rec** %2, align 8
  %2414 = icmp ne %union.rec* %2412, %2413
  br i1 %2414, label %2415, label %2474

; <label>:2415                                    ; preds = %2411
  %2416 = load %union.rec*, %union.rec** %link, align 8
  %2417 = bitcast %union.rec* %2416 to %struct.word_type*
  %2418 = getelementptr inbounds %struct.word_type, %struct.word_type* %2417, i32 0, i32 0
  %2419 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2418, i32 0, i64 1
  %2420 = getelementptr inbounds %struct.LIST, %struct.LIST* %2419, i32 0, i32 0
  %2421 = load %union.rec*, %union.rec** %2420, align 8
  store %union.rec* %2421, %union.rec** %y, align 8
  br label %2422

; <label>:2422                                    ; preds = %2432, %2415
  %2423 = load %union.rec*, %union.rec** %y, align 8
  %2424 = bitcast %union.rec* %2423 to %struct.word_type*
  %2425 = getelementptr inbounds %struct.word_type, %struct.word_type* %2424, i32 0, i32 1
  %2426 = bitcast %union.FIRST_UNION* %2425 to %struct.anon*
  %2427 = getelementptr inbounds %struct.anon, %struct.anon* %2426, i32 0, i32 0
  %2428 = load i8, i8* %2427, align 1
  %2429 = zext i8 %2428 to i32
  %2430 = icmp eq i32 %2429, 0
  br i1 %2430, label %2431, label %2439

; <label>:2431                                    ; preds = %2422
  br label %2432

; <label>:2432                                    ; preds = %2431
  %2433 = load %union.rec*, %union.rec** %y, align 8
  %2434 = bitcast %union.rec* %2433 to %struct.word_type*
  %2435 = getelementptr inbounds %struct.word_type, %struct.word_type* %2434, i32 0, i32 0
  %2436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2435, i32 0, i64 1
  %2437 = getelementptr inbounds %struct.LIST, %struct.LIST* %2436, i32 0, i32 0
  %2438 = load %union.rec*, %union.rec** %2437, align 8
  store %union.rec* %2438, %union.rec** %y, align 8
  br label %2422

; <label>:2439                                    ; preds = %2422
  %2440 = load %union.rec*, %union.rec** %y, align 8
  %2441 = bitcast %union.rec* %2440 to %struct.word_type*
  %2442 = getelementptr inbounds %struct.word_type, %struct.word_type* %2441, i32 0, i32 1
  %2443 = bitcast %union.FIRST_UNION* %2442 to %struct.anon*
  %2444 = getelementptr inbounds %struct.anon, %struct.anon* %2443, i32 0, i32 0
  %2445 = load i8, i8* %2444, align 1
  %2446 = zext i8 %2445 to i32
  %2447 = icmp eq i32 %2446, 1
  br i1 %2447, label %2448, label %2466

; <label>:2448                                    ; preds = %2439
  %2449 = load %union.rec*, %union.rec** %y, align 8
  %2450 = bitcast %union.rec* %2449 to %struct.gapobj_type*
  %2451 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2450, i32 0, i32 3
  %2452 = bitcast %struct.GAP* %2451 to i16*
  %2453 = load i16, i16* %2452, align 4
  %2454 = lshr i16 %2453, 8
  %2455 = and i16 %2454, 1
  %2456 = zext i16 %2455 to i32
  %2457 = icmp ne i32 %2456, 0
  br i1 %2457, label %2458, label %2466

; <label>:2458                                    ; preds = %2448
  %2459 = load %union.rec*, %union.rec** %y, align 8
  %2460 = bitcast %union.rec* %2459 to %struct.gapobj_type*
  %2461 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %2460, i32 0, i32 3
  %2462 = bitcast %struct.GAP* %2461 to i16*
  %2463 = load i16, i16* %2462, align 4
  %2464 = and i16 %2463, -257
  store i16 %2464, i16* %2462, align 4
  %2465 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2465, %union.rec** %rpos, align 8
  br label %2466

; <label>:2466                                    ; preds = %2458, %2448, %2439
  br label %2467

; <label>:2467                                    ; preds = %2466
  %2468 = load %union.rec*, %union.rec** %link, align 8
  %2469 = bitcast %union.rec* %2468 to %struct.word_type*
  %2470 = getelementptr inbounds %struct.word_type, %struct.word_type* %2469, i32 0, i32 0
  %2471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2470, i32 0, i64 0
  %2472 = getelementptr inbounds %struct.LIST, %struct.LIST* %2471, i32 0, i32 1
  %2473 = load %union.rec*, %union.rec** %2472, align 8
  store %union.rec* %2473, %union.rec** %link, align 8
  br label %2411

; <label>:2474                                    ; preds = %2411
  %2475 = load %union.rec*, %union.rec** %2, align 8
  %2476 = bitcast %union.rec* %2475 to %struct.word_type*
  %2477 = getelementptr inbounds %struct.word_type, %struct.word_type* %2476, i32 0, i32 3
  %2478 = bitcast %union.THIRD_UNION* %2477 to %struct.anon.6*
  %2479 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2478, i32 0, i32 0
  %2480 = getelementptr inbounds [2 x i32], [2 x i32]* %2479, i32 0, i64 0
  %2481 = load i32, i32* %2480, align 4
  %2482 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2483 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2482, i32 0, i32 0
  %2484 = load i32, i32* %2483, align 4
  %2485 = icmp sle i32 %2481, %2484
  br i1 %2485, label %2486, label %2524

; <label>:2486                                    ; preds = %2474
  %2487 = load %union.rec*, %union.rec** %2, align 8
  %2488 = bitcast %union.rec* %2487 to %struct.word_type*
  %2489 = getelementptr inbounds %struct.word_type, %struct.word_type* %2488, i32 0, i32 3
  %2490 = bitcast %union.THIRD_UNION* %2489 to %struct.anon.6*
  %2491 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2490, i32 0, i32 0
  %2492 = getelementptr inbounds [2 x i32], [2 x i32]* %2491, i32 0, i64 0
  %2493 = load i32, i32* %2492, align 4
  %2494 = load %union.rec*, %union.rec** %2, align 8
  %2495 = bitcast %union.rec* %2494 to %struct.word_type*
  %2496 = getelementptr inbounds %struct.word_type, %struct.word_type* %2495, i32 0, i32 3
  %2497 = bitcast %union.THIRD_UNION* %2496 to %struct.anon.6*
  %2498 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2497, i32 0, i32 1
  %2499 = getelementptr inbounds [2 x i32], [2 x i32]* %2498, i32 0, i64 0
  %2500 = load i32, i32* %2499, align 4
  %2501 = add nsw i32 %2493, %2500
  %2502 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2503 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2502, i32 0, i32 1
  %2504 = load i32, i32* %2503, align 4
  %2505 = icmp sle i32 %2501, %2504
  br i1 %2505, label %2506, label %2524

; <label>:2506                                    ; preds = %2486
  %2507 = load %union.rec*, %union.rec** %2, align 8
  %2508 = bitcast %union.rec* %2507 to %struct.word_type*
  %2509 = getelementptr inbounds %struct.word_type, %struct.word_type* %2508, i32 0, i32 3
  %2510 = bitcast %union.THIRD_UNION* %2509 to %struct.anon.6*
  %2511 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2510, i32 0, i32 1
  %2512 = getelementptr inbounds [2 x i32], [2 x i32]* %2511, i32 0, i64 0
  %2513 = load i32, i32* %2512, align 4
  %2514 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2515 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %2514, i32 0, i32 2
  %2516 = load i32, i32* %2515, align 4
  %2517 = icmp sle i32 %2513, %2516
  br i1 %2517, label %2518, label %2524

; <label>:2518                                    ; preds = %2506
  %2519 = load %union.rec*, %union.rec** %rpos, align 8
  %2520 = bitcast %union.rec* %2519 to %struct.word_type*
  %2521 = getelementptr inbounds %struct.word_type, %struct.word_type* %2520, i32 0, i32 1
  %2522 = bitcast %union.FIRST_UNION* %2521 to %struct.FILE_POS*
  %2523 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 9, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.14, i32 0, i32 0), i32 2, %struct.FILE_POS* %2522)
  br label %2579

; <label>:2524                                    ; preds = %2506, %2486, %2474
  %2525 = load %union.rec*, %union.rec** %rpos, align 8
  %2526 = bitcast %union.rec* %2525 to %struct.word_type*
  %2527 = getelementptr inbounds %struct.word_type, %struct.word_type* %2526, i32 0, i32 1
  %2528 = bitcast %union.FIRST_UNION* %2527 to %struct.FILE_POS*
  %2529 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 10, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.15, i32 0, i32 0), i32 2, %struct.FILE_POS* %2528)
  br label %2530

; <label>:2530                                    ; preds = %2524, %2360
  %2531 = load %union.rec*, %union.rec** %2, align 8
  %2532 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2533 = call %union.rec* @FillObject(%union.rec* %2531, %struct.CONSTRAINT* %2532, %union.rec* null, i32 1, i32 1, i32 0, i32* %junk)
  store %union.rec* %2533, %union.rec** %2, align 8
  br label %2579

; <label>:2534                                    ; preds = %212
  %2535 = load %union.rec*, %union.rec** %2, align 8
  %2536 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2537 = call %union.rec* @BreakTable(%union.rec* %2535, %struct.CONSTRAINT* %2536)
  store %union.rec* %2537, %union.rec** %2, align 8
  br label %2579

; <label>:2538                                    ; preds = %212
  %2539 = load %union.rec*, %union.rec** %2, align 8
  %2540 = bitcast %union.rec* %2539 to %struct.word_type*
  %2541 = getelementptr inbounds %struct.word_type, %struct.word_type* %2540, i32 0, i32 0
  %2542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2541, i32 0, i64 0
  %2543 = getelementptr inbounds %struct.LIST, %struct.LIST* %2542, i32 0, i32 1
  %2544 = load %union.rec*, %union.rec** %2543, align 8
  %2545 = load %union.rec*, %union.rec** %2, align 8
  %2546 = bitcast %union.rec* %2545 to %struct.word_type*
  %2547 = getelementptr inbounds %struct.word_type, %struct.word_type* %2546, i32 0, i32 0
  %2548 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2547, i32 0, i64 0
  %2549 = getelementptr inbounds %struct.LIST, %struct.LIST* %2548, i32 0, i32 0
  %2550 = load %union.rec*, %union.rec** %2549, align 8
  %2551 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2552 = load %union.rec*, %union.rec** %2, align 8
  %2553 = bitcast %union.rec* %2552 to %struct.word_type*
  %2554 = getelementptr inbounds %struct.word_type, %struct.word_type* %2553, i32 0, i32 3
  %2555 = bitcast %union.THIRD_UNION* %2554 to %struct.anon.6*
  %2556 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2555, i32 0, i32 0
  %2557 = getelementptr inbounds [2 x i32], [2 x i32]* %2556, i32 0, i64 0
  %2558 = load %union.rec*, %union.rec** %2, align 8
  %2559 = bitcast %union.rec* %2558 to %struct.word_type*
  %2560 = getelementptr inbounds %struct.word_type, %struct.word_type* %2559, i32 0, i32 3
  %2561 = bitcast %union.THIRD_UNION* %2560 to %struct.anon.6*
  %2562 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2561, i32 0, i32 1
  %2563 = getelementptr inbounds [2 x i32], [2 x i32]* %2562, i32 0, i64 0
  call void @BreakJoinedGroup(%union.rec* %2544, %union.rec* %2550, %union.rec* null, %struct.CONSTRAINT* %2551, i32* %2557, i32* %2563)
  br label %2579

; <label>:2564                                    ; preds = %212
  %2565 = load %union.rec*, %union.rec** %2, align 8
  %2566 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %3, align 8
  %2567 = call %union.rec* @BreakVcat(%union.rec* %2565, %struct.CONSTRAINT* %2566)
  store %union.rec* %2567, %union.rec** %2, align 8
  br label %2579

; <label>:2568                                    ; preds = %212
  %2569 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2570 = load %union.rec*, %union.rec** %2, align 8
  %2571 = bitcast %union.rec* %2570 to %struct.word_type*
  %2572 = getelementptr inbounds %struct.word_type, %struct.word_type* %2571, i32 0, i32 1
  %2573 = bitcast %union.FIRST_UNION* %2572 to %struct.anon*
  %2574 = getelementptr inbounds %struct.anon, %struct.anon* %2573, i32 0, i32 0
  %2575 = load i8, i8* %2574, align 1
  %2576 = zext i8 %2575 to i32
  %2577 = call i8* @Image(i32 %2576)
  %2578 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 3, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.16, i32 0, i32 0), i32 0, %struct.FILE_POS* %2569, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.17, i32 0, i32 0), i8* %2577)
  br label %2579

; <label>:2579                                    ; preds = %2568, %2564, %2538, %2534, %2530, %2518, %2330, %2271, %2212, %2182, %2174, %1985, %1857, %1766, %1719, %1463, %1428, %520, %446, %409
  %2580 = load %union.rec*, %union.rec** %2, align 8
  %2581 = bitcast %union.rec* %2580 to %struct.word_type*
  %2582 = getelementptr inbounds %struct.word_type, %struct.word_type* %2581, i32 0, i32 3
  %2583 = bitcast %union.THIRD_UNION* %2582 to %struct.anon.6*
  %2584 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2583, i32 0, i32 0
  %2585 = getelementptr inbounds [2 x i32], [2 x i32]* %2584, i32 0, i64 0
  %2586 = load i32, i32* %2585, align 4
  %2587 = icmp sge i32 %2586, 0
  br i1 %2587, label %2591, label %2588

; <label>:2588                                    ; preds = %2579
  %2589 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2590 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %2589, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.18, i32 0, i32 0))
  br label %2591

; <label>:2591                                    ; preds = %2588, %2579
  %2592 = load %union.rec*, %union.rec** %2, align 8
  %2593 = bitcast %union.rec* %2592 to %struct.word_type*
  %2594 = getelementptr inbounds %struct.word_type, %struct.word_type* %2593, i32 0, i32 3
  %2595 = bitcast %union.THIRD_UNION* %2594 to %struct.anon.6*
  %2596 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %2595, i32 0, i32 1
  %2597 = getelementptr inbounds [2 x i32], [2 x i32]* %2596, i32 0, i64 0
  %2598 = load i32, i32* %2597, align 4
  %2599 = icmp sge i32 %2598, 0
  br i1 %2599, label %2603, label %2600

; <label>:2600                                    ; preds = %2591
  %2601 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2602 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %2601, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.19, i32 0, i32 0))
  br label %2603

; <label>:2603                                    ; preds = %2600, %2591
  %2604 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %2604, %union.rec** %1
  br label %2605

; <label>:2605                                    ; preds = %2603, %210, %160
  %2606 = load %union.rec*, %union.rec** %1
  ret %union.rec* %2606
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare i8* @EchoLength(i32) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare i32 @InsertScale(%union.rec*, %struct.CONSTRAINT*) #1

declare void @InvScaleConstraint(%struct.CONSTRAINT*, i32, %struct.CONSTRAINT*) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare i32 @FontSize(i32, %union.rec*) #1

declare void @MinConstraint(%struct.CONSTRAINT*, %struct.CONSTRAINT*) #1

declare void @EnlargeToConstraint(i32*, i32*, %struct.CONSTRAINT*) #1

declare i32 @FindShift(%union.rec*, %union.rec*, i32) #1

declare %union.rec* @FillObject(%union.rec*, %struct.CONSTRAINT*, %union.rec*, i32, i32, i32, i32*) #1

; Function Attrs: nounwind uwtable
define internal %union.rec* @BreakTable(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.CONSTRAINT*, align 8
  %bwidth = alloca i32, align 4
  %fwidth = alloca i32, align 4
  %bcount = alloca i32, align 4
  %fcount = alloca i32, align 4
  %mlink = alloca %union.rec*, align 8
  %my = alloca %union.rec*, align 8
  %ratm = alloca i32, align 4
  %mside = alloca i32, align 4
  %msize = alloca i32, align 4
  %mc = alloca %struct.CONSTRAINT, align 4
  %pg = alloca %union.rec*, align 8
  %prec_def = alloca %union.rec*, align 8
  %sg = alloca %union.rec*, align 8
  %succ_def = alloca %union.rec*, align 8
  %pd_extra = alloca i32, align 4
  %sd_extra = alloca i32, align 4
  %av_colsize = alloca i32, align 4
  %fwd_max = alloca i32, align 4
  %back_max = alloca i32, align 4
  %col_size = alloca i32, align 4
  %prev_col_size = alloca i32, align 4
  %beffect = alloca i32, align 4
  %feffect = alloca i32, align 4
  %link = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %prev = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %tmp = alloca i32, align 4
  %tmp2 = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %2, align 8
  store i32 0, i32* %fcount, align 4
  store i32 0, i32* %bcount, align 4
  store i32 0, i32* %fwidth, align 4
  store i32 0, i32* %bwidth, align 4
  store %union.rec* null, %union.rec** %prev, align 8
  store i32 0, i32* %prev_col_size, align 4
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 0
  %6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5, i32 0, i64 0
  %7 = getelementptr inbounds %struct.LIST, %struct.LIST* %6, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = bitcast %union.rec* %8 to %struct.word_type*
  %10 = getelementptr inbounds %struct.word_type, %struct.word_type* %9, i32 0, i32 0
  %11 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %10, i32 0, i64 1
  %12 = getelementptr inbounds %struct.LIST, %struct.LIST* %11, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %12, align 8
  store %union.rec* %13, %union.rec** %y, align 8
  br label %14

; <label>:14                                      ; preds = %24, %0
  %15 = load %union.rec*, %union.rec** %y, align 8
  %16 = bitcast %union.rec* %15 to %struct.word_type*
  %17 = getelementptr inbounds %struct.word_type, %struct.word_type* %16, i32 0, i32 1
  %18 = bitcast %union.FIRST_UNION* %17 to %struct.anon*
  %19 = getelementptr inbounds %struct.anon, %struct.anon* %18, i32 0, i32 0
  %20 = load i8, i8* %19, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %31

; <label>:23                                      ; preds = %14
  br label %24

; <label>:24                                      ; preds = %23
  %25 = load %union.rec*, %union.rec** %y, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 0
  %28 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %27, i32 0, i64 1
  %29 = getelementptr inbounds %struct.LIST, %struct.LIST* %28, i32 0, i32 0
  %30 = load %union.rec*, %union.rec** %29, align 8
  store %union.rec* %30, %union.rec** %y, align 8
  br label %14

; <label>:31                                      ; preds = %14
  %32 = load %union.rec*, %union.rec** %y, align 8
  %33 = bitcast %union.rec* %32 to %struct.word_type*
  %34 = getelementptr inbounds %struct.word_type, %struct.word_type* %33, i32 0, i32 1
  %35 = bitcast %union.FIRST_UNION* %34 to %struct.anon*
  %36 = getelementptr inbounds %struct.anon, %struct.anon* %35, i32 0, i32 0
  %37 = load i8, i8* %36, align 1
  %38 = zext i8 %37 to i32
  %39 = icmp ne i32 %38, 1
  br i1 %39, label %43, label %40

; <label>:40                                      ; preds = %31
  %41 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %42 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %41, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %43

; <label>:43                                      ; preds = %40, %31
  %44 = load %union.rec*, %union.rec** %y, align 8
  %45 = bitcast %union.rec* %44 to %struct.word_type*
  %46 = getelementptr inbounds %struct.word_type, %struct.word_type* %45, i32 0, i32 1
  %47 = bitcast %union.FIRST_UNION* %46 to %struct.anon*
  %48 = getelementptr inbounds %struct.anon, %struct.anon* %47, i32 0, i32 0
  %49 = load i8, i8* %48, align 1
  %50 = zext i8 %49 to i32
  %51 = icmp sge i32 %50, 119
  br i1 %51, label %52, label %64

; <label>:52                                      ; preds = %43
  %53 = load %union.rec*, %union.rec** %y, align 8
  %54 = bitcast %union.rec* %53 to %struct.word_type*
  %55 = getelementptr inbounds %struct.word_type, %struct.word_type* %54, i32 0, i32 1
  %56 = bitcast %union.FIRST_UNION* %55 to %struct.anon*
  %57 = getelementptr inbounds %struct.anon, %struct.anon* %56, i32 0, i32 0
  %58 = load i8, i8* %57, align 1
  %59 = zext i8 %58 to i32
  %60 = icmp sle i32 %59, 138
  br i1 %60, label %61, label %64

; <label>:61                                      ; preds = %52
  %62 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %63 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %62, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  br label %64

; <label>:64                                      ; preds = %61, %52, %43
  %65 = load %union.rec*, %union.rec** %y, align 8
  %66 = bitcast %union.rec* %65 to %struct.word_type*
  %67 = getelementptr inbounds %struct.word_type, %struct.word_type* %66, i32 0, i32 1
  %68 = bitcast %union.FIRST_UNION* %67 to %struct.anon*
  %69 = getelementptr inbounds %struct.anon, %struct.anon* %68, i32 0, i32 0
  %70 = load i8, i8* %69, align 1
  %71 = zext i8 %70 to i32
  %72 = icmp sge i32 %71, 2
  br i1 %72, label %73, label %82

; <label>:73                                      ; preds = %64
  %74 = load %union.rec*, %union.rec** %y, align 8
  %75 = bitcast %union.rec* %74 to %struct.word_type*
  %76 = getelementptr inbounds %struct.word_type, %struct.word_type* %75, i32 0, i32 1
  %77 = bitcast %union.FIRST_UNION* %76 to %struct.anon*
  %78 = getelementptr inbounds %struct.anon, %struct.anon* %77, i32 0, i32 0
  %79 = load i8, i8* %78, align 1
  %80 = zext i8 %79 to i32
  %81 = icmp sle i32 %80, 8
  br label %82

; <label>:82                                      ; preds = %73, %64
  %83 = phi i1 [ false, %64 ], [ %81, %73 ]
  %84 = zext i1 %83 to i32
  %85 = load %union.rec*, %union.rec** %y, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 3
  %88 = bitcast %union.THIRD_UNION* %87 to %struct.anon.6*
  %89 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x i32], [2 x i32]* %89, i32 0, i64 1
  store i32 %84, i32* %90, align 4
  %91 = load %union.rec*, %union.rec** %y, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 3
  %94 = bitcast %union.THIRD_UNION* %93 to %struct.anon.6*
  %95 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x i32], [2 x i32]* %95, i32 0, i64 1
  %97 = load i32, i32* %96, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %101, label %99

; <label>:99                                      ; preds = %82
  %100 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %100, %union.rec** %prev, align 8
  store i32 1, i32* %fcount, align 4
  br label %101

; <label>:101                                     ; preds = %99, %82
  %102 = load %union.rec*, %union.rec** %1, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 0
  %105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %104, i32 0, i64 0
  %106 = getelementptr inbounds %struct.LIST, %struct.LIST* %105, i32 0, i32 1
  %107 = load %union.rec*, %union.rec** %106, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %109, i32 0, i64 0
  %111 = getelementptr inbounds %struct.LIST, %struct.LIST* %110, i32 0, i32 1
  %112 = load %union.rec*, %union.rec** %111, align 8
  store %union.rec* %112, %union.rec** %link, align 8
  br label %113

; <label>:113                                     ; preds = %301, %101
  %114 = load %union.rec*, %union.rec** %link, align 8
  %115 = load %union.rec*, %union.rec** %1, align 8
  %116 = icmp ne %union.rec* %114, %115
  br i1 %116, label %117, label %313

; <label>:117                                     ; preds = %113
  %118 = load %union.rec*, %union.rec** %link, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 1
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 0
  %123 = load %union.rec*, %union.rec** %122, align 8
  store %union.rec* %123, %union.rec** %g, align 8
  br label %124

; <label>:124                                     ; preds = %134, %117
  %125 = load %union.rec*, %union.rec** %g, align 8
  %126 = bitcast %union.rec* %125 to %struct.word_type*
  %127 = getelementptr inbounds %struct.word_type, %struct.word_type* %126, i32 0, i32 1
  %128 = bitcast %union.FIRST_UNION* %127 to %struct.anon*
  %129 = getelementptr inbounds %struct.anon, %struct.anon* %128, i32 0, i32 0
  %130 = load i8, i8* %129, align 1
  %131 = zext i8 %130 to i32
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %141

; <label>:133                                     ; preds = %124
  br label %134

; <label>:134                                     ; preds = %133
  %135 = load %union.rec*, %union.rec** %g, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 0
  %138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %137, i32 0, i64 1
  %139 = getelementptr inbounds %struct.LIST, %struct.LIST* %138, i32 0, i32 0
  %140 = load %union.rec*, %union.rec** %139, align 8
  store %union.rec* %140, %union.rec** %g, align 8
  br label %124

; <label>:141                                     ; preds = %124
  %142 = load %union.rec*, %union.rec** %g, align 8
  %143 = bitcast %union.rec* %142 to %struct.word_type*
  %144 = getelementptr inbounds %struct.word_type, %struct.word_type* %143, i32 0, i32 1
  %145 = bitcast %union.FIRST_UNION* %144 to %struct.anon*
  %146 = getelementptr inbounds %struct.anon, %struct.anon* %145, i32 0, i32 0
  %147 = load i8, i8* %146, align 1
  %148 = zext i8 %147 to i32
  %149 = icmp eq i32 %148, 1
  br i1 %149, label %153, label %150

; <label>:150                                     ; preds = %141
  %151 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %152 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %151, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %153

; <label>:153                                     ; preds = %150, %141
  %154 = load %union.rec*, %union.rec** %link, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 0
  %157 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %156, i32 0, i64 0
  %158 = getelementptr inbounds %struct.LIST, %struct.LIST* %157, i32 0, i32 1
  %159 = load %union.rec*, %union.rec** %158, align 8
  %160 = load %union.rec*, %union.rec** %1, align 8
  %161 = icmp ne %union.rec* %159, %160
  br i1 %161, label %165, label %162

; <label>:162                                     ; preds = %153
  %163 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %164 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %163, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.22, i32 0, i32 0))
  br label %165

; <label>:165                                     ; preds = %162, %153
  %166 = load %union.rec*, %union.rec** %link, align 8
  %167 = bitcast %union.rec* %166 to %struct.word_type*
  %168 = getelementptr inbounds %struct.word_type, %struct.word_type* %167, i32 0, i32 0
  %169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %168, i32 0, i64 0
  %170 = getelementptr inbounds %struct.LIST, %struct.LIST* %169, i32 0, i32 1
  %171 = load %union.rec*, %union.rec** %170, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 0
  %174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %173, i32 0, i64 1
  %175 = getelementptr inbounds %struct.LIST, %struct.LIST* %174, i32 0, i32 0
  %176 = load %union.rec*, %union.rec** %175, align 8
  store %union.rec* %176, %union.rec** %y, align 8
  br label %177

; <label>:177                                     ; preds = %187, %165
  %178 = load %union.rec*, %union.rec** %y, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 1
  %181 = bitcast %union.FIRST_UNION* %180 to %struct.anon*
  %182 = getelementptr inbounds %struct.anon, %struct.anon* %181, i32 0, i32 0
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %194

; <label>:186                                     ; preds = %177
  br label %187

; <label>:187                                     ; preds = %186
  %188 = load %union.rec*, %union.rec** %y, align 8
  %189 = bitcast %union.rec* %188 to %struct.word_type*
  %190 = getelementptr inbounds %struct.word_type, %struct.word_type* %189, i32 0, i32 0
  %191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %190, i32 0, i64 1
  %192 = getelementptr inbounds %struct.LIST, %struct.LIST* %191, i32 0, i32 0
  %193 = load %union.rec*, %union.rec** %192, align 8
  store %union.rec* %193, %union.rec** %y, align 8
  br label %177

; <label>:194                                     ; preds = %177
  %195 = load %union.rec*, %union.rec** %y, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 1
  %198 = bitcast %union.FIRST_UNION* %197 to %struct.anon*
  %199 = getelementptr inbounds %struct.anon, %struct.anon* %198, i32 0, i32 0
  %200 = load i8, i8* %199, align 1
  %201 = zext i8 %200 to i32
  %202 = icmp ne i32 %201, 1
  br i1 %202, label %206, label %203

; <label>:203                                     ; preds = %194
  %204 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %205 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %204, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.20, i32 0, i32 0))
  br label %206

; <label>:206                                     ; preds = %203, %194
  %207 = load %union.rec*, %union.rec** %y, align 8
  %208 = bitcast %union.rec* %207 to %struct.word_type*
  %209 = getelementptr inbounds %struct.word_type, %struct.word_type* %208, i32 0, i32 1
  %210 = bitcast %union.FIRST_UNION* %209 to %struct.anon*
  %211 = getelementptr inbounds %struct.anon, %struct.anon* %210, i32 0, i32 0
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  %214 = icmp sge i32 %213, 119
  br i1 %214, label %215, label %227

; <label>:215                                     ; preds = %206
  %216 = load %union.rec*, %union.rec** %y, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 1
  %219 = bitcast %union.FIRST_UNION* %218 to %struct.anon*
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 0
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp sle i32 %222, 138
  br i1 %223, label %224, label %227

; <label>:224                                     ; preds = %215
  %225 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %226 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %225, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.21, i32 0, i32 0))
  br label %227

; <label>:227                                     ; preds = %224, %215, %206
  %228 = load %union.rec*, %union.rec** %y, align 8
  %229 = bitcast %union.rec* %228 to %struct.word_type*
  %230 = getelementptr inbounds %struct.word_type, %struct.word_type* %229, i32 0, i32 1
  %231 = bitcast %union.FIRST_UNION* %230 to %struct.anon*
  %232 = getelementptr inbounds %struct.anon, %struct.anon* %231, i32 0, i32 0
  %233 = load i8, i8* %232, align 1
  %234 = zext i8 %233 to i32
  %235 = icmp sge i32 %234, 2
  br i1 %235, label %236, label %245

; <label>:236                                     ; preds = %227
  %237 = load %union.rec*, %union.rec** %y, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 1
  %240 = bitcast %union.FIRST_UNION* %239 to %struct.anon*
  %241 = getelementptr inbounds %struct.anon, %struct.anon* %240, i32 0, i32 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp sle i32 %243, 8
  br label %245

; <label>:245                                     ; preds = %236, %227
  %246 = phi i1 [ false, %227 ], [ %244, %236 ]
  %247 = zext i1 %246 to i32
  %248 = load %union.rec*, %union.rec** %y, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 3
  %251 = bitcast %union.THIRD_UNION* %250 to %struct.anon.6*
  %252 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %251, i32 0, i32 0
  %253 = getelementptr inbounds [2 x i32], [2 x i32]* %252, i32 0, i64 1
  store i32 %247, i32* %253, align 4
  %254 = load %union.rec*, %union.rec** %y, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 3
  %257 = bitcast %union.THIRD_UNION* %256 to %struct.anon.6*
  %258 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x i32], [2 x i32]* %258, i32 0, i64 1
  %260 = load i32, i32* %259, align 4
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %300, label %262

; <label>:262                                     ; preds = %245
  %263 = load %union.rec*, %union.rec** %prev, align 8
  %264 = icmp eq %union.rec* %263, null
  br i1 %264, label %265, label %266

; <label>:265                                     ; preds = %262
  store i32 1, i32* %fcount, align 4
  br label %298

; <label>:266                                     ; preds = %262
  %267 = load %union.rec*, %union.rec** %g, align 8
  %268 = bitcast %union.rec* %267 to %struct.gapobj_type*
  %269 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %268, i32 0, i32 3
  %270 = bitcast %struct.GAP* %269 to i16*
  %271 = load i16, i16* %270, align 4
  %272 = lshr i16 %271, 8
  %273 = and i16 %272, 1
  %274 = zext i16 %273 to i32
  %275 = icmp ne i32 %274, 0
  br i1 %275, label %276, label %288

; <label>:276                                     ; preds = %266
  %277 = load i32, i32* %fcount, align 4
  %278 = load i32, i32* %bcount, align 4
  %279 = add nsw i32 %278, %277
  store i32 %279, i32* %bcount, align 4
  %280 = load i32, i32* %fwidth, align 4
  %281 = load %union.rec*, %union.rec** %g, align 8
  %282 = bitcast %union.rec* %281 to %struct.gapobj_type*
  %283 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %282, i32 0, i32 3
  %284 = call i32 @MinGap(i32 0, i32 0, i32 0, %struct.GAP* %283)
  %285 = add nsw i32 %280, %284
  %286 = load i32, i32* %bwidth, align 4
  %287 = add nsw i32 %286, %285
  store i32 %287, i32* %bwidth, align 4
  store i32 1, i32* %fcount, align 4
  store i32 0, i32* %fwidth, align 4
  br label %297

; <label>:288                                     ; preds = %266
  %289 = load %union.rec*, %union.rec** %g, align 8
  %290 = bitcast %union.rec* %289 to %struct.gapobj_type*
  %291 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %290, i32 0, i32 3
  %292 = call i32 @MinGap(i32 0, i32 0, i32 0, %struct.GAP* %291)
  %293 = load i32, i32* %fwidth, align 4
  %294 = add nsw i32 %293, %292
  store i32 %294, i32* %fwidth, align 4
  %295 = load i32, i32* %fcount, align 4
  %296 = add nsw i32 %295, 1
  store i32 %296, i32* %fcount, align 4
  br label %297

; <label>:297                                     ; preds = %288, %276
  br label %298

; <label>:298                                     ; preds = %297, %265
  %299 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %299, %union.rec** %prev, align 8
  br label %300

; <label>:300                                     ; preds = %298, %245
  br label %301

; <label>:301                                     ; preds = %300
  %302 = load %union.rec*, %union.rec** %link, align 8
  %303 = bitcast %union.rec* %302 to %struct.word_type*
  %304 = getelementptr inbounds %struct.word_type, %struct.word_type* %303, i32 0, i32 0
  %305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %304, i32 0, i64 0
  %306 = getelementptr inbounds %struct.LIST, %struct.LIST* %305, i32 0, i32 1
  %307 = load %union.rec*, %union.rec** %306, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 1
  %312 = load %union.rec*, %union.rec** %311, align 8
  store %union.rec* %312, %union.rec** %link, align 8
  br label %113

; <label>:313                                     ; preds = %113
  %314 = load i32, i32* %bwidth, align 4
  %315 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %316 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %315, i32 0, i32 0
  %317 = load i32, i32* %316, align 4
  %318 = icmp sle i32 %314, %317
  br i1 %318, label %319, label %333

; <label>:319                                     ; preds = %313
  %320 = load i32, i32* %bwidth, align 4
  %321 = load i32, i32* %fwidth, align 4
  %322 = add nsw i32 %320, %321
  %323 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %324 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %323, i32 0, i32 1
  %325 = load i32, i32* %324, align 4
  %326 = icmp sle i32 %322, %325
  br i1 %326, label %327, label %333

; <label>:327                                     ; preds = %319
  %328 = load i32, i32* %fwidth, align 4
  %329 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %330 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %329, i32 0, i32 2
  %331 = load i32, i32* %330, align 4
  %332 = icmp sle i32 %328, %331
  br i1 %332, label %467, label %333

; <label>:333                                     ; preds = %327, %319, %313
  %334 = load %union.rec*, %union.rec** %1, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 1
  %337 = bitcast %union.FIRST_UNION* %336 to %struct.FILE_POS*
  %338 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 2, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.23, i32 0, i32 0), i32 2, %struct.FILE_POS* %337)
  %339 = load %union.rec*, %union.rec** %1, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 0
  %342 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %341, i32 0, i64 0
  %343 = getelementptr inbounds %struct.LIST, %struct.LIST* %342, i32 0, i32 1
  %344 = load %union.rec*, %union.rec** %343, align 8
  store %union.rec* %344, %union.rec** %link, align 8
  br label %345

; <label>:345                                     ; preds = %459, %333
  %346 = load %union.rec*, %union.rec** %link, align 8
  %347 = load %union.rec*, %union.rec** %1, align 8
  %348 = icmp ne %union.rec* %346, %347
  br i1 %348, label %349, label %466

; <label>:349                                     ; preds = %345
  %350 = load %union.rec*, %union.rec** %link, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 1
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  %355 = load %union.rec*, %union.rec** %354, align 8
  store %union.rec* %355, %union.rec** %g, align 8
  br label %356

; <label>:356                                     ; preds = %366, %349
  %357 = load %union.rec*, %union.rec** %g, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 1
  %360 = bitcast %union.FIRST_UNION* %359 to %struct.anon*
  %361 = getelementptr inbounds %struct.anon, %struct.anon* %360, i32 0, i32 0
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  %364 = icmp eq i32 %363, 0
  br i1 %364, label %365, label %373

; <label>:365                                     ; preds = %356
  br label %366

; <label>:366                                     ; preds = %365
  %367 = load %union.rec*, %union.rec** %g, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 1
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 0
  %372 = load %union.rec*, %union.rec** %371, align 8
  store %union.rec* %372, %union.rec** %g, align 8
  br label %356

; <label>:373                                     ; preds = %356
  %374 = load %union.rec*, %union.rec** %g, align 8
  %375 = bitcast %union.rec* %374 to %struct.word_type*
  %376 = getelementptr inbounds %struct.word_type, %struct.word_type* %375, i32 0, i32 1
  %377 = bitcast %union.FIRST_UNION* %376 to %struct.anon*
  %378 = getelementptr inbounds %struct.anon, %struct.anon* %377, i32 0, i32 0
  %379 = load i8, i8* %378, align 1
  %380 = zext i8 %379 to i32
  %381 = icmp eq i32 %380, 1
  br i1 %381, label %382, label %458

; <label>:382                                     ; preds = %373
  %383 = load %union.rec*, %union.rec** %g, align 8
  %384 = bitcast %union.rec* %383 to %struct.gapobj_type*
  %385 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %384, i32 0, i32 3
  %386 = bitcast %struct.GAP* %385 to i16*
  %387 = load i16, i16* %386, align 4
  %388 = lshr i16 %387, 7
  %389 = and i16 %388, 1
  %390 = zext i16 %389 to i32
  %391 = load %union.rec*, %union.rec** %g, align 8
  %392 = bitcast %union.rec* %391 to %struct.gapobj_type*
  %393 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %392, i32 0, i32 3
  %394 = bitcast %struct.GAP* %393 to i16*
  %395 = trunc i32 %390 to i16
  %396 = load i16, i16* %394, align 4
  %397 = and i16 %395, 1
  %398 = shl i16 %397, 7
  %399 = and i16 %396, -129
  %400 = or i16 %399, %398
  store i16 %400, i16* %394, align 4
  %401 = zext i16 %397 to i32
  %402 = load %union.rec*, %union.rec** %g, align 8
  %403 = bitcast %union.rec* %402 to %struct.gapobj_type*
  %404 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %403, i32 0, i32 3
  %405 = bitcast %struct.GAP* %404 to i16*
  %406 = load i16, i16* %405, align 4
  %407 = lshr i16 %406, 8
  %408 = and i16 %407, 1
  %409 = zext i16 %408 to i32
  %410 = load %union.rec*, %union.rec** %g, align 8
  %411 = bitcast %union.rec* %410 to %struct.gapobj_type*
  %412 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %411, i32 0, i32 3
  %413 = bitcast %struct.GAP* %412 to i16*
  %414 = trunc i32 %409 to i16
  %415 = load i16, i16* %413, align 4
  %416 = and i16 %414, 1
  %417 = shl i16 %416, 8
  %418 = and i16 %415, -257
  %419 = or i16 %418, %417
  store i16 %419, i16* %413, align 4
  %420 = zext i16 %416 to i32
  %421 = load %union.rec*, %union.rec** %g, align 8
  %422 = bitcast %union.rec* %421 to %struct.gapobj_type*
  %423 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %422, i32 0, i32 3
  %424 = bitcast %struct.GAP* %423 to i16*
  %425 = load i16, i16* %424, align 4
  %426 = lshr i16 %425, 9
  %427 = and i16 %426, 1
  %428 = zext i16 %427 to i32
  %429 = load %union.rec*, %union.rec** %g, align 8
  %430 = bitcast %union.rec* %429 to %struct.gapobj_type*
  %431 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %430, i32 0, i32 3
  %432 = bitcast %struct.GAP* %431 to i16*
  %433 = trunc i32 %428 to i16
  %434 = load i16, i16* %432, align 4
  %435 = and i16 %433, 1
  %436 = shl i16 %435, 9
  %437 = and i16 %434, -513
  %438 = or i16 %437, %436
  store i16 %438, i16* %432, align 4
  %439 = zext i16 %435 to i32
  %440 = load %union.rec*, %union.rec** %g, align 8
  %441 = bitcast %union.rec* %440 to %struct.gapobj_type*
  %442 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %441, i32 0, i32 3
  %443 = bitcast %struct.GAP* %442 to i16*
  %444 = load i16, i16* %443, align 4
  %445 = and i16 %444, -7169
  %446 = or i16 %445, 1024
  store i16 %446, i16* %443, align 4
  %447 = load %union.rec*, %union.rec** %g, align 8
  %448 = bitcast %union.rec* %447 to %struct.gapobj_type*
  %449 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %448, i32 0, i32 3
  %450 = bitcast %struct.GAP* %449 to i16*
  %451 = load i16, i16* %450, align 4
  %452 = and i16 %451, 8191
  %453 = or i16 %452, 8192
  store i16 %453, i16* %450, align 4
  %454 = load %union.rec*, %union.rec** %g, align 8
  %455 = bitcast %union.rec* %454 to %struct.gapobj_type*
  %456 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %455, i32 0, i32 3
  %457 = getelementptr inbounds %struct.GAP, %struct.GAP* %456, i32 0, i32 1
  store i16 0, i16* %457, align 2
  br label %458

; <label>:458                                     ; preds = %382, %373
  br label %459

; <label>:459                                     ; preds = %458
  %460 = load %union.rec*, %union.rec** %link, align 8
  %461 = bitcast %union.rec* %460 to %struct.word_type*
  %462 = getelementptr inbounds %struct.word_type, %struct.word_type* %461, i32 0, i32 0
  %463 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %462, i32 0, i64 0
  %464 = getelementptr inbounds %struct.LIST, %struct.LIST* %463, i32 0, i32 1
  %465 = load %union.rec*, %union.rec** %464, align 8
  store %union.rec* %465, %union.rec** %link, align 8
  br label %345

; <label>:466                                     ; preds = %345
  store i32 0, i32* %fwidth, align 4
  store i32 0, i32* %bwidth, align 4
  br label %467

; <label>:467                                     ; preds = %466, %327
  br label %468

; <label>:468                                     ; preds = %1172, %467
  %469 = load i32, i32* %bcount, align 4
  %470 = load i32, i32* %fcount, align 4
  %471 = add nsw i32 %469, %470
  %472 = icmp sgt i32 %471, 0
  br i1 %472, label %473, label %495

; <label>:473                                     ; preds = %468
  %474 = load i32, i32* %bwidth, align 4
  %475 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %476 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %475, i32 0, i32 0
  %477 = load i32, i32* %476, align 4
  %478 = icmp sle i32 %474, %477
  br i1 %478, label %479, label %493

; <label>:479                                     ; preds = %473
  %480 = load i32, i32* %bwidth, align 4
  %481 = load i32, i32* %fwidth, align 4
  %482 = add nsw i32 %480, %481
  %483 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %484 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %483, i32 0, i32 1
  %485 = load i32, i32* %484, align 4
  %486 = icmp sle i32 %482, %485
  br i1 %486, label %487, label %493

; <label>:487                                     ; preds = %479
  %488 = load i32, i32* %fwidth, align 4
  %489 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %490 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %489, i32 0, i32 2
  %491 = load i32, i32* %490, align 4
  %492 = icmp sle i32 %488, %491
  br label %493

; <label>:493                                     ; preds = %487, %479, %473
  %494 = phi i1 [ false, %479 ], [ false, %473 ], [ %492, %487 ]
  br label %495

; <label>:495                                     ; preds = %493, %468
  %496 = phi i1 [ false, %468 ], [ %494, %493 ]
  br i1 %496, label %497, label %1173

; <label>:497                                     ; preds = %495
  store %union.rec* null, %union.rec** %my, align 8
  %498 = load %union.rec*, %union.rec** %1, align 8
  %499 = bitcast %union.rec* %498 to %struct.word_type*
  %500 = getelementptr inbounds %struct.word_type, %struct.word_type* %499, i32 0, i32 3
  %501 = bitcast %union.THIRD_UNION* %500 to %struct.anon.6*
  %502 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %501, i32 0, i32 0
  %503 = getelementptr inbounds [2 x i32], [2 x i32]* %502, i32 0, i64 0
  %504 = load i32, i32* %503, align 4
  %505 = load %union.rec*, %union.rec** %1, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 3
  %508 = bitcast %union.THIRD_UNION* %507 to %struct.anon.6*
  %509 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %508, i32 0, i32 1
  %510 = getelementptr inbounds [2 x i32], [2 x i32]* %509, i32 0, i64 0
  %511 = load i32, i32* %510, align 4
  %512 = add nsw i32 %504, %511
  store i32 %512, i32* %msize, align 4
  %513 = load %union.rec*, %union.rec** %1, align 8
  %514 = bitcast %union.rec* %513 to %struct.word_type*
  %515 = getelementptr inbounds %struct.word_type, %struct.word_type* %514, i32 0, i32 0
  %516 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %515, i32 0, i64 0
  %517 = getelementptr inbounds %struct.LIST, %struct.LIST* %516, i32 0, i32 1
  %518 = load %union.rec*, %union.rec** %517, align 8
  store %union.rec* %518, %union.rec** %link, align 8
  br label %519

; <label>:519                                     ; preds = %662, %497
  %520 = load %union.rec*, %union.rec** %link, align 8
  %521 = bitcast %union.rec* %520 to %struct.word_type*
  %522 = getelementptr inbounds %struct.word_type, %struct.word_type* %521, i32 0, i32 0
  %523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %522, i32 0, i64 1
  %524 = getelementptr inbounds %struct.LIST, %struct.LIST* %523, i32 0, i32 0
  %525 = load %union.rec*, %union.rec** %524, align 8
  store %union.rec* %525, %union.rec** %y, align 8
  br label %526

; <label>:526                                     ; preds = %536, %519
  %527 = load %union.rec*, %union.rec** %y, align 8
  %528 = bitcast %union.rec* %527 to %struct.word_type*
  %529 = getelementptr inbounds %struct.word_type, %struct.word_type* %528, i32 0, i32 1
  %530 = bitcast %union.FIRST_UNION* %529 to %struct.anon*
  %531 = getelementptr inbounds %struct.anon, %struct.anon* %530, i32 0, i32 0
  %532 = load i8, i8* %531, align 1
  %533 = zext i8 %532 to i32
  %534 = icmp eq i32 %533, 0
  br i1 %534, label %535, label %543

; <label>:535                                     ; preds = %526
  br label %536

; <label>:536                                     ; preds = %535
  %537 = load %union.rec*, %union.rec** %y, align 8
  %538 = bitcast %union.rec* %537 to %struct.word_type*
  %539 = getelementptr inbounds %struct.word_type, %struct.word_type* %538, i32 0, i32 0
  %540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %539, i32 0, i64 1
  %541 = getelementptr inbounds %struct.LIST, %struct.LIST* %540, i32 0, i32 0
  %542 = load %union.rec*, %union.rec** %541, align 8
  store %union.rec* %542, %union.rec** %y, align 8
  br label %526

; <label>:543                                     ; preds = %526
  %544 = load %union.rec*, %union.rec** %y, align 8
  %545 = bitcast %union.rec* %544 to %struct.word_type*
  %546 = getelementptr inbounds %struct.word_type, %struct.word_type* %545, i32 0, i32 1
  %547 = bitcast %union.FIRST_UNION* %546 to %struct.anon*
  %548 = getelementptr inbounds %struct.anon, %struct.anon* %547, i32 0, i32 0
  %549 = load i8, i8* %548, align 1
  %550 = zext i8 %549 to i32
  %551 = icmp ne i32 %550, 1
  br i1 %551, label %555, label %552

; <label>:552                                     ; preds = %543
  %553 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %554 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %553, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.24, i32 0, i32 0))
  br label %555

; <label>:555                                     ; preds = %552, %543
  %556 = load %union.rec*, %union.rec** %y, align 8
  %557 = bitcast %union.rec* %556 to %struct.word_type*
  %558 = getelementptr inbounds %struct.word_type, %struct.word_type* %557, i32 0, i32 3
  %559 = bitcast %union.THIRD_UNION* %558 to %struct.anon.6*
  %560 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %559, i32 0, i32 0
  %561 = getelementptr inbounds [2 x i32], [2 x i32]* %560, i32 0, i64 1
  %562 = load i32, i32* %561, align 4
  %563 = icmp ne i32 %562, 0
  br i1 %563, label %603, label %564

; <label>:564                                     ; preds = %555
  %565 = load %union.rec*, %union.rec** %y, align 8
  %566 = bitcast %union.rec* %565 to %struct.word_type*
  %567 = getelementptr inbounds %struct.word_type, %struct.word_type* %566, i32 0, i32 3
  %568 = bitcast %union.THIRD_UNION* %567 to %struct.anon.6*
  %569 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %568, i32 0, i32 0
  %570 = getelementptr inbounds [2 x i32], [2 x i32]* %569, i32 0, i64 0
  %571 = load i32, i32* %570, align 4
  %572 = load %union.rec*, %union.rec** %y, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 3
  %575 = bitcast %union.THIRD_UNION* %574 to %struct.anon.6*
  %576 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %575, i32 0, i32 1
  %577 = getelementptr inbounds [2 x i32], [2 x i32]* %576, i32 0, i64 0
  %578 = load i32, i32* %577, align 4
  %579 = add nsw i32 %571, %578
  %580 = load i32, i32* %msize, align 4
  %581 = icmp slt i32 %579, %580
  br i1 %581, label %585, label %582

; <label>:582                                     ; preds = %564
  %583 = load %union.rec*, %union.rec** %my, align 8
  %584 = icmp eq %union.rec* %583, null
  br i1 %584, label %585, label %603

; <label>:585                                     ; preds = %582, %564
  %586 = load %union.rec*, %union.rec** %y, align 8
  %587 = bitcast %union.rec* %586 to %struct.word_type*
  %588 = getelementptr inbounds %struct.word_type, %struct.word_type* %587, i32 0, i32 3
  %589 = bitcast %union.THIRD_UNION* %588 to %struct.anon.6*
  %590 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %589, i32 0, i32 0
  %591 = getelementptr inbounds [2 x i32], [2 x i32]* %590, i32 0, i64 0
  %592 = load i32, i32* %591, align 4
  %593 = load %union.rec*, %union.rec** %y, align 8
  %594 = bitcast %union.rec* %593 to %struct.word_type*
  %595 = getelementptr inbounds %struct.word_type, %struct.word_type* %594, i32 0, i32 3
  %596 = bitcast %union.THIRD_UNION* %595 to %struct.anon.6*
  %597 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %596, i32 0, i32 1
  %598 = getelementptr inbounds [2 x i32], [2 x i32]* %597, i32 0, i64 0
  %599 = load i32, i32* %598, align 4
  %600 = add nsw i32 %592, %599
  store i32 %600, i32* %msize, align 4
  %601 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %601, %union.rec** %my, align 8
  %602 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %602, %union.rec** %mlink, align 8
  store i32 0, i32* %ratm, align 4
  br label %603

; <label>:603                                     ; preds = %585, %582, %555
  %604 = load %union.rec*, %union.rec** %link, align 8
  %605 = bitcast %union.rec* %604 to %struct.word_type*
  %606 = getelementptr inbounds %struct.word_type, %struct.word_type* %605, i32 0, i32 0
  %607 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %606, i32 0, i64 0
  %608 = getelementptr inbounds %struct.LIST, %struct.LIST* %607, i32 0, i32 1
  %609 = load %union.rec*, %union.rec** %608, align 8
  store %union.rec* %609, %union.rec** %link, align 8
  %610 = load %union.rec*, %union.rec** %link, align 8
  %611 = load %union.rec*, %union.rec** %1, align 8
  %612 = icmp eq %union.rec* %610, %611
  br i1 %612, label %613, label %614

; <label>:613                                     ; preds = %603
  br label %669

; <label>:614                                     ; preds = %603
  %615 = load %union.rec*, %union.rec** %link, align 8
  %616 = bitcast %union.rec* %615 to %struct.word_type*
  %617 = getelementptr inbounds %struct.word_type, %struct.word_type* %616, i32 0, i32 0
  %618 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %617, i32 0, i64 1
  %619 = getelementptr inbounds %struct.LIST, %struct.LIST* %618, i32 0, i32 0
  %620 = load %union.rec*, %union.rec** %619, align 8
  store %union.rec* %620, %union.rec** %g, align 8
  br label %621

; <label>:621                                     ; preds = %631, %614
  %622 = load %union.rec*, %union.rec** %g, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 1
  %625 = bitcast %union.FIRST_UNION* %624 to %struct.anon*
  %626 = getelementptr inbounds %struct.anon, %struct.anon* %625, i32 0, i32 0
  %627 = load i8, i8* %626, align 1
  %628 = zext i8 %627 to i32
  %629 = icmp eq i32 %628, 0
  br i1 %629, label %630, label %638

; <label>:630                                     ; preds = %621
  br label %631

; <label>:631                                     ; preds = %630
  %632 = load %union.rec*, %union.rec** %g, align 8
  %633 = bitcast %union.rec* %632 to %struct.word_type*
  %634 = getelementptr inbounds %struct.word_type, %struct.word_type* %633, i32 0, i32 0
  %635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %634, i32 0, i64 1
  %636 = getelementptr inbounds %struct.LIST, %struct.LIST* %635, i32 0, i32 0
  %637 = load %union.rec*, %union.rec** %636, align 8
  store %union.rec* %637, %union.rec** %g, align 8
  br label %621

; <label>:638                                     ; preds = %621
  %639 = load %union.rec*, %union.rec** %g, align 8
  %640 = bitcast %union.rec* %639 to %struct.word_type*
  %641 = getelementptr inbounds %struct.word_type, %struct.word_type* %640, i32 0, i32 1
  %642 = bitcast %union.FIRST_UNION* %641 to %struct.anon*
  %643 = getelementptr inbounds %struct.anon, %struct.anon* %642, i32 0, i32 0
  %644 = load i8, i8* %643, align 1
  %645 = zext i8 %644 to i32
  %646 = icmp eq i32 %645, 1
  br i1 %646, label %650, label %647

; <label>:647                                     ; preds = %638
  %648 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %649 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %648, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.25, i32 0, i32 0))
  br label %650

; <label>:650                                     ; preds = %647, %638
  %651 = load %union.rec*, %union.rec** %g, align 8
  %652 = bitcast %union.rec* %651 to %struct.gapobj_type*
  %653 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %652, i32 0, i32 3
  %654 = bitcast %struct.GAP* %653 to i16*
  %655 = load i16, i16* %654, align 4
  %656 = lshr i16 %655, 8
  %657 = and i16 %656, 1
  %658 = zext i16 %657 to i32
  %659 = icmp ne i32 %658, 0
  br i1 %659, label %660, label %661

; <label>:660                                     ; preds = %650
  store i32 1, i32* %ratm, align 4
  br label %661

; <label>:661                                     ; preds = %660, %650
  br label %662

; <label>:662                                     ; preds = %661
  %663 = load %union.rec*, %union.rec** %link, align 8
  %664 = bitcast %union.rec* %663 to %struct.word_type*
  %665 = getelementptr inbounds %struct.word_type, %struct.word_type* %664, i32 0, i32 0
  %666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %665, i32 0, i64 0
  %667 = getelementptr inbounds %struct.LIST, %struct.LIST* %666, i32 0, i32 1
  %668 = load %union.rec*, %union.rec** %667, align 8
  store %union.rec* %668, %union.rec** %link, align 8
  br label %519

; <label>:669                                     ; preds = %613
  %670 = load %union.rec*, %union.rec** %mlink, align 8
  %671 = load i32, i32* %ratm, align 4
  call void @SetNeighbours(%union.rec* %670, i32 %671, %union.rec** %pg, %union.rec** %prec_def, %union.rec** %sg, %union.rec** %succ_def, i32* %mside)
  %672 = load %union.rec*, %union.rec** %pg, align 8
  %673 = icmp eq %union.rec* %672, null
  br i1 %673, label %674, label %675

; <label>:674                                     ; preds = %669
  br label %699

; <label>:675                                     ; preds = %669
  %676 = load %union.rec*, %union.rec** %prec_def, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 3
  %679 = bitcast %union.THIRD_UNION* %678 to %struct.anon.6*
  %680 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %679, i32 0, i32 0
  %681 = getelementptr inbounds [2 x i32], [2 x i32]* %680, i32 0, i64 1
  %682 = load i32, i32* %681, align 4
  %683 = icmp ne i32 %682, 0
  br i1 %683, label %684, label %692

; <label>:684                                     ; preds = %675
  %685 = load %union.rec*, %union.rec** %prec_def, align 8
  %686 = bitcast %union.rec* %685 to %struct.word_type*
  %687 = getelementptr inbounds %struct.word_type, %struct.word_type* %686, i32 0, i32 3
  %688 = bitcast %union.THIRD_UNION* %687 to %struct.anon.6*
  %689 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %688, i32 0, i32 1
  %690 = getelementptr inbounds [2 x i32], [2 x i32]* %689, i32 0, i64 0
  %691 = load i32, i32* %690, align 4
  br label %693

; <label>:692                                     ; preds = %675
  br label %693

; <label>:693                                     ; preds = %692, %684
  %694 = phi i32 [ %691, %684 ], [ 0, %692 ]
  %695 = load %union.rec*, %union.rec** %pg, align 8
  %696 = bitcast %union.rec* %695 to %struct.gapobj_type*
  %697 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %696, i32 0, i32 3
  %698 = call i32 @ExtraGap(i32 %694, i32 0, %struct.GAP* %697, i32 151)
  br label %699

; <label>:699                                     ; preds = %693, %674
  %700 = phi i32 [ 0, %674 ], [ %698, %693 ]
  store i32 %700, i32* %pd_extra, align 4
  %701 = load %union.rec*, %union.rec** %sg, align 8
  %702 = icmp eq %union.rec* %701, null
  br i1 %702, label %703, label %704

; <label>:703                                     ; preds = %699
  br label %728

; <label>:704                                     ; preds = %699
  %705 = load %union.rec*, %union.rec** %succ_def, align 8
  %706 = bitcast %union.rec* %705 to %struct.word_type*
  %707 = getelementptr inbounds %struct.word_type, %struct.word_type* %706, i32 0, i32 3
  %708 = bitcast %union.THIRD_UNION* %707 to %struct.anon.6*
  %709 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %708, i32 0, i32 0
  %710 = getelementptr inbounds [2 x i32], [2 x i32]* %709, i32 0, i64 1
  %711 = load i32, i32* %710, align 4
  %712 = icmp ne i32 %711, 0
  br i1 %712, label %713, label %721

; <label>:713                                     ; preds = %704
  %714 = load %union.rec*, %union.rec** %succ_def, align 8
  %715 = bitcast %union.rec* %714 to %struct.word_type*
  %716 = getelementptr inbounds %struct.word_type, %struct.word_type* %715, i32 0, i32 3
  %717 = bitcast %union.THIRD_UNION* %716 to %struct.anon.6*
  %718 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %717, i32 0, i32 0
  %719 = getelementptr inbounds [2 x i32], [2 x i32]* %718, i32 0, i64 0
  %720 = load i32, i32* %719, align 4
  br label %722

; <label>:721                                     ; preds = %704
  br label %722

; <label>:722                                     ; preds = %721, %713
  %723 = phi i32 [ %720, %713 ], [ 0, %721 ]
  %724 = load %union.rec*, %union.rec** %sg, align 8
  %725 = bitcast %union.rec* %724 to %struct.gapobj_type*
  %726 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %725, i32 0, i32 3
  %727 = call i32 @ExtraGap(i32 0, i32 %723, %struct.GAP* %726, i32 153)
  br label %728

; <label>:728                                     ; preds = %722, %703
  %729 = phi i32 [ 0, %703 ], [ %727, %722 ]
  store i32 %729, i32* %sd_extra, align 4
  %730 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %731 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %730, i32 0, i32 1
  %732 = load i32, i32* %731, align 4
  %733 = load i32, i32* %bwidth, align 4
  %734 = sub nsw i32 %732, %733
  %735 = load i32, i32* %fwidth, align 4
  %736 = sub nsw i32 %734, %735
  %737 = load i32, i32* %bcount, align 4
  %738 = load i32, i32* %fcount, align 4
  %739 = add nsw i32 %737, %738
  %740 = sdiv i32 %736, %739
  store i32 %740, i32* %av_colsize, align 4
  %741 = load i32, i32* %mside, align 4
  switch i32 %741, label %1004 [
    i32 151, label %742
    i32 152, label %820
    i32 153, label %926
  ]

; <label>:742                                     ; preds = %728
  %743 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %744 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %743, i32 0, i32 0
  %745 = load i32, i32* %744, align 4
  %746 = load i32, i32* %bwidth, align 4
  %747 = load i32, i32* %av_colsize, align 4
  %748 = load i32, i32* %bcount, align 4
  %749 = mul nsw i32 %747, %748
  %750 = add nsw i32 %746, %749
  %751 = icmp slt i32 %745, %750
  br i1 %751, label %752, label %756

; <label>:752                                     ; preds = %742
  %753 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %754 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %753, i32 0, i32 0
  %755 = load i32, i32* %754, align 4
  br label %762

; <label>:756                                     ; preds = %742
  %757 = load i32, i32* %bwidth, align 4
  %758 = load i32, i32* %av_colsize, align 4
  %759 = load i32, i32* %bcount, align 4
  %760 = mul nsw i32 %758, %759
  %761 = add nsw i32 %757, %760
  br label %762

; <label>:762                                     ; preds = %756, %752
  %763 = phi i32 [ %755, %752 ], [ %761, %756 ]
  store i32 %763, i32* %back_max, align 4
  %764 = load i32, i32* %back_max, align 4
  %765 = load i32, i32* %bwidth, align 4
  %766 = sub nsw i32 %764, %765
  %767 = load i32, i32* %bcount, align 4
  %768 = sdiv i32 %766, %767
  store i32 %768, i32* %col_size, align 4
  %769 = load i32, i32* %col_size, align 4
  %770 = load i32, i32* %prev_col_size, align 4
  %771 = icmp sgt i32 %769, %770
  br i1 %771, label %772, label %779

; <label>:772                                     ; preds = %762
  %773 = load i32, i32* %col_size, align 4
  %774 = load i32, i32* %prev_col_size, align 4
  %775 = sub nsw i32 %773, %774
  %776 = icmp slt i32 %775, 20
  br i1 %776, label %777, label %779

; <label>:777                                     ; preds = %772
  %778 = load i32, i32* %prev_col_size, align 4
  store i32 %778, i32* %col_size, align 4
  br label %779

; <label>:779                                     ; preds = %777, %772, %762
  %780 = load i32, i32* %col_size, align 4
  %781 = load i32, i32* %pd_extra, align 4
  %782 = add nsw i32 %780, %781
  %783 = icmp slt i32 8388607, %782
  br i1 %783, label %784, label %785

; <label>:784                                     ; preds = %779
  br label %789

; <label>:785                                     ; preds = %779
  %786 = load i32, i32* %col_size, align 4
  %787 = load i32, i32* %pd_extra, align 4
  %788 = add nsw i32 %786, %787
  br label %789

; <label>:789                                     ; preds = %785, %784
  %790 = phi i32 [ 8388607, %784 ], [ %788, %785 ]
  %791 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 0
  store i32 %790, i32* %791, align 4
  %792 = load i32, i32* %col_size, align 4
  %793 = load i32, i32* %pd_extra, align 4
  %794 = add nsw i32 %792, %793
  %795 = load i32, i32* %sd_extra, align 4
  %796 = add nsw i32 %794, %795
  %797 = icmp slt i32 8388607, %796
  br i1 %797, label %798, label %799

; <label>:798                                     ; preds = %789
  br label %805

; <label>:799                                     ; preds = %789
  %800 = load i32, i32* %col_size, align 4
  %801 = load i32, i32* %pd_extra, align 4
  %802 = add nsw i32 %800, %801
  %803 = load i32, i32* %sd_extra, align 4
  %804 = add nsw i32 %802, %803
  br label %805

; <label>:805                                     ; preds = %799, %798
  %806 = phi i32 [ 8388607, %798 ], [ %804, %799 ]
  %807 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 1
  store i32 %806, i32* %807, align 4
  %808 = load i32, i32* %col_size, align 4
  %809 = load i32, i32* %sd_extra, align 4
  %810 = add nsw i32 %808, %809
  %811 = icmp slt i32 8388607, %810
  br i1 %811, label %812, label %813

; <label>:812                                     ; preds = %805
  br label %817

; <label>:813                                     ; preds = %805
  %814 = load i32, i32* %col_size, align 4
  %815 = load i32, i32* %sd_extra, align 4
  %816 = add nsw i32 %814, %815
  br label %817

; <label>:817                                     ; preds = %813, %812
  %818 = phi i32 [ 8388607, %812 ], [ %816, %813 ]
  %819 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 2
  store i32 %818, i32* %819, align 4
  br label %1007

; <label>:820                                     ; preds = %728
  %821 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %822 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %821, i32 0, i32 2
  %823 = load i32, i32* %822, align 4
  %824 = load i32, i32* %fwidth, align 4
  %825 = load i32, i32* %av_colsize, align 4
  %826 = load i32, i32* %fcount, align 4
  %827 = mul nsw i32 %825, %826
  %828 = add nsw i32 %824, %827
  %829 = icmp slt i32 %823, %828
  br i1 %829, label %830, label %834

; <label>:830                                     ; preds = %820
  %831 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %832 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %831, i32 0, i32 2
  %833 = load i32, i32* %832, align 4
  br label %840

; <label>:834                                     ; preds = %820
  %835 = load i32, i32* %fwidth, align 4
  %836 = load i32, i32* %av_colsize, align 4
  %837 = load i32, i32* %fcount, align 4
  %838 = mul nsw i32 %836, %837
  %839 = add nsw i32 %835, %838
  br label %840

; <label>:840                                     ; preds = %834, %830
  %841 = phi i32 [ %833, %830 ], [ %839, %834 ]
  store i32 %841, i32* %fwd_max, align 4
  %842 = load i32, i32* %fwd_max, align 4
  %843 = load i32, i32* %fwidth, align 4
  %844 = sub nsw i32 %842, %843
  %845 = load i32, i32* %fcount, align 4
  %846 = sdiv i32 %844, %845
  store i32 %846, i32* %col_size, align 4
  %847 = load i32, i32* %col_size, align 4
  %848 = load i32, i32* %prev_col_size, align 4
  %849 = icmp sgt i32 %847, %848
  br i1 %849, label %850, label %857

; <label>:850                                     ; preds = %840
  %851 = load i32, i32* %col_size, align 4
  %852 = load i32, i32* %prev_col_size, align 4
  %853 = sub nsw i32 %851, %852
  %854 = icmp slt i32 %853, 20
  br i1 %854, label %855, label %857

; <label>:855                                     ; preds = %850
  %856 = load i32, i32* %prev_col_size, align 4
  store i32 %856, i32* %col_size, align 4
  br label %857

; <label>:857                                     ; preds = %855, %850, %840
  %858 = load i32, i32* %pd_extra, align 4
  %859 = load %union.rec*, %union.rec** %my, align 8
  %860 = bitcast %union.rec* %859 to %struct.word_type*
  %861 = getelementptr inbounds %struct.word_type, %struct.word_type* %860, i32 0, i32 3
  %862 = bitcast %union.THIRD_UNION* %861 to %struct.anon.6*
  %863 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %862, i32 0, i32 0
  %864 = getelementptr inbounds [2 x i32], [2 x i32]* %863, i32 0, i64 0
  %865 = load i32, i32* %864, align 4
  %866 = add nsw i32 %858, %865
  %867 = icmp slt i32 8388607, %866
  br i1 %867, label %868, label %869

; <label>:868                                     ; preds = %857
  br label %879

; <label>:869                                     ; preds = %857
  %870 = load i32, i32* %pd_extra, align 4
  %871 = load %union.rec*, %union.rec** %my, align 8
  %872 = bitcast %union.rec* %871 to %struct.word_type*
  %873 = getelementptr inbounds %struct.word_type, %struct.word_type* %872, i32 0, i32 3
  %874 = bitcast %union.THIRD_UNION* %873 to %struct.anon.6*
  %875 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %874, i32 0, i32 0
  %876 = getelementptr inbounds [2 x i32], [2 x i32]* %875, i32 0, i64 0
  %877 = load i32, i32* %876, align 4
  %878 = add nsw i32 %870, %877
  br label %879

; <label>:879                                     ; preds = %869, %868
  %880 = phi i32 [ 8388607, %868 ], [ %878, %869 ]
  %881 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 0
  store i32 %880, i32* %881, align 4
  %882 = load i32, i32* %pd_extra, align 4
  %883 = load %union.rec*, %union.rec** %my, align 8
  %884 = bitcast %union.rec* %883 to %struct.word_type*
  %885 = getelementptr inbounds %struct.word_type, %struct.word_type* %884, i32 0, i32 3
  %886 = bitcast %union.THIRD_UNION* %885 to %struct.anon.6*
  %887 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %886, i32 0, i32 0
  %888 = getelementptr inbounds [2 x i32], [2 x i32]* %887, i32 0, i64 0
  %889 = load i32, i32* %888, align 4
  %890 = add nsw i32 %882, %889
  %891 = load i32, i32* %col_size, align 4
  %892 = add nsw i32 %890, %891
  %893 = load i32, i32* %sd_extra, align 4
  %894 = add nsw i32 %892, %893
  %895 = icmp slt i32 8388607, %894
  br i1 %895, label %896, label %897

; <label>:896                                     ; preds = %879
  br label %911

; <label>:897                                     ; preds = %879
  %898 = load i32, i32* %pd_extra, align 4
  %899 = load %union.rec*, %union.rec** %my, align 8
  %900 = bitcast %union.rec* %899 to %struct.word_type*
  %901 = getelementptr inbounds %struct.word_type, %struct.word_type* %900, i32 0, i32 3
  %902 = bitcast %union.THIRD_UNION* %901 to %struct.anon.6*
  %903 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %902, i32 0, i32 0
  %904 = getelementptr inbounds [2 x i32], [2 x i32]* %903, i32 0, i64 0
  %905 = load i32, i32* %904, align 4
  %906 = add nsw i32 %898, %905
  %907 = load i32, i32* %col_size, align 4
  %908 = add nsw i32 %906, %907
  %909 = load i32, i32* %sd_extra, align 4
  %910 = add nsw i32 %908, %909
  br label %911

; <label>:911                                     ; preds = %897, %896
  %912 = phi i32 [ 8388607, %896 ], [ %910, %897 ]
  %913 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 1
  store i32 %912, i32* %913, align 4
  %914 = load i32, i32* %col_size, align 4
  %915 = load i32, i32* %sd_extra, align 4
  %916 = add nsw i32 %914, %915
  %917 = icmp slt i32 8388607, %916
  br i1 %917, label %918, label %919

; <label>:918                                     ; preds = %911
  br label %923

; <label>:919                                     ; preds = %911
  %920 = load i32, i32* %col_size, align 4
  %921 = load i32, i32* %sd_extra, align 4
  %922 = add nsw i32 %920, %921
  br label %923

; <label>:923                                     ; preds = %919, %918
  %924 = phi i32 [ 8388607, %918 ], [ %922, %919 ]
  %925 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 2
  store i32 %924, i32* %925, align 4
  br label %1007

; <label>:926                                     ; preds = %728
  %927 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %928 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %927, i32 0, i32 2
  %929 = load i32, i32* %928, align 4
  %930 = load i32, i32* %fwidth, align 4
  %931 = load i32, i32* %av_colsize, align 4
  %932 = load i32, i32* %fcount, align 4
  %933 = mul nsw i32 %931, %932
  %934 = add nsw i32 %930, %933
  %935 = icmp slt i32 %929, %934
  br i1 %935, label %936, label %940

; <label>:936                                     ; preds = %926
  %937 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %938 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %937, i32 0, i32 2
  %939 = load i32, i32* %938, align 4
  br label %946

; <label>:940                                     ; preds = %926
  %941 = load i32, i32* %fwidth, align 4
  %942 = load i32, i32* %av_colsize, align 4
  %943 = load i32, i32* %fcount, align 4
  %944 = mul nsw i32 %942, %943
  %945 = add nsw i32 %941, %944
  br label %946

; <label>:946                                     ; preds = %940, %936
  %947 = phi i32 [ %939, %936 ], [ %945, %940 ]
  store i32 %947, i32* %fwd_max, align 4
  %948 = load i32, i32* %fwd_max, align 4
  %949 = load i32, i32* %fwidth, align 4
  %950 = sub nsw i32 %948, %949
  %951 = load i32, i32* %fcount, align 4
  %952 = sdiv i32 %950, %951
  store i32 %952, i32* %col_size, align 4
  %953 = load i32, i32* %col_size, align 4
  %954 = load i32, i32* %prev_col_size, align 4
  %955 = icmp sgt i32 %953, %954
  br i1 %955, label %956, label %963

; <label>:956                                     ; preds = %946
  %957 = load i32, i32* %col_size, align 4
  %958 = load i32, i32* %prev_col_size, align 4
  %959 = sub nsw i32 %957, %958
  %960 = icmp slt i32 %959, 20
  br i1 %960, label %961, label %963

; <label>:961                                     ; preds = %956
  %962 = load i32, i32* %prev_col_size, align 4
  store i32 %962, i32* %col_size, align 4
  br label %963

; <label>:963                                     ; preds = %961, %956, %946
  %964 = load i32, i32* %col_size, align 4
  %965 = load i32, i32* %pd_extra, align 4
  %966 = add nsw i32 %964, %965
  %967 = icmp slt i32 8388607, %966
  br i1 %967, label %968, label %969

; <label>:968                                     ; preds = %963
  br label %973

; <label>:969                                     ; preds = %963
  %970 = load i32, i32* %col_size, align 4
  %971 = load i32, i32* %pd_extra, align 4
  %972 = add nsw i32 %970, %971
  br label %973

; <label>:973                                     ; preds = %969, %968
  %974 = phi i32 [ 8388607, %968 ], [ %972, %969 ]
  %975 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 0
  store i32 %974, i32* %975, align 4
  %976 = load i32, i32* %col_size, align 4
  %977 = load i32, i32* %pd_extra, align 4
  %978 = add nsw i32 %976, %977
  %979 = load i32, i32* %sd_extra, align 4
  %980 = add nsw i32 %978, %979
  %981 = icmp slt i32 8388607, %980
  br i1 %981, label %982, label %983

; <label>:982                                     ; preds = %973
  br label %989

; <label>:983                                     ; preds = %973
  %984 = load i32, i32* %col_size, align 4
  %985 = load i32, i32* %pd_extra, align 4
  %986 = add nsw i32 %984, %985
  %987 = load i32, i32* %sd_extra, align 4
  %988 = add nsw i32 %986, %987
  br label %989

; <label>:989                                     ; preds = %983, %982
  %990 = phi i32 [ 8388607, %982 ], [ %988, %983 ]
  %991 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 1
  store i32 %990, i32* %991, align 4
  %992 = load i32, i32* %col_size, align 4
  %993 = load i32, i32* %sd_extra, align 4
  %994 = add nsw i32 %992, %993
  %995 = icmp slt i32 8388607, %994
  br i1 %995, label %996, label %997

; <label>:996                                     ; preds = %989
  br label %1001

; <label>:997                                     ; preds = %989
  %998 = load i32, i32* %col_size, align 4
  %999 = load i32, i32* %sd_extra, align 4
  %1000 = add nsw i32 %998, %999
  br label %1001

; <label>:1001                                    ; preds = %997, %996
  %1002 = phi i32 [ 8388607, %996 ], [ %1000, %997 ]
  %1003 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %mc, i32 0, i32 2
  store i32 %1002, i32* %1003, align 4
  br label %1007

; <label>:1004                                    ; preds = %728
  %1005 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1006 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %1005, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  br label %1007

; <label>:1007                                    ; preds = %1004, %1001, %923, %817
  %1008 = load i32, i32* %col_size, align 4
  store i32 %1008, i32* %prev_col_size, align 4
  %1009 = load %union.rec*, %union.rec** %my, align 8
  %1010 = call %union.rec* @BreakObject(%union.rec* %1009, %struct.CONSTRAINT* %mc)
  store %union.rec* %1010, %union.rec** %my, align 8
  %1011 = load %union.rec*, %union.rec** %my, align 8
  %1012 = bitcast %union.rec* %1011 to %struct.word_type*
  %1013 = getelementptr inbounds %struct.word_type, %struct.word_type* %1012, i32 0, i32 3
  %1014 = bitcast %union.THIRD_UNION* %1013 to %struct.anon.6*
  %1015 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1014, i32 0, i32 0
  %1016 = getelementptr inbounds [2 x i32], [2 x i32]* %1015, i32 0, i64 1
  store i32 1, i32* %1016, align 4
  %1017 = load %union.rec*, %union.rec** %pg, align 8
  %1018 = icmp ne %union.rec* %1017, null
  br i1 %1018, label %1019, label %1064

; <label>:1019                                    ; preds = %1007
  %1020 = load %union.rec*, %union.rec** %prec_def, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 3
  %1023 = bitcast %union.THIRD_UNION* %1022 to %struct.anon.6*
  %1024 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1023, i32 0, i32 0
  %1025 = getelementptr inbounds [2 x i32], [2 x i32]* %1024, i32 0, i64 1
  %1026 = load i32, i32* %1025, align 4
  %1027 = icmp ne i32 %1026, 0
  br i1 %1027, label %1028, label %1036

; <label>:1028                                    ; preds = %1019
  %1029 = load %union.rec*, %union.rec** %prec_def, align 8
  %1030 = bitcast %union.rec* %1029 to %struct.word_type*
  %1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %1030, i32 0, i32 3
  %1032 = bitcast %union.THIRD_UNION* %1031 to %struct.anon.6*
  %1033 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1032, i32 0, i32 1
  %1034 = getelementptr inbounds [2 x i32], [2 x i32]* %1033, i32 0, i64 0
  %1035 = load i32, i32* %1034, align 4
  br label %1037

; <label>:1036                                    ; preds = %1019
  br label %1037

; <label>:1037                                    ; preds = %1036, %1028
  %1038 = phi i32 [ %1035, %1028 ], [ 0, %1036 ]
  store i32 %1038, i32* %tmp, align 4
  %1039 = load i32, i32* %tmp, align 4
  %1040 = load %union.rec*, %union.rec** %my, align 8
  %1041 = bitcast %union.rec* %1040 to %struct.word_type*
  %1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %1041, i32 0, i32 3
  %1043 = bitcast %union.THIRD_UNION* %1042 to %struct.anon.6*
  %1044 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1043, i32 0, i32 0
  %1045 = getelementptr inbounds [2 x i32], [2 x i32]* %1044, i32 0, i64 0
  %1046 = load i32, i32* %1045, align 4
  %1047 = load %union.rec*, %union.rec** %my, align 8
  %1048 = bitcast %union.rec* %1047 to %struct.word_type*
  %1049 = getelementptr inbounds %struct.word_type, %struct.word_type* %1048, i32 0, i32 3
  %1050 = bitcast %union.THIRD_UNION* %1049 to %struct.anon.6*
  %1051 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1050, i32 0, i32 1
  %1052 = getelementptr inbounds [2 x i32], [2 x i32]* %1051, i32 0, i64 0
  %1053 = load i32, i32* %1052, align 4
  %1054 = load %union.rec*, %union.rec** %pg, align 8
  %1055 = bitcast %union.rec* %1054 to %struct.gapobj_type*
  %1056 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1055, i32 0, i32 3
  %1057 = call i32 @MinGap(i32 %1039, i32 %1046, i32 %1053, %struct.GAP* %1056)
  %1058 = load i32, i32* %tmp, align 4
  %1059 = load %union.rec*, %union.rec** %pg, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.gapobj_type*
  %1061 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1060, i32 0, i32 3
  %1062 = call i32 @MinGap(i32 %1058, i32 0, i32 0, %struct.GAP* %1061)
  %1063 = sub nsw i32 %1057, %1062
  store i32 %1063, i32* %beffect, align 4
  br label %1072

; <label>:1064                                    ; preds = %1007
  %1065 = load %union.rec*, %union.rec** %my, align 8
  %1066 = bitcast %union.rec* %1065 to %struct.word_type*
  %1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %1066, i32 0, i32 3
  %1068 = bitcast %union.THIRD_UNION* %1067 to %struct.anon.6*
  %1069 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1068, i32 0, i32 0
  %1070 = getelementptr inbounds [2 x i32], [2 x i32]* %1069, i32 0, i64 0
  %1071 = load i32, i32* %1070, align 4
  store i32 %1071, i32* %beffect, align 4
  br label %1072

; <label>:1072                                    ; preds = %1064, %1037
  %1073 = load %union.rec*, %union.rec** %sg, align 8
  %1074 = icmp ne %union.rec* %1073, null
  br i1 %1074, label %1075, label %1134

; <label>:1075                                    ; preds = %1072
  %1076 = load %union.rec*, %union.rec** %succ_def, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.word_type*
  %1078 = getelementptr inbounds %struct.word_type, %struct.word_type* %1077, i32 0, i32 3
  %1079 = bitcast %union.THIRD_UNION* %1078 to %struct.anon.6*
  %1080 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1079, i32 0, i32 0
  %1081 = getelementptr inbounds [2 x i32], [2 x i32]* %1080, i32 0, i64 1
  %1082 = load i32, i32* %1081, align 4
  %1083 = icmp ne i32 %1082, 0
  br i1 %1083, label %1084, label %1092

; <label>:1084                                    ; preds = %1075
  %1085 = load %union.rec*, %union.rec** %succ_def, align 8
  %1086 = bitcast %union.rec* %1085 to %struct.word_type*
  %1087 = getelementptr inbounds %struct.word_type, %struct.word_type* %1086, i32 0, i32 3
  %1088 = bitcast %union.THIRD_UNION* %1087 to %struct.anon.6*
  %1089 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1088, i32 0, i32 0
  %1090 = getelementptr inbounds [2 x i32], [2 x i32]* %1089, i32 0, i64 0
  %1091 = load i32, i32* %1090, align 4
  br label %1093

; <label>:1092                                    ; preds = %1075
  br label %1093

; <label>:1093                                    ; preds = %1092, %1084
  %1094 = phi i32 [ %1091, %1084 ], [ 0, %1092 ]
  store i32 %1094, i32* %tmp, align 4
  %1095 = load %union.rec*, %union.rec** %succ_def, align 8
  %1096 = bitcast %union.rec* %1095 to %struct.word_type*
  %1097 = getelementptr inbounds %struct.word_type, %struct.word_type* %1096, i32 0, i32 3
  %1098 = bitcast %union.THIRD_UNION* %1097 to %struct.anon.6*
  %1099 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1098, i32 0, i32 0
  %1100 = getelementptr inbounds [2 x i32], [2 x i32]* %1099, i32 0, i64 1
  %1101 = load i32, i32* %1100, align 4
  %1102 = icmp ne i32 %1101, 0
  br i1 %1102, label %1103, label %1111

; <label>:1103                                    ; preds = %1093
  %1104 = load %union.rec*, %union.rec** %succ_def, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 3
  %1107 = bitcast %union.THIRD_UNION* %1106 to %struct.anon.6*
  %1108 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1107, i32 0, i32 1
  %1109 = getelementptr inbounds [2 x i32], [2 x i32]* %1108, i32 0, i64 0
  %1110 = load i32, i32* %1109, align 4
  br label %1112

; <label>:1111                                    ; preds = %1093
  br label %1112

; <label>:1112                                    ; preds = %1111, %1103
  %1113 = phi i32 [ %1110, %1103 ], [ 0, %1111 ]
  store i32 %1113, i32* %tmp2, align 4
  %1114 = load %union.rec*, %union.rec** %my, align 8
  %1115 = bitcast %union.rec* %1114 to %struct.word_type*
  %1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %1115, i32 0, i32 3
  %1117 = bitcast %union.THIRD_UNION* %1116 to %struct.anon.6*
  %1118 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1117, i32 0, i32 1
  %1119 = getelementptr inbounds [2 x i32], [2 x i32]* %1118, i32 0, i64 0
  %1120 = load i32, i32* %1119, align 4
  %1121 = load i32, i32* %tmp, align 4
  %1122 = load i32, i32* %tmp2, align 4
  %1123 = load %union.rec*, %union.rec** %sg, align 8
  %1124 = bitcast %union.rec* %1123 to %struct.gapobj_type*
  %1125 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1124, i32 0, i32 3
  %1126 = call i32 @MinGap(i32 %1120, i32 %1121, i32 %1122, %struct.GAP* %1125)
  %1127 = load i32, i32* %tmp, align 4
  %1128 = load i32, i32* %tmp2, align 4
  %1129 = load %union.rec*, %union.rec** %sg, align 8
  %1130 = bitcast %union.rec* %1129 to %struct.gapobj_type*
  %1131 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1130, i32 0, i32 3
  %1132 = call i32 @MinGap(i32 0, i32 %1127, i32 %1128, %struct.GAP* %1131)
  %1133 = sub nsw i32 %1126, %1132
  store i32 %1133, i32* %feffect, align 4
  br label %1142

; <label>:1134                                    ; preds = %1072
  %1135 = load %union.rec*, %union.rec** %my, align 8
  %1136 = bitcast %union.rec* %1135 to %struct.word_type*
  %1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %1136, i32 0, i32 3
  %1138 = bitcast %union.THIRD_UNION* %1137 to %struct.anon.6*
  %1139 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1138, i32 0, i32 1
  %1140 = getelementptr inbounds [2 x i32], [2 x i32]* %1139, i32 0, i64 0
  %1141 = load i32, i32* %1140, align 4
  store i32 %1141, i32* %feffect, align 4
  br label %1142

; <label>:1142                                    ; preds = %1134, %1112
  %1143 = load i32, i32* %mside, align 4
  switch i32 %1143, label %1169 [
    i32 151, label %1144
    i32 152, label %1152
    i32 153, label %1161
  ]

; <label>:1144                                    ; preds = %1142
  %1145 = load i32, i32* %beffect, align 4
  %1146 = load i32, i32* %feffect, align 4
  %1147 = add nsw i32 %1145, %1146
  %1148 = load i32, i32* %bwidth, align 4
  %1149 = add nsw i32 %1148, %1147
  store i32 %1149, i32* %bwidth, align 4
  %1150 = load i32, i32* %bcount, align 4
  %1151 = add nsw i32 %1150, -1
  store i32 %1151, i32* %bcount, align 4
  br label %1172

; <label>:1152                                    ; preds = %1142
  %1153 = load i32, i32* %beffect, align 4
  %1154 = load i32, i32* %bwidth, align 4
  %1155 = add nsw i32 %1154, %1153
  store i32 %1155, i32* %bwidth, align 4
  %1156 = load i32, i32* %feffect, align 4
  %1157 = load i32, i32* %fwidth, align 4
  %1158 = add nsw i32 %1157, %1156
  store i32 %1158, i32* %fwidth, align 4
  %1159 = load i32, i32* %fcount, align 4
  %1160 = add nsw i32 %1159, -1
  store i32 %1160, i32* %fcount, align 4
  br label %1172

; <label>:1161                                    ; preds = %1142
  %1162 = load i32, i32* %beffect, align 4
  %1163 = load i32, i32* %feffect, align 4
  %1164 = add nsw i32 %1162, %1163
  %1165 = load i32, i32* %fwidth, align 4
  %1166 = add nsw i32 %1165, %1164
  store i32 %1166, i32* %fwidth, align 4
  %1167 = load i32, i32* %fcount, align 4
  %1168 = add nsw i32 %1167, -1
  store i32 %1168, i32* %fcount, align 4
  br label %1172

; <label>:1169                                    ; preds = %1142
  %1170 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1171 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %1170, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.26, i32 0, i32 0))
  br label %1172

; <label>:1172                                    ; preds = %1169, %1161, %1152, %1144
  br label %468

; <label>:1173                                    ; preds = %495
  %1174 = load i32, i32* %bwidth, align 4
  %1175 = load %union.rec*, %union.rec** %1, align 8
  %1176 = bitcast %union.rec* %1175 to %struct.word_type*
  %1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %1176, i32 0, i32 3
  %1178 = bitcast %union.THIRD_UNION* %1177 to %struct.anon.6*
  %1179 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1178, i32 0, i32 0
  %1180 = getelementptr inbounds [2 x i32], [2 x i32]* %1179, i32 0, i64 0
  store i32 %1174, i32* %1180, align 4
  %1181 = load i32, i32* %fwidth, align 4
  %1182 = load %union.rec*, %union.rec** %1, align 8
  %1183 = bitcast %union.rec* %1182 to %struct.word_type*
  %1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %1183, i32 0, i32 3
  %1185 = bitcast %union.THIRD_UNION* %1184 to %struct.anon.6*
  %1186 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1185, i32 0, i32 1
  %1187 = getelementptr inbounds [2 x i32], [2 x i32]* %1186, i32 0, i64 0
  store i32 %1181, i32* %1187, align 4
  %1188 = load %union.rec*, %union.rec** %1, align 8
  ret %union.rec* %1188
}

; Function Attrs: nounwind uwtable
define internal void @BreakJoinedGroup(%union.rec* %start, %union.rec* %stop, %union.rec* %m, %struct.CONSTRAINT* %c, i32* %res_back, i32* %res_fwd) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec*, align 8
  %4 = alloca %struct.CONSTRAINT*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %b = alloca i32, align 4
  %f = alloca i32, align 4
  %sb = alloca i32, align 4
  %sf = alloca i32, align 4
  %yc = alloca %struct.CONSTRAINT, align 4
  store %union.rec* %start, %union.rec** %1, align 8
  store %union.rec* %stop, %union.rec** %2, align 8
  store %union.rec* %m, %union.rec** %3, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %4, align 8
  store i32* %res_back, i32** %5, align 8
  store i32* %res_fwd, i32** %6, align 8
  store i32 0, i32* %sf, align 4
  store i32 0, i32* %sb, align 4
  %7 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %7, %union.rec** %link, align 8
  br label %8

; <label>:8                                       ; preds = %103, %0
  %9 = load %union.rec*, %union.rec** %link, align 8
  %10 = load %union.rec*, %union.rec** %2, align 8
  %11 = bitcast %union.rec* %10 to %struct.word_type*
  %12 = getelementptr inbounds %struct.word_type, %struct.word_type* %11, i32 0, i32 0
  %13 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %12, i32 0, i64 0
  %14 = getelementptr inbounds %struct.LIST, %struct.LIST* %13, i32 0, i32 1
  %15 = load %union.rec*, %union.rec** %14, align 8
  %16 = icmp ne %union.rec* %9, %15
  br i1 %16, label %17, label %110

; <label>:17                                      ; preds = %8
  %18 = load %union.rec*, %union.rec** %link, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 0
  %21 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %20, i32 0, i64 1
  %22 = getelementptr inbounds %struct.LIST, %struct.LIST* %21, i32 0, i32 0
  %23 = load %union.rec*, %union.rec** %22, align 8
  store %union.rec* %23, %union.rec** %y, align 8
  br label %24

; <label>:24                                      ; preds = %34, %17
  %25 = load %union.rec*, %union.rec** %y, align 8
  %26 = bitcast %union.rec* %25 to %struct.word_type*
  %27 = getelementptr inbounds %struct.word_type, %struct.word_type* %26, i32 0, i32 1
  %28 = bitcast %union.FIRST_UNION* %27 to %struct.anon*
  %29 = getelementptr inbounds %struct.anon, %struct.anon* %28, i32 0, i32 0
  %30 = load i8, i8* %29, align 1
  %31 = zext i8 %30 to i32
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %41

; <label>:33                                      ; preds = %24
  br label %34

; <label>:34                                      ; preds = %33
  %35 = load %union.rec*, %union.rec** %y, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 1
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 0
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** %y, align 8
  br label %24

; <label>:41                                      ; preds = %24
  %42 = load %union.rec*, %union.rec** %y, align 8
  %43 = bitcast %union.rec* %42 to %struct.word_type*
  %44 = getelementptr inbounds %struct.word_type, %struct.word_type* %43, i32 0, i32 1
  %45 = bitcast %union.FIRST_UNION* %44 to %struct.anon*
  %46 = getelementptr inbounds %struct.anon, %struct.anon* %45, i32 0, i32 0
  %47 = load i8, i8* %46, align 1
  %48 = zext i8 %47 to i32
  %49 = icmp sge i32 %48, 9
  br i1 %49, label %50, label %59

; <label>:50                                      ; preds = %41
  %51 = load %union.rec*, %union.rec** %y, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 1
  %54 = bitcast %union.FIRST_UNION* %53 to %struct.anon*
  %55 = getelementptr inbounds %struct.anon, %struct.anon* %54, i32 0, i32 0
  %56 = load i8, i8* %55, align 1
  %57 = zext i8 %56 to i32
  %58 = icmp sle i32 %57, 99
  br i1 %58, label %60, label %59

; <label>:59                                      ; preds = %50, %41
  br label %103

; <label>:60                                      ; preds = %50
  %61 = load i32, i32* %sb, align 4
  %62 = load %union.rec*, %union.rec** %y, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 3
  %65 = bitcast %union.THIRD_UNION* %64 to %struct.anon.6*
  %66 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %66, i32 0, i64 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp slt i32 %61, %68
  br i1 %69, label %70, label %78

; <label>:70                                      ; preds = %60
  %71 = load %union.rec*, %union.rec** %y, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 3
  %74 = bitcast %union.THIRD_UNION* %73 to %struct.anon.6*
  %75 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %75, i32 0, i64 0
  %77 = load i32, i32* %76, align 4
  br label %80

; <label>:78                                      ; preds = %60
  %79 = load i32, i32* %sb, align 4
  br label %80

; <label>:80                                      ; preds = %78, %70
  %81 = phi i32 [ %77, %70 ], [ %79, %78 ]
  store i32 %81, i32* %sb, align 4
  %82 = load i32, i32* %sf, align 4
  %83 = load %union.rec*, %union.rec** %y, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 3
  %86 = bitcast %union.THIRD_UNION* %85 to %struct.anon.6*
  %87 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %86, i32 0, i32 1
  %88 = getelementptr inbounds [2 x i32], [2 x i32]* %87, i32 0, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %82, %89
  br i1 %90, label %91, label %99

; <label>:91                                      ; preds = %80
  %92 = load %union.rec*, %union.rec** %y, align 8
  %93 = bitcast %union.rec* %92 to %struct.word_type*
  %94 = getelementptr inbounds %struct.word_type, %struct.word_type* %93, i32 0, i32 3
  %95 = bitcast %union.THIRD_UNION* %94 to %struct.anon.6*
  %96 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %95, i32 0, i32 1
  %97 = getelementptr inbounds [2 x i32], [2 x i32]* %96, i32 0, i64 0
  %98 = load i32, i32* %97, align 4
  br label %101

; <label>:99                                      ; preds = %80
  %100 = load i32, i32* %sf, align 4
  br label %101

; <label>:101                                     ; preds = %99, %91
  %102 = phi i32 [ %98, %91 ], [ %100, %99 ]
  store i32 %102, i32* %sf, align 4
  br label %103

; <label>:103                                     ; preds = %101, %59
  %104 = load %union.rec*, %union.rec** %link, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 0
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 1
  %109 = load %union.rec*, %union.rec** %108, align 8
  store %union.rec* %109, %union.rec** %link, align 8
  br label %8

; <label>:110                                     ; preds = %8
  %111 = load i32, i32* %sb, align 4
  %112 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %113 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = icmp sle i32 %111, %114
  br i1 %115, label %116, label %118

; <label>:116                                     ; preds = %110
  %117 = load i32, i32* %sb, align 4
  store i32 %117, i32* %b, align 4
  store i32 0, i32* %f, align 4
  br label %119

; <label>:118                                     ; preds = %110
  store i32 0, i32* %b, align 4
  store i32 0, i32* %f, align 4
  br label %119

; <label>:119                                     ; preds = %118, %116
  %120 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %121 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %124 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* %f, align 4
  %127 = sub nsw i32 %125, %126
  %128 = icmp slt i32 %122, %127
  br i1 %128, label %129, label %133

; <label>:129                                     ; preds = %119
  %130 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %131 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 4
  br label %139

; <label>:133                                     ; preds = %119
  %134 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %135 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %134, i32 0, i32 1
  %136 = load i32, i32* %135, align 4
  %137 = load i32, i32* %f, align 4
  %138 = sub nsw i32 %136, %137
  br label %139

; <label>:139                                     ; preds = %133, %129
  %140 = phi i32 [ %132, %129 ], [ %138, %133 ]
  %141 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %140, i32* %141, align 4
  %142 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %143 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %144, i32* %145, align 4
  %146 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %147 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %150 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = load i32, i32* %b, align 4
  %153 = sub nsw i32 %151, %152
  %154 = icmp slt i32 %148, %153
  br i1 %154, label %155, label %159

; <label>:155                                     ; preds = %139
  %156 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %157 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  br label %165

; <label>:159                                     ; preds = %139
  %160 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %161 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %b, align 4
  %164 = sub nsw i32 %162, %163
  br label %165

; <label>:165                                     ; preds = %159, %155
  %166 = phi i32 [ %158, %155 ], [ %164, %159 ]
  %167 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %166, i32* %167, align 4
  %168 = load %union.rec*, %union.rec** %3, align 8
  %169 = icmp ne %union.rec* %168, null
  br i1 %169, label %170, label %226

; <label>:170                                     ; preds = %165
  %171 = load %union.rec*, %union.rec** %3, align 8
  %172 = call %union.rec* @BreakObject(%union.rec* %171, %struct.CONSTRAINT* %yc)
  store %union.rec* %172, %union.rec** %3, align 8
  %173 = load %union.rec*, %union.rec** %3, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 3
  %176 = bitcast %union.THIRD_UNION* %175 to %struct.anon.6*
  %177 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %176, i32 0, i32 0
  %178 = getelementptr inbounds [2 x i32], [2 x i32]* %177, i32 0, i64 0
  %179 = load i32, i32* %178, align 4
  store i32 %179, i32* %b, align 4
  %180 = load %union.rec*, %union.rec** %3, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 3
  %183 = bitcast %union.THIRD_UNION* %182 to %struct.anon.6*
  %184 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %183, i32 0, i32 1
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %184, i32 0, i64 0
  %186 = load i32, i32* %185, align 4
  store i32 %186, i32* %f, align 4
  %187 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* %f, align 4
  %192 = sub nsw i32 %190, %191
  %193 = icmp slt i32 %188, %192
  br i1 %193, label %194, label %197

; <label>:194                                     ; preds = %170
  %195 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %196 = load i32, i32* %195, align 4
  br label %202

; <label>:197                                     ; preds = %170
  %198 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = load i32, i32* %f, align 4
  %201 = sub nsw i32 %199, %200
  br label %202

; <label>:202                                     ; preds = %197, %194
  %203 = phi i32 [ %196, %194 ], [ %201, %197 ]
  %204 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %203, i32* %204, align 4
  %205 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %206 = load i32, i32* %205, align 4
  %207 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %206, i32* %207, align 4
  %208 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %211 = load i32, i32* %210, align 4
  %212 = load i32, i32* %b, align 4
  %213 = sub nsw i32 %211, %212
  %214 = icmp slt i32 %209, %213
  br i1 %214, label %215, label %218

; <label>:215                                     ; preds = %202
  %216 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %217 = load i32, i32* %216, align 4
  br label %223

; <label>:218                                     ; preds = %202
  %219 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %220 = load i32, i32* %219, align 4
  %221 = load i32, i32* %b, align 4
  %222 = sub nsw i32 %220, %221
  br label %223

; <label>:223                                     ; preds = %218, %215
  %224 = phi i32 [ %217, %215 ], [ %222, %218 ]
  %225 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %224, i32* %225, align 4
  br label %227

; <label>:226                                     ; preds = %165
  store i32 0, i32* %f, align 4
  store i32 0, i32* %b, align 4
  br label %227

; <label>:227                                     ; preds = %226, %223
  %228 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %228, %union.rec** %link, align 8
  br label %229

; <label>:229                                     ; preds = %369, %227
  %230 = load %union.rec*, %union.rec** %link, align 8
  %231 = load %union.rec*, %union.rec** %2, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 0
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 1
  %236 = load %union.rec*, %union.rec** %235, align 8
  %237 = icmp ne %union.rec* %230, %236
  br i1 %237, label %238, label %376

; <label>:238                                     ; preds = %229
  %239 = load %union.rec*, %union.rec** %link, align 8
  %240 = bitcast %union.rec* %239 to %struct.word_type*
  %241 = getelementptr inbounds %struct.word_type, %struct.word_type* %240, i32 0, i32 0
  %242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %241, i32 0, i64 1
  %243 = getelementptr inbounds %struct.LIST, %struct.LIST* %242, i32 0, i32 0
  %244 = load %union.rec*, %union.rec** %243, align 8
  store %union.rec* %244, %union.rec** %y, align 8
  br label %245

; <label>:245                                     ; preds = %255, %238
  %246 = load %union.rec*, %union.rec** %y, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 1
  %249 = bitcast %union.FIRST_UNION* %248 to %struct.anon*
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 0
  br i1 %253, label %254, label %262

; <label>:254                                     ; preds = %245
  br label %255

; <label>:255                                     ; preds = %254
  %256 = load %union.rec*, %union.rec** %y, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %258, i32 0, i64 1
  %260 = getelementptr inbounds %struct.LIST, %struct.LIST* %259, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %260, align 8
  store %union.rec* %261, %union.rec** %y, align 8
  br label %245

; <label>:262                                     ; preds = %245
  %263 = load %union.rec*, %union.rec** %y, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 1
  %266 = bitcast %union.FIRST_UNION* %265 to %struct.anon*
  %267 = getelementptr inbounds %struct.anon, %struct.anon* %266, i32 0, i32 0
  %268 = load i8, i8* %267, align 1
  %269 = zext i8 %268 to i32
  %270 = icmp sge i32 %269, 9
  br i1 %270, label %271, label %284

; <label>:271                                     ; preds = %262
  %272 = load %union.rec*, %union.rec** %y, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 1
  %275 = bitcast %union.FIRST_UNION* %274 to %struct.anon*
  %276 = getelementptr inbounds %struct.anon, %struct.anon* %275, i32 0, i32 0
  %277 = load i8, i8* %276, align 1
  %278 = zext i8 %277 to i32
  %279 = icmp sle i32 %278, 99
  br i1 %279, label %280, label %284

; <label>:280                                     ; preds = %271
  %281 = load %union.rec*, %union.rec** %y, align 8
  %282 = load %union.rec*, %union.rec** %3, align 8
  %283 = icmp eq %union.rec* %281, %282
  br i1 %283, label %284, label %285

; <label>:284                                     ; preds = %280, %271, %262
  br label %369

; <label>:285                                     ; preds = %280
  %286 = load %union.rec*, %union.rec** %y, align 8
  %287 = call %union.rec* @BreakObject(%union.rec* %286, %struct.CONSTRAINT* %yc)
  store %union.rec* %287, %union.rec** %y, align 8
  %288 = load i32, i32* %b, align 4
  %289 = load %union.rec*, %union.rec** %y, align 8
  %290 = bitcast %union.rec* %289 to %struct.word_type*
  %291 = getelementptr inbounds %struct.word_type, %struct.word_type* %290, i32 0, i32 3
  %292 = bitcast %union.THIRD_UNION* %291 to %struct.anon.6*
  %293 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %292, i32 0, i32 0
  %294 = getelementptr inbounds [2 x i32], [2 x i32]* %293, i32 0, i64 0
  %295 = load i32, i32* %294, align 4
  %296 = icmp slt i32 %288, %295
  br i1 %296, label %297, label %305

; <label>:297                                     ; preds = %285
  %298 = load %union.rec*, %union.rec** %y, align 8
  %299 = bitcast %union.rec* %298 to %struct.word_type*
  %300 = getelementptr inbounds %struct.word_type, %struct.word_type* %299, i32 0, i32 3
  %301 = bitcast %union.THIRD_UNION* %300 to %struct.anon.6*
  %302 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x i32], [2 x i32]* %302, i32 0, i64 0
  %304 = load i32, i32* %303, align 4
  br label %307

; <label>:305                                     ; preds = %285
  %306 = load i32, i32* %b, align 4
  br label %307

; <label>:307                                     ; preds = %305, %297
  %308 = phi i32 [ %304, %297 ], [ %306, %305 ]
  store i32 %308, i32* %b, align 4
  %309 = load i32, i32* %f, align 4
  %310 = load %union.rec*, %union.rec** %y, align 8
  %311 = bitcast %union.rec* %310 to %struct.word_type*
  %312 = getelementptr inbounds %struct.word_type, %struct.word_type* %311, i32 0, i32 3
  %313 = bitcast %union.THIRD_UNION* %312 to %struct.anon.6*
  %314 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %313, i32 0, i32 1
  %315 = getelementptr inbounds [2 x i32], [2 x i32]* %314, i32 0, i64 0
  %316 = load i32, i32* %315, align 4
  %317 = icmp slt i32 %309, %316
  br i1 %317, label %318, label %326

; <label>:318                                     ; preds = %307
  %319 = load %union.rec*, %union.rec** %y, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 3
  %322 = bitcast %union.THIRD_UNION* %321 to %struct.anon.6*
  %323 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %322, i32 0, i32 1
  %324 = getelementptr inbounds [2 x i32], [2 x i32]* %323, i32 0, i64 0
  %325 = load i32, i32* %324, align 4
  br label %328

; <label>:326                                     ; preds = %307
  %327 = load i32, i32* %f, align 4
  br label %328

; <label>:328                                     ; preds = %326, %318
  %329 = phi i32 [ %325, %318 ], [ %327, %326 ]
  store i32 %329, i32* %f, align 4
  %330 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %331 = load i32, i32* %330, align 4
  %332 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %f, align 4
  %335 = sub nsw i32 %333, %334
  %336 = icmp slt i32 %331, %335
  br i1 %336, label %337, label %340

; <label>:337                                     ; preds = %328
  %338 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  %339 = load i32, i32* %338, align 4
  br label %345

; <label>:340                                     ; preds = %328
  %341 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %342 = load i32, i32* %341, align 4
  %343 = load i32, i32* %f, align 4
  %344 = sub nsw i32 %342, %343
  br label %345

; <label>:345                                     ; preds = %340, %337
  %346 = phi i32 [ %339, %337 ], [ %344, %340 ]
  %347 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 0
  store i32 %346, i32* %347, align 4
  %348 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %349 = load i32, i32* %348, align 4
  %350 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  store i32 %349, i32* %350, align 4
  %351 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %352 = load i32, i32* %351, align 4
  %353 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %354 = load i32, i32* %353, align 4
  %355 = load i32, i32* %b, align 4
  %356 = sub nsw i32 %354, %355
  %357 = icmp slt i32 %352, %356
  br i1 %357, label %358, label %361

; <label>:358                                     ; preds = %345
  %359 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  %360 = load i32, i32* %359, align 4
  br label %366

; <label>:361                                     ; preds = %345
  %362 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 1
  %363 = load i32, i32* %362, align 4
  %364 = load i32, i32* %b, align 4
  %365 = sub nsw i32 %363, %364
  br label %366

; <label>:366                                     ; preds = %361, %358
  %367 = phi i32 [ %360, %358 ], [ %365, %361 ]
  %368 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %yc, i32 0, i32 2
  store i32 %367, i32* %368, align 4
  br label %369

; <label>:369                                     ; preds = %366, %284
  %370 = load %union.rec*, %union.rec** %link, align 8
  %371 = bitcast %union.rec* %370 to %struct.word_type*
  %372 = getelementptr inbounds %struct.word_type, %struct.word_type* %371, i32 0, i32 0
  %373 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %372, i32 0, i64 0
  %374 = getelementptr inbounds %struct.LIST, %struct.LIST* %373, i32 0, i32 1
  %375 = load %union.rec*, %union.rec** %374, align 8
  store %union.rec* %375, %union.rec** %link, align 8
  br label %229

; <label>:376                                     ; preds = %229
  %377 = load i32, i32* %b, align 4
  %378 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %379 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %378, i32 0, i32 0
  %380 = load i32, i32* %379, align 4
  %381 = icmp sle i32 %377, %380
  br i1 %381, label %382, label %396

; <label>:382                                     ; preds = %376
  %383 = load i32, i32* %b, align 4
  %384 = load i32, i32* %f, align 4
  %385 = add nsw i32 %383, %384
  %386 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %387 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %386, i32 0, i32 1
  %388 = load i32, i32* %387, align 4
  %389 = icmp sle i32 %385, %388
  br i1 %389, label %390, label %396

; <label>:390                                     ; preds = %382
  %391 = load i32, i32* %f, align 4
  %392 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %4, align 8
  %393 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %392, i32 0, i32 2
  %394 = load i32, i32* %393, align 4
  %395 = icmp sle i32 %391, %394
  br i1 %395, label %419, label %396

; <label>:396                                     ; preds = %390, %382, %376
  %397 = load %union.rec*, %union.rec** %3, align 8
  %398 = icmp ne %union.rec* %397, null
  br i1 %398, label %399, label %404

; <label>:399                                     ; preds = %396
  %400 = load %union.rec*, %union.rec** %3, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 1
  %403 = bitcast %union.FIRST_UNION* %402 to %struct.FILE_POS*
  br label %416

; <label>:404                                     ; preds = %396
  %405 = load %union.rec*, %union.rec** %y, align 8
  %406 = icmp ne %union.rec* %405, null
  br i1 %406, label %407, label %412

; <label>:407                                     ; preds = %404
  %408 = load %union.rec*, %union.rec** %y, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 1
  %411 = bitcast %union.FIRST_UNION* %410 to %struct.FILE_POS*
  br label %414

; <label>:412                                     ; preds = %404
  %413 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  br label %414

; <label>:414                                     ; preds = %412, %407
  %415 = phi %struct.FILE_POS* [ %411, %407 ], [ %413, %412 ]
  br label %416

; <label>:416                                     ; preds = %414, %399
  %417 = phi %struct.FILE_POS* [ %403, %399 ], [ %415, %414 ]
  %418 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 13, i32 1, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.27, i32 0, i32 0), i32 2, %struct.FILE_POS* %417)
  br label %419

; <label>:419                                     ; preds = %416, %390
  %420 = load i32, i32* %b, align 4
  %421 = load i32*, i32** %5, align 8
  store i32 %420, i32* %421, align 4
  %422 = load i32, i32* %f, align 4
  %423 = load i32*, i32** %6, align 8
  store i32 %422, i32* %423, align 4
  ret void
}

; Function Attrs: nounwind uwtable
define internal %union.rec* @BreakVcat(%union.rec* %x, %struct.CONSTRAINT* %c) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.CONSTRAINT*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %start_group = alloca %union.rec*, align 8
  %m = alloca %union.rec*, align 8
  %b = alloca i32, align 4
  %f = alloca i32, align 4
  %dble_fwd = alloca i32, align 4
  %tc = alloca %struct.CONSTRAINT, align 4
  %dble_found = alloca i32, align 4
  store %union.rec* %x, %union.rec** %1, align 8
  store %struct.CONSTRAINT* %c, %struct.CONSTRAINT** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 0
  %6 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %5, i32 0, i64 0
  %7 = getelementptr inbounds %struct.LIST, %struct.LIST* %6, i32 0, i32 1
  %8 = load %union.rec*, %union.rec** %7, align 8
  %9 = load %union.rec*, %union.rec** %1, align 8
  %10 = icmp ne %union.rec* %8, %9
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.28, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 0
  store i32 8388607, i32* %15, align 4
  %16 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %17 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %20 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %27

; <label>:23                                      ; preds = %14
  %24 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %25 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  br label %31

; <label>:27                                      ; preds = %14
  %28 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  %29 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  br label %31

; <label>:31                                      ; preds = %27, %23
  %32 = phi i32 [ %26, %23 ], [ %30, %27 ]
  %33 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 1
  store i32 %32, i32* %33, align 4
  %34 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 2
  store i32 8388607, i32* %34, align 4
  store i32 0, i32* %dble_found, align 4
  store i32 0, i32* %dble_fwd, align 4
  store %union.rec* null, %union.rec** %start_group, align 8
  %35 = load %union.rec*, %union.rec** %1, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %39, align 8
  store %union.rec* %40, %union.rec** %link, align 8
  br label %41

; <label>:41                                      ; preds = %232, %31
  %42 = load %union.rec*, %union.rec** %link, align 8
  %43 = load %union.rec*, %union.rec** %1, align 8
  %44 = icmp ne %union.rec* %42, %43
  br i1 %44, label %45, label %239

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
  %70 = load %union.rec*, %union.rec** %y, align 8
  %71 = bitcast %union.rec* %70 to %struct.word_type*
  %72 = getelementptr inbounds %struct.word_type, %struct.word_type* %71, i32 0, i32 1
  %73 = bitcast %union.FIRST_UNION* %72 to %struct.anon*
  %74 = getelementptr inbounds %struct.anon, %struct.anon* %73, i32 0, i32 0
  %75 = load i8, i8* %74, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp sge i32 %76, 119
  br i1 %77, label %78, label %88

; <label>:78                                      ; preds = %69
  %79 = load %union.rec*, %union.rec** %y, align 8
  %80 = bitcast %union.rec* %79 to %struct.word_type*
  %81 = getelementptr inbounds %struct.word_type, %struct.word_type* %80, i32 0, i32 1
  %82 = bitcast %union.FIRST_UNION* %81 to %struct.anon*
  %83 = getelementptr inbounds %struct.anon, %struct.anon* %82, i32 0, i32 0
  %84 = load i8, i8* %83, align 1
  %85 = zext i8 %84 to i32
  %86 = icmp sle i32 %85, 138
  br i1 %86, label %87, label %88

; <label>:87                                      ; preds = %78
  br label %232

; <label>:88                                      ; preds = %78, %69
  %89 = load %union.rec*, %union.rec** %y, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  %94 = load i8, i8* %93, align 1
  %95 = zext i8 %94 to i32
  %96 = icmp eq i32 %95, 1
  br i1 %96, label %97, label %149

; <label>:97                                      ; preds = %88
  %98 = load %union.rec*, %union.rec** %start_group, align 8
  %99 = icmp ne %union.rec* %98, null
  br i1 %99, label %103, label %100

; <label>:100                                     ; preds = %97
  %101 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %102 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %101, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.29, i32 0, i32 0))
  br label %103

; <label>:103                                     ; preds = %100, %97
  %104 = load %union.rec*, %union.rec** %y, align 8
  %105 = bitcast %union.rec* %104 to %struct.gapobj_type*
  %106 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %105, i32 0, i32 3
  %107 = bitcast %struct.GAP* %106 to i16*
  %108 = load i16, i16* %107, align 4
  %109 = lshr i16 %108, 9
  %110 = and i16 %109, 1
  %111 = zext i16 %110 to i32
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %148, label %113

; <label>:113                                     ; preds = %103
  %114 = load i32, i32* %b, align 4
  %115 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = icmp sle i32 %114, %116
  br i1 %117, label %118, label %130

; <label>:118                                     ; preds = %113
  %119 = load i32, i32* %b, align 4
  %120 = load i32, i32* %f, align 4
  %121 = add nsw i32 %119, %120
  %122 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 1
  %123 = load i32, i32* %122, align 4
  %124 = icmp sle i32 %121, %123
  br i1 %124, label %125, label %130

; <label>:125                                     ; preds = %118
  %126 = load i32, i32* %f, align 4
  %127 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp sle i32 %126, %128
  br i1 %129, label %134, label %130

; <label>:130                                     ; preds = %125, %118, %113
  %131 = load %union.rec*, %union.rec** %start_group, align 8
  %132 = load %union.rec*, %union.rec** %link, align 8
  %133 = load %union.rec*, %union.rec** %m, align 8
  call void @BreakJoinedGroup(%union.rec* %131, %union.rec* %132, %union.rec* %133, %struct.CONSTRAINT* %tc, i32* %b, i32* %f)
  br label %134

; <label>:134                                     ; preds = %130, %125
  store i32 1, i32* %dble_found, align 4
  %135 = load i32, i32* %dble_fwd, align 4
  %136 = load i32, i32* %b, align 4
  %137 = load i32, i32* %f, align 4
  %138 = add nsw i32 %136, %137
  %139 = icmp slt i32 %135, %138
  br i1 %139, label %140, label %144

; <label>:140                                     ; preds = %134
  %141 = load i32, i32* %b, align 4
  %142 = load i32, i32* %f, align 4
  %143 = add nsw i32 %141, %142
  br label %146

; <label>:144                                     ; preds = %134
  %145 = load i32, i32* %dble_fwd, align 4
  br label %146

; <label>:146                                     ; preds = %144, %140
  %147 = phi i32 [ %143, %140 ], [ %145, %144 ]
  store i32 %147, i32* %dble_fwd, align 4
  store %union.rec* null, %union.rec** %start_group, align 8
  br label %148

; <label>:148                                     ; preds = %146, %103
  br label %231

; <label>:149                                     ; preds = %88
  %150 = load %union.rec*, %union.rec** %start_group, align 8
  %151 = icmp eq %union.rec* %150, null
  br i1 %151, label %152, label %169

; <label>:152                                     ; preds = %149
  %153 = load %union.rec*, %union.rec** %y, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 3
  %156 = bitcast %union.THIRD_UNION* %155 to %struct.anon.6*
  %157 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %156, i32 0, i32 0
  %158 = getelementptr inbounds [2 x i32], [2 x i32]* %157, i32 0, i64 0
  %159 = load i32, i32* %158, align 4
  store i32 %159, i32* %b, align 4
  %160 = load %union.rec*, %union.rec** %y, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 3
  %163 = bitcast %union.THIRD_UNION* %162 to %struct.anon.6*
  %164 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %163, i32 0, i32 1
  %165 = getelementptr inbounds [2 x i32], [2 x i32]* %164, i32 0, i64 0
  %166 = load i32, i32* %165, align 4
  store i32 %166, i32* %f, align 4
  %167 = load %union.rec*, %union.rec** %link, align 8
  store %union.rec* %167, %union.rec** %start_group, align 8
  %168 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %168, %union.rec** %m, align 8
  br label %230

; <label>:169                                     ; preds = %149
  %170 = load i32, i32* %b, align 4
  %171 = load %union.rec*, %union.rec** %y, align 8
  %172 = bitcast %union.rec* %171 to %struct.word_type*
  %173 = getelementptr inbounds %struct.word_type, %struct.word_type* %172, i32 0, i32 3
  %174 = bitcast %union.THIRD_UNION* %173 to %struct.anon.6*
  %175 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x i32], [2 x i32]* %175, i32 0, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = icmp slt i32 %170, %177
  br i1 %178, label %179, label %187

; <label>:179                                     ; preds = %169
  %180 = load %union.rec*, %union.rec** %y, align 8
  %181 = bitcast %union.rec* %180 to %struct.word_type*
  %182 = getelementptr inbounds %struct.word_type, %struct.word_type* %181, i32 0, i32 3
  %183 = bitcast %union.THIRD_UNION* %182 to %struct.anon.6*
  %184 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x i32], [2 x i32]* %184, i32 0, i64 0
  %186 = load i32, i32* %185, align 4
  br label %189

; <label>:187                                     ; preds = %169
  %188 = load i32, i32* %b, align 4
  br label %189

; <label>:189                                     ; preds = %187, %179
  %190 = phi i32 [ %186, %179 ], [ %188, %187 ]
  store i32 %190, i32* %b, align 4
  %191 = load i32, i32* %f, align 4
  %192 = load %union.rec*, %union.rec** %y, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 3
  %195 = bitcast %union.THIRD_UNION* %194 to %struct.anon.6*
  %196 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %195, i32 0, i32 1
  %197 = getelementptr inbounds [2 x i32], [2 x i32]* %196, i32 0, i64 0
  %198 = load i32, i32* %197, align 4
  %199 = icmp slt i32 %191, %198
  br i1 %199, label %200, label %208

; <label>:200                                     ; preds = %189
  %201 = load %union.rec*, %union.rec** %y, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 3
  %204 = bitcast %union.THIRD_UNION* %203 to %struct.anon.6*
  %205 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %204, i32 0, i32 1
  %206 = getelementptr inbounds [2 x i32], [2 x i32]* %205, i32 0, i64 0
  %207 = load i32, i32* %206, align 4
  br label %210

; <label>:208                                     ; preds = %189
  %209 = load i32, i32* %f, align 4
  br label %210

; <label>:210                                     ; preds = %208, %200
  %211 = phi i32 [ %207, %200 ], [ %209, %208 ]
  store i32 %211, i32* %f, align 4
  %212 = load %union.rec*, %union.rec** %y, align 8
  %213 = bitcast %union.rec* %212 to %struct.word_type*
  %214 = getelementptr inbounds %struct.word_type, %struct.word_type* %213, i32 0, i32 3
  %215 = bitcast %union.THIRD_UNION* %214 to %struct.anon.6*
  %216 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %215, i32 0, i32 1
  %217 = getelementptr inbounds [2 x i32], [2 x i32]* %216, i32 0, i64 0
  %218 = load i32, i32* %217, align 4
  %219 = load %union.rec*, %union.rec** %m, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 3
  %222 = bitcast %union.THIRD_UNION* %221 to %struct.anon.6*
  %223 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %222, i32 0, i32 1
  %224 = getelementptr inbounds [2 x i32], [2 x i32]* %223, i32 0, i64 0
  %225 = load i32, i32* %224, align 4
  %226 = icmp sgt i32 %218, %225
  br i1 %226, label %227, label %229

; <label>:227                                     ; preds = %210
  %228 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %228, %union.rec** %m, align 8
  br label %229

; <label>:229                                     ; preds = %227, %210
  br label %230

; <label>:230                                     ; preds = %229, %152
  br label %231

; <label>:231                                     ; preds = %230, %148
  br label %232

; <label>:232                                     ; preds = %231, %87
  %233 = load %union.rec*, %union.rec** %link, align 8
  %234 = bitcast %union.rec* %233 to %struct.word_type*
  %235 = getelementptr inbounds %struct.word_type, %struct.word_type* %234, i32 0, i32 0
  %236 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %235, i32 0, i64 0
  %237 = getelementptr inbounds %struct.LIST, %struct.LIST* %236, i32 0, i32 1
  %238 = load %union.rec*, %union.rec** %237, align 8
  store %union.rec* %238, %union.rec** %link, align 8
  br label %41

; <label>:239                                     ; preds = %41
  %240 = load %union.rec*, %union.rec** %start_group, align 8
  %241 = icmp ne %union.rec* %240, null
  br i1 %241, label %245, label %242

; <label>:242                                     ; preds = %239
  %243 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %244 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i32 0, i32 0), i32 0, %struct.FILE_POS* %243, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.30, i32 0, i32 0))
  br label %245

; <label>:245                                     ; preds = %242, %239
  %246 = load i32, i32* %dble_found, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %307

; <label>:248                                     ; preds = %245
  %249 = load i32, i32* %b, align 4
  %250 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 0
  %251 = load i32, i32* %250, align 4
  %252 = icmp sle i32 %249, %251
  br i1 %252, label %253, label %265

; <label>:253                                     ; preds = %248
  %254 = load i32, i32* %b, align 4
  %255 = load i32, i32* %f, align 4
  %256 = add nsw i32 %254, %255
  %257 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = icmp sle i32 %256, %258
  br i1 %259, label %260, label %265

; <label>:260                                     ; preds = %253
  %261 = load i32, i32* %f, align 4
  %262 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %tc, i32 0, i32 2
  %263 = load i32, i32* %262, align 4
  %264 = icmp sle i32 %261, %263
  br i1 %264, label %274, label %265

; <label>:265                                     ; preds = %260, %253, %248
  %266 = load %union.rec*, %union.rec** %start_group, align 8
  %267 = load %union.rec*, %union.rec** %1, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 0
  %270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %269, i32 0, i64 0
  %271 = getelementptr inbounds %struct.LIST, %struct.LIST* %270, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %271, align 8
  %273 = load %union.rec*, %union.rec** %m, align 8
  call void @BreakJoinedGroup(%union.rec* %266, %union.rec* %272, %union.rec* %273, %struct.CONSTRAINT* %tc, i32* %b, i32* %f)
  br label %274

; <label>:274                                     ; preds = %265, %260
  %275 = load i32, i32* %dble_fwd, align 4
  %276 = load i32, i32* %b, align 4
  %277 = load i32, i32* %f, align 4
  %278 = add nsw i32 %276, %277
  %279 = icmp slt i32 %275, %278
  br i1 %279, label %280, label %284

; <label>:280                                     ; preds = %274
  %281 = load i32, i32* %b, align 4
  %282 = load i32, i32* %f, align 4
  %283 = add nsw i32 %281, %282
  br label %286

; <label>:284                                     ; preds = %274
  %285 = load i32, i32* %dble_fwd, align 4
  br label %286

; <label>:286                                     ; preds = %284, %280
  %287 = phi i32 [ %283, %280 ], [ %285, %284 ]
  store i32 %287, i32* %dble_fwd, align 4
  %288 = load %union.rec*, %union.rec** %1, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 3
  %291 = bitcast %union.THIRD_UNION* %290 to %struct.anon.6*
  %292 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x i32], [2 x i32]* %292, i32 0, i64 0
  store i32 0, i32* %293, align 4
  %294 = load i32, i32* %dble_fwd, align 4
  %295 = icmp slt i32 8388607, %294
  br i1 %295, label %296, label %297

; <label>:296                                     ; preds = %286
  br label %299

; <label>:297                                     ; preds = %286
  %298 = load i32, i32* %dble_fwd, align 4
  br label %299

; <label>:299                                     ; preds = %297, %296
  %300 = phi i32 [ 8388607, %296 ], [ %298, %297 ]
  %301 = load %union.rec*, %union.rec** %1, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 3
  %304 = bitcast %union.THIRD_UNION* %303 to %struct.anon.6*
  %305 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %304, i32 0, i32 1
  %306 = getelementptr inbounds [2 x i32], [2 x i32]* %305, i32 0, i64 0
  store i32 %300, i32* %306, align 4
  br label %331

; <label>:307                                     ; preds = %245
  %308 = load %union.rec*, %union.rec** %start_group, align 8
  %309 = load %union.rec*, %union.rec** %1, align 8
  %310 = bitcast %union.rec* %309 to %struct.word_type*
  %311 = getelementptr inbounds %struct.word_type, %struct.word_type* %310, i32 0, i32 0
  %312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %311, i32 0, i64 0
  %313 = getelementptr inbounds %struct.LIST, %struct.LIST* %312, i32 0, i32 0
  %314 = load %union.rec*, %union.rec** %313, align 8
  %315 = load %union.rec*, %union.rec** %m, align 8
  %316 = load %struct.CONSTRAINT*, %struct.CONSTRAINT** %2, align 8
  call void @BreakJoinedGroup(%union.rec* %308, %union.rec* %314, %union.rec* %315, %struct.CONSTRAINT* %316, i32* %b, i32* %f)
  %317 = load i32, i32* %b, align 4
  %318 = load %union.rec*, %union.rec** %1, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 3
  %321 = bitcast %union.THIRD_UNION* %320 to %struct.anon.6*
  %322 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %321, i32 0, i32 0
  %323 = getelementptr inbounds [2 x i32], [2 x i32]* %322, i32 0, i64 0
  store i32 %317, i32* %323, align 4
  %324 = load i32, i32* %f, align 4
  %325 = load %union.rec*, %union.rec** %1, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 3
  %328 = bitcast %union.THIRD_UNION* %327 to %struct.anon.6*
  %329 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %328, i32 0, i32 1
  %330 = getelementptr inbounds [2 x i32], [2 x i32]* %329, i32 0, i64 0
  store i32 %324, i32* %330, align 4
  br label %331

; <label>:331                                     ; preds = %307, %299
  %332 = load %union.rec*, %union.rec** %1, align 8
  ret %union.rec* %332
}

declare i8* @Image(i32) #1

declare i32 @MinGap(i32, i32, i32, %struct.GAP*) #1

declare void @SetNeighbours(%union.rec*, i32, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32*) #1

declare i32 @ExtraGap(i32, i32, %struct.GAP*, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
