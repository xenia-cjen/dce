; ModuleID = 'z18.c'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%struct.CONSTRAINT = type { i32, i32, i32, i32 }
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
%struct.anon.2 = type { i8, i8, i16 }
%struct.closure_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.THIRD_UNION, %union.FOURTH_UNION, %union.rec*, %union.anon.12 }
%union.anon.12 = type { %union.rec* }
%struct.anon.5 = type { i8, [3 x i8] }
%struct.symbol_type = type { [2 x %struct.LIST], %union.FIRST_UNION, %union.SECOND_UNION, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, %union.rec*, i16, i16, i8, i8, i8 }
%struct.anon.0 = type { i8, i8, i8 }
%struct.anon.6 = type { [2 x i32], [2 x i32] }

@initial_constraint = internal global %struct.CONSTRAINT zeroinitializer, align 4
@InitialEnvironment = common global %union.rec* null, align 8
@InitialStyle = common global %struct.STYLE zeroinitializer, align 4
@zz_lengths = external global [0 x i8], align 1
@zz_size = external global i32, align 4
@.str = private unnamed_addr constant [17 x i8] c"word is too long\00", align 1
@no_fpos = external global %struct.FILE_POS*, align 8
@zz_free = external global [0 x %union.rec*], align 8
@zz_hold = external global %union.rec*, align 8
@PrintSym = external global %union.rec*, align 8
@xx_link = external global %union.rec*, align 8
@zz_res = external global %union.rec*, align 8
@zz_tmp = external global %union.rec*, align 8
@root_galley = internal global %union.rec* null, align 8
@InputSym = external global %union.rec*, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"assert failed in %s\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"TransferInit: recs   != nilobj!\00", align 1
@.str.3 = private unnamed_addr constant [32 x i8] c"TransferInit: inners != nilobj!\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"TransferInit: initial galley!\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"TransferInit: input sym not external!\00", align 1
@itop = internal global i32 0, align 4
@targets = internal global [30 x %union.rec*] zeroinitializer, align 16
@constraints = internal global [30 x %struct.CONSTRAINT] zeroinitializer, align 16
@.str.6 = private unnamed_addr constant [28 x i8] c"TransferBegin: non-CLOSURE!\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"cannot attach galley %s\00", align 1
@xx_hold = external global %union.rec*, align 8
@xx_tmp = external global %union.rec*, align 8
@.str.8 = private unnamed_addr constant [37 x i8] c"galley nested too deeply (max is %d)\00", align 1
@.str.9 = private unnamed_addr constant [49 x i8] c"galley %s deleted (insufficient width at target)\00", align 1
@.str.10 = private unnamed_addr constant [48 x i8] c"right parameter of %s is vertically constrained\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"TransferComponent: internal!\00", align 1
@.str.12 = private unnamed_addr constant [32 x i8] c"TransferComponent: input child!\00", align 1
@.str.13 = private unnamed_addr constant [26 x i8] c"TransferEnd: input child!\00", align 1

; Function Attrs: nounwind uwtable
define void @TransferInit(%union.rec* %InitEnv) #0 {
  %1 = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %x = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %recs = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %nothing = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %up_hd = alloca %union.rec*, align 8
  %why = alloca %union.rec*, align 8
  store %union.rec* %InitEnv, %union.rec** %1, align 8
  store i32 8388606, i32* getelementptr inbounds (%struct.CONSTRAINT, %struct.CONSTRAINT* @initial_constraint, i32 0, i32 0), align 4
  store i32 8388606, i32* getelementptr inbounds (%struct.CONSTRAINT, %struct.CONSTRAINT* @initial_constraint, i32 0, i32 1), align 4
  store i32 8388606, i32* getelementptr inbounds (%struct.CONSTRAINT, %struct.CONSTRAINT* @initial_constraint, i32 0, i32 2), align 4
  %2 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %2, %union.rec** @InitialEnvironment, align 8
  %3 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %4 = and i16 %3, -129
  store i16 %4, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %5 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %6 = and i16 %5, -257
  store i16 %6, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %7 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %8 = and i16 %7, -513
  store i16 %8, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %9 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %10 = and i16 %9, -7169
  %11 = or i16 %10, 1024
  store i16 %11, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %12 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  %13 = and i16 %12, 8191
  %14 = or i16 %13, 24576
  store i16 %14, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 0), align 4
  store i16 360, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 0, i32 0, i32 1), align 2
  %15 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %16 = and i8 %15, -2
  store i8 %16, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %17 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %18 = and i8 %17, -3
  store i8 %18, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %19 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %20 = and i8 %19, -5
  store i8 %20, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %21 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %22 = and i8 %21, -113
  store i8 %22, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %23 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %24 = and i16 %23, -129
  store i16 %24, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %25 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %26 = and i16 %25, -257
  store i16 %26, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %27 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %28 = and i16 %27, -513
  %29 = or i16 %28, 512
  store i16 %29, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %30 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %31 = and i16 %30, -7169
  %32 = or i16 %31, 1024
  store i16 %32, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %33 = load i16, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  %34 = and i16 %33, 8191
  %35 = or i16 %34, 8192
  store i16 %35, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 0), align 4
  store i16 120, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1, i32 0, i32 1), align 2
  %36 = load i8, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %37 = and i8 %36, -4
  store i8 %37, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %38 = load i8, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %39 = and i8 %38, -13
  store i8 %39, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %40 = load i8, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %41 = and i8 %40, -113
  store i8 %41, i8* bitcast (%union.anon.10* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 1) to i8*), align 4
  %42 = load i8, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %43 = and i8 %42, -9
  store i8 %43, i8* bitcast (%struct.STYLE* @InitialStyle to i8*), align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %45 = and i32 %44, -4096
  store i32 %45, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %46 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %47 = and i32 %46, -4190209
  store i32 %47, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %49 = and i32 %48, -12582913
  store i32 %49, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %50 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %51 = and i32 %50, -1056964609
  store i32 %51, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  store i16 0, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 2), align 2
  store i16 0, i16* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 3), align 2
  %52 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %53 = and i32 %52, 2147483647
  store i32 %53, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %55 = and i32 %54, -1073741825
  store i32 %55, i32* getelementptr inbounds (%struct.STYLE, %struct.STYLE* @InitialStyle, i32 0, i32 4), align 4
  %56 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %57 = zext i8 %56 to i32
  store i32 %57, i32* @zz_size, align 4
  %58 = sext i32 %57 to i64
  %59 = icmp uge i64 %58, 265
  br i1 %59, label %60, label %63

; <label>:60                                      ; preds = %0
  %61 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %62 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %61)
  br label %88

; <label>:63                                      ; preds = %0
  %64 = load i32, i32* @zz_size, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %65
  %67 = load %union.rec*, %union.rec** %66, align 8
  %68 = icmp eq %union.rec* %67, null
  br i1 %68, label %69, label %73

; <label>:69                                      ; preds = %63
  %70 = load i32, i32* @zz_size, align 4
  %71 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %72 = call %union.rec* @GetMemory(i32 %70, %struct.FILE_POS* %71)
  store %union.rec* %72, %union.rec** @zz_hold, align 8
  br label %87

; <label>:73                                      ; preds = %63
  %74 = load i32, i32* @zz_size, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %75
  %77 = load %union.rec*, %union.rec** %76, align 8
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  store %union.rec* %77, %union.rec** @zz_hold, align 8
  %78 = load %union.rec*, %union.rec** @zz_hold, align 8
  %79 = bitcast %union.rec* %78 to %struct.word_type*
  %80 = getelementptr inbounds %struct.word_type, %struct.word_type* %79, i32 0, i32 0
  %81 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %80, i32 0, i64 0
  %82 = getelementptr inbounds %struct.LIST, %struct.LIST* %81, i32 0, i32 0
  %83 = load %union.rec*, %union.rec** %82, align 8
  %84 = load i32, i32* @zz_size, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %85
  store %union.rec* %83, %union.rec** %86, align 8
  br label %87

; <label>:87                                      ; preds = %73, %69
  br label %88

; <label>:88                                      ; preds = %87, %60
  %89 = load %union.rec*, %union.rec** @zz_hold, align 8
  %90 = bitcast %union.rec* %89 to %struct.word_type*
  %91 = getelementptr inbounds %struct.word_type, %struct.word_type* %90, i32 0, i32 1
  %92 = bitcast %union.FIRST_UNION* %91 to %struct.anon*
  %93 = getelementptr inbounds %struct.anon, %struct.anon* %92, i32 0, i32 0
  store i8 8, i8* %93, align 1
  %94 = load %union.rec*, %union.rec** @zz_hold, align 8
  %95 = load %union.rec*, %union.rec** @zz_hold, align 8
  %96 = bitcast %union.rec* %95 to %struct.word_type*
  %97 = getelementptr inbounds %struct.word_type, %struct.word_type* %96, i32 0, i32 0
  %98 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %97, i32 0, i64 1
  %99 = getelementptr inbounds %struct.LIST, %struct.LIST* %98, i32 0, i32 1
  store %union.rec* %94, %union.rec** %99, align 8
  %100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %101 = bitcast %union.rec* %100 to %struct.word_type*
  %102 = getelementptr inbounds %struct.word_type, %struct.word_type* %101, i32 0, i32 0
  %103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %102, i32 0, i64 1
  %104 = getelementptr inbounds %struct.LIST, %struct.LIST* %103, i32 0, i32 0
  store %union.rec* %94, %union.rec** %104, align 8
  %105 = load %union.rec*, %union.rec** @zz_hold, align 8
  %106 = bitcast %union.rec* %105 to %struct.word_type*
  %107 = getelementptr inbounds %struct.word_type, %struct.word_type* %106, i32 0, i32 0
  %108 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %107, i32 0, i64 0
  %109 = getelementptr inbounds %struct.LIST, %struct.LIST* %108, i32 0, i32 1
  store %union.rec* %94, %union.rec** %109, align 8
  %110 = load %union.rec*, %union.rec** @zz_hold, align 8
  %111 = bitcast %union.rec* %110 to %struct.word_type*
  %112 = getelementptr inbounds %struct.word_type, %struct.word_type* %111, i32 0, i32 0
  %113 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %112, i32 0, i64 0
  %114 = getelementptr inbounds %struct.LIST, %struct.LIST* %113, i32 0, i32 0
  store %union.rec* %94, %union.rec** %114, align 8
  store %union.rec* %94, %union.rec** %up_hd, align 8
  %115 = load %union.rec*, %union.rec** %up_hd, align 8
  %116 = bitcast %union.rec* %115 to %struct.word_type*
  %117 = getelementptr inbounds %struct.word_type, %struct.word_type* %116, i32 0, i32 2
  %118 = bitcast %union.SECOND_UNION* %117 to %struct.anon.2*
  %119 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %118, i32 0, i32 2
  %120 = load i16, i16* %119, align 2
  %121 = and i16 %120, -4097
  store i16 %121, i16* %119, align 2
  %122 = load %union.rec*, %union.rec** %up_hd, align 8
  %123 = bitcast %union.rec* %122 to %struct.head_type*
  %124 = getelementptr inbounds %struct.head_type, %struct.head_type* %123, i32 0, i32 11
  store %union.rec* null, %union.rec** %124, align 8
  %125 = load %union.rec*, %union.rec** %up_hd, align 8
  %126 = bitcast %union.rec* %125 to %struct.head_type*
  %127 = getelementptr inbounds %struct.head_type, %struct.head_type* %126, i32 0, i32 12
  store %union.rec* null, %union.rec** %127, align 8
  %128 = load %union.rec*, %union.rec** %up_hd, align 8
  %129 = bitcast %union.rec* %128 to %struct.closure_type*
  %130 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %129, i32 0, i32 5
  store %union.rec* null, %union.rec** %130, align 8
  %131 = load %union.rec*, %union.rec** %up_hd, align 8
  %132 = bitcast %union.rec* %131 to %struct.head_type*
  %133 = getelementptr inbounds %struct.head_type, %struct.head_type* %132, i32 0, i32 14
  store %union.rec* null, %union.rec** %133, align 8
  %134 = load %union.rec*, %union.rec** %up_hd, align 8
  %135 = bitcast %union.rec* %134 to %struct.head_type*
  %136 = getelementptr inbounds %struct.head_type, %struct.head_type* %135, i32 0, i32 13
  store %union.rec* null, %union.rec** %136, align 8
  %137 = load %union.rec*, %union.rec** %up_hd, align 8
  %138 = bitcast %union.rec* %137 to %struct.head_type*
  %139 = getelementptr inbounds %struct.head_type, %struct.head_type* %138, i32 0, i32 9
  store %union.rec* null, %union.rec** %139, align 8
  %140 = load %union.rec*, %union.rec** %up_hd, align 8
  %141 = bitcast %union.rec* %140 to %struct.head_type*
  %142 = getelementptr inbounds %struct.head_type, %struct.head_type* %141, i32 0, i32 8
  store %union.rec* null, %union.rec** %142, align 8
  %143 = load %union.rec*, %union.rec** %up_hd, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 2
  %146 = bitcast %union.SECOND_UNION* %145 to %struct.anon.2*
  %147 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %146, i32 0, i32 2
  %148 = load i16, i16* %147, align 2
  %149 = and i16 %148, -257
  %150 = or i16 %149, 256
  store i16 %150, i16* %147, align 2
  %151 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 122), align 1
  %152 = zext i8 %151 to i32
  store i32 %152, i32* @zz_size, align 4
  %153 = sext i32 %152 to i64
  %154 = icmp uge i64 %153, 265
  br i1 %154, label %155, label %158

; <label>:155                                     ; preds = %88
  %156 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %157 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %156)
  br label %183

; <label>:158                                     ; preds = %88
  %159 = load i32, i32* @zz_size, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %160
  %162 = load %union.rec*, %union.rec** %161, align 8
  %163 = icmp eq %union.rec* %162, null
  br i1 %163, label %164, label %168

; <label>:164                                     ; preds = %158
  %165 = load i32, i32* @zz_size, align 4
  %166 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %167 = call %union.rec* @GetMemory(i32 %165, %struct.FILE_POS* %166)
  store %union.rec* %167, %union.rec** @zz_hold, align 8
  br label %182

; <label>:168                                     ; preds = %158
  %169 = load i32, i32* @zz_size, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %170
  %172 = load %union.rec*, %union.rec** %171, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  store %union.rec* %172, %union.rec** @zz_hold, align 8
  %173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %174 = bitcast %union.rec* %173 to %struct.word_type*
  %175 = getelementptr inbounds %struct.word_type, %struct.word_type* %174, i32 0, i32 0
  %176 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %175, i32 0, i64 0
  %177 = getelementptr inbounds %struct.LIST, %struct.LIST* %176, i32 0, i32 0
  %178 = load %union.rec*, %union.rec** %177, align 8
  %179 = load i32, i32* @zz_size, align 4
  %180 = sext i32 %179 to i64
  %181 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %180
  store %union.rec* %178, %union.rec** %181, align 8
  br label %182

; <label>:182                                     ; preds = %168, %164
  br label %183

; <label>:183                                     ; preds = %182, %155
  %184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %185 = bitcast %union.rec* %184 to %struct.word_type*
  %186 = getelementptr inbounds %struct.word_type, %struct.word_type* %185, i32 0, i32 1
  %187 = bitcast %union.FIRST_UNION* %186 to %struct.anon*
  %188 = getelementptr inbounds %struct.anon, %struct.anon* %187, i32 0, i32 0
  store i8 122, i8* %188, align 1
  %189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %190 = load %union.rec*, %union.rec** @zz_hold, align 8
  %191 = bitcast %union.rec* %190 to %struct.word_type*
  %192 = getelementptr inbounds %struct.word_type, %struct.word_type* %191, i32 0, i32 0
  %193 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %192, i32 0, i64 1
  %194 = getelementptr inbounds %struct.LIST, %struct.LIST* %193, i32 0, i32 1
  store %union.rec* %189, %union.rec** %194, align 8
  %195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 0
  %198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %197, i32 0, i64 1
  %199 = getelementptr inbounds %struct.LIST, %struct.LIST* %198, i32 0, i32 0
  store %union.rec* %189, %union.rec** %199, align 8
  %200 = load %union.rec*, %union.rec** @zz_hold, align 8
  %201 = bitcast %union.rec* %200 to %struct.word_type*
  %202 = getelementptr inbounds %struct.word_type, %struct.word_type* %201, i32 0, i32 0
  %203 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %202, i32 0, i64 0
  %204 = getelementptr inbounds %struct.LIST, %struct.LIST* %203, i32 0, i32 1
  store %union.rec* %189, %union.rec** %204, align 8
  %205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %206 = bitcast %union.rec* %205 to %struct.word_type*
  %207 = getelementptr inbounds %struct.word_type, %struct.word_type* %206, i32 0, i32 0
  %208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %207, i32 0, i64 0
  %209 = getelementptr inbounds %struct.LIST, %struct.LIST* %208, i32 0, i32 0
  store %union.rec* %189, %union.rec** %209, align 8
  store %union.rec* %189, %union.rec** %dest_index, align 8
  %210 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %211 = zext i8 %210 to i32
  store i32 %211, i32* @zz_size, align 4
  %212 = sext i32 %211 to i64
  %213 = icmp uge i64 %212, 265
  br i1 %213, label %214, label %217

; <label>:214                                     ; preds = %183
  %215 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %216 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %215)
  br label %242

; <label>:217                                     ; preds = %183
  %218 = load i32, i32* @zz_size, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %219
  %221 = load %union.rec*, %union.rec** %220, align 8
  %222 = icmp eq %union.rec* %221, null
  br i1 %222, label %223, label %227

; <label>:223                                     ; preds = %217
  %224 = load i32, i32* @zz_size, align 4
  %225 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %226 = call %union.rec* @GetMemory(i32 %224, %struct.FILE_POS* %225)
  store %union.rec* %226, %union.rec** @zz_hold, align 8
  br label %241

; <label>:227                                     ; preds = %217
  %228 = load i32, i32* @zz_size, align 4
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %229
  %231 = load %union.rec*, %union.rec** %230, align 8
  store %union.rec* %231, %union.rec** @zz_hold, align 8
  store %union.rec* %231, %union.rec** @zz_hold, align 8
  %232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %233 = bitcast %union.rec* %232 to %struct.word_type*
  %234 = getelementptr inbounds %struct.word_type, %struct.word_type* %233, i32 0, i32 0
  %235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %234, i32 0, i64 0
  %236 = getelementptr inbounds %struct.LIST, %struct.LIST* %235, i32 0, i32 0
  %237 = load %union.rec*, %union.rec** %236, align 8
  %238 = load i32, i32* @zz_size, align 4
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %239
  store %union.rec* %237, %union.rec** %240, align 8
  br label %241

; <label>:241                                     ; preds = %227, %223
  br label %242

; <label>:242                                     ; preds = %241, %214
  %243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %244 = bitcast %union.rec* %243 to %struct.word_type*
  %245 = getelementptr inbounds %struct.word_type, %struct.word_type* %244, i32 0, i32 1
  %246 = bitcast %union.FIRST_UNION* %245 to %struct.anon*
  %247 = getelementptr inbounds %struct.anon, %struct.anon* %246, i32 0, i32 0
  store i8 2, i8* %247, align 1
  %248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %250 = bitcast %union.rec* %249 to %struct.word_type*
  %251 = getelementptr inbounds %struct.word_type, %struct.word_type* %250, i32 0, i32 0
  %252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %251, i32 0, i64 1
  %253 = getelementptr inbounds %struct.LIST, %struct.LIST* %252, i32 0, i32 1
  store %union.rec* %248, %union.rec** %253, align 8
  %254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %255 = bitcast %union.rec* %254 to %struct.word_type*
  %256 = getelementptr inbounds %struct.word_type, %struct.word_type* %255, i32 0, i32 0
  %257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %256, i32 0, i64 1
  %258 = getelementptr inbounds %struct.LIST, %struct.LIST* %257, i32 0, i32 0
  store %union.rec* %248, %union.rec** %258, align 8
  %259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %260 = bitcast %union.rec* %259 to %struct.word_type*
  %261 = getelementptr inbounds %struct.word_type, %struct.word_type* %260, i32 0, i32 0
  %262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %261, i32 0, i64 0
  %263 = getelementptr inbounds %struct.LIST, %struct.LIST* %262, i32 0, i32 1
  store %union.rec* %248, %union.rec** %263, align 8
  %264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %265 = bitcast %union.rec* %264 to %struct.word_type*
  %266 = getelementptr inbounds %struct.word_type, %struct.word_type* %265, i32 0, i32 0
  %267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %266, i32 0, i64 0
  %268 = getelementptr inbounds %struct.LIST, %struct.LIST* %267, i32 0, i32 0
  store %union.rec* %248, %union.rec** %268, align 8
  store %union.rec* %248, %union.rec** %dest, align 8
  %269 = load %union.rec*, %union.rec** @PrintSym, align 8
  %270 = load %union.rec*, %union.rec** %dest, align 8
  %271 = bitcast %union.rec* %270 to %struct.closure_type*
  %272 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %271, i32 0, i32 5
  store %union.rec* %269, %union.rec** %272, align 8
  %273 = load %union.rec*, %union.rec** %dest, align 8
  %274 = load %union.rec*, %union.rec** %dest_index, align 8
  %275 = bitcast %union.rec* %274 to %struct.closure_type*
  %276 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %275, i32 0, i32 5
  store %union.rec* %273, %union.rec** %276, align 8
  %277 = load %union.rec*, %union.rec** %dest, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 2
  %280 = bitcast %union.SECOND_UNION* %279 to %struct.anon.2*
  %281 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %280, i32 0, i32 2
  %282 = load i16, i16* %281, align 2
  %283 = and i16 %282, -17
  %284 = or i16 %283, 16
  store i16 %284, i16* %281, align 2
  %285 = load %union.rec*, %union.rec** %dest, align 8
  %286 = bitcast %union.rec* %285 to %struct.word_type*
  %287 = getelementptr inbounds %struct.word_type, %struct.word_type* %286, i32 0, i32 2
  %288 = bitcast %union.SECOND_UNION* %287 to %struct.anon.2*
  %289 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %288, i32 0, i32 2
  %290 = load i16, i16* %289, align 2
  %291 = and i16 %290, -9
  store i16 %291, i16* %289, align 2
  %292 = load %union.rec*, %union.rec** %dest, align 8
  %293 = bitcast %union.rec* %292 to %struct.word_type*
  %294 = getelementptr inbounds %struct.word_type, %struct.word_type* %293, i32 0, i32 2
  %295 = bitcast %union.SECOND_UNION* %294 to %struct.anon.2*
  %296 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %295, i32 0, i32 2
  %297 = load i16, i16* %296, align 2
  %298 = and i16 %297, -5
  store i16 %298, i16* %296, align 2
  %299 = load %union.rec*, %union.rec** %dest_index, align 8
  %300 = bitcast %union.rec* %299 to %struct.word_type*
  %301 = getelementptr inbounds %struct.word_type, %struct.word_type* %300, i32 0, i32 2
  %302 = bitcast %union.SECOND_UNION* %301 to %struct.anon.2*
  %303 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %302, i32 0, i32 2
  %304 = load i16, i16* %303, align 2
  %305 = and i16 %304, -33
  store i16 %305, i16* %303, align 2
  %306 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %307 = zext i8 %306 to i32
  store i32 %307, i32* @zz_size, align 4
  %308 = sext i32 %307 to i64
  %309 = icmp uge i64 %308, 265
  br i1 %309, label %310, label %313

; <label>:310                                     ; preds = %242
  %311 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %312 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %311)
  br label %338

; <label>:313                                     ; preds = %242
  %314 = load i32, i32* @zz_size, align 4
  %315 = sext i32 %314 to i64
  %316 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %315
  %317 = load %union.rec*, %union.rec** %316, align 8
  %318 = icmp eq %union.rec* %317, null
  br i1 %318, label %319, label %323

; <label>:319                                     ; preds = %313
  %320 = load i32, i32* @zz_size, align 4
  %321 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %322 = call %union.rec* @GetMemory(i32 %320, %struct.FILE_POS* %321)
  store %union.rec* %322, %union.rec** @zz_hold, align 8
  br label %337

; <label>:323                                     ; preds = %313
  %324 = load i32, i32* @zz_size, align 4
  %325 = sext i32 %324 to i64
  %326 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %325
  %327 = load %union.rec*, %union.rec** %326, align 8
  store %union.rec* %327, %union.rec** @zz_hold, align 8
  store %union.rec* %327, %union.rec** @zz_hold, align 8
  %328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 0
  %331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %330, i32 0, i64 0
  %332 = getelementptr inbounds %struct.LIST, %struct.LIST* %331, i32 0, i32 0
  %333 = load %union.rec*, %union.rec** %332, align 8
  %334 = load i32, i32* @zz_size, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %335
  store %union.rec* %333, %union.rec** %336, align 8
  br label %337

; <label>:337                                     ; preds = %323, %319
  br label %338

; <label>:338                                     ; preds = %337, %310
  %339 = load %union.rec*, %union.rec** @zz_hold, align 8
  %340 = bitcast %union.rec* %339 to %struct.word_type*
  %341 = getelementptr inbounds %struct.word_type, %struct.word_type* %340, i32 0, i32 1
  %342 = bitcast %union.FIRST_UNION* %341 to %struct.anon*
  %343 = getelementptr inbounds %struct.anon, %struct.anon* %342, i32 0, i32 0
  store i8 0, i8* %343, align 1
  %344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %345 = load %union.rec*, %union.rec** @zz_hold, align 8
  %346 = bitcast %union.rec* %345 to %struct.word_type*
  %347 = getelementptr inbounds %struct.word_type, %struct.word_type* %346, i32 0, i32 0
  %348 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %347, i32 0, i64 1
  %349 = getelementptr inbounds %struct.LIST, %struct.LIST* %348, i32 0, i32 1
  store %union.rec* %344, %union.rec** %349, align 8
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 1
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  store %union.rec* %344, %union.rec** %354, align 8
  %355 = load %union.rec*, %union.rec** @zz_hold, align 8
  %356 = bitcast %union.rec* %355 to %struct.word_type*
  %357 = getelementptr inbounds %struct.word_type, %struct.word_type* %356, i32 0, i32 0
  %358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %357, i32 0, i64 0
  %359 = getelementptr inbounds %struct.LIST, %struct.LIST* %358, i32 0, i32 1
  store %union.rec* %344, %union.rec** %359, align 8
  %360 = load %union.rec*, %union.rec** @zz_hold, align 8
  %361 = bitcast %union.rec* %360 to %struct.word_type*
  %362 = getelementptr inbounds %struct.word_type, %struct.word_type* %361, i32 0, i32 0
  %363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %362, i32 0, i64 0
  %364 = getelementptr inbounds %struct.LIST, %struct.LIST* %363, i32 0, i32 0
  store %union.rec* %344, %union.rec** %364, align 8
  store %union.rec* %344, %union.rec** @xx_link, align 8
  %365 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %365, %union.rec** @zz_res, align 8
  %366 = load %union.rec*, %union.rec** %up_hd, align 8
  store %union.rec* %366, %union.rec** @zz_hold, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = icmp eq %union.rec* %367, null
  br i1 %368, label %369, label %371

; <label>:369                                     ; preds = %338
  %370 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %419

; <label>:371                                     ; preds = %338
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
  %380 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %379, i32 0, i64 0
  %381 = getelementptr inbounds %struct.LIST, %struct.LIST* %380, i32 0, i32 0
  %382 = load %union.rec*, %union.rec** %381, align 8
  store %union.rec* %382, %union.rec** @zz_tmp, align 8
  %383 = load %union.rec*, %union.rec** @zz_res, align 8
  %384 = bitcast %union.rec* %383 to %struct.word_type*
  %385 = getelementptr inbounds %struct.word_type, %struct.word_type* %384, i32 0, i32 0
  %386 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %385, i32 0, i64 0
  %387 = getelementptr inbounds %struct.LIST, %struct.LIST* %386, i32 0, i32 0
  %388 = load %union.rec*, %union.rec** %387, align 8
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %390 = bitcast %union.rec* %389 to %struct.word_type*
  %391 = getelementptr inbounds %struct.word_type, %struct.word_type* %390, i32 0, i32 0
  %392 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %391, i32 0, i64 0
  %393 = getelementptr inbounds %struct.LIST, %struct.LIST* %392, i32 0, i32 0
  store %union.rec* %388, %union.rec** %393, align 8
  %394 = load %union.rec*, %union.rec** @zz_hold, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 0
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 0
  %400 = load %union.rec*, %union.rec** %399, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  store %union.rec* %394, %union.rec** %404, align 8
  %405 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %406 = load %union.rec*, %union.rec** @zz_res, align 8
  %407 = bitcast %union.rec* %406 to %struct.word_type*
  %408 = getelementptr inbounds %struct.word_type, %struct.word_type* %407, i32 0, i32 0
  %409 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %408, i32 0, i64 0
  %410 = getelementptr inbounds %struct.LIST, %struct.LIST* %409, i32 0, i32 0
  store %union.rec* %405, %union.rec** %410, align 8
  %411 = load %union.rec*, %union.rec** @zz_res, align 8
  %412 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %413 = bitcast %union.rec* %412 to %struct.word_type*
  %414 = getelementptr inbounds %struct.word_type, %struct.word_type* %413, i32 0, i32 0
  %415 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %414, i32 0, i64 0
  %416 = getelementptr inbounds %struct.LIST, %struct.LIST* %415, i32 0, i32 1
  store %union.rec* %411, %union.rec** %416, align 8
  br label %417

; <label>:417                                     ; preds = %376, %374
  %418 = phi %union.rec* [ %375, %374 ], [ %411, %376 ]
  br label %419

; <label>:419                                     ; preds = %417, %369
  %420 = phi %union.rec* [ %370, %369 ], [ %418, %417 ]
  %421 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %421, %union.rec** @zz_res, align 8
  %422 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %422, %union.rec** @zz_hold, align 8
  %423 = load %union.rec*, %union.rec** @zz_hold, align 8
  %424 = icmp eq %union.rec* %423, null
  br i1 %424, label %425, label %427

; <label>:425                                     ; preds = %419
  %426 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %475

; <label>:427                                     ; preds = %419
  %428 = load %union.rec*, %union.rec** @zz_res, align 8
  %429 = icmp eq %union.rec* %428, null
  br i1 %429, label %430, label %432

; <label>:430                                     ; preds = %427
  %431 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %473

; <label>:432                                     ; preds = %427
  %433 = load %union.rec*, %union.rec** @zz_hold, align 8
  %434 = bitcast %union.rec* %433 to %struct.word_type*
  %435 = getelementptr inbounds %struct.word_type, %struct.word_type* %434, i32 0, i32 0
  %436 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %435, i32 0, i64 1
  %437 = getelementptr inbounds %struct.LIST, %struct.LIST* %436, i32 0, i32 0
  %438 = load %union.rec*, %union.rec** %437, align 8
  store %union.rec* %438, %union.rec** @zz_tmp, align 8
  %439 = load %union.rec*, %union.rec** @zz_res, align 8
  %440 = bitcast %union.rec* %439 to %struct.word_type*
  %441 = getelementptr inbounds %struct.word_type, %struct.word_type* %440, i32 0, i32 0
  %442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %441, i32 0, i64 1
  %443 = getelementptr inbounds %struct.LIST, %struct.LIST* %442, i32 0, i32 0
  %444 = load %union.rec*, %union.rec** %443, align 8
  %445 = load %union.rec*, %union.rec** @zz_hold, align 8
  %446 = bitcast %union.rec* %445 to %struct.word_type*
  %447 = getelementptr inbounds %struct.word_type, %struct.word_type* %446, i32 0, i32 0
  %448 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %447, i32 0, i64 1
  %449 = getelementptr inbounds %struct.LIST, %struct.LIST* %448, i32 0, i32 0
  store %union.rec* %444, %union.rec** %449, align 8
  %450 = load %union.rec*, %union.rec** @zz_hold, align 8
  %451 = load %union.rec*, %union.rec** @zz_res, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 0
  %454 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %453, i32 0, i64 1
  %455 = getelementptr inbounds %struct.LIST, %struct.LIST* %454, i32 0, i32 0
  %456 = load %union.rec*, %union.rec** %455, align 8
  %457 = bitcast %union.rec* %456 to %struct.word_type*
  %458 = getelementptr inbounds %struct.word_type, %struct.word_type* %457, i32 0, i32 0
  %459 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %458, i32 0, i64 1
  %460 = getelementptr inbounds %struct.LIST, %struct.LIST* %459, i32 0, i32 1
  store %union.rec* %450, %union.rec** %460, align 8
  %461 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %462 = load %union.rec*, %union.rec** @zz_res, align 8
  %463 = bitcast %union.rec* %462 to %struct.word_type*
  %464 = getelementptr inbounds %struct.word_type, %struct.word_type* %463, i32 0, i32 0
  %465 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %464, i32 0, i64 1
  %466 = getelementptr inbounds %struct.LIST, %struct.LIST* %465, i32 0, i32 0
  store %union.rec* %461, %union.rec** %466, align 8
  %467 = load %union.rec*, %union.rec** @zz_res, align 8
  %468 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %469 = bitcast %union.rec* %468 to %struct.word_type*
  %470 = getelementptr inbounds %struct.word_type, %struct.word_type* %469, i32 0, i32 0
  %471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %470, i32 0, i64 1
  %472 = getelementptr inbounds %struct.LIST, %struct.LIST* %471, i32 0, i32 1
  store %union.rec* %467, %union.rec** %472, align 8
  br label %473

; <label>:473                                     ; preds = %432, %430
  %474 = phi %union.rec* [ %431, %430 ], [ %467, %432 ]
  br label %475

; <label>:475                                     ; preds = %473, %425
  %476 = phi %union.rec* [ %426, %425 ], [ %474, %473 ]
  %477 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %478 = zext i8 %477 to i32
  store i32 %478, i32* @zz_size, align 4
  %479 = sext i32 %478 to i64
  %480 = icmp uge i64 %479, 265
  br i1 %480, label %481, label %484

; <label>:481                                     ; preds = %475
  %482 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %483 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %482)
  br label %509

; <label>:484                                     ; preds = %475
  %485 = load i32, i32* @zz_size, align 4
  %486 = sext i32 %485 to i64
  %487 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %486
  %488 = load %union.rec*, %union.rec** %487, align 8
  %489 = icmp eq %union.rec* %488, null
  br i1 %489, label %490, label %494

; <label>:490                                     ; preds = %484
  %491 = load i32, i32* @zz_size, align 4
  %492 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %493 = call %union.rec* @GetMemory(i32 %491, %struct.FILE_POS* %492)
  store %union.rec* %493, %union.rec** @zz_hold, align 8
  br label %508

; <label>:494                                     ; preds = %484
  %495 = load i32, i32* @zz_size, align 4
  %496 = sext i32 %495 to i64
  %497 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %496
  %498 = load %union.rec*, %union.rec** %497, align 8
  store %union.rec* %498, %union.rec** @zz_hold, align 8
  store %union.rec* %498, %union.rec** @zz_hold, align 8
  %499 = load %union.rec*, %union.rec** @zz_hold, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 0
  %502 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %501, i32 0, i64 0
  %503 = getelementptr inbounds %struct.LIST, %struct.LIST* %502, i32 0, i32 0
  %504 = load %union.rec*, %union.rec** %503, align 8
  %505 = load i32, i32* @zz_size, align 4
  %506 = sext i32 %505 to i64
  %507 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %506
  store %union.rec* %504, %union.rec** %507, align 8
  br label %508

; <label>:508                                     ; preds = %494, %490
  br label %509

; <label>:509                                     ; preds = %508, %481
  %510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %511 = bitcast %union.rec* %510 to %struct.word_type*
  %512 = getelementptr inbounds %struct.word_type, %struct.word_type* %511, i32 0, i32 1
  %513 = bitcast %union.FIRST_UNION* %512 to %struct.anon*
  %514 = getelementptr inbounds %struct.anon, %struct.anon* %513, i32 0, i32 0
  store i8 8, i8* %514, align 1
  %515 = load %union.rec*, %union.rec** @zz_hold, align 8
  %516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %517 = bitcast %union.rec* %516 to %struct.word_type*
  %518 = getelementptr inbounds %struct.word_type, %struct.word_type* %517, i32 0, i32 0
  %519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %518, i32 0, i64 1
  %520 = getelementptr inbounds %struct.LIST, %struct.LIST* %519, i32 0, i32 1
  store %union.rec* %515, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** @zz_hold, align 8
  %522 = bitcast %union.rec* %521 to %struct.word_type*
  %523 = getelementptr inbounds %struct.word_type, %struct.word_type* %522, i32 0, i32 0
  %524 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %523, i32 0, i64 1
  %525 = getelementptr inbounds %struct.LIST, %struct.LIST* %524, i32 0, i32 0
  store %union.rec* %515, %union.rec** %525, align 8
  %526 = load %union.rec*, %union.rec** @zz_hold, align 8
  %527 = bitcast %union.rec* %526 to %struct.word_type*
  %528 = getelementptr inbounds %struct.word_type, %struct.word_type* %527, i32 0, i32 0
  %529 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %528, i32 0, i64 0
  %530 = getelementptr inbounds %struct.LIST, %struct.LIST* %529, i32 0, i32 1
  store %union.rec* %515, %union.rec** %530, align 8
  %531 = load %union.rec*, %union.rec** @zz_hold, align 8
  %532 = bitcast %union.rec* %531 to %struct.word_type*
  %533 = getelementptr inbounds %struct.word_type, %struct.word_type* %532, i32 0, i32 0
  %534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %533, i32 0, i64 0
  %535 = getelementptr inbounds %struct.LIST, %struct.LIST* %534, i32 0, i32 0
  store %union.rec* %515, %union.rec** %535, align 8
  store %union.rec* %515, %union.rec** @root_galley, align 8
  %536 = load %union.rec*, %union.rec** @root_galley, align 8
  %537 = bitcast %union.rec* %536 to %struct.word_type*
  %538 = getelementptr inbounds %struct.word_type, %struct.word_type* %537, i32 0, i32 2
  %539 = bitcast %union.SECOND_UNION* %538 to %struct.anon.2*
  %540 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %539, i32 0, i32 2
  %541 = load i16, i16* %540, align 2
  %542 = and i16 %541, -4097
  store i16 %542, i16* %540, align 2
  %543 = load %union.rec*, %union.rec** @root_galley, align 8
  %544 = bitcast %union.rec* %543 to %struct.head_type*
  %545 = getelementptr inbounds %struct.head_type, %struct.head_type* %544, i32 0, i32 11
  store %union.rec* null, %union.rec** %545, align 8
  %546 = load %union.rec*, %union.rec** @root_galley, align 8
  %547 = bitcast %union.rec* %546 to %struct.head_type*
  %548 = getelementptr inbounds %struct.head_type, %struct.head_type* %547, i32 0, i32 12
  store %union.rec* null, %union.rec** %548, align 8
  %549 = load %union.rec*, %union.rec** @root_galley, align 8
  %550 = bitcast %union.rec* %549 to %struct.head_type*
  %551 = getelementptr inbounds %struct.head_type, %struct.head_type* %550, i32 0, i32 14
  store %union.rec* null, %union.rec** %551, align 8
  %552 = load %union.rec*, %union.rec** @root_galley, align 8
  %553 = bitcast %union.rec* %552 to %struct.head_type*
  %554 = getelementptr inbounds %struct.head_type, %struct.head_type* %553, i32 0, i32 13
  store %union.rec* null, %union.rec** %554, align 8
  %555 = load %union.rec*, %union.rec** @root_galley, align 8
  %556 = bitcast %union.rec* %555 to %struct.head_type*
  %557 = getelementptr inbounds %struct.head_type, %struct.head_type* %556, i32 0, i32 9
  store %union.rec* null, %union.rec** %557, align 8
  %558 = load %union.rec*, %union.rec** @root_galley, align 8
  %559 = bitcast %union.rec* %558 to %struct.head_type*
  %560 = getelementptr inbounds %struct.head_type, %struct.head_type* %559, i32 0, i32 8
  store %union.rec* null, %union.rec** %560, align 8
  %561 = load %union.rec*, %union.rec** @root_galley, align 8
  %562 = bitcast %union.rec* %561 to %struct.word_type*
  %563 = getelementptr inbounds %struct.word_type, %struct.word_type* %562, i32 0, i32 2
  %564 = bitcast %union.SECOND_UNION* %563 to %struct.anon.2*
  %565 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %564, i32 0, i32 2
  %566 = load i16, i16* %565, align 2
  %567 = and i16 %566, -257
  %568 = or i16 %567, 256
  store i16 %568, i16* %565, align 2
  %569 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %570 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %569, i32 0, i32 2
  %571 = load i16, i16* %570, align 2
  %572 = load %union.rec*, %union.rec** @root_galley, align 8
  %573 = bitcast %union.rec* %572 to %struct.word_type*
  %574 = getelementptr inbounds %struct.word_type, %struct.word_type* %573, i32 0, i32 1
  %575 = bitcast %union.FIRST_UNION* %574 to %struct.FILE_POS*
  %576 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %575, i32 0, i32 2
  store i16 %571, i16* %576, align 2
  %577 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %578 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %577, i32 0, i32 3
  %579 = load i32, i32* %578, align 4
  %580 = and i32 %579, 1048575
  %581 = load %union.rec*, %union.rec** @root_galley, align 8
  %582 = bitcast %union.rec* %581 to %struct.word_type*
  %583 = getelementptr inbounds %struct.word_type, %struct.word_type* %582, i32 0, i32 1
  %584 = bitcast %union.FIRST_UNION* %583 to %struct.FILE_POS*
  %585 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %584, i32 0, i32 3
  %586 = load i32, i32* %585, align 4
  %587 = and i32 %580, 1048575
  %588 = and i32 %586, -1048576
  %589 = or i32 %588, %587
  store i32 %589, i32* %585, align 4
  %590 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %591 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %590, i32 0, i32 3
  %592 = load i32, i32* %591, align 4
  %593 = lshr i32 %592, 20
  %594 = load %union.rec*, %union.rec** @root_galley, align 8
  %595 = bitcast %union.rec* %594 to %struct.word_type*
  %596 = getelementptr inbounds %struct.word_type, %struct.word_type* %595, i32 0, i32 1
  %597 = bitcast %union.FIRST_UNION* %596 to %struct.FILE_POS*
  %598 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %597, i32 0, i32 3
  %599 = load i32, i32* %598, align 4
  %600 = and i32 %593, 4095
  %601 = shl i32 %600, 20
  %602 = and i32 %599, 1048575
  %603 = or i32 %602, %601
  store i32 %603, i32* %598, align 4
  %604 = load %union.rec*, %union.rec** @root_galley, align 8
  %605 = bitcast %union.rec* %604 to %struct.closure_type*
  %606 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %605, i32 0, i32 6
  %607 = bitcast %union.anon.12* %606 to %union.rec**
  store %union.rec* null, %union.rec** %607, align 8
  %608 = load %union.rec*, %union.rec** @root_galley, align 8
  %609 = bitcast %union.rec* %608 to %struct.closure_type*
  %610 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %609, i32 0, i32 5
  store %union.rec* null, %union.rec** %610, align 8
  %611 = load %union.rec*, %union.rec** @root_galley, align 8
  %612 = bitcast %union.rec* %611 to %struct.head_type*
  %613 = getelementptr inbounds %struct.head_type, %struct.head_type* %612, i32 0, i32 7
  store %union.rec* null, %union.rec** %613, align 8
  %614 = load %union.rec*, %union.rec** @root_galley, align 8
  %615 = bitcast %union.rec* %614 to %struct.word_type*
  %616 = getelementptr inbounds %struct.word_type, %struct.word_type* %615, i32 0, i32 2
  %617 = bitcast %union.SECOND_UNION* %616 to %struct.anon.2*
  %618 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %617, i32 0, i32 2
  %619 = load i16, i16* %618, align 2
  %620 = and i16 %619, -3
  store i16 %620, i16* %618, align 2
  %621 = load %union.rec*, %union.rec** @root_galley, align 8
  %622 = bitcast %union.rec* %621 to %struct.word_type*
  %623 = getelementptr inbounds %struct.word_type, %struct.word_type* %622, i32 0, i32 2
  %624 = bitcast %union.SECOND_UNION* %623 to %struct.anon.2*
  %625 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %624, i32 0, i32 2
  %626 = load i16, i16* %625, align 2
  %627 = and i16 %626, -129
  store i16 %627, i16* %625, align 2
  %628 = load %union.rec*, %union.rec** @root_galley, align 8
  %629 = bitcast %union.rec* %628 to %struct.word_type*
  %630 = getelementptr inbounds %struct.word_type, %struct.word_type* %629, i32 0, i32 2
  %631 = bitcast %union.SECOND_UNION* %630 to %struct.anon.2*
  %632 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %631, i32 0, i32 0
  store i8 -127, i8* %632, align 1
  %633 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 2), align 1
  %634 = zext i8 %633 to i32
  store i32 %634, i32* @zz_size, align 4
  %635 = sext i32 %634 to i64
  %636 = icmp uge i64 %635, 265
  br i1 %636, label %637, label %640

; <label>:637                                     ; preds = %509
  %638 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %639 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %638)
  br label %665

; <label>:640                                     ; preds = %509
  %641 = load i32, i32* @zz_size, align 4
  %642 = sext i32 %641 to i64
  %643 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %642
  %644 = load %union.rec*, %union.rec** %643, align 8
  %645 = icmp eq %union.rec* %644, null
  br i1 %645, label %646, label %650

; <label>:646                                     ; preds = %640
  %647 = load i32, i32* @zz_size, align 4
  %648 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %649 = call %union.rec* @GetMemory(i32 %647, %struct.FILE_POS* %648)
  store %union.rec* %649, %union.rec** @zz_hold, align 8
  br label %664

; <label>:650                                     ; preds = %640
  %651 = load i32, i32* @zz_size, align 4
  %652 = sext i32 %651 to i64
  %653 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %652
  %654 = load %union.rec*, %union.rec** %653, align 8
  store %union.rec* %654, %union.rec** @zz_hold, align 8
  store %union.rec* %654, %union.rec** @zz_hold, align 8
  %655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %656 = bitcast %union.rec* %655 to %struct.word_type*
  %657 = getelementptr inbounds %struct.word_type, %struct.word_type* %656, i32 0, i32 0
  %658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %657, i32 0, i64 0
  %659 = getelementptr inbounds %struct.LIST, %struct.LIST* %658, i32 0, i32 0
  %660 = load %union.rec*, %union.rec** %659, align 8
  %661 = load i32, i32* @zz_size, align 4
  %662 = sext i32 %661 to i64
  %663 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %662
  store %union.rec* %660, %union.rec** %663, align 8
  br label %664

; <label>:664                                     ; preds = %650, %646
  br label %665

; <label>:665                                     ; preds = %664, %637
  %666 = load %union.rec*, %union.rec** @zz_hold, align 8
  %667 = bitcast %union.rec* %666 to %struct.word_type*
  %668 = getelementptr inbounds %struct.word_type, %struct.word_type* %667, i32 0, i32 1
  %669 = bitcast %union.FIRST_UNION* %668 to %struct.anon*
  %670 = getelementptr inbounds %struct.anon, %struct.anon* %669, i32 0, i32 0
  store i8 2, i8* %670, align 1
  %671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %672 = load %union.rec*, %union.rec** @zz_hold, align 8
  %673 = bitcast %union.rec* %672 to %struct.word_type*
  %674 = getelementptr inbounds %struct.word_type, %struct.word_type* %673, i32 0, i32 0
  %675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %674, i32 0, i64 1
  %676 = getelementptr inbounds %struct.LIST, %struct.LIST* %675, i32 0, i32 1
  store %union.rec* %671, %union.rec** %676, align 8
  %677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %678 = bitcast %union.rec* %677 to %struct.word_type*
  %679 = getelementptr inbounds %struct.word_type, %struct.word_type* %678, i32 0, i32 0
  %680 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %679, i32 0, i64 1
  %681 = getelementptr inbounds %struct.LIST, %struct.LIST* %680, i32 0, i32 0
  store %union.rec* %671, %union.rec** %681, align 8
  %682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %683 = bitcast %union.rec* %682 to %struct.word_type*
  %684 = getelementptr inbounds %struct.word_type, %struct.word_type* %683, i32 0, i32 0
  %685 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %684, i32 0, i64 0
  %686 = getelementptr inbounds %struct.LIST, %struct.LIST* %685, i32 0, i32 1
  store %union.rec* %671, %union.rec** %686, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 0
  %690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %689, i32 0, i64 0
  %691 = getelementptr inbounds %struct.LIST, %struct.LIST* %690, i32 0, i32 0
  store %union.rec* %671, %union.rec** %691, align 8
  store %union.rec* %671, %union.rec** %x, align 8
  %692 = load %union.rec*, %union.rec** @InputSym, align 8
  %693 = load %union.rec*, %union.rec** %x, align 8
  %694 = bitcast %union.rec* %693 to %struct.closure_type*
  %695 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %694, i32 0, i32 5
  store %union.rec* %692, %union.rec** %695, align 8
  %696 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %697 = zext i8 %696 to i32
  store i32 %697, i32* @zz_size, align 4
  %698 = sext i32 %697 to i64
  %699 = icmp uge i64 %698, 265
  br i1 %699, label %700, label %703

; <label>:700                                     ; preds = %665
  %701 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %702 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %701)
  br label %728

; <label>:703                                     ; preds = %665
  %704 = load i32, i32* @zz_size, align 4
  %705 = sext i32 %704 to i64
  %706 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %705
  %707 = load %union.rec*, %union.rec** %706, align 8
  %708 = icmp eq %union.rec* %707, null
  br i1 %708, label %709, label %713

; <label>:709                                     ; preds = %703
  %710 = load i32, i32* @zz_size, align 4
  %711 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %712 = call %union.rec* @GetMemory(i32 %710, %struct.FILE_POS* %711)
  store %union.rec* %712, %union.rec** @zz_hold, align 8
  br label %727

; <label>:713                                     ; preds = %703
  %714 = load i32, i32* @zz_size, align 4
  %715 = sext i32 %714 to i64
  %716 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %715
  %717 = load %union.rec*, %union.rec** %716, align 8
  store %union.rec* %717, %union.rec** @zz_hold, align 8
  store %union.rec* %717, %union.rec** @zz_hold, align 8
  %718 = load %union.rec*, %union.rec** @zz_hold, align 8
  %719 = bitcast %union.rec* %718 to %struct.word_type*
  %720 = getelementptr inbounds %struct.word_type, %struct.word_type* %719, i32 0, i32 0
  %721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %720, i32 0, i64 0
  %722 = getelementptr inbounds %struct.LIST, %struct.LIST* %721, i32 0, i32 0
  %723 = load %union.rec*, %union.rec** %722, align 8
  %724 = load i32, i32* @zz_size, align 4
  %725 = sext i32 %724 to i64
  %726 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %725
  store %union.rec* %723, %union.rec** %726, align 8
  br label %727

; <label>:727                                     ; preds = %713, %709
  br label %728

; <label>:728                                     ; preds = %727, %700
  %729 = load %union.rec*, %union.rec** @zz_hold, align 8
  %730 = bitcast %union.rec* %729 to %struct.word_type*
  %731 = getelementptr inbounds %struct.word_type, %struct.word_type* %730, i32 0, i32 1
  %732 = bitcast %union.FIRST_UNION* %731 to %struct.anon*
  %733 = getelementptr inbounds %struct.anon, %struct.anon* %732, i32 0, i32 0
  store i8 0, i8* %733, align 1
  %734 = load %union.rec*, %union.rec** @zz_hold, align 8
  %735 = load %union.rec*, %union.rec** @zz_hold, align 8
  %736 = bitcast %union.rec* %735 to %struct.word_type*
  %737 = getelementptr inbounds %struct.word_type, %struct.word_type* %736, i32 0, i32 0
  %738 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %737, i32 0, i64 1
  %739 = getelementptr inbounds %struct.LIST, %struct.LIST* %738, i32 0, i32 1
  store %union.rec* %734, %union.rec** %739, align 8
  %740 = load %union.rec*, %union.rec** @zz_hold, align 8
  %741 = bitcast %union.rec* %740 to %struct.word_type*
  %742 = getelementptr inbounds %struct.word_type, %struct.word_type* %741, i32 0, i32 0
  %743 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %742, i32 0, i64 1
  %744 = getelementptr inbounds %struct.LIST, %struct.LIST* %743, i32 0, i32 0
  store %union.rec* %734, %union.rec** %744, align 8
  %745 = load %union.rec*, %union.rec** @zz_hold, align 8
  %746 = bitcast %union.rec* %745 to %struct.word_type*
  %747 = getelementptr inbounds %struct.word_type, %struct.word_type* %746, i32 0, i32 0
  %748 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %747, i32 0, i64 0
  %749 = getelementptr inbounds %struct.LIST, %struct.LIST* %748, i32 0, i32 1
  store %union.rec* %734, %union.rec** %749, align 8
  %750 = load %union.rec*, %union.rec** @zz_hold, align 8
  %751 = bitcast %union.rec* %750 to %struct.word_type*
  %752 = getelementptr inbounds %struct.word_type, %struct.word_type* %751, i32 0, i32 0
  %753 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %752, i32 0, i64 0
  %754 = getelementptr inbounds %struct.LIST, %struct.LIST* %753, i32 0, i32 0
  store %union.rec* %734, %union.rec** %754, align 8
  store %union.rec* %734, %union.rec** @xx_link, align 8
  %755 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %755, %union.rec** @zz_res, align 8
  %756 = load %union.rec*, %union.rec** @root_galley, align 8
  store %union.rec* %756, %union.rec** @zz_hold, align 8
  %757 = load %union.rec*, %union.rec** @zz_hold, align 8
  %758 = icmp eq %union.rec* %757, null
  br i1 %758, label %759, label %761

; <label>:759                                     ; preds = %728
  %760 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %809

; <label>:761                                     ; preds = %728
  %762 = load %union.rec*, %union.rec** @zz_res, align 8
  %763 = icmp eq %union.rec* %762, null
  br i1 %763, label %764, label %766

; <label>:764                                     ; preds = %761
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %807

; <label>:766                                     ; preds = %761
  %767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %768 = bitcast %union.rec* %767 to %struct.word_type*
  %769 = getelementptr inbounds %struct.word_type, %struct.word_type* %768, i32 0, i32 0
  %770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %769, i32 0, i64 0
  %771 = getelementptr inbounds %struct.LIST, %struct.LIST* %770, i32 0, i32 0
  %772 = load %union.rec*, %union.rec** %771, align 8
  store %union.rec* %772, %union.rec** @zz_tmp, align 8
  %773 = load %union.rec*, %union.rec** @zz_res, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 0
  %776 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %775, i32 0, i64 0
  %777 = getelementptr inbounds %struct.LIST, %struct.LIST* %776, i32 0, i32 0
  %778 = load %union.rec*, %union.rec** %777, align 8
  %779 = load %union.rec*, %union.rec** @zz_hold, align 8
  %780 = bitcast %union.rec* %779 to %struct.word_type*
  %781 = getelementptr inbounds %struct.word_type, %struct.word_type* %780, i32 0, i32 0
  %782 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %781, i32 0, i64 0
  %783 = getelementptr inbounds %struct.LIST, %struct.LIST* %782, i32 0, i32 0
  store %union.rec* %778, %union.rec** %783, align 8
  %784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %785 = load %union.rec*, %union.rec** @zz_res, align 8
  %786 = bitcast %union.rec* %785 to %struct.word_type*
  %787 = getelementptr inbounds %struct.word_type, %struct.word_type* %786, i32 0, i32 0
  %788 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %787, i32 0, i64 0
  %789 = getelementptr inbounds %struct.LIST, %struct.LIST* %788, i32 0, i32 0
  %790 = load %union.rec*, %union.rec** %789, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 0
  %793 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %792, i32 0, i64 0
  %794 = getelementptr inbounds %struct.LIST, %struct.LIST* %793, i32 0, i32 1
  store %union.rec* %784, %union.rec** %794, align 8
  %795 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %796 = load %union.rec*, %union.rec** @zz_res, align 8
  %797 = bitcast %union.rec* %796 to %struct.word_type*
  %798 = getelementptr inbounds %struct.word_type, %struct.word_type* %797, i32 0, i32 0
  %799 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %798, i32 0, i64 0
  %800 = getelementptr inbounds %struct.LIST, %struct.LIST* %799, i32 0, i32 0
  store %union.rec* %795, %union.rec** %800, align 8
  %801 = load %union.rec*, %union.rec** @zz_res, align 8
  %802 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %803 = bitcast %union.rec* %802 to %struct.word_type*
  %804 = getelementptr inbounds %struct.word_type, %struct.word_type* %803, i32 0, i32 0
  %805 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %804, i32 0, i64 0
  %806 = getelementptr inbounds %struct.LIST, %struct.LIST* %805, i32 0, i32 1
  store %union.rec* %801, %union.rec** %806, align 8
  br label %807

; <label>:807                                     ; preds = %766, %764
  %808 = phi %union.rec* [ %765, %764 ], [ %801, %766 ]
  br label %809

; <label>:809                                     ; preds = %807, %759
  %810 = phi %union.rec* [ %760, %759 ], [ %808, %807 ]
  %811 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %811, %union.rec** @zz_res, align 8
  %812 = load %union.rec*, %union.rec** %x, align 8
  store %union.rec* %812, %union.rec** @zz_hold, align 8
  %813 = load %union.rec*, %union.rec** @zz_hold, align 8
  %814 = icmp eq %union.rec* %813, null
  br i1 %814, label %815, label %817

; <label>:815                                     ; preds = %809
  %816 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %865

; <label>:817                                     ; preds = %809
  %818 = load %union.rec*, %union.rec** @zz_res, align 8
  %819 = icmp eq %union.rec* %818, null
  br i1 %819, label %820, label %822

; <label>:820                                     ; preds = %817
  %821 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %863

; <label>:822                                     ; preds = %817
  %823 = load %union.rec*, %union.rec** @zz_hold, align 8
  %824 = bitcast %union.rec* %823 to %struct.word_type*
  %825 = getelementptr inbounds %struct.word_type, %struct.word_type* %824, i32 0, i32 0
  %826 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %825, i32 0, i64 1
  %827 = getelementptr inbounds %struct.LIST, %struct.LIST* %826, i32 0, i32 0
  %828 = load %union.rec*, %union.rec** %827, align 8
  store %union.rec* %828, %union.rec** @zz_tmp, align 8
  %829 = load %union.rec*, %union.rec** @zz_res, align 8
  %830 = bitcast %union.rec* %829 to %struct.word_type*
  %831 = getelementptr inbounds %struct.word_type, %struct.word_type* %830, i32 0, i32 0
  %832 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %831, i32 0, i64 1
  %833 = getelementptr inbounds %struct.LIST, %struct.LIST* %832, i32 0, i32 0
  %834 = load %union.rec*, %union.rec** %833, align 8
  %835 = load %union.rec*, %union.rec** @zz_hold, align 8
  %836 = bitcast %union.rec* %835 to %struct.word_type*
  %837 = getelementptr inbounds %struct.word_type, %struct.word_type* %836, i32 0, i32 0
  %838 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %837, i32 0, i64 1
  %839 = getelementptr inbounds %struct.LIST, %struct.LIST* %838, i32 0, i32 0
  store %union.rec* %834, %union.rec** %839, align 8
  %840 = load %union.rec*, %union.rec** @zz_hold, align 8
  %841 = load %union.rec*, %union.rec** @zz_res, align 8
  %842 = bitcast %union.rec* %841 to %struct.word_type*
  %843 = getelementptr inbounds %struct.word_type, %struct.word_type* %842, i32 0, i32 0
  %844 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %843, i32 0, i64 1
  %845 = getelementptr inbounds %struct.LIST, %struct.LIST* %844, i32 0, i32 0
  %846 = load %union.rec*, %union.rec** %845, align 8
  %847 = bitcast %union.rec* %846 to %struct.word_type*
  %848 = getelementptr inbounds %struct.word_type, %struct.word_type* %847, i32 0, i32 0
  %849 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %848, i32 0, i64 1
  %850 = getelementptr inbounds %struct.LIST, %struct.LIST* %849, i32 0, i32 1
  store %union.rec* %840, %union.rec** %850, align 8
  %851 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %852 = load %union.rec*, %union.rec** @zz_res, align 8
  %853 = bitcast %union.rec* %852 to %struct.word_type*
  %854 = getelementptr inbounds %struct.word_type, %struct.word_type* %853, i32 0, i32 0
  %855 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %854, i32 0, i64 1
  %856 = getelementptr inbounds %struct.LIST, %struct.LIST* %855, i32 0, i32 0
  store %union.rec* %851, %union.rec** %856, align 8
  %857 = load %union.rec*, %union.rec** @zz_res, align 8
  %858 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %859 = bitcast %union.rec* %858 to %struct.word_type*
  %860 = getelementptr inbounds %struct.word_type, %struct.word_type* %859, i32 0, i32 0
  %861 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %860, i32 0, i64 1
  %862 = getelementptr inbounds %struct.LIST, %struct.LIST* %861, i32 0, i32 1
  store %union.rec* %857, %union.rec** %862, align 8
  br label %863

; <label>:863                                     ; preds = %822, %820
  %864 = phi %union.rec* [ %821, %820 ], [ %857, %822 ]
  br label %865

; <label>:865                                     ; preds = %863, %815
  %866 = phi %union.rec* [ %816, %815 ], [ %864, %863 ]
  %867 = load %union.rec*, %union.rec** @root_galley, align 8
  %868 = load %union.rec*, %union.rec** %1, align 8
  call void @SizeGalley(%union.rec* %867, %union.rec* %868, i32 1, i32 0, i32 0, i32 0, %struct.STYLE* @InitialStyle, %struct.CONSTRAINT* @initial_constraint, %union.rec* null, %union.rec** %nothing, %union.rec** %recs, %union.rec** %inners, %union.rec* null)
  %869 = load %union.rec*, %union.rec** %recs, align 8
  %870 = icmp eq %union.rec* %869, null
  br i1 %870, label %874, label %871

; <label>:871                                     ; preds = %865
  %872 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %873 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %872, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i32 0, i32 0))
  br label %874

; <label>:874                                     ; preds = %871, %865
  %875 = load %union.rec*, %union.rec** %inners, align 8
  %876 = icmp eq %union.rec* %875, null
  br i1 %876, label %880, label %877

; <label>:877                                     ; preds = %874
  %878 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %879 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %878, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i32 0, i32 0))
  br label %880

; <label>:880                                     ; preds = %877, %874
  %881 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %882 = zext i8 %881 to i32
  store i32 %882, i32* @zz_size, align 4
  %883 = sext i32 %882 to i64
  %884 = icmp uge i64 %883, 265
  br i1 %884, label %885, label %888

; <label>:885                                     ; preds = %880
  %886 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %887 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %886)
  br label %913

; <label>:888                                     ; preds = %880
  %889 = load i32, i32* @zz_size, align 4
  %890 = sext i32 %889 to i64
  %891 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %890
  %892 = load %union.rec*, %union.rec** %891, align 8
  %893 = icmp eq %union.rec* %892, null
  br i1 %893, label %894, label %898

; <label>:894                                     ; preds = %888
  %895 = load i32, i32* @zz_size, align 4
  %896 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %897 = call %union.rec* @GetMemory(i32 %895, %struct.FILE_POS* %896)
  store %union.rec* %897, %union.rec** @zz_hold, align 8
  br label %912

; <label>:898                                     ; preds = %888
  %899 = load i32, i32* @zz_size, align 4
  %900 = sext i32 %899 to i64
  %901 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %900
  %902 = load %union.rec*, %union.rec** %901, align 8
  store %union.rec* %902, %union.rec** @zz_hold, align 8
  store %union.rec* %902, %union.rec** @zz_hold, align 8
  %903 = load %union.rec*, %union.rec** @zz_hold, align 8
  %904 = bitcast %union.rec* %903 to %struct.word_type*
  %905 = getelementptr inbounds %struct.word_type, %struct.word_type* %904, i32 0, i32 0
  %906 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %905, i32 0, i64 0
  %907 = getelementptr inbounds %struct.LIST, %struct.LIST* %906, i32 0, i32 0
  %908 = load %union.rec*, %union.rec** %907, align 8
  %909 = load i32, i32* @zz_size, align 4
  %910 = sext i32 %909 to i64
  %911 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %910
  store %union.rec* %908, %union.rec** %911, align 8
  br label %912

; <label>:912                                     ; preds = %898, %894
  br label %913

; <label>:913                                     ; preds = %912, %885
  %914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %915 = bitcast %union.rec* %914 to %struct.word_type*
  %916 = getelementptr inbounds %struct.word_type, %struct.word_type* %915, i32 0, i32 1
  %917 = bitcast %union.FIRST_UNION* %916 to %struct.anon*
  %918 = getelementptr inbounds %struct.anon, %struct.anon* %917, i32 0, i32 0
  store i8 0, i8* %918, align 1
  %919 = load %union.rec*, %union.rec** @zz_hold, align 8
  %920 = load %union.rec*, %union.rec** @zz_hold, align 8
  %921 = bitcast %union.rec* %920 to %struct.word_type*
  %922 = getelementptr inbounds %struct.word_type, %struct.word_type* %921, i32 0, i32 0
  %923 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %922, i32 0, i64 1
  %924 = getelementptr inbounds %struct.LIST, %struct.LIST* %923, i32 0, i32 1
  store %union.rec* %919, %union.rec** %924, align 8
  %925 = load %union.rec*, %union.rec** @zz_hold, align 8
  %926 = bitcast %union.rec* %925 to %struct.word_type*
  %927 = getelementptr inbounds %struct.word_type, %struct.word_type* %926, i32 0, i32 0
  %928 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %927, i32 0, i64 1
  %929 = getelementptr inbounds %struct.LIST, %struct.LIST* %928, i32 0, i32 0
  store %union.rec* %919, %union.rec** %929, align 8
  %930 = load %union.rec*, %union.rec** @zz_hold, align 8
  %931 = bitcast %union.rec* %930 to %struct.word_type*
  %932 = getelementptr inbounds %struct.word_type, %struct.word_type* %931, i32 0, i32 0
  %933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %932, i32 0, i64 0
  %934 = getelementptr inbounds %struct.LIST, %struct.LIST* %933, i32 0, i32 1
  store %union.rec* %919, %union.rec** %934, align 8
  %935 = load %union.rec*, %union.rec** @zz_hold, align 8
  %936 = bitcast %union.rec* %935 to %struct.word_type*
  %937 = getelementptr inbounds %struct.word_type, %struct.word_type* %936, i32 0, i32 0
  %938 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %937, i32 0, i64 0
  %939 = getelementptr inbounds %struct.LIST, %struct.LIST* %938, i32 0, i32 0
  store %union.rec* %919, %union.rec** %939, align 8
  store %union.rec* %919, %union.rec** @xx_link, align 8
  %940 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %940, %union.rec** @zz_res, align 8
  %941 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %941, %union.rec** @zz_hold, align 8
  %942 = load %union.rec*, %union.rec** @zz_hold, align 8
  %943 = icmp eq %union.rec* %942, null
  br i1 %943, label %944, label %946

; <label>:944                                     ; preds = %913
  %945 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %994

; <label>:946                                     ; preds = %913
  %947 = load %union.rec*, %union.rec** @zz_res, align 8
  %948 = icmp eq %union.rec* %947, null
  br i1 %948, label %949, label %951

; <label>:949                                     ; preds = %946
  %950 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %992

; <label>:951                                     ; preds = %946
  %952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %953 = bitcast %union.rec* %952 to %struct.word_type*
  %954 = getelementptr inbounds %struct.word_type, %struct.word_type* %953, i32 0, i32 0
  %955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %954, i32 0, i64 0
  %956 = getelementptr inbounds %struct.LIST, %struct.LIST* %955, i32 0, i32 0
  %957 = load %union.rec*, %union.rec** %956, align 8
  store %union.rec* %957, %union.rec** @zz_tmp, align 8
  %958 = load %union.rec*, %union.rec** @zz_res, align 8
  %959 = bitcast %union.rec* %958 to %struct.word_type*
  %960 = getelementptr inbounds %struct.word_type, %struct.word_type* %959, i32 0, i32 0
  %961 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %960, i32 0, i64 0
  %962 = getelementptr inbounds %struct.LIST, %struct.LIST* %961, i32 0, i32 0
  %963 = load %union.rec*, %union.rec** %962, align 8
  %964 = load %union.rec*, %union.rec** @zz_hold, align 8
  %965 = bitcast %union.rec* %964 to %struct.word_type*
  %966 = getelementptr inbounds %struct.word_type, %struct.word_type* %965, i32 0, i32 0
  %967 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %966, i32 0, i64 0
  %968 = getelementptr inbounds %struct.LIST, %struct.LIST* %967, i32 0, i32 0
  store %union.rec* %963, %union.rec** %968, align 8
  %969 = load %union.rec*, %union.rec** @zz_hold, align 8
  %970 = load %union.rec*, %union.rec** @zz_res, align 8
  %971 = bitcast %union.rec* %970 to %struct.word_type*
  %972 = getelementptr inbounds %struct.word_type, %struct.word_type* %971, i32 0, i32 0
  %973 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %972, i32 0, i64 0
  %974 = getelementptr inbounds %struct.LIST, %struct.LIST* %973, i32 0, i32 0
  %975 = load %union.rec*, %union.rec** %974, align 8
  %976 = bitcast %union.rec* %975 to %struct.word_type*
  %977 = getelementptr inbounds %struct.word_type, %struct.word_type* %976, i32 0, i32 0
  %978 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %977, i32 0, i64 0
  %979 = getelementptr inbounds %struct.LIST, %struct.LIST* %978, i32 0, i32 1
  store %union.rec* %969, %union.rec** %979, align 8
  %980 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %981 = load %union.rec*, %union.rec** @zz_res, align 8
  %982 = bitcast %union.rec* %981 to %struct.word_type*
  %983 = getelementptr inbounds %struct.word_type, %struct.word_type* %982, i32 0, i32 0
  %984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %983, i32 0, i64 0
  %985 = getelementptr inbounds %struct.LIST, %struct.LIST* %984, i32 0, i32 0
  store %union.rec* %980, %union.rec** %985, align 8
  %986 = load %union.rec*, %union.rec** @zz_res, align 8
  %987 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %988 = bitcast %union.rec* %987 to %struct.word_type*
  %989 = getelementptr inbounds %struct.word_type, %struct.word_type* %988, i32 0, i32 0
  %990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %989, i32 0, i64 0
  %991 = getelementptr inbounds %struct.LIST, %struct.LIST* %990, i32 0, i32 1
  store %union.rec* %986, %union.rec** %991, align 8
  br label %992

; <label>:992                                     ; preds = %951, %949
  %993 = phi %union.rec* [ %950, %949 ], [ %986, %951 ]
  br label %994

; <label>:994                                     ; preds = %992, %944
  %995 = phi %union.rec* [ %945, %944 ], [ %993, %992 ]
  %996 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %996, %union.rec** @zz_res, align 8
  %997 = load %union.rec*, %union.rec** @root_galley, align 8
  store %union.rec* %997, %union.rec** @zz_hold, align 8
  %998 = load %union.rec*, %union.rec** @zz_hold, align 8
  %999 = icmp eq %union.rec* %998, null
  br i1 %999, label %1000, label %1002

; <label>:1000                                    ; preds = %994
  %1001 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1050

; <label>:1002                                    ; preds = %994
  %1003 = load %union.rec*, %union.rec** @zz_res, align 8
  %1004 = icmp eq %union.rec* %1003, null
  br i1 %1004, label %1005, label %1007

; <label>:1005                                    ; preds = %1002
  %1006 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1048

; <label>:1007                                    ; preds = %1002
  %1008 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1009 = bitcast %union.rec* %1008 to %struct.word_type*
  %1010 = getelementptr inbounds %struct.word_type, %struct.word_type* %1009, i32 0, i32 0
  %1011 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1010, i32 0, i64 1
  %1012 = getelementptr inbounds %struct.LIST, %struct.LIST* %1011, i32 0, i32 0
  %1013 = load %union.rec*, %union.rec** %1012, align 8
  store %union.rec* %1013, %union.rec** @zz_tmp, align 8
  %1014 = load %union.rec*, %union.rec** @zz_res, align 8
  %1015 = bitcast %union.rec* %1014 to %struct.word_type*
  %1016 = getelementptr inbounds %struct.word_type, %struct.word_type* %1015, i32 0, i32 0
  %1017 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1016, i32 0, i64 1
  %1018 = getelementptr inbounds %struct.LIST, %struct.LIST* %1017, i32 0, i32 0
  %1019 = load %union.rec*, %union.rec** %1018, align 8
  %1020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1021 = bitcast %union.rec* %1020 to %struct.word_type*
  %1022 = getelementptr inbounds %struct.word_type, %struct.word_type* %1021, i32 0, i32 0
  %1023 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1022, i32 0, i64 1
  %1024 = getelementptr inbounds %struct.LIST, %struct.LIST* %1023, i32 0, i32 0
  store %union.rec* %1019, %union.rec** %1024, align 8
  %1025 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1026 = load %union.rec*, %union.rec** @zz_res, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 1
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 0
  %1031 = load %union.rec*, %union.rec** %1030, align 8
  %1032 = bitcast %union.rec* %1031 to %struct.word_type*
  %1033 = getelementptr inbounds %struct.word_type, %struct.word_type* %1032, i32 0, i32 0
  %1034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1033, i32 0, i64 1
  %1035 = getelementptr inbounds %struct.LIST, %struct.LIST* %1034, i32 0, i32 1
  store %union.rec* %1025, %union.rec** %1035, align 8
  %1036 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1037 = load %union.rec*, %union.rec** @zz_res, align 8
  %1038 = bitcast %union.rec* %1037 to %struct.word_type*
  %1039 = getelementptr inbounds %struct.word_type, %struct.word_type* %1038, i32 0, i32 0
  %1040 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1039, i32 0, i64 1
  %1041 = getelementptr inbounds %struct.LIST, %struct.LIST* %1040, i32 0, i32 0
  store %union.rec* %1036, %union.rec** %1041, align 8
  %1042 = load %union.rec*, %union.rec** @zz_res, align 8
  %1043 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1044 = bitcast %union.rec* %1043 to %struct.word_type*
  %1045 = getelementptr inbounds %struct.word_type, %struct.word_type* %1044, i32 0, i32 0
  %1046 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1045, i32 0, i64 1
  %1047 = getelementptr inbounds %struct.LIST, %struct.LIST* %1046, i32 0, i32 1
  store %union.rec* %1042, %union.rec** %1047, align 8
  br label %1048

; <label>:1048                                    ; preds = %1007, %1005
  %1049 = phi %union.rec* [ %1006, %1005 ], [ %1042, %1007 ]
  br label %1050

; <label>:1050                                    ; preds = %1048, %1000
  %1051 = phi %union.rec* [ %1001, %1000 ], [ %1049, %1048 ]
  %1052 = load %union.rec*, %union.rec** @root_galley, align 8
  %1053 = bitcast %union.rec* %1052 to %struct.word_type*
  %1054 = getelementptr inbounds %struct.word_type, %struct.word_type* %1053, i32 0, i32 0
  %1055 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1054, i32 0, i64 0
  %1056 = getelementptr inbounds %struct.LIST, %struct.LIST* %1055, i32 0, i32 1
  %1057 = load %union.rec*, %union.rec** %1056, align 8
  %1058 = bitcast %union.rec* %1057 to %struct.word_type*
  %1059 = getelementptr inbounds %struct.word_type, %struct.word_type* %1058, i32 0, i32 0
  %1060 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1059, i32 0, i64 1
  %1061 = getelementptr inbounds %struct.LIST, %struct.LIST* %1060, i32 0, i32 0
  %1062 = load %union.rec*, %union.rec** %1061, align 8
  store %union.rec* %1062, %union.rec** %y, align 8
  br label %1063

; <label>:1063                                    ; preds = %1073, %1050
  %1064 = load %union.rec*, %union.rec** %y, align 8
  %1065 = bitcast %union.rec* %1064 to %struct.word_type*
  %1066 = getelementptr inbounds %struct.word_type, %struct.word_type* %1065, i32 0, i32 1
  %1067 = bitcast %union.FIRST_UNION* %1066 to %struct.anon*
  %1068 = getelementptr inbounds %struct.anon, %struct.anon* %1067, i32 0, i32 0
  %1069 = load i8, i8* %1068, align 1
  %1070 = zext i8 %1069 to i32
  %1071 = icmp eq i32 %1070, 0
  br i1 %1071, label %1072, label %1080

; <label>:1072                                    ; preds = %1063
  br label %1073

; <label>:1073                                    ; preds = %1072
  %1074 = load %union.rec*, %union.rec** %y, align 8
  %1075 = bitcast %union.rec* %1074 to %struct.word_type*
  %1076 = getelementptr inbounds %struct.word_type, %struct.word_type* %1075, i32 0, i32 0
  %1077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1076, i32 0, i64 1
  %1078 = getelementptr inbounds %struct.LIST, %struct.LIST* %1077, i32 0, i32 0
  %1079 = load %union.rec*, %union.rec** %1078, align 8
  store %union.rec* %1079, %union.rec** %y, align 8
  br label %1063

; <label>:1080                                    ; preds = %1063
  %1081 = load %union.rec*, %union.rec** %y, align 8
  %1082 = bitcast %union.rec* %1081 to %struct.word_type*
  %1083 = getelementptr inbounds %struct.word_type, %struct.word_type* %1082, i32 0, i32 1
  %1084 = bitcast %union.FIRST_UNION* %1083 to %struct.anon*
  %1085 = getelementptr inbounds %struct.anon, %struct.anon* %1084, i32 0, i32 0
  %1086 = load i8, i8* %1085, align 1
  %1087 = zext i8 %1086 to i32
  %1088 = icmp eq i32 %1087, 121
  br i1 %1088, label %1089, label %1111

; <label>:1089                                    ; preds = %1080
  %1090 = load %union.rec*, %union.rec** %y, align 8
  %1091 = bitcast %union.rec* %1090 to %struct.closure_type*
  %1092 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1091, i32 0, i32 5
  %1093 = load %union.rec*, %union.rec** %1092, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.word_type*
  %1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %1094, i32 0, i32 1
  %1096 = bitcast %union.FIRST_UNION* %1095 to %struct.anon*
  %1097 = getelementptr inbounds %struct.anon, %struct.anon* %1096, i32 0, i32 0
  %1098 = load i8, i8* %1097, align 1
  %1099 = zext i8 %1098 to i32
  %1100 = icmp eq i32 %1099, 2
  br i1 %1100, label %1101, label %1111

; <label>:1101                                    ; preds = %1089
  %1102 = load %union.rec*, %union.rec** %y, align 8
  %1103 = bitcast %union.rec* %1102 to %struct.closure_type*
  %1104 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1103, i32 0, i32 5
  %1105 = load %union.rec*, %union.rec** %1104, align 8
  %1106 = bitcast %union.rec* %1105 to %struct.closure_type*
  %1107 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1106, i32 0, i32 5
  %1108 = load %union.rec*, %union.rec** %1107, align 8
  %1109 = load %union.rec*, %union.rec** @InputSym, align 8
  %1110 = icmp eq %union.rec* %1108, %1109
  br i1 %1110, label %1114, label %1111

; <label>:1111                                    ; preds = %1101, %1089, %1080
  %1112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1113 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %1112, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i32 0, i32 0))
  br label %1114

; <label>:1114                                    ; preds = %1111, %1101
  %1115 = load %union.rec*, %union.rec** %y, align 8
  %1116 = bitcast %union.rec* %1115 to %struct.closure_type*
  %1117 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1116, i32 0, i32 5
  %1118 = load %union.rec*, %union.rec** %1117, align 8
  %1119 = bitcast %union.rec* %1118 to %struct.word_type*
  %1120 = getelementptr inbounds %struct.word_type, %struct.word_type* %1119, i32 0, i32 2
  %1121 = bitcast %union.SECOND_UNION* %1120 to %struct.anon.2*
  %1122 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1121, i32 0, i32 2
  %1123 = load i16, i16* %1122, align 2
  %1124 = lshr i16 %1123, 4
  %1125 = and i16 %1124, 1
  %1126 = zext i16 %1125 to i32
  %1127 = icmp ne i32 %1126, 0
  br i1 %1127, label %1131, label %1128

; <label>:1128                                    ; preds = %1114
  %1129 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1130 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %1129, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i32 0, i32 0))
  br label %1131

; <label>:1131                                    ; preds = %1128, %1114
  %1132 = load %union.rec*, %union.rec** %y, align 8
  %1133 = bitcast %union.rec* %1132 to %struct.word_type*
  %1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %1133, i32 0, i32 2
  %1135 = bitcast %union.SECOND_UNION* %1134 to %struct.anon.2*
  %1136 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1135, i32 0, i32 2
  %1137 = load i16, i16* %1136, align 2
  %1138 = and i16 %1137, -33
  %1139 = or i16 %1138, 32
  store i16 %1139, i16* %1136, align 2
  store i32 0, i32* @itop, align 4
  %1140 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1141 = zext i8 %1140 to i32
  store i32 %1141, i32* @zz_size, align 4
  %1142 = sext i32 %1141 to i64
  %1143 = icmp uge i64 %1142, 265
  br i1 %1143, label %1144, label %1147

; <label>:1144                                    ; preds = %1131
  %1145 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1146 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1145)
  br label %1172

; <label>:1147                                    ; preds = %1131
  %1148 = load i32, i32* @zz_size, align 4
  %1149 = sext i32 %1148 to i64
  %1150 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1149
  %1151 = load %union.rec*, %union.rec** %1150, align 8
  %1152 = icmp eq %union.rec* %1151, null
  br i1 %1152, label %1153, label %1157

; <label>:1153                                    ; preds = %1147
  %1154 = load i32, i32* @zz_size, align 4
  %1155 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1156 = call %union.rec* @GetMemory(i32 %1154, %struct.FILE_POS* %1155)
  store %union.rec* %1156, %union.rec** @zz_hold, align 8
  br label %1171

; <label>:1157                                    ; preds = %1147
  %1158 = load i32, i32* @zz_size, align 4
  %1159 = sext i32 %1158 to i64
  %1160 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1159
  %1161 = load %union.rec*, %union.rec** %1160, align 8
  store %union.rec* %1161, %union.rec** @zz_hold, align 8
  store %union.rec* %1161, %union.rec** @zz_hold, align 8
  %1162 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1163 = bitcast %union.rec* %1162 to %struct.word_type*
  %1164 = getelementptr inbounds %struct.word_type, %struct.word_type* %1163, i32 0, i32 0
  %1165 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1164, i32 0, i64 0
  %1166 = getelementptr inbounds %struct.LIST, %struct.LIST* %1165, i32 0, i32 0
  %1167 = load %union.rec*, %union.rec** %1166, align 8
  %1168 = load i32, i32* @zz_size, align 4
  %1169 = sext i32 %1168 to i64
  %1170 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1169
  store %union.rec* %1167, %union.rec** %1170, align 8
  br label %1171

; <label>:1171                                    ; preds = %1157, %1153
  br label %1172

; <label>:1172                                    ; preds = %1171, %1144
  %1173 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1174 = bitcast %union.rec* %1173 to %struct.word_type*
  %1175 = getelementptr inbounds %struct.word_type, %struct.word_type* %1174, i32 0, i32 1
  %1176 = bitcast %union.FIRST_UNION* %1175 to %struct.anon*
  %1177 = getelementptr inbounds %struct.anon, %struct.anon* %1176, i32 0, i32 0
  store i8 17, i8* %1177, align 1
  %1178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1179 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.word_type*
  %1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %1180, i32 0, i32 0
  %1182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1181, i32 0, i64 1
  %1183 = getelementptr inbounds %struct.LIST, %struct.LIST* %1182, i32 0, i32 1
  store %union.rec* %1178, %union.rec** %1183, align 8
  %1184 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1185 = bitcast %union.rec* %1184 to %struct.word_type*
  %1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %1185, i32 0, i32 0
  %1187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1186, i32 0, i64 1
  %1188 = getelementptr inbounds %struct.LIST, %struct.LIST* %1187, i32 0, i32 0
  store %union.rec* %1178, %union.rec** %1188, align 8
  %1189 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1190 = bitcast %union.rec* %1189 to %struct.word_type*
  %1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %1190, i32 0, i32 0
  %1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1191, i32 0, i64 0
  %1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %1192, i32 0, i32 1
  store %union.rec* %1178, %union.rec** %1193, align 8
  %1194 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1195 = bitcast %union.rec* %1194 to %struct.word_type*
  %1196 = getelementptr inbounds %struct.word_type, %struct.word_type* %1195, i32 0, i32 0
  %1197 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1196, i32 0, i64 0
  %1198 = getelementptr inbounds %struct.LIST, %struct.LIST* %1197, i32 0, i32 0
  store %union.rec* %1178, %union.rec** %1198, align 8
  %1199 = load i32, i32* @itop, align 4
  %1200 = sext i32 %1199 to i64
  %1201 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %1200
  store %union.rec* %1178, %union.rec** %1201, align 8
  %1202 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1203 = zext i8 %1202 to i32
  store i32 %1203, i32* @zz_size, align 4
  %1204 = sext i32 %1203 to i64
  %1205 = icmp uge i64 %1204, 265
  br i1 %1205, label %1206, label %1209

; <label>:1206                                    ; preds = %1172
  %1207 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1208 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1207)
  br label %1234

; <label>:1209                                    ; preds = %1172
  %1210 = load i32, i32* @zz_size, align 4
  %1211 = sext i32 %1210 to i64
  %1212 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1211
  %1213 = load %union.rec*, %union.rec** %1212, align 8
  %1214 = icmp eq %union.rec* %1213, null
  br i1 %1214, label %1215, label %1219

; <label>:1215                                    ; preds = %1209
  %1216 = load i32, i32* @zz_size, align 4
  %1217 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1218 = call %union.rec* @GetMemory(i32 %1216, %struct.FILE_POS* %1217)
  store %union.rec* %1218, %union.rec** @zz_hold, align 8
  br label %1233

; <label>:1219                                    ; preds = %1209
  %1220 = load i32, i32* @zz_size, align 4
  %1221 = sext i32 %1220 to i64
  %1222 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1221
  %1223 = load %union.rec*, %union.rec** %1222, align 8
  store %union.rec* %1223, %union.rec** @zz_hold, align 8
  store %union.rec* %1223, %union.rec** @zz_hold, align 8
  %1224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1225 = bitcast %union.rec* %1224 to %struct.word_type*
  %1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %1225, i32 0, i32 0
  %1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1226, i32 0, i64 0
  %1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %1227, i32 0, i32 0
  %1229 = load %union.rec*, %union.rec** %1228, align 8
  %1230 = load i32, i32* @zz_size, align 4
  %1231 = sext i32 %1230 to i64
  %1232 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1231
  store %union.rec* %1229, %union.rec** %1232, align 8
  br label %1233

; <label>:1233                                    ; preds = %1219, %1215
  br label %1234

; <label>:1234                                    ; preds = %1233, %1206
  %1235 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1236 = bitcast %union.rec* %1235 to %struct.word_type*
  %1237 = getelementptr inbounds %struct.word_type, %struct.word_type* %1236, i32 0, i32 1
  %1238 = bitcast %union.FIRST_UNION* %1237 to %struct.anon*
  %1239 = getelementptr inbounds %struct.anon, %struct.anon* %1238, i32 0, i32 0
  store i8 0, i8* %1239, align 1
  %1240 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1242 = bitcast %union.rec* %1241 to %struct.word_type*
  %1243 = getelementptr inbounds %struct.word_type, %struct.word_type* %1242, i32 0, i32 0
  %1244 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1243, i32 0, i64 1
  %1245 = getelementptr inbounds %struct.LIST, %struct.LIST* %1244, i32 0, i32 1
  store %union.rec* %1240, %union.rec** %1245, align 8
  %1246 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1247 = bitcast %union.rec* %1246 to %struct.word_type*
  %1248 = getelementptr inbounds %struct.word_type, %struct.word_type* %1247, i32 0, i32 0
  %1249 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1248, i32 0, i64 1
  %1250 = getelementptr inbounds %struct.LIST, %struct.LIST* %1249, i32 0, i32 0
  store %union.rec* %1240, %union.rec** %1250, align 8
  %1251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1252 = bitcast %union.rec* %1251 to %struct.word_type*
  %1253 = getelementptr inbounds %struct.word_type, %struct.word_type* %1252, i32 0, i32 0
  %1254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1253, i32 0, i64 0
  %1255 = getelementptr inbounds %struct.LIST, %struct.LIST* %1254, i32 0, i32 1
  store %union.rec* %1240, %union.rec** %1255, align 8
  %1256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1257 = bitcast %union.rec* %1256 to %struct.word_type*
  %1258 = getelementptr inbounds %struct.word_type, %struct.word_type* %1257, i32 0, i32 0
  %1259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1258, i32 0, i64 0
  %1260 = getelementptr inbounds %struct.LIST, %struct.LIST* %1259, i32 0, i32 0
  store %union.rec* %1240, %union.rec** %1260, align 8
  store %union.rec* %1240, %union.rec** @xx_link, align 8
  %1261 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1261, %union.rec** @zz_res, align 8
  %1262 = load i32, i32* @itop, align 4
  %1263 = sext i32 %1262 to i64
  %1264 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %1263
  %1265 = load %union.rec*, %union.rec** %1264, align 8
  store %union.rec* %1265, %union.rec** @zz_hold, align 8
  %1266 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1267 = icmp eq %union.rec* %1266, null
  br i1 %1267, label %1268, label %1270

; <label>:1268                                    ; preds = %1234
  %1269 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1318

; <label>:1270                                    ; preds = %1234
  %1271 = load %union.rec*, %union.rec** @zz_res, align 8
  %1272 = icmp eq %union.rec* %1271, null
  br i1 %1272, label %1273, label %1275

; <label>:1273                                    ; preds = %1270
  %1274 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1316

; <label>:1275                                    ; preds = %1270
  %1276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1277 = bitcast %union.rec* %1276 to %struct.word_type*
  %1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %1277, i32 0, i32 0
  %1279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1278, i32 0, i64 0
  %1280 = getelementptr inbounds %struct.LIST, %struct.LIST* %1279, i32 0, i32 0
  %1281 = load %union.rec*, %union.rec** %1280, align 8
  store %union.rec* %1281, %union.rec** @zz_tmp, align 8
  %1282 = load %union.rec*, %union.rec** @zz_res, align 8
  %1283 = bitcast %union.rec* %1282 to %struct.word_type*
  %1284 = getelementptr inbounds %struct.word_type, %struct.word_type* %1283, i32 0, i32 0
  %1285 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1284, i32 0, i64 0
  %1286 = getelementptr inbounds %struct.LIST, %struct.LIST* %1285, i32 0, i32 0
  %1287 = load %union.rec*, %union.rec** %1286, align 8
  %1288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1289 = bitcast %union.rec* %1288 to %struct.word_type*
  %1290 = getelementptr inbounds %struct.word_type, %struct.word_type* %1289, i32 0, i32 0
  %1291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1290, i32 0, i64 0
  %1292 = getelementptr inbounds %struct.LIST, %struct.LIST* %1291, i32 0, i32 0
  store %union.rec* %1287, %union.rec** %1292, align 8
  %1293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1294 = load %union.rec*, %union.rec** @zz_res, align 8
  %1295 = bitcast %union.rec* %1294 to %struct.word_type*
  %1296 = getelementptr inbounds %struct.word_type, %struct.word_type* %1295, i32 0, i32 0
  %1297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1296, i32 0, i64 0
  %1298 = getelementptr inbounds %struct.LIST, %struct.LIST* %1297, i32 0, i32 0
  %1299 = load %union.rec*, %union.rec** %1298, align 8
  %1300 = bitcast %union.rec* %1299 to %struct.word_type*
  %1301 = getelementptr inbounds %struct.word_type, %struct.word_type* %1300, i32 0, i32 0
  %1302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1301, i32 0, i64 0
  %1303 = getelementptr inbounds %struct.LIST, %struct.LIST* %1302, i32 0, i32 1
  store %union.rec* %1293, %union.rec** %1303, align 8
  %1304 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1305 = load %union.rec*, %union.rec** @zz_res, align 8
  %1306 = bitcast %union.rec* %1305 to %struct.word_type*
  %1307 = getelementptr inbounds %struct.word_type, %struct.word_type* %1306, i32 0, i32 0
  %1308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1307, i32 0, i64 0
  %1309 = getelementptr inbounds %struct.LIST, %struct.LIST* %1308, i32 0, i32 0
  store %union.rec* %1304, %union.rec** %1309, align 8
  %1310 = load %union.rec*, %union.rec** @zz_res, align 8
  %1311 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1312 = bitcast %union.rec* %1311 to %struct.word_type*
  %1313 = getelementptr inbounds %struct.word_type, %struct.word_type* %1312, i32 0, i32 0
  %1314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1313, i32 0, i64 0
  %1315 = getelementptr inbounds %struct.LIST, %struct.LIST* %1314, i32 0, i32 1
  store %union.rec* %1310, %union.rec** %1315, align 8
  br label %1316

; <label>:1316                                    ; preds = %1275, %1273
  %1317 = phi %union.rec* [ %1274, %1273 ], [ %1310, %1275 ]
  br label %1318

; <label>:1318                                    ; preds = %1316, %1268
  %1319 = phi %union.rec* [ %1269, %1268 ], [ %1317, %1316 ]
  %1320 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1320, %union.rec** @zz_res, align 8
  %1321 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %1321, %union.rec** @zz_hold, align 8
  %1322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1323 = icmp eq %union.rec* %1322, null
  br i1 %1323, label %1324, label %1326

; <label>:1324                                    ; preds = %1318
  %1325 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1374

; <label>:1326                                    ; preds = %1318
  %1327 = load %union.rec*, %union.rec** @zz_res, align 8
  %1328 = icmp eq %union.rec* %1327, null
  br i1 %1328, label %1329, label %1331

; <label>:1329                                    ; preds = %1326
  %1330 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1372

; <label>:1331                                    ; preds = %1326
  %1332 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1333 = bitcast %union.rec* %1332 to %struct.word_type*
  %1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %1333, i32 0, i32 0
  %1335 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1334, i32 0, i64 1
  %1336 = getelementptr inbounds %struct.LIST, %struct.LIST* %1335, i32 0, i32 0
  %1337 = load %union.rec*, %union.rec** %1336, align 8
  store %union.rec* %1337, %union.rec** @zz_tmp, align 8
  %1338 = load %union.rec*, %union.rec** @zz_res, align 8
  %1339 = bitcast %union.rec* %1338 to %struct.word_type*
  %1340 = getelementptr inbounds %struct.word_type, %struct.word_type* %1339, i32 0, i32 0
  %1341 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1340, i32 0, i64 1
  %1342 = getelementptr inbounds %struct.LIST, %struct.LIST* %1341, i32 0, i32 0
  %1343 = load %union.rec*, %union.rec** %1342, align 8
  %1344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1345 = bitcast %union.rec* %1344 to %struct.word_type*
  %1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %1345, i32 0, i32 0
  %1347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1346, i32 0, i64 1
  %1348 = getelementptr inbounds %struct.LIST, %struct.LIST* %1347, i32 0, i32 0
  store %union.rec* %1343, %union.rec** %1348, align 8
  %1349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1350 = load %union.rec*, %union.rec** @zz_res, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.word_type*
  %1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %1351, i32 0, i32 0
  %1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1352, i32 0, i64 1
  %1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %1353, i32 0, i32 0
  %1355 = load %union.rec*, %union.rec** %1354, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 1
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 1
  store %union.rec* %1349, %union.rec** %1359, align 8
  %1360 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1361 = load %union.rec*, %union.rec** @zz_res, align 8
  %1362 = bitcast %union.rec* %1361 to %struct.word_type*
  %1363 = getelementptr inbounds %struct.word_type, %struct.word_type* %1362, i32 0, i32 0
  %1364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1363, i32 0, i64 1
  %1365 = getelementptr inbounds %struct.LIST, %struct.LIST* %1364, i32 0, i32 0
  store %union.rec* %1360, %union.rec** %1365, align 8
  %1366 = load %union.rec*, %union.rec** @zz_res, align 8
  %1367 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1368 = bitcast %union.rec* %1367 to %struct.word_type*
  %1369 = getelementptr inbounds %struct.word_type, %struct.word_type* %1368, i32 0, i32 0
  %1370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1369, i32 0, i64 1
  %1371 = getelementptr inbounds %struct.LIST, %struct.LIST* %1370, i32 0, i32 1
  store %union.rec* %1366, %union.rec** %1371, align 8
  br label %1372

; <label>:1372                                    ; preds = %1331, %1329
  %1373 = phi %union.rec* [ %1330, %1329 ], [ %1366, %1331 ]
  br label %1374

; <label>:1374                                    ; preds = %1372, %1324
  %1375 = phi %union.rec* [ %1325, %1324 ], [ %1373, %1372 ]
  %1376 = load %union.rec*, %union.rec** %y, align 8
  %1377 = bitcast %union.rec* %1376 to %struct.closure_type*
  %1378 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1377, i32 0, i32 5
  %1379 = load %union.rec*, %union.rec** %1378, align 8
  %1380 = load i32, i32* @itop, align 4
  %1381 = sext i32 %1380 to i64
  %1382 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %1381
  call void @Constrained(%union.rec* %1379, %struct.CONSTRAINT* %1382, i32 0, %union.rec** %why)
  ret void
}

declare i8* @Error(i32, i32, i8*, i32, %struct.FILE_POS*, ...) #1

declare %union.rec* @GetMemory(i32, %struct.FILE_POS*) #1

declare void @SizeGalley(%union.rec*, %union.rec*, i32, i32, i32, i32, %struct.STYLE*, %struct.CONSTRAINT*, %union.rec*, %union.rec**, %union.rec**, %union.rec**, %union.rec*) #1

declare void @Constrained(%union.rec*, %struct.CONSTRAINT*, i32, %union.rec**) #1

; Function Attrs: nounwind uwtable
define %union.rec* @TransferBegin(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %2 = alloca %union.rec*, align 8
  %xsym = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %link = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %new_env = alloca %union.rec*, align 8
  %hold_env = alloca %union.rec*, align 8
  %res = alloca %union.rec*, align 8
  %hd = alloca %union.rec*, align 8
  %target = alloca %union.rec*, align 8
  %why = alloca %union.rec*, align 8
  %c = alloca %struct.CONSTRAINT, align 4
  store %union.rec* %x, %union.rec** %2, align 8
  %3 = load %union.rec*, %union.rec** %2, align 8
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
  %13 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %12, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i32 0, i32 0))
  br label %14

; <label>:14                                      ; preds = %11, %0
  %15 = load %union.rec*, %union.rec** %2, align 8
  %16 = bitcast %union.rec* %15 to %struct.closure_type*
  %17 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %16, i32 0, i32 5
  %18 = load %union.rec*, %union.rec** %17, align 8
  %19 = bitcast %union.rec* %18 to %struct.word_type*
  %20 = getelementptr inbounds %struct.word_type, %struct.word_type* %19, i32 0, i32 2
  %21 = bitcast %union.SECOND_UNION* %20 to %struct.anon.5*
  %22 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %21, i32 0, i32 1
  %23 = bitcast [3 x i8]* %22 to i24*
  %24 = load i24, i24* %23, align 1
  %25 = lshr i24 %24, 1
  %26 = and i24 %25, 1
  %27 = zext i24 %26 to i32
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

; <label>:29                                      ; preds = %14
  %30 = load %union.rec*, %union.rec** %2, align 8
  call void @CrossAddTag(%union.rec* %30)
  br label %31

; <label>:31                                      ; preds = %29, %14
  %32 = load i32, i32* @itop, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %33
  %35 = load %union.rec*, %union.rec** %34, align 8
  %36 = bitcast %union.rec* %35 to %struct.word_type*
  %37 = getelementptr inbounds %struct.word_type, %struct.word_type* %36, i32 0, i32 0
  %38 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %37, i32 0, i64 0
  %39 = getelementptr inbounds %struct.LIST, %struct.LIST* %38, i32 0, i32 1
  %40 = load %union.rec*, %union.rec** %39, align 8
  %41 = load i32, i32* @itop, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %42
  %44 = load %union.rec*, %union.rec** %43, align 8
  %45 = icmp eq %union.rec* %40, %44
  br i1 %45, label %46, label %57

; <label>:46                                      ; preds = %31
  %47 = load %union.rec*, %union.rec** %2, align 8
  %48 = bitcast %union.rec* %47 to %struct.word_type*
  %49 = getelementptr inbounds %struct.word_type, %struct.word_type* %48, i32 0, i32 1
  %50 = bitcast %union.FIRST_UNION* %49 to %struct.FILE_POS*
  %51 = load %union.rec*, %union.rec** %2, align 8
  %52 = bitcast %union.rec* %51 to %struct.closure_type*
  %53 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %52, i32 0, i32 5
  %54 = load %union.rec*, %union.rec** %53, align 8
  %55 = call i8* @SymName(%union.rec* %54)
  %56 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i32 0, i32 0), i32 1, %struct.FILE_POS* %50, i8* %55)
  br label %57

; <label>:57                                      ; preds = %46, %31
  %58 = load i32, i32* @itop, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %59
  %61 = load %union.rec*, %union.rec** %60, align 8
  %62 = bitcast %union.rec* %61 to %struct.word_type*
  %63 = getelementptr inbounds %struct.word_type, %struct.word_type* %62, i32 0, i32 0
  %64 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %63, i32 0, i64 0
  %65 = getelementptr inbounds %struct.LIST, %struct.LIST* %64, i32 0, i32 1
  %66 = load %union.rec*, %union.rec** %65, align 8
  %67 = bitcast %union.rec* %66 to %struct.word_type*
  %68 = getelementptr inbounds %struct.word_type, %struct.word_type* %67, i32 0, i32 0
  %69 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %68, i32 0, i64 1
  %70 = getelementptr inbounds %struct.LIST, %struct.LIST* %69, i32 0, i32 0
  %71 = load %union.rec*, %union.rec** %70, align 8
  store %union.rec* %71, %union.rec** %target, align 8
  br label %72

; <label>:72                                      ; preds = %82, %57
  %73 = load %union.rec*, %union.rec** %target, align 8
  %74 = bitcast %union.rec* %73 to %struct.word_type*
  %75 = getelementptr inbounds %struct.word_type, %struct.word_type* %74, i32 0, i32 1
  %76 = bitcast %union.FIRST_UNION* %75 to %struct.anon*
  %77 = getelementptr inbounds %struct.anon, %struct.anon* %76, i32 0, i32 0
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %89

; <label>:81                                      ; preds = %72
  br label %82

; <label>:82                                      ; preds = %81
  %83 = load %union.rec*, %union.rec** %target, align 8
  %84 = bitcast %union.rec* %83 to %struct.word_type*
  %85 = getelementptr inbounds %struct.word_type, %struct.word_type* %84, i32 0, i32 0
  %86 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %85, i32 0, i64 1
  %87 = getelementptr inbounds %struct.LIST, %struct.LIST* %86, i32 0, i32 0
  %88 = load %union.rec*, %union.rec** %87, align 8
  store %union.rec* %88, %union.rec** %target, align 8
  br label %72

; <label>:89                                      ; preds = %72
  %90 = load %union.rec*, %union.rec** %2, align 8
  %91 = bitcast %union.rec* %90 to %struct.closure_type*
  %92 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %91, i32 0, i32 5
  %93 = load %union.rec*, %union.rec** %92, align 8
  store %union.rec* %93, %union.rec** %xsym, align 8
  %94 = load %union.rec*, %union.rec** %target, align 8
  %95 = bitcast %union.rec* %94 to %struct.closure_type*
  %96 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %95, i32 0, i32 5
  %97 = load %union.rec*, %union.rec** %96, align 8
  %98 = call %union.rec* @GetEnv(%union.rec* %97)
  store %union.rec* %98, %union.rec** %env, align 8
  %99 = load %union.rec*, %union.rec** %xsym, align 8
  %100 = bitcast %union.rec* %99 to %struct.word_type*
  %101 = getelementptr inbounds %struct.word_type, %struct.word_type* %100, i32 0, i32 2
  %102 = bitcast %union.SECOND_UNION* %101 to %struct.anon.5*
  %103 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %102, i32 0, i32 1
  %104 = bitcast [3 x i8]* %103 to i24*
  %105 = load i24, i24* %104, align 1
  %106 = lshr i24 %105, 8
  %107 = and i24 %106, 1
  %108 = zext i24 %107 to i32
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %118

; <label>:110                                     ; preds = %89
  %111 = load %union.rec*, %union.rec** %2, align 8
  %112 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %113 = call %union.rec* @CopyObject(%union.rec* %111, %struct.FILE_POS* %112)
  store %union.rec* %113, %union.rec** %y, align 8
  %114 = load %union.rec*, %union.rec** %env, align 8
  %115 = load %union.rec*, %union.rec** %y, align 8
  call void @AttachEnv(%union.rec* %114, %union.rec* %115)
  %116 = load %union.rec*, %union.rec** %y, align 8
  %117 = call %union.rec* @SetEnv(%union.rec* %116, %union.rec* null)
  store %union.rec* %117, %union.rec** %new_env, align 8
  br label %120

; <label>:118                                     ; preds = %89
  %119 = load %union.rec*, %union.rec** %env, align 8
  store %union.rec* %119, %union.rec** %new_env, align 8
  br label %120

; <label>:120                                     ; preds = %118, %110
  %121 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %122 = zext i8 %121 to i32
  store i32 %122, i32* @zz_size, align 4
  %123 = sext i32 %122 to i64
  %124 = icmp uge i64 %123, 265
  br i1 %124, label %125, label %128

; <label>:125                                     ; preds = %120
  %126 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %127 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %126)
  br label %153

; <label>:128                                     ; preds = %120
  %129 = load i32, i32* @zz_size, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %130
  %132 = load %union.rec*, %union.rec** %131, align 8
  %133 = icmp eq %union.rec* %132, null
  br i1 %133, label %134, label %138

; <label>:134                                     ; preds = %128
  %135 = load i32, i32* @zz_size, align 4
  %136 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %137 = call %union.rec* @GetMemory(i32 %135, %struct.FILE_POS* %136)
  store %union.rec* %137, %union.rec** @zz_hold, align 8
  br label %152

; <label>:138                                     ; preds = %128
  %139 = load i32, i32* @zz_size, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %140
  %142 = load %union.rec*, %union.rec** %141, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  store %union.rec* %142, %union.rec** @zz_hold, align 8
  %143 = load %union.rec*, %union.rec** @zz_hold, align 8
  %144 = bitcast %union.rec* %143 to %struct.word_type*
  %145 = getelementptr inbounds %struct.word_type, %struct.word_type* %144, i32 0, i32 0
  %146 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %145, i32 0, i64 0
  %147 = getelementptr inbounds %struct.LIST, %struct.LIST* %146, i32 0, i32 0
  %148 = load %union.rec*, %union.rec** %147, align 8
  %149 = load i32, i32* @zz_size, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %150
  store %union.rec* %148, %union.rec** %151, align 8
  br label %152

; <label>:152                                     ; preds = %138, %134
  br label %153

; <label>:153                                     ; preds = %152, %125
  %154 = load %union.rec*, %union.rec** @zz_hold, align 8
  %155 = bitcast %union.rec* %154 to %struct.word_type*
  %156 = getelementptr inbounds %struct.word_type, %struct.word_type* %155, i32 0, i32 1
  %157 = bitcast %union.FIRST_UNION* %156 to %struct.anon*
  %158 = getelementptr inbounds %struct.anon, %struct.anon* %157, i32 0, i32 0
  store i8 17, i8* %158, align 1
  %159 = load %union.rec*, %union.rec** @zz_hold, align 8
  %160 = load %union.rec*, %union.rec** @zz_hold, align 8
  %161 = bitcast %union.rec* %160 to %struct.word_type*
  %162 = getelementptr inbounds %struct.word_type, %struct.word_type* %161, i32 0, i32 0
  %163 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %162, i32 0, i64 1
  %164 = getelementptr inbounds %struct.LIST, %struct.LIST* %163, i32 0, i32 1
  store %union.rec* %159, %union.rec** %164, align 8
  %165 = load %union.rec*, %union.rec** @zz_hold, align 8
  %166 = bitcast %union.rec* %165 to %struct.word_type*
  %167 = getelementptr inbounds %struct.word_type, %struct.word_type* %166, i32 0, i32 0
  %168 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %167, i32 0, i64 1
  %169 = getelementptr inbounds %struct.LIST, %struct.LIST* %168, i32 0, i32 0
  store %union.rec* %159, %union.rec** %169, align 8
  %170 = load %union.rec*, %union.rec** @zz_hold, align 8
  %171 = bitcast %union.rec* %170 to %struct.word_type*
  %172 = getelementptr inbounds %struct.word_type, %struct.word_type* %171, i32 0, i32 0
  %173 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %172, i32 0, i64 0
  %174 = getelementptr inbounds %struct.LIST, %struct.LIST* %173, i32 0, i32 1
  store %union.rec* %159, %union.rec** %174, align 8
  %175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %176 = bitcast %union.rec* %175 to %struct.word_type*
  %177 = getelementptr inbounds %struct.word_type, %struct.word_type* %176, i32 0, i32 0
  %178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %177, i32 0, i64 0
  %179 = getelementptr inbounds %struct.LIST, %struct.LIST* %178, i32 0, i32 0
  store %union.rec* %159, %union.rec** %179, align 8
  store %union.rec* %159, %union.rec** %hold_env, align 8
  %180 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %181 = zext i8 %180 to i32
  store i32 %181, i32* @zz_size, align 4
  %182 = sext i32 %181 to i64
  %183 = icmp uge i64 %182, 265
  br i1 %183, label %184, label %187

; <label>:184                                     ; preds = %153
  %185 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %186 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %185)
  br label %212

; <label>:187                                     ; preds = %153
  %188 = load i32, i32* @zz_size, align 4
  %189 = sext i32 %188 to i64
  %190 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %189
  %191 = load %union.rec*, %union.rec** %190, align 8
  %192 = icmp eq %union.rec* %191, null
  br i1 %192, label %193, label %197

; <label>:193                                     ; preds = %187
  %194 = load i32, i32* @zz_size, align 4
  %195 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %196 = call %union.rec* @GetMemory(i32 %194, %struct.FILE_POS* %195)
  store %union.rec* %196, %union.rec** @zz_hold, align 8
  br label %211

; <label>:197                                     ; preds = %187
  %198 = load i32, i32* @zz_size, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %199
  %201 = load %union.rec*, %union.rec** %200, align 8
  store %union.rec* %201, %union.rec** @zz_hold, align 8
  store %union.rec* %201, %union.rec** @zz_hold, align 8
  %202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %203 = bitcast %union.rec* %202 to %struct.word_type*
  %204 = getelementptr inbounds %struct.word_type, %struct.word_type* %203, i32 0, i32 0
  %205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %204, i32 0, i64 0
  %206 = getelementptr inbounds %struct.LIST, %struct.LIST* %205, i32 0, i32 0
  %207 = load %union.rec*, %union.rec** %206, align 8
  %208 = load i32, i32* @zz_size, align 4
  %209 = sext i32 %208 to i64
  %210 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %209
  store %union.rec* %207, %union.rec** %210, align 8
  br label %211

; <label>:211                                     ; preds = %197, %193
  br label %212

; <label>:212                                     ; preds = %211, %184
  %213 = load %union.rec*, %union.rec** @zz_hold, align 8
  %214 = bitcast %union.rec* %213 to %struct.word_type*
  %215 = getelementptr inbounds %struct.word_type, %struct.word_type* %214, i32 0, i32 1
  %216 = bitcast %union.FIRST_UNION* %215 to %struct.anon*
  %217 = getelementptr inbounds %struct.anon, %struct.anon* %216, i32 0, i32 0
  store i8 0, i8* %217, align 1
  %218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %219 = load %union.rec*, %union.rec** @zz_hold, align 8
  %220 = bitcast %union.rec* %219 to %struct.word_type*
  %221 = getelementptr inbounds %struct.word_type, %struct.word_type* %220, i32 0, i32 0
  %222 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %221, i32 0, i64 1
  %223 = getelementptr inbounds %struct.LIST, %struct.LIST* %222, i32 0, i32 1
  store %union.rec* %218, %union.rec** %223, align 8
  %224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %225 = bitcast %union.rec* %224 to %struct.word_type*
  %226 = getelementptr inbounds %struct.word_type, %struct.word_type* %225, i32 0, i32 0
  %227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %226, i32 0, i64 1
  %228 = getelementptr inbounds %struct.LIST, %struct.LIST* %227, i32 0, i32 0
  store %union.rec* %218, %union.rec** %228, align 8
  %229 = load %union.rec*, %union.rec** @zz_hold, align 8
  %230 = bitcast %union.rec* %229 to %struct.word_type*
  %231 = getelementptr inbounds %struct.word_type, %struct.word_type* %230, i32 0, i32 0
  %232 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %231, i32 0, i64 0
  %233 = getelementptr inbounds %struct.LIST, %struct.LIST* %232, i32 0, i32 1
  store %union.rec* %218, %union.rec** %233, align 8
  %234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %235 = bitcast %union.rec* %234 to %struct.word_type*
  %236 = getelementptr inbounds %struct.word_type, %struct.word_type* %235, i32 0, i32 0
  %237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %236, i32 0, i64 0
  %238 = getelementptr inbounds %struct.LIST, %struct.LIST* %237, i32 0, i32 0
  store %union.rec* %218, %union.rec** %238, align 8
  store %union.rec* %218, %union.rec** @xx_link, align 8
  %239 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %239, %union.rec** @zz_res, align 8
  %240 = load %union.rec*, %union.rec** %hold_env, align 8
  store %union.rec* %240, %union.rec** @zz_hold, align 8
  %241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %242 = icmp eq %union.rec* %241, null
  br i1 %242, label %243, label %245

; <label>:243                                     ; preds = %212
  %244 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %293

; <label>:245                                     ; preds = %212
  %246 = load %union.rec*, %union.rec** @zz_res, align 8
  %247 = icmp eq %union.rec* %246, null
  br i1 %247, label %248, label %250

; <label>:248                                     ; preds = %245
  %249 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %291

; <label>:250                                     ; preds = %245
  %251 = load %union.rec*, %union.rec** @zz_hold, align 8
  %252 = bitcast %union.rec* %251 to %struct.word_type*
  %253 = getelementptr inbounds %struct.word_type, %struct.word_type* %252, i32 0, i32 0
  %254 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %253, i32 0, i64 0
  %255 = getelementptr inbounds %struct.LIST, %struct.LIST* %254, i32 0, i32 0
  %256 = load %union.rec*, %union.rec** %255, align 8
  store %union.rec* %256, %union.rec** @zz_tmp, align 8
  %257 = load %union.rec*, %union.rec** @zz_res, align 8
  %258 = bitcast %union.rec* %257 to %struct.word_type*
  %259 = getelementptr inbounds %struct.word_type, %struct.word_type* %258, i32 0, i32 0
  %260 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %259, i32 0, i64 0
  %261 = getelementptr inbounds %struct.LIST, %struct.LIST* %260, i32 0, i32 0
  %262 = load %union.rec*, %union.rec** %261, align 8
  %263 = load %union.rec*, %union.rec** @zz_hold, align 8
  %264 = bitcast %union.rec* %263 to %struct.word_type*
  %265 = getelementptr inbounds %struct.word_type, %struct.word_type* %264, i32 0, i32 0
  %266 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %265, i32 0, i64 0
  %267 = getelementptr inbounds %struct.LIST, %struct.LIST* %266, i32 0, i32 0
  store %union.rec* %262, %union.rec** %267, align 8
  %268 = load %union.rec*, %union.rec** @zz_hold, align 8
  %269 = load %union.rec*, %union.rec** @zz_res, align 8
  %270 = bitcast %union.rec* %269 to %struct.word_type*
  %271 = getelementptr inbounds %struct.word_type, %struct.word_type* %270, i32 0, i32 0
  %272 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %271, i32 0, i64 0
  %273 = getelementptr inbounds %struct.LIST, %struct.LIST* %272, i32 0, i32 0
  %274 = load %union.rec*, %union.rec** %273, align 8
  %275 = bitcast %union.rec* %274 to %struct.word_type*
  %276 = getelementptr inbounds %struct.word_type, %struct.word_type* %275, i32 0, i32 0
  %277 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %276, i32 0, i64 0
  %278 = getelementptr inbounds %struct.LIST, %struct.LIST* %277, i32 0, i32 1
  store %union.rec* %268, %union.rec** %278, align 8
  %279 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %280 = load %union.rec*, %union.rec** @zz_res, align 8
  %281 = bitcast %union.rec* %280 to %struct.word_type*
  %282 = getelementptr inbounds %struct.word_type, %struct.word_type* %281, i32 0, i32 0
  %283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %282, i32 0, i64 0
  %284 = getelementptr inbounds %struct.LIST, %struct.LIST* %283, i32 0, i32 0
  store %union.rec* %279, %union.rec** %284, align 8
  %285 = load %union.rec*, %union.rec** @zz_res, align 8
  %286 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %287 = bitcast %union.rec* %286 to %struct.word_type*
  %288 = getelementptr inbounds %struct.word_type, %struct.word_type* %287, i32 0, i32 0
  %289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %288, i32 0, i64 0
  %290 = getelementptr inbounds %struct.LIST, %struct.LIST* %289, i32 0, i32 1
  store %union.rec* %285, %union.rec** %290, align 8
  br label %291

; <label>:291                                     ; preds = %250, %248
  %292 = phi %union.rec* [ %249, %248 ], [ %285, %250 ]
  br label %293

; <label>:293                                     ; preds = %291, %243
  %294 = phi %union.rec* [ %244, %243 ], [ %292, %291 ]
  %295 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %295, %union.rec** @zz_res, align 8
  %296 = load %union.rec*, %union.rec** %new_env, align 8
  store %union.rec* %296, %union.rec** @zz_hold, align 8
  %297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %298 = icmp eq %union.rec* %297, null
  br i1 %298, label %299, label %301

; <label>:299                                     ; preds = %293
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %349

; <label>:301                                     ; preds = %293
  %302 = load %union.rec*, %union.rec** @zz_res, align 8
  %303 = icmp eq %union.rec* %302, null
  br i1 %303, label %304, label %306

; <label>:304                                     ; preds = %301
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %347

; <label>:306                                     ; preds = %301
  %307 = load %union.rec*, %union.rec** @zz_hold, align 8
  %308 = bitcast %union.rec* %307 to %struct.word_type*
  %309 = getelementptr inbounds %struct.word_type, %struct.word_type* %308, i32 0, i32 0
  %310 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %309, i32 0, i64 1
  %311 = getelementptr inbounds %struct.LIST, %struct.LIST* %310, i32 0, i32 0
  %312 = load %union.rec*, %union.rec** %311, align 8
  store %union.rec* %312, %union.rec** @zz_tmp, align 8
  %313 = load %union.rec*, %union.rec** @zz_res, align 8
  %314 = bitcast %union.rec* %313 to %struct.word_type*
  %315 = getelementptr inbounds %struct.word_type, %struct.word_type* %314, i32 0, i32 0
  %316 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %315, i32 0, i64 1
  %317 = getelementptr inbounds %struct.LIST, %struct.LIST* %316, i32 0, i32 0
  %318 = load %union.rec*, %union.rec** %317, align 8
  %319 = load %union.rec*, %union.rec** @zz_hold, align 8
  %320 = bitcast %union.rec* %319 to %struct.word_type*
  %321 = getelementptr inbounds %struct.word_type, %struct.word_type* %320, i32 0, i32 0
  %322 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %321, i32 0, i64 1
  %323 = getelementptr inbounds %struct.LIST, %struct.LIST* %322, i32 0, i32 0
  store %union.rec* %318, %union.rec** %323, align 8
  %324 = load %union.rec*, %union.rec** @zz_hold, align 8
  %325 = load %union.rec*, %union.rec** @zz_res, align 8
  %326 = bitcast %union.rec* %325 to %struct.word_type*
  %327 = getelementptr inbounds %struct.word_type, %struct.word_type* %326, i32 0, i32 0
  %328 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %327, i32 0, i64 1
  %329 = getelementptr inbounds %struct.LIST, %struct.LIST* %328, i32 0, i32 0
  %330 = load %union.rec*, %union.rec** %329, align 8
  %331 = bitcast %union.rec* %330 to %struct.word_type*
  %332 = getelementptr inbounds %struct.word_type, %struct.word_type* %331, i32 0, i32 0
  %333 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %332, i32 0, i64 1
  %334 = getelementptr inbounds %struct.LIST, %struct.LIST* %333, i32 0, i32 1
  store %union.rec* %324, %union.rec** %334, align 8
  %335 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %336 = load %union.rec*, %union.rec** @zz_res, align 8
  %337 = bitcast %union.rec* %336 to %struct.word_type*
  %338 = getelementptr inbounds %struct.word_type, %struct.word_type* %337, i32 0, i32 0
  %339 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %338, i32 0, i64 1
  %340 = getelementptr inbounds %struct.LIST, %struct.LIST* %339, i32 0, i32 0
  store %union.rec* %335, %union.rec** %340, align 8
  %341 = load %union.rec*, %union.rec** @zz_res, align 8
  %342 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %343 = bitcast %union.rec* %342 to %struct.word_type*
  %344 = getelementptr inbounds %struct.word_type, %struct.word_type* %343, i32 0, i32 0
  %345 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %344, i32 0, i64 1
  %346 = getelementptr inbounds %struct.LIST, %struct.LIST* %345, i32 0, i32 1
  store %union.rec* %341, %union.rec** %346, align 8
  br label %347

; <label>:347                                     ; preds = %306, %304
  %348 = phi %union.rec* [ %305, %304 ], [ %341, %306 ]
  br label %349

; <label>:349                                     ; preds = %347, %299
  %350 = phi %union.rec* [ %300, %299 ], [ %348, %347 ]
  %351 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 120), align 1
  %352 = zext i8 %351 to i32
  store i32 %352, i32* @zz_size, align 4
  %353 = sext i32 %352 to i64
  %354 = icmp uge i64 %353, 265
  br i1 %354, label %355, label %358

; <label>:355                                     ; preds = %349
  %356 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %357 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %356)
  br label %383

; <label>:358                                     ; preds = %349
  %359 = load i32, i32* @zz_size, align 4
  %360 = sext i32 %359 to i64
  %361 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %360
  %362 = load %union.rec*, %union.rec** %361, align 8
  %363 = icmp eq %union.rec* %362, null
  br i1 %363, label %364, label %368

; <label>:364                                     ; preds = %358
  %365 = load i32, i32* @zz_size, align 4
  %366 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %367 = call %union.rec* @GetMemory(i32 %365, %struct.FILE_POS* %366)
  store %union.rec* %367, %union.rec** @zz_hold, align 8
  br label %382

; <label>:368                                     ; preds = %358
  %369 = load i32, i32* @zz_size, align 4
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %370
  %372 = load %union.rec*, %union.rec** %371, align 8
  store %union.rec* %372, %union.rec** @zz_hold, align 8
  store %union.rec* %372, %union.rec** @zz_hold, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 0
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 0
  %378 = load %union.rec*, %union.rec** %377, align 8
  %379 = load i32, i32* @zz_size, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %380
  store %union.rec* %378, %union.rec** %381, align 8
  br label %382

; <label>:382                                     ; preds = %368, %364
  br label %383

; <label>:383                                     ; preds = %382, %355
  %384 = load %union.rec*, %union.rec** @zz_hold, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 1
  %387 = bitcast %union.FIRST_UNION* %386 to %struct.anon*
  %388 = getelementptr inbounds %struct.anon, %struct.anon* %387, i32 0, i32 0
  store i8 120, i8* %388, align 1
  %389 = load %union.rec*, %union.rec** @zz_hold, align 8
  %390 = load %union.rec*, %union.rec** @zz_hold, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 1
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 1
  store %union.rec* %389, %union.rec** %394, align 8
  %395 = load %union.rec*, %union.rec** @zz_hold, align 8
  %396 = bitcast %union.rec* %395 to %struct.word_type*
  %397 = getelementptr inbounds %struct.word_type, %struct.word_type* %396, i32 0, i32 0
  %398 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %397, i32 0, i64 1
  %399 = getelementptr inbounds %struct.LIST, %struct.LIST* %398, i32 0, i32 0
  store %union.rec* %389, %union.rec** %399, align 8
  %400 = load %union.rec*, %union.rec** @zz_hold, align 8
  %401 = bitcast %union.rec* %400 to %struct.word_type*
  %402 = getelementptr inbounds %struct.word_type, %struct.word_type* %401, i32 0, i32 0
  %403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %402, i32 0, i64 0
  %404 = getelementptr inbounds %struct.LIST, %struct.LIST* %403, i32 0, i32 1
  store %union.rec* %389, %union.rec** %404, align 8
  %405 = load %union.rec*, %union.rec** @zz_hold, align 8
  %406 = bitcast %union.rec* %405 to %struct.word_type*
  %407 = getelementptr inbounds %struct.word_type, %struct.word_type* %406, i32 0, i32 0
  %408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %407, i32 0, i64 0
  %409 = getelementptr inbounds %struct.LIST, %struct.LIST* %408, i32 0, i32 0
  store %union.rec* %389, %union.rec** %409, align 8
  store %union.rec* %389, %union.rec** %index, align 8
  %410 = load %union.rec*, %union.rec** %index, align 8
  %411 = bitcast %union.rec* %410 to %struct.closure_type*
  %412 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %411, i32 0, i32 6
  %413 = bitcast %union.anon.12* %412 to %union.rec**
  store %union.rec* null, %union.rec** %413, align 8
  %414 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %415 = zext i8 %414 to i32
  store i32 %415, i32* @zz_size, align 4
  %416 = sext i32 %415 to i64
  %417 = icmp uge i64 %416, 265
  br i1 %417, label %418, label %421

; <label>:418                                     ; preds = %383
  %419 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %420 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %419)
  br label %446

; <label>:421                                     ; preds = %383
  %422 = load i32, i32* @zz_size, align 4
  %423 = sext i32 %422 to i64
  %424 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %423
  %425 = load %union.rec*, %union.rec** %424, align 8
  %426 = icmp eq %union.rec* %425, null
  br i1 %426, label %427, label %431

; <label>:427                                     ; preds = %421
  %428 = load i32, i32* @zz_size, align 4
  %429 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %430 = call %union.rec* @GetMemory(i32 %428, %struct.FILE_POS* %429)
  store %union.rec* %430, %union.rec** @zz_hold, align 8
  br label %445

; <label>:431                                     ; preds = %421
  %432 = load i32, i32* @zz_size, align 4
  %433 = sext i32 %432 to i64
  %434 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %433
  %435 = load %union.rec*, %union.rec** %434, align 8
  store %union.rec* %435, %union.rec** @zz_hold, align 8
  store %union.rec* %435, %union.rec** @zz_hold, align 8
  %436 = load %union.rec*, %union.rec** @zz_hold, align 8
  %437 = bitcast %union.rec* %436 to %struct.word_type*
  %438 = getelementptr inbounds %struct.word_type, %struct.word_type* %437, i32 0, i32 0
  %439 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %438, i32 0, i64 0
  %440 = getelementptr inbounds %struct.LIST, %struct.LIST* %439, i32 0, i32 0
  %441 = load %union.rec*, %union.rec** %440, align 8
  %442 = load i32, i32* @zz_size, align 4
  %443 = sext i32 %442 to i64
  %444 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %443
  store %union.rec* %441, %union.rec** %444, align 8
  br label %445

; <label>:445                                     ; preds = %431, %427
  br label %446

; <label>:446                                     ; preds = %445, %418
  %447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %448 = bitcast %union.rec* %447 to %struct.word_type*
  %449 = getelementptr inbounds %struct.word_type, %struct.word_type* %448, i32 0, i32 1
  %450 = bitcast %union.FIRST_UNION* %449 to %struct.anon*
  %451 = getelementptr inbounds %struct.anon, %struct.anon* %450, i32 0, i32 0
  store i8 8, i8* %451, align 1
  %452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %454 = bitcast %union.rec* %453 to %struct.word_type*
  %455 = getelementptr inbounds %struct.word_type, %struct.word_type* %454, i32 0, i32 0
  %456 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %455, i32 0, i64 1
  %457 = getelementptr inbounds %struct.LIST, %struct.LIST* %456, i32 0, i32 1
  store %union.rec* %452, %union.rec** %457, align 8
  %458 = load %union.rec*, %union.rec** @zz_hold, align 8
  %459 = bitcast %union.rec* %458 to %struct.word_type*
  %460 = getelementptr inbounds %struct.word_type, %struct.word_type* %459, i32 0, i32 0
  %461 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %460, i32 0, i64 1
  %462 = getelementptr inbounds %struct.LIST, %struct.LIST* %461, i32 0, i32 0
  store %union.rec* %452, %union.rec** %462, align 8
  %463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %464 = bitcast %union.rec* %463 to %struct.word_type*
  %465 = getelementptr inbounds %struct.word_type, %struct.word_type* %464, i32 0, i32 0
  %466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %465, i32 0, i64 0
  %467 = getelementptr inbounds %struct.LIST, %struct.LIST* %466, i32 0, i32 1
  store %union.rec* %452, %union.rec** %467, align 8
  %468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %469 = bitcast %union.rec* %468 to %struct.word_type*
  %470 = getelementptr inbounds %struct.word_type, %struct.word_type* %469, i32 0, i32 0
  %471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %470, i32 0, i64 0
  %472 = getelementptr inbounds %struct.LIST, %struct.LIST* %471, i32 0, i32 0
  store %union.rec* %452, %union.rec** %472, align 8
  store %union.rec* %452, %union.rec** %hd, align 8
  %473 = load %union.rec*, %union.rec** %2, align 8
  %474 = bitcast %union.rec* %473 to %struct.word_type*
  %475 = getelementptr inbounds %struct.word_type, %struct.word_type* %474, i32 0, i32 1
  %476 = bitcast %union.FIRST_UNION* %475 to %struct.FILE_POS*
  %477 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %476, i32 0, i32 2
  %478 = load i16, i16* %477, align 2
  %479 = load %union.rec*, %union.rec** %hd, align 8
  %480 = bitcast %union.rec* %479 to %struct.word_type*
  %481 = getelementptr inbounds %struct.word_type, %struct.word_type* %480, i32 0, i32 1
  %482 = bitcast %union.FIRST_UNION* %481 to %struct.FILE_POS*
  %483 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %482, i32 0, i32 2
  store i16 %478, i16* %483, align 2
  %484 = load %union.rec*, %union.rec** %2, align 8
  %485 = bitcast %union.rec* %484 to %struct.word_type*
  %486 = getelementptr inbounds %struct.word_type, %struct.word_type* %485, i32 0, i32 1
  %487 = bitcast %union.FIRST_UNION* %486 to %struct.FILE_POS*
  %488 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %487, i32 0, i32 3
  %489 = load i32, i32* %488, align 4
  %490 = and i32 %489, 1048575
  %491 = load %union.rec*, %union.rec** %hd, align 8
  %492 = bitcast %union.rec* %491 to %struct.word_type*
  %493 = getelementptr inbounds %struct.word_type, %struct.word_type* %492, i32 0, i32 1
  %494 = bitcast %union.FIRST_UNION* %493 to %struct.FILE_POS*
  %495 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %494, i32 0, i32 3
  %496 = load i32, i32* %495, align 4
  %497 = and i32 %490, 1048575
  %498 = and i32 %496, -1048576
  %499 = or i32 %498, %497
  store i32 %499, i32* %495, align 4
  %500 = load %union.rec*, %union.rec** %2, align 8
  %501 = bitcast %union.rec* %500 to %struct.word_type*
  %502 = getelementptr inbounds %struct.word_type, %struct.word_type* %501, i32 0, i32 1
  %503 = bitcast %union.FIRST_UNION* %502 to %struct.FILE_POS*
  %504 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %503, i32 0, i32 3
  %505 = load i32, i32* %504, align 4
  %506 = lshr i32 %505, 20
  %507 = load %union.rec*, %union.rec** %hd, align 8
  %508 = bitcast %union.rec* %507 to %struct.word_type*
  %509 = getelementptr inbounds %struct.word_type, %struct.word_type* %508, i32 0, i32 1
  %510 = bitcast %union.FIRST_UNION* %509 to %struct.FILE_POS*
  %511 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %510, i32 0, i32 3
  %512 = load i32, i32* %511, align 4
  %513 = and i32 %506, 4095
  %514 = shl i32 %513, 20
  %515 = and i32 %512, 1048575
  %516 = or i32 %515, %514
  store i32 %516, i32* %511, align 4
  %517 = load %union.rec*, %union.rec** %xsym, align 8
  %518 = load %union.rec*, %union.rec** %hd, align 8
  %519 = bitcast %union.rec* %518 to %struct.closure_type*
  %520 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %519, i32 0, i32 5
  store %union.rec* %517, %union.rec** %520, align 8
  %521 = load %union.rec*, %union.rec** %hd, align 8
  %522 = bitcast %union.rec* %521 to %struct.head_type*
  %523 = getelementptr inbounds %struct.head_type, %struct.head_type* %522, i32 0, i32 9
  store %union.rec* null, %union.rec** %523, align 8
  %524 = load %union.rec*, %union.rec** %hd, align 8
  %525 = bitcast %union.rec* %524 to %struct.head_type*
  %526 = getelementptr inbounds %struct.head_type, %struct.head_type* %525, i32 0, i32 8
  store %union.rec* null, %union.rec** %526, align 8
  %527 = load %union.rec*, %union.rec** %hd, align 8
  %528 = bitcast %union.rec* %527 to %struct.head_type*
  %529 = getelementptr inbounds %struct.head_type, %struct.head_type* %528, i32 0, i32 11
  store %union.rec* null, %union.rec** %529, align 8
  %530 = load %union.rec*, %union.rec** %hd, align 8
  %531 = bitcast %union.rec* %530 to %struct.word_type*
  %532 = getelementptr inbounds %struct.word_type, %struct.word_type* %531, i32 0, i32 2
  %533 = bitcast %union.SECOND_UNION* %532 to %struct.anon.2*
  %534 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %533, i32 0, i32 2
  %535 = load i16, i16* %534, align 2
  %536 = and i16 %535, -257
  %537 = or i16 %536, 256
  store i16 %537, i16* %534, align 2
  %538 = load %union.rec*, %union.rec** %hd, align 8
  %539 = bitcast %union.rec* %538 to %struct.head_type*
  %540 = getelementptr inbounds %struct.head_type, %struct.head_type* %539, i32 0, i32 7
  store %union.rec* null, %union.rec** %540, align 8
  %541 = load %union.rec*, %union.rec** %hd, align 8
  %542 = bitcast %union.rec* %541 to %struct.word_type*
  %543 = getelementptr inbounds %struct.word_type, %struct.word_type* %542, i32 0, i32 2
  %544 = bitcast %union.SECOND_UNION* %543 to %struct.anon.2*
  %545 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %544, i32 0, i32 2
  %546 = load i16, i16* %545, align 2
  %547 = and i16 %546, -129
  %548 = or i16 %547, 128
  store i16 %548, i16* %545, align 2
  %549 = load %union.rec*, %union.rec** %hd, align 8
  %550 = bitcast %union.rec* %549 to %struct.word_type*
  %551 = getelementptr inbounds %struct.word_type, %struct.word_type* %550, i32 0, i32 2
  %552 = bitcast %union.SECOND_UNION* %551 to %struct.anon.2*
  %553 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %552, i32 0, i32 2
  %554 = load i16, i16* %553, align 2
  %555 = and i16 %554, -3
  store i16 %555, i16* %553, align 2
  %556 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %557 = zext i8 %556 to i32
  store i32 %557, i32* @zz_size, align 4
  %558 = sext i32 %557 to i64
  %559 = icmp uge i64 %558, 265
  br i1 %559, label %560, label %563

; <label>:560                                     ; preds = %446
  %561 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %562 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %561)
  br label %588

; <label>:563                                     ; preds = %446
  %564 = load i32, i32* @zz_size, align 4
  %565 = sext i32 %564 to i64
  %566 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %565
  %567 = load %union.rec*, %union.rec** %566, align 8
  %568 = icmp eq %union.rec* %567, null
  br i1 %568, label %569, label %573

; <label>:569                                     ; preds = %563
  %570 = load i32, i32* @zz_size, align 4
  %571 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %572 = call %union.rec* @GetMemory(i32 %570, %struct.FILE_POS* %571)
  store %union.rec* %572, %union.rec** @zz_hold, align 8
  br label %587

; <label>:573                                     ; preds = %563
  %574 = load i32, i32* @zz_size, align 4
  %575 = sext i32 %574 to i64
  %576 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %575
  %577 = load %union.rec*, %union.rec** %576, align 8
  store %union.rec* %577, %union.rec** @zz_hold, align 8
  store %union.rec* %577, %union.rec** @zz_hold, align 8
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %579 = bitcast %union.rec* %578 to %struct.word_type*
  %580 = getelementptr inbounds %struct.word_type, %struct.word_type* %579, i32 0, i32 0
  %581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %580, i32 0, i64 0
  %582 = getelementptr inbounds %struct.LIST, %struct.LIST* %581, i32 0, i32 0
  %583 = load %union.rec*, %union.rec** %582, align 8
  %584 = load i32, i32* @zz_size, align 4
  %585 = sext i32 %584 to i64
  %586 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %585
  store %union.rec* %583, %union.rec** %586, align 8
  br label %587

; <label>:587                                     ; preds = %573, %569
  br label %588

; <label>:588                                     ; preds = %587, %560
  %589 = load %union.rec*, %union.rec** @zz_hold, align 8
  %590 = bitcast %union.rec* %589 to %struct.word_type*
  %591 = getelementptr inbounds %struct.word_type, %struct.word_type* %590, i32 0, i32 1
  %592 = bitcast %union.FIRST_UNION* %591 to %struct.anon*
  %593 = getelementptr inbounds %struct.anon, %struct.anon* %592, i32 0, i32 0
  store i8 0, i8* %593, align 1
  %594 = load %union.rec*, %union.rec** @zz_hold, align 8
  %595 = load %union.rec*, %union.rec** @zz_hold, align 8
  %596 = bitcast %union.rec* %595 to %struct.word_type*
  %597 = getelementptr inbounds %struct.word_type, %struct.word_type* %596, i32 0, i32 0
  %598 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %597, i32 0, i64 1
  %599 = getelementptr inbounds %struct.LIST, %struct.LIST* %598, i32 0, i32 1
  store %union.rec* %594, %union.rec** %599, align 8
  %600 = load %union.rec*, %union.rec** @zz_hold, align 8
  %601 = bitcast %union.rec* %600 to %struct.word_type*
  %602 = getelementptr inbounds %struct.word_type, %struct.word_type* %601, i32 0, i32 0
  %603 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %602, i32 0, i64 1
  %604 = getelementptr inbounds %struct.LIST, %struct.LIST* %603, i32 0, i32 0
  store %union.rec* %594, %union.rec** %604, align 8
  %605 = load %union.rec*, %union.rec** @zz_hold, align 8
  %606 = bitcast %union.rec* %605 to %struct.word_type*
  %607 = getelementptr inbounds %struct.word_type, %struct.word_type* %606, i32 0, i32 0
  %608 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %607, i32 0, i64 0
  %609 = getelementptr inbounds %struct.LIST, %struct.LIST* %608, i32 0, i32 1
  store %union.rec* %594, %union.rec** %609, align 8
  %610 = load %union.rec*, %union.rec** @zz_hold, align 8
  %611 = bitcast %union.rec* %610 to %struct.word_type*
  %612 = getelementptr inbounds %struct.word_type, %struct.word_type* %611, i32 0, i32 0
  %613 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %612, i32 0, i64 0
  %614 = getelementptr inbounds %struct.LIST, %struct.LIST* %613, i32 0, i32 0
  store %union.rec* %594, %union.rec** %614, align 8
  store %union.rec* %594, %union.rec** @xx_link, align 8
  %615 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %615, %union.rec** @zz_res, align 8
  %616 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %616, %union.rec** @zz_hold, align 8
  %617 = load %union.rec*, %union.rec** @zz_hold, align 8
  %618 = icmp eq %union.rec* %617, null
  br i1 %618, label %619, label %621

; <label>:619                                     ; preds = %588
  %620 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %669

; <label>:621                                     ; preds = %588
  %622 = load %union.rec*, %union.rec** @zz_res, align 8
  %623 = icmp eq %union.rec* %622, null
  br i1 %623, label %624, label %626

; <label>:624                                     ; preds = %621
  %625 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %667

; <label>:626                                     ; preds = %621
  %627 = load %union.rec*, %union.rec** @zz_hold, align 8
  %628 = bitcast %union.rec* %627 to %struct.word_type*
  %629 = getelementptr inbounds %struct.word_type, %struct.word_type* %628, i32 0, i32 0
  %630 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %629, i32 0, i64 0
  %631 = getelementptr inbounds %struct.LIST, %struct.LIST* %630, i32 0, i32 0
  %632 = load %union.rec*, %union.rec** %631, align 8
  store %union.rec* %632, %union.rec** @zz_tmp, align 8
  %633 = load %union.rec*, %union.rec** @zz_res, align 8
  %634 = bitcast %union.rec* %633 to %struct.word_type*
  %635 = getelementptr inbounds %struct.word_type, %struct.word_type* %634, i32 0, i32 0
  %636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %635, i32 0, i64 0
  %637 = getelementptr inbounds %struct.LIST, %struct.LIST* %636, i32 0, i32 0
  %638 = load %union.rec*, %union.rec** %637, align 8
  %639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %640 = bitcast %union.rec* %639 to %struct.word_type*
  %641 = getelementptr inbounds %struct.word_type, %struct.word_type* %640, i32 0, i32 0
  %642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %641, i32 0, i64 0
  %643 = getelementptr inbounds %struct.LIST, %struct.LIST* %642, i32 0, i32 0
  store %union.rec* %638, %union.rec** %643, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  %645 = load %union.rec*, %union.rec** @zz_res, align 8
  %646 = bitcast %union.rec* %645 to %struct.word_type*
  %647 = getelementptr inbounds %struct.word_type, %struct.word_type* %646, i32 0, i32 0
  %648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %647, i32 0, i64 0
  %649 = getelementptr inbounds %struct.LIST, %struct.LIST* %648, i32 0, i32 0
  %650 = load %union.rec*, %union.rec** %649, align 8
  %651 = bitcast %union.rec* %650 to %struct.word_type*
  %652 = getelementptr inbounds %struct.word_type, %struct.word_type* %651, i32 0, i32 0
  %653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %652, i32 0, i64 0
  %654 = getelementptr inbounds %struct.LIST, %struct.LIST* %653, i32 0, i32 1
  store %union.rec* %644, %union.rec** %654, align 8
  %655 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %656 = load %union.rec*, %union.rec** @zz_res, align 8
  %657 = bitcast %union.rec* %656 to %struct.word_type*
  %658 = getelementptr inbounds %struct.word_type, %struct.word_type* %657, i32 0, i32 0
  %659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %658, i32 0, i64 0
  %660 = getelementptr inbounds %struct.LIST, %struct.LIST* %659, i32 0, i32 0
  store %union.rec* %655, %union.rec** %660, align 8
  %661 = load %union.rec*, %union.rec** @zz_res, align 8
  %662 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %663 = bitcast %union.rec* %662 to %struct.word_type*
  %664 = getelementptr inbounds %struct.word_type, %struct.word_type* %663, i32 0, i32 0
  %665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %664, i32 0, i64 0
  %666 = getelementptr inbounds %struct.LIST, %struct.LIST* %665, i32 0, i32 1
  store %union.rec* %661, %union.rec** %666, align 8
  br label %667

; <label>:667                                     ; preds = %626, %624
  %668 = phi %union.rec* [ %625, %624 ], [ %661, %626 ]
  br label %669

; <label>:669                                     ; preds = %667, %619
  %670 = phi %union.rec* [ %620, %619 ], [ %668, %667 ]
  %671 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %671, %union.rec** @zz_res, align 8
  %672 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %672, %union.rec** @zz_hold, align 8
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %674 = icmp eq %union.rec* %673, null
  br i1 %674, label %675, label %677

; <label>:675                                     ; preds = %669
  %676 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %725

; <label>:677                                     ; preds = %669
  %678 = load %union.rec*, %union.rec** @zz_res, align 8
  %679 = icmp eq %union.rec* %678, null
  br i1 %679, label %680, label %682

; <label>:680                                     ; preds = %677
  %681 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %723

; <label>:682                                     ; preds = %677
  %683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %684 = bitcast %union.rec* %683 to %struct.word_type*
  %685 = getelementptr inbounds %struct.word_type, %struct.word_type* %684, i32 0, i32 0
  %686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %685, i32 0, i64 1
  %687 = getelementptr inbounds %struct.LIST, %struct.LIST* %686, i32 0, i32 0
  %688 = load %union.rec*, %union.rec** %687, align 8
  store %union.rec* %688, %union.rec** @zz_tmp, align 8
  %689 = load %union.rec*, %union.rec** @zz_res, align 8
  %690 = bitcast %union.rec* %689 to %struct.word_type*
  %691 = getelementptr inbounds %struct.word_type, %struct.word_type* %690, i32 0, i32 0
  %692 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %691, i32 0, i64 1
  %693 = getelementptr inbounds %struct.LIST, %struct.LIST* %692, i32 0, i32 0
  %694 = load %union.rec*, %union.rec** %693, align 8
  %695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %696 = bitcast %union.rec* %695 to %struct.word_type*
  %697 = getelementptr inbounds %struct.word_type, %struct.word_type* %696, i32 0, i32 0
  %698 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %697, i32 0, i64 1
  %699 = getelementptr inbounds %struct.LIST, %struct.LIST* %698, i32 0, i32 0
  store %union.rec* %694, %union.rec** %699, align 8
  %700 = load %union.rec*, %union.rec** @zz_hold, align 8
  %701 = load %union.rec*, %union.rec** @zz_res, align 8
  %702 = bitcast %union.rec* %701 to %struct.word_type*
  %703 = getelementptr inbounds %struct.word_type, %struct.word_type* %702, i32 0, i32 0
  %704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %703, i32 0, i64 1
  %705 = getelementptr inbounds %struct.LIST, %struct.LIST* %704, i32 0, i32 0
  %706 = load %union.rec*, %union.rec** %705, align 8
  %707 = bitcast %union.rec* %706 to %struct.word_type*
  %708 = getelementptr inbounds %struct.word_type, %struct.word_type* %707, i32 0, i32 0
  %709 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %708, i32 0, i64 1
  %710 = getelementptr inbounds %struct.LIST, %struct.LIST* %709, i32 0, i32 1
  store %union.rec* %700, %union.rec** %710, align 8
  %711 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %712 = load %union.rec*, %union.rec** @zz_res, align 8
  %713 = bitcast %union.rec* %712 to %struct.word_type*
  %714 = getelementptr inbounds %struct.word_type, %struct.word_type* %713, i32 0, i32 0
  %715 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %714, i32 0, i64 1
  %716 = getelementptr inbounds %struct.LIST, %struct.LIST* %715, i32 0, i32 0
  store %union.rec* %711, %union.rec** %716, align 8
  %717 = load %union.rec*, %union.rec** @zz_res, align 8
  %718 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %719 = bitcast %union.rec* %718 to %struct.word_type*
  %720 = getelementptr inbounds %struct.word_type, %struct.word_type* %719, i32 0, i32 0
  %721 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %720, i32 0, i64 1
  %722 = getelementptr inbounds %struct.LIST, %struct.LIST* %721, i32 0, i32 1
  store %union.rec* %717, %union.rec** %722, align 8
  br label %723

; <label>:723                                     ; preds = %682, %680
  %724 = phi %union.rec* [ %681, %680 ], [ %717, %682 ]
  br label %725

; <label>:725                                     ; preds = %723, %675
  %726 = phi %union.rec* [ %676, %675 ], [ %724, %723 ]
  %727 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %728 = zext i8 %727 to i32
  store i32 %728, i32* @zz_size, align 4
  %729 = sext i32 %728 to i64
  %730 = icmp uge i64 %729, 265
  br i1 %730, label %731, label %734

; <label>:731                                     ; preds = %725
  %732 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %733 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %732)
  br label %759

; <label>:734                                     ; preds = %725
  %735 = load i32, i32* @zz_size, align 4
  %736 = sext i32 %735 to i64
  %737 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %736
  %738 = load %union.rec*, %union.rec** %737, align 8
  %739 = icmp eq %union.rec* %738, null
  br i1 %739, label %740, label %744

; <label>:740                                     ; preds = %734
  %741 = load i32, i32* @zz_size, align 4
  %742 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %743 = call %union.rec* @GetMemory(i32 %741, %struct.FILE_POS* %742)
  store %union.rec* %743, %union.rec** @zz_hold, align 8
  br label %758

; <label>:744                                     ; preds = %734
  %745 = load i32, i32* @zz_size, align 4
  %746 = sext i32 %745 to i64
  %747 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %746
  %748 = load %union.rec*, %union.rec** %747, align 8
  store %union.rec* %748, %union.rec** @zz_hold, align 8
  store %union.rec* %748, %union.rec** @zz_hold, align 8
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %750 = bitcast %union.rec* %749 to %struct.word_type*
  %751 = getelementptr inbounds %struct.word_type, %struct.word_type* %750, i32 0, i32 0
  %752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %751, i32 0, i64 0
  %753 = getelementptr inbounds %struct.LIST, %struct.LIST* %752, i32 0, i32 0
  %754 = load %union.rec*, %union.rec** %753, align 8
  %755 = load i32, i32* @zz_size, align 4
  %756 = sext i32 %755 to i64
  %757 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %756
  store %union.rec* %754, %union.rec** %757, align 8
  br label %758

; <label>:758                                     ; preds = %744, %740
  br label %759

; <label>:759                                     ; preds = %758, %731
  %760 = load %union.rec*, %union.rec** @zz_hold, align 8
  %761 = bitcast %union.rec* %760 to %struct.word_type*
  %762 = getelementptr inbounds %struct.word_type, %struct.word_type* %761, i32 0, i32 1
  %763 = bitcast %union.FIRST_UNION* %762 to %struct.anon*
  %764 = getelementptr inbounds %struct.anon, %struct.anon* %763, i32 0, i32 0
  store i8 0, i8* %764, align 1
  %765 = load %union.rec*, %union.rec** @zz_hold, align 8
  %766 = load %union.rec*, %union.rec** @zz_hold, align 8
  %767 = bitcast %union.rec* %766 to %struct.word_type*
  %768 = getelementptr inbounds %struct.word_type, %struct.word_type* %767, i32 0, i32 0
  %769 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %768, i32 0, i64 1
  %770 = getelementptr inbounds %struct.LIST, %struct.LIST* %769, i32 0, i32 1
  store %union.rec* %765, %union.rec** %770, align 8
  %771 = load %union.rec*, %union.rec** @zz_hold, align 8
  %772 = bitcast %union.rec* %771 to %struct.word_type*
  %773 = getelementptr inbounds %struct.word_type, %struct.word_type* %772, i32 0, i32 0
  %774 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %773, i32 0, i64 1
  %775 = getelementptr inbounds %struct.LIST, %struct.LIST* %774, i32 0, i32 0
  store %union.rec* %765, %union.rec** %775, align 8
  %776 = load %union.rec*, %union.rec** @zz_hold, align 8
  %777 = bitcast %union.rec* %776 to %struct.word_type*
  %778 = getelementptr inbounds %struct.word_type, %struct.word_type* %777, i32 0, i32 0
  %779 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %778, i32 0, i64 0
  %780 = getelementptr inbounds %struct.LIST, %struct.LIST* %779, i32 0, i32 1
  store %union.rec* %765, %union.rec** %780, align 8
  %781 = load %union.rec*, %union.rec** @zz_hold, align 8
  %782 = bitcast %union.rec* %781 to %struct.word_type*
  %783 = getelementptr inbounds %struct.word_type, %struct.word_type* %782, i32 0, i32 0
  %784 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %783, i32 0, i64 0
  %785 = getelementptr inbounds %struct.LIST, %struct.LIST* %784, i32 0, i32 0
  store %union.rec* %765, %union.rec** %785, align 8
  store %union.rec* %765, %union.rec** @xx_link, align 8
  %786 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %786, %union.rec** @zz_res, align 8
  %787 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %787, %union.rec** @zz_hold, align 8
  %788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %789 = icmp eq %union.rec* %788, null
  br i1 %789, label %790, label %792

; <label>:790                                     ; preds = %759
  %791 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %840

; <label>:792                                     ; preds = %759
  %793 = load %union.rec*, %union.rec** @zz_res, align 8
  %794 = icmp eq %union.rec* %793, null
  br i1 %794, label %795, label %797

; <label>:795                                     ; preds = %792
  %796 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %838

; <label>:797                                     ; preds = %792
  %798 = load %union.rec*, %union.rec** @zz_hold, align 8
  %799 = bitcast %union.rec* %798 to %struct.word_type*
  %800 = getelementptr inbounds %struct.word_type, %struct.word_type* %799, i32 0, i32 0
  %801 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %800, i32 0, i64 0
  %802 = getelementptr inbounds %struct.LIST, %struct.LIST* %801, i32 0, i32 0
  %803 = load %union.rec*, %union.rec** %802, align 8
  store %union.rec* %803, %union.rec** @zz_tmp, align 8
  %804 = load %union.rec*, %union.rec** @zz_res, align 8
  %805 = bitcast %union.rec* %804 to %struct.word_type*
  %806 = getelementptr inbounds %struct.word_type, %struct.word_type* %805, i32 0, i32 0
  %807 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %806, i32 0, i64 0
  %808 = getelementptr inbounds %struct.LIST, %struct.LIST* %807, i32 0, i32 0
  %809 = load %union.rec*, %union.rec** %808, align 8
  %810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %811 = bitcast %union.rec* %810 to %struct.word_type*
  %812 = getelementptr inbounds %struct.word_type, %struct.word_type* %811, i32 0, i32 0
  %813 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %812, i32 0, i64 0
  %814 = getelementptr inbounds %struct.LIST, %struct.LIST* %813, i32 0, i32 0
  store %union.rec* %809, %union.rec** %814, align 8
  %815 = load %union.rec*, %union.rec** @zz_hold, align 8
  %816 = load %union.rec*, %union.rec** @zz_res, align 8
  %817 = bitcast %union.rec* %816 to %struct.word_type*
  %818 = getelementptr inbounds %struct.word_type, %struct.word_type* %817, i32 0, i32 0
  %819 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %818, i32 0, i64 0
  %820 = getelementptr inbounds %struct.LIST, %struct.LIST* %819, i32 0, i32 0
  %821 = load %union.rec*, %union.rec** %820, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 0
  %824 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %823, i32 0, i64 0
  %825 = getelementptr inbounds %struct.LIST, %struct.LIST* %824, i32 0, i32 1
  store %union.rec* %815, %union.rec** %825, align 8
  %826 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %827 = load %union.rec*, %union.rec** @zz_res, align 8
  %828 = bitcast %union.rec* %827 to %struct.word_type*
  %829 = getelementptr inbounds %struct.word_type, %struct.word_type* %828, i32 0, i32 0
  %830 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %829, i32 0, i64 0
  %831 = getelementptr inbounds %struct.LIST, %struct.LIST* %830, i32 0, i32 0
  store %union.rec* %826, %union.rec** %831, align 8
  %832 = load %union.rec*, %union.rec** @zz_res, align 8
  %833 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %834 = bitcast %union.rec* %833 to %struct.word_type*
  %835 = getelementptr inbounds %struct.word_type, %struct.word_type* %834, i32 0, i32 0
  %836 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %835, i32 0, i64 0
  %837 = getelementptr inbounds %struct.LIST, %struct.LIST* %836, i32 0, i32 1
  store %union.rec* %832, %union.rec** %837, align 8
  br label %838

; <label>:838                                     ; preds = %797, %795
  %839 = phi %union.rec* [ %796, %795 ], [ %832, %797 ]
  br label %840

; <label>:840                                     ; preds = %838, %790
  %841 = phi %union.rec* [ %791, %790 ], [ %839, %838 ]
  %842 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %842, %union.rec** @zz_res, align 8
  %843 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %843, %union.rec** @zz_hold, align 8
  %844 = load %union.rec*, %union.rec** @zz_hold, align 8
  %845 = icmp eq %union.rec* %844, null
  br i1 %845, label %846, label %848

; <label>:846                                     ; preds = %840
  %847 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %896

; <label>:848                                     ; preds = %840
  %849 = load %union.rec*, %union.rec** @zz_res, align 8
  %850 = icmp eq %union.rec* %849, null
  br i1 %850, label %851, label %853

; <label>:851                                     ; preds = %848
  %852 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %894

; <label>:853                                     ; preds = %848
  %854 = load %union.rec*, %union.rec** @zz_hold, align 8
  %855 = bitcast %union.rec* %854 to %struct.word_type*
  %856 = getelementptr inbounds %struct.word_type, %struct.word_type* %855, i32 0, i32 0
  %857 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %856, i32 0, i64 1
  %858 = getelementptr inbounds %struct.LIST, %struct.LIST* %857, i32 0, i32 0
  %859 = load %union.rec*, %union.rec** %858, align 8
  store %union.rec* %859, %union.rec** @zz_tmp, align 8
  %860 = load %union.rec*, %union.rec** @zz_res, align 8
  %861 = bitcast %union.rec* %860 to %struct.word_type*
  %862 = getelementptr inbounds %struct.word_type, %struct.word_type* %861, i32 0, i32 0
  %863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %862, i32 0, i64 1
  %864 = getelementptr inbounds %struct.LIST, %struct.LIST* %863, i32 0, i32 0
  %865 = load %union.rec*, %union.rec** %864, align 8
  %866 = load %union.rec*, %union.rec** @zz_hold, align 8
  %867 = bitcast %union.rec* %866 to %struct.word_type*
  %868 = getelementptr inbounds %struct.word_type, %struct.word_type* %867, i32 0, i32 0
  %869 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %868, i32 0, i64 1
  %870 = getelementptr inbounds %struct.LIST, %struct.LIST* %869, i32 0, i32 0
  store %union.rec* %865, %union.rec** %870, align 8
  %871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %872 = load %union.rec*, %union.rec** @zz_res, align 8
  %873 = bitcast %union.rec* %872 to %struct.word_type*
  %874 = getelementptr inbounds %struct.word_type, %struct.word_type* %873, i32 0, i32 0
  %875 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %874, i32 0, i64 1
  %876 = getelementptr inbounds %struct.LIST, %struct.LIST* %875, i32 0, i32 0
  %877 = load %union.rec*, %union.rec** %876, align 8
  %878 = bitcast %union.rec* %877 to %struct.word_type*
  %879 = getelementptr inbounds %struct.word_type, %struct.word_type* %878, i32 0, i32 0
  %880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %879, i32 0, i64 1
  %881 = getelementptr inbounds %struct.LIST, %struct.LIST* %880, i32 0, i32 1
  store %union.rec* %871, %union.rec** %881, align 8
  %882 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %883 = load %union.rec*, %union.rec** @zz_res, align 8
  %884 = bitcast %union.rec* %883 to %struct.word_type*
  %885 = getelementptr inbounds %struct.word_type, %struct.word_type* %884, i32 0, i32 0
  %886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %885, i32 0, i64 1
  %887 = getelementptr inbounds %struct.LIST, %struct.LIST* %886, i32 0, i32 0
  store %union.rec* %882, %union.rec** %887, align 8
  %888 = load %union.rec*, %union.rec** @zz_res, align 8
  %889 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %890 = bitcast %union.rec* %889 to %struct.word_type*
  %891 = getelementptr inbounds %struct.word_type, %struct.word_type* %890, i32 0, i32 0
  %892 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %891, i32 0, i64 1
  %893 = getelementptr inbounds %struct.LIST, %struct.LIST* %892, i32 0, i32 1
  store %union.rec* %888, %union.rec** %893, align 8
  br label %894

; <label>:894                                     ; preds = %853, %851
  %895 = phi %union.rec* [ %852, %851 ], [ %888, %853 ]
  br label %896

; <label>:896                                     ; preds = %894, %846
  %897 = phi %union.rec* [ %847, %846 ], [ %895, %894 ]
  %898 = load %union.rec*, %union.rec** %env, align 8
  %899 = load %union.rec*, %union.rec** %2, align 8
  call void @AttachEnv(%union.rec* %898, %union.rec* %899)
  %900 = load %union.rec*, %union.rec** %hd, align 8
  call void @SetTarget(%union.rec* %900)
  %901 = load %union.rec*, %union.rec** %hd, align 8
  %902 = bitcast %union.rec* %901 to %struct.closure_type*
  %903 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %902, i32 0, i32 5
  %904 = load %union.rec*, %union.rec** %903, align 8
  %905 = bitcast %union.rec* %904 to %struct.symbol_type*
  %906 = getelementptr inbounds %struct.symbol_type, %struct.symbol_type* %905, i32 0, i32 16
  %907 = load i8, i8* %906, align 2
  %908 = lshr i8 %907, 5
  %909 = and i8 %908, 1
  %910 = zext i8 %909 to i32
  %911 = icmp ne i32 %910, 0
  br i1 %911, label %912, label %915

; <label>:912                                     ; preds = %896
  %913 = load %union.rec*, %union.rec** %hd, align 8
  %914 = call %union.rec* @BuildEnclose(%union.rec* %913)
  br label %916

; <label>:915                                     ; preds = %896
  br label %916

; <label>:916                                     ; preds = %915, %912
  %917 = phi %union.rec* [ %914, %912 ], [ null, %915 ]
  %918 = load %union.rec*, %union.rec** %hd, align 8
  %919 = bitcast %union.rec* %918 to %struct.head_type*
  %920 = getelementptr inbounds %struct.head_type, %struct.head_type* %919, i32 0, i32 12
  store %union.rec* %917, %union.rec** %920, align 8
  %921 = load %union.rec*, %union.rec** %hd, align 8
  %922 = bitcast %union.rec* %921 to %struct.head_type*
  %923 = getelementptr inbounds %struct.head_type, %struct.head_type* %922, i32 0, i32 14
  store %union.rec* null, %union.rec** %923, align 8
  %924 = load %union.rec*, %union.rec** %hd, align 8
  %925 = bitcast %union.rec* %924 to %struct.head_type*
  %926 = getelementptr inbounds %struct.head_type, %struct.head_type* %925, i32 0, i32 13
  store %union.rec* null, %union.rec** %926, align 8
  %927 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %928 = zext i8 %927 to i32
  store i32 %928, i32* @zz_size, align 4
  %929 = sext i32 %928 to i64
  %930 = icmp uge i64 %929, 265
  br i1 %930, label %931, label %934

; <label>:931                                     ; preds = %916
  %932 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %933 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %932)
  br label %959

; <label>:934                                     ; preds = %916
  %935 = load i32, i32* @zz_size, align 4
  %936 = sext i32 %935 to i64
  %937 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %936
  %938 = load %union.rec*, %union.rec** %937, align 8
  %939 = icmp eq %union.rec* %938, null
  br i1 %939, label %940, label %944

; <label>:940                                     ; preds = %934
  %941 = load i32, i32* @zz_size, align 4
  %942 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %943 = call %union.rec* @GetMemory(i32 %941, %struct.FILE_POS* %942)
  store %union.rec* %943, %union.rec** @zz_hold, align 8
  br label %958

; <label>:944                                     ; preds = %934
  %945 = load i32, i32* @zz_size, align 4
  %946 = sext i32 %945 to i64
  %947 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %946
  %948 = load %union.rec*, %union.rec** %947, align 8
  store %union.rec* %948, %union.rec** @zz_hold, align 8
  store %union.rec* %948, %union.rec** @zz_hold, align 8
  %949 = load %union.rec*, %union.rec** @zz_hold, align 8
  %950 = bitcast %union.rec* %949 to %struct.word_type*
  %951 = getelementptr inbounds %struct.word_type, %struct.word_type* %950, i32 0, i32 0
  %952 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %951, i32 0, i64 0
  %953 = getelementptr inbounds %struct.LIST, %struct.LIST* %952, i32 0, i32 0
  %954 = load %union.rec*, %union.rec** %953, align 8
  %955 = load i32, i32* @zz_size, align 4
  %956 = sext i32 %955 to i64
  %957 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %956
  store %union.rec* %954, %union.rec** %957, align 8
  br label %958

; <label>:958                                     ; preds = %944, %940
  br label %959

; <label>:959                                     ; preds = %958, %931
  %960 = load %union.rec*, %union.rec** @zz_hold, align 8
  %961 = bitcast %union.rec* %960 to %struct.word_type*
  %962 = getelementptr inbounds %struct.word_type, %struct.word_type* %961, i32 0, i32 1
  %963 = bitcast %union.FIRST_UNION* %962 to %struct.anon*
  %964 = getelementptr inbounds %struct.anon, %struct.anon* %963, i32 0, i32 0
  store i8 0, i8* %964, align 1
  %965 = load %union.rec*, %union.rec** @zz_hold, align 8
  %966 = load %union.rec*, %union.rec** @zz_hold, align 8
  %967 = bitcast %union.rec* %966 to %struct.word_type*
  %968 = getelementptr inbounds %struct.word_type, %struct.word_type* %967, i32 0, i32 0
  %969 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %968, i32 0, i64 1
  %970 = getelementptr inbounds %struct.LIST, %struct.LIST* %969, i32 0, i32 1
  store %union.rec* %965, %union.rec** %970, align 8
  %971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %972 = bitcast %union.rec* %971 to %struct.word_type*
  %973 = getelementptr inbounds %struct.word_type, %struct.word_type* %972, i32 0, i32 0
  %974 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %973, i32 0, i64 1
  %975 = getelementptr inbounds %struct.LIST, %struct.LIST* %974, i32 0, i32 0
  store %union.rec* %965, %union.rec** %975, align 8
  %976 = load %union.rec*, %union.rec** @zz_hold, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 0
  %979 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %978, i32 0, i64 0
  %980 = getelementptr inbounds %struct.LIST, %struct.LIST* %979, i32 0, i32 1
  store %union.rec* %965, %union.rec** %980, align 8
  %981 = load %union.rec*, %union.rec** @zz_hold, align 8
  %982 = bitcast %union.rec* %981 to %struct.word_type*
  %983 = getelementptr inbounds %struct.word_type, %struct.word_type* %982, i32 0, i32 0
  %984 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %983, i32 0, i64 0
  %985 = getelementptr inbounds %struct.LIST, %struct.LIST* %984, i32 0, i32 0
  store %union.rec* %965, %union.rec** %985, align 8
  store %union.rec* %965, %union.rec** @xx_link, align 8
  %986 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %986, %union.rec** @zz_res, align 8
  %987 = load %union.rec*, %union.rec** %target, align 8
  %988 = bitcast %union.rec* %987 to %struct.word_type*
  %989 = getelementptr inbounds %struct.word_type, %struct.word_type* %988, i32 0, i32 0
  %990 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %989, i32 0, i64 1
  %991 = getelementptr inbounds %struct.LIST, %struct.LIST* %990, i32 0, i32 1
  %992 = load %union.rec*, %union.rec** %991, align 8
  store %union.rec* %992, %union.rec** @zz_hold, align 8
  %993 = load %union.rec*, %union.rec** @zz_hold, align 8
  %994 = icmp eq %union.rec* %993, null
  br i1 %994, label %995, label %997

; <label>:995                                     ; preds = %959
  %996 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1045

; <label>:997                                     ; preds = %959
  %998 = load %union.rec*, %union.rec** @zz_res, align 8
  %999 = icmp eq %union.rec* %998, null
  br i1 %999, label %1000, label %1002

; <label>:1000                                    ; preds = %997
  %1001 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1043

; <label>:1002                                    ; preds = %997
  %1003 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1004 = bitcast %union.rec* %1003 to %struct.word_type*
  %1005 = getelementptr inbounds %struct.word_type, %struct.word_type* %1004, i32 0, i32 0
  %1006 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1005, i32 0, i64 0
  %1007 = getelementptr inbounds %struct.LIST, %struct.LIST* %1006, i32 0, i32 0
  %1008 = load %union.rec*, %union.rec** %1007, align 8
  store %union.rec* %1008, %union.rec** @zz_tmp, align 8
  %1009 = load %union.rec*, %union.rec** @zz_res, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 0
  %1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1011, i32 0, i64 0
  %1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %1012, i32 0, i32 0
  %1014 = load %union.rec*, %union.rec** %1013, align 8
  %1015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1016 = bitcast %union.rec* %1015 to %struct.word_type*
  %1017 = getelementptr inbounds %struct.word_type, %struct.word_type* %1016, i32 0, i32 0
  %1018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1017, i32 0, i64 0
  %1019 = getelementptr inbounds %struct.LIST, %struct.LIST* %1018, i32 0, i32 0
  store %union.rec* %1014, %union.rec** %1019, align 8
  %1020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1021 = load %union.rec*, %union.rec** @zz_res, align 8
  %1022 = bitcast %union.rec* %1021 to %struct.word_type*
  %1023 = getelementptr inbounds %struct.word_type, %struct.word_type* %1022, i32 0, i32 0
  %1024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1023, i32 0, i64 0
  %1025 = getelementptr inbounds %struct.LIST, %struct.LIST* %1024, i32 0, i32 0
  %1026 = load %union.rec*, %union.rec** %1025, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 0
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 1
  store %union.rec* %1020, %union.rec** %1030, align 8
  %1031 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1032 = load %union.rec*, %union.rec** @zz_res, align 8
  %1033 = bitcast %union.rec* %1032 to %struct.word_type*
  %1034 = getelementptr inbounds %struct.word_type, %struct.word_type* %1033, i32 0, i32 0
  %1035 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1034, i32 0, i64 0
  %1036 = getelementptr inbounds %struct.LIST, %struct.LIST* %1035, i32 0, i32 0
  store %union.rec* %1031, %union.rec** %1036, align 8
  %1037 = load %union.rec*, %union.rec** @zz_res, align 8
  %1038 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1039 = bitcast %union.rec* %1038 to %struct.word_type*
  %1040 = getelementptr inbounds %struct.word_type, %struct.word_type* %1039, i32 0, i32 0
  %1041 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1040, i32 0, i64 0
  %1042 = getelementptr inbounds %struct.LIST, %struct.LIST* %1041, i32 0, i32 1
  store %union.rec* %1037, %union.rec** %1042, align 8
  br label %1043

; <label>:1043                                    ; preds = %1002, %1000
  %1044 = phi %union.rec* [ %1001, %1000 ], [ %1037, %1002 ]
  br label %1045

; <label>:1045                                    ; preds = %1043, %995
  %1046 = phi %union.rec* [ %996, %995 ], [ %1044, %1043 ]
  %1047 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1047, %union.rec** @zz_res, align 8
  %1048 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %1048, %union.rec** @zz_hold, align 8
  %1049 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1050 = icmp eq %union.rec* %1049, null
  br i1 %1050, label %1051, label %1053

; <label>:1051                                    ; preds = %1045
  %1052 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1101

; <label>:1053                                    ; preds = %1045
  %1054 = load %union.rec*, %union.rec** @zz_res, align 8
  %1055 = icmp eq %union.rec* %1054, null
  br i1 %1055, label %1056, label %1058

; <label>:1056                                    ; preds = %1053
  %1057 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1099

; <label>:1058                                    ; preds = %1053
  %1059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1060 = bitcast %union.rec* %1059 to %struct.word_type*
  %1061 = getelementptr inbounds %struct.word_type, %struct.word_type* %1060, i32 0, i32 0
  %1062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1061, i32 0, i64 1
  %1063 = getelementptr inbounds %struct.LIST, %struct.LIST* %1062, i32 0, i32 0
  %1064 = load %union.rec*, %union.rec** %1063, align 8
  store %union.rec* %1064, %union.rec** @zz_tmp, align 8
  %1065 = load %union.rec*, %union.rec** @zz_res, align 8
  %1066 = bitcast %union.rec* %1065 to %struct.word_type*
  %1067 = getelementptr inbounds %struct.word_type, %struct.word_type* %1066, i32 0, i32 0
  %1068 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1067, i32 0, i64 1
  %1069 = getelementptr inbounds %struct.LIST, %struct.LIST* %1068, i32 0, i32 0
  %1070 = load %union.rec*, %union.rec** %1069, align 8
  %1071 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1072 = bitcast %union.rec* %1071 to %struct.word_type*
  %1073 = getelementptr inbounds %struct.word_type, %struct.word_type* %1072, i32 0, i32 0
  %1074 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1073, i32 0, i64 1
  %1075 = getelementptr inbounds %struct.LIST, %struct.LIST* %1074, i32 0, i32 0
  store %union.rec* %1070, %union.rec** %1075, align 8
  %1076 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1077 = load %union.rec*, %union.rec** @zz_res, align 8
  %1078 = bitcast %union.rec* %1077 to %struct.word_type*
  %1079 = getelementptr inbounds %struct.word_type, %struct.word_type* %1078, i32 0, i32 0
  %1080 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1079, i32 0, i64 1
  %1081 = getelementptr inbounds %struct.LIST, %struct.LIST* %1080, i32 0, i32 0
  %1082 = load %union.rec*, %union.rec** %1081, align 8
  %1083 = bitcast %union.rec* %1082 to %struct.word_type*
  %1084 = getelementptr inbounds %struct.word_type, %struct.word_type* %1083, i32 0, i32 0
  %1085 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1084, i32 0, i64 1
  %1086 = getelementptr inbounds %struct.LIST, %struct.LIST* %1085, i32 0, i32 1
  store %union.rec* %1076, %union.rec** %1086, align 8
  %1087 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1088 = load %union.rec*, %union.rec** @zz_res, align 8
  %1089 = bitcast %union.rec* %1088 to %struct.word_type*
  %1090 = getelementptr inbounds %struct.word_type, %struct.word_type* %1089, i32 0, i32 0
  %1091 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1090, i32 0, i64 1
  %1092 = getelementptr inbounds %struct.LIST, %struct.LIST* %1091, i32 0, i32 0
  store %union.rec* %1087, %union.rec** %1092, align 8
  %1093 = load %union.rec*, %union.rec** @zz_res, align 8
  %1094 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1095 = bitcast %union.rec* %1094 to %struct.word_type*
  %1096 = getelementptr inbounds %struct.word_type, %struct.word_type* %1095, i32 0, i32 0
  %1097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1096, i32 0, i64 1
  %1098 = getelementptr inbounds %struct.LIST, %struct.LIST* %1097, i32 0, i32 1
  store %union.rec* %1093, %union.rec** %1098, align 8
  br label %1099

; <label>:1099                                    ; preds = %1058, %1056
  %1100 = phi %union.rec* [ %1057, %1056 ], [ %1093, %1058 ]
  br label %1101

; <label>:1101                                    ; preds = %1099, %1051
  %1102 = phi %union.rec* [ %1052, %1051 ], [ %1100, %1099 ]
  %1103 = load %union.rec*, %union.rec** %hd, align 8
  %1104 = bitcast %union.rec* %1103 to %struct.closure_type*
  %1105 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1104, i32 0, i32 6
  %1106 = bitcast %union.anon.12* %1105 to %union.rec**
  %1107 = load %union.rec*, %union.rec** %1106, align 8
  %1108 = icmp eq %union.rec* %1107, null
  br i1 %1108, label %1125, label %1109

; <label>:1109                                    ; preds = %1101
  %1110 = load %union.rec*, %union.rec** %hd, align 8
  %1111 = bitcast %union.rec* %1110 to %struct.closure_type*
  %1112 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1111, i32 0, i32 6
  %1113 = bitcast %union.anon.12* %1112 to %union.rec**
  %1114 = load %union.rec*, %union.rec** %1113, align 8
  %1115 = bitcast %union.rec* %1114 to %struct.word_type*
  %1116 = getelementptr inbounds %struct.word_type, %struct.word_type* %1115, i32 0, i32 2
  %1117 = bitcast %union.SECOND_UNION* %1116 to %struct.anon.5*
  %1118 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1117, i32 0, i32 1
  %1119 = bitcast [3 x i8]* %1118 to i24*
  %1120 = load i24, i24* %1119, align 1
  %1121 = lshr i24 %1120, 11
  %1122 = and i24 %1121, 1
  %1123 = zext i24 %1122 to i32
  %1124 = icmp ne i32 %1123, 0
  br i1 %1124, label %1127, label %1125

; <label>:1125                                    ; preds = %1109, %1101
  %1126 = load %union.rec*, %union.rec** %hd, align 8
  call void @FlushGalley(%union.rec* %1126)
  br label %1127

; <label>:1127                                    ; preds = %1125, %1109
  %1128 = load %union.rec*, %union.rec** %hd, align 8
  %1129 = bitcast %union.rec* %1128 to %struct.word_type*
  %1130 = getelementptr inbounds %struct.word_type, %struct.word_type* %1129, i32 0, i32 0
  %1131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1130, i32 0, i64 1
  %1132 = getelementptr inbounds %struct.LIST, %struct.LIST* %1131, i32 0, i32 1
  %1133 = load %union.rec*, %union.rec** %1132, align 8
  %1134 = bitcast %union.rec* %1133 to %struct.word_type*
  %1135 = getelementptr inbounds %struct.word_type, %struct.word_type* %1134, i32 0, i32 0
  %1136 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1135, i32 0, i64 0
  %1137 = getelementptr inbounds %struct.LIST, %struct.LIST* %1136, i32 0, i32 0
  %1138 = load %union.rec*, %union.rec** %1137, align 8
  store %union.rec* %1138, %union.rec** %index, align 8
  br label %1139

; <label>:1139                                    ; preds = %1149, %1127
  %1140 = load %union.rec*, %union.rec** %index, align 8
  %1141 = bitcast %union.rec* %1140 to %struct.word_type*
  %1142 = getelementptr inbounds %struct.word_type, %struct.word_type* %1141, i32 0, i32 1
  %1143 = bitcast %union.FIRST_UNION* %1142 to %struct.anon*
  %1144 = getelementptr inbounds %struct.anon, %struct.anon* %1143, i32 0, i32 0
  %1145 = load i8, i8* %1144, align 1
  %1146 = zext i8 %1145 to i32
  %1147 = icmp eq i32 %1146, 0
  br i1 %1147, label %1148, label %1156

; <label>:1148                                    ; preds = %1139
  br label %1149

; <label>:1149                                    ; preds = %1148
  %1150 = load %union.rec*, %union.rec** %index, align 8
  %1151 = bitcast %union.rec* %1150 to %struct.word_type*
  %1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %1151, i32 0, i32 0
  %1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1152, i32 0, i64 0
  %1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %1153, i32 0, i32 0
  %1155 = load %union.rec*, %union.rec** %1154, align 8
  store %union.rec* %1155, %union.rec** %index, align 8
  br label %1139

; <label>:1156                                    ; preds = %1139
  %1157 = load %union.rec*, %union.rec** %index, align 8
  %1158 = bitcast %union.rec* %1157 to %struct.word_type*
  %1159 = getelementptr inbounds %struct.word_type, %struct.word_type* %1158, i32 0, i32 1
  %1160 = bitcast %union.FIRST_UNION* %1159 to %struct.anon*
  %1161 = getelementptr inbounds %struct.anon, %struct.anon* %1160, i32 0, i32 0
  %1162 = load i8, i8* %1161, align 1
  %1163 = zext i8 %1162 to i32
  %1164 = icmp eq i32 %1163, 120
  br i1 %1164, label %1165, label %1812

; <label>:1165                                    ; preds = %1156
  %1166 = load %union.rec*, %union.rec** %hd, align 8
  %1167 = bitcast %union.rec* %1166 to %struct.word_type*
  %1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %1167, i32 0, i32 2
  %1169 = bitcast %union.SECOND_UNION* %1168 to %struct.anon.2*
  %1170 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1169, i32 0, i32 2
  %1171 = load i16, i16* %1170, align 2
  %1172 = lshr i16 %1171, 1
  %1173 = and i16 %1172, 1
  %1174 = zext i16 %1173 to i32
  %1175 = icmp ne i32 %1174, 0
  br i1 %1175, label %1812, label %1176

; <label>:1176                                    ; preds = %1165
  %1177 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %1177, %union.rec** @xx_hold, align 8
  br label %1178

; <label>:1178                                    ; preds = %1338, %1176
  %1179 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1180 = bitcast %union.rec* %1179 to %struct.word_type*
  %1181 = getelementptr inbounds %struct.word_type, %struct.word_type* %1180, i32 0, i32 0
  %1182 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1181, i32 0, i64 1
  %1183 = getelementptr inbounds %struct.LIST, %struct.LIST* %1182, i32 0, i32 1
  %1184 = load %union.rec*, %union.rec** %1183, align 8
  %1185 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1186 = icmp ne %union.rec* %1184, %1185
  br i1 %1186, label %1187, label %1353

; <label>:1187                                    ; preds = %1178
  %1188 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1189 = bitcast %union.rec* %1188 to %struct.word_type*
  %1190 = getelementptr inbounds %struct.word_type, %struct.word_type* %1189, i32 0, i32 0
  %1191 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1190, i32 0, i64 1
  %1192 = getelementptr inbounds %struct.LIST, %struct.LIST* %1191, i32 0, i32 1
  %1193 = load %union.rec*, %union.rec** %1192, align 8
  store %union.rec* %1193, %union.rec** @xx_link, align 8
  %1194 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1194, %union.rec** @zz_hold, align 8
  %1195 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1196 = bitcast %union.rec* %1195 to %struct.word_type*
  %1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %1196, i32 0, i32 0
  %1198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1197, i32 0, i64 1
  %1199 = getelementptr inbounds %struct.LIST, %struct.LIST* %1198, i32 0, i32 1
  %1200 = load %union.rec*, %union.rec** %1199, align 8
  %1201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1202 = icmp eq %union.rec* %1200, %1201
  br i1 %1202, label %1203, label %1204

; <label>:1203                                    ; preds = %1187
  br label %1245

; <label>:1204                                    ; preds = %1187
  %1205 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1206 = bitcast %union.rec* %1205 to %struct.word_type*
  %1207 = getelementptr inbounds %struct.word_type, %struct.word_type* %1206, i32 0, i32 0
  %1208 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1207, i32 0, i64 1
  %1209 = getelementptr inbounds %struct.LIST, %struct.LIST* %1208, i32 0, i32 1
  %1210 = load %union.rec*, %union.rec** %1209, align 8
  store %union.rec* %1210, %union.rec** @zz_res, align 8
  %1211 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1212 = bitcast %union.rec* %1211 to %struct.word_type*
  %1213 = getelementptr inbounds %struct.word_type, %struct.word_type* %1212, i32 0, i32 0
  %1214 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1213, i32 0, i64 1
  %1215 = getelementptr inbounds %struct.LIST, %struct.LIST* %1214, i32 0, i32 0
  %1216 = load %union.rec*, %union.rec** %1215, align 8
  %1217 = load %union.rec*, %union.rec** @zz_res, align 8
  %1218 = bitcast %union.rec* %1217 to %struct.word_type*
  %1219 = getelementptr inbounds %struct.word_type, %struct.word_type* %1218, i32 0, i32 0
  %1220 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1219, i32 0, i64 1
  %1221 = getelementptr inbounds %struct.LIST, %struct.LIST* %1220, i32 0, i32 0
  store %union.rec* %1216, %union.rec** %1221, align 8
  %1222 = load %union.rec*, %union.rec** @zz_res, align 8
  %1223 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1224 = bitcast %union.rec* %1223 to %struct.word_type*
  %1225 = getelementptr inbounds %struct.word_type, %struct.word_type* %1224, i32 0, i32 0
  %1226 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1225, i32 0, i64 1
  %1227 = getelementptr inbounds %struct.LIST, %struct.LIST* %1226, i32 0, i32 0
  %1228 = load %union.rec*, %union.rec** %1227, align 8
  %1229 = bitcast %union.rec* %1228 to %struct.word_type*
  %1230 = getelementptr inbounds %struct.word_type, %struct.word_type* %1229, i32 0, i32 0
  %1231 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1230, i32 0, i64 1
  %1232 = getelementptr inbounds %struct.LIST, %struct.LIST* %1231, i32 0, i32 1
  store %union.rec* %1222, %union.rec** %1232, align 8
  %1233 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1235 = bitcast %union.rec* %1234 to %struct.word_type*
  %1236 = getelementptr inbounds %struct.word_type, %struct.word_type* %1235, i32 0, i32 0
  %1237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1236, i32 0, i64 1
  %1238 = getelementptr inbounds %struct.LIST, %struct.LIST* %1237, i32 0, i32 1
  store %union.rec* %1233, %union.rec** %1238, align 8
  %1239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1240 = bitcast %union.rec* %1239 to %struct.word_type*
  %1241 = getelementptr inbounds %struct.word_type, %struct.word_type* %1240, i32 0, i32 0
  %1242 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1241, i32 0, i64 1
  %1243 = getelementptr inbounds %struct.LIST, %struct.LIST* %1242, i32 0, i32 0
  store %union.rec* %1233, %union.rec** %1243, align 8
  %1244 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1245

; <label>:1245                                    ; preds = %1204, %1203
  %1246 = phi %union.rec* [ null, %1203 ], [ %1244, %1204 ]
  %1247 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1247, %union.rec** @zz_hold, align 8
  %1248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1249 = bitcast %union.rec* %1248 to %struct.word_type*
  %1250 = getelementptr inbounds %struct.word_type, %struct.word_type* %1249, i32 0, i32 0
  %1251 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1250, i32 0, i64 0
  %1252 = getelementptr inbounds %struct.LIST, %struct.LIST* %1251, i32 0, i32 1
  %1253 = load %union.rec*, %union.rec** %1252, align 8
  %1254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1255 = icmp eq %union.rec* %1253, %1254
  br i1 %1255, label %1256, label %1257

; <label>:1256                                    ; preds = %1245
  br label %1298

; <label>:1257                                    ; preds = %1245
  %1258 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1259 = bitcast %union.rec* %1258 to %struct.word_type*
  %1260 = getelementptr inbounds %struct.word_type, %struct.word_type* %1259, i32 0, i32 0
  %1261 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1260, i32 0, i64 0
  %1262 = getelementptr inbounds %struct.LIST, %struct.LIST* %1261, i32 0, i32 1
  %1263 = load %union.rec*, %union.rec** %1262, align 8
  store %union.rec* %1263, %union.rec** @zz_res, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1265 = bitcast %union.rec* %1264 to %struct.word_type*
  %1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %1265, i32 0, i32 0
  %1267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1266, i32 0, i64 0
  %1268 = getelementptr inbounds %struct.LIST, %struct.LIST* %1267, i32 0, i32 0
  %1269 = load %union.rec*, %union.rec** %1268, align 8
  %1270 = load %union.rec*, %union.rec** @zz_res, align 8
  %1271 = bitcast %union.rec* %1270 to %struct.word_type*
  %1272 = getelementptr inbounds %struct.word_type, %struct.word_type* %1271, i32 0, i32 0
  %1273 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1272, i32 0, i64 0
  %1274 = getelementptr inbounds %struct.LIST, %struct.LIST* %1273, i32 0, i32 0
  store %union.rec* %1269, %union.rec** %1274, align 8
  %1275 = load %union.rec*, %union.rec** @zz_res, align 8
  %1276 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1277 = bitcast %union.rec* %1276 to %struct.word_type*
  %1278 = getelementptr inbounds %struct.word_type, %struct.word_type* %1277, i32 0, i32 0
  %1279 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1278, i32 0, i64 0
  %1280 = getelementptr inbounds %struct.LIST, %struct.LIST* %1279, i32 0, i32 0
  %1281 = load %union.rec*, %union.rec** %1280, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 0
  %1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1283, i32 0, i64 0
  %1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %1284, i32 0, i32 1
  store %union.rec* %1275, %union.rec** %1285, align 8
  %1286 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1287 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1288 = bitcast %union.rec* %1287 to %struct.word_type*
  %1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %1288, i32 0, i32 0
  %1290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1289, i32 0, i64 0
  %1291 = getelementptr inbounds %struct.LIST, %struct.LIST* %1290, i32 0, i32 1
  store %union.rec* %1286, %union.rec** %1291, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 0
  %1295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1294, i32 0, i64 0
  %1296 = getelementptr inbounds %struct.LIST, %struct.LIST* %1295, i32 0, i32 0
  store %union.rec* %1286, %union.rec** %1296, align 8
  %1297 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1298

; <label>:1298                                    ; preds = %1257, %1256
  %1299 = phi %union.rec* [ null, %1256 ], [ %1297, %1257 ]
  %1300 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1300, %union.rec** @zz_hold, align 8
  %1301 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1301, %union.rec** @zz_hold, align 8
  %1302 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1303 = bitcast %union.rec* %1302 to %struct.word_type*
  %1304 = getelementptr inbounds %struct.word_type, %struct.word_type* %1303, i32 0, i32 1
  %1305 = bitcast %union.FIRST_UNION* %1304 to %struct.anon*
  %1306 = getelementptr inbounds %struct.anon, %struct.anon* %1305, i32 0, i32 0
  %1307 = load i8, i8* %1306, align 1
  %1308 = zext i8 %1307 to i32
  %1309 = icmp eq i32 %1308, 11
  br i1 %1309, label %1319, label %1310

; <label>:1310                                    ; preds = %1298
  %1311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1312 = bitcast %union.rec* %1311 to %struct.word_type*
  %1313 = getelementptr inbounds %struct.word_type, %struct.word_type* %1312, i32 0, i32 1
  %1314 = bitcast %union.FIRST_UNION* %1313 to %struct.anon*
  %1315 = getelementptr inbounds %struct.anon, %struct.anon* %1314, i32 0, i32 0
  %1316 = load i8, i8* %1315, align 1
  %1317 = zext i8 %1316 to i32
  %1318 = icmp eq i32 %1317, 12
  br i1 %1318, label %1319, label %1327

; <label>:1319                                    ; preds = %1310, %1298
  %1320 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1321 = bitcast %union.rec* %1320 to %struct.word_type*
  %1322 = getelementptr inbounds %struct.word_type, %struct.word_type* %1321, i32 0, i32 1
  %1323 = bitcast %union.FIRST_UNION* %1322 to %struct.anon*
  %1324 = getelementptr inbounds %struct.anon, %struct.anon* %1323, i32 0, i32 1
  %1325 = load i8, i8* %1324, align 1
  %1326 = zext i8 %1325 to i32
  br label %1338

; <label>:1327                                    ; preds = %1310
  %1328 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1329 = bitcast %union.rec* %1328 to %struct.word_type*
  %1330 = getelementptr inbounds %struct.word_type, %struct.word_type* %1329, i32 0, i32 1
  %1331 = bitcast %union.FIRST_UNION* %1330 to %struct.anon*
  %1332 = getelementptr inbounds %struct.anon, %struct.anon* %1331, i32 0, i32 0
  %1333 = load i8, i8* %1332, align 1
  %1334 = zext i8 %1333 to i64
  %1335 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1334
  %1336 = load i8, i8* %1335, align 1
  %1337 = zext i8 %1336 to i32
  br label %1338

; <label>:1338                                    ; preds = %1327, %1319
  %1339 = phi i32 [ %1326, %1319 ], [ %1337, %1327 ]
  store i32 %1339, i32* @zz_size, align 4
  %1340 = load i32, i32* @zz_size, align 4
  %1341 = sext i32 %1340 to i64
  %1342 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1341
  %1343 = load %union.rec*, %union.rec** %1342, align 8
  %1344 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1345 = bitcast %union.rec* %1344 to %struct.word_type*
  %1346 = getelementptr inbounds %struct.word_type, %struct.word_type* %1345, i32 0, i32 0
  %1347 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1346, i32 0, i64 0
  %1348 = getelementptr inbounds %struct.LIST, %struct.LIST* %1347, i32 0, i32 0
  store %union.rec* %1343, %union.rec** %1348, align 8
  %1349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1350 = load i32, i32* @zz_size, align 4
  %1351 = sext i32 %1350 to i64
  %1352 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1351
  store %union.rec* %1349, %union.rec** %1352, align 8
  br label %1178

; <label>:1353                                    ; preds = %1178
  br label %1354

; <label>:1354                                    ; preds = %1514, %1353
  %1355 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 0
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 1
  %1360 = load %union.rec*, %union.rec** %1359, align 8
  %1361 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1362 = icmp ne %union.rec* %1360, %1361
  br i1 %1362, label %1363, label %1529

; <label>:1363                                    ; preds = %1354
  %1364 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1365 = bitcast %union.rec* %1364 to %struct.word_type*
  %1366 = getelementptr inbounds %struct.word_type, %struct.word_type* %1365, i32 0, i32 0
  %1367 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1366, i32 0, i64 0
  %1368 = getelementptr inbounds %struct.LIST, %struct.LIST* %1367, i32 0, i32 1
  %1369 = load %union.rec*, %union.rec** %1368, align 8
  store %union.rec* %1369, %union.rec** @xx_link, align 8
  %1370 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1370, %union.rec** @zz_hold, align 8
  %1371 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1372 = bitcast %union.rec* %1371 to %struct.word_type*
  %1373 = getelementptr inbounds %struct.word_type, %struct.word_type* %1372, i32 0, i32 0
  %1374 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1373, i32 0, i64 1
  %1375 = getelementptr inbounds %struct.LIST, %struct.LIST* %1374, i32 0, i32 1
  %1376 = load %union.rec*, %union.rec** %1375, align 8
  %1377 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1378 = icmp eq %union.rec* %1376, %1377
  br i1 %1378, label %1379, label %1380

; <label>:1379                                    ; preds = %1363
  br label %1421

; <label>:1380                                    ; preds = %1363
  %1381 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1382 = bitcast %union.rec* %1381 to %struct.word_type*
  %1383 = getelementptr inbounds %struct.word_type, %struct.word_type* %1382, i32 0, i32 0
  %1384 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1383, i32 0, i64 1
  %1385 = getelementptr inbounds %struct.LIST, %struct.LIST* %1384, i32 0, i32 1
  %1386 = load %union.rec*, %union.rec** %1385, align 8
  store %union.rec* %1386, %union.rec** @zz_res, align 8
  %1387 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1388 = bitcast %union.rec* %1387 to %struct.word_type*
  %1389 = getelementptr inbounds %struct.word_type, %struct.word_type* %1388, i32 0, i32 0
  %1390 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1389, i32 0, i64 1
  %1391 = getelementptr inbounds %struct.LIST, %struct.LIST* %1390, i32 0, i32 0
  %1392 = load %union.rec*, %union.rec** %1391, align 8
  %1393 = load %union.rec*, %union.rec** @zz_res, align 8
  %1394 = bitcast %union.rec* %1393 to %struct.word_type*
  %1395 = getelementptr inbounds %struct.word_type, %struct.word_type* %1394, i32 0, i32 0
  %1396 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1395, i32 0, i64 1
  %1397 = getelementptr inbounds %struct.LIST, %struct.LIST* %1396, i32 0, i32 0
  store %union.rec* %1392, %union.rec** %1397, align 8
  %1398 = load %union.rec*, %union.rec** @zz_res, align 8
  %1399 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1400 = bitcast %union.rec* %1399 to %struct.word_type*
  %1401 = getelementptr inbounds %struct.word_type, %struct.word_type* %1400, i32 0, i32 0
  %1402 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1401, i32 0, i64 1
  %1403 = getelementptr inbounds %struct.LIST, %struct.LIST* %1402, i32 0, i32 0
  %1404 = load %union.rec*, %union.rec** %1403, align 8
  %1405 = bitcast %union.rec* %1404 to %struct.word_type*
  %1406 = getelementptr inbounds %struct.word_type, %struct.word_type* %1405, i32 0, i32 0
  %1407 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1406, i32 0, i64 1
  %1408 = getelementptr inbounds %struct.LIST, %struct.LIST* %1407, i32 0, i32 1
  store %union.rec* %1398, %union.rec** %1408, align 8
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
  %1420 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1421

; <label>:1421                                    ; preds = %1380, %1379
  %1422 = phi %union.rec* [ null, %1379 ], [ %1420, %1380 ]
  %1423 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1423, %union.rec** @zz_hold, align 8
  %1424 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1425 = bitcast %union.rec* %1424 to %struct.word_type*
  %1426 = getelementptr inbounds %struct.word_type, %struct.word_type* %1425, i32 0, i32 0
  %1427 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1426, i32 0, i64 0
  %1428 = getelementptr inbounds %struct.LIST, %struct.LIST* %1427, i32 0, i32 1
  %1429 = load %union.rec*, %union.rec** %1428, align 8
  %1430 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1431 = icmp eq %union.rec* %1429, %1430
  br i1 %1431, label %1432, label %1433

; <label>:1432                                    ; preds = %1421
  br label %1474

; <label>:1433                                    ; preds = %1421
  %1434 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1435 = bitcast %union.rec* %1434 to %struct.word_type*
  %1436 = getelementptr inbounds %struct.word_type, %struct.word_type* %1435, i32 0, i32 0
  %1437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1436, i32 0, i64 0
  %1438 = getelementptr inbounds %struct.LIST, %struct.LIST* %1437, i32 0, i32 1
  %1439 = load %union.rec*, %union.rec** %1438, align 8
  store %union.rec* %1439, %union.rec** @zz_res, align 8
  %1440 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1441 = bitcast %union.rec* %1440 to %struct.word_type*
  %1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1442, i32 0, i64 0
  %1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %1443, i32 0, i32 0
  %1445 = load %union.rec*, %union.rec** %1444, align 8
  %1446 = load %union.rec*, %union.rec** @zz_res, align 8
  %1447 = bitcast %union.rec* %1446 to %struct.word_type*
  %1448 = getelementptr inbounds %struct.word_type, %struct.word_type* %1447, i32 0, i32 0
  %1449 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1448, i32 0, i64 0
  %1450 = getelementptr inbounds %struct.LIST, %struct.LIST* %1449, i32 0, i32 0
  store %union.rec* %1445, %union.rec** %1450, align 8
  %1451 = load %union.rec*, %union.rec** @zz_res, align 8
  %1452 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1453 = bitcast %union.rec* %1452 to %struct.word_type*
  %1454 = getelementptr inbounds %struct.word_type, %struct.word_type* %1453, i32 0, i32 0
  %1455 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1454, i32 0, i64 0
  %1456 = getelementptr inbounds %struct.LIST, %struct.LIST* %1455, i32 0, i32 0
  %1457 = load %union.rec*, %union.rec** %1456, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 0
  %1460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1459, i32 0, i64 0
  %1461 = getelementptr inbounds %struct.LIST, %struct.LIST* %1460, i32 0, i32 1
  store %union.rec* %1451, %union.rec** %1461, align 8
  %1462 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1464 = bitcast %union.rec* %1463 to %struct.word_type*
  %1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %1464, i32 0, i32 0
  %1466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1465, i32 0, i64 0
  %1467 = getelementptr inbounds %struct.LIST, %struct.LIST* %1466, i32 0, i32 1
  store %union.rec* %1462, %union.rec** %1467, align 8
  %1468 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1469 = bitcast %union.rec* %1468 to %struct.word_type*
  %1470 = getelementptr inbounds %struct.word_type, %struct.word_type* %1469, i32 0, i32 0
  %1471 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1470, i32 0, i64 0
  %1472 = getelementptr inbounds %struct.LIST, %struct.LIST* %1471, i32 0, i32 0
  store %union.rec* %1462, %union.rec** %1472, align 8
  %1473 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1474

; <label>:1474                                    ; preds = %1433, %1432
  %1475 = phi %union.rec* [ null, %1432 ], [ %1473, %1433 ]
  %1476 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1476, %union.rec** @zz_hold, align 8
  %1477 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1477, %union.rec** @zz_hold, align 8
  %1478 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1479 = bitcast %union.rec* %1478 to %struct.word_type*
  %1480 = getelementptr inbounds %struct.word_type, %struct.word_type* %1479, i32 0, i32 1
  %1481 = bitcast %union.FIRST_UNION* %1480 to %struct.anon*
  %1482 = getelementptr inbounds %struct.anon, %struct.anon* %1481, i32 0, i32 0
  %1483 = load i8, i8* %1482, align 1
  %1484 = zext i8 %1483 to i32
  %1485 = icmp eq i32 %1484, 11
  br i1 %1485, label %1495, label %1486

; <label>:1486                                    ; preds = %1474
  %1487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1488 = bitcast %union.rec* %1487 to %struct.word_type*
  %1489 = getelementptr inbounds %struct.word_type, %struct.word_type* %1488, i32 0, i32 1
  %1490 = bitcast %union.FIRST_UNION* %1489 to %struct.anon*
  %1491 = getelementptr inbounds %struct.anon, %struct.anon* %1490, i32 0, i32 0
  %1492 = load i8, i8* %1491, align 1
  %1493 = zext i8 %1492 to i32
  %1494 = icmp eq i32 %1493, 12
  br i1 %1494, label %1495, label %1503

; <label>:1495                                    ; preds = %1486, %1474
  %1496 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1497 = bitcast %union.rec* %1496 to %struct.word_type*
  %1498 = getelementptr inbounds %struct.word_type, %struct.word_type* %1497, i32 0, i32 1
  %1499 = bitcast %union.FIRST_UNION* %1498 to %struct.anon*
  %1500 = getelementptr inbounds %struct.anon, %struct.anon* %1499, i32 0, i32 1
  %1501 = load i8, i8* %1500, align 1
  %1502 = zext i8 %1501 to i32
  br label %1514

; <label>:1503                                    ; preds = %1486
  %1504 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1505 = bitcast %union.rec* %1504 to %struct.word_type*
  %1506 = getelementptr inbounds %struct.word_type, %struct.word_type* %1505, i32 0, i32 1
  %1507 = bitcast %union.FIRST_UNION* %1506 to %struct.anon*
  %1508 = getelementptr inbounds %struct.anon, %struct.anon* %1507, i32 0, i32 0
  %1509 = load i8, i8* %1508, align 1
  %1510 = zext i8 %1509 to i64
  %1511 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1510
  %1512 = load i8, i8* %1511, align 1
  %1513 = zext i8 %1512 to i32
  br label %1514

; <label>:1514                                    ; preds = %1503, %1495
  %1515 = phi i32 [ %1502, %1495 ], [ %1513, %1503 ]
  store i32 %1515, i32* @zz_size, align 4
  %1516 = load i32, i32* @zz_size, align 4
  %1517 = sext i32 %1516 to i64
  %1518 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1517
  %1519 = load %union.rec*, %union.rec** %1518, align 8
  %1520 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1521 = bitcast %union.rec* %1520 to %struct.word_type*
  %1522 = getelementptr inbounds %struct.word_type, %struct.word_type* %1521, i32 0, i32 0
  %1523 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1522, i32 0, i64 0
  %1524 = getelementptr inbounds %struct.LIST, %struct.LIST* %1523, i32 0, i32 0
  store %union.rec* %1519, %union.rec** %1524, align 8
  %1525 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1526 = load i32, i32* @zz_size, align 4
  %1527 = sext i32 %1526 to i64
  %1528 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1527
  store %union.rec* %1525, %union.rec** %1528, align 8
  br label %1354

; <label>:1529                                    ; preds = %1354
  %1530 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1530, %union.rec** @zz_hold, align 8
  %1531 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1531, %union.rec** @zz_hold, align 8
  %1532 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1533 = bitcast %union.rec* %1532 to %struct.word_type*
  %1534 = getelementptr inbounds %struct.word_type, %struct.word_type* %1533, i32 0, i32 1
  %1535 = bitcast %union.FIRST_UNION* %1534 to %struct.anon*
  %1536 = getelementptr inbounds %struct.anon, %struct.anon* %1535, i32 0, i32 0
  %1537 = load i8, i8* %1536, align 1
  %1538 = zext i8 %1537 to i32
  %1539 = icmp eq i32 %1538, 11
  br i1 %1539, label %1549, label %1540

; <label>:1540                                    ; preds = %1529
  %1541 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1542 = bitcast %union.rec* %1541 to %struct.word_type*
  %1543 = getelementptr inbounds %struct.word_type, %struct.word_type* %1542, i32 0, i32 1
  %1544 = bitcast %union.FIRST_UNION* %1543 to %struct.anon*
  %1545 = getelementptr inbounds %struct.anon, %struct.anon* %1544, i32 0, i32 0
  %1546 = load i8, i8* %1545, align 1
  %1547 = zext i8 %1546 to i32
  %1548 = icmp eq i32 %1547, 12
  br i1 %1548, label %1549, label %1557

; <label>:1549                                    ; preds = %1540, %1529
  %1550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1551 = bitcast %union.rec* %1550 to %struct.word_type*
  %1552 = getelementptr inbounds %struct.word_type, %struct.word_type* %1551, i32 0, i32 1
  %1553 = bitcast %union.FIRST_UNION* %1552 to %struct.anon*
  %1554 = getelementptr inbounds %struct.anon, %struct.anon* %1553, i32 0, i32 1
  %1555 = load i8, i8* %1554, align 1
  %1556 = zext i8 %1555 to i32
  br label %1568

; <label>:1557                                    ; preds = %1540
  %1558 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1559 = bitcast %union.rec* %1558 to %struct.word_type*
  %1560 = getelementptr inbounds %struct.word_type, %struct.word_type* %1559, i32 0, i32 1
  %1561 = bitcast %union.FIRST_UNION* %1560 to %struct.anon*
  %1562 = getelementptr inbounds %struct.anon, %struct.anon* %1561, i32 0, i32 0
  %1563 = load i8, i8* %1562, align 1
  %1564 = zext i8 %1563 to i64
  %1565 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1564
  %1566 = load i8, i8* %1565, align 1
  %1567 = zext i8 %1566 to i32
  br label %1568

; <label>:1568                                    ; preds = %1557, %1549
  %1569 = phi i32 [ %1556, %1549 ], [ %1567, %1557 ]
  store i32 %1569, i32* @zz_size, align 4
  %1570 = load i32, i32* @zz_size, align 4
  %1571 = sext i32 %1570 to i64
  %1572 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1571
  %1573 = load %union.rec*, %union.rec** %1572, align 8
  %1574 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1575 = bitcast %union.rec* %1574 to %struct.word_type*
  %1576 = getelementptr inbounds %struct.word_type, %struct.word_type* %1575, i32 0, i32 0
  %1577 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1576, i32 0, i64 0
  %1578 = getelementptr inbounds %struct.LIST, %struct.LIST* %1577, i32 0, i32 0
  store %union.rec* %1573, %union.rec** %1578, align 8
  %1579 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1580 = load i32, i32* @zz_size, align 4
  %1581 = sext i32 %1580 to i64
  %1582 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1581
  store %union.rec* %1579, %union.rec** %1582, align 8
  %1583 = load %union.rec*, %union.rec** %hold_env, align 8
  %1584 = call i32 @DisposeObject(%union.rec* %1583)
  %1585 = load %union.rec*, %union.rec** %2, align 8
  %1586 = bitcast %union.rec* %1585 to %struct.word_type*
  %1587 = getelementptr inbounds %struct.word_type, %struct.word_type* %1586, i32 0, i32 0
  %1588 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1587, i32 0, i64 0
  %1589 = getelementptr inbounds %struct.LIST, %struct.LIST* %1588, i32 0, i32 0
  %1590 = load %union.rec*, %union.rec** %1589, align 8
  %1591 = load %union.rec*, %union.rec** %2, align 8
  %1592 = icmp ne %union.rec* %1590, %1591
  br i1 %1592, label %1593, label %1810

; <label>:1593                                    ; preds = %1568
  %1594 = load %union.rec*, %union.rec** %2, align 8
  %1595 = bitcast %union.rec* %1594 to %struct.word_type*
  %1596 = getelementptr inbounds %struct.word_type, %struct.word_type* %1595, i32 0, i32 0
  %1597 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1596, i32 0, i64 0
  %1598 = getelementptr inbounds %struct.LIST, %struct.LIST* %1597, i32 0, i32 0
  %1599 = load %union.rec*, %union.rec** %1598, align 8
  %1600 = bitcast %union.rec* %1599 to %struct.word_type*
  %1601 = getelementptr inbounds %struct.word_type, %struct.word_type* %1600, i32 0, i32 0
  %1602 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1601, i32 0, i64 1
  %1603 = getelementptr inbounds %struct.LIST, %struct.LIST* %1602, i32 0, i32 0
  %1604 = load %union.rec*, %union.rec** %1603, align 8
  store %union.rec* %1604, %union.rec** %env, align 8
  br label %1605

; <label>:1605                                    ; preds = %1615, %1593
  %1606 = load %union.rec*, %union.rec** %env, align 8
  %1607 = bitcast %union.rec* %1606 to %struct.word_type*
  %1608 = getelementptr inbounds %struct.word_type, %struct.word_type* %1607, i32 0, i32 1
  %1609 = bitcast %union.FIRST_UNION* %1608 to %struct.anon*
  %1610 = getelementptr inbounds %struct.anon, %struct.anon* %1609, i32 0, i32 0
  %1611 = load i8, i8* %1610, align 1
  %1612 = zext i8 %1611 to i32
  %1613 = icmp eq i32 %1612, 0
  br i1 %1613, label %1614, label %1622

; <label>:1614                                    ; preds = %1605
  br label %1615

; <label>:1615                                    ; preds = %1614
  %1616 = load %union.rec*, %union.rec** %env, align 8
  %1617 = bitcast %union.rec* %1616 to %struct.word_type*
  %1618 = getelementptr inbounds %struct.word_type, %struct.word_type* %1617, i32 0, i32 0
  %1619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1618, i32 0, i64 1
  %1620 = getelementptr inbounds %struct.LIST, %struct.LIST* %1619, i32 0, i32 0
  %1621 = load %union.rec*, %union.rec** %1620, align 8
  store %union.rec* %1621, %union.rec** %env, align 8
  br label %1605

; <label>:1622                                    ; preds = %1605
  %1623 = load %union.rec*, %union.rec** %env, align 8
  %1624 = bitcast %union.rec* %1623 to %struct.word_type*
  %1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %1624, i32 0, i32 1
  %1626 = bitcast %union.FIRST_UNION* %1625 to %struct.anon*
  %1627 = getelementptr inbounds %struct.anon, %struct.anon* %1626, i32 0, i32 0
  %1628 = load i8, i8* %1627, align 1
  %1629 = zext i8 %1628 to i32
  %1630 = icmp eq i32 %1629, 82
  br i1 %1630, label %1631, label %1809

; <label>:1631                                    ; preds = %1622
  %1632 = load %union.rec*, %union.rec** %2, align 8
  %1633 = bitcast %union.rec* %1632 to %struct.word_type*
  %1634 = getelementptr inbounds %struct.word_type, %struct.word_type* %1633, i32 0, i32 0
  %1635 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1634, i32 0, i64 0
  %1636 = getelementptr inbounds %struct.LIST, %struct.LIST* %1635, i32 0, i32 0
  %1637 = load %union.rec*, %union.rec** %1636, align 8
  store %union.rec* %1637, %union.rec** @xx_link, align 8
  %1638 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1638, %union.rec** @zz_hold, align 8
  %1639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1640 = bitcast %union.rec* %1639 to %struct.word_type*
  %1641 = getelementptr inbounds %struct.word_type, %struct.word_type* %1640, i32 0, i32 0
  %1642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1641, i32 0, i64 1
  %1643 = getelementptr inbounds %struct.LIST, %struct.LIST* %1642, i32 0, i32 1
  %1644 = load %union.rec*, %union.rec** %1643, align 8
  %1645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1646 = icmp eq %union.rec* %1644, %1645
  br i1 %1646, label %1647, label %1648

; <label>:1647                                    ; preds = %1631
  br label %1689

; <label>:1648                                    ; preds = %1631
  %1649 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1650 = bitcast %union.rec* %1649 to %struct.word_type*
  %1651 = getelementptr inbounds %struct.word_type, %struct.word_type* %1650, i32 0, i32 0
  %1652 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1651, i32 0, i64 1
  %1653 = getelementptr inbounds %struct.LIST, %struct.LIST* %1652, i32 0, i32 1
  %1654 = load %union.rec*, %union.rec** %1653, align 8
  store %union.rec* %1654, %union.rec** @zz_res, align 8
  %1655 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1656 = bitcast %union.rec* %1655 to %struct.word_type*
  %1657 = getelementptr inbounds %struct.word_type, %struct.word_type* %1656, i32 0, i32 0
  %1658 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1657, i32 0, i64 1
  %1659 = getelementptr inbounds %struct.LIST, %struct.LIST* %1658, i32 0, i32 0
  %1660 = load %union.rec*, %union.rec** %1659, align 8
  %1661 = load %union.rec*, %union.rec** @zz_res, align 8
  %1662 = bitcast %union.rec* %1661 to %struct.word_type*
  %1663 = getelementptr inbounds %struct.word_type, %struct.word_type* %1662, i32 0, i32 0
  %1664 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1663, i32 0, i64 1
  %1665 = getelementptr inbounds %struct.LIST, %struct.LIST* %1664, i32 0, i32 0
  store %union.rec* %1660, %union.rec** %1665, align 8
  %1666 = load %union.rec*, %union.rec** @zz_res, align 8
  %1667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1668 = bitcast %union.rec* %1667 to %struct.word_type*
  %1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %1668, i32 0, i32 0
  %1670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1669, i32 0, i64 1
  %1671 = getelementptr inbounds %struct.LIST, %struct.LIST* %1670, i32 0, i32 0
  %1672 = load %union.rec*, %union.rec** %1671, align 8
  %1673 = bitcast %union.rec* %1672 to %struct.word_type*
  %1674 = getelementptr inbounds %struct.word_type, %struct.word_type* %1673, i32 0, i32 0
  %1675 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1674, i32 0, i64 1
  %1676 = getelementptr inbounds %struct.LIST, %struct.LIST* %1675, i32 0, i32 1
  store %union.rec* %1666, %union.rec** %1676, align 8
  %1677 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1678 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1679 = bitcast %union.rec* %1678 to %struct.word_type*
  %1680 = getelementptr inbounds %struct.word_type, %struct.word_type* %1679, i32 0, i32 0
  %1681 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1680, i32 0, i64 1
  %1682 = getelementptr inbounds %struct.LIST, %struct.LIST* %1681, i32 0, i32 1
  store %union.rec* %1677, %union.rec** %1682, align 8
  %1683 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1684 = bitcast %union.rec* %1683 to %struct.word_type*
  %1685 = getelementptr inbounds %struct.word_type, %struct.word_type* %1684, i32 0, i32 0
  %1686 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1685, i32 0, i64 1
  %1687 = getelementptr inbounds %struct.LIST, %struct.LIST* %1686, i32 0, i32 0
  store %union.rec* %1677, %union.rec** %1687, align 8
  %1688 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1689

; <label>:1689                                    ; preds = %1648, %1647
  %1690 = phi %union.rec* [ null, %1647 ], [ %1688, %1648 ]
  store %union.rec* %1690, %union.rec** @xx_tmp, align 8
  %1691 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1691, %union.rec** @zz_hold, align 8
  %1692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1693 = bitcast %union.rec* %1692 to %struct.word_type*
  %1694 = getelementptr inbounds %struct.word_type, %struct.word_type* %1693, i32 0, i32 0
  %1695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1694, i32 0, i64 0
  %1696 = getelementptr inbounds %struct.LIST, %struct.LIST* %1695, i32 0, i32 1
  %1697 = load %union.rec*, %union.rec** %1696, align 8
  %1698 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1699 = icmp eq %union.rec* %1697, %1698
  br i1 %1699, label %1700, label %1701

; <label>:1700                                    ; preds = %1689
  br label %1742

; <label>:1701                                    ; preds = %1689
  %1702 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1703 = bitcast %union.rec* %1702 to %struct.word_type*
  %1704 = getelementptr inbounds %struct.word_type, %struct.word_type* %1703, i32 0, i32 0
  %1705 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1704, i32 0, i64 0
  %1706 = getelementptr inbounds %struct.LIST, %struct.LIST* %1705, i32 0, i32 1
  %1707 = load %union.rec*, %union.rec** %1706, align 8
  store %union.rec* %1707, %union.rec** @zz_res, align 8
  %1708 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1709 = bitcast %union.rec* %1708 to %struct.word_type*
  %1710 = getelementptr inbounds %struct.word_type, %struct.word_type* %1709, i32 0, i32 0
  %1711 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1710, i32 0, i64 0
  %1712 = getelementptr inbounds %struct.LIST, %struct.LIST* %1711, i32 0, i32 0
  %1713 = load %union.rec*, %union.rec** %1712, align 8
  %1714 = load %union.rec*, %union.rec** @zz_res, align 8
  %1715 = bitcast %union.rec* %1714 to %struct.word_type*
  %1716 = getelementptr inbounds %struct.word_type, %struct.word_type* %1715, i32 0, i32 0
  %1717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1716, i32 0, i64 0
  %1718 = getelementptr inbounds %struct.LIST, %struct.LIST* %1717, i32 0, i32 0
  store %union.rec* %1713, %union.rec** %1718, align 8
  %1719 = load %union.rec*, %union.rec** @zz_res, align 8
  %1720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1721 = bitcast %union.rec* %1720 to %struct.word_type*
  %1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %1721, i32 0, i32 0
  %1723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1722, i32 0, i64 0
  %1724 = getelementptr inbounds %struct.LIST, %struct.LIST* %1723, i32 0, i32 0
  %1725 = load %union.rec*, %union.rec** %1724, align 8
  %1726 = bitcast %union.rec* %1725 to %struct.word_type*
  %1727 = getelementptr inbounds %struct.word_type, %struct.word_type* %1726, i32 0, i32 0
  %1728 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1727, i32 0, i64 0
  %1729 = getelementptr inbounds %struct.LIST, %struct.LIST* %1728, i32 0, i32 1
  store %union.rec* %1719, %union.rec** %1729, align 8
  %1730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1731 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1732 = bitcast %union.rec* %1731 to %struct.word_type*
  %1733 = getelementptr inbounds %struct.word_type, %struct.word_type* %1732, i32 0, i32 0
  %1734 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1733, i32 0, i64 0
  %1735 = getelementptr inbounds %struct.LIST, %struct.LIST* %1734, i32 0, i32 1
  store %union.rec* %1730, %union.rec** %1735, align 8
  %1736 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1737 = bitcast %union.rec* %1736 to %struct.word_type*
  %1738 = getelementptr inbounds %struct.word_type, %struct.word_type* %1737, i32 0, i32 0
  %1739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1738, i32 0, i64 0
  %1740 = getelementptr inbounds %struct.LIST, %struct.LIST* %1739, i32 0, i32 0
  store %union.rec* %1730, %union.rec** %1740, align 8
  %1741 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1742

; <label>:1742                                    ; preds = %1701, %1700
  %1743 = phi %union.rec* [ null, %1700 ], [ %1741, %1701 ]
  %1744 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1744, %union.rec** @zz_hold, align 8
  %1745 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1745, %union.rec** @zz_hold, align 8
  %1746 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1747 = bitcast %union.rec* %1746 to %struct.word_type*
  %1748 = getelementptr inbounds %struct.word_type, %struct.word_type* %1747, i32 0, i32 1
  %1749 = bitcast %union.FIRST_UNION* %1748 to %struct.anon*
  %1750 = getelementptr inbounds %struct.anon, %struct.anon* %1749, i32 0, i32 0
  %1751 = load i8, i8* %1750, align 1
  %1752 = zext i8 %1751 to i32
  %1753 = icmp eq i32 %1752, 11
  br i1 %1753, label %1763, label %1754

; <label>:1754                                    ; preds = %1742
  %1755 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1756 = bitcast %union.rec* %1755 to %struct.word_type*
  %1757 = getelementptr inbounds %struct.word_type, %struct.word_type* %1756, i32 0, i32 1
  %1758 = bitcast %union.FIRST_UNION* %1757 to %struct.anon*
  %1759 = getelementptr inbounds %struct.anon, %struct.anon* %1758, i32 0, i32 0
  %1760 = load i8, i8* %1759, align 1
  %1761 = zext i8 %1760 to i32
  %1762 = icmp eq i32 %1761, 12
  br i1 %1762, label %1763, label %1771

; <label>:1763                                    ; preds = %1754, %1742
  %1764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1765 = bitcast %union.rec* %1764 to %struct.word_type*
  %1766 = getelementptr inbounds %struct.word_type, %struct.word_type* %1765, i32 0, i32 1
  %1767 = bitcast %union.FIRST_UNION* %1766 to %struct.anon*
  %1768 = getelementptr inbounds %struct.anon, %struct.anon* %1767, i32 0, i32 1
  %1769 = load i8, i8* %1768, align 1
  %1770 = zext i8 %1769 to i32
  br label %1782

; <label>:1771                                    ; preds = %1754
  %1772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1773 = bitcast %union.rec* %1772 to %struct.word_type*
  %1774 = getelementptr inbounds %struct.word_type, %struct.word_type* %1773, i32 0, i32 1
  %1775 = bitcast %union.FIRST_UNION* %1774 to %struct.anon*
  %1776 = getelementptr inbounds %struct.anon, %struct.anon* %1775, i32 0, i32 0
  %1777 = load i8, i8* %1776, align 1
  %1778 = zext i8 %1777 to i64
  %1779 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1778
  %1780 = load i8, i8* %1779, align 1
  %1781 = zext i8 %1780 to i32
  br label %1782

; <label>:1782                                    ; preds = %1771, %1763
  %1783 = phi i32 [ %1770, %1763 ], [ %1781, %1771 ]
  store i32 %1783, i32* @zz_size, align 4
  %1784 = load i32, i32* @zz_size, align 4
  %1785 = sext i32 %1784 to i64
  %1786 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1785
  %1787 = load %union.rec*, %union.rec** %1786, align 8
  %1788 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1789 = bitcast %union.rec* %1788 to %struct.word_type*
  %1790 = getelementptr inbounds %struct.word_type, %struct.word_type* %1789, i32 0, i32 0
  %1791 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1790, i32 0, i64 0
  %1792 = getelementptr inbounds %struct.LIST, %struct.LIST* %1791, i32 0, i32 0
  store %union.rec* %1787, %union.rec** %1792, align 8
  %1793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1794 = load i32, i32* @zz_size, align 4
  %1795 = sext i32 %1794 to i64
  %1796 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1795
  store %union.rec* %1793, %union.rec** %1796, align 8
  %1797 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1798 = bitcast %union.rec* %1797 to %struct.word_type*
  %1799 = getelementptr inbounds %struct.word_type, %struct.word_type* %1798, i32 0, i32 0
  %1800 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1799, i32 0, i64 1
  %1801 = getelementptr inbounds %struct.LIST, %struct.LIST* %1800, i32 0, i32 1
  %1802 = load %union.rec*, %union.rec** %1801, align 8
  %1803 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1804 = icmp eq %union.rec* %1802, %1803
  br i1 %1804, label %1805, label %1808

; <label>:1805                                    ; preds = %1782
  %1806 = load %union.rec*, %union.rec** @xx_tmp, align 8
  %1807 = call i32 @DisposeObject(%union.rec* %1806)
  br label %1808

; <label>:1808                                    ; preds = %1805, %1782
  br label %1809

; <label>:1809                                    ; preds = %1808, %1622
  br label %1810

; <label>:1810                                    ; preds = %1809, %1568
  %1811 = load %union.rec*, %union.rec** %2, align 8
  store %union.rec* %1811, %union.rec** %1
  br label %2261

; <label>:1812                                    ; preds = %1165, %1156
  %1813 = load %union.rec*, %union.rec** %hd, align 8
  %1814 = bitcast %union.rec* %1813 to %struct.closure_type*
  %1815 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1814, i32 0, i32 5
  %1816 = load %union.rec*, %union.rec** %1815, align 8
  %1817 = bitcast %union.rec* %1816 to %struct.word_type*
  %1818 = getelementptr inbounds %struct.word_type, %struct.word_type* %1817, i32 0, i32 2
  %1819 = bitcast %union.SECOND_UNION* %1818 to %struct.anon.5*
  %1820 = getelementptr inbounds %struct.anon.5, %struct.anon.5* %1819, i32 0, i32 1
  %1821 = bitcast [3 x i8]* %1820 to i24*
  %1822 = load i24, i24* %1821, align 1
  %1823 = lshr i24 %1822, 3
  %1824 = and i24 %1823, 1
  %1825 = zext i24 %1824 to i32
  %1826 = icmp ne i32 %1825, 0
  br i1 %1826, label %1827, label %2248

; <label>:1827                                    ; preds = %1812
  %1828 = load i32, i32* @itop, align 4
  %1829 = add nsw i32 %1828, 1
  store i32 %1829, i32* @itop, align 4
  %1830 = icmp sge i32 %1829, 30
  br i1 %1830, label %1831, label %1837

; <label>:1831                                    ; preds = %1827
  %1832 = load %union.rec*, %union.rec** %2, align 8
  %1833 = bitcast %union.rec* %1832 to %struct.word_type*
  %1834 = getelementptr inbounds %struct.word_type, %struct.word_type* %1833, i32 0, i32 1
  %1835 = bitcast %union.FIRST_UNION* %1834 to %struct.FILE_POS*
  %1836 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 2, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i32 0, i32 0), i32 1, %struct.FILE_POS* %1835, i32 30)
  br label %1837

; <label>:1837                                    ; preds = %1831, %1827
  %1838 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %1839 = zext i8 %1838 to i32
  store i32 %1839, i32* @zz_size, align 4
  %1840 = sext i32 %1839 to i64
  %1841 = icmp uge i64 %1840, 265
  br i1 %1841, label %1842, label %1845

; <label>:1842                                    ; preds = %1837
  %1843 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1844 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1843)
  br label %1870

; <label>:1845                                    ; preds = %1837
  %1846 = load i32, i32* @zz_size, align 4
  %1847 = sext i32 %1846 to i64
  %1848 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1847
  %1849 = load %union.rec*, %union.rec** %1848, align 8
  %1850 = icmp eq %union.rec* %1849, null
  br i1 %1850, label %1851, label %1855

; <label>:1851                                    ; preds = %1845
  %1852 = load i32, i32* @zz_size, align 4
  %1853 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1854 = call %union.rec* @GetMemory(i32 %1852, %struct.FILE_POS* %1853)
  store %union.rec* %1854, %union.rec** @zz_hold, align 8
  br label %1869

; <label>:1855                                    ; preds = %1845
  %1856 = load i32, i32* @zz_size, align 4
  %1857 = sext i32 %1856 to i64
  %1858 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1857
  %1859 = load %union.rec*, %union.rec** %1858, align 8
  store %union.rec* %1859, %union.rec** @zz_hold, align 8
  store %union.rec* %1859, %union.rec** @zz_hold, align 8
  %1860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1861 = bitcast %union.rec* %1860 to %struct.word_type*
  %1862 = getelementptr inbounds %struct.word_type, %struct.word_type* %1861, i32 0, i32 0
  %1863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1862, i32 0, i64 0
  %1864 = getelementptr inbounds %struct.LIST, %struct.LIST* %1863, i32 0, i32 0
  %1865 = load %union.rec*, %union.rec** %1864, align 8
  %1866 = load i32, i32* @zz_size, align 4
  %1867 = sext i32 %1866 to i64
  %1868 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1867
  store %union.rec* %1865, %union.rec** %1868, align 8
  br label %1869

; <label>:1869                                    ; preds = %1855, %1851
  br label %1870

; <label>:1870                                    ; preds = %1869, %1842
  %1871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1872 = bitcast %union.rec* %1871 to %struct.word_type*
  %1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %1872, i32 0, i32 1
  %1874 = bitcast %union.FIRST_UNION* %1873 to %struct.anon*
  %1875 = getelementptr inbounds %struct.anon, %struct.anon* %1874, i32 0, i32 0
  store i8 17, i8* %1875, align 1
  %1876 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1877 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1878 = bitcast %union.rec* %1877 to %struct.word_type*
  %1879 = getelementptr inbounds %struct.word_type, %struct.word_type* %1878, i32 0, i32 0
  %1880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1879, i32 0, i64 1
  %1881 = getelementptr inbounds %struct.LIST, %struct.LIST* %1880, i32 0, i32 1
  store %union.rec* %1876, %union.rec** %1881, align 8
  %1882 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1883 = bitcast %union.rec* %1882 to %struct.word_type*
  %1884 = getelementptr inbounds %struct.word_type, %struct.word_type* %1883, i32 0, i32 0
  %1885 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1884, i32 0, i64 1
  %1886 = getelementptr inbounds %struct.LIST, %struct.LIST* %1885, i32 0, i32 0
  store %union.rec* %1876, %union.rec** %1886, align 8
  %1887 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1888 = bitcast %union.rec* %1887 to %struct.word_type*
  %1889 = getelementptr inbounds %struct.word_type, %struct.word_type* %1888, i32 0, i32 0
  %1890 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1889, i32 0, i64 0
  %1891 = getelementptr inbounds %struct.LIST, %struct.LIST* %1890, i32 0, i32 1
  store %union.rec* %1876, %union.rec** %1891, align 8
  %1892 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1893 = bitcast %union.rec* %1892 to %struct.word_type*
  %1894 = getelementptr inbounds %struct.word_type, %struct.word_type* %1893, i32 0, i32 0
  %1895 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1894, i32 0, i64 0
  %1896 = getelementptr inbounds %struct.LIST, %struct.LIST* %1895, i32 0, i32 0
  store %union.rec* %1876, %union.rec** %1896, align 8
  %1897 = load i32, i32* @itop, align 4
  %1898 = sext i32 %1897 to i64
  %1899 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %1898
  store %union.rec* %1876, %union.rec** %1899, align 8
  store %union.rec* null, %union.rec** %target, align 8
  %1900 = load %union.rec*, %union.rec** %hd, align 8
  %1901 = bitcast %union.rec* %1900 to %struct.word_type*
  %1902 = getelementptr inbounds %struct.word_type, %struct.word_type* %1901, i32 0, i32 0
  %1903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1902, i32 0, i64 0
  %1904 = getelementptr inbounds %struct.LIST, %struct.LIST* %1903, i32 0, i32 1
  %1905 = load %union.rec*, %union.rec** %1904, align 8
  store %union.rec* %1905, %union.rec** %link, align 8
  br label %1906

; <label>:1906                                    ; preds = %2180, %1870
  %1907 = load %union.rec*, %union.rec** %link, align 8
  %1908 = load %union.rec*, %union.rec** %hd, align 8
  %1909 = icmp ne %union.rec* %1907, %1908
  br i1 %1909, label %1910, label %2187

; <label>:1910                                    ; preds = %1906
  %1911 = load %union.rec*, %union.rec** %link, align 8
  %1912 = bitcast %union.rec* %1911 to %struct.word_type*
  %1913 = getelementptr inbounds %struct.word_type, %struct.word_type* %1912, i32 0, i32 0
  %1914 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1913, i32 0, i64 1
  %1915 = getelementptr inbounds %struct.LIST, %struct.LIST* %1914, i32 0, i32 0
  %1916 = load %union.rec*, %union.rec** %1915, align 8
  store %union.rec* %1916, %union.rec** %y, align 8
  br label %1917

; <label>:1917                                    ; preds = %1927, %1910
  %1918 = load %union.rec*, %union.rec** %y, align 8
  %1919 = bitcast %union.rec* %1918 to %struct.word_type*
  %1920 = getelementptr inbounds %struct.word_type, %struct.word_type* %1919, i32 0, i32 1
  %1921 = bitcast %union.FIRST_UNION* %1920 to %struct.anon*
  %1922 = getelementptr inbounds %struct.anon, %struct.anon* %1921, i32 0, i32 0
  %1923 = load i8, i8* %1922, align 1
  %1924 = zext i8 %1923 to i32
  %1925 = icmp eq i32 %1924, 0
  br i1 %1925, label %1926, label %1934

; <label>:1926                                    ; preds = %1917
  br label %1927

; <label>:1927                                    ; preds = %1926
  %1928 = load %union.rec*, %union.rec** %y, align 8
  %1929 = bitcast %union.rec* %1928 to %struct.word_type*
  %1930 = getelementptr inbounds %struct.word_type, %struct.word_type* %1929, i32 0, i32 0
  %1931 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1930, i32 0, i64 1
  %1932 = getelementptr inbounds %struct.LIST, %struct.LIST* %1931, i32 0, i32 0
  %1933 = load %union.rec*, %union.rec** %1932, align 8
  store %union.rec* %1933, %union.rec** %y, align 8
  br label %1917

; <label>:1934                                    ; preds = %1917
  %1935 = load %union.rec*, %union.rec** %y, align 8
  %1936 = bitcast %union.rec* %1935 to %struct.word_type*
  %1937 = getelementptr inbounds %struct.word_type, %struct.word_type* %1936, i32 0, i32 1
  %1938 = bitcast %union.FIRST_UNION* %1937 to %struct.anon*
  %1939 = getelementptr inbounds %struct.anon, %struct.anon* %1938, i32 0, i32 0
  %1940 = load i8, i8* %1939, align 1
  %1941 = zext i8 %1940 to i32
  %1942 = icmp eq i32 %1941, 121
  br i1 %1942, label %1943, label %2179

; <label>:1943                                    ; preds = %1934
  %1944 = load %union.rec*, %union.rec** %y, align 8
  %1945 = bitcast %union.rec* %1944 to %struct.closure_type*
  %1946 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1945, i32 0, i32 5
  %1947 = load %union.rec*, %union.rec** %1946, align 8
  %1948 = bitcast %union.rec* %1947 to %struct.closure_type*
  %1949 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1948, i32 0, i32 5
  %1950 = load %union.rec*, %union.rec** %1949, align 8
  %1951 = load %union.rec*, %union.rec** @InputSym, align 8
  %1952 = icmp eq %union.rec* %1950, %1951
  br i1 %1952, label %1953, label %2179

; <label>:1953                                    ; preds = %1943
  %1954 = load %union.rec*, %union.rec** %y, align 8
  %1955 = bitcast %union.rec* %1954 to %struct.closure_type*
  %1956 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %1955, i32 0, i32 5
  %1957 = load %union.rec*, %union.rec** %1956, align 8
  %1958 = load i32, i32* @itop, align 4
  %1959 = sext i32 %1958 to i64
  %1960 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %1959
  call void @Constrained(%union.rec* %1957, %struct.CONSTRAINT* %1960, i32 0, %union.rec** %why)
  %1961 = load i32, i32* @itop, align 4
  %1962 = sext i32 %1961 to i64
  %1963 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %1962
  %1964 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1963, i32 0, i32 0
  %1965 = load i32, i32* %1964, align 4
  %1966 = icmp sle i32 0, %1965
  br i1 %1966, label %1967, label %2167

; <label>:1967                                    ; preds = %1953
  %1968 = load i32, i32* @itop, align 4
  %1969 = sext i32 %1968 to i64
  %1970 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %1969
  %1971 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1970, i32 0, i32 1
  %1972 = load i32, i32* %1971, align 4
  %1973 = icmp sle i32 0, %1972
  br i1 %1973, label %1974, label %2167

; <label>:1974                                    ; preds = %1967
  %1975 = load i32, i32* @itop, align 4
  %1976 = sext i32 %1975 to i64
  %1977 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %1976
  %1978 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %1977, i32 0, i32 2
  %1979 = load i32, i32* %1978, align 4
  %1980 = icmp sle i32 0, %1979
  br i1 %1980, label %1981, label %2167

; <label>:1981                                    ; preds = %1974
  %1982 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1983 = zext i8 %1982 to i32
  store i32 %1983, i32* @zz_size, align 4
  %1984 = sext i32 %1983 to i64
  %1985 = icmp uge i64 %1984, 265
  br i1 %1985, label %1986, label %1989

; <label>:1986                                    ; preds = %1981
  %1987 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1988 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1987)
  br label %2014

; <label>:1989                                    ; preds = %1981
  %1990 = load i32, i32* @zz_size, align 4
  %1991 = sext i32 %1990 to i64
  %1992 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1991
  %1993 = load %union.rec*, %union.rec** %1992, align 8
  %1994 = icmp eq %union.rec* %1993, null
  br i1 %1994, label %1995, label %1999

; <label>:1995                                    ; preds = %1989
  %1996 = load i32, i32* @zz_size, align 4
  %1997 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1998 = call %union.rec* @GetMemory(i32 %1996, %struct.FILE_POS* %1997)
  store %union.rec* %1998, %union.rec** @zz_hold, align 8
  br label %2013

; <label>:1999                                    ; preds = %1989
  %2000 = load i32, i32* @zz_size, align 4
  %2001 = sext i32 %2000 to i64
  %2002 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2001
  %2003 = load %union.rec*, %union.rec** %2002, align 8
  store %union.rec* %2003, %union.rec** @zz_hold, align 8
  store %union.rec* %2003, %union.rec** @zz_hold, align 8
  %2004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2005 = bitcast %union.rec* %2004 to %struct.word_type*
  %2006 = getelementptr inbounds %struct.word_type, %struct.word_type* %2005, i32 0, i32 0
  %2007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2006, i32 0, i64 0
  %2008 = getelementptr inbounds %struct.LIST, %struct.LIST* %2007, i32 0, i32 0
  %2009 = load %union.rec*, %union.rec** %2008, align 8
  %2010 = load i32, i32* @zz_size, align 4
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2011
  store %union.rec* %2009, %union.rec** %2012, align 8
  br label %2013

; <label>:2013                                    ; preds = %1999, %1995
  br label %2014

; <label>:2014                                    ; preds = %2013, %1986
  %2015 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2016 = bitcast %union.rec* %2015 to %struct.word_type*
  %2017 = getelementptr inbounds %struct.word_type, %struct.word_type* %2016, i32 0, i32 1
  %2018 = bitcast %union.FIRST_UNION* %2017 to %struct.anon*
  %2019 = getelementptr inbounds %struct.anon, %struct.anon* %2018, i32 0, i32 0
  store i8 0, i8* %2019, align 1
  %2020 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2021 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2022 = bitcast %union.rec* %2021 to %struct.word_type*
  %2023 = getelementptr inbounds %struct.word_type, %struct.word_type* %2022, i32 0, i32 0
  %2024 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2023, i32 0, i64 1
  %2025 = getelementptr inbounds %struct.LIST, %struct.LIST* %2024, i32 0, i32 1
  store %union.rec* %2020, %union.rec** %2025, align 8
  %2026 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2027 = bitcast %union.rec* %2026 to %struct.word_type*
  %2028 = getelementptr inbounds %struct.word_type, %struct.word_type* %2027, i32 0, i32 0
  %2029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2028, i32 0, i64 1
  %2030 = getelementptr inbounds %struct.LIST, %struct.LIST* %2029, i32 0, i32 0
  store %union.rec* %2020, %union.rec** %2030, align 8
  %2031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2032 = bitcast %union.rec* %2031 to %struct.word_type*
  %2033 = getelementptr inbounds %struct.word_type, %struct.word_type* %2032, i32 0, i32 0
  %2034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2033, i32 0, i64 0
  %2035 = getelementptr inbounds %struct.LIST, %struct.LIST* %2034, i32 0, i32 1
  store %union.rec* %2020, %union.rec** %2035, align 8
  %2036 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2037 = bitcast %union.rec* %2036 to %struct.word_type*
  %2038 = getelementptr inbounds %struct.word_type, %struct.word_type* %2037, i32 0, i32 0
  %2039 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2038, i32 0, i64 0
  %2040 = getelementptr inbounds %struct.LIST, %struct.LIST* %2039, i32 0, i32 0
  store %union.rec* %2020, %union.rec** %2040, align 8
  store %union.rec* %2020, %union.rec** @xx_link, align 8
  %2041 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2041, %union.rec** @zz_res, align 8
  %2042 = load i32, i32* @itop, align 4
  %2043 = sext i32 %2042 to i64
  %2044 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %2043
  %2045 = load %union.rec*, %union.rec** %2044, align 8
  store %union.rec* %2045, %union.rec** @zz_hold, align 8
  %2046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2047 = icmp eq %union.rec* %2046, null
  br i1 %2047, label %2048, label %2050

; <label>:2048                                    ; preds = %2014
  %2049 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2098

; <label>:2050                                    ; preds = %2014
  %2051 = load %union.rec*, %union.rec** @zz_res, align 8
  %2052 = icmp eq %union.rec* %2051, null
  br i1 %2052, label %2053, label %2055

; <label>:2053                                    ; preds = %2050
  %2054 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2096

; <label>:2055                                    ; preds = %2050
  %2056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2057 = bitcast %union.rec* %2056 to %struct.word_type*
  %2058 = getelementptr inbounds %struct.word_type, %struct.word_type* %2057, i32 0, i32 0
  %2059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2058, i32 0, i64 0
  %2060 = getelementptr inbounds %struct.LIST, %struct.LIST* %2059, i32 0, i32 0
  %2061 = load %union.rec*, %union.rec** %2060, align 8
  store %union.rec* %2061, %union.rec** @zz_tmp, align 8
  %2062 = load %union.rec*, %union.rec** @zz_res, align 8
  %2063 = bitcast %union.rec* %2062 to %struct.word_type*
  %2064 = getelementptr inbounds %struct.word_type, %struct.word_type* %2063, i32 0, i32 0
  %2065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2064, i32 0, i64 0
  %2066 = getelementptr inbounds %struct.LIST, %struct.LIST* %2065, i32 0, i32 0
  %2067 = load %union.rec*, %union.rec** %2066, align 8
  %2068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2069 = bitcast %union.rec* %2068 to %struct.word_type*
  %2070 = getelementptr inbounds %struct.word_type, %struct.word_type* %2069, i32 0, i32 0
  %2071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2070, i32 0, i64 0
  %2072 = getelementptr inbounds %struct.LIST, %struct.LIST* %2071, i32 0, i32 0
  store %union.rec* %2067, %union.rec** %2072, align 8
  %2073 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2074 = load %union.rec*, %union.rec** @zz_res, align 8
  %2075 = bitcast %union.rec* %2074 to %struct.word_type*
  %2076 = getelementptr inbounds %struct.word_type, %struct.word_type* %2075, i32 0, i32 0
  %2077 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2076, i32 0, i64 0
  %2078 = getelementptr inbounds %struct.LIST, %struct.LIST* %2077, i32 0, i32 0
  %2079 = load %union.rec*, %union.rec** %2078, align 8
  %2080 = bitcast %union.rec* %2079 to %struct.word_type*
  %2081 = getelementptr inbounds %struct.word_type, %struct.word_type* %2080, i32 0, i32 0
  %2082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2081, i32 0, i64 0
  %2083 = getelementptr inbounds %struct.LIST, %struct.LIST* %2082, i32 0, i32 1
  store %union.rec* %2073, %union.rec** %2083, align 8
  %2084 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2085 = load %union.rec*, %union.rec** @zz_res, align 8
  %2086 = bitcast %union.rec* %2085 to %struct.word_type*
  %2087 = getelementptr inbounds %struct.word_type, %struct.word_type* %2086, i32 0, i32 0
  %2088 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2087, i32 0, i64 0
  %2089 = getelementptr inbounds %struct.LIST, %struct.LIST* %2088, i32 0, i32 0
  store %union.rec* %2084, %union.rec** %2089, align 8
  %2090 = load %union.rec*, %union.rec** @zz_res, align 8
  %2091 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2092 = bitcast %union.rec* %2091 to %struct.word_type*
  %2093 = getelementptr inbounds %struct.word_type, %struct.word_type* %2092, i32 0, i32 0
  %2094 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2093, i32 0, i64 0
  %2095 = getelementptr inbounds %struct.LIST, %struct.LIST* %2094, i32 0, i32 1
  store %union.rec* %2090, %union.rec** %2095, align 8
  br label %2096

; <label>:2096                                    ; preds = %2055, %2053
  %2097 = phi %union.rec* [ %2054, %2053 ], [ %2090, %2055 ]
  br label %2098

; <label>:2098                                    ; preds = %2096, %2048
  %2099 = phi %union.rec* [ %2049, %2048 ], [ %2097, %2096 ]
  %2100 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2100, %union.rec** @zz_res, align 8
  %2101 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2101, %union.rec** @zz_hold, align 8
  %2102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2103 = icmp eq %union.rec* %2102, null
  br i1 %2103, label %2104, label %2106

; <label>:2104                                    ; preds = %2098
  %2105 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2154

; <label>:2106                                    ; preds = %2098
  %2107 = load %union.rec*, %union.rec** @zz_res, align 8
  %2108 = icmp eq %union.rec* %2107, null
  br i1 %2108, label %2109, label %2111

; <label>:2109                                    ; preds = %2106
  %2110 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %2152

; <label>:2111                                    ; preds = %2106
  %2112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2113 = bitcast %union.rec* %2112 to %struct.word_type*
  %2114 = getelementptr inbounds %struct.word_type, %struct.word_type* %2113, i32 0, i32 0
  %2115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2114, i32 0, i64 1
  %2116 = getelementptr inbounds %struct.LIST, %struct.LIST* %2115, i32 0, i32 0
  %2117 = load %union.rec*, %union.rec** %2116, align 8
  store %union.rec* %2117, %union.rec** @zz_tmp, align 8
  %2118 = load %union.rec*, %union.rec** @zz_res, align 8
  %2119 = bitcast %union.rec* %2118 to %struct.word_type*
  %2120 = getelementptr inbounds %struct.word_type, %struct.word_type* %2119, i32 0, i32 0
  %2121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2120, i32 0, i64 1
  %2122 = getelementptr inbounds %struct.LIST, %struct.LIST* %2121, i32 0, i32 0
  %2123 = load %union.rec*, %union.rec** %2122, align 8
  %2124 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2125 = bitcast %union.rec* %2124 to %struct.word_type*
  %2126 = getelementptr inbounds %struct.word_type, %struct.word_type* %2125, i32 0, i32 0
  %2127 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2126, i32 0, i64 1
  %2128 = getelementptr inbounds %struct.LIST, %struct.LIST* %2127, i32 0, i32 0
  store %union.rec* %2123, %union.rec** %2128, align 8
  %2129 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2130 = load %union.rec*, %union.rec** @zz_res, align 8
  %2131 = bitcast %union.rec* %2130 to %struct.word_type*
  %2132 = getelementptr inbounds %struct.word_type, %struct.word_type* %2131, i32 0, i32 0
  %2133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2132, i32 0, i64 1
  %2134 = getelementptr inbounds %struct.LIST, %struct.LIST* %2133, i32 0, i32 0
  %2135 = load %union.rec*, %union.rec** %2134, align 8
  %2136 = bitcast %union.rec* %2135 to %struct.word_type*
  %2137 = getelementptr inbounds %struct.word_type, %struct.word_type* %2136, i32 0, i32 0
  %2138 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2137, i32 0, i64 1
  %2139 = getelementptr inbounds %struct.LIST, %struct.LIST* %2138, i32 0, i32 1
  store %union.rec* %2129, %union.rec** %2139, align 8
  %2140 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2141 = load %union.rec*, %union.rec** @zz_res, align 8
  %2142 = bitcast %union.rec* %2141 to %struct.word_type*
  %2143 = getelementptr inbounds %struct.word_type, %struct.word_type* %2142, i32 0, i32 0
  %2144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2143, i32 0, i64 1
  %2145 = getelementptr inbounds %struct.LIST, %struct.LIST* %2144, i32 0, i32 0
  store %union.rec* %2140, %union.rec** %2145, align 8
  %2146 = load %union.rec*, %union.rec** @zz_res, align 8
  %2147 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %2148 = bitcast %union.rec* %2147 to %struct.word_type*
  %2149 = getelementptr inbounds %struct.word_type, %struct.word_type* %2148, i32 0, i32 0
  %2150 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2149, i32 0, i64 1
  %2151 = getelementptr inbounds %struct.LIST, %struct.LIST* %2150, i32 0, i32 1
  store %union.rec* %2146, %union.rec** %2151, align 8
  br label %2152

; <label>:2152                                    ; preds = %2111, %2109
  %2153 = phi %union.rec* [ %2110, %2109 ], [ %2146, %2111 ]
  br label %2154

; <label>:2154                                    ; preds = %2152, %2104
  %2155 = phi %union.rec* [ %2105, %2104 ], [ %2153, %2152 ]
  %2156 = load %union.rec*, %union.rec** %y, align 8
  store %union.rec* %2156, %union.rec** %target, align 8
  %2157 = load %union.rec*, %union.rec** %y, align 8
  %2158 = bitcast %union.rec* %2157 to %struct.closure_type*
  %2159 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2158, i32 0, i32 5
  %2160 = load %union.rec*, %union.rec** %2159, align 8
  %2161 = call %union.rec* @DetachEnv(%union.rec* %2160)
  store %union.rec* %2161, %union.rec** %env, align 8
  %2162 = load %union.rec*, %union.rec** %new_env, align 8
  %2163 = load %union.rec*, %union.rec** %y, align 8
  %2164 = bitcast %union.rec* %2163 to %struct.closure_type*
  %2165 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2164, i32 0, i32 5
  %2166 = load %union.rec*, %union.rec** %2165, align 8
  call void @AttachEnv(%union.rec* %2162, %union.rec* %2166)
  br label %2178

; <label>:2167                                    ; preds = %1974, %1967, %1953
  %2168 = load %union.rec*, %union.rec** %hd, align 8
  %2169 = bitcast %union.rec* %2168 to %struct.word_type*
  %2170 = getelementptr inbounds %struct.word_type, %struct.word_type* %2169, i32 0, i32 1
  %2171 = bitcast %union.FIRST_UNION* %2170 to %struct.FILE_POS*
  %2172 = load %union.rec*, %union.rec** %hd, align 8
  %2173 = bitcast %union.rec* %2172 to %struct.closure_type*
  %2174 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2173, i32 0, i32 5
  %2175 = load %union.rec*, %union.rec** %2174, align 8
  %2176 = call i8* @SymName(%union.rec* %2175)
  %2177 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 3, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.9, i32 0, i32 0), i32 2, %struct.FILE_POS* %2171, i8* %2176)
  br label %2178

; <label>:2178                                    ; preds = %2167, %2154
  br label %2187

; <label>:2179                                    ; preds = %1943, %1934
  br label %2180

; <label>:2180                                    ; preds = %2179
  %2181 = load %union.rec*, %union.rec** %link, align 8
  %2182 = bitcast %union.rec* %2181 to %struct.word_type*
  %2183 = getelementptr inbounds %struct.word_type, %struct.word_type* %2182, i32 0, i32 0
  %2184 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2183, i32 0, i64 0
  %2185 = getelementptr inbounds %struct.LIST, %struct.LIST* %2184, i32 0, i32 1
  %2186 = load %union.rec*, %union.rec** %2185, align 8
  store %union.rec* %2186, %union.rec** %link, align 8
  br label %1906

; <label>:2187                                    ; preds = %2178, %1906
  %2188 = load %union.rec*, %union.rec** %target, align 8
  %2189 = icmp eq %union.rec* %2188, null
  br i1 %2189, label %2204, label %2190

; <label>:2190                                    ; preds = %2187
  %2191 = load %union.rec*, %union.rec** %target, align 8
  %2192 = bitcast %union.rec* %2191 to %struct.closure_type*
  %2193 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2192, i32 0, i32 5
  %2194 = load %union.rec*, %union.rec** %2193, align 8
  %2195 = bitcast %union.rec* %2194 to %struct.word_type*
  %2196 = getelementptr inbounds %struct.word_type, %struct.word_type* %2195, i32 0, i32 2
  %2197 = bitcast %union.SECOND_UNION* %2196 to %struct.anon.2*
  %2198 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %2197, i32 0, i32 2
  %2199 = load i16, i16* %2198, align 2
  %2200 = lshr i16 %2199, 4
  %2201 = and i16 %2200, 1
  %2202 = zext i16 %2201 to i32
  %2203 = icmp ne i32 %2202, 0
  br i1 %2203, label %2204, label %2213

; <label>:2204                                    ; preds = %2190, %2187
  %2205 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2206 = load %union.rec*, %union.rec** %xsym, align 8
  %2207 = bitcast %union.rec* %2206 to %struct.word_type*
  %2208 = getelementptr inbounds %struct.word_type, %struct.word_type* %2207, i32 0, i32 2
  %2209 = bitcast %union.SECOND_UNION* %2208 to %struct.anon.0*
  %2210 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2209, i32 0, i32 0
  %2211 = load i8, i8* %2210, align 1
  %2212 = call %union.rec* @NewToken(i8 zeroext 110, %struct.FILE_POS* %2205, i8 zeroext 0, i8 zeroext 0, i8 zeroext %2211, %union.rec* null)
  store %union.rec* %2212, %union.rec** %res, align 8
  br label %2247

; <label>:2213                                    ; preds = %2190
  %2214 = load %union.rec*, %union.rec** %target, align 8
  %2215 = bitcast %union.rec* %2214 to %struct.closure_type*
  %2216 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %2215, i32 0, i32 5
  %2217 = load %union.rec*, %union.rec** %2216, align 8
  call void @Constrained(%union.rec* %2217, %struct.CONSTRAINT* %c, i32 1, %union.rec** %why)
  %2218 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 0
  %2219 = load i32, i32* %2218, align 4
  %2220 = icmp ne i32 %2219, 8388607
  br i1 %2220, label %2229, label %2221

; <label>:2221                                    ; preds = %2213
  %2222 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 1
  %2223 = load i32, i32* %2222, align 4
  %2224 = icmp ne i32 %2223, 8388607
  br i1 %2224, label %2229, label %2225

; <label>:2225                                    ; preds = %2221
  %2226 = getelementptr inbounds %struct.CONSTRAINT, %struct.CONSTRAINT* %c, i32 0, i32 2
  %2227 = load i32, i32* %2226, align 4
  %2228 = icmp ne i32 %2227, 8388607
  br i1 %2228, label %2229, label %2237

; <label>:2229                                    ; preds = %2225, %2221, %2213
  %2230 = load %union.rec*, %union.rec** %target, align 8
  %2231 = bitcast %union.rec* %2230 to %struct.word_type*
  %2232 = getelementptr inbounds %struct.word_type, %struct.word_type* %2231, i32 0, i32 1
  %2233 = bitcast %union.FIRST_UNION* %2232 to %struct.FILE_POS*
  %2234 = load %union.rec*, %union.rec** %xsym, align 8
  %2235 = call i8* @SymName(%union.rec* %2234)
  %2236 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 18, i32 4, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.10, i32 0, i32 0), i32 1, %struct.FILE_POS* %2233, i8* %2235)
  br label %2246

; <label>:2237                                    ; preds = %2225
  %2238 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2239 = load %union.rec*, %union.rec** %xsym, align 8
  %2240 = bitcast %union.rec* %2239 to %struct.word_type*
  %2241 = getelementptr inbounds %struct.word_type, %struct.word_type* %2240, i32 0, i32 2
  %2242 = bitcast %union.SECOND_UNION* %2241 to %struct.anon.0*
  %2243 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2242, i32 0, i32 0
  %2244 = load i8, i8* %2243, align 1
  %2245 = call %union.rec* @NewToken(i8 zeroext 109, %struct.FILE_POS* %2238, i8 zeroext 0, i8 zeroext 0, i8 zeroext %2244, %union.rec* null)
  store %union.rec* %2245, %union.rec** %res, align 8
  br label %2246

; <label>:2246                                    ; preds = %2237, %2229
  br label %2247

; <label>:2247                                    ; preds = %2246, %2204
  br label %2257

; <label>:2248                                    ; preds = %1812
  %2249 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %2250 = load %union.rec*, %union.rec** %xsym, align 8
  %2251 = bitcast %union.rec* %2250 to %struct.word_type*
  %2252 = getelementptr inbounds %struct.word_type, %struct.word_type* %2251, i32 0, i32 2
  %2253 = bitcast %union.SECOND_UNION* %2252 to %struct.anon.0*
  %2254 = getelementptr inbounds %struct.anon.0, %struct.anon.0* %2253, i32 0, i32 0
  %2255 = load i8, i8* %2254, align 1
  %2256 = call %union.rec* @NewToken(i8 zeroext 108, %struct.FILE_POS* %2249, i8 zeroext 0, i8 zeroext 0, i8 zeroext %2255, %union.rec* null)
  store %union.rec* %2256, %union.rec** %res, align 8
  br label %2257

; <label>:2257                                    ; preds = %2248, %2247
  %2258 = load %union.rec*, %union.rec** %hold_env, align 8
  %2259 = call i32 @DisposeObject(%union.rec* %2258)
  %2260 = load %union.rec*, %union.rec** %res, align 8
  store %union.rec* %2260, %union.rec** %1
  br label %2261

; <label>:2261                                    ; preds = %2257, %1810
  %2262 = load %union.rec*, %union.rec** %1
  ret %union.rec* %2262
}

declare void @CrossAddTag(%union.rec*) #1

declare i8* @SymName(%union.rec*) #1

declare %union.rec* @GetEnv(%union.rec*) #1

declare %union.rec* @CopyObject(%union.rec*, %struct.FILE_POS*) #1

declare void @AttachEnv(%union.rec*, %union.rec*) #1

declare %union.rec* @SetEnv(%union.rec*, %union.rec*) #1

declare void @SetTarget(%union.rec*) #1

declare %union.rec* @BuildEnclose(%union.rec*) #1

declare void @FlushGalley(%union.rec*) #1

declare i32 @DisposeObject(%union.rec*) #1

declare %union.rec* @DetachEnv(%union.rec*) #1

declare %union.rec* @NewToken(i8 zeroext, %struct.FILE_POS*, i8 zeroext, i8 zeroext, i8 zeroext, %union.rec*) #1

; Function Attrs: nounwind uwtable
define void @TransferComponent(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %start_search = alloca %union.rec*, align 8
  %recs = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %nothing = alloca %union.rec*, align 8
  %hd = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %tinners = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load i32, i32* @itop, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %3
  %5 = load %union.rec*, %union.rec** %4, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 0
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  %11 = load i32, i32* @itop, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %12
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = icmp eq %union.rec* %10, %14
  br i1 %15, label %16, label %19

; <label>:16                                      ; preds = %0
  %17 = load %union.rec*, %union.rec** %1, align 8
  %18 = call i32 @DisposeObject(%union.rec* %17)
  br label %1380

; <label>:19                                      ; preds = %0
  %20 = load i32, i32* @itop, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %21
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = bitcast %union.rec* %23 to %struct.word_type*
  %25 = getelementptr inbounds %struct.word_type, %struct.word_type* %24, i32 0, i32 0
  %26 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %25, i32 0, i64 0
  %27 = getelementptr inbounds %struct.LIST, %struct.LIST* %26, i32 0, i32 1
  %28 = load %union.rec*, %union.rec** %27, align 8
  %29 = bitcast %union.rec* %28 to %struct.word_type*
  %30 = getelementptr inbounds %struct.word_type, %struct.word_type* %29, i32 0, i32 0
  %31 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %30, i32 0, i64 1
  %32 = getelementptr inbounds %struct.LIST, %struct.LIST* %31, i32 0, i32 0
  %33 = load %union.rec*, %union.rec** %32, align 8
  store %union.rec* %33, %union.rec** %dest_index, align 8
  br label %34

; <label>:34                                      ; preds = %44, %19
  %35 = load %union.rec*, %union.rec** %dest_index, align 8
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
  %45 = load %union.rec*, %union.rec** %dest_index, align 8
  %46 = bitcast %union.rec* %45 to %struct.word_type*
  %47 = getelementptr inbounds %struct.word_type, %struct.word_type* %46, i32 0, i32 0
  %48 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %47, i32 0, i64 1
  %49 = getelementptr inbounds %struct.LIST, %struct.LIST* %48, i32 0, i32 0
  %50 = load %union.rec*, %union.rec** %49, align 8
  store %union.rec* %50, %union.rec** %dest_index, align 8
  br label %34

; <label>:51                                      ; preds = %34
  %52 = load %union.rec*, %union.rec** %dest_index, align 8
  %53 = bitcast %union.rec* %52 to %struct.closure_type*
  %54 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %53, i32 0, i32 5
  %55 = load %union.rec*, %union.rec** %54, align 8
  %56 = bitcast %union.rec* %55 to %struct.word_type*
  %57 = getelementptr inbounds %struct.word_type, %struct.word_type* %56, i32 0, i32 2
  %58 = bitcast %union.SECOND_UNION* %57 to %struct.anon.2*
  %59 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %58, i32 0, i32 2
  %60 = load i16, i16* %59, align 2
  %61 = lshr i16 %60, 4
  %62 = and i16 %61, 1
  %63 = zext i16 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

; <label>:65                                      ; preds = %51
  %66 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %67 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %66, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i32 0, i32 0))
  br label %68

; <label>:68                                      ; preds = %65, %51
  %69 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %70 = zext i8 %69 to i32
  store i32 %70, i32* @zz_size, align 4
  %71 = sext i32 %70 to i64
  %72 = icmp uge i64 %71, 265
  br i1 %72, label %73, label %76

; <label>:73                                      ; preds = %68
  %74 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %75 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %74)
  br label %101

; <label>:76                                      ; preds = %68
  %77 = load i32, i32* @zz_size, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %78
  %80 = load %union.rec*, %union.rec** %79, align 8
  %81 = icmp eq %union.rec* %80, null
  br i1 %81, label %82, label %86

; <label>:82                                      ; preds = %76
  %83 = load i32, i32* @zz_size, align 4
  %84 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %85 = call %union.rec* @GetMemory(i32 %83, %struct.FILE_POS* %84)
  store %union.rec* %85, %union.rec** @zz_hold, align 8
  br label %100

; <label>:86                                      ; preds = %76
  %87 = load i32, i32* @zz_size, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %88
  %90 = load %union.rec*, %union.rec** %89, align 8
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  store %union.rec* %90, %union.rec** @zz_hold, align 8
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 0
  %94 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %93, i32 0, i64 0
  %95 = getelementptr inbounds %struct.LIST, %struct.LIST* %94, i32 0, i32 0
  %96 = load %union.rec*, %union.rec** %95, align 8
  %97 = load i32, i32* @zz_size, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %98
  store %union.rec* %96, %union.rec** %99, align 8
  br label %100

; <label>:100                                     ; preds = %86, %82
  br label %101

; <label>:101                                     ; preds = %100, %73
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 1
  %105 = bitcast %union.FIRST_UNION* %104 to %struct.anon*
  %106 = getelementptr inbounds %struct.anon, %struct.anon* %105, i32 0, i32 0
  store i8 8, i8* %106, align 1
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = load %union.rec*, %union.rec** @zz_hold, align 8
  %109 = bitcast %union.rec* %108 to %struct.word_type*
  %110 = getelementptr inbounds %struct.word_type, %struct.word_type* %109, i32 0, i32 0
  %111 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %110, i32 0, i64 1
  %112 = getelementptr inbounds %struct.LIST, %struct.LIST* %111, i32 0, i32 1
  store %union.rec* %107, %union.rec** %112, align 8
  %113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %114 = bitcast %union.rec* %113 to %struct.word_type*
  %115 = getelementptr inbounds %struct.word_type, %struct.word_type* %114, i32 0, i32 0
  %116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %115, i32 0, i64 1
  %117 = getelementptr inbounds %struct.LIST, %struct.LIST* %116, i32 0, i32 0
  store %union.rec* %107, %union.rec** %117, align 8
  %118 = load %union.rec*, %union.rec** @zz_hold, align 8
  %119 = bitcast %union.rec* %118 to %struct.word_type*
  %120 = getelementptr inbounds %struct.word_type, %struct.word_type* %119, i32 0, i32 0
  %121 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %120, i32 0, i64 0
  %122 = getelementptr inbounds %struct.LIST, %struct.LIST* %121, i32 0, i32 1
  store %union.rec* %107, %union.rec** %122, align 8
  %123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 0
  %126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %125, i32 0, i64 0
  %127 = getelementptr inbounds %struct.LIST, %struct.LIST* %126, i32 0, i32 0
  store %union.rec* %107, %union.rec** %127, align 8
  store %union.rec* %107, %union.rec** %hd, align 8
  %128 = load %union.rec*, %union.rec** %hd, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 2
  %131 = bitcast %union.SECOND_UNION* %130 to %struct.anon.2*
  %132 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %131, i32 0, i32 2
  %133 = load i16, i16* %132, align 2
  %134 = and i16 %133, -4097
  store i16 %134, i16* %132, align 2
  %135 = load %union.rec*, %union.rec** %hd, align 8
  %136 = bitcast %union.rec* %135 to %struct.head_type*
  %137 = getelementptr inbounds %struct.head_type, %struct.head_type* %136, i32 0, i32 14
  store %union.rec* null, %union.rec** %137, align 8
  %138 = load %union.rec*, %union.rec** %hd, align 8
  %139 = bitcast %union.rec* %138 to %struct.head_type*
  %140 = getelementptr inbounds %struct.head_type, %struct.head_type* %139, i32 0, i32 13
  store %union.rec* null, %union.rec** %140, align 8
  %141 = load %union.rec*, %union.rec** %hd, align 8
  %142 = bitcast %union.rec* %141 to %struct.head_type*
  %143 = getelementptr inbounds %struct.head_type, %struct.head_type* %142, i32 0, i32 11
  store %union.rec* null, %union.rec** %143, align 8
  %144 = load %union.rec*, %union.rec** %hd, align 8
  %145 = bitcast %union.rec* %144 to %struct.head_type*
  %146 = getelementptr inbounds %struct.head_type, %struct.head_type* %145, i32 0, i32 12
  store %union.rec* null, %union.rec** %146, align 8
  %147 = load %union.rec*, %union.rec** %hd, align 8
  %148 = bitcast %union.rec* %147 to %struct.head_type*
  %149 = getelementptr inbounds %struct.head_type, %struct.head_type* %148, i32 0, i32 9
  store %union.rec* null, %union.rec** %149, align 8
  %150 = load %union.rec*, %union.rec** %hd, align 8
  %151 = bitcast %union.rec* %150 to %struct.head_type*
  %152 = getelementptr inbounds %struct.head_type, %struct.head_type* %151, i32 0, i32 8
  store %union.rec* null, %union.rec** %152, align 8
  %153 = load %union.rec*, %union.rec** %hd, align 8
  %154 = bitcast %union.rec* %153 to %struct.word_type*
  %155 = getelementptr inbounds %struct.word_type, %struct.word_type* %154, i32 0, i32 2
  %156 = bitcast %union.SECOND_UNION* %155 to %struct.anon.2*
  %157 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %156, i32 0, i32 2
  %158 = load i16, i16* %157, align 2
  %159 = and i16 %158, -257
  %160 = or i16 %159, 256
  store i16 %160, i16* %157, align 2
  %161 = load %union.rec*, %union.rec** %1, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 1
  %164 = bitcast %union.FIRST_UNION* %163 to %struct.FILE_POS*
  %165 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %164, i32 0, i32 2
  %166 = load i16, i16* %165, align 2
  %167 = load %union.rec*, %union.rec** %hd, align 8
  %168 = bitcast %union.rec* %167 to %struct.word_type*
  %169 = getelementptr inbounds %struct.word_type, %struct.word_type* %168, i32 0, i32 1
  %170 = bitcast %union.FIRST_UNION* %169 to %struct.FILE_POS*
  %171 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %170, i32 0, i32 2
  store i16 %166, i16* %171, align 2
  %172 = load %union.rec*, %union.rec** %1, align 8
  %173 = bitcast %union.rec* %172 to %struct.word_type*
  %174 = getelementptr inbounds %struct.word_type, %struct.word_type* %173, i32 0, i32 1
  %175 = bitcast %union.FIRST_UNION* %174 to %struct.FILE_POS*
  %176 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %175, i32 0, i32 3
  %177 = load i32, i32* %176, align 4
  %178 = and i32 %177, 1048575
  %179 = load %union.rec*, %union.rec** %hd, align 8
  %180 = bitcast %union.rec* %179 to %struct.word_type*
  %181 = getelementptr inbounds %struct.word_type, %struct.word_type* %180, i32 0, i32 1
  %182 = bitcast %union.FIRST_UNION* %181 to %struct.FILE_POS*
  %183 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %182, i32 0, i32 3
  %184 = load i32, i32* %183, align 4
  %185 = and i32 %178, 1048575
  %186 = and i32 %184, -1048576
  %187 = or i32 %186, %185
  store i32 %187, i32* %183, align 4
  %188 = load %union.rec*, %union.rec** %1, align 8
  %189 = bitcast %union.rec* %188 to %struct.word_type*
  %190 = getelementptr inbounds %struct.word_type, %struct.word_type* %189, i32 0, i32 1
  %191 = bitcast %union.FIRST_UNION* %190 to %struct.FILE_POS*
  %192 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %191, i32 0, i32 3
  %193 = load i32, i32* %192, align 4
  %194 = lshr i32 %193, 20
  %195 = load %union.rec*, %union.rec** %hd, align 8
  %196 = bitcast %union.rec* %195 to %struct.word_type*
  %197 = getelementptr inbounds %struct.word_type, %struct.word_type* %196, i32 0, i32 1
  %198 = bitcast %union.FIRST_UNION* %197 to %struct.FILE_POS*
  %199 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %198, i32 0, i32 3
  %200 = load i32, i32* %199, align 4
  %201 = and i32 %194, 4095
  %202 = shl i32 %201, 20
  %203 = and i32 %200, 1048575
  %204 = or i32 %203, %202
  store i32 %204, i32* %199, align 4
  %205 = load %union.rec*, %union.rec** %hd, align 8
  %206 = bitcast %union.rec* %205 to %struct.head_type*
  %207 = getelementptr inbounds %struct.head_type, %struct.head_type* %206, i32 0, i32 7
  store %union.rec* null, %union.rec** %207, align 8
  %208 = load %union.rec*, %union.rec** %hd, align 8
  %209 = bitcast %union.rec* %208 to %struct.closure_type*
  %210 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %209, i32 0, i32 6
  %211 = bitcast %union.anon.12* %210 to %union.rec**
  store %union.rec* null, %union.rec** %211, align 8
  %212 = load %union.rec*, %union.rec** %hd, align 8
  %213 = bitcast %union.rec* %212 to %struct.closure_type*
  %214 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %213, i32 0, i32 5
  store %union.rec* null, %union.rec** %214, align 8
  %215 = load %union.rec*, %union.rec** %hd, align 8
  %216 = bitcast %union.rec* %215 to %struct.word_type*
  %217 = getelementptr inbounds %struct.word_type, %struct.word_type* %216, i32 0, i32 2
  %218 = bitcast %union.SECOND_UNION* %217 to %struct.anon.2*
  %219 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %218, i32 0, i32 0
  store i8 -127, i8* %219, align 1
  %220 = load %union.rec*, %union.rec** %hd, align 8
  %221 = bitcast %union.rec* %220 to %struct.word_type*
  %222 = getelementptr inbounds %struct.word_type, %struct.word_type* %221, i32 0, i32 2
  %223 = bitcast %union.SECOND_UNION* %222 to %struct.anon.2*
  %224 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %223, i32 0, i32 2
  %225 = load i16, i16* %224, align 2
  %226 = and i16 %225, -3
  store i16 %226, i16* %224, align 2
  %227 = load %union.rec*, %union.rec** %hd, align 8
  %228 = bitcast %union.rec* %227 to %struct.word_type*
  %229 = getelementptr inbounds %struct.word_type, %struct.word_type* %228, i32 0, i32 2
  %230 = bitcast %union.SECOND_UNION* %229 to %struct.anon.2*
  %231 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %230, i32 0, i32 2
  %232 = load i16, i16* %231, align 2
  %233 = and i16 %232, -129
  store i16 %233, i16* %231, align 2
  %234 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %235 = zext i8 %234 to i32
  store i32 %235, i32* @zz_size, align 4
  %236 = sext i32 %235 to i64
  %237 = icmp uge i64 %236, 265
  br i1 %237, label %238, label %241

; <label>:238                                     ; preds = %101
  %239 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %240 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %239)
  br label %266

; <label>:241                                     ; preds = %101
  %242 = load i32, i32* @zz_size, align 4
  %243 = sext i32 %242 to i64
  %244 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %243
  %245 = load %union.rec*, %union.rec** %244, align 8
  %246 = icmp eq %union.rec* %245, null
  br i1 %246, label %247, label %251

; <label>:247                                     ; preds = %241
  %248 = load i32, i32* @zz_size, align 4
  %249 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %250 = call %union.rec* @GetMemory(i32 %248, %struct.FILE_POS* %249)
  store %union.rec* %250, %union.rec** @zz_hold, align 8
  br label %265

; <label>:251                                     ; preds = %241
  %252 = load i32, i32* @zz_size, align 4
  %253 = sext i32 %252 to i64
  %254 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %253
  %255 = load %union.rec*, %union.rec** %254, align 8
  store %union.rec* %255, %union.rec** @zz_hold, align 8
  store %union.rec* %255, %union.rec** @zz_hold, align 8
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 0
  %259 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %258, i32 0, i64 0
  %260 = getelementptr inbounds %struct.LIST, %struct.LIST* %259, i32 0, i32 0
  %261 = load %union.rec*, %union.rec** %260, align 8
  %262 = load i32, i32* @zz_size, align 4
  %263 = sext i32 %262 to i64
  %264 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %263
  store %union.rec* %261, %union.rec** %264, align 8
  br label %265

; <label>:265                                     ; preds = %251, %247
  br label %266

; <label>:266                                     ; preds = %265, %238
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 1
  %270 = bitcast %union.FIRST_UNION* %269 to %struct.anon*
  %271 = getelementptr inbounds %struct.anon, %struct.anon* %270, i32 0, i32 0
  store i8 0, i8* %271, align 1
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = load %union.rec*, %union.rec** @zz_hold, align 8
  %274 = bitcast %union.rec* %273 to %struct.word_type*
  %275 = getelementptr inbounds %struct.word_type, %struct.word_type* %274, i32 0, i32 0
  %276 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %275, i32 0, i64 1
  %277 = getelementptr inbounds %struct.LIST, %struct.LIST* %276, i32 0, i32 1
  store %union.rec* %272, %union.rec** %277, align 8
  %278 = load %union.rec*, %union.rec** @zz_hold, align 8
  %279 = bitcast %union.rec* %278 to %struct.word_type*
  %280 = getelementptr inbounds %struct.word_type, %struct.word_type* %279, i32 0, i32 0
  %281 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %280, i32 0, i64 1
  %282 = getelementptr inbounds %struct.LIST, %struct.LIST* %281, i32 0, i32 0
  store %union.rec* %272, %union.rec** %282, align 8
  %283 = load %union.rec*, %union.rec** @zz_hold, align 8
  %284 = bitcast %union.rec* %283 to %struct.word_type*
  %285 = getelementptr inbounds %struct.word_type, %struct.word_type* %284, i32 0, i32 0
  %286 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %285, i32 0, i64 0
  %287 = getelementptr inbounds %struct.LIST, %struct.LIST* %286, i32 0, i32 1
  store %union.rec* %272, %union.rec** %287, align 8
  %288 = load %union.rec*, %union.rec** @zz_hold, align 8
  %289 = bitcast %union.rec* %288 to %struct.word_type*
  %290 = getelementptr inbounds %struct.word_type, %struct.word_type* %289, i32 0, i32 0
  %291 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %290, i32 0, i64 0
  %292 = getelementptr inbounds %struct.LIST, %struct.LIST* %291, i32 0, i32 0
  store %union.rec* %272, %union.rec** %292, align 8
  store %union.rec* %272, %union.rec** @xx_link, align 8
  %293 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %293, %union.rec** @zz_res, align 8
  %294 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %294, %union.rec** @zz_hold, align 8
  %295 = load %union.rec*, %union.rec** @zz_hold, align 8
  %296 = icmp eq %union.rec* %295, null
  br i1 %296, label %297, label %299

; <label>:297                                     ; preds = %266
  %298 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %347

; <label>:299                                     ; preds = %266
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  %301 = icmp eq %union.rec* %300, null
  br i1 %301, label %302, label %304

; <label>:302                                     ; preds = %299
  %303 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %345

; <label>:304                                     ; preds = %299
  %305 = load %union.rec*, %union.rec** @zz_hold, align 8
  %306 = bitcast %union.rec* %305 to %struct.word_type*
  %307 = getelementptr inbounds %struct.word_type, %struct.word_type* %306, i32 0, i32 0
  %308 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %307, i32 0, i64 0
  %309 = getelementptr inbounds %struct.LIST, %struct.LIST* %308, i32 0, i32 0
  %310 = load %union.rec*, %union.rec** %309, align 8
  store %union.rec* %310, %union.rec** @zz_tmp, align 8
  %311 = load %union.rec*, %union.rec** @zz_res, align 8
  %312 = bitcast %union.rec* %311 to %struct.word_type*
  %313 = getelementptr inbounds %struct.word_type, %struct.word_type* %312, i32 0, i32 0
  %314 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %313, i32 0, i64 0
  %315 = getelementptr inbounds %struct.LIST, %struct.LIST* %314, i32 0, i32 0
  %316 = load %union.rec*, %union.rec** %315, align 8
  %317 = load %union.rec*, %union.rec** @zz_hold, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 0
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 0
  store %union.rec* %316, %union.rec** %321, align 8
  %322 = load %union.rec*, %union.rec** @zz_hold, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 0
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 0
  %328 = load %union.rec*, %union.rec** %327, align 8
  %329 = bitcast %union.rec* %328 to %struct.word_type*
  %330 = getelementptr inbounds %struct.word_type, %struct.word_type* %329, i32 0, i32 0
  %331 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %330, i32 0, i64 0
  %332 = getelementptr inbounds %struct.LIST, %struct.LIST* %331, i32 0, i32 1
  store %union.rec* %322, %union.rec** %332, align 8
  %333 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %334 = load %union.rec*, %union.rec** @zz_res, align 8
  %335 = bitcast %union.rec* %334 to %struct.word_type*
  %336 = getelementptr inbounds %struct.word_type, %struct.word_type* %335, i32 0, i32 0
  %337 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %336, i32 0, i64 0
  %338 = getelementptr inbounds %struct.LIST, %struct.LIST* %337, i32 0, i32 0
  store %union.rec* %333, %union.rec** %338, align 8
  %339 = load %union.rec*, %union.rec** @zz_res, align 8
  %340 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %341 = bitcast %union.rec* %340 to %struct.word_type*
  %342 = getelementptr inbounds %struct.word_type, %struct.word_type* %341, i32 0, i32 0
  %343 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %342, i32 0, i64 0
  %344 = getelementptr inbounds %struct.LIST, %struct.LIST* %343, i32 0, i32 1
  store %union.rec* %339, %union.rec** %344, align 8
  br label %345

; <label>:345                                     ; preds = %304, %302
  %346 = phi %union.rec* [ %303, %302 ], [ %339, %304 ]
  br label %347

; <label>:347                                     ; preds = %345, %297
  %348 = phi %union.rec* [ %298, %297 ], [ %346, %345 ]
  %349 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %349, %union.rec** @zz_res, align 8
  %350 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %350, %union.rec** @zz_hold, align 8
  %351 = load %union.rec*, %union.rec** @zz_hold, align 8
  %352 = icmp eq %union.rec* %351, null
  br i1 %352, label %353, label %355

; <label>:353                                     ; preds = %347
  %354 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %403

; <label>:355                                     ; preds = %347
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
  %364 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %363, i32 0, i64 1
  %365 = getelementptr inbounds %struct.LIST, %struct.LIST* %364, i32 0, i32 0
  %366 = load %union.rec*, %union.rec** %365, align 8
  store %union.rec* %366, %union.rec** @zz_tmp, align 8
  %367 = load %union.rec*, %union.rec** @zz_res, align 8
  %368 = bitcast %union.rec* %367 to %struct.word_type*
  %369 = getelementptr inbounds %struct.word_type, %struct.word_type* %368, i32 0, i32 0
  %370 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %369, i32 0, i64 1
  %371 = getelementptr inbounds %struct.LIST, %struct.LIST* %370, i32 0, i32 0
  %372 = load %union.rec*, %union.rec** %371, align 8
  %373 = load %union.rec*, %union.rec** @zz_hold, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 1
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 0
  store %union.rec* %372, %union.rec** %377, align 8
  %378 = load %union.rec*, %union.rec** @zz_hold, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 1
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  %384 = load %union.rec*, %union.rec** %383, align 8
  %385 = bitcast %union.rec* %384 to %struct.word_type*
  %386 = getelementptr inbounds %struct.word_type, %struct.word_type* %385, i32 0, i32 0
  %387 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %386, i32 0, i64 1
  %388 = getelementptr inbounds %struct.LIST, %struct.LIST* %387, i32 0, i32 1
  store %union.rec* %378, %union.rec** %388, align 8
  %389 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %390 = load %union.rec*, %union.rec** @zz_res, align 8
  %391 = bitcast %union.rec* %390 to %struct.word_type*
  %392 = getelementptr inbounds %struct.word_type, %struct.word_type* %391, i32 0, i32 0
  %393 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %392, i32 0, i64 1
  %394 = getelementptr inbounds %struct.LIST, %struct.LIST* %393, i32 0, i32 0
  store %union.rec* %389, %union.rec** %394, align 8
  %395 = load %union.rec*, %union.rec** @zz_res, align 8
  %396 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %397 = bitcast %union.rec* %396 to %struct.word_type*
  %398 = getelementptr inbounds %struct.word_type, %struct.word_type* %397, i32 0, i32 0
  %399 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %398, i32 0, i64 1
  %400 = getelementptr inbounds %struct.LIST, %struct.LIST* %399, i32 0, i32 1
  store %union.rec* %395, %union.rec** %400, align 8
  br label %401

; <label>:401                                     ; preds = %360, %358
  %402 = phi %union.rec* [ %359, %358 ], [ %395, %360 ]
  br label %403

; <label>:403                                     ; preds = %401, %353
  %404 = phi %union.rec* [ %354, %353 ], [ %402, %401 ]
  %405 = load %union.rec*, %union.rec** %dest_index, align 8
  %406 = bitcast %union.rec* %405 to %struct.closure_type*
  %407 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %406, i32 0, i32 5
  %408 = load %union.rec*, %union.rec** %407, align 8
  store %union.rec* %408, %union.rec** %dest, align 8
  %409 = load %union.rec*, %union.rec** %dest, align 8
  %410 = call %union.rec* @GetEnv(%union.rec* %409)
  store %union.rec* %410, %union.rec** %env, align 8
  %411 = load %union.rec*, %union.rec** %hd, align 8
  %412 = load %union.rec*, %union.rec** %env, align 8
  %413 = load %union.rec*, %union.rec** %dest, align 8
  %414 = bitcast %union.rec* %413 to %struct.word_type*
  %415 = getelementptr inbounds %struct.word_type, %struct.word_type* %414, i32 0, i32 2
  %416 = bitcast %union.SECOND_UNION* %415 to %struct.anon.2*
  %417 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %416, i32 0, i32 2
  %418 = load i16, i16* %417, align 2
  %419 = lshr i16 %418, 2
  %420 = and i16 %419, 1
  %421 = zext i16 %420 to i32
  %422 = load %union.rec*, %union.rec** %dest, align 8
  %423 = bitcast %union.rec* %422 to %struct.closure_type*
  %424 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %423, i32 0, i32 4
  %425 = bitcast %union.FOURTH_UNION* %424 to %struct.STYLE*
  %426 = load i32, i32* @itop, align 4
  %427 = sext i32 %426 to i64
  %428 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %427
  call void @SizeGalley(%union.rec* %411, %union.rec* %412, i32 1, i32 %421, i32 0, i32 1, %struct.STYLE* %425, %struct.CONSTRAINT* %428, %union.rec* null, %union.rec** %nothing, %union.rec** %recs, %union.rec** %inners, %union.rec* null)
  %429 = load %union.rec*, %union.rec** %recs, align 8
  %430 = icmp ne %union.rec* %429, null
  br i1 %430, label %431, label %433

; <label>:431                                     ; preds = %403
  %432 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %432)
  br label %433

; <label>:433                                     ; preds = %431, %403
  %434 = load %union.rec*, %union.rec** %dest_index, align 8
  %435 = bitcast %union.rec* %434 to %struct.word_type*
  %436 = getelementptr inbounds %struct.word_type, %struct.word_type* %435, i32 0, i32 0
  %437 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %436, i32 0, i64 1
  %438 = getelementptr inbounds %struct.LIST, %struct.LIST* %437, i32 0, i32 1
  %439 = load %union.rec*, %union.rec** %438, align 8
  %440 = bitcast %union.rec* %439 to %struct.word_type*
  %441 = getelementptr inbounds %struct.word_type, %struct.word_type* %440, i32 0, i32 0
  %442 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %441, i32 0, i64 0
  %443 = getelementptr inbounds %struct.LIST, %struct.LIST* %442, i32 0, i32 0
  %444 = load %union.rec*, %union.rec** %443, align 8
  store %union.rec* %444, %union.rec** %start_search, align 8
  %445 = load %union.rec*, %union.rec** %dest, align 8
  %446 = load %union.rec*, %union.rec** %hd, align 8
  %447 = bitcast %union.rec* %446 to %struct.word_type*
  %448 = getelementptr inbounds %struct.word_type, %struct.word_type* %447, i32 0, i32 3
  %449 = bitcast %union.THIRD_UNION* %448 to %struct.anon.6*
  %450 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %449, i32 0, i32 0
  %451 = getelementptr inbounds [2 x i32], [2 x i32]* %450, i32 0, i64 0
  %452 = load i32, i32* %451, align 4
  %453 = load %union.rec*, %union.rec** %hd, align 8
  %454 = bitcast %union.rec* %453 to %struct.word_type*
  %455 = getelementptr inbounds %struct.word_type, %struct.word_type* %454, i32 0, i32 3
  %456 = bitcast %union.THIRD_UNION* %455 to %struct.anon.6*
  %457 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %456, i32 0, i32 1
  %458 = getelementptr inbounds [2 x i32], [2 x i32]* %457, i32 0, i64 0
  %459 = load i32, i32* %458, align 4
  call void @AdjustSize(%union.rec* %445, i32 %452, i32 %459, i32 0)
  %460 = load %union.rec*, %union.rec** %hd, align 8
  %461 = load %union.rec*, %union.rec** %hd, align 8
  %462 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %460, %union.rec* %461, %union.rec* %462, i32 0)
  %463 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %463, %union.rec** @xx_hold, align 8
  br label %464

; <label>:464                                     ; preds = %624, %433
  %465 = load %union.rec*, %union.rec** @xx_hold, align 8
  %466 = bitcast %union.rec* %465 to %struct.word_type*
  %467 = getelementptr inbounds %struct.word_type, %struct.word_type* %466, i32 0, i32 0
  %468 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %467, i32 0, i64 1
  %469 = getelementptr inbounds %struct.LIST, %struct.LIST* %468, i32 0, i32 1
  %470 = load %union.rec*, %union.rec** %469, align 8
  %471 = load %union.rec*, %union.rec** @xx_hold, align 8
  %472 = icmp ne %union.rec* %470, %471
  br i1 %472, label %473, label %639

; <label>:473                                     ; preds = %464
  %474 = load %union.rec*, %union.rec** @xx_hold, align 8
  %475 = bitcast %union.rec* %474 to %struct.word_type*
  %476 = getelementptr inbounds %struct.word_type, %struct.word_type* %475, i32 0, i32 0
  %477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %476, i32 0, i64 1
  %478 = getelementptr inbounds %struct.LIST, %struct.LIST* %477, i32 0, i32 1
  %479 = load %union.rec*, %union.rec** %478, align 8
  store %union.rec* %479, %union.rec** @xx_link, align 8
  %480 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %480, %union.rec** @zz_hold, align 8
  %481 = load %union.rec*, %union.rec** @zz_hold, align 8
  %482 = bitcast %union.rec* %481 to %struct.word_type*
  %483 = getelementptr inbounds %struct.word_type, %struct.word_type* %482, i32 0, i32 0
  %484 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %483, i32 0, i64 1
  %485 = getelementptr inbounds %struct.LIST, %struct.LIST* %484, i32 0, i32 1
  %486 = load %union.rec*, %union.rec** %485, align 8
  %487 = load %union.rec*, %union.rec** @zz_hold, align 8
  %488 = icmp eq %union.rec* %486, %487
  br i1 %488, label %489, label %490

; <label>:489                                     ; preds = %473
  br label %531

; <label>:490                                     ; preds = %473
  %491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %492 = bitcast %union.rec* %491 to %struct.word_type*
  %493 = getelementptr inbounds %struct.word_type, %struct.word_type* %492, i32 0, i32 0
  %494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %493, i32 0, i64 1
  %495 = getelementptr inbounds %struct.LIST, %struct.LIST* %494, i32 0, i32 1
  %496 = load %union.rec*, %union.rec** %495, align 8
  store %union.rec* %496, %union.rec** @zz_res, align 8
  %497 = load %union.rec*, %union.rec** @zz_hold, align 8
  %498 = bitcast %union.rec* %497 to %struct.word_type*
  %499 = getelementptr inbounds %struct.word_type, %struct.word_type* %498, i32 0, i32 0
  %500 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %499, i32 0, i64 1
  %501 = getelementptr inbounds %struct.LIST, %struct.LIST* %500, i32 0, i32 0
  %502 = load %union.rec*, %union.rec** %501, align 8
  %503 = load %union.rec*, %union.rec** @zz_res, align 8
  %504 = bitcast %union.rec* %503 to %struct.word_type*
  %505 = getelementptr inbounds %struct.word_type, %struct.word_type* %504, i32 0, i32 0
  %506 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %505, i32 0, i64 1
  %507 = getelementptr inbounds %struct.LIST, %struct.LIST* %506, i32 0, i32 0
  store %union.rec* %502, %union.rec** %507, align 8
  %508 = load %union.rec*, %union.rec** @zz_res, align 8
  %509 = load %union.rec*, %union.rec** @zz_hold, align 8
  %510 = bitcast %union.rec* %509 to %struct.word_type*
  %511 = getelementptr inbounds %struct.word_type, %struct.word_type* %510, i32 0, i32 0
  %512 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %511, i32 0, i64 1
  %513 = getelementptr inbounds %struct.LIST, %struct.LIST* %512, i32 0, i32 0
  %514 = load %union.rec*, %union.rec** %513, align 8
  %515 = bitcast %union.rec* %514 to %struct.word_type*
  %516 = getelementptr inbounds %struct.word_type, %struct.word_type* %515, i32 0, i32 0
  %517 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %516, i32 0, i64 1
  %518 = getelementptr inbounds %struct.LIST, %struct.LIST* %517, i32 0, i32 1
  store %union.rec* %508, %union.rec** %518, align 8
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
  %530 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %531

; <label>:531                                     ; preds = %490, %489
  %532 = phi %union.rec* [ null, %489 ], [ %530, %490 ]
  %533 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %533, %union.rec** @zz_hold, align 8
  %534 = load %union.rec*, %union.rec** @zz_hold, align 8
  %535 = bitcast %union.rec* %534 to %struct.word_type*
  %536 = getelementptr inbounds %struct.word_type, %struct.word_type* %535, i32 0, i32 0
  %537 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %536, i32 0, i64 0
  %538 = getelementptr inbounds %struct.LIST, %struct.LIST* %537, i32 0, i32 1
  %539 = load %union.rec*, %union.rec** %538, align 8
  %540 = load %union.rec*, %union.rec** @zz_hold, align 8
  %541 = icmp eq %union.rec* %539, %540
  br i1 %541, label %542, label %543

; <label>:542                                     ; preds = %531
  br label %584

; <label>:543                                     ; preds = %531
  %544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %545 = bitcast %union.rec* %544 to %struct.word_type*
  %546 = getelementptr inbounds %struct.word_type, %struct.word_type* %545, i32 0, i32 0
  %547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %546, i32 0, i64 0
  %548 = getelementptr inbounds %struct.LIST, %struct.LIST* %547, i32 0, i32 1
  %549 = load %union.rec*, %union.rec** %548, align 8
  store %union.rec* %549, %union.rec** @zz_res, align 8
  %550 = load %union.rec*, %union.rec** @zz_hold, align 8
  %551 = bitcast %union.rec* %550 to %struct.word_type*
  %552 = getelementptr inbounds %struct.word_type, %struct.word_type* %551, i32 0, i32 0
  %553 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %552, i32 0, i64 0
  %554 = getelementptr inbounds %struct.LIST, %struct.LIST* %553, i32 0, i32 0
  %555 = load %union.rec*, %union.rec** %554, align 8
  %556 = load %union.rec*, %union.rec** @zz_res, align 8
  %557 = bitcast %union.rec* %556 to %struct.word_type*
  %558 = getelementptr inbounds %struct.word_type, %struct.word_type* %557, i32 0, i32 0
  %559 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %558, i32 0, i64 0
  %560 = getelementptr inbounds %struct.LIST, %struct.LIST* %559, i32 0, i32 0
  store %union.rec* %555, %union.rec** %560, align 8
  %561 = load %union.rec*, %union.rec** @zz_res, align 8
  %562 = load %union.rec*, %union.rec** @zz_hold, align 8
  %563 = bitcast %union.rec* %562 to %struct.word_type*
  %564 = getelementptr inbounds %struct.word_type, %struct.word_type* %563, i32 0, i32 0
  %565 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %564, i32 0, i64 0
  %566 = getelementptr inbounds %struct.LIST, %struct.LIST* %565, i32 0, i32 0
  %567 = load %union.rec*, %union.rec** %566, align 8
  %568 = bitcast %union.rec* %567 to %struct.word_type*
  %569 = getelementptr inbounds %struct.word_type, %struct.word_type* %568, i32 0, i32 0
  %570 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %569, i32 0, i64 0
  %571 = getelementptr inbounds %struct.LIST, %struct.LIST* %570, i32 0, i32 1
  store %union.rec* %561, %union.rec** %571, align 8
  %572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %573 = load %union.rec*, %union.rec** @zz_hold, align 8
  %574 = bitcast %union.rec* %573 to %struct.word_type*
  %575 = getelementptr inbounds %struct.word_type, %struct.word_type* %574, i32 0, i32 0
  %576 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %575, i32 0, i64 0
  %577 = getelementptr inbounds %struct.LIST, %struct.LIST* %576, i32 0, i32 1
  store %union.rec* %572, %union.rec** %577, align 8
  %578 = load %union.rec*, %union.rec** @zz_hold, align 8
  %579 = bitcast %union.rec* %578 to %struct.word_type*
  %580 = getelementptr inbounds %struct.word_type, %struct.word_type* %579, i32 0, i32 0
  %581 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %580, i32 0, i64 0
  %582 = getelementptr inbounds %struct.LIST, %struct.LIST* %581, i32 0, i32 0
  store %union.rec* %572, %union.rec** %582, align 8
  %583 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %584

; <label>:584                                     ; preds = %543, %542
  %585 = phi %union.rec* [ null, %542 ], [ %583, %543 ]
  %586 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %586, %union.rec** @zz_hold, align 8
  %587 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %587, %union.rec** @zz_hold, align 8
  %588 = load %union.rec*, %union.rec** @zz_hold, align 8
  %589 = bitcast %union.rec* %588 to %struct.word_type*
  %590 = getelementptr inbounds %struct.word_type, %struct.word_type* %589, i32 0, i32 1
  %591 = bitcast %union.FIRST_UNION* %590 to %struct.anon*
  %592 = getelementptr inbounds %struct.anon, %struct.anon* %591, i32 0, i32 0
  %593 = load i8, i8* %592, align 1
  %594 = zext i8 %593 to i32
  %595 = icmp eq i32 %594, 11
  br i1 %595, label %605, label %596

; <label>:596                                     ; preds = %584
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = bitcast %union.rec* %597 to %struct.word_type*
  %599 = getelementptr inbounds %struct.word_type, %struct.word_type* %598, i32 0, i32 1
  %600 = bitcast %union.FIRST_UNION* %599 to %struct.anon*
  %601 = getelementptr inbounds %struct.anon, %struct.anon* %600, i32 0, i32 0
  %602 = load i8, i8* %601, align 1
  %603 = zext i8 %602 to i32
  %604 = icmp eq i32 %603, 12
  br i1 %604, label %605, label %613

; <label>:605                                     ; preds = %596, %584
  %606 = load %union.rec*, %union.rec** @zz_hold, align 8
  %607 = bitcast %union.rec* %606 to %struct.word_type*
  %608 = getelementptr inbounds %struct.word_type, %struct.word_type* %607, i32 0, i32 1
  %609 = bitcast %union.FIRST_UNION* %608 to %struct.anon*
  %610 = getelementptr inbounds %struct.anon, %struct.anon* %609, i32 0, i32 1
  %611 = load i8, i8* %610, align 1
  %612 = zext i8 %611 to i32
  br label %624

; <label>:613                                     ; preds = %596
  %614 = load %union.rec*, %union.rec** @zz_hold, align 8
  %615 = bitcast %union.rec* %614 to %struct.word_type*
  %616 = getelementptr inbounds %struct.word_type, %struct.word_type* %615, i32 0, i32 1
  %617 = bitcast %union.FIRST_UNION* %616 to %struct.anon*
  %618 = getelementptr inbounds %struct.anon, %struct.anon* %617, i32 0, i32 0
  %619 = load i8, i8* %618, align 1
  %620 = zext i8 %619 to i64
  %621 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %620
  %622 = load i8, i8* %621, align 1
  %623 = zext i8 %622 to i32
  br label %624

; <label>:624                                     ; preds = %613, %605
  %625 = phi i32 [ %612, %605 ], [ %623, %613 ]
  store i32 %625, i32* @zz_size, align 4
  %626 = load i32, i32* @zz_size, align 4
  %627 = sext i32 %626 to i64
  %628 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %627
  %629 = load %union.rec*, %union.rec** %628, align 8
  %630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %631 = bitcast %union.rec* %630 to %struct.word_type*
  %632 = getelementptr inbounds %struct.word_type, %struct.word_type* %631, i32 0, i32 0
  %633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %632, i32 0, i64 0
  %634 = getelementptr inbounds %struct.LIST, %struct.LIST* %633, i32 0, i32 0
  store %union.rec* %629, %union.rec** %634, align 8
  %635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %636 = load i32, i32* @zz_size, align 4
  %637 = sext i32 %636 to i64
  %638 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %637
  store %union.rec* %635, %union.rec** %638, align 8
  br label %464

; <label>:639                                     ; preds = %464
  br label %640

; <label>:640                                     ; preds = %800, %639
  %641 = load %union.rec*, %union.rec** @xx_hold, align 8
  %642 = bitcast %union.rec* %641 to %struct.word_type*
  %643 = getelementptr inbounds %struct.word_type, %struct.word_type* %642, i32 0, i32 0
  %644 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %643, i32 0, i64 0
  %645 = getelementptr inbounds %struct.LIST, %struct.LIST* %644, i32 0, i32 1
  %646 = load %union.rec*, %union.rec** %645, align 8
  %647 = load %union.rec*, %union.rec** @xx_hold, align 8
  %648 = icmp ne %union.rec* %646, %647
  br i1 %648, label %649, label %815

; <label>:649                                     ; preds = %640
  %650 = load %union.rec*, %union.rec** @xx_hold, align 8
  %651 = bitcast %union.rec* %650 to %struct.word_type*
  %652 = getelementptr inbounds %struct.word_type, %struct.word_type* %651, i32 0, i32 0
  %653 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %652, i32 0, i64 0
  %654 = getelementptr inbounds %struct.LIST, %struct.LIST* %653, i32 0, i32 1
  %655 = load %union.rec*, %union.rec** %654, align 8
  store %union.rec* %655, %union.rec** @xx_link, align 8
  %656 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %656, %union.rec** @zz_hold, align 8
  %657 = load %union.rec*, %union.rec** @zz_hold, align 8
  %658 = bitcast %union.rec* %657 to %struct.word_type*
  %659 = getelementptr inbounds %struct.word_type, %struct.word_type* %658, i32 0, i32 0
  %660 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %659, i32 0, i64 1
  %661 = getelementptr inbounds %struct.LIST, %struct.LIST* %660, i32 0, i32 1
  %662 = load %union.rec*, %union.rec** %661, align 8
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %664 = icmp eq %union.rec* %662, %663
  br i1 %664, label %665, label %666

; <label>:665                                     ; preds = %649
  br label %707

; <label>:666                                     ; preds = %649
  %667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %668 = bitcast %union.rec* %667 to %struct.word_type*
  %669 = getelementptr inbounds %struct.word_type, %struct.word_type* %668, i32 0, i32 0
  %670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %669, i32 0, i64 1
  %671 = getelementptr inbounds %struct.LIST, %struct.LIST* %670, i32 0, i32 1
  %672 = load %union.rec*, %union.rec** %671, align 8
  store %union.rec* %672, %union.rec** @zz_res, align 8
  %673 = load %union.rec*, %union.rec** @zz_hold, align 8
  %674 = bitcast %union.rec* %673 to %struct.word_type*
  %675 = getelementptr inbounds %struct.word_type, %struct.word_type* %674, i32 0, i32 0
  %676 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %675, i32 0, i64 1
  %677 = getelementptr inbounds %struct.LIST, %struct.LIST* %676, i32 0, i32 0
  %678 = load %union.rec*, %union.rec** %677, align 8
  %679 = load %union.rec*, %union.rec** @zz_res, align 8
  %680 = bitcast %union.rec* %679 to %struct.word_type*
  %681 = getelementptr inbounds %struct.word_type, %struct.word_type* %680, i32 0, i32 0
  %682 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %681, i32 0, i64 1
  %683 = getelementptr inbounds %struct.LIST, %struct.LIST* %682, i32 0, i32 0
  store %union.rec* %678, %union.rec** %683, align 8
  %684 = load %union.rec*, %union.rec** @zz_res, align 8
  %685 = load %union.rec*, %union.rec** @zz_hold, align 8
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
  %695 = load %union.rec*, %union.rec** @zz_hold, align 8
  %696 = load %union.rec*, %union.rec** @zz_hold, align 8
  %697 = bitcast %union.rec* %696 to %struct.word_type*
  %698 = getelementptr inbounds %struct.word_type, %struct.word_type* %697, i32 0, i32 0
  %699 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %698, i32 0, i64 1
  %700 = getelementptr inbounds %struct.LIST, %struct.LIST* %699, i32 0, i32 1
  store %union.rec* %695, %union.rec** %700, align 8
  %701 = load %union.rec*, %union.rec** @zz_hold, align 8
  %702 = bitcast %union.rec* %701 to %struct.word_type*
  %703 = getelementptr inbounds %struct.word_type, %struct.word_type* %702, i32 0, i32 0
  %704 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %703, i32 0, i64 1
  %705 = getelementptr inbounds %struct.LIST, %struct.LIST* %704, i32 0, i32 0
  store %union.rec* %695, %union.rec** %705, align 8
  %706 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %707

; <label>:707                                     ; preds = %666, %665
  %708 = phi %union.rec* [ null, %665 ], [ %706, %666 ]
  %709 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %709, %union.rec** @zz_hold, align 8
  %710 = load %union.rec*, %union.rec** @zz_hold, align 8
  %711 = bitcast %union.rec* %710 to %struct.word_type*
  %712 = getelementptr inbounds %struct.word_type, %struct.word_type* %711, i32 0, i32 0
  %713 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %712, i32 0, i64 0
  %714 = getelementptr inbounds %struct.LIST, %struct.LIST* %713, i32 0, i32 1
  %715 = load %union.rec*, %union.rec** %714, align 8
  %716 = load %union.rec*, %union.rec** @zz_hold, align 8
  %717 = icmp eq %union.rec* %715, %716
  br i1 %717, label %718, label %719

; <label>:718                                     ; preds = %707
  br label %760

; <label>:719                                     ; preds = %707
  %720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %721 = bitcast %union.rec* %720 to %struct.word_type*
  %722 = getelementptr inbounds %struct.word_type, %struct.word_type* %721, i32 0, i32 0
  %723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %722, i32 0, i64 0
  %724 = getelementptr inbounds %struct.LIST, %struct.LIST* %723, i32 0, i32 1
  %725 = load %union.rec*, %union.rec** %724, align 8
  store %union.rec* %725, %union.rec** @zz_res, align 8
  %726 = load %union.rec*, %union.rec** @zz_hold, align 8
  %727 = bitcast %union.rec* %726 to %struct.word_type*
  %728 = getelementptr inbounds %struct.word_type, %struct.word_type* %727, i32 0, i32 0
  %729 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %728, i32 0, i64 0
  %730 = getelementptr inbounds %struct.LIST, %struct.LIST* %729, i32 0, i32 0
  %731 = load %union.rec*, %union.rec** %730, align 8
  %732 = load %union.rec*, %union.rec** @zz_res, align 8
  %733 = bitcast %union.rec* %732 to %struct.word_type*
  %734 = getelementptr inbounds %struct.word_type, %struct.word_type* %733, i32 0, i32 0
  %735 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %734, i32 0, i64 0
  %736 = getelementptr inbounds %struct.LIST, %struct.LIST* %735, i32 0, i32 0
  store %union.rec* %731, %union.rec** %736, align 8
  %737 = load %union.rec*, %union.rec** @zz_res, align 8
  %738 = load %union.rec*, %union.rec** @zz_hold, align 8
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
  %748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %749 = load %union.rec*, %union.rec** @zz_hold, align 8
  %750 = bitcast %union.rec* %749 to %struct.word_type*
  %751 = getelementptr inbounds %struct.word_type, %struct.word_type* %750, i32 0, i32 0
  %752 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %751, i32 0, i64 0
  %753 = getelementptr inbounds %struct.LIST, %struct.LIST* %752, i32 0, i32 1
  store %union.rec* %748, %union.rec** %753, align 8
  %754 = load %union.rec*, %union.rec** @zz_hold, align 8
  %755 = bitcast %union.rec* %754 to %struct.word_type*
  %756 = getelementptr inbounds %struct.word_type, %struct.word_type* %755, i32 0, i32 0
  %757 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %756, i32 0, i64 0
  %758 = getelementptr inbounds %struct.LIST, %struct.LIST* %757, i32 0, i32 0
  store %union.rec* %748, %union.rec** %758, align 8
  %759 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %760

; <label>:760                                     ; preds = %719, %718
  %761 = phi %union.rec* [ null, %718 ], [ %759, %719 ]
  %762 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %762, %union.rec** @zz_hold, align 8
  %763 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %763, %union.rec** @zz_hold, align 8
  %764 = load %union.rec*, %union.rec** @zz_hold, align 8
  %765 = bitcast %union.rec* %764 to %struct.word_type*
  %766 = getelementptr inbounds %struct.word_type, %struct.word_type* %765, i32 0, i32 1
  %767 = bitcast %union.FIRST_UNION* %766 to %struct.anon*
  %768 = getelementptr inbounds %struct.anon, %struct.anon* %767, i32 0, i32 0
  %769 = load i8, i8* %768, align 1
  %770 = zext i8 %769 to i32
  %771 = icmp eq i32 %770, 11
  br i1 %771, label %781, label %772

; <label>:772                                     ; preds = %760
  %773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %774 = bitcast %union.rec* %773 to %struct.word_type*
  %775 = getelementptr inbounds %struct.word_type, %struct.word_type* %774, i32 0, i32 1
  %776 = bitcast %union.FIRST_UNION* %775 to %struct.anon*
  %777 = getelementptr inbounds %struct.anon, %struct.anon* %776, i32 0, i32 0
  %778 = load i8, i8* %777, align 1
  %779 = zext i8 %778 to i32
  %780 = icmp eq i32 %779, 12
  br i1 %780, label %781, label %789

; <label>:781                                     ; preds = %772, %760
  %782 = load %union.rec*, %union.rec** @zz_hold, align 8
  %783 = bitcast %union.rec* %782 to %struct.word_type*
  %784 = getelementptr inbounds %struct.word_type, %struct.word_type* %783, i32 0, i32 1
  %785 = bitcast %union.FIRST_UNION* %784 to %struct.anon*
  %786 = getelementptr inbounds %struct.anon, %struct.anon* %785, i32 0, i32 1
  %787 = load i8, i8* %786, align 1
  %788 = zext i8 %787 to i32
  br label %800

; <label>:789                                     ; preds = %772
  %790 = load %union.rec*, %union.rec** @zz_hold, align 8
  %791 = bitcast %union.rec* %790 to %struct.word_type*
  %792 = getelementptr inbounds %struct.word_type, %struct.word_type* %791, i32 0, i32 1
  %793 = bitcast %union.FIRST_UNION* %792 to %struct.anon*
  %794 = getelementptr inbounds %struct.anon, %struct.anon* %793, i32 0, i32 0
  %795 = load i8, i8* %794, align 1
  %796 = zext i8 %795 to i64
  %797 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %796
  %798 = load i8, i8* %797, align 1
  %799 = zext i8 %798 to i32
  br label %800

; <label>:800                                     ; preds = %789, %781
  %801 = phi i32 [ %788, %781 ], [ %799, %789 ]
  store i32 %801, i32* @zz_size, align 4
  %802 = load i32, i32* @zz_size, align 4
  %803 = sext i32 %802 to i64
  %804 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %803
  %805 = load %union.rec*, %union.rec** %804, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = bitcast %union.rec* %806 to %struct.word_type*
  %808 = getelementptr inbounds %struct.word_type, %struct.word_type* %807, i32 0, i32 0
  %809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %808, i32 0, i64 0
  %810 = getelementptr inbounds %struct.LIST, %struct.LIST* %809, i32 0, i32 0
  store %union.rec* %805, %union.rec** %810, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %812 = load i32, i32* @zz_size, align 4
  %813 = sext i32 %812 to i64
  %814 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %813
  store %union.rec* %811, %union.rec** %814, align 8
  br label %640

; <label>:815                                     ; preds = %640
  %816 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %816, %union.rec** @zz_hold, align 8
  %817 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %817, %union.rec** @zz_hold, align 8
  %818 = load %union.rec*, %union.rec** @zz_hold, align 8
  %819 = bitcast %union.rec* %818 to %struct.word_type*
  %820 = getelementptr inbounds %struct.word_type, %struct.word_type* %819, i32 0, i32 1
  %821 = bitcast %union.FIRST_UNION* %820 to %struct.anon*
  %822 = getelementptr inbounds %struct.anon, %struct.anon* %821, i32 0, i32 0
  %823 = load i8, i8* %822, align 1
  %824 = zext i8 %823 to i32
  %825 = icmp eq i32 %824, 11
  br i1 %825, label %835, label %826

; <label>:826                                     ; preds = %815
  %827 = load %union.rec*, %union.rec** @zz_hold, align 8
  %828 = bitcast %union.rec* %827 to %struct.word_type*
  %829 = getelementptr inbounds %struct.word_type, %struct.word_type* %828, i32 0, i32 1
  %830 = bitcast %union.FIRST_UNION* %829 to %struct.anon*
  %831 = getelementptr inbounds %struct.anon, %struct.anon* %830, i32 0, i32 0
  %832 = load i8, i8* %831, align 1
  %833 = zext i8 %832 to i32
  %834 = icmp eq i32 %833, 12
  br i1 %834, label %835, label %843

; <label>:835                                     ; preds = %826, %815
  %836 = load %union.rec*, %union.rec** @zz_hold, align 8
  %837 = bitcast %union.rec* %836 to %struct.word_type*
  %838 = getelementptr inbounds %struct.word_type, %struct.word_type* %837, i32 0, i32 1
  %839 = bitcast %union.FIRST_UNION* %838 to %struct.anon*
  %840 = getelementptr inbounds %struct.anon, %struct.anon* %839, i32 0, i32 1
  %841 = load i8, i8* %840, align 1
  %842 = zext i8 %841 to i32
  br label %854

; <label>:843                                     ; preds = %826
  %844 = load %union.rec*, %union.rec** @zz_hold, align 8
  %845 = bitcast %union.rec* %844 to %struct.word_type*
  %846 = getelementptr inbounds %struct.word_type, %struct.word_type* %845, i32 0, i32 1
  %847 = bitcast %union.FIRST_UNION* %846 to %struct.anon*
  %848 = getelementptr inbounds %struct.anon, %struct.anon* %847, i32 0, i32 0
  %849 = load i8, i8* %848, align 1
  %850 = zext i8 %849 to i64
  %851 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %850
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i32
  br label %854

; <label>:854                                     ; preds = %843, %835
  %855 = phi i32 [ %842, %835 ], [ %853, %843 ]
  store i32 %855, i32* @zz_size, align 4
  %856 = load i32, i32* @zz_size, align 4
  %857 = sext i32 %856 to i64
  %858 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %857
  %859 = load %union.rec*, %union.rec** %858, align 8
  %860 = load %union.rec*, %union.rec** @zz_hold, align 8
  %861 = bitcast %union.rec* %860 to %struct.word_type*
  %862 = getelementptr inbounds %struct.word_type, %struct.word_type* %861, i32 0, i32 0
  %863 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %862, i32 0, i64 0
  %864 = getelementptr inbounds %struct.LIST, %struct.LIST* %863, i32 0, i32 0
  store %union.rec* %859, %union.rec** %864, align 8
  %865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %866 = load i32, i32* @zz_size, align 4
  %867 = sext i32 %866 to i64
  %868 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %867
  store %union.rec* %865, %union.rec** %868, align 8
  %869 = load %union.rec*, %union.rec** %dest_index, align 8
  %870 = bitcast %union.rec* %869 to %struct.word_type*
  %871 = getelementptr inbounds %struct.word_type, %struct.word_type* %870, i32 0, i32 0
  %872 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %871, i32 0, i64 0
  %873 = getelementptr inbounds %struct.LIST, %struct.LIST* %872, i32 0, i32 1
  %874 = load %union.rec*, %union.rec** %873, align 8
  %875 = load %union.rec*, %union.rec** %dest_index, align 8
  %876 = icmp ne %union.rec* %874, %875
  br i1 %876, label %877, label %1326

; <label>:877                                     ; preds = %854
  %878 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %879 = zext i8 %878 to i32
  store i32 %879, i32* @zz_size, align 4
  %880 = sext i32 %879 to i64
  %881 = icmp uge i64 %880, 265
  br i1 %881, label %882, label %885

; <label>:882                                     ; preds = %877
  %883 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %884 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %883)
  br label %910

; <label>:885                                     ; preds = %877
  %886 = load i32, i32* @zz_size, align 4
  %887 = sext i32 %886 to i64
  %888 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %887
  %889 = load %union.rec*, %union.rec** %888, align 8
  %890 = icmp eq %union.rec* %889, null
  br i1 %890, label %891, label %895

; <label>:891                                     ; preds = %885
  %892 = load i32, i32* @zz_size, align 4
  %893 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %894 = call %union.rec* @GetMemory(i32 %892, %struct.FILE_POS* %893)
  store %union.rec* %894, %union.rec** @zz_hold, align 8
  br label %909

; <label>:895                                     ; preds = %885
  %896 = load i32, i32* @zz_size, align 4
  %897 = sext i32 %896 to i64
  %898 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %897
  %899 = load %union.rec*, %union.rec** %898, align 8
  store %union.rec* %899, %union.rec** @zz_hold, align 8
  store %union.rec* %899, %union.rec** @zz_hold, align 8
  %900 = load %union.rec*, %union.rec** @zz_hold, align 8
  %901 = bitcast %union.rec* %900 to %struct.word_type*
  %902 = getelementptr inbounds %struct.word_type, %struct.word_type* %901, i32 0, i32 0
  %903 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %902, i32 0, i64 0
  %904 = getelementptr inbounds %struct.LIST, %struct.LIST* %903, i32 0, i32 0
  %905 = load %union.rec*, %union.rec** %904, align 8
  %906 = load i32, i32* @zz_size, align 4
  %907 = sext i32 %906 to i64
  %908 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %907
  store %union.rec* %905, %union.rec** %908, align 8
  br label %909

; <label>:909                                     ; preds = %895, %891
  br label %910

; <label>:910                                     ; preds = %909, %882
  %911 = load %union.rec*, %union.rec** @zz_hold, align 8
  %912 = bitcast %union.rec* %911 to %struct.word_type*
  %913 = getelementptr inbounds %struct.word_type, %struct.word_type* %912, i32 0, i32 1
  %914 = bitcast %union.FIRST_UNION* %913 to %struct.anon*
  %915 = getelementptr inbounds %struct.anon, %struct.anon* %914, i32 0, i32 0
  store i8 17, i8* %915, align 1
  %916 = load %union.rec*, %union.rec** @zz_hold, align 8
  %917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %918 = bitcast %union.rec* %917 to %struct.word_type*
  %919 = getelementptr inbounds %struct.word_type, %struct.word_type* %918, i32 0, i32 0
  %920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %919, i32 0, i64 1
  %921 = getelementptr inbounds %struct.LIST, %struct.LIST* %920, i32 0, i32 1
  store %union.rec* %916, %union.rec** %921, align 8
  %922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %923 = bitcast %union.rec* %922 to %struct.word_type*
  %924 = getelementptr inbounds %struct.word_type, %struct.word_type* %923, i32 0, i32 0
  %925 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %924, i32 0, i64 1
  %926 = getelementptr inbounds %struct.LIST, %struct.LIST* %925, i32 0, i32 0
  store %union.rec* %916, %union.rec** %926, align 8
  %927 = load %union.rec*, %union.rec** @zz_hold, align 8
  %928 = bitcast %union.rec* %927 to %struct.word_type*
  %929 = getelementptr inbounds %struct.word_type, %struct.word_type* %928, i32 0, i32 0
  %930 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %929, i32 0, i64 0
  %931 = getelementptr inbounds %struct.LIST, %struct.LIST* %930, i32 0, i32 1
  store %union.rec* %916, %union.rec** %931, align 8
  %932 = load %union.rec*, %union.rec** @zz_hold, align 8
  %933 = bitcast %union.rec* %932 to %struct.word_type*
  %934 = getelementptr inbounds %struct.word_type, %struct.word_type* %933, i32 0, i32 0
  %935 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %934, i32 0, i64 0
  %936 = getelementptr inbounds %struct.LIST, %struct.LIST* %935, i32 0, i32 0
  store %union.rec* %916, %union.rec** %936, align 8
  store %union.rec* %916, %union.rec** %tinners, align 8
  br label %937

; <label>:937                                     ; preds = %1322, %910
  %938 = load %union.rec*, %union.rec** %dest_index, align 8
  %939 = bitcast %union.rec* %938 to %struct.word_type*
  %940 = getelementptr inbounds %struct.word_type, %struct.word_type* %939, i32 0, i32 0
  %941 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %940, i32 0, i64 0
  %942 = getelementptr inbounds %struct.LIST, %struct.LIST* %941, i32 0, i32 1
  %943 = load %union.rec*, %union.rec** %942, align 8
  %944 = load %union.rec*, %union.rec** %dest_index, align 8
  %945 = icmp ne %union.rec* %943, %944
  br i1 %945, label %946, label %1324

; <label>:946                                     ; preds = %937
  %947 = load %union.rec*, %union.rec** %dest_index, align 8
  %948 = bitcast %union.rec* %947 to %struct.word_type*
  %949 = getelementptr inbounds %struct.word_type, %struct.word_type* %948, i32 0, i32 0
  %950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %949, i32 0, i64 0
  %951 = getelementptr inbounds %struct.LIST, %struct.LIST* %950, i32 0, i32 1
  %952 = load %union.rec*, %union.rec** %951, align 8
  %953 = bitcast %union.rec* %952 to %struct.word_type*
  %954 = getelementptr inbounds %struct.word_type, %struct.word_type* %953, i32 0, i32 0
  %955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %954, i32 0, i64 1
  %956 = getelementptr inbounds %struct.LIST, %struct.LIST* %955, i32 0, i32 0
  %957 = load %union.rec*, %union.rec** %956, align 8
  store %union.rec* %957, %union.rec** %y, align 8
  br label %958

; <label>:958                                     ; preds = %968, %946
  %959 = load %union.rec*, %union.rec** %y, align 8
  %960 = bitcast %union.rec* %959 to %struct.word_type*
  %961 = getelementptr inbounds %struct.word_type, %struct.word_type* %960, i32 0, i32 1
  %962 = bitcast %union.FIRST_UNION* %961 to %struct.anon*
  %963 = getelementptr inbounds %struct.anon, %struct.anon* %962, i32 0, i32 0
  %964 = load i8, i8* %963, align 1
  %965 = zext i8 %964 to i32
  %966 = icmp eq i32 %965, 0
  br i1 %966, label %967, label %975

; <label>:967                                     ; preds = %958
  br label %968

; <label>:968                                     ; preds = %967
  %969 = load %union.rec*, %union.rec** %y, align 8
  %970 = bitcast %union.rec* %969 to %struct.word_type*
  %971 = getelementptr inbounds %struct.word_type, %struct.word_type* %970, i32 0, i32 0
  %972 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %971, i32 0, i64 1
  %973 = getelementptr inbounds %struct.LIST, %struct.LIST* %972, i32 0, i32 0
  %974 = load %union.rec*, %union.rec** %973, align 8
  store %union.rec* %974, %union.rec** %y, align 8
  br label %958

; <label>:975                                     ; preds = %958
  %976 = load %union.rec*, %union.rec** %y, align 8
  %977 = bitcast %union.rec* %976 to %struct.word_type*
  %978 = getelementptr inbounds %struct.word_type, %struct.word_type* %977, i32 0, i32 1
  %979 = bitcast %union.FIRST_UNION* %978 to %struct.anon*
  %980 = getelementptr inbounds %struct.anon, %struct.anon* %979, i32 0, i32 0
  %981 = load i8, i8* %980, align 1
  %982 = zext i8 %981 to i32
  %983 = icmp eq i32 %982, 8
  br i1 %983, label %987, label %984

; <label>:984                                     ; preds = %975
  %985 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %986 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %985, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.12, i32 0, i32 0))
  br label %987

; <label>:987                                     ; preds = %984, %975
  %988 = load %union.rec*, %union.rec** %y, align 8
  %989 = bitcast %union.rec* %988 to %struct.head_type*
  %990 = getelementptr inbounds %struct.head_type, %struct.head_type* %989, i32 0, i32 8
  %991 = load %union.rec*, %union.rec** %990, align 8
  %992 = icmp ne %union.rec* %991, null
  br i1 %992, label %993, label %1002

; <label>:993                                     ; preds = %987
  %994 = load %union.rec*, %union.rec** %y, align 8
  %995 = bitcast %union.rec* %994 to %struct.head_type*
  %996 = getelementptr inbounds %struct.head_type, %struct.head_type* %995, i32 0, i32 8
  %997 = load %union.rec*, %union.rec** %996, align 8
  %998 = call i32 @DisposeObject(%union.rec* %997)
  %999 = load %union.rec*, %union.rec** %y, align 8
  %1000 = bitcast %union.rec* %999 to %struct.head_type*
  %1001 = getelementptr inbounds %struct.head_type, %struct.head_type* %1000, i32 0, i32 8
  store %union.rec* null, %union.rec** %1001, align 8
  br label %1002

; <label>:1002                                    ; preds = %993, %987
  %1003 = load %union.rec*, %union.rec** %y, align 8
  call void @DetachGalley(%union.rec* %1003)
  %1004 = load %union.rec*, %union.rec** %y, align 8
  %1005 = bitcast %union.rec* %1004 to %struct.word_type*
  %1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %1005, i32 0, i32 0
  %1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1006, i32 0, i64 1
  %1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %1007, i32 0, i32 1
  %1009 = load %union.rec*, %union.rec** %1008, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 0
  %1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1011, i32 0, i64 0
  %1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %1012, i32 0, i32 0
  %1014 = load %union.rec*, %union.rec** %1013, align 8
  store %union.rec* %1014, %union.rec** %index, align 8
  br label %1015

; <label>:1015                                    ; preds = %1025, %1002
  %1016 = load %union.rec*, %union.rec** %index, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 1
  %1019 = bitcast %union.FIRST_UNION* %1018 to %struct.anon*
  %1020 = getelementptr inbounds %struct.anon, %struct.anon* %1019, i32 0, i32 0
  %1021 = load i8, i8* %1020, align 1
  %1022 = zext i8 %1021 to i32
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1032

; <label>:1024                                    ; preds = %1015
  br label %1025

; <label>:1025                                    ; preds = %1024
  %1026 = load %union.rec*, %union.rec** %index, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 0
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 0
  %1031 = load %union.rec*, %union.rec** %1030, align 8
  store %union.rec* %1031, %union.rec** %index, align 8
  br label %1015

; <label>:1032                                    ; preds = %1015
  %1033 = load %union.rec*, %union.rec** %index, align 8
  %1034 = bitcast %union.rec* %1033 to %struct.word_type*
  %1035 = getelementptr inbounds %struct.word_type, %struct.word_type* %1034, i32 0, i32 0
  %1036 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1035, i32 0, i64 1
  %1037 = getelementptr inbounds %struct.LIST, %struct.LIST* %1036, i32 0, i32 1
  %1038 = load %union.rec*, %union.rec** %1037, align 8
  store %union.rec* %1038, %union.rec** @xx_link, align 8
  %1039 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1039, %union.rec** @zz_hold, align 8
  %1040 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1041 = bitcast %union.rec* %1040 to %struct.word_type*
  %1042 = getelementptr inbounds %struct.word_type, %struct.word_type* %1041, i32 0, i32 0
  %1043 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1042, i32 0, i64 0
  %1044 = getelementptr inbounds %struct.LIST, %struct.LIST* %1043, i32 0, i32 1
  %1045 = load %union.rec*, %union.rec** %1044, align 8
  %1046 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1047 = icmp eq %union.rec* %1045, %1046
  br i1 %1047, label %1048, label %1049

; <label>:1048                                    ; preds = %1032
  br label %1090

; <label>:1049                                    ; preds = %1032
  %1050 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1051 = bitcast %union.rec* %1050 to %struct.word_type*
  %1052 = getelementptr inbounds %struct.word_type, %struct.word_type* %1051, i32 0, i32 0
  %1053 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1052, i32 0, i64 0
  %1054 = getelementptr inbounds %struct.LIST, %struct.LIST* %1053, i32 0, i32 1
  %1055 = load %union.rec*, %union.rec** %1054, align 8
  store %union.rec* %1055, %union.rec** @zz_res, align 8
  %1056 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1057 = bitcast %union.rec* %1056 to %struct.word_type*
  %1058 = getelementptr inbounds %struct.word_type, %struct.word_type* %1057, i32 0, i32 0
  %1059 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1058, i32 0, i64 0
  %1060 = getelementptr inbounds %struct.LIST, %struct.LIST* %1059, i32 0, i32 0
  %1061 = load %union.rec*, %union.rec** %1060, align 8
  %1062 = load %union.rec*, %union.rec** @zz_res, align 8
  %1063 = bitcast %union.rec* %1062 to %struct.word_type*
  %1064 = getelementptr inbounds %struct.word_type, %struct.word_type* %1063, i32 0, i32 0
  %1065 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1064, i32 0, i64 0
  %1066 = getelementptr inbounds %struct.LIST, %struct.LIST* %1065, i32 0, i32 0
  store %union.rec* %1061, %union.rec** %1066, align 8
  %1067 = load %union.rec*, %union.rec** @zz_res, align 8
  %1068 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1069 = bitcast %union.rec* %1068 to %struct.word_type*
  %1070 = getelementptr inbounds %struct.word_type, %struct.word_type* %1069, i32 0, i32 0
  %1071 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1070, i32 0, i64 0
  %1072 = getelementptr inbounds %struct.LIST, %struct.LIST* %1071, i32 0, i32 0
  %1073 = load %union.rec*, %union.rec** %1072, align 8
  %1074 = bitcast %union.rec* %1073 to %struct.word_type*
  %1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %1074, i32 0, i32 0
  %1076 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1075, i32 0, i64 0
  %1077 = getelementptr inbounds %struct.LIST, %struct.LIST* %1076, i32 0, i32 1
  store %union.rec* %1067, %union.rec** %1077, align 8
  %1078 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1079 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1080 = bitcast %union.rec* %1079 to %struct.word_type*
  %1081 = getelementptr inbounds %struct.word_type, %struct.word_type* %1080, i32 0, i32 0
  %1082 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1081, i32 0, i64 0
  %1083 = getelementptr inbounds %struct.LIST, %struct.LIST* %1082, i32 0, i32 1
  store %union.rec* %1078, %union.rec** %1083, align 8
  %1084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1085 = bitcast %union.rec* %1084 to %struct.word_type*
  %1086 = getelementptr inbounds %struct.word_type, %struct.word_type* %1085, i32 0, i32 0
  %1087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1086, i32 0, i64 0
  %1088 = getelementptr inbounds %struct.LIST, %struct.LIST* %1087, i32 0, i32 0
  store %union.rec* %1078, %union.rec** %1088, align 8
  %1089 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1090

; <label>:1090                                    ; preds = %1049, %1048
  %1091 = phi %union.rec* [ null, %1048 ], [ %1089, %1049 ]
  %1092 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1092, %union.rec** @zz_res, align 8
  %1093 = load %union.rec*, %union.rec** %start_search, align 8
  %1094 = bitcast %union.rec* %1093 to %struct.word_type*
  %1095 = getelementptr inbounds %struct.word_type, %struct.word_type* %1094, i32 0, i32 0
  %1096 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1095, i32 0, i64 0
  %1097 = getelementptr inbounds %struct.LIST, %struct.LIST* %1096, i32 0, i32 1
  %1098 = load %union.rec*, %union.rec** %1097, align 8
  store %union.rec* %1098, %union.rec** @zz_hold, align 8
  %1099 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1100 = icmp eq %union.rec* %1099, null
  br i1 %1100, label %1101, label %1103

; <label>:1101                                    ; preds = %1090
  %1102 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1151

; <label>:1103                                    ; preds = %1090
  %1104 = load %union.rec*, %union.rec** @zz_res, align 8
  %1105 = icmp eq %union.rec* %1104, null
  br i1 %1105, label %1106, label %1108

; <label>:1106                                    ; preds = %1103
  %1107 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1149

; <label>:1108                                    ; preds = %1103
  %1109 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1110 = bitcast %union.rec* %1109 to %struct.word_type*
  %1111 = getelementptr inbounds %struct.word_type, %struct.word_type* %1110, i32 0, i32 0
  %1112 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1111, i32 0, i64 0
  %1113 = getelementptr inbounds %struct.LIST, %struct.LIST* %1112, i32 0, i32 0
  %1114 = load %union.rec*, %union.rec** %1113, align 8
  store %union.rec* %1114, %union.rec** @zz_tmp, align 8
  %1115 = load %union.rec*, %union.rec** @zz_res, align 8
  %1116 = bitcast %union.rec* %1115 to %struct.word_type*
  %1117 = getelementptr inbounds %struct.word_type, %struct.word_type* %1116, i32 0, i32 0
  %1118 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1117, i32 0, i64 0
  %1119 = getelementptr inbounds %struct.LIST, %struct.LIST* %1118, i32 0, i32 0
  %1120 = load %union.rec*, %union.rec** %1119, align 8
  %1121 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1122 = bitcast %union.rec* %1121 to %struct.word_type*
  %1123 = getelementptr inbounds %struct.word_type, %struct.word_type* %1122, i32 0, i32 0
  %1124 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1123, i32 0, i64 0
  %1125 = getelementptr inbounds %struct.LIST, %struct.LIST* %1124, i32 0, i32 0
  store %union.rec* %1120, %union.rec** %1125, align 8
  %1126 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1127 = load %union.rec*, %union.rec** @zz_res, align 8
  %1128 = bitcast %union.rec* %1127 to %struct.word_type*
  %1129 = getelementptr inbounds %struct.word_type, %struct.word_type* %1128, i32 0, i32 0
  %1130 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1129, i32 0, i64 0
  %1131 = getelementptr inbounds %struct.LIST, %struct.LIST* %1130, i32 0, i32 0
  %1132 = load %union.rec*, %union.rec** %1131, align 8
  %1133 = bitcast %union.rec* %1132 to %struct.word_type*
  %1134 = getelementptr inbounds %struct.word_type, %struct.word_type* %1133, i32 0, i32 0
  %1135 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1134, i32 0, i64 0
  %1136 = getelementptr inbounds %struct.LIST, %struct.LIST* %1135, i32 0, i32 1
  store %union.rec* %1126, %union.rec** %1136, align 8
  %1137 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1138 = load %union.rec*, %union.rec** @zz_res, align 8
  %1139 = bitcast %union.rec* %1138 to %struct.word_type*
  %1140 = getelementptr inbounds %struct.word_type, %struct.word_type* %1139, i32 0, i32 0
  %1141 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1140, i32 0, i64 0
  %1142 = getelementptr inbounds %struct.LIST, %struct.LIST* %1141, i32 0, i32 0
  store %union.rec* %1137, %union.rec** %1142, align 8
  %1143 = load %union.rec*, %union.rec** @zz_res, align 8
  %1144 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1145 = bitcast %union.rec* %1144 to %struct.word_type*
  %1146 = getelementptr inbounds %struct.word_type, %struct.word_type* %1145, i32 0, i32 0
  %1147 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1146, i32 0, i64 0
  %1148 = getelementptr inbounds %struct.LIST, %struct.LIST* %1147, i32 0, i32 1
  store %union.rec* %1143, %union.rec** %1148, align 8
  br label %1149

; <label>:1149                                    ; preds = %1108, %1106
  %1150 = phi %union.rec* [ %1107, %1106 ], [ %1143, %1108 ]
  br label %1151

; <label>:1151                                    ; preds = %1149, %1101
  %1152 = phi %union.rec* [ %1102, %1101 ], [ %1150, %1149 ]
  %1153 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1154 = zext i8 %1153 to i32
  store i32 %1154, i32* @zz_size, align 4
  %1155 = sext i32 %1154 to i64
  %1156 = icmp uge i64 %1155, 265
  br i1 %1156, label %1157, label %1160

; <label>:1157                                    ; preds = %1151
  %1158 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1159 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1158)
  br label %1185

; <label>:1160                                    ; preds = %1151
  %1161 = load i32, i32* @zz_size, align 4
  %1162 = sext i32 %1161 to i64
  %1163 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1162
  %1164 = load %union.rec*, %union.rec** %1163, align 8
  %1165 = icmp eq %union.rec* %1164, null
  br i1 %1165, label %1166, label %1170

; <label>:1166                                    ; preds = %1160
  %1167 = load i32, i32* @zz_size, align 4
  %1168 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1169 = call %union.rec* @GetMemory(i32 %1167, %struct.FILE_POS* %1168)
  store %union.rec* %1169, %union.rec** @zz_hold, align 8
  br label %1184

; <label>:1170                                    ; preds = %1160
  %1171 = load i32, i32* @zz_size, align 4
  %1172 = sext i32 %1171 to i64
  %1173 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1172
  %1174 = load %union.rec*, %union.rec** %1173, align 8
  store %union.rec* %1174, %union.rec** @zz_hold, align 8
  store %union.rec* %1174, %union.rec** @zz_hold, align 8
  %1175 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1176 = bitcast %union.rec* %1175 to %struct.word_type*
  %1177 = getelementptr inbounds %struct.word_type, %struct.word_type* %1176, i32 0, i32 0
  %1178 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1177, i32 0, i64 0
  %1179 = getelementptr inbounds %struct.LIST, %struct.LIST* %1178, i32 0, i32 0
  %1180 = load %union.rec*, %union.rec** %1179, align 8
  %1181 = load i32, i32* @zz_size, align 4
  %1182 = sext i32 %1181 to i64
  %1183 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1182
  store %union.rec* %1180, %union.rec** %1183, align 8
  br label %1184

; <label>:1184                                    ; preds = %1170, %1166
  br label %1185

; <label>:1185                                    ; preds = %1184, %1157
  %1186 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1187 = bitcast %union.rec* %1186 to %struct.word_type*
  %1188 = getelementptr inbounds %struct.word_type, %struct.word_type* %1187, i32 0, i32 1
  %1189 = bitcast %union.FIRST_UNION* %1188 to %struct.anon*
  %1190 = getelementptr inbounds %struct.anon, %struct.anon* %1189, i32 0, i32 0
  store i8 0, i8* %1190, align 1
  %1191 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1193 = bitcast %union.rec* %1192 to %struct.word_type*
  %1194 = getelementptr inbounds %struct.word_type, %struct.word_type* %1193, i32 0, i32 0
  %1195 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1194, i32 0, i64 1
  %1196 = getelementptr inbounds %struct.LIST, %struct.LIST* %1195, i32 0, i32 1
  store %union.rec* %1191, %union.rec** %1196, align 8
  %1197 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1198 = bitcast %union.rec* %1197 to %struct.word_type*
  %1199 = getelementptr inbounds %struct.word_type, %struct.word_type* %1198, i32 0, i32 0
  %1200 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1199, i32 0, i64 1
  %1201 = getelementptr inbounds %struct.LIST, %struct.LIST* %1200, i32 0, i32 0
  store %union.rec* %1191, %union.rec** %1201, align 8
  %1202 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1203 = bitcast %union.rec* %1202 to %struct.word_type*
  %1204 = getelementptr inbounds %struct.word_type, %struct.word_type* %1203, i32 0, i32 0
  %1205 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1204, i32 0, i64 0
  %1206 = getelementptr inbounds %struct.LIST, %struct.LIST* %1205, i32 0, i32 1
  store %union.rec* %1191, %union.rec** %1206, align 8
  %1207 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1208 = bitcast %union.rec* %1207 to %struct.word_type*
  %1209 = getelementptr inbounds %struct.word_type, %struct.word_type* %1208, i32 0, i32 0
  %1210 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1209, i32 0, i64 0
  %1211 = getelementptr inbounds %struct.LIST, %struct.LIST* %1210, i32 0, i32 0
  store %union.rec* %1191, %union.rec** %1211, align 8
  store %union.rec* %1191, %union.rec** @xx_link, align 8
  %1212 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1212, %union.rec** @zz_res, align 8
  %1213 = load %union.rec*, %union.rec** %tinners, align 8
  store %union.rec* %1213, %union.rec** @zz_hold, align 8
  %1214 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1215 = icmp eq %union.rec* %1214, null
  br i1 %1215, label %1216, label %1218

; <label>:1216                                    ; preds = %1185
  %1217 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1266

; <label>:1218                                    ; preds = %1185
  %1219 = load %union.rec*, %union.rec** @zz_res, align 8
  %1220 = icmp eq %union.rec* %1219, null
  br i1 %1220, label %1221, label %1223

; <label>:1221                                    ; preds = %1218
  %1222 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1264

; <label>:1223                                    ; preds = %1218
  %1224 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1225 = bitcast %union.rec* %1224 to %struct.word_type*
  %1226 = getelementptr inbounds %struct.word_type, %struct.word_type* %1225, i32 0, i32 0
  %1227 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1226, i32 0, i64 0
  %1228 = getelementptr inbounds %struct.LIST, %struct.LIST* %1227, i32 0, i32 0
  %1229 = load %union.rec*, %union.rec** %1228, align 8
  store %union.rec* %1229, %union.rec** @zz_tmp, align 8
  %1230 = load %union.rec*, %union.rec** @zz_res, align 8
  %1231 = bitcast %union.rec* %1230 to %struct.word_type*
  %1232 = getelementptr inbounds %struct.word_type, %struct.word_type* %1231, i32 0, i32 0
  %1233 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1232, i32 0, i64 0
  %1234 = getelementptr inbounds %struct.LIST, %struct.LIST* %1233, i32 0, i32 0
  %1235 = load %union.rec*, %union.rec** %1234, align 8
  %1236 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1237 = bitcast %union.rec* %1236 to %struct.word_type*
  %1238 = getelementptr inbounds %struct.word_type, %struct.word_type* %1237, i32 0, i32 0
  %1239 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1238, i32 0, i64 0
  %1240 = getelementptr inbounds %struct.LIST, %struct.LIST* %1239, i32 0, i32 0
  store %union.rec* %1235, %union.rec** %1240, align 8
  %1241 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1242 = load %union.rec*, %union.rec** @zz_res, align 8
  %1243 = bitcast %union.rec* %1242 to %struct.word_type*
  %1244 = getelementptr inbounds %struct.word_type, %struct.word_type* %1243, i32 0, i32 0
  %1245 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1244, i32 0, i64 0
  %1246 = getelementptr inbounds %struct.LIST, %struct.LIST* %1245, i32 0, i32 0
  %1247 = load %union.rec*, %union.rec** %1246, align 8
  %1248 = bitcast %union.rec* %1247 to %struct.word_type*
  %1249 = getelementptr inbounds %struct.word_type, %struct.word_type* %1248, i32 0, i32 0
  %1250 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1249, i32 0, i64 0
  %1251 = getelementptr inbounds %struct.LIST, %struct.LIST* %1250, i32 0, i32 1
  store %union.rec* %1241, %union.rec** %1251, align 8
  %1252 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1253 = load %union.rec*, %union.rec** @zz_res, align 8
  %1254 = bitcast %union.rec* %1253 to %struct.word_type*
  %1255 = getelementptr inbounds %struct.word_type, %struct.word_type* %1254, i32 0, i32 0
  %1256 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1255, i32 0, i64 0
  %1257 = getelementptr inbounds %struct.LIST, %struct.LIST* %1256, i32 0, i32 0
  store %union.rec* %1252, %union.rec** %1257, align 8
  %1258 = load %union.rec*, %union.rec** @zz_res, align 8
  %1259 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1260 = bitcast %union.rec* %1259 to %struct.word_type*
  %1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %1260, i32 0, i32 0
  %1262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1261, i32 0, i64 0
  %1263 = getelementptr inbounds %struct.LIST, %struct.LIST* %1262, i32 0, i32 1
  store %union.rec* %1258, %union.rec** %1263, align 8
  br label %1264

; <label>:1264                                    ; preds = %1223, %1221
  %1265 = phi %union.rec* [ %1222, %1221 ], [ %1258, %1223 ]
  br label %1266

; <label>:1266                                    ; preds = %1264, %1216
  %1267 = phi %union.rec* [ %1217, %1216 ], [ %1265, %1264 ]
  %1268 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1268, %union.rec** @zz_res, align 8
  %1269 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %1269, %union.rec** @zz_hold, align 8
  %1270 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1271 = icmp eq %union.rec* %1270, null
  br i1 %1271, label %1272, label %1274

; <label>:1272                                    ; preds = %1266
  %1273 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1322

; <label>:1274                                    ; preds = %1266
  %1275 = load %union.rec*, %union.rec** @zz_res, align 8
  %1276 = icmp eq %union.rec* %1275, null
  br i1 %1276, label %1277, label %1279

; <label>:1277                                    ; preds = %1274
  %1278 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1320

; <label>:1279                                    ; preds = %1274
  %1280 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1281 = bitcast %union.rec* %1280 to %struct.word_type*
  %1282 = getelementptr inbounds %struct.word_type, %struct.word_type* %1281, i32 0, i32 0
  %1283 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1282, i32 0, i64 1
  %1284 = getelementptr inbounds %struct.LIST, %struct.LIST* %1283, i32 0, i32 0
  %1285 = load %union.rec*, %union.rec** %1284, align 8
  store %union.rec* %1285, %union.rec** @zz_tmp, align 8
  %1286 = load %union.rec*, %union.rec** @zz_res, align 8
  %1287 = bitcast %union.rec* %1286 to %struct.word_type*
  %1288 = getelementptr inbounds %struct.word_type, %struct.word_type* %1287, i32 0, i32 0
  %1289 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1288, i32 0, i64 1
  %1290 = getelementptr inbounds %struct.LIST, %struct.LIST* %1289, i32 0, i32 0
  %1291 = load %union.rec*, %union.rec** %1290, align 8
  %1292 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1293 = bitcast %union.rec* %1292 to %struct.word_type*
  %1294 = getelementptr inbounds %struct.word_type, %struct.word_type* %1293, i32 0, i32 0
  %1295 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1294, i32 0, i64 1
  %1296 = getelementptr inbounds %struct.LIST, %struct.LIST* %1295, i32 0, i32 0
  store %union.rec* %1291, %union.rec** %1296, align 8
  %1297 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1298 = load %union.rec*, %union.rec** @zz_res, align 8
  %1299 = bitcast %union.rec* %1298 to %struct.word_type*
  %1300 = getelementptr inbounds %struct.word_type, %struct.word_type* %1299, i32 0, i32 0
  %1301 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1300, i32 0, i64 1
  %1302 = getelementptr inbounds %struct.LIST, %struct.LIST* %1301, i32 0, i32 0
  %1303 = load %union.rec*, %union.rec** %1302, align 8
  %1304 = bitcast %union.rec* %1303 to %struct.word_type*
  %1305 = getelementptr inbounds %struct.word_type, %struct.word_type* %1304, i32 0, i32 0
  %1306 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1305, i32 0, i64 1
  %1307 = getelementptr inbounds %struct.LIST, %struct.LIST* %1306, i32 0, i32 1
  store %union.rec* %1297, %union.rec** %1307, align 8
  %1308 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1309 = load %union.rec*, %union.rec** @zz_res, align 8
  %1310 = bitcast %union.rec* %1309 to %struct.word_type*
  %1311 = getelementptr inbounds %struct.word_type, %struct.word_type* %1310, i32 0, i32 0
  %1312 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1311, i32 0, i64 1
  %1313 = getelementptr inbounds %struct.LIST, %struct.LIST* %1312, i32 0, i32 0
  store %union.rec* %1308, %union.rec** %1313, align 8
  %1314 = load %union.rec*, %union.rec** @zz_res, align 8
  %1315 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1316 = bitcast %union.rec* %1315 to %struct.word_type*
  %1317 = getelementptr inbounds %struct.word_type, %struct.word_type* %1316, i32 0, i32 0
  %1318 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1317, i32 0, i64 1
  %1319 = getelementptr inbounds %struct.LIST, %struct.LIST* %1318, i32 0, i32 1
  store %union.rec* %1314, %union.rec** %1319, align 8
  br label %1320

; <label>:1320                                    ; preds = %1279, %1277
  %1321 = phi %union.rec* [ %1278, %1277 ], [ %1314, %1279 ]
  br label %1322

; <label>:1322                                    ; preds = %1320, %1272
  %1323 = phi %union.rec* [ %1273, %1272 ], [ %1321, %1320 ]
  br label %937

; <label>:1324                                    ; preds = %937
  %1325 = load %union.rec*, %union.rec** %tinners, align 8
  call void @FlushInners(%union.rec* %1325, %union.rec* null)
  br label %1326

; <label>:1326                                    ; preds = %1324, %854
  %1327 = load %union.rec*, %union.rec** %inners, align 8
  %1328 = icmp ne %union.rec* %1327, null
  br i1 %1328, label %1329, label %1331

; <label>:1329                                    ; preds = %1326
  %1330 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %1330, %union.rec* null)
  br label %1331

; <label>:1331                                    ; preds = %1329, %1326
  %1332 = load %union.rec*, %union.rec** %dest_index, align 8
  %1333 = bitcast %union.rec* %1332 to %struct.word_type*
  %1334 = getelementptr inbounds %struct.word_type, %struct.word_type* %1333, i32 0, i32 2
  %1335 = bitcast %union.SECOND_UNION* %1334 to %struct.anon.2*
  %1336 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1335, i32 0, i32 2
  %1337 = load i16, i16* %1336, align 2
  %1338 = lshr i16 %1337, 5
  %1339 = and i16 %1338, 1
  %1340 = zext i16 %1339 to i32
  %1341 = icmp ne i32 %1340, 0
  br i1 %1341, label %1342, label %1380

; <label>:1342                                    ; preds = %1331
  %1343 = load %union.rec*, %union.rec** %dest_index, align 8
  %1344 = bitcast %union.rec* %1343 to %struct.word_type*
  %1345 = getelementptr inbounds %struct.word_type, %struct.word_type* %1344, i32 0, i32 2
  %1346 = bitcast %union.SECOND_UNION* %1345 to %struct.anon.2*
  %1347 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1346, i32 0, i32 2
  %1348 = load i16, i16* %1347, align 2
  %1349 = and i16 %1348, -33
  store i16 %1349, i16* %1347, align 2
  %1350 = load %union.rec*, %union.rec** %dest_index, align 8
  %1351 = bitcast %union.rec* %1350 to %struct.word_type*
  %1352 = getelementptr inbounds %struct.word_type, %struct.word_type* %1351, i32 0, i32 0
  %1353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1352, i32 0, i64 1
  %1354 = getelementptr inbounds %struct.LIST, %struct.LIST* %1353, i32 0, i32 1
  %1355 = load %union.rec*, %union.rec** %1354, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 0
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 0
  %1360 = load %union.rec*, %union.rec** %1359, align 8
  store %union.rec* %1360, %union.rec** %y, align 8
  br label %1361

; <label>:1361                                    ; preds = %1371, %1342
  %1362 = load %union.rec*, %union.rec** %y, align 8
  %1363 = bitcast %union.rec* %1362 to %struct.word_type*
  %1364 = getelementptr inbounds %struct.word_type, %struct.word_type* %1363, i32 0, i32 1
  %1365 = bitcast %union.FIRST_UNION* %1364 to %struct.anon*
  %1366 = getelementptr inbounds %struct.anon, %struct.anon* %1365, i32 0, i32 0
  %1367 = load i8, i8* %1366, align 1
  %1368 = zext i8 %1367 to i32
  %1369 = icmp eq i32 %1368, 0
  br i1 %1369, label %1370, label %1378

; <label>:1370                                    ; preds = %1361
  br label %1371

; <label>:1371                                    ; preds = %1370
  %1372 = load %union.rec*, %union.rec** %y, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 0
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 0
  %1377 = load %union.rec*, %union.rec** %1376, align 8
  store %union.rec* %1377, %union.rec** %y, align 8
  br label %1361

; <label>:1378                                    ; preds = %1361
  %1379 = load %union.rec*, %union.rec** %y, align 8
  call void @FlushGalley(%union.rec* %1379)
  br label %1380

; <label>:1380                                    ; preds = %16, %1378, %1331
  ret void
}

declare void @ExpandRecursives(%union.rec*) #1

declare void @AdjustSize(%union.rec*, i32, i32, i32) #1

declare void @Promote(%union.rec*, %union.rec*, %union.rec*, i32) #1

declare void @DetachGalley(%union.rec*) #1

declare void @FlushInners(%union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define void @TransferEnd(%union.rec* %x) #0 {
  %1 = alloca %union.rec*, align 8
  %recs = alloca %union.rec*, align 8
  %inners = alloca %union.rec*, align 8
  %nothing = alloca %union.rec*, align 8
  %z = alloca %union.rec*, align 8
  %env = alloca %union.rec*, align 8
  %dest = alloca %union.rec*, align 8
  %hd = alloca %union.rec*, align 8
  %dest_index = alloca %union.rec*, align 8
  %y = alloca %union.rec*, align 8
  %start_search = alloca %union.rec*, align 8
  %tinners = alloca %union.rec*, align 8
  %index = alloca %union.rec*, align 8
  store %union.rec* %x, %union.rec** %1, align 8
  %2 = load i32, i32* @itop, align 4
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %3
  %5 = load %union.rec*, %union.rec** %4, align 8
  %6 = bitcast %union.rec* %5 to %struct.word_type*
  %7 = getelementptr inbounds %struct.word_type, %struct.word_type* %6, i32 0, i32 0
  %8 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %7, i32 0, i64 0
  %9 = getelementptr inbounds %struct.LIST, %struct.LIST* %8, i32 0, i32 1
  %10 = load %union.rec*, %union.rec** %9, align 8
  %11 = load i32, i32* @itop, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %12
  %14 = load %union.rec*, %union.rec** %13, align 8
  %15 = icmp eq %union.rec* %10, %14
  br i1 %15, label %16, label %25

; <label>:16                                      ; preds = %0
  %17 = load %union.rec*, %union.rec** %1, align 8
  %18 = call i32 @DisposeObject(%union.rec* %17)
  %19 = load i32, i32* @itop, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* @itop, align 4
  %21 = sext i32 %19 to i64
  %22 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %21
  %23 = load %union.rec*, %union.rec** %22, align 8
  %24 = call i32 @DisposeObject(%union.rec* %23)
  br label %2250

; <label>:25                                      ; preds = %0
  %26 = load i32, i32* @itop, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %27
  %29 = load %union.rec*, %union.rec** %28, align 8
  %30 = bitcast %union.rec* %29 to %struct.word_type*
  %31 = getelementptr inbounds %struct.word_type, %struct.word_type* %30, i32 0, i32 0
  %32 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %31, i32 0, i64 0
  %33 = getelementptr inbounds %struct.LIST, %struct.LIST* %32, i32 0, i32 1
  %34 = load %union.rec*, %union.rec** %33, align 8
  %35 = bitcast %union.rec* %34 to %struct.word_type*
  %36 = getelementptr inbounds %struct.word_type, %struct.word_type* %35, i32 0, i32 0
  %37 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %36, i32 0, i64 1
  %38 = getelementptr inbounds %struct.LIST, %struct.LIST* %37, i32 0, i32 0
  %39 = load %union.rec*, %union.rec** %38, align 8
  store %union.rec* %39, %union.rec** %dest_index, align 8
  br label %40

; <label>:40                                      ; preds = %50, %25
  %41 = load %union.rec*, %union.rec** %dest_index, align 8
  %42 = bitcast %union.rec* %41 to %struct.word_type*
  %43 = getelementptr inbounds %struct.word_type, %struct.word_type* %42, i32 0, i32 1
  %44 = bitcast %union.FIRST_UNION* %43 to %struct.anon*
  %45 = getelementptr inbounds %struct.anon, %struct.anon* %44, i32 0, i32 0
  %46 = load i8, i8* %45, align 1
  %47 = zext i8 %46 to i32
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %57

; <label>:49                                      ; preds = %40
  br label %50

; <label>:50                                      ; preds = %49
  %51 = load %union.rec*, %union.rec** %dest_index, align 8
  %52 = bitcast %union.rec* %51 to %struct.word_type*
  %53 = getelementptr inbounds %struct.word_type, %struct.word_type* %52, i32 0, i32 0
  %54 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %53, i32 0, i64 1
  %55 = getelementptr inbounds %struct.LIST, %struct.LIST* %54, i32 0, i32 0
  %56 = load %union.rec*, %union.rec** %55, align 8
  store %union.rec* %56, %union.rec** %dest_index, align 8
  br label %40

; <label>:57                                      ; preds = %40
  %58 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 8), align 1
  %59 = zext i8 %58 to i32
  store i32 %59, i32* @zz_size, align 4
  %60 = sext i32 %59 to i64
  %61 = icmp uge i64 %60, 265
  br i1 %61, label %62, label %65

; <label>:62                                      ; preds = %57
  %63 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %64 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %63)
  br label %90

; <label>:65                                      ; preds = %57
  %66 = load i32, i32* @zz_size, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %67
  %69 = load %union.rec*, %union.rec** %68, align 8
  %70 = icmp eq %union.rec* %69, null
  br i1 %70, label %71, label %75

; <label>:71                                      ; preds = %65
  %72 = load i32, i32* @zz_size, align 4
  %73 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %74 = call %union.rec* @GetMemory(i32 %72, %struct.FILE_POS* %73)
  store %union.rec* %74, %union.rec** @zz_hold, align 8
  br label %89

; <label>:75                                      ; preds = %65
  %76 = load i32, i32* @zz_size, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %77
  %79 = load %union.rec*, %union.rec** %78, align 8
  store %union.rec* %79, %union.rec** @zz_hold, align 8
  store %union.rec* %79, %union.rec** @zz_hold, align 8
  %80 = load %union.rec*, %union.rec** @zz_hold, align 8
  %81 = bitcast %union.rec* %80 to %struct.word_type*
  %82 = getelementptr inbounds %struct.word_type, %struct.word_type* %81, i32 0, i32 0
  %83 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %82, i32 0, i64 0
  %84 = getelementptr inbounds %struct.LIST, %struct.LIST* %83, i32 0, i32 0
  %85 = load %union.rec*, %union.rec** %84, align 8
  %86 = load i32, i32* @zz_size, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %87
  store %union.rec* %85, %union.rec** %88, align 8
  br label %89

; <label>:89                                      ; preds = %75, %71
  br label %90

; <label>:90                                      ; preds = %89, %62
  %91 = load %union.rec*, %union.rec** @zz_hold, align 8
  %92 = bitcast %union.rec* %91 to %struct.word_type*
  %93 = getelementptr inbounds %struct.word_type, %struct.word_type* %92, i32 0, i32 1
  %94 = bitcast %union.FIRST_UNION* %93 to %struct.anon*
  %95 = getelementptr inbounds %struct.anon, %struct.anon* %94, i32 0, i32 0
  store i8 8, i8* %95, align 1
  %96 = load %union.rec*, %union.rec** @zz_hold, align 8
  %97 = load %union.rec*, %union.rec** @zz_hold, align 8
  %98 = bitcast %union.rec* %97 to %struct.word_type*
  %99 = getelementptr inbounds %struct.word_type, %struct.word_type* %98, i32 0, i32 0
  %100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %99, i32 0, i64 1
  %101 = getelementptr inbounds %struct.LIST, %struct.LIST* %100, i32 0, i32 1
  store %union.rec* %96, %union.rec** %101, align 8
  %102 = load %union.rec*, %union.rec** @zz_hold, align 8
  %103 = bitcast %union.rec* %102 to %struct.word_type*
  %104 = getelementptr inbounds %struct.word_type, %struct.word_type* %103, i32 0, i32 0
  %105 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %104, i32 0, i64 1
  %106 = getelementptr inbounds %struct.LIST, %struct.LIST* %105, i32 0, i32 0
  store %union.rec* %96, %union.rec** %106, align 8
  %107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %108 = bitcast %union.rec* %107 to %struct.word_type*
  %109 = getelementptr inbounds %struct.word_type, %struct.word_type* %108, i32 0, i32 0
  %110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %109, i32 0, i64 0
  %111 = getelementptr inbounds %struct.LIST, %struct.LIST* %110, i32 0, i32 1
  store %union.rec* %96, %union.rec** %111, align 8
  %112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %113 = bitcast %union.rec* %112 to %struct.word_type*
  %114 = getelementptr inbounds %struct.word_type, %struct.word_type* %113, i32 0, i32 0
  %115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %114, i32 0, i64 0
  %116 = getelementptr inbounds %struct.LIST, %struct.LIST* %115, i32 0, i32 0
  store %union.rec* %96, %union.rec** %116, align 8
  store %union.rec* %96, %union.rec** %hd, align 8
  %117 = load %union.rec*, %union.rec** %1, align 8
  %118 = bitcast %union.rec* %117 to %struct.word_type*
  %119 = getelementptr inbounds %struct.word_type, %struct.word_type* %118, i32 0, i32 1
  %120 = bitcast %union.FIRST_UNION* %119 to %struct.FILE_POS*
  %121 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %120, i32 0, i32 2
  %122 = load i16, i16* %121, align 2
  %123 = load %union.rec*, %union.rec** %hd, align 8
  %124 = bitcast %union.rec* %123 to %struct.word_type*
  %125 = getelementptr inbounds %struct.word_type, %struct.word_type* %124, i32 0, i32 1
  %126 = bitcast %union.FIRST_UNION* %125 to %struct.FILE_POS*
  %127 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %126, i32 0, i32 2
  store i16 %122, i16* %127, align 2
  %128 = load %union.rec*, %union.rec** %1, align 8
  %129 = bitcast %union.rec* %128 to %struct.word_type*
  %130 = getelementptr inbounds %struct.word_type, %struct.word_type* %129, i32 0, i32 1
  %131 = bitcast %union.FIRST_UNION* %130 to %struct.FILE_POS*
  %132 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %131, i32 0, i32 3
  %133 = load i32, i32* %132, align 4
  %134 = and i32 %133, 1048575
  %135 = load %union.rec*, %union.rec** %hd, align 8
  %136 = bitcast %union.rec* %135 to %struct.word_type*
  %137 = getelementptr inbounds %struct.word_type, %struct.word_type* %136, i32 0, i32 1
  %138 = bitcast %union.FIRST_UNION* %137 to %struct.FILE_POS*
  %139 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = and i32 %134, 1048575
  %142 = and i32 %140, -1048576
  %143 = or i32 %142, %141
  store i32 %143, i32* %139, align 4
  %144 = load %union.rec*, %union.rec** %1, align 8
  %145 = bitcast %union.rec* %144 to %struct.word_type*
  %146 = getelementptr inbounds %struct.word_type, %struct.word_type* %145, i32 0, i32 1
  %147 = bitcast %union.FIRST_UNION* %146 to %struct.FILE_POS*
  %148 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = lshr i32 %149, 20
  %151 = load %union.rec*, %union.rec** %hd, align 8
  %152 = bitcast %union.rec* %151 to %struct.word_type*
  %153 = getelementptr inbounds %struct.word_type, %struct.word_type* %152, i32 0, i32 1
  %154 = bitcast %union.FIRST_UNION* %153 to %struct.FILE_POS*
  %155 = getelementptr inbounds %struct.FILE_POS, %struct.FILE_POS* %154, i32 0, i32 3
  %156 = load i32, i32* %155, align 4
  %157 = and i32 %150, 4095
  %158 = shl i32 %157, 20
  %159 = and i32 %156, 1048575
  %160 = or i32 %159, %158
  store i32 %160, i32* %155, align 4
  %161 = load %union.rec*, %union.rec** %hd, align 8
  %162 = bitcast %union.rec* %161 to %struct.word_type*
  %163 = getelementptr inbounds %struct.word_type, %struct.word_type* %162, i32 0, i32 2
  %164 = bitcast %union.SECOND_UNION* %163 to %struct.anon.2*
  %165 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %164, i32 0, i32 2
  %166 = load i16, i16* %165, align 2
  %167 = and i16 %166, -4097
  store i16 %167, i16* %165, align 2
  %168 = load %union.rec*, %union.rec** %hd, align 8
  %169 = bitcast %union.rec* %168 to %struct.head_type*
  %170 = getelementptr inbounds %struct.head_type, %struct.head_type* %169, i32 0, i32 14
  store %union.rec* null, %union.rec** %170, align 8
  %171 = load %union.rec*, %union.rec** %hd, align 8
  %172 = bitcast %union.rec* %171 to %struct.head_type*
  %173 = getelementptr inbounds %struct.head_type, %struct.head_type* %172, i32 0, i32 13
  store %union.rec* null, %union.rec** %173, align 8
  %174 = load %union.rec*, %union.rec** %hd, align 8
  %175 = bitcast %union.rec* %174 to %struct.head_type*
  %176 = getelementptr inbounds %struct.head_type, %struct.head_type* %175, i32 0, i32 11
  store %union.rec* null, %union.rec** %176, align 8
  %177 = load %union.rec*, %union.rec** %hd, align 8
  %178 = bitcast %union.rec* %177 to %struct.head_type*
  %179 = getelementptr inbounds %struct.head_type, %struct.head_type* %178, i32 0, i32 12
  store %union.rec* null, %union.rec** %179, align 8
  %180 = load %union.rec*, %union.rec** %hd, align 8
  %181 = bitcast %union.rec* %180 to %struct.head_type*
  %182 = getelementptr inbounds %struct.head_type, %struct.head_type* %181, i32 0, i32 9
  store %union.rec* null, %union.rec** %182, align 8
  %183 = load %union.rec*, %union.rec** %hd, align 8
  %184 = bitcast %union.rec* %183 to %struct.head_type*
  %185 = getelementptr inbounds %struct.head_type, %struct.head_type* %184, i32 0, i32 8
  store %union.rec* null, %union.rec** %185, align 8
  %186 = load %union.rec*, %union.rec** %hd, align 8
  %187 = bitcast %union.rec* %186 to %struct.word_type*
  %188 = getelementptr inbounds %struct.word_type, %struct.word_type* %187, i32 0, i32 2
  %189 = bitcast %union.SECOND_UNION* %188 to %struct.anon.2*
  %190 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %189, i32 0, i32 2
  %191 = load i16, i16* %190, align 2
  %192 = and i16 %191, -257
  %193 = or i16 %192, 256
  store i16 %193, i16* %190, align 2
  %194 = load %union.rec*, %union.rec** %hd, align 8
  %195 = bitcast %union.rec* %194 to %struct.head_type*
  %196 = getelementptr inbounds %struct.head_type, %struct.head_type* %195, i32 0, i32 7
  store %union.rec* null, %union.rec** %196, align 8
  %197 = load %union.rec*, %union.rec** %hd, align 8
  %198 = bitcast %union.rec* %197 to %struct.closure_type*
  %199 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %198, i32 0, i32 6
  %200 = bitcast %union.anon.12* %199 to %union.rec**
  store %union.rec* null, %union.rec** %200, align 8
  %201 = load %union.rec*, %union.rec** %hd, align 8
  %202 = bitcast %union.rec* %201 to %struct.closure_type*
  %203 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %202, i32 0, i32 5
  store %union.rec* null, %union.rec** %203, align 8
  %204 = load %union.rec*, %union.rec** %hd, align 8
  %205 = bitcast %union.rec* %204 to %struct.word_type*
  %206 = getelementptr inbounds %struct.word_type, %struct.word_type* %205, i32 0, i32 2
  %207 = bitcast %union.SECOND_UNION* %206 to %struct.anon.2*
  %208 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %207, i32 0, i32 0
  store i8 -127, i8* %208, align 1
  %209 = load %union.rec*, %union.rec** %hd, align 8
  %210 = bitcast %union.rec* %209 to %struct.word_type*
  %211 = getelementptr inbounds %struct.word_type, %struct.word_type* %210, i32 0, i32 2
  %212 = bitcast %union.SECOND_UNION* %211 to %struct.anon.2*
  %213 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %212, i32 0, i32 2
  %214 = load i16, i16* %213, align 2
  %215 = and i16 %214, -3
  store i16 %215, i16* %213, align 2
  %216 = load %union.rec*, %union.rec** %hd, align 8
  %217 = bitcast %union.rec* %216 to %struct.word_type*
  %218 = getelementptr inbounds %struct.word_type, %struct.word_type* %217, i32 0, i32 2
  %219 = bitcast %union.SECOND_UNION* %218 to %struct.anon.2*
  %220 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %219, i32 0, i32 2
  %221 = load i16, i16* %220, align 2
  %222 = and i16 %221, -129
  store i16 %222, i16* %220, align 2
  %223 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %224 = zext i8 %223 to i32
  store i32 %224, i32* @zz_size, align 4
  %225 = sext i32 %224 to i64
  %226 = icmp uge i64 %225, 265
  br i1 %226, label %227, label %230

; <label>:227                                     ; preds = %90
  %228 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %229 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %228)
  br label %255

; <label>:230                                     ; preds = %90
  %231 = load i32, i32* @zz_size, align 4
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %232
  %234 = load %union.rec*, %union.rec** %233, align 8
  %235 = icmp eq %union.rec* %234, null
  br i1 %235, label %236, label %240

; <label>:236                                     ; preds = %230
  %237 = load i32, i32* @zz_size, align 4
  %238 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %239 = call %union.rec* @GetMemory(i32 %237, %struct.FILE_POS* %238)
  store %union.rec* %239, %union.rec** @zz_hold, align 8
  br label %254

; <label>:240                                     ; preds = %230
  %241 = load i32, i32* @zz_size, align 4
  %242 = sext i32 %241 to i64
  %243 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %242
  %244 = load %union.rec*, %union.rec** %243, align 8
  store %union.rec* %244, %union.rec** @zz_hold, align 8
  store %union.rec* %244, %union.rec** @zz_hold, align 8
  %245 = load %union.rec*, %union.rec** @zz_hold, align 8
  %246 = bitcast %union.rec* %245 to %struct.word_type*
  %247 = getelementptr inbounds %struct.word_type, %struct.word_type* %246, i32 0, i32 0
  %248 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %247, i32 0, i64 0
  %249 = getelementptr inbounds %struct.LIST, %struct.LIST* %248, i32 0, i32 0
  %250 = load %union.rec*, %union.rec** %249, align 8
  %251 = load i32, i32* @zz_size, align 4
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %252
  store %union.rec* %250, %union.rec** %253, align 8
  br label %254

; <label>:254                                     ; preds = %240, %236
  br label %255

; <label>:255                                     ; preds = %254, %227
  %256 = load %union.rec*, %union.rec** @zz_hold, align 8
  %257 = bitcast %union.rec* %256 to %struct.word_type*
  %258 = getelementptr inbounds %struct.word_type, %struct.word_type* %257, i32 0, i32 1
  %259 = bitcast %union.FIRST_UNION* %258 to %struct.anon*
  %260 = getelementptr inbounds %struct.anon, %struct.anon* %259, i32 0, i32 0
  store i8 0, i8* %260, align 1
  %261 = load %union.rec*, %union.rec** @zz_hold, align 8
  %262 = load %union.rec*, %union.rec** @zz_hold, align 8
  %263 = bitcast %union.rec* %262 to %struct.word_type*
  %264 = getelementptr inbounds %struct.word_type, %struct.word_type* %263, i32 0, i32 0
  %265 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %264, i32 0, i64 1
  %266 = getelementptr inbounds %struct.LIST, %struct.LIST* %265, i32 0, i32 1
  store %union.rec* %261, %union.rec** %266, align 8
  %267 = load %union.rec*, %union.rec** @zz_hold, align 8
  %268 = bitcast %union.rec* %267 to %struct.word_type*
  %269 = getelementptr inbounds %struct.word_type, %struct.word_type* %268, i32 0, i32 0
  %270 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %269, i32 0, i64 1
  %271 = getelementptr inbounds %struct.LIST, %struct.LIST* %270, i32 0, i32 0
  store %union.rec* %261, %union.rec** %271, align 8
  %272 = load %union.rec*, %union.rec** @zz_hold, align 8
  %273 = bitcast %union.rec* %272 to %struct.word_type*
  %274 = getelementptr inbounds %struct.word_type, %struct.word_type* %273, i32 0, i32 0
  %275 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %274, i32 0, i64 0
  %276 = getelementptr inbounds %struct.LIST, %struct.LIST* %275, i32 0, i32 1
  store %union.rec* %261, %union.rec** %276, align 8
  %277 = load %union.rec*, %union.rec** @zz_hold, align 8
  %278 = bitcast %union.rec* %277 to %struct.word_type*
  %279 = getelementptr inbounds %struct.word_type, %struct.word_type* %278, i32 0, i32 0
  %280 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %279, i32 0, i64 0
  %281 = getelementptr inbounds %struct.LIST, %struct.LIST* %280, i32 0, i32 0
  store %union.rec* %261, %union.rec** %281, align 8
  store %union.rec* %261, %union.rec** @xx_link, align 8
  %282 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %282, %union.rec** @zz_res, align 8
  %283 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %283, %union.rec** @zz_hold, align 8
  %284 = load %union.rec*, %union.rec** @zz_hold, align 8
  %285 = icmp eq %union.rec* %284, null
  br i1 %285, label %286, label %288

; <label>:286                                     ; preds = %255
  %287 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %336

; <label>:288                                     ; preds = %255
  %289 = load %union.rec*, %union.rec** @zz_res, align 8
  %290 = icmp eq %union.rec* %289, null
  br i1 %290, label %291, label %293

; <label>:291                                     ; preds = %288
  %292 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %334

; <label>:293                                     ; preds = %288
  %294 = load %union.rec*, %union.rec** @zz_hold, align 8
  %295 = bitcast %union.rec* %294 to %struct.word_type*
  %296 = getelementptr inbounds %struct.word_type, %struct.word_type* %295, i32 0, i32 0
  %297 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %296, i32 0, i64 0
  %298 = getelementptr inbounds %struct.LIST, %struct.LIST* %297, i32 0, i32 0
  %299 = load %union.rec*, %union.rec** %298, align 8
  store %union.rec* %299, %union.rec** @zz_tmp, align 8
  %300 = load %union.rec*, %union.rec** @zz_res, align 8
  %301 = bitcast %union.rec* %300 to %struct.word_type*
  %302 = getelementptr inbounds %struct.word_type, %struct.word_type* %301, i32 0, i32 0
  %303 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %302, i32 0, i64 0
  %304 = getelementptr inbounds %struct.LIST, %struct.LIST* %303, i32 0, i32 0
  %305 = load %union.rec*, %union.rec** %304, align 8
  %306 = load %union.rec*, %union.rec** @zz_hold, align 8
  %307 = bitcast %union.rec* %306 to %struct.word_type*
  %308 = getelementptr inbounds %struct.word_type, %struct.word_type* %307, i32 0, i32 0
  %309 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %308, i32 0, i64 0
  %310 = getelementptr inbounds %struct.LIST, %struct.LIST* %309, i32 0, i32 0
  store %union.rec* %305, %union.rec** %310, align 8
  %311 = load %union.rec*, %union.rec** @zz_hold, align 8
  %312 = load %union.rec*, %union.rec** @zz_res, align 8
  %313 = bitcast %union.rec* %312 to %struct.word_type*
  %314 = getelementptr inbounds %struct.word_type, %struct.word_type* %313, i32 0, i32 0
  %315 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %314, i32 0, i64 0
  %316 = getelementptr inbounds %struct.LIST, %struct.LIST* %315, i32 0, i32 0
  %317 = load %union.rec*, %union.rec** %316, align 8
  %318 = bitcast %union.rec* %317 to %struct.word_type*
  %319 = getelementptr inbounds %struct.word_type, %struct.word_type* %318, i32 0, i32 0
  %320 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %319, i32 0, i64 0
  %321 = getelementptr inbounds %struct.LIST, %struct.LIST* %320, i32 0, i32 1
  store %union.rec* %311, %union.rec** %321, align 8
  %322 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %323 = load %union.rec*, %union.rec** @zz_res, align 8
  %324 = bitcast %union.rec* %323 to %struct.word_type*
  %325 = getelementptr inbounds %struct.word_type, %struct.word_type* %324, i32 0, i32 0
  %326 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %325, i32 0, i64 0
  %327 = getelementptr inbounds %struct.LIST, %struct.LIST* %326, i32 0, i32 0
  store %union.rec* %322, %union.rec** %327, align 8
  %328 = load %union.rec*, %union.rec** @zz_res, align 8
  %329 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %330 = bitcast %union.rec* %329 to %struct.word_type*
  %331 = getelementptr inbounds %struct.word_type, %struct.word_type* %330, i32 0, i32 0
  %332 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %331, i32 0, i64 0
  %333 = getelementptr inbounds %struct.LIST, %struct.LIST* %332, i32 0, i32 1
  store %union.rec* %328, %union.rec** %333, align 8
  br label %334

; <label>:334                                     ; preds = %293, %291
  %335 = phi %union.rec* [ %292, %291 ], [ %328, %293 ]
  br label %336

; <label>:336                                     ; preds = %334, %286
  %337 = phi %union.rec* [ %287, %286 ], [ %335, %334 ]
  %338 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %338, %union.rec** @zz_res, align 8
  %339 = load %union.rec*, %union.rec** %1, align 8
  store %union.rec* %339, %union.rec** @zz_hold, align 8
  %340 = load %union.rec*, %union.rec** @zz_hold, align 8
  %341 = icmp eq %union.rec* %340, null
  br i1 %341, label %342, label %344

; <label>:342                                     ; preds = %336
  %343 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %392

; <label>:344                                     ; preds = %336
  %345 = load %union.rec*, %union.rec** @zz_res, align 8
  %346 = icmp eq %union.rec* %345, null
  br i1 %346, label %347, label %349

; <label>:347                                     ; preds = %344
  %348 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %390

; <label>:349                                     ; preds = %344
  %350 = load %union.rec*, %union.rec** @zz_hold, align 8
  %351 = bitcast %union.rec* %350 to %struct.word_type*
  %352 = getelementptr inbounds %struct.word_type, %struct.word_type* %351, i32 0, i32 0
  %353 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %352, i32 0, i64 1
  %354 = getelementptr inbounds %struct.LIST, %struct.LIST* %353, i32 0, i32 0
  %355 = load %union.rec*, %union.rec** %354, align 8
  store %union.rec* %355, %union.rec** @zz_tmp, align 8
  %356 = load %union.rec*, %union.rec** @zz_res, align 8
  %357 = bitcast %union.rec* %356 to %struct.word_type*
  %358 = getelementptr inbounds %struct.word_type, %struct.word_type* %357, i32 0, i32 0
  %359 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %358, i32 0, i64 1
  %360 = getelementptr inbounds %struct.LIST, %struct.LIST* %359, i32 0, i32 0
  %361 = load %union.rec*, %union.rec** %360, align 8
  %362 = load %union.rec*, %union.rec** @zz_hold, align 8
  %363 = bitcast %union.rec* %362 to %struct.word_type*
  %364 = getelementptr inbounds %struct.word_type, %struct.word_type* %363, i32 0, i32 0
  %365 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %364, i32 0, i64 1
  %366 = getelementptr inbounds %struct.LIST, %struct.LIST* %365, i32 0, i32 0
  store %union.rec* %361, %union.rec** %366, align 8
  %367 = load %union.rec*, %union.rec** @zz_hold, align 8
  %368 = load %union.rec*, %union.rec** @zz_res, align 8
  %369 = bitcast %union.rec* %368 to %struct.word_type*
  %370 = getelementptr inbounds %struct.word_type, %struct.word_type* %369, i32 0, i32 0
  %371 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %370, i32 0, i64 1
  %372 = getelementptr inbounds %struct.LIST, %struct.LIST* %371, i32 0, i32 0
  %373 = load %union.rec*, %union.rec** %372, align 8
  %374 = bitcast %union.rec* %373 to %struct.word_type*
  %375 = getelementptr inbounds %struct.word_type, %struct.word_type* %374, i32 0, i32 0
  %376 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %375, i32 0, i64 1
  %377 = getelementptr inbounds %struct.LIST, %struct.LIST* %376, i32 0, i32 1
  store %union.rec* %367, %union.rec** %377, align 8
  %378 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %379 = load %union.rec*, %union.rec** @zz_res, align 8
  %380 = bitcast %union.rec* %379 to %struct.word_type*
  %381 = getelementptr inbounds %struct.word_type, %struct.word_type* %380, i32 0, i32 0
  %382 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %381, i32 0, i64 1
  %383 = getelementptr inbounds %struct.LIST, %struct.LIST* %382, i32 0, i32 0
  store %union.rec* %378, %union.rec** %383, align 8
  %384 = load %union.rec*, %union.rec** @zz_res, align 8
  %385 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %386 = bitcast %union.rec* %385 to %struct.word_type*
  %387 = getelementptr inbounds %struct.word_type, %struct.word_type* %386, i32 0, i32 0
  %388 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %387, i32 0, i64 1
  %389 = getelementptr inbounds %struct.LIST, %struct.LIST* %388, i32 0, i32 1
  store %union.rec* %384, %union.rec** %389, align 8
  br label %390

; <label>:390                                     ; preds = %349, %347
  %391 = phi %union.rec* [ %348, %347 ], [ %384, %349 ]
  br label %392

; <label>:392                                     ; preds = %390, %342
  %393 = phi %union.rec* [ %343, %342 ], [ %391, %390 ]
  %394 = load %union.rec*, %union.rec** %dest_index, align 8
  %395 = bitcast %union.rec* %394 to %struct.closure_type*
  %396 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %395, i32 0, i32 5
  %397 = load %union.rec*, %union.rec** %396, align 8
  store %union.rec* %397, %union.rec** %dest, align 8
  %398 = load %union.rec*, %union.rec** %dest, align 8
  %399 = call %union.rec* @GetEnv(%union.rec* %398)
  store %union.rec* %399, %union.rec** %env, align 8
  %400 = load %union.rec*, %union.rec** %hd, align 8
  %401 = load %union.rec*, %union.rec** %env, align 8
  %402 = load %union.rec*, %union.rec** %dest, align 8
  %403 = bitcast %union.rec* %402 to %struct.word_type*
  %404 = getelementptr inbounds %struct.word_type, %struct.word_type* %403, i32 0, i32 2
  %405 = bitcast %union.SECOND_UNION* %404 to %struct.anon.2*
  %406 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %405, i32 0, i32 2
  %407 = load i16, i16* %406, align 2
  %408 = lshr i16 %407, 4
  %409 = and i16 %408, 1
  %410 = zext i16 %409 to i32
  %411 = load %union.rec*, %union.rec** %dest, align 8
  %412 = bitcast %union.rec* %411 to %struct.word_type*
  %413 = getelementptr inbounds %struct.word_type, %struct.word_type* %412, i32 0, i32 2
  %414 = bitcast %union.SECOND_UNION* %413 to %struct.anon.2*
  %415 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %414, i32 0, i32 2
  %416 = load i16, i16* %415, align 2
  %417 = lshr i16 %416, 2
  %418 = and i16 %417, 1
  %419 = zext i16 %418 to i32
  %420 = load %union.rec*, %union.rec** %dest, align 8
  %421 = bitcast %union.rec* %420 to %struct.closure_type*
  %422 = getelementptr inbounds %struct.closure_type, %struct.closure_type* %421, i32 0, i32 4
  %423 = bitcast %union.FOURTH_UNION* %422 to %struct.STYLE*
  %424 = load i32, i32* @itop, align 4
  %425 = sext i32 %424 to i64
  %426 = getelementptr inbounds [30 x %struct.CONSTRAINT], [30 x %struct.CONSTRAINT]* @constraints, i32 0, i64 %425
  call void @SizeGalley(%union.rec* %400, %union.rec* %401, i32 %410, i32 %419, i32 0, i32 1, %struct.STYLE* %423, %struct.CONSTRAINT* %426, %union.rec* null, %union.rec** %nothing, %union.rec** %recs, %union.rec** %inners, %union.rec* null)
  %427 = load %union.rec*, %union.rec** %recs, align 8
  %428 = icmp ne %union.rec* %427, null
  br i1 %428, label %429, label %431

; <label>:429                                     ; preds = %392
  %430 = load %union.rec*, %union.rec** %recs, align 8
  call void @ExpandRecursives(%union.rec* %430)
  br label %431

; <label>:431                                     ; preds = %429, %392
  %432 = load %union.rec*, %union.rec** %dest_index, align 8
  %433 = bitcast %union.rec* %432 to %struct.word_type*
  %434 = getelementptr inbounds %struct.word_type, %struct.word_type* %433, i32 0, i32 0
  %435 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %434, i32 0, i64 1
  %436 = getelementptr inbounds %struct.LIST, %struct.LIST* %435, i32 0, i32 1
  %437 = load %union.rec*, %union.rec** %436, align 8
  %438 = bitcast %union.rec* %437 to %struct.word_type*
  %439 = getelementptr inbounds %struct.word_type, %struct.word_type* %438, i32 0, i32 0
  %440 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %439, i32 0, i64 0
  %441 = getelementptr inbounds %struct.LIST, %struct.LIST* %440, i32 0, i32 0
  %442 = load %union.rec*, %union.rec** %441, align 8
  store %union.rec* %442, %union.rec** %start_search, align 8
  %443 = load %union.rec*, %union.rec** %dest, align 8
  %444 = load %union.rec*, %union.rec** %hd, align 8
  %445 = bitcast %union.rec* %444 to %struct.word_type*
  %446 = getelementptr inbounds %struct.word_type, %struct.word_type* %445, i32 0, i32 3
  %447 = bitcast %union.THIRD_UNION* %446 to %struct.anon.6*
  %448 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %447, i32 0, i32 0
  %449 = getelementptr inbounds [2 x i32], [2 x i32]* %448, i32 0, i64 0
  %450 = load i32, i32* %449, align 4
  %451 = load %union.rec*, %union.rec** %hd, align 8
  %452 = bitcast %union.rec* %451 to %struct.word_type*
  %453 = getelementptr inbounds %struct.word_type, %struct.word_type* %452, i32 0, i32 3
  %454 = bitcast %union.THIRD_UNION* %453 to %struct.anon.6*
  %455 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %454, i32 0, i32 1
  %456 = getelementptr inbounds [2 x i32], [2 x i32]* %455, i32 0, i64 0
  %457 = load i32, i32* %456, align 4
  call void @AdjustSize(%union.rec* %443, i32 %450, i32 %457, i32 0)
  %458 = load %union.rec*, %union.rec** %dest, align 8
  %459 = bitcast %union.rec* %458 to %struct.word_type*
  %460 = getelementptr inbounds %struct.word_type, %struct.word_type* %459, i32 0, i32 2
  %461 = bitcast %union.SECOND_UNION* %460 to %struct.anon.2*
  %462 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %461, i32 0, i32 2
  %463 = load i16, i16* %462, align 2
  %464 = lshr i16 %463, 4
  %465 = and i16 %464, 1
  %466 = zext i16 %465 to i32
  %467 = icmp ne i32 %466, 0
  br i1 %467, label %516, label %468

; <label>:468                                     ; preds = %431
  %469 = load %union.rec*, %union.rec** %hd, align 8
  %470 = bitcast %union.rec* %469 to %struct.word_type*
  %471 = getelementptr inbounds %struct.word_type, %struct.word_type* %470, i32 0, i32 0
  %472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %471, i32 0, i64 0
  %473 = getelementptr inbounds %struct.LIST, %struct.LIST* %472, i32 0, i32 0
  %474 = load %union.rec*, %union.rec** %473, align 8
  %475 = bitcast %union.rec* %474 to %struct.word_type*
  %476 = getelementptr inbounds %struct.word_type, %struct.word_type* %475, i32 0, i32 0
  %477 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %476, i32 0, i64 1
  %478 = getelementptr inbounds %struct.LIST, %struct.LIST* %477, i32 0, i32 0
  %479 = load %union.rec*, %union.rec** %478, align 8
  store %union.rec* %479, %union.rec** %z, align 8
  br label %480

; <label>:480                                     ; preds = %490, %468
  %481 = load %union.rec*, %union.rec** %z, align 8
  %482 = bitcast %union.rec* %481 to %struct.word_type*
  %483 = getelementptr inbounds %struct.word_type, %struct.word_type* %482, i32 0, i32 1
  %484 = bitcast %union.FIRST_UNION* %483 to %struct.anon*
  %485 = getelementptr inbounds %struct.anon, %struct.anon* %484, i32 0, i32 0
  %486 = load i8, i8* %485, align 1
  %487 = zext i8 %486 to i32
  %488 = icmp eq i32 %487, 0
  br i1 %488, label %489, label %497

; <label>:489                                     ; preds = %480
  br label %490

; <label>:490                                     ; preds = %489
  %491 = load %union.rec*, %union.rec** %z, align 8
  %492 = bitcast %union.rec* %491 to %struct.word_type*
  %493 = getelementptr inbounds %struct.word_type, %struct.word_type* %492, i32 0, i32 0
  %494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %493, i32 0, i64 1
  %495 = getelementptr inbounds %struct.LIST, %struct.LIST* %494, i32 0, i32 0
  %496 = load %union.rec*, %union.rec** %495, align 8
  store %union.rec* %496, %union.rec** %z, align 8
  br label %480

; <label>:497                                     ; preds = %480
  %498 = load %union.rec*, %union.rec** %dest, align 8
  %499 = load %union.rec*, %union.rec** %z, align 8
  %500 = bitcast %union.rec* %499 to %struct.word_type*
  %501 = getelementptr inbounds %struct.word_type, %struct.word_type* %500, i32 0, i32 3
  %502 = bitcast %union.THIRD_UNION* %501 to %struct.anon.6*
  %503 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %502, i32 0, i32 0
  %504 = getelementptr inbounds [2 x i32], [2 x i32]* %503, i32 0, i64 1
  %505 = load i32, i32* %504, align 4
  %506 = load %union.rec*, %union.rec** %z, align 8
  %507 = bitcast %union.rec* %506 to %struct.word_type*
  %508 = getelementptr inbounds %struct.word_type, %struct.word_type* %507, i32 0, i32 3
  %509 = bitcast %union.THIRD_UNION* %508 to %struct.anon.6*
  %510 = getelementptr inbounds %struct.anon.6, %struct.anon.6* %509, i32 0, i32 1
  %511 = getelementptr inbounds [2 x i32], [2 x i32]* %510, i32 0, i64 1
  %512 = load i32, i32* %511, align 4
  call void @AdjustSize(%union.rec* %498, i32 %505, i32 %512, i32 1)
  %513 = load %union.rec*, %union.rec** %dest, align 8
  %514 = load %union.rec*, %union.rec** %hd, align 8
  %515 = load %union.rec*, %union.rec** %z, align 8
  call void @Interpose(%union.rec* %513, i32 19, %union.rec* %514, %union.rec* %515)
  br label %516

; <label>:516                                     ; preds = %497, %431
  %517 = load %union.rec*, %union.rec** %hd, align 8
  %518 = load %union.rec*, %union.rec** %hd, align 8
  %519 = load %union.rec*, %union.rec** %dest_index, align 8
  call void @Promote(%union.rec* %517, %union.rec* %518, %union.rec* %519, i32 1)
  %520 = load %union.rec*, %union.rec** %hd, align 8
  store %union.rec* %520, %union.rec** @xx_hold, align 8
  br label %521

; <label>:521                                     ; preds = %681, %516
  %522 = load %union.rec*, %union.rec** @xx_hold, align 8
  %523 = bitcast %union.rec* %522 to %struct.word_type*
  %524 = getelementptr inbounds %struct.word_type, %struct.word_type* %523, i32 0, i32 0
  %525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %524, i32 0, i64 1
  %526 = getelementptr inbounds %struct.LIST, %struct.LIST* %525, i32 0, i32 1
  %527 = load %union.rec*, %union.rec** %526, align 8
  %528 = load %union.rec*, %union.rec** @xx_hold, align 8
  %529 = icmp ne %union.rec* %527, %528
  br i1 %529, label %530, label %696

; <label>:530                                     ; preds = %521
  %531 = load %union.rec*, %union.rec** @xx_hold, align 8
  %532 = bitcast %union.rec* %531 to %struct.word_type*
  %533 = getelementptr inbounds %struct.word_type, %struct.word_type* %532, i32 0, i32 0
  %534 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %533, i32 0, i64 1
  %535 = getelementptr inbounds %struct.LIST, %struct.LIST* %534, i32 0, i32 1
  %536 = load %union.rec*, %union.rec** %535, align 8
  store %union.rec* %536, %union.rec** @xx_link, align 8
  %537 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %537, %union.rec** @zz_hold, align 8
  %538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %539 = bitcast %union.rec* %538 to %struct.word_type*
  %540 = getelementptr inbounds %struct.word_type, %struct.word_type* %539, i32 0, i32 0
  %541 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %540, i32 0, i64 1
  %542 = getelementptr inbounds %struct.LIST, %struct.LIST* %541, i32 0, i32 1
  %543 = load %union.rec*, %union.rec** %542, align 8
  %544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %545 = icmp eq %union.rec* %543, %544
  br i1 %545, label %546, label %547

; <label>:546                                     ; preds = %530
  br label %588

; <label>:547                                     ; preds = %530
  %548 = load %union.rec*, %union.rec** @zz_hold, align 8
  %549 = bitcast %union.rec* %548 to %struct.word_type*
  %550 = getelementptr inbounds %struct.word_type, %struct.word_type* %549, i32 0, i32 0
  %551 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %550, i32 0, i64 1
  %552 = getelementptr inbounds %struct.LIST, %struct.LIST* %551, i32 0, i32 1
  %553 = load %union.rec*, %union.rec** %552, align 8
  store %union.rec* %553, %union.rec** @zz_res, align 8
  %554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %555 = bitcast %union.rec* %554 to %struct.word_type*
  %556 = getelementptr inbounds %struct.word_type, %struct.word_type* %555, i32 0, i32 0
  %557 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %556, i32 0, i64 1
  %558 = getelementptr inbounds %struct.LIST, %struct.LIST* %557, i32 0, i32 0
  %559 = load %union.rec*, %union.rec** %558, align 8
  %560 = load %union.rec*, %union.rec** @zz_res, align 8
  %561 = bitcast %union.rec* %560 to %struct.word_type*
  %562 = getelementptr inbounds %struct.word_type, %struct.word_type* %561, i32 0, i32 0
  %563 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %562, i32 0, i64 1
  %564 = getelementptr inbounds %struct.LIST, %struct.LIST* %563, i32 0, i32 0
  store %union.rec* %559, %union.rec** %564, align 8
  %565 = load %union.rec*, %union.rec** @zz_res, align 8
  %566 = load %union.rec*, %union.rec** @zz_hold, align 8
  %567 = bitcast %union.rec* %566 to %struct.word_type*
  %568 = getelementptr inbounds %struct.word_type, %struct.word_type* %567, i32 0, i32 0
  %569 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %568, i32 0, i64 1
  %570 = getelementptr inbounds %struct.LIST, %struct.LIST* %569, i32 0, i32 0
  %571 = load %union.rec*, %union.rec** %570, align 8
  %572 = bitcast %union.rec* %571 to %struct.word_type*
  %573 = getelementptr inbounds %struct.word_type, %struct.word_type* %572, i32 0, i32 0
  %574 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %573, i32 0, i64 1
  %575 = getelementptr inbounds %struct.LIST, %struct.LIST* %574, i32 0, i32 1
  store %union.rec* %565, %union.rec** %575, align 8
  %576 = load %union.rec*, %union.rec** @zz_hold, align 8
  %577 = load %union.rec*, %union.rec** @zz_hold, align 8
  %578 = bitcast %union.rec* %577 to %struct.word_type*
  %579 = getelementptr inbounds %struct.word_type, %struct.word_type* %578, i32 0, i32 0
  %580 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %579, i32 0, i64 1
  %581 = getelementptr inbounds %struct.LIST, %struct.LIST* %580, i32 0, i32 1
  store %union.rec* %576, %union.rec** %581, align 8
  %582 = load %union.rec*, %union.rec** @zz_hold, align 8
  %583 = bitcast %union.rec* %582 to %struct.word_type*
  %584 = getelementptr inbounds %struct.word_type, %struct.word_type* %583, i32 0, i32 0
  %585 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %584, i32 0, i64 1
  %586 = getelementptr inbounds %struct.LIST, %struct.LIST* %585, i32 0, i32 0
  store %union.rec* %576, %union.rec** %586, align 8
  %587 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %588

; <label>:588                                     ; preds = %547, %546
  %589 = phi %union.rec* [ null, %546 ], [ %587, %547 ]
  %590 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %590, %union.rec** @zz_hold, align 8
  %591 = load %union.rec*, %union.rec** @zz_hold, align 8
  %592 = bitcast %union.rec* %591 to %struct.word_type*
  %593 = getelementptr inbounds %struct.word_type, %struct.word_type* %592, i32 0, i32 0
  %594 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %593, i32 0, i64 0
  %595 = getelementptr inbounds %struct.LIST, %struct.LIST* %594, i32 0, i32 1
  %596 = load %union.rec*, %union.rec** %595, align 8
  %597 = load %union.rec*, %union.rec** @zz_hold, align 8
  %598 = icmp eq %union.rec* %596, %597
  br i1 %598, label %599, label %600

; <label>:599                                     ; preds = %588
  br label %641

; <label>:600                                     ; preds = %588
  %601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %602 = bitcast %union.rec* %601 to %struct.word_type*
  %603 = getelementptr inbounds %struct.word_type, %struct.word_type* %602, i32 0, i32 0
  %604 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %603, i32 0, i64 0
  %605 = getelementptr inbounds %struct.LIST, %struct.LIST* %604, i32 0, i32 1
  %606 = load %union.rec*, %union.rec** %605, align 8
  store %union.rec* %606, %union.rec** @zz_res, align 8
  %607 = load %union.rec*, %union.rec** @zz_hold, align 8
  %608 = bitcast %union.rec* %607 to %struct.word_type*
  %609 = getelementptr inbounds %struct.word_type, %struct.word_type* %608, i32 0, i32 0
  %610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %609, i32 0, i64 0
  %611 = getelementptr inbounds %struct.LIST, %struct.LIST* %610, i32 0, i32 0
  %612 = load %union.rec*, %union.rec** %611, align 8
  %613 = load %union.rec*, %union.rec** @zz_res, align 8
  %614 = bitcast %union.rec* %613 to %struct.word_type*
  %615 = getelementptr inbounds %struct.word_type, %struct.word_type* %614, i32 0, i32 0
  %616 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %615, i32 0, i64 0
  %617 = getelementptr inbounds %struct.LIST, %struct.LIST* %616, i32 0, i32 0
  store %union.rec* %612, %union.rec** %617, align 8
  %618 = load %union.rec*, %union.rec** @zz_res, align 8
  %619 = load %union.rec*, %union.rec** @zz_hold, align 8
  %620 = bitcast %union.rec* %619 to %struct.word_type*
  %621 = getelementptr inbounds %struct.word_type, %struct.word_type* %620, i32 0, i32 0
  %622 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %621, i32 0, i64 0
  %623 = getelementptr inbounds %struct.LIST, %struct.LIST* %622, i32 0, i32 0
  %624 = load %union.rec*, %union.rec** %623, align 8
  %625 = bitcast %union.rec* %624 to %struct.word_type*
  %626 = getelementptr inbounds %struct.word_type, %struct.word_type* %625, i32 0, i32 0
  %627 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %626, i32 0, i64 0
  %628 = getelementptr inbounds %struct.LIST, %struct.LIST* %627, i32 0, i32 1
  store %union.rec* %618, %union.rec** %628, align 8
  %629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %630 = load %union.rec*, %union.rec** @zz_hold, align 8
  %631 = bitcast %union.rec* %630 to %struct.word_type*
  %632 = getelementptr inbounds %struct.word_type, %struct.word_type* %631, i32 0, i32 0
  %633 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %632, i32 0, i64 0
  %634 = getelementptr inbounds %struct.LIST, %struct.LIST* %633, i32 0, i32 1
  store %union.rec* %629, %union.rec** %634, align 8
  %635 = load %union.rec*, %union.rec** @zz_hold, align 8
  %636 = bitcast %union.rec* %635 to %struct.word_type*
  %637 = getelementptr inbounds %struct.word_type, %struct.word_type* %636, i32 0, i32 0
  %638 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %637, i32 0, i64 0
  %639 = getelementptr inbounds %struct.LIST, %struct.LIST* %638, i32 0, i32 0
  store %union.rec* %629, %union.rec** %639, align 8
  %640 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %641

; <label>:641                                     ; preds = %600, %599
  %642 = phi %union.rec* [ null, %599 ], [ %640, %600 ]
  %643 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %643, %union.rec** @zz_hold, align 8
  %644 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %644, %union.rec** @zz_hold, align 8
  %645 = load %union.rec*, %union.rec** @zz_hold, align 8
  %646 = bitcast %union.rec* %645 to %struct.word_type*
  %647 = getelementptr inbounds %struct.word_type, %struct.word_type* %646, i32 0, i32 1
  %648 = bitcast %union.FIRST_UNION* %647 to %struct.anon*
  %649 = getelementptr inbounds %struct.anon, %struct.anon* %648, i32 0, i32 0
  %650 = load i8, i8* %649, align 1
  %651 = zext i8 %650 to i32
  %652 = icmp eq i32 %651, 11
  br i1 %652, label %662, label %653

; <label>:653                                     ; preds = %641
  %654 = load %union.rec*, %union.rec** @zz_hold, align 8
  %655 = bitcast %union.rec* %654 to %struct.word_type*
  %656 = getelementptr inbounds %struct.word_type, %struct.word_type* %655, i32 0, i32 1
  %657 = bitcast %union.FIRST_UNION* %656 to %struct.anon*
  %658 = getelementptr inbounds %struct.anon, %struct.anon* %657, i32 0, i32 0
  %659 = load i8, i8* %658, align 1
  %660 = zext i8 %659 to i32
  %661 = icmp eq i32 %660, 12
  br i1 %661, label %662, label %670

; <label>:662                                     ; preds = %653, %641
  %663 = load %union.rec*, %union.rec** @zz_hold, align 8
  %664 = bitcast %union.rec* %663 to %struct.word_type*
  %665 = getelementptr inbounds %struct.word_type, %struct.word_type* %664, i32 0, i32 1
  %666 = bitcast %union.FIRST_UNION* %665 to %struct.anon*
  %667 = getelementptr inbounds %struct.anon, %struct.anon* %666, i32 0, i32 1
  %668 = load i8, i8* %667, align 1
  %669 = zext i8 %668 to i32
  br label %681

; <label>:670                                     ; preds = %653
  %671 = load %union.rec*, %union.rec** @zz_hold, align 8
  %672 = bitcast %union.rec* %671 to %struct.word_type*
  %673 = getelementptr inbounds %struct.word_type, %struct.word_type* %672, i32 0, i32 1
  %674 = bitcast %union.FIRST_UNION* %673 to %struct.anon*
  %675 = getelementptr inbounds %struct.anon, %struct.anon* %674, i32 0, i32 0
  %676 = load i8, i8* %675, align 1
  %677 = zext i8 %676 to i64
  %678 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %677
  %679 = load i8, i8* %678, align 1
  %680 = zext i8 %679 to i32
  br label %681

; <label>:681                                     ; preds = %670, %662
  %682 = phi i32 [ %669, %662 ], [ %680, %670 ]
  store i32 %682, i32* @zz_size, align 4
  %683 = load i32, i32* @zz_size, align 4
  %684 = sext i32 %683 to i64
  %685 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %684
  %686 = load %union.rec*, %union.rec** %685, align 8
  %687 = load %union.rec*, %union.rec** @zz_hold, align 8
  %688 = bitcast %union.rec* %687 to %struct.word_type*
  %689 = getelementptr inbounds %struct.word_type, %struct.word_type* %688, i32 0, i32 0
  %690 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %689, i32 0, i64 0
  %691 = getelementptr inbounds %struct.LIST, %struct.LIST* %690, i32 0, i32 0
  store %union.rec* %686, %union.rec** %691, align 8
  %692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %693 = load i32, i32* @zz_size, align 4
  %694 = sext i32 %693 to i64
  %695 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %694
  store %union.rec* %692, %union.rec** %695, align 8
  br label %521

; <label>:696                                     ; preds = %521
  br label %697

; <label>:697                                     ; preds = %857, %696
  %698 = load %union.rec*, %union.rec** @xx_hold, align 8
  %699 = bitcast %union.rec* %698 to %struct.word_type*
  %700 = getelementptr inbounds %struct.word_type, %struct.word_type* %699, i32 0, i32 0
  %701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %700, i32 0, i64 0
  %702 = getelementptr inbounds %struct.LIST, %struct.LIST* %701, i32 0, i32 1
  %703 = load %union.rec*, %union.rec** %702, align 8
  %704 = load %union.rec*, %union.rec** @xx_hold, align 8
  %705 = icmp ne %union.rec* %703, %704
  br i1 %705, label %706, label %872

; <label>:706                                     ; preds = %697
  %707 = load %union.rec*, %union.rec** @xx_hold, align 8
  %708 = bitcast %union.rec* %707 to %struct.word_type*
  %709 = getelementptr inbounds %struct.word_type, %struct.word_type* %708, i32 0, i32 0
  %710 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %709, i32 0, i64 0
  %711 = getelementptr inbounds %struct.LIST, %struct.LIST* %710, i32 0, i32 1
  %712 = load %union.rec*, %union.rec** %711, align 8
  store %union.rec* %712, %union.rec** @xx_link, align 8
  %713 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %713, %union.rec** @zz_hold, align 8
  %714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %715 = bitcast %union.rec* %714 to %struct.word_type*
  %716 = getelementptr inbounds %struct.word_type, %struct.word_type* %715, i32 0, i32 0
  %717 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %716, i32 0, i64 1
  %718 = getelementptr inbounds %struct.LIST, %struct.LIST* %717, i32 0, i32 1
  %719 = load %union.rec*, %union.rec** %718, align 8
  %720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %721 = icmp eq %union.rec* %719, %720
  br i1 %721, label %722, label %723

; <label>:722                                     ; preds = %706
  br label %764

; <label>:723                                     ; preds = %706
  %724 = load %union.rec*, %union.rec** @zz_hold, align 8
  %725 = bitcast %union.rec* %724 to %struct.word_type*
  %726 = getelementptr inbounds %struct.word_type, %struct.word_type* %725, i32 0, i32 0
  %727 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %726, i32 0, i64 1
  %728 = getelementptr inbounds %struct.LIST, %struct.LIST* %727, i32 0, i32 1
  %729 = load %union.rec*, %union.rec** %728, align 8
  store %union.rec* %729, %union.rec** @zz_res, align 8
  %730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %731 = bitcast %union.rec* %730 to %struct.word_type*
  %732 = getelementptr inbounds %struct.word_type, %struct.word_type* %731, i32 0, i32 0
  %733 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %732, i32 0, i64 1
  %734 = getelementptr inbounds %struct.LIST, %struct.LIST* %733, i32 0, i32 0
  %735 = load %union.rec*, %union.rec** %734, align 8
  %736 = load %union.rec*, %union.rec** @zz_res, align 8
  %737 = bitcast %union.rec* %736 to %struct.word_type*
  %738 = getelementptr inbounds %struct.word_type, %struct.word_type* %737, i32 0, i32 0
  %739 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %738, i32 0, i64 1
  %740 = getelementptr inbounds %struct.LIST, %struct.LIST* %739, i32 0, i32 0
  store %union.rec* %735, %union.rec** %740, align 8
  %741 = load %union.rec*, %union.rec** @zz_res, align 8
  %742 = load %union.rec*, %union.rec** @zz_hold, align 8
  %743 = bitcast %union.rec* %742 to %struct.word_type*
  %744 = getelementptr inbounds %struct.word_type, %struct.word_type* %743, i32 0, i32 0
  %745 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %744, i32 0, i64 1
  %746 = getelementptr inbounds %struct.LIST, %struct.LIST* %745, i32 0, i32 0
  %747 = load %union.rec*, %union.rec** %746, align 8
  %748 = bitcast %union.rec* %747 to %struct.word_type*
  %749 = getelementptr inbounds %struct.word_type, %struct.word_type* %748, i32 0, i32 0
  %750 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %749, i32 0, i64 1
  %751 = getelementptr inbounds %struct.LIST, %struct.LIST* %750, i32 0, i32 1
  store %union.rec* %741, %union.rec** %751, align 8
  %752 = load %union.rec*, %union.rec** @zz_hold, align 8
  %753 = load %union.rec*, %union.rec** @zz_hold, align 8
  %754 = bitcast %union.rec* %753 to %struct.word_type*
  %755 = getelementptr inbounds %struct.word_type, %struct.word_type* %754, i32 0, i32 0
  %756 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %755, i32 0, i64 1
  %757 = getelementptr inbounds %struct.LIST, %struct.LIST* %756, i32 0, i32 1
  store %union.rec* %752, %union.rec** %757, align 8
  %758 = load %union.rec*, %union.rec** @zz_hold, align 8
  %759 = bitcast %union.rec* %758 to %struct.word_type*
  %760 = getelementptr inbounds %struct.word_type, %struct.word_type* %759, i32 0, i32 0
  %761 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %760, i32 0, i64 1
  %762 = getelementptr inbounds %struct.LIST, %struct.LIST* %761, i32 0, i32 0
  store %union.rec* %752, %union.rec** %762, align 8
  %763 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %764

; <label>:764                                     ; preds = %723, %722
  %765 = phi %union.rec* [ null, %722 ], [ %763, %723 ]
  %766 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %766, %union.rec** @zz_hold, align 8
  %767 = load %union.rec*, %union.rec** @zz_hold, align 8
  %768 = bitcast %union.rec* %767 to %struct.word_type*
  %769 = getelementptr inbounds %struct.word_type, %struct.word_type* %768, i32 0, i32 0
  %770 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %769, i32 0, i64 0
  %771 = getelementptr inbounds %struct.LIST, %struct.LIST* %770, i32 0, i32 1
  %772 = load %union.rec*, %union.rec** %771, align 8
  %773 = load %union.rec*, %union.rec** @zz_hold, align 8
  %774 = icmp eq %union.rec* %772, %773
  br i1 %774, label %775, label %776

; <label>:775                                     ; preds = %764
  br label %817

; <label>:776                                     ; preds = %764
  %777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %778 = bitcast %union.rec* %777 to %struct.word_type*
  %779 = getelementptr inbounds %struct.word_type, %struct.word_type* %778, i32 0, i32 0
  %780 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %779, i32 0, i64 0
  %781 = getelementptr inbounds %struct.LIST, %struct.LIST* %780, i32 0, i32 1
  %782 = load %union.rec*, %union.rec** %781, align 8
  store %union.rec* %782, %union.rec** @zz_res, align 8
  %783 = load %union.rec*, %union.rec** @zz_hold, align 8
  %784 = bitcast %union.rec* %783 to %struct.word_type*
  %785 = getelementptr inbounds %struct.word_type, %struct.word_type* %784, i32 0, i32 0
  %786 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %785, i32 0, i64 0
  %787 = getelementptr inbounds %struct.LIST, %struct.LIST* %786, i32 0, i32 0
  %788 = load %union.rec*, %union.rec** %787, align 8
  %789 = load %union.rec*, %union.rec** @zz_res, align 8
  %790 = bitcast %union.rec* %789 to %struct.word_type*
  %791 = getelementptr inbounds %struct.word_type, %struct.word_type* %790, i32 0, i32 0
  %792 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %791, i32 0, i64 0
  %793 = getelementptr inbounds %struct.LIST, %struct.LIST* %792, i32 0, i32 0
  store %union.rec* %788, %union.rec** %793, align 8
  %794 = load %union.rec*, %union.rec** @zz_res, align 8
  %795 = load %union.rec*, %union.rec** @zz_hold, align 8
  %796 = bitcast %union.rec* %795 to %struct.word_type*
  %797 = getelementptr inbounds %struct.word_type, %struct.word_type* %796, i32 0, i32 0
  %798 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %797, i32 0, i64 0
  %799 = getelementptr inbounds %struct.LIST, %struct.LIST* %798, i32 0, i32 0
  %800 = load %union.rec*, %union.rec** %799, align 8
  %801 = bitcast %union.rec* %800 to %struct.word_type*
  %802 = getelementptr inbounds %struct.word_type, %struct.word_type* %801, i32 0, i32 0
  %803 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %802, i32 0, i64 0
  %804 = getelementptr inbounds %struct.LIST, %struct.LIST* %803, i32 0, i32 1
  store %union.rec* %794, %union.rec** %804, align 8
  %805 = load %union.rec*, %union.rec** @zz_hold, align 8
  %806 = load %union.rec*, %union.rec** @zz_hold, align 8
  %807 = bitcast %union.rec* %806 to %struct.word_type*
  %808 = getelementptr inbounds %struct.word_type, %struct.word_type* %807, i32 0, i32 0
  %809 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %808, i32 0, i64 0
  %810 = getelementptr inbounds %struct.LIST, %struct.LIST* %809, i32 0, i32 1
  store %union.rec* %805, %union.rec** %810, align 8
  %811 = load %union.rec*, %union.rec** @zz_hold, align 8
  %812 = bitcast %union.rec* %811 to %struct.word_type*
  %813 = getelementptr inbounds %struct.word_type, %struct.word_type* %812, i32 0, i32 0
  %814 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %813, i32 0, i64 0
  %815 = getelementptr inbounds %struct.LIST, %struct.LIST* %814, i32 0, i32 0
  store %union.rec* %805, %union.rec** %815, align 8
  %816 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %817

; <label>:817                                     ; preds = %776, %775
  %818 = phi %union.rec* [ null, %775 ], [ %816, %776 ]
  %819 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %819, %union.rec** @zz_hold, align 8
  %820 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %820, %union.rec** @zz_hold, align 8
  %821 = load %union.rec*, %union.rec** @zz_hold, align 8
  %822 = bitcast %union.rec* %821 to %struct.word_type*
  %823 = getelementptr inbounds %struct.word_type, %struct.word_type* %822, i32 0, i32 1
  %824 = bitcast %union.FIRST_UNION* %823 to %struct.anon*
  %825 = getelementptr inbounds %struct.anon, %struct.anon* %824, i32 0, i32 0
  %826 = load i8, i8* %825, align 1
  %827 = zext i8 %826 to i32
  %828 = icmp eq i32 %827, 11
  br i1 %828, label %838, label %829

; <label>:829                                     ; preds = %817
  %830 = load %union.rec*, %union.rec** @zz_hold, align 8
  %831 = bitcast %union.rec* %830 to %struct.word_type*
  %832 = getelementptr inbounds %struct.word_type, %struct.word_type* %831, i32 0, i32 1
  %833 = bitcast %union.FIRST_UNION* %832 to %struct.anon*
  %834 = getelementptr inbounds %struct.anon, %struct.anon* %833, i32 0, i32 0
  %835 = load i8, i8* %834, align 1
  %836 = zext i8 %835 to i32
  %837 = icmp eq i32 %836, 12
  br i1 %837, label %838, label %846

; <label>:838                                     ; preds = %829, %817
  %839 = load %union.rec*, %union.rec** @zz_hold, align 8
  %840 = bitcast %union.rec* %839 to %struct.word_type*
  %841 = getelementptr inbounds %struct.word_type, %struct.word_type* %840, i32 0, i32 1
  %842 = bitcast %union.FIRST_UNION* %841 to %struct.anon*
  %843 = getelementptr inbounds %struct.anon, %struct.anon* %842, i32 0, i32 1
  %844 = load i8, i8* %843, align 1
  %845 = zext i8 %844 to i32
  br label %857

; <label>:846                                     ; preds = %829
  %847 = load %union.rec*, %union.rec** @zz_hold, align 8
  %848 = bitcast %union.rec* %847 to %struct.word_type*
  %849 = getelementptr inbounds %struct.word_type, %struct.word_type* %848, i32 0, i32 1
  %850 = bitcast %union.FIRST_UNION* %849 to %struct.anon*
  %851 = getelementptr inbounds %struct.anon, %struct.anon* %850, i32 0, i32 0
  %852 = load i8, i8* %851, align 1
  %853 = zext i8 %852 to i64
  %854 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %853
  %855 = load i8, i8* %854, align 1
  %856 = zext i8 %855 to i32
  br label %857

; <label>:857                                     ; preds = %846, %838
  %858 = phi i32 [ %845, %838 ], [ %856, %846 ]
  store i32 %858, i32* @zz_size, align 4
  %859 = load i32, i32* @zz_size, align 4
  %860 = sext i32 %859 to i64
  %861 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %860
  %862 = load %union.rec*, %union.rec** %861, align 8
  %863 = load %union.rec*, %union.rec** @zz_hold, align 8
  %864 = bitcast %union.rec* %863 to %struct.word_type*
  %865 = getelementptr inbounds %struct.word_type, %struct.word_type* %864, i32 0, i32 0
  %866 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %865, i32 0, i64 0
  %867 = getelementptr inbounds %struct.LIST, %struct.LIST* %866, i32 0, i32 0
  store %union.rec* %862, %union.rec** %867, align 8
  %868 = load %union.rec*, %union.rec** @zz_hold, align 8
  %869 = load i32, i32* @zz_size, align 4
  %870 = sext i32 %869 to i64
  %871 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %870
  store %union.rec* %868, %union.rec** %871, align 8
  br label %697

; <label>:872                                     ; preds = %697
  %873 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %873, %union.rec** @zz_hold, align 8
  %874 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %874, %union.rec** @zz_hold, align 8
  %875 = load %union.rec*, %union.rec** @zz_hold, align 8
  %876 = bitcast %union.rec* %875 to %struct.word_type*
  %877 = getelementptr inbounds %struct.word_type, %struct.word_type* %876, i32 0, i32 1
  %878 = bitcast %union.FIRST_UNION* %877 to %struct.anon*
  %879 = getelementptr inbounds %struct.anon, %struct.anon* %878, i32 0, i32 0
  %880 = load i8, i8* %879, align 1
  %881 = zext i8 %880 to i32
  %882 = icmp eq i32 %881, 11
  br i1 %882, label %892, label %883

; <label>:883                                     ; preds = %872
  %884 = load %union.rec*, %union.rec** @zz_hold, align 8
  %885 = bitcast %union.rec* %884 to %struct.word_type*
  %886 = getelementptr inbounds %struct.word_type, %struct.word_type* %885, i32 0, i32 1
  %887 = bitcast %union.FIRST_UNION* %886 to %struct.anon*
  %888 = getelementptr inbounds %struct.anon, %struct.anon* %887, i32 0, i32 0
  %889 = load i8, i8* %888, align 1
  %890 = zext i8 %889 to i32
  %891 = icmp eq i32 %890, 12
  br i1 %891, label %892, label %900

; <label>:892                                     ; preds = %883, %872
  %893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %894 = bitcast %union.rec* %893 to %struct.word_type*
  %895 = getelementptr inbounds %struct.word_type, %struct.word_type* %894, i32 0, i32 1
  %896 = bitcast %union.FIRST_UNION* %895 to %struct.anon*
  %897 = getelementptr inbounds %struct.anon, %struct.anon* %896, i32 0, i32 1
  %898 = load i8, i8* %897, align 1
  %899 = zext i8 %898 to i32
  br label %911

; <label>:900                                     ; preds = %883
  %901 = load %union.rec*, %union.rec** @zz_hold, align 8
  %902 = bitcast %union.rec* %901 to %struct.word_type*
  %903 = getelementptr inbounds %struct.word_type, %struct.word_type* %902, i32 0, i32 1
  %904 = bitcast %union.FIRST_UNION* %903 to %struct.anon*
  %905 = getelementptr inbounds %struct.anon, %struct.anon* %904, i32 0, i32 0
  %906 = load i8, i8* %905, align 1
  %907 = zext i8 %906 to i64
  %908 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %907
  %909 = load i8, i8* %908, align 1
  %910 = zext i8 %909 to i32
  br label %911

; <label>:911                                     ; preds = %900, %892
  %912 = phi i32 [ %899, %892 ], [ %910, %900 ]
  store i32 %912, i32* @zz_size, align 4
  %913 = load i32, i32* @zz_size, align 4
  %914 = sext i32 %913 to i64
  %915 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %914
  %916 = load %union.rec*, %union.rec** %915, align 8
  %917 = load %union.rec*, %union.rec** @zz_hold, align 8
  %918 = bitcast %union.rec* %917 to %struct.word_type*
  %919 = getelementptr inbounds %struct.word_type, %struct.word_type* %918, i32 0, i32 0
  %920 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %919, i32 0, i64 0
  %921 = getelementptr inbounds %struct.LIST, %struct.LIST* %920, i32 0, i32 0
  store %union.rec* %916, %union.rec** %921, align 8
  %922 = load %union.rec*, %union.rec** @zz_hold, align 8
  %923 = load i32, i32* @zz_size, align 4
  %924 = sext i32 %923 to i64
  %925 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %924
  store %union.rec* %922, %union.rec** %925, align 8
  %926 = load %union.rec*, %union.rec** %dest_index, align 8
  %927 = bitcast %union.rec* %926 to %struct.word_type*
  %928 = getelementptr inbounds %struct.word_type, %struct.word_type* %927, i32 0, i32 0
  %929 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %928, i32 0, i64 0
  %930 = getelementptr inbounds %struct.LIST, %struct.LIST* %929, i32 0, i32 1
  %931 = load %union.rec*, %union.rec** %930, align 8
  %932 = load %union.rec*, %union.rec** %dest_index, align 8
  %933 = icmp ne %union.rec* %931, %932
  br i1 %933, label %934, label %1383

; <label>:934                                     ; preds = %911
  %935 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 17), align 1
  %936 = zext i8 %935 to i32
  store i32 %936, i32* @zz_size, align 4
  %937 = sext i32 %936 to i64
  %938 = icmp uge i64 %937, 265
  br i1 %938, label %939, label %942

; <label>:939                                     ; preds = %934
  %940 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %941 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %940)
  br label %967

; <label>:942                                     ; preds = %934
  %943 = load i32, i32* @zz_size, align 4
  %944 = sext i32 %943 to i64
  %945 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %944
  %946 = load %union.rec*, %union.rec** %945, align 8
  %947 = icmp eq %union.rec* %946, null
  br i1 %947, label %948, label %952

; <label>:948                                     ; preds = %942
  %949 = load i32, i32* @zz_size, align 4
  %950 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %951 = call %union.rec* @GetMemory(i32 %949, %struct.FILE_POS* %950)
  store %union.rec* %951, %union.rec** @zz_hold, align 8
  br label %966

; <label>:952                                     ; preds = %942
  %953 = load i32, i32* @zz_size, align 4
  %954 = sext i32 %953 to i64
  %955 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %954
  %956 = load %union.rec*, %union.rec** %955, align 8
  store %union.rec* %956, %union.rec** @zz_hold, align 8
  store %union.rec* %956, %union.rec** @zz_hold, align 8
  %957 = load %union.rec*, %union.rec** @zz_hold, align 8
  %958 = bitcast %union.rec* %957 to %struct.word_type*
  %959 = getelementptr inbounds %struct.word_type, %struct.word_type* %958, i32 0, i32 0
  %960 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %959, i32 0, i64 0
  %961 = getelementptr inbounds %struct.LIST, %struct.LIST* %960, i32 0, i32 0
  %962 = load %union.rec*, %union.rec** %961, align 8
  %963 = load i32, i32* @zz_size, align 4
  %964 = sext i32 %963 to i64
  %965 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %964
  store %union.rec* %962, %union.rec** %965, align 8
  br label %966

; <label>:966                                     ; preds = %952, %948
  br label %967

; <label>:967                                     ; preds = %966, %939
  %968 = load %union.rec*, %union.rec** @zz_hold, align 8
  %969 = bitcast %union.rec* %968 to %struct.word_type*
  %970 = getelementptr inbounds %struct.word_type, %struct.word_type* %969, i32 0, i32 1
  %971 = bitcast %union.FIRST_UNION* %970 to %struct.anon*
  %972 = getelementptr inbounds %struct.anon, %struct.anon* %971, i32 0, i32 0
  store i8 17, i8* %972, align 1
  %973 = load %union.rec*, %union.rec** @zz_hold, align 8
  %974 = load %union.rec*, %union.rec** @zz_hold, align 8
  %975 = bitcast %union.rec* %974 to %struct.word_type*
  %976 = getelementptr inbounds %struct.word_type, %struct.word_type* %975, i32 0, i32 0
  %977 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %976, i32 0, i64 1
  %978 = getelementptr inbounds %struct.LIST, %struct.LIST* %977, i32 0, i32 1
  store %union.rec* %973, %union.rec** %978, align 8
  %979 = load %union.rec*, %union.rec** @zz_hold, align 8
  %980 = bitcast %union.rec* %979 to %struct.word_type*
  %981 = getelementptr inbounds %struct.word_type, %struct.word_type* %980, i32 0, i32 0
  %982 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %981, i32 0, i64 1
  %983 = getelementptr inbounds %struct.LIST, %struct.LIST* %982, i32 0, i32 0
  store %union.rec* %973, %union.rec** %983, align 8
  %984 = load %union.rec*, %union.rec** @zz_hold, align 8
  %985 = bitcast %union.rec* %984 to %struct.word_type*
  %986 = getelementptr inbounds %struct.word_type, %struct.word_type* %985, i32 0, i32 0
  %987 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %986, i32 0, i64 0
  %988 = getelementptr inbounds %struct.LIST, %struct.LIST* %987, i32 0, i32 1
  store %union.rec* %973, %union.rec** %988, align 8
  %989 = load %union.rec*, %union.rec** @zz_hold, align 8
  %990 = bitcast %union.rec* %989 to %struct.word_type*
  %991 = getelementptr inbounds %struct.word_type, %struct.word_type* %990, i32 0, i32 0
  %992 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %991, i32 0, i64 0
  %993 = getelementptr inbounds %struct.LIST, %struct.LIST* %992, i32 0, i32 0
  store %union.rec* %973, %union.rec** %993, align 8
  store %union.rec* %973, %union.rec** %tinners, align 8
  br label %994

; <label>:994                                     ; preds = %1379, %967
  %995 = load %union.rec*, %union.rec** %dest_index, align 8
  %996 = bitcast %union.rec* %995 to %struct.word_type*
  %997 = getelementptr inbounds %struct.word_type, %struct.word_type* %996, i32 0, i32 0
  %998 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %997, i32 0, i64 0
  %999 = getelementptr inbounds %struct.LIST, %struct.LIST* %998, i32 0, i32 1
  %1000 = load %union.rec*, %union.rec** %999, align 8
  %1001 = load %union.rec*, %union.rec** %dest_index, align 8
  %1002 = icmp ne %union.rec* %1000, %1001
  br i1 %1002, label %1003, label %1381

; <label>:1003                                    ; preds = %994
  %1004 = load %union.rec*, %union.rec** %dest_index, align 8
  %1005 = bitcast %union.rec* %1004 to %struct.word_type*
  %1006 = getelementptr inbounds %struct.word_type, %struct.word_type* %1005, i32 0, i32 0
  %1007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1006, i32 0, i64 0
  %1008 = getelementptr inbounds %struct.LIST, %struct.LIST* %1007, i32 0, i32 1
  %1009 = load %union.rec*, %union.rec** %1008, align 8
  %1010 = bitcast %union.rec* %1009 to %struct.word_type*
  %1011 = getelementptr inbounds %struct.word_type, %struct.word_type* %1010, i32 0, i32 0
  %1012 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1011, i32 0, i64 1
  %1013 = getelementptr inbounds %struct.LIST, %struct.LIST* %1012, i32 0, i32 0
  %1014 = load %union.rec*, %union.rec** %1013, align 8
  store %union.rec* %1014, %union.rec** %y, align 8
  br label %1015

; <label>:1015                                    ; preds = %1025, %1003
  %1016 = load %union.rec*, %union.rec** %y, align 8
  %1017 = bitcast %union.rec* %1016 to %struct.word_type*
  %1018 = getelementptr inbounds %struct.word_type, %struct.word_type* %1017, i32 0, i32 1
  %1019 = bitcast %union.FIRST_UNION* %1018 to %struct.anon*
  %1020 = getelementptr inbounds %struct.anon, %struct.anon* %1019, i32 0, i32 0
  %1021 = load i8, i8* %1020, align 1
  %1022 = zext i8 %1021 to i32
  %1023 = icmp eq i32 %1022, 0
  br i1 %1023, label %1024, label %1032

; <label>:1024                                    ; preds = %1015
  br label %1025

; <label>:1025                                    ; preds = %1024
  %1026 = load %union.rec*, %union.rec** %y, align 8
  %1027 = bitcast %union.rec* %1026 to %struct.word_type*
  %1028 = getelementptr inbounds %struct.word_type, %struct.word_type* %1027, i32 0, i32 0
  %1029 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1028, i32 0, i64 1
  %1030 = getelementptr inbounds %struct.LIST, %struct.LIST* %1029, i32 0, i32 0
  %1031 = load %union.rec*, %union.rec** %1030, align 8
  store %union.rec* %1031, %union.rec** %y, align 8
  br label %1015

; <label>:1032                                    ; preds = %1015
  %1033 = load %union.rec*, %union.rec** %y, align 8
  %1034 = bitcast %union.rec* %1033 to %struct.word_type*
  %1035 = getelementptr inbounds %struct.word_type, %struct.word_type* %1034, i32 0, i32 1
  %1036 = bitcast %union.FIRST_UNION* %1035 to %struct.anon*
  %1037 = getelementptr inbounds %struct.anon, %struct.anon* %1036, i32 0, i32 0
  %1038 = load i8, i8* %1037, align 1
  %1039 = zext i8 %1038 to i32
  %1040 = icmp eq i32 %1039, 8
  br i1 %1040, label %1044, label %1041

; <label>:1041                                    ; preds = %1032
  %1042 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1043 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i32 0, i32 0), i32 0, %struct.FILE_POS* %1042, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.13, i32 0, i32 0))
  br label %1044

; <label>:1044                                    ; preds = %1041, %1032
  %1045 = load %union.rec*, %union.rec** %y, align 8
  %1046 = bitcast %union.rec* %1045 to %struct.head_type*
  %1047 = getelementptr inbounds %struct.head_type, %struct.head_type* %1046, i32 0, i32 8
  %1048 = load %union.rec*, %union.rec** %1047, align 8
  %1049 = icmp ne %union.rec* %1048, null
  br i1 %1049, label %1050, label %1059

; <label>:1050                                    ; preds = %1044
  %1051 = load %union.rec*, %union.rec** %y, align 8
  %1052 = bitcast %union.rec* %1051 to %struct.head_type*
  %1053 = getelementptr inbounds %struct.head_type, %struct.head_type* %1052, i32 0, i32 8
  %1054 = load %union.rec*, %union.rec** %1053, align 8
  %1055 = call i32 @DisposeObject(%union.rec* %1054)
  %1056 = load %union.rec*, %union.rec** %y, align 8
  %1057 = bitcast %union.rec* %1056 to %struct.head_type*
  %1058 = getelementptr inbounds %struct.head_type, %struct.head_type* %1057, i32 0, i32 8
  store %union.rec* null, %union.rec** %1058, align 8
  br label %1059

; <label>:1059                                    ; preds = %1050, %1044
  %1060 = load %union.rec*, %union.rec** %y, align 8
  call void @DetachGalley(%union.rec* %1060)
  %1061 = load %union.rec*, %union.rec** %y, align 8
  %1062 = bitcast %union.rec* %1061 to %struct.word_type*
  %1063 = getelementptr inbounds %struct.word_type, %struct.word_type* %1062, i32 0, i32 0
  %1064 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1063, i32 0, i64 1
  %1065 = getelementptr inbounds %struct.LIST, %struct.LIST* %1064, i32 0, i32 1
  %1066 = load %union.rec*, %union.rec** %1065, align 8
  %1067 = bitcast %union.rec* %1066 to %struct.word_type*
  %1068 = getelementptr inbounds %struct.word_type, %struct.word_type* %1067, i32 0, i32 0
  %1069 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1068, i32 0, i64 0
  %1070 = getelementptr inbounds %struct.LIST, %struct.LIST* %1069, i32 0, i32 0
  %1071 = load %union.rec*, %union.rec** %1070, align 8
  store %union.rec* %1071, %union.rec** %index, align 8
  br label %1072

; <label>:1072                                    ; preds = %1082, %1059
  %1073 = load %union.rec*, %union.rec** %index, align 8
  %1074 = bitcast %union.rec* %1073 to %struct.word_type*
  %1075 = getelementptr inbounds %struct.word_type, %struct.word_type* %1074, i32 0, i32 1
  %1076 = bitcast %union.FIRST_UNION* %1075 to %struct.anon*
  %1077 = getelementptr inbounds %struct.anon, %struct.anon* %1076, i32 0, i32 0
  %1078 = load i8, i8* %1077, align 1
  %1079 = zext i8 %1078 to i32
  %1080 = icmp eq i32 %1079, 0
  br i1 %1080, label %1081, label %1089

; <label>:1081                                    ; preds = %1072
  br label %1082

; <label>:1082                                    ; preds = %1081
  %1083 = load %union.rec*, %union.rec** %index, align 8
  %1084 = bitcast %union.rec* %1083 to %struct.word_type*
  %1085 = getelementptr inbounds %struct.word_type, %struct.word_type* %1084, i32 0, i32 0
  %1086 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1085, i32 0, i64 0
  %1087 = getelementptr inbounds %struct.LIST, %struct.LIST* %1086, i32 0, i32 0
  %1088 = load %union.rec*, %union.rec** %1087, align 8
  store %union.rec* %1088, %union.rec** %index, align 8
  br label %1072

; <label>:1089                                    ; preds = %1072
  %1090 = load %union.rec*, %union.rec** %index, align 8
  %1091 = bitcast %union.rec* %1090 to %struct.word_type*
  %1092 = getelementptr inbounds %struct.word_type, %struct.word_type* %1091, i32 0, i32 0
  %1093 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1092, i32 0, i64 1
  %1094 = getelementptr inbounds %struct.LIST, %struct.LIST* %1093, i32 0, i32 1
  %1095 = load %union.rec*, %union.rec** %1094, align 8
  store %union.rec* %1095, %union.rec** @xx_link, align 8
  %1096 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1096, %union.rec** @zz_hold, align 8
  %1097 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1098 = bitcast %union.rec* %1097 to %struct.word_type*
  %1099 = getelementptr inbounds %struct.word_type, %struct.word_type* %1098, i32 0, i32 0
  %1100 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1099, i32 0, i64 0
  %1101 = getelementptr inbounds %struct.LIST, %struct.LIST* %1100, i32 0, i32 1
  %1102 = load %union.rec*, %union.rec** %1101, align 8
  %1103 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1104 = icmp eq %union.rec* %1102, %1103
  br i1 %1104, label %1105, label %1106

; <label>:1105                                    ; preds = %1089
  br label %1147

; <label>:1106                                    ; preds = %1089
  %1107 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1108 = bitcast %union.rec* %1107 to %struct.word_type*
  %1109 = getelementptr inbounds %struct.word_type, %struct.word_type* %1108, i32 0, i32 0
  %1110 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1109, i32 0, i64 0
  %1111 = getelementptr inbounds %struct.LIST, %struct.LIST* %1110, i32 0, i32 1
  %1112 = load %union.rec*, %union.rec** %1111, align 8
  store %union.rec* %1112, %union.rec** @zz_res, align 8
  %1113 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1114 = bitcast %union.rec* %1113 to %struct.word_type*
  %1115 = getelementptr inbounds %struct.word_type, %struct.word_type* %1114, i32 0, i32 0
  %1116 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1115, i32 0, i64 0
  %1117 = getelementptr inbounds %struct.LIST, %struct.LIST* %1116, i32 0, i32 0
  %1118 = load %union.rec*, %union.rec** %1117, align 8
  %1119 = load %union.rec*, %union.rec** @zz_res, align 8
  %1120 = bitcast %union.rec* %1119 to %struct.word_type*
  %1121 = getelementptr inbounds %struct.word_type, %struct.word_type* %1120, i32 0, i32 0
  %1122 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1121, i32 0, i64 0
  %1123 = getelementptr inbounds %struct.LIST, %struct.LIST* %1122, i32 0, i32 0
  store %union.rec* %1118, %union.rec** %1123, align 8
  %1124 = load %union.rec*, %union.rec** @zz_res, align 8
  %1125 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1126 = bitcast %union.rec* %1125 to %struct.word_type*
  %1127 = getelementptr inbounds %struct.word_type, %struct.word_type* %1126, i32 0, i32 0
  %1128 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1127, i32 0, i64 0
  %1129 = getelementptr inbounds %struct.LIST, %struct.LIST* %1128, i32 0, i32 0
  %1130 = load %union.rec*, %union.rec** %1129, align 8
  %1131 = bitcast %union.rec* %1130 to %struct.word_type*
  %1132 = getelementptr inbounds %struct.word_type, %struct.word_type* %1131, i32 0, i32 0
  %1133 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1132, i32 0, i64 0
  %1134 = getelementptr inbounds %struct.LIST, %struct.LIST* %1133, i32 0, i32 1
  store %union.rec* %1124, %union.rec** %1134, align 8
  %1135 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1136 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1137 = bitcast %union.rec* %1136 to %struct.word_type*
  %1138 = getelementptr inbounds %struct.word_type, %struct.word_type* %1137, i32 0, i32 0
  %1139 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1138, i32 0, i64 0
  %1140 = getelementptr inbounds %struct.LIST, %struct.LIST* %1139, i32 0, i32 1
  store %union.rec* %1135, %union.rec** %1140, align 8
  %1141 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1142 = bitcast %union.rec* %1141 to %struct.word_type*
  %1143 = getelementptr inbounds %struct.word_type, %struct.word_type* %1142, i32 0, i32 0
  %1144 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1143, i32 0, i64 0
  %1145 = getelementptr inbounds %struct.LIST, %struct.LIST* %1144, i32 0, i32 0
  store %union.rec* %1135, %union.rec** %1145, align 8
  %1146 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1147

; <label>:1147                                    ; preds = %1106, %1105
  %1148 = phi %union.rec* [ null, %1105 ], [ %1146, %1106 ]
  %1149 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1149, %union.rec** @zz_res, align 8
  %1150 = load %union.rec*, %union.rec** %start_search, align 8
  %1151 = bitcast %union.rec* %1150 to %struct.word_type*
  %1152 = getelementptr inbounds %struct.word_type, %struct.word_type* %1151, i32 0, i32 0
  %1153 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1152, i32 0, i64 0
  %1154 = getelementptr inbounds %struct.LIST, %struct.LIST* %1153, i32 0, i32 1
  %1155 = load %union.rec*, %union.rec** %1154, align 8
  store %union.rec* %1155, %union.rec** @zz_hold, align 8
  %1156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1157 = icmp eq %union.rec* %1156, null
  br i1 %1157, label %1158, label %1160

; <label>:1158                                    ; preds = %1147
  %1159 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1208

; <label>:1160                                    ; preds = %1147
  %1161 = load %union.rec*, %union.rec** @zz_res, align 8
  %1162 = icmp eq %union.rec* %1161, null
  br i1 %1162, label %1163, label %1165

; <label>:1163                                    ; preds = %1160
  %1164 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1206

; <label>:1165                                    ; preds = %1160
  %1166 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1167 = bitcast %union.rec* %1166 to %struct.word_type*
  %1168 = getelementptr inbounds %struct.word_type, %struct.word_type* %1167, i32 0, i32 0
  %1169 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1168, i32 0, i64 0
  %1170 = getelementptr inbounds %struct.LIST, %struct.LIST* %1169, i32 0, i32 0
  %1171 = load %union.rec*, %union.rec** %1170, align 8
  store %union.rec* %1171, %union.rec** @zz_tmp, align 8
  %1172 = load %union.rec*, %union.rec** @zz_res, align 8
  %1173 = bitcast %union.rec* %1172 to %struct.word_type*
  %1174 = getelementptr inbounds %struct.word_type, %struct.word_type* %1173, i32 0, i32 0
  %1175 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1174, i32 0, i64 0
  %1176 = getelementptr inbounds %struct.LIST, %struct.LIST* %1175, i32 0, i32 0
  %1177 = load %union.rec*, %union.rec** %1176, align 8
  %1178 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1179 = bitcast %union.rec* %1178 to %struct.word_type*
  %1180 = getelementptr inbounds %struct.word_type, %struct.word_type* %1179, i32 0, i32 0
  %1181 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1180, i32 0, i64 0
  %1182 = getelementptr inbounds %struct.LIST, %struct.LIST* %1181, i32 0, i32 0
  store %union.rec* %1177, %union.rec** %1182, align 8
  %1183 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1184 = load %union.rec*, %union.rec** @zz_res, align 8
  %1185 = bitcast %union.rec* %1184 to %struct.word_type*
  %1186 = getelementptr inbounds %struct.word_type, %struct.word_type* %1185, i32 0, i32 0
  %1187 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1186, i32 0, i64 0
  %1188 = getelementptr inbounds %struct.LIST, %struct.LIST* %1187, i32 0, i32 0
  %1189 = load %union.rec*, %union.rec** %1188, align 8
  %1190 = bitcast %union.rec* %1189 to %struct.word_type*
  %1191 = getelementptr inbounds %struct.word_type, %struct.word_type* %1190, i32 0, i32 0
  %1192 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1191, i32 0, i64 0
  %1193 = getelementptr inbounds %struct.LIST, %struct.LIST* %1192, i32 0, i32 1
  store %union.rec* %1183, %union.rec** %1193, align 8
  %1194 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1195 = load %union.rec*, %union.rec** @zz_res, align 8
  %1196 = bitcast %union.rec* %1195 to %struct.word_type*
  %1197 = getelementptr inbounds %struct.word_type, %struct.word_type* %1196, i32 0, i32 0
  %1198 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1197, i32 0, i64 0
  %1199 = getelementptr inbounds %struct.LIST, %struct.LIST* %1198, i32 0, i32 0
  store %union.rec* %1194, %union.rec** %1199, align 8
  %1200 = load %union.rec*, %union.rec** @zz_res, align 8
  %1201 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1202 = bitcast %union.rec* %1201 to %struct.word_type*
  %1203 = getelementptr inbounds %struct.word_type, %struct.word_type* %1202, i32 0, i32 0
  %1204 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1203, i32 0, i64 0
  %1205 = getelementptr inbounds %struct.LIST, %struct.LIST* %1204, i32 0, i32 1
  store %union.rec* %1200, %union.rec** %1205, align 8
  br label %1206

; <label>:1206                                    ; preds = %1165, %1163
  %1207 = phi %union.rec* [ %1164, %1163 ], [ %1200, %1165 ]
  br label %1208

; <label>:1208                                    ; preds = %1206, %1158
  %1209 = phi %union.rec* [ %1159, %1158 ], [ %1207, %1206 ]
  %1210 = load i8, i8* getelementptr inbounds ([0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 0), align 1
  %1211 = zext i8 %1210 to i32
  store i32 %1211, i32* @zz_size, align 4
  %1212 = sext i32 %1211 to i64
  %1213 = icmp uge i64 %1212, 265
  br i1 %1213, label %1214, label %1217

; <label>:1214                                    ; preds = %1208
  %1215 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1216 = call i8* (i32, i32, i8*, i32, %struct.FILE_POS*, ...) @Error(i32 1, i32 1, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), i32 1, %struct.FILE_POS* %1215)
  br label %1242

; <label>:1217                                    ; preds = %1208
  %1218 = load i32, i32* @zz_size, align 4
  %1219 = sext i32 %1218 to i64
  %1220 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1219
  %1221 = load %union.rec*, %union.rec** %1220, align 8
  %1222 = icmp eq %union.rec* %1221, null
  br i1 %1222, label %1223, label %1227

; <label>:1223                                    ; preds = %1217
  %1224 = load i32, i32* @zz_size, align 4
  %1225 = load %struct.FILE_POS*, %struct.FILE_POS** @no_fpos, align 8
  %1226 = call %union.rec* @GetMemory(i32 %1224, %struct.FILE_POS* %1225)
  store %union.rec* %1226, %union.rec** @zz_hold, align 8
  br label %1241

; <label>:1227                                    ; preds = %1217
  %1228 = load i32, i32* @zz_size, align 4
  %1229 = sext i32 %1228 to i64
  %1230 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1229
  %1231 = load %union.rec*, %union.rec** %1230, align 8
  store %union.rec* %1231, %union.rec** @zz_hold, align 8
  store %union.rec* %1231, %union.rec** @zz_hold, align 8
  %1232 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1233 = bitcast %union.rec* %1232 to %struct.word_type*
  %1234 = getelementptr inbounds %struct.word_type, %struct.word_type* %1233, i32 0, i32 0
  %1235 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1234, i32 0, i64 0
  %1236 = getelementptr inbounds %struct.LIST, %struct.LIST* %1235, i32 0, i32 0
  %1237 = load %union.rec*, %union.rec** %1236, align 8
  %1238 = load i32, i32* @zz_size, align 4
  %1239 = sext i32 %1238 to i64
  %1240 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1239
  store %union.rec* %1237, %union.rec** %1240, align 8
  br label %1241

; <label>:1241                                    ; preds = %1227, %1223
  br label %1242

; <label>:1242                                    ; preds = %1241, %1214
  %1243 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1244 = bitcast %union.rec* %1243 to %struct.word_type*
  %1245 = getelementptr inbounds %struct.word_type, %struct.word_type* %1244, i32 0, i32 1
  %1246 = bitcast %union.FIRST_UNION* %1245 to %struct.anon*
  %1247 = getelementptr inbounds %struct.anon, %struct.anon* %1246, i32 0, i32 0
  store i8 0, i8* %1247, align 1
  %1248 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1249 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1250 = bitcast %union.rec* %1249 to %struct.word_type*
  %1251 = getelementptr inbounds %struct.word_type, %struct.word_type* %1250, i32 0, i32 0
  %1252 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1251, i32 0, i64 1
  %1253 = getelementptr inbounds %struct.LIST, %struct.LIST* %1252, i32 0, i32 1
  store %union.rec* %1248, %union.rec** %1253, align 8
  %1254 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1255 = bitcast %union.rec* %1254 to %struct.word_type*
  %1256 = getelementptr inbounds %struct.word_type, %struct.word_type* %1255, i32 0, i32 0
  %1257 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1256, i32 0, i64 1
  %1258 = getelementptr inbounds %struct.LIST, %struct.LIST* %1257, i32 0, i32 0
  store %union.rec* %1248, %union.rec** %1258, align 8
  %1259 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1260 = bitcast %union.rec* %1259 to %struct.word_type*
  %1261 = getelementptr inbounds %struct.word_type, %struct.word_type* %1260, i32 0, i32 0
  %1262 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1261, i32 0, i64 0
  %1263 = getelementptr inbounds %struct.LIST, %struct.LIST* %1262, i32 0, i32 1
  store %union.rec* %1248, %union.rec** %1263, align 8
  %1264 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1265 = bitcast %union.rec* %1264 to %struct.word_type*
  %1266 = getelementptr inbounds %struct.word_type, %struct.word_type* %1265, i32 0, i32 0
  %1267 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1266, i32 0, i64 0
  %1268 = getelementptr inbounds %struct.LIST, %struct.LIST* %1267, i32 0, i32 0
  store %union.rec* %1248, %union.rec** %1268, align 8
  store %union.rec* %1248, %union.rec** @xx_link, align 8
  %1269 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1269, %union.rec** @zz_res, align 8
  %1270 = load %union.rec*, %union.rec** %tinners, align 8
  store %union.rec* %1270, %union.rec** @zz_hold, align 8
  %1271 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1272 = icmp eq %union.rec* %1271, null
  br i1 %1272, label %1273, label %1275

; <label>:1273                                    ; preds = %1242
  %1274 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1323

; <label>:1275                                    ; preds = %1242
  %1276 = load %union.rec*, %union.rec** @zz_res, align 8
  %1277 = icmp eq %union.rec* %1276, null
  br i1 %1277, label %1278, label %1280

; <label>:1278                                    ; preds = %1275
  %1279 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1321

; <label>:1280                                    ; preds = %1275
  %1281 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1282 = bitcast %union.rec* %1281 to %struct.word_type*
  %1283 = getelementptr inbounds %struct.word_type, %struct.word_type* %1282, i32 0, i32 0
  %1284 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1283, i32 0, i64 0
  %1285 = getelementptr inbounds %struct.LIST, %struct.LIST* %1284, i32 0, i32 0
  %1286 = load %union.rec*, %union.rec** %1285, align 8
  store %union.rec* %1286, %union.rec** @zz_tmp, align 8
  %1287 = load %union.rec*, %union.rec** @zz_res, align 8
  %1288 = bitcast %union.rec* %1287 to %struct.word_type*
  %1289 = getelementptr inbounds %struct.word_type, %struct.word_type* %1288, i32 0, i32 0
  %1290 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1289, i32 0, i64 0
  %1291 = getelementptr inbounds %struct.LIST, %struct.LIST* %1290, i32 0, i32 0
  %1292 = load %union.rec*, %union.rec** %1291, align 8
  %1293 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1294 = bitcast %union.rec* %1293 to %struct.word_type*
  %1295 = getelementptr inbounds %struct.word_type, %struct.word_type* %1294, i32 0, i32 0
  %1296 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1295, i32 0, i64 0
  %1297 = getelementptr inbounds %struct.LIST, %struct.LIST* %1296, i32 0, i32 0
  store %union.rec* %1292, %union.rec** %1297, align 8
  %1298 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1299 = load %union.rec*, %union.rec** @zz_res, align 8
  %1300 = bitcast %union.rec* %1299 to %struct.word_type*
  %1301 = getelementptr inbounds %struct.word_type, %struct.word_type* %1300, i32 0, i32 0
  %1302 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1301, i32 0, i64 0
  %1303 = getelementptr inbounds %struct.LIST, %struct.LIST* %1302, i32 0, i32 0
  %1304 = load %union.rec*, %union.rec** %1303, align 8
  %1305 = bitcast %union.rec* %1304 to %struct.word_type*
  %1306 = getelementptr inbounds %struct.word_type, %struct.word_type* %1305, i32 0, i32 0
  %1307 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1306, i32 0, i64 0
  %1308 = getelementptr inbounds %struct.LIST, %struct.LIST* %1307, i32 0, i32 1
  store %union.rec* %1298, %union.rec** %1308, align 8
  %1309 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1310 = load %union.rec*, %union.rec** @zz_res, align 8
  %1311 = bitcast %union.rec* %1310 to %struct.word_type*
  %1312 = getelementptr inbounds %struct.word_type, %struct.word_type* %1311, i32 0, i32 0
  %1313 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1312, i32 0, i64 0
  %1314 = getelementptr inbounds %struct.LIST, %struct.LIST* %1313, i32 0, i32 0
  store %union.rec* %1309, %union.rec** %1314, align 8
  %1315 = load %union.rec*, %union.rec** @zz_res, align 8
  %1316 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1317 = bitcast %union.rec* %1316 to %struct.word_type*
  %1318 = getelementptr inbounds %struct.word_type, %struct.word_type* %1317, i32 0, i32 0
  %1319 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1318, i32 0, i64 0
  %1320 = getelementptr inbounds %struct.LIST, %struct.LIST* %1319, i32 0, i32 1
  store %union.rec* %1315, %union.rec** %1320, align 8
  br label %1321

; <label>:1321                                    ; preds = %1280, %1278
  %1322 = phi %union.rec* [ %1279, %1278 ], [ %1315, %1280 ]
  br label %1323

; <label>:1323                                    ; preds = %1321, %1273
  %1324 = phi %union.rec* [ %1274, %1273 ], [ %1322, %1321 ]
  %1325 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1325, %union.rec** @zz_res, align 8
  %1326 = load %union.rec*, %union.rec** %index, align 8
  store %union.rec* %1326, %union.rec** @zz_hold, align 8
  %1327 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1328 = icmp eq %union.rec* %1327, null
  br i1 %1328, label %1329, label %1331

; <label>:1329                                    ; preds = %1323
  %1330 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1379

; <label>:1331                                    ; preds = %1323
  %1332 = load %union.rec*, %union.rec** @zz_res, align 8
  %1333 = icmp eq %union.rec* %1332, null
  br i1 %1333, label %1334, label %1336

; <label>:1334                                    ; preds = %1331
  %1335 = load %union.rec*, %union.rec** @zz_hold, align 8
  br label %1377

; <label>:1336                                    ; preds = %1331
  %1337 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1338 = bitcast %union.rec* %1337 to %struct.word_type*
  %1339 = getelementptr inbounds %struct.word_type, %struct.word_type* %1338, i32 0, i32 0
  %1340 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1339, i32 0, i64 1
  %1341 = getelementptr inbounds %struct.LIST, %struct.LIST* %1340, i32 0, i32 0
  %1342 = load %union.rec*, %union.rec** %1341, align 8
  store %union.rec* %1342, %union.rec** @zz_tmp, align 8
  %1343 = load %union.rec*, %union.rec** @zz_res, align 8
  %1344 = bitcast %union.rec* %1343 to %struct.word_type*
  %1345 = getelementptr inbounds %struct.word_type, %struct.word_type* %1344, i32 0, i32 0
  %1346 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1345, i32 0, i64 1
  %1347 = getelementptr inbounds %struct.LIST, %struct.LIST* %1346, i32 0, i32 0
  %1348 = load %union.rec*, %union.rec** %1347, align 8
  %1349 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1350 = bitcast %union.rec* %1349 to %struct.word_type*
  %1351 = getelementptr inbounds %struct.word_type, %struct.word_type* %1350, i32 0, i32 0
  %1352 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1351, i32 0, i64 1
  %1353 = getelementptr inbounds %struct.LIST, %struct.LIST* %1352, i32 0, i32 0
  store %union.rec* %1348, %union.rec** %1353, align 8
  %1354 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1355 = load %union.rec*, %union.rec** @zz_res, align 8
  %1356 = bitcast %union.rec* %1355 to %struct.word_type*
  %1357 = getelementptr inbounds %struct.word_type, %struct.word_type* %1356, i32 0, i32 0
  %1358 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1357, i32 0, i64 1
  %1359 = getelementptr inbounds %struct.LIST, %struct.LIST* %1358, i32 0, i32 0
  %1360 = load %union.rec*, %union.rec** %1359, align 8
  %1361 = bitcast %union.rec* %1360 to %struct.word_type*
  %1362 = getelementptr inbounds %struct.word_type, %struct.word_type* %1361, i32 0, i32 0
  %1363 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1362, i32 0, i64 1
  %1364 = getelementptr inbounds %struct.LIST, %struct.LIST* %1363, i32 0, i32 1
  store %union.rec* %1354, %union.rec** %1364, align 8
  %1365 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1366 = load %union.rec*, %union.rec** @zz_res, align 8
  %1367 = bitcast %union.rec* %1366 to %struct.word_type*
  %1368 = getelementptr inbounds %struct.word_type, %struct.word_type* %1367, i32 0, i32 0
  %1369 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1368, i32 0, i64 1
  %1370 = getelementptr inbounds %struct.LIST, %struct.LIST* %1369, i32 0, i32 0
  store %union.rec* %1365, %union.rec** %1370, align 8
  %1371 = load %union.rec*, %union.rec** @zz_res, align 8
  %1372 = load %union.rec*, %union.rec** @zz_tmp, align 8
  %1373 = bitcast %union.rec* %1372 to %struct.word_type*
  %1374 = getelementptr inbounds %struct.word_type, %struct.word_type* %1373, i32 0, i32 0
  %1375 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1374, i32 0, i64 1
  %1376 = getelementptr inbounds %struct.LIST, %struct.LIST* %1375, i32 0, i32 1
  store %union.rec* %1371, %union.rec** %1376, align 8
  br label %1377

; <label>:1377                                    ; preds = %1336, %1334
  %1378 = phi %union.rec* [ %1335, %1334 ], [ %1371, %1336 ]
  br label %1379

; <label>:1379                                    ; preds = %1377, %1329
  %1380 = phi %union.rec* [ %1330, %1329 ], [ %1378, %1377 ]
  br label %994

; <label>:1381                                    ; preds = %994
  %1382 = load %union.rec*, %union.rec** %tinners, align 8
  call void @FlushInners(%union.rec* %1382, %union.rec* null)
  br label %1383

; <label>:1383                                    ; preds = %1381, %911
  %1384 = load %union.rec*, %union.rec** %inners, align 8
  %1385 = icmp ne %union.rec* %1384, null
  br i1 %1385, label %1386, label %1388

; <label>:1386                                    ; preds = %1383
  %1387 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %1387, %union.rec* null)
  br label %1388

; <label>:1388                                    ; preds = %1386, %1383
  %1389 = load %union.rec*, %union.rec** %dest_index, align 8
  %1390 = bitcast %union.rec* %1389 to %struct.word_type*
  %1391 = getelementptr inbounds %struct.word_type, %struct.word_type* %1390, i32 0, i32 2
  %1392 = bitcast %union.SECOND_UNION* %1391 to %struct.anon.2*
  %1393 = getelementptr inbounds %struct.anon.2, %struct.anon.2* %1392, i32 0, i32 2
  %1394 = load i16, i16* %1393, align 2
  %1395 = lshr i16 %1394, 5
  %1396 = and i16 %1395, 1
  %1397 = zext i16 %1396 to i32
  %1398 = icmp ne i32 %1397, 0
  br i1 %1398, label %1399, label %1836

; <label>:1399                                    ; preds = %1388
  %1400 = load %union.rec*, %union.rec** %dest_index, align 8
  %1401 = bitcast %union.rec* %1400 to %struct.word_type*
  %1402 = getelementptr inbounds %struct.word_type, %struct.word_type* %1401, i32 0, i32 0
  %1403 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1402, i32 0, i64 1
  %1404 = getelementptr inbounds %struct.LIST, %struct.LIST* %1403, i32 0, i32 1
  %1405 = load %union.rec*, %union.rec** %1404, align 8
  %1406 = bitcast %union.rec* %1405 to %struct.word_type*
  %1407 = getelementptr inbounds %struct.word_type, %struct.word_type* %1406, i32 0, i32 0
  %1408 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1407, i32 0, i64 0
  %1409 = getelementptr inbounds %struct.LIST, %struct.LIST* %1408, i32 0, i32 0
  %1410 = load %union.rec*, %union.rec** %1409, align 8
  store %union.rec* %1410, %union.rec** %y, align 8
  br label %1411

; <label>:1411                                    ; preds = %1421, %1399
  %1412 = load %union.rec*, %union.rec** %y, align 8
  %1413 = bitcast %union.rec* %1412 to %struct.word_type*
  %1414 = getelementptr inbounds %struct.word_type, %struct.word_type* %1413, i32 0, i32 1
  %1415 = bitcast %union.FIRST_UNION* %1414 to %struct.anon*
  %1416 = getelementptr inbounds %struct.anon, %struct.anon* %1415, i32 0, i32 0
  %1417 = load i8, i8* %1416, align 1
  %1418 = zext i8 %1417 to i32
  %1419 = icmp eq i32 %1418, 0
  br i1 %1419, label %1420, label %1428

; <label>:1420                                    ; preds = %1411
  br label %1421

; <label>:1421                                    ; preds = %1420
  %1422 = load %union.rec*, %union.rec** %y, align 8
  %1423 = bitcast %union.rec* %1422 to %struct.word_type*
  %1424 = getelementptr inbounds %struct.word_type, %struct.word_type* %1423, i32 0, i32 0
  %1425 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1424, i32 0, i64 0
  %1426 = getelementptr inbounds %struct.LIST, %struct.LIST* %1425, i32 0, i32 0
  %1427 = load %union.rec*, %union.rec** %1426, align 8
  store %union.rec* %1427, %union.rec** %y, align 8
  br label %1411

; <label>:1428                                    ; preds = %1411
  %1429 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %1429, %union.rec** @xx_hold, align 8
  br label %1430

; <label>:1430                                    ; preds = %1590, %1428
  %1431 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1432 = bitcast %union.rec* %1431 to %struct.word_type*
  %1433 = getelementptr inbounds %struct.word_type, %struct.word_type* %1432, i32 0, i32 0
  %1434 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1433, i32 0, i64 1
  %1435 = getelementptr inbounds %struct.LIST, %struct.LIST* %1434, i32 0, i32 1
  %1436 = load %union.rec*, %union.rec** %1435, align 8
  %1437 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1438 = icmp ne %union.rec* %1436, %1437
  br i1 %1438, label %1439, label %1605

; <label>:1439                                    ; preds = %1430
  %1440 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1441 = bitcast %union.rec* %1440 to %struct.word_type*
  %1442 = getelementptr inbounds %struct.word_type, %struct.word_type* %1441, i32 0, i32 0
  %1443 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1442, i32 0, i64 1
  %1444 = getelementptr inbounds %struct.LIST, %struct.LIST* %1443, i32 0, i32 1
  %1445 = load %union.rec*, %union.rec** %1444, align 8
  store %union.rec* %1445, %union.rec** @xx_link, align 8
  %1446 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1446, %union.rec** @zz_hold, align 8
  %1447 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1448 = bitcast %union.rec* %1447 to %struct.word_type*
  %1449 = getelementptr inbounds %struct.word_type, %struct.word_type* %1448, i32 0, i32 0
  %1450 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1449, i32 0, i64 1
  %1451 = getelementptr inbounds %struct.LIST, %struct.LIST* %1450, i32 0, i32 1
  %1452 = load %union.rec*, %union.rec** %1451, align 8
  %1453 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1454 = icmp eq %union.rec* %1452, %1453
  br i1 %1454, label %1455, label %1456

; <label>:1455                                    ; preds = %1439
  br label %1497

; <label>:1456                                    ; preds = %1439
  %1457 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1458 = bitcast %union.rec* %1457 to %struct.word_type*
  %1459 = getelementptr inbounds %struct.word_type, %struct.word_type* %1458, i32 0, i32 0
  %1460 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1459, i32 0, i64 1
  %1461 = getelementptr inbounds %struct.LIST, %struct.LIST* %1460, i32 0, i32 1
  %1462 = load %union.rec*, %union.rec** %1461, align 8
  store %union.rec* %1462, %union.rec** @zz_res, align 8
  %1463 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1464 = bitcast %union.rec* %1463 to %struct.word_type*
  %1465 = getelementptr inbounds %struct.word_type, %struct.word_type* %1464, i32 0, i32 0
  %1466 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1465, i32 0, i64 1
  %1467 = getelementptr inbounds %struct.LIST, %struct.LIST* %1466, i32 0, i32 0
  %1468 = load %union.rec*, %union.rec** %1467, align 8
  %1469 = load %union.rec*, %union.rec** @zz_res, align 8
  %1470 = bitcast %union.rec* %1469 to %struct.word_type*
  %1471 = getelementptr inbounds %struct.word_type, %struct.word_type* %1470, i32 0, i32 0
  %1472 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1471, i32 0, i64 1
  %1473 = getelementptr inbounds %struct.LIST, %struct.LIST* %1472, i32 0, i32 0
  store %union.rec* %1468, %union.rec** %1473, align 8
  %1474 = load %union.rec*, %union.rec** @zz_res, align 8
  %1475 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1476 = bitcast %union.rec* %1475 to %struct.word_type*
  %1477 = getelementptr inbounds %struct.word_type, %struct.word_type* %1476, i32 0, i32 0
  %1478 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1477, i32 0, i64 1
  %1479 = getelementptr inbounds %struct.LIST, %struct.LIST* %1478, i32 0, i32 0
  %1480 = load %union.rec*, %union.rec** %1479, align 8
  %1481 = bitcast %union.rec* %1480 to %struct.word_type*
  %1482 = getelementptr inbounds %struct.word_type, %struct.word_type* %1481, i32 0, i32 0
  %1483 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1482, i32 0, i64 1
  %1484 = getelementptr inbounds %struct.LIST, %struct.LIST* %1483, i32 0, i32 1
  store %union.rec* %1474, %union.rec** %1484, align 8
  %1485 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1486 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1487 = bitcast %union.rec* %1486 to %struct.word_type*
  %1488 = getelementptr inbounds %struct.word_type, %struct.word_type* %1487, i32 0, i32 0
  %1489 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1488, i32 0, i64 1
  %1490 = getelementptr inbounds %struct.LIST, %struct.LIST* %1489, i32 0, i32 1
  store %union.rec* %1485, %union.rec** %1490, align 8
  %1491 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1492 = bitcast %union.rec* %1491 to %struct.word_type*
  %1493 = getelementptr inbounds %struct.word_type, %struct.word_type* %1492, i32 0, i32 0
  %1494 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1493, i32 0, i64 1
  %1495 = getelementptr inbounds %struct.LIST, %struct.LIST* %1494, i32 0, i32 0
  store %union.rec* %1485, %union.rec** %1495, align 8
  %1496 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1497

; <label>:1497                                    ; preds = %1456, %1455
  %1498 = phi %union.rec* [ null, %1455 ], [ %1496, %1456 ]
  %1499 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1499, %union.rec** @zz_hold, align 8
  %1500 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1501 = bitcast %union.rec* %1500 to %struct.word_type*
  %1502 = getelementptr inbounds %struct.word_type, %struct.word_type* %1501, i32 0, i32 0
  %1503 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1502, i32 0, i64 0
  %1504 = getelementptr inbounds %struct.LIST, %struct.LIST* %1503, i32 0, i32 1
  %1505 = load %union.rec*, %union.rec** %1504, align 8
  %1506 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1507 = icmp eq %union.rec* %1505, %1506
  br i1 %1507, label %1508, label %1509

; <label>:1508                                    ; preds = %1497
  br label %1550

; <label>:1509                                    ; preds = %1497
  %1510 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1511 = bitcast %union.rec* %1510 to %struct.word_type*
  %1512 = getelementptr inbounds %struct.word_type, %struct.word_type* %1511, i32 0, i32 0
  %1513 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1512, i32 0, i64 0
  %1514 = getelementptr inbounds %struct.LIST, %struct.LIST* %1513, i32 0, i32 1
  %1515 = load %union.rec*, %union.rec** %1514, align 8
  store %union.rec* %1515, %union.rec** @zz_res, align 8
  %1516 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1517 = bitcast %union.rec* %1516 to %struct.word_type*
  %1518 = getelementptr inbounds %struct.word_type, %struct.word_type* %1517, i32 0, i32 0
  %1519 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1518, i32 0, i64 0
  %1520 = getelementptr inbounds %struct.LIST, %struct.LIST* %1519, i32 0, i32 0
  %1521 = load %union.rec*, %union.rec** %1520, align 8
  %1522 = load %union.rec*, %union.rec** @zz_res, align 8
  %1523 = bitcast %union.rec* %1522 to %struct.word_type*
  %1524 = getelementptr inbounds %struct.word_type, %struct.word_type* %1523, i32 0, i32 0
  %1525 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1524, i32 0, i64 0
  %1526 = getelementptr inbounds %struct.LIST, %struct.LIST* %1525, i32 0, i32 0
  store %union.rec* %1521, %union.rec** %1526, align 8
  %1527 = load %union.rec*, %union.rec** @zz_res, align 8
  %1528 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1529 = bitcast %union.rec* %1528 to %struct.word_type*
  %1530 = getelementptr inbounds %struct.word_type, %struct.word_type* %1529, i32 0, i32 0
  %1531 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1530, i32 0, i64 0
  %1532 = getelementptr inbounds %struct.LIST, %struct.LIST* %1531, i32 0, i32 0
  %1533 = load %union.rec*, %union.rec** %1532, align 8
  %1534 = bitcast %union.rec* %1533 to %struct.word_type*
  %1535 = getelementptr inbounds %struct.word_type, %struct.word_type* %1534, i32 0, i32 0
  %1536 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1535, i32 0, i64 0
  %1537 = getelementptr inbounds %struct.LIST, %struct.LIST* %1536, i32 0, i32 1
  store %union.rec* %1527, %union.rec** %1537, align 8
  %1538 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1539 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1540 = bitcast %union.rec* %1539 to %struct.word_type*
  %1541 = getelementptr inbounds %struct.word_type, %struct.word_type* %1540, i32 0, i32 0
  %1542 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1541, i32 0, i64 0
  %1543 = getelementptr inbounds %struct.LIST, %struct.LIST* %1542, i32 0, i32 1
  store %union.rec* %1538, %union.rec** %1543, align 8
  %1544 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1545 = bitcast %union.rec* %1544 to %struct.word_type*
  %1546 = getelementptr inbounds %struct.word_type, %struct.word_type* %1545, i32 0, i32 0
  %1547 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1546, i32 0, i64 0
  %1548 = getelementptr inbounds %struct.LIST, %struct.LIST* %1547, i32 0, i32 0
  store %union.rec* %1538, %union.rec** %1548, align 8
  %1549 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1550

; <label>:1550                                    ; preds = %1509, %1508
  %1551 = phi %union.rec* [ null, %1508 ], [ %1549, %1509 ]
  %1552 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1552, %union.rec** @zz_hold, align 8
  %1553 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1553, %union.rec** @zz_hold, align 8
  %1554 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1555 = bitcast %union.rec* %1554 to %struct.word_type*
  %1556 = getelementptr inbounds %struct.word_type, %struct.word_type* %1555, i32 0, i32 1
  %1557 = bitcast %union.FIRST_UNION* %1556 to %struct.anon*
  %1558 = getelementptr inbounds %struct.anon, %struct.anon* %1557, i32 0, i32 0
  %1559 = load i8, i8* %1558, align 1
  %1560 = zext i8 %1559 to i32
  %1561 = icmp eq i32 %1560, 11
  br i1 %1561, label %1571, label %1562

; <label>:1562                                    ; preds = %1550
  %1563 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1564 = bitcast %union.rec* %1563 to %struct.word_type*
  %1565 = getelementptr inbounds %struct.word_type, %struct.word_type* %1564, i32 0, i32 1
  %1566 = bitcast %union.FIRST_UNION* %1565 to %struct.anon*
  %1567 = getelementptr inbounds %struct.anon, %struct.anon* %1566, i32 0, i32 0
  %1568 = load i8, i8* %1567, align 1
  %1569 = zext i8 %1568 to i32
  %1570 = icmp eq i32 %1569, 12
  br i1 %1570, label %1571, label %1579

; <label>:1571                                    ; preds = %1562, %1550
  %1572 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1573 = bitcast %union.rec* %1572 to %struct.word_type*
  %1574 = getelementptr inbounds %struct.word_type, %struct.word_type* %1573, i32 0, i32 1
  %1575 = bitcast %union.FIRST_UNION* %1574 to %struct.anon*
  %1576 = getelementptr inbounds %struct.anon, %struct.anon* %1575, i32 0, i32 1
  %1577 = load i8, i8* %1576, align 1
  %1578 = zext i8 %1577 to i32
  br label %1590

; <label>:1579                                    ; preds = %1562
  %1580 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1581 = bitcast %union.rec* %1580 to %struct.word_type*
  %1582 = getelementptr inbounds %struct.word_type, %struct.word_type* %1581, i32 0, i32 1
  %1583 = bitcast %union.FIRST_UNION* %1582 to %struct.anon*
  %1584 = getelementptr inbounds %struct.anon, %struct.anon* %1583, i32 0, i32 0
  %1585 = load i8, i8* %1584, align 1
  %1586 = zext i8 %1585 to i64
  %1587 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1586
  %1588 = load i8, i8* %1587, align 1
  %1589 = zext i8 %1588 to i32
  br label %1590

; <label>:1590                                    ; preds = %1579, %1571
  %1591 = phi i32 [ %1578, %1571 ], [ %1589, %1579 ]
  store i32 %1591, i32* @zz_size, align 4
  %1592 = load i32, i32* @zz_size, align 4
  %1593 = sext i32 %1592 to i64
  %1594 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1593
  %1595 = load %union.rec*, %union.rec** %1594, align 8
  %1596 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1597 = bitcast %union.rec* %1596 to %struct.word_type*
  %1598 = getelementptr inbounds %struct.word_type, %struct.word_type* %1597, i32 0, i32 0
  %1599 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1598, i32 0, i64 0
  %1600 = getelementptr inbounds %struct.LIST, %struct.LIST* %1599, i32 0, i32 0
  store %union.rec* %1595, %union.rec** %1600, align 8
  %1601 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1602 = load i32, i32* @zz_size, align 4
  %1603 = sext i32 %1602 to i64
  %1604 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1603
  store %union.rec* %1601, %union.rec** %1604, align 8
  br label %1430

; <label>:1605                                    ; preds = %1430
  br label %1606

; <label>:1606                                    ; preds = %1766, %1605
  %1607 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1608 = bitcast %union.rec* %1607 to %struct.word_type*
  %1609 = getelementptr inbounds %struct.word_type, %struct.word_type* %1608, i32 0, i32 0
  %1610 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1609, i32 0, i64 0
  %1611 = getelementptr inbounds %struct.LIST, %struct.LIST* %1610, i32 0, i32 1
  %1612 = load %union.rec*, %union.rec** %1611, align 8
  %1613 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1614 = icmp ne %union.rec* %1612, %1613
  br i1 %1614, label %1615, label %1781

; <label>:1615                                    ; preds = %1606
  %1616 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1617 = bitcast %union.rec* %1616 to %struct.word_type*
  %1618 = getelementptr inbounds %struct.word_type, %struct.word_type* %1617, i32 0, i32 0
  %1619 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1618, i32 0, i64 0
  %1620 = getelementptr inbounds %struct.LIST, %struct.LIST* %1619, i32 0, i32 1
  %1621 = load %union.rec*, %union.rec** %1620, align 8
  store %union.rec* %1621, %union.rec** @xx_link, align 8
  %1622 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1622, %union.rec** @zz_hold, align 8
  %1623 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1624 = bitcast %union.rec* %1623 to %struct.word_type*
  %1625 = getelementptr inbounds %struct.word_type, %struct.word_type* %1624, i32 0, i32 0
  %1626 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1625, i32 0, i64 1
  %1627 = getelementptr inbounds %struct.LIST, %struct.LIST* %1626, i32 0, i32 1
  %1628 = load %union.rec*, %union.rec** %1627, align 8
  %1629 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1630 = icmp eq %union.rec* %1628, %1629
  br i1 %1630, label %1631, label %1632

; <label>:1631                                    ; preds = %1615
  br label %1673

; <label>:1632                                    ; preds = %1615
  %1633 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1634 = bitcast %union.rec* %1633 to %struct.word_type*
  %1635 = getelementptr inbounds %struct.word_type, %struct.word_type* %1634, i32 0, i32 0
  %1636 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1635, i32 0, i64 1
  %1637 = getelementptr inbounds %struct.LIST, %struct.LIST* %1636, i32 0, i32 1
  %1638 = load %union.rec*, %union.rec** %1637, align 8
  store %union.rec* %1638, %union.rec** @zz_res, align 8
  %1639 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1640 = bitcast %union.rec* %1639 to %struct.word_type*
  %1641 = getelementptr inbounds %struct.word_type, %struct.word_type* %1640, i32 0, i32 0
  %1642 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1641, i32 0, i64 1
  %1643 = getelementptr inbounds %struct.LIST, %struct.LIST* %1642, i32 0, i32 0
  %1644 = load %union.rec*, %union.rec** %1643, align 8
  %1645 = load %union.rec*, %union.rec** @zz_res, align 8
  %1646 = bitcast %union.rec* %1645 to %struct.word_type*
  %1647 = getelementptr inbounds %struct.word_type, %struct.word_type* %1646, i32 0, i32 0
  %1648 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1647, i32 0, i64 1
  %1649 = getelementptr inbounds %struct.LIST, %struct.LIST* %1648, i32 0, i32 0
  store %union.rec* %1644, %union.rec** %1649, align 8
  %1650 = load %union.rec*, %union.rec** @zz_res, align 8
  %1651 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1652 = bitcast %union.rec* %1651 to %struct.word_type*
  %1653 = getelementptr inbounds %struct.word_type, %struct.word_type* %1652, i32 0, i32 0
  %1654 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1653, i32 0, i64 1
  %1655 = getelementptr inbounds %struct.LIST, %struct.LIST* %1654, i32 0, i32 0
  %1656 = load %union.rec*, %union.rec** %1655, align 8
  %1657 = bitcast %union.rec* %1656 to %struct.word_type*
  %1658 = getelementptr inbounds %struct.word_type, %struct.word_type* %1657, i32 0, i32 0
  %1659 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1658, i32 0, i64 1
  %1660 = getelementptr inbounds %struct.LIST, %struct.LIST* %1659, i32 0, i32 1
  store %union.rec* %1650, %union.rec** %1660, align 8
  %1661 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1662 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1663 = bitcast %union.rec* %1662 to %struct.word_type*
  %1664 = getelementptr inbounds %struct.word_type, %struct.word_type* %1663, i32 0, i32 0
  %1665 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1664, i32 0, i64 1
  %1666 = getelementptr inbounds %struct.LIST, %struct.LIST* %1665, i32 0, i32 1
  store %union.rec* %1661, %union.rec** %1666, align 8
  %1667 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1668 = bitcast %union.rec* %1667 to %struct.word_type*
  %1669 = getelementptr inbounds %struct.word_type, %struct.word_type* %1668, i32 0, i32 0
  %1670 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1669, i32 0, i64 1
  %1671 = getelementptr inbounds %struct.LIST, %struct.LIST* %1670, i32 0, i32 0
  store %union.rec* %1661, %union.rec** %1671, align 8
  %1672 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1673

; <label>:1673                                    ; preds = %1632, %1631
  %1674 = phi %union.rec* [ null, %1631 ], [ %1672, %1632 ]
  %1675 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1675, %union.rec** @zz_hold, align 8
  %1676 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1677 = bitcast %union.rec* %1676 to %struct.word_type*
  %1678 = getelementptr inbounds %struct.word_type, %struct.word_type* %1677, i32 0, i32 0
  %1679 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1678, i32 0, i64 0
  %1680 = getelementptr inbounds %struct.LIST, %struct.LIST* %1679, i32 0, i32 1
  %1681 = load %union.rec*, %union.rec** %1680, align 8
  %1682 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1683 = icmp eq %union.rec* %1681, %1682
  br i1 %1683, label %1684, label %1685

; <label>:1684                                    ; preds = %1673
  br label %1726

; <label>:1685                                    ; preds = %1673
  %1686 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1687 = bitcast %union.rec* %1686 to %struct.word_type*
  %1688 = getelementptr inbounds %struct.word_type, %struct.word_type* %1687, i32 0, i32 0
  %1689 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1688, i32 0, i64 0
  %1690 = getelementptr inbounds %struct.LIST, %struct.LIST* %1689, i32 0, i32 1
  %1691 = load %union.rec*, %union.rec** %1690, align 8
  store %union.rec* %1691, %union.rec** @zz_res, align 8
  %1692 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1693 = bitcast %union.rec* %1692 to %struct.word_type*
  %1694 = getelementptr inbounds %struct.word_type, %struct.word_type* %1693, i32 0, i32 0
  %1695 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1694, i32 0, i64 0
  %1696 = getelementptr inbounds %struct.LIST, %struct.LIST* %1695, i32 0, i32 0
  %1697 = load %union.rec*, %union.rec** %1696, align 8
  %1698 = load %union.rec*, %union.rec** @zz_res, align 8
  %1699 = bitcast %union.rec* %1698 to %struct.word_type*
  %1700 = getelementptr inbounds %struct.word_type, %struct.word_type* %1699, i32 0, i32 0
  %1701 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1700, i32 0, i64 0
  %1702 = getelementptr inbounds %struct.LIST, %struct.LIST* %1701, i32 0, i32 0
  store %union.rec* %1697, %union.rec** %1702, align 8
  %1703 = load %union.rec*, %union.rec** @zz_res, align 8
  %1704 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1705 = bitcast %union.rec* %1704 to %struct.word_type*
  %1706 = getelementptr inbounds %struct.word_type, %struct.word_type* %1705, i32 0, i32 0
  %1707 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1706, i32 0, i64 0
  %1708 = getelementptr inbounds %struct.LIST, %struct.LIST* %1707, i32 0, i32 0
  %1709 = load %union.rec*, %union.rec** %1708, align 8
  %1710 = bitcast %union.rec* %1709 to %struct.word_type*
  %1711 = getelementptr inbounds %struct.word_type, %struct.word_type* %1710, i32 0, i32 0
  %1712 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1711, i32 0, i64 0
  %1713 = getelementptr inbounds %struct.LIST, %struct.LIST* %1712, i32 0, i32 1
  store %union.rec* %1703, %union.rec** %1713, align 8
  %1714 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1715 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1716 = bitcast %union.rec* %1715 to %struct.word_type*
  %1717 = getelementptr inbounds %struct.word_type, %struct.word_type* %1716, i32 0, i32 0
  %1718 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1717, i32 0, i64 0
  %1719 = getelementptr inbounds %struct.LIST, %struct.LIST* %1718, i32 0, i32 1
  store %union.rec* %1714, %union.rec** %1719, align 8
  %1720 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1721 = bitcast %union.rec* %1720 to %struct.word_type*
  %1722 = getelementptr inbounds %struct.word_type, %struct.word_type* %1721, i32 0, i32 0
  %1723 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1722, i32 0, i64 0
  %1724 = getelementptr inbounds %struct.LIST, %struct.LIST* %1723, i32 0, i32 0
  store %union.rec* %1714, %union.rec** %1724, align 8
  %1725 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1726

; <label>:1726                                    ; preds = %1685, %1684
  %1727 = phi %union.rec* [ null, %1684 ], [ %1725, %1685 ]
  %1728 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1728, %union.rec** @zz_hold, align 8
  %1729 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1729, %union.rec** @zz_hold, align 8
  %1730 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1731 = bitcast %union.rec* %1730 to %struct.word_type*
  %1732 = getelementptr inbounds %struct.word_type, %struct.word_type* %1731, i32 0, i32 1
  %1733 = bitcast %union.FIRST_UNION* %1732 to %struct.anon*
  %1734 = getelementptr inbounds %struct.anon, %struct.anon* %1733, i32 0, i32 0
  %1735 = load i8, i8* %1734, align 1
  %1736 = zext i8 %1735 to i32
  %1737 = icmp eq i32 %1736, 11
  br i1 %1737, label %1747, label %1738

; <label>:1738                                    ; preds = %1726
  %1739 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1740 = bitcast %union.rec* %1739 to %struct.word_type*
  %1741 = getelementptr inbounds %struct.word_type, %struct.word_type* %1740, i32 0, i32 1
  %1742 = bitcast %union.FIRST_UNION* %1741 to %struct.anon*
  %1743 = getelementptr inbounds %struct.anon, %struct.anon* %1742, i32 0, i32 0
  %1744 = load i8, i8* %1743, align 1
  %1745 = zext i8 %1744 to i32
  %1746 = icmp eq i32 %1745, 12
  br i1 %1746, label %1747, label %1755

; <label>:1747                                    ; preds = %1738, %1726
  %1748 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1749 = bitcast %union.rec* %1748 to %struct.word_type*
  %1750 = getelementptr inbounds %struct.word_type, %struct.word_type* %1749, i32 0, i32 1
  %1751 = bitcast %union.FIRST_UNION* %1750 to %struct.anon*
  %1752 = getelementptr inbounds %struct.anon, %struct.anon* %1751, i32 0, i32 1
  %1753 = load i8, i8* %1752, align 1
  %1754 = zext i8 %1753 to i32
  br label %1766

; <label>:1755                                    ; preds = %1738
  %1756 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1757 = bitcast %union.rec* %1756 to %struct.word_type*
  %1758 = getelementptr inbounds %struct.word_type, %struct.word_type* %1757, i32 0, i32 1
  %1759 = bitcast %union.FIRST_UNION* %1758 to %struct.anon*
  %1760 = getelementptr inbounds %struct.anon, %struct.anon* %1759, i32 0, i32 0
  %1761 = load i8, i8* %1760, align 1
  %1762 = zext i8 %1761 to i64
  %1763 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1762
  %1764 = load i8, i8* %1763, align 1
  %1765 = zext i8 %1764 to i32
  br label %1766

; <label>:1766                                    ; preds = %1755, %1747
  %1767 = phi i32 [ %1754, %1747 ], [ %1765, %1755 ]
  store i32 %1767, i32* @zz_size, align 4
  %1768 = load i32, i32* @zz_size, align 4
  %1769 = sext i32 %1768 to i64
  %1770 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1769
  %1771 = load %union.rec*, %union.rec** %1770, align 8
  %1772 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1773 = bitcast %union.rec* %1772 to %struct.word_type*
  %1774 = getelementptr inbounds %struct.word_type, %struct.word_type* %1773, i32 0, i32 0
  %1775 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1774, i32 0, i64 0
  %1776 = getelementptr inbounds %struct.LIST, %struct.LIST* %1775, i32 0, i32 0
  store %union.rec* %1771, %union.rec** %1776, align 8
  %1777 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1778 = load i32, i32* @zz_size, align 4
  %1779 = sext i32 %1778 to i64
  %1780 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1779
  store %union.rec* %1777, %union.rec** %1780, align 8
  br label %1606

; <label>:1781                                    ; preds = %1606
  %1782 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %1782, %union.rec** @zz_hold, align 8
  %1783 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1783, %union.rec** @zz_hold, align 8
  %1784 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1785 = bitcast %union.rec* %1784 to %struct.word_type*
  %1786 = getelementptr inbounds %struct.word_type, %struct.word_type* %1785, i32 0, i32 1
  %1787 = bitcast %union.FIRST_UNION* %1786 to %struct.anon*
  %1788 = getelementptr inbounds %struct.anon, %struct.anon* %1787, i32 0, i32 0
  %1789 = load i8, i8* %1788, align 1
  %1790 = zext i8 %1789 to i32
  %1791 = icmp eq i32 %1790, 11
  br i1 %1791, label %1801, label %1792

; <label>:1792                                    ; preds = %1781
  %1793 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1794 = bitcast %union.rec* %1793 to %struct.word_type*
  %1795 = getelementptr inbounds %struct.word_type, %struct.word_type* %1794, i32 0, i32 1
  %1796 = bitcast %union.FIRST_UNION* %1795 to %struct.anon*
  %1797 = getelementptr inbounds %struct.anon, %struct.anon* %1796, i32 0, i32 0
  %1798 = load i8, i8* %1797, align 1
  %1799 = zext i8 %1798 to i32
  %1800 = icmp eq i32 %1799, 12
  br i1 %1800, label %1801, label %1809

; <label>:1801                                    ; preds = %1792, %1781
  %1802 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1803 = bitcast %union.rec* %1802 to %struct.word_type*
  %1804 = getelementptr inbounds %struct.word_type, %struct.word_type* %1803, i32 0, i32 1
  %1805 = bitcast %union.FIRST_UNION* %1804 to %struct.anon*
  %1806 = getelementptr inbounds %struct.anon, %struct.anon* %1805, i32 0, i32 1
  %1807 = load i8, i8* %1806, align 1
  %1808 = zext i8 %1807 to i32
  br label %1820

; <label>:1809                                    ; preds = %1792
  %1810 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1811 = bitcast %union.rec* %1810 to %struct.word_type*
  %1812 = getelementptr inbounds %struct.word_type, %struct.word_type* %1811, i32 0, i32 1
  %1813 = bitcast %union.FIRST_UNION* %1812 to %struct.anon*
  %1814 = getelementptr inbounds %struct.anon, %struct.anon* %1813, i32 0, i32 0
  %1815 = load i8, i8* %1814, align 1
  %1816 = zext i8 %1815 to i64
  %1817 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1816
  %1818 = load i8, i8* %1817, align 1
  %1819 = zext i8 %1818 to i32
  br label %1820

; <label>:1820                                    ; preds = %1809, %1801
  %1821 = phi i32 [ %1808, %1801 ], [ %1819, %1809 ]
  store i32 %1821, i32* @zz_size, align 4
  %1822 = load i32, i32* @zz_size, align 4
  %1823 = sext i32 %1822 to i64
  %1824 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1823
  %1825 = load %union.rec*, %union.rec** %1824, align 8
  %1826 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1827 = bitcast %union.rec* %1826 to %struct.word_type*
  %1828 = getelementptr inbounds %struct.word_type, %struct.word_type* %1827, i32 0, i32 0
  %1829 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1828, i32 0, i64 0
  %1830 = getelementptr inbounds %struct.LIST, %struct.LIST* %1829, i32 0, i32 0
  store %union.rec* %1825, %union.rec** %1830, align 8
  %1831 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1832 = load i32, i32* @zz_size, align 4
  %1833 = sext i32 %1832 to i64
  %1834 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %1833
  store %union.rec* %1831, %union.rec** %1834, align 8
  %1835 = load %union.rec*, %union.rec** %y, align 8
  call void @FlushGalley(%union.rec* %1835)
  br label %2243

; <label>:1836                                    ; preds = %1388
  %1837 = load %union.rec*, %union.rec** %dest_index, align 8
  store %union.rec* %1837, %union.rec** @xx_hold, align 8
  br label %1838

; <label>:1838                                    ; preds = %1998, %1836
  %1839 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1840 = bitcast %union.rec* %1839 to %struct.word_type*
  %1841 = getelementptr inbounds %struct.word_type, %struct.word_type* %1840, i32 0, i32 0
  %1842 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1841, i32 0, i64 1
  %1843 = getelementptr inbounds %struct.LIST, %struct.LIST* %1842, i32 0, i32 1
  %1844 = load %union.rec*, %union.rec** %1843, align 8
  %1845 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1846 = icmp ne %union.rec* %1844, %1845
  br i1 %1846, label %1847, label %2013

; <label>:1847                                    ; preds = %1838
  %1848 = load %union.rec*, %union.rec** @xx_hold, align 8
  %1849 = bitcast %union.rec* %1848 to %struct.word_type*
  %1850 = getelementptr inbounds %struct.word_type, %struct.word_type* %1849, i32 0, i32 0
  %1851 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1850, i32 0, i64 1
  %1852 = getelementptr inbounds %struct.LIST, %struct.LIST* %1851, i32 0, i32 1
  %1853 = load %union.rec*, %union.rec** %1852, align 8
  store %union.rec* %1853, %union.rec** @xx_link, align 8
  %1854 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1854, %union.rec** @zz_hold, align 8
  %1855 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1856 = bitcast %union.rec* %1855 to %struct.word_type*
  %1857 = getelementptr inbounds %struct.word_type, %struct.word_type* %1856, i32 0, i32 0
  %1858 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1857, i32 0, i64 1
  %1859 = getelementptr inbounds %struct.LIST, %struct.LIST* %1858, i32 0, i32 1
  %1860 = load %union.rec*, %union.rec** %1859, align 8
  %1861 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1862 = icmp eq %union.rec* %1860, %1861
  br i1 %1862, label %1863, label %1864

; <label>:1863                                    ; preds = %1847
  br label %1905

; <label>:1864                                    ; preds = %1847
  %1865 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1866 = bitcast %union.rec* %1865 to %struct.word_type*
  %1867 = getelementptr inbounds %struct.word_type, %struct.word_type* %1866, i32 0, i32 0
  %1868 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1867, i32 0, i64 1
  %1869 = getelementptr inbounds %struct.LIST, %struct.LIST* %1868, i32 0, i32 1
  %1870 = load %union.rec*, %union.rec** %1869, align 8
  store %union.rec* %1870, %union.rec** @zz_res, align 8
  %1871 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1872 = bitcast %union.rec* %1871 to %struct.word_type*
  %1873 = getelementptr inbounds %struct.word_type, %struct.word_type* %1872, i32 0, i32 0
  %1874 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1873, i32 0, i64 1
  %1875 = getelementptr inbounds %struct.LIST, %struct.LIST* %1874, i32 0, i32 0
  %1876 = load %union.rec*, %union.rec** %1875, align 8
  %1877 = load %union.rec*, %union.rec** @zz_res, align 8
  %1878 = bitcast %union.rec* %1877 to %struct.word_type*
  %1879 = getelementptr inbounds %struct.word_type, %struct.word_type* %1878, i32 0, i32 0
  %1880 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1879, i32 0, i64 1
  %1881 = getelementptr inbounds %struct.LIST, %struct.LIST* %1880, i32 0, i32 0
  store %union.rec* %1876, %union.rec** %1881, align 8
  %1882 = load %union.rec*, %union.rec** @zz_res, align 8
  %1883 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1884 = bitcast %union.rec* %1883 to %struct.word_type*
  %1885 = getelementptr inbounds %struct.word_type, %struct.word_type* %1884, i32 0, i32 0
  %1886 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1885, i32 0, i64 1
  %1887 = getelementptr inbounds %struct.LIST, %struct.LIST* %1886, i32 0, i32 0
  %1888 = load %union.rec*, %union.rec** %1887, align 8
  %1889 = bitcast %union.rec* %1888 to %struct.word_type*
  %1890 = getelementptr inbounds %struct.word_type, %struct.word_type* %1889, i32 0, i32 0
  %1891 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1890, i32 0, i64 1
  %1892 = getelementptr inbounds %struct.LIST, %struct.LIST* %1891, i32 0, i32 1
  store %union.rec* %1882, %union.rec** %1892, align 8
  %1893 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1894 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1895 = bitcast %union.rec* %1894 to %struct.word_type*
  %1896 = getelementptr inbounds %struct.word_type, %struct.word_type* %1895, i32 0, i32 0
  %1897 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1896, i32 0, i64 1
  %1898 = getelementptr inbounds %struct.LIST, %struct.LIST* %1897, i32 0, i32 1
  store %union.rec* %1893, %union.rec** %1898, align 8
  %1899 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1900 = bitcast %union.rec* %1899 to %struct.word_type*
  %1901 = getelementptr inbounds %struct.word_type, %struct.word_type* %1900, i32 0, i32 0
  %1902 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1901, i32 0, i64 1
  %1903 = getelementptr inbounds %struct.LIST, %struct.LIST* %1902, i32 0, i32 0
  store %union.rec* %1893, %union.rec** %1903, align 8
  %1904 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1905

; <label>:1905                                    ; preds = %1864, %1863
  %1906 = phi %union.rec* [ null, %1863 ], [ %1904, %1864 ]
  %1907 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1907, %union.rec** @zz_hold, align 8
  %1908 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1909 = bitcast %union.rec* %1908 to %struct.word_type*
  %1910 = getelementptr inbounds %struct.word_type, %struct.word_type* %1909, i32 0, i32 0
  %1911 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1910, i32 0, i64 0
  %1912 = getelementptr inbounds %struct.LIST, %struct.LIST* %1911, i32 0, i32 1
  %1913 = load %union.rec*, %union.rec** %1912, align 8
  %1914 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1915 = icmp eq %union.rec* %1913, %1914
  br i1 %1915, label %1916, label %1917

; <label>:1916                                    ; preds = %1905
  br label %1958

; <label>:1917                                    ; preds = %1905
  %1918 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1919 = bitcast %union.rec* %1918 to %struct.word_type*
  %1920 = getelementptr inbounds %struct.word_type, %struct.word_type* %1919, i32 0, i32 0
  %1921 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1920, i32 0, i64 0
  %1922 = getelementptr inbounds %struct.LIST, %struct.LIST* %1921, i32 0, i32 1
  %1923 = load %union.rec*, %union.rec** %1922, align 8
  store %union.rec* %1923, %union.rec** @zz_res, align 8
  %1924 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1925 = bitcast %union.rec* %1924 to %struct.word_type*
  %1926 = getelementptr inbounds %struct.word_type, %struct.word_type* %1925, i32 0, i32 0
  %1927 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1926, i32 0, i64 0
  %1928 = getelementptr inbounds %struct.LIST, %struct.LIST* %1927, i32 0, i32 0
  %1929 = load %union.rec*, %union.rec** %1928, align 8
  %1930 = load %union.rec*, %union.rec** @zz_res, align 8
  %1931 = bitcast %union.rec* %1930 to %struct.word_type*
  %1932 = getelementptr inbounds %struct.word_type, %struct.word_type* %1931, i32 0, i32 0
  %1933 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1932, i32 0, i64 0
  %1934 = getelementptr inbounds %struct.LIST, %struct.LIST* %1933, i32 0, i32 0
  store %union.rec* %1929, %union.rec** %1934, align 8
  %1935 = load %union.rec*, %union.rec** @zz_res, align 8
  %1936 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1937 = bitcast %union.rec* %1936 to %struct.word_type*
  %1938 = getelementptr inbounds %struct.word_type, %struct.word_type* %1937, i32 0, i32 0
  %1939 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1938, i32 0, i64 0
  %1940 = getelementptr inbounds %struct.LIST, %struct.LIST* %1939, i32 0, i32 0
  %1941 = load %union.rec*, %union.rec** %1940, align 8
  %1942 = bitcast %union.rec* %1941 to %struct.word_type*
  %1943 = getelementptr inbounds %struct.word_type, %struct.word_type* %1942, i32 0, i32 0
  %1944 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1943, i32 0, i64 0
  %1945 = getelementptr inbounds %struct.LIST, %struct.LIST* %1944, i32 0, i32 1
  store %union.rec* %1935, %union.rec** %1945, align 8
  %1946 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1947 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1948 = bitcast %union.rec* %1947 to %struct.word_type*
  %1949 = getelementptr inbounds %struct.word_type, %struct.word_type* %1948, i32 0, i32 0
  %1950 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1949, i32 0, i64 0
  %1951 = getelementptr inbounds %struct.LIST, %struct.LIST* %1950, i32 0, i32 1
  store %union.rec* %1946, %union.rec** %1951, align 8
  %1952 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1953 = bitcast %union.rec* %1952 to %struct.word_type*
  %1954 = getelementptr inbounds %struct.word_type, %struct.word_type* %1953, i32 0, i32 0
  %1955 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %1954, i32 0, i64 0
  %1956 = getelementptr inbounds %struct.LIST, %struct.LIST* %1955, i32 0, i32 0
  store %union.rec* %1946, %union.rec** %1956, align 8
  %1957 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %1958

; <label>:1958                                    ; preds = %1917, %1916
  %1959 = phi %union.rec* [ null, %1916 ], [ %1957, %1917 ]
  %1960 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %1960, %union.rec** @zz_hold, align 8
  %1961 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %1961, %union.rec** @zz_hold, align 8
  %1962 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1963 = bitcast %union.rec* %1962 to %struct.word_type*
  %1964 = getelementptr inbounds %struct.word_type, %struct.word_type* %1963, i32 0, i32 1
  %1965 = bitcast %union.FIRST_UNION* %1964 to %struct.anon*
  %1966 = getelementptr inbounds %struct.anon, %struct.anon* %1965, i32 0, i32 0
  %1967 = load i8, i8* %1966, align 1
  %1968 = zext i8 %1967 to i32
  %1969 = icmp eq i32 %1968, 11
  br i1 %1969, label %1979, label %1970

; <label>:1970                                    ; preds = %1958
  %1971 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1972 = bitcast %union.rec* %1971 to %struct.word_type*
  %1973 = getelementptr inbounds %struct.word_type, %struct.word_type* %1972, i32 0, i32 1
  %1974 = bitcast %union.FIRST_UNION* %1973 to %struct.anon*
  %1975 = getelementptr inbounds %struct.anon, %struct.anon* %1974, i32 0, i32 0
  %1976 = load i8, i8* %1975, align 1
  %1977 = zext i8 %1976 to i32
  %1978 = icmp eq i32 %1977, 12
  br i1 %1978, label %1979, label %1987

; <label>:1979                                    ; preds = %1970, %1958
  %1980 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1981 = bitcast %union.rec* %1980 to %struct.word_type*
  %1982 = getelementptr inbounds %struct.word_type, %struct.word_type* %1981, i32 0, i32 1
  %1983 = bitcast %union.FIRST_UNION* %1982 to %struct.anon*
  %1984 = getelementptr inbounds %struct.anon, %struct.anon* %1983, i32 0, i32 1
  %1985 = load i8, i8* %1984, align 1
  %1986 = zext i8 %1985 to i32
  br label %1998

; <label>:1987                                    ; preds = %1970
  %1988 = load %union.rec*, %union.rec** @zz_hold, align 8
  %1989 = bitcast %union.rec* %1988 to %struct.word_type*
  %1990 = getelementptr inbounds %struct.word_type, %struct.word_type* %1989, i32 0, i32 1
  %1991 = bitcast %union.FIRST_UNION* %1990 to %struct.anon*
  %1992 = getelementptr inbounds %struct.anon, %struct.anon* %1991, i32 0, i32 0
  %1993 = load i8, i8* %1992, align 1
  %1994 = zext i8 %1993 to i64
  %1995 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %1994
  %1996 = load i8, i8* %1995, align 1
  %1997 = zext i8 %1996 to i32
  br label %1998

; <label>:1998                                    ; preds = %1987, %1979
  %1999 = phi i32 [ %1986, %1979 ], [ %1997, %1987 ]
  store i32 %1999, i32* @zz_size, align 4
  %2000 = load i32, i32* @zz_size, align 4
  %2001 = sext i32 %2000 to i64
  %2002 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2001
  %2003 = load %union.rec*, %union.rec** %2002, align 8
  %2004 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2005 = bitcast %union.rec* %2004 to %struct.word_type*
  %2006 = getelementptr inbounds %struct.word_type, %struct.word_type* %2005, i32 0, i32 0
  %2007 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2006, i32 0, i64 0
  %2008 = getelementptr inbounds %struct.LIST, %struct.LIST* %2007, i32 0, i32 0
  store %union.rec* %2003, %union.rec** %2008, align 8
  %2009 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2010 = load i32, i32* @zz_size, align 4
  %2011 = sext i32 %2010 to i64
  %2012 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2011
  store %union.rec* %2009, %union.rec** %2012, align 8
  br label %1838

; <label>:2013                                    ; preds = %1838
  br label %2014

; <label>:2014                                    ; preds = %2174, %2013
  %2015 = load %union.rec*, %union.rec** @xx_hold, align 8
  %2016 = bitcast %union.rec* %2015 to %struct.word_type*
  %2017 = getelementptr inbounds %struct.word_type, %struct.word_type* %2016, i32 0, i32 0
  %2018 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2017, i32 0, i64 0
  %2019 = getelementptr inbounds %struct.LIST, %struct.LIST* %2018, i32 0, i32 1
  %2020 = load %union.rec*, %union.rec** %2019, align 8
  %2021 = load %union.rec*, %union.rec** @xx_hold, align 8
  %2022 = icmp ne %union.rec* %2020, %2021
  br i1 %2022, label %2023, label %2189

; <label>:2023                                    ; preds = %2014
  %2024 = load %union.rec*, %union.rec** @xx_hold, align 8
  %2025 = bitcast %union.rec* %2024 to %struct.word_type*
  %2026 = getelementptr inbounds %struct.word_type, %struct.word_type* %2025, i32 0, i32 0
  %2027 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2026, i32 0, i64 0
  %2028 = getelementptr inbounds %struct.LIST, %struct.LIST* %2027, i32 0, i32 1
  %2029 = load %union.rec*, %union.rec** %2028, align 8
  store %union.rec* %2029, %union.rec** @xx_link, align 8
  %2030 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2030, %union.rec** @zz_hold, align 8
  %2031 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2032 = bitcast %union.rec* %2031 to %struct.word_type*
  %2033 = getelementptr inbounds %struct.word_type, %struct.word_type* %2032, i32 0, i32 0
  %2034 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2033, i32 0, i64 1
  %2035 = getelementptr inbounds %struct.LIST, %struct.LIST* %2034, i32 0, i32 1
  %2036 = load %union.rec*, %union.rec** %2035, align 8
  %2037 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2038 = icmp eq %union.rec* %2036, %2037
  br i1 %2038, label %2039, label %2040

; <label>:2039                                    ; preds = %2023
  br label %2081

; <label>:2040                                    ; preds = %2023
  %2041 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2042 = bitcast %union.rec* %2041 to %struct.word_type*
  %2043 = getelementptr inbounds %struct.word_type, %struct.word_type* %2042, i32 0, i32 0
  %2044 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2043, i32 0, i64 1
  %2045 = getelementptr inbounds %struct.LIST, %struct.LIST* %2044, i32 0, i32 1
  %2046 = load %union.rec*, %union.rec** %2045, align 8
  store %union.rec* %2046, %union.rec** @zz_res, align 8
  %2047 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2048 = bitcast %union.rec* %2047 to %struct.word_type*
  %2049 = getelementptr inbounds %struct.word_type, %struct.word_type* %2048, i32 0, i32 0
  %2050 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2049, i32 0, i64 1
  %2051 = getelementptr inbounds %struct.LIST, %struct.LIST* %2050, i32 0, i32 0
  %2052 = load %union.rec*, %union.rec** %2051, align 8
  %2053 = load %union.rec*, %union.rec** @zz_res, align 8
  %2054 = bitcast %union.rec* %2053 to %struct.word_type*
  %2055 = getelementptr inbounds %struct.word_type, %struct.word_type* %2054, i32 0, i32 0
  %2056 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2055, i32 0, i64 1
  %2057 = getelementptr inbounds %struct.LIST, %struct.LIST* %2056, i32 0, i32 0
  store %union.rec* %2052, %union.rec** %2057, align 8
  %2058 = load %union.rec*, %union.rec** @zz_res, align 8
  %2059 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2060 = bitcast %union.rec* %2059 to %struct.word_type*
  %2061 = getelementptr inbounds %struct.word_type, %struct.word_type* %2060, i32 0, i32 0
  %2062 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2061, i32 0, i64 1
  %2063 = getelementptr inbounds %struct.LIST, %struct.LIST* %2062, i32 0, i32 0
  %2064 = load %union.rec*, %union.rec** %2063, align 8
  %2065 = bitcast %union.rec* %2064 to %struct.word_type*
  %2066 = getelementptr inbounds %struct.word_type, %struct.word_type* %2065, i32 0, i32 0
  %2067 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2066, i32 0, i64 1
  %2068 = getelementptr inbounds %struct.LIST, %struct.LIST* %2067, i32 0, i32 1
  store %union.rec* %2058, %union.rec** %2068, align 8
  %2069 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2070 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2071 = bitcast %union.rec* %2070 to %struct.word_type*
  %2072 = getelementptr inbounds %struct.word_type, %struct.word_type* %2071, i32 0, i32 0
  %2073 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2072, i32 0, i64 1
  %2074 = getelementptr inbounds %struct.LIST, %struct.LIST* %2073, i32 0, i32 1
  store %union.rec* %2069, %union.rec** %2074, align 8
  %2075 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2076 = bitcast %union.rec* %2075 to %struct.word_type*
  %2077 = getelementptr inbounds %struct.word_type, %struct.word_type* %2076, i32 0, i32 0
  %2078 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2077, i32 0, i64 1
  %2079 = getelementptr inbounds %struct.LIST, %struct.LIST* %2078, i32 0, i32 0
  store %union.rec* %2069, %union.rec** %2079, align 8
  %2080 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2081

; <label>:2081                                    ; preds = %2040, %2039
  %2082 = phi %union.rec* [ null, %2039 ], [ %2080, %2040 ]
  %2083 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2083, %union.rec** @zz_hold, align 8
  %2084 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2085 = bitcast %union.rec* %2084 to %struct.word_type*
  %2086 = getelementptr inbounds %struct.word_type, %struct.word_type* %2085, i32 0, i32 0
  %2087 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2086, i32 0, i64 0
  %2088 = getelementptr inbounds %struct.LIST, %struct.LIST* %2087, i32 0, i32 1
  %2089 = load %union.rec*, %union.rec** %2088, align 8
  %2090 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2091 = icmp eq %union.rec* %2089, %2090
  br i1 %2091, label %2092, label %2093

; <label>:2092                                    ; preds = %2081
  br label %2134

; <label>:2093                                    ; preds = %2081
  %2094 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2095 = bitcast %union.rec* %2094 to %struct.word_type*
  %2096 = getelementptr inbounds %struct.word_type, %struct.word_type* %2095, i32 0, i32 0
  %2097 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2096, i32 0, i64 0
  %2098 = getelementptr inbounds %struct.LIST, %struct.LIST* %2097, i32 0, i32 1
  %2099 = load %union.rec*, %union.rec** %2098, align 8
  store %union.rec* %2099, %union.rec** @zz_res, align 8
  %2100 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2101 = bitcast %union.rec* %2100 to %struct.word_type*
  %2102 = getelementptr inbounds %struct.word_type, %struct.word_type* %2101, i32 0, i32 0
  %2103 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2102, i32 0, i64 0
  %2104 = getelementptr inbounds %struct.LIST, %struct.LIST* %2103, i32 0, i32 0
  %2105 = load %union.rec*, %union.rec** %2104, align 8
  %2106 = load %union.rec*, %union.rec** @zz_res, align 8
  %2107 = bitcast %union.rec* %2106 to %struct.word_type*
  %2108 = getelementptr inbounds %struct.word_type, %struct.word_type* %2107, i32 0, i32 0
  %2109 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2108, i32 0, i64 0
  %2110 = getelementptr inbounds %struct.LIST, %struct.LIST* %2109, i32 0, i32 0
  store %union.rec* %2105, %union.rec** %2110, align 8
  %2111 = load %union.rec*, %union.rec** @zz_res, align 8
  %2112 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2113 = bitcast %union.rec* %2112 to %struct.word_type*
  %2114 = getelementptr inbounds %struct.word_type, %struct.word_type* %2113, i32 0, i32 0
  %2115 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2114, i32 0, i64 0
  %2116 = getelementptr inbounds %struct.LIST, %struct.LIST* %2115, i32 0, i32 0
  %2117 = load %union.rec*, %union.rec** %2116, align 8
  %2118 = bitcast %union.rec* %2117 to %struct.word_type*
  %2119 = getelementptr inbounds %struct.word_type, %struct.word_type* %2118, i32 0, i32 0
  %2120 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2119, i32 0, i64 0
  %2121 = getelementptr inbounds %struct.LIST, %struct.LIST* %2120, i32 0, i32 1
  store %union.rec* %2111, %union.rec** %2121, align 8
  %2122 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2123 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2124 = bitcast %union.rec* %2123 to %struct.word_type*
  %2125 = getelementptr inbounds %struct.word_type, %struct.word_type* %2124, i32 0, i32 0
  %2126 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2125, i32 0, i64 0
  %2127 = getelementptr inbounds %struct.LIST, %struct.LIST* %2126, i32 0, i32 1
  store %union.rec* %2122, %union.rec** %2127, align 8
  %2128 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2129 = bitcast %union.rec* %2128 to %struct.word_type*
  %2130 = getelementptr inbounds %struct.word_type, %struct.word_type* %2129, i32 0, i32 0
  %2131 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2130, i32 0, i64 0
  %2132 = getelementptr inbounds %struct.LIST, %struct.LIST* %2131, i32 0, i32 0
  store %union.rec* %2122, %union.rec** %2132, align 8
  %2133 = load %union.rec*, %union.rec** @zz_res, align 8
  br label %2134

; <label>:2134                                    ; preds = %2093, %2092
  %2135 = phi %union.rec* [ null, %2092 ], [ %2133, %2093 ]
  %2136 = load %union.rec*, %union.rec** @xx_link, align 8
  store %union.rec* %2136, %union.rec** @zz_hold, align 8
  %2137 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2137, %union.rec** @zz_hold, align 8
  %2138 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2139 = bitcast %union.rec* %2138 to %struct.word_type*
  %2140 = getelementptr inbounds %struct.word_type, %struct.word_type* %2139, i32 0, i32 1
  %2141 = bitcast %union.FIRST_UNION* %2140 to %struct.anon*
  %2142 = getelementptr inbounds %struct.anon, %struct.anon* %2141, i32 0, i32 0
  %2143 = load i8, i8* %2142, align 1
  %2144 = zext i8 %2143 to i32
  %2145 = icmp eq i32 %2144, 11
  br i1 %2145, label %2155, label %2146

; <label>:2146                                    ; preds = %2134
  %2147 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2148 = bitcast %union.rec* %2147 to %struct.word_type*
  %2149 = getelementptr inbounds %struct.word_type, %struct.word_type* %2148, i32 0, i32 1
  %2150 = bitcast %union.FIRST_UNION* %2149 to %struct.anon*
  %2151 = getelementptr inbounds %struct.anon, %struct.anon* %2150, i32 0, i32 0
  %2152 = load i8, i8* %2151, align 1
  %2153 = zext i8 %2152 to i32
  %2154 = icmp eq i32 %2153, 12
  br i1 %2154, label %2155, label %2163

; <label>:2155                                    ; preds = %2146, %2134
  %2156 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2157 = bitcast %union.rec* %2156 to %struct.word_type*
  %2158 = getelementptr inbounds %struct.word_type, %struct.word_type* %2157, i32 0, i32 1
  %2159 = bitcast %union.FIRST_UNION* %2158 to %struct.anon*
  %2160 = getelementptr inbounds %struct.anon, %struct.anon* %2159, i32 0, i32 1
  %2161 = load i8, i8* %2160, align 1
  %2162 = zext i8 %2161 to i32
  br label %2174

; <label>:2163                                    ; preds = %2146
  %2164 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2165 = bitcast %union.rec* %2164 to %struct.word_type*
  %2166 = getelementptr inbounds %struct.word_type, %struct.word_type* %2165, i32 0, i32 1
  %2167 = bitcast %union.FIRST_UNION* %2166 to %struct.anon*
  %2168 = getelementptr inbounds %struct.anon, %struct.anon* %2167, i32 0, i32 0
  %2169 = load i8, i8* %2168, align 1
  %2170 = zext i8 %2169 to i64
  %2171 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2170
  %2172 = load i8, i8* %2171, align 1
  %2173 = zext i8 %2172 to i32
  br label %2174

; <label>:2174                                    ; preds = %2163, %2155
  %2175 = phi i32 [ %2162, %2155 ], [ %2173, %2163 ]
  store i32 %2175, i32* @zz_size, align 4
  %2176 = load i32, i32* @zz_size, align 4
  %2177 = sext i32 %2176 to i64
  %2178 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2177
  %2179 = load %union.rec*, %union.rec** %2178, align 8
  %2180 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2181 = bitcast %union.rec* %2180 to %struct.word_type*
  %2182 = getelementptr inbounds %struct.word_type, %struct.word_type* %2181, i32 0, i32 0
  %2183 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2182, i32 0, i64 0
  %2184 = getelementptr inbounds %struct.LIST, %struct.LIST* %2183, i32 0, i32 0
  store %union.rec* %2179, %union.rec** %2184, align 8
  %2185 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2186 = load i32, i32* @zz_size, align 4
  %2187 = sext i32 %2186 to i64
  %2188 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2187
  store %union.rec* %2185, %union.rec** %2188, align 8
  br label %2014

; <label>:2189                                    ; preds = %2014
  %2190 = load %union.rec*, %union.rec** @xx_hold, align 8
  store %union.rec* %2190, %union.rec** @zz_hold, align 8
  %2191 = load %union.rec*, %union.rec** @zz_hold, align 8
  store %union.rec* %2191, %union.rec** @zz_hold, align 8
  %2192 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2193 = bitcast %union.rec* %2192 to %struct.word_type*
  %2194 = getelementptr inbounds %struct.word_type, %struct.word_type* %2193, i32 0, i32 1
  %2195 = bitcast %union.FIRST_UNION* %2194 to %struct.anon*
  %2196 = getelementptr inbounds %struct.anon, %struct.anon* %2195, i32 0, i32 0
  %2197 = load i8, i8* %2196, align 1
  %2198 = zext i8 %2197 to i32
  %2199 = icmp eq i32 %2198, 11
  br i1 %2199, label %2209, label %2200

; <label>:2200                                    ; preds = %2189
  %2201 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2202 = bitcast %union.rec* %2201 to %struct.word_type*
  %2203 = getelementptr inbounds %struct.word_type, %struct.word_type* %2202, i32 0, i32 1
  %2204 = bitcast %union.FIRST_UNION* %2203 to %struct.anon*
  %2205 = getelementptr inbounds %struct.anon, %struct.anon* %2204, i32 0, i32 0
  %2206 = load i8, i8* %2205, align 1
  %2207 = zext i8 %2206 to i32
  %2208 = icmp eq i32 %2207, 12
  br i1 %2208, label %2209, label %2217

; <label>:2209                                    ; preds = %2200, %2189
  %2210 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2211 = bitcast %union.rec* %2210 to %struct.word_type*
  %2212 = getelementptr inbounds %struct.word_type, %struct.word_type* %2211, i32 0, i32 1
  %2213 = bitcast %union.FIRST_UNION* %2212 to %struct.anon*
  %2214 = getelementptr inbounds %struct.anon, %struct.anon* %2213, i32 0, i32 1
  %2215 = load i8, i8* %2214, align 1
  %2216 = zext i8 %2215 to i32
  br label %2228

; <label>:2217                                    ; preds = %2200
  %2218 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2219 = bitcast %union.rec* %2218 to %struct.word_type*
  %2220 = getelementptr inbounds %struct.word_type, %struct.word_type* %2219, i32 0, i32 1
  %2221 = bitcast %union.FIRST_UNION* %2220 to %struct.anon*
  %2222 = getelementptr inbounds %struct.anon, %struct.anon* %2221, i32 0, i32 0
  %2223 = load i8, i8* %2222, align 1
  %2224 = zext i8 %2223 to i64
  %2225 = getelementptr inbounds [0 x i8], [0 x i8]* @zz_lengths, i32 0, i64 %2224
  %2226 = load i8, i8* %2225, align 1
  %2227 = zext i8 %2226 to i32
  br label %2228

; <label>:2228                                    ; preds = %2217, %2209
  %2229 = phi i32 [ %2216, %2209 ], [ %2227, %2217 ]
  store i32 %2229, i32* @zz_size, align 4
  %2230 = load i32, i32* @zz_size, align 4
  %2231 = sext i32 %2230 to i64
  %2232 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2231
  %2233 = load %union.rec*, %union.rec** %2232, align 8
  %2234 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2235 = bitcast %union.rec* %2234 to %struct.word_type*
  %2236 = getelementptr inbounds %struct.word_type, %struct.word_type* %2235, i32 0, i32 0
  %2237 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %2236, i32 0, i64 0
  %2238 = getelementptr inbounds %struct.LIST, %struct.LIST* %2237, i32 0, i32 0
  store %union.rec* %2233, %union.rec** %2238, align 8
  %2239 = load %union.rec*, %union.rec** @zz_hold, align 8
  %2240 = load i32, i32* @zz_size, align 4
  %2241 = sext i32 %2240 to i64
  %2242 = getelementptr inbounds [0 x %union.rec*], [0 x %union.rec*]* @zz_free, i32 0, i64 %2241
  store %union.rec* %2239, %union.rec** %2242, align 8
  br label %2243

; <label>:2243                                    ; preds = %2228, %1820
  %2244 = load i32, i32* @itop, align 4
  %2245 = add nsw i32 %2244, -1
  store i32 %2245, i32* @itop, align 4
  %2246 = sext i32 %2244 to i64
  %2247 = getelementptr inbounds [30 x %union.rec*], [30 x %union.rec*]* @targets, i32 0, i64 %2246
  %2248 = load %union.rec*, %union.rec** %2247, align 8
  %2249 = call i32 @DisposeObject(%union.rec* %2248)
  br label %2250

; <label>:2250                                    ; preds = %2243, %16
  ret void
}

declare void @Interpose(%union.rec*, i32, %union.rec*, %union.rec*) #1

; Function Attrs: nounwind uwtable
define void @TransferClose() #0 {
  %inners = alloca %union.rec*, align 8
  %1 = load %union.rec*, %union.rec** @root_galley, align 8
  %2 = bitcast %union.rec* %1 to %struct.word_type*
  %3 = getelementptr inbounds %struct.word_type, %struct.word_type* %2, i32 0, i32 0
  %4 = getelementptr inbounds [2 x %struct.LIST], [2 x %struct.LIST]* %3, i32 0, i64 0
  %5 = getelementptr inbounds %struct.LIST, %struct.LIST* %4, i32 0, i32 0
  %6 = load %union.rec*, %union.rec** %5, align 8
  %7 = load %union.rec*, %union.rec** @root_galley, align 8
  %8 = icmp ne %union.rec* %6, %7
  br i1 %8, label %9, label %18

; <label>:9                                       ; preds = %0
  store %union.rec* null, %union.rec** %inners, align 8
  %10 = load %union.rec*, %union.rec** @root_galley, align 8
  %11 = load %union.rec*, %union.rec** @root_galley, align 8
  call void @FreeGalley(%union.rec* %10, %union.rec* %11, %union.rec** %inners, %union.rec* null, %union.rec* null)
  %12 = load %union.rec*, %union.rec** %inners, align 8
  %13 = icmp ne %union.rec* %12, null
  br i1 %13, label %14, label %16

; <label>:14                                      ; preds = %9
  %15 = load %union.rec*, %union.rec** %inners, align 8
  call void @FlushInners(%union.rec* %15, %union.rec* null)
  br label %16

; <label>:16                                      ; preds = %14, %9
  %17 = load %union.rec*, %union.rec** @root_galley, align 8
  call void @FlushGalley(%union.rec* %17)
  br label %18

; <label>:18                                      ; preds = %16, %0
  ret void
}

declare void @FreeGalley(%union.rec*, %union.rec*, %union.rec**, %union.rec*, %union.rec*) #1

attributes #0 = { nounwind uwtable "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "disable-tail-calls"="false" "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+sse,+sse2" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = !{!"Ubuntu clang version 3.7.0-2ubuntu1 (tags/RELEASE_370/final) (based on LLVM 3.7.0)"}
