; ModuleID = 'z46.c'
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
%struct.word_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, [4 x i8] }
%struct.anon = type { i8, i8, i32 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.2 = type { i8, i8, i16 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }
%struct.anon.11 = type { i8, [3 x i8] }
%struct.anon.9 = type { i8, [3 x i8] }
%struct.CONSTRAINT = type { i32, i32, i32, i32 }
%struct.gapobj_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %struct.GAP, i32, i16, i16, %union.rec*, %union.rec* }
%struct.anon.0 = type { i8, i8, i8 }

@.str = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"FindOptimize: type(x) != CLOSURE!\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"FindOptimize: x has no target!\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"FindOptimize: Down(PAR)!\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"FindOptimize: res == nilobj!\00", align 1
@.str.5 = private unnamed_addr constant [54 x i8] c"unable to evaluate %s parameter, assuming value is No\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"@Optimize\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"Yes\00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"No\00", align 1
@.str.9 = private unnamed_addr constant [56 x i8] c"value of %s operator is neither Yes nor No, assuming No\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c".\00", align 1
@OldCrossDb = external global %union.rec*, align 8
@OptGallSym = external global %union.rec*, align 8
@.str.11 = private unnamed_addr constant [28 x i8] c"SetOptimize: res == nilobj!\00", align 1
@.str.12 = private unnamed_addr constant [35 x i8] c"SetOptimize: type(res) != CLOSURE!\00", align 1
@.str.13 = private unnamed_addr constant [33 x i8] c"SetOptimize: actual(res) != Opt!\00", align 1
@.str.14 = private unnamed_addr constant [31 x i8] c"SetOptimize: Down(res) == res!\00", align 1
@.str.15 = private unnamed_addr constant [29 x i8] c"SetOptimize: type(y) != PAR!\00", align 1
@.str.16 = private unnamed_addr constant [30 x i8] c"SetOptimize: type(y) != ACAT!\00", align 1
@.str.17 = private unnamed_addr constant [34 x i8] c"SetOptimize: type(y) != ACAT (2)!\00", align 1
@xx_link = external global %union.rec*, align 8
@zz_hold = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@zz_free = external global [0 x %union.rec*], align 8
@.str.18 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.19 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.20 = private unnamed_addr constant [23 x i8] c"SetOptimize: num <= 0!\00", align 1
@.str.21 = private unnamed_addr constant [22 x i8] c"SetOptimize: type(z)!\00", align 1
@.str.22 = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@.str.23 = private unnamed_addr constant [34 x i8] c"GazumpOptimize: type(hd) != HEAD!\00", align 1
@.str.24 = private unnamed_addr constant [23 x i8] c"GazumpOptimize: opt_c!\00", align 1
@zz_tmp = external global %union.rec*, align 8
@.str.25 = private unnamed_addr constant [33 x i8] c"FlushGalley: type(g) != GAP_OBJ!\00", align 1
@.str.26 = private unnamed_addr constant [4 x i8] c"1rt\00", align 1
@.str.27 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.28 = private unnamed_addr constant [3 x i8] c"1c\00", align 1
@.str.29 = private unnamed_addr constant [4 x i8] c"CO!\00", align 1
@.str.30 = private unnamed_addr constant [31 x i8] c"CalculateOptimize: type(last)!\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"KillGalley: no opt_constraints!\00", align 1
@.str.32 = private unnamed_addr constant [13 x i8] c"KillGalleyo!\00", align 1
@AllowCrossDb = external global i32, align 4
@NewCrossDb = external global %union.rec*, align 8
@.str.33 = private unnamed_addr constant [2 x i8] c"0\00", align 1

; Function Attrs: nounwind uwtable
define i32 @FindOptimize(%union.rec* %x, %union.rec* %env) #0 {
  %1 = alloca i32, align 4
  %2 = alloca %union.rec*, align 8
  %3 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %bt = alloca [2 x %union.rec*], align 16
  %ft = alloca [2 x %union.rec*], align 16
  %ntarget = alloca %union.rec*, align 8
  %nenclose = alloca %union.rec*, align 8
  %crs = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %2, align 8
  store %union.rec* %env, %union.rec** %3, align 8
  %4 = load %union.rec*, %union.rec** %2, align 8
  %5 = bitcast %union.rec* %4 to %struct.word_type*
  %6 = getelementptr inbounds %struct.word_type, %struct.word_type* %5, i32 0, i32 1
  %7 = bitcast %union.FIRST_UNION* %6 to %struct.anon*
  %8 = getelementptr inbounds %struct.anon, %struct.anon* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = zext i8 %9 to i32
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %15, label %12

; <label>:12                                      ; preds = %0
  %13 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %14 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %13, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i32 0, i32 0))
  br label %15

; <label>:15                                      ; preds = %12, %0
  %16 = load %union.rec*, %union.rec** %2, align 8
  %17 = bitcast %union.rec* %16 to %struct.closure_type*
  %18 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %17, i32 0, i32 5
  %19 = load %union.rec*, %union.rec** %18, align 8
  %20 = bitcast %union.rec* %19 to %struct.word_type*
  %21 = getelementptr inbounds %struct.word_type, %struct.word_type* %20, i32 0, i32 2
  %22 = bitcast %union.SECOND_UNION* %21 to %struct.anon.5*
  %23 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %22, i32 0, i32 1
  %24 = bitcast [3 x i8]* %23 to i24*
  %25 = load i24, i24* %24, align 1
  %26 = lshr i24 %25, 6
  %27 = and i24 %26, 1
  %28 = zext i24 %27 to i32
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

; <label>:30                                      ; preds = %15
  %31 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %32 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %31, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i32 0, i32 0))
  br label %33

; <label>:33                                      ; preds = %30, %15
  store %union.rec* null, %union.rec** %res, align 8
  %34 = load %union.rec*, %union.rec** %2, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 0
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 1
  %39 = load %union.rec*, %union.rec** %38, align 8
  store %union.rec* %39, %union.rec** %link, align 8
  br label %40

; <label>:40                                      ; preds = %137, %33
  %41 = load %union.rec*, %union.rec** %link, align 8
  %42 = load %union.rec*, %union.rec** %2, align 8
  %43 = icmp ne %union.rec* %41, %42
  br i1 %43, label %44, label %144

; <label>:44                                      ; preds = %40
  %45 = load %union.rec*, %union.rec** %link, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  store %union.rec* %50, %union.rec** %y, align 8
  br label %51

; <label>:51                                      ; preds = %61, %44
  %52 = load %union.rec*, %union.rec** %y, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 1
  %55 = bitcast %union.FIRST_UNION* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 0
  br i1 %59, label %60, label %68

; <label>:60                                      ; preds = %51
  br label %61

; <label>:61                                      ; preds = %60
  %62 = load %union.rec*, %union.rec** %y, align 8
  %63 = bitcast %union.rec* %62 to %struct.word_type*
  %64 = getelementptr inbounds %struct.word_type, %struct.word_type* %63, i32 0, i32 0
  %65 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %64, i32 0, i64 1
  %66 = getelementptr inbounds %struct.LIST, %struct.LIST* %65, i32 0, i32 0
  %67 = load %union.rec*, %union.rec** %66, align 8
  store %union.rec* %67, %union.rec** %y, align 8
  br label %51

; <label>:68                                      ; preds = %51
  %69 = load %union.rec*, %union.rec** %y, align 8
  %70 = bitcast %union.rec* %69 to %struct.word_type*
  %71 = getelementptr inbounds %struct.word_type, %struct.word_type* %70, i32 0, i32 1
  %72 = bitcast %union.FIRST_UNION* %71 to %struct.anon*
  %73 = getelementptr inbounds %struct.anon, %struct.anon* %72, i32 0, i32 0
  %74 = load i8, i8* %73, align 1
  %75 = zext i8 %74 to i32
  %76 = icmp eq i32 %75, 10
  br i1 %76, label %77, label %136

; <label>:77                                      ; preds = %68
  %78 = load %union.rec*, %union.rec** %y, align 8
  %79 = bitcast %union.rec* %78 to %struct.closure_type*
  %80 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %79, i32 0, i32 5
  %81 = load %union.rec*, %union.rec** %80, align 8
  %82 = bitcast %union.rec* %81 to %struct.symbol_type*
  %83 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %82, i32 0, i32 16
  %84 = load i8, i8* %83, align 2
  %85 = and i8 %84, 1
  %86 = zext i8 %85 to i32
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %136

; <label>:88                                      ; preds = %77
  %89 = load %union.rec*, %union.rec** %y, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 0
  %92 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %91, i32 0, i64 0
  %93 = getelementptr inbounds %struct.LIST, %struct.LIST* %92, i32 0, i32 1
  %94 = load %union.rec*, %union.rec** %93, align 8
  %95 = load %union.rec*, %union.rec** %y, align 8
  %96 = icmp ne %union.rec* %94, %95
  br i1 %96, label %100, label %97

; <label>:97                                      ; preds = %88
  %98 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %99 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %98, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i32 0, i32 0))
  br label %100

; <label>:100                                     ; preds = %97, %88
  %101 = load %union.rec*, %union.rec** %y, align 8
  %102 = bitcast %union.rec* %101 to %struct.word_type*
  %103 = getelementptr inbounds %struct.word_type, %struct.word_type* %102, i32 0, i32 0
  %104 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %103, i32 0, i64 0
  %105 = getelementptr inbounds %struct.LIST, %struct.LIST* %104, i32 0, i32 1
  %106 = load %union.rec*, %union.rec** %105, align 8
  %107 = bitcast %union.rec* %106 to %struct.word_type*
  %108 = getelementptr inbounds %struct.word_type, %struct.word_type* %107, i32 0, i32 0
  %109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %108, i32 0, i64 1
  %110 = getelementptr inbounds %struct.LIST, %struct.LIST* %109, i32 0, i32 0
  %111 = load %union.rec*, %union.rec** %110, align 8
  store %union.rec* %111, %union.rec** %res, align 8
  br label %112

; <label>:112                                     ; preds = %122, %100
  %113 = load %union.rec*, %union.rec** %res, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 1
  %116 = bitcast %union.FIRST_UNION* %115 to %struct.anon*
  %117 = getelementptr inbounds %struct.anon, %struct.anon* %116, i32 0, i32 0
  %118 = load i8, i8* %117, align 1
  %119 = zext i8 %118 to i32
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %129

; <label>:121                                     ; preds = %112
  br label %122

; <label>:122                                     ; preds = %121
  %123 = load %union.rec*, %union.rec** %res, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 1
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 0
  %128 = load %union.rec*, %union.rec** %127, align 8
  store %union.rec* %128, %union.rec** %res, align 8
  br label %112

; <label>:129                                     ; preds = %112
  %130 = load %union.rec*, %union.rec** %res, align 8
  %131 = load %union.rec*, %union.rec** %2, align 8
  %132 = bitcast %union.rec* %131 to %struct.word_type*
  %133 = getelementptr inbounds %struct.word_type, %struct.word_type* %132, i32 0, i32 1
  %134 = bitcast %union.FIRST_UNION* %133 to %struct.FILE_POS*
  %135 = call %union.rec* @CopyObject(%union.rec* %130, %struct.FILE_POS* %134)
  store %union.rec* %135, %union.rec** %res, align 8
  br label %144

; <label>:136                                     ; preds = %77, %68
  br label %137

; <label>:137                                     ; preds = %136
  %138 = load %union.rec*, %union.rec** %link, align 8
  %139 = bitcast %union.rec* %138 to %struct.word_type*
  %140 = getelementptr inbounds %struct.word_type, %struct.word_type* %139, i32 0, i32 0
  %141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %140, i32 0, i64 0
  %142 = getelementptr inbounds %struct.LIST, %struct.LIST* %141, i32 0, i32 1
  %143 = load %union.rec*, %union.rec** %142, align 8
  store %union.rec* %143, %union.rec** %link, align 8
  br label %40

; <label>:144                                     ; preds = %129, %40
  %145 = load %union.rec*, %union.rec** %res, align 8
  %146 = icmp eq %union.rec* %145, null
  br i1 %146, label %147, label %215

; <label>:147                                     ; preds = %144
  %148 = load %union.rec*, %union.rec** %2, align 8
  %149 = bitcast %union.rec* %148 to %struct.closure_type*
  %150 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %149, i32 0, i32 5
  %151 = load %union.rec*, %union.rec** %150, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 0
  %154 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %153, i32 0, i64 0
  %155 = getelementptr inbounds %struct.LIST, %struct.LIST* %154, i32 0, i32 1
  %156 = load %union.rec*, %union.rec** %155, align 8
  store %union.rec* %156, %union.rec** %link, align 8
  br label %157

; <label>:157                                     ; preds = %207, %147
  %158 = load %union.rec*, %union.rec** %link, align 8
  %159 = load %union.rec*, %union.rec** %2, align 8
  %160 = bitcast %union.rec* %159 to %struct.closure_type*
  %161 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %160, i32 0, i32 5
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = icmp ne %union.rec* %158, %162
  br i1 %163, label %164, label %214

; <label>:164                                     ; preds = %157
  %165 = load %union.rec*, %union.rec** %link, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %169, align 8
  store %union.rec* %170, %union.rec** %y, align 8
  br label %171

; <label>:171                                     ; preds = %181, %164
  %172 = load %union.rec*, %union.rec** %y, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 1
  %175 = bitcast %union.FIRST_UNION* %174 to %struct.anon*
  %176 = getelementptr inbounds %struct.anon, %struct.anon* %175, i32 0, i32 0
  %177 = load i8, i8* %176, align 1
  %178 = zext i8 %177 to i32
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %180, label %188

; <label>:180                                     ; preds = %171
  br label %181

; <label>:181                                     ; preds = %180
  %182 = load %union.rec*, %union.rec** %y, align 8
  %183 = bitcast %union.rec* %182 to %struct.word_type*
  %184 = getelementptr inbounds %struct.word_type, %struct.word_type* %183, i32 0, i32 0
  %185 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %184, i32 0, i64 1
  %186 = getelementptr inbounds %struct.LIST, %struct.LIST* %185, i32 0, i32 0
  %187 = load %union.rec*, %union.rec** %186, align 8
  store %union.rec* %187, %union.rec** %y, align 8
  br label %171

; <label>:188                                     ; preds = %171
  %189 = load %union.rec*, %union.rec** %y, align 8
  %190 = bitcast %union.rec* %189 to %struct.symbol_type*
  %191 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %190, i32 0, i32 16
  %192 = load i8, i8* %191, align 2
  %193 = and i8 %192, 1
  %194 = zext i8 %193 to i32
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %196, label %206

; <label>:196                                     ; preds = %188
  %197 = load %union.rec*, %union.rec** %y, align 8
  %198 = bitcast %union.rec* %197 to %struct.symbol_type*
  %199 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %198, i32 0, i32 4
  %200 = load %union.rec*, %union.rec** %199, align 8
  %201 = load %union.rec*, %union.rec** %2, align 8
  %202 = bitcast %union.rec* %201 to %struct.word_type*
  %203 = getelementptr inbounds %struct.word_type, %struct.word_type* %202, i32 0, i32 1
  %204 = bitcast %union.FIRST_UNION* %203 to %struct.FILE_POS*
  %205 = call %union.rec* @CopyObject(%union.rec* %200, %struct.FILE_POS* %204)
  store %union.rec* %205, %union.rec** %res, align 8
  br label %214

; <label>:206                                     ; preds = %188
  br label %207

; <label>:207                                     ; preds = %206
  %208 = load %union.rec*, %union.rec** %link, align 8
  %209 = bitcast %union.rec* %208 to %struct.word_type*
  %210 = getelementptr inbounds %struct.word_type, %struct.word_type* %209, i32 0, i32 0
  %211 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %210, i32 0, i64 0
  %212 = getelementptr inbounds %struct.LIST, %struct.LIST* %211, i32 0, i32 1
  %213 = load %union.rec*, %union.rec** %212, align 8
  store %union.rec* %213, %union.rec** %link, align 8
  br label %157

; <label>:214                                     ; preds = %196, %157
  br label %215

; <label>:215                                     ; preds = %214, %144
  %216 = load %union.rec*, %union.rec** %res, align 8
  %217 = icmp ne %union.rec* %216, null
  br i1 %217, label %221, label %218

; <label>:218                                     ; preds = %215
  %219 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %220 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %219, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i32 0, i32 0))
  br label %221

; <label>:221                                     ; preds = %218, %215
  store %union.rec* null, %union.rec** %crs, align 8
  store %union.rec* null, %union.rec** %nenclose, align 8
  store %union.rec* null, %union.rec** %ntarget, align 8
  %222 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 1
  store %union.rec* null, %union.rec** %222, align 8
  %223 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 1
  store %union.rec* null, %union.rec** %223, align 8
  %224 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i64 0
  store %union.rec* null, %union.rec** %224, align 8
  %225 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i64 0
  store %union.rec* null, %union.rec** %225, align 8
  %226 = load %union.rec*, %union.rec** %res, align 8
  %227 = load %union.rec*, %union.rec** %3, align 8
  %228 = load %union.rec*, %union.rec** %2, align 8
  %229 = bitcast %union.rec* %228 to %struct.closure_type*
  %230 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %229, i32 0, i32 4
  %231 = bitcast %union.FOURTH_UNION* %230 to %struct.STYLE*
  %232 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %bt, i32 0, i32 0
  %233 = getelementptr inbounds [2 x %union.rec*], [2 x %union.rec*]* %ft, i32 0, i32 0
  %234 = call %union.rec* @Manifest(%union.rec* %226, %union.rec* %227, %struct.STYLE* %231, %union.rec** %232, %union.rec** %233, %union.rec** %ntarget, %union.rec** %crs, i32 1, i32 0, %union.rec** %nenclose, i32 0)
  store %union.rec* %234, %union.rec** %res, align 8
  %235 = load %union.rec*, %union.rec** %res, align 8
  %236 = call %union.rec* @ReplaceWithTidy(%union.rec* %235, i32 1)
  store %union.rec* %236, %union.rec** %res, align 8
  %237 = load %union.rec*, %union.rec** %res, align 8
  %238 = bitcast %union.rec* %237 to %struct.word_type*
  %239 = getelementptr inbounds %struct.word_type, %struct.word_type* %238, i32 0, i32 1
  %240 = bitcast %union.FIRST_UNION* %239 to %struct.anon*
  %241 = getelementptr inbounds %struct.anon, %struct.anon* %240, i32 0, i32 0
  %242 = load i8, i8* %241, align 1
  %243 = zext i8 %242 to i32
  %244 = icmp eq i32 %243, 11
  br i1 %244, label %260, label %245

; <label>:245                                     ; preds = %221
  %246 = load %union.rec*, %union.rec** %res, align 8
  %247 = bitcast %union.rec* %246 to %struct.word_type*
  %248 = getelementptr inbounds %struct.word_type, %struct.word_type* %247, i32 0, i32 1
  %249 = bitcast %union.FIRST_UNION* %248 to %struct.anon*
  %250 = getelementptr inbounds %struct.anon, %struct.anon* %249, i32 0, i32 0
  %251 = load i8, i8* %250, align 1
  %252 = zext i8 %251 to i32
  %253 = icmp eq i32 %252, 12
  br i1 %253, label %260, label %254

; <label>:254                                     ; preds = %245
  %255 = load %union.rec*, %union.rec** %2, align 8
  %256 = bitcast %union.rec* %255 to %struct.word_type*
  %257 = getelementptr inbounds %struct.word_type, %struct.word_type* %256, i32 0, i32 1
  %258 = bitcast %union.FIRST_UNION* %257 to %struct.FILE_POS*
  %259 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 46, i32 1, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.5, i32 0, i32 0), i32 2, %struct.FILE_POS* %258, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %1
  br label %282

; <label>:260                                     ; preds = %245, %221
  %261 = load %union.rec*, %union.rec** %res, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 4
  %264 = getelementptr inbounds [4 x i8], [4 x i8]* %263, i32 0, i32 0
  %265 = call i32 @strcmp(i8* %264, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.7, i32 0, i32 0)) #4
  %266 = icmp eq i32 %265, 0
  br i1 %266, label %267, label %268

; <label>:267                                     ; preds = %260
  store i32 1, i32* %1
  br label %282

; <label>:268                                     ; preds = %260
  %269 = load %union.rec*, %union.rec** %res, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 4
  %272 = getelementptr inbounds [4 x i8], [4 x i8]* %271, i32 0, i32 0
  %273 = call i32 @strcmp(i8* %272, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.8, i32 0, i32 0)) #4
  %274 = icmp eq i32 %273, 0
  br i1 %274, label %275, label %276

; <label>:275                                     ; preds = %268
  store i32 0, i32* %1
  br label %282

; <label>:276                                     ; preds = %268
  %277 = load %union.rec*, %union.rec** %2, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 1
  %280 = bitcast %union.FIRST_UNION* %279 to %struct.FILE_POS*
  %281 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 46, i32 2, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %280, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i32 0, i32 0))
  store i32 0, i32* %1
  br label %282

; <label>:282                                     ; preds = %276, %275, %267, %254
  %283 = load i32, i32* %1
  ret i32 %283
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare %union.rec* @Manifest(%union.rec*, %union.rec*, %struct.STYLE*, %union.rec**, %union.rec**, %union.rec**, %union.rec**, i32, i32, %union.rec**, i32) #1

declare %union.rec* @ReplaceWithTidy(%union.rec*, i32) #1

; Function Attrs: nounwind readonly
declare i32 @strcmp(i8*, i8*) #2

; Function Attrs: nounwind uwtable
define void @SetOptimize(%union.rec* %hd, %struct.STYLE* %style) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %struct.STYLE*, align 8
  %buff = alloca [512 x i8], align 16
  %seq = alloca [512 x i8], align 16
  %res = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %dfnum = alloca i16, align 2
  %dfpos = alloca i64, align 8
  %cont = alloca i64, align 8
  %dlnum = alloca i32, align 4
  %num = alloca i32, align 4
  store %union.rec* %hd, %union.rec** %1, align 8
  store %struct.STYLE* %style, %struct.STYLE** %2, align 8
  %3 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %4 = load %union.rec*, %union.rec** %1, align 8
  %5 = bitcast %union.rec* %4 to %struct.closure_type*
  %6 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %5, i32 0, i32 5
  %7 = load %union.rec*, %union.rec** %6, align 8
  %8 = call i8* @SymName(%union.rec* %7)
  %9 = call i8* @strcpy(i8* %3, i8* %8) #5
  %10 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %11 = call i8* @strcat(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  %12 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %13 = load %union.rec*, %union.rec** %1, align 8
  %14 = bitcast %union.rec* %13 to %struct.word_type*
  %15 = getelementptr inbounds %struct.word_type, %struct.word_type* %14, i32 0, i32 1
  %16 = bitcast %union.FIRST_UNION* %15 to %struct.FILE_POS*
  %17 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 1048575
  %20 = call i8* @StringInt(i32 %19)
  %21 = call i8* @strcat(i8* %12, i8* %20) #5
  %22 = load %union.rec*, %union.rec** @OldCrossDb, align 8
  %23 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %24 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %25 = getelementptr inbounds [512 x i8], [512 x i8]* %seq, i32 0, i32 0
  %26 = call i32 @DbRetrieve(%union.rec* %22, i32 0, %union.rec* %23, i8* %24, i8* %25, i16* %dfnum, i64* %dfpos, i32* %dlnum, i64* %cont)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %829

; <label>:28                                      ; preds = %0
  call void @SwitchScope(%union.rec* null)
  %29 = load i16, i16* %dfnum, align 2
  %30 = load i64, i64* %dfpos, align 8
  %31 = load i32, i32* %dlnum, align 4
  %32 = call %union.rec* @ReadFromFile(i16 zeroext %29, i64 %30, i32 %31)
  store %union.rec* %32, %union.rec** %res, align 8
  call void @UnSwitchScope(%union.rec* null)
  %33 = load %union.rec*, %union.rec** %res, align 8
  %34 = icmp ne %union.rec* %33, null
  br i1 %34, label %38, label %35

; <label>:35                                      ; preds = %28
  %36 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %37 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i32 0, i32 0))
  br label %38

; <label>:38                                      ; preds = %35, %28
  %39 = load %union.rec*, %union.rec** %res, align 8
  %40 = bitcast %union.rec* %39 to %struct.word_type*
  %41 = getelementptr inbounds %struct.word_type, %struct.word_type* %40, i32 0, i32 1
  %42 = bitcast %union.FIRST_UNION* %41 to %struct.anon*
  %43 = getelementptr inbounds %struct.anon, %struct.anon* %42, i32 0, i32 0
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = icmp eq i32 %45, 2
  br i1 %46, label %50, label %47

; <label>:47                                      ; preds = %38
  %48 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %49 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %48, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.12, i32 0, i32 0))
  br label %50

; <label>:50                                      ; preds = %47, %38
  %51 = load %union.rec*, %union.rec** %res, align 8
  %52 = bitcast %union.rec* %51 to %struct.closure_type*
  %53 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %52, i32 0, i32 5
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %56 = icmp eq %union.rec* %54, %55
  br i1 %56, label %60, label %57

; <label>:57                                      ; preds = %50
  %58 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %59 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %58, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.13, i32 0, i32 0))
  br label %60

; <label>:60                                      ; preds = %57, %50
  %61 = load %union.rec*, %union.rec** %res, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 0
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  %66 = load %union.rec*, %union.rec** %65, align 8
  %67 = load %union.rec*, %union.rec** %res, align 8
  %68 = icmp ne %union.rec* %66, %67
  br i1 %68, label %72, label %69

; <label>:69                                      ; preds = %60
  %70 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %71 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.14, i32 0, i32 0))
  br label %72

; <label>:72                                      ; preds = %69, %60
  %73 = load %union.rec*, %union.rec** %res, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 0
  %76 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %75, i32 0, i64 0
  %77 = getelementptr inbounds %struct.LIST, %struct.LIST* %76, i32 0, i32 1
  %78 = load %union.rec*, %union.rec** %77, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 1
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %82, align 8
  store %union.rec* %83, %union.rec** %y, align 8
  br label %84

; <label>:84                                      ; preds = %94, %72
  %85 = load %union.rec*, %union.rec** %y, align 8
  %86 = bitcast %union.rec* %85 to %struct.word_type*
  %87 = getelementptr inbounds %struct.word_type, %struct.word_type* %86, i32 0, i32 1
  %88 = bitcast %union.FIRST_UNION* %87 to %struct.anon*
  %89 = getelementptr inbounds %struct.anon, %struct.anon* %88, i32 0, i32 0
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %101

; <label>:93                                      ; preds = %84
  br label %94

; <label>:94                                      ; preds = %93
  %95 = load %union.rec*, %union.rec** %y, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 0
  %100 = load %union.rec*, %union.rec** %99, align 8
  store %union.rec* %100, %union.rec** %y, align 8
  br label %84

; <label>:101                                     ; preds = %84
  %102 = load %union.rec*, %union.rec** %y, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 1
  %105 = bitcast %union.FIRST_UNION* %104 to %struct.anon*
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 0
  %107 = load i8, i8* %106, align 1
  %108 = zext i8 %107 to i32
  %109 = icmp eq i32 %108, 10
  br i1 %109, label %113, label %110

; <label>:110                                     ; preds = %101
  %111 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %112 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %111, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.15, i32 0, i32 0))
  br label %113

; <label>:113                                     ; preds = %110, %101
  %114 = load %union.rec*, %union.rec** %y, align 8
  %115 = bitcast %union.rec* %114 to %struct.word_type*
  %116 = getelementptr inbounds %struct.word_type, %struct.word_type* %115, i32 0, i32 0
  %117 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %116, i32 0, i64 0
  %118 = getelementptr inbounds %struct.LIST, %struct.LIST* %117, i32 0, i32 1
  %119 = load %union.rec*, %union.rec** %118, align 8
  %120 = bitcast %union.rec* %119 to %struct.word_type*
  %121 = getelementptr inbounds %struct.word_type, %struct.word_type* %120, i32 0, i32 0
  %122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %121, i32 0, i64 1
  %123 = getelementptr inbounds %struct.LIST, %struct.LIST* %122, i32 0, i32 0
  %124 = load %union.rec*, %union.rec** %123, align 8
  store %union.rec* %124, %union.rec** %y, align 8
  br label %125

; <label>:125                                     ; preds = %135, %113
  %126 = load %union.rec*, %union.rec** %y, align 8
  %127 = bitcast %union.rec* %126 to %struct.word_type*
  %128 = getelementptr inbounds %struct.word_type, %struct.word_type* %127, i32 0, i32 1
  %129 = bitcast %union.FIRST_UNION* %128 to %struct.anon*
  %130 = getelementptr inbounds %struct.anon, %struct.anon* %129, i32 0, i32 0
  %131 = load i8, i8* %130, align 1
  %132 = zext i8 %131 to i32
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %142

; <label>:134                                     ; preds = %125
  br label %135

; <label>:135                                     ; preds = %134
  %136 = load %union.rec*, %union.rec** %y, align 8
  %137 = bitcast %union.rec* %136 to %struct.word_type*
  %138 = getelementptr inbounds %struct.word_type, %struct.word_type* %137, i32 0, i32 0
  %139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %138, i32 0, i64 1
  %140 = getelementptr inbounds %struct.LIST, %struct.LIST* %139, i32 0, i32 0
  %141 = load %union.rec*, %union.rec** %140, align 8
  store %union.rec* %141, %union.rec** %y, align 8
  br label %125

; <label>:142                                     ; preds = %125
  %143 = load %union.rec*, %union.rec** %y, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 1
  %146 = bitcast %union.FIRST_UNION* %145 to %struct.anon*
  %147 = getelementptr inbounds %struct.anon, %struct.anon* %146, i32 0, i32 0
  %148 = load i8, i8* %147, align 1
  %149 = zext i8 %148 to i32
  %150 = icmp eq i32 %149, 17
  br i1 %150, label %154, label %151

; <label>:151                                     ; preds = %142
  %152 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %153 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %152, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.16, i32 0, i32 0))
  br label %154

; <label>:154                                     ; preds = %151, %142
  %155 = load %union.rec*, %union.rec** %y, align 8
  %156 = call %union.rec* @ReplaceWithTidy(%union.rec* %155, i32 0)
  store %union.rec* %156, %union.rec** %y, align 8
  %157 = load %union.rec*, %union.rec** %1, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 2
  %160 = bitcast %union.SECOND_UNION* %159 to %struct.anon.2*
  %161 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %160, i32 0, i32 2
  %162 = load i16, i16* %161, align 2
  %163 = and i16 %162, -513
  store i16 %163, i16* %161, align 2
  %164 = load %union.rec*, %union.rec** %y, align 8
  %165 = bitcast %union.rec* %164 to %struct.word_type*
  %166 = getelementptr inbounds %struct.word_type, %struct.word_type* %165, i32 0, i32 1
  %167 = bitcast %union.FIRST_UNION* %166 to %struct.anon*
  %168 = getelementptr inbounds %struct.anon, %struct.anon* %167, i32 0, i32 0
  %169 = load i8, i8* %168, align 1
  %170 = zext i8 %169 to i32
  %171 = icmp eq i32 %170, 17
  br i1 %171, label %175, label %172

; <label>:172                                     ; preds = %154
  %173 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %174 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %173, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.17, i32 0, i32 0))
  br label %175

; <label>:175                                     ; preds = %172, %154
  %176 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %176, %union.rec** %link, align 8
  br label %177

; <label>:177                                     ; preds = %650, %175
  %178 = load %union.rec*, %union.rec** %link, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 0
  %181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %180, i32 0, i64 0
  %182 = getelementptr inbounds %struct.LIST, %struct.LIST* %181, i32 0, i32 1
  %183 = load %union.rec*, %union.rec** %182, align 8
  %184 = load %union.rec*, %union.rec** %y, align 8
  %185 = icmp ne %union.rec* %183, %184
  br i1 %185, label %186, label %657

; <label>:186                                     ; preds = %177
  %187 = load %union.rec*, %union.rec** %link, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 0
  %190 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %189, i32 0, i64 0
  %191 = getelementptr inbounds %struct.LIST, %struct.LIST* %190, i32 0, i32 1
  %192 = load %union.rec*, %union.rec** %191, align 8
  %193 = bitcast %union.rec* %192 to %struct.word_type*
  %194 = getelementptr inbounds %struct.word_type, %struct.word_type* %193, i32 0, i32 0
  %195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %194, i32 0, i64 1
  %196 = getelementptr inbounds %struct.LIST, %struct.LIST* %195, i32 0, i32 0
  %197 = load %union.rec*, %union.rec** %196, align 8
  store %union.rec* %197, %union.rec** %z, align 8
  br label %198

; <label>:198                                     ; preds = %208, %186
  %199 = load %union.rec*, %union.rec** %z, align 8
  %200 = bitcast %union.rec* %199 to %struct.word_type*
  %201 = getelementptr inbounds %struct.word_type, %struct.word_type* %200, i32 0, i32 1
  %202 = bitcast %union.FIRST_UNION* %201 to %struct.anon*
  %203 = getelementptr inbounds %struct.anon, %struct.anon* %202, i32 0, i32 0
  %204 = load i8, i8* %203, align 1
  %205 = zext i8 %204 to i32
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %207, label %215

; <label>:207                                     ; preds = %198
  br label %208

; <label>:208                                     ; preds = %207
  %209 = load %union.rec*, %union.rec** %z, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 1
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %213, align 8
  store %union.rec* %214, %union.rec** %z, align 8
  br label %198

; <label>:215                                     ; preds = %198
  %216 = load %union.rec*, %union.rec** %z, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 1
  %219 = bitcast %union.FIRST_UNION* %218 to %struct.anon*
  %220 = getelementptr inbounds %struct.anon, %struct.anon* %219, i32 0, i32 0
  %221 = load i8, i8* %220, align 1
  %222 = zext i8 %221 to i32
  %223 = icmp eq i32 %222, 1
  br i1 %223, label %224, label %408

; <label>:224                                     ; preds = %215
  %225 = load %union.rec*, %union.rec** %link, align 8
  %226 = bitcast %union.rec* %225 to %struct.word_type*
  %227 = getelementptr inbounds %struct.word_type, %struct.word_type* %226, i32 0, i32 0
  %228 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %227, i32 0, i64 0
  %229 = getelementptr inbounds %struct.LIST, %struct.LIST* %228, i32 0, i32 1
  %230 = load %union.rec*, %union.rec** %229, align 8
  store %union.rec* %230, %union.rec** @xx_link, align 8
  %231 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %231, %union.rec** @zz_hold, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = bitcast %union.rec* %232 to %struct.word_type*
  %234 = getelementptr inbounds %struct.word_type, %struct.word_type* %233, i32 0, i32 0
  %235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %234, i32 0, i64 1
  %236 = getelementptr inbounds %struct.LIST, %struct.LIST* %235, i32 0, i32 1
  %237 = load %union.rec*, %union.rec** %236, align 8
  %238 = load %union.rec*, %union.rec** @zz_hold, align 8
  %239 = icmp eq %union.rec* %237, %238
  br i1 %239, label %240, label %241

; <label>:240                                     ; preds = %224
  br label %282

; <label>:241                                     ; preds = %224
  %242 = load %union.rec*, %union.rec** @zz_hold, align 8
  %243 = bitcast %union.rec* %242 to %struct.word_type*
  %244 = getelementptr inbounds %struct.word_type, %struct.word_type* %243, i32 0, i32 0
  %245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %244, i32 0, i64 1
  %246 = getelementptr inbounds %struct.LIST, %struct.LIST* %245, i32 0, i32 1
  %247 = load %union.rec*, %union.rec** %246, align 8
  store %union.rec* %247, %union.rec** @zz_res, align 8
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = bitcast %union.rec* %248 to %struct.word_type*
  %250 = getelementptr inbounds %struct.word_type, %struct.word_type* %249, i32 0, i32 0
  %251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %250, i32 0, i64 1
  %252 = getelementptr inbounds %struct.LIST, %struct.LIST* %251, i32 0, i32 0
  %253 = load %union.rec*, %union.rec** %252, align 8
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 1
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 0
  store %union.rec* %253, %union.rec** %258, align 8
  %259 = load %union.rec*, %union.rec** @zz_res, align 8
  %260 = load %union.rec*, %union.rec** @zz_hold, align 8
  %261 = bitcast %union.rec* %260 to %struct.word_type*
  %262 = getelementptr inbounds %struct.word_type, %struct.word_type* %261, i32 0, i32 0
  %263 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %262, i32 0, i64 1
  %264 = getelementptr inbounds %struct.LIST, %struct.LIST* %263, i32 0, i32 0
  %265 = load %union.rec*, %union.rec** %264, align 8
  %266 = bitcast %union.rec* %265 to %struct.word_type*
  %267 = getelementptr inbounds %struct.word_type, %struct.word_type* %266, i32 0, i32 0
  %268 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %267, i32 0, i64 1
  %269 = getelementptr inbounds %struct.LIST, %struct.LIST* %268, i32 0, i32 1
  store %union.rec* %259, %union.rec** %269, align 8
  %270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 1
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 1
  store %union.rec* %270, %union.rec** %275, align 8
  %276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 0
  %279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %278, i32 0, i64 1
  %280 = getelementptr inbounds %struct.LIST, %struct.LIST* %279, i32 0, i32 0
  store %union.rec* %270, %union.rec** %280, align 8
  %281 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %282

; <label>:282                                     ; preds = %241, %240
  %283 = phi %union.rec* [ null, %240 ], [ %281, %241 ]
  store %union.rec* %283, %union.rec** @xx_tmp, align 8
  %284 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %284, %union.rec** @zz_hold, align 8
  %285 = load %union.rec*, %union.rec** @zz_hold, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 0
  %288 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %287, i32 0, i64 0
  %289 = getelementptr inbounds %struct.LIST, %struct.LIST* %288, i32 0, i32 1
  %290 = load %union.rec*, %union.rec** %289, align 8
  %291 = load %union.rec*, %union.rec** @zz_hold, align 8
  %292 = icmp eq %union.rec* %290, %291
  br i1 %292, label %293, label %294

; <label>:293                                     ; preds = %282
  br label %335

; <label>:294                                     ; preds = %282
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = bitcast %union.rec* %295 to %struct.word_type*
  %297 = getelementptr inbounds %struct.word_type, %struct.word_type* %296, i32 0, i32 0
  %298 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %297, i32 0, i64 0
  %299 = getelementptr inbounds %struct.LIST, %struct.LIST* %298, i32 0, i32 1
  %300 = load %union.rec*, %union.rec** %299, align 8
  store %union.rec* %300, %union.rec** @zz_res, align 8
  %301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %302 = bitcast %union.rec* %301 to %struct.word_type*
  %303 = getelementptr inbounds %struct.word_type, %struct.word_type* %302, i32 0, i32 0
  %304 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %303, i32 0, i64 0
  %305 = getelementptr inbounds %struct.LIST, %struct.LIST* %304, i32 0, i32 0
  %306 = load %union.rec*, %union.rec** %305, align 8
  %307 = load %union.rec*, %union.rec** @zz_res, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 0
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  store %union.rec* %306, %union.rec** %311, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %313 = load %union.rec*, %union.rec** @zz_hold, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 0
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 0
  %318 = load %union.rec*, %union.rec** %317, align 8
  %319 = bitcast %union.rec* %318 to %struct.word_type*
  %320 = getelementptr inbounds %struct.word_type, %struct.word_type* %319, i32 0, i32 0
  %321 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %320, i32 0, i64 0
  %322 = getelementptr inbounds %struct.LIST, %struct.LIST* %321, i32 0, i32 1
  store %union.rec* %312, %union.rec** %322, align 8
  %323 = load %union.rec*, %union.rec** @zz_hold, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = bitcast %union.rec* %324 to %struct.word_type*
  %326 = getelementptr inbounds %struct.word_type, %struct.word_type* %325, i32 0, i32 0
  %327 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %326, i32 0, i64 0
  %328 = getelementptr inbounds %struct.LIST, %struct.LIST* %327, i32 0, i32 1
  store %union.rec* %323, %union.rec** %328, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 0
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 0
  store %union.rec* %323, %union.rec** %333, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %335

; <label>:335                                     ; preds = %294, %293
  %336 = phi %union.rec* [ null, %293 ], [ %334, %294 ]
  %337 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %337, %union.rec** @zz_hold, align 8
  %338 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %338, %union.rec** @zz_hold, align 8
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 1
  %342 = bitcast %union.FIRST_UNION* %341 to %struct.anon*
  %343 = getelementptr inbounds %struct.anon, %struct.anon* %342, i32 0, i32 0
  %344 = load i8, i8* %343, align 1
  %345 = zext i8 %344 to i32
  %346 = icmp eq i32 %345, 11
  br i1 %346, label %356, label %347

; <label>:347                                     ; preds = %335
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  %349 = bitcast %union.rec* %348 to %struct.word_type*
  %350 = getelementptr inbounds %struct.word_type, %struct.word_type* %349, i32 0, i32 1
  %351 = bitcast %union.FIRST_UNION* %350 to %struct.anon*
  %352 = getelementptr inbounds %struct.anon, %struct.anon* %351, i32 0, i32 0
  %353 = load i8, i8* %352, align 1
  %354 = zext i8 %353 to i32
  %355 = icmp eq i32 %354, 12
  br i1 %355, label %356, label %364

; <label>:356                                     ; preds = %347, %335
  %357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %358 = bitcast %union.rec* %357 to %struct.word_type*
  %359 = getelementptr inbounds %struct.word_type, %struct.word_type* %358, i32 0, i32 1
  %360 = bitcast %union.FIRST_UNION* %359 to %struct.anon*
  %361 = getelementptr inbounds %struct.anon, %struct.anon* %360, i32 0, i32 1
  %362 = load i8, i8* %361, align 1
  %363 = zext i8 %362 to i32
  br label %375

; <label>:364                                     ; preds = %347
  %365 = load %union.rec*, %union.rec** @zz_hold, align 8
  %366 = bitcast %union.rec* %365 to %struct.word_type*
  %367 = getelementptr inbounds %struct.word_type, %struct.word_type* %366, i32 0, i32 1
  %368 = bitcast %union.FIRST_UNION* %367 to %struct.anon*
  %369 = getelementptr inbounds %struct.anon, %struct.anon* %368, i32 0, i32 0
  %370 = load i8, i8* %369, align 1
  %371 = zext i8 %370 to i64
  %372 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %371
  %373 = load i8, i8* %372, align 1
  %374 = zext i8 %373 to i32
  br label %375

; <label>:375                                     ; preds = %364, %356
  %376 = phi i32 [ %363, %356 ], [ %374, %364 ]
  store i32 %376, i32* @zz_size, align 4
  %377 = load i32, i32* @zz_size, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %378
  %380 = load %union.rec*, %union.rec** %379, align 8
  %381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %382 = bitcast %union.rec* %381 to %struct.word_type*
  %383 = getelementptr inbounds %struct.word_type, %struct.word_type* %382, i32 0, i32 0
  %384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %383, i32 0, i64 0
  %385 = getelementptr inbounds %struct.LIST, %struct.LIST* %384, i32 0, i32 0
  store %union.rec* %380, %union.rec** %385, align 8
  %386 = load %union.rec*, %union.rec** @zz_hold, align 8
  %387 = load i32, i32* @zz_size, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %388
  store %union.rec* %386, %union.rec** %389, align 8
  %390 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 1
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 1
  %395 = load %union.rec*, %union.rec** %394, align 8
  %396 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %397 = icmp eq %union.rec* %395, %396
  br i1 %397, label %398, label %401

; <label>:398                                     ; preds = %375
  %399 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %400 = call i32 @DisposeObject(%union.rec* %399)
  br label %401

; <label>:401                                     ; preds = %398, %375
  %402 = load %union.rec*, %union.rec** %link, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 0
  %405 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %404, i32 0, i64 0
  %406 = getelementptr inbounds %struct.LIST, %struct.LIST* %405, i32 0, i32 0
  %407 = load %union.rec*, %union.rec** %406, align 8
  store %union.rec* %407, %union.rec** %link, align 8
  br label %649

; <label>:408                                     ; preds = %215
  %409 = load %union.rec*, %union.rec** %z, align 8
  %410 = bitcast %union.rec* %409 to %struct.word_type*
  %411 = getelementptr inbounds %struct.word_type, %struct.word_type* %410, i32 0, i32 1
  %412 = bitcast %union.FIRST_UNION* %411 to %struct.anon*
  %413 = getelementptr inbounds %struct.anon, %struct.anon* %412, i32 0, i32 0
  %414 = load i8, i8* %413, align 1
  %415 = zext i8 %414 to i32
  %416 = icmp eq i32 %415, 11
  br i1 %416, label %426, label %417

; <label>:417                                     ; preds = %408
  %418 = load %union.rec*, %union.rec** %z, align 8
  %419 = bitcast %union.rec* %418 to %struct.word_type*
  %420 = getelementptr inbounds %struct.word_type, %struct.word_type* %419, i32 0, i32 1
  %421 = bitcast %union.FIRST_UNION* %420 to %struct.anon*
  %422 = getelementptr inbounds %struct.anon, %struct.anon* %421, i32 0, i32 0
  %423 = load i8, i8* %422, align 1
  %424 = zext i8 %423 to i32
  %425 = icmp eq i32 %424, 12
  br i1 %425, label %426, label %645

; <label>:426                                     ; preds = %417, %408
  %427 = load %union.rec*, %union.rec** %z, align 8
  %428 = bitcast %union.rec* %427 to %struct.word_type*
  %429 = getelementptr inbounds %struct.word_type, %struct.word_type* %428, i32 0, i32 4
  %430 = getelementptr inbounds [4 x i8], [4 x i8]* %429, i32 0, i32 0
  %431 = call i32 @strcmp(i8* %430, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0)) #4
  %432 = icmp eq i32 %431, 0
  br i1 %432, label %433, label %625

; <label>:433                                     ; preds = %426
  %434 = load %union.rec*, %union.rec** %1, align 8
  %435 = bitcast %union.rec* %434 to %struct.word_type*
  %436 = getelementptr inbounds %struct.word_type, %struct.word_type* %435, i32 0, i32 2
  %437 = bitcast %union.SECOND_UNION* %436 to %struct.anon.2*
  %438 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %437, i32 0, i32 2
  %439 = load i16, i16* %438, align 2
  %440 = and i16 %439, -513
  %441 = or i16 %440, 512
  store i16 %441, i16* %438, align 2
  %442 = load %union.rec*, %union.rec** %link, align 8
  %443 = bitcast %union.rec* %442 to %struct.word_type*
  %444 = getelementptr inbounds %struct.word_type, %struct.word_type* %443, i32 0, i32 0
  %445 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %444, i32 0, i64 0
  %446 = getelementptr inbounds %struct.LIST, %struct.LIST* %445, i32 0, i32 1
  %447 = load %union.rec*, %union.rec** %446, align 8
  store %union.rec* %447, %union.rec** @xx_link, align 8
  %448 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %448, %union.rec** @zz_hold, align 8
  %449 = load %union.rec*, %union.rec** @zz_hold, align 8
  %450 = bitcast %union.rec* %449 to %struct.word_type*
  %451 = getelementptr inbounds %struct.word_type, %struct.word_type* %450, i32 0, i32 0
  %452 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %451, i32 0, i64 1
  %453 = getelementptr inbounds %struct.LIST, %struct.LIST* %452, i32 0, i32 1
  %454 = load %union.rec*, %union.rec** %453, align 8
  %455 = load %union.rec*, %union.rec** @zz_hold, align 8
  %456 = icmp eq %union.rec* %454, %455
  br i1 %456, label %457, label %458

; <label>:457                                     ; preds = %433
  br label %499

; <label>:458                                     ; preds = %433
  %459 = load %union.rec*, %union.rec** @zz_hold, align 8
  %460 = bitcast %union.rec* %459 to %struct.word_type*
  %461 = getelementptr inbounds %struct.word_type, %struct.word_type* %460, i32 0, i32 0
  %462 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %461, i32 0, i64 1
  %463 = getelementptr inbounds %struct.LIST, %struct.LIST* %462, i32 0, i32 1
  %464 = load %union.rec*, %union.rec** %463, align 8
  store %union.rec* %464, %union.rec** @zz_res, align 8
  %465 = load %union.rec*, %union.rec** @zz_hold, align 8
  %466 = bitcast %union.rec* %465 to %struct.word_type*
  %467 = getelementptr inbounds %struct.word_type, %struct.word_type* %466, i32 0, i32 0
  %468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %467, i32 0, i64 1
  %469 = getelementptr inbounds %struct.LIST, %struct.LIST* %468, i32 0, i32 0
  %470 = load %union.rec*, %union.rec** %469, align 8
  %471 = load %union.rec*, %union.rec** @zz_res, align 8
  %472 = bitcast %union.rec* %471 to %struct.word_type*
  %473 = getelementptr inbounds %struct.word_type, %struct.word_type* %472, i32 0, i32 0
  %474 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %473, i32 0, i64 1
  %475 = getelementptr inbounds %struct.LIST, %struct.LIST* %474, i32 0, i32 0
  store %union.rec* %470, %union.rec** %475, align 8
  %476 = load %union.rec*, %union.rec** @zz_res, align 8
  %477 = load %union.rec*, %union.rec** @zz_hold, align 8
  %478 = bitcast %union.rec* %477 to %struct.word_type*
  %479 = getelementptr inbounds %struct.word_type, %struct.word_type* %478, i32 0, i32 0
  %480 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %479, i32 0, i64 1
  %481 = getelementptr inbounds %struct.LIST, %struct.LIST* %480, i32 0, i32 0
  %482 = load %union.rec*, %union.rec** %481, align 8
  %483 = bitcast %union.rec* %482 to %struct.word_type*
  %484 = getelementptr inbounds %struct.word_type, %struct.word_type* %483, i32 0, i32 0
  %485 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %484, i32 0, i64 1
  %486 = getelementptr inbounds %struct.LIST, %struct.LIST* %485, i32 0, i32 1
  store %union.rec* %476, %union.rec** %486, align 8
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
  %498 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %499

; <label>:499                                     ; preds = %458, %457
  %500 = phi %union.rec* [ null, %457 ], [ %498, %458 ]
  store %union.rec* %500, %union.rec** @xx_tmp, align 8
  %501 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %501, %union.rec** @zz_hold, align 8
  %502 = load %union.rec*, %union.rec** @zz_hold, align 8
  %503 = bitcast %union.rec* %502 to %struct.word_type*
  %504 = getelementptr inbounds %struct.word_type, %struct.word_type* %503, i32 0, i32 0
  %505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %504, i32 0, i64 0
  %506 = getelementptr inbounds %struct.LIST, %struct.LIST* %505, i32 0, i32 1
  %507 = load %union.rec*, %union.rec** %506, align 8
  %508 = load %union.rec*, %union.rec** @zz_hold, align 8
  %509 = icmp eq %union.rec* %507, %508
  br i1 %509, label %510, label %511

; <label>:510                                     ; preds = %499
  br label %552

; <label>:511                                     ; preds = %499
  %512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %513 = bitcast %union.rec* %512 to %struct.word_type*
  %514 = getelementptr inbounds %struct.word_type, %struct.word_type* %513, i32 0, i32 0
  %515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %514, i32 0, i64 0
  %516 = getelementptr inbounds %struct.LIST, %struct.LIST* %515, i32 0, i32 1
  %517 = load %union.rec*, %union.rec** %516, align 8
  store %union.rec* %517, %union.rec** @zz_res, align 8
  %518 = load %union.rec*, %union.rec** @zz_hold, align 8
  %519 = bitcast %union.rec* %518 to %struct.word_type*
  %520 = getelementptr inbounds %struct.word_type, %struct.word_type* %519, i32 0, i32 0
  %521 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %520, i32 0, i64 0
  %522 = getelementptr inbounds %struct.LIST, %struct.LIST* %521, i32 0, i32 0
  %523 = load %union.rec*, %union.rec** %522, align 8
  %524 = load %union.rec*, %union.rec** @zz_res, align 8
  %525 = bitcast %union.rec* %524 to %struct.word_type*
  %526 = getelementptr inbounds %struct.word_type, %struct.word_type* %525, i32 0, i32 0
  %527 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %526, i32 0, i64 0
  %528 = getelementptr inbounds %struct.LIST, %struct.LIST* %527, i32 0, i32 0
  store %union.rec* %523, %union.rec** %528, align 8
  %529 = load %union.rec*, %union.rec** @zz_res, align 8
  %530 = load %union.rec*, %union.rec** @zz_hold, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 0
  %533 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %532, i32 0, i64 0
  %534 = getelementptr inbounds %struct.LIST, %struct.LIST* %533, i32 0, i32 0
  %535 = load %union.rec*, %union.rec** %534, align 8
  %536 = bitcast %union.rec* %535 to %struct.word_type*
  %537 = getelementptr inbounds %struct.word_type, %struct.word_type* %536, i32 0, i32 0
  %538 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %537, i32 0, i64 0
  %539 = getelementptr inbounds %struct.LIST, %struct.LIST* %538, i32 0, i32 1
  store %union.rec* %529, %union.rec** %539, align 8
  %540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %542 = bitcast %union.rec* %541 to %struct.word_type*
  %543 = getelementptr inbounds %struct.word_type, %struct.word_type* %542, i32 0, i32 0
  %544 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %543, i32 0, i64 0
  %545 = getelementptr inbounds %struct.LIST, %struct.LIST* %544, i32 0, i32 1
  store %union.rec* %540, %union.rec** %545, align 8
  %546 = load %union.rec*, %union.rec** @zz_hold, align 8
  %547 = bitcast %union.rec* %546 to %struct.word_type*
  %548 = getelementptr inbounds %struct.word_type, %struct.word_type* %547, i32 0, i32 0
  %549 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %548, i32 0, i64 0
  %550 = getelementptr inbounds %struct.LIST, %struct.LIST* %549, i32 0, i32 0
  store %union.rec* %540, %union.rec** %550, align 8
  %551 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %552

; <label>:552                                     ; preds = %511, %510
  %553 = phi %union.rec* [ null, %510 ], [ %551, %511 ]
  %554 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %554, %union.rec** @zz_hold, align 8
  %555 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %555, %union.rec** @zz_hold, align 8
  %556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %557 = bitcast %union.rec* %556 to %struct.word_type*
  %558 = getelementptr inbounds %struct.word_type, %struct.word_type* %557, i32 0, i32 1
  %559 = bitcast %union.FIRST_UNION* %558 to %struct.anon*
  %560 = getelementptr inbounds %struct.anon, %struct.anon* %559, i32 0, i32 0
  %561 = load i8, i8* %560, align 1
  %562 = zext i8 %561 to i32
  %563 = icmp eq i32 %562, 11
  br i1 %563, label %573, label %564

; <label>:564                                     ; preds = %552
  %565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %566 = bitcast %union.rec* %565 to %struct.word_type*
  %567 = getelementptr inbounds %struct.word_type, %struct.word_type* %566, i32 0, i32 1
  %568 = bitcast %union.FIRST_UNION* %567 to %struct.anon*
  %569 = getelementptr inbounds %struct.anon, %struct.anon* %568, i32 0, i32 0
  %570 = load i8, i8* %569, align 1
  %571 = zext i8 %570 to i32
  %572 = icmp eq i32 %571, 12
  br i1 %572, label %573, label %581

; <label>:573                                     ; preds = %564, %552
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %575 = bitcast %union.rec* %574 to %struct.word_type*
  %576 = getelementptr inbounds %struct.word_type, %struct.word_type* %575, i32 0, i32 1
  %577 = bitcast %union.FIRST_UNION* %576 to %struct.anon*
  %578 = getelementptr inbounds %struct.anon, %struct.anon* %577, i32 0, i32 1
  %579 = load i8, i8* %578, align 1
  %580 = zext i8 %579 to i32
  br label %592

; <label>:581                                     ; preds = %564
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 1
  %585 = bitcast %union.FIRST_UNION* %584 to %struct.anon*
  %586 = getelementptr inbounds %struct.anon, %struct.anon* %585, i32 0, i32 0
  %587 = load i8, i8* %586, align 1
  %588 = zext i8 %587 to i64
  %589 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %588
  %590 = load i8, i8* %589, align 1
  %591 = zext i8 %590 to i32
  br label %592

; <label>:592                                     ; preds = %581, %573
  %593 = phi i32 [ %580, %573 ], [ %591, %581 ]
  store i32 %593, i32* @zz_size, align 4
  %594 = load i32, i32* @zz_size, align 4
  %595 = sext i32 %594 to i64
  %596 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %595
  %597 = load %union.rec*, %union.rec** %596, align 8
  %598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %599 = bitcast %union.rec* %598 to %struct.word_type*
  %600 = getelementptr inbounds %struct.word_type, %struct.word_type* %599, i32 0, i32 0
  %601 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %600, i32 0, i64 0
  %602 = getelementptr inbounds %struct.LIST, %struct.LIST* %601, i32 0, i32 0
  store %union.rec* %597, %union.rec** %602, align 8
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %604 = load i32, i32* @zz_size, align 4
  %605 = sext i32 %604 to i64
  %606 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %605
  store %union.rec* %603, %union.rec** %606, align 8
  %607 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %608 = bitcast %union.rec* %607 to %struct.word_type*
  %609 = getelementptr inbounds %struct.word_type, %struct.word_type* %608, i32 0, i32 0
  %610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %609, i32 0, i64 1
  %611 = getelementptr inbounds %struct.LIST, %struct.LIST* %610, i32 0, i32 1
  %612 = load %union.rec*, %union.rec** %611, align 8
  %613 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %614 = icmp eq %union.rec* %612, %613
  br i1 %614, label %615, label %618

; <label>:615                                     ; preds = %592
  %616 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %617 = call i32 @DisposeObject(%union.rec* %616)
  br label %618

; <label>:618                                     ; preds = %615, %592
  %619 = load %union.rec*, %union.rec** %link, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 0
  %622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %621, i32 0, i64 0
  %623 = getelementptr inbounds %struct.LIST, %struct.LIST* %622, i32 0, i32 0
  %624 = load %union.rec*, %union.rec** %623, align 8
  store %union.rec* %624, %union.rec** %link, align 8
  br label %644

; <label>:625                                     ; preds = %426
  store i32 0, i32* %num, align 4
  %626 = load %union.rec*, %union.rec** %z, align 8
  %627 = bitcast %union.rec* %626 to %struct.word_type*
  %628 = getelementptr inbounds %struct.word_type, %struct.word_type* %627, i32 0, i32 4
  %629 = getelementptr inbounds [4 x i8], [4 x i8]* %628, i32 0, i32 0
  %630 = call i32 (i8*, i8*, ...) @__isoc99_sscanf(i8* %629, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.19, i32 0, i32 0), i32* %num) #5
  %631 = load i32, i32* %num, align 4
  %632 = icmp sgt i32 %631, 0
  br i1 %632, label %636, label %633

; <label>:633                                     ; preds = %625
  %634 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %635 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %634, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.20, i32 0, i32 0))
  br label %636

; <label>:636                                     ; preds = %633, %625
  %637 = load i32, i32* %num, align 4
  %638 = load %union.rec*, %union.rec** %z, align 8
  %639 = bitcast %union.rec* %638 to %struct.word_type*
  %640 = getelementptr inbounds %struct.word_type, %struct.word_type* %639, i32 0, i32 3
  %641 = bitcast %union.THIRD_UNION* %640 to %struct.anon.6*
  %642 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %641, i32 0, i32 0
  %643 = getelementptr inbounds [2 x i32], [2 x i32]* %642, i32 0, i64 0
  store i32 %637, i32* %643, align 4
  br label %644

; <label>:644                                     ; preds = %636, %618
  br label %648

; <label>:645                                     ; preds = %417
  %646 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %647 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %646, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.21, i32 0, i32 0))
  br label %648

; <label>:648                                     ; preds = %645, %644
  br label %649

; <label>:649                                     ; preds = %648, %401
  br label %650

; <label>:650                                     ; preds = %649
  %651 = load %union.rec*, %union.rec** %link, align 8
  %652 = bitcast %union.rec* %651 to %struct.word_type*
  %653 = getelementptr inbounds %struct.word_type, %struct.word_type* %652, i32 0, i32 0
  %654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %653, i32 0, i64 0
  %655 = getelementptr inbounds %struct.LIST, %struct.LIST* %654, i32 0, i32 1
  %656 = load %union.rec*, %union.rec** %655, align 8
  store %union.rec* %656, %union.rec** %link, align 8
  br label %177

; <label>:657                                     ; preds = %177
  %658 = load %union.rec*, %union.rec** %y, align 8
  %659 = bitcast %union.rec* %658 to %struct.word_type*
  %660 = getelementptr inbounds %struct.word_type, %struct.word_type* %659, i32 0, i32 0
  %661 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %660, i32 0, i64 1
  %662 = getelementptr inbounds %struct.LIST, %struct.LIST* %661, i32 0, i32 1
  %663 = load %union.rec*, %union.rec** %662, align 8
  store %union.rec* %663, %union.rec** @xx_link, align 8
  %664 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %664, %union.rec** @zz_hold, align 8
  %665 = load %union.rec*, %union.rec** @zz_hold, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 0
  %668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %667, i32 0, i64 1
  %669 = getelementptr inbounds %struct.LIST, %struct.LIST* %668, i32 0, i32 1
  %670 = load %union.rec*, %union.rec** %669, align 8
  %671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %672 = icmp eq %union.rec* %670, %671
  br i1 %672, label %673, label %674

; <label>:673                                     ; preds = %657
  br label %715

; <label>:674                                     ; preds = %657
  %675 = load %union.rec*, %union.rec** @zz_hold, align 8
  %676 = bitcast %union.rec* %675 to %struct.word_type*
  %677 = getelementptr inbounds %struct.word_type, %struct.word_type* %676, i32 0, i32 0
  %678 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %677, i32 0, i64 1
  %679 = getelementptr inbounds %struct.LIST, %struct.LIST* %678, i32 0, i32 1
  %680 = load %union.rec*, %union.rec** %679, align 8
  store %union.rec* %680, %union.rec** @zz_res, align 8
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  %682 = bitcast %union.rec* %681 to %struct.word_type*
  %683 = getelementptr inbounds %struct.word_type, %struct.word_type* %682, i32 0, i32 0
  %684 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %683, i32 0, i64 1
  %685 = getelementptr inbounds %struct.LIST, %struct.LIST* %684, i32 0, i32 0
  %686 = load %union.rec*, %union.rec** %685, align 8
  %687 = load %union.rec*, %union.rec** @zz_res, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 0
  %690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %689, i32 0, i64 1
  %691 = getelementptr inbounds %struct.LIST, %struct.LIST* %690, i32 0, i32 0
  store %union.rec* %686, %union.rec** %691, align 8
  %692 = load %union.rec*, %union.rec** @zz_res, align 8
  %693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %694 = bitcast %union.rec* %693 to %struct.word_type*
  %695 = getelementptr inbounds %struct.word_type, %struct.word_type* %694, i32 0, i32 0
  %696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %695, i32 0, i64 1
  %697 = getelementptr inbounds %struct.LIST, %struct.LIST* %696, i32 0, i32 0
  %698 = load %union.rec*, %union.rec** %697, align 8
  %699 = bitcast %union.rec* %698 to %struct.word_type*
  %700 = getelementptr inbounds %struct.word_type, %struct.word_type* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %700, i32 0, i64 1
  %702 = getelementptr inbounds %struct.LIST, %struct.LIST* %701, i32 0, i32 1
  store %union.rec* %692, %union.rec** %702, align 8
  %703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %705 = bitcast %union.rec* %704 to %struct.word_type*
  %706 = getelementptr inbounds %struct.word_type, %struct.word_type* %705, i32 0, i32 0
  %707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %706, i32 0, i64 1
  %708 = getelementptr inbounds %struct.LIST, %struct.LIST* %707, i32 0, i32 1
  store %union.rec* %703, %union.rec** %708, align 8
  %709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %710 = bitcast %union.rec* %709 to %struct.word_type*
  %711 = getelementptr inbounds %struct.word_type, %struct.word_type* %710, i32 0, i32 0
  %712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %711, i32 0, i64 1
  %713 = getelementptr inbounds %struct.LIST, %struct.LIST* %712, i32 0, i32 0
  store %union.rec* %703, %union.rec** %713, align 8
  %714 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %715

; <label>:715                                     ; preds = %674, %673
  %716 = phi %union.rec* [ null, %673 ], [ %714, %674 ]
  %717 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %717, %union.rec** @zz_hold, align 8
  %718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %719 = bitcast %union.rec* %718 to %struct.word_type*
  %720 = getelementptr inbounds %struct.word_type, %struct.word_type* %719, i32 0, i32 0
  %721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %720, i32 0, i64 0
  %722 = getelementptr inbounds %struct.LIST, %struct.LIST* %721, i32 0, i32 1
  %723 = load %union.rec*, %union.rec** %722, align 8
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = icmp eq %union.rec* %723, %724
  br i1 %725, label %726, label %727

; <label>:726                                     ; preds = %715
  br label %768

; <label>:727                                     ; preds = %715
  %728 = load %union.rec*, %union.rec** @zz_hold, align 8
  %729 = bitcast %union.rec* %728 to %struct.word_type*
  %730 = getelementptr inbounds %struct.word_type, %struct.word_type* %729, i32 0, i32 0
  %731 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %730, i32 0, i64 0
  %732 = getelementptr inbounds %struct.LIST, %struct.LIST* %731, i32 0, i32 1
  %733 = load %union.rec*, %union.rec** %732, align 8
  store %union.rec* %733, %union.rec** @zz_res, align 8
  %734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %735 = bitcast %union.rec* %734 to %struct.word_type*
  %736 = getelementptr inbounds %struct.word_type, %struct.word_type* %735, i32 0, i32 0
  %737 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %736, i32 0, i64 0
  %738 = getelementptr inbounds %struct.LIST, %struct.LIST* %737, i32 0, i32 0
  %739 = load %union.rec*, %union.rec** %738, align 8
  %740 = load %union.rec*, %union.rec** @zz_res, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 0
  %743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %742, i32 0, i64 0
  %744 = getelementptr inbounds %struct.LIST, %struct.LIST* %743, i32 0, i32 0
  store %union.rec* %739, %union.rec** %744, align 8
  %745 = load %union.rec*, %union.rec** @zz_res, align 8
  %746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %747 = bitcast %union.rec* %746 to %struct.word_type*
  %748 = getelementptr inbounds %struct.word_type, %struct.word_type* %747, i32 0, i32 0
  %749 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %748, i32 0, i64 0
  %750 = getelementptr inbounds %struct.LIST, %struct.LIST* %749, i32 0, i32 0
  %751 = load %union.rec*, %union.rec** %750, align 8
  %752 = bitcast %union.rec* %751 to %struct.word_type*
  %753 = getelementptr inbounds %struct.word_type, %struct.word_type* %752, i32 0, i32 0
  %754 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %753, i32 0, i64 0
  %755 = getelementptr inbounds %struct.LIST, %struct.LIST* %754, i32 0, i32 1
  store %union.rec* %745, %union.rec** %755, align 8
  %756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %758 = bitcast %union.rec* %757 to %struct.word_type*
  %759 = getelementptr inbounds %struct.word_type, %struct.word_type* %758, i32 0, i32 0
  %760 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %759, i32 0, i64 0
  %761 = getelementptr inbounds %struct.LIST, %struct.LIST* %760, i32 0, i32 1
  store %union.rec* %756, %union.rec** %761, align 8
  %762 = load %union.rec*, %union.rec** @zz_hold, align 8
  %763 = bitcast %union.rec* %762 to %struct.word_type*
  %764 = getelementptr inbounds %struct.word_type, %struct.word_type* %763, i32 0, i32 0
  %765 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %764, i32 0, i64 0
  %766 = getelementptr inbounds %struct.LIST, %struct.LIST* %765, i32 0, i32 0
  store %union.rec* %756, %union.rec** %766, align 8
  %767 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %768

; <label>:768                                     ; preds = %727, %726
  %769 = phi %union.rec* [ null, %726 ], [ %767, %727 ]
  %770 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %770, %union.rec** @zz_hold, align 8
  %771 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %771, %union.rec** @zz_hold, align 8
  %772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %773 = bitcast %union.rec* %772 to %struct.word_type*
  %774 = getelementptr inbounds %struct.word_type, %struct.word_type* %773, i32 0, i32 1
  %775 = bitcast %union.FIRST_UNION* %774 to %struct.anon*
  %776 = getelementptr inbounds %struct.anon, %struct.anon* %775, i32 0, i32 0
  %777 = load i8, i8* %776, align 1
  %778 = zext i8 %777 to i32
  %779 = icmp eq i32 %778, 11
  br i1 %779, label %789, label %780

; <label>:780                                     ; preds = %768
  %781 = load %union.rec*, %union.rec** @zz_hold, align 8
  %782 = bitcast %union.rec* %781 to %struct.word_type*
  %783 = getelementptr inbounds %struct.word_type, %struct.word_type* %782, i32 0, i32 1
  %784 = bitcast %union.FIRST_UNION* %783 to %struct.anon*
  %785 = getelementptr inbounds %struct.anon, %struct.anon* %784, i32 0, i32 0
  %786 = load i8, i8* %785, align 1
  %787 = zext i8 %786 to i32
  %788 = icmp eq i32 %787, 12
  br i1 %788, label %789, label %797

; <label>:789                                     ; preds = %780, %768
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 1
  %793 = bitcast %union.FIRST_UNION* %792 to %struct.anon*
  %794 = getelementptr inbounds %struct.anon, %struct.anon* %793, i32 0, i32 1
  %795 = load i8, i8* %794, align 1
  %796 = zext i8 %795 to i32
  br label %808

; <label>:797                                     ; preds = %780
  %798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %799 = bitcast %union.rec* %798 to %struct.word_type*
  %800 = getelementptr inbounds %struct.word_type, %struct.word_type* %799, i32 0, i32 1
  %801 = bitcast %union.FIRST_UNION* %800 to %struct.anon*
  %802 = getelementptr inbounds %struct.anon, %struct.anon* %801, i32 0, i32 0
  %803 = load i8, i8* %802, align 1
  %804 = zext i8 %803 to i64
  %805 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %804
  %806 = load i8, i8* %805, align 1
  %807 = zext i8 %806 to i32
  br label %808

; <label>:808                                     ; preds = %797, %789
  %809 = phi i32 [ %796, %789 ], [ %807, %797 ]
  store i32 %809, i32* @zz_size, align 4
  %810 = load i32, i32* @zz_size, align 4
  %811 = sext i32 %810 to i64
  %812 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %811
  %813 = load %union.rec*, %union.rec** %812, align 8
  %814 = load %union.rec*, %union.rec** @zz_hold, align 8
  %815 = bitcast %union.rec* %814 to %struct.word_type*
  %816 = getelementptr inbounds %struct.word_type, %struct.word_type* %815, i32 0, i32 0
  %817 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %816, i32 0, i64 0
  %818 = getelementptr inbounds %struct.LIST, %struct.LIST* %817, i32 0, i32 0
  store %union.rec* %813, %union.rec** %818, align 8
  %819 = load %union.rec*, %union.rec** @zz_hold, align 8
  %820 = load i32, i32* @zz_size, align 4
  %821 = sext i32 %820 to i64
  %822 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %821
  store %union.rec* %819, %union.rec** %822, align 8
  %823 = load %union.rec*, %union.rec** %res, align 8
  %824 = call i32 @DisposeObject(%union.rec* %823)
  %825 = load %union.rec*, %union.rec** %y, align 8
  %826 = load %union.rec*, %union.rec** %1, align 8
  %827 = bitcast %union.rec* %826 to %struct.head_type*
  %828 = getelementptr inbounds %struct.head_type, %struct.head_type* %827, i32 0, i32 10
  store %union.rec* %825, %union.rec** %828, align 8
  br label %833

; <label>:829                                     ; preds = %0
  %830 = load %union.rec*, %union.rec** %1, align 8
  %831 = bitcast %union.rec* %830 to %struct.head_type*
  %832 = getelementptr inbounds %struct.head_type, %struct.head_type* %831, i32 0, i32 10
  store %union.rec* null, %union.rec** %832, align 8
  br label %833

; <label>:833                                     ; preds = %829, %808
  %834 = load %union.rec*, %union.rec** %1, align 8
  %835 = bitcast %union.rec* %834 to %struct.head_type*
  %836 = getelementptr inbounds %struct.head_type, %struct.head_type* %835, i32 0, i32 10
  %837 = load %union.rec*, %union.rec** %836, align 8
  %838 = icmp ne %union.rec* %837, null
  br i1 %838, label %839, label %1075

; <label>:839                                     ; preds = %833
  %840 = load %union.rec*, %union.rec** %1, align 8
  %841 = bitcast %union.rec* %840 to %struct.head_type*
  %842 = getelementptr inbounds %struct.head_type, %struct.head_type* %841, i32 0, i32 10
  %843 = load %union.rec*, %union.rec** %842, align 8
  %844 = bitcast %union.rec* %843 to %struct.word_type*
  %845 = getelementptr inbounds %struct.word_type, %struct.word_type* %844, i32 0, i32 0
  %846 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %845, i32 0, i64 0
  %847 = getelementptr inbounds %struct.LIST, %struct.LIST* %846, i32 0, i32 1
  %848 = load %union.rec*, %union.rec** %847, align 8
  %849 = load %union.rec*, %union.rec** %1, align 8
  %850 = bitcast %union.rec* %849 to %struct.head_type*
  %851 = getelementptr inbounds %struct.head_type, %struct.head_type* %850, i32 0, i32 10
  %852 = load %union.rec*, %union.rec** %851, align 8
  %853 = icmp ne %union.rec* %848, %852
  br i1 %853, label %854, label %1075

; <label>:854                                     ; preds = %839
  %855 = load %union.rec*, %union.rec** %1, align 8
  %856 = bitcast %union.rec* %855 to %struct.head_type*
  %857 = getelementptr inbounds %struct.head_type, %struct.head_type* %856, i32 0, i32 10
  %858 = load %union.rec*, %union.rec** %857, align 8
  %859 = bitcast %union.rec* %858 to %struct.word_type*
  %860 = getelementptr inbounds %struct.word_type, %struct.word_type* %859, i32 0, i32 0
  %861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %860, i32 0, i64 0
  %862 = getelementptr inbounds %struct.LIST, %struct.LIST* %861, i32 0, i32 1
  %863 = load %union.rec*, %union.rec** %862, align 8
  %864 = bitcast %union.rec* %863 to %struct.word_type*
  %865 = getelementptr inbounds %struct.word_type, %struct.word_type* %864, i32 0, i32 0
  %866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %865, i32 0, i64 1
  %867 = getelementptr inbounds %struct.LIST, %struct.LIST* %866, i32 0, i32 0
  %868 = load %union.rec*, %union.rec** %867, align 8
  store %union.rec* %868, %union.rec** %z, align 8
  br label %869

; <label>:869                                     ; preds = %879, %854
  %870 = load %union.rec*, %union.rec** %z, align 8
  %871 = bitcast %union.rec* %870 to %struct.word_type*
  %872 = getelementptr inbounds %struct.word_type, %struct.word_type* %871, i32 0, i32 1
  %873 = bitcast %union.FIRST_UNION* %872 to %struct.anon*
  %874 = getelementptr inbounds %struct.anon, %struct.anon* %873, i32 0, i32 0
  %875 = load i8, i8* %874, align 1
  %876 = zext i8 %875 to i32
  %877 = icmp eq i32 %876, 0
  br i1 %877, label %878, label %886

; <label>:878                                     ; preds = %869
  br label %879

; <label>:879                                     ; preds = %878
  %880 = load %union.rec*, %union.rec** %z, align 8
  %881 = bitcast %union.rec* %880 to %struct.word_type*
  %882 = getelementptr inbounds %struct.word_type, %struct.word_type* %881, i32 0, i32 0
  %883 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %882, i32 0, i64 1
  %884 = getelementptr inbounds %struct.LIST, %struct.LIST* %883, i32 0, i32 0
  %885 = load %union.rec*, %union.rec** %884, align 8
  store %union.rec* %885, %union.rec** %z, align 8
  br label %869

; <label>:886                                     ; preds = %869
  %887 = load %union.rec*, %union.rec** %z, align 8
  %888 = bitcast %union.rec* %887 to %struct.word_type*
  %889 = getelementptr inbounds %struct.word_type, %struct.word_type* %888, i32 0, i32 3
  %890 = bitcast %union.THIRD_UNION* %889 to %struct.anon.6*
  %891 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %890, i32 0, i32 0
  %892 = getelementptr inbounds [2 x i32], [2 x i32]* %891, i32 0, i64 0
  %893 = load i32, i32* %892, align 4
  %894 = sub nsw i32 %893, 1
  %895 = load %union.rec*, %union.rec** %1, align 8
  %896 = bitcast %union.rec* %895 to %struct.head_type*
  %897 = getelementptr inbounds %struct.head_type, %struct.head_type* %896, i32 0, i32 15
  store i32 %894, i32* %897, align 4
  %898 = load %union.rec*, %union.rec** %z, align 8
  %899 = bitcast %union.rec* %898 to %struct.word_type*
  %900 = getelementptr inbounds %struct.word_type, %struct.word_type* %899, i32 0, i32 0
  %901 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %900, i32 0, i64 1
  %902 = getelementptr inbounds %struct.LIST, %struct.LIST* %901, i32 0, i32 1
  %903 = load %union.rec*, %union.rec** %902, align 8
  store %union.rec* %903, %union.rec** @xx_link, align 8
  %904 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %904, %union.rec** @zz_hold, align 8
  %905 = load %union.rec*, %union.rec** @zz_hold, align 8
  %906 = bitcast %union.rec* %905 to %struct.word_type*
  %907 = getelementptr inbounds %struct.word_type, %struct.word_type* %906, i32 0, i32 0
  %908 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %907, i32 0, i64 1
  %909 = getelementptr inbounds %struct.LIST, %struct.LIST* %908, i32 0, i32 1
  %910 = load %union.rec*, %union.rec** %909, align 8
  %911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %912 = icmp eq %union.rec* %910, %911
  br i1 %912, label %913, label %914

; <label>:913                                     ; preds = %886
  br label %955

; <label>:914                                     ; preds = %886
  %915 = load %union.rec*, %union.rec** @zz_hold, align 8
  %916 = bitcast %union.rec* %915 to %struct.word_type*
  %917 = getelementptr inbounds %struct.word_type, %struct.word_type* %916, i32 0, i32 0
  %918 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %917, i32 0, i64 1
  %919 = getelementptr inbounds %struct.LIST, %struct.LIST* %918, i32 0, i32 1
  %920 = load %union.rec*, %union.rec** %919, align 8
  store %union.rec* %920, %union.rec** @zz_res, align 8
  %921 = load %union.rec*, %union.rec** @zz_hold, align 8
  %922 = bitcast %union.rec* %921 to %struct.word_type*
  %923 = getelementptr inbounds %struct.word_type, %struct.word_type* %922, i32 0, i32 0
  %924 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %923, i32 0, i64 1
  %925 = getelementptr inbounds %struct.LIST, %struct.LIST* %924, i32 0, i32 0
  %926 = load %union.rec*, %union.rec** %925, align 8
  %927 = load %union.rec*, %union.rec** @zz_res, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 0
  %930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %929, i32 0, i64 1
  %931 = getelementptr inbounds %struct.LIST, %struct.LIST* %930, i32 0, i32 0
  store %union.rec* %926, %union.rec** %931, align 8
  %932 = load %union.rec*, %union.rec** @zz_res, align 8
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %934 = bitcast %union.rec* %933 to %struct.word_type*
  %935 = getelementptr inbounds %struct.word_type, %struct.word_type* %934, i32 0, i32 0
  %936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %935, i32 0, i64 1
  %937 = getelementptr inbounds %struct.LIST, %struct.LIST* %936, i32 0, i32 0
  %938 = load %union.rec*, %union.rec** %937, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 1
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 1
  store %union.rec* %932, %union.rec** %942, align 8
  %943 = load %union.rec*, %union.rec** @zz_hold, align 8
  %944 = load %union.rec*, %union.rec** @zz_hold, align 8
  %945 = bitcast %union.rec* %944 to %struct.word_type*
  %946 = getelementptr inbounds %struct.word_type, %struct.word_type* %945, i32 0, i32 0
  %947 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %946, i32 0, i64 1
  %948 = getelementptr inbounds %struct.LIST, %struct.LIST* %947, i32 0, i32 1
  store %union.rec* %943, %union.rec** %948, align 8
  %949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %950 = bitcast %union.rec* %949 to %struct.word_type*
  %951 = getelementptr inbounds %struct.word_type, %struct.word_type* %950, i32 0, i32 0
  %952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %951, i32 0, i64 1
  %953 = getelementptr inbounds %struct.LIST, %struct.LIST* %952, i32 0, i32 0
  store %union.rec* %943, %union.rec** %953, align 8
  %954 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %955

; <label>:955                                     ; preds = %914, %913
  %956 = phi %union.rec* [ null, %913 ], [ %954, %914 ]
  store %union.rec* %956, %union.rec** @xx_tmp, align 8
  %957 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %957, %union.rec** @zz_hold, align 8
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 0
  %961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %960, i32 0, i64 0
  %962 = getelementptr inbounds %struct.LIST, %struct.LIST* %961, i32 0, i32 1
  %963 = load %union.rec*, %union.rec** %962, align 8
  %964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %965 = icmp eq %union.rec* %963, %964
  br i1 %965, label %966, label %967

; <label>:966                                     ; preds = %955
  br label %1008

; <label>:967                                     ; preds = %955
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 0
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 1
  %973 = load %union.rec*, %union.rec** %972, align 8
  store %union.rec* %973, %union.rec** @zz_res, align 8
  %974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 0
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 0
  %979 = load %union.rec*, %union.rec** %978, align 8
  %980 = load %union.rec*, %union.rec** @zz_res, align 8
  %981 = bitcast %union.rec* %980 to %struct.word_type*
  %982 = getelementptr inbounds %struct.word_type, %struct.word_type* %981, i32 0, i32 0
  %983 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %982, i32 0, i64 0
  %984 = getelementptr inbounds %struct.LIST, %struct.LIST* %983, i32 0, i32 0
  store %union.rec* %979, %union.rec** %984, align 8
  %985 = load %union.rec*, %union.rec** @zz_res, align 8
  %986 = load %union.rec*, %union.rec** @zz_hold, align 8
  %987 = bitcast %union.rec* %986 to %struct.word_type*
  %988 = getelementptr inbounds %struct.word_type, %struct.word_type* %987, i32 0, i32 0
  %989 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %988, i32 0, i64 0
  %990 = getelementptr inbounds %struct.LIST, %struct.LIST* %989, i32 0, i32 0
  %991 = load %union.rec*, %union.rec** %990, align 8
  %992 = bitcast %union.rec* %991 to %struct.word_type*
  %993 = getelementptr inbounds %struct.word_type, %struct.word_type* %992, i32 0, i32 0
  %994 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %993, i32 0, i64 0
  %995 = getelementptr inbounds %struct.LIST, %struct.LIST* %994, i32 0, i32 1
  store %union.rec* %985, %union.rec** %995, align 8
  %996 = load %union.rec*, %union.rec** @zz_hold, align 8
  %997 = load %union.rec*, %union.rec** @zz_hold, align 8
  %998 = bitcast %union.rec* %997 to %struct.word_type*
  %999 = getelementptr inbounds %struct.word_type, %struct.word_type* %998, i32 0, i32 0
  %1000 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %999, i32 0, i64 0
  %1001 = getelementptr inbounds %struct.LIST, %struct.LIST* %1000, i32 0, i32 1
  store %union.rec* %996, %union.rec** %1001, align 8
  %1002 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1003 = bitcast %union.rec* %1002 to %struct.word_type*
  %1004 = getelementptr inbounds %struct.word_type, %struct.word_type* %1003, i32 0, i32 0
  %1005 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1004, i32 0, i64 0
  %1006 = getelementptr inbounds %struct.LIST, %struct.LIST* %1005, i32 0, i32 0
  store %union.rec* %996, %union.rec** %1006, align 8
  %1007 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1008

; <label>:1008                                    ; preds = %967, %966
  %1009 = phi %union.rec* [ null, %966 ], [ %1007, %967 ]
  %1010 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1010, %union.rec** @zz_hold, align 8
  %1011 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1011, %union.rec** @zz_hold, align 8
  %1012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1013 = bitcast %union.rec* %1012 to %struct.word_type*
  %1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %1013, i32 0, i32 1
  %1015 = bitcast %union.FIRST_UNION* %1014 to %struct.anon*
  %1016 = getelementptr inbounds %struct.anon, %struct.anon* %1015, i32 0, i32 0
  %1017 = load i8, i8* %1016, align 1
  %1018 = zext i8 %1017 to i32
  %1019 = icmp eq i32 %1018, 11
  br i1 %1019, label %1029, label %1020

; <label>:1020                                    ; preds = %1008
  %1021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1022 = bitcast %union.rec* %1021 to %struct.word_type*
  %1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %1022, i32 0, i32 1
  %1024 = bitcast %union.FIRST_UNION* %1023 to %struct.anon*
  %1025 = getelementptr inbounds %struct.anon, %struct.anon* %1024, i32 0, i32 0
  %1026 = load i8, i8* %1025, align 1
  %1027 = zext i8 %1026 to i32
  %1028 = icmp eq i32 %1027, 12
  br i1 %1028, label %1029, label %1037

; <label>:1029                                    ; preds = %1020, %1008
  %1030 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1031 = bitcast %union.rec* %1030 to %struct.word_type*
  %1032 = getelementptr inbounds %struct.word_type, %struct.word_type* %1031, i32 0, i32 1
  %1033 = bitcast %union.FIRST_UNION* %1032 to %struct.anon*
  %1034 = getelementptr inbounds %struct.anon, %struct.anon* %1033, i32 0, i32 1
  %1035 = load i8, i8* %1034, align 1
  %1036 = zext i8 %1035 to i32
  br label %1048

; <label>:1037                                    ; preds = %1020
  %1038 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1039 = bitcast %union.rec* %1038 to %struct.word_type*
  %1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %1039, i32 0, i32 1
  %1041 = bitcast %union.FIRST_UNION* %1040 to %struct.anon*
  %1042 = getelementptr inbounds %struct.anon, %struct.anon* %1041, i32 0, i32 0
  %1043 = load i8, i8* %1042, align 1
  %1044 = zext i8 %1043 to i64
  %1045 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1044
  %1046 = load i8, i8* %1045, align 1
  %1047 = zext i8 %1046 to i32
  br label %1048

; <label>:1048                                    ; preds = %1037, %1029
  %1049 = phi i32 [ %1036, %1029 ], [ %1047, %1037 ]
  store i32 %1049, i32* @zz_size, align 4
  %1050 = load i32, i32* @zz_size, align 4
  %1051 = sext i32 %1050 to i64
  %1052 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1051
  %1053 = load %union.rec*, %union.rec** %1052, align 8
  %1054 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1055 = bitcast %union.rec* %1054 to %struct.word_type*
  %1056 = getelementptr inbounds %struct.word_type, %struct.word_type* %1055, i32 0, i32 0
  %1057 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1056, i32 0, i64 0
  %1058 = getelementptr inbounds %struct.LIST, %struct.LIST* %1057, i32 0, i32 0
  store %union.rec* %1053, %union.rec** %1058, align 8
  %1059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1060 = load i32, i32* @zz_size, align 4
  %1061 = sext i32 %1060 to i64
  %1062 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1061
  store %union.rec* %1059, %union.rec** %1062, align 8
  %1063 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1064 = bitcast %union.rec* %1063 to %struct.word_type*
  %1065 = getelementptr inbounds %struct.word_type, %struct.word_type* %1064, i32 0, i32 0
  %1066 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1065, i32 0, i64 1
  %1067 = getelementptr inbounds %struct.LIST, %struct.LIST* %1066, i32 0, i32 1
  %1068 = load %union.rec*, %union.rec** %1067, align 8
  %1069 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1070 = icmp eq %union.rec* %1068, %1069
  br i1 %1070, label %1071, label %1074

; <label>:1071                                    ; preds = %1048
  %1072 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1073 = call i32 @DisposeObject(%union.rec* %1072)
  br label %1074

; <label>:1074                                    ; preds = %1071, %1048
  br label %1079

; <label>:1075                                    ; preds = %839, %833
  %1076 = load %union.rec*, %union.rec** %1, align 8
  %1077 = bitcast %union.rec* %1076 to %struct.head_type*
  %1078 = getelementptr inbounds %struct.head_type, %struct.head_type* %1077, i32 0, i32 15
  store i32 65535, i32* %1078, align 4
  br label %1079

; <label>:1079                                    ; preds = %1075, %1074
  %1080 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1081 = zext i8 %1080 to i32
  store i32 %1081, i32* @zz_size, align 4
  %1082 = sext i32 %1081 to i64
  %1083 = icmp uge i64 %1082, 265
  br i1 %1083, label %1084, label %1087

; <label>:1084                                    ; preds = %1079
  %1085 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1086 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1085)
  br label %1112

; <label>:1087                                    ; preds = %1079
  %1088 = load i32, i32* @zz_size, align 4
  %1089 = sext i32 %1088 to i64
  %1090 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1089
  %1091 = load %union.rec*, %union.rec** %1090, align 8
  %1092 = icmp eq %union.rec* %1091, null
  br i1 %1092, label %1093, label %1097

; <label>:1093                                    ; preds = %1087
  %1094 = load i32, i32* @zz_size, align 4
  %1095 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1096 = call %union.rec* @GetMemory(i32 %1094, %struct.FILE_POS* %1095)
  store %union.rec* %1096, %union.rec** @zz_hold, align 8
  br label %1111

; <label>:1097                                    ; preds = %1087
  %1098 = load i32, i32* @zz_size, align 4
  %1099 = sext i32 %1098 to i64
  %1100 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1099
  %1101 = load %union.rec*, %union.rec** %1100, align 8
  store %union.rec* %1101, %union.rec** @zz_hold, align 8
  store %union.rec* %1101, %union.rec** @zz_hold, align 8
  %1102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1103 = bitcast %union.rec* %1102 to %struct.word_type*
  %1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %1103, i32 0, i32 0
  %1105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1104, i32 0, i64 0
  %1106 = getelementptr inbounds %struct.LIST, %struct.LIST* %1105, i32 0, i32 0
  %1107 = load %union.rec*, %union.rec** %1106, align 8
  %1108 = load i32, i32* @zz_size, align 4
  %1109 = sext i32 %1108 to i64
  %1110 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1109
  store %union.rec* %1107, %union.rec** %1110, align 8
  br label %1111

; <label>:1111                                    ; preds = %1097, %1093
  br label %1112

; <label>:1112                                    ; preds = %1111, %1084
  %1113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1114 = bitcast %union.rec* %1113 to %struct.word_type*
  %1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %1114, i32 0, i32 1
  %1116 = bitcast %union.FIRST_UNION* %1115 to %struct.anon*
  %1117 = getelementptr inbounds %struct.anon, %struct.anon* %1116, i32 0, i32 0
  store i8 17, i8* %1117, align 1
  %1118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1119 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1120 = bitcast %union.rec* %1119 to %struct.word_type*
  %1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %1120, i32 0, i32 0
  %1122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1121, i32 0, i64 1
  %1123 = getelementptr inbounds %struct.LIST, %struct.LIST* %1122, i32 0, i32 1
  store %union.rec* %1118, %union.rec** %1123, align 8
  %1124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1125 = bitcast %union.rec* %1124 to %struct.word_type*
  %1126 = getelementptr inbounds %struct.word_type, %struct.word_type* %1125, i32 0, i32 0
  %1127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1126, i32 0, i64 1
  %1128 = getelementptr inbounds %struct.LIST, %struct.LIST* %1127, i32 0, i32 0
  store %union.rec* %1118, %union.rec** %1128, align 8
  %1129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1130 = bitcast %union.rec* %1129 to %struct.word_type*
  %1131 = getelementptr inbounds %struct.word_type, %struct.word_type* %1130, i32 0, i32 0
  %1132 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1131, i32 0, i64 0
  %1133 = getelementptr inbounds %struct.LIST, %struct.LIST* %1132, i32 0, i32 1
  store %union.rec* %1118, %union.rec** %1133, align 8
  %1134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1135 = bitcast %union.rec* %1134 to %struct.word_type*
  %1136 = getelementptr inbounds %struct.word_type, %struct.word_type* %1135, i32 0, i32 0
  %1137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1136, i32 0, i64 0
  %1138 = getelementptr inbounds %struct.LIST, %struct.LIST* %1137, i32 0, i32 0
  store %union.rec* %1118, %union.rec** %1138, align 8
  %1139 = load %union.rec*, %union.rec** %1, align 8
  %1140 = bitcast %union.rec* %1139 to %struct.head_type*
  %1141 = getelementptr inbounds %struct.head_type, %struct.head_type* %1140, i32 0, i32 8
  store %union.rec* %1118, %union.rec** %1141, align 8
  %1142 = load %union.rec*, %union.rec** %1, align 8
  %1143 = bitcast %union.rec* %1142 to %struct.word_type*
  %1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %1143, i32 0, i32 2
  %1145 = bitcast %union.SECOND_UNION* %1144 to %struct.anon.2*
  %1146 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1145, i32 0, i32 2
  %1147 = load i16, i16* %1146, align 2
  %1148 = and i16 %1147, -1025
  store i16 %1148, i16* %1146, align 2
  %1149 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1150 = zext i8 %1149 to i32
  store i32 %1150, i32* @zz_size, align 4
  %1151 = sext i32 %1150 to i64
  %1152 = icmp uge i64 %1151, 265
  br i1 %1152, label %1153, label %1156

; <label>:1153                                    ; preds = %1112
  %1154 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1155 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1154)
  br label %1181

; <label>:1156                                    ; preds = %1112
  %1157 = load i32, i32* @zz_size, align 4
  %1158 = sext i32 %1157 to i64
  %1159 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1158
  %1160 = load %union.rec*, %union.rec** %1159, align 8
  %1161 = icmp eq %union.rec* %1160, null
  br i1 %1161, label %1162, label %1166

; <label>:1162                                    ; preds = %1156
  %1163 = load i32, i32* @zz_size, align 4
  %1164 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1165 = call %union.rec* @GetMemory(i32 %1163, %struct.FILE_POS* %1164)
  store %union.rec* %1165, %union.rec** @zz_hold, align 8
  br label %1180

; <label>:1166                                    ; preds = %1156
  %1167 = load i32, i32* @zz_size, align 4
  %1168 = sext i32 %1167 to i64
  %1169 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1168
  %1170 = load %union.rec*, %union.rec** %1169, align 8
  store %union.rec* %1170, %union.rec** @zz_hold, align 8
  store %union.rec* %1170, %union.rec** @zz_hold, align 8
  %1171 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.word_type*
  %1173 = getelementptr inbounds %struct.word_type, %struct.word_type* %1172, i32 0, i32 0
  %1174 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1173, i32 0, i64 0
  %1175 = getelementptr inbounds %struct.LIST, %struct.LIST* %1174, i32 0, i32 0
  %1176 = load %union.rec*, %union.rec** %1175, align 8
  %1177 = load i32, i32* @zz_size, align 4
  %1178 = sext i32 %1177 to i64
  %1179 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1178
  store %union.rec* %1176, %union.rec** %1179, align 8
  br label %1180

; <label>:1180                                    ; preds = %1166, %1162
  br label %1181

; <label>:1181                                    ; preds = %1180, %1153
  %1182 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1183 = bitcast %union.rec* %1182 to %struct.word_type*
  %1184 = getelementptr inbounds %struct.word_type, %struct.word_type* %1183, i32 0, i32 1
  %1185 = bitcast %union.FIRST_UNION* %1184 to %struct.anon*
  %1186 = getelementptr inbounds %struct.anon, %struct.anon* %1185, i32 0, i32 0
  store i8 17, i8* %1186, align 1
  %1187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1188 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1189 = bitcast %union.rec* %1188 to %struct.word_type*
  %1190 = getelementptr inbounds %struct.word_type, %struct.word_type* %1189, i32 0, i32 0
  %1191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1190, i32 0, i64 1
  %1192 = getelementptr inbounds %struct.LIST, %struct.LIST* %1191, i32 0, i32 1
  store %union.rec* %1187, %union.rec** %1192, align 8
  %1193 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1194 = bitcast %union.rec* %1193 to %struct.word_type*
  %1195 = getelementptr inbounds %struct.word_type, %struct.word_type* %1194, i32 0, i32 0
  %1196 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1195, i32 0, i64 1
  %1197 = getelementptr inbounds %struct.LIST, %struct.LIST* %1196, i32 0, i32 0
  store %union.rec* %1187, %union.rec** %1197, align 8
  %1198 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1199 = bitcast %union.rec* %1198 to %struct.word_type*
  %1200 = getelementptr inbounds %struct.word_type, %struct.word_type* %1199, i32 0, i32 0
  %1201 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1200, i32 0, i64 0
  %1202 = getelementptr inbounds %struct.LIST, %struct.LIST* %1201, i32 0, i32 1
  store %union.rec* %1187, %union.rec** %1202, align 8
  %1203 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1204 = bitcast %union.rec* %1203 to %struct.word_type*
  %1205 = getelementptr inbounds %struct.word_type, %struct.word_type* %1204, i32 0, i32 0
  %1206 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1205, i32 0, i64 0
  %1207 = getelementptr inbounds %struct.LIST, %struct.LIST* %1206, i32 0, i32 0
  store %union.rec* %1187, %union.rec** %1207, align 8
  %1208 = load %union.rec*, %union.rec** %1, align 8
  %1209 = bitcast %union.rec* %1208 to %struct.head_type*
  %1210 = getelementptr inbounds %struct.head_type, %struct.head_type* %1209, i32 0, i32 9
  store %union.rec* %1187, %union.rec** %1210, align 8
  %1211 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1212 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1211, i32 0, i32 0
  %1213 = bitcast %union.anon* %1212 to %struct.GAP*
  %1214 = bitcast %struct.GAP* %1213 to i16*
  %1215 = load i16, i16* %1214, align 4
  %1216 = lshr i16 %1215, 7
  %1217 = and i16 %1216, 1
  %1218 = zext i16 %1217 to i32
  %1219 = load %union.rec*, %union.rec** %1, align 8
  %1220 = bitcast %union.rec* %1219 to %struct.head_type*
  %1221 = getelementptr inbounds %struct.head_type, %struct.head_type* %1220, i32 0, i32 8
  %1222 = load %union.rec*, %union.rec** %1221, align 8
  %1223 = bitcast %union.rec* %1222 to %struct.closure_type*
  %1224 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1223, i32 0, i32 4
  %1225 = bitcast %union.FOURTH_UNION* %1224 to %struct.STYLE*
  %1226 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1225, i32 0, i32 0
  %1227 = bitcast %union.anon* %1226 to %struct.GAP*
  %1228 = bitcast %struct.GAP* %1227 to i16*
  %1229 = trunc i32 %1218 to i16
  %1230 = load i16, i16* %1228, align 4
  %1231 = and i16 %1229, 1
  %1232 = shl i16 %1231, 7
  %1233 = and i16 %1230, -129
  %1234 = or i16 %1233, %1232
  store i16 %1234, i16* %1228, align 4
  %1235 = zext i16 %1231 to i32
  %1236 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1237 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1236, i32 0, i32 0
  %1238 = bitcast %union.anon* %1237 to %struct.GAP*
  %1239 = bitcast %struct.GAP* %1238 to i16*
  %1240 = load i16, i16* %1239, align 4
  %1241 = lshr i16 %1240, 8
  %1242 = and i16 %1241, 1
  %1243 = zext i16 %1242 to i32
  %1244 = load %union.rec*, %union.rec** %1, align 8
  %1245 = bitcast %union.rec* %1244 to %struct.head_type*
  %1246 = getelementptr inbounds %struct.head_type, %struct.head_type* %1245, i32 0, i32 8
  %1247 = load %union.rec*, %union.rec** %1246, align 8
  %1248 = bitcast %union.rec* %1247 to %struct.closure_type*
  %1249 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1248, i32 0, i32 4
  %1250 = bitcast %union.FOURTH_UNION* %1249 to %struct.STYLE*
  %1251 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1250, i32 0, i32 0
  %1252 = bitcast %union.anon* %1251 to %struct.GAP*
  %1253 = bitcast %struct.GAP* %1252 to i16*
  %1254 = trunc i32 %1243 to i16
  %1255 = load i16, i16* %1253, align 4
  %1256 = and i16 %1254, 1
  %1257 = shl i16 %1256, 8
  %1258 = and i16 %1255, -257
  %1259 = or i16 %1258, %1257
  store i16 %1259, i16* %1253, align 4
  %1260 = zext i16 %1256 to i32
  %1261 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1262 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1261, i32 0, i32 0
  %1263 = bitcast %union.anon* %1262 to %struct.GAP*
  %1264 = bitcast %struct.GAP* %1263 to i16*
  %1265 = load i16, i16* %1264, align 4
  %1266 = lshr i16 %1265, 9
  %1267 = and i16 %1266, 1
  %1268 = zext i16 %1267 to i32
  %1269 = load %union.rec*, %union.rec** %1, align 8
  %1270 = bitcast %union.rec* %1269 to %struct.head_type*
  %1271 = getelementptr inbounds %struct.head_type, %struct.head_type* %1270, i32 0, i32 8
  %1272 = load %union.rec*, %union.rec** %1271, align 8
  %1273 = bitcast %union.rec* %1272 to %struct.closure_type*
  %1274 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1273, i32 0, i32 4
  %1275 = bitcast %union.FOURTH_UNION* %1274 to %struct.STYLE*
  %1276 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1275, i32 0, i32 0
  %1277 = bitcast %union.anon* %1276 to %struct.GAP*
  %1278 = bitcast %struct.GAP* %1277 to i16*
  %1279 = trunc i32 %1268 to i16
  %1280 = load i16, i16* %1278, align 4
  %1281 = and i16 %1279, 1
  %1282 = shl i16 %1281, 9
  %1283 = and i16 %1280, -513
  %1284 = or i16 %1283, %1282
  store i16 %1284, i16* %1278, align 4
  %1285 = zext i16 %1281 to i32
  %1286 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1287 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1286, i32 0, i32 0
  %1288 = bitcast %union.anon* %1287 to %struct.GAP*
  %1289 = bitcast %struct.GAP* %1288 to i16*
  %1290 = load i16, i16* %1289, align 4
  %1291 = lshr i16 %1290, 10
  %1292 = and i16 %1291, 7
  %1293 = zext i16 %1292 to i32
  %1294 = load %union.rec*, %union.rec** %1, align 8
  %1295 = bitcast %union.rec* %1294 to %struct.head_type*
  %1296 = getelementptr inbounds %struct.head_type, %struct.head_type* %1295, i32 0, i32 8
  %1297 = load %union.rec*, %union.rec** %1296, align 8
  %1298 = bitcast %union.rec* %1297 to %struct.closure_type*
  %1299 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1298, i32 0, i32 4
  %1300 = bitcast %union.FOURTH_UNION* %1299 to %struct.STYLE*
  %1301 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1300, i32 0, i32 0
  %1302 = bitcast %union.anon* %1301 to %struct.GAP*
  %1303 = bitcast %struct.GAP* %1302 to i16*
  %1304 = trunc i32 %1293 to i16
  %1305 = load i16, i16* %1303, align 4
  %1306 = and i16 %1304, 7
  %1307 = shl i16 %1306, 10
  %1308 = and i16 %1305, -7169
  %1309 = or i16 %1308, %1307
  store i16 %1309, i16* %1303, align 4
  %1310 = zext i16 %1306 to i32
  %1311 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1312 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1311, i32 0, i32 0
  %1313 = bitcast %union.anon* %1312 to %struct.GAP*
  %1314 = bitcast %struct.GAP* %1313 to i16*
  %1315 = load i16, i16* %1314, align 4
  %1316 = lshr i16 %1315, 13
  %1317 = zext i16 %1316 to i32
  %1318 = load %union.rec*, %union.rec** %1, align 8
  %1319 = bitcast %union.rec* %1318 to %struct.head_type*
  %1320 = getelementptr inbounds %struct.head_type, %struct.head_type* %1319, i32 0, i32 8
  %1321 = load %union.rec*, %union.rec** %1320, align 8
  %1322 = bitcast %union.rec* %1321 to %struct.closure_type*
  %1323 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1322, i32 0, i32 4
  %1324 = bitcast %union.FOURTH_UNION* %1323 to %struct.STYLE*
  %1325 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1324, i32 0, i32 0
  %1326 = bitcast %union.anon* %1325 to %struct.GAP*
  %1327 = bitcast %struct.GAP* %1326 to i16*
  %1328 = trunc i32 %1317 to i16
  %1329 = load i16, i16* %1327, align 4
  %1330 = and i16 %1328, 7
  %1331 = shl i16 %1330, 13
  %1332 = and i16 %1329, 8191
  %1333 = or i16 %1332, %1331
  store i16 %1333, i16* %1327, align 4
  %1334 = zext i16 %1330 to i32
  %1335 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1336 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1335, i32 0, i32 0
  %1337 = bitcast %union.anon* %1336 to %struct.GAP*
  %1338 = getelementptr inbounds %struct.GAP, %struct.GAP* %1337, i32 0, i32 1
  %1339 = load i16, i16* %1338, align 2
  %1340 = load %union.rec*, %union.rec** %1, align 8
  %1341 = bitcast %union.rec* %1340 to %struct.head_type*
  %1342 = getelementptr inbounds %struct.head_type, %struct.head_type* %1341, i32 0, i32 8
  %1343 = load %union.rec*, %union.rec** %1342, align 8
  %1344 = bitcast %union.rec* %1343 to %struct.closure_type*
  %1345 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1344, i32 0, i32 4
  %1346 = bitcast %union.FOURTH_UNION* %1345 to %struct.STYLE*
  %1347 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1346, i32 0, i32 0
  %1348 = bitcast %union.anon* %1347 to %struct.GAP*
  %1349 = getelementptr inbounds %struct.GAP, %struct.GAP* %1348, i32 0, i32 1
  store i16 %1339, i16* %1349, align 2
  %1350 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1351 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1350, i32 0, i32 1
  %1352 = bitcast %union.anon.10* %1351 to %struct.anon.11*
  %1353 = bitcast %struct.anon.11* %1352 to i8*
  %1354 = load i8, i8* %1353, align 4
  %1355 = and i8 %1354, 3
  %1356 = zext i8 %1355 to i32
  %1357 = load %union.rec*, %union.rec** %1, align 8
  %1358 = bitcast %union.rec* %1357 to %struct.head_type*
  %1359 = getelementptr inbounds %struct.head_type, %struct.head_type* %1358, i32 0, i32 8
  %1360 = load %union.rec*, %union.rec** %1359, align 8
  %1361 = bitcast %union.rec* %1360 to %struct.closure_type*
  %1362 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1361, i32 0, i32 4
  %1363 = bitcast %union.FOURTH_UNION* %1362 to %struct.STYLE*
  %1364 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1363, i32 0, i32 1
  %1365 = bitcast %union.anon.10* %1364 to %struct.anon.11*
  %1366 = bitcast %struct.anon.11* %1365 to i8*
  %1367 = trunc i32 %1356 to i8
  %1368 = load i8, i8* %1366, align 4
  %1369 = and i8 %1367, 3
  %1370 = and i8 %1368, -4
  %1371 = or i8 %1370, %1369
  store i8 %1371, i8* %1366, align 4
  %1372 = zext i8 %1369 to i32
  %1373 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1374 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1373, i32 0, i32 1
  %1375 = bitcast %union.anon.10* %1374 to %struct.anon.11*
  %1376 = bitcast %struct.anon.11* %1375 to i8*
  %1377 = load i8, i8* %1376, align 4
  %1378 = lshr i8 %1377, 2
  %1379 = and i8 %1378, 3
  %1380 = zext i8 %1379 to i32
  %1381 = load %union.rec*, %union.rec** %1, align 8
  %1382 = bitcast %union.rec* %1381 to %struct.head_type*
  %1383 = getelementptr inbounds %struct.head_type, %struct.head_type* %1382, i32 0, i32 8
  %1384 = load %union.rec*, %union.rec** %1383, align 8
  %1385 = bitcast %union.rec* %1384 to %struct.closure_type*
  %1386 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1385, i32 0, i32 4
  %1387 = bitcast %union.FOURTH_UNION* %1386 to %struct.STYLE*
  %1388 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1387, i32 0, i32 1
  %1389 = bitcast %union.anon.10* %1388 to %struct.anon.11*
  %1390 = bitcast %struct.anon.11* %1389 to i8*
  %1391 = trunc i32 %1380 to i8
  %1392 = load i8, i8* %1390, align 4
  %1393 = and i8 %1391, 3
  %1394 = shl i8 %1393, 2
  %1395 = and i8 %1392, -13
  %1396 = or i8 %1395, %1394
  store i8 %1396, i8* %1390, align 4
  %1397 = zext i8 %1393 to i32
  %1398 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1399 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1398, i32 0, i32 1
  %1400 = bitcast %union.anon.10* %1399 to %struct.anon.11*
  %1401 = bitcast %struct.anon.11* %1400 to i8*
  %1402 = load i8, i8* %1401, align 4
  %1403 = lshr i8 %1402, 4
  %1404 = and i8 %1403, 7
  %1405 = zext i8 %1404 to i32
  %1406 = load %union.rec*, %union.rec** %1, align 8
  %1407 = bitcast %union.rec* %1406 to %struct.head_type*
  %1408 = getelementptr inbounds %struct.head_type, %struct.head_type* %1407, i32 0, i32 8
  %1409 = load %union.rec*, %union.rec** %1408, align 8
  %1410 = bitcast %union.rec* %1409 to %struct.closure_type*
  %1411 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1410, i32 0, i32 4
  %1412 = bitcast %union.FOURTH_UNION* %1411 to %struct.STYLE*
  %1413 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1412, i32 0, i32 1
  %1414 = bitcast %union.anon.10* %1413 to %struct.anon.11*
  %1415 = bitcast %struct.anon.11* %1414 to i8*
  %1416 = trunc i32 %1405 to i8
  %1417 = load i8, i8* %1415, align 4
  %1418 = and i8 %1416, 7
  %1419 = shl i8 %1418, 4
  %1420 = and i8 %1417, -113
  %1421 = or i8 %1420, %1419
  store i8 %1421, i8* %1415, align 4
  %1422 = zext i8 %1418 to i32
  %1423 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1424 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1423, i32 0, i32 0
  %1425 = bitcast %union.anon* %1424 to %struct.anon.9*
  %1426 = bitcast %struct.anon.9* %1425 to i8*
  %1427 = load i8, i8* %1426, align 4
  %1428 = lshr i8 %1427, 3
  %1429 = and i8 %1428, 1
  %1430 = zext i8 %1429 to i32
  %1431 = load %union.rec*, %union.rec** %1, align 8
  %1432 = bitcast %union.rec* %1431 to %struct.head_type*
  %1433 = getelementptr inbounds %struct.head_type, %struct.head_type* %1432, i32 0, i32 8
  %1434 = load %union.rec*, %union.rec** %1433, align 8
  %1435 = bitcast %union.rec* %1434 to %struct.closure_type*
  %1436 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1435, i32 0, i32 4
  %1437 = bitcast %union.FOURTH_UNION* %1436 to %struct.STYLE*
  %1438 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1437, i32 0, i32 0
  %1439 = bitcast %union.anon* %1438 to %struct.anon.9*
  %1440 = bitcast %struct.anon.9* %1439 to i8*
  %1441 = trunc i32 %1430 to i8
  %1442 = load i8, i8* %1440, align 4
  %1443 = and i8 %1441, 1
  %1444 = shl i8 %1443, 3
  %1445 = and i8 %1442, -9
  %1446 = or i8 %1445, %1444
  store i8 %1446, i8* %1440, align 4
  %1447 = zext i8 %1443 to i32
  %1448 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1449 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1448, i32 0, i32 1
  %1450 = bitcast %union.anon.10* %1449 to %struct.GAP*
  %1451 = bitcast %struct.GAP* %1450 to i16*
  %1452 = load i16, i16* %1451, align 4
  %1453 = lshr i16 %1452, 7
  %1454 = and i16 %1453, 1
  %1455 = zext i16 %1454 to i32
  %1456 = load %union.rec*, %union.rec** %1, align 8
  %1457 = bitcast %union.rec* %1456 to %struct.head_type*
  %1458 = getelementptr inbounds %struct.head_type, %struct.head_type* %1457, i32 0, i32 8
  %1459 = load %union.rec*, %union.rec** %1458, align 8
  %1460 = bitcast %union.rec* %1459 to %struct.closure_type*
  %1461 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1460, i32 0, i32 4
  %1462 = bitcast %union.FOURTH_UNION* %1461 to %struct.STYLE*
  %1463 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1462, i32 0, i32 1
  %1464 = bitcast %union.anon.10* %1463 to %struct.GAP*
  %1465 = bitcast %struct.GAP* %1464 to i16*
  %1466 = trunc i32 %1455 to i16
  %1467 = load i16, i16* %1465, align 4
  %1468 = and i16 %1466, 1
  %1469 = shl i16 %1468, 7
  %1470 = and i16 %1467, -129
  %1471 = or i16 %1470, %1469
  store i16 %1471, i16* %1465, align 4
  %1472 = zext i16 %1468 to i32
  %1473 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1474 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1473, i32 0, i32 1
  %1475 = bitcast %union.anon.10* %1474 to %struct.GAP*
  %1476 = bitcast %struct.GAP* %1475 to i16*
  %1477 = load i16, i16* %1476, align 4
  %1478 = lshr i16 %1477, 8
  %1479 = and i16 %1478, 1
  %1480 = zext i16 %1479 to i32
  %1481 = load %union.rec*, %union.rec** %1, align 8
  %1482 = bitcast %union.rec* %1481 to %struct.head_type*
  %1483 = getelementptr inbounds %struct.head_type, %struct.head_type* %1482, i32 0, i32 8
  %1484 = load %union.rec*, %union.rec** %1483, align 8
  %1485 = bitcast %union.rec* %1484 to %struct.closure_type*
  %1486 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1485, i32 0, i32 4
  %1487 = bitcast %union.FOURTH_UNION* %1486 to %struct.STYLE*
  %1488 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1487, i32 0, i32 1
  %1489 = bitcast %union.anon.10* %1488 to %struct.GAP*
  %1490 = bitcast %struct.GAP* %1489 to i16*
  %1491 = trunc i32 %1480 to i16
  %1492 = load i16, i16* %1490, align 4
  %1493 = and i16 %1491, 1
  %1494 = shl i16 %1493, 8
  %1495 = and i16 %1492, -257
  %1496 = or i16 %1495, %1494
  store i16 %1496, i16* %1490, align 4
  %1497 = zext i16 %1493 to i32
  %1498 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1499 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1498, i32 0, i32 1
  %1500 = bitcast %union.anon.10* %1499 to %struct.GAP*
  %1501 = bitcast %struct.GAP* %1500 to i16*
  %1502 = load i16, i16* %1501, align 4
  %1503 = lshr i16 %1502, 9
  %1504 = and i16 %1503, 1
  %1505 = zext i16 %1504 to i32
  %1506 = load %union.rec*, %union.rec** %1, align 8
  %1507 = bitcast %union.rec* %1506 to %struct.head_type*
  %1508 = getelementptr inbounds %struct.head_type, %struct.head_type* %1507, i32 0, i32 8
  %1509 = load %union.rec*, %union.rec** %1508, align 8
  %1510 = bitcast %union.rec* %1509 to %struct.closure_type*
  %1511 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1510, i32 0, i32 4
  %1512 = bitcast %union.FOURTH_UNION* %1511 to %struct.STYLE*
  %1513 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1512, i32 0, i32 1
  %1514 = bitcast %union.anon.10* %1513 to %struct.GAP*
  %1515 = bitcast %struct.GAP* %1514 to i16*
  %1516 = trunc i32 %1505 to i16
  %1517 = load i16, i16* %1515, align 4
  %1518 = and i16 %1516, 1
  %1519 = shl i16 %1518, 9
  %1520 = and i16 %1517, -513
  %1521 = or i16 %1520, %1519
  store i16 %1521, i16* %1515, align 4
  %1522 = zext i16 %1518 to i32
  %1523 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1524 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1523, i32 0, i32 1
  %1525 = bitcast %union.anon.10* %1524 to %struct.GAP*
  %1526 = bitcast %struct.GAP* %1525 to i16*
  %1527 = load i16, i16* %1526, align 4
  %1528 = lshr i16 %1527, 10
  %1529 = and i16 %1528, 7
  %1530 = zext i16 %1529 to i32
  %1531 = load %union.rec*, %union.rec** %1, align 8
  %1532 = bitcast %union.rec* %1531 to %struct.head_type*
  %1533 = getelementptr inbounds %struct.head_type, %struct.head_type* %1532, i32 0, i32 8
  %1534 = load %union.rec*, %union.rec** %1533, align 8
  %1535 = bitcast %union.rec* %1534 to %struct.closure_type*
  %1536 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1535, i32 0, i32 4
  %1537 = bitcast %union.FOURTH_UNION* %1536 to %struct.STYLE*
  %1538 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1537, i32 0, i32 1
  %1539 = bitcast %union.anon.10* %1538 to %struct.GAP*
  %1540 = bitcast %struct.GAP* %1539 to i16*
  %1541 = trunc i32 %1530 to i16
  %1542 = load i16, i16* %1540, align 4
  %1543 = and i16 %1541, 7
  %1544 = shl i16 %1543, 10
  %1545 = and i16 %1542, -7169
  %1546 = or i16 %1545, %1544
  store i16 %1546, i16* %1540, align 4
  %1547 = zext i16 %1543 to i32
  %1548 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1549 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1548, i32 0, i32 1
  %1550 = bitcast %union.anon.10* %1549 to %struct.GAP*
  %1551 = bitcast %struct.GAP* %1550 to i16*
  %1552 = load i16, i16* %1551, align 4
  %1553 = lshr i16 %1552, 13
  %1554 = zext i16 %1553 to i32
  %1555 = load %union.rec*, %union.rec** %1, align 8
  %1556 = bitcast %union.rec* %1555 to %struct.head_type*
  %1557 = getelementptr inbounds %struct.head_type, %struct.head_type* %1556, i32 0, i32 8
  %1558 = load %union.rec*, %union.rec** %1557, align 8
  %1559 = bitcast %union.rec* %1558 to %struct.closure_type*
  %1560 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1559, i32 0, i32 4
  %1561 = bitcast %union.FOURTH_UNION* %1560 to %struct.STYLE*
  %1562 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1561, i32 0, i32 1
  %1563 = bitcast %union.anon.10* %1562 to %struct.GAP*
  %1564 = bitcast %struct.GAP* %1563 to i16*
  %1565 = trunc i32 %1554 to i16
  %1566 = load i16, i16* %1564, align 4
  %1567 = and i16 %1565, 7
  %1568 = shl i16 %1567, 13
  %1569 = and i16 %1566, 8191
  %1570 = or i16 %1569, %1568
  store i16 %1570, i16* %1564, align 4
  %1571 = zext i16 %1567 to i32
  %1572 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1573 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1572, i32 0, i32 1
  %1574 = bitcast %union.anon.10* %1573 to %struct.GAP*
  %1575 = getelementptr inbounds %struct.GAP, %struct.GAP* %1574, i32 0, i32 1
  %1576 = load i16, i16* %1575, align 2
  %1577 = load %union.rec*, %union.rec** %1, align 8
  %1578 = bitcast %union.rec* %1577 to %struct.head_type*
  %1579 = getelementptr inbounds %struct.head_type, %struct.head_type* %1578, i32 0, i32 8
  %1580 = load %union.rec*, %union.rec** %1579, align 8
  %1581 = bitcast %union.rec* %1580 to %struct.closure_type*
  %1582 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1581, i32 0, i32 4
  %1583 = bitcast %union.FOURTH_UNION* %1582 to %struct.STYLE*
  %1584 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1583, i32 0, i32 1
  %1585 = bitcast %union.anon.10* %1584 to %struct.GAP*
  %1586 = getelementptr inbounds %struct.GAP, %struct.GAP* %1585, i32 0, i32 1
  store i16 %1576, i16* %1586, align 2
  %1587 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1588 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1587, i32 0, i32 4
  %1589 = load i32, i32* %1588, align 4
  %1590 = and i32 %1589, 4095
  %1591 = load %union.rec*, %union.rec** %1, align 8
  %1592 = bitcast %union.rec* %1591 to %struct.head_type*
  %1593 = getelementptr inbounds %struct.head_type, %struct.head_type* %1592, i32 0, i32 8
  %1594 = load %union.rec*, %union.rec** %1593, align 8
  %1595 = bitcast %union.rec* %1594 to %struct.closure_type*
  %1596 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1595, i32 0, i32 4
  %1597 = bitcast %union.FOURTH_UNION* %1596 to %struct.STYLE*
  %1598 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1597, i32 0, i32 4
  %1599 = load i32, i32* %1598, align 4
  %1600 = and i32 %1590, 4095
  %1601 = and i32 %1599, -4096
  %1602 = or i32 %1601, %1600
  store i32 %1602, i32* %1598, align 4
  %1603 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1604 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1603, i32 0, i32 4
  %1605 = load i32, i32* %1604, align 4
  %1606 = lshr i32 %1605, 12
  %1607 = and i32 %1606, 1023
  %1608 = load %union.rec*, %union.rec** %1, align 8
  %1609 = bitcast %union.rec* %1608 to %struct.head_type*
  %1610 = getelementptr inbounds %struct.head_type, %struct.head_type* %1609, i32 0, i32 8
  %1611 = load %union.rec*, %union.rec** %1610, align 8
  %1612 = bitcast %union.rec* %1611 to %struct.closure_type*
  %1613 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1612, i32 0, i32 4
  %1614 = bitcast %union.FOURTH_UNION* %1613 to %struct.STYLE*
  %1615 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1614, i32 0, i32 4
  %1616 = load i32, i32* %1615, align 4
  %1617 = and i32 %1607, 1023
  %1618 = shl i32 %1617, 12
  %1619 = and i32 %1616, -4190209
  %1620 = or i32 %1619, %1618
  store i32 %1620, i32* %1615, align 4
  %1621 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1622 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1621, i32 0, i32 4
  %1623 = load i32, i32* %1622, align 4
  %1624 = lshr i32 %1623, 22
  %1625 = and i32 %1624, 3
  %1626 = load %union.rec*, %union.rec** %1, align 8
  %1627 = bitcast %union.rec* %1626 to %struct.head_type*
  %1628 = getelementptr inbounds %struct.head_type, %struct.head_type* %1627, i32 0, i32 8
  %1629 = load %union.rec*, %union.rec** %1628, align 8
  %1630 = bitcast %union.rec* %1629 to %struct.closure_type*
  %1631 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1630, i32 0, i32 4
  %1632 = bitcast %union.FOURTH_UNION* %1631 to %struct.STYLE*
  %1633 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1632, i32 0, i32 4
  %1634 = load i32, i32* %1633, align 4
  %1635 = and i32 %1625, 3
  %1636 = shl i32 %1635, 22
  %1637 = and i32 %1634, -12582913
  %1638 = or i32 %1637, %1636
  store i32 %1638, i32* %1633, align 4
  %1639 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1640 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1639, i32 0, i32 4
  %1641 = load i32, i32* %1640, align 4
  %1642 = lshr i32 %1641, 24
  %1643 = and i32 %1642, 63
  %1644 = load %union.rec*, %union.rec** %1, align 8
  %1645 = bitcast %union.rec* %1644 to %struct.head_type*
  %1646 = getelementptr inbounds %struct.head_type, %struct.head_type* %1645, i32 0, i32 8
  %1647 = load %union.rec*, %union.rec** %1646, align 8
  %1648 = bitcast %union.rec* %1647 to %struct.closure_type*
  %1649 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1648, i32 0, i32 4
  %1650 = bitcast %union.FOURTH_UNION* %1649 to %struct.STYLE*
  %1651 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1650, i32 0, i32 4
  %1652 = load i32, i32* %1651, align 4
  %1653 = and i32 %1643, 63
  %1654 = shl i32 %1653, 24
  %1655 = and i32 %1652, -1056964609
  %1656 = or i32 %1655, %1654
  store i32 %1656, i32* %1651, align 4
  %1657 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1658 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1657, i32 0, i32 4
  %1659 = load i32, i32* %1658, align 4
  %1660 = lshr i32 %1659, 31
  %1661 = load %union.rec*, %union.rec** %1, align 8
  %1662 = bitcast %union.rec* %1661 to %struct.head_type*
  %1663 = getelementptr inbounds %struct.head_type, %struct.head_type* %1662, i32 0, i32 8
  %1664 = load %union.rec*, %union.rec** %1663, align 8
  %1665 = bitcast %union.rec* %1664 to %struct.closure_type*
  %1666 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1665, i32 0, i32 4
  %1667 = bitcast %union.FOURTH_UNION* %1666 to %struct.STYLE*
  %1668 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1667, i32 0, i32 4
  %1669 = load i32, i32* %1668, align 4
  %1670 = and i32 %1660, 1
  %1671 = shl i32 %1670, 31
  %1672 = and i32 %1669, 2147483647
  %1673 = or i32 %1672, %1671
  store i32 %1673, i32* %1668, align 4
  %1674 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1675 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1674, i32 0, i32 4
  %1676 = load i32, i32* %1675, align 4
  %1677 = lshr i32 %1676, 30
  %1678 = and i32 %1677, 1
  %1679 = load %union.rec*, %union.rec** %1, align 8
  %1680 = bitcast %union.rec* %1679 to %struct.head_type*
  %1681 = getelementptr inbounds %struct.head_type, %struct.head_type* %1680, i32 0, i32 8
  %1682 = load %union.rec*, %union.rec** %1681, align 8
  %1683 = bitcast %union.rec* %1682 to %struct.closure_type*
  %1684 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1683, i32 0, i32 4
  %1685 = bitcast %union.FOURTH_UNION* %1684 to %struct.STYLE*
  %1686 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1685, i32 0, i32 4
  %1687 = load i32, i32* %1686, align 4
  %1688 = and i32 %1678, 1
  %1689 = shl i32 %1688, 30
  %1690 = and i32 %1687, -1073741825
  %1691 = or i32 %1690, %1689
  store i32 %1691, i32* %1686, align 4
  %1692 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1693 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1692, i32 0, i32 0
  %1694 = bitcast %union.anon* %1693 to %struct.anon.9*
  %1695 = bitcast %struct.anon.9* %1694 to i8*
  %1696 = load i8, i8* %1695, align 4
  %1697 = and i8 %1696, 1
  %1698 = zext i8 %1697 to i32
  %1699 = load %union.rec*, %union.rec** %1, align 8
  %1700 = bitcast %union.rec* %1699 to %struct.head_type*
  %1701 = getelementptr inbounds %struct.head_type, %struct.head_type* %1700, i32 0, i32 8
  %1702 = load %union.rec*, %union.rec** %1701, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.closure_type*
  %1704 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1703, i32 0, i32 4
  %1705 = bitcast %union.FOURTH_UNION* %1704 to %struct.STYLE*
  %1706 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1705, i32 0, i32 0
  %1707 = bitcast %union.anon* %1706 to %struct.anon.9*
  %1708 = bitcast %struct.anon.9* %1707 to i8*
  %1709 = trunc i32 %1698 to i8
  %1710 = load i8, i8* %1708, align 4
  %1711 = and i8 %1709, 1
  %1712 = and i8 %1710, -2
  %1713 = or i8 %1712, %1711
  store i8 %1713, i8* %1708, align 4
  %1714 = zext i8 %1711 to i32
  %1715 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1716 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1715, i32 0, i32 0
  %1717 = bitcast %union.anon* %1716 to %struct.anon.9*
  %1718 = bitcast %struct.anon.9* %1717 to i8*
  %1719 = load i8, i8* %1718, align 4
  %1720 = lshr i8 %1719, 1
  %1721 = and i8 %1720, 1
  %1722 = zext i8 %1721 to i32
  %1723 = load %union.rec*, %union.rec** %1, align 8
  %1724 = bitcast %union.rec* %1723 to %struct.head_type*
  %1725 = getelementptr inbounds %struct.head_type, %struct.head_type* %1724, i32 0, i32 8
  %1726 = load %union.rec*, %union.rec** %1725, align 8
  %1727 = bitcast %union.rec* %1726 to %struct.closure_type*
  %1728 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1727, i32 0, i32 4
  %1729 = bitcast %union.FOURTH_UNION* %1728 to %struct.STYLE*
  %1730 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1729, i32 0, i32 0
  %1731 = bitcast %union.anon* %1730 to %struct.anon.9*
  %1732 = bitcast %struct.anon.9* %1731 to i8*
  %1733 = trunc i32 %1722 to i8
  %1734 = load i8, i8* %1732, align 4
  %1735 = and i8 %1733, 1
  %1736 = shl i8 %1735, 1
  %1737 = and i8 %1734, -3
  %1738 = or i8 %1737, %1736
  store i8 %1738, i8* %1732, align 4
  %1739 = zext i8 %1735 to i32
  %1740 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1741 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1740, i32 0, i32 0
  %1742 = bitcast %union.anon* %1741 to %struct.anon.9*
  %1743 = bitcast %struct.anon.9* %1742 to i8*
  %1744 = load i8, i8* %1743, align 4
  %1745 = lshr i8 %1744, 2
  %1746 = and i8 %1745, 1
  %1747 = zext i8 %1746 to i32
  %1748 = load %union.rec*, %union.rec** %1, align 8
  %1749 = bitcast %union.rec* %1748 to %struct.head_type*
  %1750 = getelementptr inbounds %struct.head_type, %struct.head_type* %1749, i32 0, i32 8
  %1751 = load %union.rec*, %union.rec** %1750, align 8
  %1752 = bitcast %union.rec* %1751 to %struct.closure_type*
  %1753 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1752, i32 0, i32 4
  %1754 = bitcast %union.FOURTH_UNION* %1753 to %struct.STYLE*
  %1755 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1754, i32 0, i32 0
  %1756 = bitcast %union.anon* %1755 to %struct.anon.9*
  %1757 = bitcast %struct.anon.9* %1756 to i8*
  %1758 = trunc i32 %1747 to i8
  %1759 = load i8, i8* %1757, align 4
  %1760 = and i8 %1758, 1
  %1761 = shl i8 %1760, 2
  %1762 = and i8 %1759, -5
  %1763 = or i8 %1762, %1761
  store i8 %1763, i8* %1757, align 4
  %1764 = zext i8 %1760 to i32
  %1765 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1766 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1765, i32 0, i32 0
  %1767 = bitcast %union.anon* %1766 to %struct.anon.9*
  %1768 = bitcast %struct.anon.9* %1767 to i8*
  %1769 = load i8, i8* %1768, align 4
  %1770 = lshr i8 %1769, 4
  %1771 = and i8 %1770, 7
  %1772 = zext i8 %1771 to i32
  %1773 = load %union.rec*, %union.rec** %1, align 8
  %1774 = bitcast %union.rec* %1773 to %struct.head_type*
  %1775 = getelementptr inbounds %struct.head_type, %struct.head_type* %1774, i32 0, i32 8
  %1776 = load %union.rec*, %union.rec** %1775, align 8
  %1777 = bitcast %union.rec* %1776 to %struct.closure_type*
  %1778 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1777, i32 0, i32 4
  %1779 = bitcast %union.FOURTH_UNION* %1778 to %struct.STYLE*
  %1780 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1779, i32 0, i32 0
  %1781 = bitcast %union.anon* %1780 to %struct.anon.9*
  %1782 = bitcast %struct.anon.9* %1781 to i8*
  %1783 = trunc i32 %1772 to i8
  %1784 = load i8, i8* %1782, align 4
  %1785 = and i8 %1783, 7
  %1786 = shl i8 %1785, 4
  %1787 = and i8 %1784, -113
  %1788 = or i8 %1787, %1786
  store i8 %1788, i8* %1782, align 4
  %1789 = zext i8 %1785 to i32
  %1790 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1791 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1790, i32 0, i32 2
  %1792 = load i16, i16* %1791, align 2
  %1793 = load %union.rec*, %union.rec** %1, align 8
  %1794 = bitcast %union.rec* %1793 to %struct.head_type*
  %1795 = getelementptr inbounds %struct.head_type, %struct.head_type* %1794, i32 0, i32 8
  %1796 = load %union.rec*, %union.rec** %1795, align 8
  %1797 = bitcast %union.rec* %1796 to %struct.closure_type*
  %1798 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1797, i32 0, i32 4
  %1799 = bitcast %union.FOURTH_UNION* %1798 to %struct.STYLE*
  %1800 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1799, i32 0, i32 2
  store i16 %1792, i16* %1800, align 2
  %1801 = load %struct.STYLE*, %struct.STYLE** %2, align 8
  %1802 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1801, i32 0, i32 3
  %1803 = load i16, i16* %1802, align 2
  %1804 = load %union.rec*, %union.rec** %1, align 8
  %1805 = bitcast %union.rec* %1804 to %struct.head_type*
  %1806 = getelementptr inbounds %struct.head_type, %struct.head_type* %1805, i32 0, i32 8
  %1807 = load %union.rec*, %union.rec** %1806, align 8
  %1808 = bitcast %union.rec* %1807 to %struct.closure_type*
  %1809 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1808, i32 0, i32 4
  %1810 = bitcast %union.FOURTH_UNION* %1809 to %struct.STYLE*
  %1811 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1810, i32 0, i32 3
  store i16 %1803, i16* %1811, align 2
  %1812 = load %union.rec*, %union.rec** %1, align 8
  %1813 = bitcast %union.rec* %1812 to %struct.word_type*
  %1814 = getelementptr inbounds %struct.word_type, %struct.word_type* %1813, i32 0, i32 2
  %1815 = bitcast %union.SECOND_UNION* %1814 to %struct.anon.2*
  %1816 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1815, i32 0, i32 2
  %1817 = load i16, i16* %1816, align 2
  %1818 = lshr i16 %1817, 8
  %1819 = and i16 %1818, 1
  %1820 = zext i16 %1819 to i32
  %1821 = icmp eq i32 %1820, 1
  br i1 %1821, label %1822, label %1836

; <label>:1822                                    ; preds = %1181
  %1823 = load %union.rec*, %union.rec** %1, align 8
  %1824 = bitcast %union.rec* %1823 to %struct.head_type*
  %1825 = getelementptr inbounds %struct.head_type, %struct.head_type* %1824, i32 0, i32 8
  %1826 = load %union.rec*, %union.rec** %1825, align 8
  %1827 = bitcast %union.rec* %1826 to %struct.closure_type*
  %1828 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1827, i32 0, i32 4
  %1829 = bitcast %union.FOURTH_UNION* %1828 to %struct.STYLE*
  %1830 = getelementptr inbounds %struct.STYLE, %struct.STYLE* %1829, i32 0, i32 1
  %1831 = bitcast %union.anon.10* %1830 to %struct.anon.11*
  %1832 = bitcast %struct.anon.11* %1831 to i8*
  %1833 = load i8, i8* %1832, align 4
  %1834 = and i8 %1833, -4
  %1835 = or i8 %1834, 1
  store i8 %1835, i8* %1832, align 4
  br label %1836

; <label>:1836                                    ; preds = %1822, %1181
  ret void
}

; Function Attrs: nounwind
declare i8* @strcpy(i8*, i8*) #3

declare i8* @SymName(%union.rec*) #1

; Function Attrs: nounwind
declare i8* @strcat(i8*, i8*) #3

declare i8* @StringInt(i32) #1

declare i32 @DbRetrieve(%union.rec*, i32, %union.rec*, i8*, i8*, i16*, i64*, i32*, i64*) #1

declare void @SwitchScope(%union.rec*) #1

declare %union.rec* @ReadFromFile(i16 zeroext, i64, i32) #1

declare void @UnSwitchScope(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

; Function Attrs: nounwind
declare i32 @__isoc99_sscanf(i8*, i8*, ...) #3

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @GazumpOptimize(%union.rec* %hd, %union.rec* %dest) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %tmp = alloca %union.rec*, align 8
  %junk = alloca %union.rec*, align 8
  %prnt = alloca %union.rec*, align 8
  store %union.rec* %hd, %union.rec** %1, align 8
  store %union.rec* %dest, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %1, align 8
  %4 = bitcast %union.rec* %3 to %struct.word_type*
  %5 = getelementptr inbounds %struct.word_type, %struct.word_type* %4, i32 0, i32 1
  %6 = bitcast %union.FIRST_UNION* %5 to %struct.anon*
  %7 = getelementptr inbounds %struct.anon, %struct.anon* %6, i32 0, i32 0
  %8 = load i8, i8* %7, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %14, label %11

; <label>:11                                      ; preds = %0
  %12 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.23, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %1, align 8
  %16 = bitcast %union.rec* %15 to %struct.head_type*
  %17 = getelementptr inbounds %struct.head_type, %struct.head_type* %16, i32 0, i32 8
  %18 = load %union.rec*, %union.rec** %17, align 8
  %19 = icmp ne %union.rec* %18, null
  br i1 %19, label %23, label %20

; <label>:20                                      ; preds = %14
  %21 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %22 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %21, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.24, i32 0, i32 0))
  br label %23

; <label>:23                                      ; preds = %20, %14
  %24 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 26), align 1
  %25 = zext i8 %24 to i32
  store i32 %25, i32* @zz_size, align 4
  %26 = sext i32 %25 to i64
  %27 = icmp uge i64 %26, 265
  br i1 %27, label %28, label %31

; <label>:28                                      ; preds = %23
  %29 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %30 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %29)
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
  store i8 26, i8* %61, align 1
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
  store %union.rec* %62, %union.rec** %tmp, align 8
  %83 = load %union.rec*, %union.rec** %1, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 2
  %86 = bitcast %union.SECOND_UNION* %85 to %struct.anon.2*
  %87 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %86, i32 0, i32 2
  %88 = load i16, i16* %87, align 2
  %89 = lshr i16 %88, 8
  %90 = and i16 %89, 1
  %91 = zext i16 %90 to i32
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %104

; <label>:93                                      ; preds = %56
  %94 = load %union.rec*, %union.rec** %2, align 8
  %95 = bitcast %union.rec* %94 to %struct.word_type*
  %96 = getelementptr inbounds %struct.word_type, %struct.word_type* %95, i32 0, i32 2
  %97 = bitcast %union.SECOND_UNION* %96 to %struct.anon.2*
  %98 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %97, i32 0, i32 2
  %99 = load i16, i16* %98, align 2
  %100 = lshr i16 %99, 3
  %101 = and i16 %100, 1
  %102 = zext i16 %101 to i32
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %126, label %104

; <label>:104                                     ; preds = %93, %56
  %105 = load %union.rec*, %union.rec** %1, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 2
  %108 = bitcast %union.SECOND_UNION* %107 to %struct.anon.2*
  %109 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %108, i32 0, i32 2
  %110 = load i16, i16* %109, align 2
  %111 = lshr i16 %110, 8
  %112 = and i16 %111, 1
  %113 = zext i16 %112 to i32
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %142

; <label>:115                                     ; preds = %104
  %116 = load %union.rec*, %union.rec** %2, align 8
  %117 = bitcast %union.rec* %116 to %struct.word_type*
  %118 = getelementptr inbounds %struct.word_type, %struct.word_type* %117, i32 0, i32 2
  %119 = bitcast %union.SECOND_UNION* %118 to %struct.anon.2*
  %120 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %119, i32 0, i32 2
  %121 = load i16, i16* %120, align 2
  %122 = lshr i16 %121, 3
  %123 = and i16 %122, 1
  %124 = zext i16 %123 to i32
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %142

; <label>:126                                     ; preds = %115, %93
  %127 = load %union.rec*, %union.rec** %tmp, align 8
  %128 = bitcast %union.rec* %127 to %struct.closure_type*
  %129 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %128, i32 0, i32 4
  %130 = bitcast %union.FOURTH_UNION* %129 to %struct.CONSTRAINT*
  %131 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %130, i32 0, i32 0
  store i32 8388607, i32* %131, align 4
  %132 = load %union.rec*, %union.rec** %tmp, align 8
  %133 = bitcast %union.rec* %132 to %struct.closure_type*
  %134 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %133, i32 0, i32 4
  %135 = bitcast %union.FOURTH_UNION* %134 to %struct.CONSTRAINT*
  %136 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %135, i32 0, i32 1
  store i32 8388607, i32* %136, align 4
  %137 = load %union.rec*, %union.rec** %tmp, align 8
  %138 = bitcast %union.rec* %137 to %struct.closure_type*
  %139 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %138, i32 0, i32 4
  %140 = bitcast %union.FOURTH_UNION* %139 to %struct.CONSTRAINT*
  %141 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %140, i32 0, i32 2
  store i32 8388607, i32* %141, align 4
  br label %186

; <label>:142                                     ; preds = %115, %104
  %143 = load %union.rec*, %union.rec** %2, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 1
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 1
  %148 = load %union.rec*, %union.rec** %147, align 8
  %149 = bitcast %union.rec* %148 to %struct.word_type*
  %150 = getelementptr inbounds %struct.word_type, %struct.word_type* %149, i32 0, i32 0
  %151 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %150, i32 0, i64 0
  %152 = getelementptr inbounds %struct.LIST, %struct.LIST* %151, i32 0, i32 0
  %153 = load %union.rec*, %union.rec** %152, align 8
  store %union.rec* %153, %union.rec** %prnt, align 8
  br label %154

; <label>:154                                     ; preds = %164, %142
  %155 = load %union.rec*, %union.rec** %prnt, align 8
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
  %165 = load %union.rec*, %union.rec** %prnt, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 0
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  %170 = load %union.rec*, %union.rec** %169, align 8
  store %union.rec* %170, %union.rec** %prnt, align 8
  br label %154

; <label>:171                                     ; preds = %154
  %172 = load %union.rec*, %union.rec** %prnt, align 8
  %173 = load %union.rec*, %union.rec** %tmp, align 8
  %174 = bitcast %union.rec* %173 to %struct.closure_type*
  %175 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %174, i32 0, i32 4
  %176 = bitcast %union.FOURTH_UNION* %175 to %struct.CONSTRAINT*
  %177 = load %union.rec*, %union.rec** %1, align 8
  %178 = bitcast %union.rec* %177 to %struct.word_type*
  %179 = getelementptr inbounds %struct.word_type, %struct.word_type* %178, i32 0, i32 2
  %180 = bitcast %union.SECOND_UNION* %179 to %struct.anon.2*
  %181 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %180, i32 0, i32 2
  %182 = load i16, i16* %181, align 2
  %183 = lshr i16 %182, 8
  %184 = and i16 %183, 1
  %185 = zext i16 %184 to i32
  call void @Constrained(%union.rec* %172, %struct.CONSTRAINT* %176, i32 %185, %union.rec** %junk)
  br label %186

; <label>:186                                     ; preds = %171, %126
  %187 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %188 = zext i8 %187 to i32
  store i32 %188, i32* @zz_size, align 4
  %189 = sext i32 %188 to i64
  %190 = icmp uge i64 %189, 265
  br i1 %190, label %191, label %194

; <label>:191                                     ; preds = %186
  %192 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %193 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %192)
  br label %219

; <label>:194                                     ; preds = %186
  %195 = load i32, i32* @zz_size, align 4
  %196 = sext i32 %195 to i64
  %197 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %196
  %198 = load %union.rec*, %union.rec** %197, align 8
  %199 = icmp eq %union.rec* %198, null
  br i1 %199, label %200, label %204

; <label>:200                                     ; preds = %194
  %201 = load i32, i32* @zz_size, align 4
  %202 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %203 = call %union.rec* @GetMemory(i32 %201, %struct.FILE_POS* %202)
  store %union.rec* %203, %union.rec** @zz_hold, align 8
  br label %218

; <label>:204                                     ; preds = %194
  %205 = load i32, i32* @zz_size, align 4
  %206 = sext i32 %205 to i64
  %207 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %206
  %208 = load %union.rec*, %union.rec** %207, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  store %union.rec* %208, %union.rec** @zz_hold, align 8
  %209 = load %union.rec*, %union.rec** @zz_hold, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 0
  %212 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %211, i32 0, i64 0
  %213 = getelementptr inbounds %struct.LIST, %struct.LIST* %212, i32 0, i32 0
  %214 = load %union.rec*, %union.rec** %213, align 8
  %215 = load i32, i32* @zz_size, align 4
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %216
  store %union.rec* %214, %union.rec** %217, align 8
  br label %218

; <label>:218                                     ; preds = %204, %200
  br label %219

; <label>:219                                     ; preds = %218, %191
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 1
  %223 = bitcast %union.FIRST_UNION* %222 to %struct.anon*
  %224 = getelementptr inbounds %struct.anon, %struct.anon* %223, i32 0, i32 0
  store i8 0, i8* %224, align 1
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = load %union.rec*, %union.rec** @zz_hold, align 8
  %227 = bitcast %union.rec* %226 to %struct.word_type*
  %228 = getelementptr inbounds %struct.word_type, %struct.word_type* %227, i32 0, i32 0
  %229 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %228, i32 0, i64 1
  %230 = getelementptr inbounds %struct.LIST, %struct.LIST* %229, i32 0, i32 1
  store %union.rec* %225, %union.rec** %230, align 8
  %231 = load %union.rec*, %union.rec** @zz_hold, align 8
  %232 = bitcast %union.rec* %231 to %struct.word_type*
  %233 = getelementptr inbounds %struct.word_type, %struct.word_type* %232, i32 0, i32 0
  %234 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %233, i32 0, i64 1
  %235 = getelementptr inbounds %struct.LIST, %struct.LIST* %234, i32 0, i32 0
  store %union.rec* %225, %union.rec** %235, align 8
  %236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %237 = bitcast %union.rec* %236 to %struct.word_type*
  %238 = getelementptr inbounds %struct.word_type, %struct.word_type* %237, i32 0, i32 0
  %239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %238, i32 0, i64 0
  %240 = getelementptr inbounds %struct.LIST, %struct.LIST* %239, i32 0, i32 1
  store %union.rec* %225, %union.rec** %240, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = bitcast %union.rec* %241 to %struct.word_type*
  %243 = getelementptr inbounds %struct.word_type, %struct.word_type* %242, i32 0, i32 0
  %244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %243, i32 0, i64 0
  %245 = getelementptr inbounds %struct.LIST, %struct.LIST* %244, i32 0, i32 0
  store %union.rec* %225, %union.rec** %245, align 8
  store %union.rec* %225, %union.rec** @xx_link, align 8
  %246 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %246, %union.rec** @zz_res, align 8
  %247 = load %union.rec*, %union.rec** %1, align 8
  %248 = bitcast %union.rec* %247 to %struct.head_type*
  %249 = getelementptr inbounds %struct.head_type, %struct.head_type* %248, i32 0, i32 9
  %250 = load %union.rec*, %union.rec** %249, align 8
  store %union.rec* %250, %union.rec** @zz_hold, align 8
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = icmp eq %union.rec* %251, null
  br i1 %252, label %253, label %255

; <label>:253                                     ; preds = %219
  %254 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %303

; <label>:255                                     ; preds = %219
  %256 = load %union.rec*, %union.rec** @zz_res, align 8
  %257 = icmp eq %union.rec* %256, null
  br i1 %257, label %258, label %260

; <label>:258                                     ; preds = %255
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %301

; <label>:260                                     ; preds = %255
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = bitcast %union.rec* %261 to %struct.word_type*
  %263 = getelementptr inbounds %struct.word_type, %struct.word_type* %262, i32 0, i32 0
  %264 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %263, i32 0, i64 0
  %265 = getelementptr inbounds %struct.LIST, %struct.LIST* %264, i32 0, i32 0
  %266 = load %union.rec*, %union.rec** %265, align 8
  store %union.rec* %266, %union.rec** @zz_tmp, align 8
  %267 = load %union.rec*, %union.rec** @zz_res, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 0
  %270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %269, i32 0, i64 0
  %271 = getelementptr inbounds %struct.LIST, %struct.LIST* %270, i32 0, i32 0
  %272 = load %union.rec*, %union.rec** %271, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 0
  %276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %275, i32 0, i64 0
  %277 = getelementptr inbounds %struct.LIST, %struct.LIST* %276, i32 0, i32 0
  store %union.rec* %272, %union.rec** %277, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = load %union.rec*, %union.rec** @zz_res, align 8
  %280 = bitcast %union.rec* %279 to %struct.word_type*
  %281 = getelementptr inbounds %struct.word_type, %struct.word_type* %280, i32 0, i32 0
  %282 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %281, i32 0, i64 0
  %283 = getelementptr inbounds %struct.LIST, %struct.LIST* %282, i32 0, i32 0
  %284 = load %union.rec*, %union.rec** %283, align 8
  %285 = bitcast %union.rec* %284 to %struct.word_type*
  %286 = getelementptr inbounds %struct.word_type, %struct.word_type* %285, i32 0, i32 0
  %287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %286, i32 0, i64 0
  %288 = getelementptr inbounds %struct.LIST, %struct.LIST* %287, i32 0, i32 1
  store %union.rec* %278, %union.rec** %288, align 8
  %289 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %290 = load %union.rec*, %union.rec** @zz_res, align 8
  %291 = bitcast %union.rec* %290 to %struct.word_type*
  %292 = getelementptr inbounds %struct.word_type, %struct.word_type* %291, i32 0, i32 0
  %293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %292, i32 0, i64 0
  %294 = getelementptr inbounds %struct.LIST, %struct.LIST* %293, i32 0, i32 0
  store %union.rec* %289, %union.rec** %294, align 8
  %295 = load %union.rec*, %union.rec** @zz_res, align 8
  %296 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %297 = bitcast %union.rec* %296 to %struct.word_type*
  %298 = getelementptr inbounds %struct.word_type, %struct.word_type* %297, i32 0, i32 0
  %299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %298, i32 0, i64 0
  %300 = getelementptr inbounds %struct.LIST, %struct.LIST* %299, i32 0, i32 1
  store %union.rec* %295, %union.rec** %300, align 8
  br label %301

; <label>:301                                     ; preds = %260, %258
  %302 = phi %union.rec* [ %259, %258 ], [ %295, %260 ]
  br label %303

; <label>:303                                     ; preds = %301, %253
  %304 = phi %union.rec* [ %254, %253 ], [ %302, %301 ]
  %305 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %305, %union.rec** @zz_res, align 8
  %306 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %306, %union.rec** @zz_hold, align 8
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %308 = icmp eq %union.rec* %307, null
  br i1 %308, label %309, label %311

; <label>:309                                     ; preds = %303
  %310 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %359

; <label>:311                                     ; preds = %303
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %313 = icmp eq %union.rec* %312, null
  br i1 %313, label %314, label %316

; <label>:314                                     ; preds = %311
  %315 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %357

; <label>:316                                     ; preds = %311
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 1
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 0
  %322 = load %union.rec*, %union.rec** %321, align 8
  store %union.rec* %322, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 1
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %327, align 8
  %329 = load %union.rec*, %union.rec** @zz_hold, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 1
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 0
  store %union.rec* %328, %union.rec** %333, align 8
  %334 = load %union.rec*, %union.rec** @zz_hold, align 8
  %335 = load %union.rec*, %union.rec** @zz_res, align 8
  %336 = bitcast %union.rec* %335 to %struct.word_type*
  %337 = getelementptr inbounds %struct.word_type, %struct.word_type* %336, i32 0, i32 0
  %338 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %337, i32 0, i64 1
  %339 = getelementptr inbounds %struct.LIST, %struct.LIST* %338, i32 0, i32 0
  %340 = load %union.rec*, %union.rec** %339, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 1
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 1
  store %union.rec* %334, %union.rec** %344, align 8
  %345 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %346 = load %union.rec*, %union.rec** @zz_res, align 8
  %347 = bitcast %union.rec* %346 to %struct.word_type*
  %348 = getelementptr inbounds %struct.word_type, %struct.word_type* %347, i32 0, i32 0
  %349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %348, i32 0, i64 1
  %350 = getelementptr inbounds %struct.LIST, %struct.LIST* %349, i32 0, i32 0
  store %union.rec* %345, %union.rec** %350, align 8
  %351 = load %union.rec*, %union.rec** @zz_res, align 8
  %352 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %353 = bitcast %union.rec* %352 to %struct.word_type*
  %354 = getelementptr inbounds %struct.word_type, %struct.word_type* %353, i32 0, i32 0
  %355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %354, i32 0, i64 1
  %356 = getelementptr inbounds %struct.LIST, %struct.LIST* %355, i32 0, i32 1
  store %union.rec* %351, %union.rec** %356, align 8
  br label %357

; <label>:357                                     ; preds = %316, %314
  %358 = phi %union.rec* [ %315, %314 ], [ %351, %316 ]
  br label %359

; <label>:359                                     ; preds = %357, %309
  %360 = phi %union.rec* [ %310, %309 ], [ %358, %357 ]
  %361 = load %union.rec*, %union.rec** %1, align 8
  %362 = bitcast %union.rec* %361 to %struct.head_type*
  %363 = getelementptr inbounds %struct.head_type, %struct.head_type* %362, i32 0, i32 8
  %364 = load %union.rec*, %union.rec** %363, align 8
  %365 = bitcast %union.rec* %364 to %struct.word_type*
  %366 = getelementptr inbounds %struct.word_type, %struct.word_type* %365, i32 0, i32 0
  %367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %366, i32 0, i64 0
  %368 = getelementptr inbounds %struct.LIST, %struct.LIST* %367, i32 0, i32 0
  %369 = load %union.rec*, %union.rec** %368, align 8
  %370 = load %union.rec*, %union.rec** %1, align 8
  %371 = bitcast %union.rec* %370 to %struct.head_type*
  %372 = getelementptr inbounds %struct.head_type, %struct.head_type* %371, i32 0, i32 8
  %373 = load %union.rec*, %union.rec** %372, align 8
  %374 = icmp ne %union.rec* %369, %373
  br i1 %374, label %375, label %1566

; <label>:375                                     ; preds = %359
  %376 = load %union.rec*, %union.rec** %1, align 8
  %377 = bitcast %union.rec* %376 to %struct.head_type*
  %378 = getelementptr inbounds %struct.head_type, %struct.head_type* %377, i32 0, i32 8
  %379 = load %union.rec*, %union.rec** %378, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 0
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %383, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %386, i32 0, i64 1
  %388 = getelementptr inbounds %struct.LIST, %struct.LIST* %387, i32 0, i32 0
  %389 = load %union.rec*, %union.rec** %388, align 8
  store %union.rec* %389, %union.rec** %g, align 8
  br label %390

; <label>:390                                     ; preds = %400, %375
  %391 = load %union.rec*, %union.rec** %g, align 8
  %392 = bitcast %union.rec* %391 to %struct.word_type*
  %393 = getelementptr inbounds %struct.word_type, %struct.word_type* %392, i32 0, i32 1
  %394 = bitcast %union.FIRST_UNION* %393 to %struct.anon*
  %395 = getelementptr inbounds %struct.anon, %struct.anon* %394, i32 0, i32 0
  %396 = load i8, i8* %395, align 1
  %397 = zext i8 %396 to i32
  %398 = icmp eq i32 %397, 0
  br i1 %398, label %399, label %407

; <label>:399                                     ; preds = %390
  br label %400

; <label>:400                                     ; preds = %399
  %401 = load %union.rec*, %union.rec** %g, align 8
  %402 = bitcast %union.rec* %401 to %struct.word_type*
  %403 = getelementptr inbounds %struct.word_type, %struct.word_type* %402, i32 0, i32 0
  %404 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %403, i32 0, i64 1
  %405 = getelementptr inbounds %struct.LIST, %struct.LIST* %404, i32 0, i32 0
  %406 = load %union.rec*, %union.rec** %405, align 8
  store %union.rec* %406, %union.rec** %g, align 8
  br label %390

; <label>:407                                     ; preds = %390
  %408 = load %union.rec*, %union.rec** %g, align 8
  %409 = bitcast %union.rec* %408 to %struct.word_type*
  %410 = getelementptr inbounds %struct.word_type, %struct.word_type* %409, i32 0, i32 1
  %411 = bitcast %union.FIRST_UNION* %410 to %struct.anon*
  %412 = getelementptr inbounds %struct.anon, %struct.anon* %411, i32 0, i32 0
  %413 = load i8, i8* %412, align 1
  %414 = zext i8 %413 to i32
  %415 = icmp eq i32 %414, 1
  br i1 %415, label %419, label %416

; <label>:416                                     ; preds = %407
  %417 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %418 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %417, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i32 0, i32 0))
  br label %419

; <label>:419                                     ; preds = %416, %407
  %420 = load %union.rec*, %union.rec** %g, align 8
  %421 = bitcast %union.rec* %420 to %struct.gapobj_type*
  %422 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %421, i32 0, i32 3
  %423 = bitcast %struct.GAP* %422 to i16*
  %424 = load i16, i16* %423, align 4
  %425 = and i16 %424, -129
  store i16 %425, i16* %423, align 4
  %426 = load %union.rec*, %union.rec** %g, align 8
  %427 = bitcast %union.rec* %426 to %struct.gapobj_type*
  %428 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %427, i32 0, i32 3
  %429 = bitcast %struct.GAP* %428 to i16*
  %430 = load i16, i16* %429, align 4
  %431 = and i16 %430, -257
  store i16 %431, i16* %429, align 4
  %432 = load %union.rec*, %union.rec** %g, align 8
  %433 = bitcast %union.rec* %432 to %struct.gapobj_type*
  %434 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %433, i32 0, i32 3
  %435 = bitcast %struct.GAP* %434 to i16*
  %436 = load i16, i16* %435, align 4
  %437 = and i16 %436, -513
  %438 = or i16 %437, 512
  store i16 %438, i16* %435, align 4
  %439 = load %union.rec*, %union.rec** %g, align 8
  %440 = bitcast %union.rec* %439 to %struct.gapobj_type*
  %441 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %440, i32 0, i32 3
  %442 = bitcast %struct.GAP* %441 to i16*
  %443 = load i16, i16* %442, align 4
  %444 = and i16 %443, -7169
  %445 = or i16 %444, 3072
  store i16 %445, i16* %442, align 4
  %446 = load %union.rec*, %union.rec** %g, align 8
  %447 = bitcast %union.rec* %446 to %struct.gapobj_type*
  %448 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %447, i32 0, i32 3
  %449 = bitcast %struct.GAP* %448 to i16*
  %450 = load i16, i16* %449, align 4
  %451 = and i16 %450, 8191
  %452 = or i16 %451, -16384
  store i16 %452, i16* %449, align 4
  %453 = load %union.rec*, %union.rec** %g, align 8
  %454 = bitcast %union.rec* %453 to %struct.gapobj_type*
  %455 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %454, i32 0, i32 3
  %456 = getelementptr inbounds %struct.GAP, %struct.GAP* %455, i32 0, i32 1
  store i16 4096, i16* %456, align 2
  %457 = load %union.rec*, %union.rec** %g, align 8
  %458 = bitcast %union.rec* %457 to %struct.word_type*
  %459 = getelementptr inbounds %struct.word_type, %struct.word_type* %458, i32 0, i32 0
  %460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %459, i32 0, i64 0
  %461 = getelementptr inbounds %struct.LIST, %struct.LIST* %460, i32 0, i32 1
  %462 = load %union.rec*, %union.rec** %461, align 8
  %463 = load %union.rec*, %union.rec** %g, align 8
  %464 = icmp ne %union.rec* %462, %463
  br i1 %464, label %465, label %643

; <label>:465                                     ; preds = %419
  %466 = load %union.rec*, %union.rec** %g, align 8
  %467 = bitcast %union.rec* %466 to %struct.word_type*
  %468 = getelementptr inbounds %struct.word_type, %struct.word_type* %467, i32 0, i32 0
  %469 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %468, i32 0, i64 0
  %470 = getelementptr inbounds %struct.LIST, %struct.LIST* %469, i32 0, i32 1
  %471 = load %union.rec*, %union.rec** %470, align 8
  store %union.rec* %471, %union.rec** @xx_link, align 8
  %472 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %472, %union.rec** @zz_hold, align 8
  %473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %474 = bitcast %union.rec* %473 to %struct.word_type*
  %475 = getelementptr inbounds %struct.word_type, %struct.word_type* %474, i32 0, i32 0
  %476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %475, i32 0, i64 1
  %477 = getelementptr inbounds %struct.LIST, %struct.LIST* %476, i32 0, i32 1
  %478 = load %union.rec*, %union.rec** %477, align 8
  %479 = load %union.rec*, %union.rec** @zz_hold, align 8
  %480 = icmp eq %union.rec* %478, %479
  br i1 %480, label %481, label %482

; <label>:481                                     ; preds = %465
  br label %523

; <label>:482                                     ; preds = %465
  %483 = load %union.rec*, %union.rec** @zz_hold, align 8
  %484 = bitcast %union.rec* %483 to %struct.word_type*
  %485 = getelementptr inbounds %struct.word_type, %struct.word_type* %484, i32 0, i32 0
  %486 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %485, i32 0, i64 1
  %487 = getelementptr inbounds %struct.LIST, %struct.LIST* %486, i32 0, i32 1
  %488 = load %union.rec*, %union.rec** %487, align 8
  store %union.rec* %488, %union.rec** @zz_res, align 8
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = bitcast %union.rec* %489 to %struct.word_type*
  %491 = getelementptr inbounds %struct.word_type, %struct.word_type* %490, i32 0, i32 0
  %492 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %491, i32 0, i64 1
  %493 = getelementptr inbounds %struct.LIST, %struct.LIST* %492, i32 0, i32 0
  %494 = load %union.rec*, %union.rec** %493, align 8
  %495 = load %union.rec*, %union.rec** @zz_res, align 8
  %496 = bitcast %union.rec* %495 to %struct.word_type*
  %497 = getelementptr inbounds %struct.word_type, %struct.word_type* %496, i32 0, i32 0
  %498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %497, i32 0, i64 1
  %499 = getelementptr inbounds %struct.LIST, %struct.LIST* %498, i32 0, i32 0
  store %union.rec* %494, %union.rec** %499, align 8
  %500 = load %union.rec*, %union.rec** @zz_res, align 8
  %501 = load %union.rec*, %union.rec** @zz_hold, align 8
  %502 = bitcast %union.rec* %501 to %struct.word_type*
  %503 = getelementptr inbounds %struct.word_type, %struct.word_type* %502, i32 0, i32 0
  %504 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %503, i32 0, i64 1
  %505 = getelementptr inbounds %struct.LIST, %struct.LIST* %504, i32 0, i32 0
  %506 = load %union.rec*, %union.rec** %505, align 8
  %507 = bitcast %union.rec* %506 to %struct.word_type*
  %508 = getelementptr inbounds %struct.word_type, %struct.word_type* %507, i32 0, i32 0
  %509 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %508, i32 0, i64 1
  %510 = getelementptr inbounds %struct.LIST, %struct.LIST* %509, i32 0, i32 1
  store %union.rec* %500, %union.rec** %510, align 8
  %511 = load %union.rec*, %union.rec** @zz_hold, align 8
  %512 = load %union.rec*, %union.rec** @zz_hold, align 8
  %513 = bitcast %union.rec* %512 to %struct.word_type*
  %514 = getelementptr inbounds %struct.word_type, %struct.word_type* %513, i32 0, i32 0
  %515 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %514, i32 0, i64 1
  %516 = getelementptr inbounds %struct.LIST, %struct.LIST* %515, i32 0, i32 1
  store %union.rec* %511, %union.rec** %516, align 8
  %517 = load %union.rec*, %union.rec** @zz_hold, align 8
  %518 = bitcast %union.rec* %517 to %struct.word_type*
  %519 = getelementptr inbounds %struct.word_type, %struct.word_type* %518, i32 0, i32 0
  %520 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %519, i32 0, i64 1
  %521 = getelementptr inbounds %struct.LIST, %struct.LIST* %520, i32 0, i32 0
  store %union.rec* %511, %union.rec** %521, align 8
  %522 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %523

; <label>:523                                     ; preds = %482, %481
  %524 = phi %union.rec* [ null, %481 ], [ %522, %482 ]
  store %union.rec* %524, %union.rec** @xx_tmp, align 8
  %525 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %525, %union.rec** @zz_hold, align 8
  %526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %527 = bitcast %union.rec* %526 to %struct.word_type*
  %528 = getelementptr inbounds %struct.word_type, %struct.word_type* %527, i32 0, i32 0
  %529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %528, i32 0, i64 0
  %530 = getelementptr inbounds %struct.LIST, %struct.LIST* %529, i32 0, i32 1
  %531 = load %union.rec*, %union.rec** %530, align 8
  %532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %533 = icmp eq %union.rec* %531, %532
  br i1 %533, label %534, label %535

; <label>:534                                     ; preds = %523
  br label %576

; <label>:535                                     ; preds = %523
  %536 = load %union.rec*, %union.rec** @zz_hold, align 8
  %537 = bitcast %union.rec* %536 to %struct.word_type*
  %538 = getelementptr inbounds %struct.word_type, %struct.word_type* %537, i32 0, i32 0
  %539 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %538, i32 0, i64 0
  %540 = getelementptr inbounds %struct.LIST, %struct.LIST* %539, i32 0, i32 1
  %541 = load %union.rec*, %union.rec** %540, align 8
  store %union.rec* %541, %union.rec** @zz_res, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %543 = bitcast %union.rec* %542 to %struct.word_type*
  %544 = getelementptr inbounds %struct.word_type, %struct.word_type* %543, i32 0, i32 0
  %545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %544, i32 0, i64 0
  %546 = getelementptr inbounds %struct.LIST, %struct.LIST* %545, i32 0, i32 0
  %547 = load %union.rec*, %union.rec** %546, align 8
  %548 = load %union.rec*, %union.rec** @zz_res, align 8
  %549 = bitcast %union.rec* %548 to %struct.word_type*
  %550 = getelementptr inbounds %struct.word_type, %struct.word_type* %549, i32 0, i32 0
  %551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %550, i32 0, i64 0
  %552 = getelementptr inbounds %struct.LIST, %struct.LIST* %551, i32 0, i32 0
  store %union.rec* %547, %union.rec** %552, align 8
  %553 = load %union.rec*, %union.rec** @zz_res, align 8
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %555 = bitcast %union.rec* %554 to %struct.word_type*
  %556 = getelementptr inbounds %struct.word_type, %struct.word_type* %555, i32 0, i32 0
  %557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %556, i32 0, i64 0
  %558 = getelementptr inbounds %struct.LIST, %struct.LIST* %557, i32 0, i32 0
  %559 = load %union.rec*, %union.rec** %558, align 8
  %560 = bitcast %union.rec* %559 to %struct.word_type*
  %561 = getelementptr inbounds %struct.word_type, %struct.word_type* %560, i32 0, i32 0
  %562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %561, i32 0, i64 0
  %563 = getelementptr inbounds %struct.LIST, %struct.LIST* %562, i32 0, i32 1
  store %union.rec* %553, %union.rec** %563, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %565 = load %union.rec*, %union.rec** @zz_hold, align 8
  %566 = bitcast %union.rec* %565 to %struct.word_type*
  %567 = getelementptr inbounds %struct.word_type, %struct.word_type* %566, i32 0, i32 0
  %568 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %567, i32 0, i64 0
  %569 = getelementptr inbounds %struct.LIST, %struct.LIST* %568, i32 0, i32 1
  store %union.rec* %564, %union.rec** %569, align 8
  %570 = load %union.rec*, %union.rec** @zz_hold, align 8
  %571 = bitcast %union.rec* %570 to %struct.word_type*
  %572 = getelementptr inbounds %struct.word_type, %struct.word_type* %571, i32 0, i32 0
  %573 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %572, i32 0, i64 0
  %574 = getelementptr inbounds %struct.LIST, %struct.LIST* %573, i32 0, i32 0
  store %union.rec* %564, %union.rec** %574, align 8
  %575 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %576

; <label>:576                                     ; preds = %535, %534
  %577 = phi %union.rec* [ null, %534 ], [ %575, %535 ]
  %578 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %578, %union.rec** @zz_hold, align 8
  %579 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %579, %union.rec** @zz_hold, align 8
  %580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %581 = bitcast %union.rec* %580 to %struct.word_type*
  %582 = getelementptr inbounds %struct.word_type, %struct.word_type* %581, i32 0, i32 1
  %583 = bitcast %union.FIRST_UNION* %582 to %struct.anon*
  %584 = getelementptr inbounds %struct.anon, %struct.anon* %583, i32 0, i32 0
  %585 = load i8, i8* %584, align 1
  %586 = zext i8 %585 to i32
  %587 = icmp eq i32 %586, 11
  br i1 %587, label %597, label %588

; <label>:588                                     ; preds = %576
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 1
  %592 = bitcast %union.FIRST_UNION* %591 to %struct.anon*
  %593 = getelementptr inbounds %struct.anon, %struct.anon* %592, i32 0, i32 0
  %594 = load i8, i8* %593, align 1
  %595 = zext i8 %594 to i32
  %596 = icmp eq i32 %595, 12
  br i1 %596, label %597, label %605

; <label>:597                                     ; preds = %588, %576
  %598 = load %union.rec*, %union.rec** @zz_hold, align 8
  %599 = bitcast %union.rec* %598 to %struct.word_type*
  %600 = getelementptr inbounds %struct.word_type, %struct.word_type* %599, i32 0, i32 1
  %601 = bitcast %union.FIRST_UNION* %600 to %struct.anon*
  %602 = getelementptr inbounds %struct.anon, %struct.anon* %601, i32 0, i32 1
  %603 = load i8, i8* %602, align 1
  %604 = zext i8 %603 to i32
  br label %616

; <label>:605                                     ; preds = %588
  %606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %607 = bitcast %union.rec* %606 to %struct.word_type*
  %608 = getelementptr inbounds %struct.word_type, %struct.word_type* %607, i32 0, i32 1
  %609 = bitcast %union.FIRST_UNION* %608 to %struct.anon*
  %610 = getelementptr inbounds %struct.anon, %struct.anon* %609, i32 0, i32 0
  %611 = load i8, i8* %610, align 1
  %612 = zext i8 %611 to i64
  %613 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %612
  %614 = load i8, i8* %613, align 1
  %615 = zext i8 %614 to i32
  br label %616

; <label>:616                                     ; preds = %605, %597
  %617 = phi i32 [ %604, %597 ], [ %615, %605 ]
  store i32 %617, i32* @zz_size, align 4
  %618 = load i32, i32* @zz_size, align 4
  %619 = sext i32 %618 to i64
  %620 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %619
  %621 = load %union.rec*, %union.rec** %620, align 8
  %622 = load %union.rec*, %union.rec** @zz_hold, align 8
  %623 = bitcast %union.rec* %622 to %struct.word_type*
  %624 = getelementptr inbounds %struct.word_type, %struct.word_type* %623, i32 0, i32 0
  %625 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %624, i32 0, i64 0
  %626 = getelementptr inbounds %struct.LIST, %struct.LIST* %625, i32 0, i32 0
  store %union.rec* %621, %union.rec** %626, align 8
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %628 = load i32, i32* @zz_size, align 4
  %629 = sext i32 %628 to i64
  %630 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %629
  store %union.rec* %627, %union.rec** %630, align 8
  %631 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %632 = bitcast %union.rec* %631 to %struct.word_type*
  %633 = getelementptr inbounds %struct.word_type, %struct.word_type* %632, i32 0, i32 0
  %634 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %633, i32 0, i64 1
  %635 = getelementptr inbounds %struct.LIST, %struct.LIST* %634, i32 0, i32 1
  %636 = load %union.rec*, %union.rec** %635, align 8
  %637 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %638 = icmp eq %union.rec* %636, %637
  br i1 %638, label %639, label %642

; <label>:639                                     ; preds = %616
  %640 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %641 = call i32 @DisposeObject(%union.rec* %640)
  br label %642

; <label>:642                                     ; preds = %639, %616
  br label %643

; <label>:643                                     ; preds = %642, %419
  %644 = load %union.rec*, %union.rec** %g, align 8
  %645 = bitcast %union.rec* %644 to %struct.word_type*
  %646 = getelementptr inbounds %struct.word_type, %struct.word_type* %645, i32 0, i32 1
  %647 = bitcast %union.FIRST_UNION* %646 to %struct.FILE_POS*
  %648 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.26, i32 0, i32 0), %struct.FILE_POS* %647)
  store %union.rec* %648, %union.rec** %tmp, align 8
  %649 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %650 = zext i8 %649 to i32
  store i32 %650, i32* @zz_size, align 4
  %651 = sext i32 %650 to i64
  %652 = icmp uge i64 %651, 265
  br i1 %652, label %653, label %656

; <label>:653                                     ; preds = %643
  %654 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %655 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %654)
  br label %681

; <label>:656                                     ; preds = %643
  %657 = load i32, i32* @zz_size, align 4
  %658 = sext i32 %657 to i64
  %659 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %658
  %660 = load %union.rec*, %union.rec** %659, align 8
  %661 = icmp eq %union.rec* %660, null
  br i1 %661, label %662, label %666

; <label>:662                                     ; preds = %656
  %663 = load i32, i32* @zz_size, align 4
  %664 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %665 = call %union.rec* @GetMemory(i32 %663, %struct.FILE_POS* %664)
  store %union.rec* %665, %union.rec** @zz_hold, align 8
  br label %680

; <label>:666                                     ; preds = %656
  %667 = load i32, i32* @zz_size, align 4
  %668 = sext i32 %667 to i64
  %669 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %668
  %670 = load %union.rec*, %union.rec** %669, align 8
  store %union.rec* %670, %union.rec** @zz_hold, align 8
  store %union.rec* %670, %union.rec** @zz_hold, align 8
  %671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 0
  %674 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %673, i32 0, i64 0
  %675 = getelementptr inbounds %struct.LIST, %struct.LIST* %674, i32 0, i32 0
  %676 = load %union.rec*, %union.rec** %675, align 8
  %677 = load i32, i32* @zz_size, align 4
  %678 = sext i32 %677 to i64
  %679 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %678
  store %union.rec* %676, %union.rec** %679, align 8
  br label %680

; <label>:680                                     ; preds = %666, %662
  br label %681

; <label>:681                                     ; preds = %680, %653
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %683 = bitcast %union.rec* %682 to %struct.word_type*
  %684 = getelementptr inbounds %struct.word_type, %struct.word_type* %683, i32 0, i32 1
  %685 = bitcast %union.FIRST_UNION* %684 to %struct.anon*
  %686 = getelementptr inbounds %struct.anon, %struct.anon* %685, i32 0, i32 0
  store i8 0, i8* %686, align 1
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = load %union.rec*, %union.rec** @zz_hold, align 8
  %689 = bitcast %union.rec* %688 to %struct.word_type*
  %690 = getelementptr inbounds %struct.word_type, %struct.word_type* %689, i32 0, i32 0
  %691 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %690, i32 0, i64 1
  %692 = getelementptr inbounds %struct.LIST, %struct.LIST* %691, i32 0, i32 1
  store %union.rec* %687, %union.rec** %692, align 8
  %693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %694 = bitcast %union.rec* %693 to %struct.word_type*
  %695 = getelementptr inbounds %struct.word_type, %struct.word_type* %694, i32 0, i32 0
  %696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %695, i32 0, i64 1
  %697 = getelementptr inbounds %struct.LIST, %struct.LIST* %696, i32 0, i32 0
  store %union.rec* %687, %union.rec** %697, align 8
  %698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %699 = bitcast %union.rec* %698 to %struct.word_type*
  %700 = getelementptr inbounds %struct.word_type, %struct.word_type* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %700, i32 0, i64 0
  %702 = getelementptr inbounds %struct.LIST, %struct.LIST* %701, i32 0, i32 1
  store %union.rec* %687, %union.rec** %702, align 8
  %703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %704 = bitcast %union.rec* %703 to %struct.word_type*
  %705 = getelementptr inbounds %struct.word_type, %struct.word_type* %704, i32 0, i32 0
  %706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %705, i32 0, i64 0
  %707 = getelementptr inbounds %struct.LIST, %struct.LIST* %706, i32 0, i32 0
  store %union.rec* %687, %union.rec** %707, align 8
  store %union.rec* %687, %union.rec** @xx_link, align 8
  %708 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %708, %union.rec** @zz_res, align 8
  %709 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %709, %union.rec** @zz_hold, align 8
  %710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %711 = icmp eq %union.rec* %710, null
  br i1 %711, label %712, label %714

; <label>:712                                     ; preds = %681
  %713 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %762

; <label>:714                                     ; preds = %681
  %715 = load %union.rec*, %union.rec** @zz_res, align 8
  %716 = icmp eq %union.rec* %715, null
  br i1 %716, label %717, label %719

; <label>:717                                     ; preds = %714
  %718 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %760

; <label>:719                                     ; preds = %714
  %720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 0
  %723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %722, i32 0, i64 0
  %724 = getelementptr inbounds %struct.LIST, %struct.LIST* %723, i32 0, i32 0
  %725 = load %union.rec*, %union.rec** %724, align 8
  store %union.rec* %725, %union.rec** @zz_tmp, align 8
  %726 = load %union.rec*, %union.rec** @zz_res, align 8
  %727 = bitcast %union.rec* %726 to %struct.word_type*
  %728 = getelementptr inbounds %struct.word_type, %struct.word_type* %727, i32 0, i32 0
  %729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %728, i32 0, i64 0
  %730 = getelementptr inbounds %struct.LIST, %struct.LIST* %729, i32 0, i32 0
  %731 = load %union.rec*, %union.rec** %730, align 8
  %732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %733 = bitcast %union.rec* %732 to %struct.word_type*
  %734 = getelementptr inbounds %struct.word_type, %struct.word_type* %733, i32 0, i32 0
  %735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %734, i32 0, i64 0
  %736 = getelementptr inbounds %struct.LIST, %struct.LIST* %735, i32 0, i32 0
  store %union.rec* %731, %union.rec** %736, align 8
  %737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %738 = load %union.rec*, %union.rec** @zz_res, align 8
  %739 = bitcast %union.rec* %738 to %struct.word_type*
  %740 = getelementptr inbounds %struct.word_type, %struct.word_type* %739, i32 0, i32 0
  %741 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %740, i32 0, i64 0
  %742 = getelementptr inbounds %struct.LIST, %struct.LIST* %741, i32 0, i32 0
  %743 = load %union.rec*, %union.rec** %742, align 8
  %744 = bitcast %union.rec* %743 to %struct.word_type*
  %745 = getelementptr inbounds %struct.word_type, %struct.word_type* %744, i32 0, i32 0
  %746 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %745, i32 0, i64 0
  %747 = getelementptr inbounds %struct.LIST, %struct.LIST* %746, i32 0, i32 1
  store %union.rec* %737, %union.rec** %747, align 8
  %748 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %749 = load %union.rec*, %union.rec** @zz_res, align 8
  %750 = bitcast %union.rec* %749 to %struct.word_type*
  %751 = getelementptr inbounds %struct.word_type, %struct.word_type* %750, i32 0, i32 0
  %752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %751, i32 0, i64 0
  %753 = getelementptr inbounds %struct.LIST, %struct.LIST* %752, i32 0, i32 0
  store %union.rec* %748, %union.rec** %753, align 8
  %754 = load %union.rec*, %union.rec** @zz_res, align 8
  %755 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %756 = bitcast %union.rec* %755 to %struct.word_type*
  %757 = getelementptr inbounds %struct.word_type, %struct.word_type* %756, i32 0, i32 0
  %758 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %757, i32 0, i64 0
  %759 = getelementptr inbounds %struct.LIST, %struct.LIST* %758, i32 0, i32 1
  store %union.rec* %754, %union.rec** %759, align 8
  br label %760

; <label>:760                                     ; preds = %719, %717
  %761 = phi %union.rec* [ %718, %717 ], [ %754, %719 ]
  br label %762

; <label>:762                                     ; preds = %760, %712
  %763 = phi %union.rec* [ %713, %712 ], [ %761, %760 ]
  %764 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %764, %union.rec** @zz_res, align 8
  %765 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %765, %union.rec** @zz_hold, align 8
  %766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %767 = icmp eq %union.rec* %766, null
  br i1 %767, label %768, label %770

; <label>:768                                     ; preds = %762
  %769 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %818

; <label>:770                                     ; preds = %762
  %771 = load %union.rec*, %union.rec** @zz_res, align 8
  %772 = icmp eq %union.rec* %771, null
  br i1 %772, label %773, label %775

; <label>:773                                     ; preds = %770
  %774 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %816

; <label>:775                                     ; preds = %770
  %776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %777 = bitcast %union.rec* %776 to %struct.word_type*
  %778 = getelementptr inbounds %struct.word_type, %struct.word_type* %777, i32 0, i32 0
  %779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %778, i32 0, i64 1
  %780 = getelementptr inbounds %struct.LIST, %struct.LIST* %779, i32 0, i32 0
  %781 = load %union.rec*, %union.rec** %780, align 8
  store %union.rec* %781, %union.rec** @zz_tmp, align 8
  %782 = load %union.rec*, %union.rec** @zz_res, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 0
  %785 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %784, i32 0, i64 1
  %786 = getelementptr inbounds %struct.LIST, %struct.LIST* %785, i32 0, i32 0
  %787 = load %union.rec*, %union.rec** %786, align 8
  %788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %789 = bitcast %union.rec* %788 to %struct.word_type*
  %790 = getelementptr inbounds %struct.word_type, %struct.word_type* %789, i32 0, i32 0
  %791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %790, i32 0, i64 1
  %792 = getelementptr inbounds %struct.LIST, %struct.LIST* %791, i32 0, i32 0
  store %union.rec* %787, %union.rec** %792, align 8
  %793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %794 = load %union.rec*, %union.rec** @zz_res, align 8
  %795 = bitcast %union.rec* %794 to %struct.word_type*
  %796 = getelementptr inbounds %struct.word_type, %struct.word_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %796, i32 0, i64 1
  %798 = getelementptr inbounds %struct.LIST, %struct.LIST* %797, i32 0, i32 0
  %799 = load %union.rec*, %union.rec** %798, align 8
  %800 = bitcast %union.rec* %799 to %struct.word_type*
  %801 = getelementptr inbounds %struct.word_type, %struct.word_type* %800, i32 0, i32 0
  %802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %801, i32 0, i64 1
  %803 = getelementptr inbounds %struct.LIST, %struct.LIST* %802, i32 0, i32 1
  store %union.rec* %793, %union.rec** %803, align 8
  %804 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %805 = load %union.rec*, %union.rec** @zz_res, align 8
  %806 = bitcast %union.rec* %805 to %struct.word_type*
  %807 = getelementptr inbounds %struct.word_type, %struct.word_type* %806, i32 0, i32 0
  %808 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %807, i32 0, i64 1
  %809 = getelementptr inbounds %struct.LIST, %struct.LIST* %808, i32 0, i32 0
  store %union.rec* %804, %union.rec** %809, align 8
  %810 = load %union.rec*, %union.rec** @zz_res, align 8
  %811 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 0
  %814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %813, i32 0, i64 1
  %815 = getelementptr inbounds %struct.LIST, %struct.LIST* %814, i32 0, i32 1
  store %union.rec* %810, %union.rec** %815, align 8
  br label %816

; <label>:816                                     ; preds = %775, %773
  %817 = phi %union.rec* [ %774, %773 ], [ %810, %775 ]
  br label %818

; <label>:818                                     ; preds = %816, %768
  %819 = phi %union.rec* [ %769, %768 ], [ %817, %816 ]
  %820 = load %union.rec*, %union.rec** %g, align 8
  %821 = bitcast %union.rec* %820 to %struct.word_type*
  %822 = getelementptr inbounds %struct.word_type, %struct.word_type* %821, i32 0, i32 1
  %823 = bitcast %union.FIRST_UNION* %822 to %struct.FILE_POS*
  %824 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.27, i32 0, i32 0), %struct.FILE_POS* %823)
  store %union.rec* %824, %union.rec** %tmp, align 8
  %825 = load %union.rec*, %union.rec** %tmp, align 8
  %826 = bitcast %union.rec* %825 to %struct.word_type*
  %827 = getelementptr inbounds %struct.word_type, %struct.word_type* %826, i32 0, i32 3
  %828 = bitcast %union.THIRD_UNION* %827 to %struct.anon.6*
  %829 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %828, i32 0, i32 1
  %830 = getelementptr inbounds [2 x i32], [2 x i32]* %829, i32 0, i64 0
  store i32 0, i32* %830, align 4
  %831 = load %union.rec*, %union.rec** %tmp, align 8
  %832 = bitcast %union.rec* %831 to %struct.word_type*
  %833 = getelementptr inbounds %struct.word_type, %struct.word_type* %832, i32 0, i32 3
  %834 = bitcast %union.THIRD_UNION* %833 to %struct.anon.6*
  %835 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %834, i32 0, i32 0
  %836 = getelementptr inbounds [2 x i32], [2 x i32]* %835, i32 0, i64 0
  store i32 0, i32* %836, align 4
  %837 = load %union.rec*, %union.rec** %tmp, align 8
  %838 = bitcast %union.rec* %837 to %struct.word_type*
  %839 = getelementptr inbounds %struct.word_type, %struct.word_type* %838, i32 0, i32 3
  %840 = bitcast %union.THIRD_UNION* %839 to %struct.anon.6*
  %841 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %840, i32 0, i32 1
  %842 = getelementptr inbounds [2 x i32], [2 x i32]* %841, i32 0, i64 1
  store i32 0, i32* %842, align 4
  %843 = load %union.rec*, %union.rec** %tmp, align 8
  %844 = bitcast %union.rec* %843 to %struct.word_type*
  %845 = getelementptr inbounds %struct.word_type, %struct.word_type* %844, i32 0, i32 3
  %846 = bitcast %union.THIRD_UNION* %845 to %struct.anon.6*
  %847 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %846, i32 0, i32 0
  %848 = getelementptr inbounds [2 x i32], [2 x i32]* %847, i32 0, i64 1
  store i32 0, i32* %848, align 4
  %849 = load %union.rec*, %union.rec** %tmp, align 8
  %850 = bitcast %union.rec* %849 to %struct.word_type*
  %851 = getelementptr inbounds %struct.word_type, %struct.word_type* %850, i32 0, i32 2
  %852 = bitcast %union.SECOND_UNION* %851 to %struct.anon.1*
  %853 = bitcast %struct.anon.1* %852 to i32*
  %854 = load i32, i32* %853, align 4
  %855 = and i32 %854, -4190209
  store i32 %855, i32* %853, align 4
  %856 = load %union.rec*, %union.rec** %tmp, align 8
  %857 = bitcast %union.rec* %856 to %struct.word_type*
  %858 = getelementptr inbounds %struct.word_type, %struct.word_type* %857, i32 0, i32 2
  %859 = bitcast %union.SECOND_UNION* %858 to %struct.anon.1*
  %860 = bitcast %struct.anon.1* %859 to i32*
  %861 = load i32, i32* %860, align 4
  %862 = and i32 %861, -4096
  store i32 %862, i32* %860, align 4
  %863 = load %union.rec*, %union.rec** %tmp, align 8
  %864 = bitcast %union.rec* %863 to %struct.word_type*
  %865 = getelementptr inbounds %struct.word_type, %struct.word_type* %864, i32 0, i32 2
  %866 = bitcast %union.SECOND_UNION* %865 to %struct.anon.1*
  %867 = bitcast %struct.anon.1* %866 to i32*
  %868 = load i32, i32* %867, align 4
  %869 = and i32 %868, -4194305
  store i32 %869, i32* %867, align 4
  %870 = load %union.rec*, %union.rec** %tmp, align 8
  %871 = bitcast %union.rec* %870 to %struct.word_type*
  %872 = getelementptr inbounds %struct.word_type, %struct.word_type* %871, i32 0, i32 2
  %873 = bitcast %union.SECOND_UNION* %872 to %struct.anon.1*
  %874 = bitcast %struct.anon.1* %873 to i32*
  %875 = load i32, i32* %874, align 4
  %876 = and i32 %875, 2147483647
  store i32 %876, i32* %874, align 4
  %877 = load %union.rec*, %union.rec** %tmp, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 2
  %880 = bitcast %union.SECOND_UNION* %879 to %struct.anon.1*
  %881 = bitcast %struct.anon.1* %880 to i32*
  %882 = load i32, i32* %881, align 4
  %883 = and i32 %882, -528482305
  store i32 %883, i32* %881, align 4
  %884 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %885 = zext i8 %884 to i32
  store i32 %885, i32* @zz_size, align 4
  %886 = sext i32 %885 to i64
  %887 = icmp uge i64 %886, 265
  br i1 %887, label %888, label %891

; <label>:888                                     ; preds = %818
  %889 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %890 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %889)
  br label %916

; <label>:891                                     ; preds = %818
  %892 = load i32, i32* @zz_size, align 4
  %893 = sext i32 %892 to i64
  %894 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %893
  %895 = load %union.rec*, %union.rec** %894, align 8
  %896 = icmp eq %union.rec* %895, null
  br i1 %896, label %897, label %901

; <label>:897                                     ; preds = %891
  %898 = load i32, i32* @zz_size, align 4
  %899 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %900 = call %union.rec* @GetMemory(i32 %898, %struct.FILE_POS* %899)
  store %union.rec* %900, %union.rec** @zz_hold, align 8
  br label %915

; <label>:901                                     ; preds = %891
  %902 = load i32, i32* @zz_size, align 4
  %903 = sext i32 %902 to i64
  %904 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %903
  %905 = load %union.rec*, %union.rec** %904, align 8
  store %union.rec* %905, %union.rec** @zz_hold, align 8
  store %union.rec* %905, %union.rec** @zz_hold, align 8
  %906 = load %union.rec*, %union.rec** @zz_hold, align 8
  %907 = bitcast %union.rec* %906 to %struct.word_type*
  %908 = getelementptr inbounds %struct.word_type, %struct.word_type* %907, i32 0, i32 0
  %909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %908, i32 0, i64 0
  %910 = getelementptr inbounds %struct.LIST, %struct.LIST* %909, i32 0, i32 0
  %911 = load %union.rec*, %union.rec** %910, align 8
  %912 = load i32, i32* @zz_size, align 4
  %913 = sext i32 %912 to i64
  %914 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %913
  store %union.rec* %911, %union.rec** %914, align 8
  br label %915

; <label>:915                                     ; preds = %901, %897
  br label %916

; <label>:916                                     ; preds = %915, %888
  %917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %918 = bitcast %union.rec* %917 to %struct.word_type*
  %919 = getelementptr inbounds %struct.word_type, %struct.word_type* %918, i32 0, i32 1
  %920 = bitcast %union.FIRST_UNION* %919 to %struct.anon*
  %921 = getelementptr inbounds %struct.anon, %struct.anon* %920, i32 0, i32 0
  store i8 0, i8* %921, align 1
  %922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %923 = load %union.rec*, %union.rec** @zz_hold, align 8
  %924 = bitcast %union.rec* %923 to %struct.word_type*
  %925 = getelementptr inbounds %struct.word_type, %struct.word_type* %924, i32 0, i32 0
  %926 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %925, i32 0, i64 1
  %927 = getelementptr inbounds %struct.LIST, %struct.LIST* %926, i32 0, i32 1
  store %union.rec* %922, %union.rec** %927, align 8
  %928 = load %union.rec*, %union.rec** @zz_hold, align 8
  %929 = bitcast %union.rec* %928 to %struct.word_type*
  %930 = getelementptr inbounds %struct.word_type, %struct.word_type* %929, i32 0, i32 0
  %931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %930, i32 0, i64 1
  %932 = getelementptr inbounds %struct.LIST, %struct.LIST* %931, i32 0, i32 0
  store %union.rec* %922, %union.rec** %932, align 8
  %933 = load %union.rec*, %union.rec** @zz_hold, align 8
  %934 = bitcast %union.rec* %933 to %struct.word_type*
  %935 = getelementptr inbounds %struct.word_type, %struct.word_type* %934, i32 0, i32 0
  %936 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %935, i32 0, i64 0
  %937 = getelementptr inbounds %struct.LIST, %struct.LIST* %936, i32 0, i32 1
  store %union.rec* %922, %union.rec** %937, align 8
  %938 = load %union.rec*, %union.rec** @zz_hold, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 0
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 0
  store %union.rec* %922, %union.rec** %942, align 8
  store %union.rec* %922, %union.rec** @xx_link, align 8
  %943 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %943, %union.rec** @zz_res, align 8
  %944 = load %union.rec*, %union.rec** %1, align 8
  %945 = bitcast %union.rec* %944 to %struct.head_type*
  %946 = getelementptr inbounds %struct.head_type, %struct.head_type* %945, i32 0, i32 8
  %947 = load %union.rec*, %union.rec** %946, align 8
  store %union.rec* %947, %union.rec** @zz_hold, align 8
  %948 = load %union.rec*, %union.rec** @zz_hold, align 8
  %949 = icmp eq %union.rec* %948, null
  br i1 %949, label %950, label %952

; <label>:950                                     ; preds = %916
  %951 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1000

; <label>:952                                     ; preds = %916
  %953 = load %union.rec*, %union.rec** @zz_res, align 8
  %954 = icmp eq %union.rec* %953, null
  br i1 %954, label %955, label %957

; <label>:955                                     ; preds = %952
  %956 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %998

; <label>:957                                     ; preds = %952
  %958 = load %union.rec*, %union.rec** @zz_hold, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 0
  %961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %960, i32 0, i64 0
  %962 = getelementptr inbounds %struct.LIST, %struct.LIST* %961, i32 0, i32 0
  %963 = load %union.rec*, %union.rec** %962, align 8
  store %union.rec* %963, %union.rec** @zz_tmp, align 8
  %964 = load %union.rec*, %union.rec** @zz_res, align 8
  %965 = bitcast %union.rec* %964 to %struct.word_type*
  %966 = getelementptr inbounds %struct.word_type, %struct.word_type* %965, i32 0, i32 0
  %967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %966, i32 0, i64 0
  %968 = getelementptr inbounds %struct.LIST, %struct.LIST* %967, i32 0, i32 0
  %969 = load %union.rec*, %union.rec** %968, align 8
  %970 = load %union.rec*, %union.rec** @zz_hold, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 0
  %973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %972, i32 0, i64 0
  %974 = getelementptr inbounds %struct.LIST, %struct.LIST* %973, i32 0, i32 0
  store %union.rec* %969, %union.rec** %974, align 8
  %975 = load %union.rec*, %union.rec** @zz_hold, align 8
  %976 = load %union.rec*, %union.rec** @zz_res, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %978, i32 0, i64 0
  %980 = getelementptr inbounds %struct.LIST, %struct.LIST* %979, i32 0, i32 0
  %981 = load %union.rec*, %union.rec** %980, align 8
  %982 = bitcast %union.rec* %981 to %struct.word_type*
  %983 = getelementptr inbounds %struct.word_type, %struct.word_type* %982, i32 0, i32 0
  %984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %983, i32 0, i64 0
  %985 = getelementptr inbounds %struct.LIST, %struct.LIST* %984, i32 0, i32 1
  store %union.rec* %975, %union.rec** %985, align 8
  %986 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %987 = load %union.rec*, %union.rec** @zz_res, align 8
  %988 = bitcast %union.rec* %987 to %struct.word_type*
  %989 = getelementptr inbounds %struct.word_type, %struct.word_type* %988, i32 0, i32 0
  %990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %989, i32 0, i64 0
  %991 = getelementptr inbounds %struct.LIST, %struct.LIST* %990, i32 0, i32 0
  store %union.rec* %986, %union.rec** %991, align 8
  %992 = load %union.rec*, %union.rec** @zz_res, align 8
  %993 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %994 = bitcast %union.rec* %993 to %struct.word_type*
  %995 = getelementptr inbounds %struct.word_type, %struct.word_type* %994, i32 0, i32 0
  %996 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %995, i32 0, i64 0
  %997 = getelementptr inbounds %struct.LIST, %struct.LIST* %996, i32 0, i32 1
  store %union.rec* %992, %union.rec** %997, align 8
  br label %998

; <label>:998                                     ; preds = %957, %955
  %999 = phi %union.rec* [ %956, %955 ], [ %992, %957 ]
  br label %1000

; <label>:1000                                    ; preds = %998, %950
  %1001 = phi %union.rec* [ %951, %950 ], [ %999, %998 ]
  %1002 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1002, %union.rec** @zz_res, align 8
  %1003 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1003, %union.rec** @zz_hold, align 8
  %1004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1005 = icmp eq %union.rec* %1004, null
  br i1 %1005, label %1006, label %1008

; <label>:1006                                    ; preds = %1000
  %1007 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1056

; <label>:1008                                    ; preds = %1000
  %1009 = load %union.rec*, %union.rec** @zz_res, align 8
  %1010 = icmp eq %union.rec* %1009, null
  br i1 %1010, label %1011, label %1013

; <label>:1011                                    ; preds = %1008
  %1012 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1054

; <label>:1013                                    ; preds = %1008
  %1014 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1015 = bitcast %union.rec* %1014 to %struct.word_type*
  %1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1016, i32 0, i64 1
  %1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %1017, i32 0, i32 0
  %1019 = load %union.rec*, %union.rec** %1018, align 8
  store %union.rec* %1019, %union.rec** @zz_tmp, align 8
  %1020 = load %union.rec*, %union.rec** @zz_res, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 0
  %1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1022, i32 0, i64 1
  %1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %1023, i32 0, i32 0
  %1025 = load %union.rec*, %union.rec** %1024, align 8
  %1026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 1
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 0
  store %union.rec* %1025, %union.rec** %1030, align 8
  %1031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1032 = load %union.rec*, %union.rec** @zz_res, align 8
  %1033 = bitcast %union.rec* %1032 to %struct.word_type*
  %1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %1033, i32 0, i32 0
  %1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1034, i32 0, i64 1
  %1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %1035, i32 0, i32 0
  %1037 = load %union.rec*, %union.rec** %1036, align 8
  %1038 = bitcast %union.rec* %1037 to %struct.word_type*
  %1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %1038, i32 0, i32 0
  %1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1039, i32 0, i64 1
  %1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %1040, i32 0, i32 1
  store %union.rec* %1031, %union.rec** %1041, align 8
  %1042 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1043 = load %union.rec*, %union.rec** @zz_res, align 8
  %1044 = bitcast %union.rec* %1043 to %struct.word_type*
  %1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %1044, i32 0, i32 0
  %1046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1045, i32 0, i64 1
  %1047 = getelementptr inbounds %struct.LIST, %struct.LIST* %1046, i32 0, i32 0
  store %union.rec* %1042, %union.rec** %1047, align 8
  %1048 = load %union.rec*, %union.rec** @zz_res, align 8
  %1049 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1050 = bitcast %union.rec* %1049 to %struct.word_type*
  %1051 = getelementptr inbounds %struct.word_type, %struct.word_type* %1050, i32 0, i32 0
  %1052 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1051, i32 0, i64 1
  %1053 = getelementptr inbounds %struct.LIST, %struct.LIST* %1052, i32 0, i32 1
  store %union.rec* %1048, %union.rec** %1053, align 8
  br label %1054

; <label>:1054                                    ; preds = %1013, %1011
  %1055 = phi %union.rec* [ %1012, %1011 ], [ %1048, %1013 ]
  br label %1056

; <label>:1056                                    ; preds = %1054, %1006
  %1057 = phi %union.rec* [ %1007, %1006 ], [ %1055, %1054 ]
  %1058 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %1059 = zext i8 %1058 to i32
  store i32 %1059, i32* @zz_size, align 4
  %1060 = sext i32 %1059 to i64
  %1061 = icmp uge i64 %1060, 265
  br i1 %1061, label %1062, label %1065

; <label>:1062                                    ; preds = %1056
  %1063 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1064 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1063)
  br label %1090

; <label>:1065                                    ; preds = %1056
  %1066 = load i32, i32* @zz_size, align 4
  %1067 = sext i32 %1066 to i64
  %1068 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1067
  %1069 = load %union.rec*, %union.rec** %1068, align 8
  %1070 = icmp eq %union.rec* %1069, null
  br i1 %1070, label %1071, label %1075

; <label>:1071                                    ; preds = %1065
  %1072 = load i32, i32* @zz_size, align 4
  %1073 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1074 = call %union.rec* @GetMemory(i32 %1072, %struct.FILE_POS* %1073)
  store %union.rec* %1074, %union.rec** @zz_hold, align 8
  br label %1089

; <label>:1075                                    ; preds = %1065
  %1076 = load i32, i32* @zz_size, align 4
  %1077 = sext i32 %1076 to i64
  %1078 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1077
  %1079 = load %union.rec*, %union.rec** %1078, align 8
  store %union.rec* %1079, %union.rec** @zz_hold, align 8
  store %union.rec* %1079, %union.rec** @zz_hold, align 8
  %1080 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1081 = bitcast %union.rec* %1080 to %struct.word_type*
  %1082 = getelementptr inbounds %struct.word_type, %struct.word_type* %1081, i32 0, i32 0
  %1083 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1082, i32 0, i64 0
  %1084 = getelementptr inbounds %struct.LIST, %struct.LIST* %1083, i32 0, i32 0
  %1085 = load %union.rec*, %union.rec** %1084, align 8
  %1086 = load i32, i32* @zz_size, align 4
  %1087 = sext i32 %1086 to i64
  %1088 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1087
  store %union.rec* %1085, %union.rec** %1088, align 8
  br label %1089

; <label>:1089                                    ; preds = %1075, %1071
  br label %1090

; <label>:1090                                    ; preds = %1089, %1062
  %1091 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1092 = bitcast %union.rec* %1091 to %struct.word_type*
  %1093 = getelementptr inbounds %struct.word_type, %struct.word_type* %1092, i32 0, i32 1
  %1094 = bitcast %union.FIRST_UNION* %1093 to %struct.anon*
  %1095 = getelementptr inbounds %struct.anon, %struct.anon* %1094, i32 0, i32 0
  store i8 1, i8* %1095, align 1
  %1096 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1098 = bitcast %union.rec* %1097 to %struct.word_type*
  %1099 = getelementptr inbounds %struct.word_type, %struct.word_type* %1098, i32 0, i32 0
  %1100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1099, i32 0, i64 1
  %1101 = getelementptr inbounds %struct.LIST, %struct.LIST* %1100, i32 0, i32 1
  store %union.rec* %1096, %union.rec** %1101, align 8
  %1102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1103 = bitcast %union.rec* %1102 to %struct.word_type*
  %1104 = getelementptr inbounds %struct.word_type, %struct.word_type* %1103, i32 0, i32 0
  %1105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1104, i32 0, i64 1
  %1106 = getelementptr inbounds %struct.LIST, %struct.LIST* %1105, i32 0, i32 0
  store %union.rec* %1096, %union.rec** %1106, align 8
  %1107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1108 = bitcast %union.rec* %1107 to %struct.word_type*
  %1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %1108, i32 0, i32 0
  %1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1109, i32 0, i64 0
  %1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %1110, i32 0, i32 1
  store %union.rec* %1096, %union.rec** %1111, align 8
  %1112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1113 = bitcast %union.rec* %1112 to %struct.word_type*
  %1114 = getelementptr inbounds %struct.word_type, %struct.word_type* %1113, i32 0, i32 0
  %1115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1114, i32 0, i64 0
  %1116 = getelementptr inbounds %struct.LIST, %struct.LIST* %1115, i32 0, i32 0
  store %union.rec* %1096, %union.rec** %1116, align 8
  store %union.rec* %1096, %union.rec** %g, align 8
  %1117 = load %union.rec*, %union.rec** %g, align 8
  %1118 = bitcast %union.rec* %1117 to %struct.word_type*
  %1119 = getelementptr inbounds %struct.word_type, %struct.word_type* %1118, i32 0, i32 2
  %1120 = bitcast %union.SECOND_UNION* %1119 to %struct.anon.0*
  %1121 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1120, i32 0, i32 1
  store i8 1, i8* %1121, align 1
  %1122 = load %union.rec*, %union.rec** %g, align 8
  %1123 = bitcast %union.rec* %1122 to %struct.word_type*
  %1124 = getelementptr inbounds %struct.word_type, %struct.word_type* %1123, i32 0, i32 2
  %1125 = bitcast %union.SECOND_UNION* %1124 to %struct.anon.0*
  %1126 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1125, i32 0, i32 2
  store i8 0, i8* %1126, align 1
  %1127 = load %union.rec*, %union.rec** %tmp, align 8
  %1128 = bitcast %union.rec* %1127 to %struct.word_type*
  %1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %1128, i32 0, i32 1
  %1130 = bitcast %union.FIRST_UNION* %1129 to %struct.FILE_POS*
  %1131 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1130, i32 0, i32 2
  %1132 = load i16, i16* %1131, align 2
  %1133 = load %union.rec*, %union.rec** %g, align 8
  %1134 = bitcast %union.rec* %1133 to %struct.word_type*
  %1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %1134, i32 0, i32 1
  %1136 = bitcast %union.FIRST_UNION* %1135 to %struct.FILE_POS*
  %1137 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1136, i32 0, i32 2
  store i16 %1132, i16* %1137, align 2
  %1138 = load %union.rec*, %union.rec** %tmp, align 8
  %1139 = bitcast %union.rec* %1138 to %struct.word_type*
  %1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %1139, i32 0, i32 1
  %1141 = bitcast %union.FIRST_UNION* %1140 to %struct.FILE_POS*
  %1142 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1141, i32 0, i32 3
  %1143 = load i32, i32* %1142, align 4
  %1144 = and i32 %1143, 1048575
  %1145 = load %union.rec*, %union.rec** %g, align 8
  %1146 = bitcast %union.rec* %1145 to %struct.word_type*
  %1147 = getelementptr inbounds %struct.word_type, %struct.word_type* %1146, i32 0, i32 1
  %1148 = bitcast %union.FIRST_UNION* %1147 to %struct.FILE_POS*
  %1149 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1148, i32 0, i32 3
  %1150 = load i32, i32* %1149, align 4
  %1151 = and i32 %1144, 1048575
  %1152 = and i32 %1150, -1048576
  %1153 = or i32 %1152, %1151
  store i32 %1153, i32* %1149, align 4
  %1154 = load %union.rec*, %union.rec** %tmp, align 8
  %1155 = bitcast %union.rec* %1154 to %struct.word_type*
  %1156 = getelementptr inbounds %struct.word_type, %struct.word_type* %1155, i32 0, i32 1
  %1157 = bitcast %union.FIRST_UNION* %1156 to %struct.FILE_POS*
  %1158 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1157, i32 0, i32 3
  %1159 = load i32, i32* %1158, align 4
  %1160 = lshr i32 %1159, 20
  %1161 = load %union.rec*, %union.rec** %g, align 8
  %1162 = bitcast %union.rec* %1161 to %struct.word_type*
  %1163 = getelementptr inbounds %struct.word_type, %struct.word_type* %1162, i32 0, i32 1
  %1164 = bitcast %union.FIRST_UNION* %1163 to %struct.FILE_POS*
  %1165 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1164, i32 0, i32 3
  %1166 = load i32, i32* %1165, align 4
  %1167 = and i32 %1160, 4095
  %1168 = shl i32 %1167, 20
  %1169 = and i32 %1166, 1048575
  %1170 = or i32 %1169, %1168
  store i32 %1170, i32* %1165, align 4
  %1171 = load %union.rec*, %union.rec** %g, align 8
  %1172 = bitcast %union.rec* %1171 to %struct.gapobj_type*
  %1173 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1172, i32 0, i32 3
  %1174 = bitcast %struct.GAP* %1173 to i16*
  %1175 = load i16, i16* %1174, align 4
  %1176 = and i16 %1175, -129
  store i16 %1176, i16* %1174, align 4
  %1177 = load %union.rec*, %union.rec** %g, align 8
  %1178 = bitcast %union.rec* %1177 to %struct.gapobj_type*
  %1179 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1178, i32 0, i32 3
  %1180 = bitcast %struct.GAP* %1179 to i16*
  %1181 = load i16, i16* %1180, align 4
  %1182 = and i16 %1181, -257
  store i16 %1182, i16* %1180, align 4
  %1183 = load %union.rec*, %union.rec** %g, align 8
  %1184 = bitcast %union.rec* %1183 to %struct.gapobj_type*
  %1185 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1184, i32 0, i32 3
  %1186 = bitcast %struct.GAP* %1185 to i16*
  %1187 = load i16, i16* %1186, align 4
  %1188 = and i16 %1187, -513
  %1189 = or i16 %1188, 512
  store i16 %1189, i16* %1186, align 4
  %1190 = load %union.rec*, %union.rec** %g, align 8
  %1191 = bitcast %union.rec* %1190 to %struct.gapobj_type*
  %1192 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1191, i32 0, i32 3
  %1193 = bitcast %struct.GAP* %1192 to i16*
  %1194 = load i16, i16* %1193, align 4
  %1195 = and i16 %1194, -7169
  %1196 = or i16 %1195, 1024
  store i16 %1196, i16* %1193, align 4
  %1197 = load %union.rec*, %union.rec** %g, align 8
  %1198 = bitcast %union.rec* %1197 to %struct.gapobj_type*
  %1199 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1198, i32 0, i32 3
  %1200 = bitcast %struct.GAP* %1199 to i16*
  %1201 = load i16, i16* %1200, align 4
  %1202 = and i16 %1201, 8191
  %1203 = or i16 %1202, 8192
  store i16 %1203, i16* %1200, align 4
  %1204 = load %union.rec*, %union.rec** %g, align 8
  %1205 = bitcast %union.rec* %1204 to %struct.gapobj_type*
  %1206 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1205, i32 0, i32 3
  %1207 = getelementptr inbounds %struct.GAP, %struct.GAP* %1206, i32 0, i32 1
  store i16 567, i16* %1207, align 2
  %1208 = load %union.rec*, %union.rec** %g, align 8
  %1209 = bitcast %union.rec* %1208 to %struct.word_type*
  %1210 = getelementptr inbounds %struct.word_type, %struct.word_type* %1209, i32 0, i32 1
  %1211 = bitcast %union.FIRST_UNION* %1210 to %struct.FILE_POS*
  %1212 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.28, i32 0, i32 0), %struct.FILE_POS* %1211)
  store %union.rec* %1212, %union.rec** %tmp, align 8
  %1213 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1214 = zext i8 %1213 to i32
  store i32 %1214, i32* @zz_size, align 4
  %1215 = sext i32 %1214 to i64
  %1216 = icmp uge i64 %1215, 265
  br i1 %1216, label %1217, label %1220

; <label>:1217                                    ; preds = %1090
  %1218 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1219 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1218)
  br label %1245

; <label>:1220                                    ; preds = %1090
  %1221 = load i32, i32* @zz_size, align 4
  %1222 = sext i32 %1221 to i64
  %1223 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1222
  %1224 = load %union.rec*, %union.rec** %1223, align 8
  %1225 = icmp eq %union.rec* %1224, null
  br i1 %1225, label %1226, label %1230

; <label>:1226                                    ; preds = %1220
  %1227 = load i32, i32* @zz_size, align 4
  %1228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1229 = call %union.rec* @GetMemory(i32 %1227, %struct.FILE_POS* %1228)
  store %union.rec* %1229, %union.rec** @zz_hold, align 8
  br label %1244

; <label>:1230                                    ; preds = %1220
  %1231 = load i32, i32* @zz_size, align 4
  %1232 = sext i32 %1231 to i64
  %1233 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1232
  %1234 = load %union.rec*, %union.rec** %1233, align 8
  store %union.rec* %1234, %union.rec** @zz_hold, align 8
  store %union.rec* %1234, %union.rec** @zz_hold, align 8
  %1235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1236 = bitcast %union.rec* %1235 to %struct.word_type*
  %1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %1236, i32 0, i32 0
  %1238 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1237, i32 0, i64 0
  %1239 = getelementptr inbounds %struct.LIST, %struct.LIST* %1238, i32 0, i32 0
  %1240 = load %union.rec*, %union.rec** %1239, align 8
  %1241 = load i32, i32* @zz_size, align 4
  %1242 = sext i32 %1241 to i64
  %1243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1242
  store %union.rec* %1240, %union.rec** %1243, align 8
  br label %1244

; <label>:1244                                    ; preds = %1230, %1226
  br label %1245

; <label>:1245                                    ; preds = %1244, %1217
  %1246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1247 = bitcast %union.rec* %1246 to %struct.word_type*
  %1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %1247, i32 0, i32 1
  %1249 = bitcast %union.FIRST_UNION* %1248 to %struct.anon*
  %1250 = getelementptr inbounds %struct.anon, %struct.anon* %1249, i32 0, i32 0
  store i8 0, i8* %1250, align 1
  %1251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1252 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1253 = bitcast %union.rec* %1252 to %struct.word_type*
  %1254 = getelementptr inbounds %struct.word_type, %struct.word_type* %1253, i32 0, i32 0
  %1255 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1254, i32 0, i64 1
  %1256 = getelementptr inbounds %struct.LIST, %struct.LIST* %1255, i32 0, i32 1
  store %union.rec* %1251, %union.rec** %1256, align 8
  %1257 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1258 = bitcast %union.rec* %1257 to %struct.word_type*
  %1259 = getelementptr inbounds %struct.word_type, %struct.word_type* %1258, i32 0, i32 0
  %1260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1259, i32 0, i64 1
  %1261 = getelementptr inbounds %struct.LIST, %struct.LIST* %1260, i32 0, i32 0
  store %union.rec* %1251, %union.rec** %1261, align 8
  %1262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1263 = bitcast %union.rec* %1262 to %struct.word_type*
  %1264 = getelementptr inbounds %struct.word_type, %struct.word_type* %1263, i32 0, i32 0
  %1265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1264, i32 0, i64 0
  %1266 = getelementptr inbounds %struct.LIST, %struct.LIST* %1265, i32 0, i32 1
  store %union.rec* %1251, %union.rec** %1266, align 8
  %1267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1268 = bitcast %union.rec* %1267 to %struct.word_type*
  %1269 = getelementptr inbounds %struct.word_type, %struct.word_type* %1268, i32 0, i32 0
  %1270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1269, i32 0, i64 0
  %1271 = getelementptr inbounds %struct.LIST, %struct.LIST* %1270, i32 0, i32 0
  store %union.rec* %1251, %union.rec** %1271, align 8
  store %union.rec* %1251, %union.rec** @xx_link, align 8
  %1272 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1272, %union.rec** @zz_res, align 8
  %1273 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %1273, %union.rec** @zz_hold, align 8
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1275 = icmp eq %union.rec* %1274, null
  br i1 %1275, label %1276, label %1278

; <label>:1276                                    ; preds = %1245
  %1277 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1326

; <label>:1278                                    ; preds = %1245
  %1279 = load %union.rec*, %union.rec** @zz_res, align 8
  %1280 = icmp eq %union.rec* %1279, null
  br i1 %1280, label %1281, label %1283

; <label>:1281                                    ; preds = %1278
  %1282 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1324

; <label>:1283                                    ; preds = %1278
  %1284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1285 = bitcast %union.rec* %1284 to %struct.word_type*
  %1286 = getelementptr inbounds %struct.word_type, %struct.word_type* %1285, i32 0, i32 0
  %1287 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1286, i32 0, i64 0
  %1288 = getelementptr inbounds %struct.LIST, %struct.LIST* %1287, i32 0, i32 0
  %1289 = load %union.rec*, %union.rec** %1288, align 8
  store %union.rec* %1289, %union.rec** @zz_tmp, align 8
  %1290 = load %union.rec*, %union.rec** @zz_res, align 8
  %1291 = bitcast %union.rec* %1290 to %struct.word_type*
  %1292 = getelementptr inbounds %struct.word_type, %struct.word_type* %1291, i32 0, i32 0
  %1293 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1292, i32 0, i64 0
  %1294 = getelementptr inbounds %struct.LIST, %struct.LIST* %1293, i32 0, i32 0
  %1295 = load %union.rec*, %union.rec** %1294, align 8
  %1296 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1297 = bitcast %union.rec* %1296 to %struct.word_type*
  %1298 = getelementptr inbounds %struct.word_type, %struct.word_type* %1297, i32 0, i32 0
  %1299 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1298, i32 0, i64 0
  %1300 = getelementptr inbounds %struct.LIST, %struct.LIST* %1299, i32 0, i32 0
  store %union.rec* %1295, %union.rec** %1300, align 8
  %1301 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1302 = load %union.rec*, %union.rec** @zz_res, align 8
  %1303 = bitcast %union.rec* %1302 to %struct.word_type*
  %1304 = getelementptr inbounds %struct.word_type, %struct.word_type* %1303, i32 0, i32 0
  %1305 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1304, i32 0, i64 0
  %1306 = getelementptr inbounds %struct.LIST, %struct.LIST* %1305, i32 0, i32 0
  %1307 = load %union.rec*, %union.rec** %1306, align 8
  %1308 = bitcast %union.rec* %1307 to %struct.word_type*
  %1309 = getelementptr inbounds %struct.word_type, %struct.word_type* %1308, i32 0, i32 0
  %1310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1309, i32 0, i64 0
  %1311 = getelementptr inbounds %struct.LIST, %struct.LIST* %1310, i32 0, i32 1
  store %union.rec* %1301, %union.rec** %1311, align 8
  %1312 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1313 = load %union.rec*, %union.rec** @zz_res, align 8
  %1314 = bitcast %union.rec* %1313 to %struct.word_type*
  %1315 = getelementptr inbounds %struct.word_type, %struct.word_type* %1314, i32 0, i32 0
  %1316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1315, i32 0, i64 0
  %1317 = getelementptr inbounds %struct.LIST, %struct.LIST* %1316, i32 0, i32 0
  store %union.rec* %1312, %union.rec** %1317, align 8
  %1318 = load %union.rec*, %union.rec** @zz_res, align 8
  %1319 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1320 = bitcast %union.rec* %1319 to %struct.word_type*
  %1321 = getelementptr inbounds %struct.word_type, %struct.word_type* %1320, i32 0, i32 0
  %1322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1321, i32 0, i64 0
  %1323 = getelementptr inbounds %struct.LIST, %struct.LIST* %1322, i32 0, i32 1
  store %union.rec* %1318, %union.rec** %1323, align 8
  br label %1324

; <label>:1324                                    ; preds = %1283, %1281
  %1325 = phi %union.rec* [ %1282, %1281 ], [ %1318, %1283 ]
  br label %1326

; <label>:1326                                    ; preds = %1324, %1276
  %1327 = phi %union.rec* [ %1277, %1276 ], [ %1325, %1324 ]
  %1328 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1328, %union.rec** @zz_res, align 8
  %1329 = load %union.rec*, %union.rec** %tmp, align 8
  store %union.rec* %1329, %union.rec** @zz_hold, align 8
  %1330 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1331 = icmp eq %union.rec* %1330, null
  br i1 %1331, label %1332, label %1334

; <label>:1332                                    ; preds = %1326
  %1333 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1382

; <label>:1334                                    ; preds = %1326
  %1335 = load %union.rec*, %union.rec** @zz_res, align 8
  %1336 = icmp eq %union.rec* %1335, null
  br i1 %1336, label %1337, label %1339

; <label>:1337                                    ; preds = %1334
  %1338 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1380

; <label>:1339                                    ; preds = %1334
  %1340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1341 = bitcast %union.rec* %1340 to %struct.word_type*
  %1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %1341, i32 0, i32 0
  %1343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1342, i32 0, i64 1
  %1344 = getelementptr inbounds %struct.LIST, %struct.LIST* %1343, i32 0, i32 0
  %1345 = load %union.rec*, %union.rec** %1344, align 8
  store %union.rec* %1345, %union.rec** @zz_tmp, align 8
  %1346 = load %union.rec*, %union.rec** @zz_res, align 8
  %1347 = bitcast %union.rec* %1346 to %struct.word_type*
  %1348 = getelementptr inbounds %struct.word_type, %struct.word_type* %1347, i32 0, i32 0
  %1349 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1348, i32 0, i64 1
  %1350 = getelementptr inbounds %struct.LIST, %struct.LIST* %1349, i32 0, i32 0
  %1351 = load %union.rec*, %union.rec** %1350, align 8
  %1352 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1353 = bitcast %union.rec* %1352 to %struct.word_type*
  %1354 = getelementptr inbounds %struct.word_type, %struct.word_type* %1353, i32 0, i32 0
  %1355 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1354, i32 0, i64 1
  %1356 = getelementptr inbounds %struct.LIST, %struct.LIST* %1355, i32 0, i32 0
  store %union.rec* %1351, %union.rec** %1356, align 8
  %1357 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1358 = load %union.rec*, %union.rec** @zz_res, align 8
  %1359 = bitcast %union.rec* %1358 to %struct.word_type*
  %1360 = getelementptr inbounds %struct.word_type, %struct.word_type* %1359, i32 0, i32 0
  %1361 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1360, i32 0, i64 1
  %1362 = getelementptr inbounds %struct.LIST, %struct.LIST* %1361, i32 0, i32 0
  %1363 = load %union.rec*, %union.rec** %1362, align 8
  %1364 = bitcast %union.rec* %1363 to %struct.word_type*
  %1365 = getelementptr inbounds %struct.word_type, %struct.word_type* %1364, i32 0, i32 0
  %1366 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1365, i32 0, i64 1
  %1367 = getelementptr inbounds %struct.LIST, %struct.LIST* %1366, i32 0, i32 1
  store %union.rec* %1357, %union.rec** %1367, align 8
  %1368 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1369 = load %union.rec*, %union.rec** @zz_res, align 8
  %1370 = bitcast %union.rec* %1369 to %struct.word_type*
  %1371 = getelementptr inbounds %struct.word_type, %struct.word_type* %1370, i32 0, i32 0
  %1372 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1371, i32 0, i64 1
  %1373 = getelementptr inbounds %struct.LIST, %struct.LIST* %1372, i32 0, i32 0
  store %union.rec* %1368, %union.rec** %1373, align 8
  %1374 = load %union.rec*, %union.rec** @zz_res, align 8
  %1375 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1376 = bitcast %union.rec* %1375 to %struct.word_type*
  %1377 = getelementptr inbounds %struct.word_type, %struct.word_type* %1376, i32 0, i32 0
  %1378 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1377, i32 0, i64 1
  %1379 = getelementptr inbounds %struct.LIST, %struct.LIST* %1378, i32 0, i32 1
  store %union.rec* %1374, %union.rec** %1379, align 8
  br label %1380

; <label>:1380                                    ; preds = %1339, %1337
  %1381 = phi %union.rec* [ %1338, %1337 ], [ %1374, %1339 ]
  br label %1382

; <label>:1382                                    ; preds = %1380, %1332
  %1383 = phi %union.rec* [ %1333, %1332 ], [ %1381, %1380 ]
  %1384 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1385 = zext i8 %1384 to i32
  store i32 %1385, i32* @zz_size, align 4
  %1386 = sext i32 %1385 to i64
  %1387 = icmp uge i64 %1386, 265
  br i1 %1387, label %1388, label %1391

; <label>:1388                                    ; preds = %1382
  %1389 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1390 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1389)
  br label %1416

; <label>:1391                                    ; preds = %1382
  %1392 = load i32, i32* @zz_size, align 4
  %1393 = sext i32 %1392 to i64
  %1394 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1393
  %1395 = load %union.rec*, %union.rec** %1394, align 8
  %1396 = icmp eq %union.rec* %1395, null
  br i1 %1396, label %1397, label %1401

; <label>:1397                                    ; preds = %1391
  %1398 = load i32, i32* @zz_size, align 4
  %1399 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1400 = call %union.rec* @GetMemory(i32 %1398, %struct.FILE_POS* %1399)
  store %union.rec* %1400, %union.rec** @zz_hold, align 8
  br label %1415

; <label>:1401                                    ; preds = %1391
  %1402 = load i32, i32* @zz_size, align 4
  %1403 = sext i32 %1402 to i64
  %1404 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1403
  %1405 = load %union.rec*, %union.rec** %1404, align 8
  store %union.rec* %1405, %union.rec** @zz_hold, align 8
  store %union.rec* %1405, %union.rec** @zz_hold, align 8
  %1406 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1407 = bitcast %union.rec* %1406 to %struct.word_type*
  %1408 = getelementptr inbounds %struct.word_type, %struct.word_type* %1407, i32 0, i32 0
  %1409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1408, i32 0, i64 0
  %1410 = getelementptr inbounds %struct.LIST, %struct.LIST* %1409, i32 0, i32 0
  %1411 = load %union.rec*, %union.rec** %1410, align 8
  %1412 = load i32, i32* @zz_size, align 4
  %1413 = sext i32 %1412 to i64
  %1414 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1413
  store %union.rec* %1411, %union.rec** %1414, align 8
  br label %1415

; <label>:1415                                    ; preds = %1401, %1397
  br label %1416

; <label>:1416                                    ; preds = %1415, %1388
  %1417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1418 = bitcast %union.rec* %1417 to %struct.word_type*
  %1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %1418, i32 0, i32 1
  %1420 = bitcast %union.FIRST_UNION* %1419 to %struct.anon*
  %1421 = getelementptr inbounds %struct.anon, %struct.anon* %1420, i32 0, i32 0
  store i8 0, i8* %1421, align 1
  %1422 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1424 = bitcast %union.rec* %1423 to %struct.word_type*
  %1425 = getelementptr inbounds %struct.word_type, %struct.word_type* %1424, i32 0, i32 0
  %1426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1425, i32 0, i64 1
  %1427 = getelementptr inbounds %struct.LIST, %struct.LIST* %1426, i32 0, i32 1
  store %union.rec* %1422, %union.rec** %1427, align 8
  %1428 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1429 = bitcast %union.rec* %1428 to %struct.word_type*
  %1430 = getelementptr inbounds %struct.word_type, %struct.word_type* %1429, i32 0, i32 0
  %1431 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1430, i32 0, i64 1
  %1432 = getelementptr inbounds %struct.LIST, %struct.LIST* %1431, i32 0, i32 0
  store %union.rec* %1422, %union.rec** %1432, align 8
  %1433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1434 = bitcast %union.rec* %1433 to %struct.word_type*
  %1435 = getelementptr inbounds %struct.word_type, %struct.word_type* %1434, i32 0, i32 0
  %1436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1435, i32 0, i64 0
  %1437 = getelementptr inbounds %struct.LIST, %struct.LIST* %1436, i32 0, i32 1
  store %union.rec* %1422, %union.rec** %1437, align 8
  %1438 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1439 = bitcast %union.rec* %1438 to %struct.word_type*
  %1440 = getelementptr inbounds %struct.word_type, %struct.word_type* %1439, i32 0, i32 0
  %1441 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1440, i32 0, i64 0
  %1442 = getelementptr inbounds %struct.LIST, %struct.LIST* %1441, i32 0, i32 0
  store %union.rec* %1422, %union.rec** %1442, align 8
  store %union.rec* %1422, %union.rec** @xx_link, align 8
  %1443 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1443, %union.rec** @zz_res, align 8
  %1444 = load %union.rec*, %union.rec** %1, align 8
  %1445 = bitcast %union.rec* %1444 to %struct.head_type*
  %1446 = getelementptr inbounds %struct.head_type, %struct.head_type* %1445, i32 0, i32 8
  %1447 = load %union.rec*, %union.rec** %1446, align 8
  store %union.rec* %1447, %union.rec** @zz_hold, align 8
  %1448 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1449 = icmp eq %union.rec* %1448, null
  br i1 %1449, label %1450, label %1452

; <label>:1450                                    ; preds = %1416
  %1451 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1500

; <label>:1452                                    ; preds = %1416
  %1453 = load %union.rec*, %union.rec** @zz_res, align 8
  %1454 = icmp eq %union.rec* %1453, null
  br i1 %1454, label %1455, label %1457

; <label>:1455                                    ; preds = %1452
  %1456 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1498

; <label>:1457                                    ; preds = %1452
  %1458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1459 = bitcast %union.rec* %1458 to %struct.word_type*
  %1460 = getelementptr inbounds %struct.word_type, %struct.word_type* %1459, i32 0, i32 0
  %1461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1460, i32 0, i64 0
  %1462 = getelementptr inbounds %struct.LIST, %struct.LIST* %1461, i32 0, i32 0
  %1463 = load %union.rec*, %union.rec** %1462, align 8
  store %union.rec* %1463, %union.rec** @zz_tmp, align 8
  %1464 = load %union.rec*, %union.rec** @zz_res, align 8
  %1465 = bitcast %union.rec* %1464 to %struct.word_type*
  %1466 = getelementptr inbounds %struct.word_type, %struct.word_type* %1465, i32 0, i32 0
  %1467 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1466, i32 0, i64 0
  %1468 = getelementptr inbounds %struct.LIST, %struct.LIST* %1467, i32 0, i32 0
  %1469 = load %union.rec*, %union.rec** %1468, align 8
  %1470 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1471 = bitcast %union.rec* %1470 to %struct.word_type*
  %1472 = getelementptr inbounds %struct.word_type, %struct.word_type* %1471, i32 0, i32 0
  %1473 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1472, i32 0, i64 0
  %1474 = getelementptr inbounds %struct.LIST, %struct.LIST* %1473, i32 0, i32 0
  store %union.rec* %1469, %union.rec** %1474, align 8
  %1475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1476 = load %union.rec*, %union.rec** @zz_res, align 8
  %1477 = bitcast %union.rec* %1476 to %struct.word_type*
  %1478 = getelementptr inbounds %struct.word_type, %struct.word_type* %1477, i32 0, i32 0
  %1479 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1478, i32 0, i64 0
  %1480 = getelementptr inbounds %struct.LIST, %struct.LIST* %1479, i32 0, i32 0
  %1481 = load %union.rec*, %union.rec** %1480, align 8
  %1482 = bitcast %union.rec* %1481 to %struct.word_type*
  %1483 = getelementptr inbounds %struct.word_type, %struct.word_type* %1482, i32 0, i32 0
  %1484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1483, i32 0, i64 0
  %1485 = getelementptr inbounds %struct.LIST, %struct.LIST* %1484, i32 0, i32 1
  store %union.rec* %1475, %union.rec** %1485, align 8
  %1486 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1487 = load %union.rec*, %union.rec** @zz_res, align 8
  %1488 = bitcast %union.rec* %1487 to %struct.word_type*
  %1489 = getelementptr inbounds %struct.word_type, %struct.word_type* %1488, i32 0, i32 0
  %1490 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1489, i32 0, i64 0
  %1491 = getelementptr inbounds %struct.LIST, %struct.LIST* %1490, i32 0, i32 0
  store %union.rec* %1486, %union.rec** %1491, align 8
  %1492 = load %union.rec*, %union.rec** @zz_res, align 8
  %1493 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1494 = bitcast %union.rec* %1493 to %struct.word_type*
  %1495 = getelementptr inbounds %struct.word_type, %struct.word_type* %1494, i32 0, i32 0
  %1496 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1495, i32 0, i64 0
  %1497 = getelementptr inbounds %struct.LIST, %struct.LIST* %1496, i32 0, i32 1
  store %union.rec* %1492, %union.rec** %1497, align 8
  br label %1498

; <label>:1498                                    ; preds = %1457, %1455
  %1499 = phi %union.rec* [ %1456, %1455 ], [ %1492, %1457 ]
  br label %1500

; <label>:1500                                    ; preds = %1498, %1450
  %1501 = phi %union.rec* [ %1451, %1450 ], [ %1499, %1498 ]
  %1502 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1502, %union.rec** @zz_res, align 8
  %1503 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %1503, %union.rec** @zz_hold, align 8
  %1504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1505 = icmp eq %union.rec* %1504, null
  br i1 %1505, label %1506, label %1508

; <label>:1506                                    ; preds = %1500
  %1507 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1556

; <label>:1508                                    ; preds = %1500
  %1509 = load %union.rec*, %union.rec** @zz_res, align 8
  %1510 = icmp eq %union.rec* %1509, null
  br i1 %1510, label %1511, label %1513

; <label>:1511                                    ; preds = %1508
  %1512 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1554

; <label>:1513                                    ; preds = %1508
  %1514 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1515 = bitcast %union.rec* %1514 to %struct.word_type*
  %1516 = getelementptr inbounds %struct.word_type, %struct.word_type* %1515, i32 0, i32 0
  %1517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1516, i32 0, i64 1
  %1518 = getelementptr inbounds %struct.LIST, %struct.LIST* %1517, i32 0, i32 0
  %1519 = load %union.rec*, %union.rec** %1518, align 8
  store %union.rec* %1519, %union.rec** @zz_tmp, align 8
  %1520 = load %union.rec*, %union.rec** @zz_res, align 8
  %1521 = bitcast %union.rec* %1520 to %struct.word_type*
  %1522 = getelementptr inbounds %struct.word_type, %struct.word_type* %1521, i32 0, i32 0
  %1523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1522, i32 0, i64 1
  %1524 = getelementptr inbounds %struct.LIST, %struct.LIST* %1523, i32 0, i32 0
  %1525 = load %union.rec*, %union.rec** %1524, align 8
  %1526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1527 = bitcast %union.rec* %1526 to %struct.word_type*
  %1528 = getelementptr inbounds %struct.word_type, %struct.word_type* %1527, i32 0, i32 0
  %1529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1528, i32 0, i64 1
  %1530 = getelementptr inbounds %struct.LIST, %struct.LIST* %1529, i32 0, i32 0
  store %union.rec* %1525, %union.rec** %1530, align 8
  %1531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1532 = load %union.rec*, %union.rec** @zz_res, align 8
  %1533 = bitcast %union.rec* %1532 to %struct.word_type*
  %1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %1533, i32 0, i32 0
  %1535 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1534, i32 0, i64 1
  %1536 = getelementptr inbounds %struct.LIST, %struct.LIST* %1535, i32 0, i32 0
  %1537 = load %union.rec*, %union.rec** %1536, align 8
  %1538 = bitcast %union.rec* %1537 to %struct.word_type*
  %1539 = getelementptr inbounds %struct.word_type, %struct.word_type* %1538, i32 0, i32 0
  %1540 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1539, i32 0, i64 1
  %1541 = getelementptr inbounds %struct.LIST, %struct.LIST* %1540, i32 0, i32 1
  store %union.rec* %1531, %union.rec** %1541, align 8
  %1542 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1543 = load %union.rec*, %union.rec** @zz_res, align 8
  %1544 = bitcast %union.rec* %1543 to %struct.word_type*
  %1545 = getelementptr inbounds %struct.word_type, %struct.word_type* %1544, i32 0, i32 0
  %1546 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1545, i32 0, i64 1
  %1547 = getelementptr inbounds %struct.LIST, %struct.LIST* %1546, i32 0, i32 0
  store %union.rec* %1542, %union.rec** %1547, align 8
  %1548 = load %union.rec*, %union.rec** @zz_res, align 8
  %1549 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1550 = bitcast %union.rec* %1549 to %struct.word_type*
  %1551 = getelementptr inbounds %struct.word_type, %struct.word_type* %1550, i32 0, i32 0
  %1552 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1551, i32 0, i64 1
  %1553 = getelementptr inbounds %struct.LIST, %struct.LIST* %1552, i32 0, i32 1
  store %union.rec* %1548, %union.rec** %1553, align 8
  br label %1554

; <label>:1554                                    ; preds = %1513, %1511
  %1555 = phi %union.rec* [ %1512, %1511 ], [ %1548, %1513 ]
  br label %1556

; <label>:1556                                    ; preds = %1554, %1506
  %1557 = phi %union.rec* [ %1507, %1506 ], [ %1555, %1554 ]
  %1558 = load %union.rec*, %union.rec** %1, align 8
  %1559 = bitcast %union.rec* %1558 to %struct.word_type*
  %1560 = getelementptr inbounds %struct.word_type, %struct.word_type* %1559, i32 0, i32 2
  %1561 = bitcast %union.SECOND_UNION* %1560 to %struct.anon.2*
  %1562 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1561, i32 0, i32 2
  %1563 = load i16, i16* %1562, align 2
  %1564 = and i16 %1563, -1025
  %1565 = or i16 %1564, 1024
  store i16 %1565, i16* %1562, align 2
  br label %1566

; <label>:1566                                    ; preds = %1556, %359
  %1567 = load %union.rec*, %union.rec** %1, align 8
  %1568 = bitcast %union.rec* %1567 to %struct.head_type*
  %1569 = getelementptr inbounds %struct.head_type, %struct.head_type* %1568, i32 0, i32 10
  %1570 = load %union.rec*, %union.rec** %1569, align 8
  %1571 = icmp ne %union.rec* %1570, null
  br i1 %1571, label %1572, label %1810

; <label>:1572                                    ; preds = %1566
  %1573 = load %union.rec*, %union.rec** %1, align 8
  %1574 = bitcast %union.rec* %1573 to %struct.head_type*
  %1575 = getelementptr inbounds %struct.head_type, %struct.head_type* %1574, i32 0, i32 10
  %1576 = load %union.rec*, %union.rec** %1575, align 8
  %1577 = bitcast %union.rec* %1576 to %struct.word_type*
  %1578 = getelementptr inbounds %struct.word_type, %struct.word_type* %1577, i32 0, i32 0
  %1579 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1578, i32 0, i64 0
  %1580 = getelementptr inbounds %struct.LIST, %struct.LIST* %1579, i32 0, i32 1
  %1581 = load %union.rec*, %union.rec** %1580, align 8
  %1582 = load %union.rec*, %union.rec** %1, align 8
  %1583 = bitcast %union.rec* %1582 to %struct.head_type*
  %1584 = getelementptr inbounds %struct.head_type, %struct.head_type* %1583, i32 0, i32 10
  %1585 = load %union.rec*, %union.rec** %1584, align 8
  %1586 = icmp ne %union.rec* %1581, %1585
  br i1 %1586, label %1587, label %1810

; <label>:1587                                    ; preds = %1572
  %1588 = load %union.rec*, %union.rec** %1, align 8
  %1589 = bitcast %union.rec* %1588 to %struct.head_type*
  %1590 = getelementptr inbounds %struct.head_type, %struct.head_type* %1589, i32 0, i32 10
  %1591 = load %union.rec*, %union.rec** %1590, align 8
  %1592 = bitcast %union.rec* %1591 to %struct.word_type*
  %1593 = getelementptr inbounds %struct.word_type, %struct.word_type* %1592, i32 0, i32 0
  %1594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1593, i32 0, i64 0
  %1595 = getelementptr inbounds %struct.LIST, %struct.LIST* %1594, i32 0, i32 1
  %1596 = load %union.rec*, %union.rec** %1595, align 8
  %1597 = bitcast %union.rec* %1596 to %struct.word_type*
  %1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %1597, i32 0, i32 0
  %1599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1598, i32 0, i64 1
  %1600 = getelementptr inbounds %struct.LIST, %struct.LIST* %1599, i32 0, i32 0
  %1601 = load %union.rec*, %union.rec** %1600, align 8
  store %union.rec* %1601, %union.rec** %tmp, align 8
  br label %1602

; <label>:1602                                    ; preds = %1612, %1587
  %1603 = load %union.rec*, %union.rec** %tmp, align 8
  %1604 = bitcast %union.rec* %1603 to %struct.word_type*
  %1605 = getelementptr inbounds %struct.word_type, %struct.word_type* %1604, i32 0, i32 1
  %1606 = bitcast %union.FIRST_UNION* %1605 to %struct.anon*
  %1607 = getelementptr inbounds %struct.anon, %struct.anon* %1606, i32 0, i32 0
  %1608 = load i8, i8* %1607, align 1
  %1609 = zext i8 %1608 to i32
  %1610 = icmp eq i32 %1609, 0
  br i1 %1610, label %1611, label %1619

; <label>:1611                                    ; preds = %1602
  br label %1612

; <label>:1612                                    ; preds = %1611
  %1613 = load %union.rec*, %union.rec** %tmp, align 8
  %1614 = bitcast %union.rec* %1613 to %struct.word_type*
  %1615 = getelementptr inbounds %struct.word_type, %struct.word_type* %1614, i32 0, i32 0
  %1616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1615, i32 0, i64 1
  %1617 = getelementptr inbounds %struct.LIST, %struct.LIST* %1616, i32 0, i32 0
  %1618 = load %union.rec*, %union.rec** %1617, align 8
  store %union.rec* %1618, %union.rec** %tmp, align 8
  br label %1602

; <label>:1619                                    ; preds = %1602
  %1620 = load %union.rec*, %union.rec** %tmp, align 8
  %1621 = bitcast %union.rec* %1620 to %struct.word_type*
  %1622 = getelementptr inbounds %struct.word_type, %struct.word_type* %1621, i32 0, i32 3
  %1623 = bitcast %union.THIRD_UNION* %1622 to %struct.anon.6*
  %1624 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %1623, i32 0, i32 0
  %1625 = getelementptr inbounds [2 x i32], [2 x i32]* %1624, i32 0, i64 0
  %1626 = load i32, i32* %1625, align 4
  %1627 = sub nsw i32 %1626, 1
  %1628 = load %union.rec*, %union.rec** %1, align 8
  %1629 = bitcast %union.rec* %1628 to %struct.head_type*
  %1630 = getelementptr inbounds %struct.head_type, %struct.head_type* %1629, i32 0, i32 15
  %1631 = load i32, i32* %1630, align 4
  %1632 = add nsw i32 %1631, %1627
  store i32 %1632, i32* %1630, align 4
  %1633 = load %union.rec*, %union.rec** %tmp, align 8
  %1634 = bitcast %union.rec* %1633 to %struct.word_type*
  %1635 = getelementptr inbounds %struct.word_type, %struct.word_type* %1634, i32 0, i32 0
  %1636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1635, i32 0, i64 1
  %1637 = getelementptr inbounds %struct.LIST, %struct.LIST* %1636, i32 0, i32 1
  %1638 = load %union.rec*, %union.rec** %1637, align 8
  store %union.rec* %1638, %union.rec** @xx_link, align 8
  %1639 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1639, %union.rec** @zz_hold, align 8
  %1640 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1641 = bitcast %union.rec* %1640 to %struct.word_type*
  %1642 = getelementptr inbounds %struct.word_type, %struct.word_type* %1641, i32 0, i32 0
  %1643 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1642, i32 0, i64 1
  %1644 = getelementptr inbounds %struct.LIST, %struct.LIST* %1643, i32 0, i32 1
  %1645 = load %union.rec*, %union.rec** %1644, align 8
  %1646 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1647 = icmp eq %union.rec* %1645, %1646
  br i1 %1647, label %1648, label %1649

; <label>:1648                                    ; preds = %1619
  br label %1690

; <label>:1649                                    ; preds = %1619
  %1650 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1651 = bitcast %union.rec* %1650 to %struct.word_type*
  %1652 = getelementptr inbounds %struct.word_type, %struct.word_type* %1651, i32 0, i32 0
  %1653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1652, i32 0, i64 1
  %1654 = getelementptr inbounds %struct.LIST, %struct.LIST* %1653, i32 0, i32 1
  %1655 = load %union.rec*, %union.rec** %1654, align 8
  store %union.rec* %1655, %union.rec** @zz_res, align 8
  %1656 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1657 = bitcast %union.rec* %1656 to %struct.word_type*
  %1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %1657, i32 0, i32 0
  %1659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1658, i32 0, i64 1
  %1660 = getelementptr inbounds %struct.LIST, %struct.LIST* %1659, i32 0, i32 0
  %1661 = load %union.rec*, %union.rec** %1660, align 8
  %1662 = load %union.rec*, %union.rec** @zz_res, align 8
  %1663 = bitcast %union.rec* %1662 to %struct.word_type*
  %1664 = getelementptr inbounds %struct.word_type, %struct.word_type* %1663, i32 0, i32 0
  %1665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1664, i32 0, i64 1
  %1666 = getelementptr inbounds %struct.LIST, %struct.LIST* %1665, i32 0, i32 0
  store %union.rec* %1661, %union.rec** %1666, align 8
  %1667 = load %union.rec*, %union.rec** @zz_res, align 8
  %1668 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1669 = bitcast %union.rec* %1668 to %struct.word_type*
  %1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %1669, i32 0, i32 0
  %1671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1670, i32 0, i64 1
  %1672 = getelementptr inbounds %struct.LIST, %struct.LIST* %1671, i32 0, i32 0
  %1673 = load %union.rec*, %union.rec** %1672, align 8
  %1674 = bitcast %union.rec* %1673 to %struct.word_type*
  %1675 = getelementptr inbounds %struct.word_type, %struct.word_type* %1674, i32 0, i32 0
  %1676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1675, i32 0, i64 1
  %1677 = getelementptr inbounds %struct.LIST, %struct.LIST* %1676, i32 0, i32 1
  store %union.rec* %1667, %union.rec** %1677, align 8
  %1678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1679 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1680 = bitcast %union.rec* %1679 to %struct.word_type*
  %1681 = getelementptr inbounds %struct.word_type, %struct.word_type* %1680, i32 0, i32 0
  %1682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1681, i32 0, i64 1
  %1683 = getelementptr inbounds %struct.LIST, %struct.LIST* %1682, i32 0, i32 1
  store %union.rec* %1678, %union.rec** %1683, align 8
  %1684 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1685 = bitcast %union.rec* %1684 to %struct.word_type*
  %1686 = getelementptr inbounds %struct.word_type, %struct.word_type* %1685, i32 0, i32 0
  %1687 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1686, i32 0, i64 1
  %1688 = getelementptr inbounds %struct.LIST, %struct.LIST* %1687, i32 0, i32 0
  store %union.rec* %1678, %union.rec** %1688, align 8
  %1689 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1690

; <label>:1690                                    ; preds = %1649, %1648
  %1691 = phi %union.rec* [ null, %1648 ], [ %1689, %1649 ]
  store %union.rec* %1691, %union.rec** @xx_tmp, align 8
  %1692 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1692, %union.rec** @zz_hold, align 8
  %1693 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1694 = bitcast %union.rec* %1693 to %struct.word_type*
  %1695 = getelementptr inbounds %struct.word_type, %struct.word_type* %1694, i32 0, i32 0
  %1696 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1695, i32 0, i64 0
  %1697 = getelementptr inbounds %struct.LIST, %struct.LIST* %1696, i32 0, i32 1
  %1698 = load %union.rec*, %union.rec** %1697, align 8
  %1699 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1700 = icmp eq %union.rec* %1698, %1699
  br i1 %1700, label %1701, label %1702

; <label>:1701                                    ; preds = %1690
  br label %1743

; <label>:1702                                    ; preds = %1690
  %1703 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1704 = bitcast %union.rec* %1703 to %struct.word_type*
  %1705 = getelementptr inbounds %struct.word_type, %struct.word_type* %1704, i32 0, i32 0
  %1706 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1705, i32 0, i64 0
  %1707 = getelementptr inbounds %struct.LIST, %struct.LIST* %1706, i32 0, i32 1
  %1708 = load %union.rec*, %union.rec** %1707, align 8
  store %union.rec* %1708, %union.rec** @zz_res, align 8
  %1709 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1710 = bitcast %union.rec* %1709 to %struct.word_type*
  %1711 = getelementptr inbounds %struct.word_type, %struct.word_type* %1710, i32 0, i32 0
  %1712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1711, i32 0, i64 0
  %1713 = getelementptr inbounds %struct.LIST, %struct.LIST* %1712, i32 0, i32 0
  %1714 = load %union.rec*, %union.rec** %1713, align 8
  %1715 = load %union.rec*, %union.rec** @zz_res, align 8
  %1716 = bitcast %union.rec* %1715 to %struct.word_type*
  %1717 = getelementptr inbounds %struct.word_type, %struct.word_type* %1716, i32 0, i32 0
  %1718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1717, i32 0, i64 0
  %1719 = getelementptr inbounds %struct.LIST, %struct.LIST* %1718, i32 0, i32 0
  store %union.rec* %1714, %union.rec** %1719, align 8
  %1720 = load %union.rec*, %union.rec** @zz_res, align 8
  %1721 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1722 = bitcast %union.rec* %1721 to %struct.word_type*
  %1723 = getelementptr inbounds %struct.word_type, %struct.word_type* %1722, i32 0, i32 0
  %1724 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1723, i32 0, i64 0
  %1725 = getelementptr inbounds %struct.LIST, %struct.LIST* %1724, i32 0, i32 0
  %1726 = load %union.rec*, %union.rec** %1725, align 8
  %1727 = bitcast %union.rec* %1726 to %struct.word_type*
  %1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %1727, i32 0, i32 0
  %1729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1728, i32 0, i64 0
  %1730 = getelementptr inbounds %struct.LIST, %struct.LIST* %1729, i32 0, i32 1
  store %union.rec* %1720, %union.rec** %1730, align 8
  %1731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1732 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1733 = bitcast %union.rec* %1732 to %struct.word_type*
  %1734 = getelementptr inbounds %struct.word_type, %struct.word_type* %1733, i32 0, i32 0
  %1735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1734, i32 0, i64 0
  %1736 = getelementptr inbounds %struct.LIST, %struct.LIST* %1735, i32 0, i32 1
  store %union.rec* %1731, %union.rec** %1736, align 8
  %1737 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1738 = bitcast %union.rec* %1737 to %struct.word_type*
  %1739 = getelementptr inbounds %struct.word_type, %struct.word_type* %1738, i32 0, i32 0
  %1740 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1739, i32 0, i64 0
  %1741 = getelementptr inbounds %struct.LIST, %struct.LIST* %1740, i32 0, i32 0
  store %union.rec* %1731, %union.rec** %1741, align 8
  %1742 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1743

; <label>:1743                                    ; preds = %1702, %1701
  %1744 = phi %union.rec* [ null, %1701 ], [ %1742, %1702 ]
  %1745 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1745, %union.rec** @zz_hold, align 8
  %1746 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1746, %union.rec** @zz_hold, align 8
  %1747 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1748 = bitcast %union.rec* %1747 to %struct.word_type*
  %1749 = getelementptr inbounds %struct.word_type, %struct.word_type* %1748, i32 0, i32 1
  %1750 = bitcast %union.FIRST_UNION* %1749 to %struct.anon*
  %1751 = getelementptr inbounds %struct.anon, %struct.anon* %1750, i32 0, i32 0
  %1752 = load i8, i8* %1751, align 1
  %1753 = zext i8 %1752 to i32
  %1754 = icmp eq i32 %1753, 11
  br i1 %1754, label %1764, label %1755

; <label>:1755                                    ; preds = %1743
  %1756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1757 = bitcast %union.rec* %1756 to %struct.word_type*
  %1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %1757, i32 0, i32 1
  %1759 = bitcast %union.FIRST_UNION* %1758 to %struct.anon*
  %1760 = getelementptr inbounds %struct.anon, %struct.anon* %1759, i32 0, i32 0
  %1761 = load i8, i8* %1760, align 1
  %1762 = zext i8 %1761 to i32
  %1763 = icmp eq i32 %1762, 12
  br i1 %1763, label %1764, label %1772

; <label>:1764                                    ; preds = %1755, %1743
  %1765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1766 = bitcast %union.rec* %1765 to %struct.word_type*
  %1767 = getelementptr inbounds %struct.word_type, %struct.word_type* %1766, i32 0, i32 1
  %1768 = bitcast %union.FIRST_UNION* %1767 to %struct.anon*
  %1769 = getelementptr inbounds %struct.anon, %struct.anon* %1768, i32 0, i32 1
  %1770 = load i8, i8* %1769, align 1
  %1771 = zext i8 %1770 to i32
  br label %1783

; <label>:1772                                    ; preds = %1755
  %1773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1774 = bitcast %union.rec* %1773 to %struct.word_type*
  %1775 = getelementptr inbounds %struct.word_type, %struct.word_type* %1774, i32 0, i32 1
  %1776 = bitcast %union.FIRST_UNION* %1775 to %struct.anon*
  %1777 = getelementptr inbounds %struct.anon, %struct.anon* %1776, i32 0, i32 0
  %1778 = load i8, i8* %1777, align 1
  %1779 = zext i8 %1778 to i64
  %1780 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1779
  %1781 = load i8, i8* %1780, align 1
  %1782 = zext i8 %1781 to i32
  br label %1783

; <label>:1783                                    ; preds = %1772, %1764
  %1784 = phi i32 [ %1771, %1764 ], [ %1782, %1772 ]
  store i32 %1784, i32* @zz_size, align 4
  %1785 = load i32, i32* @zz_size, align 4
  %1786 = sext i32 %1785 to i64
  %1787 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1786
  %1788 = load %union.rec*, %union.rec** %1787, align 8
  %1789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1790 = bitcast %union.rec* %1789 to %struct.word_type*
  %1791 = getelementptr inbounds %struct.word_type, %struct.word_type* %1790, i32 0, i32 0
  %1792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1791, i32 0, i64 0
  %1793 = getelementptr inbounds %struct.LIST, %struct.LIST* %1792, i32 0, i32 0
  store %union.rec* %1788, %union.rec** %1793, align 8
  %1794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1795 = load i32, i32* @zz_size, align 4
  %1796 = sext i32 %1795 to i64
  %1797 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1796
  store %union.rec* %1794, %union.rec** %1797, align 8
  %1798 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1799 = bitcast %union.rec* %1798 to %struct.word_type*
  %1800 = getelementptr inbounds %struct.word_type, %struct.word_type* %1799, i32 0, i32 0
  %1801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1800, i32 0, i64 1
  %1802 = getelementptr inbounds %struct.LIST, %struct.LIST* %1801, i32 0, i32 1
  %1803 = load %union.rec*, %union.rec** %1802, align 8
  %1804 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1805 = icmp eq %union.rec* %1803, %1804
  br i1 %1805, label %1806, label %1809

; <label>:1806                                    ; preds = %1783
  %1807 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1808 = call i32 @DisposeObject(%union.rec* %1807)
  br label %1809

; <label>:1809                                    ; preds = %1806, %1783
  br label %1814

; <label>:1810                                    ; preds = %1572, %1566
  %1811 = load %union.rec*, %union.rec** %1, align 8
  %1812 = bitcast %union.rec* %1811 to %struct.head_type*
  %1813 = getelementptr inbounds %struct.head_type, %struct.head_type* %1812, i32 0, i32 15
  store i32 65535, i32* %1813, align 4
  br label %1814

; <label>:1814                                    ; preds = %1810, %1809
  ret void
}

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

declare %union.rec* @MakeWord(i32, i8*, %struct.FILE_POS*) #1

; Function Attrs: nounwind uwtable
define void @CalculateOptimize(%union.rec* %hd) #0 {
  %1 = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %ylink = alloca %union.rec*, align 8
  %og = alloca %union.rec*, align 8
  %og_par = alloca %union.rec*, align 8
  %para = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %wd = alloca %union.rec*, align 8
  %g = alloca %union.rec*, align 8
  %last = alloca %union.rec*, align 8
  %count = alloca i32, align 4
  %compcount = alloca i32, align 4
  %buff = alloca [512 x i8], align 16
  %fnum = alloca i16, align 2
  %write_pos = alloca i32, align 4
  %write_lnum = alloca i32, align 4
  %hyph_used = alloca i32, align 4
  store %union.rec* %hd, %union.rec** %1, align 8
  %2 = load %union.rec*, %union.rec** %1, align 8
  %3 = bitcast %union.rec* %2 to %struct.head_type*
  %4 = getelementptr inbounds %struct.head_type, %struct.head_type* %3, i32 0, i32 8
  %5 = load %union.rec*, %union.rec** %4, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 0
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 0
  %10 = load %union.rec*, %union.rec** %9, align 8
  %11 = load %union.rec*, %union.rec** %1, align 8
  %12 = bitcast %union.rec* %11 to %struct.head_type*
  %13 = getelementptr inbounds %struct.head_type, %struct.head_type* %12, i32 0, i32 8
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = icmp ne %union.rec* %10, %14
  br i1 %15, label %19, label %16

; <label>:16                                      ; preds = %0
  %17 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %18 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %17, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.29, i32 0, i32 0))
  br label %19

; <label>:19                                      ; preds = %16, %0
  %20 = load %union.rec*, %union.rec** %1, align 8
  %21 = bitcast %union.rec* %20 to %struct.head_type*
  %22 = getelementptr inbounds %struct.head_type, %struct.head_type* %21, i32 0, i32 8
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 0
  %28 = load %union.rec*, %union.rec** %27, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 1
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** %last, align 8
  br label %34

; <label>:34                                      ; preds = %44, %19
  %35 = load %union.rec*, %union.rec** %last, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 1
  %38 = bitcast %union.FIRST_UNION* %37 to %struct.anon*
  %39 = getelementptr inbounds %struct.anon, %struct.anon* %38, i32 0, i32 0
  %40 = load i8, i8* %39, align 1
  %41 = zext i8 %40 to i32
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %51

; <label>:43                                      ; preds = %34
  br label %44

; <label>:44                                      ; preds = %43
  %45 = load %union.rec*, %union.rec** %last, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  store %union.rec* %50, %union.rec** %last, align 8
  br label %34

; <label>:51                                      ; preds = %34
  %52 = load %union.rec*, %union.rec** %last, align 8
  %53 = bitcast %union.rec* %52 to %struct.word_type*
  %54 = getelementptr inbounds %struct.word_type, %struct.word_type* %53, i32 0, i32 1
  %55 = bitcast %union.FIRST_UNION* %54 to %struct.anon*
  %56 = getelementptr inbounds %struct.anon, %struct.anon* %55, i32 0, i32 0
  %57 = load i8, i8* %56, align 1
  %58 = zext i8 %57 to i32
  %59 = icmp eq i32 %58, 1
  br i1 %59, label %63, label %60

; <label>:60                                      ; preds = %51
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.30, i32 0, i32 0))
  br label %63

; <label>:63                                      ; preds = %60, %51
  %64 = load %union.rec*, %union.rec** %last, align 8
  %65 = bitcast %union.rec* %64 to %struct.word_type*
  %66 = getelementptr inbounds %struct.word_type, %struct.word_type* %65, i32 0, i32 0
  %67 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %66, i32 0, i64 1
  %68 = getelementptr inbounds %struct.LIST, %struct.LIST* %67, i32 0, i32 1
  %69 = load %union.rec*, %union.rec** %68, align 8
  store %union.rec* %69, %union.rec** @xx_link, align 8
  %70 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %70, %union.rec** @zz_hold, align 8
  %71 = load %union.rec*, %union.rec** @zz_hold, align 8
  %72 = bitcast %union.rec* %71 to %struct.word_type*
  %73 = getelementptr inbounds %struct.word_type, %struct.word_type* %72, i32 0, i32 0
  %74 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %73, i32 0, i64 1
  %75 = getelementptr inbounds %struct.LIST, %struct.LIST* %74, i32 0, i32 1
  %76 = load %union.rec*, %union.rec** %75, align 8
  %77 = load %union.rec*, %union.rec** @zz_hold, align 8
  %78 = icmp eq %union.rec* %76, %77
  br i1 %78, label %79, label %80

; <label>:79                                      ; preds = %63
  br label %121

; <label>:80                                      ; preds = %63
  %81 = load %union.rec*, %union.rec** @zz_hold, align 8
  %82 = bitcast %union.rec* %81 to %struct.word_type*
  %83 = getelementptr inbounds %struct.word_type, %struct.word_type* %82, i32 0, i32 0
  %84 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %83, i32 0, i64 1
  %85 = getelementptr inbounds %struct.LIST, %struct.LIST* %84, i32 0, i32 1
  %86 = load %union.rec*, %union.rec** %85, align 8
  store %union.rec* %86, %union.rec** @zz_res, align 8
  %87 = load %union.rec*, %union.rec** @zz_hold, align 8
  %88 = bitcast %union.rec* %87 to %struct.word_type*
  %89 = getelementptr inbounds %struct.word_type, %struct.word_type* %88, i32 0, i32 0
  %90 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %89, i32 0, i64 1
  %91 = getelementptr inbounds %struct.LIST, %struct.LIST* %90, i32 0, i32 0
  %92 = load %union.rec*, %union.rec** %91, align 8
  %93 = load %union.rec*, %union.rec** @zz_res, align 8
  %94 = bitcast %union.rec* %93 to %struct.word_type*
  %95 = getelementptr inbounds %struct.word_type, %struct.word_type* %94, i32 0, i32 0
  %96 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %95, i32 0, i64 1
  %97 = getelementptr inbounds %struct.LIST, %struct.LIST* %96, i32 0, i32 0
  store %union.rec* %92, %union.rec** %97, align 8
  %98 = load %union.rec*, %union.rec** @zz_res, align 8
  %99 = load %union.rec*, %union.rec** @zz_hold, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 0
  %102 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %101, i32 0, i64 1
  %103 = getelementptr inbounds %struct.LIST, %struct.LIST* %102, i32 0, i32 0
  %104 = load %union.rec*, %union.rec** %103, align 8
  %105 = bitcast %union.rec* %104 to %struct.word_type*
  %106 = getelementptr inbounds %struct.word_type, %struct.word_type* %105, i32 0, i32 0
  %107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %106, i32 0, i64 1
  %108 = getelementptr inbounds %struct.LIST, %struct.LIST* %107, i32 0, i32 1
  store %union.rec* %98, %union.rec** %108, align 8
  %109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 1
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 1
  store %union.rec* %109, %union.rec** %114, align 8
  %115 = load %union.rec*, %union.rec** @zz_hold, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 0
  %118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %117, i32 0, i64 1
  %119 = getelementptr inbounds %struct.LIST, %struct.LIST* %118, i32 0, i32 0
  store %union.rec* %109, %union.rec** %119, align 8
  %120 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %121

; <label>:121                                     ; preds = %80, %79
  %122 = phi %union.rec* [ null, %79 ], [ %120, %80 ]
  store %union.rec* %122, %union.rec** @xx_tmp, align 8
  %123 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %123, %union.rec** @zz_hold, align 8
  %124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %125 = bitcast %union.rec* %124 to %struct.word_type*
  %126 = getelementptr inbounds %struct.word_type, %struct.word_type* %125, i32 0, i32 0
  %127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %126, i32 0, i64 0
  %128 = getelementptr inbounds %struct.LIST, %struct.LIST* %127, i32 0, i32 1
  %129 = load %union.rec*, %union.rec** %128, align 8
  %130 = load %union.rec*, %union.rec** @zz_hold, align 8
  %131 = icmp eq %union.rec* %129, %130
  br i1 %131, label %132, label %133

; <label>:132                                     ; preds = %121
  br label %174

; <label>:133                                     ; preds = %121
  %134 = load %union.rec*, %union.rec** @zz_hold, align 8
  %135 = bitcast %union.rec* %134 to %struct.word_type*
  %136 = getelementptr inbounds %struct.word_type, %struct.word_type* %135, i32 0, i32 0
  %137 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %136, i32 0, i64 0
  %138 = getelementptr inbounds %struct.LIST, %struct.LIST* %137, i32 0, i32 1
  %139 = load %union.rec*, %union.rec** %138, align 8
  store %union.rec* %139, %union.rec** @zz_res, align 8
  %140 = load %union.rec*, %union.rec** @zz_hold, align 8
  %141 = bitcast %union.rec* %140 to %struct.word_type*
  %142 = getelementptr inbounds %struct.word_type, %struct.word_type* %141, i32 0, i32 0
  %143 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %142, i32 0, i64 0
  %144 = getelementptr inbounds %struct.LIST, %struct.LIST* %143, i32 0, i32 0
  %145 = load %union.rec*, %union.rec** %144, align 8
  %146 = load %union.rec*, %union.rec** @zz_res, align 8
  %147 = bitcast %union.rec* %146 to %struct.word_type*
  %148 = getelementptr inbounds %struct.word_type, %struct.word_type* %147, i32 0, i32 0
  %149 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %148, i32 0, i64 0
  %150 = getelementptr inbounds %struct.LIST, %struct.LIST* %149, i32 0, i32 0
  store %union.rec* %145, %union.rec** %150, align 8
  %151 = load %union.rec*, %union.rec** @zz_res, align 8
  %152 = load %union.rec*, %union.rec** @zz_hold, align 8
  %153 = bitcast %union.rec* %152 to %struct.word_type*
  %154 = getelementptr inbounds %struct.word_type, %struct.word_type* %153, i32 0, i32 0
  %155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %154, i32 0, i64 0
  %156 = getelementptr inbounds %struct.LIST, %struct.LIST* %155, i32 0, i32 0
  %157 = load %union.rec*, %union.rec** %156, align 8
  %158 = bitcast %union.rec* %157 to %struct.word_type*
  %159 = getelementptr inbounds %struct.word_type, %struct.word_type* %158, i32 0, i32 0
  %160 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %159, i32 0, i64 0
  %161 = getelementptr inbounds %struct.LIST, %struct.LIST* %160, i32 0, i32 1
  store %union.rec* %151, %union.rec** %161, align 8
  %162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %163 = load %union.rec*, %union.rec** @zz_hold, align 8
  %164 = bitcast %union.rec* %163 to %struct.word_type*
  %165 = getelementptr inbounds %struct.word_type, %struct.word_type* %164, i32 0, i32 0
  %166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %165, i32 0, i64 0
  %167 = getelementptr inbounds %struct.LIST, %struct.LIST* %166, i32 0, i32 1
  store %union.rec* %162, %union.rec** %167, align 8
  %168 = load %union.rec*, %union.rec** @zz_hold, align 8
  %169 = bitcast %union.rec* %168 to %struct.word_type*
  %170 = getelementptr inbounds %struct.word_type, %struct.word_type* %169, i32 0, i32 0
  %171 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %170, i32 0, i64 0
  %172 = getelementptr inbounds %struct.LIST, %struct.LIST* %171, i32 0, i32 0
  store %union.rec* %162, %union.rec** %172, align 8
  %173 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %174

; <label>:174                                     ; preds = %133, %132
  %175 = phi %union.rec* [ null, %132 ], [ %173, %133 ]
  %176 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %176, %union.rec** @zz_hold, align 8
  %177 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %177, %union.rec** @zz_hold, align 8
  %178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %179 = bitcast %union.rec* %178 to %struct.word_type*
  %180 = getelementptr inbounds %struct.word_type, %struct.word_type* %179, i32 0, i32 1
  %181 = bitcast %union.FIRST_UNION* %180 to %struct.anon*
  %182 = getelementptr inbounds %struct.anon, %struct.anon* %181, i32 0, i32 0
  %183 = load i8, i8* %182, align 1
  %184 = zext i8 %183 to i32
  %185 = icmp eq i32 %184, 11
  br i1 %185, label %195, label %186

; <label>:186                                     ; preds = %174
  %187 = load %union.rec*, %union.rec** @zz_hold, align 8
  %188 = bitcast %union.rec* %187 to %struct.word_type*
  %189 = getelementptr inbounds %struct.word_type, %struct.word_type* %188, i32 0, i32 1
  %190 = bitcast %union.FIRST_UNION* %189 to %struct.anon*
  %191 = getelementptr inbounds %struct.anon, %struct.anon* %190, i32 0, i32 0
  %192 = load i8, i8* %191, align 1
  %193 = zext i8 %192 to i32
  %194 = icmp eq i32 %193, 12
  br i1 %194, label %195, label %203

; <label>:195                                     ; preds = %186, %174
  %196 = load %union.rec*, %union.rec** @zz_hold, align 8
  %197 = bitcast %union.rec* %196 to %struct.word_type*
  %198 = getelementptr inbounds %struct.word_type, %struct.word_type* %197, i32 0, i32 1
  %199 = bitcast %union.FIRST_UNION* %198 to %struct.anon*
  %200 = getelementptr inbounds %struct.anon, %struct.anon* %199, i32 0, i32 1
  %201 = load i8, i8* %200, align 1
  %202 = zext i8 %201 to i32
  br label %214

; <label>:203                                     ; preds = %186
  %204 = load %union.rec*, %union.rec** @zz_hold, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 1
  %207 = bitcast %union.FIRST_UNION* %206 to %struct.anon*
  %208 = getelementptr inbounds %struct.anon, %struct.anon* %207, i32 0, i32 0
  %209 = load i8, i8* %208, align 1
  %210 = zext i8 %209 to i64
  %211 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %210
  %212 = load i8, i8* %211, align 1
  %213 = zext i8 %212 to i32
  br label %214

; <label>:214                                     ; preds = %203, %195
  %215 = phi i32 [ %202, %195 ], [ %213, %203 ]
  store i32 %215, i32* @zz_size, align 4
  %216 = load i32, i32* @zz_size, align 4
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %217
  %219 = load %union.rec*, %union.rec** %218, align 8
  %220 = load %union.rec*, %union.rec** @zz_hold, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 0
  %223 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %222, i32 0, i64 0
  %224 = getelementptr inbounds %struct.LIST, %struct.LIST* %223, i32 0, i32 0
  store %union.rec* %219, %union.rec** %224, align 8
  %225 = load %union.rec*, %union.rec** @zz_hold, align 8
  %226 = load i32, i32* @zz_size, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %227
  store %union.rec* %225, %union.rec** %228, align 8
  %229 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 1
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 1
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %236 = icmp eq %union.rec* %234, %235
  br i1 %236, label %237, label %240

; <label>:237                                     ; preds = %214
  %238 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %239 = call i32 @DisposeObject(%union.rec* %238)
  br label %240

; <label>:240                                     ; preds = %237, %214
  %241 = load %union.rec*, %union.rec** %1, align 8
  %242 = bitcast %union.rec* %241 to %struct.head_type*
  %243 = getelementptr inbounds %struct.head_type, %struct.head_type* %242, i32 0, i32 9
  %244 = load %union.rec*, %union.rec** %243, align 8
  %245 = icmp ne %union.rec* %244, null
  br i1 %245, label %249, label %246

; <label>:246                                     ; preds = %240
  %247 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %248 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %247, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i32 0, i32 0))
  br label %249

; <label>:249                                     ; preds = %246, %240
  %250 = load %union.rec*, %union.rec** %1, align 8
  %251 = bitcast %union.rec* %250 to %struct.head_type*
  %252 = getelementptr inbounds %struct.head_type, %struct.head_type* %251, i32 0, i32 9
  %253 = load %union.rec*, %union.rec** %252, align 8
  %254 = bitcast %union.rec* %253 to %struct.word_type*
  %255 = getelementptr inbounds %struct.word_type, %struct.word_type* %254, i32 0, i32 0
  %256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %255, i32 0, i64 0
  %257 = getelementptr inbounds %struct.LIST, %struct.LIST* %256, i32 0, i32 1
  %258 = load %union.rec*, %union.rec** %257, align 8
  %259 = load %union.rec*, %union.rec** %1, align 8
  %260 = bitcast %union.rec* %259 to %struct.head_type*
  %261 = getelementptr inbounds %struct.head_type, %struct.head_type* %260, i32 0, i32 9
  %262 = load %union.rec*, %union.rec** %261, align 8
  %263 = icmp ne %union.rec* %258, %262
  br i1 %263, label %267, label %264

; <label>:264                                     ; preds = %249
  %265 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %266 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i32 0, i32 0), i32 0, %struct.FILE_POS* %265, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.32, i32 0, i32 0))
  br label %267

; <label>:267                                     ; preds = %264, %249
  %268 = load %union.rec*, %union.rec** %1, align 8
  %269 = bitcast %union.rec* %268 to %struct.head_type*
  %270 = getelementptr inbounds %struct.head_type, %struct.head_type* %269, i32 0, i32 9
  %271 = load %union.rec*, %union.rec** %270, align 8
  %272 = bitcast %union.rec* %271 to %struct.word_type*
  %273 = getelementptr inbounds %struct.word_type, %struct.word_type* %272, i32 0, i32 0
  %274 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %273, i32 0, i64 0
  %275 = getelementptr inbounds %struct.LIST, %struct.LIST* %274, i32 0, i32 0
  %276 = load %union.rec*, %union.rec** %275, align 8
  %277 = bitcast %union.rec* %276 to %struct.word_type*
  %278 = getelementptr inbounds %struct.word_type, %struct.word_type* %277, i32 0, i32 0
  %279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %278, i32 0, i64 1
  %280 = getelementptr inbounds %struct.LIST, %struct.LIST* %279, i32 0, i32 0
  %281 = load %union.rec*, %union.rec** %280, align 8
  store %union.rec* %281, %union.rec** %y, align 8
  br label %282

; <label>:282                                     ; preds = %292, %267
  %283 = load %union.rec*, %union.rec** %y, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 1
  %286 = bitcast %union.FIRST_UNION* %285 to %struct.anon*
  %287 = getelementptr inbounds %struct.anon, %struct.anon* %286, i32 0, i32 0
  %288 = load i8, i8* %287, align 1
  %289 = zext i8 %288 to i32
  %290 = icmp eq i32 %289, 0
  br i1 %290, label %291, label %299

; <label>:291                                     ; preds = %282
  br label %292

; <label>:292                                     ; preds = %291
  %293 = load %union.rec*, %union.rec** %y, align 8
  %294 = bitcast %union.rec* %293 to %struct.word_type*
  %295 = getelementptr inbounds %struct.word_type, %struct.word_type* %294, i32 0, i32 0
  %296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %295, i32 0, i64 1
  %297 = getelementptr inbounds %struct.LIST, %struct.LIST* %296, i32 0, i32 0
  %298 = load %union.rec*, %union.rec** %297, align 8
  store %union.rec* %298, %union.rec** %y, align 8
  br label %282

; <label>:299                                     ; preds = %282
  call void @EnterErrorBlock(i32 0)
  %300 = load %union.rec*, %union.rec** %1, align 8
  %301 = bitcast %union.rec* %300 to %struct.head_type*
  %302 = getelementptr inbounds %struct.head_type, %struct.head_type* %301, i32 0, i32 8
  %303 = load %union.rec*, %union.rec** %302, align 8
  %304 = load %union.rec*, %union.rec** %y, align 8
  %305 = bitcast %union.rec* %304 to %struct.closure_type*
  %306 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %305, i32 0, i32 4
  %307 = bitcast %union.FOURTH_UNION* %306 to %struct.CONSTRAINT*
  %308 = load %union.rec*, %union.rec** %1, align 8
  %309 = bitcast %union.rec* %308 to %struct.head_type*
  %310 = getelementptr inbounds %struct.head_type, %struct.head_type* %309, i32 0, i32 9
  %311 = load %union.rec*, %union.rec** %310, align 8
  %312 = call %union.rec* @FillObject(%union.rec* %303, %struct.CONSTRAINT* %307, %union.rec* %311, i32 0, i32 0, i32 1, i32* %hyph_used)
  %313 = load %union.rec*, %union.rec** %1, align 8
  %314 = bitcast %union.rec* %313 to %struct.head_type*
  %315 = getelementptr inbounds %struct.head_type, %struct.head_type* %314, i32 0, i32 8
  store %union.rec* %312, %union.rec** %315, align 8
  call void @LeaveErrorBlock(i32 0)
  %316 = load %union.rec*, %union.rec** %1, align 8
  %317 = bitcast %union.rec* %316 to %struct.head_type*
  %318 = getelementptr inbounds %struct.head_type, %struct.head_type* %317, i32 0, i32 8
  %319 = load %union.rec*, %union.rec** %318, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 1
  %322 = bitcast %union.FIRST_UNION* %321 to %struct.anon*
  %323 = getelementptr inbounds %struct.anon, %struct.anon* %322, i32 0, i32 0
  %324 = load i8, i8* %323, align 1
  %325 = zext i8 %324 to i32
  %326 = icmp ne i32 %325, 19
  br i1 %326, label %347, label %327

; <label>:327                                     ; preds = %299
  %328 = load %union.rec*, %union.rec** %1, align 8
  %329 = bitcast %union.rec* %328 to %struct.head_type*
  %330 = getelementptr inbounds %struct.head_type, %struct.head_type* %329, i32 0, i32 8
  %331 = load %union.rec*, %union.rec** %330, align 8
  %332 = bitcast %union.rec* %331 to %struct.word_type*
  %333 = getelementptr inbounds %struct.word_type, %struct.word_type* %332, i32 0, i32 0
  %334 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %333, i32 0, i64 0
  %335 = getelementptr inbounds %struct.LIST, %struct.LIST* %334, i32 0, i32 1
  %336 = load %union.rec*, %union.rec** %335, align 8
  %337 = load %union.rec*, %union.rec** %1, align 8
  %338 = bitcast %union.rec* %337 to %struct.head_type*
  %339 = getelementptr inbounds %struct.head_type, %struct.head_type* %338, i32 0, i32 8
  %340 = load %union.rec*, %union.rec** %339, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 0
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 0
  %345 = load %union.rec*, %union.rec** %344, align 8
  %346 = icmp eq %union.rec* %336, %345
  br i1 %346, label %347, label %348

; <label>:347                                     ; preds = %327, %299
  br label %1753

; <label>:348                                     ; preds = %327
  %349 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %350 = zext i8 %349 to i32
  store i32 %350, i32* @zz_size, align 4
  %351 = sext i32 %350 to i64
  %352 = icmp uge i64 %351, 265
  br i1 %352, label %353, label %356

; <label>:353                                     ; preds = %348
  %354 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %355 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %354)
  br label %381

; <label>:356                                     ; preds = %348
  %357 = load i32, i32* @zz_size, align 4
  %358 = sext i32 %357 to i64
  %359 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %358
  %360 = load %union.rec*, %union.rec** %359, align 8
  %361 = icmp eq %union.rec* %360, null
  br i1 %361, label %362, label %366

; <label>:362                                     ; preds = %356
  %363 = load i32, i32* @zz_size, align 4
  %364 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %365 = call %union.rec* @GetMemory(i32 %363, %struct.FILE_POS* %364)
  store %union.rec* %365, %union.rec** @zz_hold, align 8
  br label %380

; <label>:366                                     ; preds = %356
  %367 = load i32, i32* @zz_size, align 4
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %368
  %370 = load %union.rec*, %union.rec** %369, align 8
  store %union.rec* %370, %union.rec** @zz_hold, align 8
  store %union.rec* %370, %union.rec** @zz_hold, align 8
  %371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %372 = bitcast %union.rec* %371 to %struct.word_type*
  %373 = getelementptr inbounds %struct.word_type, %struct.word_type* %372, i32 0, i32 0
  %374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %373, i32 0, i64 0
  %375 = getelementptr inbounds %struct.LIST, %struct.LIST* %374, i32 0, i32 0
  %376 = load %union.rec*, %union.rec** %375, align 8
  %377 = load i32, i32* @zz_size, align 4
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %378
  store %union.rec* %376, %union.rec** %379, align 8
  br label %380

; <label>:380                                     ; preds = %366, %362
  br label %381

; <label>:381                                     ; preds = %380, %353
  %382 = load %union.rec*, %union.rec** @zz_hold, align 8
  %383 = bitcast %union.rec* %382 to %struct.word_type*
  %384 = getelementptr inbounds %struct.word_type, %struct.word_type* %383, i32 0, i32 1
  %385 = bitcast %union.FIRST_UNION* %384 to %struct.anon*
  %386 = getelementptr inbounds %struct.anon, %struct.anon* %385, i32 0, i32 0
  store i8 2, i8* %386, align 1
  %387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %388 = load %union.rec*, %union.rec** @zz_hold, align 8
  %389 = bitcast %union.rec* %388 to %struct.word_type*
  %390 = getelementptr inbounds %struct.word_type, %struct.word_type* %389, i32 0, i32 0
  %391 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %390, i32 0, i64 1
  %392 = getelementptr inbounds %struct.LIST, %struct.LIST* %391, i32 0, i32 1
  store %union.rec* %387, %union.rec** %392, align 8
  %393 = load %union.rec*, %union.rec** @zz_hold, align 8
  %394 = bitcast %union.rec* %393 to %struct.word_type*
  %395 = getelementptr inbounds %struct.word_type, %struct.word_type* %394, i32 0, i32 0
  %396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %395, i32 0, i64 1
  %397 = getelementptr inbounds %struct.LIST, %struct.LIST* %396, i32 0, i32 0
  store %union.rec* %387, %union.rec** %397, align 8
  %398 = load %union.rec*, %union.rec** @zz_hold, align 8
  %399 = bitcast %union.rec* %398 to %struct.word_type*
  %400 = getelementptr inbounds %struct.word_type, %struct.word_type* %399, i32 0, i32 0
  %401 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %400, i32 0, i64 0
  %402 = getelementptr inbounds %struct.LIST, %struct.LIST* %401, i32 0, i32 1
  store %union.rec* %387, %union.rec** %402, align 8
  %403 = load %union.rec*, %union.rec** @zz_hold, align 8
  %404 = bitcast %union.rec* %403 to %struct.word_type*
  %405 = getelementptr inbounds %struct.word_type, %struct.word_type* %404, i32 0, i32 0
  %406 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %405, i32 0, i64 0
  %407 = getelementptr inbounds %struct.LIST, %struct.LIST* %406, i32 0, i32 0
  store %union.rec* %387, %union.rec** %407, align 8
  store %union.rec* %387, %union.rec** %og, align 8
  %408 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %409 = load %union.rec*, %union.rec** %og, align 8
  %410 = bitcast %union.rec* %409 to %struct.closure_type*
  %411 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %410, i32 0, i32 5
  store %union.rec* %408, %union.rec** %411, align 8
  %412 = load %union.rec*, %union.rec** %1, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 1
  %415 = bitcast %union.FIRST_UNION* %414 to %struct.FILE_POS*
  %416 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %415, i32 0, i32 2
  %417 = load i16, i16* %416, align 2
  %418 = load %union.rec*, %union.rec** %og, align 8
  %419 = bitcast %union.rec* %418 to %struct.word_type*
  %420 = getelementptr inbounds %struct.word_type, %struct.word_type* %419, i32 0, i32 1
  %421 = bitcast %union.FIRST_UNION* %420 to %struct.FILE_POS*
  %422 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %421, i32 0, i32 2
  store i16 %417, i16* %422, align 2
  %423 = load %union.rec*, %union.rec** %1, align 8
  %424 = bitcast %union.rec* %423 to %struct.word_type*
  %425 = getelementptr inbounds %struct.word_type, %struct.word_type* %424, i32 0, i32 1
  %426 = bitcast %union.FIRST_UNION* %425 to %struct.FILE_POS*
  %427 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %426, i32 0, i32 3
  %428 = load i32, i32* %427, align 4
  %429 = and i32 %428, 1048575
  %430 = load %union.rec*, %union.rec** %og, align 8
  %431 = bitcast %union.rec* %430 to %struct.word_type*
  %432 = getelementptr inbounds %struct.word_type, %struct.word_type* %431, i32 0, i32 1
  %433 = bitcast %union.FIRST_UNION* %432 to %struct.FILE_POS*
  %434 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %433, i32 0, i32 3
  %435 = load i32, i32* %434, align 4
  %436 = and i32 %429, 1048575
  %437 = and i32 %435, -1048576
  %438 = or i32 %437, %436
  store i32 %438, i32* %434, align 4
  %439 = load %union.rec*, %union.rec** %1, align 8
  %440 = bitcast %union.rec* %439 to %struct.word_type*
  %441 = getelementptr inbounds %struct.word_type, %struct.word_type* %440, i32 0, i32 1
  %442 = bitcast %union.FIRST_UNION* %441 to %struct.FILE_POS*
  %443 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %442, i32 0, i32 3
  %444 = load i32, i32* %443, align 4
  %445 = lshr i32 %444, 20
  %446 = load %union.rec*, %union.rec** %og, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 1
  %449 = bitcast %union.FIRST_UNION* %448 to %struct.FILE_POS*
  %450 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %449, i32 0, i32 3
  %451 = load i32, i32* %450, align 4
  %452 = and i32 %445, 4095
  %453 = shl i32 %452, 20
  %454 = and i32 %451, 1048575
  %455 = or i32 %454, %453
  store i32 %455, i32* %450, align 4
  %456 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 10), align 1
  %457 = zext i8 %456 to i32
  store i32 %457, i32* @zz_size, align 4
  %458 = sext i32 %457 to i64
  %459 = icmp uge i64 %458, 265
  br i1 %459, label %460, label %463

; <label>:460                                     ; preds = %381
  %461 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %462 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %461)
  br label %488

; <label>:463                                     ; preds = %381
  %464 = load i32, i32* @zz_size, align 4
  %465 = sext i32 %464 to i64
  %466 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %465
  %467 = load %union.rec*, %union.rec** %466, align 8
  %468 = icmp eq %union.rec* %467, null
  br i1 %468, label %469, label %473

; <label>:469                                     ; preds = %463
  %470 = load i32, i32* @zz_size, align 4
  %471 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %472 = call %union.rec* @GetMemory(i32 %470, %struct.FILE_POS* %471)
  store %union.rec* %472, %union.rec** @zz_hold, align 8
  br label %487

; <label>:473                                     ; preds = %463
  %474 = load i32, i32* @zz_size, align 4
  %475 = sext i32 %474 to i64
  %476 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %475
  %477 = load %union.rec*, %union.rec** %476, align 8
  store %union.rec* %477, %union.rec** @zz_hold, align 8
  store %union.rec* %477, %union.rec** @zz_hold, align 8
  %478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %479 = bitcast %union.rec* %478 to %struct.word_type*
  %480 = getelementptr inbounds %struct.word_type, %struct.word_type* %479, i32 0, i32 0
  %481 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %480, i32 0, i64 0
  %482 = getelementptr inbounds %struct.LIST, %struct.LIST* %481, i32 0, i32 0
  %483 = load %union.rec*, %union.rec** %482, align 8
  %484 = load i32, i32* @zz_size, align 4
  %485 = sext i32 %484 to i64
  %486 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %485
  store %union.rec* %483, %union.rec** %486, align 8
  br label %487

; <label>:487                                     ; preds = %473, %469
  br label %488

; <label>:488                                     ; preds = %487, %460
  %489 = load %union.rec*, %union.rec** @zz_hold, align 8
  %490 = bitcast %union.rec* %489 to %struct.word_type*
  %491 = getelementptr inbounds %struct.word_type, %struct.word_type* %490, i32 0, i32 1
  %492 = bitcast %union.FIRST_UNION* %491 to %struct.anon*
  %493 = getelementptr inbounds %struct.anon, %struct.anon* %492, i32 0, i32 0
  store i8 10, i8* %493, align 1
  %494 = load %union.rec*, %union.rec** @zz_hold, align 8
  %495 = load %union.rec*, %union.rec** @zz_hold, align 8
  %496 = bitcast %union.rec* %495 to %struct.word_type*
  %497 = getelementptr inbounds %struct.word_type, %struct.word_type* %496, i32 0, i32 0
  %498 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %497, i32 0, i64 1
  %499 = getelementptr inbounds %struct.LIST, %struct.LIST* %498, i32 0, i32 1
  store %union.rec* %494, %union.rec** %499, align 8
  %500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %501 = bitcast %union.rec* %500 to %struct.word_type*
  %502 = getelementptr inbounds %struct.word_type, %struct.word_type* %501, i32 0, i32 0
  %503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %502, i32 0, i64 1
  %504 = getelementptr inbounds %struct.LIST, %struct.LIST* %503, i32 0, i32 0
  store %union.rec* %494, %union.rec** %504, align 8
  %505 = load %union.rec*, %union.rec** @zz_hold, align 8
  %506 = bitcast %union.rec* %505 to %struct.word_type*
  %507 = getelementptr inbounds %struct.word_type, %struct.word_type* %506, i32 0, i32 0
  %508 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %507, i32 0, i64 0
  %509 = getelementptr inbounds %struct.LIST, %struct.LIST* %508, i32 0, i32 1
  store %union.rec* %494, %union.rec** %509, align 8
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 0
  %513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %512, i32 0, i64 0
  %514 = getelementptr inbounds %struct.LIST, %struct.LIST* %513, i32 0, i32 0
  store %union.rec* %494, %union.rec** %514, align 8
  store %union.rec* %494, %union.rec** %og_par, align 8
  %515 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %516 = call %union.rec* @ChildSym(%union.rec* %515, i32 146)
  %517 = load %union.rec*, %union.rec** %og_par, align 8
  %518 = bitcast %union.rec* %517 to %struct.closure_type*
  %519 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %518, i32 0, i32 5
  store %union.rec* %516, %union.rec** %519, align 8
  %520 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %521 = zext i8 %520 to i32
  store i32 %521, i32* @zz_size, align 4
  %522 = sext i32 %521 to i64
  %523 = icmp uge i64 %522, 265
  br i1 %523, label %524, label %527

; <label>:524                                     ; preds = %488
  %525 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %526 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %525)
  br label %552

; <label>:527                                     ; preds = %488
  %528 = load i32, i32* @zz_size, align 4
  %529 = sext i32 %528 to i64
  %530 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %529
  %531 = load %union.rec*, %union.rec** %530, align 8
  %532 = icmp eq %union.rec* %531, null
  br i1 %532, label %533, label %537

; <label>:533                                     ; preds = %527
  %534 = load i32, i32* @zz_size, align 4
  %535 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %536 = call %union.rec* @GetMemory(i32 %534, %struct.FILE_POS* %535)
  store %union.rec* %536, %union.rec** @zz_hold, align 8
  br label %551

; <label>:537                                     ; preds = %527
  %538 = load i32, i32* @zz_size, align 4
  %539 = sext i32 %538 to i64
  %540 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %539
  %541 = load %union.rec*, %union.rec** %540, align 8
  store %union.rec* %541, %union.rec** @zz_hold, align 8
  store %union.rec* %541, %union.rec** @zz_hold, align 8
  %542 = load %union.rec*, %union.rec** @zz_hold, align 8
  %543 = bitcast %union.rec* %542 to %struct.word_type*
  %544 = getelementptr inbounds %struct.word_type, %struct.word_type* %543, i32 0, i32 0
  %545 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %544, i32 0, i64 0
  %546 = getelementptr inbounds %struct.LIST, %struct.LIST* %545, i32 0, i32 0
  %547 = load %union.rec*, %union.rec** %546, align 8
  %548 = load i32, i32* @zz_size, align 4
  %549 = sext i32 %548 to i64
  %550 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %549
  store %union.rec* %547, %union.rec** %550, align 8
  br label %551

; <label>:551                                     ; preds = %537, %533
  br label %552

; <label>:552                                     ; preds = %551, %524
  %553 = load %union.rec*, %union.rec** @zz_hold, align 8
  %554 = bitcast %union.rec* %553 to %struct.word_type*
  %555 = getelementptr inbounds %struct.word_type, %struct.word_type* %554, i32 0, i32 1
  %556 = bitcast %union.FIRST_UNION* %555 to %struct.anon*
  %557 = getelementptr inbounds %struct.anon, %struct.anon* %556, i32 0, i32 0
  store i8 0, i8* %557, align 1
  %558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %559 = load %union.rec*, %union.rec** @zz_hold, align 8
  %560 = bitcast %union.rec* %559 to %struct.word_type*
  %561 = getelementptr inbounds %struct.word_type, %struct.word_type* %560, i32 0, i32 0
  %562 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %561, i32 0, i64 1
  %563 = getelementptr inbounds %struct.LIST, %struct.LIST* %562, i32 0, i32 1
  store %union.rec* %558, %union.rec** %563, align 8
  %564 = load %union.rec*, %union.rec** @zz_hold, align 8
  %565 = bitcast %union.rec* %564 to %struct.word_type*
  %566 = getelementptr inbounds %struct.word_type, %struct.word_type* %565, i32 0, i32 0
  %567 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %566, i32 0, i64 1
  %568 = getelementptr inbounds %struct.LIST, %struct.LIST* %567, i32 0, i32 0
  store %union.rec* %558, %union.rec** %568, align 8
  %569 = load %union.rec*, %union.rec** @zz_hold, align 8
  %570 = bitcast %union.rec* %569 to %struct.word_type*
  %571 = getelementptr inbounds %struct.word_type, %struct.word_type* %570, i32 0, i32 0
  %572 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %571, i32 0, i64 0
  %573 = getelementptr inbounds %struct.LIST, %struct.LIST* %572, i32 0, i32 1
  store %union.rec* %558, %union.rec** %573, align 8
  %574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %575 = bitcast %union.rec* %574 to %struct.word_type*
  %576 = getelementptr inbounds %struct.word_type, %struct.word_type* %575, i32 0, i32 0
  %577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %576, i32 0, i64 0
  %578 = getelementptr inbounds %struct.LIST, %struct.LIST* %577, i32 0, i32 0
  store %union.rec* %558, %union.rec** %578, align 8
  store %union.rec* %558, %union.rec** @xx_link, align 8
  %579 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %579, %union.rec** @zz_res, align 8
  %580 = load %union.rec*, %union.rec** %og, align 8
  store %union.rec* %580, %union.rec** @zz_hold, align 8
  %581 = load %union.rec*, %union.rec** @zz_hold, align 8
  %582 = icmp eq %union.rec* %581, null
  br i1 %582, label %583, label %585

; <label>:583                                     ; preds = %552
  %584 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %633

; <label>:585                                     ; preds = %552
  %586 = load %union.rec*, %union.rec** @zz_res, align 8
  %587 = icmp eq %union.rec* %586, null
  br i1 %587, label %588, label %590

; <label>:588                                     ; preds = %585
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %631

; <label>:590                                     ; preds = %585
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 0
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 0
  %596 = load %union.rec*, %union.rec** %595, align 8
  store %union.rec* %596, %union.rec** @zz_tmp, align 8
  %597 = load %union.rec*, %union.rec** @zz_res, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 0
  %600 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %599, i32 0, i64 0
  %601 = getelementptr inbounds %struct.LIST, %struct.LIST* %600, i32 0, i32 0
  %602 = load %union.rec*, %union.rec** %601, align 8
  %603 = load %union.rec*, %union.rec** @zz_hold, align 8
  %604 = bitcast %union.rec* %603 to %struct.word_type*
  %605 = getelementptr inbounds %struct.word_type, %struct.word_type* %604, i32 0, i32 0
  %606 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %605, i32 0, i64 0
  %607 = getelementptr inbounds %struct.LIST, %struct.LIST* %606, i32 0, i32 0
  store %union.rec* %602, %union.rec** %607, align 8
  %608 = load %union.rec*, %union.rec** @zz_hold, align 8
  %609 = load %union.rec*, %union.rec** @zz_res, align 8
  %610 = bitcast %union.rec* %609 to %struct.word_type*
  %611 = getelementptr inbounds %struct.word_type, %struct.word_type* %610, i32 0, i32 0
  %612 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %611, i32 0, i64 0
  %613 = getelementptr inbounds %struct.LIST, %struct.LIST* %612, i32 0, i32 0
  %614 = load %union.rec*, %union.rec** %613, align 8
  %615 = bitcast %union.rec* %614 to %struct.word_type*
  %616 = getelementptr inbounds %struct.word_type, %struct.word_type* %615, i32 0, i32 0
  %617 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %616, i32 0, i64 0
  %618 = getelementptr inbounds %struct.LIST, %struct.LIST* %617, i32 0, i32 1
  store %union.rec* %608, %union.rec** %618, align 8
  %619 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %620 = load %union.rec*, %union.rec** @zz_res, align 8
  %621 = bitcast %union.rec* %620 to %struct.word_type*
  %622 = getelementptr inbounds %struct.word_type, %struct.word_type* %621, i32 0, i32 0
  %623 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %622, i32 0, i64 0
  %624 = getelementptr inbounds %struct.LIST, %struct.LIST* %623, i32 0, i32 0
  store %union.rec* %619, %union.rec** %624, align 8
  %625 = load %union.rec*, %union.rec** @zz_res, align 8
  %626 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %627 = bitcast %union.rec* %626 to %struct.word_type*
  %628 = getelementptr inbounds %struct.word_type, %struct.word_type* %627, i32 0, i32 0
  %629 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %628, i32 0, i64 0
  %630 = getelementptr inbounds %struct.LIST, %struct.LIST* %629, i32 0, i32 1
  store %union.rec* %625, %union.rec** %630, align 8
  br label %631

; <label>:631                                     ; preds = %590, %588
  %632 = phi %union.rec* [ %589, %588 ], [ %625, %590 ]
  br label %633

; <label>:633                                     ; preds = %631, %583
  %634 = phi %union.rec* [ %584, %583 ], [ %632, %631 ]
  %635 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %635, %union.rec** @zz_res, align 8
  %636 = load %union.rec*, %union.rec** %og_par, align 8
  store %union.rec* %636, %union.rec** @zz_hold, align 8
  %637 = load %union.rec*, %union.rec** @zz_hold, align 8
  %638 = icmp eq %union.rec* %637, null
  br i1 %638, label %639, label %641

; <label>:639                                     ; preds = %633
  %640 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %689

; <label>:641                                     ; preds = %633
  %642 = load %union.rec*, %union.rec** @zz_res, align 8
  %643 = icmp eq %union.rec* %642, null
  br i1 %643, label %644, label %646

; <label>:644                                     ; preds = %641
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %687

; <label>:646                                     ; preds = %641
  %647 = load %union.rec*, %union.rec** @zz_hold, align 8
  %648 = bitcast %union.rec* %647 to %struct.word_type*
  %649 = getelementptr inbounds %struct.word_type, %struct.word_type* %648, i32 0, i32 0
  %650 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %649, i32 0, i64 1
  %651 = getelementptr inbounds %struct.LIST, %struct.LIST* %650, i32 0, i32 0
  %652 = load %union.rec*, %union.rec** %651, align 8
  store %union.rec* %652, %union.rec** @zz_tmp, align 8
  %653 = load %union.rec*, %union.rec** @zz_res, align 8
  %654 = bitcast %union.rec* %653 to %struct.word_type*
  %655 = getelementptr inbounds %struct.word_type, %struct.word_type* %654, i32 0, i32 0
  %656 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %655, i32 0, i64 1
  %657 = getelementptr inbounds %struct.LIST, %struct.LIST* %656, i32 0, i32 0
  %658 = load %union.rec*, %union.rec** %657, align 8
  %659 = load %union.rec*, %union.rec** @zz_hold, align 8
  %660 = bitcast %union.rec* %659 to %struct.word_type*
  %661 = getelementptr inbounds %struct.word_type, %struct.word_type* %660, i32 0, i32 0
  %662 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %661, i32 0, i64 1
  %663 = getelementptr inbounds %struct.LIST, %struct.LIST* %662, i32 0, i32 0
  store %union.rec* %658, %union.rec** %663, align 8
  %664 = load %union.rec*, %union.rec** @zz_hold, align 8
  %665 = load %union.rec*, %union.rec** @zz_res, align 8
  %666 = bitcast %union.rec* %665 to %struct.word_type*
  %667 = getelementptr inbounds %struct.word_type, %struct.word_type* %666, i32 0, i32 0
  %668 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %667, i32 0, i64 1
  %669 = getelementptr inbounds %struct.LIST, %struct.LIST* %668, i32 0, i32 0
  %670 = load %union.rec*, %union.rec** %669, align 8
  %671 = bitcast %union.rec* %670 to %struct.word_type*
  %672 = getelementptr inbounds %struct.word_type, %struct.word_type* %671, i32 0, i32 0
  %673 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %672, i32 0, i64 1
  %674 = getelementptr inbounds %struct.LIST, %struct.LIST* %673, i32 0, i32 1
  store %union.rec* %664, %union.rec** %674, align 8
  %675 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %676 = load %union.rec*, %union.rec** @zz_res, align 8
  %677 = bitcast %union.rec* %676 to %struct.word_type*
  %678 = getelementptr inbounds %struct.word_type, %struct.word_type* %677, i32 0, i32 0
  %679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %678, i32 0, i64 1
  %680 = getelementptr inbounds %struct.LIST, %struct.LIST* %679, i32 0, i32 0
  store %union.rec* %675, %union.rec** %680, align 8
  %681 = load %union.rec*, %union.rec** @zz_res, align 8
  %682 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %683 = bitcast %union.rec* %682 to %struct.word_type*
  %684 = getelementptr inbounds %struct.word_type, %struct.word_type* %683, i32 0, i32 0
  %685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %684, i32 0, i64 1
  %686 = getelementptr inbounds %struct.LIST, %struct.LIST* %685, i32 0, i32 1
  store %union.rec* %681, %union.rec** %686, align 8
  br label %687

; <label>:687                                     ; preds = %646, %644
  %688 = phi %union.rec* [ %645, %644 ], [ %681, %646 ]
  br label %689

; <label>:689                                     ; preds = %687, %639
  %690 = phi %union.rec* [ %640, %639 ], [ %688, %687 ]
  %691 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %692 = zext i8 %691 to i32
  store i32 %692, i32* @zz_size, align 4
  %693 = sext i32 %692 to i64
  %694 = icmp uge i64 %693, 265
  br i1 %694, label %695, label %698

; <label>:695                                     ; preds = %689
  %696 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %697 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %696)
  br label %723

; <label>:698                                     ; preds = %689
  %699 = load i32, i32* @zz_size, align 4
  %700 = sext i32 %699 to i64
  %701 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %700
  %702 = load %union.rec*, %union.rec** %701, align 8
  %703 = icmp eq %union.rec* %702, null
  br i1 %703, label %704, label %708

; <label>:704                                     ; preds = %698
  %705 = load i32, i32* @zz_size, align 4
  %706 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %707 = call %union.rec* @GetMemory(i32 %705, %struct.FILE_POS* %706)
  store %union.rec* %707, %union.rec** @zz_hold, align 8
  br label %722

; <label>:708                                     ; preds = %698
  %709 = load i32, i32* @zz_size, align 4
  %710 = sext i32 %709 to i64
  %711 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %710
  %712 = load %union.rec*, %union.rec** %711, align 8
  store %union.rec* %712, %union.rec** @zz_hold, align 8
  store %union.rec* %712, %union.rec** @zz_hold, align 8
  %713 = load %union.rec*, %union.rec** @zz_hold, align 8
  %714 = bitcast %union.rec* %713 to %struct.word_type*
  %715 = getelementptr inbounds %struct.word_type, %struct.word_type* %714, i32 0, i32 0
  %716 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %715, i32 0, i64 0
  %717 = getelementptr inbounds %struct.LIST, %struct.LIST* %716, i32 0, i32 0
  %718 = load %union.rec*, %union.rec** %717, align 8
  %719 = load i32, i32* @zz_size, align 4
  %720 = sext i32 %719 to i64
  %721 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %720
  store %union.rec* %718, %union.rec** %721, align 8
  br label %722

; <label>:722                                     ; preds = %708, %704
  br label %723

; <label>:723                                     ; preds = %722, %695
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = bitcast %union.rec* %724 to %struct.word_type*
  %726 = getelementptr inbounds %struct.word_type, %struct.word_type* %725, i32 0, i32 1
  %727 = bitcast %union.FIRST_UNION* %726 to %struct.anon*
  %728 = getelementptr inbounds %struct.anon, %struct.anon* %727, i32 0, i32 0
  store i8 17, i8* %728, align 1
  %729 = load %union.rec*, %union.rec** @zz_hold, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 0
  %733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %732, i32 0, i64 1
  %734 = getelementptr inbounds %struct.LIST, %struct.LIST* %733, i32 0, i32 1
  store %union.rec* %729, %union.rec** %734, align 8
  %735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %736 = bitcast %union.rec* %735 to %struct.word_type*
  %737 = getelementptr inbounds %struct.word_type, %struct.word_type* %736, i32 0, i32 0
  %738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %737, i32 0, i64 1
  %739 = getelementptr inbounds %struct.LIST, %struct.LIST* %738, i32 0, i32 0
  store %union.rec* %729, %union.rec** %739, align 8
  %740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 0
  %743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %742, i32 0, i64 0
  %744 = getelementptr inbounds %struct.LIST, %struct.LIST* %743, i32 0, i32 1
  store %union.rec* %729, %union.rec** %744, align 8
  %745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %746 = bitcast %union.rec* %745 to %struct.word_type*
  %747 = getelementptr inbounds %struct.word_type, %struct.word_type* %746, i32 0, i32 0
  %748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %747, i32 0, i64 0
  %749 = getelementptr inbounds %struct.LIST, %struct.LIST* %748, i32 0, i32 0
  store %union.rec* %729, %union.rec** %749, align 8
  store %union.rec* %729, %union.rec** %para, align 8
  %750 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %751 = zext i8 %750 to i32
  store i32 %751, i32* @zz_size, align 4
  %752 = sext i32 %751 to i64
  %753 = icmp uge i64 %752, 265
  br i1 %753, label %754, label %757

; <label>:754                                     ; preds = %723
  %755 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %756 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %755)
  br label %782

; <label>:757                                     ; preds = %723
  %758 = load i32, i32* @zz_size, align 4
  %759 = sext i32 %758 to i64
  %760 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %759
  %761 = load %union.rec*, %union.rec** %760, align 8
  %762 = icmp eq %union.rec* %761, null
  br i1 %762, label %763, label %767

; <label>:763                                     ; preds = %757
  %764 = load i32, i32* @zz_size, align 4
  %765 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %766 = call %union.rec* @GetMemory(i32 %764, %struct.FILE_POS* %765)
  store %union.rec* %766, %union.rec** @zz_hold, align 8
  br label %781

; <label>:767                                     ; preds = %757
  %768 = load i32, i32* @zz_size, align 4
  %769 = sext i32 %768 to i64
  %770 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %769
  %771 = load %union.rec*, %union.rec** %770, align 8
  store %union.rec* %771, %union.rec** @zz_hold, align 8
  store %union.rec* %771, %union.rec** @zz_hold, align 8
  %772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %773 = bitcast %union.rec* %772 to %struct.word_type*
  %774 = getelementptr inbounds %struct.word_type, %struct.word_type* %773, i32 0, i32 0
  %775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %774, i32 0, i64 0
  %776 = getelementptr inbounds %struct.LIST, %struct.LIST* %775, i32 0, i32 0
  %777 = load %union.rec*, %union.rec** %776, align 8
  %778 = load i32, i32* @zz_size, align 4
  %779 = sext i32 %778 to i64
  %780 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %779
  store %union.rec* %777, %union.rec** %780, align 8
  br label %781

; <label>:781                                     ; preds = %767, %763
  br label %782

; <label>:782                                     ; preds = %781, %754
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %784 = bitcast %union.rec* %783 to %struct.word_type*
  %785 = getelementptr inbounds %struct.word_type, %struct.word_type* %784, i32 0, i32 1
  %786 = bitcast %union.FIRST_UNION* %785 to %struct.anon*
  %787 = getelementptr inbounds %struct.anon, %struct.anon* %786, i32 0, i32 0
  store i8 0, i8* %787, align 1
  %788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %789 = load %union.rec*, %union.rec** @zz_hold, align 8
  %790 = bitcast %union.rec* %789 to %struct.word_type*
  %791 = getelementptr inbounds %struct.word_type, %struct.word_type* %790, i32 0, i32 0
  %792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %791, i32 0, i64 1
  %793 = getelementptr inbounds %struct.LIST, %struct.LIST* %792, i32 0, i32 1
  store %union.rec* %788, %union.rec** %793, align 8
  %794 = load %union.rec*, %union.rec** @zz_hold, align 8
  %795 = bitcast %union.rec* %794 to %struct.word_type*
  %796 = getelementptr inbounds %struct.word_type, %struct.word_type* %795, i32 0, i32 0
  %797 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %796, i32 0, i64 1
  %798 = getelementptr inbounds %struct.LIST, %struct.LIST* %797, i32 0, i32 0
  store %union.rec* %788, %union.rec** %798, align 8
  %799 = load %union.rec*, %union.rec** @zz_hold, align 8
  %800 = bitcast %union.rec* %799 to %struct.word_type*
  %801 = getelementptr inbounds %struct.word_type, %struct.word_type* %800, i32 0, i32 0
  %802 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %801, i32 0, i64 0
  %803 = getelementptr inbounds %struct.LIST, %struct.LIST* %802, i32 0, i32 1
  store %union.rec* %788, %union.rec** %803, align 8
  %804 = load %union.rec*, %union.rec** @zz_hold, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 0
  %807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %806, i32 0, i64 0
  %808 = getelementptr inbounds %struct.LIST, %struct.LIST* %807, i32 0, i32 0
  store %union.rec* %788, %union.rec** %808, align 8
  store %union.rec* %788, %union.rec** @xx_link, align 8
  %809 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %809, %union.rec** @zz_res, align 8
  %810 = load %union.rec*, %union.rec** %og_par, align 8
  store %union.rec* %810, %union.rec** @zz_hold, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %812 = icmp eq %union.rec* %811, null
  br i1 %812, label %813, label %815

; <label>:813                                     ; preds = %782
  %814 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %863

; <label>:815                                     ; preds = %782
  %816 = load %union.rec*, %union.rec** @zz_res, align 8
  %817 = icmp eq %union.rec* %816, null
  br i1 %817, label %818, label %820

; <label>:818                                     ; preds = %815
  %819 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %861

; <label>:820                                     ; preds = %815
  %821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 0
  %824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %823, i32 0, i64 0
  %825 = getelementptr inbounds %struct.LIST, %struct.LIST* %824, i32 0, i32 0
  %826 = load %union.rec*, %union.rec** %825, align 8
  store %union.rec* %826, %union.rec** @zz_tmp, align 8
  %827 = load %union.rec*, %union.rec** @zz_res, align 8
  %828 = bitcast %union.rec* %827 to %struct.word_type*
  %829 = getelementptr inbounds %struct.word_type, %struct.word_type* %828, i32 0, i32 0
  %830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %829, i32 0, i64 0
  %831 = getelementptr inbounds %struct.LIST, %struct.LIST* %830, i32 0, i32 0
  %832 = load %union.rec*, %union.rec** %831, align 8
  %833 = load %union.rec*, %union.rec** @zz_hold, align 8
  %834 = bitcast %union.rec* %833 to %struct.word_type*
  %835 = getelementptr inbounds %struct.word_type, %struct.word_type* %834, i32 0, i32 0
  %836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %835, i32 0, i64 0
  %837 = getelementptr inbounds %struct.LIST, %struct.LIST* %836, i32 0, i32 0
  store %union.rec* %832, %union.rec** %837, align 8
  %838 = load %union.rec*, %union.rec** @zz_hold, align 8
  %839 = load %union.rec*, %union.rec** @zz_res, align 8
  %840 = bitcast %union.rec* %839 to %struct.word_type*
  %841 = getelementptr inbounds %struct.word_type, %struct.word_type* %840, i32 0, i32 0
  %842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %841, i32 0, i64 0
  %843 = getelementptr inbounds %struct.LIST, %struct.LIST* %842, i32 0, i32 0
  %844 = load %union.rec*, %union.rec** %843, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 0
  %847 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %846, i32 0, i64 0
  %848 = getelementptr inbounds %struct.LIST, %struct.LIST* %847, i32 0, i32 1
  store %union.rec* %838, %union.rec** %848, align 8
  %849 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %850 = load %union.rec*, %union.rec** @zz_res, align 8
  %851 = bitcast %union.rec* %850 to %struct.word_type*
  %852 = getelementptr inbounds %struct.word_type, %struct.word_type* %851, i32 0, i32 0
  %853 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %852, i32 0, i64 0
  %854 = getelementptr inbounds %struct.LIST, %struct.LIST* %853, i32 0, i32 0
  store %union.rec* %849, %union.rec** %854, align 8
  %855 = load %union.rec*, %union.rec** @zz_res, align 8
  %856 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %857 = bitcast %union.rec* %856 to %struct.word_type*
  %858 = getelementptr inbounds %struct.word_type, %struct.word_type* %857, i32 0, i32 0
  %859 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %858, i32 0, i64 0
  %860 = getelementptr inbounds %struct.LIST, %struct.LIST* %859, i32 0, i32 1
  store %union.rec* %855, %union.rec** %860, align 8
  br label %861

; <label>:861                                     ; preds = %820, %818
  %862 = phi %union.rec* [ %819, %818 ], [ %855, %820 ]
  br label %863

; <label>:863                                     ; preds = %861, %813
  %864 = phi %union.rec* [ %814, %813 ], [ %862, %861 ]
  %865 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %865, %union.rec** @zz_res, align 8
  %866 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %866, %union.rec** @zz_hold, align 8
  %867 = load %union.rec*, %union.rec** @zz_hold, align 8
  %868 = icmp eq %union.rec* %867, null
  br i1 %868, label %869, label %871

; <label>:869                                     ; preds = %863
  %870 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %919

; <label>:871                                     ; preds = %863
  %872 = load %union.rec*, %union.rec** @zz_res, align 8
  %873 = icmp eq %union.rec* %872, null
  br i1 %873, label %874, label %876

; <label>:874                                     ; preds = %871
  %875 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %917

; <label>:876                                     ; preds = %871
  %877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 0
  %880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %879, i32 0, i64 1
  %881 = getelementptr inbounds %struct.LIST, %struct.LIST* %880, i32 0, i32 0
  %882 = load %union.rec*, %union.rec** %881, align 8
  store %union.rec* %882, %union.rec** @zz_tmp, align 8
  %883 = load %union.rec*, %union.rec** @zz_res, align 8
  %884 = bitcast %union.rec* %883 to %struct.word_type*
  %885 = getelementptr inbounds %struct.word_type, %struct.word_type* %884, i32 0, i32 0
  %886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %885, i32 0, i64 1
  %887 = getelementptr inbounds %struct.LIST, %struct.LIST* %886, i32 0, i32 0
  %888 = load %union.rec*, %union.rec** %887, align 8
  %889 = load %union.rec*, %union.rec** @zz_hold, align 8
  %890 = bitcast %union.rec* %889 to %struct.word_type*
  %891 = getelementptr inbounds %struct.word_type, %struct.word_type* %890, i32 0, i32 0
  %892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %891, i32 0, i64 1
  %893 = getelementptr inbounds %struct.LIST, %struct.LIST* %892, i32 0, i32 0
  store %union.rec* %888, %union.rec** %893, align 8
  %894 = load %union.rec*, %union.rec** @zz_hold, align 8
  %895 = load %union.rec*, %union.rec** @zz_res, align 8
  %896 = bitcast %union.rec* %895 to %struct.word_type*
  %897 = getelementptr inbounds %struct.word_type, %struct.word_type* %896, i32 0, i32 0
  %898 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %897, i32 0, i64 1
  %899 = getelementptr inbounds %struct.LIST, %struct.LIST* %898, i32 0, i32 0
  %900 = load %union.rec*, %union.rec** %899, align 8
  %901 = bitcast %union.rec* %900 to %struct.word_type*
  %902 = getelementptr inbounds %struct.word_type, %struct.word_type* %901, i32 0, i32 0
  %903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %902, i32 0, i64 1
  %904 = getelementptr inbounds %struct.LIST, %struct.LIST* %903, i32 0, i32 1
  store %union.rec* %894, %union.rec** %904, align 8
  %905 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %906 = load %union.rec*, %union.rec** @zz_res, align 8
  %907 = bitcast %union.rec* %906 to %struct.word_type*
  %908 = getelementptr inbounds %struct.word_type, %struct.word_type* %907, i32 0, i32 0
  %909 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %908, i32 0, i64 1
  %910 = getelementptr inbounds %struct.LIST, %struct.LIST* %909, i32 0, i32 0
  store %union.rec* %905, %union.rec** %910, align 8
  %911 = load %union.rec*, %union.rec** @zz_res, align 8
  %912 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %913 = bitcast %union.rec* %912 to %struct.word_type*
  %914 = getelementptr inbounds %struct.word_type, %struct.word_type* %913, i32 0, i32 0
  %915 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %914, i32 0, i64 1
  %916 = getelementptr inbounds %struct.LIST, %struct.LIST* %915, i32 0, i32 1
  store %union.rec* %911, %union.rec** %916, align 8
  br label %917

; <label>:917                                     ; preds = %876, %874
  %918 = phi %union.rec* [ %875, %874 ], [ %911, %876 ]
  br label %919

; <label>:919                                     ; preds = %917, %869
  %920 = phi %union.rec* [ %870, %869 ], [ %918, %917 ]
  %921 = load i32, i32* %hyph_used, align 4
  %922 = icmp ne i32 %921, 0
  br i1 %922, label %923, label %1100

; <label>:923                                     ; preds = %919
  %924 = load %union.rec*, %union.rec** %1, align 8
  %925 = bitcast %union.rec* %924 to %struct.word_type*
  %926 = getelementptr inbounds %struct.word_type, %struct.word_type* %925, i32 0, i32 1
  %927 = bitcast %union.FIRST_UNION* %926 to %struct.FILE_POS*
  %928 = call %union.rec* @MakeWord(i32 11, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.18, i32 0, i32 0), %struct.FILE_POS* %927)
  store %union.rec* %928, %union.rec** %wd, align 8
  %929 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %930 = zext i8 %929 to i32
  store i32 %930, i32* @zz_size, align 4
  %931 = sext i32 %930 to i64
  %932 = icmp uge i64 %931, 265
  br i1 %932, label %933, label %936

; <label>:933                                     ; preds = %923
  %934 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %935 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %934)
  br label %961

; <label>:936                                     ; preds = %923
  %937 = load i32, i32* @zz_size, align 4
  %938 = sext i32 %937 to i64
  %939 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %938
  %940 = load %union.rec*, %union.rec** %939, align 8
  %941 = icmp eq %union.rec* %940, null
  br i1 %941, label %942, label %946

; <label>:942                                     ; preds = %936
  %943 = load i32, i32* @zz_size, align 4
  %944 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %945 = call %union.rec* @GetMemory(i32 %943, %struct.FILE_POS* %944)
  store %union.rec* %945, %union.rec** @zz_hold, align 8
  br label %960

; <label>:946                                     ; preds = %936
  %947 = load i32, i32* @zz_size, align 4
  %948 = sext i32 %947 to i64
  %949 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %948
  %950 = load %union.rec*, %union.rec** %949, align 8
  store %union.rec* %950, %union.rec** @zz_hold, align 8
  store %union.rec* %950, %union.rec** @zz_hold, align 8
  %951 = load %union.rec*, %union.rec** @zz_hold, align 8
  %952 = bitcast %union.rec* %951 to %struct.word_type*
  %953 = getelementptr inbounds %struct.word_type, %struct.word_type* %952, i32 0, i32 0
  %954 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %953, i32 0, i64 0
  %955 = getelementptr inbounds %struct.LIST, %struct.LIST* %954, i32 0, i32 0
  %956 = load %union.rec*, %union.rec** %955, align 8
  %957 = load i32, i32* @zz_size, align 4
  %958 = sext i32 %957 to i64
  %959 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %958
  store %union.rec* %956, %union.rec** %959, align 8
  br label %960

; <label>:960                                     ; preds = %946, %942
  br label %961

; <label>:961                                     ; preds = %960, %933
  %962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %963 = bitcast %union.rec* %962 to %struct.word_type*
  %964 = getelementptr inbounds %struct.word_type, %struct.word_type* %963, i32 0, i32 1
  %965 = bitcast %union.FIRST_UNION* %964 to %struct.anon*
  %966 = getelementptr inbounds %struct.anon, %struct.anon* %965, i32 0, i32 0
  store i8 0, i8* %966, align 1
  %967 = load %union.rec*, %union.rec** @zz_hold, align 8
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 0
  %971 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %970, i32 0, i64 1
  %972 = getelementptr inbounds %struct.LIST, %struct.LIST* %971, i32 0, i32 1
  store %union.rec* %967, %union.rec** %972, align 8
  %973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %974 = bitcast %union.rec* %973 to %struct.word_type*
  %975 = getelementptr inbounds %struct.word_type, %struct.word_type* %974, i32 0, i32 0
  %976 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %975, i32 0, i64 1
  %977 = getelementptr inbounds %struct.LIST, %struct.LIST* %976, i32 0, i32 0
  store %union.rec* %967, %union.rec** %977, align 8
  %978 = load %union.rec*, %union.rec** @zz_hold, align 8
  %979 = bitcast %union.rec* %978 to %struct.word_type*
  %980 = getelementptr inbounds %struct.word_type, %struct.word_type* %979, i32 0, i32 0
  %981 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %980, i32 0, i64 0
  %982 = getelementptr inbounds %struct.LIST, %struct.LIST* %981, i32 0, i32 1
  store %union.rec* %967, %union.rec** %982, align 8
  %983 = load %union.rec*, %union.rec** @zz_hold, align 8
  %984 = bitcast %union.rec* %983 to %struct.word_type*
  %985 = getelementptr inbounds %struct.word_type, %struct.word_type* %984, i32 0, i32 0
  %986 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %985, i32 0, i64 0
  %987 = getelementptr inbounds %struct.LIST, %struct.LIST* %986, i32 0, i32 0
  store %union.rec* %967, %union.rec** %987, align 8
  store %union.rec* %967, %union.rec** @xx_link, align 8
  %988 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %988, %union.rec** @zz_res, align 8
  %989 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %989, %union.rec** @zz_hold, align 8
  %990 = load %union.rec*, %union.rec** @zz_hold, align 8
  %991 = icmp eq %union.rec* %990, null
  br i1 %991, label %992, label %994

; <label>:992                                     ; preds = %961
  %993 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1042

; <label>:994                                     ; preds = %961
  %995 = load %union.rec*, %union.rec** @zz_res, align 8
  %996 = icmp eq %union.rec* %995, null
  br i1 %996, label %997, label %999

; <label>:997                                     ; preds = %994
  %998 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1040

; <label>:999                                     ; preds = %994
  %1000 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1001 = bitcast %union.rec* %1000 to %struct.word_type*
  %1002 = getelementptr inbounds %struct.word_type, %struct.word_type* %1001, i32 0, i32 0
  %1003 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1002, i32 0, i64 0
  %1004 = getelementptr inbounds %struct.LIST, %struct.LIST* %1003, i32 0, i32 0
  %1005 = load %union.rec*, %union.rec** %1004, align 8
  store %union.rec* %1005, %union.rec** @zz_tmp, align 8
  %1006 = load %union.rec*, %union.rec** @zz_res, align 8
  %1007 = bitcast %union.rec* %1006 to %struct.word_type*
  %1008 = getelementptr inbounds %struct.word_type, %struct.word_type* %1007, i32 0, i32 0
  %1009 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1008, i32 0, i64 0
  %1010 = getelementptr inbounds %struct.LIST, %struct.LIST* %1009, i32 0, i32 0
  %1011 = load %union.rec*, %union.rec** %1010, align 8
  %1012 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1013 = bitcast %union.rec* %1012 to %struct.word_type*
  %1014 = getelementptr inbounds %struct.word_type, %struct.word_type* %1013, i32 0, i32 0
  %1015 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1014, i32 0, i64 0
  %1016 = getelementptr inbounds %struct.LIST, %struct.LIST* %1015, i32 0, i32 0
  store %union.rec* %1011, %union.rec** %1016, align 8
  %1017 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1018 = load %union.rec*, %union.rec** @zz_res, align 8
  %1019 = bitcast %union.rec* %1018 to %struct.word_type*
  %1020 = getelementptr inbounds %struct.word_type, %struct.word_type* %1019, i32 0, i32 0
  %1021 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1020, i32 0, i64 0
  %1022 = getelementptr inbounds %struct.LIST, %struct.LIST* %1021, i32 0, i32 0
  %1023 = load %union.rec*, %union.rec** %1022, align 8
  %1024 = bitcast %union.rec* %1023 to %struct.word_type*
  %1025 = getelementptr inbounds %struct.word_type, %struct.word_type* %1024, i32 0, i32 0
  %1026 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1025, i32 0, i64 0
  %1027 = getelementptr inbounds %struct.LIST, %struct.LIST* %1026, i32 0, i32 1
  store %union.rec* %1017, %union.rec** %1027, align 8
  %1028 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1029 = load %union.rec*, %union.rec** @zz_res, align 8
  %1030 = bitcast %union.rec* %1029 to %struct.word_type*
  %1031 = getelementptr inbounds %struct.word_type, %struct.word_type* %1030, i32 0, i32 0
  %1032 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1031, i32 0, i64 0
  %1033 = getelementptr inbounds %struct.LIST, %struct.LIST* %1032, i32 0, i32 0
  store %union.rec* %1028, %union.rec** %1033, align 8
  %1034 = load %union.rec*, %union.rec** @zz_res, align 8
  %1035 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1036 = bitcast %union.rec* %1035 to %struct.word_type*
  %1037 = getelementptr inbounds %struct.word_type, %struct.word_type* %1036, i32 0, i32 0
  %1038 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1037, i32 0, i64 0
  %1039 = getelementptr inbounds %struct.LIST, %struct.LIST* %1038, i32 0, i32 1
  store %union.rec* %1034, %union.rec** %1039, align 8
  br label %1040

; <label>:1040                                    ; preds = %999, %997
  %1041 = phi %union.rec* [ %998, %997 ], [ %1034, %999 ]
  br label %1042

; <label>:1042                                    ; preds = %1040, %992
  %1043 = phi %union.rec* [ %993, %992 ], [ %1041, %1040 ]
  %1044 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1044, %union.rec** @zz_res, align 8
  %1045 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %1045, %union.rec** @zz_hold, align 8
  %1046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1047 = icmp eq %union.rec* %1046, null
  br i1 %1047, label %1048, label %1050

; <label>:1048                                    ; preds = %1042
  %1049 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1098

; <label>:1050                                    ; preds = %1042
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
  br label %1100

; <label>:1100                                    ; preds = %1098, %919
  store i32 0, i32* %compcount, align 4
  %1101 = load %union.rec*, %union.rec** %1, align 8
  %1102 = bitcast %union.rec* %1101 to %struct.head_type*
  %1103 = getelementptr inbounds %struct.head_type, %struct.head_type* %1102, i32 0, i32 8
  %1104 = load %union.rec*, %union.rec** %1103, align 8
  %1105 = bitcast %union.rec* %1104 to %struct.word_type*
  %1106 = getelementptr inbounds %struct.word_type, %struct.word_type* %1105, i32 0, i32 0
  %1107 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1106, i32 0, i64 0
  %1108 = getelementptr inbounds %struct.LIST, %struct.LIST* %1107, i32 0, i32 1
  %1109 = load %union.rec*, %union.rec** %1108, align 8
  store %union.rec* %1109, %union.rec** %link, align 8
  br label %1110

; <label>:1110                                    ; preds = %1689, %1100
  %1111 = load %union.rec*, %union.rec** %link, align 8
  %1112 = load %union.rec*, %union.rec** %1, align 8
  %1113 = bitcast %union.rec* %1112 to %struct.head_type*
  %1114 = getelementptr inbounds %struct.head_type, %struct.head_type* %1113, i32 0, i32 8
  %1115 = load %union.rec*, %union.rec** %1114, align 8
  %1116 = icmp ne %union.rec* %1111, %1115
  br i1 %1116, label %1117, label %1696

; <label>:1117                                    ; preds = %1110
  %1118 = load %union.rec*, %union.rec** %link, align 8
  %1119 = bitcast %union.rec* %1118 to %struct.word_type*
  %1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %1119, i32 0, i32 0
  %1121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1120, i32 0, i64 1
  %1122 = getelementptr inbounds %struct.LIST, %struct.LIST* %1121, i32 0, i32 0
  %1123 = load %union.rec*, %union.rec** %1122, align 8
  store %union.rec* %1123, %union.rec** %y, align 8
  br label %1124

; <label>:1124                                    ; preds = %1134, %1117
  %1125 = load %union.rec*, %union.rec** %y, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 1
  %1128 = bitcast %union.FIRST_UNION* %1127 to %struct.anon*
  %1129 = getelementptr inbounds %struct.anon, %struct.anon* %1128, i32 0, i32 0
  %1130 = load i8, i8* %1129, align 1
  %1131 = zext i8 %1130 to i32
  %1132 = icmp eq i32 %1131, 0
  br i1 %1132, label %1133, label %1141

; <label>:1133                                    ; preds = %1124
  br label %1134

; <label>:1134                                    ; preds = %1133
  %1135 = load %union.rec*, %union.rec** %y, align 8
  %1136 = bitcast %union.rec* %1135 to %struct.word_type*
  %1137 = getelementptr inbounds %struct.word_type, %struct.word_type* %1136, i32 0, i32 0
  %1138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1137, i32 0, i64 1
  %1139 = getelementptr inbounds %struct.LIST, %struct.LIST* %1138, i32 0, i32 0
  %1140 = load %union.rec*, %union.rec** %1139, align 8
  store %union.rec* %1140, %union.rec** %y, align 8
  br label %1124

; <label>:1141                                    ; preds = %1124
  %1142 = load %union.rec*, %union.rec** %y, align 8
  %1143 = bitcast %union.rec* %1142 to %struct.word_type*
  %1144 = getelementptr inbounds %struct.word_type, %struct.word_type* %1143, i32 0, i32 1
  %1145 = bitcast %union.FIRST_UNION* %1144 to %struct.anon*
  %1146 = getelementptr inbounds %struct.anon, %struct.anon* %1145, i32 0, i32 0
  %1147 = load i8, i8* %1146, align 1
  %1148 = zext i8 %1147 to i32
  %1149 = icmp ne i32 %1148, 17
  br i1 %1149, label %1150, label %1151

; <label>:1150                                    ; preds = %1141
  br label %1689

; <label>:1151                                    ; preds = %1141
  store i32 0, i32* %count, align 4
  %1152 = load %union.rec*, %union.rec** %y, align 8
  %1153 = bitcast %union.rec* %1152 to %struct.word_type*
  %1154 = getelementptr inbounds %struct.word_type, %struct.word_type* %1153, i32 0, i32 0
  %1155 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1154, i32 0, i64 0
  %1156 = getelementptr inbounds %struct.LIST, %struct.LIST* %1155, i32 0, i32 1
  %1157 = load %union.rec*, %union.rec** %1156, align 8
  store %union.rec* %1157, %union.rec** %ylink, align 8
  br label %1158

; <label>:1158                                    ; preds = %1199, %1151
  %1159 = load %union.rec*, %union.rec** %ylink, align 8
  %1160 = load %union.rec*, %union.rec** %y, align 8
  %1161 = icmp ne %union.rec* %1159, %1160
  br i1 %1161, label %1162, label %1206

; <label>:1162                                    ; preds = %1158
  %1163 = load %union.rec*, %union.rec** %ylink, align 8
  %1164 = bitcast %union.rec* %1163 to %struct.word_type*
  %1165 = getelementptr inbounds %struct.word_type, %struct.word_type* %1164, i32 0, i32 0
  %1166 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1165, i32 0, i64 1
  %1167 = getelementptr inbounds %struct.LIST, %struct.LIST* %1166, i32 0, i32 0
  %1168 = load %union.rec*, %union.rec** %1167, align 8
  store %union.rec* %1168, %union.rec** %z, align 8
  br label %1169

; <label>:1169                                    ; preds = %1179, %1162
  %1170 = load %union.rec*, %union.rec** %z, align 8
  %1171 = bitcast %union.rec* %1170 to %struct.word_type*
  %1172 = getelementptr inbounds %struct.word_type, %struct.word_type* %1171, i32 0, i32 1
  %1173 = bitcast %union.FIRST_UNION* %1172 to %struct.anon*
  %1174 = getelementptr inbounds %struct.anon, %struct.anon* %1173, i32 0, i32 0
  %1175 = load i8, i8* %1174, align 1
  %1176 = zext i8 %1175 to i32
  %1177 = icmp eq i32 %1176, 0
  br i1 %1177, label %1178, label %1186

; <label>:1178                                    ; preds = %1169
  br label %1179

; <label>:1179                                    ; preds = %1178
  %1180 = load %union.rec*, %union.rec** %z, align 8
  %1181 = bitcast %union.rec* %1180 to %struct.word_type*
  %1182 = getelementptr inbounds %struct.word_type, %struct.word_type* %1181, i32 0, i32 0
  %1183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1182, i32 0, i64 1
  %1184 = getelementptr inbounds %struct.LIST, %struct.LIST* %1183, i32 0, i32 0
  %1185 = load %union.rec*, %union.rec** %1184, align 8
  store %union.rec* %1185, %union.rec** %z, align 8
  br label %1169

; <label>:1186                                    ; preds = %1169
  %1187 = load %union.rec*, %union.rec** %z, align 8
  %1188 = bitcast %union.rec* %1187 to %struct.word_type*
  %1189 = getelementptr inbounds %struct.word_type, %struct.word_type* %1188, i32 0, i32 1
  %1190 = bitcast %union.FIRST_UNION* %1189 to %struct.anon*
  %1191 = getelementptr inbounds %struct.anon, %struct.anon* %1190, i32 0, i32 0
  %1192 = load i8, i8* %1191, align 1
  %1193 = zext i8 %1192 to i32
  %1194 = icmp ne i32 %1193, 1
  br i1 %1194, label %1195, label %1198

; <label>:1195                                    ; preds = %1186
  %1196 = load i32, i32* %count, align 4
  %1197 = add nsw i32 %1196, 1
  store i32 %1197, i32* %count, align 4
  br label %1198

; <label>:1198                                    ; preds = %1195, %1186
  br label %1199

; <label>:1199                                    ; preds = %1198
  %1200 = load %union.rec*, %union.rec** %ylink, align 8
  %1201 = bitcast %union.rec* %1200 to %struct.word_type*
  %1202 = getelementptr inbounds %struct.word_type, %struct.word_type* %1201, i32 0, i32 0
  %1203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1202, i32 0, i64 0
  %1204 = getelementptr inbounds %struct.LIST, %struct.LIST* %1203, i32 0, i32 1
  %1205 = load %union.rec*, %union.rec** %1204, align 8
  store %union.rec* %1205, %union.rec** %ylink, align 8
  br label %1158

; <label>:1206                                    ; preds = %1158
  %1207 = load i32, i32* %count, align 4
  %1208 = call i8* @StringInt(i32 %1207)
  %1209 = load %union.rec*, %union.rec** %y, align 8
  %1210 = bitcast %union.rec* %1209 to %struct.word_type*
  %1211 = getelementptr inbounds %struct.word_type, %struct.word_type* %1210, i32 0, i32 1
  %1212 = bitcast %union.FIRST_UNION* %1211 to %struct.FILE_POS*
  %1213 = call %union.rec* @MakeWord(i32 11, i8* %1208, %struct.FILE_POS* %1212)
  store %union.rec* %1213, %union.rec** %wd, align 8
  %1214 = load %union.rec*, %union.rec** %para, align 8
  %1215 = bitcast %union.rec* %1214 to %struct.word_type*
  %1216 = getelementptr inbounds %struct.word_type, %struct.word_type* %1215, i32 0, i32 0
  %1217 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1216, i32 0, i64 0
  %1218 = getelementptr inbounds %struct.LIST, %struct.LIST* %1217, i32 0, i32 1
  %1219 = load %union.rec*, %union.rec** %1218, align 8
  %1220 = load %union.rec*, %union.rec** %para, align 8
  %1221 = icmp ne %union.rec* %1219, %1220
  br i1 %1221, label %1222, label %1517

; <label>:1222                                    ; preds = %1206
  %1223 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 1), align 1
  %1224 = zext i8 %1223 to i32
  store i32 %1224, i32* @zz_size, align 4
  %1225 = sext i32 %1224 to i64
  %1226 = icmp uge i64 %1225, 265
  br i1 %1226, label %1227, label %1230

; <label>:1227                                    ; preds = %1222
  %1228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1229 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1228)
  br label %1255

; <label>:1230                                    ; preds = %1222
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
  store i8 1, i8* %1260, align 1
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
  store %union.rec* %1261, %union.rec** %g, align 8
  %1282 = load %union.rec*, %union.rec** %g, align 8
  %1283 = bitcast %union.rec* %1282 to %struct.gapobj_type*
  %1284 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1283, i32 0, i32 3
  %1285 = bitcast %struct.GAP* %1284 to i16*
  %1286 = load i16, i16* %1285, align 4
  %1287 = and i16 %1286, -129
  store i16 %1287, i16* %1285, align 4
  %1288 = load %union.rec*, %union.rec** %g, align 8
  %1289 = bitcast %union.rec* %1288 to %struct.gapobj_type*
  %1290 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1289, i32 0, i32 3
  %1291 = bitcast %struct.GAP* %1290 to i16*
  %1292 = load i16, i16* %1291, align 4
  %1293 = and i16 %1292, -257
  store i16 %1293, i16* %1291, align 4
  %1294 = load %union.rec*, %union.rec** %g, align 8
  %1295 = bitcast %union.rec* %1294 to %struct.gapobj_type*
  %1296 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1295, i32 0, i32 3
  %1297 = bitcast %struct.GAP* %1296 to i16*
  %1298 = load i16, i16* %1297, align 4
  %1299 = and i16 %1298, -513
  %1300 = or i16 %1299, 512
  store i16 %1300, i16* %1297, align 4
  %1301 = load %union.rec*, %union.rec** %g, align 8
  %1302 = bitcast %union.rec* %1301 to %struct.gapobj_type*
  %1303 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1302, i32 0, i32 3
  %1304 = bitcast %struct.GAP* %1303 to i16*
  %1305 = load i16, i16* %1304, align 4
  %1306 = and i16 %1305, -7169
  %1307 = or i16 %1306, 1024
  store i16 %1307, i16* %1304, align 4
  %1308 = load %union.rec*, %union.rec** %g, align 8
  %1309 = bitcast %union.rec* %1308 to %struct.gapobj_type*
  %1310 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1309, i32 0, i32 3
  %1311 = bitcast %struct.GAP* %1310 to i16*
  %1312 = load i16, i16* %1311, align 4
  %1313 = and i16 %1312, 8191
  %1314 = or i16 %1313, 8192
  store i16 %1314, i16* %1311, align 4
  %1315 = load %union.rec*, %union.rec** %g, align 8
  %1316 = bitcast %union.rec* %1315 to %struct.gapobj_type*
  %1317 = getelementptr inbounds %struct.gapobj_type, %struct.gapobj_type* %1316, i32 0, i32 3
  %1318 = getelementptr inbounds %struct.GAP, %struct.GAP* %1317, i32 0, i32 1
  store i16 120, i16* %1318, align 2
  %1319 = load i32, i32* %compcount, align 4
  %1320 = add nsw i32 %1319, 1
  store i32 %1320, i32* %compcount, align 4
  %1321 = srem i32 %1320, 20
  %1322 = icmp eq i32 %1321, 0
  br i1 %1322, label %1323, label %1334

; <label>:1323                                    ; preds = %1255
  %1324 = load %union.rec*, %union.rec** %g, align 8
  %1325 = bitcast %union.rec* %1324 to %struct.word_type*
  %1326 = getelementptr inbounds %struct.word_type, %struct.word_type* %1325, i32 0, i32 2
  %1327 = bitcast %union.SECOND_UNION* %1326 to %struct.anon.0*
  %1328 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1327, i32 0, i32 1
  store i8 0, i8* %1328, align 1
  %1329 = load %union.rec*, %union.rec** %g, align 8
  %1330 = bitcast %union.rec* %1329 to %struct.word_type*
  %1331 = getelementptr inbounds %struct.word_type, %struct.word_type* %1330, i32 0, i32 2
  %1332 = bitcast %union.SECOND_UNION* %1331 to %struct.anon.0*
  %1333 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1332, i32 0, i32 2
  store i8 1, i8* %1333, align 1
  br label %1345

; <label>:1334                                    ; preds = %1255
  %1335 = load %union.rec*, %union.rec** %g, align 8
  %1336 = bitcast %union.rec* %1335 to %struct.word_type*
  %1337 = getelementptr inbounds %struct.word_type, %struct.word_type* %1336, i32 0, i32 2
  %1338 = bitcast %union.SECOND_UNION* %1337 to %struct.anon.0*
  %1339 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1338, i32 0, i32 1
  store i8 1, i8* %1339, align 1
  %1340 = load %union.rec*, %union.rec** %g, align 8
  %1341 = bitcast %union.rec* %1340 to %struct.word_type*
  %1342 = getelementptr inbounds %struct.word_type, %struct.word_type* %1341, i32 0, i32 2
  %1343 = bitcast %union.SECOND_UNION* %1342 to %struct.anon.0*
  %1344 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %1343, i32 0, i32 2
  store i8 0, i8* %1344, align 1
  br label %1345

; <label>:1345                                    ; preds = %1334, %1323
  %1346 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1347 = zext i8 %1346 to i32
  store i32 %1347, i32* @zz_size, align 4
  %1348 = sext i32 %1347 to i64
  %1349 = icmp uge i64 %1348, 265
  br i1 %1349, label %1350, label %1353

; <label>:1350                                    ; preds = %1345
  %1351 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1352 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1351)
  br label %1378

; <label>:1353                                    ; preds = %1345
  %1354 = load i32, i32* @zz_size, align 4
  %1355 = sext i32 %1354 to i64
  %1356 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1355
  %1357 = load %union.rec*, %union.rec** %1356, align 8
  %1358 = icmp eq %union.rec* %1357, null
  br i1 %1358, label %1359, label %1363

; <label>:1359                                    ; preds = %1353
  %1360 = load i32, i32* @zz_size, align 4
  %1361 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1362 = call %union.rec* @GetMemory(i32 %1360, %struct.FILE_POS* %1361)
  store %union.rec* %1362, %union.rec** @zz_hold, align 8
  br label %1377

; <label>:1363                                    ; preds = %1353
  %1364 = load i32, i32* @zz_size, align 4
  %1365 = sext i32 %1364 to i64
  %1366 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1365
  %1367 = load %union.rec*, %union.rec** %1366, align 8
  store %union.rec* %1367, %union.rec** @zz_hold, align 8
  store %union.rec* %1367, %union.rec** @zz_hold, align 8
  %1368 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1369 = bitcast %union.rec* %1368 to %struct.word_type*
  %1370 = getelementptr inbounds %struct.word_type, %struct.word_type* %1369, i32 0, i32 0
  %1371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1370, i32 0, i64 0
  %1372 = getelementptr inbounds %struct.LIST, %struct.LIST* %1371, i32 0, i32 0
  %1373 = load %union.rec*, %union.rec** %1372, align 8
  %1374 = load i32, i32* @zz_size, align 4
  %1375 = sext i32 %1374 to i64
  %1376 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1375
  store %union.rec* %1373, %union.rec** %1376, align 8
  br label %1377

; <label>:1377                                    ; preds = %1363, %1359
  br label %1378

; <label>:1378                                    ; preds = %1377, %1350
  %1379 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1380 = bitcast %union.rec* %1379 to %struct.word_type*
  %1381 = getelementptr inbounds %struct.word_type, %struct.word_type* %1380, i32 0, i32 1
  %1382 = bitcast %union.FIRST_UNION* %1381 to %struct.anon*
  %1383 = getelementptr inbounds %struct.anon, %struct.anon* %1382, i32 0, i32 0
  store i8 0, i8* %1383, align 1
  %1384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1385 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1386 = bitcast %union.rec* %1385 to %struct.word_type*
  %1387 = getelementptr inbounds %struct.word_type, %struct.word_type* %1386, i32 0, i32 0
  %1388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1387, i32 0, i64 1
  %1389 = getelementptr inbounds %struct.LIST, %struct.LIST* %1388, i32 0, i32 1
  store %union.rec* %1384, %union.rec** %1389, align 8
  %1390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1391 = bitcast %union.rec* %1390 to %struct.word_type*
  %1392 = getelementptr inbounds %struct.word_type, %struct.word_type* %1391, i32 0, i32 0
  %1393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1392, i32 0, i64 1
  %1394 = getelementptr inbounds %struct.LIST, %struct.LIST* %1393, i32 0, i32 0
  store %union.rec* %1384, %union.rec** %1394, align 8
  %1395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1396 = bitcast %union.rec* %1395 to %struct.word_type*
  %1397 = getelementptr inbounds %struct.word_type, %struct.word_type* %1396, i32 0, i32 0
  %1398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1397, i32 0, i64 0
  %1399 = getelementptr inbounds %struct.LIST, %struct.LIST* %1398, i32 0, i32 1
  store %union.rec* %1384, %union.rec** %1399, align 8
  %1400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1401 = bitcast %union.rec* %1400 to %struct.word_type*
  %1402 = getelementptr inbounds %struct.word_type, %struct.word_type* %1401, i32 0, i32 0
  %1403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1402, i32 0, i64 0
  %1404 = getelementptr inbounds %struct.LIST, %struct.LIST* %1403, i32 0, i32 0
  store %union.rec* %1384, %union.rec** %1404, align 8
  store %union.rec* %1384, %union.rec** @xx_link, align 8
  %1405 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1405, %union.rec** @zz_res, align 8
  %1406 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %1406, %union.rec** @zz_hold, align 8
  %1407 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1408 = icmp eq %union.rec* %1407, null
  br i1 %1408, label %1409, label %1411

; <label>:1409                                    ; preds = %1378
  %1410 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1459

; <label>:1411                                    ; preds = %1378
  %1412 = load %union.rec*, %union.rec** @zz_res, align 8
  %1413 = icmp eq %union.rec* %1412, null
  br i1 %1413, label %1414, label %1416

; <label>:1414                                    ; preds = %1411
  %1415 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1457

; <label>:1416                                    ; preds = %1411
  %1417 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1418 = bitcast %union.rec* %1417 to %struct.word_type*
  %1419 = getelementptr inbounds %struct.word_type, %struct.word_type* %1418, i32 0, i32 0
  %1420 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1419, i32 0, i64 0
  %1421 = getelementptr inbounds %struct.LIST, %struct.LIST* %1420, i32 0, i32 0
  %1422 = load %union.rec*, %union.rec** %1421, align 8
  store %union.rec* %1422, %union.rec** @zz_tmp, align 8
  %1423 = load %union.rec*, %union.rec** @zz_res, align 8
  %1424 = bitcast %union.rec* %1423 to %struct.word_type*
  %1425 = getelementptr inbounds %struct.word_type, %struct.word_type* %1424, i32 0, i32 0
  %1426 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1425, i32 0, i64 0
  %1427 = getelementptr inbounds %struct.LIST, %struct.LIST* %1426, i32 0, i32 0
  %1428 = load %union.rec*, %union.rec** %1427, align 8
  %1429 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1430 = bitcast %union.rec* %1429 to %struct.word_type*
  %1431 = getelementptr inbounds %struct.word_type, %struct.word_type* %1430, i32 0, i32 0
  %1432 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1431, i32 0, i64 0
  %1433 = getelementptr inbounds %struct.LIST, %struct.LIST* %1432, i32 0, i32 0
  store %union.rec* %1428, %union.rec** %1433, align 8
  %1434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1435 = load %union.rec*, %union.rec** @zz_res, align 8
  %1436 = bitcast %union.rec* %1435 to %struct.word_type*
  %1437 = getelementptr inbounds %struct.word_type, %struct.word_type* %1436, i32 0, i32 0
  %1438 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1437, i32 0, i64 0
  %1439 = getelementptr inbounds %struct.LIST, %struct.LIST* %1438, i32 0, i32 0
  %1440 = load %union.rec*, %union.rec** %1439, align 8
  %1441 = bitcast %union.rec* %1440 to %struct.word_type*
  %1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1442, i32 0, i64 0
  %1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %1443, i32 0, i32 1
  store %union.rec* %1434, %union.rec** %1444, align 8
  %1445 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1446 = load %union.rec*, %union.rec** @zz_res, align 8
  %1447 = bitcast %union.rec* %1446 to %struct.word_type*
  %1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %1447, i32 0, i32 0
  %1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1448, i32 0, i64 0
  %1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %1449, i32 0, i32 0
  store %union.rec* %1445, %union.rec** %1450, align 8
  %1451 = load %union.rec*, %union.rec** @zz_res, align 8
  %1452 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1453 = bitcast %union.rec* %1452 to %struct.word_type*
  %1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %1453, i32 0, i32 0
  %1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1454, i32 0, i64 0
  %1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %1455, i32 0, i32 1
  store %union.rec* %1451, %union.rec** %1456, align 8
  br label %1457

; <label>:1457                                    ; preds = %1416, %1414
  %1458 = phi %union.rec* [ %1415, %1414 ], [ %1451, %1416 ]
  br label %1459

; <label>:1459                                    ; preds = %1457, %1409
  %1460 = phi %union.rec* [ %1410, %1409 ], [ %1458, %1457 ]
  %1461 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1461, %union.rec** @zz_res, align 8
  %1462 = load %union.rec*, %union.rec** %g, align 8
  store %union.rec* %1462, %union.rec** @zz_hold, align 8
  %1463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1464 = icmp eq %union.rec* %1463, null
  br i1 %1464, label %1465, label %1467

; <label>:1465                                    ; preds = %1459
  %1466 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1515

; <label>:1467                                    ; preds = %1459
  %1468 = load %union.rec*, %union.rec** @zz_res, align 8
  %1469 = icmp eq %union.rec* %1468, null
  br i1 %1469, label %1470, label %1472

; <label>:1470                                    ; preds = %1467
  %1471 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1513

; <label>:1472                                    ; preds = %1467
  %1473 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1474 = bitcast %union.rec* %1473 to %struct.word_type*
  %1475 = getelementptr inbounds %struct.word_type, %struct.word_type* %1474, i32 0, i32 0
  %1476 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1475, i32 0, i64 1
  %1477 = getelementptr inbounds %struct.LIST, %struct.LIST* %1476, i32 0, i32 0
  %1478 = load %union.rec*, %union.rec** %1477, align 8
  store %union.rec* %1478, %union.rec** @zz_tmp, align 8
  %1479 = load %union.rec*, %union.rec** @zz_res, align 8
  %1480 = bitcast %union.rec* %1479 to %struct.word_type*
  %1481 = getelementptr inbounds %struct.word_type, %struct.word_type* %1480, i32 0, i32 0
  %1482 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1481, i32 0, i64 1
  %1483 = getelementptr inbounds %struct.LIST, %struct.LIST* %1482, i32 0, i32 0
  %1484 = load %union.rec*, %union.rec** %1483, align 8
  %1485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1486 = bitcast %union.rec* %1485 to %struct.word_type*
  %1487 = getelementptr inbounds %struct.word_type, %struct.word_type* %1486, i32 0, i32 0
  %1488 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1487, i32 0, i64 1
  %1489 = getelementptr inbounds %struct.LIST, %struct.LIST* %1488, i32 0, i32 0
  store %union.rec* %1484, %union.rec** %1489, align 8
  %1490 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1491 = load %union.rec*, %union.rec** @zz_res, align 8
  %1492 = bitcast %union.rec* %1491 to %struct.word_type*
  %1493 = getelementptr inbounds %struct.word_type, %struct.word_type* %1492, i32 0, i32 0
  %1494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1493, i32 0, i64 1
  %1495 = getelementptr inbounds %struct.LIST, %struct.LIST* %1494, i32 0, i32 0
  %1496 = load %union.rec*, %union.rec** %1495, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.word_type*
  %1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %1497, i32 0, i32 0
  %1499 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1498, i32 0, i64 1
  %1500 = getelementptr inbounds %struct.LIST, %struct.LIST* %1499, i32 0, i32 1
  store %union.rec* %1490, %union.rec** %1500, align 8
  %1501 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1502 = load %union.rec*, %union.rec** @zz_res, align 8
  %1503 = bitcast %union.rec* %1502 to %struct.word_type*
  %1504 = getelementptr inbounds %struct.word_type, %struct.word_type* %1503, i32 0, i32 0
  %1505 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1504, i32 0, i64 1
  %1506 = getelementptr inbounds %struct.LIST, %struct.LIST* %1505, i32 0, i32 0
  store %union.rec* %1501, %union.rec** %1506, align 8
  %1507 = load %union.rec*, %union.rec** @zz_res, align 8
  %1508 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1509 = bitcast %union.rec* %1508 to %struct.word_type*
  %1510 = getelementptr inbounds %struct.word_type, %struct.word_type* %1509, i32 0, i32 0
  %1511 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1510, i32 0, i64 1
  %1512 = getelementptr inbounds %struct.LIST, %struct.LIST* %1511, i32 0, i32 1
  store %union.rec* %1507, %union.rec** %1512, align 8
  br label %1513

; <label>:1513                                    ; preds = %1472, %1470
  %1514 = phi %union.rec* [ %1471, %1470 ], [ %1507, %1472 ]
  br label %1515

; <label>:1515                                    ; preds = %1513, %1465
  %1516 = phi %union.rec* [ %1466, %1465 ], [ %1514, %1513 ]
  br label %1517

; <label>:1517                                    ; preds = %1515, %1206
  %1518 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1519 = zext i8 %1518 to i32
  store i32 %1519, i32* @zz_size, align 4
  %1520 = sext i32 %1519 to i64
  %1521 = icmp uge i64 %1520, 265
  br i1 %1521, label %1522, label %1525

; <label>:1522                                    ; preds = %1517
  %1523 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1524 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.22, i32 0, i32 0), i32 1, %struct.FILE_POS* %1523)
  br label %1550

; <label>:1525                                    ; preds = %1517
  %1526 = load i32, i32* @zz_size, align 4
  %1527 = sext i32 %1526 to i64
  %1528 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1527
  %1529 = load %union.rec*, %union.rec** %1528, align 8
  %1530 = icmp eq %union.rec* %1529, null
  br i1 %1530, label %1531, label %1535

; <label>:1531                                    ; preds = %1525
  %1532 = load i32, i32* @zz_size, align 4
  %1533 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1534 = call %union.rec* @GetMemory(i32 %1532, %struct.FILE_POS* %1533)
  store %union.rec* %1534, %union.rec** @zz_hold, align 8
  br label %1549

; <label>:1535                                    ; preds = %1525
  %1536 = load i32, i32* @zz_size, align 4
  %1537 = sext i32 %1536 to i64
  %1538 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1537
  %1539 = load %union.rec*, %union.rec** %1538, align 8
  store %union.rec* %1539, %union.rec** @zz_hold, align 8
  store %union.rec* %1539, %union.rec** @zz_hold, align 8
  %1540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1541 = bitcast %union.rec* %1540 to %struct.word_type*
  %1542 = getelementptr inbounds %struct.word_type, %struct.word_type* %1541, i32 0, i32 0
  %1543 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1542, i32 0, i64 0
  %1544 = getelementptr inbounds %struct.LIST, %struct.LIST* %1543, i32 0, i32 0
  %1545 = load %union.rec*, %union.rec** %1544, align 8
  %1546 = load i32, i32* @zz_size, align 4
  %1547 = sext i32 %1546 to i64
  %1548 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1547
  store %union.rec* %1545, %union.rec** %1548, align 8
  br label %1549

; <label>:1549                                    ; preds = %1535, %1531
  br label %1550

; <label>:1550                                    ; preds = %1549, %1522
  %1551 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1552 = bitcast %union.rec* %1551 to %struct.word_type*
  %1553 = getelementptr inbounds %struct.word_type, %struct.word_type* %1552, i32 0, i32 1
  %1554 = bitcast %union.FIRST_UNION* %1553 to %struct.anon*
  %1555 = getelementptr inbounds %struct.anon, %struct.anon* %1554, i32 0, i32 0
  store i8 0, i8* %1555, align 1
  %1556 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1557 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1558 = bitcast %union.rec* %1557 to %struct.word_type*
  %1559 = getelementptr inbounds %struct.word_type, %struct.word_type* %1558, i32 0, i32 0
  %1560 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1559, i32 0, i64 1
  %1561 = getelementptr inbounds %struct.LIST, %struct.LIST* %1560, i32 0, i32 1
  store %union.rec* %1556, %union.rec** %1561, align 8
  %1562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1563 = bitcast %union.rec* %1562 to %struct.word_type*
  %1564 = getelementptr inbounds %struct.word_type, %struct.word_type* %1563, i32 0, i32 0
  %1565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1564, i32 0, i64 1
  %1566 = getelementptr inbounds %struct.LIST, %struct.LIST* %1565, i32 0, i32 0
  store %union.rec* %1556, %union.rec** %1566, align 8
  %1567 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1568 = bitcast %union.rec* %1567 to %struct.word_type*
  %1569 = getelementptr inbounds %struct.word_type, %struct.word_type* %1568, i32 0, i32 0
  %1570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1569, i32 0, i64 0
  %1571 = getelementptr inbounds %struct.LIST, %struct.LIST* %1570, i32 0, i32 1
  store %union.rec* %1556, %union.rec** %1571, align 8
  %1572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1573 = bitcast %union.rec* %1572 to %struct.word_type*
  %1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %1573, i32 0, i32 0
  %1575 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1574, i32 0, i64 0
  %1576 = getelementptr inbounds %struct.LIST, %struct.LIST* %1575, i32 0, i32 0
  store %union.rec* %1556, %union.rec** %1576, align 8
  store %union.rec* %1556, %union.rec** @xx_link, align 8
  %1577 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1577, %union.rec** @zz_res, align 8
  %1578 = load %union.rec*, %union.rec** %para, align 8
  store %union.rec* %1578, %union.rec** @zz_hold, align 8
  %1579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1580 = icmp eq %union.rec* %1579, null
  br i1 %1580, label %1581, label %1583

; <label>:1581                                    ; preds = %1550
  %1582 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1631

; <label>:1583                                    ; preds = %1550
  %1584 = load %union.rec*, %union.rec** @zz_res, align 8
  %1585 = icmp eq %union.rec* %1584, null
  br i1 %1585, label %1586, label %1588

; <label>:1586                                    ; preds = %1583
  %1587 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1629

; <label>:1588                                    ; preds = %1583
  %1589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1590 = bitcast %union.rec* %1589 to %struct.word_type*
  %1591 = getelementptr inbounds %struct.word_type, %struct.word_type* %1590, i32 0, i32 0
  %1592 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1591, i32 0, i64 0
  %1593 = getelementptr inbounds %struct.LIST, %struct.LIST* %1592, i32 0, i32 0
  %1594 = load %union.rec*, %union.rec** %1593, align 8
  store %union.rec* %1594, %union.rec** @zz_tmp, align 8
  %1595 = load %union.rec*, %union.rec** @zz_res, align 8
  %1596 = bitcast %union.rec* %1595 to %struct.word_type*
  %1597 = getelementptr inbounds %struct.word_type, %struct.word_type* %1596, i32 0, i32 0
  %1598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1597, i32 0, i64 0
  %1599 = getelementptr inbounds %struct.LIST, %struct.LIST* %1598, i32 0, i32 0
  %1600 = load %union.rec*, %union.rec** %1599, align 8
  %1601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1602 = bitcast %union.rec* %1601 to %struct.word_type*
  %1603 = getelementptr inbounds %struct.word_type, %struct.word_type* %1602, i32 0, i32 0
  %1604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1603, i32 0, i64 0
  %1605 = getelementptr inbounds %struct.LIST, %struct.LIST* %1604, i32 0, i32 0
  store %union.rec* %1600, %union.rec** %1605, align 8
  %1606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1607 = load %union.rec*, %union.rec** @zz_res, align 8
  %1608 = bitcast %union.rec* %1607 to %struct.word_type*
  %1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %1608, i32 0, i32 0
  %1610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1609, i32 0, i64 0
  %1611 = getelementptr inbounds %struct.LIST, %struct.LIST* %1610, i32 0, i32 0
  %1612 = load %union.rec*, %union.rec** %1611, align 8
  %1613 = bitcast %union.rec* %1612 to %struct.word_type*
  %1614 = getelementptr inbounds %struct.word_type, %struct.word_type* %1613, i32 0, i32 0
  %1615 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1614, i32 0, i64 0
  %1616 = getelementptr inbounds %struct.LIST, %struct.LIST* %1615, i32 0, i32 1
  store %union.rec* %1606, %union.rec** %1616, align 8
  %1617 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1618 = load %union.rec*, %union.rec** @zz_res, align 8
  %1619 = bitcast %union.rec* %1618 to %struct.word_type*
  %1620 = getelementptr inbounds %struct.word_type, %struct.word_type* %1619, i32 0, i32 0
  %1621 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1620, i32 0, i64 0
  %1622 = getelementptr inbounds %struct.LIST, %struct.LIST* %1621, i32 0, i32 0
  store %union.rec* %1617, %union.rec** %1622, align 8
  %1623 = load %union.rec*, %union.rec** @zz_res, align 8
  %1624 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1625 = bitcast %union.rec* %1624 to %struct.word_type*
  %1626 = getelementptr inbounds %struct.word_type, %struct.word_type* %1625, i32 0, i32 0
  %1627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1626, i32 0, i64 0
  %1628 = getelementptr inbounds %struct.LIST, %struct.LIST* %1627, i32 0, i32 1
  store %union.rec* %1623, %union.rec** %1628, align 8
  br label %1629

; <label>:1629                                    ; preds = %1588, %1586
  %1630 = phi %union.rec* [ %1587, %1586 ], [ %1623, %1588 ]
  br label %1631

; <label>:1631                                    ; preds = %1629, %1581
  %1632 = phi %union.rec* [ %1582, %1581 ], [ %1630, %1629 ]
  %1633 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1633, %union.rec** @zz_res, align 8
  %1634 = load %union.rec*, %union.rec** %wd, align 8
  store %union.rec* %1634, %union.rec** @zz_hold, align 8
  %1635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1636 = icmp eq %union.rec* %1635, null
  br i1 %1636, label %1637, label %1639

; <label>:1637                                    ; preds = %1631
  %1638 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1687

; <label>:1639                                    ; preds = %1631
  %1640 = load %union.rec*, %union.rec** @zz_res, align 8
  %1641 = icmp eq %union.rec* %1640, null
  br i1 %1641, label %1642, label %1644

; <label>:1642                                    ; preds = %1639
  %1643 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1685

; <label>:1644                                    ; preds = %1639
  %1645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1646 = bitcast %union.rec* %1645 to %struct.word_type*
  %1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %1646, i32 0, i32 0
  %1648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1647, i32 0, i64 1
  %1649 = getelementptr inbounds %struct.LIST, %struct.LIST* %1648, i32 0, i32 0
  %1650 = load %union.rec*, %union.rec** %1649, align 8
  store %union.rec* %1650, %union.rec** @zz_tmp, align 8
  %1651 = load %union.rec*, %union.rec** @zz_res, align 8
  %1652 = bitcast %union.rec* %1651 to %struct.word_type*
  %1653 = getelementptr inbounds %struct.word_type, %struct.word_type* %1652, i32 0, i32 0
  %1654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1653, i32 0, i64 1
  %1655 = getelementptr inbounds %struct.LIST, %struct.LIST* %1654, i32 0, i32 0
  %1656 = load %union.rec*, %union.rec** %1655, align 8
  %1657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1658 = bitcast %union.rec* %1657 to %struct.word_type*
  %1659 = getelementptr inbounds %struct.word_type, %struct.word_type* %1658, i32 0, i32 0
  %1660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1659, i32 0, i64 1
  %1661 = getelementptr inbounds %struct.LIST, %struct.LIST* %1660, i32 0, i32 0
  store %union.rec* %1656, %union.rec** %1661, align 8
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1663 = load %union.rec*, %union.rec** @zz_res, align 8
  %1664 = bitcast %union.rec* %1663 to %struct.word_type*
  %1665 = getelementptr inbounds %struct.word_type, %struct.word_type* %1664, i32 0, i32 0
  %1666 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1665, i32 0, i64 1
  %1667 = getelementptr inbounds %struct.LIST, %struct.LIST* %1666, i32 0, i32 0
  %1668 = load %union.rec*, %union.rec** %1667, align 8
  %1669 = bitcast %union.rec* %1668 to %struct.word_type*
  %1670 = getelementptr inbounds %struct.word_type, %struct.word_type* %1669, i32 0, i32 0
  %1671 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1670, i32 0, i64 1
  %1672 = getelementptr inbounds %struct.LIST, %struct.LIST* %1671, i32 0, i32 1
  store %union.rec* %1662, %union.rec** %1672, align 8
  %1673 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1674 = load %union.rec*, %union.rec** @zz_res, align 8
  %1675 = bitcast %union.rec* %1674 to %struct.word_type*
  %1676 = getelementptr inbounds %struct.word_type, %struct.word_type* %1675, i32 0, i32 0
  %1677 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1676, i32 0, i64 1
  %1678 = getelementptr inbounds %struct.LIST, %struct.LIST* %1677, i32 0, i32 0
  store %union.rec* %1673, %union.rec** %1678, align 8
  %1679 = load %union.rec*, %union.rec** @zz_res, align 8
  %1680 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1681 = bitcast %union.rec* %1680 to %struct.word_type*
  %1682 = getelementptr inbounds %struct.word_type, %struct.word_type* %1681, i32 0, i32 0
  %1683 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1682, i32 0, i64 1
  %1684 = getelementptr inbounds %struct.LIST, %struct.LIST* %1683, i32 0, i32 1
  store %union.rec* %1679, %union.rec** %1684, align 8
  br label %1685

; <label>:1685                                    ; preds = %1644, %1642
  %1686 = phi %union.rec* [ %1643, %1642 ], [ %1679, %1644 ]
  br label %1687

; <label>:1687                                    ; preds = %1685, %1637
  %1688 = phi %union.rec* [ %1638, %1637 ], [ %1686, %1685 ]
  br label %1689

; <label>:1689                                    ; preds = %1687, %1150
  %1690 = load %union.rec*, %union.rec** %link, align 8
  %1691 = bitcast %union.rec* %1690 to %struct.word_type*
  %1692 = getelementptr inbounds %struct.word_type, %struct.word_type* %1691, i32 0, i32 0
  %1693 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1692, i32 0, i64 0
  %1694 = getelementptr inbounds %struct.LIST, %struct.LIST* %1693, i32 0, i32 1
  %1695 = load %union.rec*, %union.rec** %1694, align 8
  store %union.rec* %1695, %union.rec** %link, align 8
  br label %1110

; <label>:1696                                    ; preds = %1110
  %1697 = load %union.rec*, %union.rec** %1, align 8
  %1698 = bitcast %union.rec* %1697 to %struct.head_type*
  %1699 = getelementptr inbounds %struct.head_type, %struct.head_type* %1698, i32 0, i32 8
  %1700 = load %union.rec*, %union.rec** %1699, align 8
  %1701 = call i32 @DisposeObject(%union.rec* %1700)
  %1702 = load %union.rec*, %union.rec** %1, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.head_type*
  %1704 = getelementptr inbounds %struct.head_type, %struct.head_type* %1703, i32 0, i32 8
  store %union.rec* null, %union.rec** %1704, align 8
  %1705 = load %union.rec*, %union.rec** %1, align 8
  %1706 = bitcast %union.rec* %1705 to %struct.head_type*
  %1707 = getelementptr inbounds %struct.head_type, %struct.head_type* %1706, i32 0, i32 9
  %1708 = load %union.rec*, %union.rec** %1707, align 8
  %1709 = call i32 @DisposeObject(%union.rec* %1708)
  %1710 = load %union.rec*, %union.rec** %1, align 8
  %1711 = bitcast %union.rec* %1710 to %struct.head_type*
  %1712 = getelementptr inbounds %struct.head_type, %struct.head_type* %1711, i32 0, i32 9
  store %union.rec* null, %union.rec** %1712, align 8
  %1713 = load i32, i32* @AllowCrossDb, align 4
  %1714 = icmp ne i32 %1713, 0
  br i1 %1714, label %1715, label %1753

; <label>:1715                                    ; preds = %1696
  %1716 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1717 = load %union.rec*, %union.rec** %1, align 8
  %1718 = bitcast %union.rec* %1717 to %struct.closure_type*
  %1719 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1718, i32 0, i32 5
  %1720 = load %union.rec*, %union.rec** %1719, align 8
  %1721 = call i8* @SymName(%union.rec* %1720)
  %1722 = call i8* @strcpy(i8* %1716, i8* %1721) #5
  %1723 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1724 = call i8* @strcat(i8* %1723, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.10, i32 0, i32 0)) #5
  %1725 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1726 = load %union.rec*, %union.rec** %1, align 8
  %1727 = bitcast %union.rec* %1726 to %struct.word_type*
  %1728 = getelementptr inbounds %struct.word_type, %struct.word_type* %1727, i32 0, i32 1
  %1729 = bitcast %union.FIRST_UNION* %1728 to %struct.FILE_POS*
  %1730 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %1729, i32 0, i32 3
  %1731 = load i32, i32* %1730, align 4
  %1732 = and i32 %1731, 1048575
  %1733 = call i8* @StringInt(i32 %1732)
  %1734 = call i8* @strcat(i8* %1725, i8* %1733) #5
  %1735 = load %union.rec*, %union.rec** %1, align 8
  %1736 = bitcast %union.rec* %1735 to %struct.word_type*
  %1737 = getelementptr inbounds %struct.word_type, %struct.word_type* %1736, i32 0, i32 1
  %1738 = bitcast %union.FIRST_UNION* %1737 to %struct.FILE_POS*
  %1739 = call zeroext i16 @DatabaseFileNum(%struct.FILE_POS* %1738)
  store i16 %1739, i16* %fnum, align 2
  %1740 = load %union.rec*, %union.rec** %og, align 8
  %1741 = load i16, i16* %fnum, align 2
  call void @AppendToFile(%union.rec* %1740, i16 zeroext %1741, i32* %write_pos, i32* %write_lnum)
  %1742 = load %union.rec*, %union.rec** @NewCrossDb, align 8
  %1743 = load %union.rec*, %union.rec** @OptGallSym, align 8
  %1744 = getelementptr inbounds [512 x i8], [512 x i8]* %buff, i32 0, i32 0
  %1745 = load %union.rec*, %union.rec** %1, align 8
  %1746 = bitcast %union.rec* %1745 to %struct.word_type*
  %1747 = getelementptr inbounds %struct.word_type, %struct.word_type* %1746, i32 0, i32 1
  %1748 = bitcast %union.FIRST_UNION* %1747 to %struct.FILE_POS*
  %1749 = load i16, i16* %fnum, align 2
  %1750 = load i32, i32* %write_pos, align 4
  %1751 = sext i32 %1750 to i64
  %1752 = load i32, i32* %write_lnum, align 4
  call void @DbInsert(%union.rec* %1742, i32 0, %union.rec* %1743, i8* %1744, %struct.FILE_POS* %1748, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.33, i32 0, i32 0), i16 zeroext %1749, i64 %1751, i32 %1752, i32 0)
  br label %1753

; <label>:1753                                    ; preds = %347, %1715, %1696
  ret void
}

declare void @EnterErrorBlock(i32) #1

declare %union.rec* @FillObject(%union.rec*, %struct.CONSTRAINT*, %union.rec*, i32, i32, i32, i32*) #1

declare void @LeaveErrorBlock(i32) #1

declare %union.rec* @ChildSym(%union.rec*, i32) #1

declare zeroext i16 @DatabaseFileNum(%struct.FILE_POS*) #1

declare void @AppendToFile(%union.rec*, i16 zeroext, i32*, i32*) #1

declare void @DbInsert(%union.rec*, i32, %union.rec*, i8*, %struct.FILE_POS*, i8*, i16 zeroext, i64, i32, i32) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readonly "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readonly }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
